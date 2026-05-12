.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0xb498e6fa
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x7
                  li x6, 0x3ffe5c09
                  li x7, 0x5241c6c3
                  li x8, 0x80000000
                  li x9, 0xf01555ff
                  li x10, 0x54200570
                  li x11, 0xfda20c66
                  li x12, 0x80000000
                  li x13, 0xfbb01f80
                  li x14, 0xf1267886
                  li x15, 0xf3716f4f
                  li x16, 0xd8691c2c
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x4
                  li x20, 0x1c1c8fcf
                  li x21, 0x0
                  li x22, 0x4a2d5b45
                  li x23, 0x80000000
                  li x24, 0xad976d57
                  li x25, 0x800d91df
                  li x26, 0xf26ef01a
                  li x27, 0x736404ed
                  li x28, 0x80000000
                  li x30, 0x0
                  li x31, 0x6
                  la x5, user_stack_end
main:             jal          s4, 0f
0:                jal          s11, 3f
1:                jal          t5, 6f
2:                jal          ra, 4f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          ra, 9f
6:                jal          t1, 5b
7:                jal          ra, 2b
8:                jal          ra, 7b
9:                jal          ra, 8b
10:               srai         s6, a5, 18
main_1:           jal          s4, 0f
0:                jal          tp, 8f
1:                jal          t1, 4f
2:                jal          a3, 13f
3:                jal          t1, 12f
4:                jal          ra, 3b
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          ra, 1b
8:                jal          ra, 5b
9:                jal          s6, 2b
10:               jal          s3, 6b
11:               jal          a1, 10b
12:               jal          a3, 9b
13:               and          s8, a0, zero
main_0:           jal          s4, 5f
0:                jal          t1, 1f
1:                jal          ra, 16f
2:                jal          ra, 0b
3:                jal          ra, 11f
4:                jal          sp, 14f
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          t1, 17f
8:                jal          ra, 13f
9:                jal          gp, 18f
10:               jal          t1, 8b
11:               jal          ra, 10b
12:               jal          t1, 2b
13:               jal          t1, 9b
14:               jal          a2, 12b
15:               jal          ra, 7b
16:               jal          ra, 15b
17:               jal          ra, 3b
18:               ori          t6, a0, 1867
main_4:           jal          s4, 5f
0:                jal          ra, 6f
1:                jal          ra, 10f
2:                jal          t1, 9f
3:                jal          ra, 2b
4:                jal          ra, 0b
5:                jal          t1, 3b
6:                jal          ra, 8f
7:                jal          gp, 1b
8:                jal          t1, 7b
9:                jal          ra, 4b
10:               sra          t3, a1, a1
                  xori         s0, s4, -1942
                  lui          t3, 519366
                  sltu         a3, gp, s4
                  sll          a6, s7, t4
                  slti         s3, s11, -517
                  beq          s11, a1, 12f
                  ori          a4, s5, 1975
                  slt          s6, t4, s7
                  srai         zero, s7, 12
                  lui          s11, 561673
                  sll          a5, a6, s9
                  slti         s8, zero, -536
12:               sub          a6, a4, t5
                  andi         t3, sp, -512
                  xor          a5, gp, s11
                  add          a3, s7, a3
                  sll          s1, s5, a1
                  bltu         zero, a7, 22f
                  blt          s3, s6, 28f
                  sub          a3, a2, s6
                  sub          s4, s8, s11
                  add          sp, t0, tp
22:               addi         s3, ra, 399
                  nop
                  sltiu        a7, a3, 1857
                  bgeu         a7, a4, 38f
                  xor          s11, t4, ra
                  slli         a2, a0, 15
28:               bge          t0, s0, 38f
                  sra          s11, tp, t3
                  blt          ra, s10, 42f
                  srl          s8, s11, s4
                  and          t5, t1, zero
                  add          t2, a0, sp
                  slti         a4, s1, 1354
                  add          s11, t4, s4
                  slt          a2, gp, s9
                  sub          s3, a5, a4
38:               or           t6, t4, t4
                  lui          s6, 552369
                  and          s9, t0, s4
                  nop
42:               or           a3, s10, s2
                  bne          t4, a1, 49f
                  srl          s3, a3, s2
                  sub          tp, a3, a3
                  or           a1, a4, a7
                  xor          t2, s0, s9
                  blt          s1, a4, 51f
49:               sltu         t2, ra, s4
                  sra          a1, t6, s0
51:               sub          zero, t1, a6
                  bltu         a7, s8, 61f
                  bltu         s7, zero, 69f
main_3:           jal          s4, 21f
0:                jal          ra, 18f
1:                jal          ra, 16f
2:                jal          ra, 3f
3:                jal          t1, 12f
4:                jal          t1, 6f
5:                jal          t1, 22f
6:                jal          ra, 0b
7:                jal          t1, 20f
8:                jal          a7, 17f
9:                jal          ra, 14f
10:               jal          gp, 13f
11:               jal          s8, 1b
12:               jal          gp, 10b
13:               jal          ra, 4b
14:               jal          a2, 8b
15:               jal          tp, 2b
16:               jal          s11, 19f
17:               jal          t1, 11b
18:               jal          ra, 9b
19:               jal          s0, 5b
20:               jal          s11, 15b
21:               jal          a4, 7b
22:               srl          s4, s10, s4
                  andi         s3, s0, 1651
                  sra          s9, s6, s10
                  srl          t3, a5, ra
                  srai         gp, s4, 10
                  ori          sp, tp, 2017
                  addi         t6, zero, -61
                  andi         sp, ra, 453
61:               or           s6, s8, t5
                  blt          zero, s0, 73f
                  lui          s8, 354403
                  auipc        t5, 405123
                  slt          a1, a5, t6
                  bge          tp, t1, 80f
                  slt          t3, t1, a7
                  slt          a5, s6, ra
69:               sub          s9, a1, a3
                  bge          t4, gp, 80f
                  slli         t1, t0, 9
                  add          a7, a5, s5
73:               lui          tp, 992146
                  add          a6, a5, a2
                  xor          a0, s10, s0
                  and          s11, t3, ra
                  lui          t1, 515219
                  xor          a0, t3, s5
                  ori          a3, s11, -1727
80:               srli         s9, t2, 27
                  auipc        s9, 480490
                  slti         a0, s9, -1082
                  slti         tp, a7, -724
                  slti         t6, s1, -725
                  sltu         ra, a5, s11
                  addi         gp, t4, 120
                  slli         t1, s4, 10
                  slti         s2, ra, -250
                  bltu         s2, t5, 101f
                  blt          s6, a4, 105f
                  srl          gp, t0, a6
                  xor          a0, s9, s1
                  slti         a5, s7, 1671
                  or           t2, s11, s4
                  blt          s5, sp, 107f
                  nop
                  sll          t6, t0, a7
                  sub          a7, s8, a6
                  auipc        a0, 609445
                  bgeu         a4, a2, 111f
101:              lui          a5, 875304
                  addi         zero, a2, 1237
                  bgeu         s7, a4, 117f
                  nop
105:              srli         s6, a5, 1
                  slt          t3, zero, t6
107:              bgeu         t1, a0, 109f
                  slti         t5, t0, 428
109:              xor          zero, t1, s3
                  ori          s2, t4, 1076
111:              slli         tp, t2, 4
                  srl          a3, t3, a6
                  sra          s3, a7, s0
                  add          s5, s3, s4
                  xori         t1, t2, -1448
                  nop
117:              auipc        s4, 707743
                  bne          s0, tp, 121f
                  bge          a2, a2, 126f
                  beq          s9, a5, 130f
121:              srli         s7, t2, 24
                  xor          zero, ra, a3
                  sra          s2, s0, a7
                  beq          a6, s4, 133f
                  sub          s8, sp, a7
126:              beq          s0, t1, 127f
127:              slti         a3, gp, 895
                  blt          a4, s6, 148f
                  sub          s3, s4, t5
130:              sltiu        a5, s6, 328
                  sltiu        a4, s5, 1471
                  bltu         a3, a3, 137f
133:              srli         t3, ra, 25
                  andi         s7, s5, 1966
                  and          s3, s1, sp
                  sltiu        tp, s6, -23
137:              andi         a5, s5, -1124
                  andi         s3, t5, -1027
                  bne          s6, a4, 143f
                  slli         s9, gp, 12
                  srl          s4, t2, tp
                  sltiu        gp, a6, -1093
                  slti         a7, s5, 47
                  sll          zero, tp, ra
                  sltu         gp, t3, t1
                  la           s8, sub_1
                  lui          a0, 609611
                  slli         s0, s9, 14
                  addi         s8, s8, 994
                  beq          s8, t4, main_j1 #branch to jump instr
                  add          s5, s10, s3
                  ori          a0, a5, 1660
main_j1:          jalr         s4, s8, -993 #jump main -> sub_1
                  ori          s6, s9, -477
143:              nop
                  sra          t6, zero, s7
                  beq          s11, a1, 162f
                  srl          a6, a7, a1
                  xori         a3, t6, 804
148:              srli         s5, s2, 1
                  or           s3, ra, s6
                  sll          a4, t2, tp
                  bgeu         sp, a2, 153f
                  bne          t1, t2, 154f
153:              sll          s9, s10, a1
154:              blt          zero, t1, 163f
                  and          a7, s9, s3
                  sltiu        s1, zero, 1379
                  sll          s3, a4, s0
                  beq          a0, gp, 170f
                  sltiu        t5, t4, -947
                  bltu         t5, a5, 167f
                  xor          s7, a4, t1
162:              auipc        tp, 15663
163:              addi         t3, a0, 257
                  sltiu        t6, s11, 1251
                  blt          t4, t3, 185f
                  addi         s2, s11, -320
167:              beq          s7, a5, 181f
                  srli         a6, s9, 11
                  slli         a6, a7, 15
170:              sltiu        a6, t2, -667
                  nop
                  ori          t5, s3, 413
                  nop
                  sltiu        t3, sp, -1386
                  lui          t2, 143304
                  sll          a6, s0, s4
                  bltu         s1, a2, 180f
                  add          s5, t6, s8
                  sltu         a3, s0, a6
180:              andi         s5, s2, -1069
181:              and          s6, zero, s2
                  sll          t5, t4, sp
                  srli         a7, a2, 30
                  andi         gp, sp, 21
185:              ori          zero, s8, -1198
                  add          s11, t6, t6
                  blt          t6, t6, 200f
                  slti         a6, zero, 62
                  slt          t5, s6, a0
                  srli         s6, s3, 29
                  or           s9, t6, sp
                  xor          ra, t2, sp
                  srai         s0, s10, 9
                  or           ra, s10, s4
                  ori          a4, s8, -1594
                  or           s8, a5, ra
                  addi         sp, t1, -1736
                  sub          t3, s1, a7
                  blt          a7, s3, 213f
200:              beq          a5, s8, 217f
                  and          s8, a2, t4
                  xori         a0, a7, -12
                  sltu         a3, t4, a3
                  slt          t3, t6, s7
                  srli         s7, s8, 17
                  auipc        a7, 617359
                  xori         t5, s9, 1897
                  sltu         gp, s9, a7
                  lui          a7, 959556
                  xor          a2, s2, s0
                  sub          s1, t1, s10
                  nop
213:              auipc        a3, 746130
                  sub          s2, t5, a3
                  beq          a4, s4, 217f
                  sltu         s2, s11, a3
217:              bltu         s11, sp, 218f
218:              srai         s0, tp, 19
                  or           a0, t6, a1
                  or           a0, s9, t4
                  xori         ra, t6, 1006
                  lui          t3, 584726
                  srli         t3, ra, 15
                  sub          t5, tp, a4
                  bltu         a5, s9, 235f
                  addi         a1, t3, 2014
                  andi         tp, s5, 704
                  srli         s11, a2, 21
                  srli         a0, zero, 25
                  sltiu        a6, s3, 1641
                  or           s8, s5, ra
                  sub          s4, tp, s5
                  ori          s11, a3, -1061
                  bgeu         a7, s5, 244f
235:              bltu         t5, s2, 237f
                  auipc        s5, 844254
237:              srli         tp, s7, 12
                  bne          a6, s1, 248f
                  nop
                  andi         a2, ra, -826
                  lui          s3, 431250
                  blt          s2, s6, 249f
                  slti         t5, t5, 574
244:              andi         s4, sp, 1127
                  or           t2, a1, a3
                  srl          s1, t1, s5
                  sll          s7, a2, s1
248:              bltu         zero, t6, 259f
249:              beq          s4, s7, 265f
                  srl          t6, a2, s8
                  lui          s4, 927815
                  xor          s6, t1, tp
                  andi         a5, t5, -1618
                  sll          s7, a5, t4
                  bgeu         t3, s3, 261f
                  slli         t2, s10, 1
                  bltu         t0, t2, 262f
                  slti         s4, s4, -3
259:              bltu         a4, t5, 262f
                  auipc        a2, 300606
261:              add          t6, a3, s10
262:              addi         s9, a5, -1485
                  xori         a5, a1, 913
                  srai         tp, a0, 12
265:              sltu         t3, a3, tp
                  srli         t3, s4, 27
                  sub          s4, a1, s10
                  xori         a5, tp, 2030
                  sltiu        t1, sp, 1824
                  add          s5, a3, s1
                  srai         s7, a6, 27
                  blt          s1, a5, 287f
                  addi         a1, s11, -333
                  xori         s2, s5, -777
                  and          s9, t0, s7
                  sra          s9, s10, t3
                  nop
                  lui          t3, 286431
                  xori         s3, gp, -416
                  slli         s4, t3, 31
                  lui          a2, 212108
                  bltu         t6, a1, 284f
                  bgeu         a3, a1, 292f
284:              srl          t1, t0, s11
                  beq          t4, gp, 296f
                  bgeu         a2, tp, 291f
287:              srai         s7, a0, 3
                  bge          ra, a2, 297f
                  xori         s4, gp, -211
                  sltiu        s3, tp, 907
291:              srli         a3, gp, 23
292:              and          t3, t5, t1
                  sll          s0, s1, t0
                  sub          a6, t5, t2
                  and          ra, s4, s1
296:              sltu         a2, s8, sp
297:              srli         s5, s3, 8
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            srl          a4, a2, s1
                  srai         gp, a7, 26
                  slli         a2, t0, 12
                  bgeu         s8, s2, sub_2_stack_p
                  srai         a7, s3, 17
                  srai         t2, s4, 5
sub_2_stack_p:    addi         t0, t0, -44
                  addi         s8, s6, 1432
                  sw           s4, 4(t0)
                  andi         s8, gp, -831
                  sll          a4, t6, zero
                  sltiu        a6, s9, -1735
                  srli         s2, ra, 22
                  andi         zero, t3, -1906
                  sub          tp, t5, s8
                  ori          s4, t1, -1479
                  and          zero, s2, a2
                  sltiu        a1, t1, 1409
sub_2_j5:         jal          s4, sub_3 #jump sub_2 -> sub_3
sub_2_0:          jal          s4, 1f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          s9, 18f
4:                jal          ra, 20f
5:                jal          gp, 25f
6:                jal          ra, 12f
7:                jal          a7, 11f
8:                jal          tp, 10f
9:                jal          ra, 23f
10:               jal          a0, 19f
11:               jal          t2, 22f
12:               jal          tp, 15f
13:               jal          t1, 14f
14:               jal          a5, 21f
15:               jal          ra, 17f
16:               jal          ra, 0b
17:               jal          ra, 7b
18:               jal          ra, 16b
19:               jal          t1, 2b
20:               jal          ra, 13b
21:               jal          a2, 24f
22:               jal          ra, 9b
23:               jal          ra, 8b
24:               jal          s4, 6b
25:               nop
sub_2_15:         jal          s4, 25f
0:                jal          ra, 16f
1:                jal          ra, 17f
2:                jal          t1, 4f
3:                jal          ra, 8f
4:                jal          tp, 23f
5:                jal          a3, 12f
6:                jal          s4, 20f
7:                jal          ra, 22f
8:                jal          ra, 13f
9:                jal          ra, 19f
10:               jal          gp, 5b
11:               jal          ra, 7b
12:               jal          ra, 3b
13:               jal          t1, 0b
14:               jal          a7, 11b
15:               jal          t1, 10b
16:               jal          s5, 9b
17:               jal          ra, 18f
18:               jal          t1, 2b
19:               jal          ra, 14b
20:               jal          ra, 15b
21:               jal          ra, 6b
22:               jal          s8, 27f
23:               jal          a6, 21b
24:               jal          ra, 26f
25:               jal          t6, 24b
26:               jal          a5, 1b
27:               auipc        zero, 902166
sub_2_11:         jal          s4, 7f
0:                jal          ra, 11f
1:                jal          ra, 12f
2:                jal          ra, 4f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          ra, 2b
7:                jal          ra, 1b
8:                jal          tp, 13f
9:                jal          ra, 10f
10:               jal          ra, 0b
11:               jal          s2, 3b
12:               jal          ra, 6b
13:               lui          tp, 819250
sub_2_10:         jal          s4, 5f
0:                jal          s6, 3f
1:                jal          ra, 7f
2:                jal          ra, 9f
3:                jal          t1, 2b
4:                jal          tp, 0b
5:                jal          ra, 1b
6:                jal          t1, 4b
7:                jal          ra, 8f
8:                jal          tp, 6b
9:                jal          s8, 10f
10:               srai         t2, a3, 30
sub_2_12:         jal          s4, 4f
0:                jal          ra, 1f
1:                jal          ra, 5f
2:                jal          ra, 23f
3:                jal          t3, 10f
4:                jal          t1, 22f
5:                jal          ra, 6f
6:                jal          tp, 2b
7:                jal          t1, 14f
8:                jal          ra, 0b
9:                jal          ra, 21f
10:               jal          t1, 20f
11:               jal          ra, 16f
12:               jal          ra, 19f
13:               jal          s8, 7b
14:               jal          a1, 18f
15:               jal          ra, 8b
16:               jal          ra, 3b
17:               jal          ra, 9b
18:               jal          ra, 17b
19:               jal          ra, 11b
20:               jal          s3, 15b
21:               jal          ra, 12b
22:               jal          tp, 13b
23:               auipc        a0, 782977
sub_2_1:          jal          s4, 7f
0:                jal          sp, 21f
1:                jal          a3, 26f
2:                jal          ra, 17f
3:                jal          t2, 4f
4:                jal          sp, 0b
5:                jal          ra, 28f
6:                jal          ra, 25f
7:                jal          ra, 19f
8:                jal          sp, 6b
9:                jal          a5, 10f
10:               jal          ra, 3b
11:               jal          t1, 14f
12:               jal          s8, 15f
13:               jal          ra, 2b
14:               jal          t1, 9b
15:               jal          gp, 8b
16:               jal          ra, 20f
17:               jal          ra, 11b
18:               jal          ra, 13b
19:               jal          ra, 23f
20:               jal          t5, 1b
21:               jal          t1, 12b
22:               jal          ra, 27f
23:               jal          ra, 24f
24:               jal          t1, 16b
25:               jal          ra, 22b
26:               jal          t1, 18b
27:               jal          tp, 5b
28:               jal          sp, 29f
29:               slli         s1, s7, 2
sub_2_2:          jal          s4, 11f
0:                jal          ra, 3f
1:                jal          ra, 5f
2:                jal          ra, 12f
3:                jal          ra, 10f
4:                jal          t1, 2b
5:                jal          ra, 9f
6:                jal          ra, 1b
7:                jal          ra, 0b
8:                jal          sp, 7b
9:                jal          t1, 4b
10:               jal          t6, 6b
11:               jal          ra, 8b
12:               or           s5, sp, gp
sub_2_16:         jal          s4, 0f
0:                jal          ra, 5f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          sp, 14f
5:                jal          s11, 6f
6:                jal          s9, 11f
7:                jal          ra, 13f
8:                jal          a1, 10f
9:                jal          t6, 4b
10:               jal          ra, 2b
11:               jal          ra, 9b
12:               jal          ra, 15f
13:               jal          sp, 1b
14:               jal          a2, 8b
15:               nop
sub_2_17:         jal          s4, 6f
0:                jal          a1, 24f
1:                jal          ra, 25f
2:                jal          ra, 3f
3:                jal          t1, 16f
4:                jal          a0, 14f
5:                jal          ra, 7f
6:                jal          ra, 19f
7:                jal          ra, 26f
8:                jal          t1, 11f
9:                jal          t1, 15f
10:               jal          sp, 5b
11:               jal          s3, 22f
12:               jal          ra, 0b
13:               jal          sp, 8b
14:               jal          ra, 23f
15:               jal          ra, 17f
16:               jal          t1, 21f
17:               jal          ra, 13b
18:               jal          ra, 12b
19:               jal          sp, 10b
20:               jal          ra, 1b
21:               jal          t1, 20b
22:               jal          ra, 18b
23:               jal          ra, 29f
24:               jal          ra, 4b
25:               jal          ra, 9b
26:               jal          s9, 28f
27:               jal          t1, 2b
28:               jal          ra, 27b
29:               slt          t3, s1, s10
sub_2_8:          jal          s4, 23f
0:                jal          ra, 6f
1:                jal          t1, 22f
2:                jal          ra, 16f
3:                jal          a3, 24f
4:                jal          gp, 7f
5:                jal          ra, 20f
6:                jal          ra, 3b
7:                jal          ra, 10f
8:                jal          ra, 25f
9:                jal          t1, 11f
10:               jal          s4, 14f
11:               jal          ra, 5b
12:               jal          ra, 4b
13:               jal          ra, 0b
14:               jal          t1, 8b
15:               jal          gp, 17f
16:               jal          ra, 15b
17:               jal          ra, 1b
18:               jal          s0, 9b
19:               jal          ra, 12b
20:               jal          ra, 2b
21:               jal          t1, 19b
22:               jal          ra, 13b
23:               jal          ra, 18b
24:               jal          ra, 21b
25:               xori         a5, s4, 319
sub_2_25:         jal          s4, 18f
0:                jal          ra, 6f
1:                jal          ra, 20f
2:                jal          ra, 17f
3:                jal          s11, 0b
4:                jal          a6, 5f
5:                jal          ra, 13f
6:                jal          ra, 16f
7:                jal          s11, 10f
8:                jal          s9, 4b
9:                jal          t1, 15f
10:               jal          ra, 19f
11:               jal          ra, 14f
12:               jal          ra, 1b
13:               jal          ra, 2b
14:               jal          t1, 3b
15:               jal          ra, 8b
16:               jal          a3, 12b
17:               jal          t1, 7b
18:               jal          ra, 9b
19:               jal          t1, 11b
20:               srai         s5, s0, 13
sub_2_7:          jal          s4, 16f
0:                jal          ra, 10f
1:                jal          ra, 18f
2:                jal          ra, 0b
3:                jal          gp, 27f
4:                jal          ra, 22f
5:                jal          s4, 20f
6:                jal          ra, 1b
7:                jal          ra, 26f
8:                jal          t1, 9f
9:                jal          t1, 4b
10:               jal          t1, 13f
11:               jal          s6, 25f
12:               jal          ra, 11b
13:               jal          ra, 6b
14:               jal          sp, 19f
15:               jal          s0, 12b
16:               jal          t1, 17f
17:               jal          ra, 24f
18:               jal          ra, 15b
19:               jal          gp, 5b
20:               jal          s11, 21f
21:               jal          ra, 8b
22:               jal          ra, 2b
23:               jal          sp, 3b
24:               jal          ra, 7b
25:               jal          ra, 23b
26:               jal          ra, 14b
27:               sub          zero, zero, s11
sub_2_14:         jal          s4, 5f
0:                jal          a5, 3f
1:                jal          s7, 2f
2:                jal          t1, 10f
3:                jal          sp, 4f
4:                jal          ra, 9f
5:                jal          ra, 6f
6:                jal          s1, 7f
7:                jal          ra, 8f
8:                jal          a0, 1b
9:                jal          ra, 11f
10:               jal          s2, 0b
11:               srai         s2, a5, 5
sub_2_6:          jal          s4, 2f
0:                jal          ra, 3f
1:                jal          s9, 7f
2:                jal          t1, 5f
3:                jal          ra, 6f
4:                jal          ra, 1b
5:                jal          ra, 10f
6:                jal          t1, 8f
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          ra, 0b
10:               jal          s0, 9b
11:               andi         zero, a2, -743
sub_2_13:         jal          s4, 17f
0:                jal          ra, 18f
1:                jal          a4, 9f
2:                jal          t1, 6f
3:                jal          t1, 5f
4:                jal          ra, 1b
5:                jal          ra, 11f
6:                jal          t1, 20f
7:                jal          ra, 0b
8:                jal          ra, 10f
9:                jal          a7, 19f
10:               jal          t1, 21f
11:               jal          ra, 2b
12:               jal          gp, 14f
13:               jal          ra, 4b
14:               jal          t1, 13b
15:               jal          ra, 8b
16:               jal          t1, 3b
17:               jal          t1, 12b
18:               jal          t1, 16b
19:               jal          ra, 7b
20:               jal          ra, 15b
21:               andi         s1, sp, -1979
sub_2_3:          jal          s4, 19f
0:                jal          ra, 7f
1:                jal          t1, 6f
2:                jal          ra, 1b
3:                jal          s7, 17f
4:                jal          ra, 14f
5:                jal          a6, 20f
6:                jal          ra, 10f
7:                jal          t1, 8f
8:                jal          t1, 15f
9:                jal          a2, 0b
10:               jal          ra, 5b
11:               jal          s6, 4b
12:               jal          ra, 13f
13:               jal          gp, 11b
14:               jal          ra, 16f
15:               jal          ra, 18f
16:               jal          a4, 3b
17:               jal          ra, 2b
18:               jal          tp, 12b
19:               jal          sp, 9b
20:               and          a7, s7, t2
sub_2_4:          jal          s4, 4f
0:                jal          ra, 2f
1:                jal          t1, 12f
2:                jal          tp, 21f
3:                jal          ra, 19f
4:                jal          s11, 10f
5:                jal          t1, 0b
6:                jal          ra, 26f
7:                jal          ra, 27f
8:                jal          ra, 22f
9:                jal          ra, 11f
10:               jal          t1, 18f
11:               jal          ra, 1b
12:               jal          t1, 15f
13:               jal          ra, 20f
14:               jal          ra, 23f
15:               jal          ra, 6b
16:               jal          s5, 14b
17:               jal          ra, 5b
18:               jal          a1, 9b
19:               jal          ra, 8b
20:               jal          t1, 7b
21:               jal          ra, 24f
22:               jal          ra, 25f
23:               jal          sp, 17b
24:               jal          t1, 13b
25:               jal          ra, 16b
26:               jal          ra, 3b
27:               jal          t1, 28f
28:               xori         s6, sp, 953
sub_2_23:         jal          s4, 11f
0:                jal          s5, 1f
1:                jal          t1, 5f
2:                jal          t1, 6f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          ra, 2b
6:                jal          ra, 12f
7:                jal          ra, 8f
8:                jal          tp, 9f
9:                jal          s1, 14f
10:               jal          ra, 4b
11:               jal          t1, 10b
12:               jal          ra, 13f
13:               jal          t1, 3b
14:               sll          s9, s8, tp
                  sltu         a4, s0, gp
                  sltiu        a1, s6, -1112
                  ori          a0, gp, 472
                  bltu         t5, s4, 5f
                  ori          t1, s1, -1834
5:                bltu         zero, a6, 8f
                  srli         s4, t2, 18
                  ori          a4, t4, -837
8:                sll          s5, s8, s3
                  srli         gp, sp, 18
                  and          s0, t0, sp
                  slli         zero, ra, 4
                  beq          t5, s1, 18f
                  sltiu        s6, a6, 420
                  slti         a6, a0, -252
                  addi         tp, t1, -1466
                  beq          s7, t6, 24f
                  bge          s7, s3, 27f
18:               srai         a3, sp, 23
                  addi         t3, sp, -1624
                  slt          s0, t5, t0
                  andi         tp, tp, 1536
                  bge          s10, a7, 36f
                  nop
24:               srai         t3, a7, 3
                  bge          s6, a2, 32f
                  srai         t3, tp, 1
27:               srl          s2, s2, s5
                  sll          t1, tp, a1
                  sra          a5, zero, a2
                  sll          s6, a7, s6
                  and          a5, gp, a5
32:               bge          t1, s11, 50f
                  blt          a2, ra, 36f
                  addi         s5, t1, -2032
                  beq          s9, s0, 42f
36:               auipc        s1, 308899
                  xor          s8, t1, a5
                  add          a4, t6, s8
                  srl          a7, s9, t2
                  andi         tp, s5, 1593
                  or           s7, a4, s11
42:               xor          a5, s5, s0
                  addi         t3, s2, 1176
                  bge          a5, t3, 50f
sub_2_5:          jal          s4, 19f
0:                jal          t1, 24f
1:                jal          ra, 15f
2:                jal          s7, 3f
3:                jal          a1, 20f
4:                jal          ra, 1b
5:                jal          ra, 12f
6:                jal          t1, 25f
7:                jal          ra, 26f
8:                jal          ra, 9f
9:                jal          t1, 10f
10:               jal          t1, 27f
11:               jal          ra, 17f
12:               jal          ra, 22f
13:               jal          t1, 4b
14:               jal          ra, 16f
15:               jal          t1, 30f
16:               jal          ra, 7b
17:               jal          sp, 0b
18:               jal          sp, 21f
19:               jal          ra, 6b
20:               jal          ra, 28f
21:               jal          ra, 23f
22:               jal          ra, 18b
23:               jal          t1, 14b
24:               jal          ra, 2b
25:               jal          ra, 29f
26:               jal          ra, 11b
27:               jal          tp, 5b
28:               jal          t1, 13b
29:               jal          ra, 8b
30:               srai         s5, t4, 6
                  addi         ra, s10, 2002
                  sltiu        s6, s6, 934
                  sra          a7, gp, sp
                  sra          a3, a3, a5
sub_2_24:         jal          s4, 11f
0:                jal          ra, 4f
1:                jal          t1, 14f
2:                jal          s4, 15f
3:                jal          ra, 5f
4:                jal          a6, 17f
5:                jal          sp, 13f
6:                jal          tp, 12f
7:                jal          t1, 1b
8:                jal          ra, 7b
9:                jal          s11, 0b
10:               jal          ra, 9b
11:               jal          s4, 2b
12:               jal          ra, 18f
13:               jal          ra, 8b
14:               jal          t1, 10b
15:               jal          t1, 16f
16:               jal          ra, 3b
17:               jal          t1, 6b
18:               slti         s6, s5, 976
                  sltiu        gp, s7, 486
50:               nop
                  bne          s4, zero, 62f
                  ori          a7, s0, 436
                  slli         a2, s8, 29
                  auipc        a1, 270627
                  add          zero, s10, s5
                  andi         a0, t6, -665
                  add          a5, a2, s10
                  add          s5, s6, ra
                  beq          t5, s6, 68f
                  sub          t1, ra, a4
                  blt          s5, s3, 78f
62:               nop
                  sra          s1, a5, tp
                  slti         s0, a1, -107
                  andi         s2, s5, -1991
                  srli         s3, s3, 3
                  xori         s5, tp, 1595
68:               nop
                  slti         s6, t4, 1472
                  blt          s4, s7, 74f
                  bne          zero, a1, 78f
                  addi         t3, s0, 1421
                  lui          s1, 228484
74:               slli         s6, a3, 0
                  slti         s8, zero, 364
                  andi         t2, t6, 1492
                  and          s7, t1, a6
78:               lui          t6, 689436
                  srli         t5, s4, 17
                  addi         s0, s8, 117
                  xori         a0, ra, 1154
                  sub          a7, s3, s1
                  srli         a7, s0, 30
                  xor          s1, gp, s2
                  slti         ra, s0, 1063
                  nop
                  bltu         t4, a1, 98f
                  xori         sp, s0, -1953
                  bge          a5, ra, 109f
                  addi         t3, t6, -91
                  bltu         s1, gp, 100f
                  srl          zero, s11, t4
                  srli         s1, s10, 12
                  add          s8, s10, a2
                  sll          t6, a3, t2
                  nop
                  auipc        a5, 82
98:               slti         sp, sp, 1474
                  or           a3, zero, s0
100:              bge          a4, t6, 114f
                  bltu         s6, s9, 115f
                  slli         s8, s1, 5
                  slti         t1, a6, -559
                  bge          s3, s6, 106f
                  srli         a7, s10, 26
106:              xor          s2, s1, a4
                  nop
                  srl          a4, s6, tp
109:              and          s4, ra, s0
                  sub          s0, a1, a4
                  sub          t2, s6, a4
                  bgeu         a5, a7, 124f
                  bne          s1, a4, 119f
114:              ori          zero, t6, -393
115:              srai         tp, s0, 17
                  bge          a5, gp, 118f
                  sub          a2, s8, zero
118:              bltu         t3, a2, 130f
119:              slti         a2, a7, -1150
                  auipc        s0, 843292
                  xori         gp, s6, 1693
                  srl          a6, a4, a3
                  sub          s7, zero, sp
124:              bgeu         zero, s9, 131f
                  slli         a2, s4, 20
                  sltiu        s11, t3, -1287
                  or           s9, tp, t0
                  sra          a6, s9, t4
                  auipc        t1, 156480
                  beq          tp, gp, sub_2_j4 #branch to jump instr
                  xor          t5, t0, s0
                  xor          a5, s2, s4
                  slti         a6, a4, 1859
                  slti         s6, s7, 24
                  xor          s2, ra, a3
                  ori          ra, tp, -521
sub_2_j4:         jal          s4, sub_3 #jump sub_2 -> sub_3
130:              bgeu         a7, s6, 135f
131:              bgeu         ra, gp, 151f
                  xori         s8, s6, -195
                  add          a0, gp, s4
                  auipc        a2, 433334
135:              sra          t2, t2, ra
                  nop
                  slt          s8, s7, s5
                  sltu         s1, sp, t2
                  nop
                  srai         a3, s1, 26
                  srli         s3, t0, 19
                  slti         tp, t0, -843
                  slt          s3, s3, a2
                  ori          zero, zero, 476
                  add          s8, s4, s6
                  srai         tp, s0, 27
                  ori          a2, s5, 1270
                  sub          t3, sp, t5
                  slti         s7, a6, 1785
                  sltu         s0, t2, s7
151:              bge          s1, a7, 171f
                  or           s3, s1, t1
                  srl          s11, t5, zero
                  andi         gp, gp, -740
                  beq          s4, s2, 169f
                  lui          sp, 343852
                  lui          t5, 652433
                  addi         a3, s6, 380
                  nop
                  slti         t1, t4, -108
                  bltu         a4, gp, 181f
                  auipc        ra, 774220
                  srl          ra, s7, s0
                  addi         zero, a3, -1786
                  sub          s5, s11, s8
                  sub          s3, a4, s5
                  or           zero, a2, a5
                  srl          s8, t5, s5
169:              add          s8, zero, a6
                  bltu         s5, a2, 177f
171:              srl          s6, s11, t4
                  or           a2, a4, s6
                  xor          a3, tp, zero
                  sltiu        a3, t1, -1744
                  xori         s5, a7, 1011
                  addi         tp, a6, 1056
177:              andi         ra, tp, 1180
                  auipc        gp, 733865
                  beq          s9, s6, 190f
                  addi         a5, gp, 1465
181:              beq          t5, s1, 198f
                  beq          s0, s11, 189f
                  addi         s9, t4, -1438
                  slti         a4, t4, -1628
                  sra          a5, s4, t6
                  sltiu        s9, a5, 930
                  auipc        a4, 619651
                  sra          zero, a7, s10
189:              srai         a1, t4, 19
190:              sll          s3, s6, s7
                  sltu         ra, s9, s10
                  srl          a0, s3, t3
                  and          gp, a5, a2
                  and          s7, a5, a2
                  andi         t3, s1, -1142
                  slti         a2, s5, 518
                  blt          tp, s11, 204f
198:              ori          a2, t3, 390
                  slti         a6, t1, 1556
                  sub          ra, t4, t0
                  add          ra, s8, a3
                  slti         a6, s2, 1824
                  auipc        s8, 469255
204:              and          a0, s4, t1
                  xor          s8, s1, s6
                  sltiu        gp, ra, 1885
                  bne          t1, gp, 210f
                  add          t2, sp, a7
                  slt          s4, a2, tp
210:              xori         zero, a6, 1843
                  andi         t1, s7, -272
                  auipc        a0, 692582
                  srl          s4, a3, t6
                  slli         s4, t2, 13
                  beq          t3, gp, 233f
                  slt          a7, s9, sp
                  xori         a7, s7, 629
                  or           s2, s4, s11
                  beq          a4, t6, 221f
                  srli         a4, a2, 19
221:              bltu         a7, a4, 227f
                  sra          a2, s10, s0
                  or           a6, a5, s0
                  sll          zero, s10, s0
                  sll          t3, sp, s1
                  srl          a5, s6, s8
227:              beq          s5, t5, 235f
                  slt          gp, s6, s6
                  bgeu         sp, tp, 234f
                  srai         t3, s6, 22
                  bgeu         s10, s0, 251f
                  bge          tp, s2, 234f
233:              sltiu        s2, t2, -567
234:              sub          sp, a7, a5
235:              andi         gp, sp, -2029
                  blt          ra, s0, 243f
                  lui          t5, 818179
                  sltiu        s8, a1, -243
                  ori          s8, s5, -623
                  bgeu         tp, t3, 249f
                  sub          a1, s6, s9
                  add          a3, a5, s3
243:              srl          a7, s7, sp
                  addi         t5, t1, -968
                  auipc        s3, 885152
                  slti         gp, t1, 696
                  sltiu        a7, a3, -1674
                  nop
249:              add          s0, zero, s7
                  bltu         s10, t0, 256f
251:              auipc        a4, 950538
                  blt          s10, s0, 254f
                  or           s4, s7, s6
254:              nop
                  add          s1, a3, t3
256:              srli         s1, t6, 15
                  andi         a1, a6, -1141
                  bge          sp, a1, 270f
                  and          t6, s4, s6
                  or           s3, a5, a6
                  sra          gp, s11, s11
                  xor          a1, s2, a5
                  addi         s6, a0, -1649
                  lui          t1, 933115
                  sltu         s3, a4, s7
                  slt          t2, ra, s1
                  slli         s6, t4, 13
                  sub          s1, a3, t4
                  andi         s9, t2, 923
270:              lui          a2, 241778
                  sltu         a0, a0, ra
                  or           s9, t5, zero
                  sll          a2, s3, zero
                  sltiu        a0, a6, -1395
                  srli         s9, a7, 29
                  nop
                  auipc        ra, 813614
                  xori         s1, t4, -1117
                  lui          a1, 215243
                  slti         s3, s11, -1056
                  bne          s10, t5, 287f
                  sltu         s4, s7, t0
                  bgeu         tp, s7, 287f
                  sll          s9, s8, t0
                  bgeu         s0, s2, 299f
                  srai         s5, s6, 20
287:              andi         s11, a1, -806
                  bne          ra, tp, 300f
                  sltu         t1, s7, s2
                  xor          s2, gp, s7
                  andi         t2, s1, -1683
                  addi         t2, a4, -698
                  slt          s1, a5, t5
                  sll          s11, a4, sp
                  nop
                  ori          s4, a1, 2008
                  xori         s9, s4, 1427
                  srl          a1, s8, t0
299:              srli         t5, t5, 31
300:              slli         a5, ra, 27
                  slt          a0, ra, gp
                  sltiu        a2, t0, 958
                  slli         s0, s4, 11
                  xori         s2, a4, -1115
                  andi         a2, tp, -1394
                  and          a0, s11, t0
                  andi         a6, s3, -1025
                  sltiu        a0, t0, 1033
                  add          s0, a0, s11
                  addi         sp, t5, -104
                  slt          t6, a6, a0
                  auipc        tp, 248678
                  andi         t6, s10, -199
                  lui          a5, 56560
                  sub          t2, s5, t0
sub_2_19:         jal          s4, 6f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          a7, 9f
3:                jal          a7, 1b
4:                jal          ra, 8f
5:                jal          s5, 3b
6:                jal          ra, 0b
7:                jal          ra, 5b
8:                jal          t3, 7b
9:                jal          ra, 4b
10:               ori          gp, t3, -1992
                  bge          a6, t3, 330f
                  sub          s9, s6, t0
                  xor          s11, s5, s4
                  bge          sp, s8, 322f
                  bgeu         s1, s11, 329f
                  auipc        tp, 60336
322:              lui          a4, 606210
                  ori          s11, s5, -878
                  srai         t5, a0, 9
                  srai         tp, a5, 28
                  bne          s11, a1, 336f
                  xor          a2, s0, s6
                  andi         s6, s9, -1098
329:              srai         s7, t5, 22
330:              nop
                  srai         zero, a5, 9
                  blt          a6, a4, 343f
                  lui          s6, 423974
                  nop
                  ori          a3, s10, -1655
336:              sra          t5, ra, s11
                  bgeu         a0, t5, 357f
                  and          a3, sp, s2
                  srl          a0, s10, s2
                  blt          sp, a5, 354f
                  sra          zero, tp, s11
                  lui          s2, 395371
343:              bge          t4, s2, 345f
                  sll          s1, tp, s8
345:              slti         gp, a4, 874
                  xor          s2, a2, s7
                  sub          t3, s3, s7
                  srl          s2, t3, s10
                  sll          s7, s2, t0
                  srai         a2, t3, 2
                  srai         s0, tp, 9
                  lui          gp, 423150
                  bge          s6, s6, 373f
354:              slt          t2, s10, sp
                  sra          s11, s5, tp
                  sra          sp, s8, sp
357:              and          a4, t5, s9
                  sub          s7, a3, s4
                  srai         s7, t4, 31
                  beq          a3, s3, 366f
                  slli         gp, s8, 21
                  or           a4, a6, t6
                  blt          t3, s7, 375f
                  xori         a4, s10, -1041
                  sra          s4, s8, t6
366:              srli         a1, s2, 22
                  sra          a7, t4, a0
                  addi         s4, a5, -1735
                  and          s3, ra, a2
                  bltu         a0, a1, 374f
                  add          a5, s0, zero
                  srl          s3, t2, s6
373:              nop
374:              or           gp, t2, a1
375:              bge          t5, a4, 389f
                  andi         s7, s2, 217
                  and          t6, s7, zero
                  addi         a6, s9, 1028
                  slli         zero, tp, 24
                  nop
                  slti         t5, t1, 809
                  add          s7, t1, a6
                  and          t3, gp, s1
                  bne          s2, s1, 391f
                  srai         t6, s11, 25
                  sll          gp, gp, s9
                  xor          a3, a5, s11
                  lui          s5, 161113
389:              bne          s2, t3, 396f
                  xori         s5, a6, -159
391:              lui          a1, 470073
                  sra          s1, t0, s9
                  andi         s7, t2, -1802
                  srli         s3, s10, 5
                  slti         sp, a3, -1386
396:              srli         a0, s4, 30
                  slt          t3, s4, s8
                  srl          s6, a5, s4
                  srai         zero, a5, 29
                  xor          a6, t3, a6
                  srli         s11, s7, 6
                  beq          t0, a1, 411f
                  srli         s3, gp, 4
                  srli         s6, t5, 7
                  bltu         t0, a6, 412f
                  sub          a4, s2, s6
                  slti         s1, a7, 1694
                  sll          t2, s1, s1
                  auipc        a6, 628052
                  lui          zero, 305690
411:              sltu         s9, a4, ra
412:              or           t3, t0, s3
                  addi         t1, zero, -79
                  sra          s7, a4, s2
                  nop
                  beq          s2, ra, 421f
                  lui          gp, 966301
                  sltiu        t2, a5, 1631
                  sltiu        a4, s7, 151
                  bge          ra, tp, 422f
421:              sltiu        a5, a1, -1321
422:              and          a7, tp, a4
                  andi         t5, s4, -1358
                  xori         a2, a0, 704
                  srl          s0, a5, t6
                  sltiu        s1, s10, 275
                  srl          s0, t0, s9
                  auipc        t5, 747511
                  bge          a0, s3, 440f
                  sub          a6, t5, s11
                  slli         a7, zero, 30
                  blt          zero, t2, 446f
                  and          s1, s2, tp
                  auipc        s1, 525027
                  sra          ra, s8, s11
                  slt          s4, t3, t5
                  xor          a0, zero, tp
                  or           a5, ra, s6
                  slli         t5, a0, 4
440:              or           t6, t0, s2
                  beq          t2, s7, 451f
                  auipc        a3, 144611
                  andi         a5, t3, 968
                  sltu         tp, t0, t5
                  xor          t2, s8, a5
446:              slti         s9, s9, 666
                  add          s2, t3, ra
                  srai         s8, a1, 28
                  sltu         t6, a2, a5
                  bge          s4, s10, 456f
451:              bne          zero, s7, 453f
                  lui          s4, 813621
453:              bge          s5, sp, 456f
                  slt          s4, a4, s3
                  sub          t6, s1, a2
456:              srl          s2, t0, t3
                  blt          sp, a1, 466f
                  bltu         a3, s5, 470f
                  sub          a6, a0, a0
                  bgeu         s4, a5, 463f
                  xori         s8, s1, 2008
                  or           s5, s4, s10
463:              slti         s1, s2, -659
                  auipc        ra, 822165
                  ori          sp, t5, 672
466:              xor          a0, s9, s6
                  sra          tp, t5, s0
                  bge          a3, s6, 488f
                  lui          s4, 172859
470:              bgeu         s10, t2, 488f
                  slt          s0, a3, s0
                  and          t3, a3, s8
                  xor          a1, zero, tp
                  bgeu         tp, s0, 494f
                  auipc        s4, 703557
                  xor          s9, a3, t0
                  xori         a7, s4, 99
                  srli         s5, a6, 27
                  slti         a7, a6, 285
                  add          s2, s3, s3
sub_2_9:          jal          s4, 24f
0:                jal          t1, 7f
1:                jal          sp, 12f
2:                jal          ra, 19f
3:                jal          ra, 9f
4:                jal          a1, 17f
5:                jal          ra, 13f
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          s1, 6b
9:                jal          t1, 23f
10:               jal          s6, 25f
11:               jal          ra, 4b
12:               jal          ra, 8b
13:               jal          t1, 20f
14:               jal          ra, 22f
15:               jal          ra, 26f
16:               jal          t1, 18f
17:               jal          ra, 16b
18:               jal          ra, 14b
19:               jal          a4, 0b
20:               jal          ra, 10b
21:               jal          tp, 15b
22:               jal          ra, 3b
23:               jal          t1, 5b
24:               jal          ra, 1b
25:               jal          ra, 21b
26:               nop
                  ori          t5, s3, -429
                  auipc        t3, 81305
                  beq          s6, s5, 489f
                  srli         ra, a3, 11
                  slti         s0, s4, -1839
                  sub          s7, a2, t1
                  xori         t5, zero, 380
488:              sra          tp, s6, s2
489:              beq          s2, a7, 506f
                  auipc        s1, 924022
                  blt          a1, a7, 498f
                  nop
                  and          a2, a2, t2
494:              nop
                  addi         zero, sp, -714
                  auipc        a6, 805303
                  addi         s7, s11, -557
498:              beq          gp, gp, 509f
                  sll          s2, tp, t2
                  andi         s8, t3, 219
                  sltiu        t5, ra, -761
                  andi         sp, s8, 858
                  blt          s6, s9, 511f
                  bne          sp, a3, 511f
                  xori         s4, s0, -288
506:              sra          t3, s1, t2
                  beq          s1, s0, 510f
                  bltu         tp, a4, 528f
509:              bne          a7, s10, 521f
510:              beq          t3, t6, 515f
511:              bne          a6, t6, 519f
                  sub          t3, t1, s4
                  srl          t6, s6, s10
                  sub          s4, s9, a5
515:              and          s6, s0, t0
                  addi         s7, s10, -1190
                  lui          s0, 272384
                  sltu         a2, zero, s11
519:              andi         a6, a6, 869
                  sll          t6, zero, a7
521:              slt          s6, a0, s10
                  andi         gp, zero, 1442
                  bltu         s2, s10, 530f
                  sltiu        t6, t0, -299
                  slli         s0, a5, 12
                  srl          t6, s6, a6
                  andi         s9, s8, 1530
528:              bge          t1, s4, 530f
                  nop
530:              slt          a5, s10, t5
                  beq          t3, s2, 549f
                  add          s11, a1, a6
                  and          a5, a3, a4
                  slt          a5, a6, t2
                  sll          s0, s11, a1
                  xor          s1, a7, gp
                  andi         s1, s2, -465
                  xor          sp, a0, s2
                  beq          t2, t2, 559f
                  bgeu         s5, s7, 542f
                  srli         s2, a0, 22
542:              bge          a3, gp, 548f
                  sub          s7, tp, s9
                  beq          t3, s8, 546f
                  sra          s5, gp, t2
546:              sltiu        ra, t5, 210
                  xor          s0, a3, a0
548:              sra          s3, a4, zero
549:              slt          s2, s9, a6
                  srli         s3, tp, 0
                  srai         a5, s9, 8
                  nop
                  sltu         s4, sp, s8
                  andi         t1, s7, 323
                  beq          ra, t3, 562f
                  auipc        s9, 552271
                  slli         t1, a4, 24
                  slti         s2, a4, -1346
559:              sra          s6, t3, a5
                  add          s5, t1, a1
                  nop
562:              sltu         a0, t0, s7
                  lui          s9, 28987
                  blt          t1, t2, 568f
                  bge          t1, t4, 579f
                  xori         ra, t2, -1785
                  blt          a0, s10, 573f
568:              slt          s1, a4, s8
                  or           a4, s4, a4
                  xori         a6, s4, -1994
                  blt          s0, a0, 578f
                  bne          t2, s2, 583f
573:              sub          a1, ra, gp
                  slli         s4, s2, 31
                  srli         s2, a3, 22
                  lui          a3, 377229
                  nop
578:              slti         t2, gp, -1304
579:              srai         ra, t0, 4
                  bne          t4, zero, 591f
                  and          s9, tp, t6
                  slli         s4, s7, 10
583:              xori         s9, gp, 411
                  add          sp, s8, a2
                  auipc        s3, 208444
                  srli         s3, t3, 0
                  ori          s9, t0, 571
                  add          t5, sp, t6
                  bltu         s1, s4, 599f
                  lui          t3, 1033386
591:              srai         a3, a6, 22
                  sltu         s3, tp, t2
                  lui          t6, 388076
                  add          s1, zero, a3
                  nop
                  andi         ra, a3, 46
                  sub          ra, t0, a5
                  bltu         t3, s4, 612f
599:              bltu         t4, s4, 608f
                  beq          a5, s2, 606f
                  or           tp, s4, s2
                  beq          t6, ra, 611f
                  srl          ra, s3, s4
                  sll          s5, s8, s1
                  add          s4, s5, a4
606:              ori          a4, s7, 1079
                  beq          s9, t5, 624f
608:              xori         t6, a4, 1995
                  xor          a7, t3, a0
                  sltiu        t5, t5, -621
611:              auipc        s1, 615431
612:              srai         s7, tp, 18
                  bge          sp, s9, 633f
                  slt          a5, gp, t5
                  bgeu         s4, a1, 627f
                  xori         s4, s6, -1616
                  and          a7, gp, s0
                  ori          s0, t0, 380
                  add          s5, t5, t4
                  sra          gp, s1, t1
                  lui          gp, 55743
                  or           a5, t2, zero
                  srai         s3, sp, 22
624:              bne          s10, a1, 638f
                  slli         s2, a0, 6
                  beq          a0, s11, 629f
627:              add          a5, t0, s3
                  or           s6, t0, t3
629:              add          sp, s10, s4
                  beq          tp, t2, 644f
                  slt          s11, s2, t3
                  xor          s6, ra, a5
633:              blt          s3, t1, 653f
                  and          a3, a7, s6
                  slli         a2, s10, 9
                  nop
                  sltiu        a5, s2, 264
638:              lui          a0, 191011
                  sra          s3, s5, s0
                  sll          t5, t2, s4
                  auipc        ra, 474316
                  srli         tp, gp, 30
                  xor          a0, t3, ra
644:              xor          s1, zero, s0
                  srli         s3, s0, 8
                  and          gp, tp, a4
                  or           s0, s9, zero
                  lui          gp, 987285
                  lui          a3, 195590
                  sub          t6, a5, t6
                  sltu         s4, t2, sp
                  auipc        s3, 627310
653:              bne          s1, s5, 664f
                  and          a6, s0, zero
                  bgeu         t1, a6, 667f
                  andi         s9, ra, 746
                  bne          sp, s10, 667f
                  sub          s8, t0, zero
                  beq          t5, s5, 679f
                  bge          a4, a1, 677f
                  nop
                  sltu         t6, s1, s1
                  blt          s2, a2, 665f
664:              sltiu        s8, t5, -1891
665:              bge          s5, t2, 683f
                  srai         s11, s10, 5
667:              bgeu         ra, s7, 669f
                  srli         gp, s11, 1
669:              bgeu         s11, a5, 689f
                  andi         s4, s11, -665
                  blt          tp, s9, 680f
                  srai         s4, t4, 23
                  blt          t1, a4, 687f
                  srli         s7, t1, 11
                  xori         a5, a2, 1749
                  andi         s0, s6, -1798
677:              bgeu         a6, s1, 688f
                  andi         a3, s1, 1870
679:              andi         sp, a3, 1022
680:              bge          t5, a5, 682f
                  or           a3, t5, s1
682:              sltiu        a2, s7, -1762
683:              srl          a2, a0, a6
                  xori         s1, s5, -277
                  or           a5, t6, t0
                  or           t5, a1, tp
687:              sll          s4, s2, a7
688:              srl          s6, t0, s7
689:              nop
                  xori         a0, a2, 393
                  nop
                  lui          ra, 480244
                  nop
                  lui          t6, 78983
                  sra          a4, gp, a2
                  auipc        t6, 656581
                  slt          t3, a6, s4
                  sll          s2, t4, s5
                  sub          s6, t1, s10
                  andi         t5, s7, 1497
                  srli         s9, s5, 10
                  auipc        a3, 575076
                  blt          s11, t6, 712f
                  slli         s7, t4, 9
                  andi         t2, a6, -877
                  sll          t1, tp, t1
                  xor          s8, gp, tp
                  blt          t6, t2, 715f
                  bltu         s2, t4, 723f
                  xor          t3, a1, s5
                  sra          s8, ra, a0
712:              or           a5, s11, s11
                  or           tp, ra, a6
                  sltu         sp, s2, s9
715:              sub          a6, a6, a3
                  andi         t1, tp, -758
                  bne          s4, s11, 722f
                  sub          s7, sp, t1
                  ori          s0, s10, -796
                  auipc        s9, 155346
                  or           a4, a3, t5
722:              xor          s2, s7, a2
723:              xor          s11, s1, tp
                  ori          ra, ra, -999
                  sll          t6, t1, t5
                  sltiu        t5, s6, -1042
                  sll          sp, zero, t6
                  bge          tp, t5, 735f
                  ori          tp, a5, 1564
                  sltiu        t3, tp, 654
                  slli         t2, t5, 26
                  srli         a4, sp, 12
                  bge          s6, t4, 740f
                  xor          s6, s10, t4
735:              sra          s6, s10, gp
                  andi         ra, t1, -1045
                  slti         s7, ra, -1866
                  lui          s11, 306906
                  xor          gp, zero, sp
740:              bltu         t6, t6, 746f
                  sltu         s5, t6, s5
                  andi         a5, gp, 1601
                  xor          s6, t1, sp
                  xori         zero, t3, -1225
                  xori         s3, a7, -872
746:              andi         t6, s5, 1565
                  bne          s4, tp, 759f
                  blt          s9, s0, 756f
                  xor          t2, s8, a5
                  andi         a0, t2, -932
                  andi         s0, s11, 1685
                  sub          a7, s6, t6
                  auipc        s8, 502943
                  slti         t3, s6, 977
                  nop
756:              sltiu        s6, s7, -1399
                  bltu         t2, a3, 764f
                  slt          a5, s3, t4
759:              xor          tp, zero, a0
                  xori         ra, s7, -597
                  blt          s8, t5, 767f
                  add          s8, gp, tp
                  bne          a6, s4, 769f
764:              srli         t6, a6, 25
                  bge          t3, t4, 768f
                  sltiu        s6, s4, -1632
767:              nop
sub_2_22:         jal          s4, 9f
0:                jal          t2, 15f
1:                jal          ra, 10f
2:                jal          a3, 7f
3:                jal          ra, 5f
4:                jal          ra, 14f
5:                jal          ra, 1b
6:                jal          s8, 12f
7:                jal          ra, 16f
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          s4, 2b
11:               jal          t1, 0b
12:               jal          sp, 8b
13:               jal          ra, 4b
14:               jal          tp, 11b
15:               jal          s0, 6b
16:               xor          a5, a3, s10
768:              xori         zero, s10, -1355
769:              auipc        s3, 562154
                  xor          a5, t2, t2
                  lui          a5, 158043
                  xor          a0, t6, s5
                  sra          zero, s4, a7
                  sub          t2, a7, s10
                  sra          t2, s3, s7
                  and          a6, s5, s1
                  bne          a5, sp, 780f
                  beq          t6, s7, 782f
                  sltiu        s5, gp, -1942
780:              and          s4, a3, s6
                  srli         a7, s1, 9
782:              sub          ra, s6, s0
                  sub          gp, ra, a3
                  xor          a4, a6, t5
                  bge          t6, s2, 792f
sub_2_20:         jal          s4, 7f
0:                jal          ra, 11f
1:                jal          t1, 18f
2:                jal          t1, 3f
3:                jal          t1, 6f
4:                jal          s1, 20f
5:                jal          t1, 14f
6:                jal          t1, 9f
7:                jal          t1, 1b
8:                jal          tp, 16f
9:                jal          ra, 17f
10:               jal          t1, 19f
11:               jal          ra, 8b
12:               jal          ra, 15f
13:               jal          t1, 0b
14:               jal          ra, 2b
15:               jal          ra, 13b
16:               jal          t1, 4b
17:               jal          ra, 10b
18:               jal          ra, 5b
19:               jal          ra, 12b
20:               jal          ra, 21f
21:               srl          t6, s2, s2
                  and          a6, s7, s3
                  lui          s0, 745370
                  srli         s8, s8, 7
                  addi         s5, a4, 701
                  lui          a0, 857104
                  srli         s0, a1, 10
792:              or           a3, zero, a7
                  andi         t1, a5, -159
                  bne          s6, t0, 808f
                  blt          a2, t1, 801f
                  srl          a4, s6, t2
                  and          a6, s8, a3
                  xor          t1, t4, gp
                  sltiu        ra, s11, 50
                  slli         a5, zero, 31
801:              nop
                  blt          a2, s4, 822f
                  srli         t2, s1, 3
                  nop
                  sub          s2, s8, t0
                  nop
                  srli         s4, a3, 21
808:              and          a0, s7, s6
                  xor          t2, a2, s2
                  and          t5, gp, s7
                  and          s2, s11, a0
                  ori          a6, s11, -746
                  srai         s6, s7, 19
                  xor          t3, s3, a3
                  auipc        t1, 1034228
                  lui          gp, 191687
                  sra          s2, s6, s3
                  xori         a2, a7, -1706
                  xori         t6, a7, 1470
                  bgeu         t0, s6, 827f
                  sltu         s1, sp, a7
822:              add          a0, t2, s5
                  beq          s5, s3, 834f
                  slt          s6, t6, s5
                  slli         t6, s7, 28
                  bgeu         s1, s11, 833f
827:              or           s0, tp, t3
                  sll          a1, a2, tp
                  auipc        ra, 620380
                  slt          s11, s8, s0
                  bltu         t6, s4, 851f
                  bgeu         a1, a1, 835f
833:              slti         s9, a3, -82
834:              ori          gp, s5, -2003
835:              bltu         a2, t4, 849f
                  sltu         t1, a0, t5
                  or           gp, s3, t1
                  ori          t3, a6, -282
                  bgeu         a4, s3, 848f
                  bge          sp, sp, 847f
                  and          s4, t1, sp
                  srl          t5, s2, a3
                  bge          sp, sp, 857f
                  blt          a5, tp, 850f
                  auipc        t6, 520100
                  xor          a1, a6, s9
847:              addi         s7, a1, 891
848:              auipc        a6, 828855
849:              or           s6, zero, a5
850:              andi         s3, t3, -36
851:              ori          a0, t2, 700
                  bgeu         ra, t1, 862f
                  xor          a5, s2, s4
                  add          a0, tp, tp
                  or           t5, s9, t3
                  blt          zero, sp, 859f
857:              beq          a1, a0, 863f
                  and          s11, s1, sp
859:              sll          s11, a5, s4
                  sll          a0, s8, t6
                  bne          t2, a6, 873f
862:              bne          s8, s11, 879f
863:              ori          t2, tp, -1623
                  sltiu        a6, a2, 332
                  xor          s4, sp, t2
                  bltu         s0, sp, 868f
                  beq          s5, a2, 872f
868:              blt          zero, s0, 888f
                  lui          a5, 1032051
                  xori         a2, s8, 742
                  bne          t6, zero, 880f
872:              andi         ra, s2, 1612
873:              lui          zero, 331951
                  andi         a0, zero, 190
                  srl          zero, t0, s5
                  sltu         a6, a6, t5
                  lui          a3, 491708
                  andi         s5, t6, -385
879:              blt          a3, t5, 897f
880:              sub          a1, t1, t0
                  sltiu        a6, gp, 1196
                  andi         s0, t5, 848
                  sltiu        a1, a3, 870
                  slti         gp, ra, -1722
                  srl          a1, sp, t6
                  sltiu        s3, s4, 1623
                  sra          t2, t1, s4
888:              bne          s8, t0, 890f
                  bgeu         s2, tp, 893f
890:              blt          sp, t2, 901f
                  lui          t3, 670906
                  blt          a5, s11, 904f
893:              bge          s2, s0, 895f
                  blt          s7, t0, 902f
895:              addi         a6, t6, 547
                  bge          a3, s7, 903f
897:              slt          a2, sp, a0
                  and          s2, a0, zero
                  ori          t1, a1, -1606
                  sll          gp, t4, s4
901:              andi         a6, t4, 145
902:              add          s5, t3, s10
903:              xori         s8, s7, -607
904:              and          a0, t3, t1
                  beq          s3, a4, 925f
                  sll          t5, t3, s11
                  ori          s7, s9, 783
                  srai         a0, s9, 30
                  auipc        zero, 953189
                  bltu         gp, s8, 919f
                  sub          zero, s0, t6
                  ori          s2, t6, 1731
                  sltu         s2, t5, t5
                  xori         s11, ra, -1243
                  or           s2, a5, a1
                  sll          a3, s4, s6
                  bgeu         s0, a0, 931f
                  xori         t2, a2, 1547
919:              add          s11, s11, s6
                  andi         a5, a3, -1492
                  nop
                  bge          t3, s11, 929f
                  beq          t6, s7, 931f
                  beq          a6, a3, 931f
925:              addi         a5, s1, -1690
                  and          s2, sp, t6
                  ori          a3, a4, 1431
                  srli         a0, a4, 23
929:              addi         t6, s3, -1412
                  srl          s5, a2, s0
931:              xor          s9, s2, a7
                  or           s2, s6, s11
                  xor          s7, s5, s9
                  xor          s1, gp, ra
                  or           s4, t0, t4
                  blt          t1, s1, 947f
                  or           s8, s9, t1
                  addi         t6, s3, 1640
                  bltu         a3, s0, 942f
                  sltiu        s6, t2, 724
                  slt          a6, s6, gp
942:              sub          t6, s4, t5
                  nop
                  auipc        a5, 820591
                  and          s3, a3, a2
                  slli         s11, s6, 9
947:              slli         s1, zero, 8
                  sub          ra, t4, t5
                  slli         t5, t4, 6
                  srl          sp, a0, s0
                  xori         t2, tp, -1707
                  and          s11, t5, zero
                  bge          s0, s1, 965f
                  lui          gp, 740398
                  ori          t3, a1, 674
                  sltiu        t6, s4, 1445
                  srl          s6, tp, s7
                  addi         s1, s7, 36
                  bge          s8, gp, 977f
                  ori          s7, t3, -171
                  bltu         a2, s7, 963f
                  add          sp, s5, s4
963:              srli         s9, s7, 12
                  blt          ra, zero, 978f
965:              xor          s11, a0, t2
                  ori          t6, t2, -685
                  slt          a7, t0, s3
                  or           a7, a2, t5
                  addi         a3, a2, 1315
                  add          s5, t0, s7
                  add          s6, s10, a7
                  sra          s5, a1, s10
                  auipc        s7, 492865
                  srai         t1, a5, 10
                  bne          t4, a4, 982f
                  nop
977:              sll          ra, a6, tp
978:              bgeu         s3, t6, 984f
                  bltu         s3, s11, 982f
                  nop
                  sll          zero, ra, t6
982:              slt          a7, s5, s2
                  srai         t6, a7, 2
984:              slt          s11, t6, t0
                  xori         gp, sp, 693
                  lui          s4, 226799
                  add          ra, ra, gp
                  lui          ra, 1038042
                  sll          ra, ra, tp
                  xor          s4, gp, s6
                  bltu         zero, s6, 1008f
                  srai         s9, s4, 23
                  bltu         a2, t2, 1007f
                  srai         ra, s7, 3
                  xor          s2, s0, t0
                  or           s1, s3, t2
                  xori         a3, t4, -983
                  ori          a4, s1, 351
                  lui          a6, 430041
                  andi         sp, t1, 1910
                  and          a5, ra, s5
sub_2_18:         jal          s4, 9f
0:                jal          ra, 11f
1:                jal          t1, 7f
2:                jal          ra, 5f
3:                jal          s6, 8f
4:                jal          t3, 6f
5:                jal          t1, 3b
6:                jal          ra, 10f
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          ra, 13f
10:               jal          a7, 12f
11:               jal          ra, 4b
12:               jal          ra, 15f
13:               jal          ra, 14f
14:               jal          ra, 1b
15:               xor          a0, a3, s1
                  auipc        a3, 883216
                  addi         s4, s10, 704
                  slli         a7, ra, 30
                  bgeu         t1, a0, 1007f
                  lui          s1, 1022263
1007:             blt          a0, s1, 1012f
1008:             and          s11, s7, s10
                  srl          a0, a4, a2
                  lui          a5, 929173
                  slt          s11, s1, a0
1012:             srl          s3, s0, t5
                  or           ra, s0, s4
                  sltu         zero, a0, gp
                  blt          ra, s8, 1019f
                  slli         t3, t1, 10
                  sll          t5, sp, s8
                  srli         s6, a7, 28
1019:             srl          t1, s4, t2
                  sub          s4, a6, t3
                  slti         a4, a1, -1276
                  sra          t6, sp, s3
                  blt          s0, zero, 1035f
                  sra          a0, t4, tp
                  bge          t5, s7, 1036f
                  beq          s1, a3, 1028f
                  addi         a5, s8, -390
1028:             sll          t5, t4, s8
                  srai         t2, t1, 17
                  srli         s9, a3, 20
                  xori         a4, a2, 105
                  srli         s1, s6, 31
                  ori          a2, zero, -868
                  blt          a7, a2, 1044f
1035:             xor          zero, s4, s3
1036:             sra          a1, s4, s8
                  sll          a7, s10, a2
                  sltu         a2, gp, s0
                  srl          zero, s1, a5
                  srl          a3, t4, t6
                  sub          t5, s2, gp
                  sltu         zero, s7, s2
                  add          s5, s11, t0
1044:             srli         ra, t5, 13
                  sub          ra, a4, s9
                  xori         a2, s8, 783
                  xor          s5, a1, t6
                  nop
                  xori         s11, ra, 1106
                  blt          s8, sp, 1056f
                  slt          t1, s3, s1
                  xor          tp, a0, s0
                  srai         a1, a0, 21
                  lui          zero, 844993
                  srai         t5, s4, 19
1056:             sub          ra, s7, a6
                  bge          a1, a5, 1066f
                  srai         s3, t5, 9
                  sub          a2, a2, s3
                  bge          t6, a3, 1066f
                  nop
                  bge          a2, t3, 1082f
                  bltu         a6, t1, 1083f
                  bge          s5, s0, 1070f
                  sltiu        a4, s2, 1895
1066:             bne          t1, t2, 1068f
                  nop
1068:             lui          a2, 259165
                  beq          a7, zero, 1073f
1070:             srli         s2, t3, 3
                  srl          s3, zero, s0
                  xor          s5, s11, gp
1073:             slti         s1, s7, 1534
                  addi         zero, s2, 1615
                  nop
                  bne          s4, s8, 1079f
                  auipc        t5, 843185
                  srli         a3, s6, 9
1079:             bgeu         s7, t5, 1090f
                  or           t5, a4, s9
                  add          t2, s0, tp
1082:             slli         sp, s9, 16
1083:             bgeu         s7, t0, 1101f
                  bltu         s3, a5, 1094f
                  beq          tp, t1, 1094f
                  sltiu        s7, t0, -928
                  blt          t2, t5, 1092f
                  ori          ra, s4, 275
                  slli         gp, zero, 16
1090:             or           t3, s10, t6
                  auipc        a0, 990914
1092:             xor          s8, t4, t2
                  ori          s5, gp, 1233
1094:             beq          t6, s2, 1100f
                  sub          ra, s8, t0
                  addi         s9, s6, 202
                  bgeu         a4, gp, 1099f
                  lui          t2, 701523
1099:             nop
1100:             sll          a1, t1, a4
1101:             addi         a5, s4, 827
                  or           sp, sp, s2
                  xor          s5, a2, s2
                  bge          s11, t1, 1124f
                  andi         a2, s11, -368
                  srl          s5, s0, s1
                  sra          a7, a3, gp
                  bgeu         a6, s8, 1128f
                  srl          a0, s10, s1
                  or           s1, a1, a4
                  beq          s9, s4, 1119f
                  srl          s7, t1, s3
                  auipc        s9, 635377
                  srai         a7, s1, 1
                  lui          s8, 920742
                  bne          a6, s2, 1122f
                  add          s6, zero, s0
                  slti         t1, t2, 1694
1119:             slli         a6, t0, 15
                  ori          s1, s10, 1815
                  srai         s4, s9, 15
1122:             sltiu        a6, t1, -2000
                  bltu         a5, a4, 1132f
1124:             srai         gp, a2, 1
                  beq          s9, t3, 1132f
                  blt          t6, tp, 1140f
                  bne          a2, s9, 1129f
1128:             bgeu         s5, s10, 1148f
1129:             blt          a4, t1, 1140f
                  beq          a2, t4, 1137f
                  ori          s0, s10, -1774
1132:             sltiu        a0, tp, 9
                  slli         a5, s5, 3
                  slti         t3, s8, -1589
                  xor          a5, gp, a0
                  sub          s3, gp, zero
1137:             xor          tp, t2, ra
sub_2_21:         jal          s4, 10f
0:                jal          ra, 12f
1:                jal          ra, 11f
2:                jal          ra, 1b
3:                jal          t1, 21f
4:                jal          t1, 0b
5:                jal          t2, 24f
6:                jal          tp, 2b
7:                jal          ra, 3b
8:                jal          ra, 23f
9:                jal          s0, 4b
10:               jal          ra, 15f
11:               jal          ra, 19f
12:               jal          a7, 6b
13:               jal          ra, 16f
14:               jal          tp, 17f
15:               jal          t1, 8b
16:               jal          t1, 22f
17:               jal          ra, 9b
18:               jal          ra, 26f
19:               jal          ra, 18b
20:               jal          ra, 27f
21:               jal          a5, 20b
22:               jal          t1, 7b
23:               jal          ra, 14b
24:               jal          a6, 13b
25:               jal          t1, 5b
26:               jal          t1, 25b
27:               xori         t3, t0, -1949
                  bgeu         s11, a3, 1152f
                  sra          s3, s10, gp
1140:             auipc        a3, 548062
                  slti         s4, zero, -869
                  xori         t6, s1, 42
                  blt          gp, ra, 1155f
                  sra          s6, s2, a4
                  sra          s5, ra, t5
                  xori         s3, s11, -287
                  beq          t3, tp, 1159f
1148:             slt          s11, s4, s9
                  sltu         sp, a5, s11
                  bgeu         t0, a5, 1153f
                  nop
1152:             slli         s7, s4, 10
1153:             nop
                  auipc        s8, 309543
1155:             sltu         t6, s0, sp
                  srl          s8, t2, zero
                  sltu         s6, t3, t4
                  sll          gp, s8, s1
1159:             beq          t1, ra, 1173f
                  sub          a3, s10, a7
                  bltu         a6, sp, 1168f
                  bltu         s9, a3, 1169f
                  addi         s3, a6, 1016
                  lui          tp, 100852
                  beq          s2, a2, 1182f
                  and          t6, s4, a2
                  xor          a0, t0, t4
1168:             add          zero, s8, t1
1169:             nop
                  slt          s1, s11, s10
                  xori         s5, s4, -1808
                  bge          s8, s2, 1180f
1173:             slli         a3, s2, 23
                  auipc        a3, 521140
                  sltu         tp, t4, s8
                  lui          a2, 159029
                  xor          s3, tp, s9
                  bge          s4, sp, 1180f
                  beq          t3, s11, 1191f
1180:             nop
                  slli         s2, a7, 24
1182:             sra          a6, gp, a2
                  srli         a5, a3, 19
                  slti         t1, t5, -825
                  and          s2, s8, s7
                  bltu         s11, a1, 1200f
                  slt          a4, t0, s11
                  or           s0, a4, t5
                  add          sp, t3, a2
                  addi         a6, s2, 138
1191:             srl          ra, t5, ra
                  srl          a7, s3, t0
                  slli         a7, t4, 30
                  or           s3, t5, a4
                  xori         s11, a0, -501
                  slti         a3, a2, -1352
                  srai         gp, t2, 26
                  slt          s7, s6, s1
                  addi         s11, t3, -1348
1200:             add          s6, ra, s0
                  srl          s1, s4, t6
                  srl          s2, s11, a1
                  bne          a7, s0, 1223f
                  auipc        sp, 944472
                  bne          a2, t2, 1214f
                  xori         a2, s2, -287
                  add          a5, s6, a6
                  slti         gp, a2, 628
                  bltu         s8, a2, 1215f
                  srli         a2, a3, 0
                  nop
                  lui          a6, 411478
                  or           s1, s2, s11
1214:             xori         s5, t4, 980
1215:             sltu         t6, ra, a4
                  slti         ra, t6, -1474
                  xori         t2, zero, 752
                  srli         t1, a0, 2
                  bltu         s4, s11, 1223f
                  slt          tp, a7, t6
                  addi         sp, t0, 2014
                  slti         ra, ra, 863
1223:             sll          tp, s8, s10
                  nop
                  sltu         s8, t3, a7
                  slli         a1, s2, 2
                  lui          a4, 300513
                  srai         t6, t5, 21
                  slti         a4, s0, -353
                  sltu         tp, ra, s5
                  srli         t2, s9, 15
                  andi         s6, s5, 1210
                  addi         s8, t6, 1165
                  slli         s6, gp, 17
                  bgeu         a4, t5, 1253f
                  xori         t1, a6, -1617
                  bgeu         s5, t3, 1240f
                  sltiu        t2, a7, 1804
                  or           tp, a7, s3
1240:             sll          t6, sp, a1
                  nop
                  sll          a1, s1, t2
                  lui          tp, 570703
                  and          a3, s1, t6
                  lui          a4, 827027
                  auipc        s8, 177179
                  bge          a6, a3, 1259f
                  bgeu         s4, a0, 1259f
                  bltu         t6, t5, 1255f
                  sll          s4, s9, s11
                  sra          t3, t3, t4
                  xori         s0, a7, -292
1253:             lui          s4, 366275
                  bge          t3, s3, 1261f
1255:             slti         a1, t2, -904
                  sltu         s9, s6, a2
                  slli         gp, a4, 11
                  add          s7, a7, tp
1259:             slli         s7, a4, 19
                  sltu         s8, s2, t0
1261:             srli         t3, s1, 13
                  add          tp, s7, zero
                  or           s7, tp, s9
                  sltiu        a1, t6, -698
                  add          sp, s0, s7
                  and          s7, s5, a2
                  auipc        t2, 140538
                  srl          s9, t4, s9
                  bne          sp, a1, 1271f
                  bltu         s5, s3, 1275f
1271:             xori         t1, zero, -726
                  blt          s0, t5, 1292f
                  bne          a1, s0, 1290f
                  bne          s10, a4, 1285f
1275:             slt          s4, a2, s1
                  sra          s8, zero, t6
                  ori          s1, s5, 1780
                  srl          a0, s3, t2
                  bgeu         t1, t3, 1285f
                  sra          sp, a2, a0
                  nop
                  andi         gp, a4, 1993
                  srai         s6, t2, 22
                  bge          a1, a6, 1304f
1285:             bne          s1, gp, 1292f
                  add          s5, s8, t6
                  bge          s6, a6, 1301f
                  bltu         s2, t1, 1295f
                  ori          a2, a7, -1544
1290:             nop
                  sra          tp, s2, t6
1292:             slt          s3, s1, gp
                  slli         a2, s1, 21
                  slli         t2, t1, 8
1295:             add          t6, a3, s5
                  bgeu         s4, s10, 1310f
                  srli         a6, s4, 1
                  bge          ra, gp, 1300f
                  bge          s2, s8, 1308f
1300:             bge          a3, s5, 1310f
1301:             bne          t0, tp, 1308f
                  srli         t3, a0, 19
                  srl          s9, a5, t4
1304:             srli         t5, t1, 26
                  srai         s4, a4, 11
                  and          t1, s4, a7
                  sltiu        s9, a1, -108
1308:             srl          t6, s11, t1
                  nop
1310:             slt          s2, zero, sp
                  bgeu         a2, gp, 1314f
                  sub          s6, t0, t3
                  slti         s6, a7, -1592
1314:             slt          s3, t4, s11
                  slti         t3, s11, -1836
                  lw           s4, 4(t0)
                  srai         t5, t5, 28
                  sra          a3, s8, t1
                  addi         t0, t0, 44
                  sll          gp, a6, s4
1923:             addi x6, x20, 0
1923:             jalr x6, x6, 0
sub_3:            xor          s3, s0, a2
                  srli         sp, t0, 22
                  slti         tp, a2, -1548
                  sltu         a2, a7, a2
                  sra          t5, s10, s6
                  addi         t0, t0, -56
                  sw           s4, 4(t0)
                  addi         s0, s6, 1748
                  srai         s8, a2, 30
                  sltu         s9, zero, ra
                  sll          s3, a3, t5
                  sltu         a4, t5, a5
                  xor          s11, sp, t3
                  auipc        t5, 421907
                  nop
                  slti         s5, a7, 63
sub_3_j6:         jal          s4, sub_4 #jump sub_3 -> sub_4
                  auipc        zero, 308401
                  andi         s7, a4, -1158
                  slti         a6, a6, -324
                  sub          tp, s8, t3
                  andi         s0, s8, 786
sub_3_j7:         jal          s4, sub_4 #jump sub_3 -> sub_4
sub_3_1:          jal          s4, 16f
0:                jal          t1, 9f
1:                jal          ra, 0b
2:                jal          gp, 5f
3:                jal          ra, 10f
4:                jal          ra, 25f
5:                jal          t1, 6f
6:                jal          ra, 27f
7:                jal          ra, 11f
8:                jal          t1, 23f
9:                jal          t1, 13f
10:               jal          ra, 21f
11:               jal          ra, 28f
12:               jal          a5, 20f
13:               jal          t1, 12b
14:               jal          ra, 3b
15:               jal          ra, 17f
16:               jal          ra, 8b
17:               jal          t1, 24f
18:               jal          t1, 4b
19:               jal          sp, 18b
20:               jal          a3, 19b
21:               jal          ra, 2b
22:               jal          t2, 7b
23:               jal          ra, 26f
24:               jal          ra, 22b
25:               jal          ra, 15b
26:               jal          ra, 14b
27:               jal          ra, 1b
28:               andi         s0, gp, -1494
sub_3_0:          jal          s4, 0f
0:                jal          ra, 3f
1:                jal          t1, 2f
2:                jal          ra, 7f
3:                jal          ra, 1b
4:                jal          ra, 8f
5:                jal          t1, 11f
6:                jal          t5, 5b
7:                jal          ra, 10f
8:                jal          sp, 9f
9:                jal          ra, 6b
10:               jal          t1, 4b
11:               sltu         sp, s11, t5
                  slli         gp, a0, 25
                  beq          a2, a2, 17f
                  srli         a7, a2, 10
                  bgeu         t3, t0, 5f
                  beq          t4, s6, 24f
5:                xor          s2, s7, s0
                  srai         t5, s1, 9
                  sltu         t3, s3, a4
                  blt          a5, t3, 9f
9:                sltu         s6, s7, a2
                  slti         t1, a7, 885
                  srli         s0, a6, 10
                  xor          s0, gp, t3
                  lui          s4, 980001
                  srli         s1, s3, 17
                  nop
                  nop
17:               auipc        t3, 778625
                  andi         a2, zero, -1031
                  sub          s9, s3, a5
                  or           gp, a1, t5
                  or           a0, s10, t1
                  xori         s4, s7, -957
                  slti         t2, zero, 1697
24:               blt          s5, s9, 31f
                  sll          s3, s2, ra
                  xor          t1, sp, zero
                  sltiu        s0, a0, 68
                  sub          a7, t2, a5
                  add          s4, s10, t0
                  sra          a3, s2, s3
31:               slli         s7, tp, 13
                  bgeu         a6, s10, 36f
                  auipc        s5, 111392
                  srai         s2, s10, 15
                  srl          zero, tp, s11
36:               lui          gp, 337704
                  bne          t3, t1, 40f
                  sll          tp, s3, tp
                  and          s1, s0, s5
40:               add          a4, a2, t5
                  bge          s4, s5, 49f
                  addi         s11, a6, -1664
                  lui          s1, 498098
                  or           s4, t5, s5
                  sub          gp, s8, zero
                  sltiu        s8, a7, 867
                  srl          zero, tp, a7
                  and          a6, a4, t0
49:               srl          t6, a3, a6
                  srl          s11, s3, s10
                  bgeu         a4, a3, 53f
                  sra          a1, s10, t0
53:               and          sp, s5, s0
                  addi         t2, s11, 1357
                  sltiu        a3, t0, -449
                  auipc        s11, 493201
                  sub          gp, s3, s7
                  slli         t6, t2, 15
                  bgeu         ra, s7, 74f
                  or           gp, s10, s11
                  bge          s11, zero, 64f
                  lui          t6, 143659
                  lui          sp, 29530
64:               or           a6, s2, s3
                  bltu         s5, s8, 75f
                  sll          s11, t3, t2
                  slt          t6, zero, zero
                  srli         zero, zero, 15
                  add          t2, ra, tp
                  srai         s0, a4, 24
                  xori         s7, a7, -37
                  andi         s2, t1, -497
                  xori         gp, s5, 1055
74:               lui          tp, 780080
75:               bltu         s4, a6, 82f
                  andi         s4, zero, -63
                  lui          t1, 372651
                  nop
                  slti         t6, ra, -1840
                  or           sp, s1, t2
                  nop
82:               and          s1, t1, a2
                  xor          a0, a3, a6
                  auipc        t3, 812682
                  srai         a6, a1, 5
                  bne          s1, s11, 87f
87:               andi         s4, s0, -604
                  slti         s0, a3, -1398
                  sll          a2, a7, t2
                  bne          a2, t6, 99f
                  slli         a5, s1, 28
                  auipc        a1, 260095
                  slli         a3, t6, 3
                  sltiu        a1, s8, -1167
                  xori         a3, s8, 1028
                  srai         a5, s10, 9
                  bne          t3, a3, 99f
                  nop
99:               sra          gp, t2, s10
                  nop
                  nop
                  add          a5, a5, a5
                  lw           s4, 4(t0)
                  sub          t5, t6, sp
                  addi         t0, t0, 56
                  and          a3, a3, s11
                  xor          a0, s2, t0
                  sltiu        s7, s3, -447
175:              addi x18, x20, 1
175:              jalr x18, x18, 0
sub_5:            or           s5, a6, a5
                  nop
                  slt          s3, a2, s8
                  addi         t0, t0, -48
                  srl          a5, t1, a0
                  sltiu        s7, s10, -1276
                  sw           s4, 4(t0)
                  ori          s11, t2, -338
                  auipc        a3, 345573
                  ori          s2, s9, 1210
                  slt          s1, ra, t5
                  sub          t5, t5, s8
sub_5_0:          jal          s4, 22f
0:                jal          ra, 3f
1:                jal          t1, 0b
2:                jal          ra, 12f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          sp, 9f
6:                jal          gp, 18f
7:                jal          t2, 14f
8:                jal          ra, 16f
9:                jal          t1, 23f
10:               jal          ra, 6b
11:               jal          gp, 7b
12:               jal          t1, 5b
13:               jal          tp, 1b
14:               jal          ra, 15f
15:               jal          t1, 20f
16:               jal          a0, 19f
17:               jal          a1, 21f
18:               jal          ra, 17b
19:               jal          ra, 2b
20:               jal          ra, 8b
21:               jal          ra, 13b
22:               jal          sp, 10b
23:               srl          a0, t5, t3
sub_5_1:          jal          s4, 3f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          ra, 8f
4:                jal          ra, 2b
5:                jal          ra, 4b
6:                jal          ra, 11f
7:                jal          a0, 5b
8:                jal          ra, 7b
9:                jal          ra, 1b
10:               jal          t1, 13f
11:               jal          ra, 0b
12:               jal          s3, 6b
13:               jal          t1, 14f
14:               slli         t6, zero, 4
sub_5_2:          jal          s4, 16f
0:                jal          ra, 17f
1:                jal          tp, 8f
2:                jal          t1, 6f
3:                jal          ra, 7f
4:                jal          a3, 5f
5:                jal          ra, 24f
6:                jal          s3, 23f
7:                jal          t1, 9f
8:                jal          sp, 22f
9:                jal          ra, 25f
10:               jal          sp, 2b
11:               jal          ra, 21f
12:               jal          ra, 1b
13:               jal          ra, 20f
14:               jal          ra, 10b
15:               jal          t2, 14b
16:               jal          ra, 19f
17:               jal          ra, 4b
18:               jal          t2, 13b
19:               jal          ra, 15b
20:               jal          ra, 3b
21:               jal          t1, 12b
22:               jal          ra, 18b
23:               jal          a7, 0b
24:               jal          ra, 11b
25:               add          a1, t5, a0
                  beq          tp, t2, 18f
                  nop
                  or           s1, s3, gp
                  bne          a6, t3, 16f
                  ori          ra, s1, 1654
                  sltu         ra, s4, s1
                  ori          a1, t2, -1085
                  bltu         s5, a7, 13f
                  bltu         sp, s8, 20f
                  blt          s8, a0, 14f
                  auipc        a2, 396604
                  sub          t5, zero, a5
                  sltu         gp, tp, zero
13:               bgeu         t3, s6, 20f
14:               xor          t1, a0, s10
                  slli         t2, sp, 15
16:               sltiu        a2, ra, -1569
                  andi         sp, a7, -1604
18:               bgeu         s6, tp, 22f
                  xor          zero, ra, t2
20:               auipc        s0, 28616
                  addi         gp, s4, 1179
22:               srai         a3, s9, 30
                  addi         t1, sp, 23
                  ori          s4, t2, -280
                  srli         s2, t2, 15
                  beq          s5, a5, 43f
                  slli         ra, t0, 1
                  bne          s9, t1, 38f
                  srli         t6, t2, 15
                  srai         t6, a0, 31
                  sll          ra, s1, t6
                  sra          s8, t2, s3
                  xor          a0, tp, a5
                  sltu         a4, s7, s10
                  slt          tp, t2, t2
                  xor          s8, t4, s8
                  sra          s9, a1, t5
38:               xori         t2, s7, -130
                  sltiu        s9, s4, 1861
                  auipc        ra, 345109
                  nop
                  sltu         t6, a5, s4
43:               xor          ra, s1, tp
                  srli         t1, t1, 25
                  nop
                  bge          a1, zero, 52f
                  blt          t2, s3, 49f
                  and          s9, s2, t0
49:               and          s11, zero, s10
                  bgeu         s6, s0, 59f
                  sltu         gp, zero, s3
52:               srai         t1, t2, 12
                  srl          t3, sp, s1
                  bne          a4, t2, 60f
                  slt          a6, s4, a3
                  srli         a2, a6, 7
                  auipc        s8, 811863
                  blt          a3, s10, 60f
59:               or           s6, s1, t5
60:               lui          a5, 668341
                  and          t6, a4, tp
                  bgeu         s10, s10, 63f
63:               xori         zero, a2, -1146
                  slti         sp, t1, 1390
                  xori         t6, t0, 1848
                  ori          s3, s8, -549
                  or           sp, t3, a6
                  bltu         t0, t1, 88f
                  andi         gp, t0, -1867
                  xori         a2, s3, -1963
                  bltu         s0, sp, 89f
                  bltu         s1, s11, 81f
                  beq          zero, a2, 90f
                  sltu         a6, s4, a0
                  bltu         zero, a1, 91f
                  andi         a7, s8, 1128
                  bge          ra, s0, 93f
                  and          s2, s2, t6
                  bltu         tp, s10, 99f
                  bltu         s10, s4, 84f
81:               beq          a6, t5, 91f
                  lui          a6, 398329
                  ori          s7, s5, -2003
84:               beq          a5, gp, 94f
                  sub          sp, s10, s9
                  and          a4, a3, a1
                  slli         a5, a0, 16
88:               add          s7, s11, t0
89:               bltu         a1, s6, 97f
90:               sltiu        a0, t4, 1198
91:               sub          ra, s10, a6
                  blt          s11, t5, 94f
93:               bge          t6, s3, 96f
94:               addi         t2, t1, 644
                  slti         a1, s11, 1078
96:               add          a4, tp, t1
97:               xori         gp, a2, 654
                  auipc        ra, 500565
99:               and          a2, tp, s7
                  sltu         a7, t6, tp
                  blt          a5, s0, 119f
                  srli         sp, s3, 30
                  slt          a0, ra, s9
                  add          s5, ra, s6
                  nop
                  beq          t5, zero, 107f
107:              slt          s3, a4, s1
                  blt          t4, s3, 114f
                  sltiu        s6, s7, 982
                  bgeu         s2, s1, 118f
                  addi         t1, a6, -250
                  beq          t3, s8, 119f
                  srl          s1, zero, s7
114:              sltiu        s5, t6, -1605
                  bgeu         s8, s6, 118f
                  andi         gp, a7, -874
                  sub          t1, t6, s1
118:              andi         t5, s3, -872
119:              sub          t5, s0, s4
                  ori          zero, a4, -574
                  sltu         a4, a6, s9
                  bge          a3, s6, 140f
                  addi         s8, zero, -446
                  xori         t5, s10, 1676
                  beq          s6, t3, 145f
                  slt          t6, t1, t5
                  srli         a4, t6, 18
                  add          s5, sp, s10
                  bgeu         a1, t4, 133f
                  nop
                  addi         t6, tp, 584
                  ori          zero, a6, -709
133:              beq          gp, t3, 134f
134:              bne          s1, tp, 147f
                  andi         t2, t4, -1517
sub_5_3:          jal          s4, 16f
0:                jal          t1, 18f
1:                jal          ra, 7f
2:                jal          gp, 0b
3:                jal          t1, 9f
4:                jal          ra, 5f
5:                jal          ra, 17f
6:                jal          ra, 11f
7:                jal          ra, 12f
8:                jal          ra, 10f
9:                jal          ra, 14f
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          t1, 8b
13:               jal          ra, 1b
14:               jal          ra, 13b
15:               jal          a2, 6b
16:               jal          ra, 4b
17:               jal          ra, 3b
18:               slti         t1, s1, -1424
                  sll          s7, a0, a2
                  addi         s1, s4, -68
                  auipc        t5, 532418
                  sltiu        a0, s7, -1152
140:              srai         s9, a2, 25
                  blt          s8, s6, 151f
                  bge          t1, gp, 158f
                  srli         a0, t5, 9
                  andi         t1, s7, -692
145:              bltu         t4, s10, 151f
                  srli         a4, gp, 23
147:              or           s4, tp, s9
                  bge          s1, ra, 160f
                  bltu         s5, a7, 153f
                  bgeu         s10, s0, 170f
151:              nop
                  or           s9, s0, a7
153:              slli         a0, t2, 22
                  lui          gp, 841466
                  srli         t1, gp, 8
                  slti         a4, s4, 174
                  sra          tp, s2, t6
158:              sltiu        a7, s0, 1901
                  slti         a6, ra, -1771
160:              srl          a7, gp, s1
                  bgeu         t5, zero, 179f
                  bltu         zero, a3, 178f
                  andi         t5, s7, -1688
                  srli         t5, s11, 17
                  blt          a7, t3, 167f
                  bgeu         a7, zero, 172f
167:              addi         tp, t2, -122
                  and          tp, t2, a4
                  add          a3, s10, a1
170:              addi         s0, t0, -1049
                  srai         t5, t0, 16
172:              srl          tp, tp, s4
                  slli         s7, ra, 31
                  bne          s7, a7, 184f
                  bgeu         a0, s0, 177f
                  srai         a1, a4, 28
177:              slt          s11, s0, s0
178:              or           sp, sp, s3
179:              srli         s2, s8, 29
                  andi         s9, gp, 541
                  lui          t5, 50048
                  slti         t3, t6, 817
                  sltu         s6, s2, s3
184:              slli         s1, tp, 13
                  sll          a7, a2, t3
                  bgeu         t3, t2, 191f
                  nop
                  and          a7, t6, t0
                  andi         s4, gp, -989
                  sub          t1, s1, a0
191:              srli         a7, a4, 15
                  addi         t6, a7, 2031
                  or           t3, a2, sp
                  bgeu         a6, s3, 210f
                  auipc        s11, 597839
                  bne          tp, t2, 197f
197:              bge          a2, a7, 199f
                  srli         sp, s2, 1
199:              andi         s6, s10, -1719
                  bne          s1, zero, 210f
                  slt          t2, t0, ra
                  andi         t5, a2, -1120
                  lui          sp, 190278
                  slli         t5, s6, 23
                  slt          t2, s0, sp
                  auipc        s2, 71153
                  srai         t3, s0, 24
                  srai         sp, sp, 8
                  srai         t2, s8, 23
210:              xori         a6, s2, 715
                  lw           s4, 4(t0)
                  sub          s2, s1, sp
                  addi         t0, t0, 48
                  andi         tp, t5, -755
                  nop
                  add          t6, t4, a1
                  srli         s6, t0, 29
                  add          s8, s11, s7
                  sltu         s2, a6, a3
                  srl          a2, a3, s3
                  and          s3, s5, s11
322:              addi x11, x20, 0
322:              jalr x11, x11, 0
sub_4:            ori          s2, zero, 1626
                  addi         t0, t0, -44
                  sltu         s5, t0, a3
                  sw           s4, 4(t0)
                  nop
                  addi         zero, s7, 1023
                  lui          a3, 393311
                  lui          a2, 771286
                  slt          gp, s7, t1
                  sltu         tp, a3, ra
                  add          s5, ra, a0
                  andi         s0, a5, 1676
                  sll          s2, tp, a3
                  bne          a6, s2, sub_4_j8 #branch to jump instr
                  add          s6, s8, s5
                  slti         s2, s5, 787
sub_4_j8:         jal          s4, sub_5 #jump sub_4 -> sub_5
                  bne          s8, t0, 1f
1:                bgeu         zero, t1, 9f
                  bltu         s9, t0, 8f
                  nop
                  nop
                  slti         s5, t1, 987
                  sltiu        tp, t2, 1339
                  auipc        s0, 496559
8:                xor          sp, t4, a5
9:                slt          s1, s6, a1
                  slli         tp, s1, 23
                  lw           s4, 4(t0)
                  sltiu        tp, a3, -460
                  slt          t3, t4, a1
                  addi         t0, t0, 44
                  ori          s7, s4, -780
33:               addi x25, x20, 0
33:               jalr x25, x25, 0
sub_1:            lui          a0, 916692
                  bltu         s9, a7, sub_1_stack_p
sub_1_stack_p:    addi         t0, t0, -24
                  sw           s4, 4(t0)
                  or           sp, s8, s8
                  slt          t6, a2, t3
sub_1_4:          jal          s4, 3f
0:                jal          s5, 12f
1:                jal          ra, 5f
2:                jal          s6, 7f
3:                jal          s7, 4f
4:                jal          ra, 8f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          ra, 10f
9:                jal          gp, 6b
10:               jal          ra, 9b
11:               jal          s0, 1b
12:               nop
sub_1_17:         jal          s4, 6f
0:                jal          ra, 1f
1:                jal          ra, 15f
2:                jal          t1, 7f
3:                jal          ra, 9f
4:                jal          tp, 16f
5:                jal          t1, 11f
6:                jal          t1, 10f
7:                jal          ra, 14f
8:                jal          gp, 13f
9:                jal          t1, 12f
10:               jal          s7, 3b
11:               jal          tp, 0b
12:               jal          t1, 5b
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          s6, 2b
16:               xori         s8, s7, -808
sub_1_12:         jal          s4, 19f
0:                jal          t1, 18f
1:                jal          ra, 24f
2:                jal          ra, 0b
3:                jal          ra, 22f
4:                jal          t1, 26f
5:                jal          ra, 9f
6:                jal          ra, 8f
7:                jal          ra, 1b
8:                jal          s8, 5b
9:                jal          ra, 11f
10:               jal          s5, 13f
11:               jal          ra, 20f
12:               jal          s0, 10b
13:               jal          ra, 21f
14:               jal          ra, 4b
15:               jal          t1, 14b
16:               jal          ra, 7b
17:               jal          ra, 2b
18:               jal          t1, 12b
19:               jal          ra, 16b
20:               jal          ra, 17b
21:               jal          ra, 27f
22:               jal          ra, 23f
23:               jal          gp, 15b
24:               jal          ra, 25f
25:               jal          ra, 3b
26:               jal          ra, 6b
27:               slti         t1, s6, 1355
sub_1_9:          jal          s4, 1f
0:                jal          ra, 5f
1:                jal          ra, 18f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          a4, 15f
5:                jal          ra, 16f
6:                jal          s7, 3b
7:                jal          tp, 0b
8:                jal          ra, 20f
9:                jal          ra, 21f
10:               jal          a6, 19f
11:               jal          ra, 9b
12:               jal          gp, 4b
13:               jal          ra, 8b
14:               jal          a6, 13b
15:               jal          a7, 11b
16:               jal          ra, 12b
17:               jal          ra, 14b
18:               jal          ra, 10b
19:               jal          ra, 17b
20:               jal          t1, 6b
21:               lui          tp, 412141
sub_1_8:          jal          s4, 18f
0:                jal          t3, 19f
1:                jal          ra, 17f
2:                jal          ra, 15f
3:                jal          sp, 2b
4:                jal          t1, 14f
5:                jal          ra, 3b
6:                jal          t1, 4b
7:                jal          a7, 0b
8:                jal          ra, 10f
9:                jal          ra, 5b
10:               jal          s0, 16f
11:               jal          gp, 1b
12:               jal          ra, 8b
13:               jal          t5, 12b
14:               jal          ra, 13b
15:               jal          ra, 11b
16:               jal          ra, 20f
17:               jal          ra, 6b
18:               jal          ra, 7b
19:               jal          t1, 9b
20:               srai         s5, t1, 14
sub_1_18:         jal          s4, 2f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          ra, 22f
3:                jal          t1, 24f
4:                jal          t1, 12f
5:                jal          ra, 25f
6:                jal          a2, 1b
7:                jal          gp, 27f
8:                jal          t1, 7b
9:                jal          ra, 5b
10:               jal          ra, 20f
11:               jal          ra, 17f
12:               jal          ra, 13f
13:               jal          t1, 11b
14:               jal          ra, 16f
15:               jal          tp, 21f
16:               jal          ra, 6b
17:               jal          ra, 3b
18:               jal          tp, 14b
19:               jal          a3, 0b
20:               jal          ra, 15b
21:               jal          ra, 23f
22:               jal          t1, 9b
23:               jal          ra, 18b
24:               jal          s5, 26f
25:               jal          ra, 4b
26:               jal          ra, 19b
27:               nop
sub_1_3:          jal          s4, 8f
0:                jal          t1, 13f
1:                jal          gp, 15f
2:                jal          ra, 6f
3:                jal          ra, 22f
4:                jal          a7, 11f
5:                jal          ra, 24f
6:                jal          ra, 23f
7:                jal          ra, 1b
8:                jal          ra, 16f
9:                jal          ra, 5b
10:               jal          t1, 7b
11:               jal          ra, 14f
12:               jal          ra, 10b
13:               jal          gp, 12b
14:               jal          t1, 19f
15:               jal          t1, 4b
16:               jal          ra, 18f
17:               jal          ra, 20f
18:               jal          ra, 17b
19:               jal          ra, 2b
20:               jal          ra, 0b
21:               jal          t1, 9b
22:               jal          ra, 21b
23:               jal          a3, 3b
24:               nop
sub_1_5:          jal          s4, 11f
0:                jal          ra, 13f
1:                jal          a0, 3f
2:                jal          t1, 0b
3:                jal          ra, 12f
4:                jal          ra, 14f
5:                jal          t1, 16f
6:                jal          t1, 7f
7:                jal          ra, 17f
8:                jal          ra, 9f
9:                jal          t1, 5b
10:               jal          ra, 4b
11:               jal          t1, 1b
12:               jal          ra, 10b
13:               jal          ra, 8b
14:               jal          ra, 2b
15:               jal          ra, 6b
16:               jal          gp, 15b
17:               slt          a1, a6, t4
sub_1_6:          jal          s4, 0f
0:                jal          s5, 1f
1:                jal          ra, 3f
2:                jal          t5, 6f
3:                jal          ra, 4f
4:                jal          s6, 9f
5:                jal          t1, 11f
6:                jal          ra, 7f
7:                jal          ra, 8f
8:                jal          sp, 5b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               srl          ra, s3, s7
sub_1_19:         jal          s4, 2f
0:                jal          a5, 7f
1:                jal          ra, 3f
2:                jal          t1, 0b
3:                jal          ra, 4f
4:                jal          t1, 6f
5:                jal          s11, 1b
6:                jal          a0, 10f
7:                jal          tp, 5b
8:                jal          ra, 11f
9:                jal          t1, 8b
10:               jal          ra, 9b
11:               srl          ra, a0, s3
sub_1_14:         jal          s4, 7f
0:                jal          t1, 9f
1:                jal          t1, 0b
2:                jal          sp, 5f
3:                jal          s6, 8f
4:                jal          sp, 1b
5:                jal          s4, 4b
6:                jal          t1, 14f
7:                jal          s6, 11f
8:                jal          t1, 2b
9:                jal          t1, 13f
10:               jal          ra, 12f
11:               jal          t1, 3b
12:               jal          sp, 6b
13:               jal          tp, 10b
14:               or           sp, a4, s8
sub_1_0:          jal          s4, 9f
0:                jal          t3, 25f
1:                jal          ra, 28f
2:                jal          t5, 14f
3:                jal          ra, 2b
4:                jal          a6, 6f
5:                jal          gp, 3b
6:                jal          s7, 1b
7:                jal          t1, 21f
8:                jal          t1, 16f
9:                jal          s7, 20f
10:               jal          ra, 13f
11:               jal          a3, 5b
12:               jal          ra, 18f
13:               jal          ra, 11b
14:               jal          ra, 15f
15:               jal          t1, 19f
16:               jal          t3, 17f
17:               jal          ra, 0b
18:               jal          s2, 26f
19:               jal          ra, 12b
20:               jal          t1, 27f
21:               jal          ra, 22f
22:               jal          ra, 8b
23:               jal          ra, 24f
24:               jal          ra, 7b
25:               jal          sp, 10b
26:               jal          ra, 4b
27:               jal          ra, 23b
28:               xori         gp, zero, -1246
sub_1_16:         jal          s4, 18f
0:                jal          ra, 26f
1:                jal          t1, 17f
2:                jal          ra, 3f
3:                jal          t3, 5f
4:                jal          a3, 25f
5:                jal          ra, 1b
6:                jal          ra, 4b
7:                jal          sp, 0b
8:                jal          t1, 16f
9:                jal          ra, 11f
10:               jal          t2, 22f
11:               jal          ra, 7b
12:               jal          ra, 21f
13:               jal          ra, 14f
14:               jal          s9, 27f
15:               jal          t1, 12b
16:               jal          a5, 2b
17:               jal          ra, 6b
18:               jal          ra, 15b
19:               jal          tp, 9b
20:               jal          tp, 10b
21:               jal          ra, 20b
22:               jal          gp, 19b
23:               jal          t1, 24f
24:               jal          t1, 13b
25:               jal          ra, 23b
26:               jal          ra, 8b
27:               slli         s6, ra, 19
sub_1_10:         jal          s4, 20f
0:                jal          t1, 24f
1:                jal          t1, 22f
2:                jal          ra, 16f
3:                jal          t1, 6f
4:                jal          ra, 3b
5:                jal          s7, 17f
6:                jal          ra, 18f
7:                jal          ra, 15f
8:                jal          t1, 23f
9:                jal          ra, 5b
10:               jal          t5, 21f
11:               jal          ra, 26f
12:               jal          ra, 8b
13:               jal          t1, 0b
14:               jal          ra, 7b
15:               jal          t1, 1b
16:               jal          ra, 11b
17:               jal          a2, 25f
18:               jal          ra, 10b
19:               jal          a4, 13b
20:               jal          ra, 4b
21:               jal          sp, 9b
22:               jal          ra, 19b
23:               jal          ra, 2b
24:               jal          s7, 12b
25:               jal          ra, 14b
26:               sltu         s2, s1, a7
sub_1_7:          jal          s4, 24f
0:                jal          ra, 12f
1:                jal          t1, 15f
2:                jal          s4, 21f
3:                jal          t6, 19f
4:                jal          ra, 1b
5:                jal          a6, 17f
6:                jal          t1, 9f
7:                jal          ra, 20f
8:                jal          ra, 22f
9:                jal          a3, 0b
10:               jal          t1, 7b
11:               jal          ra, 13f
12:               jal          t1, 5b
13:               jal          t1, 25f
14:               jal          tp, 3b
15:               jal          tp, 23f
16:               jal          ra, 6b
17:               jal          ra, 11b
18:               jal          tp, 8b
19:               jal          ra, 10b
20:               jal          ra, 18b
21:               jal          sp, 14b
22:               jal          ra, 16b
23:               jal          ra, 2b
24:               jal          ra, 4b
25:               andi         s5, s11, 372
sub_1_11:         jal          s4, 2f
0:                jal          a4, 3f
1:                jal          t1, 4f
2:                jal          a1, 16f
3:                jal          ra, 10f
4:                jal          s6, 12f
5:                jal          tp, 7f
6:                jal          sp, 8f
7:                jal          t5, 14f
8:                jal          ra, 5b
9:                jal          s7, 13f
10:               jal          s9, 15f
11:               jal          ra, 18f
12:               jal          t1, 0b
13:               jal          ra, 17f
14:               jal          t1, 1b
15:               jal          sp, 11b
16:               jal          ra, 9b
17:               jal          ra, 6b
18:               and          tp, s5, a7
                  nop
                  bge          tp, ra, 3f
                  auipc        t1, 856193
3:                sltiu        tp, t2, -45
                  xor          s1, t0, a5
                  xori         a6, t2, 287
                  slli         s0, zero, 2
                  sltu         s8, s10, s4
                  bge          s6, ra, 12f
                  xori         t3, t0, -797
                  bgeu         t0, t6, 14f
                  xor          s2, zero, sp
12:               slli         t3, s5, 2
                  bne          s1, s0, 19f
14:               sra          a6, t6, s9
                  bge          zero, a3, 25f
                  nop
                  sra          a2, a7, s7
                  sltu         s1, a7, s8
19:               sub          sp, a6, s10
                  and          a0, a4, s3
                  srai         a3, a5, 10
                  srli         s5, sp, 2
                  slli         a7, zero, 5
                  sra          t6, t2, t2
25:               or           a2, t1, t4
                  srl          gp, a5, s6
                  blt          t3, a4, 33f
                  srl          a5, t6, t2
                  sub          t5, sp, a4
                  slti         a6, sp, 0
                  sltu         a5, a5, s1
                  xori         s3, a6, 148
33:               srl          a1, s2, s4
                  bne          s3, a5, 47f
                  add          a5, s3, a0
                  bne          a7, ra, 56f
                  lui          s4, 486056
                  sltu         a1, a7, s5
                  sra          a1, s8, tp
                  and          s3, a2, a2
                  slti         s0, s9, -1582
                  srli         a4, s0, 31
                  or           s5, t3, a3
                  slli         s9, a1, 31
                  or           s5, t5, s2
                  lui          t5, 945345
47:               srai         a0, a2, 21
                  slli         sp, zero, 15
                  srai         s6, s7, 1
                  bgeu         s11, a3, 67f
                  sll          s0, s0, s9
                  bgeu         tp, t2, 68f
                  lui          t1, 944782
                  addi         t5, t2, 108
                  sub          a7, a0, s7
56:               bge          a4, ra, 76f
                  slli         s4, a0, 6
                  beq          t1, a0, 69f
                  addi         a7, s8, 1639
                  nop
                  addi         s1, gp, 1980
                  xor          a4, s2, s9
                  bne          a5, tp, 78f
                  slti         t1, s3, 2013
                  sll          s7, s10, gp
                  sltu         gp, s0, a3
67:               lui          zero, 249993
68:               bltu         s10, a0, 83f
69:               nop
                  and          s4, s9, t5
                  beq          s9, t0, 84f
                  bge          gp, t2, 77f
                  slli         t3, tp, 12
                  lui          s2, 814712
                  slti         gp, gp, -33
76:               sltiu        a0, s7, 548
77:               sltiu        a6, t3, -1295
78:               sll          a0, s7, a5
                  or           s4, a3, zero
                  addi         a4, t4, -595
                  bltu         s5, t5, 88f
                  srli         a3, a5, 24
83:               blt          t4, gp, 92f
84:               ori          a2, t1, 1218
                  slti         a1, a6, 1977
                  bltu         t5, sp, 94f
                  slli         t5, s3, 4
88:               addi         s9, t5, 602
                  slti         a6, a4, -685
                  addi         zero, ra, 1042
                  blt          s6, s2, 96f
92:               sra          s9, t4, s3
                  add          a6, t6, s2
94:               bne          s8, a3, 98f
                  slti         s4, s2, -204
96:               sltu         tp, t4, a2
                  ori          s4, a3, -1748
98:               and          s0, s5, s2
                  bltu         t2, t0, 116f
                  xor          s1, a5, t5
                  slt          zero, s4, tp
                  blt          s7, a5, 119f
                  srai         s11, tp, 14
                  addi         a4, t2, -496
                  srai         gp, t0, 0
                  xori         s11, a6, -708
                  blt          a7, t1, 113f
                  bne          t5, s11, 118f
                  slt          gp, s10, s3
                  slli         s3, s9, 20
                  auipc        a5, 193989
                  xor          s11, a1, s6
113:              srai         s4, a4, 25
                  ori          a4, t4, -187
                  addi         a2, a4, -1718
116:              slti         t5, s7, 1665
                  xor          s8, sp, ra
118:              beq          zero, t2, 129f
119:              xor          s3, s11, s5
                  slt          s3, s8, t0
                  srai         t6, a4, 7
                  lui          ra, 974229
                  srl          a1, s9, t0
                  xori         a3, s7, -318
                  bge          s5, a5, 139f
                  xori         a0, s0, 772
                  beq          s3, t0, 137f
                  ori          gp, t1, -1653
129:              slt          s9, s9, s4
                  sub          s2, zero, zero
                  slli         a4, a3, 18
                  or           a6, t0, s10
                  sltu         a6, s7, t4
                  sltiu        a1, s5, -352
                  auipc        a2, 892652
                  sra          sp, t6, a6
137:              lui          a3, 42616
                  add          a7, s6, t4
139:              add          s9, a5, a0
                  sltiu        a7, s6, 98
                  sra          s1, s4, s5
                  bge          a4, s11, 154f
                  sltu         a5, t1, a2
                  xor          tp, s8, s6
                  slti         tp, s1, 1790
                  sub          a1, sp, s0
                  or           t5, s7, s0
                  or           t6, s0, gp
                  sltiu        gp, a3, -1394
                  slti         a1, a0, 870
                  srl          s2, a4, a5
                  srl          a0, a0, s5
                  addi         a4, t1, -1664
154:              nop
                  or           s7, t3, s7
                  xori         t2, ra, 552
                  bgeu         t1, zero, 167f
                  slli         t5, t2, 28
                  bgeu         t1, t4, 164f
                  slti         t2, t0, 458
                  andi         sp, t0, 2023
sub_1_20:         jal          s4, 1f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          s6, 10f
3:                jal          ra, 5f
4:                jal          ra, 12f
5:                jal          ra, 4b
6:                jal          s9, 11f
7:                jal          ra, 8f
8:                jal          s5, 0b
9:                jal          ra, 6b
10:               jal          t1, 7b
11:               jal          sp, 2b
12:               sub          s3, t3, t4
                  srli         s9, a3, 2
                  xori         s2, t0, -512
164:              andi         s2, t2, 987
                  blt          a2, t2, 181f
                  xor          s9, s11, ra
167:              xor          s3, tp, t1
                  xor          s0, s2, tp
                  ori          gp, t2, 1863
                  sltu         t6, a0, gp
                  slli         tp, s3, 12
                  slti         t5, a2, 148
                  auipc        gp, 45847
                  sub          s5, t0, gp
                  or           s1, t4, a5
                  slli         a0, a1, 13
                  slt          a1, s9, ra
                  lui          a7, 431510
                  slt          s6, t3, t0
                  bge          zero, s9, 191f
181:              sll          a1, t4, s2
                  add          s11, a0, a2
                  bne          s4, s9, 187f
                  sra          t5, a1, t5
                  slt          a6, a4, a0
                  sltu         sp, a1, a2
187:              srli         a4, s3, 0
                  bge          t6, tp, 202f
                  sltu         s8, a0, s10
                  srl          gp, t5, s6
191:              addi         s7, s11, 440
                  add          t2, s11, t1
                  ori          a1, tp, 1701
                  srai         tp, t2, 21
                  sll          t2, s5, a7
                  and          a6, t4, s1
                  nop
                  srli         s2, zero, 23
                  lui          a6, 511193
                  auipc        ra, 287524
                  lui          a0, 689814
202:              slt          a7, t0, a1
                  andi         s4, s5, -1365
                  nop
                  xori         s9, a2, 160
                  beq          a7, a6, 215f
                  bgeu         s4, a3, 211f
                  sub          tp, t4, s10
                  slti         t3, s9, 880
                  and          s6, s8, a4
211:              bge          t4, a4, 226f
                  slt          a2, s4, a7
                  lui          sp, 122698
                  xori         s1, t4, -1539
215:              bltu         ra, t1, 235f
                  lui          t3, 397482
                  blt          t6, t4, 223f
                  slt          s6, a0, t3
                  srli         a4, sp, 21
                  ori          a6, s0, -291
                  nop
                  srl          s8, s1, t5
223:              xor          s5, s5, s0
                  beq          s8, sp, 234f
                  slti         s3, gp, -1847
226:              or           a3, t6, a6
                  slti         s3, zero, -1845
                  auipc        s0, 779553
                  srai         a6, a4, 18
                  bne          s1, s9, 234f
                  ori          s5, s11, 1834
                  srl          s8, a3, s11
                  nop
234:              and          a1, a1, t5
235:              lui          zero, 11404
                  slti         ra, a7, -463
                  nop
                  bge          sp, t6, 253f
                  blt          a3, a3, 245f
                  sltiu        a4, s7, -851
                  ori          s7, s4, -687
                  slti         s7, zero, 1582
                  xor          s9, t3, s7
                  srli         s7, s0, 8
245:              sll          a7, s4, gp
                  xor          a4, s3, zero
                  nop
                  sltiu        a4, s4, 233
                  slli         ra, a4, 31
                  srli         t5, s3, 2
                  sltiu        a3, t4, 1287
                  beq          tp, s6, 269f
253:              nop
                  sll          gp, s9, ra
                  or           a3, t0, a1
                  andi         t3, s5, -634
                  sltiu        t6, s0, 640
                  sra          s4, t2, a7
                  lui          t6, 710088
                  bge          tp, s7, 271f
                  ori          t3, t3, -1744
                  sub          zero, s7, sp
                  beq          a1, a0, 283f
                  sub          s4, a4, a4
                  slti         s4, t1, 384
                  srli         a5, s7, 9
                  bgeu         a7, a5, 274f
                  beq          a0, s2, 274f
269:              srli         s4, a1, 22
                  and          ra, sp, t4
271:              sll          s8, s1, a3
                  sltu         s0, s3, a7
                  bltu         s10, s10, 290f
274:              srli         a2, sp, 6
                  ori          a6, gp, -1131
                  beq          t0, t4, 293f
                  andi         s6, t4, 2011
                  or           s7, sp, s5
                  slt          a0, t0, tp
                  bne          t5, s10, 285f
                  bltu         s7, a0, 289f
                  xor          s0, s11, tp
283:              sll          a0, s0, t6
                  blt          a7, t3, 286f
285:              and          t3, s2, a6
286:              add          gp, s8, t2
                  or           s1, s9, a1
                  ori          t5, a1, 1269
289:              srl          s11, a3, t5
290:              nop
                  srli         gp, t6, 10
                  sub          a3, s6, s3
293:              or           a4, a2, t0
                  sra          a3, ra, s3
                  beq          s3, s11, 305f
                  ori          zero, a7, -1424
                  bne          s11, s0, 310f
                  ori          t5, a5, 907
                  ori          s11, s10, 1719
                  slti         s5, s1, 1287
                  and          s5, s0, t3
                  bltu         a6, t3, 314f
                  bge          a2, tp, 313f
                  beq          ra, s5, 317f
305:              sltiu        t6, t1, 890
                  addi         tp, a1, -1721
                  sltiu        t5, s5, 818
                  srai         s8, s9, 19
                  bgeu         sp, t5, 319f
310:              lui          a2, 321777
                  slli         a7, t5, 0
                  sub          zero, sp, s1
313:              bge          t6, s0, 318f
314:              sra          zero, t3, a1
                  srai         t6, a7, 10
                  andi         s5, s5, -439
317:              or           ra, t5, a7
318:              lui          sp, 365413
319:              bge          s1, a3, 325f
                  srai         a1, t1, 9
                  sra          s9, sp, a5
                  slt          t2, s5, t5
                  sub          a2, s2, ra
                  blt          t0, t6, 334f
325:              xori         a3, t0, 590
                  sltiu        s2, s10, 514
                  slt          sp, t4, a2
                  sltiu        t1, s0, -376
                  sra          s0, s0, ra
                  xor          t3, t6, t1
                  addi         a3, s6, -455
                  bne          a7, a3, 343f
                  xori         a7, a7, 743
334:              or           ra, t4, s1
                  add          t3, t2, s8
                  blt          s5, s7, 351f
                  nop
                  addi         tp, a2, 201
                  nop
                  sra          s8, s8, s1
                  slli         s7, ra, 1
                  andi         a5, s3, -1098
343:              sltu         zero, s7, t4
                  srli         s6, gp, 7
                  sltu         s9, t0, t6
                  xor          a5, s6, a7
                  beq          a4, a1, 358f
                  xor          s1, s5, gp
                  slt          a3, s1, a2
                  add          s1, s3, s2
351:              sll          a4, s7, s11
                  srli         gp, a3, 9
                  slti         s6, a0, 1817
                  slti         t5, t2, 676
                  bltu         a4, a2, 369f
                  andi         a0, t5, -1030
                  sll          a5, zero, t5
358:              sra          gp, a4, ra
                  sltiu        gp, s2, -896
                  srl          sp, s10, t4
                  sltiu        a3, s5, 1942
                  xori         a7, s0, 903
                  sll          a7, sp, s9
                  auipc        t2, 850156
                  auipc        s8, 160660
                  add          a7, t5, s8
                  xor          a7, t5, s9
                  xori         s7, s8, -1236
369:              sra          s0, s8, s1
                  srli         a0, t0, 24
                  beq          t3, t2, 381f
                  bge          s10, s11, 384f
                  beq          t5, s7, 382f
                  bne          t3, a4, 378f
                  auipc        s5, 667478
                  slli         a7, s6, 28
                  bne          a7, gp, 392f
378:              bne          a3, a3, 398f
                  lui          a6, 655595
                  ori          s6, a1, 1098
381:              slt          s0, a4, sp
382:              srl          a4, t3, s4
                  addi         zero, t2, 187
384:              blt          gp, t6, 390f
                  beq          a0, t2, 395f
                  addi         t2, zero, -1035
                  slt          s2, s1, s3
                  bge          tp, t5, 392f
                  slti         s4, s8, -903
390:              slti         a0, a5, 125
                  lui          s2, 335819
392:              srli         t6, gp, 30
                  sra          s9, t4, s11
                  bltu         s4, s9, 404f
395:              addi         a3, ra, 18
                  and          s0, s10, s7
                  add          s9, s1, a0
398:              bltu         zero, s1, 406f
                  bge          sp, s8, 405f
                  bne          s4, a4, 417f
                  xor          t6, a2, t4
                  xori         zero, a2, 71
                  sub          zero, s11, s7
404:              addi         a1, zero, 1546
405:              sltu         s9, a2, tp
406:              blt          t6, tp, 423f
                  or           sp, t2, t5
                  slli         s7, ra, 1
                  sll          a7, s10, a3
                  andi         s2, gp, 1993
                  bne          zero, t0, 424f
                  srai         a1, s11, 2
                  srai         s3, s9, 2
                  xori         s1, s0, 1960
                  beq          s10, a6, 428f
                  or           a3, t6, ra
417:              auipc        s5, 471335
                  blt          a5, t4, 423f
                  or           a2, gp, s4
                  ori          a6, t3, 975
                  ori          t3, s7, 2039
                  ori          s1, a6, 514
423:              sll          a2, t4, s11
424:              and          s5, a3, s5
                  auipc        a6, 1046606
                  nop
                  sub          t6, t0, s10
428:              or           s6, t5, t3
                  addi         s4, t3, -1566
                  srai         a5, s2, 1
                  or           ra, a4, a7
                  or           a7, t2, s6
                  nop
                  srli         s0, ra, 5
                  xori         a1, a4, 1039
                  and          gp, zero, s1
                  addi         a7, a5, 1062
                  sltu         t3, t4, s11
                  srli         a5, t5, 21
                  bgeu         t5, s1, 456f
                  slt          s0, s7, s1
                  xori         a7, t0, 1858
                  sll          s3, s11, gp
                  slti         t6, s9, 39
                  ori          s11, t4, 924
                  add          s0, s0, t5
                  xor          a5, t1, s10
                  or           a2, s9, t2
                  slti         a3, s2, 1407
                  auipc        s5, 957800
                  slt          s4, s9, s9
                  bgeu         zero, gp, 456f
                  bne          s9, a2, 455f
                  bne          s11, ra, 461f
455:              auipc        t6, 571549
456:              srli         t1, a3, 2
                  slli         tp, s11, 21
                  slti         t2, s11, -1726
                  sll          a4, s4, t4
                  srl          a4, a1, s6
461:              sltu         t1, a1, s7
                  srli         a2, a2, 21
                  slli         s8, s0, 31
                  sltiu        a6, a3, 1060
                  and          a2, a3, s3
                  lui          a1, 347071
                  addi         s2, s11, 1435
                  blt          s5, a7, 485f
                  sltiu        a2, a2, 1477
                  addi         a6, s5, -1802
                  bne          s10, sp, 491f
                  blt          s8, t2, 480f
                  sll          gp, a3, s6
                  nop
                  beq          sp, s2, 479f
                  slti         a0, a5, 1365
                  sltu         s6, t1, t6
                  srl          gp, s8, a4
479:              sra          a1, s11, t2
480:              bltu         s3, s4, 487f
                  bne          tp, tp, 498f
                  slli         s0, s7, 14
                  bltu         s11, s0, 495f
                  nop
485:              or           s5, t3, s1
                  addi         s1, s6, 546
487:              andi         s0, s2, -711
                  beq          ra, a5, 501f
                  srai         t6, ra, 21
                  addi         s9, s6, 722
491:              beq          a3, a4, 511f
                  slli         gp, s8, 20
                  bge          sp, s11, 509f
                  sltu         s2, a2, s5
495:              sra          s7, s10, s2
sub_1_15:         jal          s4, 20f
0:                jal          t1, 8f
1:                jal          s3, 9f
2:                jal          s3, 23f
3:                jal          ra, 13f
4:                jal          t1, 21f
5:                jal          ra, 11f
6:                jal          t5, 29f
7:                jal          s5, 3b
8:                jal          t1, 30f
9:                jal          ra, 24f
10:               jal          ra, 7b
11:               jal          t2, 19f
12:               jal          t3, 6b
13:               jal          ra, 12b
14:               jal          ra, 1b
15:               jal          t1, 10b
16:               jal          gp, 26f
17:               jal          ra, 16b
18:               jal          ra, 22f
19:               jal          ra, 15b
20:               jal          t1, 4b
21:               jal          s4, 28f
22:               jal          t1, 2b
23:               jal          ra, 17b
24:               jal          ra, 27f
25:               jal          ra, 14b
26:               jal          ra, 5b
27:               jal          tp, 0b
28:               jal          t1, 18b
29:               jal          t2, 25b
30:               ori          s1, s5, 208
                  slt          s0, a3, s8
                  or           s11, t1, sp
498:              sll          t2, gp, zero
                  xori         s3, s2, 101
                  bgeu         t2, zero, 515f
501:              auipc        s2, 521066
                  bne          s1, tp, 507f
                  auipc        s0, 407522
                  sra          a3, a6, sp
                  bne          s5, t4, 511f
                  xori         s8, gp, 283
507:              ori          s3, sp, 923
                  bgeu         s0, s8, 510f
509:              slti         s3, t0, -141
510:              xor          sp, s4, s8
511:              srai         ra, a5, 21
                  slt          a2, s1, a0
                  add          t5, ra, t6
                  nop
515:              slli         t2, gp, 24
                  and          gp, a6, t1
                  nop
                  xor          s11, t2, s7
                  sltiu        a2, a4, -1590
                  blt          a5, a4, 531f
                  sra          t2, t5, t5
                  ori          a3, t0, 1583
                  blt          a6, s5, 529f
                  sll          t2, a4, s4
                  srl          ra, s1, t0
                  beq          s9, a3, 531f
                  sll          s3, a1, s11
                  bgeu         t1, t0, 543f
529:              add          s0, ra, a4
                  bge          t5, t1, 540f
531:              slti         a6, s0, 1738
                  sll          t3, s10, a0
                  sra          a5, a3, s6
                  and          a4, t4, tp
                  beq          s4, a6, 555f
                  slti         s11, a3, 133
                  srai         s8, s3, 27
                  ori          s9, t1, 1810
                  bltu         a2, a0, 556f
540:              or           s3, t4, a0
                  sltiu        s11, a1, -724
                  srl          a3, tp, a3
543:              srli         ra, t2, 8
                  sub          a6, s9, s0
                  beq          s4, a2, 555f
                  srli         s1, a1, 28
                  beq          s11, s6, 557f
                  slti         a0, s10, -1095
                  sub          a0, sp, s8
                  slt          s2, gp, a4
                  sra          s4, s11, s11
                  add          a6, t0, a6
                  andi         tp, zero, 124
                  bltu         a0, s5, 568f
555:              ori          a0, s8, -1025
556:              sll          t6, a1, s0
557:              beq          zero, s11, 567f
                  sub          a1, a6, s8
                  slt          a0, t5, s7
                  xori         tp, s7, -1621
                  srl          s3, s10, s11
                  sra          t2, s2, sp
                  bltu         s2, t1, 567f
                  srl          s8, s8, a2
                  sltiu        gp, s10, 462
                  srl          a6, t4, t6
567:              bgeu         a4, a7, 580f
568:              blt          s5, a3, 572f
                  andi         s11, a6, -1744
                  lui          s8, 439491
                  nop
572:              bltu         s7, tp, 581f
                  blt          a7, tp, 584f
                  and          s1, s8, s10
                  beq          s1, a2, 581f
                  xori         gp, a6, -1530
                  sltiu        s4, s2, -84
                  slti         s2, a2, -1108
                  and          t3, s10, s6
580:              slli         t6, a0, 2
581:              sll          a7, ra, s10
                  or           s5, s0, a6
                  sll          s4, gp, s5
584:              slt          a4, s9, tp
                  bltu         s8, s11, 602f
                  auipc        a1, 572429
                  and          s1, s9, t4
                  beq          s10, t4, 605f
                  sra          s1, s0, a0
                  sll          s6, s9, a4
                  addi         s2, s3, -726
                  sub          a3, a3, a6
                  lui          tp, 155828
                  slti         gp, t2, 1806
                  slti         gp, s6, 1647
                  slti         a0, t6, -1397
                  sub          a4, s1, s9
                  srl          s3, a3, s7
                  slti         zero, s6, -371
                  or           t5, s8, t1
                  slli         s0, s5, 7
602:              sltu         t6, a6, s11
                  slli         a0, a5, 11
                  beq          a7, sp, 616f
605:              xori         a3, a2, 357
                  bne          t5, t6, 612f
                  sltiu        tp, ra, 715
                  srl          a2, s9, s1
                  beq          a4, s6, 615f
                  srai         sp, s11, 26
                  ori          a3, a2, 1181
612:              sltiu        s11, s9, 1000
                  andi         a0, tp, 258
                  slli         a6, t6, 27
615:              slli         a1, s0, 19
616:              lui          s7, 16795
                  auipc        a6, 23785
                  sll          sp, a2, s7
                  sra          s9, a7, s0
                  bgeu         t4, sp, 629f
                  sltiu        a6, s0, 222
                  srai         zero, t3, 29
                  slti         a4, a4, -775
                  or           sp, a7, s1
                  slli         t6, s8, 11
                  sltu         s5, a4, a0
                  add          s1, a2, s8
                  and          t3, s8, a4
629:              slli         zero, t5, 11
                  sltu         a5, t4, t4
                  srli         s11, s7, 12
                  add          s6, s3, t3
                  srai         a6, a2, 7
                  addi         s8, t4, -625
                  add          zero, a6, s1
                  srli         s1, s3, 7
                  xor          tp, s0, t5
                  sra          a6, s6, s6
                  or           a0, s7, gp
                  nop
                  addi         t3, t0, -791
                  sub          ra, s6, a7
                  addi         gp, s8, 510
                  bgeu         s11, s9, 661f
                  bltu         t2, t1, 660f
                  srl          s5, s6, a0
                  srl          s1, ra, zero
                  srl          a7, a0, ra
                  lui          a4, 953389
                  xor          a5, s7, s11
                  srli         s5, zero, 5
                  nop
                  blt          t2, s7, 664f
                  slt          a6, t0, a4
                  sll          a0, gp, s2
                  xori         a6, s5, 681
                  bge          tp, s9, 667f
                  lui          s4, 589842
                  beq          s3, t4, 669f
660:              bltu         a1, t3, 673f
661:              slt          s3, s3, sp
                  xori         tp, a6, 392
                  sltiu        a0, a5, 955
664:              srli         s1, t5, 1
                  srl          a6, t6, a2
                  sll          a0, tp, s2
667:              bge          s9, a5, 671f
                  sltiu        s4, t5, -616
669:              srli         ra, sp, 31
                  srai         s3, zero, 16
671:              ori          a2, s8, 1273
                  slt          s11, s6, a6
673:              sll          s5, s6, a4
                  sltiu        ra, a6, -890
                  ori          a2, a3, -1896
                  srl          a4, ra, gp
                  bge          t3, t4, 694f
                  xori         a5, sp, 1212
                  nop
                  sub          t2, a2, t6
                  srl          a4, s9, zero
                  bne          a6, s1, 686f
                  bne          gp, s1, 703f
                  ori          a4, s7, -397
                  andi         s3, s3, 1628
686:              srai         zero, s0, 4
                  bne          s8, t5, 691f
                  ori          tp, t0, -1865
                  xor          gp, a7, s4
                  srli         a2, s9, 8
691:              nop
                  beq          t0, a4, 702f
                  nop
694:              sll          s5, ra, t1
                  beq          s10, s7, 708f
                  sub          a1, s8, tp
                  bne          a6, a0, 699f
                  slti         zero, s2, -1227
699:              nop
                  and          s2, ra, t1
                  srli         s2, s3, 10
702:              slt          s6, sp, a6
703:              bltu         zero, t5, 713f
                  sll          tp, t1, t4
                  or           s4, t6, s10
                  slti         s5, s9, 1670
                  sra          s1, a4, tp
708:              beq          tp, gp, 713f
                  lui          s5, 680563
                  xor          t1, t6, s0
                  beq          s10, s11, 725f
                  slt          a1, t3, s0
713:              or           s8, s0, s7
                  auipc        s3, 2513
                  sub          a3, s11, s9
                  bgeu         a2, s7, 724f
                  and          s6, s11, ra
                  sub          a5, sp, s6
                  bltu         s0, a1, 724f
                  beq          t3, t4, 727f
                  auipc        a0, 1044231
                  xori         ra, a7, 1438
                  sll          s0, s7, a7
724:              ori          s3, a5, 580
725:              sll          t3, gp, tp
                  or           a6, s10, t4
                  slti         s2, s8, 1600
                  xor          s5, a7, a4
                  slti         a7, zero, 1353
                  srli         ra, a0, 8
                  lui          a6, 271175
sub_1_j2:         jal          s4, sub_2 #jump sub_1 -> sub_2
727:              bge          s4, s10, 738f
                  sra          s3, a3, a2
                  srai         sp, a1, 28
                  sll          s6, sp, t6
                  srl          s3, t5, s7
                  srl          gp, s5, tp
                  nop
                  slti         a4, sp, 842
                  andi         s6, s7, 1394
                  ori          t5, a3, 1513
                  sra          gp, a0, s9
738:              and          s1, a6, tp
                  bne          a1, s4, 755f
                  srai         zero, a7, 15
                  xor          a1, a1, a5
                  and          s6, sp, gp
                  nop
                  nop
                  srli         s2, s8, 16
sub_1_1:          jal          s4, 1f
0:                jal          gp, 6f
1:                jal          t5, 11f
2:                jal          t1, 4f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          a6, 16f
6:                jal          s2, 10f
7:                jal          a1, 9f
8:                jal          a0, 7b
9:                jal          ra, 2b
10:               jal          s11, 8b
11:               jal          s5, 14f
12:               jal          t1, 15f
13:               jal          ra, 3b
14:               jal          ra, 13b
15:               jal          t1, 0b
16:               andi         s7, s0, -1917
                  slli         s7, tp, 20
                  srli         a3, a0, 1
                  addi         t2, zero, -1330
                  lui          a0, 803602
                  sltu         s2, a7, tp
                  sub          s8, a3, sp
                  slli         a3, t5, 21
                  sltiu        a6, s2, 1033
                  bge          a6, s1, 769f
755:              sltu         s6, s10, s4
                  slti         a3, a7, -106
                  bne          t3, s0, 763f
                  srli         t5, s11, 3
                  srai         s9, a2, 10
                  beq          tp, s8, 780f
                  or           a2, s8, s10
                  xor          s2, zero, sp
763:              srl          s9, s6, t1
                  bne          t2, zero, 781f
                  srli         a5, a3, 23
                  addi         t2, a7, -556
                  nop
                  srai         t3, t1, 31
769:              ori          gp, s10, 1844
                  add          tp, t0, a6
                  slt          a1, s6, sp
                  sub          t1, s11, s8
                  andi         a2, s10, -415
                  srli         s5, s7, 5
                  addi         t2, sp, 1928
sub_1_2:          jal          s4, 23f
0:                jal          t5, 17f
1:                jal          ra, 0b
2:                jal          t1, 10f
3:                jal          ra, 12f
4:                jal          tp, 22f
5:                jal          ra, 19f
6:                jal          t1, 26f
7:                jal          gp, 14f
8:                jal          ra, 29f
9:                jal          t1, 25f
10:               jal          ra, 8b
11:               jal          ra, 24f
12:               jal          ra, 7b
13:               jal          a0, 9b
14:               jal          ra, 18f
15:               jal          ra, 1b
16:               jal          ra, 6b
17:               jal          ra, 28f
18:               jal          ra, 16b
19:               jal          ra, 13b
20:               jal          ra, 3b
21:               jal          ra, 5b
22:               jal          gp, 27f
23:               jal          ra, 4b
24:               jal          ra, 15b
25:               jal          ra, 20b
26:               jal          ra, 30f
27:               jal          t5, 11b
28:               jal          ra, 2b
29:               jal          t1, 21b
30:               srl          s6, s3, s10
                  slt          s5, s11, zero
                  xori         t3, s10, 302
                  xori         a0, a1, 1771
                  bne          gp, t2, 791f
780:              sra          t2, a7, zero
781:              addi         a1, s7, 1375
                  and          t5, a3, s9
                  andi         a1, s0, 290
                  sra          a2, a7, s3
                  bltu         s9, t0, 789f
                  slli         t5, t0, 11
                  andi         s0, s4, -1667
                  beq          a6, a7, 803f
789:              sub          t3, t6, s1
                  slli         t3, zero, 25
791:              xori         a4, s9, -1766
                  sra          s1, a2, t3
                  ori          a1, s6, -577
                  srai         s8, t6, 9
                  bltu         t4, s3, 806f
                  sub          a4, a1, s4
                  add          s9, sp, ra
                  sub          a6, t4, a6
                  srli         s1, t0, 31
                  slti         s1, a4, -126
                  andi         t2, s11, -613
                  srai         s4, s4, 5
803:              auipc        zero, 111375
                  slli         s5, s6, 0
                  andi         sp, t5, -1168
806:              beq          a5, zero, 826f
                  bne          a1, gp, 817f
                  slt          t5, a6, tp
                  blt          tp, t1, 814f
                  srai         tp, a6, 6
                  andi         t6, a2, -517
                  lui          s9, 419371
                  or           tp, tp, a1
814:              auipc        a3, 587260
                  lui          tp, 386510
                  slti         t3, t5, -504
817:              sll          s7, gp, t1
                  srai         s2, s2, 3
                  xori         a0, s10, -1349
                  srl          s11, t5, t0
                  beq          a3, zero, 827f
                  srl          zero, t3, a7
                  and          s3, s0, a6
                  slti         a4, a1, -1633
                  auipc        a4, 83128
826:              bge          a3, s9, 836f
827:              srli         t2, a4, 13
                  xor          s5, a3, s6
                  bltu         s4, a2, 849f
                  sub          s5, s5, t6
                  nop
                  beq          gp, t1, 842f
                  sltu         s8, tp, a2
                  and          a0, t5, s5
                  blt          t1, s3, 852f
836:              srai         t3, a6, 6
                  add          gp, s5, ra
                  add          s2, a5, ra
                  slt          s8, a4, s10
                  sltiu        t6, s11, 1872
                  srli         t6, a1, 19
842:              blt          t5, t1, 858f
                  bgeu         s2, zero, 854f
                  addi         a1, s7, -1492
                  add          t1, a3, ra
                  srl          gp, t4, s9
                  sltiu        tp, a5, -1686
                  xor          s6, a4, t5
sub_1_13:         jal          s4, 15f
0:                jal          ra, 11f
1:                jal          ra, 9f
2:                jal          t1, 14f
3:                jal          ra, 13f
4:                jal          ra, 6f
5:                jal          t1, 16f
6:                jal          gp, 8f
7:                jal          a2, 2b
8:                jal          t1, 0b
9:                jal          ra, 4b
10:               jal          ra, 1b
11:               jal          ra, 5b
12:               jal          ra, 7b
13:               jal          s8, 12b
14:               jal          s0, 10b
15:               jal          s2, 3b
16:               ori          s0, t4, -2007
849:              slli         a7, s11, 16
                  and          s7, s0, s1
                  nop
852:              xori         a6, s11, -1182
                  sltiu        a1, sp, 414
854:              bge          s1, s11, 871f
                  add          s2, a7, t2
                  addi         a1, s9, 997
                  sll          t3, a2, s9
858:              srl          a2, t2, tp
                  auipc        t2, 479281
                  andi         t3, t6, 1990
                  ori          a2, a5, -58
                  srai         s8, tp, 24
                  xor          s7, a0, a5
                  and          a3, a3, s0
                  bge          a6, a5, 871f
                  add          a1, t4, s2
                  blt          s10, s11, 880f
                  beq          s7, gp, 878f
                  srli         s9, a0, 26
                  bne          s6, t1, 875f
871:              auipc        s1, 557257
                  xori         tp, a4, 1110
                  xori         s0, a7, 690
                  sltu         sp, a3, s11
                  la           t3, sub_2
                  ori          s3, s1, -1828
                  lui          a3, 427546
                  and          a1, t3, a4
                  addi         t3, t3, 23
                  sltu         a4, zero, a5
                  or           ra, s11, gp
sub_1_j3:         jalr         s4, t3, -22 #jump sub_1 -> sub_2
875:              sltu         a2, s11, s9
                  sltu         s6, t4, s10
                  slli         gp, a6, 16
878:              sltu         t5, a2, s10
                  ori          s9, tp, -23
880:              slli         s5, t4, 23
                  beq          s0, s6, 889f
                  andi         a1, s7, -1437
                  sra          t1, zero, t3
                  bgeu         s6, s4, 897f
                  srli         s3, s1, 0
                  add          tp, s7, a4
                  blt          s6, t4, 893f
                  ori          s2, a6, -1267
889:              andi         s5, t1, -605
                  add          a6, a2, s0
                  srl          gp, zero, s6
                  srai         a5, s8, 21
893:              slli         s3, t2, 21
                  bltu         zero, s5, 908f
                  bltu         s4, a2, 904f
                  blt          s7, s6, 900f
897:              xori         s3, t0, 901
                  nop
                  lui          t3, 506317
900:              slli         a6, ra, 8
                  add          s5, t0, s6
                  add          s3, s1, s4
                  slti         t5, t6, -1352
904:              sra          a3, tp, s9
                  bne          s4, t1, 909f
                  sub          t5, s2, s2
                  sltiu        s0, a4, 1899
908:              srli         ra, t4, 16
909:              and          t5, a5, tp
                  and          tp, a1, t1
                  and          t2, s3, s4
                  or           a7, sp, s5
                  xor          t6, a2, t5
                  bge          s9, s2, 929f
                  bge          a3, s4, 922f
                  bltu         t6, s0, 918f
                  sltu         t6, s9, s11
918:              sub          s8, t1, zero
                  and          t2, t2, s7
                  and          s9, s3, zero
                  blt          a2, s0, 926f
922:              bge          t2, s0, 928f
                  sra          s0, a7, s5
                  sra          a3, a5, ra
                  bge          s8, zero, 934f
926:              sltiu        s11, a5, -1910
                  addi         s11, gp, -224
928:              slt          s7, a7, gp
929:              sll          s4, a3, a1
                  xor          s7, a0, a4
                  srai         a5, s5, 0
                  or           s2, a0, a3
                  sub          s5, gp, t3
934:              sltiu        s6, t6, 1414
                  sll          a5, s3, s10
                  srli         gp, tp, 6
                  srl          s6, s7, zero
                  blt          t6, sp, 946f
                  and          s7, gp, a6
                  addi         a5, a6, 1035
                  ori          s0, t2, 377
                  lui          tp, 222121
                  lui          t2, 667969
                  sltu         s8, t4, a5
                  srli         t1, s5, 13
946:              bltu         s4, s10, 959f
                  bltu         a5, s6, 957f
                  add          a4, t2, t3
                  sll          ra, a4, t2
                  sra          s6, a5, t6
                  blt          s7, a1, 963f
                  srli         t3, a1, 9
                  sra          s4, t3, a6
                  sltiu        s2, t6, 1067
                  srai         a7, ra, 17
                  bltu         a7, zero, 961f
957:              blt          sp, a5, 970f
                  beq          s2, gp, 973f
959:              auipc        s1, 791502
                  add          s5, s11, s1
961:              sltiu        s5, s10, -148
                  sub          s3, a7, sp
963:              bge          t6, gp, 967f
                  sll          a0, s5, sp
                  xor          zero, a6, s4
                  addi         s5, s4, 1377
967:              slt          a3, t0, a1
                  or           t5, tp, t3
                  blt          s11, s2, 986f
970:              nop
                  nop
                  srli         s8, gp, 11
973:              slt          t6, s1, t2
                  bgeu         t4, a1, 980f
                  sltu         a6, t6, s0
                  sll          s8, t2, s3
                  bne          s10, s9, 994f
                  lui          s0, 355651
                  auipc        zero, 486279
980:              sra          zero, a3, t1
                  xor          s8, t1, s2
                  ori          t6, t3, 1718
                  andi         s9, a5, -1458
                  bltu         s4, a4, 994f
                  sll          zero, gp, ra
986:              sub          a0, s4, a7
                  blt          s4, ra, 991f
                  bge          t2, a7, 999f
                  bltu         s0, sp, 1003f
                  sra          ra, ra, a3
991:              xori         a3, s11, -511
                  and          s3, a7, tp
                  nop
994:              nop
                  srl          t5, s3, a7
                  nop
                  slli         s4, a4, 7
                  srli         tp, s9, 29
999:              ori          zero, sp, 105
                  slli         t6, t4, 24
                  blt          s4, s8, 1017f
                  slti         zero, a3, -906
1003:             blt          a4, s2, 1013f
                  beq          t1, s7, 1024f
                  ori          a3, ra, -1917
                  andi         a3, s10, -1798
                  andi         a3, s9, -593
                  slt          a6, a5, s4
                  sub          gp, a6, t1
                  sra          a5, t2, s2
                  bltu         gp, s6, 1022f
                  sll          t5, s1, s9
1013:             srli         a0, s4, 16
                  bltu         a6, s5, 1021f
                  and          s11, tp, t6
                  xor          s11, s4, a5
1017:             ori          t6, s0, -1574
                  sltiu        a6, a3, 1433
                  beq          s11, t0, 1025f
                  bge          s5, a1, 1030f
1021:             slti         tp, s4, -973
1022:             bne          sp, a4, 1042f
                  auipc        gp, 1039012
1024:             xor          tp, gp, t4
1025:             auipc        a7, 1032800
                  bltu         s1, s1, 1028f
                  bltu         a0, s5, 1044f
1028:             srli         a3, s8, 23
                  srli         sp, a4, 18
1030:             srli         a1, s10, 30
                  and          zero, s1, a3
                  addi         t1, t2, -961
                  xori         s9, s11, -1581
                  nop
                  srl          t1, t0, s11
                  sll          s9, a4, s7
                  lui          t1, 124207
                  sra          ra, s8, t0
                  xori         zero, s1, -142
                  bge          a5, a6, 1044f
                  slti         a2, a2, -1749
1042:             bne          a3, s11, 1057f
                  srl          a2, s9, a1
1044:             sltiu        s4, s6, 1601
                  xori         a0, s5, -1840
                  bltu         s9, t0, 1053f
                  xor          a7, tp, t0
                  slti         s2, ra, -1576
                  srli         s4, s1, 22
                  nop
                  addi         s0, a3, 836
                  lui          s8, 309315
1053:             sra          t3, t3, a6
                  beq          zero, t6, 1063f
                  auipc        a6, 645060
                  add          a1, s6, t6
1057:             slli         s6, a5, 20
                  srai         s9, s3, 28
                  bltu         a2, a0, 1063f
                  and          s11, a5, t2
                  xori         tp, s5, -1968
                  or           s2, a2, a3
1063:             or           s2, ra, s2
                  lw           s4, 4(t0)
                  lui          a6, 413863
                  or           s11, t0, t1
                  sra          zero, t5, t1
                  lui          gp, 137763
                  slt          sp, s10, a2
                  addi         t0, t0, 24
                  xor          a4, s11, a7
                  slli         a1, t3, 16
                  srli         t1, a3, 23
1564:             addi x8, x20, 1
1564:             jalr x8, x8, 0
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x29, x5, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x6, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x6, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x6, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x6, x30, ecall_handler
                  li x30, 0x1
                  beq x6, x30, instr_fault_handler
                  li x30, 0x5
                  beq x6, x30, load_fault_handler
                  li x30, 0x7
                  beq x6, x30, store_fault_handler
                  li x30, 0xc
                  beq x6, x30, pt_fault_handler
                  li x30, 0xd
                  beq x6, x30, pt_fault_handler
                  li x30, 0xf
                  beq x6, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x5, x29, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
