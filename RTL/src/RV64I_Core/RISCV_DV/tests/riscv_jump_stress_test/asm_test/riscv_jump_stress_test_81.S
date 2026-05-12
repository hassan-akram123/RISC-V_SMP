.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
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
                  li x0, 0xfba3bd93
                  li x1, 0xe23aecbb
                  li x3, 0x0
                  li x4, 0xfabaa222
                  li x6, 0x1
                  li x7, 0x48876f65
                  li x8, 0x2
                  li x9, 0x0
                  li x10, 0xfdbc6108
                  li x11, 0xbdca7a2f
                  li x12, 0x937a836e
                  li x13, 0x80000000
                  li x14, 0x384ee1b3
                  li x15, 0xe
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xf925f329
                  li x21, 0x9
                  li x22, 0xf177c068
                  li x23, 0x6
                  li x24, 0x80000000
                  li x25, 0xf0391076
                  li x26, 0x0
                  li x27, 0xfda49335
                  li x28, 0x78a70a2a
                  li x29, 0x6
                  li x30, 0x0
                  li x31, 0x0
                  la x5, user_stack_end
main:             jal          t1, 27f
0:                jal          ra, 3f
1:                jal          ra, 19f
2:                jal          ra, 4f
3:                jal          ra, 28f
4:                jal          t1, 11f
5:                jal          ra, 9f
6:                jal          gp, 12f
7:                jal          a5, 5b
8:                jal          t1, 20f
9:                jal          t1, 16f
10:               jal          ra, 18f
11:               jal          ra, 25f
12:               jal          t3, 22f
13:               jal          ra, 24f
14:               jal          ra, 7b
15:               jal          ra, 0b
16:               jal          ra, 6b
17:               jal          ra, 21f
18:               jal          ra, 8b
19:               jal          gp, 15b
20:               jal          a7, 13b
21:               jal          t5, 14b
22:               jal          ra, 23f
23:               jal          ra, 2b
24:               jal          t1, 29f
25:               jal          ra, 26f
26:               jal          ra, 10b
27:               jal          s9, 1b
28:               jal          a4, 17b
29:               srai         t2, a4, 5
                  nop
                  bne          s4, t4, 9f
                  sll          s8, gp, t2
                  nop
                  addi         t2, a6, -1250
                  ori          s5, ra, 2004
                  lui          t5, 195162
                  andi         t1, s8, -37
                  la           a4, sub_1
                  sll          t5, s3, s10
                  slli         s3, ra, 12
                  addi         a4, a4, -389
                  srl          s5, s10, s1
                  srli         s5, s11, 7
                  bge          a7, zero, main_j1 #branch to jump instr
                  lui          s4, 273285
main_j1:          jalr         t1, a4, 390 #jump main -> sub_1
                  auipc        s3, 875840
                  srl          gp, a7, t1
                  srai         s9, s0, 2
                  bge          t3, t3, 9f
                  srai         s6, t4, 15
9:                sra          s3, a4, t5
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         t0, t0, -24
                  sra          a2, sp, a1
                  sw           t1, 4(t0)
                  slti         s8, s1, 2032
                  sra          s10, sp, t6
sub_5_1:          jal          t1, 13f
0:                jal          ra, 12f
1:                jal          s8, 14f
2:                jal          ra, 5f
3:                jal          ra, 19f
4:                jal          t5, 7f
5:                jal          ra, 8f
6:                jal          s8, 17f
7:                jal          ra, 21f
8:                jal          tp, 10f
9:                jal          ra, 18f
10:               jal          ra, 4b
11:               jal          ra, 1b
12:               jal          tp, 22f
13:               jal          ra, 6b
14:               jal          s9, 15f
15:               jal          ra, 20f
16:               jal          a5, 3b
17:               jal          ra, 16b
18:               jal          ra, 2b
19:               jal          t1, 11b
20:               jal          ra, 9b
21:               jal          ra, 0b
22:               slt          a5, t3, a7
sub_5_0:          jal          t1, 5f
0:                jal          t3, 4f
1:                jal          ra, 14f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          ra, 6f
5:                jal          a3, 13f
6:                jal          ra, 20f
7:                jal          t1, 17f
8:                jal          t1, 18f
9:                jal          ra, 22f
10:               jal          ra, 8b
11:               jal          t1, 19f
12:               jal          a4, 9b
13:               jal          tp, 16f
14:               jal          t1, 21f
15:               jal          ra, 11b
16:               jal          a5, 10b
17:               jal          tp, 12b
18:               jal          ra, 2b
19:               jal          a6, 1b
20:               jal          ra, 15b
21:               jal          ra, 3b
22:               slt          a3, s1, zero
sub_5_4:          jal          t1, 9f
0:                jal          s5, 10f
1:                jal          t1, 0b
2:                jal          ra, 3f
3:                jal          t1, 11f
4:                jal          ra, 5f
5:                jal          t1, 1b
6:                jal          t1, 2b
7:                jal          t1, 8f
8:                jal          t1, 4b
9:                jal          s7, 7b
10:               jal          ra, 6b
11:               or           a7, a7, s5
sub_5_2:          jal          t1, 9f
0:                jal          tp, 25f
1:                jal          ra, 4f
2:                jal          t1, 24f
3:                jal          s11, 18f
4:                jal          t5, 23f
5:                jal          ra, 0b
6:                jal          ra, 16f
7:                jal          ra, 26f
8:                jal          ra, 27f
9:                jal          t1, 8b
10:               jal          t1, 1b
11:               jal          t1, 15f
12:               jal          ra, 22f
13:               jal          s10, 6b
14:               jal          s3, 5b
15:               jal          t1, 14b
16:               jal          s6, 20f
17:               jal          ra, 19f
18:               jal          ra, 17b
19:               jal          t2, 11b
20:               jal          tp, 21f
21:               jal          ra, 28f
22:               jal          ra, 2b
23:               jal          ra, 12b
24:               jal          a4, 3b
25:               jal          t1, 13b
26:               jal          a3, 10b
27:               jal          t1, 7b
28:               xor          s3, s2, t5
sub_5_3:          jal          t1, 6f
0:                jal          ra, 2f
1:                jal          gp, 12f
2:                jal          ra, 7f
3:                jal          ra, 10f
4:                jal          ra, 9f
5:                jal          t1, 14f
6:                jal          ra, 1b
7:                jal          t1, 4b
8:                jal          t1, 5b
9:                jal          ra, 11f
10:               jal          ra, 8b
11:               jal          t1, 13f
12:               jal          ra, 0b
13:               jal          a3, 3b
14:               sll          a6, s0, a5
                  nop
                  sltiu        t5, t2, -1153
                  sub          t5, a2, a7
                  blt          gp, a6, 15f
                  bge          a5, s8, 21f
                  sll          a5, ra, s7
                  add          zero, s6, t3
                  auipc        a1, 404663
                  srli         a1, t0, 24
                  srli         s4, s5, 13
                  bne          s1, t5, 30f
                  bge          a2, s10, 26f
                  lui          s6, 69951
                  sltiu        t5, s5, -623
                  addi         t3, ra, -305
15:               or           a1, zero, s10
                  slli         a3, tp, 18
                  ori          a7, a0, 72
                  ori          a2, a0, -1348
                  bltu         s4, sp, 39f
                  add          s7, a5, s9
21:               bgeu         s7, sp, 22f
22:               nop
                  slti         t1, t2, -597
                  sub          s4, t1, a5
                  slt          s8, t2, t2
26:               sub          s3, a1, a2
                  bgeu         s4, tp, 47f
                  or           a3, s11, a7
                  slt          s0, s0, a0
30:               beq          s8, a1, 45f
                  bgeu         s9, s3, 44f
                  blt          s4, s11, 41f
                  auipc        s4, 764822
                  xori         t4, a5, -609
                  auipc        a7, 674815
                  srl          s6, s11, a3
                  slti         t2, a1, 22
                  lui          s6, 946903
39:               srai         s1, s3, 23
                  bgeu         a4, s3, 50f
41:               bgeu         a2, zero, 46f
                  bge          s8, t0, 51f
                  xor          tp, a6, zero
44:               slti         s7, a0, 531
45:               srli         t4, a1, 30
46:               beq          a3, ra, 63f
47:               sra          a2, s5, a1
                  lui          s11, 675149
                  add          s5, t1, a5
50:               ori          s11, a7, 463
51:               addi         a0, s3, 208
                  sra          s0, s0, t4
                  auipc        t6, 411753
                  lui          a0, 898671
                  add          t1, t3, s11
                  xori         s10, a0, 2045
                  srai         t4, ra, 20
                  sll          t3, s0, a6
                  slti         s10, t0, -435
                  addi         a2, a2, 858
                  sltu         gp, a4, t1
                  slti         a6, a0, 387
63:               lui          s9, 944826
                  sub          s1, t3, gp
                  slti         ra, t5, 1310
                  blt          t5, t2, 84f
                  xor          zero, zero, s9
                  addi         a1, t0, -1029
                  and          a3, t6, a7
                  xori         t4, t5, 536
                  addi         t2, a7, -444
                  srl          a5, t4, a7
                  add          s8, a0, t1
                  addi         s3, a0, 23
                  lui          a2, 570749
                  auipc        s6, 115088
                  bne          s2, a0, 88f
                  bltu         s3, ra, 80f
                  sltiu        t6, ra, 834
80:               or           s11, t4, a4
                  lui          zero, 762766
                  and          s10, s9, zero
                  slt          a1, t1, s1
84:               auipc        s1, 473407
                  andi         s5, ra, -1233
                  ori          zero, s3, -817
                  slti         tp, s3, 7
88:               srli         s1, t1, 10
                  bgeu         sp, s3, 102f
                  lui          s6, 528310
                  sub          s4, s6, zero
                  sra          t2, s6, tp
                  sltu         t1, s7, zero
                  srl          a5, t4, sp
                  slli         s8, s11, 31
                  beq          a1, s2, 100f
                  xor          t1, t2, t1
                  bltu         a2, gp, 107f
                  blt          sp, t5, 104f
100:              add          a7, a5, s8
                  sra          s10, s1, a6
102:              nop
                  slt          a6, t6, s6
104:              bltu         zero, t3, 114f
                  add          t4, t6, s9
                  sra          a2, t1, t6
107:              or           s3, s5, t4
                  slt          s4, t3, s0
                  andi         a7, t5, -932
                  xor          a4, s8, t0
                  slli         t3, ra, 9
                  nop
                  slli         t2, a4, 5
114:              auipc        tp, 399617
                  ori          a3, a7, 399
                  lui          a5, 104098
                  slti         a5, t5, 771
                  sltu         s11, t1, s7
                  slti         a6, s10, -1505
                  addi         ra, t2, 1087
                  or           t3, a1, s1
                  auipc        a6, 102128
                  sltiu        t5, s6, 225
                  ori          a6, a6, 1724
                  sltu         t2, s5, s6
                  beq          s0, gp, 132f
                  xor          ra, a0, t6
                  sll          s8, a5, a0
                  bne          t4, zero, 144f
                  nop
                  srli         t1, a6, 6
132:              blt          s10, ra, 139f
                  bge          s4, s3, 153f
                  srai         s10, t3, 19
                  sltu         a7, a4, s4
                  slli         zero, s5, 7
                  sltu         a6, s0, s8
                  srli         s11, a3, 2
139:              sltiu        a3, a3, -1334
                  xor          a5, s4, t4
                  sub          a6, a4, t3
                  or           a1, t3, s2
                  srli         a6, t0, 10
144:              slli         s6, s10, 19
                  sub          zero, t2, a5
                  beq          a1, s9, 154f
                  bne          s9, t0, 155f
                  srai         ra, zero, 29
                  sra          s9, a2, t3
                  bge          gp, a7, 154f
                  sub          t1, tp, s7
                  and          t6, s1, a2
153:              sra          s4, s10, t0
154:              sra          gp, s7, a4
155:              bne          t4, a3, 163f
                  srli         s0, s1, 8
                  slli         t4, s0, 16
                  and          a3, t4, tp
                  xori         ra, s2, 1993
                  sltiu        zero, a5, -1414
                  or           t5, s4, sp
                  addi         a5, a3, 212
163:              sltiu        a0, t6, -104
                  add          s1, s6, s2
                  srl          a1, s6, s11
                  sltiu        gp, a6, -1936
                  ori          a3, s9, 45
                  sra          s9, s3, a7
                  srli         t1, t3, 15
                  bltu         s11, s6, 178f
                  xori         s7, s11, -358
                  xor          a7, s4, t0
                  slt          t4, a7, s6
                  srl          tp, s3, a4
                  bgeu         t5, a2, 176f
176:              sub          s4, tp, s8
                  srl          zero, a2, s9
178:              addi         a5, gp, 242
                  srli         t4, tp, 1
                  sll          a3, s5, s1
                  auipc        zero, 935997
                  sltiu        zero, s2, 1500
                  lui          t4, 239317
                  bgeu         gp, a1, 197f
                  slt          a3, s9, t5
                  sub          a6, s10, s6
                  addi         s6, t3, -1575
                  bge          t3, a0, 198f
                  sra          t5, a1, s2
                  srl          t1, a2, s7
                  srl          gp, a5, s4
                  srli         t6, s1, 29
                  bltu         ra, a1, 202f
                  auipc        a3, 518584
                  ori          s9, s0, 1494
                  bge          s8, t0, 211f
197:              sll          a5, s11, a7
198:              slti         s10, t5, 177
                  sltu         a0, ra, s8
                  nop
                  lui          s6, 519348
202:              addi         s3, s9, -1586
                  bne          t3, sp, 211f
                  lui          s6, 497396
sub_5_5:          jal          t1, 23f
0:                jal          gp, 26f
1:                jal          t1, 21f
2:                jal          ra, 0b
3:                jal          s7, 22f
4:                jal          t1, 29f
5:                jal          ra, 13f
6:                jal          ra, 20f
7:                jal          ra, 6b
8:                jal          t3, 15f
9:                jal          a2, 2b
10:               jal          gp, 19f
11:               jal          t6, 30f
12:               jal          ra, 9b
13:               jal          ra, 3b
14:               jal          ra, 24f
15:               jal          ra, 4b
16:               jal          gp, 14b
17:               jal          t1, 16b
18:               jal          ra, 7b
19:               jal          t1, 27f
20:               jal          s4, 8b
21:               jal          ra, 11b
22:               jal          t1, 10b
23:               jal          ra, 5b
24:               jal          ra, 28f
25:               jal          ra, 17b
26:               jal          ra, 25b
27:               jal          ra, 18b
28:               jal          t1, 1b
29:               jal          t1, 12b
30:               sltiu        s4, s7, 1241
                  slti         s8, a0, 1781
                  sra          s0, a5, ra
                  bgeu         ra, a7, 211f
                  beq          t2, s0, 223f
                  ori          s0, tp, -1745
                  xori         ra, t1, -740
211:              slli         t6, s4, 13
                  sra          s11, s9, tp
                  slli         t5, zero, 19
                  beq          s7, a5, 234f
                  and          s4, s8, sp
                  sltiu        t6, zero, -909
                  or           s3, a5, a4
                  auipc        t6, 788963
                  xor          t5, s4, t5
                  srli         tp, t6, 28
                  bltu         ra, s5, 238f
                  xor          t1, t5, s10
223:              add          zero, a4, t3
                  bltu         s1, s1, 229f
                  addi         a3, s2, -838
                  sra          gp, s4, a1
                  sub          t5, a7, s1
                  or           s4, ra, a1
229:              or           gp, a3, s4
                  sra          gp, s5, s6
                  sltu         gp, s0, s0
                  andi         s4, a1, 562
                  slli         a5, s9, 25
234:              bltu         gp, s11, 243f
                  sltu         s6, a2, a7
                  nop
                  auipc        t1, 434859
238:              srl          t2, t1, s9
                  bltu         s0, s7, 245f
                  sra          s1, t6, a3
                  srli         s0, a7, 12
                  slli         a7, s7, 16
243:              slti         ra, t2, 1998
                  sltiu        s9, gp, 685
245:              sll          a1, s3, a0
                  or           t6, a3, s3
                  blt          a1, s1, 258f
                  bgeu         a3, t0, 268f
                  addi         t1, sp, -767
                  bltu         a1, t4, 257f
                  and          t2, s7, a2
                  auipc        t2, 168840
                  ori          a4, sp, -1185
                  andi         s1, s11, 2010
                  srl          gp, gp, a0
                  slli         t3, t6, 4
257:              bltu         s9, t2, 270f
258:              slt          a6, sp, a1
                  ori          t1, a6, -1661
                  srai         t3, s6, 6
                  sub          t3, t5, a5
                  nop
                  slli         a1, ra, 13
                  sra          a4, s6, s8
                  bge          a0, a7, 280f
                  bge          s3, s5, 276f
                  lui          a4, 523765
268:              bge          tp, t0, 270f
                  bgeu         s0, s9, 281f
270:              slti         a7, t2, 2036
                  or           gp, s10, gp
                  blt          s5, s11, 292f
                  add          s8, a1, t2
                  beq          s7, a5, 283f
                  auipc        t1, 923011
276:              bltu         t4, s8, 293f
                  srli         a0, s2, 28
                  sub          s6, gp, a4
                  addi         s8, t2, 687
280:              blt          s11, t5, 300f
281:              slli         a1, zero, 29
                  sub          s0, a5, a6
283:              or           t3, s10, s7
                  andi         a5, t0, 703
                  bge          s7, a1, 303f
                  srai         t2, s1, 29
                  slt          gp, s6, a5
                  lui          s7, 477625
                  add          t4, a7, t3
                  slti         zero, gp, -13
                  srl          ra, a5, s9
292:              auipc        s3, 1031807
293:              srli         a7, t3, 20
                  beq          s2, s11, 298f
                  sll          a6, tp, a4
                  xor          s4, zero, t5
                  bge          s0, ra, 302f
298:              bgeu         s11, a6, 306f
                  blt          zero, s7, 303f
300:              srl          a7, s4, a0
                  sltu         gp, a1, a3
302:              sltiu        t2, t2, 1822
303:              bne          t1, s9, 313f
                  or           s0, a3, s3
                  srli         s0, s2, 18
306:              srl          ra, t6, a0
                  bgeu         s5, tp, 320f
                  add          tp, t6, t5
                  srli         s5, s6, 19
                  bgeu         t2, s0, 328f
                  ori          t1, t3, 1168
                  sra          s1, s11, a0
313:              bge          s9, t1, 318f
                  sra          t1, t6, s5
                  slti         t3, t3, 941
                  xori         t6, a6, 1951
                  bge          a5, t0, 329f
318:              bltu         sp, a1, 329f
                  xor          s9, ra, s11
320:              bltu         gp, s11, 322f
                  xor          s6, t1, zero
322:              and          s1, s4, t2
                  xori         ra, a5, -1474
                  sub          s5, sp, s4
                  addi         s6, a7, 1362
                  sll          a5, s8, t2
                  xori         s5, tp, 1514
328:              sltiu        t3, s3, -1372
329:              srli         t2, s1, 4
                  and          s7, s9, tp
                  sltu         a0, t5, t6
                  sltiu        s7, ra, -1880
                  xor          a7, t5, a2
                  ori          a3, s4, 478
                  xor          s0, tp, t4
                  sltiu        a0, zero, 1150
                  ori          t5, s3, -1678
                  lw           t1, 4(t0)
                  addi         t0, t0, 24
                  sra          s3, a7, t2
485:              addi x4, x6, 0
485:              jalr x4, x4, 0
sub_2:            sub          zero, s0, t6
                  add          s9, a3, t2
                  bge          a0, s11, sub_2_stack_p
                  ori          t2, a7, 1059
sub_2_stack_p:    addi         t0, t0, -28
                  sltiu        t5, a6, 1761
                  add          s9, t2, s10
                  sra          a7, a7, tp
                  sw           t1, 4(t0)
                  or           a1, zero, s1
                  sll          ra, tp, t6
                  xor          a0, ra, t0
                  srli         s3, t2, 31
sub_2_1:          jal          t1, 0f
0:                jal          ra, 27f
1:                jal          ra, 18f
2:                jal          tp, 28f
3:                jal          s10, 5f
4:                jal          ra, 1b
5:                jal          ra, 4b
6:                jal          t1, 7f
7:                jal          ra, 15f
8:                jal          ra, 2b
9:                jal          s10, 19f
10:               jal          ra, 6b
11:               jal          ra, 8b
12:               jal          ra, 22f
13:               jal          ra, 9b
14:               jal          ra, 10b
15:               jal          gp, 21f
16:               jal          ra, 30f
17:               jal          t1, 11b
18:               jal          ra, 29f
19:               jal          t5, 25f
20:               jal          gp, 23f
21:               jal          ra, 12b
22:               jal          ra, 16b
23:               jal          ra, 13b
24:               jal          a0, 3b
25:               jal          t1, 14b
26:               jal          ra, 20b
27:               jal          ra, 24b
28:               jal          ra, 26b
29:               jal          ra, 17b
30:               addi         a0, t1, -1439
sub_2_15:         jal          t1, 14f
0:                jal          ra, 6f
1:                jal          t1, 2f
2:                jal          t1, 8f
3:                jal          s4, 15f
4:                jal          s6, 27f
5:                jal          s4, 9f
6:                jal          ra, 10f
7:                jal          t1, 1b
8:                jal          t1, 3b
9:                jal          ra, 11f
10:               jal          ra, 26f
11:               jal          tp, 18f
12:               jal          t1, 16f
13:               jal          ra, 19f
14:               jal          t1, 28f
15:               jal          t6, 24f
16:               jal          t1, 22f
17:               jal          t5, 29f
18:               jal          ra, 20f
19:               jal          a5, 4b
20:               jal          t1, 7b
21:               jal          ra, 12b
22:               jal          ra, 17b
23:               jal          s0, 5b
24:               jal          ra, 0b
25:               jal          ra, 13b
26:               jal          s0, 25b
27:               jal          ra, 21b
28:               jal          t1, 23b
29:               lui          s11, 515843
sub_2_19:         jal          t1, 1f
0:                jal          t1, 12f
1:                jal          t6, 9f
2:                jal          t1, 13f
3:                jal          t2, 14f
4:                jal          ra, 11f
5:                jal          t1, 18f
6:                jal          ra, 17f
7:                jal          s4, 19f
8:                jal          ra, 6b
9:                jal          s0, 0b
10:               jal          ra, 7b
11:               jal          t1, 15f
12:               jal          s9, 16f
13:               jal          ra, 5b
14:               jal          tp, 10b
15:               jal          tp, 8b
16:               jal          ra, 2b
17:               jal          s0, 3b
18:               jal          t1, 4b
19:               xori         t6, a0, -1131
sub_2_13:         jal          t1, 2f
0:                jal          ra, 16f
1:                jal          s6, 14f
2:                jal          tp, 4f
3:                jal          ra, 18f
4:                jal          t6, 1b
5:                jal          ra, 15f
6:                jal          ra, 9f
7:                jal          ra, 13f
8:                jal          ra, 0b
9:                jal          t1, 10f
10:               jal          tp, 8b
11:               jal          t1, 12f
12:               jal          t1, 17f
13:               jal          ra, 5b
14:               jal          tp, 6b
15:               jal          ra, 3b
16:               jal          ra, 11b
17:               jal          t1, 7b
18:               xor          t5, s6, s9
sub_2_25:         jal          t1, 18f
0:                jal          ra, 9f
1:                jal          t1, 3f
2:                jal          ra, 4f
3:                jal          s1, 16f
4:                jal          t1, 14f
5:                jal          ra, 12f
6:                jal          t1, 0b
7:                jal          t1, 15f
8:                jal          s8, 2b
9:                jal          s10, 13f
10:               jal          ra, 19f
11:               jal          s8, 8b
12:               jal          ra, 10b
13:               jal          ra, 7b
14:               jal          a6, 1b
15:               jal          ra, 5b
16:               jal          ra, 17f
17:               jal          t1, 6b
18:               jal          t4, 11b
19:               andi         zero, t5, -876
sub_2_2:          jal          t1, 10f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          a3, 5f
3:                jal          s11, 0b
4:                jal          t1, 1b
5:                jal          a5, 15f
6:                jal          ra, 7f
7:                jal          t1, 9f
8:                jal          t1, 14f
9:                jal          ra, 4b
10:               jal          s0, 6b
11:               jal          t3, 3b
12:               jal          a3, 2b
13:               jal          ra, 11b
14:               jal          ra, 13b
15:               srli         tp, t1, 2
sub_2_3:          jal          t1, 9f
0:                jal          ra, 1f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          ra, 12f
4:                jal          ra, 10f
5:                jal          gp, 2b
6:                jal          a0, 13f
7:                jal          ra, 3b
8:                jal          a7, 4b
9:                jal          t1, 8b
10:               jal          ra, 0b
11:               jal          gp, 6b
12:               jal          gp, 5b
13:               xor          s5, a2, tp
sub_2_9:          jal          t1, 3f
0:                jal          t1, 25f
1:                jal          t4, 20f
2:                jal          s11, 14f
3:                jal          t1, 2b
4:                jal          ra, 5f
5:                jal          ra, 18f
6:                jal          t1, 17f
7:                jal          t1, 23f
8:                jal          ra, 13f
9:                jal          ra, 12f
10:               jal          t1, 21f
11:               jal          ra, 8b
12:               jal          ra, 26f
13:               jal          ra, 4b
14:               jal          ra, 19f
15:               jal          ra, 11b
16:               jal          ra, 10b
17:               jal          ra, 9b
18:               jal          ra, 16b
19:               jal          ra, 22f
20:               jal          t1, 6b
21:               jal          t1, 24f
22:               jal          t1, 15b
23:               jal          ra, 1b
24:               jal          ra, 0b
25:               jal          a2, 7b
26:               sll          t5, a5, s10
sub_2_22:         jal          t1, 19f
0:                jal          ra, 2f
1:                jal          a2, 17f
2:                jal          ra, 16f
3:                jal          gp, 14f
4:                jal          ra, 6f
5:                jal          t1, 4b
6:                jal          ra, 25f
7:                jal          ra, 13f
8:                jal          t1, 9f
9:                jal          ra, 1b
10:               jal          a3, 18f
11:               jal          ra, 7b
12:               jal          ra, 8b
13:               jal          ra, 23f
14:               jal          t1, 15f
15:               jal          t1, 11b
16:               jal          ra, 10b
17:               jal          ra, 3b
18:               jal          t1, 22f
19:               jal          t1, 0b
20:               jal          ra, 5b
21:               jal          gp, 12b
22:               jal          ra, 21b
23:               jal          ra, 20b
24:               jal          ra, 26f
25:               jal          ra, 24b
26:               andi         t5, s3, 940
sub_2_5:          jal          t1, 12f
0:                jal          a1, 3f
1:                jal          ra, 9f
2:                jal          t1, 14f
3:                jal          ra, 4f
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          s6, 13f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          ra, 11f
10:               jal          ra, 2b
11:               jal          ra, 10b
12:               jal          t1, 0b
13:               jal          ra, 5b
14:               sll          s8, s9, t1
sub_2_10:         jal          t1, 16f
0:                jal          ra, 8f
1:                jal          ra, 7f
2:                jal          ra, 18f
3:                jal          t1, 10f
4:                jal          ra, 2b
5:                jal          t1, 6f
6:                jal          ra, 17f
7:                jal          a5, 11f
8:                jal          ra, 9f
9:                jal          ra, 15f
10:               jal          tp, 0b
11:               jal          ra, 13f
12:               jal          t1, 1b
13:               jal          ra, 3b
14:               jal          ra, 5b
15:               jal          t1, 14b
16:               jal          t1, 12b
17:               jal          a5, 4b
18:               slti         tp, a7, -897
sub_2_8:          jal          t1, 3f
0:                jal          tp, 7f
1:                jal          ra, 12f
2:                jal          gp, 8f
3:                jal          s6, 10f
4:                jal          s1, 5f
5:                jal          gp, 2b
6:                jal          tp, 4b
7:                jal          ra, 6b
8:                jal          ra, 13f
9:                jal          ra, 11f
10:               jal          t2, 0b
11:               jal          ra, 14f
12:               jal          t1, 9b
13:               jal          ra, 1b
14:               slti         a6, s2, 1612
sub_2_17:         jal          t1, 3f
0:                jal          ra, 13f
1:                jal          tp, 2f
2:                jal          ra, 9f
3:                jal          t1, 17f
4:                jal          ra, 11f
5:                jal          t1, 12f
6:                jal          ra, 1b
7:                jal          s4, 0b
8:                jal          a3, 7b
9:                jal          ra, 14f
10:               jal          t1, 18f
11:               jal          ra, 6b
12:               jal          ra, 4b
13:               jal          ra, 10b
14:               jal          ra, 16f
15:               jal          ra, 8b
16:               jal          t1, 15b
17:               jal          tp, 5b
18:               auipc        a7, 831136
sub_2_14:         jal          t1, 15f
0:                jal          t1, 16f
1:                jal          ra, 10f
2:                jal          t1, 1b
3:                jal          a3, 13f
4:                jal          t1, 17f
5:                jal          ra, 14f
6:                jal          t5, 0b
7:                jal          ra, 19f
8:                jal          s10, 9f
9:                jal          t1, 3b
10:               jal          t1, 6b
11:               jal          t1, 7b
12:               jal          t1, 11b
13:               jal          t1, 4b
14:               jal          a0, 2b
15:               jal          ra, 5b
16:               jal          ra, 8b
17:               jal          t1, 18f
18:               jal          t1, 12b
19:               slli         a0, s0, 9
sub_2_7:          jal          t1, 6f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          s11, 8f
3:                jal          a5, 9f
4:                jal          ra, 11f
5:                jal          ra, 1b
6:                jal          t1, 0b
7:                jal          ra, 5b
8:                jal          tp, 7b
9:                jal          ra, 4b
10:               jal          a1, 3b
11:               ori          a0, ra, 1350
sub_2_18:         jal          t1, 7f
0:                jal          ra, 21f
1:                jal          ra, 13f
2:                jal          ra, 22f
3:                jal          ra, 20f
4:                jal          ra, 2b
5:                jal          ra, 23f
6:                jal          s10, 18f
7:                jal          t1, 25f
8:                jal          t1, 24f
9:                jal          t1, 5b
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          t1, 16f
13:               jal          ra, 0b
14:               jal          ra, 19f
15:               jal          a7, 8b
16:               jal          s1, 17f
17:               jal          ra, 15b
18:               jal          ra, 1b
19:               jal          ra, 12b
20:               jal          s8, 6b
21:               jal          ra, 9b
22:               jal          ra, 26f
23:               jal          t1, 4b
24:               jal          a3, 3b
25:               jal          ra, 10b
26:               slti         t4, s7, 1395
sub_2_16:         jal          t1, 0f
0:                jal          s10, 12f
1:                jal          t1, 4f
2:                jal          t1, 3f
3:                jal          ra, 7f
4:                jal          t5, 2b
5:                jal          t1, 14f
6:                jal          s7, 11f
7:                jal          t1, 5b
8:                jal          t1, 6b
9:                jal          t1, 1b
10:               jal          t1, 8b
11:               jal          ra, 13f
12:               jal          ra, 9b
13:               jal          s0, 15f
14:               jal          t1, 10b
15:               auipc        tp, 696186
sub_2_4:          jal          t1, 7f
0:                jal          ra, 9f
1:                jal          t5, 0b
2:                jal          ra, 12f
3:                jal          t1, 1b
4:                jal          ra, 10f
5:                jal          ra, 6f
6:                jal          ra, 3b
7:                jal          t1, 11f
8:                jal          ra, 2b
9:                jal          t6, 8b
10:               jal          ra, 5b
11:               jal          ra, 4b
12:               jal          t1, 13f
13:               sll          gp, t6, tp
sub_2_12:         jal          t1, 5f
0:                jal          t1, 1f
1:                jal          tp, 11f
2:                jal          ra, 13f
3:                jal          tp, 6f
4:                jal          ra, 18f
5:                jal          ra, 4b
6:                jal          ra, 14f
7:                jal          ra, 9f
8:                jal          ra, 7b
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          ra, 16f
12:               jal          s7, 8b
13:               jal          ra, 17f
14:               jal          ra, 12b
15:               jal          ra, 19f
16:               jal          gp, 15b
17:               jal          ra, 10b
18:               jal          ra, 3b
19:               addi         t1, s3, -2027
sub_2_23:         jal          t1, 11f
0:                jal          tp, 14f
1:                jal          tp, 16f
2:                jal          gp, 1b
3:                jal          ra, 13f
4:                jal          ra, 5f
5:                jal          a7, 12f
6:                jal          ra, 21f
7:                jal          ra, 22f
8:                jal          ra, 4b
9:                jal          t1, 7b
10:               jal          ra, 3b
11:               jal          ra, 20f
12:               jal          t1, 15f
13:               jal          t1, 17f
14:               jal          ra, 9b
15:               jal          ra, 10b
16:               jal          t1, 8b
17:               jal          ra, 18f
18:               jal          t1, 6b
19:               jal          gp, 0b
20:               jal          ra, 2b
21:               jal          s10, 19b
22:               srai         tp, s5, 10
sub_2_0:          jal          t1, 7f
0:                jal          s1, 10f
1:                jal          gp, 22f
2:                jal          ra, 0b
3:                jal          s8, 15f
4:                jal          ra, 16f
5:                jal          ra, 24f
6:                jal          ra, 3b
7:                jal          t1, 5b
8:                jal          t1, 1b
9:                jal          ra, 21f
10:               jal          ra, 4b
11:               jal          ra, 8b
12:               jal          s5, 27f
13:               jal          ra, 20f
14:               jal          t1, 13b
15:               jal          t1, 14b
16:               jal          t1, 17f
17:               jal          ra, 25f
18:               jal          ra, 11b
19:               jal          t1, 26f
20:               jal          t1, 19b
21:               jal          ra, 6b
22:               jal          t1, 9b
23:               jal          t1, 18b
24:               jal          s4, 23b
25:               jal          ra, 12b
26:               jal          t1, 2b
27:               slli         t2, s0, 29
sub_2_24:         jal          t1, 9f
0:                jal          ra, 21f
1:                jal          ra, 25f
2:                jal          ra, 4f
3:                jal          ra, 26f
4:                jal          t1, 6f
5:                jal          s10, 18f
6:                jal          ra, 7f
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          t2, 0b
10:               jal          tp, 14f
11:               jal          ra, 22f
12:               jal          a4, 10b
13:               jal          ra, 23f
14:               jal          s4, 11b
15:               jal          t4, 1b
16:               jal          gp, 13b
17:               jal          gp, 12b
18:               jal          ra, 16b
19:               jal          gp, 17b
20:               jal          t1, 19b
21:               jal          ra, 20b
22:               jal          a0, 15b
23:               jal          ra, 24f
24:               jal          t4, 3b
25:               jal          t1, 8b
26:               jal          ra, 27f
27:               slti         s3, t0, -388
                  srai         a3, s0, 30
                  sra          s8, s3, t6
                  bne          s10, a1, 15f
                  lui          zero, 584351
                  xori         s11, sp, 571
                  blt          s2, sp, 9f
                  addi         s8, a6, -1593
                  bltu         a2, a1, 20f
                  sltu         a7, a7, t5
9:                sll          s8, a3, s8
                  sltu         a7, t4, gp
                  auipc        a4, 818883
                  xori         zero, t0, -488
                  ori          ra, s9, -896
                  and          s8, a7, s4
15:               srl          a4, s9, t4
                  bne          sp, s6, 35f
                  sltu         a2, t3, a4
                  beq          s11, a6, 31f
                  beq          s9, s0, 31f
20:               addi         a5, tp, -1406
                  bgeu         t3, a6, 33f
                  bgeu         t1, t1, 33f
                  add          t6, s6, sp
                  bltu         s3, t1, 38f
                  slt          gp, a3, t2
                  slli         s11, t6, 6
                  slli         s9, gp, 9
                  bge          t0, t6, 41f
                  slt          s1, t6, s7
                  slli         t3, tp, 11
31:               xori         a5, gp, 1863
                  or           a7, s1, s3
33:               or           s3, tp, t0
                  bne          a3, s4, 37f
35:               lui          s8, 679405
                  or           a5, zero, s9
37:               beq          s5, a5, 40f
38:               slti         s9, a6, -423
                  or           a3, t0, a4
40:               add          a3, t4, a3
41:               beq          t3, a4, 55f
                  lui          tp, 121132
                  slti         ra, a1, -488
                  or           a5, ra, a0
                  nop
                  srli         t6, s2, 4
                  xori         t3, t6, 1455
                  srl          a6, t4, s3
                  sltiu        t4, gp, 1140
                  andi         t1, tp, -1465
                  addi         t5, sp, -1218
                  slt          gp, s0, s2
                  slti         ra, t2, 1438
                  ori          t1, a0, -1622
55:               ori          t6, a5, -1605
                  srl          s9, s10, t4
                  bgeu         zero, s3, 62f
                  bgeu         s2, s8, 67f
                  ori          t3, s5, 1164
                  xor          ra, a0, t1
                  beq          a4, t2, 62f
62:               lui          s0, 984258
                  and          s11, t5, t5
                  sra          a6, s0, t4
sub_2_20:         jal          t1, 4f
0:                jal          t1, 18f
1:                jal          ra, 7f
2:                jal          t1, 28f
3:                jal          a4, 2b
4:                jal          t1, 26f
5:                jal          a0, 9f
6:                jal          tp, 13f
7:                jal          ra, 10f
8:                jal          ra, 24f
9:                jal          t3, 0b
10:               jal          ra, 14f
11:               jal          ra, 27f
12:               jal          tp, 5b
13:               jal          ra, 20f
14:               jal          ra, 25f
15:               jal          ra, 1b
16:               jal          ra, 15b
17:               jal          ra, 22f
18:               jal          t1, 6b
19:               jal          gp, 17b
20:               jal          ra, 8b
21:               jal          ra, 23f
22:               jal          gp, 21b
23:               jal          ra, 3b
24:               jal          t6, 16b
25:               jal          tp, 11b
26:               jal          gp, 12b
27:               jal          t1, 19b
28:               slt          s9, t1, sp
                  or           s6, a0, a1
                  sll          t4, gp, zero
67:               srl          s1, sp, t5
                  sll          a2, a5, a7
                  sltu         t5, t3, a4
                  add          s8, a1, a3
                  and          a2, s7, s7
                  slti         t3, a5, -1070
                  or           s1, s6, s6
                  srl          s9, t6, t0
                  nop
                  addi         s9, a1, 637
                  xori         gp, a0, 598
                  slti         s10, a4, -1099
                  sltiu        s7, s0, 2027
                  bgeu         s11, sp, 95f
                  lui          a0, 195327
                  and          t1, t6, sp
                  ori          s9, s10, -205
                  andi         a6, tp, 276
                  sra          t4, a7, t6
                  beq          a7, s7, 106f
                  slli         s7, a4, 17
                  xori         a2, s4, -956
                  andi         s0, t1, -346
                  blt          s2, t4, 93f
                  xor          a7, s6, t3
                  slli         t5, a4, 18
93:               sub          t3, tp, t1
                  sltiu        t5, s5, 829
95:               add          t6, a4, t1
                  andi         s5, s7, 1945
                  or           s1, s0, t0
                  and          zero, sp, s10
                  sll          s7, a0, s0
                  sltiu        t4, s10, 1524
                  srli         s3, ra, 3
                  slt          a2, s0, a0
                  bgeu         tp, a7, 118f
                  beq          a4, zero, 110f
                  blt          t1, a6, 122f
106:              srli         a4, a0, 27
                  sra          a1, gp, a3
                  blt          s7, s8, 121f
                  srl          s7, ra, s10
110:              add          s9, t4, t5
                  xori         t2, t0, 1972
                  srai         s7, t4, 0
                  bge          s4, a7, 133f
                  lui          a3, 676568
                  nop
                  bge          s9, s8, 121f
                  xori         t4, a1, -667
118:              bltu         s3, a6, 127f
                  sltiu        s7, t2, -1720
                  ori          s1, a6, 18
121:              xor          t3, s6, s4
122:              sll          t4, s8, s5
                  sll          s9, a1, s7
                  sll          s1, s7, t1
                  lui          t3, 14422
                  srli         t4, t2, 2
127:              lui          tp, 529713
                  slti         s4, ra, 813
                  sltiu        s0, a3, 1554
                  and          t3, t3, t6
                  blt          s1, s8, 149f
                  sltiu        s3, sp, -779
133:              slli         s11, a0, 15
                  and          s4, a4, t2
                  sltu         a6, a2, s5
                  bge          a2, a4, 150f
                  srai         s1, sp, 19
                  srli         t1, t2, 20
                  xor          a4, s6, a5
                  bne          a4, a2, 144f
                  sub          a6, t4, t0
                  srl          t4, tp, gp
                  ori          s7, t6, -232
144:              lui          t6, 1020297
                  sltu         s5, t1, a7
                  addi         ra, s8, -142
                  bne          s1, s5, 155f
                  bne          s11, a7, 149f
149:              srai         s4, a5, 3
150:              bge          a4, t4, 165f
                  slt          a6, s5, s9
                  sub          t2, t2, s1
                  bltu         s6, s7, 173f
                  beq          s1, a2, 167f
155:              bne          tp, a2, 166f
                  srli         s0, a6, 22
                  srli         a3, t6, 20
                  sra          a1, t2, t3
                  auipc        s9, 914924
                  nop
                  bltu         t4, s6, 165f
                  sltiu        a0, a1, 870
                  sra          a5, a7, gp
                  slti         s9, a2, -1146
165:              andi         tp, zero, -778
166:              lui          t6, 540801
167:              bgeu         s8, a6, 170f
                  sltu         t6, a4, a2
                  beq          s0, a6, 181f
170:              sltu         s5, ra, a1
                  ori          t1, a2, -1863
                  lui          gp, 962100
173:              bltu         a2, s3, 182f
                  andi         s3, a2, -1308
                  sltu         t3, t2, s3
                  ori          s5, a3, 1175
                  beq          tp, s9, 190f
                  beq          s7, s6, 198f
                  sub          s9, a3, zero
                  slli         s4, s10, 7
181:              sll          a3, t0, s4
182:              slli         a4, zero, 20
                  andi         a3, s5, 139
                  andi         a3, tp, -1844
                  beq          s11, a2, 198f
                  nop
                  slt          t3, a6, s10
                  sll          s0, t0, s9
                  xor          s7, sp, s2
190:              slt          a4, ra, a4
                  bne          t1, gp, 199f
                  sra          a6, s10, a7
                  sll          s7, t0, s1
                  xor          s0, s8, t4
                  bgeu         t5, t1, 214f
                  beq          s5, gp, 214f
                  andi         s7, tp, -474
198:              addi         t4, sp, 1984
199:              sltu         a1, t0, t2
                  sll          t1, s7, s11
                  auipc        zero, 735343
                  addi         s7, s5, -91
                  slt          s7, t4, sp
                  xori         a3, s3, 860
                  bge          a6, s7, 219f
                  sll          s11, ra, s2
                  slt          t5, a0, a6
                  sub          s6, s2, t4
                  slt          zero, a6, a4
                  slti         gp, s0, 1463
                  slti         s7, s9, -1782
                  and          a0, s4, s2
                  xori         s5, t0, -1160
214:              addi         t2, s10, -2025
                  sub          s4, t1, s4
                  bne          a5, a0, 220f
                  sra          s5, gp, t4
                  sra          t3, s6, a6
219:              auipc        s6, 970335
220:              bgeu         s0, a6, 233f
                  bne          s4, s3, 226f
                  auipc        a7, 247598
                  sub          s8, a0, t2
                  auipc        a6, 820258
                  sltu         ra, a2, ra
226:              nop
                  sub          s5, a2, s3
                  bge          a7, s4, 243f
                  sll          s6, tp, t3
                  sra          a0, a3, a4
                  ori          t3, t6, 1218
                  bge          t4, a2, 235f
233:              slli         s5, s7, 23
                  xor          s6, t1, t4
235:              sltiu        a0, a3, 171
                  bltu         s9, t2, 248f
                  slt          a6, s0, t4
                  or           s5, s3, s0
                  sltu         s1, t6, s4
                  srl          s5, s1, t2
                  andi         s0, gp, -553
                  sub          s3, t2, t0
243:              ori          s5, s8, 155
                  add          gp, t3, s10
                  slti         s8, s4, 848
                  and          a1, s9, tp
                  sltiu        s5, t4, 219
248:              ori          a5, s9, -1115
                  slli         t2, a2, 6
                  beq          s10, s8, 264f
                  xor          t2, s10, s1
                  bgeu         t4, a6, 258f
                  srl          t4, ra, a6
                  srl          s5, t6, s10
sub_2_11:         jal          t1, 25f
0:                jal          ra, 24f
1:                jal          ra, 26f
2:                jal          ra, 9f
3:                jal          gp, 21f
4:                jal          ra, 3b
5:                jal          t1, 28f
6:                jal          ra, 0b
7:                jal          ra, 16f
8:                jal          s9, 13f
9:                jal          ra, 20f
10:               jal          ra, 23f
11:               jal          ra, 6b
12:               jal          ra, 4b
13:               jal          a4, 5b
14:               jal          ra, 10b
15:               jal          s9, 7b
16:               jal          ra, 11b
17:               jal          t1, 18f
18:               jal          a1, 1b
19:               jal          s0, 27f
20:               jal          ra, 17b
21:               jal          a6, 2b
22:               jal          ra, 14b
23:               jal          ra, 8b
24:               jal          a4, 22b
25:               jal          ra, 19b
26:               jal          a0, 15b
27:               jal          gp, 12b
28:               add          t1, t4, a0
                  xori         s11, s0, 1889
                  addi         t6, t4, -35
                  andi         s0, t5, 402
258:              andi         a7, s5, 591
                  ori          t6, s5, 1094
                  sub          s10, sp, t6
                  or           s5, tp, a0
                  sub          a5, s0, a0
                  bne          s11, a1, 276f
264:              slli         a4, s6, 2
                  or           s4, s1, gp
                  or           a2, s5, a7
                  bgeu         t4, s1, 272f
                  sltu         a6, s1, zero
                  xori         a2, s7, -540
                  sll          t6, t6, s6
                  sub          s9, t6, sp
272:              nop
                  srl          s3, a6, zero
                  add          s11, s5, s0
                  and          ra, s0, s7
276:              sltu         a5, t3, s7
                  sltu         s8, a7, s8
                  beq          s7, a2, 281f
                  beq          t2, t2, 293f
                  nop
281:              slli         a6, s7, 5
                  or           t1, gp, gp
                  add          a6, gp, t1
                  addi         a2, t6, -2032
                  bltu         s0, s2, 302f
                  sub          tp, a3, s3
                  beq          s0, t5, 296f
                  xor          a7, a5, t5
                  xori         t3, gp, -109
                  xor          s1, s8, a2
                  addi         s3, s0, -1607
                  xori         a4, t6, -285
293:              add          s0, ra, tp
                  andi         a3, s6, 938
                  srli         s1, ra, 30
296:              bge          t6, s11, 313f
                  or           tp, a0, a6
                  xori         a4, s11, -604
                  srli         tp, a0, 12
                  andi         t6, s7, -1644
                  beq          s5, t1, 309f
302:              andi         s10, sp, 516
                  sub          tp, t4, ra
                  xori         ra, sp, -1881
                  slli         s5, tp, 21
                  sltiu        s9, t3, -1851
                  bltu         gp, gp, 326f
                  slli         s8, a6, 13
309:              bgeu         t0, a5, 322f
                  xori         s1, a1, 578
                  add          t2, s3, s1
                  bltu         a2, a3, 323f
313:              sltu         a3, s5, s2
                  or           t5, s3, a3
                  slti         t4, a3, 1071
                  beq          s9, a7, 320f
                  bge          s6, s5, 332f
                  slti         a0, a2, -882
                  sra          t3, t3, s5
320:              bge          s1, t5, 333f
                  bge          a1, t3, 334f
322:              add          s4, t3, tp
323:              srl          s6, t5, gp
                  or           s0, t3, sp
                  lui          a7, 400832
326:              addi         s5, gp, -690
                  auipc        s7, 1042393
                  blt          a7, s8, 333f
                  bne          a4, a0, 341f
sub_2_6:          jal          t1, 8f
0:                jal          ra, 4f
1:                jal          tp, 15f
2:                jal          s0, 20f
3:                jal          gp, 1b
4:                jal          t1, 22f
5:                jal          ra, 24f
6:                jal          ra, 9f
7:                jal          s5, 11f
8:                jal          ra, 5b
9:                jal          ra, 12f
10:               jal          gp, 21f
11:               jal          ra, 16f
12:               jal          t1, 14f
13:               jal          t1, 7b
14:               jal          ra, 0b
15:               jal          ra, 2b
16:               jal          s0, 19f
17:               jal          t1, 3b
18:               jal          tp, 26f
19:               jal          ra, 10b
20:               jal          ra, 18b
21:               jal          a5, 6b
22:               jal          ra, 25f
23:               jal          ra, 27f
24:               jal          ra, 13b
25:               jal          gp, 17b
26:               jal          t1, 23b
27:               addi         gp, t4, 1329
                  slti         zero, s11, -503
                  add          gp, s4, a6
sub_2_21:         jal          t1, 18f
0:                jal          t1, 3f
1:                jal          tp, 15f
2:                jal          ra, 11f
3:                jal          tp, 6f
4:                jal          a5, 9f
5:                jal          ra, 14f
6:                jal          ra, 12f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          a0, 1b
10:               jal          ra, 4b
11:               jal          ra, 19f
12:               jal          tp, 13f
13:               jal          t6, 10b
14:               jal          ra, 7b
15:               jal          a2, 5b
16:               jal          gp, 0b
17:               jal          t1, 16b
18:               jal          ra, 17b
19:               addi         t3, a4, -1426
332:              xori         a0, a7, 17
333:              sll          s8, gp, a2
334:              bge          a2, t6, 354f
                  slti         s3, a0, -1499
                  sll          a5, s0, a1
                  sub          zero, t5, zero
                  sltiu        t6, s0, -1105
                  bgeu         t6, s1, 352f
                  xor          a3, t0, s6
341:              slti         t5, a0, -1461
                  sub          s9, zero, a5
                  nop
                  nop
                  slt          s1, t0, t2
                  add          a3, t0, a3
                  srli         s11, s3, 0
                  xori         t6, a7, 2010
                  auipc        s9, 61271
                  and          s3, tp, t0
                  add          s4, t4, tp
352:              and          s1, t6, s5
                  bne          a5, t4, 367f
354:              slt          a2, t1, a0
                  blt          a1, s8, 358f
                  ori          s9, sp, -452
                  beq          a3, t5, 377f
358:              sra          s11, a5, s8
                  xori         t5, t6, -234
                  bge          t2, a2, 369f
                  slti         t1, s6, 587
                  lui          s9, 465377
                  slt          s10, zero, a2
                  and          ra, s2, a6
                  blt          s7, s8, 379f
                  xor          a5, s1, a7
367:              bge          s9, s1, 381f
                  bne          s2, s0, 383f
369:              xori         a3, s8, -368
                  bne          t5, s7, 375f
                  nop
                  xori         a1, t5, 713
                  bge          t4, s1, 376f
                  sll          a1, s4, a2
375:              lui          zero, 175060
376:              sra          t2, s9, a1
377:              bne          a3, s5, 389f
                  add          a0, s3, tp
379:              ori          s11, s4, 856
                  add          s3, s0, a3
381:              bne          a2, t6, 384f
                  srli         s11, tp, 12
383:              srl          a1, a7, t4
384:              bne          a3, s5, 388f
                  and          s0, zero, s3
                  slt          a4, zero, s0
                  srl          s10, a1, s1
388:              bge          ra, tp, 394f
389:              blt          s7, a2, 407f
                  lui          s9, 792573
                  nop
                  xor          ra, tp, zero
                  and          s10, t2, s4
394:              addi         a6, a3, -159
                  bge          a3, t1, 404f
                  sll          s0, s11, s11
                  and          s5, a1, a7
                  srli         t4, s6, 4
                  andi         t4, s7, -995
                  auipc        ra, 396223
                  sltu         s0, t3, t2
                  beq          s9, t1, 403f
403:              ori          s7, a4, -469
404:              bltu         gp, t0, 417f
                  srl          t1, tp, a6
                  srl          s5, t3, a4
407:              bge          a7, a0, 415f
                  nop
                  sra          s0, t1, t1
                  beq          t1, s6, 419f
                  bge          a5, gp, 425f
                  bne          t4, s4, 425f
                  beq          a5, s3, 425f
                  slti         zero, a0, 1580
415:              slti         t2, s6, -1313
                  or           s7, s2, s0
417:              sltiu        t1, t3, 1460
                  xori         tp, s8, 1101
419:              auipc        a1, 956063
                  bgeu         gp, s1, 440f
                  sltiu        a2, tp, -422
                  sub          s6, s4, a0
                  srl          a4, gp, s9
                  beq          s11, s3, 437f
425:              add          a2, s4, t0
                  slti         t2, s6, 309
                  ori          t4, a6, 1113
                  slt          s11, t2, t0
                  bne          s10, tp, 434f
                  srl          a3, s4, s11
                  xori         s10, s6, -70
                  srai         a0, t6, 18
                  bne          t6, t4, 448f
434:              sltiu        a7, s2, -1591
                  bltu         s4, s3, 454f
                  bgeu         a5, ra, 437f
437:              nop
                  sra          s7, a4, a1
                  and          s0, t4, s3
440:              bgeu         zero, s3, 455f
                  srl          s6, s5, a2
                  or           s7, a2, a7
                  slt          a6, s6, t0
                  sra          s4, t3, s2
                  bge          s2, a3, 454f
                  srl          t1, s9, tp
                  add          s11, t5, t6
448:              sltiu        a7, s10, -1221
                  lui          t4, 243193
                  and          s3, gp, s1
                  add          s3, a3, t3
                  or           s9, a4, gp
                  sra          t2, s3, s1
454:              sub          a3, s2, a7
455:              add          a4, s6, gp
                  nop
                  addi         t2, a0, -282
                  beq          tp, gp, 463f
                  srli         a4, t1, 12
                  beq          gp, s3, 473f
                  bgeu         gp, t4, 467f
                  blt          t1, t0, 473f
463:              sll          s3, s5, s10
                  addi         t4, s11, 47
                  bge          t2, s7, 483f
                  sltiu        a3, a0, -1150
467:              ori          t6, s8, 766
                  sltiu        s8, a0, 17
                  sltu         t1, s2, a3
                  xori         a2, a3, 452
                  or           a3, t3, a6
                  and          tp, s9, s11
473:              blt          a0, a5, 477f
                  blt          t6, a5, 477f
                  beq          s3, a2, 478f
                  auipc        s9, 903587
477:              add          t1, s10, t6
478:              blt          a2, a6, 482f
                  sub          t1, s8, sp
                  addi         s0, t5, -1402
                  slt          a2, s8, gp
482:              slt          t6, s5, t4
483:              bne          s9, a2, 503f
                  slli         s8, a7, 31
                  srl          s10, tp, s3
                  bgeu         t3, a0, 500f
                  bgeu         s11, a4, 504f
                  srli         a2, tp, 0
                  bge          tp, s9, 503f
                  bne          s6, gp, 503f
                  xor          s11, a6, s8
                  sltiu        a4, s8, -47
                  lui          ra, 378892
                  sltu         t5, sp, t6
                  lui          a5, 531156
                  slti         s7, s0, -100
                  add          ra, s7, s11
                  addi         s9, t6, -1151
                  beq          a0, t0, 502f
500:              bltu         s4, s5, 512f
                  auipc        a3, 472487
502:              andi         s0, s0, 181
503:              bgeu         s9, s2, 516f
504:              beq          a2, zero, 517f
                  lui          tp, 370083
                  slti         tp, s5, -1338
                  sltiu        a6, a2, 1986
                  add          a7, s0, a0
                  srl          t2, a0, s9
                  srl          a1, zero, s5
                  bltu         t6, ra, 523f
512:              slt          a6, sp, ra
                  auipc        s8, 862647
                  sltu         s4, a6, tp
                  srl          s8, s10, a3
516:              addi         tp, a2, 529
517:              bltu         t2, a6, 522f
                  nop
                  lui          t3, 1016086
                  add          s8, sp, s3
                  bgeu         t3, s6, 534f
522:              xor          gp, t2, s8
523:              beq          s10, a4, 534f
                  srl          s9, a7, s11
                  beq          s4, a1, 538f
                  xor          a4, t4, t6
                  and          s10, a6, s10
                  andi         s7, s8, -4
                  sltiu        ra, s2, 1889
                  beq          a2, s10, 542f
                  slt          s0, s0, s3
                  sltu         s10, a6, t4
                  bltu         t4, a7, 539f
534:              slt          s0, a7, a0
                  srl          s9, zero, s11
                  andi         a0, a7, -9
                  slli         t3, t1, 2
538:              slt          s8, s6, a1
539:              ori          zero, s2, -1539
                  bgeu         sp, s7, 543f
                  and          s0, t1, t0
542:              beq          s7, t5, 557f
543:              addi         s3, s10, 688
                  bltu         t3, tp, 557f
                  bne          a6, s1, 565f
                  auipc        t1, 29372
                  srli         a0, s5, 31
                  sra          a3, t0, t3
                  slli         s5, s0, 15
                  or           a3, s5, t3
                  and          s9, s3, a0
                  bgeu         tp, gp, 560f
                  srl          a1, s0, s8
                  xori         s11, a2, 1565
                  xor          zero, a2, t1
                  sltiu        s10, a3, 0
557:              ori          s1, a3, 691
                  and          zero, s6, a4
                  xori         t1, s8, -396
560:              lui          zero, 907500
                  bge          ra, s0, 570f
                  sltu         s3, s6, a7
                  and          t1, t2, ra
                  sra          t2, s10, a4
565:              sll          a2, a0, a3
                  beq          sp, a4, 579f
                  srai         t2, s4, 4
                  sltiu        tp, t2, -1666
                  lui          a5, 833684
570:              sltu         a5, t6, t0
                  or           a3, s5, gp
                  srli         gp, a5, 1
                  srl          t5, a1, t4
                  bne          gp, s11, 588f
                  blt          t1, ra, 594f
                  slli         a5, tp, 10
                  xori         ra, s5, 702
                  bltu         t0, s11, 592f
579:              srl          zero, s6, zero
                  xor          s0, a5, a0
                  sltu         a7, a7, a2
                  xor          ra, t5, s3
                  slt          s9, s11, s2
                  auipc        s7, 304281
                  sll          t1, t4, t1
                  lui          ra, 235302
                  and          t6, s8, s5
588:              blt          s4, t4, 606f
                  slli         gp, a3, 18
                  lui          a4, 138482
                  slli         t2, zero, 30
592:              sltu         s10, a4, s1
                  sltiu        s5, s2, -1636
594:              sltu         t4, a1, s3
                  sub          a1, s3, s8
                  srai         t3, t6, 16
                  xor          a7, s11, s4
                  srl          s9, s4, t3
                  xor          t2, a3, s11
                  srl          s0, a6, s4
                  slli         a7, t3, 19
                  bltu         t6, t4, 611f
                  slti         t1, tp, 1856
                  or           s1, s7, tp
                  sltiu        s11, tp, 446
606:              sra          s11, a3, zero
                  sltiu        a5, s5, 933
                  auipc        s1, 614420
                  beq          tp, zero, 623f
                  sltu         gp, sp, a0
611:              bltu         s3, sp, 616f
                  srai         a2, s10, 26
                  lui          t5, 631329
                  bne          a2, a4, 618f
                  bgeu         t5, s10, 632f
616:              sra          t5, t0, a1
                  bgeu         s2, tp, 620f
618:              srli         t2, a2, 26
                  sltiu        s5, t5, 824
620:              blt          sp, t2, 635f
                  add          t5, sp, a6
                  or           a5, t2, s2
623:              slt          s1, s4, s10
                  blt          zero, s4, 627f
                  nop
                  addi         t2, t0, -876
627:              bgeu         zero, tp, 647f
                  and          a0, t0, a7
                  bge          t3, a6, 630f
630:              sll          s8, s1, s1
                  auipc        s10, 898878
632:              slli         s4, s1, 12
                  sll          gp, s10, a3
                  sub          zero, s10, a6
635:              slli         a5, a2, 31
                  srli         t6, s7, 16
                  slti         t3, s0, -474
                  beq          s11, a7, 642f
                  bge          s11, s5, 642f
                  or           a5, ra, s2
                  ori          s10, s7, 1828
642:              or           t2, s6, a4
                  srai         t4, a1, 3
                  lui          t1, 1046592
                  sltiu        tp, s0, 174
                  ori          t3, s5, -969
647:              beq          s3, a5, 667f
                  sll          s7, t6, a7
                  ori          gp, a2, -239
                  srl          s4, s1, a5
                  slli         s5, tp, 12
                  sra          s3, a1, s6
                  sltiu        a2, t2, -65
                  lui          a4, 186138
                  xor          s11, sp, s8
                  and          a2, t2, a6
                  add          s0, s9, t6
                  sll          s7, a1, s2
                  nop
                  slti         s5, s2, 1605
                  lui          gp, 60840
                  sll          a2, t2, s1
                  or           s0, s11, zero
                  and          a6, t6, s6
                  slti         s7, sp, 241
                  bltu         s9, sp, 678f
667:              bltu         gp, s6, 682f
                  sra          ra, t1, a1
                  bgeu         s11, t6, 688f
                  slti         s10, t6, 277
                  andi         s8, t4, 984
                  sltu         s0, a2, s7
                  sll          zero, a1, s4
                  sltiu        s10, s3, 766
                  ori          t6, s7, 719
                  srli         s1, s10, 31
                  beq          gp, gp, 690f
678:              add          s3, gp, zero
                  lui          s9, 905865
                  sub          s11, t6, s6
                  sub          s1, a2, s9
682:              sub          s5, a4, s0
                  xori         t1, t0, 1058
                  slti         t3, t5, 1641
                  slt          gp, t1, s4
                  sub          a6, s1, s5
                  bne          a7, s4, 700f
688:              slt          s0, ra, tp
                  add          s9, s0, a6
690:              slt          s3, sp, t6
                  bltu         gp, zero, 705f
                  add          t4, a4, a5
                  srai         t3, s1, 10
                  ori          s0, s5, -284
                  sltu         tp, s11, s1
                  srl          a6, s10, s3
                  sub          s3, a6, s4
                  bge          ra, s0, 704f
                  bne          s1, zero, 712f
700:              bltu         a3, gp, 714f
                  xori         a7, t1, 732
                  sra          ra, s0, s4
                  addi         s4, zero, -548
704:              and          t1, t0, t5
705:              nop
                  andi         s3, t3, -603
                  add          a5, zero, s0
                  sltiu        s3, t6, -172
                  blt          tp, t6, 713f
                  bne          t5, s1, 714f
                  srli         s8, a1, 5
712:              sra          a7, s5, a4
713:              and          t2, zero, s9
714:              slti         t1, t5, -215
                  slti         s5, s8, -78
                  slli         t5, s3, 19
                  blt          s8, t5, 718f
718:              bne          s2, zero, 727f
                  or           s11, s1, a7
                  xor          s3, a3, t6
                  sra          a5, s11, ra
                  xori         s3, t5, 346
                  auipc        a4, 964874
                  bne          t4, t3, 736f
                  ori          s3, t3, -1207
                  bge          s9, t2, 739f
727:              andi         a7, t6, 794
                  bne          a4, t3, 746f
                  ori          t4, s6, 1572
                  slt          a1, s6, s2
                  blt          a3, gp, 745f
                  andi         t6, s4, 349
                  bltu         ra, s7, 741f
                  auipc        s3, 257874
                  lui          s3, 650115
736:              lui          s6, 581482
                  or           t3, gp, a2
                  sltiu        t1, a7, -1336
739:              andi         s0, s9, 822
                  ori          s1, s1, 711
741:              slli         s0, t1, 21
                  sub          t1, t5, s4
                  bltu         s0, s0, 763f
                  add          t5, t5, zero
745:              sra          t3, s3, a4
746:              beq          a7, t3, 749f
                  and          s1, s1, sp
                  blt          zero, a2, 753f
749:              add          t2, s4, t2
                  blt          t4, a7, 755f
                  auipc        s4, 215813
                  sra          gp, sp, s5
753:              bltu         s0, t4, 764f
                  slti         tp, t3, -2009
755:              blt          t6, s1, 764f
                  ori          t2, s9, 1820
                  add          s11, a1, zero
                  beq          t3, gp, 761f
                  or           t3, t0, a6
                  srai         s10, s1, 25
761:              andi         t5, t0, -558
                  blt          s3, s3, 775f
763:              bgeu         t4, s8, 780f
764:              or           s6, s7, t3
                  and          ra, t2, a4
                  add          a7, a5, a3
                  lui          s1, 1032253
                  xori         s11, zero, 1776
                  xor          a3, s1, ra
                  add          s4, s2, s6
                  sll          t3, s8, s3
                  andi         s8, a1, -1076
                  bne          a7, s11, 788f
                  add          t2, ra, s11
775:              blt          t6, s1, 786f
                  ori          s10, a7, -61
                  addi         a7, s5, 1798
                  slt          a3, s2, gp
                  lui          a6, 247515
780:              slli         s4, a6, 20
                  srl          a4, a3, a4
                  sll          t5, t0, a7
                  sltiu        t5, s5, -1976
                  sra          zero, sp, tp
                  srl          a5, s11, s1
786:              or           s7, a0, sp
                  auipc        s10, 1012518
788:              bltu         t4, s1, 791f
                  auipc        gp, 919862
                  sll          a0, s2, s8
791:              bne          s8, t6, 794f
                  bltu         ra, a3, 806f
                  ori          zero, s11, 1166
794:              slt          s5, s9, s8
                  addi         s1, zero, -1414
                  srli         t5, a4, 4
                  addi         a5, s1, 1901
                  bge          gp, a7, 813f
                  addi         s11, tp, 1582
                  bge          s0, gp, 813f
                  auipc        a5, 525573
                  addi         s6, s6, -211
                  beq          a4, a4, 809f
                  slti         s1, t3, -194
                  lui          s7, 218
806:              beq          s6, sp, 814f
                  add          s11, s10, a4
                  andi         t6, s10, -512
809:              sub          s6, a0, a5
                  slli         a6, t4, 22
                  and          s10, tp, s4
                  xori         a4, a2, 1935
813:              bltu         t2, s8, 826f
814:              ori          s10, s10, -1547
                  addi         a0, a1, 1543
                  sltiu        a3, gp, 1508
                  sra          a1, a2, s10
                  slt          s11, tp, t6
                  andi         s0, a2, 972
                  auipc        t2, 951993
                  add          t3, sp, tp
                  srli         a6, s8, 23
                  bgeu         s9, sp, 835f
                  slli         s11, s11, 10
                  srai         t2, s6, 21
826:              xori         a4, a4, 1574
                  bgeu         s8, s8, 844f
                  bltu         a6, s10, 832f
                  add          s6, s3, s8
                  ori          ra, a7, 1056
                  sll          s5, t2, s2
832:              beq          t2, s10, 845f
                  blt          zero, s2, 846f
                  slt          s10, a2, a5
835:              sltiu        zero, s7, 1174
                  sll          t4, a3, s2
                  bge          s6, a3, 857f
                  slti         s5, s0, 1922
                  beq          ra, a3, 853f
                  srai         t3, t3, 11
                  bne          gp, a4, 856f
                  ori          s0, a4, -1033
                  srli         a7, a1, 9
844:              nop
845:              bge          a4, a7, 854f
846:              auipc        a5, 350307
                  slli         a3, a0, 0
                  sll          a5, a6, a3
                  sub          tp, s10, t2
                  andi         a2, t1, -961
                  slt          s7, ra, a3
                  beq          t0, a3, 853f
853:              blt          zero, ra, 857f
854:              beq          a4, t1, 857f
                  slli         t3, tp, 21
856:              sll          t6, ra, s0
857:              xori         a5, s0, 232
                  sub          t4, s7, a0
                  sra          a0, t6, s7
                  add          s9, s5, s1
                  srai         s5, ra, 22
                  nop
                  add          t1, s6, t1
                  slti         s3, s5, -1533
                  addi         a7, s1, -1572
                  add          t4, s10, a4
                  sub          s7, a4, t2
                  nop
                  srli         ra, a3, 10
                  slt          a5, a7, ra
                  sub          a7, zero, s0
                  addi         s10, zero, -1319
                  slti         a3, s6, -176
                  sra          t4, s5, s11
                  bgeu         s4, a6, 880f
                  auipc        s3, 608406
                  srl          t4, t6, t3
                  sra          s5, tp, a4
                  srli         gp, t2, 7
880:              srli         s5, s10, 28
                  xori         a5, t2, -1868
                  sltu         t5, t0, sp
                  add          t1, s0, zero
                  bgeu         t4, s6, 904f
                  bltu         s11, a1, 899f
                  bgeu         t4, a0, 895f
                  andi         t5, sp, -1477
                  xor          s7, a6, s6
                  xori         t2, s7, -120
                  lui          t1, 416447
                  and          a6, a1, gp
                  srai         t5, s10, 13
                  nop
                  addi         a4, s0, 1152
895:              and          t1, a4, zero
                  blt          t3, tp, 915f
                  slti         a0, t6, -959
                  xor          a5, t0, s4
899:              bgeu         s7, s9, 904f
                  and          tp, t2, s8
                  srl          a6, a6, a7
                  bge          s9, s4, 915f
                  sra          s5, s8, s5
904:              sltu         tp, a4, a5
                  lui          zero, 407474
                  auipc        t5, 461081
                  addi         a6, ra, 1919
                  srai         zero, a6, 9
                  beq          s1, zero, 921f
                  sltiu        t3, t4, -301
                  sll          t6, a6, s9
                  srai         t4, a4, 16
                  bge          s11, a0, 931f
                  sll          a2, a3, s6
915:              srl          s1, s4, s9
                  sra          a1, a0, a6
                  srai         a4, a4, 0
                  or           a7, s2, a2
                  srai         s7, t6, 21
                  xor          t4, s11, s5
921:              sll          t5, t2, sp
                  auipc        t4, 986612
                  srl          a5, a6, a6
                  xor          zero, s2, s5
                  add          a2, t1, s8
                  bge          s9, s1, 932f
                  srl          t5, a2, s6
                  sltiu        s8, t6, -1452
                  bltu         t2, s10, 942f
                  slti         t1, a3, 435
931:              beq          a7, t4, 945f
932:              lui          s8, 224720
                  add          a2, s11, a5
                  add          s0, t6, s7
                  addi         zero, a7, 2037
                  sub          t3, sp, t1
                  sltiu        s3, t2, -1060
                  srai         t1, s7, 14
                  sltiu        t1, s3, -1907
                  ori          t1, s1, 1577
                  nop
942:              sra          a3, a4, t2
                  srl          ra, ra, s1
                  beq          t2, gp, 947f
945:              bltu         t3, t6, 957f
                  addi         gp, t4, 337
947:              srl          ra, a2, a5
                  beq          s6, a2, 951f
                  slti         s1, s10, 910
                  slti         t1, t6, -1941
951:              add          a4, a0, t2
                  bne          a0, s11, 956f
                  bgeu         t0, s1, 966f
                  sra          t2, a3, a5
                  bge          t2, t1, 969f
956:              addi         s7, s9, 1529
957:              sra          t5, a0, a3
                  bne          t4, t0, 971f
                  srli         s9, s5, 24
                  bge          zero, a2, 965f
                  bgeu         s1, tp, 979f
                  sltu         a1, sp, a4
                  add          s0, a3, t2
                  bgeu         t1, t1, 981f
965:              sltiu        gp, t3, -1165
966:              sub          t4, t1, t2
                  lui          zero, 766354
                  sra          s5, a7, a1
969:              andi         a1, a1, -1081
                  bge          s7, s4, 981f
971:              xori         t6, t1, 436
                  xor          s3, zero, t2
                  slt          a6, t0, t1
                  sltiu        a1, s4, -1255
                  auipc        a3, 640554
                  xor          a7, sp, s6
                  slt          s8, s7, s0
                  sra          gp, t6, zero
979:              srl          s8, t1, a5
                  sltiu        a4, s1, -380
981:              ori          a7, s1, 1440
                  bne          t6, t5, 996f
                  nop
                  srl          a1, sp, s11
                  srli         a0, s6, 29
                  sltiu        s0, a1, 185
                  blt          a7, ra, 1007f
                  srli         t1, s1, 2
                  andi         zero, s1, 69
                  sltiu        t3, s1, -1586
                  sltiu        a5, s2, 922
                  bltu         tp, a7, 1007f
                  auipc        gp, 1048209
                  or           a0, s11, zero
                  sra          s8, t3, a2
996:              auipc        s4, 547673
                  lui          t2, 657202
                  bge          t5, a3, 1001f
                  beq          s0, t5, 1012f
                  xori         s9, ra, -1893
1001:             ori          a2, s5, -77
                  and          s7, t3, s0
                  bne          s8, t5, 1012f
                  slli         t2, s2, 14
                  sll          a6, a0, s0
                  bgeu         a6, s1, 1015f
1007:             sll          t5, s0, s5
                  srl          a5, a5, s3
                  sltu         t4, s9, s7
                  slti         t2, s1, 1225
                  sltiu        s4, a6, -1691
1012:             srl          tp, s8, a3
                  sltiu        s1, t5, -1369
                  auipc        s8, 453067
1015:             andi         a2, t6, 429
                  slt          gp, t6, a0
                  slti         tp, gp, 732
                  blt          s11, t6, 1022f
                  slti         ra, t6, -1305
                  beq          t6, ra, 1028f
                  slti         a0, s7, 572
1022:             sltu         t1, a6, ra
                  bgeu         a6, s1, 1043f
                  bltu         tp, s4, 1037f
                  slti         s5, t4, -798
                  xori         gp, ra, -479
                  ori          t5, t5, 1097
1028:             lui          s4, 274458
                  slti         s9, a4, 1905
                  sltiu        a4, t2, 1592
                  slli         s8, a2, 6
                  bgeu         sp, t5, 1033f
1033:             and          gp, t1, s10
                  slti         s1, a0, 452
                  addi         s3, a7, 661
                  bne          s10, s10, 1051f
1037:             or           a3, t1, ra
                  xori         s5, sp, -92
                  auipc        s5, 823800
                  sltiu        s8, t2, 539
                  ori          t6, a5, -1290
                  srli         t6, s0, 5
1043:             bgeu         a6, ra, 1062f
                  blt          s1, s6, 1056f
                  and          s0, s1, s9
                  slt          s9, t3, t1
                  and          t2, a6, sp
                  andi         s6, s2, -798
                  xor          t5, s0, a5
                  sll          a2, t5, s4
1051:             slti         s11, s6, 1761
                  andi         s7, t1, -1462
                  sltu         ra, s7, a5
                  slli         a0, s7, 28
                  ori          t5, s9, 224
1056:             beq          t3, a3, 1061f
                  blt          a2, s10, 1058f
1058:             sra          a5, s11, a6
                  nop
                  bge          s4, t3, 1077f
1061:             sra          a4, a4, a5
1062:             blt          s0, s8, 1074f
                  sll          t1, zero, a0
                  ori          gp, a7, 1773
                  nop
                  sltu         t6, sp, s8
                  nop
                  bne          zero, t4, 1082f
                  sub          a5, t4, s6
                  blt          t2, a1, 1084f
                  slli         s8, a2, 0
                  srli         s7, t0, 17
                  xori         s8, a6, -628
1074:             srl          a4, s7, t0
                  xori         a2, t1, -1906
                  srli         s10, t6, 22
1077:             bge          s2, a5, 1090f
                  lui          s1, 834536
                  addi         a4, s10, 1676
                  lui          s1, 614041
                  blt          a2, s9, 1096f
1082:             beq          a4, t4, 1094f
                  ori          s10, t0, -144
1084:             or           a5, t4, s3
                  bltu         s2, s3, 1089f
                  bltu         t0, a6, 1101f
                  xor          s1, t0, s8
                  addi         a7, s3, -588
1089:             bltu         s0, ra, 1094f
1090:             lui          s0, 107808
                  xor          s11, t4, a0
                  slti         a7, s7, -1281
                  bltu         s1, a7, 1096f
1094:             xori         a0, s11, 500
                  andi         s7, t4, -303
1096:             auipc        t1, 852965
                  or           s1, tp, s6
                  lui          ra, 905282
                  add          t1, t6, s9
                  srl          s5, s3, s10
1101:             auipc        s4, 348638
                  srai         a0, a7, 23
                  beq          s2, t6, 1116f
                  sltu         ra, gp, s5
                  bne          tp, s8, 1116f
                  auipc        s4, 126669
                  sub          gp, s10, a5
                  srai         a4, s8, 31
                  sub          a3, a3, s7
                  sll          t3, t2, s0
                  and          a2, t2, a1
                  xori         s10, a4, 368
                  slt          s1, a6, a3
                  sra          a6, t3, t0
                  blt          s11, zero, 1134f
1116:             srli         a3, a5, 8
                  nop
                  bltu         ra, a5, 1127f
                  sra          s7, tp, s2
                  bltu         t6, a7, 1140f
                  bge          zero, s1, 1139f
                  slt          s4, ra, t1
                  andi         s7, s10, 663
                  lui          t6, 867416
                  xori         s7, s9, 528
                  srli         a7, a0, 22
1127:             andi         t3, s11, -1059
                  sub          s1, s9, s10
                  bne          a2, t3, 1134f
                  lui          gp, 728494
                  sltu         zero, t4, a7
                  sub          a4, t0, s7
                  slli         s5, a2, 9
1134:             auipc        a3, 20212
                  andi         tp, s5, -599
                  bgeu         a7, a1, 1144f
                  nop
                  bne          a4, s7, 1147f
1139:             sub          a4, a0, s10
1140:             bgeu         t4, t4, 1143f
                  sra          a7, s5, s1
                  slli         t6, t5, 1
1143:             andi         gp, t4, 633
1144:             sll          tp, t5, s11
                  slt          a0, t2, s6
                  xori         s1, s0, -1384
1147:             xori         s10, a3, -463
                  blt          tp, ra, 1161f
                  sub          t6, a6, s4
                  sltu         t1, s1, a0
                  srai         tp, a7, 4
                  ori          a1, s10, 1290
                  andi         s10, s3, 1139
                  sll          t3, a0, a7
                  bge          t0, s0, 1168f
                  slti         a3, a7, -94
                  xor          a1, a1, s3
                  auipc        ra, 392523
                  sltiu        s5, a3, -665
                  blt          t1, a0, 1164f
1161:             beq          s5, a6, 1174f
                  nop
                  andi         gp, a2, -890
1164:             sub          t3, s1, a0
                  slt          gp, s3, tp
                  sltu         t5, s6, s7
                  srai         a7, s4, 16
1168:             add          s9, zero, s3
                  bge          s2, zero, 1183f
                  srli         a3, t2, 13
                  add          tp, s4, s0
                  srl          s11, zero, s0
                  bltu         a6, sp, 1176f
1174:             beq          s11, a3, 1194f
                  sll          ra, s3, s7
1176:             blt          s4, s0, 1182f
                  auipc        s9, 712904
                  bgeu         s2, a0, 1191f
                  auipc        t5, 1009115
                  lui          s8, 816041
                  srli         s5, t2, 1
1182:             ori          s10, a1, -1668
1183:             sra          s3, sp, a6
                  bltu         a0, s8, 1189f
                  slt          s9, t1, s0
                  auipc        a5, 497462
                  lui          a0, 921341
                  andi         ra, a2, -571
1189:             bgeu         a6, zero, 1207f
                  addi         t5, t0, 1564
1191:             bltu         s4, s9, 1205f
                  add          t2, s9, a3
                  lui          a5, 483620
1194:             bge          s9, a6, 1195f
1195:             xor          t3, zero, s11
                  nop
                  xori         a2, s7, -1169
                  bne          s3, ra, 1210f
                  bgeu         s1, s9, 1212f
                  nop
                  slti         gp, t0, -1232
                  sll          zero, a0, a4
                  srl          t3, t4, s3
                  ori          t5, s5, 1372
1205:             bltu         s10, a1, 1219f
                  sltu         s3, s2, s2
1207:             bltu         s3, s5, 1213f
                  auipc        a0, 70366
                  xor          s9, s0, a7
1210:             auipc        a0, 409209
                  beq          t5, s8, 1215f
1212:             lui          a5, 511821
1213:             srl          t5, s6, t5
                  bge          t5, a5, 1226f
1215:             or           s1, ra, a3
                  srai         t3, a7, 7
                  sltiu        t6, t0, -214
                  bne          t3, s5, 1223f
1219:             sltiu        ra, zero, 216
                  add          s8, a4, s6
                  slt          s0, a1, s10
                  blt          t4, a2, 1235f
1223:             auipc        a2, 326364
                  slli         tp, t5, 18
                  bltu         zero, t1, 1240f
1226:             add          s8, a2, s4
                  beq          tp, zero, 1230f
                  slli         ra, a5, 21
                  slt          a3, t0, a7
1230:             andi         a5, s3, 1063
                  sra          t2, gp, t1
                  sll          t6, s10, sp
                  slt          s3, a4, s8
                  and          s4, s9, t4
1235:             beq          s2, s5, 1239f
                  addi         ra, s1, -1066
                  lui          t2, 47455
                  slt          s1, t0, t5
1239:             and          zero, t1, a5
1240:             bge          t6, s5, 1259f
                  addi         a4, a1, 789
                  or           s0, a5, s4
                  sll          a1, ra, s2
                  slli         s1, s4, 2
                  add          tp, t3, a4
                  and          s6, a5, s11
                  bne          s3, s5, 1261f
                  srl          a2, s2, s1
                  sra          a3, s6, s2
                  andi         gp, s1, 1401
                  slli         a1, t5, 18
                  beq          s8, s3, 1269f
                  and          t5, s6, t3
                  and          s11, a6, s1
                  andi         s9, s7, -81
                  srl          a5, gp, zero
                  sltu         s11, s2, a4
                  bge          s4, s11, 1267f
1259:             and          a7, tp, a6
                  bge          s8, s5, 1273f
1261:             blt          t5, s7, 1274f
                  bge          t1, s9, 1282f
                  sltiu        s3, s1, 1433
                  srl          t3, s9, s3
                  beq          s8, ra, 1276f
                  beq          ra, a2, 1281f
1267:             sltu         s3, s0, zero
                  addi         s7, t0, -1798
1269:             slli         s0, s1, 26
                  bltu         a1, a7, 1290f
                  bne          t3, sp, 1279f
                  nop
1273:             sub          s1, t0, a5
1274:             bgeu         t1, s10, 1277f
                  sltu         a3, s8, sp
1276:             sra          t1, t6, s2
1277:             srai         a3, t0, 18
                  auipc        s0, 748812
1279:             sra          s5, s3, s5
                  sll          ra, s9, ra
1281:             bltu         a6, s1, 1284f
1282:             srli         t6, s5, 0
                  xori         t3, ra, 1909
1284:             andi         s9, s4, 654
                  or           t4, a4, a7
                  addi         s9, a7, -1030
                  addi         s4, a1, 455
                  andi         a2, s9, 1153
                  xori         t1, t3, 941
1290:             auipc        t5, 733886
                  sltiu        s10, s2, 1664
                  auipc        a4, 176524
                  bge          a1, t0, 1302f
                  xori         gp, sp, -1787
                  srl          a2, a4, t2
                  ori          t2, s7, -2020
                  xor          s8, t4, a0
                  sltiu        zero, s1, 1173
                  slli         a0, s6, 13
                  bne          t4, t4, 1309f
                  sra          tp, s6, t5
1302:             nop
                  sub          a6, a1, s1
                  beq          a6, s5, 1317f
                  lui          s0, 742179
                  blt          s9, t6, 1318f
                  sltu         s5, sp, t1
                  bne          t0, sp, 1328f
1309:             sub          a3, t6, zero
                  and          s0, t3, a4
                  bltu         s8, s7, 1314f
                  bge          t6, t3, 1330f
                  sltu         a4, a2, a7
1314:             sltiu        a7, s5, 1312
                  sll          t4, s5, a5
                  sub          gp, s7, s4
1317:             bne          s0, gp, 1330f
1318:             blt          gp, a4, 1326f
                  slt          t2, a2, s1
                  xori         a6, a5, 746
                  or           s4, s8, s10
                  add          ra, t0, s6
                  beq          s10, tp, 1329f
                  slt          tp, a3, s10
                  sltu         s5, t5, s7
1326:             andi         t5, t6, -480
                  srai         s5, s7, 4
1328:             lui          s5, 184152
1329:             nop
1330:             lui          s10, 214685
                  srli         a1, a4, 2
                  slt          s1, t1, s8
                  srai         t5, ra, 5
                  ori          t1, t4, -540
                  srl          s7, a1, s1
                  add          tp, t1, sp
                  srai         t6, a1, 18
                  xori         s4, t2, 1908
                  andi         tp, s11, -760
                  and          a0, sp, s2
                  sltiu        t1, t6, -680
                  add          a4, s7, s1
                  auipc        a7, 894919
                  sltiu        a5, a4, -956
                  andi         ra, a1, -281
                  blt          s11, a5, 1347f
1347:             sll          zero, s1, a2
                  srli         s7, s3, 22
                  lw           t1, 4(t0)
                  addi         t4, s4, -1718
                  slli         s8, s5, 15
                  slti         a2, ra, 1505
                  sub          s9, t1, s1
                  srai         a7, a0, 10
                  slli         t2, t6, 4
                  addi         t0, t0, 28
                  srai         a4, s6, 28
                  nop
1964:             addi x20, x6, 0
1964:             jalr x20, x20, 0
sub_4:            addi         t0, t0, -64
                  sll          a0, s11, s3
                  sw           t1, 4(t0)
                  srl          s11, s1, a5
                  srli         a6, t5, 27
sub_4_3:          jal          t1, 2f
0:                jal          s7, 14f
1:                jal          ra, 21f
2:                jal          s3, 3f
3:                jal          ra, 7f
4:                jal          ra, 1b
5:                jal          ra, 20f
6:                jal          s0, 4b
7:                jal          t1, 11f
8:                jal          t1, 5b
9:                jal          t1, 6b
10:               jal          t1, 18f
11:               jal          ra, 0b
12:               jal          s9, 13f
13:               jal          ra, 17f
14:               jal          ra, 10b
15:               jal          tp, 12b
16:               jal          ra, 15b
17:               jal          a1, 19f
18:               jal          ra, 8b
19:               jal          ra, 9b
20:               jal          t1, 16b
21:               and          s0, a1, t3
sub_4_10:         jal          t1, 7f
0:                jal          ra, 11f
1:                jal          gp, 9f
2:                jal          t1, 8f
3:                jal          t1, 19f
4:                jal          ra, 2b
5:                jal          s11, 12f
6:                jal          ra, 15f
7:                jal          ra, 1b
8:                jal          t1, 14f
9:                jal          gp, 6b
10:               jal          ra, 0b
11:               jal          t1, 3b
12:               jal          t1, 13f
13:               jal          ra, 16f
14:               jal          ra, 18f
15:               jal          t1, 4b
16:               jal          gp, 10b
17:               jal          ra, 5b
18:               jal          ra, 17b
19:               jal          gp, 20f
20:               or           tp, t3, a1
sub_4_11:         jal          t1, 23f
0:                jal          t1, 9f
1:                jal          gp, 20f
2:                jal          ra, 13f
3:                jal          gp, 21f
4:                jal          gp, 11f
5:                jal          ra, 19f
6:                jal          s0, 17f
7:                jal          ra, 18f
8:                jal          ra, 3b
9:                jal          ra, 22f
10:               jal          s6, 0b
11:               jal          ra, 2b
12:               jal          t1, 8b
13:               jal          t1, 7b
14:               jal          t3, 16f
15:               jal          ra, 12b
16:               jal          s5, 5b
17:               jal          t2, 10b
18:               jal          t1, 6b
19:               jal          ra, 24f
20:               jal          t1, 4b
21:               jal          t1, 1b
22:               jal          ra, 14b
23:               jal          gp, 15b
24:               srl          a3, a0, a2
sub_4_16:         jal          t1, 11f
0:                jal          ra, 13f
1:                jal          ra, 8f
2:                jal          t1, 6f
3:                jal          ra, 12f
4:                jal          ra, 10f
5:                jal          t1, 14f
6:                jal          t1, 1b
7:                jal          t1, 2b
8:                jal          a6, 20f
9:                jal          ra, 18f
10:               jal          ra, 19f
11:               jal          ra, 16f
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 9b
15:               jal          t6, 0b
16:               jal          t3, 4b
17:               jal          tp, 7b
18:               jal          gp, 17b
19:               jal          ra, 15b
20:               or           tp, a7, a4
sub_4_8:          jal          t1, 19f
0:                jal          t1, 8f
1:                jal          s5, 20f
2:                jal          ra, 1b
3:                jal          t1, 17f
4:                jal          ra, 10f
5:                jal          ra, 12f
6:                jal          ra, 13f
7:                jal          ra, 3b
8:                jal          a1, 14f
9:                jal          a5, 15f
10:               jal          tp, 21f
11:               jal          t2, 0b
12:               jal          ra, 16f
13:               jal          ra, 4b
14:               jal          ra, 6b
15:               jal          ra, 22f
16:               jal          ra, 18f
17:               jal          a1, 5b
18:               jal          t1, 2b
19:               jal          t1, 7b
20:               jal          t5, 11b
21:               jal          ra, 9b
22:               slt          s10, t3, s5
sub_4_1:          jal          t1, 26f
0:                jal          t1, 16f
1:                jal          ra, 3f
2:                jal          a6, 6f
3:                jal          t1, 20f
4:                jal          ra, 19f
5:                jal          tp, 22f
6:                jal          ra, 15f
7:                jal          ra, 27f
8:                jal          t1, 9f
9:                jal          tp, 1b
10:               jal          ra, 11f
11:               jal          tp, 17f
12:               jal          gp, 30f
13:               jal          ra, 8b
14:               jal          ra, 23f
15:               jal          ra, 4b
16:               jal          ra, 28f
17:               jal          s5, 13b
18:               jal          ra, 14b
19:               jal          ra, 29f
20:               jal          ra, 24f
21:               jal          s8, 18b
22:               jal          ra, 0b
23:               jal          ra, 7b
24:               jal          ra, 21b
25:               jal          ra, 10b
26:               jal          ra, 2b
27:               jal          ra, 12b
28:               jal          t1, 25b
29:               jal          gp, 5b
30:               ori          ra, s8, -1078
sub_4_12:         jal          t1, 19f
0:                jal          a2, 12f
1:                jal          ra, 10f
2:                jal          ra, 1b
3:                jal          t1, 16f
4:                jal          ra, 8f
5:                jal          ra, 3b
6:                jal          t1, 23f
7:                jal          ra, 17f
8:                jal          ra, 21f
9:                jal          t5, 6b
10:               jal          gp, 9b
11:               jal          ra, 18f
12:               jal          ra, 11b
13:               jal          t1, 0b
14:               jal          ra, 15f
15:               jal          s0, 7b
16:               jal          ra, 13b
17:               jal          ra, 5b
18:               jal          ra, 22f
19:               jal          gp, 14b
20:               jal          ra, 2b
21:               jal          ra, 20b
22:               jal          ra, 4b
23:               add          s6, s5, s7
sub_4_14:         jal          t1, 1f
0:                jal          ra, 4f
1:                jal          a7, 11f
2:                jal          s1, 8f
3:                jal          ra, 13f
4:                jal          t1, 15f
5:                jal          ra, 14f
6:                jal          s4, 0b
7:                jal          ra, 10f
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          tp, 9b
11:               jal          ra, 7b
12:               jal          s3, 2b
13:               jal          ra, 6b
14:               jal          t1, 12b
15:               lui          a7, 529799
sub_4_6:          jal          t1, 7f
0:                jal          t5, 8f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          gp, 0b
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          ra, 2b
7:                jal          ra, 15f
8:                jal          s9, 13f
9:                jal          t4, 11f
10:               jal          ra, 1b
11:               jal          ra, 10b
12:               jal          t1, 14f
13:               jal          ra, 12b
14:               jal          ra, 16f
15:               jal          ra, 9b
16:               srl          s10, a6, gp
sub_4_9:          jal          t1, 11f
0:                jal          ra, 3f
1:                jal          t1, 5f
2:                jal          t1, 14f
3:                jal          ra, 17f
4:                jal          t1, 6f
5:                jal          ra, 12f
6:                jal          t1, 16f
7:                jal          gp, 0b
8:                jal          t1, 7b
9:                jal          ra, 10f
10:               jal          t1, 13f
11:               jal          tp, 1b
12:               jal          s7, 15f
13:               jal          ra, 2b
14:               jal          s5, 8b
15:               jal          tp, 4b
16:               jal          gp, 9b
17:               or           s8, zero, a2
sub_4_0:          jal          t1, 1f
0:                jal          ra, 4f
1:                jal          ra, 0b
2:                jal          t1, 7f
3:                jal          s5, 11f
4:                jal          t1, 10f
5:                jal          t1, 6f
6:                jal          ra, 12f
7:                jal          a1, 3b
8:                jal          ra, 9f
9:                jal          ra, 13f
10:               jal          ra, 2b
11:               jal          ra, 5b
12:               jal          tp, 8b
13:               add          s6, t1, a1
sub_4_13:         jal          t1, 7f
0:                jal          t1, 3f
1:                jal          ra, 11f
2:                jal          s6, 14f
3:                jal          ra, 13f
4:                jal          gp, 18f
5:                jal          ra, 1b
6:                jal          t5, 17f
7:                jal          ra, 16f
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               jal          gp, 15f
11:               jal          ra, 9b
12:               jal          ra, 5b
13:               jal          ra, 12b
14:               jal          ra, 8b
15:               jal          t1, 6b
16:               jal          ra, 2b
17:               jal          t6, 0b
18:               add          t1, s4, s5
sub_4_7:          jal          t1, 14f
0:                jal          tp, 12f
1:                jal          t1, 10f
2:                jal          a0, 3f
3:                jal          s9, 9f
4:                jal          a0, 0b
5:                jal          ra, 6f
6:                jal          tp, 13f
7:                jal          t1, 1b
8:                jal          ra, 2b
9:                jal          s11, 11f
10:               jal          ra, 16f
11:               jal          t1, 15f
12:               jal          t1, 7b
13:               jal          a5, 8b
14:               jal          t4, 5b
15:               jal          gp, 4b
16:               srai         t3, s10, 30
sub_4_5:          jal          t1, 0f
0:                jal          t1, 12f
1:                jal          s7, 13f
2:                jal          t2, 6f
3:                jal          tp, 1b
4:                jal          ra, 7f
5:                jal          gp, 10f
6:                jal          t1, 5b
7:                jal          ra, 9f
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          t1, 8b
12:               jal          tp, 2b
13:               jal          s3, 14f
14:               slli         s11, s3, 29
sub_4_4:          jal          t1, 0f
0:                jal          t1, 13f
1:                jal          ra, 15f
2:                jal          ra, 18f
3:                jal          ra, 2b
4:                jal          ra, 6f
5:                jal          ra, 1b
6:                jal          ra, 16f
7:                jal          ra, 3b
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          s5, 8b
11:               jal          t1, 10b
12:               jal          t1, 17f
13:               jal          ra, 14f
14:               jal          ra, 12b
15:               jal          ra, 11b
16:               jal          ra, 5b
17:               jal          t1, 4b
18:               sltu         s9, a3, t0
                  lui          a7, 472367
                  srai         s6, tp, 23
                  srli         t6, t1, 11
                  xori         a2, sp, -959
                  slti         a4, a1, -1903
                  addi         s9, a0, -2035
                  addi         a6, tp, -241
                  and          s8, t1, t4
                  srai         a4, t3, 12
                  add          ra, a4, s1
                  bne          s1, s1, 26f
                  sra          t3, s1, t3
                  auipc        s0, 672434
                  bgeu         a6, a4, 23f
                  sltu         ra, a3, a2
                  beq          s1, a6, 17f
                  andi         t6, sp, 826
17:               xori         zero, t0, 164
                  blt          s0, t2, 25f
                  srli         a3, t1, 0
                  and          ra, a3, a5
                  xori         s1, a4, -1262
                  bltu         tp, a0, 42f
23:               sll          t4, s7, tp
                  sra          zero, s6, gp
25:               addi         s11, t1, -1962
26:               blt          a1, a5, 34f
                  sub          s9, t3, a4
                  bne          s5, t6, 31f
                  slti         ra, s0, 1179
                  beq          a5, s11, 37f
31:               and          s7, s2, a0
                  sltiu        tp, t1, -1107
                  add          t3, t1, s4
34:               xori         a4, s0, 685
                  xor          s1, s11, a4
                  andi         s9, s5, -450
37:               slt          a0, t1, t3
                  sll          s9, s0, s6
                  srl          zero, a1, t4
                  sltiu        t4, s4, -1531
                  slti         a3, s5, 1612
42:               add          t1, s11, s3
                  and          t1, s0, t2
                  lui          t6, 967507
                  bgeu         s8, s0, 46f
                  srl          s0, t3, s0
                  xor          t4, s0, t1
                  sltiu        s1, a6, 294
                  la           s4, sub_5
                  sub          t6, a4, a1
                  addi         s4, s4, -121
                  auipc        a6, 589131
                  srli         a7, a3, 31
                  beq          a1, zero, sub_4_j7 #branch to jump instr
                  lui          ra, 196770
sub_4_j7:         jalr         t1, s4, 122 #jump sub_4 -> sub_5
46:               ori          a4, s9, 616
                  xori         zero, zero, -1711
                  lui          t5, 1011906
                  srl          ra, a4, s0
                  sltu         a7, t0, a4
                  bne          a2, s1, 64f
                  andi         t5, a1, -1630
                  srai         a7, s6, 18
                  nop
                  addi         a6, a7, 1895
                  sll          s11, a6, s2
                  lui          a0, 386057
                  sltiu        s5, s3, 1201
                  sltiu        t6, a4, -1037
                  srli         s8, s0, 18
                  beq          s1, t5, 63f
                  lui          a3, 797834
63:               sra          s3, t4, s10
64:               sltu         s6, a0, s9
                  addi         tp, t1, -438
                  bne          s7, a5, 77f
                  xori         a1, a5, 1018
                  srli         a4, t1, 26
                  xor          a7, t4, s5
                  addi         s11, t1, -645
                  bne          t4, s4, 72f
72:               blt          a2, a1, 74f
                  sub          t5, s8, s6
74:               sltu         s10, a0, s5
                  sra          a3, t4, tp
                  bgeu         s9, a7, 90f
77:               slt          tp, s8, t5
                  sltiu        a7, a1, 1824
                  sltu         a0, a3, s2
                  slli         s10, s10, 5
                  addi         t1, gp, -563
                  srl          a4, s0, s7
                  slt          a4, a5, s0
                  nop
                  and          s7, s1, s8
                  beq          s7, sp, 96f
                  bge          tp, a4, 103f
                  slli         t5, s0, 11
                  and          s7, s11, a6
90:               slt          tp, s10, s0
                  and          a2, s8, s3
                  ori          a6, s11, -1830
                  slti         s3, t6, -787
                  and          ra, s1, t6
                  auipc        s10, 224326
96:               addi         a3, a4, 1859
                  sltu         gp, t2, a0
                  beq          s1, t3, 108f
                  bgeu         zero, a0, 113f
                  bgeu         t4, s6, 108f
                  nop
                  auipc        t3, 460358
103:              slli         a6, a6, 28
                  bge          s7, s10, 114f
                  ori          gp, s1, -923
                  sra          s3, a4, s6
                  sra          s10, tp, a3
108:              add          s8, a2, a4
                  addi         t3, t1, 531
                  blt          t5, s7, 130f
                  addi         a1, t1, 761
                  sra          a4, a0, t4
113:              blt          s9, s6, 120f
114:              bge          sp, sp, 126f
                  bltu         ra, s2, 132f
                  slti         s3, a3, -946
                  srli         a1, s1, 16
                  bltu         s7, a6, 121f
                  or           s3, a3, sp
120:              sltiu        a3, ra, -300
121:              sub          ra, zero, a7
                  slli         s8, s1, 11
                  sltu         s7, s7, a2
                  blt          s7, s10, 139f
                  nop
126:              sra          zero, a7, a7
                  bne          s11, s4, 129f
                  and          t3, ra, a4
129:              bltu         a0, s11, 140f
130:              bne          a2, t3, 133f
                  auipc        gp, 829579
132:              and          s6, a4, a1
133:              srli         a4, s1, 25
                  bge          zero, s3, 144f
                  srl          tp, a1, a3
                  or           a4, gp, s4
                  srai         a0, t0, 29
                  blt          zero, t4, 150f
139:              add          s11, s9, t0
140:              bne          s0, s4, 142f
                  sub          a6, zero, s11
142:              sltu         s5, a7, t4
                  beq          s5, s0, 157f
144:              sra          a4, zero, s2
                  srl          t3, a4, t3
                  srli         s4, s1, 8
                  sub          s5, s3, s5
                  sll          s11, t4, t2
                  nop
150:              sll          ra, a2, s11
                  auipc        t2, 408322
                  sltu         s1, s4, s5
                  and          a2, t5, s4
                  addi         t6, t1, 1354
                  and          t2, s10, t6
                  xori         a7, gp, -1653
157:              xor          t6, a2, t4
                  sltiu        s0, s10, -698
                  bne          s2, sp, 172f
                  srai         zero, t0, 21
                  and          t2, sp, t1
                  xor          ra, s7, a0
                  sll          t1, s9, s3
                  addi         s10, a3, -715
                  xor          a1, s1, t2
                  bne          zero, t0, 176f
                  sltu         t6, a0, s10
                  or           s7, s6, gp
                  srl          a0, s10, a5
                  addi         s0, t2, 226
                  slli         s5, a3, 8
172:              sub          s4, t1, a2
                  slli         a0, a3, 13
                  bgeu         t6, a7, 176f
                  sll          s4, t5, s4
176:              slli         s7, a4, 19
                  xori         t1, t6, 834
                  bltu         t3, s9, 194f
                  andi         t4, sp, -2040
                  srli         a6, a6, 10
                  srli         t1, zero, 10
                  xori         t4, a5, 348
                  xor          s3, a6, tp
                  bltu         s5, t0, 187f
                  slt          gp, s11, t5
                  slt          s0, a0, a1
187:              slti         a2, t5, 1168
                  srl          s5, t5, zero
                  sltiu        t2, sp, -1623
                  sub          s1, s0, t6
                  or           t3, s2, gp
                  sra          s4, t2, t6
                  sll          a2, sp, ra
194:              sll          a2, a5, a0
                  ori          s11, ra, 1065
                  and          s10, t5, s3
                  bge          t4, tp, 205f
                  xor          t2, t0, s6
                  bne          a0, s8, 207f
                  and          s5, s10, t2
                  add          s0, tp, tp
                  srli         s9, s8, 9
                  beq          t0, tp, 213f
                  srai         s7, s0, 31
205:              blt          s1, tp, 225f
                  andi         s3, s7, 965
207:              beq          s9, a4, 218f
                  sltu         s4, a0, t3
                  sra          a3, t3, s8
                  bgeu         t5, s11, 220f
                  bge          a4, s2, 227f
                  sub          a3, t5, s6
213:              blt          s1, s4, 230f
                  sub          s4, t5, s8
                  srai         a7, t6, 21
                  andi         tp, a3, 1100
                  srli         s4, t1, 12
218:              nop
                  xor          t5, t1, s6
220:              bne          a7, t2, 221f
221:              ori          a3, t1, 321
                  sll          s8, tp, gp
                  slt          t5, a7, sp
                  or           s7, ra, s10
225:              bltu         t3, s4, 227f
                  slt          a7, s0, s11
227:              nop
                  auipc        t1, 244919
                  slt          s1, s5, s2
230:              xor          a2, s1, s6
                  or           s5, t6, a4
                  blt          gp, gp, 247f
                  andi         t5, t6, -1007
                  bgeu         s8, s8, 236f
                  bge          s9, s0, 249f
236:              andi         s0, a2, -1598
                  add          a3, a4, t5
                  sltu         a4, s11, a0
                  bne          s9, a6, 259f
                  and          gp, s6, gp
                  bne          s7, a7, 248f
                  slli         s10, t5, 31
                  srli         gp, t3, 16
                  or           t6, a5, a7
                  or           a1, sp, t5
                  sltu         gp, a4, s4
247:              andi         a7, s4, 1582
248:              andi         s5, s6, 1481
249:              beq          s5, ra, 260f
                  bge          t1, sp, 257f
                  slli         tp, s0, 20
                  ori          s7, gp, 1552
                  addi         a2, s8, -973
                  srl          t5, s6, s0
                  auipc        gp, 639972
                  srai         a6, a4, 9
257:              add          t6, a3, s1
                  bgeu         a2, s8, 261f
259:              ori          t6, zero, 1573
260:              xor          s9, t2, s3
261:              xor          a4, gp, t0
                  slli         tp, a3, 29
                  srli         s8, sp, 21
                  xor          s7, gp, t2
                  sltiu        t5, t4, -2004
                  slli         s6, s4, 26
                  sub          s1, s8, s3
                  srai         s9, s6, 14
                  beq          s10, a6, 270f
270:              add          s0, a0, ra
                  slli         t5, a6, 8
                  srl          s8, t3, s6
                  nop
                  auipc        a6, 957555
                  add          a7, s2, a0
                  sll          s8, s8, ra
                  slt          a0, s2, t1
                  slti         a2, s0, -1010
                  bne          t5, s6, 286f
                  slti         t5, s5, -447
                  sltu         s8, t0, a7
                  srai         s9, s0, 30
                  srai         t6, s4, 8
                  addi         s7, t1, -1321
                  addi         s10, gp, 1459
286:              bge          s5, s3, 289f
                  sltiu        ra, s10, 738
                  ori          s11, t6, 2046
289:              slti         s6, t0, 456
                  xori         a0, t3, -1042
                  slt          t5, s6, s7
                  xori         gp, a1, 70
                  bne          t2, tp, 313f
                  nop
                  sll          a7, a5, ra
                  sll          t4, a3, t3
                  bgeu         t1, a7, 310f
                  or           ra, s6, a2
                  xor          s7, sp, sp
                  bge          sp, s0, 315f
                  xori         t3, t4, 1146
                  andi         t3, s0, 229
                  bne          gp, t2, 313f
                  beq          t0, s6, 311f
                  srl          s8, s4, a7
                  add          t2, a6, tp
                  and          zero, s10, t2
                  sltu         s6, zero, t0
                  or           s7, s8, s5
310:              xori         t4, a7, 1941
311:              bgeu         sp, t6, 322f
                  add          zero, a7, s4
313:              slli         t3, t2, 9
                  slli         s6, a6, 20
315:              andi         a5, t4, -1528
                  lui          s7, 818224
                  sub          s7, a3, s7
sub_4_2:          jal          t1, 1f
0:                jal          t1, 17f
1:                jal          ra, 12f
2:                jal          ra, 14f
3:                jal          ra, 9f
4:                jal          t1, 2b
5:                jal          t1, 13f
6:                jal          gp, 11f
7:                jal          a7, 5b
8:                jal          t2, 3b
9:                jal          ra, 4b
10:               jal          ra, 8b
11:               jal          s5, 7b
12:               jal          t3, 16f
13:               jal          t1, 18f
14:               jal          ra, 6b
15:               jal          t3, 10b
16:               jal          s5, 15b
17:               jal          ra, 19f
18:               jal          ra, 0b
19:               sll          a7, tp, t0
                  and          gp, s1, t0
                  beq          s5, gp, 327f
                  bltu         a6, s11, 321f
321:              slti         s11, a0, -1565
322:              slli         a0, a1, 22
                  slli         a6, t6, 27
                  sll          a1, t4, sp
                  ori          gp, gp, -209
                  xori         s5, a2, -372
327:              sltiu        s4, sp, -412
                  sub          a1, s9, a1
                  beq          s10, a2, 345f
                  beq          t5, s4, 331f
331:              sll          a0, a3, ra
                  auipc        gp, 45783
                  beq          s8, ra, 341f
                  slli         gp, a7, 27
                  lui          a7, 51231
                  srai         s0, a0, 12
                  sll          t6, s10, sp
                  ori          t5, gp, 398
                  bgeu         a7, s9, 350f
                  ori          t3, s7, 205
341:              or           tp, a4, t5
                  sub          s8, sp, ra
                  xor          a0, s5, s8
                  xor          ra, zero, s8
345:              bltu         s10, zero, 347f
                  srai         gp, t6, 16
347:              auipc        t5, 31931
                  blt          a3, s0, 358f
                  or           s6, s1, tp
350:              bne          a5, t5, 367f
                  sll          tp, t0, s4
                  bltu         t1, a4, 362f
                  sub          a6, t6, ra
                  srli         a1, tp, 30
                  srai         t1, a2, 16
                  sub          s0, a4, s9
                  slli         zero, t0, 8
358:              xori         t3, a3, 1804
                  auipc        s0, 577790
                  slli         a0, zero, 17
                  sub          t2, zero, s11
362:              andi         s5, s8, 51
                  andi         a3, s0, 833
                  bne          s7, zero, 371f
                  slli         s6, s8, 18
                  srli         a6, s2, 4
367:              sltu         t2, s8, sp
                  lui          a3, 894270
                  bltu         t1, tp, 371f
                  addi         s9, sp, 1981
371:              xor          a0, s3, a4
                  bge          s2, a3, 386f
                  add          s4, zero, s7
                  sltiu        s0, s7, 1864
                  slti         t3, gp, -1098
                  addi         s6, t1, 964
                  addi         t6, t0, -1297
                  lui          s9, 339187
                  srai         t1, s7, 16
                  sltu         s4, s3, t6
                  srai         s6, s7, 10
                  xori         a0, s0, 515
                  srli         a0, a0, 3
                  addi         s7, a6, 1443
                  la           a2, sub_5
                  srl          t2, s0, sp
                  slli         a4, s10, 30
                  sra          a3, tp, s5
                  or           s9, tp, s10
                  sra          s5, sp, a2
                  addi         a2, a2, -655
                  add          s10, t3, t2
                  ori          a1, t6, 612
                  ori          a1, t4, -371
sub_4_j6:         jalr         t1, a2, 656 #jump sub_4 -> sub_5
                  addi         s3, t1, -765
                  slti         t3, t3, 978
                  bne          a1, tp, 387f
386:              andi         s0, t6, 1782
387:              sub          s6, a3, a1
                  bgeu         a5, s9, 402f
                  addi         gp, t3, 354
                  srli         gp, t4, 13
                  or           ra, zero, s5
                  beq          a7, t1, 404f
                  bne          a7, tp, 403f
                  and          ra, t5, a5
                  bgeu         tp, a6, 415f
                  blt          a6, s10, 399f
                  sra          a4, zero, s3
                  bne          sp, s9, 401f
399:              bgeu         s7, t0, 406f
                  srai         a2, s1, 2
sub_4_15:         jal          t1, 14f
0:                jal          s10, 9f
1:                jal          ra, 4f
2:                jal          ra, 18f
3:                jal          ra, 13f
4:                jal          ra, 20f
5:                jal          ra, 16f
6:                jal          ra, 0b
7:                jal          ra, 17f
8:                jal          t5, 19f
9:                jal          s11, 1b
10:               jal          ra, 21f
11:               jal          ra, 23f
12:               jal          t1, 24f
13:               jal          tp, 22f
14:               jal          ra, 11b
15:               jal          ra, 6b
16:               jal          ra, 8b
17:               jal          ra, 25f
18:               jal          tp, 5b
19:               jal          tp, 10b
20:               jal          tp, 2b
21:               jal          s4, 3b
22:               jal          ra, 12b
23:               jal          ra, 15b
24:               jal          ra, 7b
25:               and          s4, t5, s9
401:              srl          ra, gp, s11
402:              add          t1, gp, t2
403:              sll          t1, s1, s5
404:              slt          s4, a5, s0
                  sltu         t3, t6, s6
406:              beq          s11, a0, 408f
                  xor          s3, t5, s1
408:              ori          s4, tp, -1740
                  beq          t6, s3, 412f
                  srl          t6, t4, t2
                  bltu         s11, a3, 427f
412:              andi         s11, s7, 1952
                  beq          s1, s11, 425f
                  add          gp, s10, s3
415:              add          t4, s1, t5
                  bne          s0, a0, 432f
                  add          a3, gp, a7
                  bne          s1, gp, 421f
                  bltu         s6, sp, 436f
                  blt          t3, s7, 427f
421:              srli         s11, s6, 4
                  nop
                  slti         s6, t3, 663
                  add          t1, a5, a3
425:              slli         s4, a4, 0
                  slt          s3, a2, t6
427:              slt          a5, sp, t5
                  bltu         s8, t4, 430f
                  srli         s1, s9, 5
430:              bne          s5, gp, 441f
                  or           t6, s6, tp
432:              srai         a5, t5, 28
                  beq          s3, t4, 435f
                  srl          a5, t0, s9
435:              slt          s10, a5, a2
436:              sll          t3, a4, t3
                  addi         s6, a1, 1317
                  bltu         t0, t1, 458f
                  lui          t1, 172739
                  auipc        ra, 797372
441:              blt          t4, t1, 443f
                  beq          s8, t6, 457f
443:              addi         s11, gp, 907
                  srai         s10, s6, 23
                  and          s7, tp, a1
                  xor          s4, s1, s10
                  blt          a2, a3, 457f
                  ori          ra, a3, -150
                  andi         t1, a5, 1419
                  blt          a5, zero, 457f
                  add          t2, s3, a5
                  nop
                  nop
                  sltiu        t1, t0, -1467
                  bgeu         s11, a6, 468f
                  nop
457:              bgeu         zero, t6, 477f
458:              blt          s1, a5, 465f
                  bgeu         t3, a4, 470f
                  sub          t2, s4, s0
                  bne          zero, a7, 477f
                  and          t3, s3, a2
                  xor          a4, zero, s5
                  beq          t2, t4, 467f
465:              add          s9, tp, tp
                  add          s1, s1, s4
467:              xor          s4, s1, zero
468:              nop
                  andi         t2, tp, 1125
470:              bge          s11, t5, 480f
                  ori          a7, zero, 687
                  bltu         a6, a3, 480f
                  lui          a0, 87258
                  srai         s4, t2, 1
                  srl          t6, a3, s9
                  bge          a4, s6, 479f
477:              slt          gp, s8, s9
                  or           s4, t6, ra
479:              blt          s6, s8, 493f
480:              sltu         tp, s8, t5
                  add          a4, s9, s11
                  bgeu         ra, tp, 484f
                  slt          s3, a0, s8
484:              bltu         s7, s1, 498f
                  slti         t5, tp, -1091
                  srl          a4, t3, a1
                  bge          tp, t6, 497f
                  slli         t1, sp, 26
                  slli         a0, sp, 7
                  sub          s0, s7, s11
                  ori          s0, s4, -1221
                  blt          s9, ra, 493f
493:              auipc        t4, 187376
                  addi         s9, ra, 1438
                  sltiu        a3, a1, -659
                  sra          a4, t2, s5
497:              xori         s9, s8, -1741
498:              xori         ra, t1, -692
                  xori         gp, s9, 623
                  slli         s4, ra, 25
                  bge          s7, s11, 502f
502:              slli         a0, t5, 31
                  sltiu        s10, s6, 1986
                  slti         ra, s9, 765
                  xori         s6, t5, 1341
                  xor          s1, s10, ra
                  add          a3, s3, t4
                  or           s7, a1, s10
                  slt          s4, a3, a6
                  slti         t2, s1, -1998
                  ori          t1, s7, -1680
                  addi         t3, a7, 316
                  bne          s0, s2, 523f
                  sra          t5, t1, s0
                  slt          a6, a1, s1
                  ori          s7, t0, 1764
                  srli         s5, a2, 10
                  xor          s6, a6, a5
                  addi         s3, t4, 560
                  add          a0, ra, gp
                  lui          s6, 491337
                  xor          a3, s5, s4
523:              slt          gp, t3, t5
                  slt          ra, gp, s9
                  sltu         a7, s11, s5
                  xori         s7, s0, 1739
                  sll          s8, t3, t3
                  slti         t6, a6, 1161
                  bgeu         s3, ra, 537f
                  auipc        s6, 528036
                  ori          tp, a4, 1466
                  bne          a6, t0, 535f
                  auipc        gp, 541944
                  nop
535:              bltu         t0, t1, 536f
536:              and          t5, a3, a4
537:              srli         s11, t5, 7
                  blt          s1, a4, 558f
                  nop
                  sub          zero, a3, t3
                  bgeu         t2, t3, 542f
542:              lui          s0, 967563
                  or           t2, t0, t2
                  sltiu        s0, a4, 1150
                  auipc        s6, 344090
                  lui          t1, 362225
                  and          t4, s7, ra
                  sltu         zero, t1, a5
                  sub          gp, t3, gp
                  bltu         sp, a3, 557f
                  or           a2, t1, t4
                  ori          t3, t1, -480
                  srai         s7, s4, 18
                  bltu         sp, sp, 556f
                  srl          t5, t1, ra
556:              sltiu        s3, t2, 464
557:              bge          a6, zero, 564f
558:              srli         gp, s7, 31
                  lui          a1, 582223
                  andi         s9, ra, -350
                  ori          s5, a4, -1247
                  blt          s10, s6, 565f
                  blt          a7, s6, 573f
564:              auipc        a2, 784085
565:              slti         a1, t3, 382
                  sltiu        a7, t4, 307
                  bltu         s6, s3, 575f
                  bne          s1, s5, 580f
                  beq          s7, a6, 585f
                  lui          gp, 803644
                  srli         gp, gp, 24
                  sltiu        a5, a6, -870
573:              bge          tp, s4, 575f
                  srai         tp, gp, 14
575:              xor          a0, a3, zero
                  slti         a2, s6, -1987
                  slli         s11, a3, 21
                  add          s6, s5, s9
                  slt          a5, s3, s5
580:              bltu         a3, s5, 597f
                  auipc        t4, 914207
                  addi         t4, s6, -610
                  or           s7, s11, t3
                  nop
585:              slti         ra, s7, -1222
                  bltu         s6, s3, 602f
                  sra          s0, a0, t4
                  auipc        s6, 443546
                  addi         a6, t5, 920
                  blt          t1, a0, 601f
                  slt          a1, t0, a5
                  sltu         s4, s2, s6
                  or           a1, sp, s3
                  add          a1, t2, a0
                  slti         s1, s3, 1699
                  slti         ra, s7, -1957
597:              slli         s1, s4, 18
                  nop
                  sltiu        t5, t3, 1911
                  sltu         a3, t1, s0
601:              blt          s0, a1, 603f
602:              add          zero, zero, a2
603:              slti         s6, s7, -815
                  or           a4, s4, zero
                  sra          a2, s2, s2
                  sltu         s11, t6, a2
                  srl          t4, sp, zero
                  addi         s7, s0, 309
                  beq          s9, t5, 619f
                  andi         gp, tp, 953
                  and          a6, gp, s10
                  auipc        s1, 773838
                  srai         t3, t5, 31
                  ori          s7, s11, -48
                  auipc        a1, 966478
                  srli         a0, a7, 20
                  addi         s11, s7, -1505
                  sra          a7, sp, s1
619:              xor          a0, a4, zero
                  srl          s5, s0, tp
                  or           t6, s1, t2
                  bge          s0, a3, 624f
                  auipc        a5, 441540
624:              sltu         s1, s10, a2
                  blt          a5, s10, 636f
                  sltu         ra, t6, s7
                  xori         s8, a2, 294
                  sra          s7, a2, s2
                  bltu         a7, s4, 649f
                  addi         s10, a3, -1502
                  srl          t1, s3, s10
                  bne          a4, zero, 640f
                  beq          t5, s3, 647f
                  beq          a0, s1, 647f
                  addi         gp, a2, -96
636:              sltu         a4, a1, s9
                  or           a1, s6, s11
                  nop
                  sll          s10, s4, s11
640:              andi         s11, gp, -858
                  auipc        tp, 408939
                  sra          s3, tp, zero
                  sll          s4, s4, a0
                  bltu         s7, s6, 654f
                  slt          s4, s0, s2
                  addi         s0, t2, 57
647:              srli         a3, gp, 12
                  sll          s10, s2, s2
649:              xori         a0, t4, -712
                  slt          a2, s2, s7
                  auipc        s0, 303201
                  xor          a5, ra, t4
                  xori         a3, a3, -123
654:              srli         t6, s9, 12
                  sltiu        zero, tp, -876
                  ori          tp, a5, -392
                  andi         a6, t4, -945
                  sll          a1, t4, t2
                  addi         s5, t5, -1071
                  sltu         a4, s11, t4
                  auipc        s1, 439845
                  slt          s10, a7, s8
                  auipc        a2, 136727
                  srl          s7, s5, t3
                  lui          t1, 208849
                  srl          a3, a5, s9
                  slli         t6, s10, 1
                  sub          t6, t6, t3
                  addi         s10, s3, -1380
                  bltu         t1, s2, 684f
                  srli         t3, t6, 14
                  blt          gp, a2, 682f
                  sltiu        a4, t6, -1893
                  sll          s1, s1, a5
                  sltiu        a2, s8, 177
                  sub          a5, a4, zero
                  and          tp, gp, t4
                  ori          a1, t5, 1224
                  bltu         a2, s0, 694f
                  sltu         s1, t5, s0
                  slt          s10, a5, t5
682:              nop
                  sltu         s10, s11, a3
684:              auipc        s8, 146631
                  srli         t1, s4, 9
                  or           s10, a2, s5
                  srl          s6, gp, s5
                  blt          s7, t6, 691f
                  bgeu         a2, zero, 696f
                  sltu         s0, tp, t2
691:              sll          t1, a7, t3
                  beq          a2, gp, 708f
                  add          s4, t5, t3
694:              sltiu        a7, a5, -1392
                  ori          a1, s11, -391
696:              xor          a1, t6, s4
                  bne          t2, a7, 699f
                  lui          t6, 357972
699:              srai         t1, s8, 0
                  and          t6, s10, s10
                  sub          a7, s0, a4
                  sltiu        t1, s7, -1486
                  andi         t3, t4, -1359
                  slli         a4, a4, 12
                  beq          gp, s1, 713f
                  bgeu         tp, t1, 717f
                  slti         a4, s0, -948
708:              sra          t5, a1, s8
                  nop
                  blt          zero, s6, 712f
                  slt          s11, s5, s5
712:              beq          zero, s5, 722f
713:              slli         s6, s5, 31
                  slt          a4, t3, a2
                  srl          a7, s11, t1
                  sra          s0, s1, s9
717:              sra          t5, a6, s8
                  or           t5, a0, a6
                  addi         a6, t5, -999
                  auipc        s0, 649322
                  srl          a4, a1, s0
722:              and          s10, a3, s1
                  srli         a4, t5, 4
                  sltu         zero, t0, a6
                  slti         t3, t2, 411
                  auipc        s9, 854762
                  bge          a6, a1, 744f
                  xor          s6, s4, ra
                  slti         t4, a5, -347
                  srl          a7, tp, tp
                  or           t5, a0, t0
                  srl          t4, s0, zero
                  sltiu        gp, a5, 414
                  sra          ra, a4, s5
                  lui          t4, 901729
                  slli         s6, a2, 28
                  lui          s6, 268219
                  sra          gp, sp, s8
                  blt          a4, a6, 746f
                  nop
                  blt          s0, t2, 761f
                  bltu         s5, t6, 762f
                  srli         a4, t3, 15
744:              srl          zero, s4, sp
                  slli         t6, s0, 3
746:              srli         s7, s4, 17
                  srl          t2, a6, a1
                  slti         t5, s10, 322
                  sltiu        s6, a4, -115
                  slt          s9, a1, t5
                  sub          t1, zero, sp
                  xor          a7, s11, t5
                  sltu         t4, t1, t1
                  add          a3, gp, s5
                  or           t3, s5, t0
                  ori          a1, gp, 1208
                  sltu         a0, s6, s9
                  slti         s1, s7, 1615
                  blt          s4, a6, 762f
                  srai         ra, gp, 9
761:              or           s9, sp, a1
762:              nop
                  bne          t2, s3, 777f
                  sra          s5, s10, t0
                  slti         s5, a5, -1607
                  sra          a2, t1, zero
                  sll          s7, s3, s5
                  slti         t1, s6, -492
                  sltiu        zero, zero, -383
                  auipc        s6, 648645
                  bne          t1, s6, 784f
                  addi         s3, a2, 472
                  srli         s6, s5, 19
                  ori          t4, t5, 244
                  slli         t2, s9, 14
                  srli         t3, s3, 16
777:              andi         gp, tp, -1459
                  ori          a4, s11, -390
                  slt          s0, tp, a3
                  slli         t1, a0, 13
                  bge          t2, s9, 782f
782:              slli         a4, s7, 9
                  beq          a7, s4, 794f
784:              andi         s10, t1, 881
                  andi         s7, t0, -355
                  add          t2, tp, s5
                  auipc        ra, 66898
                  sll          s6, t4, s8
                  sltu         a6, sp, a1
                  blt          s3, a3, 805f
                  addi         s8, t5, -47
                  nop
                  srl          t4, s7, s10
794:              sltiu        s4, s0, -901
                  blt          t0, t6, 802f
                  sll          s11, s11, a6
                  auipc        a5, 537822
                  srl          a4, s1, a0
                  sltu         a2, s10, t1
                  slli         a7, a5, 5
                  lui          zero, 372614
802:              lui          s1, 31398
                  srli         gp, t2, 11
                  bne          t4, s0, 811f
805:              auipc        gp, 944310
                  blt          s6, s3, 816f
                  sub          s0, zero, s2
                  andi         s10, s6, -358
                  bltu         t5, a7, 817f
                  lui          a5, 974181
811:              andi         a3, a5, -162
                  sltu         a4, t0, a3
                  beq          t0, a1, 815f
                  lui          s4, 1012763
815:              sub          s3, sp, t0
816:              auipc        tp, 150824
817:              and          gp, s11, t0
                  srli         s3, s10, 28
                  nop
                  xor          s10, t2, s5
                  srai         s1, s4, 19
                  sll          s5, s6, t5
                  blt          t5, t3, 826f
                  slli         s7, s3, 14
                  beq          a2, a7, 835f
826:              beq          s1, a3, 828f
                  blt          tp, s11, 843f
828:              slti         t1, s6, -123
                  ori          a3, s0, 135
                  srli         s4, s7, 31
                  bne          zero, s0, 845f
                  slli         t5, s11, 0
                  add          t3, t6, t0
                  slti         a4, ra, 66
835:              slti         a2, t3, -1192
                  srl          s9, s11, s10
                  sra          t6, s9, t4
                  slli         s4, s0, 31
                  srai         t4, t3, 28
                  srli         t6, s2, 18
                  blt          a5, t0, 853f
                  nop
843:              srai         t6, s10, 22
                  slt          a7, s8, s5
845:              srai         ra, a2, 17
                  blt          s11, s6, 856f
                  or           s3, s10, t2
                  slti         t2, sp, 1027
                  slt          a4, s2, a3
                  xori         a5, t3, -149
                  sub          s4, a2, a0
                  or           s5, s6, t5
853:              and          a4, sp, t0
                  lui          s9, 194042
                  slli         a1, t1, 6
856:              sll          a2, s8, t1
                  sub          t1, s0, s9
                  bltu         s10, ra, 861f
                  srli         s0, t5, 6
                  srai         a7, s11, 23
861:              or           t6, s7, sp
                  and          t2, zero, s8
                  addi         s8, t4, -1671
                  ori          a0, a1, -1798
                  srli         t3, s2, 6
                  bgeu         gp, t3, 867f
867:              sll          s6, s2, s5
                  beq          s4, t6, 870f
                  ori          gp, zero, -327
870:              addi         s9, t3, 216
                  blt          s5, zero, 874f
                  bgeu         gp, a1, 878f
                  ori          s8, s8, -1793
874:              sltu         s7, s8, s2
                  bgeu         t3, s1, 878f
                  and          a0, a7, s1
                  slt          a3, a2, s5
878:              srli         a7, a6, 28
                  lw           t1, 4(t0)
                  addi         t0, t0, 64
                  andi         a1, t5, 1259
                  sltiu        t4, a0, 698
                  or           zero, gp, a4
                  sltu         tp, ra, s6
                  and          s1, s8, s0
                  sltiu        s4, s0, -6
                  lui          s11, 323398
                  xor          s7, s6, sp
                  sll          gp, a1, sp
                  slt          s6, s3, s11
1285:             addi x3, x6, 0
1285:             jalr x3, x3, 0
sub_3:            sub          s11, a1, s9
                  beq          s10, a3, sub_3_stack_p
                  lui          a2, 607996
                  lui          a7, 48644
                  slli         t4, tp, 12
sub_3_stack_p:    addi         t0, t0, -48
                  sw           t1, 4(t0)
                  xori         s3, t1, 286
                  srl          a5, s1, a6
                  auipc        s5, 117568
                  lui          tp, 614136
                  sltiu        a1, t0, -704
                  addi         a5, t4, -605
sub_3_3:          jal          t1, 20f
0:                jal          ra, 8f
1:                jal          t6, 23f
2:                jal          ra, 24f
3:                jal          ra, 5f
4:                jal          s3, 0b
5:                jal          ra, 21f
6:                jal          ra, 9f
7:                jal          t1, 4b
8:                jal          ra, 18f
9:                jal          ra, 16f
10:               jal          s7, 17f
11:               jal          ra, 22f
12:               jal          s0, 11b
13:               jal          a1, 7b
14:               jal          s7, 1b
15:               jal          tp, 2b
16:               jal          ra, 19f
17:               jal          ra, 15b
18:               jal          ra, 6b
19:               jal          a4, 10b
20:               jal          ra, 14b
21:               jal          tp, 12b
22:               jal          a0, 13b
23:               jal          tp, 3b
24:               slt          tp, s7, zero
sub_3_1:          jal          t1, 8f
0:                jal          ra, 5f
1:                jal          t1, 0b
2:                jal          tp, 13f
3:                jal          t1, 4f
4:                jal          a1, 12f
5:                jal          s9, 9f
6:                jal          ra, 1b
7:                jal          tp, 16f
8:                jal          ra, 15f
9:                jal          ra, 7b
10:               jal          ra, 6b
11:               jal          s8, 17f
12:               jal          ra, 10b
13:               jal          gp, 18f
14:               jal          t2, 2b
15:               jal          t1, 11b
16:               jal          ra, 14b
17:               jal          t1, 3b
18:               srli         a5, t0, 7
sub_3_4:          jal          t1, 2f
0:                jal          ra, 19f
1:                jal          ra, 10f
2:                jal          ra, 20f
3:                jal          ra, 6f
4:                jal          ra, 3b
5:                jal          ra, 8f
6:                jal          tp, 14f
7:                jal          ra, 0b
8:                jal          tp, 12f
9:                jal          a0, 17f
10:               jal          ra, 5b
11:               jal          s0, 18f
12:               jal          s0, 11b
13:               jal          tp, 15f
14:               jal          a4, 1b
15:               jal          a4, 21f
16:               jal          t1, 9b
17:               jal          ra, 4b
18:               jal          t1, 7b
19:               jal          ra, 13b
20:               jal          gp, 16b
21:               ori          s9, a0, 1248
sub_3_6:          jal          t1, 17f
0:                jal          ra, 25f
1:                jal          gp, 14f
2:                jal          t1, 6f
3:                jal          ra, 16f
4:                jal          t1, 23f
5:                jal          ra, 26f
6:                jal          ra, 9f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          t1, 15f
10:               jal          s1, 12f
11:               jal          ra, 28f
12:               jal          a3, 11b
13:               jal          ra, 5b
14:               jal          ra, 8b
15:               jal          ra, 4b
16:               jal          t1, 1b
17:               jal          tp, 24f
18:               jal          gp, 19f
19:               jal          t1, 21f
20:               jal          ra, 13b
21:               jal          ra, 10b
22:               jal          a1, 7b
23:               jal          t1, 27f
24:               jal          ra, 20b
25:               jal          ra, 18b
26:               jal          ra, 22b
27:               jal          a3, 0b
28:               sll          s4, a0, s2
sub_3_2:          jal          t1, 2f
0:                jal          ra, 14f
1:                jal          ra, 17f
2:                jal          ra, 3f
3:                jal          s6, 15f
4:                jal          ra, 13f
5:                jal          s3, 7f
6:                jal          ra, 5b
7:                jal          ra, 16f
8:                jal          t1, 12f
9:                jal          gp, 0b
10:               jal          t1, 11f
11:               jal          t1, 18f
12:               jal          ra, 10b
13:               jal          ra, 1b
14:               jal          a2, 8b
15:               jal          ra, 4b
16:               jal          t1, 9b
17:               jal          ra, 6b
18:               ori          a5, t6, -979
                  bge          t0, s7, 10f
                  sub          gp, s6, sp
                  andi         zero, s10, -1778
                  ori          ra, t5, -1376
                  blt          s8, s8, 8f
                  xor          t3, tp, s6
                  or           a4, s3, a4
                  xor          zero, t3, s10
8:                auipc        s6, 1018942
                  ori          s3, t3, -692
10:               and          a7, s4, t1
                  or           a1, a7, t3
                  xori         a2, s8, -755
                  slti         t1, s3, -828
                  bge          s1, ra, 19f
                  lui          a2, 516648
                  xor          ra, ra, s3
                  xor          s9, s11, s5
                  slli         gp, a3, 12
19:               auipc        s1, 202153
                  slt          s1, s8, s10
                  bltu         a0, t5, 40f
                  blt          a4, t0, 26f
                  slt          a7, t3, zero
                  and          s6, s9, s10
                  add          gp, t6, t0
26:               or           a6, s9, a6
                  auipc        a5, 255399
                  addi         zero, ra, -295
                  and          s3, s7, a7
                  sltiu        gp, sp, 184
                  sub          tp, zero, s4
                  bne          a4, gp, 33f
33:               blt          a0, s8, 41f
                  nop
                  slt          s6, a1, s9
                  sra          s0, t5, t4
                  srl          ra, a7, s3
                  lui          t5, 338840
                  add          a1, zero, s5
40:               slli         s1, a4, 25
41:               bltu         s2, s1, 45f
                  ori          a1, a5, -1100
                  sub          t5, a2, t2
                  srai         t2, a3, 0
45:               bgeu         t0, a2, 50f
                  sll          a7, a1, ra
                  auipc        s6, 422080
                  bltu         s6, ra, 50f
                  sra          t5, ra, t4
50:               lui          s3, 126659
                  slt          s1, t5, sp
                  blt          s3, gp, 53f
53:               ori          t1, s0, 978
                  sub          a4, zero, a4
                  sltu         s11, gp, a2
                  auipc        a1, 674071
                  blt          s8, t3, 74f
                  blt          a1, t5, 70f
                  srai         s10, s3, 11
                  bge          a6, s2, 61f
61:               add          s4, t6, a1
                  xori         t6, s3, 332
                  xor          a1, tp, t0
                  andi         s11, a0, -285
                  slli         s1, t4, 2
                  sll          s6, s5, a7
                  bge          s10, t3, 74f
                  blt          a4, s3, 78f
                  sltu         t1, t2, ra
70:               sll          t5, s6, t6
                  slli         a1, s9, 1
                  auipc        s0, 927175
                  sll          s8, s0, s10
74:               bgeu         s9, sp, 78f
                  bltu         t2, a7, 83f
                  slt          t6, a5, t3
                  srli         t2, a7, 6
78:               slli         a4, s9, 13
                  addi         s4, a0, -646
                  auipc        t1, 898652
                  sltu         tp, tp, s4
                  sltu         ra, s10, t5
83:               xori         t4, sp, 1316
                  srai         s11, s5, 27
                  xori         a4, t3, -618
                  sra          a7, zero, gp
                  sra          a6, s5, s6
                  bgeu         t6, tp, 105f
                  sltu         a5, s8, s3
                  blt          gp, s4, 110f
                  and          a7, t2, t6
                  slli         s5, s6, 17
                  sltu         a0, sp, s3
                  add          ra, t6, a1
                  beq          s4, sp, 100f
                  addi         t2, s9, 1245
                  sub          gp, sp, s2
                  sll          s8, t3, gp
                  bgeu         a3, a6, 117f
100:              slti         a6, t0, 749
                  addi         s5, s6, 1333
                  slti         t2, s7, -97
                  srl          t1, s6, s10
                  and          tp, t1, t6
105:              xor          s6, t5, s2
                  sub          s8, s5, a6
                  ori          s6, a2, -447
                  bne          tp, t6, 126f
                  blt          tp, s10, 117f
110:              sub          a2, s5, t3
                  add          s0, tp, a1
                  xor          s4, a1, s1
                  lui          s1, 1038721
                  blt          s10, a0, 128f
                  nop
                  sll          a4, s0, t0
117:              lui          t1, 583446
                  slt          gp, ra, s4
                  and          a2, t5, gp
                  andi         s7, t6, 826
                  add          s7, a3, s6
                  srl          s9, sp, s6
                  bne          a4, s0, 140f
                  or           s7, a4, s7
                  srli         s3, a3, 17
126:              sltiu        s6, tp, -25
                  ori          t3, s4, -1278
128:              blt          sp, s6, 146f
                  or           s10, zero, zero
                  bgeu         s4, sp, 133f
                  srl          a2, t4, ra
                  srai         s7, t4, 13
133:              slli         ra, a2, 8
                  xor          t3, zero, t3
                  sra          zero, s0, s5
                  sub          a1, gp, a7
                  sll          a1, a6, a1
                  andi         ra, tp, -1447
                  lui          s3, 420392
140:              srli         gp, zero, 21
                  addi         a2, a0, 1334
                  srl          t5, a5, a6
                  beq          s4, s11, 144f
144:              andi         s1, s1, 343
                  slt          s6, t2, a2
146:              slt          a6, t6, tp
                  sltiu        tp, a0, -723
                  slli         a5, t3, 19
                  xori         a7, s11, 708
                  add          a7, s4, s9
                  andi         s10, sp, 1432
                  bgeu         s11, a4, 165f
                  andi         a3, s3, -920
                  or           s9, t4, s6
                  and          t6, s2, t3
                  addi         s7, s8, 430
                  addi         zero, gp, -751
                  auipc        a6, 346551
                  xori         t6, s11, 1668
                  bge          tp, s10, 164f
                  sub          s8, gp, t6
                  bge          ra, a5, 169f
                  andi         t3, s5, 2033
164:              bne          t5, a4, 169f
165:              slli         s11, a0, 1
                  sltiu        zero, s1, -279
                  and          a6, a2, s0
                  beq          t3, s3, 188f
169:              sltiu        s0, sp, 1763
                  or           s8, s8, t5
                  xor          a2, t0, ra
                  ori          s4, a5, 800
                  bge          t0, s8, 191f
                  addi         t3, s1, -1081
                  sltu         s5, t6, s2
                  bge          a0, t6, 193f
                  bltu         tp, s9, 185f
                  bne          t6, t1, 183f
                  add          s0, s11, t1
                  bne          t5, a2, 188f
                  ori          gp, a4, -2007
                  auipc        s8, 455265
183:              slti         gp, s6, -1760
                  srli         a1, a1, 15
185:              sltiu        s8, s2, 1342
                  sltiu        a0, zero, 1450
                  bne          s9, gp, 204f
188:              bltu         tp, a3, 189f
189:              srl          ra, s8, tp
                  srai         t5, gp, 31
191:              auipc        s3, 521566
                  sll          a2, s10, t2
193:              sra          a2, a3, t3
                  srl          s3, s2, a2
                  or           t4, s8, ra
                  bge          s3, s8, 197f
197:              sltu         gp, t2, a3
                  blt          s6, t5, 203f
                  sltu         a4, t4, a0
                  sll          s8, t3, s1
                  bltu         a4, s8, 203f
                  bne          s7, t2, 203f
203:              slt          s1, s4, ra
204:              lui          a0, 118658
                  slli         a7, t0, 21
                  blt          t4, a6, 210f
                  sub          s11, t1, a2
                  bge          s3, s1, 225f
                  bgeu         s8, s3, 227f
210:              slti         t6, s6, -902
                  bltu         t3, a1, 230f
                  sra          zero, t5, a1
                  or           a0, a2, a0
sub_3_5:          jal          t1, 20f
0:                jal          s6, 7f
1:                jal          ra, 23f
2:                jal          ra, 14f
3:                jal          ra, 26f
4:                jal          a6, 6f
5:                jal          ra, 13f
6:                jal          gp, 3b
7:                jal          t1, 21f
8:                jal          tp, 18f
9:                jal          ra, 19f
10:               jal          t4, 8b
11:               jal          s6, 25f
12:               jal          ra, 15f
13:               jal          ra, 16f
14:               jal          ra, 27f
15:               jal          s4, 0b
16:               jal          t1, 11b
17:               jal          s7, 9b
18:               jal          t1, 1b
19:               jal          s9, 4b
20:               jal          s3, 5b
21:               jal          ra, 2b
22:               jal          tp, 24f
23:               jal          t1, 12b
24:               jal          ra, 10b
25:               jal          ra, 17b
26:               jal          ra, 22b
27:               srli         s8, s5, 29
                  xor          s10, a2, s0
                  srl          t2, a1, s5
                  srai         t2, s4, 17
                  or           t6, a1, s2
                  beq          t6, s8, 222f
                  sra          tp, a2, s9
                  sltiu        s10, t1, -1301
                  srai         a0, gp, 30
222:              beq          s1, s2, 232f
                  xor          a6, t4, s11
                  auipc        a3, 580657
225:              addi         a3, a5, -604
                  bgeu         s8, ra, 227f
227:              blt          a7, t6, 235f
                  andi         t5, s2, 180
                  or           t1, t4, s7
230:              sltu         t2, s0, t6
                  sltu         s1, s3, s3
232:              slt          a1, a1, sp
                  bne          a5, tp, 243f
                  slli         s0, tp, 7
235:              auipc        s4, 959241
                  bltu         s6, ra, 249f
                  bltu         s3, s6, 251f
                  sltu         a4, t4, s10
                  sltu         a2, s8, t3
                  sll          t4, a2, t0
                  bge          s7, a1, 244f
                  addi         s0, t1, -1281
243:              auipc        zero, 637351
244:              sra          t4, t4, s5
                  bgeu         s2, s11, 257f
                  sltiu        t2, tp, 1292
                  bltu         s4, t0, 251f
                  bne          a2, s0, 266f
249:              slti         a7, s9, 201
                  sll          a0, a0, s7
251:              and          s6, s1, a1
                  auipc        a3, 105634
                  or           t4, s8, t4
                  nop
                  sub          a4, s5, a4
                  bgeu         t6, s11, 260f
257:              slti         a1, s8, -430
                  slti         s1, a7, -1379
                  bne          s2, ra, 276f
260:              andi         a4, sp, -1409
                  sub          s7, t4, a5
                  sub          a5, s0, ra
                  blt          sp, t6, 265f
                  sltu         s0, a1, a7
265:              srai         ra, gp, 27
266:              slli         s7, s9, 5
                  srl          s0, sp, zero
                  xor          zero, a3, s6
                  bne          s4, a7, 272f
                  bge          t4, a6, 282f
                  sltu         s11, zero, s3
272:              auipc        a7, 395465
                  and          s11, a4, tp
                  andi         zero, zero, -1218
                  sltu         ra, s10, t3
276:              bgeu         s5, s7, 277f
277:              add          ra, s2, a6
                  srli         ra, ra, 3
                  srli         t3, s3, 4
                  nop
                  sll          zero, a6, s1
282:              bgeu         t4, a0, 289f
                  xor          a1, s11, s0
                  xor          s3, s3, s10
                  bge          a2, a5, 303f
                  srl          s6, t0, gp
                  or           a4, a1, a2
                  srli         gp, s5, 30
289:              xor          s0, s5, s4
                  srai         t3, s8, 30
                  bne          a5, a1, 311f
                  auipc        a2, 373544
                  bge          ra, s1, 294f
294:              xori         s1, a2, -910
                  add          ra, a6, s1
                  srl          s8, t0, ra
                  slli         s0, s4, 9
                  beq          s0, s4, 317f
                  sltiu        s4, s7, -70
                  nop
                  and          a3, a6, s9
                  srai         t3, t1, 17
303:              srli         a6, s11, 20
                  sltu         a0, a2, s0
                  xor          s7, a1, s2
                  bge          t1, s3, 324f
                  srl          s6, ra, sp
                  ori          s0, s2, 853
                  blt          s4, t4, 323f
                  beq          gp, t0, 318f
311:              blt          s4, a3, 328f
                  srli         t4, a2, 21
                  srai         a6, s7, 11
                  or           zero, a1, t5
                  andi         t3, s4, 1491
                  or           t6, s9, gp
317:              slli         a1, t4, 8
318:              sll          s5, t1, a5
                  or           s9, t6, s6
                  sll          a2, s3, s11
                  auipc        s5, 130152
                  srai         s10, t4, 11
323:              bgeu         a1, s10, 341f
324:              andi         s3, ra, 117
                  bge          t2, s5, 333f
                  add          s8, s11, s8
                  sra          t6, gp, zero
328:              srl          t2, zero, a0
                  and          a7, a5, a0
                  andi         t1, t6, -698
                  or           zero, a7, s1
                  srai         a0, s2, 8
333:              lui          s7, 774495
                  auipc        s6, 863963
                  sltiu        gp, a5, 2030
                  sub          s1, a7, sp
                  andi         s4, t3, 666
                  sra          t4, s2, t1
                  slli         a0, a4, 31
                  bltu         a3, s5, 344f
341:              bge          t6, s3, 354f
                  andi         t6, a4, -1634
                  slt          a2, a0, s0
344:              andi         t2, s8, 1600
                  srl          t2, s11, s9
                  add          s6, s10, a3
                  xori         s11, t0, -1981
                  or           s1, a0, s2
                  slli         t1, sp, 8
                  xori         t1, a5, -1662
                  sltiu        s5, s2, 1151
                  bltu         t3, t3, 357f
                  blt          s6, s3, 354f
354:              addi         s10, t5, -1708
sub_3_0:          jal          t1, 13f
0:                jal          t1, 10f
1:                jal          t1, 6f
2:                jal          s1, 3f
3:                jal          tp, 1b
4:                jal          ra, 11f
5:                jal          gp, 12f
6:                jal          ra, 8f
7:                jal          ra, 5b
8:                jal          ra, 7b
9:                jal          t2, 2b
10:               jal          s9, 4b
11:               jal          ra, 14f
12:               jal          t4, 0b
13:               jal          ra, 9b
14:               sub          t5, t3, t5
                  addi         s3, a1, -987
                  add          s1, s10, s1
357:              sltiu        a4, s11, -899
                  add          t5, zero, s6
                  bltu         a4, s3, 364f
                  srai         tp, s3, 1
                  addi         a1, t5, -1875
                  bgeu         a4, s6, 367f
                  add          s9, t5, t6
364:              sra          a7, s7, s9
                  srai         s11, s5, 25
                  sltu         t5, zero, a6
367:              bltu         t4, s6, 377f
                  sll          s11, a1, a0
                  ori          t4, t6, 1699
                  srl          t6, sp, s10
                  srai         a0, a2, 7
                  srai         s0, a3, 21
                  srli         s0, t5, 31
                  srl          a2, s7, s11
                  nop
                  bge          s8, a3, 380f
377:              nop
                  sll          t2, t4, zero
                  auipc        s9, 763642
380:              sub          s0, s7, s7
                  lw           t1, 4(t0)
                  lui          s4, 604908
                  addi         a5, t2, -195
                  addi         t0, t0, 48
                  xori         s3, sp, 632
                  nop
                  or           s11, s1, s9
565:              addi x17, x6, 1
565:              jalr x17, x17, 0
sub_1:            srli         a0, t0, 26
                  slli         s6, a6, 30
                  ori          s11, s8, -1374
                  addi         s10, a3, -252
                  bgeu         s0, s6, sub_1_stack_p
                  sra          s8, a6, tp
sub_1_stack_p:    addi         t0, t0, -48
                  add          s7, a1, s9
                  sw           t1, 4(t0)
                  srli         a7, a2, 11
                  srai         s4, a3, 20
                  ori          s0, s3, 20
                  or           a6, a6, s10
                  xor          a6, s7, gp
                  sra          t6, s4, s11
                  slt          t6, s4, a5
                  sll          s7, t0, t0
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  la           s9, sub_3
                  srai         a6, s9, 5
                  addi         s9, s9, -401
                  sra          a3, a1, sp
                  slti         s0, s6, -930
                  ori          t2, s10, 968
                  auipc        gp, 889165
                  srl          s5, sp, t3
                  auipc        a7, 663706
                  addi         zero, a2, 1587
                  bltu         s5, a4, sub_1_j3 #branch to jump instr
                  sra          a0, a4, a3
                  sra          t5, t2, t3
sub_1_j3:         jalr         t1, s9, 401 #jump sub_1 -> sub_3
                  nop
                  or           ra, a2, tp
                  srli         t2, ra, 22
                  la           tp, sub_3
                  sra          s1, t2, t1
                  sltu         s10, gp, a7
                  addi         tp, tp, -27
                  slli         gp, gp, 24
                  srl          t5, s7, gp
                  and          zero, t6, a7
                  or           s8, s7, s4
sub_1_j4:         jalr         t1, tp, 28 #jump sub_1 -> sub_3
                  la           s7, sub_4
                  auipc        s9, 552707
                  addi         s7, s7, -377
                  sltiu        a6, s4, -1329
                  slt          s3, ra, a6
                  addi         a1, ra, -478
                  ori          s0, s7, 1131
                  blt          tp, a3, sub_1_j5 #branch to jump instr
                  slli         gp, tp, 15
sub_1_j5:         jalr         t1, s7, 378 #jump sub_1 -> sub_4
sub_1_0:          jal          t1, 2f
0:                jal          ra, 6f
1:                jal          ra, 9f
2:                jal          ra, 0b
3:                jal          t1, 1b
4:                jal          ra, 3b
5:                jal          ra, 7f
6:                jal          t1, 4b
7:                jal          gp, 10f
8:                jal          ra, 5b
9:                jal          ra, 8b
10:               srl          s5, tp, s2
                  auipc        a0, 270129
                  bne          zero, s6, 9f
                  bgeu         s2, s7, 19f
                  andi         a0, a2, -1850
                  and          tp, t1, a6
                  slli         t2, s5, 18
                  srli         s6, s9, 2
                  lui          a7, 39914
                  addi         s9, s3, -1257
9:                slli         ra, t0, 3
                  sll          s3, t3, s11
                  srli         gp, s11, 31
                  lui          s4, 448367
                  addi         s9, s5, -206
                  bltu         t2, t4, 28f
                  slt          s10, ra, tp
                  blt          t5, zero, 20f
                  slt          a4, zero, gp
                  andi         a7, t5, -906
19:               slli         t4, a7, 29
20:               srli         s5, a3, 17
                  nop
                  xori         zero, sp, 74
                  ori          a4, ra, -1110
                  add          a4, a6, t2
                  blt          a4, s0, 42f
                  blt          t0, ra, 32f
                  add          s6, t4, s7
28:               slti         t2, a2, -977
                  sll          s8, a6, a2
                  addi         t6, s9, 869
                  andi         t3, a4, 194
32:               srli         ra, a5, 0
                  xor          s6, ra, t6
                  bltu         a4, s4, 45f
                  xori         ra, ra, 1692
                  bgeu         a1, s10, 46f
                  srl          a4, t5, t5
                  srai         s5, s0, 11
                  bne          zero, s2, 50f
                  andi         a5, s0, -578
                  add          t5, a3, s10
42:               beq          gp, s3, 50f
                  and          a5, s11, t4
                  nop
45:               beq          t2, a7, 50f
46:               sltu         t6, ra, s11
                  bge          s1, t1, 50f
                  add          a0, s0, a7
                  slli         t6, gp, 26
50:               addi         s6, s11, -939
                  lw           t1, 4(t0)
                  addi         t0, t0, 48
                  sll          tp, s10, tp
                  addi         a1, s2, -209
                  sltiu        tp, a4, -1398
122:              addi x16, x6, 1
122:              jalr x16, x16, 0
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
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
                  add x2, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  add x2, x5, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x9, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x9, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x9, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x9, x20, ecall_handler
                  li x20, 0x1
                  beq x9, x20, instr_fault_handler
                  li x20, 0x5
                  beq x9, x20, load_fault_handler
                  li x20, 0x7
                  beq x9, x20, store_fault_handler
                  li x20, 0xc
                  beq x9, x20, pt_fault_handler
                  li x20, 0xd
                  beq x9, x20, pt_fault_handler
                  li x20, 0xf
                  beq x9, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

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
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x5, x2, zero
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
                  add x5, x2, zero
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
                  add x5, x2, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x5, x2, zero
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
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x5, x2, zero
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
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x5, x2, zero
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
