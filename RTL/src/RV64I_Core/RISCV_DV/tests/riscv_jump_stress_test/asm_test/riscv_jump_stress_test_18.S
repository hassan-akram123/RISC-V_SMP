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
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xc11ef7a2
                  li x2, 0x4b4fe37d
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0xfc07e6cf
                  li x6, 0x0
                  li x7, 0xe
                  li x8, 0x388a2312
                  li x9, 0x0
                  li x10, 0x0
                  li x12, 0x80000000
                  li x13, 0xf3cc19de
                  li x14, 0x0
                  li x15, 0x5
                  li x16, 0xf6c2db4c
                  li x17, 0xc9083e7
                  li x18, 0xfcb4d59f
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x4
                  li x24, 0x80000000
                  li x25, 0xa
                  li x26, 0xa41a527
                  li x27, 0xb
                  li x28, 0xbaadfb02
                  li x29, 0x0
                  li x30, 0x3e2e249a
                  li x31, 0xff434232
                  la x19, user_stack_end
main:             la           t3, sub_1
                  srl          a5, s0, t6
                  sll          a6, s4, zero
                  auipc        s5, 570760
                  lui          t6, 692003
                  addi         t3, t3, 80
                  srli         a3, sp, 21
                  andi         a6, sp, -1962
                  xori         gp, s1, -1068
                  slti         gp, t2, -1600
                  beq          s4, a3, main_j1 #branch to jump instr
                  sltiu        gp, s10, -1057
main_j1:          jalr         t1, t3, -79 #jump main -> sub_1
main_0:           jal          t1, 20f
0:                jal          t1, 10f
1:                jal          t1, 13f
2:                jal          ra, 17f
3:                jal          t6, 14f
4:                jal          t1, 18f
5:                jal          ra, 22f
6:                jal          ra, 1b
7:                jal          ra, 16f
8:                jal          ra, 5b
9:                jal          ra, 21f
10:               jal          t5, 9b
11:               jal          t1, 8b
12:               jal          tp, 11b
13:               jal          t1, 2b
14:               jal          gp, 24f
15:               jal          ra, 7b
16:               jal          ra, 19f
17:               jal          ra, 23f
18:               jal          t1, 6b
19:               jal          ra, 3b
20:               jal          tp, 12b
21:               jal          ra, 4b
22:               jal          ra, 0b
23:               jal          ra, 15b
24:               slt          t0, s10, t0
                  srli         s1, s11, 13
                  add          s9, t4, a4
                  slt          t3, s8, s7
                  ori          zero, t4, -1702
                  slt          zero, a2, ra
                  add          t6, a0, t3
                  blt          t6, a7, 26f
                  and          s1, zero, s2
                  srai         zero, s0, 20
                  sll          a2, a0, gp
                  auipc        gp, 897079
                  add          a0, s5, t5
                  xori         s1, s9, -1149
                  sra          s7, ra, s8
                  sra          a4, s9, a7
                  srai         s2, s7, 25
                  nop
                  ori          ra, t3, 386
                  sll          gp, s6, s9
                  bgeu         t5, t4, 22f
                  xor          s4, tp, s9
                  bge          a7, ra, 26f
22:               slli         t6, s2, 18
                  slli         a7, s0, 3
                  sltiu        s8, s4, 1923
                  srl          t0, ra, s11
26:               slt          ra, a4, s2
                  sltu         s0, t4, gp
                  nop
                  auipc        s10, 449649
                  addi         s11, s5, -105
                  andi         s5, s0, -1311
                  andi         s2, a5, -1793
                  slt          s9, t6, a1
                  srl          s2, t4, zero
                  sub          a6, a3, s6
                  xor          a7, s0, s9
                  bge          a0, s5, 42f
                  or           t0, a0, t4
                  or           s2, s5, a0
                  bge          a7, s2, 51f
                  xori         t5, t5, 397
42:               sltiu        a7, t3, 160
                  srl          t5, s9, a4
                  blt          t6, s5, 54f
                  ori          t5, t4, 923
                  sra          s0, s8, s10
                  srli         a6, s6, 29
                  blt          s6, a6, 62f
                  bltu         ra, s11, 63f
                  or           s9, s7, zero
51:               xor          t6, zero, a5
                  andi         s2, s11, 878
                  lui          a6, 92785
54:               sll          a3, a0, s5
                  and          ra, s10, s0
                  blt          s10, s0, 61f
                  lui          t3, 610131
                  bne          s1, t2, 68f
                  ori          a4, zero, 644
                  sltiu        s0, t5, 940
61:               bgeu         s6, t2, 68f
62:               sltu         t2, s9, a4
63:               slti         a6, t5, -1203
                  bge          t1, t4, 81f
                  bge          s11, a0, 74f
                  srl          s4, t0, a6
                  bge          s7, t3, 71f
68:               ori          t0, t4, 395
                  sub          t3, s9, s6
                  nop
71:               and          s7, s11, s5
                  srli         s0, s5, 0
                  lui          tp, 774867
74:               or           t0, s4, t6
                  add          tp, a3, tp
                  blt          s7, t4, 79f
                  srli         s1, a5, 24
                  addi         s10, s2, -711
79:               bltu         a5, a0, 81f
                  srai         a7, sp, 7
81:               xor          t2, s5, a7
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            nop
                  addi         s3, s3, -28
                  sll          a4, gp, sp
                  slli         s6, s2, 12
                  sw           t1, 4(s3)
                  sltu         a6, a4, s5
sub_4_6:          jal          t1, 2f
0:                jal          ra, 14f
1:                jal          ra, 18f
2:                jal          s10, 7f
3:                jal          t1, 5f
4:                jal          ra, 6f
5:                jal          t1, 10f
6:                jal          t1, 9f
7:                jal          ra, 4b
8:                jal          a0, 15f
9:                jal          ra, 1b
10:               jal          tp, 11f
11:               jal          t1, 8b
12:               jal          ra, 13f
13:               jal          s1, 19f
14:               jal          s0, 12b
15:               jal          s9, 0b
16:               jal          ra, 17f
17:               jal          ra, 3b
18:               jal          ra, 16b
19:               srli         t0, s10, 23
sub_4_1:          jal          t1, 2f
0:                jal          gp, 14f
1:                jal          t6, 0b
2:                jal          ra, 9f
3:                jal          tp, 29f
4:                jal          t1, 19f
5:                jal          ra, 1b
6:                jal          t1, 27f
7:                jal          ra, 25f
8:                jal          ra, 24f
9:                jal          ra, 12f
10:               jal          t1, 8b
11:               jal          t1, 26f
12:               jal          ra, 15f
13:               jal          ra, 18f
14:               jal          t1, 7b
15:               jal          t1, 6b
16:               jal          ra, 11b
17:               jal          t0, 5b
18:               jal          s5, 28f
19:               jal          ra, 22f
20:               jal          t1, 16b
21:               jal          ra, 4b
22:               jal          ra, 23f
23:               jal          ra, 17b
24:               jal          gp, 3b
25:               jal          ra, 13b
26:               jal          s1, 10b
27:               jal          a5, 21b
28:               jal          ra, 20b
29:               slt          t1, s6, t1
sub_4_4:          jal          t1, 4f
0:                jal          t6, 14f
1:                jal          ra, 6f
2:                jal          ra, 19f
3:                jal          ra, 8f
4:                jal          s4, 10f
5:                jal          ra, 23f
6:                jal          t1, 21f
7:                jal          t3, 22f
8:                jal          t1, 25f
9:                jal          t1, 1b
10:               jal          ra, 18f
11:               jal          ra, 2b
12:               jal          ra, 28f
13:               jal          ra, 26f
14:               jal          ra, 9b
15:               jal          t1, 13b
16:               jal          sp, 20f
17:               jal          t1, 0b
18:               jal          s5, 7b
19:               jal          ra, 5b
20:               jal          s5, 3b
21:               jal          t1, 12b
22:               jal          t1, 15b
23:               jal          ra, 16b
24:               jal          ra, 17b
25:               jal          t1, 24b
26:               jal          ra, 27f
27:               jal          t1, 11b
28:               nop
sub_4_2:          jal          t1, 25f
0:                jal          a2, 7f
1:                jal          gp, 12f
2:                jal          a0, 11f
3:                jal          ra, 14f
4:                jal          ra, 26f
5:                jal          ra, 3b
6:                jal          s6, 2b
7:                jal          t0, 5b
8:                jal          a6, 0b
9:                jal          gp, 21f
10:               jal          ra, 4b
11:               jal          tp, 9b
12:               jal          ra, 10b
13:               jal          sp, 15f
14:               jal          t6, 20f
15:               jal          ra, 6b
16:               jal          sp, 24f
17:               jal          ra, 8b
18:               jal          t1, 27f
19:               jal          tp, 16b
20:               jal          ra, 22f
21:               jal          ra, 1b
22:               jal          ra, 19b
23:               jal          ra, 17b
24:               jal          sp, 18b
25:               jal          t1, 13b
26:               jal          t1, 23b
27:               jal          t1, 28f
28:               sltu         sp, t2, tp
sub_4_5:          jal          t1, 6f
0:                jal          t1, 20f
1:                jal          ra, 18f
2:                jal          ra, 11f
3:                jal          ra, 14f
4:                jal          ra, 5f
5:                jal          a7, 12f
6:                jal          ra, 19f
7:                jal          tp, 4b
8:                jal          t1, 2b
9:                jal          s1, 8b
10:               jal          ra, 7b
11:               jal          ra, 17f
12:               jal          s2, 13f
13:               jal          ra, 15f
14:               jal          t0, 0b
15:               jal          tp, 16f
16:               jal          ra, 9b
17:               jal          t1, 3b
18:               jal          t5, 10b
19:               jal          ra, 1b
20:               or           s2, t5, s3
sub_4_0:          jal          t1, 16f
0:                jal          ra, 5f
1:                jal          ra, 10f
2:                jal          t1, 17f
3:                jal          t1, 9f
4:                jal          ra, 15f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          s6, 20f
8:                jal          a2, 4b
9:                jal          ra, 6b
10:               jal          ra, 11f
11:               jal          ra, 13f
12:               jal          ra, 3b
13:               jal          sp, 0b
14:               jal          t1, 19f
15:               jal          s2, 14b
16:               jal          tp, 12b
17:               jal          a2, 18f
18:               jal          ra, 7b
19:               jal          t1, 21f
20:               jal          ra, 1b
21:               sltu         a6, s10, a3
                  srli         s9, zero, 18
                  bltu         s7, a3, 19f
                  srai         t1, s2, 17
                  auipc        s6, 564532
                  srai         t2, a5, 16
                  sltiu        a2, t0, 1695
                  bltu         s0, s8, 18f
                  bltu         t4, s11, 8f
8:                andi         t1, a0, -953
                  sub          tp, s4, a6
                  beq          gp, a4, 28f
                  auipc        a0, 387601
                  or           s2, s5, a7
                  nop
                  add          t5, gp, s6
                  bge          s1, s2, 25f
                  addi         t2, t1, 1964
                  srl          s2, sp, a2
18:               xor          t5, t3, t1
19:               bgeu         t2, t0, 24f
                  blt          t4, s4, 26f
                  bgeu         zero, tp, 41f
                  srli         a7, s3, 12
                  or           s5, ra, a1
24:               and          a7, s1, s1
25:               bltu         a0, gp, 40f
26:               sra          a0, s5, s5
                  srai         a0, ra, 6
28:               nop
                  srli         a5, s3, 19
                  slti         a4, s6, -1938
                  bne          t2, a1, 47f
                  add          s11, a0, s7
                  xori         s10, a0, 2
                  or           a0, a5, t3
                  bgeu         s8, s5, 50f
                  auipc        a5, 348978
                  sll          s1, a4, a6
                  blt          s4, s0, 54f
                  bltu         a0, t2, 48f
40:               sll          tp, a4, a5
41:               sub          s6, s10, s3
                  bltu         t4, t5, 51f
                  xori         a3, ra, 15
                  andi         a3, t1, 336
                  andi         t6, s2, -1767
                  bltu         s1, tp, 50f
47:               slli         t1, gp, 15
48:               andi         gp, t3, 1222
                  bne          gp, s3, 59f
50:               bne          t5, a2, 58f
51:               bge          s9, s5, 60f
                  beq          s4, s6, 72f
                  bgeu         ra, a0, 55f
54:               slt          ra, s0, s7
55:               nop
                  sltu         s9, tp, s1
                  xor          s10, a2, t0
58:               sub          sp, sp, a1
59:               lui          tp, 281916
60:               and          a5, zero, gp
                  slli         a7, tp, 21
                  ori          t0, s11, 1695
                  bltu         tp, s3, 75f
                  slti         s6, s6, 1283
                  xori         s10, t4, 251
                  xori         a4, t3, -1613
                  bgeu         gp, s4, 86f
                  lui          a2, 419477
                  srai         a6, t6, 11
                  sra          ra, a1, s5
                  sltiu        tp, s4, -1123
72:               lui          s6, 398880
                  auipc        t1, 688665
                  slt          t3, t6, a0
75:               lui          s9, 913491
                  slli         s7, t1, 11
                  andi         t2, tp, 1841
                  nop
                  slt          zero, a0, a5
                  sltu         t5, ra, a5
                  bne          s9, t0, 94f
                  andi         a5, t2, -809
                  and          t0, a4, t2
                  sra          s9, s2, zero
                  sll          t1, a0, zero
86:               sltiu        a0, a0, -139
                  bge          t5, s11, 107f
                  sub          t3, t3, zero
                  or           sp, t2, a2
                  sra          s6, a3, t1
                  slt          s10, a0, t1
                  sll          a7, t0, a5
                  slti         s2, a5, 2006
94:               bne          s9, s4, 96f
                  or           a6, s1, a6
96:               bge          t4, gp, 109f
                  auipc        t5, 165665
                  and          a6, s2, a4
                  sra          t0, gp, t2
                  slti         t2, a0, 683
                  sltu         a3, t6, t6
                  addi         gp, zero, 1634
                  beq          s0, a6, 117f
                  add          s10, a2, sp
                  slt          t3, t1, s5
                  blt          s4, t1, 126f
107:              sll          a3, a0, s4
                  andi         s1, t4, 1854
109:              sltiu        a0, a3, 1451
                  xor          s4, gp, t0
                  xori         t2, s9, -880
                  bgeu         t3, s5, 121f
                  blt          gp, s4, 118f
                  bne          tp, s7, 122f
                  auipc        s6, 555336
                  sltiu        a5, a6, -1372
117:              xori         s6, sp, -1360
118:              slli         a7, s7, 29
                  ori          s7, s10, -1751
                  add          s7, t4, t0
121:              srli         t0, a2, 7
122:              bgeu         a4, a3, 138f
                  slti         sp, sp, -326
                  sltu         a0, a1, tp
                  srai         a2, a7, 29
126:              sra          t3, s7, a6
                  addi         a3, s4, -979
                  auipc        a3, 770102
                  and          tp, a0, t1
                  or           s4, a0, gp
                  bgeu         t1, s2, 143f
                  slti         t6, s11, 923
                  sltu         s4, s7, s7
                  sll          s4, t5, s0
                  slt          zero, t6, a1
                  bge          ra, t1, 151f
                  srli         a3, s1, 10
138:              xor          zero, tp, a7
                  xor          a0, gp, a7
                  add          s11, a6, s11
                  bne          s10, s7, 143f
                  srai         zero, s4, 24
143:              srai         s6, s3, 29
                  bgeu         s4, t5, 164f
                  and          t3, t3, s1
                  sltu         sp, s5, t2
                  bge          s0, s4, 157f
                  lui          s5, 149137
                  srli         a7, s5, 1
                  bltu         a4, s0, 169f
151:              or           s4, ra, t6
                  sltiu        s4, tp, 1778
                  auipc        t2, 886664
                  srai         t6, s9, 0
                  xor          s1, s6, tp
                  add          a4, a5, s6
157:              bge          sp, s6, 161f
                  beq          s7, t5, 178f
                  nop
                  add          t1, t3, s5
161:              sltiu        s10, t5, -828
                  blt          t2, s6, 178f
                  blt          s7, a5, 183f
164:              bne          t3, s9, 177f
                  sltiu        s6, a2, -208
                  xori         t3, t6, 1693
                  bltu         a4, t5, 173f
                  sub          s1, s3, s8
169:              ori          t5, s2, 102
                  nop
                  xor          t5, zero, t0
                  xor          t0, tp, t3
173:              bgeu         t1, a2, 182f
                  beq          s2, tp, 183f
                  bne          s1, s9, 195f
                  sll          a5, s8, a1
177:              or           t2, s11, t6
178:              slt          t0, a7, a0
                  ori          a2, a7, 676
                  addi         s1, s11, 329
                  srl          a6, a6, s5
182:              bne          t2, s5, 183f
183:              sra          gp, t1, a1
                  slt          s2, s0, t5
                  addi         a6, s10, -1032
                  bne          s4, s2, 191f
                  xori         s11, s9, -1716
                  and          gp, t1, t2
                  slt          t5, a7, a3
                  bltu         zero, s1, 208f
191:              slt          a5, t0, gp
                  slt          s6, a7, s3
                  bgeu         a5, t1, 208f
                  lui          a7, 866100
195:              srl          a3, a6, s3
                  sra          ra, s8, t5
                  beq          s8, t0, 206f
                  srli         a4, s6, 31
                  auipc        t0, 574792
                  srli         s1, a2, 20
                  andi         s10, t4, -1749
                  or           s0, a0, sp
                  lui          a7, 97582
                  addi         s8, s3, -1975
                  add          a3, s8, s4
206:              and          s10, s4, s7
                  srl          s10, a2, a4
208:              beq          s0, s7, 213f
                  andi         s6, ra, -382
                  andi         t0, s2, -1819
                  sll          t5, s1, s8
                  xor          sp, s11, a7
213:              sltu         zero, s8, s6
                  addi         s2, a1, -885
                  slti         gp, s0, 32
                  and          s9, s8, ra
                  and          s0, t5, t1
                  beq          t5, s10, 228f
                  and          tp, a3, s6
                  or           a3, a4, t6
                  sub          t6, s5, a4
                  add          s5, s4, zero
                  sub          s7, tp, s5
                  bgeu         s4, s1, 233f
                  sub          s0, t6, a7
                  ori          s6, t6, 809
                  addi         a4, t5, -944
228:              andi         t3, ra, -1962
                  and          s1, s6, s9
                  bge          s7, zero, 232f
                  and          t6, a3, s3
232:              add          s7, s1, a0
233:              xor          s1, t5, t6
                  sll          a7, t1, s0
                  lui          s5, 1010878
                  xori         t3, s10, 1716
                  bgeu         s10, s8, 251f
                  beq          a6, s9, 251f
                  add          s5, s7, a2
                  bgeu         t1, s9, 258f
                  andi         s9, s0, 1673
                  slli         s2, s3, 27
                  bne          s10, tp, 255f
                  bltu         s1, t6, 253f
                  srli         a6, t2, 2
                  add          t6, gp, t0
                  beq          gp, a1, 259f
                  xori         t0, a5, -1292
                  srl          s1, s6, s11
                  or           s7, a4, t3
251:              sll          s10, t1, s9
                  nop
253:              bge          sp, s10, 254f
254:              and          tp, ra, s9
255:              add          s9, zero, a5
                  sll          t2, s10, t2
                  auipc        s10, 73642
258:              sll          t1, sp, s0
259:              sll          gp, s9, t4
                  blt          s3, a3, 280f
                  ori          s8, a7, 1274
                  bltu         t1, a6, 281f
                  lui          t6, 317555
                  xor          gp, a6, s9
                  auipc        s4, 788551
                  addi         s2, zero, -517
                  srl          ra, gp, t6
                  nop
                  or           s11, s5, a7
                  lui          ra, 676151
                  sra          t6, gp, a5
                  blt          ra, s1, 282f
                  slt          zero, t6, a7
                  slt          s10, tp, a7
                  addi         sp, gp, 827
                  andi         ra, s6, 480
                  bgeu         t5, t0, 291f
                  ori          s10, a4, -355
                  addi         tp, a7, -171
280:              slt          s7, ra, sp
281:              slli         t2, zero, 1
282:              beq          t2, sp, 287f
                  sltu         s11, t4, t3
                  lui          t2, 762854
                  add          s1, a5, s5
                  bne          t5, a6, 301f
287:              andi         tp, t1, -1095
                  xor          sp, s1, sp
                  auipc        s5, 247789
                  sub          s10, a0, t2
291:              bge          a4, t1, 309f
                  bne          ra, s11, 308f
                  ori          gp, a7, -1586
                  ori          a5, s1, 1723
                  sub          s10, a4, a4
                  sltiu        s11, a6, -1386
                  slt          s1, s10, t2
                  slt          t3, t0, s5
                  or           t1, a7, s6
                  bltu         t5, s8, 306f
301:              sll          a6, s0, s9
                  sra          t0, sp, t2
                  lui          t1, 463698
                  and          tp, a3, t5
                  srl          a2, t6, zero
306:              ori          a6, a1, 1186
                  slli         s7, ra, 27
308:              slti         a2, s5, -2012
309:              auipc        a0, 129408
                  add          a5, s5, s8
                  xor          s11, a7, s0
                  sltiu        gp, s0, 18
                  sra          s8, a7, a6
                  sltiu        s11, s0, 710
                  slt          s8, zero, t2
                  or           s4, a5, s9
                  or           s5, a4, s0
                  slti         ra, a2, 1029
                  bgeu         a2, tp, 332f
                  sub          a4, s8, t5
                  sltu         t0, t1, t6
                  sra          s6, s9, tp
                  or           a0, s11, s11
                  slt          s7, s7, t5
                  auipc        s1, 873755
                  andi         s10, s0, -1580
                  nop
                  srai         s7, s9, 19
                  slti         t5, t0, -466
                  slli         a5, a3, 27
                  slli         ra, t4, 20
332:              sltiu        s4, tp, 842
                  blt          t3, a2, 335f
                  auipc        t5, 481497
335:              auipc        s8, 143996
sub_4_3:          jal          t1, 5f
0:                jal          tp, 19f
1:                jal          ra, 22f
2:                jal          ra, 14f
3:                jal          ra, 4f
4:                jal          t6, 20f
5:                jal          ra, 9f
6:                jal          s10, 8f
7:                jal          t1, 13f
8:                jal          t1, 0b
9:                jal          a5, 17f
10:               jal          t1, 15f
11:               jal          s4, 16f
12:               jal          tp, 3b
13:               jal          a2, 10b
14:               jal          ra, 11b
15:               jal          ra, 12b
16:               jal          s8, 7b
17:               jal          ra, 21f
18:               jal          ra, 1b
19:               jal          t1, 2b
20:               jal          ra, 18b
21:               jal          tp, 6b
22:               sra          t0, s7, s0
                  and          sp, t4, ra
                  sra          a0, a6, t4
                  sltiu        t1, s4, -240
                  bne          s4, s5, 353f
                  ori          s11, s8, -1842
                  sub          t5, a5, a3
                  slt          a0, a5, ra
                  bltu         s2, a4, 353f
                  add          gp, t0, s2
                  sltiu        gp, s4, 1970
                  srli         sp, a0, 30
                  blt          a1, t4, 353f
                  sltiu        s4, t3, -815
                  bge          t6, s9, 353f
                  andi         s1, s0, -67
                  bge          a7, s9, 353f
                  xor          a7, a6, s1
353:              and          s8, t3, s3
                  auipc        zero, 277127
                  xor          s9, a6, s6
                  and          a6, s2, a5
                  slti         a3, a7, -1864
                  lw           t1, 4(s3)
                  addi         a0, a4, -1474
                  ori          a2, s3, 1266
                  addi         s3, s3, 28
                  xor          s4, t3, s4
                  srl          s9, t2, a5
                  nop
                  add          s8, t2, zero
553:              addi x7, x6, 0
553:              jalr x7, x7, 0
sub_1:            addi         s3, s3, -60
                  add          a6, t0, a2
                  lui          sp, 962950
                  xori         ra, t0, -663
                  ori          a4, a6, 347
                  sw           t1, 4(s3)
                  ori          t2, s1, 81
                  xor          a2, s3, s5
                  and          t6, zero, a4
                  or           t0, a4, s2
                  sub          a7, t3, a1
sub_1_8:          jal          t1, 15f
0:                jal          t6, 16f
1:                jal          ra, 0b
2:                jal          a4, 21f
3:                jal          ra, 9f
4:                jal          ra, 25f
5:                jal          t1, 18f
6:                jal          a5, 4b
7:                jal          ra, 22f
8:                jal          ra, 26f
9:                jal          t1, 13f
10:               jal          ra, 29f
11:               jal          t1, 12f
12:               jal          tp, 23f
13:               jal          ra, 2b
14:               jal          t1, 20f
15:               jal          ra, 17f
16:               jal          ra, 19f
17:               jal          s9, 3b
18:               jal          ra, 11b
19:               jal          ra, 27f
20:               jal          s1, 10b
21:               jal          s11, 6b
22:               jal          sp, 28f
23:               jal          t1, 24f
24:               jal          ra, 14b
25:               jal          t1, 8b
26:               jal          ra, 1b
27:               jal          ra, 7b
28:               jal          ra, 5b
29:               srl          ra, tp, a2
sub_1_41:         jal          t1, 16f
0:                jal          ra, 17f
1:                jal          ra, 26f
2:                jal          t1, 6f
3:                jal          ra, 14f
4:                jal          ra, 10f
5:                jal          ra, 15f
6:                jal          a5, 5b
7:                jal          s0, 23f
8:                jal          a5, 25f
9:                jal          t1, 7b
10:               jal          s11, 9b
11:               jal          t1, 24f
12:               jal          ra, 13f
13:               jal          ra, 22f
14:               jal          ra, 19f
15:               jal          ra, 1b
16:               jal          a0, 0b
17:               jal          a4, 3b
18:               jal          t1, 4b
19:               jal          ra, 12b
20:               jal          ra, 11b
21:               jal          t1, 20b
22:               jal          ra, 21b
23:               jal          s1, 8b
24:               jal          ra, 18b
25:               jal          ra, 2b
26:               lui          ra, 253648
sub_1_31:         jal          t1, 15f
0:                jal          tp, 9f
1:                jal          sp, 13f
2:                jal          ra, 0b
3:                jal          gp, 2b
4:                jal          s5, 1b
5:                jal          ra, 3b
6:                jal          ra, 10f
7:                jal          sp, 5b
8:                jal          t1, 18f
9:                jal          ra, 12f
10:               jal          ra, 14f
11:               jal          ra, 7b
12:               jal          ra, 8b
13:               jal          ra, 17f
14:               jal          ra, 16f
15:               jal          ra, 4b
16:               jal          a0, 11b
17:               jal          t1, 6b
18:               addi         ra, s0, 921
sub_1_15:         jal          t1, 10f
0:                jal          ra, 6f
1:                jal          a7, 3f
2:                jal          t3, 1b
3:                jal          s2, 8f
4:                jal          t5, 5f
5:                jal          ra, 2b
6:                jal          t2, 12f
7:                jal          ra, 11f
8:                jal          ra, 9f
9:                jal          t1, 0b
10:               jal          t1, 14f
11:               jal          ra, 15f
12:               jal          ra, 13f
13:               jal          ra, 7b
14:               jal          ra, 4b
15:               sll          t0, tp, t2
sub_1_1:          jal          t1, 11f
0:                jal          ra, 22f
1:                jal          ra, 3f
2:                jal          t1, 21f
3:                jal          ra, 20f
4:                jal          ra, 12f
5:                jal          ra, 4b
6:                jal          ra, 16f
7:                jal          ra, 17f
8:                jal          ra, 5b
9:                jal          t0, 8b
10:               jal          ra, 0b
11:               jal          t1, 14f
12:               jal          s11, 7b
13:               jal          a0, 10b
14:               jal          sp, 15f
15:               jal          t1, 1b
16:               jal          ra, 13b
17:               jal          s2, 6b
18:               jal          ra, 19f
19:               jal          t1, 9b
20:               jal          ra, 2b
21:               jal          ra, 18b
22:               sll          s6, sp, t1
sub_1_28:         jal          t1, 5f
0:                jal          ra, 21f
1:                jal          a5, 4f
2:                jal          t1, 6f
3:                jal          a7, 13f
4:                jal          s4, 7f
5:                jal          ra, 10f
6:                jal          t0, 3b
7:                jal          t1, 18f
8:                jal          ra, 16f
9:                jal          s11, 12f
10:               jal          t1, 19f
11:               jal          t6, 20f
12:               jal          ra, 14f
13:               jal          t1, 22f
14:               jal          t6, 1b
15:               jal          t1, 11b
16:               jal          a6, 17f
17:               jal          a5, 0b
18:               jal          t1, 8b
19:               jal          ra, 9b
20:               jal          ra, 2b
21:               jal          t1, 15b
22:               xori         s5, t4, 691
sub_1_24:         jal          t1, 0f
0:                jal          t1, 5f
1:                jal          ra, 11f
2:                jal          ra, 13f
3:                jal          ra, 6f
4:                jal          s11, 14f
5:                jal          gp, 9f
6:                jal          ra, 15f
7:                jal          a7, 1b
8:                jal          ra, 3b
9:                jal          ra, 12f
10:               jal          ra, 4b
11:               jal          t1, 2b
12:               jal          gp, 10b
13:               jal          gp, 8b
14:               jal          t1, 7b
15:               nop
sub_1_6:          jal          t1, 4f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          ra, 16f
3:                jal          ra, 22f
4:                jal          tp, 26f
5:                jal          tp, 19f
6:                jal          t3, 5b
7:                jal          ra, 20f
8:                jal          ra, 27f
9:                jal          ra, 18f
10:               jal          ra, 21f
11:               jal          t1, 0b
12:               jal          t1, 15f
13:               jal          ra, 25f
14:               jal          a5, 1b
15:               jal          ra, 11b
16:               jal          sp, 10b
17:               jal          ra, 14b
18:               jal          ra, 23f
19:               jal          t0, 8b
20:               jal          t1, 9b
21:               jal          ra, 6b
22:               jal          ra, 17b
23:               jal          t5, 24f
24:               jal          ra, 13b
25:               jal          ra, 12b
26:               jal          sp, 7b
27:               auipc        s1, 783104
sub_1_39:         jal          t1, 11f
0:                jal          ra, 10f
1:                jal          t1, 3f
2:                jal          ra, 8f
3:                jal          t5, 6f
4:                jal          t1, 0b
5:                jal          tp, 13f
6:                jal          ra, 2b
7:                jal          t3, 9f
8:                jal          t2, 5b
9:                jal          s8, 1b
10:               jal          s4, 7b
11:               jal          tp, 12f
12:               jal          ra, 4b
13:               xor          s4, t0, a2
sub_1_4:          jal          t1, 6f
0:                jal          s6, 14f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          t1, 19f
4:                jal          t2, 12f
5:                jal          ra, 15f
6:                jal          a5, 7f
7:                jal          ra, 1b
8:                jal          ra, 17f
9:                jal          ra, 3b
10:               jal          ra, 4b
11:               jal          sp, 9b
12:               jal          t1, 13f
13:               jal          ra, 5b
14:               jal          ra, 18f
15:               jal          ra, 11b
16:               jal          t1, 10b
17:               jal          s7, 16b
18:               jal          ra, 8b
19:               andi         gp, s11, -767
sub_1_29:         jal          t1, 22f
0:                jal          t1, 11f
1:                jal          t5, 6f
2:                jal          s11, 8f
3:                jal          ra, 1b
4:                jal          t5, 16f
5:                jal          ra, 18f
6:                jal          t1, 20f
7:                jal          ra, 3b
8:                jal          ra, 15f
9:                jal          t1, 14f
10:               jal          ra, 7b
11:               jal          ra, 5b
12:               jal          ra, 10b
13:               jal          ra, 4b
14:               jal          t6, 19f
15:               jal          s10, 13b
16:               jal          s2, 23f
17:               jal          t0, 2b
18:               jal          a7, 12b
19:               jal          s11, 0b
20:               jal          ra, 17b
21:               jal          ra, 9b
22:               jal          ra, 21b
23:               xori         a4, a4, 1976
sub_1_2:          jal          t1, 6f
0:                jal          t2, 16f
1:                jal          t3, 13f
2:                jal          t0, 24f
3:                jal          ra, 12f
4:                jal          ra, 5f
5:                jal          ra, 7f
6:                jal          ra, 1b
7:                jal          ra, 15f
8:                jal          ra, 25f
9:                jal          s2, 0b
10:               jal          t1, 20f
11:               jal          t1, 27f
12:               jal          ra, 17f
13:               jal          s10, 10b
14:               jal          ra, 29f
15:               jal          t1, 14b
16:               jal          ra, 23f
17:               jal          a3, 22f
18:               jal          ra, 9b
19:               jal          s11, 18b
20:               jal          ra, 8b
21:               jal          ra, 11b
22:               jal          ra, 21b
23:               jal          ra, 3b
24:               jal          ra, 28f
25:               jal          ra, 26f
26:               jal          ra, 2b
27:               jal          ra, 4b
28:               jal          gp, 19b
29:               add          s4, a0, t1
sub_1_35:         jal          t1, 5f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          t6, 9f
3:                jal          ra, 10f
4:                jal          a7, 6f
5:                jal          t1, 8f
6:                jal          ra, 0b
7:                jal          tp, 2b
8:                jal          t1, 4b
9:                jal          ra, 3b
10:               jal          t0, 1b
11:               sra          s0, sp, t2
sub_1_16:         jal          t1, 3f
0:                jal          t1, 2f
1:                jal          t1, 14f
2:                jal          ra, 9f
3:                jal          a4, 0b
4:                jal          s2, 5f
5:                jal          ra, 19f
6:                jal          ra, 11f
7:                jal          ra, 4b
8:                jal          t1, 7b
9:                jal          ra, 6b
10:               jal          ra, 18f
11:               jal          ra, 13f
12:               jal          ra, 1b
13:               jal          ra, 17f
14:               jal          a3, 16f
15:               jal          ra, 20f
16:               jal          ra, 8b
17:               jal          ra, 10b
18:               jal          t0, 12b
19:               jal          a0, 15b
20:               slti         s2, a5, 1225
sub_1_22:         jal          t1, 14f
0:                jal          ra, 1f
1:                jal          ra, 3f
2:                jal          s4, 6f
3:                jal          s0, 17f
4:                jal          t1, 9f
5:                jal          t1, 13f
6:                jal          ra, 12f
7:                jal          sp, 18f
8:                jal          gp, 0b
9:                jal          ra, 2b
10:               jal          ra, 11f
11:               jal          ra, 16f
12:               jal          ra, 8b
13:               jal          ra, 7b
14:               jal          ra, 10b
15:               jal          ra, 4b
16:               jal          ra, 5b
17:               jal          ra, 19f
18:               jal          ra, 15b
19:               xori         a4, t1, -424
sub_1_9:          jal          t1, 7f
0:                jal          ra, 15f
1:                jal          ra, 17f
2:                jal          t1, 10f
3:                jal          tp, 20f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          tp, 18f
7:                jal          a3, 22f
8:                jal          ra, 24f
9:                jal          s10, 1b
10:               jal          ra, 16f
11:               jal          ra, 12f
12:               jal          t1, 8b
13:               jal          ra, 21f
14:               jal          ra, 6b
15:               jal          ra, 19f
16:               jal          ra, 13b
17:               jal          t1, 0b
18:               jal          ra, 3b
19:               jal          ra, 11b
20:               jal          gp, 23f
21:               jal          ra, 4b
22:               jal          ra, 14b
23:               jal          ra, 2b
24:               sra          s10, t6, a3
sub_1_5:          jal          t1, 16f
0:                jal          ra, 22f
1:                jal          s8, 9f
2:                jal          ra, 24f
3:                jal          ra, 1b
4:                jal          ra, 3b
5:                jal          a3, 15f
6:                jal          t1, 0b
7:                jal          a6, 5b
8:                jal          ra, 13f
9:                jal          t2, 20f
10:               jal          ra, 7b
11:               jal          ra, 23f
12:               jal          ra, 10b
13:               jal          s6, 14f
14:               jal          ra, 12b
15:               jal          t1, 18f
16:               jal          t1, 4b
17:               jal          tp, 11b
18:               jal          t2, 17b
19:               jal          t2, 21f
20:               jal          t1, 19b
21:               jal          t1, 6b
22:               jal          ra, 8b
23:               jal          t1, 2b
24:               xor          s5, t3, t4
sub_1_23:         jal          t1, 7f
0:                jal          ra, 20f
1:                jal          s1, 6f
2:                jal          t1, 10f
3:                jal          ra, 19f
4:                jal          sp, 14f
5:                jal          t5, 8f
6:                jal          ra, 5b
7:                jal          t1, 3b
8:                jal          ra, 17f
9:                jal          t1, 16f
10:               jal          ra, 11f
11:               jal          t1, 15f
12:               jal          ra, 4b
13:               jal          ra, 9b
14:               jal          a3, 1b
15:               jal          t5, 12b
16:               jal          t0, 21f
17:               jal          gp, 18f
18:               jal          ra, 13b
19:               jal          ra, 0b
20:               jal          a3, 2b
21:               sub          s4, t0, a6
sub_1_11:         jal          t1, 10f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          ra, 14f
3:                jal          s2, 13f
4:                jal          a3, 16f
5:                jal          ra, 0b
6:                jal          s11, 18f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          gp, 11f
10:               jal          ra, 17f
11:               jal          ra, 5b
12:               jal          s10, 8b
13:               jal          ra, 4b
14:               jal          t1, 15f
15:               jal          s4, 6b
16:               jal          ra, 9b
17:               jal          t1, 7b
18:               addi         ra, a0, 666
sub_1_40:         jal          t1, 6f
0:                jal          tp, 9f
1:                jal          tp, 8f
2:                jal          ra, 7f
3:                jal          a5, 5f
4:                jal          ra, 3b
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          t3, 10f
8:                jal          ra, 12f
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               jal          t3, 2b
12:               sub          t2, t6, s5
sub_1_10:         jal          t1, 6f
0:                jal          ra, 12f
1:                jal          s0, 18f
2:                jal          t1, 19f
3:                jal          ra, 10f
4:                jal          t2, 9f
5:                jal          ra, 4b
6:                jal          s10, 16f
7:                jal          ra, 15f
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               jal          t1, 21f
11:               jal          ra, 0b
12:               jal          ra, 8b
13:               jal          t1, 17f
14:               jal          ra, 22f
15:               jal          s0, 14b
16:               jal          ra, 1b
17:               jal          ra, 3b
18:               jal          ra, 11b
19:               jal          t1, 13b
20:               jal          ra, 5b
21:               jal          ra, 20b
22:               add          s6, s6, s11
sub_1_25:         jal          t1, 4f
0:                jal          gp, 8f
1:                jal          ra, 16f
2:                jal          ra, 13f
3:                jal          s10, 9f
4:                jal          a5, 15f
5:                jal          t2, 0b
6:                jal          ra, 12f
7:                jal          t1, 11f
8:                jal          ra, 2b
9:                jal          ra, 18f
10:               jal          ra, 14f
11:               jal          t1, 6b
12:               jal          ra, 1b
13:               jal          ra, 17f
14:               jal          ra, 3b
15:               jal          ra, 5b
16:               jal          t0, 10b
17:               jal          ra, 7b
18:               slt          t0, a6, tp
sub_1_21:         jal          t1, 9f
0:                jal          s1, 10f
1:                jal          ra, 11f
2:                jal          t1, 8f
3:                jal          t1, 2b
4:                jal          a7, 5f
5:                jal          ra, 0b
6:                jal          t0, 3b
7:                jal          ra, 4b
8:                jal          ra, 1b
9:                jal          a3, 7b
10:               jal          t1, 6b
11:               xori         t0, t4, -881
sub_1_30:         jal          t1, 9f
0:                jal          ra, 8f
1:                jal          ra, 23f
2:                jal          ra, 1b
3:                jal          t5, 27f
4:                jal          ra, 5f
5:                jal          ra, 7f
6:                jal          t0, 10f
7:                jal          gp, 18f
8:                jal          ra, 19f
9:                jal          a3, 11f
10:               jal          gp, 28f
11:               jal          ra, 24f
12:               jal          t1, 6b
13:               jal          sp, 17f
14:               jal          ra, 25f
15:               jal          ra, 14b
16:               jal          s5, 15b
17:               jal          ra, 20f
18:               jal          ra, 16b
19:               jal          s9, 22f
20:               jal          t1, 12b
21:               jal          ra, 13b
22:               jal          ra, 4b
23:               jal          t1, 3b
24:               jal          ra, 0b
25:               jal          s2, 26f
26:               jal          t1, 2b
27:               jal          sp, 21b
28:               andi         a2, a7, -151
sub_1_18:         jal          t1, 4f
0:                jal          ra, 1f
1:                jal          t3, 10f
2:                jal          t1, 8f
3:                jal          ra, 5f
4:                jal          ra, 7f
5:                jal          t1, 6f
6:                jal          s1, 2b
7:                jal          a6, 9f
8:                jal          t1, 0b
9:                jal          ra, 3b
10:               add          t3, t4, t3
sub_1_12:         jal          t1, 13f
0:                jal          ra, 20f
1:                jal          ra, 27f
2:                jal          t1, 17f
3:                jal          s8, 1b
4:                jal          ra, 25f
5:                jal          t2, 8f
6:                jal          ra, 4b
7:                jal          ra, 23f
8:                jal          ra, 15f
9:                jal          ra, 16f
10:               jal          ra, 5b
11:               jal          ra, 28f
12:               jal          ra, 3b
13:               jal          s7, 18f
14:               jal          t1, 2b
15:               jal          ra, 12b
16:               jal          t5, 22f
17:               jal          t1, 11b
18:               jal          t3, 6b
19:               jal          ra, 24f
20:               jal          ra, 7b
21:               jal          ra, 9b
22:               jal          ra, 26f
23:               jal          ra, 14b
24:               jal          ra, 0b
25:               jal          s1, 10b
26:               jal          t1, 19b
27:               jal          ra, 21b
28:               ori          s8, t2, 482
sub_1_19:         jal          t1, 7f
0:                jal          s7, 13f
1:                jal          ra, 3f
2:                jal          ra, 0b
3:                jal          tp, 4f
4:                jal          ra, 11f
5:                jal          s2, 14f
6:                jal          s1, 2b
7:                jal          ra, 12f
8:                jal          sp, 9f
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               jal          sp, 10b
12:               jal          ra, 1b
13:               jal          ra, 5b
14:               add          a5, zero, a1
sub_1_32:         jal          t1, 21f
0:                jal          s9, 4f
1:                jal          ra, 19f
2:                jal          t1, 12f
3:                jal          s2, 8f
4:                jal          ra, 15f
5:                jal          gp, 13f
6:                jal          t1, 0b
7:                jal          ra, 16f
8:                jal          t1, 18f
9:                jal          t1, 10f
10:               jal          t1, 3b
11:               jal          ra, 22f
12:               jal          ra, 1b
13:               jal          t1, 20f
14:               jal          s8, 17f
15:               jal          ra, 7b
16:               jal          ra, 11b
17:               jal          ra, 5b
18:               jal          gp, 14b
19:               jal          ra, 6b
20:               jal          tp, 2b
21:               jal          ra, 9b
22:               sra          s0, a2, s7
sub_1_17:         jal          t1, 7f
0:                jal          t1, 9f
1:                jal          ra, 15f
2:                jal          a4, 0b
3:                jal          ra, 14f
4:                jal          ra, 10f
5:                jal          t1, 4b
6:                jal          ra, 3b
7:                jal          t1, 11f
8:                jal          ra, 12f
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               jal          ra, 13f
12:               jal          a0, 1b
13:               jal          ra, 2b
14:               jal          t0, 5b
15:               lui          a5, 879144
sub_1_26:         jal          t1, 4f
0:                jal          t1, 6f
1:                jal          a5, 0b
2:                jal          ra, 5f
3:                jal          t1, 11f
4:                jal          t1, 10f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          t1, 3b
9:                jal          ra, 7b
10:               jal          s1, 1b
11:               srai         s9, a6, 7
sub_1_13:         jal          t1, 28f
0:                jal          t1, 9f
1:                jal          s10, 25f
2:                jal          a6, 13f
3:                jal          ra, 16f
4:                jal          t1, 14f
5:                jal          t1, 19f
6:                jal          s4, 23f
7:                jal          ra, 6b
8:                jal          s0, 7b
9:                jal          a6, 17f
10:               jal          t1, 4b
11:               jal          tp, 18f
12:               jal          ra, 10b
13:               jal          ra, 3b
14:               jal          ra, 20f
15:               jal          ra, 27f
16:               jal          ra, 11b
17:               jal          ra, 21f
18:               jal          ra, 29f
19:               jal          t1, 24f
20:               jal          ra, 0b
21:               jal          t1, 1b
22:               jal          ra, 8b
23:               jal          ra, 5b
24:               jal          t1, 2b
25:               jal          ra, 30f
26:               jal          a7, 12b
27:               jal          t2, 26b
28:               jal          ra, 22b
29:               jal          ra, 15b
30:               add          gp, a1, s2
sub_1_3:          jal          t1, 8f
0:                jal          sp, 11f
1:                jal          s11, 0b
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          ra, 6f
5:                jal          t1, 9f
6:                jal          t1, 7f
7:                jal          ra, 2b
8:                jal          ra, 4b
9:                jal          ra, 10f
10:               jal          ra, 3b
11:               jal          ra, 12f
12:               slti         s5, s8, 647
sub_1_0:          jal          t1, 7f
0:                jal          t1, 16f
1:                jal          ra, 17f
2:                jal          t0, 4f
3:                jal          sp, 1b
4:                jal          s4, 15f
5:                jal          ra, 8f
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               jal          t6, 11f
11:               jal          t6, 12f
12:               jal          gp, 18f
13:               jal          a5, 9b
14:               jal          t1, 2b
15:               jal          t0, 3b
16:               jal          ra, 13b
17:               jal          ra, 19f
18:               jal          ra, 14b
19:               srl          a4, s3, s10
sub_1_33:         jal          t1, 15f
0:                jal          tp, 17f
1:                jal          ra, 9f
2:                jal          t1, 4f
3:                jal          ra, 2b
4:                jal          s0, 1b
5:                jal          t2, 11f
6:                jal          a4, 8f
7:                jal          ra, 0b
8:                jal          ra, 5b
9:                jal          s1, 10f
10:               jal          ra, 13f
11:               jal          ra, 16f
12:               jal          t1, 6b
13:               jal          ra, 14f
14:               jal          t1, 7b
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               add          t0, a7, a0
sub_1_27:         jal          t1, 3f
0:                jal          t1, 4f
1:                jal          t1, 14f
2:                jal          sp, 13f
3:                jal          ra, 16f
4:                jal          t1, 11f
5:                jal          ra, 17f
6:                jal          ra, 19f
7:                jal          ra, 9f
8:                jal          ra, 5b
9:                jal          t1, 10f
10:               jal          sp, 18f
11:               jal          ra, 1b
12:               jal          ra, 7b
13:               jal          ra, 12b
14:               jal          t1, 15f
15:               jal          t1, 2b
16:               jal          gp, 8b
17:               jal          t1, 0b
18:               jal          s8, 6b
19:               nop
                  srli         a5, s7, 20
                  bge          s9, a5, 12f
                  srl          tp, ra, s10
                  sltiu        zero, a4, -1826
                  bne          t4, zero, 12f
                  bne          s1, t0, 7f
                  bltu         s3, s8, 11f
7:                blt          s1, s11, 14f
                  srai         ra, a4, 18
                  srai         s9, s10, 16
                  bgeu         t6, a6, 26f
11:               bltu         a6, s4, 28f
12:               lui          a2, 198261
                  srai         a4, s1, 3
14:               andi         a0, s7, -1074
                  andi         t1, s1, 1716
                  lui          s4, 112892
                  nop
                  beq          a2, t6, 27f
                  addi         s8, s6, -85
                  addi         ra, t6, 488
                  slt          zero, s7, s4
                  sltu         gp, t2, t6
                  slt          a5, t3, sp
                  and          a0, s10, t1
                  auipc        t0, 618639
26:               ori          gp, a2, 297
27:               slli         a4, a1, 29
28:               or           t0, s8, a2
                  slli         a2, s3, 18
                  sra          a5, tp, a2
                  srl          s5, tp, s4
                  andi         t3, zero, -567
                  sll          s5, s8, s7
                  sltiu        s0, sp, -1134
                  bge          s8, s3, 40f
                  slti         t6, t3, -1326
                  lui          s5, 350249
                  nop
                  blt          a2, a6, 58f
40:               beq          t3, s7, 54f
                  and          a3, zero, t5
                  addi         s0, s5, 318
                  addi         t6, t5, -403
                  bge          s5, s11, 61f
                  srl          s9, t5, a4
                  blt          a2, s3, 61f
                  bgeu         a2, a5, 67f
                  blt          t2, a4, 65f
                  lui          zero, 866928
                  srli         s9, tp, 0
                  srl          zero, s1, t1
                  addi         s8, s4, 754
                  slt          a6, s8, t5
54:               bne          s8, s10, 60f
                  lui          ra, 599107
                  andi         s0, s4, -1976
                  xori         s11, t6, 8
58:               sltu         s10, ra, s8
                  srli         t6, s11, 5
60:               slt          s11, t3, s3
61:               bge          ra, zero, 78f
                  xori         t5, a1, -324
                  auipc        s5, 780379
                  sltiu        s7, sp, -659
65:               lui          t6, 397173
                  bgeu         a1, a4, 74f
67:               beq          s0, s2, 75f
                  slti         a2, s2, -1987
                  sll          ra, s2, s7
                  lui          s11, 379672
                  add          tp, s2, a6
                  ori          s2, zero, 132
                  slt          gp, a2, t0
74:               sra          gp, s6, s10
75:               bne          a2, s8, 79f
                  sub          s11, tp, zero
                  lui          s2, 334279
78:               xor          tp, t1, s11
79:               addi         s6, a5, -1299
                  xori         s2, s6, -1669
                  addi         s8, s11, -165
                  sub          s0, a7, s0
                  xori         t5, a7, -564
                  sltiu        a5, t6, 413
                  bne          t5, a7, 90f
                  bge          s6, a3, 98f
                  blt          t1, s0, 106f
                  srl          t5, a1, t4
                  xori         a4, s1, 1396
90:               bne          a4, ra, 97f
                  srli         s11, t2, 27
                  andi         s7, s7, 1011
                  sll          a2, a0, s1
                  srai         t0, a5, 14
                  bgeu         s4, ra, 106f
                  srl          tp, s6, s2
97:               xor          s0, s7, s8
98:               sub          t5, sp, a6
                  slli         s9, s11, 18
                  nop
                  slti         a7, gp, 229
                  sltu         ra, t4, s5
                  add          s4, a6, gp
                  add          s8, a2, s9
                  srli         a4, a7, 15
106:              slt          zero, gp, a5
                  sra          s9, s6, a7
                  bgeu         s7, s4, 115f
                  sltu         ra, s8, ra
                  sll          a3, s11, s3
                  sltiu        t2, s8, 1171
                  sub          a2, a2, t4
                  add          t1, s7, tp
                  auipc        t3, 585023
115:              srl          s8, a2, t1
                  beq          s11, t4, 130f
                  bge          a3, s3, 129f
                  xor          s7, s9, s4
                  bge          s7, gp, 128f
                  addi         a6, s5, 898
                  srai         ra, zero, 23
                  bgeu         a5, a7, 139f
                  ori          s0, s5, 529
                  sltiu        a3, t4, -1727
                  bne          s11, t4, 137f
                  sll          t2, s10, a2
                  slt          a2, a1, zero
128:              and          a0, a7, s5
129:              srl          s8, a6, zero
130:              bne          s10, ra, 142f
                  sra          s2, t2, s7
                  slti         gp, ra, 1353
                  auipc        a7, 630043
                  lui          s9, 748655
                  sltu         t0, s5, zero
                  ori          gp, s6, 602
137:              blt          a7, t5, 139f
                  ori          t1, a5, -871
139:              nop
                  sub          ra, s0, s7
                  auipc        t2, 51562
142:              sub          a0, a7, s11
                  add          gp, s11, sp
                  sub          s6, t6, s3
                  sll          s1, t4, t2
                  addi         t1, gp, 2001
                  auipc        s5, 640341
                  bne          s2, a3, 153f
                  bgeu         s5, s4, 168f
                  beq          t5, a5, 158f
                  bge          t3, t2, 160f
                  lui          s5, 119054
153:              addi         a4, t0, 1164
                  slt          a3, tp, s7
                  ori          s6, s5, 1339
                  add          a6, zero, s3
                  and          s9, s8, s4
158:              andi         t0, s10, -327
                  bltu         t6, sp, 170f
160:              and          a5, gp, s3
                  beq          a4, t3, 178f
                  add          t5, t6, sp
                  bne          s5, t4, 178f
                  blt          s2, a2, 181f
                  blt          t6, gp, 170f
                  bgeu         t0, a6, 174f
                  sll          ra, t3, s6
168:              auipc        t3, 546817
                  slt          s1, s4, t1
170:              bltu         a4, t0, 187f
                  nop
                  ori          s0, s3, -125
                  beq          gp, s6, 193f
174:              and          s5, zero, zero
                  ori          s6, s2, -769
                  add          s4, t0, a5
                  bgeu         t3, t5, 196f
178:              lui          t1, 822089
                  sll          s8, t2, t1
                  blt          s0, a5, 191f
181:              beq          s6, s2, 195f
                  bne          s2, a6, 186f
                  and          s5, a4, t3
                  bge          s3, s0, 191f
                  slli         a2, ra, 2
186:              sll          a4, t1, a0
187:              xor          a7, t1, s2
                  and          s4, s6, t4
                  blt          a7, a4, 206f
                  sltu         s5, tp, t3
191:              auipc        a3, 855823
                  addi         a7, s6, 1410
193:              blt          s7, a7, 201f
                  sll          s5, s5, s11
195:              bne          t4, a2, 202f
196:              xor          s1, s3, t1
                  bgeu         a0, t2, 202f
                  srli         a4, zero, 29
                  addi         s8, s0, 559
                  bltu         s2, t6, 217f
201:              nop
202:              add          tp, a0, ra
                  srai         gp, t4, 3
                  sltiu        t2, t0, 222
                  ori          t2, ra, 894
206:              sub          a2, s11, s1
                  sra          s11, a2, s5
                  sltu         a4, a2, sp
                  srli         t3, s7, 10
                  auipc        tp, 784829
                  nop
                  and          tp, t1, a3
                  srl          s7, t1, t5
                  bne          s9, t3, sub_1_j4 #branch to jump instr
                  sll          tp, a3, t5
                  srl          t6, t1, a5
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  addi         t2, a7, -112
                  add          s9, a4, sp
                  beq          t5, s9, 218f
                  add          zero, zero, zero
                  xor          zero, s8, tp
                  bne          t3, sp, 219f
                  andi         s8, s11, -1591
                  sll          t0, ra, s4
                  andi         s7, a7, -1848
                  srl          s4, a4, ra
217:              bne          t0, a0, 233f
218:              xori         a0, a2, 2021
219:              auipc        s10, 862638
                  blt          a1, s6, 226f
                  srl          t2, zero, t2
                  bne          gp, s11, 236f
                  blt          t6, t1, 243f
                  beq          a3, a1, 241f
                  slli         tp, a1, 17
226:              or           a7, ra, ra
                  add          s0, s8, s4
                  slli         s10, a4, 21
                  slli         t0, s3, 16
                  blt          tp, zero, 247f
                  srai         zero, gp, 11
                  sll          sp, s3, t2
233:              and          gp, s3, a3
                  bge          tp, a7, 239f
                  bgeu         t3, s1, 247f
236:              addi         a6, sp, -1884
                  bne          ra, s11, 242f
                  blt          s9, s4, 246f
239:              lui          ra, 537743
                  srl          s11, s6, s2
241:              auipc        a6, 808115
242:              addi         s8, a5, 636
243:              sltu         a2, t4, t2
                  xori         t2, s10, 1873
                  blt          t1, t2, 264f
246:              sub          t5, t2, a0
247:              sll          t2, s9, a0
                  or           a6, s10, t2
                  auipc        s10, 678015
                  add          t3, s6, s9
                  blt          s5, t5, 268f
                  xori         a7, s1, 108
                  lui          a6, 368299
                  slti         a4, a7, 1346
                  slli         a0, zero, 11
                  srai         s11, sp, 31
                  sltu         s9, zero, t0
                  sltu         a2, s3, s9
                  srli         zero, ra, 31
                  xor          sp, s8, s8
                  bne          s8, a0, 280f
                  beq          a6, s8, 266f
                  xor          t2, t4, s6
264:              sub          a6, t4, a3
                  and          s9, s3, ra
266:              bgeu         s2, a4, 283f
                  xori         s9, s8, 732
268:              or           t2, t0, zero
                  addi         t2, s10, 733
                  and          t6, zero, a4
                  add          s11, a7, zero
                  slt          t3, s8, a1
                  slli         s9, a5, 1
                  lui          s10, 698757
                  xori         s4, sp, -1286
                  sltu         t6, s8, a5
                  andi         s7, s9, -1335
                  nop
                  slli         t1, s0, 21
280:              sra          s4, s3, s9
                  andi         a5, a2, -1068
                  bge          s4, s2, 293f
283:              xor          zero, a2, ra
                  slli         t5, s3, 0
                  bltu         t4, gp, 300f
                  sll          zero, a0, s9
                  bltu         a7, s2, 301f
                  beq          gp, ra, 305f
                  xori         a0, a2, 1659
                  sub          s11, s0, s10
                  bgeu         gp, s5, 307f
                  sltiu        a2, s9, -537
293:              srl          sp, a3, a4
                  slt          a6, t5, s11
                  beq          t2, a4, 306f
                  andi         t3, s3, -1538
                  slt          s1, a4, s8
                  sltu         s4, s8, a7
                  beq          s11, s3, 308f
300:              srl          s4, t1, t2
301:              slti         gp, gp, -1912
                  sltu         a5, a1, t5
                  sub          s9, a7, ra
                  sub          s5, s5, s3
305:              ori          s8, a1, -25
306:              add          s8, t4, zero
307:              sll          s9, t6, s2
308:              srl          sp, s2, t4
                  sub          zero, a2, t5
                  sub          sp, t0, tp
                  and          a5, s1, s10
                  srl          s8, a1, s10
                  and          gp, s1, s7
                  bne          s5, tp, 322f
                  auipc        s5, 913629
                  srai         t5, s1, 6
                  blt          a4, zero, 325f
                  blt          sp, t4, 324f
                  sltiu        s2, s3, -2020
                  bgeu         s10, zero, 327f
                  slt          a7, t4, s8
322:              lui          a7, 877006
                  sltiu        s9, s2, -749
324:              srai         a2, a5, 15
325:              sra          t5, s6, t3
                  sltiu        ra, s2, 1579
327:              slli         t1, t6, 9
                  lui          t5, 830314
                  beq          s9, zero, 336f
                  or           t5, t3, s9
                  xor          s6, s0, a1
                  addi         s4, a2, -1969
                  addi         s9, s7, 1083
                  or           a5, a0, tp
                  srai         s0, zero, 0
336:              srl          s8, a1, a5
                  srli         s10, s10, 10
                  nop
                  slli         a6, s4, 7
                  sltu         s1, zero, zero
                  and          s0, s10, s10
                  sra          s9, s9, a7
                  or           t2, s2, s2
                  and          t3, a0, t5
                  blt          s9, s0, 354f
                  lui          s10, 739950
                  bgeu         zero, s10, 361f
                  sll          t3, t3, sp
                  ori          s0, t1, 1456
                  bltu         s1, zero, 357f
                  and          a7, s1, s4
                  slti         s10, s7, -1151
                  sll          t5, s5, t6
354:              ori          a7, s6, -161
                  slli         s1, gp, 20
                  and          s7, a5, s2
357:              or           s8, s5, tp
                  andi         a4, gp, 1631
                  slli         s8, t1, 11
                  bltu         zero, t3, 362f
361:              bne          s1, s9, 373f
362:              bne          s5, zero, 367f
                  sra          gp, s2, s5
                  bgeu         a3, t1, 371f
                  beq          a4, s8, 376f
                  srli         a0, s11, 25
367:              add          s1, s3, s6
                  andi         sp, t3, -684
                  blt          s0, t2, 374f
                  srli         s11, t2, 14
371:              srl          s9, a6, a1
                  beq          a1, a7, 391f
373:              blt          t6, zero, 384f
374:              srl          gp, s5, a6
                  beq          s2, s10, 379f
376:              slti         s8, sp, -233
                  bltu         s11, a5, 394f
                  bgeu         gp, t3, 394f
379:              xori         s7, s10, -42
                  and          zero, a2, s1
                  blt          a3, zero, 393f
                  addi         a3, t6, -1798
                  slli         a4, a4, 22
384:              nop
                  andi         a7, s2, 355
                  slt          a7, tp, t6
                  lui          t3, 917772
                  addi         t6, tp, -943
                  sltu         sp, s0, t2
                  bgeu         sp, s7, 402f
391:              blt          s10, s5, 408f
                  srl          s9, s8, s11
393:              xor          s9, s5, s1
394:              sub          t0, tp, t5
                  ori          s9, t6, -42
                  srl          tp, t6, sp
                  slti         a0, s0, 1211
                  sltu         a4, a5, s9
                  srl          s0, s2, s10
                  bge          s10, s6, 419f
                  bltu         s3, s2, 408f
402:              auipc        s1, 460389
                  sltiu        s10, tp, 1944
                  bne          s10, t5, 419f
                  bltu         s2, t0, 422f
                  srli         s5, s0, 6
                  sll          t5, t4, a0
408:              slli         a2, s10, 9
                  srli         t3, s0, 11
                  sub          s11, a0, s4
                  andi         a7, a2, 377
                  auipc        s8, 76390
                  auipc        gp, 543305
                  slt          t2, t6, t5
                  slli         t2, s7, 23
                  andi         t0, t3, -390
                  sltiu        t0, a7, -646
                  slt          s10, t6, sp
419:              slt          a5, tp, s10
                  srl          t1, sp, zero
                  sll          s11, gp, s2
422:              and          t0, s10, t5
                  blt          a6, tp, 428f
                  nop
                  sll          s8, gp, s5
                  sltu         zero, gp, s7
                  nop
428:              ori          s11, s11, 1237
                  and          s9, t3, a3
                  or           a2, t4, t4
                  andi         t5, a6, -1414
                  sll          t0, s1, ra
                  nop
                  ori          a5, s9, -142
                  sub          s9, a4, s9
                  beq          a4, a5, 444f
                  sltiu        s7, zero, 1571
                  sll          s9, s5, t2
                  auipc        zero, 747323
                  or           gp, s6, gp
                  addi         s0, s0, 454
                  nop
                  or           zero, a0, s7
444:              nop
                  sltu         s1, a7, s6
                  blt          ra, t6, 448f
                  and          ra, s5, a3
448:              srli         s8, sp, 7
                  sltu         a6, s5, a2
                  sra          a5, s6, s10
                  blt          t3, a2, 456f
                  ori          t6, s3, 8
                  bgeu         s7, t2, 462f
                  lui          t3, 41063
                  addi         gp, a1, 693
456:              srli         a5, tp, 2
                  bne          s11, s10, 474f
                  andi         a2, a1, -986
                  sltiu        t2, a0, -145
                  sll          gp, s11, a5
                  la           s6, sub_3
                  nop
                  addi         s6, s6, 36
                  srli         a4, gp, 4
                  beq          a5, t6, sub_1_j2 #branch to jump instr
                  srl          t5, a3, s9
                  andi         a4, a0, 1696
                  sltiu        s2, t5, 873
                  lui          a7, 971075
sub_1_j2:         jalr         t1, s6, -36 #jump sub_1 -> sub_3
                  or           s7, s7, zero
                  slt          s7, t6, s9
                  blt          ra, a7, 474f
                  auipc        a4, 125329
462:              sub          a2, s8, t0
                  srli         s5, a4, 27
                  bne          s6, t6, 478f
                  slti         s10, s0, -1318
                  sll          s2, s0, s6
                  bltu         sp, t0, 487f
                  sltiu        a0, ra, -969
                  bltu         a2, s6, 477f
                  sub          sp, s10, zero
                  srli         s4, s0, 29
                  andi         zero, a6, -1717
                  bge          a7, s10, 480f
474:              auipc        t3, 412855
                  srli         a3, a6, 6
                  slt          s6, t1, a2
477:              and          s9, t6, s9
478:              bltu         s1, s11, 487f
                  bge          s6, s7, 485f
480:              add          t5, s5, t5
                  sra          t5, t3, a2
                  bge          t5, s6, 499f
                  auipc        a0, 434088
                  slti         t5, t4, 1598
485:              or           zero, a7, a7
                  slli         t3, tp, 3
487:              addi         tp, t0, 521
                  ori          s4, ra, -1075
                  add          gp, s2, t1
                  sll          zero, tp, s6
                  srl          ra, tp, a7
                  bge          t0, s0, 500f
                  auipc        ra, 408728
                  slt          t1, t6, tp
                  srl          s7, s8, a7
                  bgeu         s8, s11, 503f
                  srl          a3, ra, a1
                  nop
499:              sub          sp, t3, tp
500:              slt          s11, a6, t5
                  sltu         a0, a5, a0
                  ori          t1, ra, 1295
503:              andi         s1, a6, 2006
                  bne          s1, t3, 513f
                  bge          s3, a2, 511f
                  bltu         t0, t2, 526f
                  blt          a0, t5, 526f
                  xori         t5, ra, 1240
                  bge          s9, t2, 523f
                  srl          zero, a5, t2
511:              sll          a6, t3, t4
                  sub          t2, zero, s2
513:              srai         s5, a1, 3
                  sra          s11, t5, s10
                  blt          s1, tp, 524f
                  srai         t3, zero, 17
                  bltu         a0, t4, 533f
                  srai         t2, t4, 31
                  bgeu         tp, zero, 536f
                  and          a2, s3, a2
                  sltu         t3, s6, gp
                  ori          s2, sp, -1916
523:              xor          t3, s9, s10
524:              bltu         s0, a5, 541f
                  and          a4, s1, t5
526:              sll          t2, a7, t6
                  bgeu         a2, s2, 532f
                  add          a3, a5, a0
                  add          a3, s8, t4
                  lui          s1, 847215
                  sub          t1, sp, tp
532:              bge          t1, s1, 544f
533:              slti         ra, t6, -1888
                  andi         t1, s11, 1763
                  ori          sp, a3, 1606
536:              blt          a0, s10, 547f
                  beq          s11, s0, 539f
                  addi         t3, s5, -1031
539:              slli         t1, s2, 3
                  andi         s5, tp, -676
541:              sltiu        a5, ra, -509
                  srli         zero, t4, 10
                  xor          ra, t1, a6
544:              slt          s11, s7, a3
                  sub          s11, t4, a4
                  srli         s11, s3, 2
547:              andi         t3, t3, 1335
                  slt          s0, s0, a5
                  bge          s2, t5, 553f
                  sub          a6, s2, s9
                  bge          s0, zero, 565f
                  beq          s6, sp, 563f
553:              beq          s3, t4, 560f
                  nop
                  add          tp, a2, t5
                  slt          t0, a0, a3
                  srl          a6, sp, s7
                  or           s2, s0, s9
                  ori          sp, t0, -1944
560:              slti         t2, t2, -1319
                  slt          zero, s1, t1
                  andi         s10, zero, -1052
563:              andi         zero, ra, -1350
                  addi         t2, s2, 1283
565:              sub          a0, a7, sp
                  bne          gp, s7, 578f
                  sltiu        s4, gp, 1610
                  blt          s3, t4, 573f
                  bgeu         t6, a1, 577f
                  and          s11, s3, a4
                  bltu         sp, t5, 588f
                  bne          a6, s1, 587f
573:              or           tp, t0, a0
                  srli         a7, s5, 13
                  blt          s1, t5, 592f
                  sltu         gp, s3, ra
577:              srl          s10, a2, s8
578:              srai         s8, a6, 15
                  lui          t1, 298810
                  bltu         a5, a1, 588f
                  slt          a3, t1, ra
                  srli         a5, s10, 19
                  srli         s8, zero, 3
                  or           s0, a4, a5
                  sll          s9, t3, t1
                  slli         s9, a3, 7
587:              sltiu        t6, t1, -1589
588:              sll          ra, s9, a5
                  slli         a5, sp, 7
                  lui          s10, 703596
                  bltu         s9, a4, 598f
sub_1_14:         jal          t1, 13f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          ra, 22f
3:                jal          tp, 18f
4:                jal          ra, 14f
5:                jal          t2, 3b
6:                jal          ra, 12f
7:                jal          t1, 6b
8:                jal          ra, 20f
9:                jal          ra, 16f
10:               jal          t1, 1b
11:               jal          s7, 8b
12:               jal          t1, 9b
13:               jal          ra, 10b
14:               jal          ra, 11b
15:               jal          t1, 4b
16:               jal          s11, 21f
17:               jal          ra, 19f
18:               jal          ra, 0b
19:               jal          ra, 5b
20:               jal          s8, 7b
21:               jal          ra, 17b
22:               nop
592:              bne          t6, a5, 609f
                  andi         ra, a7, -1899
                  add          ra, s10, s2
                  bge          a6, s4, 614f
                  slti         s1, s9, -1815
                  srl          s4, s6, t1
598:              beq          a7, s1, 603f
                  bltu         s3, a6, 607f
                  slt          s7, ra, s11
                  ori          a7, t2, 1566
                  slti         zero, t1, -1335
603:              bgeu         a2, t3, 607f
                  auipc        s4, 409969
                  sltu         tp, zero, sp
                  xori         a6, s0, 1118
607:              slli         t2, a5, 7
                  beq          t1, s0, 610f
609:              blt          a1, s2, 617f
610:              sltiu        a2, a1, 1149
                  bne          a3, t2, 616f
                  srl          a3, sp, s3
                  blt          gp, s8, 624f
614:              nop
                  sra          t5, s4, a7
616:              bgeu         s10, t2, 621f
617:              bltu         s9, t3, 624f
                  or           s11, s4, t1
                  slli         t2, a0, 23
                  slt          gp, t4, s7
621:              slt          ra, a4, s9
                  sll          s9, tp, s8
                  beq          s6, s3, 640f
624:              lui          t2, 448389
                  nop
                  xori         a7, a1, 1287
                  blt          s11, s2, 641f
                  sltiu        a6, t3, 800
                  bge          a7, t5, 645f
                  or           gp, s0, s7
                  auipc        a0, 594398
                  or           s10, s9, t5
                  sll          a2, a0, t1
                  srli         a4, t2, 3
                  xori         ra, s0, -1077
                  slt          a2, t6, a1
                  and          a3, s8, a6
                  srli         s1, s8, 3
                  beq          s4, s8, 648f
640:              bge          s11, tp, 655f
641:              slti         t0, a2, 1431
                  bgeu         tp, a4, 654f
                  bltu         a1, t3, 651f
                  bge          s6, s3, 655f
645:              blt          a4, a0, 652f
                  sll          s6, t2, a2
                  bgeu         s10, s7, 659f
648:              xor          s10, t2, s1
                  bgeu         s11, ra, 656f
                  srli         t6, tp, 11
651:              add          sp, s11, s0
652:              and          a2, t2, zero
                  slti         a7, a5, 963
654:              auipc        s7, 804198
655:              beq          s6, t4, 672f
656:              sra          s4, a7, t4
                  bge          s10, a7, 676f
                  or           s9, t1, gp
659:              bgeu         s11, t2, 676f
                  and          t2, a1, tp
                  slli         t3, a1, 16
                  sra          sp, a6, s1
                  auipc        a0, 1018859
                  slti         s5, zero, -1276
                  xori         s10, s6, -1998
                  srli         a5, t6, 6
                  sra          s10, a2, s4
                  beq          t6, a6, 677f
                  bgeu         t5, a7, 683f
                  slli         a0, s5, 17
                  andi         t5, t4, -890
672:              andi         tp, s0, 1712
                  and          a4, s9, tp
                  sltiu        s5, s10, 1882
                  xor          a5, s4, s6
676:              srai         s8, s4, 22
677:              slt          t5, s3, a6
                  xor          sp, a4, t4
                  ori          t5, a6, 555
                  beq          s6, s0, 688f
                  srl          s5, s7, s9
                  sltiu        s1, ra, 656
683:              bge          s7, a3, 700f
                  bge          s11, s3, 704f
                  bltu         s11, sp, 691f
                  bltu         s5, sp, 705f
                  srl          t5, t2, t1
688:              srli         t0, s0, 29
                  auipc        t0, 735552
                  xor          a0, t3, s4
691:              xori         t5, s11, -242
                  bltu         t5, s1, 709f
                  srl          a6, s5, t6
                  srli         t2, a3, 28
                  addi         t0, sp, 760
                  and          zero, t5, t4
                  bgeu         s3, a6, 702f
                  beq          a1, t1, 712f
                  srli         zero, a0, 31
700:              bltu         s7, s6, 707f
                  xor          s11, a5, s3
702:              andi         a2, t0, 403
                  bge          a3, s1, 708f
704:              sub          t2, t3, s7
705:              srli         gp, a6, 30
                  sra          a6, s4, t1
707:              add          t0, s0, s3
708:              or           t3, s0, t5
709:              lui          s1, 483274
                  lui          t3, 813740
                  slti         ra, t4, 2019
712:              slti         s11, t3, 1803
                  blt          t5, a0, 720f
                  sltu         t3, s4, a4
                  blt          s2, s1, 726f
                  srl          a3, gp, ra
                  slt          s8, t3, s2
                  auipc        s7, 812731
                  sll          s4, a5, s9
720:              add          a7, t4, s7
                  slti         t5, s8, -51
                  ori          s11, s10, 585
                  or           a6, a7, s2
                  add          s9, a4, s0
                  xori         s5, a3, 690
726:              xor          t6, tp, s6
                  slt          t5, tp, tp
                  srli         tp, gp, 3
                  or           s10, a6, sp
                  srli         a0, a6, 7
                  srl          s10, s6, a6
                  sra          s2, t3, s8
                  sra          s10, s2, s10
                  lui          s7, 196224
                  bge          s8, t2, 755f
                  sub          s5, a4, t2
                  srl          s7, t3, s3
                  sll          sp, s6, sp
                  and          t1, t4, ra
                  xori         ra, s11, 743
                  sra          s2, t1, s1
                  slli         s2, s8, 17
                  bge          zero, s7, 760f
                  bgeu         s5, ra, 761f
                  sltu         tp, ra, a4
                  blt          s7, tp, 763f
                  beq          s8, t1, 756f
                  slt          zero, gp, tp
                  sub          s2, a5, s7
                  bltu         s5, s3, 756f
                  sub          s2, s11, a3
                  bgeu         t4, t6, 764f
                  addi         a3, t0, -1620
                  slt          gp, ra, s5
755:              sll          a5, s7, s4
756:              sub          t1, s10, a1
                  sltiu        s1, a5, -1575
                  sltiu        s11, s6, -1585
                  slt          s10, a7, a0
760:              bge          a4, a3, 768f
761:              or           gp, sp, tp
                  srl          a0, s10, s6
763:              sltu         a5, a3, t2
764:              slti         ra, s7, -1692
                  and          s1, a2, a6
                  bge          ra, s6, 783f
                  beq          s0, ra, 769f
768:              slti         zero, sp, -1995
769:              auipc        t3, 665609
                  blt          t3, sp, 786f
                  bltu         a4, s2, 779f
                  sll          a4, zero, a0
                  sltu         s11, sp, t3
                  ori          s10, s10, -177
                  slt          a5, zero, t3
                  blt          a6, a5, 780f
                  andi         a2, a7, -1945
                  slli         s9, a4, 16
779:              bltu         a5, a0, 784f
780:              bne          t0, t0, 789f
                  bgeu         a1, s6, 788f
                  bne          a3, s1, 797f
783:              sltiu        s10, a2, -228
784:              srl          t6, a1, s10
                  beq          t2, s4, 796f
786:              ori          a0, s4, 26
                  sra          s7, a4, s0
788:              sltu         s4, t1, t5
789:              sll          s2, t0, t5
                  addi         gp, zero, -679
                  lui          a4, 375529
                  sub          a4, gp, a3
                  beq          a0, t5, 810f
                  bge          t1, s1, 813f
                  xori         s6, a5, -809
796:              srai         s6, a0, 20
797:              sll          s11, t3, t1
                  sub          t1, a2, s3
                  nop
                  sra          t6, zero, s4
                  lui          t5, 200070
                  auipc        a7, 201705
                  srai         t5, a3, 20
                  slli         a4, a6, 15
                  sub          a2, s8, t5
                  addi         s7, s10, -985
                  srai         t0, tp, 20
                  bltu         s9, s8, 827f
                  ori          s0, s11, -396
810:              srl          tp, s10, t1
                  xori         a4, t2, 2032
                  sub          t5, a4, s10
813:              and          a2, s4, t0
                  sll          zero, tp, tp
                  andi         s10, zero, 1061
                  auipc        a3, 417177
                  sltiu        s11, ra, 805
                  srai         t0, t4, 17
                  xor          sp, zero, a6
                  slti         s0, s7, 1081
                  bne          s6, s10, 829f
                  sltu         ra, s0, t4
                  ori          s4, s7, -1787
                  add          s11, s11, s5
                  or           a5, s1, s1
                  add          a2, s5, gp
827:              srai         s2, s8, 12
                  auipc        s5, 428158
829:              add          a0, a4, s1
                  xor          s8, s3, zero
                  or           t2, gp, s8
                  sltu         gp, t4, s7
                  sub          s6, s8, s2
                  lui          s5, 285025
                  xor          gp, a5, s2
                  bgeu         s11, t6, 850f
                  slli         s1, tp, 5
                  srli         t0, t2, 4
                  add          a6, t4, s10
                  sra          a7, s5, a5
                  add          t3, s11, t5
                  srai         a0, a1, 7
                  beq          t2, s6, 855f
                  beq          s3, sp, 849f
                  add          a0, s9, t0
                  bltu         a0, s8, 861f
                  srl          s9, a6, s7
                  sltiu        a5, a7, -2035
849:              srai         a2, a2, 12
850:              xori         s7, a5, 1639
                  bgeu         s0, a7, 868f
                  bne          a3, s5, 868f
                  sub          t5, s11, a0
                  bge          a2, a7, 859f
855:              and          a4, s10, s7
                  bgeu         sp, a2, 862f
                  sll          t3, a1, s5
                  slli         a4, t0, 29
859:              lui          s2, 400611
sub_1_20:         jal          t1, 12f
0:                jal          ra, 19f
1:                jal          ra, 23f
2:                jal          t1, 14f
3:                jal          ra, 21f
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          t1, 5b
7:                jal          t2, 16f
8:                jal          ra, 11f
9:                jal          s1, 18f
10:               jal          ra, 1b
11:               jal          t1, 13f
12:               jal          ra, 0b
13:               jal          tp, 7b
14:               jal          t6, 20f
15:               jal          ra, 22f
16:               jal          ra, 3b
17:               jal          ra, 15b
18:               jal          ra, 2b
19:               jal          s0, 17b
20:               jal          gp, 10b
21:               jal          ra, 6b
22:               jal          t1, 4b
23:               sltiu        s10, a4, -1753
                  srli         s7, zero, 0
861:              srl          s5, t5, s5
862:              beq          tp, s9, 876f
                  sltiu        s6, s5, 1789
                  sltiu        s4, s8, -510
                  or           a3, t4, t1
                  slt          s10, ra, t2
                  srai         tp, tp, 15
868:              and          t1, t6, a2
                  srli         a4, t3, 3
                  slt          a2, a3, a4
                  bge          s6, t5, 883f
                  sll          a3, t3, s8
                  xori         t3, s2, 757
                  sra          s4, s5, zero
                  bge          zero, a6, 892f
876:              xor          s5, a5, s3
                  sltiu        t3, t0, -1395
                  srli         s1, gp, 27
                  slti         a4, t5, -207
                  xori         t2, sp, 899
                  lui          t3, 294116
                  bltu         a4, s0, 899f
883:              srli         tp, s8, 27
                  addi         t2, t1, -1332
                  slti         a7, a7, 1010
                  addi         t3, a6, -447
                  sltu         s5, a7, t6
                  sll          tp, a4, t2
                  sltu         t3, t0, tp
                  sub          t2, ra, s1
                  bgeu         s8, t2, 895f
892:              auipc        s5, 944480
                  bge          t1, s9, 900f
                  nop
895:              srli         tp, t4, 18
                  srli         gp, s10, 5
                  sll          s2, s7, a2
                  blt          sp, zero, 906f
899:              sra          a3, t6, tp
900:              nop
                  slli         a0, a1, 21
                  bge          t0, s6, 909f
                  sra          a2, t3, a0
                  andi         s0, a2, 678
                  blt          a2, s3, 910f
906:              slli         a3, t6, 1
                  bltu         t4, s1, 918f
                  xor          s6, t0, zero
909:              auipc        gp, 482049
910:              slt          t5, s5, ra
                  auipc        s0, 1003279
                  beq          t1, s9, 924f
                  srai         s5, s9, 17
                  bne          s11, t4, 931f
                  auipc        s1, 44645
                  bne          t5, zero, 927f
                  blt          a5, s8, 936f
918:              ori          s10, t3, -277
                  sltu         a3, s5, s9
                  bgeu         a0, a3, 929f
                  slti         sp, s6, -428
                  addi         s7, tp, 747
                  sltiu        a7, s2, -1689
924:              andi         s9, t6, 88
                  addi         s2, t5, 1724
                  sll          t5, s9, a3
927:              sltu         a4, s7, t0
                  or           a2, a0, zero
929:              or           t0, t3, a0
                  sltiu        t3, t3, 1574
931:              bltu         t6, s5, 939f
                  sltiu        a4, s11, 288
                  ori          s7, a2, -2023
                  sll          t0, s9, t2
                  blt          t1, s3, 954f
936:              addi         sp, s4, 1824
                  or           a6, ra, s4
                  andi         a3, s5, -380
939:              srai         s9, tp, 27
                  slt          a2, s2, s6
                  nop
                  xori         s6, s0, -47
                  lui          ra, 715562
                  bge          s4, a0, 951f
                  srai         a4, a4, 14
                  slti         t3, a0, -1873
                  or           tp, ra, s7
                  sltiu        s4, t0, 1768
                  ori          s4, s7, 26
                  sra          s4, s0, s7
951:              bge          s9, t2, 968f
                  or           a7, t6, a3
                  xori         s9, s10, -1430
954:              sltu         s10, s8, s10
                  sll          a6, a5, s5
                  ori          s11, a2, 2044
                  bne          t2, a1, 965f
                  blt          s8, s2, 967f
                  xor          t0, t3, s10
                  bne          gp, a2, 980f
                  sra          a7, t4, tp
                  sltu         zero, gp, t1
                  bne          a6, t0, 968f
                  ori          s9, s1, -867
965:              and          s1, a3, a7
                  bltu         ra, s7, 980f
967:              sltiu        s9, s5, -1271
968:              nop
                  ori          zero, t1, 275
                  sra          a6, a5, s6
sub_1_34:         jal          t1, 4f
0:                jal          t0, 5f
1:                jal          a7, 3f
2:                jal          t1, 8f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          tp, 1b
6:                jal          ra, 10f
7:                jal          gp, 9f
8:                jal          ra, 11f
9:                jal          ra, 6b
10:               jal          t1, 2b
11:               lui          zero, 826494
                  xori         s8, t1, -359
                  add          a3, s0, t6
                  srl          a7, t0, t6
                  bge          gp, s9, 976f
                  sll          s1, s11, s2
976:              andi         sp, t4, 1010
                  addi         s2, a1, -855
                  sub          tp, a3, s4
                  auipc        a5, 36596
980:              andi         a0, gp, 843
                  beq          s2, t1, 983f
                  srl          s8, t4, tp
983:              sub          t3, t1, s0
                  sltiu        ra, a6, -1999
                  sltu         a5, a2, s2
                  sltu         s0, a7, s0
                  xori         a5, s0, 1589
                  addi         s9, ra, 128
                  slli         s5, gp, 20
                  xor          t1, s1, t3
                  blt          t5, a1, 1008f
                  sltu         gp, t2, a6
                  slti         ra, a0, -641
                  xori         a6, a1, 2007
                  auipc        t3, 544793
                  bge          sp, s5, 1013f
                  lui          t5, 112801
                  srai         s2, s4, 26
                  slt          s1, a2, s2
                  sltiu        a4, t3, -517
                  beq          s8, a3, 1009f
                  bltu         s3, s0, 1016f
                  xor          a7, tp, t1
                  auipc        s7, 950802
                  ori          zero, s9, 1275
                  or           s6, s3, a1
                  slt          s2, s2, a4
1008:             bltu         s7, s2, 1019f
sub_1_38:         jal          t1, 9f
0:                jal          ra, 5f
1:                jal          t1, 2f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          ra, 14f
6:                jal          t1, 15f
7:                jal          t1, 16f
8:                jal          t0, 1b
9:                jal          t1, 7b
10:               jal          ra, 13f
11:               jal          ra, 6b
12:               jal          s11, 10b
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          ra, 17f
16:               jal          ra, 12b
17:               srli         s4, t4, 19
1009:             xori         a5, tp, -1625
                  add          s10, s10, tp
                  sltiu        gp, t4, -1219
                  sll          s4, t3, t1
1013:             bltu         s6, a7, 1027f
                  xori         ra, t6, 522
                  srl          t6, tp, t1
1016:             srl          zero, t1, t0
                  addi         t5, s5, -2048
                  srli         tp, sp, 12
1019:             sra          zero, t5, ra
                  add          s1, s2, tp
                  bgeu         a7, s4, 1030f
                  ori          t6, zero, -506
                  slli         a6, t6, 1
                  ori          a7, a7, -2034
                  sltiu        sp, s8, -1540
                  sll          t3, t4, s8
1027:             sltiu        t3, t4, 140
                  bgeu         t3, gp, 1032f
                  sltiu        zero, a0, -1543
1030:             slli         a7, a4, 10
                  xori         a3, zero, 246
1032:             slt          s5, ra, s11
                  sll          s2, t3, a0
                  sub          t2, a5, a0
                  blt          a5, tp, 1042f
                  sub          sp, s6, s0
                  slti         a7, a3, 1983
                  addi         s6, s2, 1677
                  andi         s6, s0, 1032
                  sll          s7, s7, t5
                  srai         s5, t0, 27
1042:             ori          s6, s7, -278
                  bge          tp, gp, 1062f
                  sltiu        zero, s1, 1583
                  bltu         s10, ra, 1051f
                  sltu         s7, s9, s11
                  sltiu        zero, s11, 1698
                  sra          a4, a2, a0
                  srl          zero, s2, s4
                  slt          s5, t0, a0
1051:             srli         s4, s7, 25
                  or           s11, t4, a7
                  srli         a0, gp, 25
                  beq          s11, a5, 1069f
                  sltu         s5, gp, s3
                  srl          a0, a2, t6
                  sub          s2, s5, a7
                  slli         a0, a0, 9
                  sltu         a6, s2, tp
                  slt          a7, s6, t5
                  slti         sp, a2, 104
1062:             addi         ra, s8, 32
                  bltu         gp, s3, 1080f
                  auipc        s7, 516074
                  srl          s4, a6, tp
                  sltiu        s11, t3, 1112
                  srl          a2, a4, zero
                  bne          tp, s10, 1087f
1069:             bgeu         s10, s8, 1074f
                  auipc        s11, 668912
                  sub          t2, s10, s9
                  slt          a2, a5, a4
                  bge          a6, s4, 1089f
1074:             slt          t1, s8, a6
                  xori         s5, s4, -299
                  auipc        t5, 462978
                  sltiu        t5, t6, -689
                  addi         s7, s11, 1466
                  sll          a3, a6, t1
1080:             add          s2, a2, t5
                  slti         sp, t6, 338
                  bltu         a4, a4, 1102f
                  slti         s10, s8, 1787
                  sltiu        s10, s8, 466
                  xor          a7, a5, a3
                  andi         t2, s9, 1238
1087:             bne          a3, zero, 1096f
                  or           s5, a5, t6
1089:             xori         t3, s3, -287
                  nop
                  sub          s5, t2, s11
                  sltiu        a2, t1, -1625
                  sltu         s7, s5, a1
                  lui          a2, 174261
sub_1_37:         jal          t1, 11f
0:                jal          s5, 1f
1:                jal          ra, 20f
2:                jal          ra, 0b
3:                jal          ra, 21f
4:                jal          s0, 17f
5:                jal          t1, 9f
6:                jal          tp, 3b
7:                jal          a0, 8f
8:                jal          t2, 6b
9:                jal          ra, 23f
10:               jal          ra, 4b
11:               jal          t1, 10b
12:               jal          sp, 19f
13:               jal          a0, 2b
14:               jal          ra, 18f
15:               jal          ra, 5b
16:               jal          s10, 26f
17:               jal          ra, 15b
18:               jal          ra, 16b
19:               jal          tp, 25f
20:               jal          sp, 14b
21:               jal          ra, 22f
22:               jal          tp, 28f
23:               jal          a6, 27f
24:               jal          ra, 7b
25:               jal          ra, 13b
26:               jal          t2, 24b
27:               jal          ra, 12b
28:               add          a7, s2, s2
                  bltu         t6, zero, 1107f
1096:             or           s4, s11, s3
                  slt          tp, s9, t3
                  slli         zero, t4, 0
                  srl          sp, s1, ra
                  add          t5, ra, s6
                  sltiu        s1, s4, -477
1102:             andi         s0, a6, -256
                  slt          a5, s8, a2
                  and          zero, a5, s1
                  and          s11, s2, sp
                  andi         s0, t3, 138
1107:             slli         a3, a2, 18
                  bne          tp, sp, 1125f
                  bltu         t5, a0, 1120f
                  srai         s2, a7, 28
                  lui          a6, 927707
                  xori         s6, s1, 1087
                  slt          zero, s7, a0
                  andi         s2, s8, -1514
                  sub          t6, a2, s5
                  lui          a4, 177043
                  add          a0, a1, gp
                  slti         a6, a3, -1454
                  sltiu        t3, tp, 1182
1120:             blt          s3, tp, 1127f
                  or           a0, a5, tp
                  addi         s8, t2, 1757
                  sltiu        s2, a2, -125
                  xor          gp, a5, s8
1125:             sltiu        s2, t1, -1044
                  addi         s1, sp, -2006
1127:             bne          tp, t1, 1132f
                  addi         a7, s3, -678
                  srai         s10, s0, 8
                  sltiu        a2, a3, -76
                  add          sp, s1, t2
1132:             srli         s4, s2, 29
                  bltu         s5, a0, 1145f
                  andi         sp, a6, -694
                  auipc        zero, 273530
                  srli         a0, a2, 16
                  bltu         a1, s8, 1145f
                  and          s10, t4, s9
                  sltiu        s8, t4, -634
                  xori         s1, s11, 367
                  lui          s0, 110937
                  lui          a3, 999244
                  slli         t6, s11, 26
                  add          tp, a0, t5
1145:             bne          a2, a2, 1153f
                  lui          gp, 44506
                  addi         s0, a0, -1276
                  addi         t1, s0, -1851
                  slti         t3, zero, 1760
                  lui          s4, 996391
                  slt          a6, gp, s9
                  sltiu        tp, a5, 906
1153:             xori         a2, s0, -327
                  srli         s1, s1, 14
                  sra          ra, zero, a3
                  nop
                  addi         t0, a7, 1456
                  addi         a4, a3, 255
                  auipc        s5, 236173
                  bgeu         a6, s10, 1177f
                  sltu         tp, a0, a5
                  srai         t3, s4, 2
                  auipc        a7, 948020
                  bgeu         a6, s3, 1171f
                  beq          t2, tp, 1170f
                  and          a5, zero, ra
                  srl          a5, s10, s3
                  auipc        s11, 579562
                  sra          a5, tp, a5
1170:             addi         zero, s9, 938
1171:             sll          t3, s8, s9
                  sub          s5, a3, a7
                  sub          s11, a4, s4
                  addi         ra, t4, -648
                  sll          s7, s3, a5
                  xor          s1, s2, s2
1177:             beq          s3, s7, 1191f
                  xor          t5, s1, t6
                  blt          gp, a1, 1187f
                  and          t1, a6, gp
                  sll          s8, a7, s11
                  ori          s6, a6, -14
                  bge          sp, a4, 1197f
                  addi         s4, gp, 1249
                  blt          a0, zero, 1193f
                  ori          a6, t4, 1497
1187:             slli         s11, a1, 23
                  sll          a3, tp, s3
                  auipc        s5, 483739
                  blt          s4, a6, 1207f
1191:             xori         a3, s10, -1901
                  srai         s11, s7, 2
1193:             sltu         a0, t3, t1
                  bne          a1, s0, 1214f
                  andi         s7, s0, -1774
                  srai         zero, t2, 20
1197:             xor          t1, t4, a2
                  srai         t5, tp, 16
                  bge          s11, t3, 1201f
                  sltiu        a3, s0, 2040
1201:             xori         s5, t4, 962
                  xor          s2, s4, t4
                  sra          zero, sp, s1
                  bge          t6, s1, 1211f
                  and          a3, s10, t4
                  srl          sp, a0, gp
1207:             add          zero, a0, s7
                  addi         t5, s8, -286
                  nop
                  srli         a7, a2, 17
1211:             slli         s0, ra, 29
                  sltu         s7, t5, gp
                  lui          gp, 870232
1214:             slti         a2, s6, -1354
                  xor          t5, tp, t0
                  slt          s4, s8, s5
                  add          tp, zero, a1
                  slt          s2, s1, s3
                  nop
                  slti         s10, t4, -771
                  addi         s9, s2, 787
                  slli         zero, a1, 13
                  slti         t6, s11, 192
                  nop
                  la           s11, sub_2
                  addi         s11, s11, 70
                  and          a7, t2, s7
                  bge          s3, t4, sub_1_j3 #branch to jump instr
                  ori          tp, s0, 293
                  or           s9, a1, a5
                  andi         s4, a1, 96
                  srai         a4, s9, 2
                  srai         t5, a6, 20
sub_1_j3:         jalr         t1, s11, -70 #jump sub_1 -> sub_2
                  slli         t0, a5, 9
                  xor          s5, zero, t0
                  srl          t0, gp, t0
                  sltu         ra, sp, s7
                  and          t2, s0, t1
                  slti         t2, a0, 1716
                  srl          zero, s7, a4
                  bgeu         t4, s0, 1233f
                  sra          a0, a1, t3
                  sltu         s1, s11, a5
                  sltiu        s0, s2, -1804
1233:             slt          s0, zero, s6
                  and          s9, s4, tp
                  srl          t1, a3, s2
                  bgeu         t6, a0, 1247f
                  sltiu        zero, a5, -309
                  srli         sp, t4, 8
                  lui          s5, 664891
                  sra          s10, s3, tp
                  xori         a2, a2, 1551
                  sub          a5, s11, t5
                  bltu         a6, s10, 1250f
                  xori         s4, s7, -1237
                  andi         s4, s4, 1076
                  blt          s8, s1, 1255f
1247:             sll          s11, s0, s5
                  srai         t5, t4, 17
                  bge          s5, t0, 1265f
1250:             slli         s4, t1, 23
                  xori         s2, a0, -1498
                  bltu         s6, s11, 1271f
                  sll          a2, a0, s4
                  sltiu        gp, s6, -1434
1255:             sltiu        s11, t5, 921
                  or           tp, a0, t3
                  srai         tp, s3, 31
                  srl          s1, s10, s10
                  srli         a6, a4, 26
                  xor          s10, a4, ra
                  bge          t4, s7, 1269f
                  slli         t3, a7, 16
                  lui          zero, 261788
                  sltu         t3, t6, s3
1265:             slli         s10, a4, 0
                  bge          s11, gp, 1277f
                  and          s8, tp, s2
                  andi         a2, zero, 281
1269:             addi         zero, s9, 1324
                  add          s10, t4, a2
1271:             blt          a3, s5, 1288f
                  lui          zero, 309845
                  bgeu         gp, t3, 1292f
                  add          s11, zero, s10
                  bltu         t6, a2, 1281f
                  sll          zero, gp, t5
1277:             bge          a2, a3, 1294f
                  slt          s6, tp, s0
                  sub          s6, tp, a7
                  auipc        s2, 111263
1281:             add          t0, t3, zero
                  lui          zero, 623599
                  xori         ra, sp, -1948
                  ori          s7, ra, -641
                  sra          zero, s0, t4
                  auipc        t1, 274550
                  srai         s0, t0, 6
1288:             nop
                  auipc        s8, 720780
                  sra          a2, t5, a1
                  slli         s7, ra, 22
1292:             bne          t4, s4, 1301f
                  addi         a7, sp, -1288
1294:             slt          t5, gp, s11
                  sll          t2, ra, tp
                  lui          s9, 70499
                  srli         t3, s2, 7
                  sra          a7, s10, s10
                  bgeu         s7, s8, 1311f
                  slt          t3, a5, a0
1301:             sra          s5, s2, s6
                  bne          a6, t0, 1314f
                  blt          a3, s9, 1310f
                  slti         s6, s1, 1783
                  ori          s6, zero, -1783
                  add          s0, s0, s5
                  auipc        t0, 938442
                  nop
                  bge          zero, gp, 1314f
1310:             bgeu         s3, s10, 1315f
1311:             srli         t3, a0, 12
                  bne          s9, t4, 1329f
                  srai         t0, s11, 0
1314:             slt          ra, t0, t6
1315:             sub          a4, s0, ra
                  bne          a1, t6, 1333f
                  sll          a3, t6, a2
                  beq          t1, t4, 1323f
                  beq          a4, s10, 1334f
                  auipc        t3, 495128
                  srai         a6, s4, 29
                  slt          s11, a6, s8
1323:             srai         t2, a6, 11
                  add          ra, s7, t0
                  beq          t5, a0, 1332f
                  or           a4, a4, s4
                  bgeu         s1, s1, 1333f
                  srai         a7, s3, 28
1329:             blt          a6, a4, 1338f
                  slt          zero, s10, s0
                  sltiu        a6, a1, 1815
1332:             bgeu         t5, s4, 1340f
1333:             and          s0, a1, t1
1334:             srai         t5, t2, 7
                  xor          a6, s3, t4
                  blt          a3, t5, 1344f
                  bge          a5, t0, 1349f
sub_1_7:          jal          t1, 9f
0:                jal          t0, 6f
1:                jal          ra, 7f
2:                jal          t1, 8f
3:                jal          ra, 0b
4:                jal          ra, 5f
5:                jal          s6, 3b
6:                jal          ra, 10f
7:                jal          ra, 2b
8:                jal          t1, 4b
9:                jal          t1, 1b
10:               auipc        a0, 306432
1338:             bltu         a4, t1, 1347f
                  addi         a6, t4, 1059
1340:             lui          t1, 114272
                  bne          s7, tp, 1346f
                  auipc        s4, 1012293
                  srl          t6, s0, ra
1344:             bltu         a7, a4, 1356f
                  blt          s10, s5, 1347f
1346:             slt          s6, ra, t3
1347:             slt          a7, a7, a0
                  slt          t6, tp, s0
1349:             sra          a0, a7, t4
                  slli         ra, a1, 5
                  sltu         s1, t4, a7
                  bgeu         s9, a2, 1356f
                  bge          s11, tp, 1364f
                  slti         s11, s0, 670
                  srl          a6, s1, a4
1356:             bge          a5, s1, 1376f
                  xor          s5, s5, zero
                  bge          a7, a5, 1365f
                  addi         s7, s1, 1251
                  slt          t3, ra, ra
                  bge          t1, a3, 1369f
                  lui          a2, 742490
                  beq          a0, s4, 1380f
1364:             slti         t2, a6, 1581
1365:             nop
                  andi         t5, s4, 308
                  slt          s6, tp, t0
                  srl          gp, s3, s3
1369:             sra          s4, t4, a4
                  srli         a7, t3, 4
                  slt          gp, t4, s4
                  sll          s4, a7, s11
                  blt          s2, t0, 1390f
                  ori          t3, t4, -1014
                  addi         s11, s9, -1138
1376:             addi         t0, s10, -925
                  sltu         s1, ra, sp
                  slt          s10, s9, s6
                  slli         s4, s11, 9
1380:             lui          s7, 816583
                  bne          gp, a3, 1400f
                  add          s4, s4, t6
                  and          t2, a2, a7
                  bne          a3, s11, 1403f
                  and          t2, t5, a5
                  srli         s8, t2, 9
                  bltu         t0, t4, 1392f
                  auipc        t1, 622742
                  bge          a6, s4, 1403f
1390:             srl          a3, a0, t1
                  lui          t3, 25939
1392:             srl          sp, s1, s2
                  sra          t0, sp, t3
                  slli         a4, s5, 19
                  nop
                  srai         s7, s1, 7
                  ori          tp, s11, 283
                  or           s7, tp, a5
                  sra          t5, a6, a0
1400:             ori          s8, t4, -633
                  nop
                  addi         t1, a3, 881
1403:             ori          a2, t6, -1548
                  sra          t5, s4, s0
                  andi         t2, s11, -1065
                  blt          tp, a2, 1422f
                  ori          s8, a4, 878
                  bltu         a7, s3, 1425f
                  sra          sp, a7, ra
                  ori          a5, s7, -1127
                  ori          a7, t5, -1405
                  andi         zero, ra, -668
                  ori          s10, a7, -1910
                  addi         tp, a4, 860
                  slli         t2, s11, 29
                  addi         t5, t4, 579
                  slli         s10, s1, 2
                  xor          s8, a1, s9
                  lui          a4, 421190
                  beq          s1, a3, 1431f
                  addi         zero, t6, -1159
1422:             auipc        t3, 22085
                  sub          a5, a1, a6
                  slt          ra, ra, a7
1425:             and          s2, a0, sp
                  beq          a0, zero, 1443f
                  slt          t3, a6, s8
                  sltu         s6, t0, s3
                  slti         s8, s4, 2029
                  srl          sp, s0, t4
1431:             sll          ra, s11, gp
                  or           ra, s8, gp
                  sll          s11, t5, a3
                  slti         ra, a3, 376
                  bne          s8, a5, 1452f
                  lui          a3, 469525
                  addi         s11, ra, 569
                  bltu         s9, t1, 1453f
                  slt          tp, a2, s6
                  beq          s10, s7, 1447f
                  xori         sp, tp, 1421
                  srai         s1, s0, 25
1443:             srl          s11, t4, t2
                  slti         t2, s1, -758
                  ori          t2, t4, -419
                  add          s4, a4, s2
1447:             slti         ra, t2, -189
                  andi         t6, t5, -996
                  add          s9, s5, a1
                  add          a2, a0, t5
                  bgeu         s8, t0, 1465f
1452:             bltu         s11, a2, 1457f
1453:             bltu         a4, t1, 1467f
                  addi         t5, a3, 53
                  andi         s4, a0, -1203
                  xori         s2, a3, -1975
1457:             slt          s7, s10, t2
                  add          a7, s6, s6
                  nop
                  sub          s6, s1, t3
                  sltiu        s6, a5, -75
                  xor          s4, a3, t5
                  blt          t6, t5, 1482f
                  auipc        t1, 636896
1465:             sltu         s6, s6, a4
                  bltu         a1, s5, 1482f
1467:             sltu         s7, t0, a6
                  blt          a7, s5, 1485f
                  addi         a5, s11, -1724
                  bgeu         s3, s0, 1487f
                  blt          s0, zero, 1479f
                  slli         a4, s2, 5
                  auipc        a0, 872435
                  nop
                  slti         tp, s6, 1560
                  xori         gp, t6, -1457
                  or           s4, t2, t3
                  bgeu         s9, zero, 1480f
1479:             srl          a2, sp, a5
1480:             addi         s2, a2, 536
                  or           s5, a7, tp
1482:             beq          a2, gp, 1493f
                  slli         s7, ra, 11
                  srl          s1, s4, s4
1485:             addi         s2, t1, -1775
                  addi         s0, gp, -662
1487:             addi         zero, sp, 1710
                  xori         t6, s10, -435
                  xori         a5, s0, 883
                  bltu         s9, a0, 1504f
                  beq          ra, a7, 1511f
                  ori          ra, a2, 900
1493:             slti         s10, s5, -1191
                  slti         a2, s3, 1953
                  slt          t2, ra, a1
                  xor          a4, s1, tp
                  srli         s5, s2, 8
                  addi         s6, s7, 169
                  slt          s1, a2, s9
                  ori          tp, s1, -458
                  and          t5, s5, ra
                  sll          s1, sp, s4
                  srai         s4, t0, 26
1504:             slli         s10, ra, 18
                  sltiu        sp, a6, -964
                  bgeu         s2, zero, 1523f
                  ori          t3, t5, 642
                  auipc        gp, 128828
                  and          zero, ra, s4
                  slti         zero, zero, 1262
1511:             sltu         sp, sp, s9
                  sltu         s4, a3, ra
                  sra          t2, a1, t3
                  bne          s1, s3, 1519f
                  slti         a7, a0, -1575
                  lui          s10, 472438
                  and          a3, s7, s9
                  sra          s8, a6, s4
1519:             bge          a3, t3, 1526f
                  beq          t3, ra, 1532f
                  ori          s2, a7, 944
                  bne          s2, s2, 1531f
1523:             blt          t4, s7, 1528f
                  bltu         s0, s11, 1541f
                  sra          tp, s3, s7
1526:             sltiu        s2, sp, 1033
                  nop
1528:             or           s7, tp, s5
                  bge          t6, sp, 1548f
                  ori          a0, s11, -851
1531:             sub          s9, a7, s10
1532:             ori          a0, gp, -265
                  srai         s7, a2, 15
                  add          s8, t5, s5
                  addi         s10, s1, 454
                  add          a7, a6, t2
                  slli         t0, a4, 11
                  slti         s7, t4, -1
                  and          a3, s7, a1
                  srai         a6, s10, 27
1541:             add          s11, s1, a7
                  slti         a6, t2, -747
                  ori          ra, s9, 647
                  and          zero, a7, s10
                  nop
                  beq          a2, t5, 1557f
                  slt          t1, ra, zero
1548:             bltu         s9, s7, 1557f
                  sltu         t6, s6, tp
                  and          a5, a2, s5
                  bge          s5, t3, 1555f
                  xori         a0, a4, 1583
                  srai         s9, s5, 22
                  auipc        s10, 794705
1555:             sltiu        zero, s6, -1063
                  blt          a0, a3, 1562f
1557:             sltiu        t3, s11, 847
                  sra          s1, a3, s3
                  or           t1, s3, s9
                  lui          ra, 122661
                  sra          t6, s4, tp
1562:             sub          a3, a7, t2
                  auipc        s9, 44911
                  xori         ra, t3, -1949
                  srli         s1, s3, 30
                  auipc        tp, 857651
                  auipc        a0, 606319
                  slli         s8, zero, 7
                  sub          a0, t4, a2
                  sub          s11, s4, t5
                  sltiu        t1, t6, -1608
                  andi         t5, a1, 1525
                  sltu         t3, a4, t2
                  bltu         s10, gp, 1591f
                  xor          a2, t5, t5
                  ori          t3, sp, -1355
                  ori          a3, s7, -650
                  auipc        t1, 547374
                  slli         s8, a2, 1
                  sltiu        sp, s3, 1767
                  blt          s0, t0, 1589f
                  auipc        t6, 170381
                  nop
                  sltiu        a3, s0, 1485
                  blt          t3, a3, 1593f
                  add          s6, s2, a3
                  srl          s2, t0, s6
                  xor          s2, tp, s9
1589:             bne          ra, s0, 1604f
                  bne          t3, sp, 1597f
1591:             or           t6, s7, t4
                  sll          s4, a2, a7
1593:             addi         a6, s3, -1321
                  sub          s1, a0, zero
                  beq          t4, t5, 1607f
                  xori         zero, t5, 618
1597:             sra          ra, a5, s5
                  or           s9, s11, a7
                  bne          t5, t4, 1606f
                  srli         t6, a3, 21
                  bgeu         s5, s10, 1606f
                  sltu         sp, a7, s2
                  bgeu         tp, t2, 1612f
1604:             xori         s2, a2, 570
                  xori         s5, gp, 1173
1606:             bge          a4, s7, 1623f
1607:             srl          sp, s6, t1
                  srl          sp, a0, s10
                  slli         a3, s1, 25
                  bltu         a1, s5, 1618f
                  auipc        t1, 966235
1612:             bne          gp, s6, 1620f
                  or           a0, t1, gp
                  xori         t6, s11, -1064
                  addi         s6, t5, -55
                  blt          zero, s6, 1622f
                  bne          a7, a0, 1621f
1618:             ori          a7, s6, 1757
                  xor          gp, s0, t6
1620:             sll          a3, ra, t3
1621:             bne          a5, s0, 1638f
1622:             or           zero, gp, zero
1623:             blt          a4, s11, 1640f
                  sub          s7, s10, t4
                  srl          a2, t0, s3
                  xor          zero, a5, t5
                  sra          t3, s6, t3
                  sll          s2, zero, a2
                  xor          a2, s9, a6
                  bge          a7, a5, 1641f
                  xori         s0, zero, 684
                  sll          s7, s10, t0
                  beq          t4, s7, 1638f
                  sub          ra, s7, a7
                  bltu         t3, t4, 1650f
                  nop
                  srai         a0, s3, 26
1638:             bltu         s3, s6, 1645f
                  srli         t5, t1, 21
1640:             or           s8, s4, s8
1641:             add          s10, a6, t2
                  sra          ra, a4, ra
                  sub          t5, t4, s2
                  srl          ra, s7, sp
1645:             slli         s11, sp, 26
                  add          s11, s6, s8
                  nop
                  srl          s10, s4, s1
sub_1_36:         jal          t1, 0f
0:                jal          ra, 18f
1:                jal          a7, 26f
2:                jal          ra, 23f
3:                jal          t1, 5f
4:                jal          t6, 16f
5:                jal          ra, 10f
6:                jal          ra, 4b
7:                jal          t1, 24f
8:                jal          ra, 20f
9:                jal          t1, 15f
10:               jal          ra, 27f
11:               jal          ra, 3b
12:               jal          ra, 9b
13:               jal          ra, 12b
14:               jal          ra, 11b
15:               jal          ra, 2b
16:               jal          ra, 25f
17:               jal          ra, 6b
18:               jal          t0, 8b
19:               jal          ra, 22f
20:               jal          ra, 21f
21:               jal          ra, 19b
22:               jal          t1, 14b
23:               jal          ra, 7b
24:               jal          tp, 1b
25:               jal          ra, 28f
26:               jal          s6, 17b
27:               jal          t1, 13b
28:               slt          t0, a7, s7
                  addi         t5, a7, 211
1650:             slli         zero, t0, 7
                  sub          a7, s4, s1
                  srai         s0, t5, 25
                  bgeu         a5, s4, 1665f
                  addi         sp, gp, 1154
                  sltiu        t3, s3, 715
                  auipc        s10, 173737
                  andi         s4, a1, -1057
                  slli         t5, zero, 10
                  sltiu        a6, t1, 443
                  sub          t3, s0, s4
                  beq          zero, t1, 1669f
                  nop
                  beq          sp, s2, 1670f
                  xori         t3, ra, -1065
1665:             slt          s7, s8, t2
                  sltu         s10, s11, s6
                  and          a2, tp, t0
                  xori         sp, a6, 1588
1669:             sltu         sp, a1, s3
1670:             bgeu         t2, a0, 1677f
                  add          s10, a0, ra
                  bge          s8, s3, 1691f
                  slli         t1, a0, 18
                  auipc        t2, 835726
                  bge          s4, s2, 1691f
                  slli         s10, gp, 8
1677:             blt          t6, s4, 1682f
                  sltiu        ra, s5, 530
                  bne          t3, a2, 1684f
                  xor          a4, s11, t4
                  andi         s7, t3, 254
1682:             bltu         a0, t4, 1699f
                  srai         a2, t5, 11
1684:             slti         t3, s0, -349
                  bgeu         s11, t6, 1697f
                  addi         s0, s6, -20
                  xori         s0, s1, -2002
                  andi         s5, a6, 584
                  beq          a2, t1, 1709f
                  xor          t1, s9, s8
1691:             xor          a3, s9, zero
                  bge          a2, a5, 1706f
                  or           zero, s6, t5
                  blt          t2, a6, 1705f
                  ori          sp, s8, -1383
                  bne          s8, t5, 1705f
1697:             bltu         t4, s7, 1711f
                  slli         t3, t1, 20
1699:             nop
                  add          a6, s7, t2
                  srai         t0, a0, 23
                  addi         s9, a5, -1726
                  bgeu         s1, t3, 1720f
                  srli         s2, a2, 28
1705:             xor          sp, a7, ra
1706:             bge          t4, zero, 1708f
                  andi         s0, t4, -291
1708:             addi         s1, s11, -1857
1709:             sra          a3, s6, s3
                  sltiu        t6, s9, 14
1711:             sub          a7, s6, s6
                  and          s9, a6, t1
                  sub          s1, a4, t4
                  slli         t5, s9, 13
                  sub          zero, s10, a3
                  ori          a4, a1, 1537
                  beq          t2, s9, 1736f
                  slti         s8, a2, 1356
                  slti         s8, s2, -800
1720:             sltu         a4, a4, s7
                  bge          a2, s4, 1729f
                  nop
                  sltu         s11, gp, a2
                  sra          t5, t6, t5
                  bltu         a7, t6, 1736f
                  slt          zero, s7, t3
                  addi         s1, s4, 837
                  sltu         s1, t4, s4
1729:             sub          s10, ra, t4
                  srai         s6, s11, 19
                  bgeu         a7, s11, 1736f
                  bne          s1, zero, 1746f
                  blt          a4, s1, 1752f
                  sub          zero, s10, s3
                  srl          s4, a7, a6
1736:             srai         t1, s0, 21
                  sub          a6, s0, a4
                  ori          s11, s6, 1221
                  xori         a4, zero, 372
                  and          a2, s0, s5
                  slti         ra, s9, 802
                  sltu         zero, s9, s5
                  srl          a0, s9, a7
                  srli         s0, t6, 27
                  sra          t1, gp, s5
1746:             lui          s7, 929212
                  andi         a7, sp, 1850
                  slli         a6, a3, 10
                  srl          a2, s8, s6
                  slt          ra, s4, t6
                  or           t3, zero, s10
1752:             sub          s0, t3, a2
                  srli         a6, s11, 25
                  srl          t6, s3, t0
                  srai         s5, s11, 1
                  sltiu        t1, a2, 413
                  sll          s8, s1, t6
                  nop
                  sltu         a6, s5, a3
                  and          t1, s10, sp
                  bge          a4, s7, 1765f
                  slli         s6, t0, 10
                  blt          t1, a6, 1780f
                  nop
1765:             sub          t6, a2, a2
                  sll          ra, t2, s1
                  srli         t0, t4, 8
                  srl          a4, s0, s7
                  sub          s6, t1, s2
                  lui          s8, 582579
                  srli         s4, s3, 3
                  blt          t6, s4, 1784f
                  beq          s0, a5, 1780f
                  blt          a5, a4, 1779f
                  slti         a7, a7, -1673
                  sltiu        t1, s6, -1075
                  slli         t5, a1, 19
                  add          a5, a4, a2
1779:             bltu         a7, t5, 1787f
1780:             sub          a6, a0, tp
                  srli         t3, zero, 9
                  sub          a0, s8, s9
                  sltu         zero, a7, s3
1784:             sra          t5, sp, s9
                  srai         gp, t4, 14
                  srli         s10, s5, 23
1787:             xor          s1, zero, s11
                  sltu         a2, t4, s7
                  lui          s7, 569136
                  and          s2, t6, t0
                  srl          a3, s3, sp
                  bgeu         s7, s1, 1799f
                  sub          a4, a0, gp
                  slt          t2, t1, ra
                  addi         s5, a2, -1839
                  sltu         t0, tp, tp
                  srl          a5, a0, tp
                  srli         s8, t4, 27
1799:             andi         s9, t3, 1010
                  bne          t4, a3, 1819f
                  slt          s11, s0, tp
                  sltu         ra, t6, a6
                  auipc        a0, 201705
                  slti         ra, t6, 348
                  sll          tp, t2, t5
                  andi         a3, sp, 1934
                  sll          t3, a2, s4
                  add          t2, s4, t3
                  ori          s8, a4, 156
                  blt          a5, t6, 1824f
                  and          s5, a0, a5
                  add          s6, s10, s9
                  sra          s7, s4, gp
                  andi         a2, s7, 1803
                  xor          s1, t0, t6
                  xori         s6, s4, -906
                  and          s5, t4, zero
                  add          ra, s0, a5
1819:             slti         a7, t3, 568
                  slli         t6, ra, 16
                  slt          s5, sp, t5
                  andi         t0, t4, 624
                  sll          a4, s11, s7
1824:             addi         t5, a0, 1721
                  bgeu         s7, s8, 1842f
                  ori          tp, gp, -1135
                  slti         a0, s2, -290
                  blt          sp, s1, 1845f
                  auipc        t1, 3640
                  bne          a1, s5, 1847f
                  sra          s10, zero, s9
                  nop
                  bltu         t6, s6, 1840f
                  auipc        t1, 1028407
                  beq          s8, t3, 1841f
                  nop
                  slli         zero, s1, 6
                  blt          s10, s2, 1858f
                  blt          a1, a2, 1841f
1840:             srli         ra, t2, 4
1841:             sltiu        s10, s9, 258
1842:             andi         a0, t2, -1654
                  add          a6, a3, a5
                  sll          a7, zero, t1
1845:             srli         a0, a0, 7
                  slti         t1, t5, 905
1847:             add          s4, ra, s7
                  bne          a0, s1, 1856f
                  ori          s4, a0, -122
                  srli         tp, s4, 9
                  ori          s8, a6, 1624
                  sltiu        gp, a1, 1387
                  andi         t2, s11, 52
                  bltu         t5, t4, 1869f
                  beq          a0, s9, 1860f
1856:             nop
                  bgeu         sp, t2, 1873f
1858:             and          s7, a7, a5
                  xor          s10, t4, a0
1860:             slt          a2, s8, a2
                  add          a4, a4, s6
                  srli         a7, zero, 25
                  bge          s5, s6, 1880f
                  ori          tp, a1, 1282
                  xor          sp, t5, t1
                  and          s4, t6, a1
                  sltu         s10, a3, s1
                  auipc        zero, 762048
1869:             auipc        s0, 1030096
                  srl          a6, a5, zero
                  sltiu        zero, t3, -154
                  andi         s10, t0, 1246
1873:             ori          s9, t3, 900
                  sub          s7, zero, t1
                  addi         s7, s0, -291
                  beq          s0, s1, 1887f
                  sub          t5, t4, zero
                  bltu         t2, s1, 1887f
                  ori          t0, t4, 1598
1880:             slt          s10, tp, a1
                  and          s9, s0, zero
                  srli         s9, a4, 17
                  sll          s1, tp, a2
                  or           a3, a4, s8
                  sltu         a2, t2, sp
                  auipc        gp, 766076
1887:             and          s0, s9, s1
                  sll          sp, s8, a2
                  bgeu         a1, s8, 1901f
                  bge          s1, t0, 1899f
                  blt          t5, s10, 1900f
                  addi         ra, s10, 1318
                  addi         a5, t4, 1251
                  nop
                  lui          s4, 988558
                  srl          s9, s7, zero
                  slt          s1, t6, a2
                  sltu         t0, s7, s10
1899:             bge          t4, a7, 1907f
1900:             and          s0, a4, ra
1901:             sll          s5, s1, s9
                  ori          a6, zero, 1170
                  xori         a2, ra, -178
                  auipc        a4, 322049
                  slti         a5, a1, -4
                  srl          a3, t1, t0
1907:             srai         s8, tp, 20
                  slti         a0, t5, -408
                  bgeu         a1, t2, 1918f
                  sltiu        zero, a5, -2003
                  andi         a5, a1, 533
                  auipc        tp, 675045
                  srai         a0, s9, 14
                  xor          s7, s2, s8
                  bgeu         s3, s8, 1927f
                  auipc        t2, 982861
                  sra          s7, a5, s4
1918:             add          s8, a1, s4
                  slli         s4, s11, 21
                  bge          s7, a4, 1927f
                  srl          s5, t3, s7
                  add          s6, s4, s4
                  slti         a6, t5, 853
                  slti         s5, a3, 204
                  or           s4, t1, t5
                  bgeu         t3, ra, 1940f
1927:             xor          t2, a0, a4
                  blt          s0, t5, 1933f
                  slti         a0, s9, -89
                  auipc        a3, 96846
                  sll          t0, zero, a3
                  xor          tp, a5, s9
1933:             auipc        s9, 794603
                  sub          a3, sp, a5
                  sub          t6, s4, a5
                  sra          tp, s5, a4
                  addi         s0, a1, 1267
                  blt          s0, sp, 1944f
                  slt          zero, a4, a7
1940:             slt          t1, ra, a4
                  bltu         t5, tp, 1945f
                  lui          s5, 180542
                  sra          s10, s4, s7
1944:             andi         a7, s8, -208
1945:             lui          s10, 863241
                  xor          a6, s8, a3
                  and          gp, a0, t2
                  nop
                  sltiu        s5, s5, 363
                  or           a4, gp, s11
                  lui          t3, 467119
                  bge          s8, zero, 1957f
                  blt          s0, t3, 1965f
                  sltiu        s7, t3, 1584
                  sll          a5, zero, a5
                  slti         ra, zero, -1800
1957:             and          t1, a1, t2
                  nop
                  xori         s2, s5, 7
                  slli         a3, a4, 26
                  andi         a0, s10, 375
                  nop
                  bltu         a3, tp, 1980f
                  xor          s7, a6, gp
1965:             slti         s0, s4, 790
                  bltu         s6, t6, 1974f
                  srai         t1, a5, 29
                  blt          a6, gp, 1984f
                  addi         s6, ra, 970
                  sll          s8, tp, gp
                  auipc        t2, 266598
                  sra          s5, t0, a7
                  srli         s9, s7, 4
1974:             sra          s1, s11, s2
                  bgeu         t5, t6, 1994f
                  addi         a2, t6, -898
                  bge          s8, s4, 1984f
                  sltiu        a3, a2, -156
                  bltu         s11, t2, 1996f
1980:             add          t2, t3, tp
                  sub          t1, t2, s9
                  beq          a1, s5, 2001f
                  srl          t0, gp, tp
1984:             sub          t5, a7, s2
                  bge          a5, a6, 1996f
                  xor          a4, s10, a5
                  slt          a2, a6, t2
                  bltu         t6, ra, 2008f
                  srai         sp, sp, 7
                  srl          a2, sp, s4
                  srli         t0, t0, 0
                  lui          t5, 928968
                  sra          s11, t2, a0
1994:             sub          t2, sp, s0
                  srli         s11, s8, 1
1996:             add          s1, tp, s10
                  add          s10, gp, t5
                  bltu         a7, t3, 2009f
                  srai         t1, ra, 19
                  bgeu         s4, t4, 2005f
2001:             xori         sp, s2, -308
                  add          a5, t6, s2
                  xori         s8, s8, -699
                  bltu         s11, s1, 2012f
2005:             slt          t6, t1, s2
                  slti         s0, t3, 924
                  andi         s6, t1, -1995
2008:             ori          s6, s8, -1949
2009:             nop
                  slt          s9, t1, s10
                  bltu         a2, s6, 2028f
2012:             srai         s4, a7, 26
                  sub          s8, s3, a2
                  bgeu         t2, t0, 2031f
                  xor          a2, s1, s11
                  slli         t3, ra, 26
                  xori         a0, sp, -1801
                  bgeu         sp, a4, 2035f
                  blt          s7, s11, 2026f
                  beq          a1, a6, 2034f
                  andi         s4, a4, 843
                  bne          s8, t1, 2024f
                  srl          t2, s9, s0
2024:             add          s0, s2, s0
                  ori          s8, t2, 1781
2026:             srli         t1, s5, 22
                  sub          s11, t1, tp
2028:             slti         s4, a7, 515
                  bltu         a2, gp, 2044f
                  add          s1, a3, zero
2031:             bltu         a6, a1, 2035f
                  xori         s7, a4, 26
                  slli         a6, s6, 20
2034:             sub          t2, zero, a4
2035:             sltu         a7, t6, s4
                  srl          gp, s2, a1
                  slli         s10, a4, 12
                  lui          tp, 663964
                  ori          s7, sp, 722
                  sub          s1, s9, t3
                  slt          a7, ra, a7
                  sra          s5, s3, s7
                  xor          gp, s2, s2
2044:             nop
                  srl          zero, a5, t6
                  sub          a5, s6, s5
                  addi         s5, sp, 406
                  add          a4, a6, t1
                  beq          a3, t0, 2054f
                  srl          t3, tp, sp
                  srl          s10, s7, ra
                  xor          a3, ra, s9
                  ori          t1, t3, 470
2054:             auipc        t3, 505473
                  sltiu        t1, zero, -1039
                  and          t6, a3, s10
                  add          sp, a2, t2
                  and          gp, a2, a5
                  xori         s5, t2, 861
                  nop
                  and          a7, s2, a4
                  blt          a2, s0, 2070f
                  and          zero, s10, a0
                  slt          s2, s7, ra
                  srai         t0, a2, 27
                  nop
                  bltu         a0, a2, 2075f
                  add          a7, a0, ra
                  lui          ra, 565802
2070:             srl          s4, s2, t2
                  slli         s4, a4, 30
                  bltu         ra, s6, 2092f
                  sub          s0, s0, a7
                  sub          t0, a0, t1
2075:             blt          s3, s10, 2087f
                  bne          a6, t1, 2082f
                  ori          s1, t1, 762
                  bge          s10, t4, 2089f
                  auipc        s9, 394136
                  beq          s11, a4, 2085f
                  addi         a3, s9, 1882
2082:             xor          a3, a0, t6
                  blt          t2, s10, 2100f
                  sltu         tp, a6, s7
2085:             sub          a5, s3, sp
                  xori         t0, sp, -180
2087:             or           zero, a6, ra
                  sub          s9, t0, s6
2089:             slti         s5, tp, -447
                  sra          a4, s8, a4
                  nop
2092:             and          s0, a7, tp
                  blt          ra, s5, 2101f
                  blt          a4, zero, 2111f
                  ori          a5, gp, 1569
                  srai         s6, s0, 22
                  slti         s9, s0, 17
                  sltiu        t3, a2, 859
                  slti         a4, s1, -533
2100:             and          a6, s7, s10
2101:             sub          a6, tp, s6
                  xor          s7, a1, t4
                  xori         sp, gp, 592
                  add          s6, ra, a6
                  bgeu         tp, a0, 2112f
                  xor          s2, t0, a4
                  nop
                  bge          s4, t2, 2115f
                  beq          s3, t3, 2125f
                  srli         t0, t1, 21
2111:             sra          s5, a1, s0
2112:             or           s2, a3, t0
                  bge          s0, t6, 2127f
                  addi         s7, t6, -313
2115:             bgeu         s4, s1, 2120f
                  andi         a3, t6, -2017
                  sltu         s5, zero, a6
                  add          ra, s11, zero
                  blt          s4, a4, 2134f
2120:             srli         s8, a2, 5
                  xor          s1, s9, s6
                  andi         s7, sp, 590
                  beq          s7, s10, 2135f
                  sub          tp, zero, s1
2125:             blt          s8, t4, 2127f
                  slli         a3, tp, 6
2127:             sltu         s0, gp, s0
                  sll          s11, sp, s5
                  ori          a2, a7, 1392
                  and          a5, s2, s2
                  sub          s10, s10, zero
                  bgeu         s3, a7, 2135f
                  nop
2134:             xor          t5, s4, t0
2135:             and          s9, s5, a7
                  lw           t1, 4(s3)
                  nop
                  lui          s1, 946154
                  addi         s3, s3, 60
                  slli         tp, s2, 10
3095:             addi x18, x6, 1
3095:             jalr x18, x18, 0
sub_3:            bltu         s2, s0, sub_3_stack_p
                  and          s8, a2, s5
                  auipc        s7, 615282
                  sra          s1, a2, t2
sub_3_stack_p:    addi         s3, s3, -12
                  sw           t1, 4(s3)
                  sltu         sp, a6, sp
                  srl          a0, t3, t0
                  lui          a7, 577669
                  slti         s10, s5, -801
                  xori         t0, t5, -12
                  sra          t1, a7, zero
                  la           a2, sub_4
                  srai         a6, a2, 10
                  sub          sp, s11, a1
                  andi         t0, t3, -222
                  and          a7, t4, a0
                  addi         a2, a2, 258
                  sltiu        zero, s9, -746
sub_3_j6:         jalr         t1, a2, -257 #jump sub_3 -> sub_4
sub_3_0:          jal          t1, 16f
0:                jal          ra, 5f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          s0, 0b
4:                jal          ra, 12f
5:                jal          ra, 13f
6:                jal          ra, 14f
7:                jal          gp, 15f
8:                jal          ra, 10f
9:                jal          t1, 1b
10:               jal          ra, 17f
11:               jal          ra, 7b
12:               jal          t1, 3b
13:               jal          ra, 8b
14:               jal          t0, 11b
15:               jal          ra, 18f
16:               jal          s8, 4b
17:               jal          t1, 9b
18:               addi         s6, t6, 3
sub_3_1:          jal          t1, 9f
0:                jal          ra, 8f
1:                jal          ra, 17f
2:                jal          t1, 19f
3:                jal          s0, 12f
4:                jal          ra, 16f
5:                jal          t1, 11f
6:                jal          ra, 15f
7:                jal          t1, 0b
8:                jal          t1, 5b
9:                jal          ra, 4b
10:               jal          ra, 7b
11:               jal          t6, 18f
12:               jal          ra, 1b
13:               jal          ra, 3b
14:               jal          ra, 10b
15:               jal          s5, 14b
16:               jal          ra, 13b
17:               jal          s9, 6b
18:               jal          t1, 2b
19:               or           t2, a1, a5
                  bne          s1, s10, 5f
                  sltiu        sp, t1, -551
                  xori         s10, a5, 1011
                  auipc        s0, 34639
                  slt          s8, s11, s7
5:                bge          gp, s8, 24f
                  add          a4, t3, a7
                  and          t1, zero, t3
                  slli         t5, s8, 27
                  nop
                  sltu         a2, s2, zero
                  beq          a1, a2, 17f
                  bge          s4, s8, 20f
                  sll          a0, a1, s1
                  slti         s10, s7, -1821
                  andi         s1, a5, 1871
                  beq          s10, s0, 23f
17:               bne          s4, s9, 37f
                  sltu         t6, t5, t3
                  slli         a3, s8, 7
20:               bne          a4, s11, 21f
21:               nop
                  bltu         a6, s5, 42f
23:               sll          a6, a1, a2
24:               blt          s5, sp, 25f
25:               beq          s11, a4, 29f
                  ori          a0, s8, 1219
                  bltu         s11, t5, 34f
                  slti         s0, t1, -287
29:               andi         a2, s3, -944
                  sub          a2, s1, s0
                  sll          t0, tp, t1
                  sra          s7, a0, s8
                  bgeu         s9, tp, 49f
34:               bgeu         s0, s4, 51f
                  srli         a2, s1, 6
                  srai         a3, a7, 6
37:               bge          a3, a3, 55f
                  beq          s9, a5, 47f
                  or           s9, s2, t0
                  bltu         s0, a6, 42f
                  xor          a0, s7, s6
42:               nop
                  sll          s1, sp, s3
                  bltu         a4, s6, 48f
                  add          s9, s8, a0
                  bgeu         sp, sp, 49f
47:               add          s4, s7, s5
48:               bgeu         a2, t1, 50f
49:               srai         t6, zero, 3
50:               bge          a2, t1, 69f
51:               sra          s7, t3, s0
                  srl          t2, tp, t3
                  slli         s1, s3, 1
                  ori          a2, s7, 1849
55:               slli         s8, s11, 19
                  beq          t5, t5, 67f
                  auipc        s1, 493890
                  bgeu         t3, s7, 75f
                  slli         a0, ra, 11
                  auipc        a2, 215162
                  add          a4, ra, t6
                  lui          t3, 840617
                  srl          tp, zero, ra
                  srai         a3, t4, 31
                  bgeu         ra, s11, 73f
                  nop
67:               bge          t1, s11, 78f
                  or           a3, s7, t4
69:               blt          a4, t6, 71f
                  add          sp, a4, t0
71:               and          t1, t2, a0
                  ori          s2, t4, 1849
73:               sltiu        s4, zero, 2011
                  slti         s10, t6, -503
75:               auipc        s8, 149286
                  and          a5, t0, a6
                  lui          t0, 87619
78:               sll          s6, s1, s11
                  lui          t6, 892089
                  add          s7, t0, s10
                  xor          s2, a0, a2
                  sra          zero, sp, t3
                  slti         a4, zero, -1441
                  sll          s1, s10, t5
                  srai         a4, a3, 0
                  slt          t2, t6, gp
                  add          a3, s1, s9
                  andi         a3, s3, -1776
                  add          a5, s2, zero
                  srl          t0, s1, s0
                  lui          s4, 396301
                  or           t0, sp, t1
                  beq          zero, t3, 101f
                  bne          a3, t4, 99f
                  srai         t3, a4, 29
                  sub          a7, a4, s11
                  xori         a7, sp, 570
                  sltiu        s11, s9, -1295
99:               lui          a6, 940406
                  sra          tp, s11, gp
101:              sll          s0, tp, t3
                  andi         s9, a3, -157
                  slli         tp, gp, 30
                  srai         s7, s10, 27
                  srli         a3, s11, 6
                  auipc        a6, 244438
                  sub          t0, t5, gp
                  and          t5, s10, s0
                  slli         a7, t1, 7
                  xor          a7, s6, zero
                  andi         s7, t4, 1424
                  srl          a6, a7, zero
                  sll          s0, s7, t3
                  sltiu        a7, tp, -169
                  add          a5, a4, s7
                  srli         a0, s6, 28
                  srl          s6, a0, s5
                  auipc        s2, 445106
                  bge          a5, a3, 120f
120:              xor          t2, t6, t0
                  bgeu         s10, s5, 123f
                  sub          ra, t0, s11
123:              bne          s0, a2, 124f
124:              auipc        gp, 631662
                  xori         tp, gp, 1212
                  lw           t1, 4(s3)
                  add          a5, s5, s2
                  addi         s3, s3, 12
                  sub          t5, a7, s6
                  add          a6, t2, zero
                  add          a0, t5, s1
                  sub          s1, sp, s11
                  sll          s10, s9, s4
195:              addi x15, x6, 0
195:              jalr x15, x15, 0
sub_5:            xori         s5, a7, 1472
                  addi         s3, s3, -48
                  srl          ra, zero, s4
                  sw           t1, 4(s3)
                  andi         a5, a6, 39
                  add          s10, t5, t0
sub_5_1:          jal          t1, 14f
0:                jal          t0, 12f
1:                jal          t1, 8f
2:                jal          s1, 19f
3:                jal          t1, 6f
4:                jal          ra, 18f
5:                jal          gp, 16f
6:                jal          ra, 10f
7:                jal          s10, 17f
8:                jal          ra, 21f
9:                jal          t1, 13f
10:               jal          sp, 7b
11:               jal          ra, 0b
12:               jal          ra, 22f
13:               jal          s10, 1b
14:               jal          s5, 4b
15:               jal          ra, 5b
16:               jal          ra, 23f
17:               jal          s2, 2b
18:               jal          ra, 11b
19:               jal          ra, 9b
20:               jal          t2, 15b
21:               jal          sp, 20b
22:               jal          ra, 3b
23:               srli         a2, gp, 17
sub_5_3:          jal          t1, 9f
0:                jal          ra, 7f
1:                jal          t1, 10f
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          ra, 3b
7:                jal          sp, 2b
8:                jal          a6, 6b
9:                jal          t1, 0b
10:               lui          a0, 997628
sub_5_0:          jal          t1, 13f
0:                jal          ra, 6f
1:                jal          t1, 4f
2:                jal          t1, 11f
3:                jal          tp, 2b
4:                jal          gp, 10f
5:                jal          s8, 9f
6:                jal          t1, 12f
7:                jal          ra, 5b
8:                jal          t1, 14f
9:                jal          ra, 1b
10:               jal          ra, 0b
11:               jal          t1, 8b
12:               jal          s6, 3b
13:               jal          a7, 7b
14:               xor          sp, t0, tp
                  sra          a5, a7, a7
                  slli         gp, a2, 0
                  blt          t4, s5, 13f
                  andi         s7, zero, -1657
                  sltiu        a7, t1, -454
                  beq          t3, t5, 25f
                  blt          a5, s8, 17f
                  bne          t3, a3, 20f
                  bne          a6, a0, 20f
                  lui          t2, 466570
                  blt          t0, a2, 16f
                  bltu         t5, s7, 18f
                  auipc        s5, 998929
13:               xori         t2, zero, 329
                  andi         t0, a3, -1071
                  srai         a7, tp, 22
16:               beq          t3, a2, 32f
17:               srl          s7, a2, s10
18:               add          s4, a7, a4
                  bgeu         s10, s1, 36f
20:               xori         a0, tp, 1808
                  bne          s7, t6, 36f
                  bgeu         a4, s2, 33f
                  nop
                  srli         s5, t3, 23
25:               add          t6, t1, a6
                  xor          a2, a1, tp
                  slli         s0, s9, 29
                  sra          s0, t4, a4
                  or           s0, t3, t1
                  ori          t1, t4, 1453
                  bne          s2, s4, 49f
32:               srl          s9, t5, t4
33:               xori         t1, a3, 380
                  lui          s1, 754053
                  bne          s8, a1, 37f
36:               lui          a3, 720460
37:               sub          zero, s3, a0
                  nop
                  xori         ra, s3, 1413
                  xori         s7, t2, -1658
                  lui          s11, 265268
                  sra          t1, t5, s9
                  and          tp, s4, s4
                  srl          a6, s4, s0
                  slt          s4, s1, a1
                  sltiu        ra, sp, -2001
                  sltiu        s5, a2, 1606
                  nop
49:               sra          ra, t2, tp
                  addi         s0, a3, -1358
                  sltu         zero, a1, s4
                  lui          s11, 590654
                  xor          s1, s4, s3
                  add          s9, t2, s6
                  sra          a0, s4, gp
                  slti         s2, zero, -186
                  andi         t3, t1, 1055
                  xor          s9, s7, gp
                  xori         a2, s3, 304
                  or           s8, s10, t5
                  or           s2, s0, t5
                  andi         zero, tp, -461
                  ori          s9, s8, 1642
                  addi         s4, s0, 1393
                  bgeu         s10, t5, 84f
                  beq          a5, a2, 85f
                  xor          t0, a6, s11
                  sltu         s7, a3, a6
                  srl          a4, t0, a6
                  beq          s5, sp, 84f
                  add          zero, t0, a1
                  sltiu        a4, s2, -964
                  add          t2, s6, s8
                  xor          s7, a7, a6
                  sra          s4, t1, ra
                  lui          a4, 334142
                  bne          zero, a4, 90f
                  sll          a2, t4, tp
                  or           a0, s3, s10
                  or           s5, a2, a2
                  xori         sp, s10, -338
                  slti         a0, a5, 1859
                  xori         s0, a5, -896
84:               sll          s10, t3, s1
85:               andi         s4, t6, 1648
                  srli         a0, t1, 27
                  xori         s1, s5, 363
                  bne          a2, s1, 96f
                  slli         t1, s5, 8
90:               slti         s4, t6, -1025
                  srli         t6, s7, 18
                  xor          t3, s5, t0
                  or           s8, t5, s8
                  xori         s0, ra, -1742
                  nop
96:               beq          s0, s5, 107f
                  slli         a0, a3, 3
                  ori          t6, a1, -411
                  sub          zero, t2, s7
                  auipc        t5, 557617
                  bne          a5, t3, 107f
                  ori          a5, tp, -1715
                  xori         t6, t4, -1915
                  bne          a0, s8, 111f
                  sll          t1, t4, gp
                  sltu         s1, s6, s3
sub_5_2:          jal          t1, 23f
0:                jal          ra, 5f
1:                jal          t1, 2f
2:                jal          t1, 26f
3:                jal          sp, 13f
4:                jal          t1, 19f
5:                jal          ra, 27f
6:                jal          gp, 0b
7:                jal          t1, 4b
8:                jal          ra, 20f
9:                jal          sp, 1b
10:               jal          s10, 15f
11:               jal          sp, 9b
12:               jal          s11, 14f
13:               jal          ra, 11b
14:               jal          t1, 3b
15:               jal          ra, 16f
16:               jal          t1, 24f
17:               jal          ra, 22f
18:               jal          t1, 6b
19:               jal          s1, 18b
20:               jal          ra, 25f
21:               jal          s4, 17b
22:               jal          s5, 7b
23:               jal          s11, 12b
24:               jal          ra, 8b
25:               jal          sp, 21b
26:               jal          ra, 10b
27:               srli         a7, s3, 21
107:              add          s0, a4, t3
                  slti         s4, t1, 742
                  srl          a5, s8, a6
                  xori         gp, a6, 1333
111:              beq          s10, s8, 123f
                  bne          t5, a4, 113f
113:              lui          t3, 947006
                  sra          zero, t3, a0
                  or           a6, a4, s10
                  sll          a4, s0, a5
                  sltu         s0, t4, zero
                  srl          t6, ra, s7
                  beq          a2, s4, 134f
                  sltu         tp, a1, t6
                  slti         s7, a5, 787
                  srli         a3, s3, 0
123:              xor          a6, a4, s6
                  sltiu        a7, s9, 52
                  sll          a7, s8, a4
                  auipc        t5, 512876
                  and          gp, s1, t2
                  sub          a0, s1, s1
                  andi         s7, t6, 237
                  bne          s7, s9, 146f
                  auipc        s10, 234634
                  slt          s10, s2, s0
                  addi         s6, tp, 885
134:              slti         t1, s9, 629
                  ori          s10, a6, 1359
                  or           sp, t4, t4
                  srli         a7, a5, 11
                  ori          a4, s6, -1939
                  addi         a5, sp, -770
                  bge          s4, a5, 142f
                  bgeu         ra, a2, 148f
142:              blt          a2, t4, 145f
                  or           tp, t1, s11
                  and          s2, t6, zero
145:              bge          t6, s9, 159f
146:              auipc        t0, 370721
                  sltu         zero, t0, s10
148:              addi         a7, sp, 511
                  andi         s4, t0, 760
                  sll          s4, s6, t3
                  srli         t5, a2, 27
                  and          t3, t6, s1
                  lui          t3, 615
                  bgeu         t4, sp, 157f
                  ori          t2, ra, -1501
                  sll          s10, t5, sp
157:              slti         t2, s2, -784
                  xori         s1, s0, -757
159:              sltu         t0, zero, a7
                  sll          t3, s11, s0
                  lui          zero, 372824
                  sll          a2, s5, t5
                  sltiu        t5, zero, -277
                  srai         s2, t1, 1
                  sltiu        tp, zero, -1720
                  auipc        t6, 706192
                  xori         t1, s7, 1464
                  sltiu        zero, a3, -930
                  bge          s1, s11, 182f
                  or           s5, a5, ra
                  srl          s2, s0, a4
                  andi         t3, a4, 1812
                  srli         a3, s11, 23
                  slti         a0, zero, 1035
                  slt          sp, a7, s3
                  sltiu        t0, zero, 1277
                  sltiu        t1, s3, -697
                  xori         tp, s8, -827
                  srli         ra, gp, 31
                  xori         a3, s2, 1646
                  sltu         s2, a2, s3
182:              and          a6, t2, a3
                  slt          s0, a4, a1
                  srl          s0, s5, s2
                  ori          t2, t5, -1744
                  bge          t5, a2, 188f
                  sub          a0, a2, t3
188:              xori         zero, t6, -2045
                  srl          a3, a7, gp
                  xor          s6, s1, t0
                  slli         a5, s4, 19
                  xori         a0, s3, -1557
                  sra          tp, gp, s7
                  slti         zero, s5, 1694
                  sltu         a3, zero, s9
                  bltu         t4, s7, 212f
                  slli         s10, t1, 11
                  auipc        zero, 31655
                  srai         t1, t0, 8
                  sll          t5, a6, a7
                  auipc        t5, 516948
                  sltu         s10, t2, t1
                  srli         gp, s4, 7
                  slli         sp, t5, 4
                  beq          a1, s8, 212f
                  beq          t5, a7, 212f
                  sll          zero, s2, s1
                  bltu         s2, a4, 212f
                  beq          t2, ra, 212f
                  xor          s6, s9, a4
                  slt          a4, s6, a7
212:              andi         s5, t0, 84
                  and          a7, s6, s4
                  xor          a0, t3, a1
                  and          zero, s8, tp
                  nop
                  lw           t1, 4(s3)
                  xor          s11, a6, a1
                  xori         a7, t4, -737
                  addi         s3, s3, 48
                  sltu         s6, t4, s5
310:              addi x4, x6, 0
310:              jalr x4, x4, 0
sub_2:            bgeu         s7, a6, sub_2_stack_p
                  slti         a3, zero, 1293
sub_2_stack_p:    addi         s3, s3, -52
                  ori          t5, t2, -2005
                  ori          sp, a2, 634
                  sw           t1, 4(s3)
                  srli         a7, t6, 20
                  slt          zero, t0, a5
                  or           s0, s5, ra
sub_2_0:          jal          t1, 26f
0:                jal          ra, 27f
1:                jal          ra, 9f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          ra, 11f
5:                jal          t1, 10f
6:                jal          sp, 19f
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          t1, 18f
10:               jal          t5, 15f
11:               jal          ra, 21f
12:               jal          s4, 0b
13:               jal          t1, 22f
14:               jal          t1, 5b
15:               jal          t6, 12b
16:               jal          sp, 20f
17:               jal          ra, 6b
18:               jal          t1, 17b
19:               jal          ra, 8b
20:               jal          tp, 23f
21:               jal          ra, 16b
22:               jal          ra, 14b
23:               jal          gp, 25f
24:               jal          t1, 13b
25:               jal          ra, 24b
26:               jal          ra, 3b
27:               sub          t0, s4, t6
                  or           s9, t0, ra
                  sltu         s8, s3, t5
                  srli         s9, a0, 25
                  slt          a6, s1, gp
                  srai         a3, zero, 1
                  sltu         zero, s10, a4
                  nop
                  addi         s5, a3, 1504
                  auipc        ra, 293108
                  add          ra, s11, s8
                  bge          s5, s6, 17f
                  bne          s7, t0, 16f
                  sub          s7, s9, sp
                  xori         s9, ra, 453
                  ori          t6, s2, 914
                  and          t1, gp, s7
16:               auipc        a2, 701327
17:               sltu         gp, ra, s10
                  addi         a0, t5, 771
                  beq          t0, a1, 28f
                  srli         sp, s7, 17
                  blt          s3, s4, 30f
                  xor          a4, a1, s4
                  bgeu         a6, t0, 29f
                  sll          s9, t3, a7
                  lui          t5, 172479
                  add          s2, s0, gp
                  sub          s11, t6, sp
28:               bltu         sp, s9, 31f
29:               bge          s5, a1, 45f
30:               nop
31:               bgeu         s0, t6, 47f
                  sub          s7, s2, t1
                  or           tp, s0, s9
                  sltu         a2, a6, s9
                  blt          a5, s6, 46f
                  bge          s8, a4, 45f
                  add          a7, gp, tp
                  la           t2, sub_5
                  sub          s9, s3, a4
                  srl          s6, t2, s1
                  slti         t0, a2, 1382
                  addi         t2, t2, 795
                  srai         s6, a4, 8
                  srl          s5, a4, s2
                  beq          a2, a6, sub_2_j5 #branch to jump instr
                  lui          a2, 251004
                  addi         sp, s10, -134
                  sra          s2, t6, s6
                  xori         s8, s0, 453
sub_2_j5:         jalr         t1, t2, -794 #jump sub_2 -> sub_5
                  ori          sp, ra, -1396
                  addi         gp, t4, 414
                  lui          t5, 154453
                  bne          s6, s4, 44f
                  sra          tp, a6, s5
                  blt          zero, t0, 60f
                  addi         sp, a7, -136
44:               and          a5, tp, a6
45:               nop
46:               or           t3, t5, sp
47:               lui          a4, 163352
                  bgeu         s5, t5, 64f
                  or           t1, t1, s6
                  sll          t0, t4, a4
                  sltiu        s9, s8, 1691
                  andi         s7, a6, -853
                  srai         a5, s10, 24
                  andi         t6, t2, -578
                  bne          t3, s1, 60f
                  addi         s6, t3, -285
                  bltu         s10, sp, 74f
                  ori          s9, s9, 656
                  nop
60:               slt          s10, s8, a7
                  slt          a3, s11, s11
                  sub          sp, a3, t3
                  nop
64:               bgeu         s11, a3, 79f
                  or           a3, s4, t1
                  ori          a3, s7, -1153
                  slt          s6, s3, t2
                  sltu         t2, tp, a2
                  blt          s11, gp, 85f
                  nop
                  sub          a7, a6, a3
                  srli         tp, s2, 9
                  srai         t1, t3, 3
74:               and          t1, tp, a5
                  sll          a2, s2, a5
                  slti         a5, sp, -1956
                  sltiu        s2, s0, 1940
                  addi         s6, s7, 1139
79:               slli         s6, s6, 15
                  xori         s4, s5, 1481
                  srli         s4, t6, 0
                  sll          t5, t1, s9
                  lui          a6, 32265
                  sll          a3, s10, s3
85:               addi         ra, t4, -353
                  slt          s8, sp, t1
                  sltu         s4, a4, s6
                  lw           t1, 4(s3)
                  slt          a6, t2, s4
                  slli         t0, s10, 28
                  addi         s3, s3, 52
                  addi         s11, t6, 323
                  sra          t0, t2, t2
146:              addi x23, x6, 1
146:              jalr x23, x23, 0
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
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
                  add x11, x19, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  add x11, x19, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x5, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x5, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x5, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x5, x2, ecall_handler
                  li x2, 0x1
                  beq x5, x2, instr_fault_handler
                  li x2, 0x5
                  beq x5, x2, load_fault_handler
                  li x2, 0x7
                  beq x5, x2, store_fault_handler
                  li x2, 0xc
                  beq x5, x2, pt_fault_handler
                  li x2, 0xd
                  beq x5, x2, pt_fault_handler
                  li x2, 0xf
                  beq x5, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x19, x11, zero
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
                  add x19, x11, zero
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
                  add x19, x11, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x19, x11, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x19, x11, zero
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
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x19, x11, zero
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
