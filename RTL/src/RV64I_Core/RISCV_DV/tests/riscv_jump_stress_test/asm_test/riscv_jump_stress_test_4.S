.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0xf63e8ad2
                  li x1, 0xf0eb9670
                  li x2, 0x3305d823
                  li x3, 0x91d31145
                  li x4, 0xffef2ca6
                  li x5, 0x80000000
                  li x6, 0xf9bbe3b4
                  li x7, 0x95fe8314
                  li x8, 0x0
                  li x9, 0xf564b163
                  li x10, 0xf83c02bb
                  li x11, 0x80000000
                  li x12, 0xf06f0640
                  li x13, 0xf
                  li x14, 0xf7491e61
                  li x15, 0xf3409c1c
                  li x16, 0x80000000
                  li x17, 0xd
                  li x18, 0x5c3e1fa0
                  li x19, 0xcaa6172e
                  li x20, 0x80000000
                  li x22, 0x7
                  li x23, 0xf143e698
                  li x24, 0xe
                  li x26, 0xfcb4cb1b
                  li x27, 0xd
                  li x28, 0xfc5b7ab6
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0xbb64f777
                  la x21, user_stack_end
main:             la           a5, sub_3
                  add          t5, t3, a5
                  srai         a4, t1, 6
                  xor          ra, s4, s2
                  xori         t2, s2, 1446
                  addi         a5, a5, 311
                  addi         a4, t5, 535
                  sltiu        t4, t1, -1807
main_j5:          jalr         t1, a5, -310 #jump main -> sub_3
main_1:           jal          t1, 11f
0:                jal          sp, 16f
1:                jal          t1, 10f
2:                jal          t0, 0b
3:                jal          ra, 13f
4:                jal          a6, 17f
5:                jal          ra, 6f
6:                jal          ra, 8f
7:                jal          gp, 1b
8:                jal          t1, 12f
9:                jal          t3, 7b
10:               jal          ra, 5b
11:               jal          ra, 15f
12:               jal          ra, 2b
13:               jal          ra, 9b
14:               jal          ra, 3b
15:               jal          ra, 14b
16:               jal          t1, 4b
17:               sltiu        gp, t5, -1181
main_19:          jal          t1, 10f
0:                jal          t1, 25f
1:                jal          s0, 13f
2:                jal          ra, 12f
3:                jal          ra, 4f
4:                jal          t1, 24f
5:                jal          gp, 29f
6:                jal          t3, 1b
7:                jal          ra, 16f
8:                jal          t1, 3b
9:                jal          ra, 15f
10:               jal          s8, 17f
11:               jal          ra, 20f
12:               jal          ra, 6b
13:               jal          a3, 0b
14:               jal          a5, 22f
15:               jal          s10, 26f
16:               jal          t0, 21f
17:               jal          t1, 18f
18:               jal          tp, 9b
19:               jal          ra, 23f
20:               jal          ra, 30f
21:               jal          ra, 14b
22:               jal          a0, 11b
23:               jal          t1, 2b
24:               jal          t1, 5b
25:               jal          ra, 28f
26:               jal          t1, 19b
27:               jal          ra, 7b
28:               jal          ra, 8b
29:               jal          ra, 27b
30:               slli         a0, a5, 9
main_15:          jal          t1, 20f
0:                jal          ra, 21f
1:                jal          t0, 18f
2:                jal          ra, 8f
3:                jal          a7, 19f
4:                jal          ra, 5f
5:                jal          ra, 14f
6:                jal          ra, 11f
7:                jal          ra, 2b
8:                jal          ra, 28f
9:                jal          ra, 6b
10:               jal          tp, 13f
11:               jal          t6, 4b
12:               jal          ra, 15f
13:               jal          s10, 3b
14:               jal          s11, 17f
15:               jal          ra, 1b
16:               jal          ra, 9b
17:               jal          t1, 25f
18:               jal          ra, 29f
19:               jal          ra, 7b
20:               jal          s3, 10b
21:               jal          ra, 22f
22:               jal          t1, 23f
23:               jal          t1, 16b
24:               jal          ra, 0b
25:               jal          s10, 27f
26:               jal          ra, 24b
27:               jal          t1, 12b
28:               jal          t1, 26b
29:               srl          t1, a3, s0
main_2:           jal          t1, 15f
0:                jal          ra, 1f
1:                jal          t1, 3f
2:                jal          ra, 0b
3:                jal          ra, 16f
4:                jal          t1, 6f
5:                jal          ra, 4b
6:                jal          ra, 11f
7:                jal          ra, 5b
8:                jal          ra, 12f
9:                jal          gp, 10f
10:               jal          t1, 17f
11:               jal          t0, 9b
12:               jal          a2, 2b
13:               jal          ra, 14f
14:               jal          t1, 8b
15:               jal          gp, 13b
16:               jal          gp, 7b
17:               addi         a4, s1, -1690
main_17:          jal          t1, 22f
0:                jal          s7, 3f
1:                jal          t1, 21f
2:                jal          tp, 11f
3:                jal          ra, 13f
4:                jal          ra, 0b
5:                jal          t1, 7f
6:                jal          ra, 20f
7:                jal          t1, 2b
8:                jal          ra, 1b
9:                jal          ra, 10f
10:               jal          t1, 26f
11:               jal          gp, 17f
12:               jal          t1, 14f
13:               jal          ra, 8b
14:               jal          s2, 5b
15:               jal          a4, 12b
16:               jal          t1, 24f
17:               jal          gp, 16b
18:               jal          t1, 4b
19:               jal          t1, 18b
20:               jal          t1, 27f
21:               jal          a7, 23f
22:               jal          t1, 25f
23:               jal          ra, 6b
24:               jal          a4, 9b
25:               jal          t6, 15b
26:               jal          ra, 19b
27:               sltiu        a4, s3, -1894
main_12:          jal          t1, 13f
0:                jal          ra, 12f
1:                jal          ra, 16f
2:                jal          ra, 5f
3:                jal          s2, 20f
4:                jal          ra, 25f
5:                jal          ra, 24f
6:                jal          ra, 1b
7:                jal          t3, 11f
8:                jal          gp, 17f
9:                jal          ra, 6b
10:               jal          t4, 14f
11:               jal          ra, 9b
12:               jal          gp, 2b
13:               jal          t3, 19f
14:               jal          sp, 27f
15:               jal          s10, 18f
16:               jal          t1, 0b
17:               jal          a5, 15b
18:               jal          ra, 21f
19:               jal          ra, 3b
20:               jal          sp, 10b
21:               jal          a2, 23f
22:               jal          t1, 29f
23:               jal          ra, 26f
24:               jal          ra, 4b
25:               jal          t1, 30f
26:               jal          t1, 7b
27:               jal          sp, 22b
28:               jal          ra, 8b
29:               jal          t1, 28b
30:               xori         s10, s10, -1474
main_13:          jal          t1, 3f
0:                jal          t1, 4f
1:                jal          a5, 6f
2:                jal          ra, 0b
3:                jal          ra, 2b
4:                jal          ra, 9f
5:                jal          ra, 11f
6:                jal          ra, 7f
7:                jal          t0, 8f
8:                jal          a6, 5b
9:                jal          ra, 10f
10:               jal          ra, 1b
11:               ori          tp, a5, -471
main_10:          jal          t1, 18f
0:                jal          s8, 4f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          a4, 8f
4:                jal          t1, 21f
5:                jal          tp, 1b
6:                jal          t5, 14f
7:                jal          ra, 11f
8:                jal          a4, 20f
9:                jal          a5, 0b
10:               jal          ra, 17f
11:               jal          t1, 15f
12:               jal          ra, 16f
13:               jal          ra, 7b
14:               jal          sp, 12b
15:               jal          t1, 3b
16:               jal          t4, 19f
17:               jal          ra, 5b
18:               jal          ra, 13b
19:               jal          t0, 9b
20:               jal          sp, 10b
21:               sll          s10, s9, a6
main_14:          jal          t1, 3f
0:                jal          ra, 7f
1:                jal          tp, 5f
2:                jal          t1, 0b
3:                jal          s8, 8f
4:                jal          tp, 6f
5:                jal          ra, 9f
6:                jal          t1, 10f
7:                jal          t1, 4b
8:                jal          a4, 1b
9:                jal          ra, 2b
10:               slt          t4, t2, t4
main_4:           jal          t1, 0f
0:                jal          ra, 1f
1:                jal          t1, 6f
2:                jal          ra, 4f
3:                jal          t1, 11f
4:                jal          s2, 7f
5:                jal          a2, 10f
6:                jal          t1, 5b
7:                jal          t1, 9f
8:                jal          t1, 12f
9:                jal          ra, 8b
10:               jal          t1, 2b
11:               jal          s4, 13f
12:               jal          ra, 3b
13:               sltu         s3, a1, t1
main_9:           jal          t1, 18f
0:                jal          a1, 2f
1:                jal          ra, 19f
2:                jal          ra, 16f
3:                jal          sp, 0b
4:                jal          t1, 15f
5:                jal          ra, 11f
6:                jal          ra, 13f
7:                jal          t0, 17f
8:                jal          t0, 14f
9:                jal          ra, 10f
10:               jal          t3, 3b
11:               jal          ra, 7b
12:               jal          a5, 6b
13:               jal          ra, 21f
14:               jal          ra, 4b
15:               jal          ra, 1b
16:               jal          t1, 12b
17:               jal          t0, 8b
18:               jal          ra, 20f
19:               jal          t1, 9b
20:               jal          ra, 5b
21:               xori         s7, s5, 34
main_16:          jal          t1, 16f
0:                jal          t2, 19f
1:                jal          ra, 10f
2:                jal          t2, 18f
3:                jal          ra, 17f
4:                jal          sp, 22f
5:                jal          ra, 2b
6:                jal          s8, 15f
7:                jal          a0, 6b
8:                jal          t1, 26f
9:                jal          ra, 4b
10:               jal          t6, 9b
11:               jal          s8, 7b
12:               jal          ra, 25f
13:               jal          a6, 3b
14:               jal          ra, 12b
15:               jal          ra, 23f
16:               jal          ra, 20f
17:               jal          ra, 14b
18:               jal          t1, 1b
19:               jal          ra, 24f
20:               jal          ra, 13b
21:               jal          a1, 5b
22:               jal          ra, 8b
23:               jal          ra, 0b
24:               jal          ra, 21b
25:               jal          t1, 11b
26:               addi         ra, t6, 1888
main_11:          jal          t1, 7f
0:                jal          s10, 5f
1:                jal          a7, 16f
2:                jal          ra, 8f
3:                jal          ra, 4f
4:                jal          t5, 14f
5:                jal          ra, 2b
6:                jal          ra, 11f
7:                jal          ra, 6b
8:                jal          t1, 9f
9:                jal          ra, 3b
10:               jal          ra, 1b
11:               jal          ra, 0b
12:               jal          tp, 13f
13:               jal          ra, 15f
14:               jal          a3, 12b
15:               jal          s11, 10b
16:               srli         s1, s2, 1
main_8:           jal          t1, 8f
0:                jal          ra, 1f
1:                jal          t0, 3f
2:                jal          ra, 11f
3:                jal          t1, 10f
4:                jal          ra, 6f
5:                jal          ra, 0b
6:                jal          ra, 2b
7:                jal          ra, 4b
8:                jal          t1, 5b
9:                jal          ra, 7b
10:               jal          ra, 9b
11:               sltu         tp, t4, a3
main_0:           jal          t1, 0f
0:                jal          t1, 3f
1:                jal          t1, 9f
2:                jal          ra, 4f
3:                jal          t4, 2b
4:                jal          a2, 7f
5:                jal          ra, 8f
6:                jal          ra, 11f
7:                jal          ra, 5b
8:                jal          t1, 10f
9:                jal          ra, 6b
10:               jal          t6, 1b
11:               srai         s4, t1, 17
                  lui          t0, 464854
                  beq          gp, t4, 15f
                  bltu         a7, a3, 3f
3:                blt          t3, t4, 5f
                  bgeu         ra, s2, 15f
5:                lui          s7, 732965
                  slt          t3, a4, s1
                  slti         s2, t5, -1893
                  sltiu        a6, t2, -418
                  slli         t5, t0, 28
                  add          a1, a1, gp
                  blt          t6, a0, 22f
                  srl          a7, s2, s3
                  sub          a1, t3, t0
                  sll          s11, sp, s6
15:               srl          t3, a3, a0
                  auipc        a3, 838098
                  bne          s1, t3, 37f
                  add          s8, t4, s6
                  blt          ra, a5, 39f
                  nop
                  addi         s0, s3, 1003
22:               bgeu         a3, a5, 25f
                  add          a7, gp, a6
                  sltu         a3, sp, a7
25:               andi         gp, s8, -351
                  srai         a1, tp, 18
                  bge          s9, a3, 30f
                  sltiu        a5, gp, 1397
                  sltu         a4, s6, t3
30:               slli         a0, s5, 12
                  addi         s4, a4, 1551
                  xor          a4, t2, gp
                  srli         gp, s7, 14
                  blt          s7, a5, 47f
                  ori          s0, s6, -273
                  add          a3, s5, t3
37:               and          a2, a7, s2
                  blt          s9, a0, 54f
39:               sra          t5, s6, s11
                  auipc        t4, 987823
                  bge          s8, t5, 45f
                  blt          s10, t3, 62f
                  bltu         a6, a0, 58f
                  slti         s8, a4, 568
45:               or           s2, s6, s0
                  nop
47:               add          t2, s1, s5
                  or           s4, a5, a1
                  lui          t5, 537017
                  ori          t1, s3, -1113
                  beq          s0, a4, 53f
                  sltiu        s1, s5, 1851
53:               add          s11, s3, s2
54:               xor          t3, s9, s4
                  sll          zero, sp, t4
                  sll          a1, s2, s7
                  sra          t1, s9, s2
58:               srai         sp, tp, 4
                  nop
                  or           a0, zero, gp
                  srli         t5, s3, 12
62:               sra          t0, t6, a0
                  srli         a7, t2, 12
                  and          a5, gp, a0
                  or           s1, s1, a7
                  sll          a1, s0, a0
                  slli         t3, s11, 24
                  lui          s1, 92667
                  blt          t2, t6, 79f
                  xor          a4, s11, a4
                  lui          a3, 726490
                  addi         a6, a5, 1531
                  slt          t6, a0, sp
                  and          sp, s9, t4
                  xori         t2, t6, 847
                  bgeu         sp, t5, 86f
                  slli         s7, t0, 27
                  bge          zero, s5, 85f
79:               bge          t6, a6, 93f
                  bge          s1, s11, 94f
                  lui          a1, 650801
                  bne          s4, tp, 85f
                  slti         t6, a4, -1610
                  addi         a7, a7, 1921
85:               ori          sp, t4, 1122
86:               bge          a1, s8, 99f
                  add          t5, s3, s8
                  lui          zero, 861790
                  nop
                  bne          s9, t3, 92f
                  bltu         a7, t1, 104f
92:               bne          s6, zero, 110f
93:               slti         t1, sp, 1931
94:               addi         a5, s4, -1458
                  srli         a5, a7, 17
                  bne          a0, a3, 98f
                  slli         a4, a2, 25
98:               slt          s8, s4, a7
99:               andi         t0, s2, -1784
                  slt          ra, t6, s9
                  bne          a4, s6, 121f
                  auipc        a7, 649391
                  bgeu         s1, t6, 105f
104:              srl          t4, a2, t6
105:              lui          a5, 499778
                  slt          s8, a3, t6
                  auipc        sp, 893338
                  slti         zero, a1, 896
                  beq          t2, ra, 129f
110:              sltiu        zero, s7, -1411
                  blt          s9, a0, 114f
                  srai         a5, a3, 12
                  bne          t1, a5, 128f
114:              or           t1, tp, s1
                  srl          a5, gp, s0
                  add          a5, s1, s8
                  sltu         sp, a2, t0
                  slt          a2, t1, a0
                  andi         s10, s5, -395
                  xor          a2, s8, s9
121:              bltu         t1, sp, 128f
                  sub          s11, tp, t0
                  slt          a1, a5, t1
                  or           zero, s1, s7
                  xor          t0, s7, a2
                  nop
                  slli         s3, t5, 13
128:              ori          ra, t6, -903
129:              nop
                  slti         a3, s8, 424
                  andi         t1, s8, -288
                  or           t0, t5, a5
                  andi         t4, a2, -1763
                  bge          s8, t1, 136f
                  sub          s4, s7, s8
136:              bgeu         s7, s3, 150f
                  bgeu         a3, s8, 150f
                  srli         a5, t5, 25
                  srai         t6, a7, 22
                  nop
                  bne          s4, sp, 161f
                  slli         a2, a2, 12
                  addi         a6, s10, 804
                  slt          sp, zero, s6
                  lui          gp, 994814
                  xor          t4, zero, t6
                  srai         s3, a6, 24
                  andi         t3, a5, -561
                  addi         s0, a3, 385
150:              beq          s11, a0, 160f
                  xor          t4, a1, a0
                  bltu         zero, s5, 172f
                  slt          gp, a5, a7
                  sltiu        zero, s2, -223
                  bge          a4, s6, 175f
                  srai         s2, a0, 21
                  sll          s0, s5, a5
                  bltu         t6, zero, 174f
                  slt          a6, t5, a4
160:              sltiu        s3, s8, -1968
161:              sub          t3, tp, a0
                  sltiu        s1, a4, -1849
                  sll          a5, s8, ra
                  xor          s1, s7, gp
                  sra          t2, t3, t1
                  slli         t0, a6, 10
                  ori          a1, a5, -448
                  ori          s11, s2, -294
                  slti         s4, ra, -718
                  sra          s3, s1, s8
                  slti         s3, s10, 1785
172:              ori          gp, t0, -341
                  add          s3, a6, s3
174:              auipc        s0, 233002
175:              beq          a7, s0, 195f
                  ori          s7, gp, -2027
                  srai         tp, zero, 30
                  slt          t6, t6, s7
                  sra          sp, s7, s1
                  slt          a7, a6, t1
                  bge          s8, s5, 184f
                  blt          s2, a2, 185f
                  srli         a1, ra, 20
184:              andi         tp, t4, -694
185:              srai         a6, s7, 8
                  sltu         s7, s7, t1
                  lui          a6, 264834
                  sll          a4, s8, s6
                  bne          s10, s7, 191f
                  sll          t6, t4, t3
191:              sltu         t6, a2, a4
                  xori         zero, a2, -471
                  bltu         t3, t0, 207f
                  slt          gp, a1, t1
195:              bltu         ra, a4, 213f
                  nop
                  blt          ra, a6, 208f
                  slli         t0, gp, 22
                  sub          t5, a2, t6
                  sll          a7, s5, s5
                  beq          s9, s3, 202f
202:              or           gp, s0, t6
                  slti         tp, a1, -216
                  xori         a3, a3, 161
                  srli         a5, s0, 4
                  and          t0, ra, gp
207:              slli         ra, s5, 16
208:              slti         t3, t0, -1345
                  add          t0, s11, t0
                  and          a3, a7, s5
                  slli         a3, zero, 31
                  la           s4, sub_4
                  sub          a0, s10, t2
                  andi         a2, gp, -819
                  xori         t2, t4, -1409
                  slli         t3, a6, 0
                  auipc        a0, 965218
                  addi         s4, s4, 547
                  slli         t2, s10, 10
main_j2:          jalr         t1, s4, -547 #jump main -> sub_4
                  and          t4, a3, s5
                  auipc        s8, 639885
                  xor          s4, t0, t6
                  srai         ra, t5, 13
213:              srli         a0, t1, 7
                  bge          sp, t1, 218f
                  xor          t1, a4, a3
                  slt          t2, sp, s7
                  beq          a7, s0, 228f
218:              sltiu        t6, t5, -966
                  bne          s6, ra, 232f
                  sll          t2, s8, zero
                  slt          a4, s10, s1
                  add          a1, s11, t6
                  nop
                  sltu         t0, s0, a5
                  bgeu         s2, gp, 238f
                  add          t3, a5, zero
                  auipc        a5, 357977
228:              add          s2, sp, ra
                  slt          t6, s9, a5
                  xor          s8, s10, s10
                  sub          gp, a3, tp
232:              or           s3, s1, t1
                  slti         s3, a2, 257
                  addi         s7, s6, -186
                  or           s2, s9, ra
                  beq          a5, a4, 256f
                  lui          s10, 929132
238:              slt          s0, t5, t5
                  sltiu        a1, s0, 1707
                  srai         a2, s11, 2
                  sll          t5, s9, t1
                  sltu         a4, s2, a1
                  slli         s8, tp, 31
                  ori          t2, t6, -168
                  bltu         t3, t6, 247f
                  sub          a0, t3, t6
247:              blt          a4, s0, 250f
                  bge          s8, s8, 262f
                  or           a3, t0, zero
250:              sub          sp, s4, gp
                  bltu         s9, s8, 254f
                  lui          gp, 256567
                  and          t1, s1, a6
254:              bne          s11, a7, 264f
                  srl          t3, t2, ra
256:              nop
                  add          ra, t5, s3
                  blt          a7, s8, 260f
                  bgeu         s6, t0, 261f
260:              and          a4, a3, s4
261:              slt          t0, s1, s6
262:              andi         a0, t4, 1068
                  and          t6, s5, a1
264:              or           a7, s11, a5
                  blt          t5, t4, 281f
                  sra          s1, a0, s7
                  srli         t0, s5, 1
                  srai         zero, s3, 6
                  lui          a7, 642013
                  sltu         t0, s0, s10
                  sra          t1, t4, s4
                  lui          s3, 1019281
                  slli         s10, zero, 19
                  slti         s10, s1, 153
                  slli         s3, tp, 5
                  blt          s5, a3, 290f
                  addi         s4, t5, -248
                  sub          a7, s0, ra
                  lui          a2, 812368
                  addi         a6, s2, -115
281:              srai         a2, t0, 27
                  bltu         s7, ra, 300f
                  andi         s1, s9, 257
                  auipc        t6, 549355
                  sll          s0, s9, tp
                  addi         t5, s6, 635
                  bge          s5, s11, 290f
                  slti         a2, s4, 194
                  sub          s8, s2, s8
290:              andi         a2, a7, -42
                  slti         a2, s6, -64
                  sltu         s1, t1, t3
                  addi         s10, s0, -1807
                  add          t6, s3, a1
                  srli         s8, a2, 22
                  srai         t5, s1, 9
                  bge          s11, tp, 301f
                  sltu         s7, s3, s10
                  slli         t3, t4, 31
300:              sll          s3, t1, t3
301:              sub          gp, s4, s3
                  blt          a4, s5, 305f
                  bne          s8, a4, 310f
                  sub          s2, a7, s3
305:              bne          s10, s0, 316f
                  lui          a2, 492098
                  blt          s11, s10, 310f
                  sub          s3, a5, s6
                  xor          zero, t5, s10
310:              ori          s3, s11, 701
                  ori          t0, s2, 1424
                  addi         s0, s0, -986
                  addi         t3, zero, -1129
                  slti         a5, s3, 17
                  blt          a1, a4, 335f
316:              lui          t5, 112648
                  bne          t3, s0, 332f
                  auipc        t3, 272779
                  addi         s0, zero, 702
                  ori          s10, s7, -394
                  bltu         a5, s2, 341f
                  addi         t5, tp, 1396
                  sra          a2, gp, s4
                  auipc        s11, 464359
                  srai         s11, a3, 23
                  xor          a5, a7, s2
main_6:           jal          t1, 21f
0:                jal          ra, 23f
1:                jal          s7, 13f
2:                jal          a4, 4f
3:                jal          t1, 6f
4:                jal          ra, 8f
5:                jal          t1, 22f
6:                jal          ra, 11f
7:                jal          s11, 2b
8:                jal          a3, 20f
9:                jal          ra, 25f
10:               jal          t1, 7b
11:               jal          ra, 1b
12:               jal          sp, 10b
13:               jal          t1, 16f
14:               jal          t1, 24f
15:               jal          ra, 17f
16:               jal          ra, 0b
17:               jal          a6, 18f
18:               jal          gp, 9b
19:               jal          ra, 14b
20:               jal          ra, 19b
21:               jal          ra, 5b
22:               jal          ra, 12b
23:               jal          t1, 15b
24:               jal          t1, 3b
25:               sra          t2, t5, a5
                  ori          t1, s9, 610
                  and          s1, s7, t1
                  or           s1, s4, s0
                  slti         a0, t5, -1798
                  lui          s11, 482281
332:              sra          s4, s7, s10
                  sra          t6, a7, s3
                  addi         zero, s9, 247
335:              add          s2, a1, s2
                  slli         a6, s1, 9
                  and          gp, ra, s10
                  ori          a2, tp, 1254
                  addi         s1, t0, 2024
                  srli         t3, t3, 15
341:              sra          t1, a1, s5
                  blt          t4, a0, 344f
                  ori          t2, s9, 836
344:              xor          t5, t3, a6
                  ori          s8, s10, 1109
                  bge          t6, s0, 356f
                  srli         ra, ra, 10
                  slli         s4, s3, 18
                  sub          t5, t4, a2
                  ori          t0, s5, -1455
                  bltu         zero, a6, 354f
                  or           s7, zero, a3
                  slti         a5, s3, 773
354:              srl          s0, a1, t6
                  sra          s8, ra, s9
356:              slli         s1, zero, 21
                  addi         s7, a7, -238
                  sll          a2, s0, a1
                  lui          t4, 415623
                  sll          a3, s1, s2
                  xor          s7, a3, s3
                  sll          s3, zero, a0
                  ori          s3, s11, 1811
                  bge          s11, t1, 365f
365:              slli         t0, zero, 2
                  nop
                  ori          a3, s11, 591
                  ori          s8, tp, 1632
                  beq          a3, zero, 371f
                  ori          s10, sp, -1435
371:              sltu         zero, a7, t4
                  nop
                  sll          a3, s4, t6
                  slt          t6, s11, gp
                  bltu         tp, a7, 395f
                  sltu         a5, a6, tp
                  blt          a1, t4, 397f
                  srli         ra, a4, 4
                  nop
                  slt          t3, a4, a7
                  sub          ra, s11, s0
                  xori         s8, a5, 1588
                  slt          s4, a1, t4
                  srl          a1, t3, s10
                  andi         tp, s2, -1856
                  slt          a0, a4, s6
                  add          t4, s2, t3
                  andi         a0, s4, -1025
                  slli         a5, t3, 10
                  nop
                  nop
                  bge          s6, s11, 403f
                  slli         t4, s9, 19
                  nop
395:              addi         t2, s4, 1060
                  bge          a0, s8, 410f
397:              slt          s0, s3, s3
                  or           a0, t1, s9
                  bgeu         t1, s8, 412f
                  xor          t5, gp, s5
                  blt          ra, gp, 403f
                  sll          ra, ra, s7
403:              add          s3, s9, a2
                  ori          tp, sp, -1900
                  ori          a4, zero, -1181
                  slti         zero, a3, -650
                  xori         a4, a5, -1697
                  xori         s2, s7, 372
                  or           s0, s7, s10
410:              sll          t6, s2, a1
                  bne          s6, s6, 424f
412:              bgeu         tp, t5, 414f
                  and          s11, zero, a3
414:              bne          s6, t3, 434f
                  bltu         a6, t4, 417f
                  andi         s0, s9, 933
417:              bgeu         s9, t0, 430f
                  beq          s6, ra, 428f
                  bge          s0, s11, 433f
                  beq          s7, s7, 430f
                  andi         a5, t1, -1194
                  nop
                  or           a6, s2, a4
424:              auipc        t6, 180991
                  lui          s10, 801208
                  bgeu         t3, t1, 428f
                  auipc        a1, 576007
428:              bgeu         t6, s4, 442f
                  bgeu         s8, s1, 431f
430:              addi         a5, s0, -2046
431:              bltu         s9, s10, 433f
                  bne          a4, s2, 435f
433:              slt          a5, s3, a4
434:              sra          a5, ra, s7
435:              bne          t1, a7, 453f
                  xor          s3, a2, t5
                  auipc        a4, 486917
                  srai         tp, s10, 4
                  slti         a0, gp, 863
                  xor          a7, s4, s5
                  bgeu         t4, s1, 456f
442:              xori         t1, s11, 864
                  sra          ra, sp, t6
                  lui          a5, 785034
                  nop
                  sltu         t1, t4, s9
                  srli         a1, s7, 12
                  beq          s7, s11, 462f
                  srl          s2, t0, a5
                  sub          a5, s2, t6
                  slti         s7, a0, 127
                  nop
453:              bgeu         a5, t0, 455f
                  slli         t0, t5, 18
455:              xor          a3, s11, t4
456:              sub          t0, s10, t0
                  xor          s7, t1, a3
                  nop
                  srai         a1, t2, 22
                  auipc        s0, 881855
                  srli         sp, ra, 19
462:              srai         t2, s8, 11
                  srli         zero, a1, 28
                  xori         ra, a2, -1665
                  andi         t0, t6, 273
                  srl          a7, t2, a4
                  bltu         s10, s3, 483f
                  add          zero, t4, sp
                  beq          s7, s5, 476f
                  andi         sp, t0, 440
                  bne          a1, ra, 491f
                  blt          t3, a5, 483f
                  beq          t0, s2, 493f
                  slli         tp, s2, 16
                  sltu         gp, s6, s3
476:              lui          t1, 781766
                  beq          a2, t2, 480f
                  and          s2, a0, a5
                  srli         t3, s1, 15
480:              xor          s8, t0, a0
                  ori          sp, a1, -1465
                  or           a0, a4, a0
483:              blt          s5, t0, 503f
                  bgeu         s9, a0, 498f
                  nop
                  sub          s8, zero, a1
                  sra          s3, a2, s2
                  srli         s0, a7, 22
                  slti         s8, s2, 16
                  nop
main_5:           jal          t1, 2f
0:                jal          t6, 15f
1:                jal          ra, 14f
2:                jal          ra, 9f
3:                jal          t1, 4f
4:                jal          gp, 7f
5:                jal          a5, 10f
6:                jal          ra, 20f
7:                jal          t1, 17f
8:                jal          t1, 11f
9:                jal          s4, 3b
10:               jal          s4, 16f
11:               jal          ra, 18f
12:               jal          ra, 0b
13:               jal          ra, 22f
14:               jal          t1, 8b
15:               jal          t1, 13b
16:               jal          a4, 21f
17:               jal          ra, 1b
18:               jal          ra, 19f
19:               jal          ra, 5b
20:               jal          t1, 12b
21:               jal          ra, 6b
22:               ori          a7, a4, -1604
491:              bge          t4, s4, 501f
                  add          s10, t4, s11
493:              and          t1, t5, s11
                  sltiu        a6, t1, 665
                  ori          t1, tp, 146
                  bltu         s1, sp, 499f
                  ori          a5, s7, -1901
498:              addi         a0, t4, 1053
499:              srl          a4, s10, s1
                  bge          ra, a0, 520f
501:              srli         a4, t3, 25
                  sltu         t5, s7, t5
503:              sub          a0, zero, s4
                  slti         a6, a0, -744
                  sltu         t1, a3, a6
                  sltiu        a0, a6, -1146
                  auipc        s7, 700405
                  slti         t0, a1, 1573
                  or           s10, t3, s7
                  srai         tp, s1, 28
                  auipc        a0, 9923
                  slt          a2, s6, s2
                  xori         t6, t5, 1459
                  blt          s4, s9, 525f
                  lui          s1, 258749
                  srli         a6, t3, 1
                  and          a4, t6, t5
                  sll          s1, tp, s10
                  bgeu         s7, s3, 539f
520:              sll          t2, t4, sp
                  srai         s3, a3, 10
                  bge          a5, a1, 526f
                  bge          a3, tp, 536f
                  slti         t5, s0, 367
525:              slt          t2, s6, ra
526:              lui          t1, 204922
                  slt          t1, a2, t5
                  slt          t3, t4, s6
                  auipc        gp, 594991
                  and          t4, t3, t4
                  nop
                  srl          a5, t3, zero
                  lui          t6, 822695
                  beq          t5, a6, 535f
535:              nop
536:              beq          sp, a3, 538f
                  add          a7, a0, a2
538:              andi         a0, zero, -1659
539:              ori          t0, t6, -772
                  bge          s6, t2, 553f
                  xori         s3, s3, 1391
                  sub          a7, a6, a3
                  lui          t1, 656261
                  bltu         gp, t2, 547f
                  bltu         s9, t3, 558f
                  beq          s6, s2, 566f
547:              ori          s2, t0, -1769
                  and          s2, s5, s8
                  srl          t5, a5, a2
                  bgeu         sp, s8, 570f
                  or           s10, s10, zero
                  sltiu        t2, a0, 2010
553:              slt          s7, a4, s2
                  lui          tp, 121269
                  blt          s8, s6, 565f
                  bltu         tp, s3, 559f
                  sub          a2, s2, s0
558:              bltu         s4, a7, 569f
559:              slli         a3, s1, 18
                  and          s8, tp, s11
                  or           s4, s2, a3
                  xori         s10, s9, -1307
                  add          t0, gp, a2
                  sll          a3, s6, a4
565:              sra          tp, a6, s1
                  auipc        t5, 536973
                  sll          a4, s0, zero
                  la           tp, sub_2
                  add          s3, t3, t5
                  slli         s4, t4, 18
                  addi         tp, tp, -875
                  or           t0, a5, s4
main_j4:          jalr         t1, tp, 876 #jump main -> sub_2
566:              sll          a2, s6, s5
                  srl          s8, a2, a4
                  slti         s8, s0, -365
569:              xori         sp, t0, -34
570:              sltu         a2, t1, s1
                  ori          sp, a1, 1237
                  bge          s2, t0, 586f
                  xori         s4, s0, -1841
                  srai         ra, s1, 7
                  sra          t3, tp, a4
                  addi         t4, t1, 742
                  srli         s4, a3, 10
                  nop
                  bgeu         t2, ra, 599f
                  xori         s3, s4, 91
                  srl          s3, a0, s5
                  xori         a5, a4, 56
                  srl          t1, t1, s9
                  beq          s4, a4, 595f
                  srl          a5, s2, s0
586:              xori         s2, s8, -103
                  sltiu        t6, a5, 583
                  sltiu        s11, a1, 169
                  bge          s2, s9, 602f
                  bgeu         t1, a6, 592f
                  bge          ra, a7, 592f
592:              beq          sp, a5, 612f
                  slt          s8, t5, s6
                  xor          s4, a4, a4
595:              bne          a3, gp, 598f
                  bgeu         zero, gp, 598f
                  xori         a7, zero, 963
598:              sll          zero, a3, gp
599:              srli         t5, ra, 15
                  xori         t5, a0, 1793
                  sltu         s3, t0, a2
602:              xori         s7, t4, 11
                  lui          s4, 689857
                  slt          s11, s4, t2
                  nop
                  or           a0, a6, t5
                  blt          t3, s10, 617f
                  sltu         a6, s7, gp
                  slti         t1, t3, 912
                  blt          t6, s6, 628f
                  bne          s9, a5, 614f
612:              beq          t1, s8, 614f
                  srli         a2, s5, 24
614:              srl          tp, t5, s8
                  beq          a1, a4, 629f
                  slt          s7, s2, a3
617:              xori         t6, s7, 1683
                  bne          s0, t6, 632f
                  andi         zero, gp, 636
                  ori          s3, ra, -726
                  srai         s10, t3, 10
                  ori          s11, a5, 1311
                  andi         t0, a0, -991
                  xori         s2, s8, -1058
                  sll          a4, gp, s6
                  bltu         zero, t5, 629f
                  xori         a0, s7, -1222
628:              bltu         s0, s6, 630f
629:              xori         tp, s0, 568
630:              bltu         s6, zero, 643f
                  sub          t0, s5, t6
632:              sub          s7, zero, t3
                  srli         s8, a0, 15
                  sltiu        a3, s7, -1328
                  andi         t0, s1, -824
                  sll          a0, a4, t2
                  slt          s8, t3, s6
                  srl          ra, t6, a4
                  sra          t0, s10, t0
                  xori         t1, s1, -313
                  srai         s10, t0, 10
                  or           a5, t0, s4
643:              sltiu        s2, s6, 87
                  slti         a2, s9, 1795
                  sll          s3, a6, ra
                  sltiu        t0, a5, -1798
                  slti         a6, ra, 621
                  srai         a4, a7, 1
                  lui          s0, 763327
                  sra          a6, s0, s10
                  auipc        a5, 497115
                  add          t4, t0, gp
                  lui          t1, 702080
                  srai         t5, t5, 4
                  xor          s10, s7, s5
                  sub          tp, s5, t2
                  slt          a2, tp, s9
                  bltu         a7, s2, 671f
                  xori         a5, a3, 688
                  sub          t6, a0, t6
                  srai         a5, ra, 6
                  xor          s10, ra, t6
                  sltiu        a7, a3, -946
                  or           s0, s11, s3
                  slt          t0, t2, a0
                  bgeu         ra, ra, 673f
                  slti         a7, a4, 695
                  srli         s11, s1, 31
                  xor          s8, a2, gp
                  or           s4, a3, t5
671:              or           t3, s6, sp
                  lui          zero, 604225
673:              srl          s3, t3, a3
                  slti         a1, a6, -476
                  lui          a5, 563829
                  srli         zero, s11, 16
                  bge          s2, s2, 697f
                  addi         t3, a7, -1639
                  and          t2, t5, a0
                  sltu         s4, t0, a1
                  sltu         s8, a7, sp
                  bltu         s1, s2, 686f
                  slti         a4, a4, 920
                  bne          a5, s6, 700f
                  nop
686:              srl          t4, s1, zero
                  srli         s4, t6, 5
                  sub          gp, s0, t0
                  xori         a3, s4, -1284
                  bne          a3, a6, 692f
                  slt          a6, sp, zero
692:              bge          tp, a1, 707f
                  addi         s2, t4, -1811
                  or           tp, a2, a1
                  bge          t0, s1, 706f
                  andi         s11, s4, -1755
697:              srai         s7, s3, 5
                  blt          s11, a6, 713f
                  srli         s1, s0, 2
700:              and          t6, s4, s7
                  lui          s0, 58505
                  bltu         s6, t2, 716f
                  auipc        a4, 578109
                  ori          sp, s7, 1918
                  xor          t3, s5, s4
706:              lui          s10, 420857
707:              or           sp, a7, s10
                  or           t4, s0, s1
                  srli         a5, a6, 23
                  blt          a6, s3, 713f
                  bne          s10, ra, 721f
                  sltu         a5, s0, a5
713:              ori          sp, a2, 1856
                  beq          tp, t1, 734f
                  xori         s1, s3, 664
716:              beq          a7, zero, 718f
                  slli         s11, a5, 26
718:              and          a0, s3, s3
                  srli         t0, t0, 17
                  xor          t5, zero, s1
721:              bltu         s6, zero, 734f
                  bgeu         s10, s1, 725f
                  lui          t1, 220539
                  bge          t0, a1, 726f
725:              sll          s0, t3, a7
726:              ori          s0, s10, 1575
                  auipc        ra, 176627
                  sll          s1, s9, ra
                  srl          a0, s2, t6
main_3:           jal          t1, 21f
0:                jal          ra, 19f
1:                jal          ra, 14f
2:                jal          t4, 13f
3:                jal          ra, 9f
4:                jal          ra, 11f
5:                jal          ra, 15f
6:                jal          ra, 24f
7:                jal          ra, 16f
8:                jal          t1, 20f
9:                jal          tp, 0b
10:               jal          ra, 23f
11:               jal          t1, 22f
12:               jal          ra, 2b
13:               jal          s7, 17f
14:               jal          ra, 7b
15:               jal          t5, 12b
16:               jal          t1, 27f
17:               jal          ra, 3b
18:               jal          t1, 5b
19:               jal          ra, 1b
20:               jal          t1, 4b
21:               jal          s7, 26f
22:               jal          ra, 25f
23:               jal          ra, 8b
24:               jal          ra, 10b
25:               jal          ra, 18b
26:               jal          tp, 6b
27:               srai         s1, s1, 7
                  srli         gp, ra, 25
                  and          a0, s7, a4
                  sll          s2, t6, a4
                  auipc        a2, 293607
734:              slli         s3, a1, 2
                  srl          t2, s1, a1
                  slti         s2, a0, -1586
                  slti         a7, sp, 1021
                  or           t4, s8, s4
                  srl          a6, a7, ra
                  beq          t6, a6, 760f
                  and          t6, t1, t3
                  slli         s2, gp, 2
                  sll          s10, t5, s6
                  and          t1, s7, t5
                  sll          s8, t2, s11
                  sub          a5, s7, s3
                  sltiu        s0, t0, 1115
                  bltu         a5, gp, 762f
                  bne          gp, t2, 750f
750:              blt          s10, a3, 761f
                  sub          s11, a2, t5
                  addi         a4, t1, -1714
                  auipc        a7, 185362
                  addi         a3, s8, -975
                  slli         s2, s2, 31
                  slli         t4, t2, 25
                  xor          t4, ra, s3
                  slli         tp, s11, 16
                  bgeu         t0, a5, 772f
760:              xori         t6, s3, -1986
761:              sll          a6, s6, t3
762:              bne          ra, s8, 764f
                  srai         s8, t5, 30
764:              beq          s2, s6, 777f
                  andi         t0, zero, -1097
                  auipc        t2, 42450
                  sll          t2, s5, gp
                  auipc        s3, 13487
                  bge          s7, s6, 771f
                  auipc        a2, 268179
771:              ori          a6, a1, -1709
772:              nop
                  auipc        s0, 128728
                  xori         a0, t4, -133
                  bge          s10, a6, 793f
                  slt          t3, s6, a7
777:              srai         t0, s10, 5
                  lui          zero, 242184
                  andi         a5, s8, 262
                  sll          a0, s11, a2
                  sll          ra, a6, s7
                  or           s1, gp, s8
                  bltu         s3, gp, 793f
                  lui          t2, 148495
                  addi         zero, t1, -1092
                  andi         a7, zero, -876
                  sltu         t3, ra, a1
                  slti         a2, a2, -1317
                  nop
                  sub          t0, a3, s6
                  slti         a0, a5, 1232
                  lui          s3, 988825
793:              or           sp, a6, t5
                  slli         a6, s11, 27
                  blt          s4, s2, 798f
                  ori          t5, s0, -1574
                  bltu         a2, s11, 800f
798:              bgeu         t3, s0, 818f
                  slti         gp, ra, -1738
800:              slli         tp, t0, 6
                  add          sp, t3, s8
                  add          t2, s8, a3
                  sll          a2, s0, tp
                  srli         a2, ra, 30
                  sltiu        a3, s3, 1133
                  blt          s0, s0, 813f
                  addi         s3, t1, 1572
                  slli         t2, zero, 30
                  srl          s1, s5, t0
                  srli         a4, a7, 24
                  addi         a1, s4, 510
                  beq          s4, t0, 828f
813:              andi         a7, a3, -632
                  nop
                  nop
                  auipc        t4, 938626
                  sll          s7, s11, s3
818:              or           zero, t6, t2
                  sub          s7, gp, t4
                  xor          a1, s5, t0
                  sltu         tp, a5, t6
                  beq          a3, s10, 826f
                  add          s3, s3, tp
                  add          t1, s1, a2
                  bge          s6, sp, 845f
826:              bne          s10, a0, 828f
                  bge          sp, a1, 841f
828:              slli         a1, s5, 27
                  slt          t0, s9, s11
                  srai         t2, t0, 17
                  srai         a6, s7, 8
                  or           s4, t4, s4
                  blt          t4, a6, 853f
                  andi         s4, a7, 1899
                  srai         gp, t6, 30
                  sub          s0, a0, t3
                  xor          s1, t3, t2
                  nop
                  bgeu         t0, t1, 842f
                  beq          a4, s0, 844f
841:              auipc        a3, 644676
842:              bge          a7, s6, 845f
                  bge          t6, zero, 857f
844:              xor          t4, t4, t4
845:              bne          t6, s7, 856f
                  slti         t6, t3, 1946
                  slli         a6, t2, 5
                  slli         s4, a0, 3
                  slt          s0, s5, gp
                  sra          s4, t3, s8
                  slt          s10, a1, t3
                  sltu         s7, t4, s11
853:              or           t1, t2, s10
                  slt          sp, a1, a1
                  lui          a0, 1000586
856:              or           a1, s7, t6
857:              bltu         t5, t1, 871f
                  srli         s10, s7, 17
                  or           t2, a1, s3
                  addi         s10, s1, -1635
                  slti         zero, s7, -1280
                  sub          s3, a6, s6
                  sub          t6, t1, t3
                  slli         t4, t0, 12
                  sll          t2, t5, s10
                  ori          s8, t2, 1417
                  ori          t6, a1, -318
                  bgeu         t2, t0, 884f
                  sltiu        a1, t4, -1980
                  bne          s7, t4, 873f
871:              and          s1, s10, gp
                  xor          a7, gp, a7
873:              nop
                  lui          t2, 80228
                  auipc        a7, 1004650
                  slt          a2, s9, a7
                  bne          s1, a1, 879f
main_18:          jal          t1, 22f
0:                jal          t1, 15f
1:                jal          ra, 20f
2:                jal          ra, 16f
3:                jal          ra, 12f
4:                jal          t1, 11f
5:                jal          t1, 6f
6:                jal          ra, 9f
7:                jal          ra, 5b
8:                jal          t6, 0b
9:                jal          ra, 14f
10:               jal          ra, 4b
11:               jal          ra, 3b
12:               jal          gp, 21f
13:               jal          ra, 23f
14:               jal          ra, 18f
15:               jal          s3, 19f
16:               jal          ra, 17f
17:               jal          t3, 13b
18:               jal          t0, 2b
19:               jal          a5, 1b
20:               jal          ra, 10b
21:               jal          ra, 7b
22:               jal          t1, 8b
23:               ori          s3, a1, -1442
                  beq          s7, s8, 892f
879:              xori         tp, a6, -1118
                  sltu         a2, s6, s6
                  sll          a7, t1, s11
                  slti         sp, sp, -172
                  slli         t0, a5, 18
884:              xor          s2, s11, t3
                  sll          ra, a1, gp
                  xor          t5, s2, s11
                  bge          s7, gp, 900f
                  slt          a5, a1, t5
                  slli         a3, s11, 1
                  xori         t3, a0, -182
                  slt          gp, s5, s2
892:              sub          a3, s11, t2
                  srai         t3, t4, 1
                  slti         s10, t4, 13
                  sltiu        s2, a0, 1495
                  sub          s3, t4, s8
                  or           s11, a5, t6
                  bne          s1, tp, 918f
                  beq          a0, s7, 901f
900:              or           tp, s11, a5
901:              bne          s1, t5, 921f
                  sub          gp, a1, s0
                  slti         a4, t0, 738
                  or           a1, s10, a3
                  bltu         t5, gp, 925f
                  lui          zero, 524373
                  sra          zero, s6, s11
                  slli         s2, sp, 11
                  add          s10, s3, s11
                  sltu         a7, t1, a6
                  blt          t3, ra, 929f
                  nop
                  xor          s2, s6, t3
                  sltiu        t3, t2, -544
                  slt          a6, sp, s5
                  and          a5, a4, t1
                  bltu         t5, s7, 919f
918:              and          t0, s11, s6
919:              ori          s0, a7, 162
                  slti         s3, a5, -1866
921:              add          ra, a1, t3
                  bne          s7, t5, 929f
                  andi         ra, a3, -725
                  andi         a6, s11, 688
925:              xori         s3, t1, 855
                  ori          ra, s4, -1638
                  or           a6, a3, a7
                  lui          s1, 914118
929:              srli         a3, t3, 0
                  addi         a4, s3, 107
                  slti         s3, ra, 1034
                  srai         s8, sp, 6
                  srl          a7, a6, a6
                  sub          a3, s4, s8
                  bltu         sp, a2, 936f
936:              bgeu         a7, a4, 951f
                  srli         t5, s11, 19
                  sra          s11, t3, s0
                  slti         s0, a3, -1475
                  bge          s2, t6, 950f
                  srl          sp, s7, a5
                  sltu         zero, s1, a6
                  add          a3, s8, a7
                  lui          a6, 827166
                  ori          a1, a4, -1931
                  slli         t6, s9, 7
                  ori          a2, a1, 1717
                  slli         t2, t5, 6
                  beq          s11, ra, 951f
950:              nop
951:              slti         a5, a6, -1755
                  bgeu         s0, ra, 954f
                  sub          t3, s2, s8
954:              auipc        s4, 438407
                  and          a5, s6, t3
                  beq          a4, t2, 966f
                  ori          s7, s3, -1681
                  sll          s1, s1, s10
                  xor          s10, a0, a6
                  sub          t6, s0, t2
                  bge          gp, t5, 981f
                  slti         s0, gp, -505
                  beq          a6, s1, 976f
                  sltiu        a0, s7, -861
                  or           a2, s7, a1
966:              addi         s11, a5, 1878
                  beq          a5, t6, 987f
                  bltu         a0, a0, 979f
                  andi         t4, t5, 529
                  blt          s9, t6, 983f
                  andi         s3, t4, -1310
                  sra          s8, a4, t1
                  add          s0, s10, s3
                  slti         a5, s9, -777
                  sltiu        a7, s10, 1972
976:              bne          sp, s8, 979f
                  sub          s2, zero, s1
                  sltu         t4, t2, a6
979:              bltu         a5, s10, 995f
                  sll          gp, t2, a0
981:              sltu         t6, t3, s2
                  bne          a3, s7, 993f
983:              addi         a6, t2, 257
                  bge          s11, a4, 986f
                  beq          a4, a3, 1005f
986:              blt          gp, a3, 997f
987:              bge          t0, s7, 990f
                  slti         s8, a1, -1419
                  slli         t3, t6, 10
990:              srai         t3, t1, 11
                  slti         s7, s10, -1767
                  blt          s4, t0, 995f
993:              ori          s2, t3, 251
                  addi         s11, s8, -745
995:              srai         gp, s0, 16
                  srl          a1, ra, t5
997:              and          s0, s6, zero
                  sltiu        s11, a4, -1339
                  xori         s7, s0, 1384
main_7:           jal          t1, 7f
0:                jal          ra, 11f
1:                jal          a7, 9f
2:                jal          t1, 0b
3:                jal          ra, 10f
4:                jal          a7, 5f
5:                jal          sp, 6f
6:                jal          ra, 3b
7:                jal          ra, 4b
8:                jal          t1, 2b
9:                jal          ra, 8b
10:               jal          gp, 1b
11:               lui          a3, 417076
                  and          t3, s5, t4
                  ori          a1, zero, 2010
                  and          a3, t6, s4
                  la           s7, sub_1
                  srli         ra, t6, 2
                  xori         t6, ra, -1098
                  xor          t1, t5, s8
                  srli         t3, s11, 8
                  xori         zero, s9, -1105
                  xori         gp, t1, 1517
                  addi         s7, s7, 121
                  xor          a6, sp, s0
main_j3:          jalr         t1, s7, -120 #jump main -> sub_1
                  ori          s8, a6, 1313
                  slli         s0, a3, 15
                  xor          t6, s11, s11
                  blt          a1, t2, 1014f
1005:             addi         s11, t1, -1074
                  slli         a5, a3, 11
                  la           s0, sub_5
                  slti         a7, tp, -1792
                  sll          s10, a4, t3
                  srli         a2, s1, 5
                  addi         tp, t5, -1381
                  srl          s7, a0, s7
                  lui          s4, 983967
                  addi         s0, s0, 569
                  slli         tp, s7, 9
                  bgeu         t2, s6, main_j1 #branch to jump instr
                  or           s10, s4, t4
                  sltu         t6, a3, a1
main_j1:          jalr         t1, s0, -569 #jump main -> sub_5
                  and          a3, s3, s10
                  xor          t3, sp, a1
                  xori         t1, a6, 1112
                  sra          a1, a4, a2
                  slti         s8, zero, 89
                  bltu         sp, a6, 1014f
                  auipc        s11, 710663
1014:             xori         a3, t1, -1667
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            add          s11, s10, t0
                  bgeu         s2, ra, sub_2_stack_p
                  addi         s10, a0, 986
sub_2_stack_p:    addi         s5, s5, -40
                  srl          a0, a6, t4
                  sub          a0, t6, s11
                  sw           t1, 4(s5)
                  xor          s7, s7, gp
sub_2_18:         jal          t1, 26f
0:                jal          ra, 25f
1:                jal          t2, 17f
2:                jal          ra, 23f
3:                jal          ra, 2b
4:                jal          s11, 12f
5:                jal          t1, 0b
6:                jal          s0, 21f
7:                jal          ra, 24f
8:                jal          t1, 7b
9:                jal          ra, 15f
10:               jal          s1, 16f
11:               jal          ra, 20f
12:               jal          ra, 1b
13:               jal          a6, 6b
14:               jal          sp, 13b
15:               jal          ra, 22f
16:               jal          ra, 4b
17:               jal          t1, 18f
18:               jal          a7, 3b
19:               jal          ra, 27f
20:               jal          ra, 19b
21:               jal          ra, 10b
22:               jal          t1, 14b
23:               jal          t0, 5b
24:               jal          ra, 11b
25:               jal          ra, 8b
26:               jal          t1, 9b
27:               srai         sp, s0, 22
sub_2_10:         jal          t1, 20f
0:                jal          ra, 11f
1:                jal          sp, 14f
2:                jal          ra, 0b
3:                jal          ra, 13f
4:                jal          ra, 17f
5:                jal          t0, 1b
6:                jal          ra, 18f
7:                jal          t2, 6b
8:                jal          ra, 22f
9:                jal          s4, 10f
10:               jal          t1, 4b
11:               jal          t1, 3b
12:               jal          a1, 16f
13:               jal          ra, 7b
14:               jal          ra, 2b
15:               jal          ra, 9b
16:               jal          t0, 5b
17:               jal          s11, 23f
18:               jal          ra, 19f
19:               jal          t1, 15b
20:               jal          ra, 8b
21:               jal          a7, 12b
22:               jal          ra, 21b
23:               nop
sub_2_8:          jal          t1, 1f
0:                jal          ra, 2f
1:                jal          t4, 0b
2:                jal          t0, 8f
3:                jal          ra, 10f
4:                jal          t2, 21f
5:                jal          ra, 24f
6:                jal          gp, 22f
7:                jal          ra, 20f
8:                jal          ra, 5b
9:                jal          a4, 18f
10:               jal          ra, 17f
11:               jal          ra, 23f
12:               jal          ra, 3b
13:               jal          ra, 4b
14:               jal          s10, 9b
15:               jal          t2, 11b
16:               jal          t1, 12b
17:               jal          ra, 13b
18:               jal          a3, 25f
19:               jal          ra, 7b
20:               jal          t1, 16b
21:               jal          ra, 14b
22:               jal          ra, 19b
23:               jal          t1, 6b
24:               jal          sp, 15b
25:               sltiu        gp, a2, -869
sub_2_13:         jal          t1, 8f
0:                jal          ra, 3f
1:                jal          a4, 11f
2:                jal          a6, 6f
3:                jal          a4, 1b
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 7b
9:                jal          ra, 5b
10:               jal          t6, 12f
11:               jal          tp, 4b
12:               jal          t1, 13f
13:               slt          t0, s1, s8
sub_2_6:          jal          t1, 11f
0:                jal          t1, 2f
1:                jal          t3, 12f
2:                jal          a1, 10f
3:                jal          t1, 13f
4:                jal          tp, 8f
5:                jal          ra, 3b
6:                jal          s7, 9f
7:                jal          t1, 1b
8:                jal          ra, 5b
9:                jal          t1, 0b
10:               jal          t1, 7b
11:               jal          t1, 6b
12:               jal          ra, 4b
13:               lui          a1, 628162
sub_2_5:          jal          t1, 8f
0:                jal          t1, 1f
1:                jal          ra, 3f
2:                jal          ra, 7f
3:                jal          t1, 9f
4:                jal          ra, 11f
5:                jal          t1, 12f
6:                jal          ra, 10f
7:                jal          t1, 6b
8:                jal          ra, 5b
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          t1, 2b
12:               jal          ra, 0b
13:               sltiu        t1, a5, -514
sub_2_19:         jal          t1, 1f
0:                jal          sp, 8f
1:                jal          a2, 5f
2:                jal          ra, 0b
3:                jal          ra, 10f
4:                jal          t1, 3b
5:                jal          a0, 9f
6:                jal          t1, 7f
7:                jal          t1, 2b
8:                jal          ra, 11f
9:                jal          a3, 4b
10:               jal          ra, 6b
11:               slti         tp, s2, -1804
sub_2_1:          jal          t1, 18f
0:                jal          t1, 3f
1:                jal          ra, 25f
2:                jal          ra, 12f
3:                jal          t1, 16f
4:                jal          ra, 22f
5:                jal          gp, 19f
6:                jal          gp, 2b
7:                jal          ra, 11f
8:                jal          ra, 17f
9:                jal          t1, 24f
10:               jal          ra, 1b
11:               jal          ra, 15f
12:               jal          ra, 14f
13:               jal          a0, 8b
14:               jal          ra, 26f
15:               jal          ra, 13b
16:               jal          ra, 6b
17:               jal          ra, 23f
18:               jal          ra, 5b
19:               jal          s4, 10b
20:               jal          t4, 21f
21:               jal          s11, 4b
22:               jal          ra, 7b
23:               jal          ra, 9b
24:               jal          t6, 0b
25:               jal          ra, 20b
26:               lui          t1, 645750
sub_2_16:         jal          t1, 11f
0:                jal          s4, 6f
1:                jal          a6, 9f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          t1, 13f
5:                jal          ra, 7f
6:                jal          s10, 8f
7:                jal          ra, 0b
8:                jal          t1, 10f
9:                jal          ra, 5b
10:               jal          t6, 12f
11:               jal          ra, 1b
12:               jal          s0, 3b
13:               jal          t1, 14f
14:               and          tp, s11, s3
sub_2_0:          jal          t1, 16f
0:                jal          t1, 18f
1:                jal          t1, 17f
2:                jal          sp, 7f
3:                jal          ra, 10f
4:                jal          ra, 5f
5:                jal          t4, 14f
6:                jal          t4, 12f
7:                jal          ra, 6b
8:                jal          ra, 11f
9:                jal          t0, 8b
10:               jal          ra, 0b
11:               jal          gp, 3b
12:               jal          ra, 13f
13:               jal          s7, 9b
14:               jal          ra, 19f
15:               jal          t2, 4b
16:               jal          ra, 1b
17:               jal          gp, 2b
18:               jal          ra, 15b
19:               ori          s8, s0, 923
sub_2_12:         jal          t1, 12f
0:                jal          ra, 6f
1:                jal          t1, 25f
2:                jal          t1, 5f
3:                jal          a7, 14f
4:                jal          a2, 17f
5:                jal          tp, 11f
6:                jal          s0, 16f
7:                jal          ra, 0b
8:                jal          s4, 15f
9:                jal          gp, 24f
10:               jal          ra, 8b
11:               jal          t1, 4b
12:               jal          t0, 20f
13:               jal          t0, 2b
14:               jal          s8, 21f
15:               jal          s4, 19f
16:               jal          s8, 26f
17:               jal          ra, 9b
18:               jal          ra, 7b
19:               jal          ra, 18b
20:               jal          a7, 13b
21:               jal          ra, 1b
22:               jal          ra, 3b
23:               jal          ra, 22b
24:               jal          ra, 23b
25:               jal          t1, 10b
26:               jal          ra, 27f
27:               andi         s8, a6, 188
sub_2_11:         jal          t1, 4f
0:                jal          ra, 6f
1:                jal          t1, 10f
2:                jal          t3, 1b
3:                jal          s3, 8f
4:                jal          a2, 9f
5:                jal          gp, 7f
6:                jal          a1, 2b
7:                jal          ra, 12f
8:                jal          ra, 5b
9:                jal          a2, 0b
10:               jal          ra, 11f
11:               jal          t1, 3b
12:               srai         t1, gp, 24
sub_2_17:         jal          t1, 10f
0:                jal          tp, 1f
1:                jal          ra, 13f
2:                jal          ra, 6f
3:                jal          a0, 5f
4:                jal          t1, 9f
5:                jal          t1, 17f
6:                jal          ra, 4b
7:                jal          ra, 0b
8:                jal          gp, 3b
9:                jal          t3, 15f
10:               jal          ra, 16f
11:               jal          s0, 12f
12:               jal          t1, 2b
13:               jal          t1, 11b
14:               jal          t1, 8b
15:               jal          ra, 14b
16:               jal          gp, 7b
17:               nop
sub_2_9:          jal          t1, 15f
0:                jal          t2, 5f
1:                jal          ra, 4f
2:                jal          ra, 13f
3:                jal          t1, 14f
4:                jal          tp, 16f
5:                jal          t1, 7f
6:                jal          t1, 2b
7:                jal          t1, 10f
8:                jal          ra, 3b
9:                jal          ra, 11f
10:               jal          tp, 1b
11:               jal          a7, 0b
12:               jal          t1, 6b
13:               jal          ra, 8b
14:               jal          ra, 9b
15:               jal          a4, 12b
16:               jal          ra, 17f
17:               auipc        t6, 772437
sub_2_4:          jal          t1, 7f
0:                jal          ra, 14f
1:                jal          gp, 13f
2:                jal          t1, 9f
3:                jal          t1, 2b
4:                jal          tp, 10f
5:                jal          t1, 1b
6:                jal          t1, 8f
7:                jal          a7, 4b
8:                jal          tp, 12f
9:                jal          tp, 11f
10:               jal          ra, 3b
11:               jal          t1, 6b
12:               jal          t6, 5b
13:               jal          t1, 0b
14:               or           s4, t1, s11
sub_2_15:         jal          t1, 1f
0:                jal          ra, 8f
1:                jal          t4, 5f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          s3, 7f
5:                jal          s1, 0b
6:                jal          ra, 3b
7:                jal          t1, 2b
8:                jal          s2, 6b
9:                jal          t1, 4b
10:               add          s3, a3, a0
sub_2_3:          jal          t1, 2f
0:                jal          t1, 3f
1:                jal          ra, 6f
2:                jal          t1, 1b
3:                jal          sp, 9f
4:                jal          s3, 10f
5:                jal          t1, 0b
6:                jal          t1, 8f
7:                jal          tp, 5b
8:                jal          s11, 7b
9:                jal          ra, 4b
10:               auipc        t2, 407846
sub_2_7:          jal          t1, 11f
0:                jal          gp, 1f
1:                jal          t1, 5f
2:                jal          sp, 16f
3:                jal          s4, 21f
4:                jal          ra, 0b
5:                jal          sp, 22f
6:                jal          t1, 3b
7:                jal          t1, 20f
8:                jal          ra, 6b
9:                jal          ra, 17f
10:               jal          ra, 13f
11:               jal          ra, 12f
12:               jal          t1, 4b
13:               jal          ra, 15f
14:               jal          ra, 18f
15:               jal          t1, 9b
16:               jal          ra, 14b
17:               jal          ra, 2b
18:               jal          t1, 7b
19:               jal          ra, 23f
20:               jal          ra, 19b
21:               jal          ra, 10b
22:               jal          ra, 8b
23:               auipc        a7, 490266
sub_2_2:          jal          t1, 3f
0:                jal          tp, 4f
1:                jal          ra, 11f
2:                jal          sp, 5f
3:                jal          ra, 9f
4:                jal          sp, 13f
5:                jal          a0, 15f
6:                jal          s3, 10f
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          ra, 14f
10:               jal          t1, 0b
11:               jal          ra, 12f
12:               jal          ra, 2b
13:               jal          ra, 7b
14:               jal          ra, 6b
15:               slti         t2, s0, -1619
                  add          a7, t6, s11
                  bge          t5, ra, 19f
                  srli         a1, a5, 13
                  beq          t4, t3, 4f
4:                beq          s11, t0, 14f
                  and          gp, s4, a2
                  or           s2, a0, s8
                  and          zero, s7, ra
                  slt          a3, a5, s5
                  bltu         gp, t3, 20f
                  addi         s10, t3, -517
                  auipc        t0, 68484
                  bne          t2, s1, 13f
13:               bltu         s6, s7, 16f
14:               add          sp, t6, s10
                  beq          t5, t6, 18f
16:               blt          a7, a6, 30f
                  lui          tp, 31042
18:               bne          s8, ra, 37f
19:               and          s2, s8, s1
20:               slli         t5, t1, 22
                  addi         s3, s9, -1419
                  sltiu        t0, a7, -1805
                  bltu         s1, a5, 42f
                  sltu         a4, a6, s8
                  xor          zero, ra, s2
                  nop
                  sub          a4, s5, a6
                  bltu         gp, s7, 29f
29:               sltiu        ra, a7, -848
30:               slt          t1, s3, s8
                  sltu         sp, a1, s4
                  srli         a6, s4, 13
                  slti         t2, s11, -678
                  and          a6, t5, s1
                  srl          t6, s7, a4
                  srli         ra, a6, 27
37:               auipc        s8, 825282
                  lui          zero, 415371
                  addi         s2, t6, 917
                  bge          t0, gp, 57f
                  sra          s8, s6, s4
42:               sra          a6, a5, t6
                  sra          s11, s5, a0
                  slli         t2, a7, 3
                  xor          sp, s0, sp
                  slli         s2, s3, 20
                  beq          t6, t1, 56f
                  sltiu        s3, a2, -1203
                  beq          gp, a6, 55f
                  slti         s10, s5, -1588
                  srli         t1, t2, 12
                  srai         s4, a3, 28
                  slti         t0, s5, 170
                  ori          zero, a6, 1277
55:               slli         tp, s5, 22
56:               sltu         a5, s1, t3
57:               sub          a1, a7, s8
                  srai         s8, tp, 4
                  bltu         s8, s6, 64f
                  add          t5, a4, s3
                  slt          gp, gp, tp
                  sll          s7, ra, a6
                  bltu         ra, a1, 65f
64:               bltu         a0, s2, 69f
65:               bne          t4, s7, 70f
                  slli         t6, s9, 1
                  or           a1, s3, s1
                  blt          s2, t1, 79f
69:               srai         t2, s10, 5
70:               xor          ra, a5, s7
                  or           gp, s8, s1
                  lui          t4, 710837
                  addi         ra, zero, 1291
                  lui          t5, 541254
                  xori         t0, s3, 177
                  addi         t5, s2, -1531
                  xori         s7, t2, -1679
                  or           ra, a4, s2
79:               bge          a0, s1, 86f
                  lui          t6, 920461
                  slti         a4, s6, 675
                  xor          s8, s1, s8
                  slti         t1, a1, -21
                  ori          t2, t6, -216
                  or           s2, a0, s11
86:               bge          s7, t2, 103f
                  lui          a4, 80161
                  blt          s4, a5, 101f
                  blt          zero, sp, 95f
                  bgeu         s3, a6, 110f
                  bge          s10, zero, 107f
                  bne          a6, gp, 106f
                  addi         t0, t6, 580
                  addi         s8, a2, -80
95:               srl          a3, a7, t6
                  sra          t1, a7, s5
                  sra          t3, sp, t2
                  add          tp, s4, a6
                  bgeu         t0, s10, 104f
                  slti         s11, s7, -1802
101:              auipc        a3, 777413
                  sra          s1, s6, t0
103:              bge          tp, t1, 119f
104:              slti         t4, t5, -1694
                  or           s7, s2, gp
106:              xor          t0, s4, s9
107:              srai         a7, s3, 4
                  addi         a7, a1, 282
                  beq          ra, t3, 129f
110:              nop
                  bgeu         t2, t6, 122f
                  srai         t0, gp, 16
                  and          a3, t5, a6
                  srli         t2, s6, 20
                  sra          t4, a6, a6
                  slli         tp, s9, 6
                  slt          ra, s8, ra
                  xor          s8, t2, a0
119:              nop
                  beq          s5, s9, 125f
                  ori          a7, t0, -1008
122:              slli         t1, a4, 0
                  sltu         t6, s8, s9
                  xor          a7, a0, s6
125:              sra          t4, t1, zero
                  bne          s1, s10, 131f
                  lui          a2, 73413
                  blt          t4, t2, 133f
129:              bgeu         s8, a7, 131f
                  sll          a1, tp, a3
131:              andi         zero, s0, 1732
                  xor          t2, a0, a7
133:              sll          s3, s6, s10
                  bne          gp, zero, 152f
                  slli         s7, s8, 11
                  ori          a2, a7, 1896
                  slti         s1, s9, -1483
                  blt          a4, a3, 141f
                  slt          s2, gp, a7
                  and          s8, a6, s11
141:              srli         t6, s4, 19
                  slli         t3, s9, 16
                  sltiu        a4, s6, 533
                  sub          s7, t4, a0
                  xor          a3, t1, s5
                  slli         s4, tp, 2
                  ori          t1, s7, 555
                  srai         s0, s9, 11
                  sub          s0, s10, s1
                  beq          s0, t4, 156f
                  sll          s4, s7, a3
152:              bne          a2, t0, 171f
                  srli         a3, a1, 15
                  slti         a7, t4, 1244
                  sltu         t5, a3, s4
156:              slt          gp, t6, a6
                  bge          t3, zero, 158f
158:              auipc        a5, 910812
                  srai         t4, a5, 26
                  sltiu        t2, s9, -1112
                  ori          sp, s2, -65
                  sltiu        t0, gp, -306
                  bgeu         s9, ra, 174f
                  srli         s2, s2, 2
                  and          a2, s10, a7
                  srai         sp, s7, 21
                  xori         t5, a0, 863
                  beq          a2, t6, 179f
                  srai         zero, a4, 11
                  bgeu         a5, sp, 180f
171:              sltiu        a4, s5, 452
                  andi         s10, zero, -161
                  bgeu         s4, s3, 174f
174:              sltiu        ra, gp, -563
                  bne          a7, a1, 189f
                  and          s1, s4, s2
                  slt          ra, t1, t1
                  sltiu        s8, s0, 1678
179:              and          gp, sp, s4
180:              and          t4, s3, t3
                  bne          s9, ra, 198f
                  bge          t3, t3, 201f
                  nop
                  and          t4, a3, s7
                  srl          a2, gp, a0
                  or           a5, ra, t2
                  bne          a7, s5, 196f
                  ori          zero, zero, 19
189:              xor          s1, t3, s0
                  and          gp, t5, t1
                  srli         s8, s2, 31
                  slli         s0, s4, 18
                  slt          t0, zero, a4
                  andi         a4, a2, 458
                  sltiu        s8, t3, 636
196:              srl          s11, sp, s0
                  sltiu        s0, s8, 78
198:              beq          a7, s0, 199f
199:              beq          a2, t6, 219f
                  xori         a6, s6, 1742
201:              or           a2, t5, a2
                  slti         a1, s3, -1945
                  sub          a5, s2, t5
                  slti         s0, tp, -642
                  bltu         t3, a1, 225f
                  srl          t4, a2, ra
                  addi         s10, s6, 271
                  or           a5, t3, a2
                  sltiu        s0, s11, -1881
                  bltu         s5, t2, 221f
                  slt          s2, a4, s3
                  sra          a7, t6, a1
                  ori          a6, ra, 768
                  addi         t3, t3, 1960
                  sll          s1, t6, s0
                  sub          t6, sp, s9
                  bltu         t3, sp, 220f
                  srli         t5, s8, 8
219:              beq          t4, s3, 235f
220:              sll          s11, t2, t3
221:              or           s1, a5, s8
                  and          a3, gp, a7
                  add          a1, t4, gp
                  sra          s0, a2, gp
225:              and          a4, ra, t1
                  sra          zero, s3, s10
                  bne          a7, s7, 234f
                  bne          s3, s0, 234f
                  sltu         t4, t5, a0
                  and          t6, s7, a3
                  sltiu        s0, s2, -1166
                  srli         a2, s10, 12
                  lui          t4, 966065
234:              sub          tp, s11, gp
235:              sltu         s2, tp, t5
                  xor          a3, s3, s2
                  lui          a0, 664082
                  or           sp, t3, s3
                  xor          s7, a3, zero
                  addi         s0, s9, -869
                  bge          s5, s3, 254f
                  bltu         s6, s11, 258f
                  sub          s1, s3, t3
                  sra          a2, a1, gp
                  ori          s2, t2, -898
                  nop
                  lui          zero, 135611
                  sll          t4, a2, ra
                  srai         a3, a6, 4
                  bne          gp, s9, 255f
                  bge          t2, t2, 268f
                  bne          s10, s3, 266f
                  bgeu         a0, s1, 269f
254:              srli         t1, t0, 1
255:              andi         s4, t4, 1555
                  xor          a7, s3, s7
                  slti         t4, s5, 932
258:              slli         s10, gp, 16
                  xori         a5, t2, -1764
                  sltiu        s11, s8, 362
                  sll          s4, a2, gp
                  sll          a1, s8, a2
                  bne          t3, t0, 269f
                  srl          t3, s9, s7
                  add          a2, s5, s1
266:              blt          t5, a2, 271f
                  srl          gp, s9, s6
268:              bltu         a7, sp, 273f
269:              beq          s4, s2, 282f
                  slli         a0, a4, 1
271:              ori          zero, tp, -1349
                  auipc        tp, 261211
273:              or           s7, a6, a3
                  ori          s7, s9, -1641
                  xor          s0, a2, s1
                  blt          s3, t5, 295f
                  slli         a0, a3, 30
                  sltu         t3, s2, s9
                  and          s1, t5, s2
                  nop
                  sltiu        s7, s7, -939
282:              bgeu         a4, a2, 301f
                  sra          s8, gp, sp
                  lui          t1, 154662
                  slti         s1, t0, -63
                  sltu         s1, tp, s4
                  lui          s10, 155910
                  blt          a6, s0, 299f
                  add          a3, s4, sp
                  or           s4, t0, s9
                  ori          a5, s3, 1084
                  and          s1, s11, t4
                  xori         a7, s10, -380
                  bltu         s9, s8, 301f
295:              beq          a5, a6, 315f
                  sltu         a7, a5, gp
                  xori         s11, t3, 1861
                  bgeu         t6, s0, 315f
299:              sll          gp, s0, s9
                  and          s7, s5, gp
301:              bgeu         t0, zero, 312f
                  beq          gp, s2, 316f
                  sll          a6, t5, a4
                  sltu         t4, t6, s6
                  srl          s0, s3, a1
                  srli         a0, t3, 21
                  srai         s1, a4, 9
                  slli         a4, s3, 28
                  slti         a4, a6, -600
                  beq          s11, t6, 330f
                  blt          t0, a6, 313f
312:              lui          t4, 721353
313:              andi         t0, t4, -962
                  xori         t3, s5, 545
315:              slti         s7, t3, 1362
316:              xori         t0, t2, -1643
                  bltu         s2, gp, 327f
                  bne          s9, s3, 329f
                  bge          t2, a1, 320f
320:              ori          s4, a0, -806
                  bgeu         t6, a6, 335f
                  andi         tp, s6, 322
                  add          a4, t6, t0
                  add          a5, s2, ra
                  xori         tp, t3, 15
                  srai         ra, s11, 1
327:              slti         s11, tp, 1808
                  or           t1, s7, s3
329:              ori          t6, a4, 1195
330:              bne          s3, a2, 331f
331:              or           a2, gp, t5
sub_2_14:         jal          t1, 14f
0:                jal          a5, 7f
1:                jal          t6, 15f
2:                jal          t1, 19f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          ra, 12f
6:                jal          ra, 16f
7:                jal          ra, 11f
8:                jal          t1, 6b
9:                jal          t1, 20f
10:               jal          t1, 8b
11:               jal          ra, 9b
12:               jal          t1, 1b
13:               jal          s2, 2b
14:               jal          t1, 13b
15:               jal          s0, 4b
16:               jal          s10, 18f
17:               jal          sp, 0b
18:               jal          ra, 17b
19:               jal          ra, 3b
20:               slt          s2, s8, s7
                  srl          t4, s8, s8
                  slti         t5, s2, 455
                  add          s7, a0, a6
335:              sltu         t5, s9, s9
                  sub          t1, sp, s2
                  slt          s1, s0, t1
                  slti         s7, s2, 151
                  srai         a1, a3, 2
                  and          s0, a1, a6
                  sltiu        sp, ra, -245
                  bge          s6, s8, 351f
                  bne          t2, a5, 344f
344:              bgeu         s5, s5, 347f
                  bne          t3, t3, 361f
                  sra          ra, sp, s8
347:              andi         a5, s0, 1639
                  bltu         a6, a6, 366f
                  bge          ra, a3, 354f
                  bltu         ra, s11, 367f
351:              srai         a2, t3, 27
                  add          a7, sp, s3
                  and          t2, s9, s7
354:              sltu         a6, s0, sp
                  sltu         s1, a2, t6
                  srl          ra, a3, s2
                  addi         t0, s2, 1671
                  slt          t4, tp, zero
                  nop
                  ori          a1, t3, 891
361:              auipc        a3, 938402
                  bltu         a0, s11, 367f
                  srai         t6, s6, 16
                  lui          a2, 97924
                  ori          s3, tp, 1702
366:              xori         s3, a0, 1106
367:              addi         t1, s5, 1728
                  xori         t3, t1, -1751
                  sll          s1, s8, s1
                  bgeu         a2, s6, 376f
                  bgeu         s4, s11, 374f
                  srl          a6, a3, s9
                  andi         a0, s6, 975
374:              sub          a0, a0, t0
                  srai         s0, t4, 11
376:              sra          t4, tp, s4
                  sll          t5, s3, a5
                  or           s2, t4, s0
                  slli         s3, s1, 27
                  slli         gp, gp, 13
                  sll          s10, a5, s8
                  srli         a5, s5, 2
                  or           a0, a2, s6
                  bltu         a6, t3, 389f
                  auipc        s0, 295264
                  sltiu        s7, s3, -283
                  sltiu        a7, a1, -1671
                  sltiu        t5, a3, 540
389:              slt          s3, s4, t3
                  slli         t1, s9, 14
                  or           s3, t5, s10
                  nop
                  sub          gp, s3, t5
                  sra          t0, a5, t2
                  srli         a2, t1, 3
                  bne          t4, a0, 416f
                  blt          a5, a7, 407f
                  bgeu         s6, sp, 416f
                  blt          s2, a1, 418f
                  add          t2, a6, ra
                  sub          a7, s9, a5
                  bgeu         s8, a4, 413f
                  ori          s11, zero, -753
                  xori         s11, ra, 573
                  nop
                  bltu         s8, t0, 423f
407:              xor          a3, t3, ra
                  andi         t0, s8, 739
                  or           s4, t1, s4
                  or           s8, s10, t3
                  sll          s3, a7, t5
                  beq          t3, s11, 429f
413:              sra          a4, a4, t2
                  or           s4, a1, sp
                  srai         s1, t0, 22
416:              srl          t2, s5, a6
                  bne          s3, t0, 431f
418:              bge          s3, s2, 437f
                  slli         s4, gp, 2
                  andi         s2, s0, 1847
                  srl          zero, t2, a7
                  sll          t5, s4, t6
423:              nop
                  bne          a2, t6, 440f
                  auipc        t2, 568417
                  sll          ra, a2, s8
                  lui          a2, 121320
                  srl          a3, s5, t2
429:              slti         a3, t6, 1101
                  auipc        a2, 60328
431:              ori          s8, t5, 763
                  slli         t4, t0, 9
                  sub          zero, t0, s5
                  sll          t6, t0, t2
                  add          gp, s0, s6
                  xor          ra, a4, zero
437:              addi         a4, s5, 1502
                  auipc        s1, 993805
                  bgeu         s6, a5, 453f
440:              blt          t2, a7, 456f
                  bgeu         t4, s10, 442f
442:              nop
                  srl          s1, t5, t1
                  xor          a3, s6, t2
                  sra          a0, s2, a5
                  sltiu        sp, sp, -1996
                  beq          a5, s5, 458f
                  bgeu         a7, a6, 451f
                  or           s8, tp, s7
                  addi         t3, a1, -1785
451:              ori          a6, t5, -1409
                  sra          gp, s3, t5
453:              beq          t2, s3, 459f
                  sub          a6, s8, a3
                  andi         t4, ra, 965
456:              sltiu        s10, t0, -1078
                  bne          s10, s11, 464f
458:              bgeu         t0, t3, 461f
459:              sltiu        sp, t0, -830
                  add          s8, s11, s1
461:              sra          t3, sp, s3
                  bge          ra, t0, 471f
                  srli         a3, a5, 11
464:              sltu         sp, zero, s0
                  bne          sp, s11, 471f
                  andi         s8, s11, -534
                  add          ra, t5, t4
                  slt          a2, s8, t4
                  beq          sp, t5, 480f
                  bne          t1, s11, 472f
471:              bge          t1, s9, 476f
472:              bge          t2, a2, 477f
                  slli         t3, a5, 28
                  xori         t1, s3, -474
                  srli         a5, a7, 18
476:              bltu         a4, t2, 496f
477:              xori         a6, t0, -1052
                  nop
                  bgeu         a2, sp, 480f
480:              beq          a5, s2, 493f
                  blt          ra, a1, 482f
482:              nop
                  auipc        t4, 284964
                  srai         s3, t4, 0
                  nop
                  sub          t4, s3, s6
                  andi         a3, t3, -1481
                  beq          t2, s11, 493f
                  slti         a3, s8, 2023
                  srli         a3, s6, 8
                  xor          t0, s1, t3
                  auipc        s8, 666282
493:              srl          ra, sp, a5
                  srli         zero, s8, 12
                  and          a5, ra, s11
496:              bltu         s6, a1, 513f
                  xori         a2, a5, 1346
                  srl          zero, s10, s1
                  srli         gp, s7, 24
                  slli         a6, sp, 16
                  bne          s9, a7, 520f
                  bltu         s1, s8, 515f
                  blt          gp, ra, 522f
                  slt          t1, a4, s5
                  ori          t2, t6, -1680
                  slti         a3, s3, -2011
                  beq          s1, s3, 523f
                  slli         a5, tp, 30
                  add          s10, a2, s9
                  slt          t0, s4, a0
                  or           s10, a7, s10
                  bge          t0, s7, 523f
513:              beq          s10, t0, 527f
                  blt          a7, a0, 531f
515:              sra          s8, zero, s3
                  sltu         tp, ra, s6
                  and          s4, t2, gp
                  ori          t3, a7, 1902
                  and          gp, a5, s5
520:              addi         gp, s2, -1985
                  auipc        t0, 276452
522:              slt          ra, a5, s7
523:              bge          s1, zero, 529f
                  sltiu        s4, a6, 1545
                  sltu         a7, a0, s6
                  sra          s8, t5, a1
527:              sltu         s10, a2, a6
                  nop
529:              sltiu        a0, a1, -1891
                  bgeu         a1, s3, 531f
531:              bltu         s9, ra, 534f
                  sra          a0, t4, t6
                  bne          a4, a7, 540f
534:              andi         t2, s0, 1904
                  xor          a7, a0, zero
                  bge          s11, t4, 541f
                  sltu         tp, t6, a0
                  auipc        s4, 659644
                  addi         a4, sp, -425
540:              sll          s7, zero, t2
541:              srai         t3, s0, 7
                  sll          a6, s1, t3
                  srli         s4, t4, 25
                  or           t6, s3, t2
                  slli         s11, zero, 1
                  blt          t2, gp, 556f
                  srl          s1, zero, t2
                  nop
                  bltu         s4, s1, 552f
                  sltu         s8, s2, s5
                  sltiu        a6, t6, 130
552:              andi         s10, a7, -568
                  or           sp, s10, t3
                  srl          s1, a5, s4
                  beq          t0, tp, 571f
556:              lui          sp, 1018797
                  srai         a2, s6, 25
                  xori         s1, a0, 1095
                  blt          t5, s9, 561f
                  bltu         s1, tp, 561f
561:              auipc        t5, 717518
                  srli         a4, s10, 9
                  slt          a6, s1, s3
                  bltu         t0, s5, 569f
                  bge          t5, a4, 574f
                  add          gp, tp, a6
                  auipc        t5, 141355
                  addi         a6, s5, 1854
569:              slli         tp, a5, 1
                  xori         a6, s1, 438
571:              sll          s2, a1, t5
                  srli         a7, a4, 31
                  slli         a7, a3, 18
574:              blt          s2, t5, 585f
                  blt          s9, t2, 580f
                  bne          s9, t6, 577f
577:              srai         a7, t5, 30
                  addi         t0, a2, 1463
                  and          t0, t4, t1
580:              slti         s10, t2, 1301
                  blt          a1, t4, 586f
                  nop
                  sltu         a3, s2, t6
                  sll          a4, t0, t5
585:              lui          s2, 501418
586:              xori         zero, sp, -996
                  bgeu         s2, a2, 607f
                  auipc        s7, 546974
                  sltu         gp, sp, s1
                  ori          s0, sp, 1080
                  nop
                  add          t6, a2, a6
                  or           a3, a3, a6
                  sra          t0, s8, s6
                  add          t4, tp, t0
                  srli         gp, t6, 3
                  and          zero, s10, t4
                  bgeu         s11, s6, 609f
                  sll          gp, t4, s7
                  and          s2, s1, a7
                  bgeu         s3, tp, 615f
                  sra          s0, tp, t6
                  bgeu         t6, ra, 621f
                  or           t1, s8, s11
                  sub          s4, a4, zero
                  sub          ra, sp, t4
607:              bge          a6, s3, 613f
                  xori         sp, tp, -730
609:              srai         a2, s0, 5
                  sub          ra, zero, t1
                  nop
                  sll          s0, s1, a1
613:              bge          s0, s4, 633f
                  andi         t0, gp, -856
615:              blt          a2, t6, 620f
                  auipc        s1, 686244
                  slt          s2, t2, s4
                  srai         s11, s7, 2
                  nop
620:              and          a2, a7, t4
621:              srl          t4, s6, s9
                  slli         s2, t6, 1
                  srl          a3, s11, s1
                  addi         s4, t1, -1997
                  sltiu        a2, a1, 986
                  bltu         s3, a5, 627f
627:              srl          s0, a7, s2
                  sll          sp, s4, a1
                  bge          t4, t3, 635f
                  srli         zero, a2, 2
                  add          tp, s11, zero
                  addi         s0, a6, -883
633:              sra          a3, a4, s6
                  slt          a6, tp, s0
635:              blt          tp, sp, 638f
                  bltu         s11, gp, 646f
                  auipc        gp, 203891
638:              sltu         t4, a5, ra
                  bne          s6, s2, 640f
640:              bgeu         zero, s3, 654f
                  add          zero, a3, t5
                  slli         a1, t4, 8
                  srai         a1, a3, 13
                  bltu         a0, t4, 660f
                  ori          zero, t6, -942
646:              nop
                  bgeu         zero, s1, 666f
                  beq          s9, t3, 666f
                  auipc        s2, 217715
                  slt          s4, t4, tp
                  ori          a1, tp, -1598
                  ori          a0, tp, 1339
                  and          a0, gp, t6
654:              sll          t6, s3, zero
                  bltu         s1, a6, 666f
                  xor          s4, s9, ra
                  and          s11, a6, a2
                  sltiu        a1, a5, -1501
                  bltu         gp, a5, 666f
660:              beq          s11, a0, 677f
                  and          s0, s10, a2
                  bltu         a6, s5, 675f
                  ori          s3, a3, 207
                  bne          t0, s8, 678f
                  bltu         zero, a7, 671f
666:              sub          a6, s4, s6
                  ori          a6, a5, -1319
                  slti         sp, s4, -1555
                  blt          s9, t0, 674f
                  slli         sp, a4, 19
671:              bge          s7, s3, 682f
                  beq          s10, gp, 674f
                  sub          a0, t3, s9
674:              bge          t1, s7, 677f
675:              slt          t6, s9, s6
                  bgeu         s5, a4, 695f
677:              slt          t3, s6, a6
678:              nop
                  sll          s2, t0, a0
                  beq          s8, a1, 700f
                  bne          s0, a4, 690f
682:              ori          s11, s9, -1094
                  nop
                  bltu         s4, s1, 701f
                  xor          s3, s1, t2
                  slt          ra, a2, tp
                  or           t3, t1, t0
                  slli         a7, s9, 23
                  sltiu        a5, ra, -1056
690:              bge          a1, a3, 695f
                  andi         s2, sp, 1028
                  srli         s3, t0, 25
                  sll          s10, s4, ra
                  srli         a5, t3, 4
695:              xori         a7, sp, 1632
                  bgeu         a7, a1, 716f
                  bgeu         s3, a2, 713f
                  bne          t3, zero, 699f
699:              beq          s8, tp, 704f
700:              sra          t6, s5, a7
701:              bgeu         a2, s8, 712f
                  bgeu         s6, t4, 721f
                  sra          a6, s1, t3
704:              bltu         s8, a7, 723f
                  slli         t1, a7, 5
                  or           t2, s9, a1
                  blt          s9, sp, 725f
                  add          ra, zero, a6
                  bne          s5, t2, 710f
710:              sra          s11, a2, a6
                  addi         zero, t0, 461
712:              bge          s2, a3, 718f
713:              sll          a5, a0, t3
                  blt          a6, zero, 727f
                  srl          t1, ra, a2
716:              blt          s5, zero, 733f
                  xor          a6, a7, s5
718:              bgeu         s0, sp, 727f
                  blt          a5, ra, 724f
                  sltu         s7, t4, a7
721:              blt          a6, a1, 724f
                  ori          s1, t6, -1714
723:              sll          s10, s5, a4
724:              srl          s11, a2, a0
725:              sra          s8, a0, a2
                  slt          a7, s7, s0
727:              sra          a6, a2, tp
                  bne          t1, a6, 744f
                  slti         t1, a4, 1389
                  bge          s6, a2, 732f
                  sltu         a5, a3, s4
732:              sra          tp, a7, s5
733:              slli         a0, s6, 5
                  sra          a4, s10, s3
                  bne          s0, ra, 740f
                  bne          t3, a7, 750f
                  bgeu         s6, a2, 748f
                  bltu         a7, a1, 749f
                  slli         s2, t5, 9
740:              xor          t2, t5, s4
                  or           a0, s10, t4
                  addi         a1, a0, -887
                  blt          a4, s11, 753f
744:              srl          s11, t4, a1
                  lui          s10, 972139
                  ori          s1, t4, -1534
                  add          a4, t3, tp
748:              bne          zero, s7, 759f
749:              srli         s8, t5, 31
750:              srli         gp, s9, 17
                  andi         zero, gp, 1282
                  xori         ra, s2, 1146
753:              add          s7, t4, a4
                  addi         a4, zero, 214
                  slt          ra, s3, t0
                  bgeu         sp, t6, 757f
757:              slti         ra, t2, -588
                  sub          t5, gp, s9
759:              addi         t6, s11, 1731
                  bgeu         s11, a1, 780f
                  bne          s8, ra, 781f
                  blt          t4, a6, 767f
                  sltiu        s11, s4, -1658
                  xori         gp, s2, -1661
                  bgeu         a4, t3, 771f
                  sub          t6, s3, t1
767:              slti         s8, s2, -1778
                  add          s10, s11, a1
                  addi         s8, tp, -923
                  srai         a1, t1, 6
771:              xor          a0, t2, s4
                  sra          t4, t0, t6
                  bge          s0, s4, 780f
                  and          t1, s2, s7
                  bgeu         t6, t6, 791f
                  srl          s8, a0, ra
                  and          a7, t5, tp
                  lui          a6, 201646
                  sra          s0, s6, s5
780:              slti         s8, t5, 1231
781:              slli         s3, t3, 6
                  sub          zero, s4, s1
                  bne          a4, s3, 800f
                  slti         sp, tp, 1634
                  xori         t0, a5, 1513
                  sra          s7, a5, a5
                  sll          a2, a3, sp
                  bge          s9, s7, 789f
789:              bltu         t0, t6, 792f
                  slti         s8, gp, -500
791:              auipc        a3, 951613
792:              bne          a2, a7, 797f
                  slti         t4, a1, 1069
                  srl          t2, a1, s6
                  xori         a0, a5, 7
                  and          sp, s8, s6
797:              srli         a5, s6, 31
                  srli         a2, sp, 23
                  xori         s4, tp, -1568
800:              slli         s2, tp, 8
                  slti         t1, a4, 1846
                  srl          zero, s6, s11
                  sub          s3, s9, s5
                  slti         t1, s0, -1286
                  sra          t1, t6, ra
                  sub          s11, a3, sp
                  sltu         gp, t5, s7
                  and          t2, tp, s4
                  xor          t3, s11, a4
                  blt          s7, a0, 824f
                  blt          a0, a5, 817f
                  sra          t4, zero, s4
                  auipc        a7, 69684
                  xor          t6, s8, t4
                  xor          a1, s10, t5
                  slti         a3, a5, -1325
817:              sra          a4, a7, zero
                  auipc        s1, 923413
                  lui          s7, 862143
                  slti         a0, a7, -588
                  or           t2, s6, tp
                  andi         a5, t2, -1897
                  sltu         a3, t1, s0
824:              addi         zero, t3, 828
                  nop
                  sll          a0, zero, t1
                  nop
                  sll          a0, a1, t1
                  sltu         t2, t5, a1
                  slti         s4, t4, 1198
                  blt          s5, t4, 842f
                  srl          t2, a3, s3
                  sltu         t4, s9, a1
                  auipc        t6, 677976
                  auipc        s11, 448809
                  slt          t5, a3, a0
                  sub          gp, s5, gp
                  beq          a6, a2, 855f
                  blt          a5, s6, 842f
                  bne          sp, s11, 853f
                  slti         t2, s1, -1447
842:              srli         s2, a5, 8
                  nop
                  bltu         t6, s3, 845f
845:              srai         s3, t0, 21
                  sltiu        s4, s11, 316
                  bge          s2, s2, 852f
                  auipc        t3, 880908
                  auipc        s3, 837764
                  xor          ra, a2, a7
                  sltu         sp, s3, a2
852:              slti         a3, zero, 381
853:              xori         t2, a0, 1784
                  nop
855:              bne          s4, ra, 875f
                  xori         s1, t4, 1561
                  slti         ra, a0, -1314
                  srai         t4, s1, 8
                  slti         s4, s10, -984
                  auipc        ra, 721677
                  auipc        a5, 350651
                  srai         s10, gp, 12
                  or           s8, a6, sp
                  and          s8, gp, a5
                  srai         s0, a4, 10
                  sub          s7, a4, t1
                  ori          s10, s11, -1352
                  bltu         t4, tp, 871f
                  srai         s4, a7, 20
                  bltu         a4, ra, 880f
871:              addi         s0, s9, 567
                  addi         a5, gp, -1982
                  bge          gp, s9, 892f
                  nop
875:              addi         s11, a1, 590
                  lui          t2, 913822
                  bge          t0, s4, 884f
                  sltiu        gp, zero, 886
                  nop
880:              xori         a5, s2, -172
                  sub          zero, s6, a7
                  sub          t5, s9, s7
                  bge          s7, a6, 899f
884:              xor          s11, t1, a0
                  nop
                  slti         s10, t3, 1326
                  nop
                  and          s11, t6, sp
                  lui          t0, 326892
                  bge          s11, s4, 891f
891:              blt          s8, a3, 893f
892:              srli         s7, a5, 8
893:              srli         a4, s8, 29
                  ori          a2, s9, 918
                  bge          t4, s6, 911f
                  sltu         tp, s11, gp
                  srli         s0, a6, 28
                  nop
899:              bltu         zero, s11, 908f
                  xori         t1, s10, 689
                  bgeu         t2, a7, 915f
                  xor          a1, gp, s7
                  bge          a4, a0, 921f
                  bltu         s0, s5, 918f
                  slti         a7, s4, 1277
                  xori         a2, zero, 949
                  sll          t5, s7, s1
908:              lui          s0, 380549
                  auipc        s3, 446445
                  srl          a0, t5, ra
911:              beq          s2, s11, 930f
                  blt          a5, t1, 917f
                  bltu         a6, a5, 924f
                  ori          s4, a7, -1427
915:              sltu         a2, a5, s6
                  or           s10, t5, s10
917:              slt          s1, a0, a0
918:              slt          a2, a7, t5
                  and          a7, s10, a1
                  andi         zero, s11, 50
921:              add          zero, s7, t6
                  xor          t2, gp, a6
                  beq          tp, a7, 929f
924:              auipc        sp, 821607
                  auipc        s10, 221156
                  and          t2, s5, sp
                  sltu         s7, s10, s11
                  xor          a6, a5, a6
929:              slli         s1, t6, 30
930:              lui          t0, 808528
                  srai         a2, s8, 25
                  addi         s3, s9, -540
                  sra          s1, t0, t1
                  nop
                  and          s8, s0, s7
                  slti         t6, s5, -1288
                  auipc        t6, 806135
                  add          t4, s11, s11
                  bltu         tp, s1, 940f
940:              lui          t0, 254164
                  bgeu         a6, s0, 958f
                  bne          t2, s4, 962f
                  slli         s4, a7, 11
                  srai         s1, s9, 6
                  addi         a3, a3, 1859
                  slt          a5, a0, s11
                  slt          t6, a4, a0
                  bne          gp, a7, 959f
                  nop
                  lui          a6, 514515
                  auipc        a3, 15236
                  bge          s3, a7, 957f
                  or           s3, s1, zero
                  slli         sp, ra, 3
                  bne          t3, s11, 960f
                  add          s2, t5, t2
957:              sub          s8, a5, s1
958:              auipc        t4, 87995
959:              srai         s3, a4, 25
960:              slti         a2, t0, 464
                  srl          s7, s1, s10
962:              bltu         t5, s0, 982f
                  and          a4, s6, ra
                  andi         sp, a5, 1007
                  nop
                  and          t1, s0, s4
                  sub          t1, s4, s11
                  slt          s7, t4, t4
                  bgeu         a1, tp, 986f
                  and          s10, a3, a5
                  sltiu        t2, a2, 1790
                  nop
                  sltu         a3, s11, s1
                  beq          s1, t2, 987f
                  lui          a4, 736869
                  sll          a5, a2, s11
                  bne          ra, s3, 991f
                  add          a4, tp, a3
                  xor          a1, s5, a6
                  srli         a2, s1, 22
                  sltu         a0, s1, sp
982:              slli         a1, t4, 2
                  add          a5, a4, s3
                  sll          a5, a0, a2
                  srl          t0, s5, gp
986:              slt          s7, tp, s5
987:              slti         s4, a3, 711
                  srli         t2, t4, 20
                  slti         ra, a6, -1373
                  sltiu        s2, a6, 1184
991:              beq          ra, s9, 1002f
                  sltiu        a1, t3, -1080
                  sra          s8, zero, s8
                  andi         s8, s3, -229
                  or           sp, zero, t3
                  xor          a5, t5, tp
                  srli         zero, a1, 30
                  slti         t4, s8, -1141
                  blt          gp, s3, 1011f
                  slt          a3, s7, s3
                  sll          ra, t2, a0
1002:             add          s0, ra, s2
                  slti         t5, s11, 610
                  beq          s9, s11, 1006f
                  bgeu         a3, s1, 1011f
1006:             add          a7, gp, s7
                  slti         t3, s7, -792
                  slt          a2, t4, a2
                  auipc        t2, 820288
                  slli         t4, s11, 31
1011:             andi         gp, s4, 821
                  lw           t1, 4(s5)
                  srli         s8, s0, 20
                  slt          zero, t1, s6
                  addi         s5, s5, 40
                  and          a2, a4, s4
                  sra          t0, gp, a1
                  nop
                  sub          t5, t1, a2
                  sltiu        a4, a4, 1165
1418:             addi x30, x6, 1
1418:             jalr x30, x30, 0
sub_4:            xori         s8, s1, -1403
                  addi         s5, s5, -36
                  sltiu        tp, a3, -1305
                  sw           t1, 4(s5)
                  auipc        zero, 406911
                  andi         a5, s5, 1766
                  xor          a7, s11, s6
sub_4_2:          jal          t1, 9f
0:                jal          ra, 2f
1:                jal          t1, 12f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          ra, 3b
5:                jal          t1, 10f
6:                jal          sp, 14f
7:                jal          t3, 0b
8:                jal          t1, 5b
9:                jal          t1, 11f
10:               jal          ra, 13f
11:               jal          s10, 1b
12:               jal          t1, 8b
13:               jal          ra, 4b
14:               andi         a0, a1, -1454
sub_4_1:          jal          t1, 8f
0:                jal          ra, 12f
1:                jal          s11, 3f
2:                jal          s7, 6f
3:                jal          t1, 11f
4:                jal          ra, 9f
5:                jal          ra, 10f
6:                jal          gp, 4b
7:                jal          ra, 0b
8:                jal          t1, 2b
9:                jal          s7, 1b
10:               jal          gp, 7b
11:               jal          a0, 5b
12:               nop
sub_4_4:          jal          t1, 21f
0:                jal          ra, 20f
1:                jal          ra, 23f
2:                jal          ra, 26f
3:                jal          ra, 4f
4:                jal          tp, 13f
5:                jal          gp, 18f
6:                jal          sp, 25f
7:                jal          ra, 17f
8:                jal          t0, 27f
9:                jal          t1, 12f
10:               jal          gp, 3b
11:               jal          ra, 9b
12:               jal          ra, 7b
13:               jal          ra, 1b
14:               jal          ra, 15f
15:               jal          a4, 19f
16:               jal          s0, 11b
17:               jal          ra, 10b
18:               jal          t5, 14b
19:               jal          sp, 16b
20:               jal          ra, 2b
21:               jal          t2, 22f
22:               jal          ra, 0b
23:               jal          ra, 24f
24:               jal          t1, 8b
25:               jal          ra, 5b
26:               jal          t0, 6b
27:               jal          t0, 28f
28:               srl          sp, a4, t1
sub_4_5:          jal          t1, 1f
0:                jal          ra, 15f
1:                jal          ra, 5f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          t1, 11f
5:                jal          t1, 14f
6:                jal          t1, 7f
7:                jal          ra, 10f
8:                jal          ra, 12f
9:                jal          t1, 4b
10:               jal          a1, 9b
11:               jal          t2, 2b
12:               jal          ra, 13f
13:               jal          a0, 0b
14:               jal          t1, 3b
15:               add          a4, s11, t1
sub_4_6:          jal          t1, 4f
0:                jal          t1, 3f
1:                jal          tp, 2f
2:                jal          t1, 11f
3:                jal          t4, 10f
4:                jal          tp, 9f
5:                jal          s11, 14f
6:                jal          s1, 1b
7:                jal          s3, 12f
8:                jal          a3, 0b
9:                jal          a1, 16f
10:               jal          ra, 17f
11:               jal          ra, 15f
12:               jal          tp, 13f
13:               jal          t1, 6b
14:               jal          ra, 7b
15:               jal          t1, 8b
16:               jal          ra, 5b
17:               xori         s7, t5, -349
sub_4_0:          jal          t1, 8f
0:                jal          t1, 5f
1:                jal          a6, 22f
2:                jal          ra, 18f
3:                jal          tp, 14f
4:                jal          a0, 20f
5:                jal          s3, 12f
6:                jal          ra, 7f
7:                jal          ra, 1b
8:                jal          ra, 24f
9:                jal          ra, 3b
10:               jal          ra, 6b
11:               jal          t6, 4b
12:               jal          ra, 25f
13:               jal          gp, 2b
14:               jal          t1, 17f
15:               jal          ra, 0b
16:               jal          ra, 23f
17:               jal          t1, 19f
18:               jal          t1, 10b
19:               jal          gp, 15b
20:               jal          ra, 9b
21:               jal          sp, 16b
22:               jal          ra, 21b
23:               jal          ra, 11b
24:               jal          ra, 13b
25:               addi         t0, sp, -497
                  beq          t4, zero, 7f
                  lui          s8, 311304
                  xor          t5, gp, a7
                  nop
                  sll          a6, a3, a0
                  or           t0, ra, t3
                  sub          s3, t1, s7
7:                sll          t4, t0, zero
                  nop
                  sltiu        s11, t0, -1251
                  xor          zero, t4, s10
                  nop
                  bgeu         s5, s2, 28f
                  slli         s4, s10, 18
                  or           a3, t6, s2
                  blt          t6, t4, 25f
                  lui          a7, 994821
                  sra          ra, s6, t1
                  andi         t3, s4, 292
                  slt          t1, t4, a1
                  bgeu         s4, s1, 24f
                  sub          a2, s8, a4
                  bgeu         s1, a6, 34f
                  addi         a3, s10, 734
24:               srl          t4, a1, a5
25:               srl          a1, s2, t1
                  srl          a7, s8, s6
                  nop
28:               lui          s1, 1005292
                  srai         s11, s8, 27
                  srl          a4, s0, s9
                  and          gp, a7, gp
                  sub          s11, a7, s7
                  beq          a7, a5, 46f
34:               xor          a2, a7, a4
                  sra          t6, a0, a0
                  blt          s8, t4, 49f
                  bge          t2, ra, 55f
                  bgeu         a3, s4, 57f
                  slli         a5, s8, 28
                  sub          t3, a6, s3
                  nop
                  bge          gp, t6, 60f
                  bgeu         s11, s7, 59f
                  bgeu         s6, a0, 47f
                  sub          a2, a4, ra
46:               slti         a0, a2, 161
47:               sltiu        t2, sp, 1140
                  beq          tp, t4, 67f
49:               add          a1, gp, a3
                  ori          t4, a0, -1949
                  andi         t5, s11, -207
                  sltiu        a1, a3, 120
                  bne          s11, s10, 72f
                  slli         a5, tp, 6
55:               andi         a7, s7, -1836
                  bne          s7, a3, 72f
57:               or           t0, s9, t1
                  ori          gp, s3, -74
59:               lui          gp, 449494
60:               bne          a0, ra, 63f
                  lui          s10, 711291
                  add          a6, zero, t6
63:               slti         t2, s2, -1471
                  slt          s8, t6, t2
                  srli         s8, gp, 23
                  xori         s4, s1, 1176
67:               bne          t1, t6, 75f
                  bge          s7, s2, 75f
                  srl          a5, a2, s1
                  ori          s8, a1, 1548
                  sltiu        zero, s6, -927
72:               slti         tp, a6, -1458
                  xor          t1, a4, s7
                  srai         ra, t5, 8
75:               blt          t1, t3, 92f
                  lui          a4, 846946
                  blt          s7, s10, 81f
                  and          s0, ra, s8
                  sll          t3, a5, t1
                  and          t0, gp, s3
81:               sll          t3, s2, t3
                  blt          s7, a1, 84f
                  srli         a2, t1, 20
84:               beq          t3, s9, 87f
                  slti         a1, t2, -1259
                  blt          zero, ra, 103f
87:               and          a7, s5, s0
                  xor          s4, s9, t3
                  slti         t0, t3, -503
                  slti         t5, ra, -170
                  auipc        t3, 147799
92:               addi         a4, a0, -528
                  srli         s11, t1, 28
                  sltiu        gp, t5, 1011
                  slti         t0, s8, -124
                  xor          t0, a3, a1
                  add          s10, s0, a0
                  lui          t6, 119640
                  xor          s10, s11, a3
                  srli         t0, a0, 24
                  srli         s8, a2, 1
                  blt          t5, t1, 104f
103:              srl          s10, gp, t0
104:              andi         a6, ra, -180
                  bne          a2, s6, 107f
                  bltu         s7, s9, 112f
107:              bltu         s7, sp, 109f
                  srli         s3, a6, 22
109:              bge          sp, s7, 114f
                  and          a3, t3, s4
                  sub          gp, s11, s5
112:              srl          s0, t4, a4
                  or           s7, s7, a6
114:              slt          s8, a2, a0
                  blt          s7, t4, 130f
                  sra          zero, s2, s2
                  andi         s10, s3, -972
                  xori         a3, tp, -171
                  beq          a1, a1, 136f
                  slli         a4, a1, 20
                  ori          a1, s3, 1084
                  sll          zero, s7, a3
                  xori         t4, s11, -1406
                  nop
                  bge          s2, s1, 144f
                  srl          gp, t2, a1
                  nop
                  beq          a6, a6, 146f
                  sll          s7, t0, s5
130:              nop
                  sltiu        ra, a2, -380
                  xor          a4, s6, gp
                  xor          a4, gp, s3
                  sltu         a3, s7, s3
                  sll          a1, t4, s0
136:              lui          t6, 1002174
                  srli         a2, s1, 13
                  bne          s0, tp, 148f
                  nop
                  bltu         t3, a0, 156f
                  beq          tp, t0, 160f
                  srli         s11, a7, 19
                  andi         s11, s4, 876
144:              xor          sp, ra, tp
                  blt          sp, ra, 147f
146:              bgeu         s10, zero, 165f
147:              sltu         sp, a1, a4
148:              bge          s9, zero, 165f
                  bne          s8, ra, 167f
                  xori         gp, a5, 1385
                  bgeu         s8, s7, 164f
                  sltu         a7, a7, t4
                  beq          a1, t2, 158f
                  sltu         a3, s10, a1
                  beq          gp, s8, 168f
156:              bltu         a2, s8, 159f
                  xori         t6, s9, -718
158:              slt          s1, a7, s0
159:              lui          tp, 329120
160:              and          s10, t1, t1
                  auipc        s4, 672651
                  andi         t4, a4, 1865
                  srl          t5, s3, a5
164:              nop
165:              bge          a3, gp, 172f
                  srai         t1, s5, 18
167:              sll          s8, t3, s2
168:              beq          s4, s2, 176f
                  slt          s2, sp, zero
                  srai         a4, a7, 3
                  xor          zero, gp, ra
172:              srli         t5, a6, 3
                  sra          a6, s2, t6
                  bge          tp, s3, 176f
                  srai         s11, zero, 25
176:              blt          t0, s4, 180f
                  bne          t2, t5, 179f
                  sll          t4, s9, t1
179:              lui          s0, 456934
180:              sub          a5, ra, tp
                  andi         t0, t4, -250
                  sltiu        a1, a4, 1877
                  bltu         a5, s1, 199f
                  bltu         s6, s4, 200f
                  xori         s3, s8, -732
                  srli         a1, ra, 13
                  xor          ra, sp, a1
                  and          t2, a0, s7
                  andi         s3, s7, -1619
                  sltu         t6, s2, s1
                  or           t6, t5, a2
                  blt          s4, s3, 209f
                  or           sp, s7, t6
                  bltu         a6, s0, 206f
                  slli         a1, a4, 8
                  slli         s3, t0, 3
                  blt          s5, a3, 214f
                  srl          tp, t6, a4
199:              blt          ra, t2, 205f
200:              lui          s11, 425987
                  andi         gp, t3, -971
                  slti         s11, t3, -737
                  bgeu         s5, s2, 205f
                  slli         s1, t0, 26
205:              bne          a7, s2, 208f
206:              xor          t3, a6, a3
                  xor          a5, s8, gp
208:              slti         t0, a7, -1989
209:              srai         a0, a0, 15
                  lui          gp, 839842
                  sltu         tp, s9, s8
                  xori         a0, t2, 1629
                  bge          a0, s7, 216f
214:              blt          s1, s5, 229f
                  beq          t4, s9, 222f
216:              andi         s0, zero, 1595
                  andi         gp, s3, -703
                  sltu         a7, a0, tp
                  lui          a1, 37426
                  srl          s0, s11, t1
                  beq          s9, t1, 225f
222:              bne          tp, a2, 241f
                  xori         a6, t2, -1894
                  srli         s11, t3, 27
225:              beq          a2, a6, 241f
                  slt          gp, a0, ra
                  and          s0, sp, a2
                  xor          s7, t1, a5
229:              auipc        a7, 207522
                  slti         t6, s0, -1459
                  ori          s10, s5, -666
                  srl          s11, ra, s11
                  bltu         a1, a5, 251f
                  slli         a4, s8, 29
                  sub          s10, a3, s6
                  srli         s0, a7, 15
                  auipc        a6, 443258
                  or           t6, s4, sp
                  bge          t5, s4, 241f
                  addi         gp, tp, 1161
241:              sltu         s4, t4, gp
                  sll          s3, a3, zero
                  slli         s11, a6, 2
                  bne          a4, gp, 261f
                  slli         a6, sp, 1
                  srli         zero, t4, 31
                  bne          s11, s2, 255f
                  bne          s9, t0, 252f
                  add          t4, zero, t2
                  andi         s3, a6, -1857
251:              bge          tp, s1, 264f
252:              bgeu         a5, s9, 264f
                  srli         t4, gp, 31
                  beq          s4, a3, 257f
255:              addi         t3, s0, 471
                  beq          gp, a1, 269f
257:              auipc        ra, 878934
                  bne          t5, ra, 276f
                  bgeu         a2, s0, 261f
                  sltiu        t6, s10, 1085
261:              srli         t0, s0, 18
                  slt          s11, sp, tp
                  auipc        a7, 532808
264:              lui          s11, 425274
                  nop
                  sltu         a6, s1, s0
                  andi         tp, a7, -1498
                  slli         t3, a5, 22
269:              ori          a1, a5, -1361
                  and          a1, s3, a2
                  add          t5, s0, tp
                  bltu         t6, t5, 291f
                  slt          s1, a4, t3
                  slt          a1, gp, a0
                  slli         ra, a0, 5
276:              ori          s3, s2, 1412
                  bne          zero, s7, 294f
                  add          s11, a5, s1
                  nop
                  or           t1, t6, ra
                  beq          t2, a2, 300f
                  bge          a2, a0, 284f
                  bltu         a3, a1, 299f
284:              sra          t5, t3, t2
                  ori          a6, a1, -1058
                  bltu         ra, t0, 289f
                  auipc        s4, 1024146
                  lui          a2, 963428
289:              slt          t1, t3, t6
                  beq          t5, t4, 306f
291:              add          t3, s5, a4
                  and          t3, s11, s4
                  xori         t1, a4, -1336
294:              xori         s1, s6, -526
                  sra          t0, s5, s1
                  srli         t1, t4, 27
                  xori         s11, s10, 399
                  ori          a0, t0, 1660
299:              beq          a6, a1, 303f
300:              xori         ra, a5, 1848
                  bltu         sp, sp, 308f
                  sra          ra, t0, s4
303:              sub          t2, t6, s4
                  slt          s8, t1, t2
                  beq          zero, a3, 311f
306:              bge          zero, s4, 323f
                  addi         s8, tp, 557
308:              bgeu         gp, a7, 323f
                  slti         a1, s5, 50
                  bgeu         a1, t2, 315f
311:              bgeu         s11, sp, 321f
                  sra          t2, tp, s10
                  slti         s1, t2, 1371
                  bge          s7, s9, 321f
315:              beq          a4, a5, 317f
                  srai         s11, a2, 31
317:              andi         a2, s1, 661
                  nop
                  bge          s3, s2, 322f
                  srai         tp, s3, 16
321:              ori          a7, s3, 1681
322:              slti         a5, s10, -100
323:              xor          sp, gp, t3
                  xor          a0, s10, a3
                  bltu         s11, s10, 338f
                  lui          s0, 984676
                  sltu         s1, s6, s4
                  auipc        a4, 97289
                  sll          a1, a3, a7
                  auipc        zero, 407970
                  or           a4, t6, s3
                  nop
                  auipc        s2, 944400
                  slt          s4, t0, a3
                  slli         tp, a4, 28
                  srl          s4, zero, s1
                  andi         a7, s2, -854
338:              blt          zero, tp, 353f
                  beq          t5, a1, 358f
                  bge          s9, t0, 344f
                  andi         t3, a4, 1882
                  xori         tp, a1, 591
                  beq          s8, tp, 345f
344:              sub          s10, s8, a6
345:              bge          s4, s9, 362f
                  lui          a2, 74191
                  ori          t1, s1, 1096
                  and          a2, a5, sp
                  srai         a6, ra, 1
                  sra          a4, a4, s6
                  bgeu         s3, s11, 361f
                  sub          gp, s9, t1
353:              and          a2, a2, t4
                  sltiu        a2, s3, -1826
                  ori          s10, a2, 228
                  bltu         a1, s8, 359f
                  beq          s2, s0, 373f
358:              bge          gp, sp, 374f
359:              ori          s10, t2, 250
                  beq          a3, s7, 365f
361:              sll          t2, ra, gp
362:              slt          sp, s4, s10
                  xori         s11, s1, 1174
                  bltu         gp, a6, 368f
365:              sub          a7, s4, a7
                  bgeu         s9, t2, 378f
                  sub          a2, t4, s3
368:              ori          t0, t0, -962
                  slt          a1, t5, s2
                  xor          s7, s11, sp
sub_4_3:          jal          t1, 7f
0:                jal          t1, 20f
1:                jal          ra, 23f
2:                jal          t1, 16f
3:                jal          tp, 6f
4:                jal          t1, 15f
5:                jal          t1, 14f
6:                jal          t1, 24f
7:                jal          ra, 18f
8:                jal          t1, 13f
9:                jal          ra, 11f
10:               jal          ra, 1b
11:               jal          a2, 12f
12:               jal          t4, 3b
13:               jal          t1, 4b
14:               jal          ra, 2b
15:               jal          a1, 21f
16:               jal          ra, 0b
17:               jal          ra, 19f
18:               jal          s10, 8b
19:               jal          ra, 10b
20:               jal          ra, 17b
21:               jal          ra, 5b
22:               jal          ra, 9b
23:               jal          ra, 22b
24:               slli         s8, s0, 26
                  xori         s2, t4, 145
                  slt          s1, s7, s4
373:              slli         a5, t3, 9
374:              sltu         ra, tp, zero
                  ori          s10, gp, -1522
                  bltu         a1, s4, 378f
                  beq          t2, s8, 390f
378:              srl          tp, t4, a5
                  addi         a4, t3, 1208
                  blt          t2, s11, 394f
                  srai         s7, sp, 17
                  sra          s8, s0, s10
                  ori          s8, ra, 1496
                  bne          t1, s3, 387f
                  addi         a4, tp, 946
                  blt          a4, s0, 388f
387:              sll          t3, s4, s11
388:              bltu         t5, s5, 390f
                  addi         a4, a0, -1169
390:              blt          a2, s9, 394f
                  ori          s1, sp, 458
                  and          t3, s0, s7
                  sll          s4, a0, t6
394:              slt          s4, a1, a2
                  and          ra, s6, s6
                  slt          t6, t3, a0
                  srai         a0, s10, 19
                  lw           t1, 4(s5)
                  xori         t5, s2, 659
                  addi         s5, s5, 36
                  sll          gp, ra, a4
                  lui          s0, 336791
                  lui          a7, 748490
                  add          s8, s0, a0
                  slti         t6, s6, 489
562:              addi x12, x6, 0
562:              jalr x12, x12, 0
sub_5:            bgeu         zero, sp, sub_5_stack_p
                  slli         ra, a1, 9
                  xori         sp, sp, -649
sub_5_stack_p:    addi         s5, s5, -56
                  sub          tp, s11, a4
                  sw           t1, 4(s5)
                  add          s11, a2, t3
                  sltu         a3, a6, a1
                  nop
                  and          s11, a6, a5
                  nop
                  or           s3, gp, tp
                  xori         t5, ra, -2030
sub_5_2:          jal          t1, 2f
0:                jal          ra, 8f
1:                jal          ra, 23f
2:                jal          t1, 7f
3:                jal          t1, 17f
4:                jal          ra, 15f
5:                jal          ra, 18f
6:                jal          s8, 11f
7:                jal          ra, 0b
8:                jal          t1, 9f
9:                jal          a1, 4b
10:               jal          ra, 14f
11:               jal          ra, 13f
12:               jal          a7, 20f
13:               jal          ra, 21f
14:               jal          ra, 6b
15:               jal          ra, 19f
16:               jal          t1, 3b
17:               jal          ra, 22f
18:               jal          t1, 10b
19:               jal          t1, 5b
20:               jal          ra, 24f
21:               jal          ra, 1b
22:               jal          t1, 12b
23:               jal          ra, 16b
24:               sltu         s8, t0, s9
sub_5_3:          jal          t1, 20f
0:                jal          ra, 12f
1:                jal          ra, 18f
2:                jal          t1, 0b
3:                jal          ra, 13f
4:                jal          s4, 11f
5:                jal          tp, 16f
6:                jal          t1, 7f
7:                jal          t0, 5b
8:                jal          ra, 21f
9:                jal          s4, 17f
10:               jal          gp, 3b
11:               jal          ra, 8b
12:               jal          s1, 1b
13:               jal          ra, 2b
14:               jal          t1, 22f
15:               jal          s11, 14b
16:               jal          t1, 10b
17:               jal          ra, 19f
18:               jal          s3, 9b
19:               jal          ra, 4b
20:               jal          ra, 6b
21:               jal          ra, 15b
22:               sll          s10, sp, tp
sub_5_0:          jal          t1, 4f
0:                jal          t1, 9f
1:                jal          ra, 7f
2:                jal          t1, 5f
3:                jal          t0, 11f
4:                jal          ra, 3b
5:                jal          t1, 12f
6:                jal          ra, 13f
7:                jal          t0, 10f
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               jal          t6, 1b
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               addi         s10, s6, 1533
sub_5_1:          jal          t1, 2f
0:                jal          ra, 8f
1:                jal          s11, 6f
2:                jal          a2, 1b
3:                jal          t0, 15f
4:                jal          t1, 5f
5:                jal          a2, 14f
6:                jal          ra, 3b
7:                jal          t1, 17f
8:                jal          a0, 7b
9:                jal          a6, 4b
10:               jal          t1, 9b
11:               jal          ra, 12f
12:               jal          ra, 16f
13:               jal          ra, 11b
14:               jal          ra, 13b
15:               jal          s2, 10b
16:               jal          ra, 0b
17:               andi         s10, t3, 475
sub_5_4:          jal          t1, 15f
0:                jal          t1, 1f
1:                jal          ra, 2f
2:                jal          t1, 18f
3:                jal          ra, 17f
4:                jal          ra, 20f
5:                jal          t1, 9f
6:                jal          t1, 0b
7:                jal          ra, 21f
8:                jal          s11, 5b
9:                jal          ra, 4b
10:               jal          t1, 8b
11:               jal          a5, 16f
12:               jal          ra, 19f
13:               jal          ra, 10b
14:               jal          ra, 3b
15:               jal          t1, 11b
16:               jal          ra, 12b
17:               jal          ra, 7b
18:               jal          s7, 14b
19:               jal          ra, 13b
20:               jal          ra, 6b
21:               addi         t3, sp, 1775
                  srli         s0, t5, 7
                  slt          s11, a7, t4
                  slli         s4, a0, 8
                  slli         s1, a7, 22
                  xor          a7, s1, t4
                  bne          s2, a0, 9f
                  lui          ra, 274436
                  sub          a4, s1, a0
                  lui          t4, 614458
9:                bge          t0, s6, 22f
                  blt          a4, t4, 30f
                  srai         sp, a1, 6
                  slti         t1, t1, -1068
                  sltiu        s2, t2, 1393
                  bltu         tp, s5, 23f
                  srli         a5, s0, 28
                  blt          tp, s4, 26f
                  andi         s11, a3, 762
                  addi         a5, t5, -1604
                  bltu         zero, s4, 24f
                  xori         s10, t6, 1247
                  srai         s3, a6, 27
22:               bgeu         s5, s6, 26f
23:               bge          s3, s11, 41f
24:               add          s7, s3, a2
                  srai         s10, a1, 20
26:               xor          s0, s0, s6
                  slt          a7, a7, t0
                  ori          tp, s5, -63
                  sub          s10, s5, ra
30:               srli         gp, t5, 26
                  sltu         t0, t5, s11
                  slli         t6, tp, 21
                  srai         t2, t2, 31
                  bltu         a5, s5, 50f
                  sra          ra, s8, s10
                  and          ra, s2, s0
                  blt          zero, a5, 49f
                  sltiu        s11, ra, 602
                  slli         s7, s6, 3
                  sll          s4, s10, a6
41:               slt          t3, s0, a4
                  sub          t1, s9, s5
                  addi         sp, t1, 501
                  nop
                  add          a1, t4, a1
                  bne          s4, a7, 55f
                  sll          a0, s4, t0
                  ori          s0, t0, 1260
49:               slt          t3, gp, a3
50:               add          tp, s5, s9
                  srai         a2, t3, 5
                  sub          s2, a4, s9
                  srli         gp, s8, 26
                  andi         t2, zero, -1626
55:               srli         s3, ra, 8
                  bge          a0, s2, 70f
                  and          a6, s2, s8
                  slli         a5, sp, 10
                  sltiu        t3, a1, 811
                  xori         t0, a4, -257
                  sub          zero, gp, s2
                  bne          t3, a5, 73f
                  slli         t5, s11, 9
                  bne          t4, zero, 69f
                  bne          a0, s4, 82f
                  sltiu        a2, s6, -1607
                  blt          gp, s9, 81f
                  bltu         s9, t6, 87f
69:               slli         s11, sp, 24
70:               lui          t0, 509021
                  bgeu         ra, a4, 74f
                  sltu         a7, s8, a0
73:               beq          a2, t6, 93f
74:               blt          s0, s4, 78f
                  sra          t1, t1, ra
                  auipc        s4, 708093
                  add          gp, a6, tp
78:               xori         s7, s2, 106
                  xori         a7, a5, -885
                  srai         s1, a0, 7
81:               srli         a4, a4, 1
82:               add          sp, s0, s7
                  nop
                  bgeu         t3, t1, 90f
                  or           gp, s9, a7
                  srli         t5, s0, 1
87:               xori         a3, t1, 1752
                  lui          a7, 605178
                  bgeu         a2, s10, 104f
90:               srai         t1, gp, 26
                  sltiu        t6, a2, 1401
                  and          s7, ra, a4
93:               bne          t1, a0, 107f
                  sltiu        tp, zero, -694
                  addi         sp, t3, 1417
                  andi         tp, t4, -71
                  blt          a3, t5, 117f
                  lui          s3, 181874
                  and          s0, gp, t4
                  sll          s4, s2, t6
                  beq          s7, s9, 103f
                  bltu         zero, a7, 105f
103:              sra          t1, s10, s9
104:              srai         a1, a4, 29
105:              xor          t5, t4, t4
                  bne          s5, s8, 109f
107:              bge          sp, s5, 109f
                  bgeu         s0, s6, 113f
109:              slti         tp, t5, -2040
                  sltiu        s10, s7, -978
                  sltiu        zero, t1, -1386
                  lui          a5, 294413
113:              srai         sp, zero, 26
                  srai         a0, s10, 23
                  sra          s3, s2, a6
                  slli         a1, t5, 21
117:              bltu         s4, s2, 128f
                  bltu         s1, s5, 132f
                  sltu         s3, s1, a2
                  ori          s10, a5, -204
                  nop
                  bne          zero, t1, 126f
                  lui          s2, 396344
                  lui          a2, 183954
                  slti         s3, zero, 142
126:              add          a5, s11, s1
                  slli         a3, a3, 4
128:              slt          t3, s8, s8
                  bne          s3, t0, 135f
                  bltu         s8, s4, 146f
                  sll          a2, t0, s3
132:              blt          a1, s7, 146f
                  slt          s1, s3, s11
                  sltiu        s2, s4, -1839
135:              xori         zero, t3, 804
                  slt          s7, zero, sp
                  xori         sp, s10, 501
                  auipc        t4, 430115
                  add          s4, t1, a5
                  addi         t4, s1, 1780
                  addi         s7, t1, -1354
                  sll          s10, a1, s9
                  sltu         zero, s9, ra
                  xori         a4, ra, -966
                  nop
146:              andi         s1, ra, 122
                  nop
                  lui          sp, 113978
                  blt          gp, s4, 161f
                  srli         t1, s9, 26
                  bge          a3, s5, 153f
                  srl          sp, s7, s9
153:              or           s10, s8, s0
                  srl          s4, a1, s4
                  nop
                  srai         t1, a6, 12
                  beq          a1, s10, 171f
                  bge          t5, s1, 171f
                  srai         sp, s6, 2
                  addi         t5, s10, -24
161:              srli         a5, s9, 12
                  lui          t5, 134957
                  andi         a1, s6, 364
                  addi         s7, tp, -534
                  bne          a6, a2, 183f
                  slt          a4, t1, t5
                  bgeu         s2, sp, 176f
                  xor          t5, t6, tp
                  sltu         t6, t0, s1
                  or           t0, s11, s0
171:              sub          s10, s0, zero
                  add          s7, a0, s3
                  add          s0, s1, a5
                  slli         a2, s5, 6
                  slt          t6, s5, s4
176:              sra          s3, t5, t2
                  sll          s4, s7, t3
                  sra          s3, a3, s4
                  slt          t5, a4, s5
                  xori         t3, a6, -1206
                  bgeu         s2, ra, 184f
                  srai         a1, s8, 24
183:              addi         s1, t6, -876
184:              and          a0, s7, s9
                  slt          s7, s4, t6
                  bge          a5, s1, 189f
                  sltu         a0, a1, a4
                  nop
189:              srl          t6, s7, t0
                  bltu         t0, t2, 209f
                  beq          s8, s5, 211f
                  andi         a2, t5, 329
                  srl          gp, a2, s7
                  srai         s11, tp, 19
                  sltiu        t4, t0, -1107
                  sub          s3, s9, a3
                  sub          a4, s7, gp
                  sll          t1, a1, t1
                  beq          s9, t3, 202f
                  beq          t1, a1, 215f
                  lui          a4, 49458
202:              ori          a5, t1, -740
                  and          s1, a1, s8
                  sltu         a1, gp, t4
                  xor          a0, t6, a5
                  beq          a3, s7, 226f
                  sltu         s2, s1, s8
                  sub          s1, a0, a6
209:              ori          zero, s9, 656
                  beq          a6, a4, 221f
211:              srl          a4, s4, a1
                  bgeu         tp, s6, 222f
                  lui          tp, 561867
                  bgeu         s4, t2, 219f
215:              slli         s11, t1, 22
                  slti         a4, a7, -1392
                  bne          t1, t6, 226f
                  xor          a2, s6, a5
219:              and          a7, s1, s3
                  srai         s7, s3, 7
221:              addi         t3, s9, 1574
222:              bne          zero, t2, 224f
                  addi         zero, t5, -1557
224:              bltu         t0, a6, 241f
                  andi         t5, t3, 441
226:              srli         a5, t4, 7
                  lui          s0, 199953
                  srli         a6, t3, 17
                  nop
                  slt          a1, s7, t3
                  bne          tp, zero, 235f
                  sltu         a3, s5, t2
                  andi         t2, zero, -897
                  srai         a4, s10, 6
235:              lui          s0, 112423
                  sll          s2, a0, s8
                  beq          a1, a6, 241f
                  xor          a6, t5, t3
                  slli         sp, t3, 19
                  slt          zero, s1, a0
241:              srli         t0, t4, 9
                  beq          t0, t5, 253f
                  blt          s1, zero, 248f
                  lui          t5, 272393
                  bltu         t0, s8, 265f
                  sub          zero, t6, gp
                  sra          s4, tp, s1
248:              andi         t5, s0, 1293
                  slli         s1, t2, 9
                  srl          t1, t6, t3
                  lui          s10, 460017
                  xor          a6, s0, s9
253:              bge          a1, t1, 258f
                  auipc        t5, 221462
                  xor          t3, s6, s9
                  addi         t6, a7, -1011
                  andi         s1, a5, -1220
258:              sltu         t6, a1, s11
                  slti         s0, t6, -771
                  srai         a7, a7, 25
                  ori          s7, t0, -1506
                  slli         s11, a5, 25
                  blt          zero, gp, 269f
                  slt          a3, s11, a0
265:              slli         s3, t0, 29
                  auipc        s4, 1038295
                  sltu         t6, s8, t0
                  bltu         a7, t2, 271f
269:              sltiu        t5, a2, -424
                  sltiu        s4, t0, 207
271:              slli         s1, sp, 19
                  slt          zero, a4, s0
                  sll          s7, a5, s1
                  blt          a6, t0, 278f
                  auipc        s0, 95107
                  slti         tp, t0, -1426
                  slt          a3, a6, s8
278:              add          a4, t6, zero
                  nop
                  lw           t1, 4(s5)
                  or           a5, s8, zero
                  addi         t6, t2, -261
                  add          s7, s1, s3
                  srli         s10, s6, 0
                  addi         s5, s5, 56
                  and          t6, a4, a4
408:              addi x20, x6, 1
408:              jalr x20, x20, 0
sub_3:            slti         s2, gp, 909
                  slti         s0, s7, 822
                  addi         s5, s5, -40
                  sw           t1, 4(s5)
                  addi         zero, s5, 1593
                  lui          zero, 649887
                  sub          s4, ra, t2
                  sltu         a4, s7, s5
                  xori         a6, s5, -76
                  sll          t2, t4, ra
sub_3_0:          jal          t1, 18f
0:                jal          a3, 21f
1:                jal          ra, 23f
2:                jal          ra, 6f
3:                jal          ra, 7f
4:                jal          t1, 24f
5:                jal          t1, 19f
6:                jal          t1, 0b
7:                jal          t1, 13f
8:                jal          t1, 14f
9:                jal          a5, 10f
10:               jal          sp, 25f
11:               jal          a7, 15f
12:               jal          t3, 11b
13:               jal          t0, 5b
14:               jal          s10, 2b
15:               jal          ra, 1b
16:               jal          ra, 4b
17:               jal          ra, 12b
18:               jal          ra, 20f
19:               jal          ra, 16b
20:               jal          s0, 8b
21:               jal          ra, 22f
22:               jal          t1, 3b
23:               jal          ra, 9b
24:               jal          t0, 17b
25:               xori         s0, t4, 1631
sub_3_1:          jal          t1, 19f
0:                jal          s4, 23f
1:                jal          t1, 8f
2:                jal          t6, 17f
3:                jal          a7, 7f
4:                jal          s4, 21f
5:                jal          ra, 1b
6:                jal          tp, 14f
7:                jal          t1, 6b
8:                jal          ra, 15f
9:                jal          ra, 20f
10:               jal          ra, 4b
11:               jal          ra, 5b
12:               jal          ra, 9b
13:               jal          t6, 18f
14:               jal          a7, 11b
15:               jal          a4, 0b
16:               jal          sp, 13b
17:               jal          ra, 22f
18:               jal          ra, 2b
19:               jal          t0, 12b
20:               jal          ra, 16b
21:               jal          ra, 3b
22:               jal          s1, 10b
23:               sltiu        a4, t3, -801
sub_3_3:          jal          t1, 0f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          t1, 15f
3:                jal          tp, 18f
4:                jal          ra, 26f
5:                jal          s1, 28f
6:                jal          ra, 19f
7:                jal          t1, 1b
8:                jal          t5, 23f
9:                jal          ra, 22f
10:               jal          t1, 9b
11:               jal          ra, 20f
12:               jal          ra, 24f
13:               jal          ra, 3b
14:               jal          s8, 8b
15:               jal          t1, 7b
16:               jal          ra, 4b
17:               jal          ra, 13b
18:               jal          t1, 12b
19:               jal          t1, 21f
20:               jal          ra, 25f
21:               jal          ra, 2b
22:               jal          ra, 16b
23:               jal          t1, 5b
24:               jal          t1, 27f
25:               jal          ra, 10b
26:               jal          ra, 17b
27:               jal          t1, 14b
28:               addi         a6, a1, -240
sub_3_2:          jal          t1, 14f
0:                jal          t1, 10f
1:                jal          a1, 17f
2:                jal          a6, 1b
3:                jal          ra, 6f
4:                jal          t1, 0b
5:                jal          ra, 2b
6:                jal          ra, 11f
7:                jal          ra, 4b
8:                jal          ra, 13f
9:                jal          t1, 15f
10:               jal          ra, 3b
11:               jal          t1, 18f
12:               jal          ra, 7b
13:               jal          a1, 5b
14:               jal          ra, 8b
15:               jal          t1, 16f
16:               jal          t1, 12b
17:               jal          ra, 9b
18:               slt          a3, a2, s7
                  srl          t4, s3, s3
                  slt          s11, t3, ra
                  or           t3, tp, t5
                  sra          s2, ra, a1
                  andi         t3, s6, -520
                  auipc        s3, 755444
                  srl          t3, a4, t6
                  sll          a0, s0, s8
                  bne          t3, s0, 13f
                  srl          sp, a2, t6
                  slt          a4, a6, a3
                  add          a7, s8, a6
                  blt          zero, t2, 25f
13:               xori         s1, a1, -1157
                  add          tp, s9, t0
                  sltiu        a3, t2, -1030
                  sra          zero, s7, a0
                  slt          a2, a4, s1
                  xor          a0, s7, a2
                  sra          t1, s2, tp
                  nop
                  auipc        ra, 1047377
                  nop
                  sltiu        a5, a3, 1124
                  bge          s0, s2, 43f
25:               srl          a3, s5, s9
                  addi         s10, ra, 1035
                  nop
                  beq          s0, a6, 41f
                  andi         s2, t1, 309
                  slti         s3, a2, -668
                  bge          a0, a2, 40f
                  lui          s0, 957209
                  srl          a0, sp, t2
                  sra          a5, s11, s11
                  bltu         s0, a2, 51f
                  bltu         s9, s0, 54f
                  xori         a1, s10, 1552
                  lui          s7, 14206
                  and          tp, a6, a1
40:               ori          a1, s7, -1857
41:               sub          t1, s7, zero
                  bgeu         zero, a1, 54f
43:               and          t1, s5, a4
                  or           s7, s8, sp
                  bgeu         t4, zero, 46f
46:               srli         s8, sp, 10
                  xor          a2, s7, s7
                  slli         s11, t4, 8
                  beq          a5, t1, 54f
                  sra          s1, t4, t4
51:               bltu         a2, a7, 69f
                  sll          s7, s8, t6
                  bge          s10, a3, 71f
54:               or           a2, s6, a3
                  ori          gp, ra, -773
                  addi         s1, s5, -2040
                  slli         s8, gp, 25
                  xori         s2, sp, -332
                  bltu         s9, a2, 60f
60:               lui          s2, 865382
                  bltu         s4, ra, 78f
                  beq          s11, t0, 79f
                  add          a0, t0, t1
                  auipc        a6, 43808
                  srli         a4, s3, 17
                  srl          a4, a7, a0
                  add          t3, t3, a5
                  srai         s8, s3, 25
69:               beq          s5, a3, 87f
                  sub          a6, t6, t2
71:               slt          a5, s6, s8
                  ori          t4, a7, -1107
                  sra          zero, s5, a1
                  srli         t3, t1, 17
                  srai         t4, a4, 27
                  add          t6, sp, s9
                  ori          sp, a3, 109
78:               andi         a7, t1, -1356
79:               slli         gp, s11, 9
                  srli         a7, s11, 25
                  xor          ra, a2, a2
                  add          ra, ra, t4
                  sra          a1, sp, s4
                  bge          s4, t0, 102f
                  slt          t2, a3, gp
                  bltu         s4, a1, 93f
87:               slt          s1, s0, a6
                  andi         ra, a6, 401
                  ori          t4, s4, -1012
                  sra          s10, t3, t3
                  xori         zero, t6, -1117
                  srli         a0, a7, 2
93:               add          t3, t5, sp
                  sll          a6, s11, s0
                  nop
                  andi         s8, t5, -838
                  slli         a1, gp, 13
                  srli         t0, s5, 2
                  addi         a1, a2, -1072
                  sltiu        a5, s11, 203
                  slt          s3, t5, s10
102:              srai         a0, s8, 1
                  bgeu         zero, t1, 119f
                  bne          a4, t3, 112f
                  slli         s0, s0, 20
                  sub          s3, a1, s8
                  andi         t0, s11, -2038
                  nop
                  xor          tp, s8, s10
                  sra          sp, s2, t4
                  sltiu        s10, t0, 754
112:              andi         tp, s3, 769
                  lui          a0, 834097
                  sltu         s2, a3, s10
                  srl          a1, s10, t3
                  auipc        tp, 53180
                  srai         s4, s8, 9
                  add          a5, s6, s9
119:              bne          s7, a4, 132f
                  auipc        a3, 968479
                  or           tp, s1, s5
                  sub          ra, s9, a1
                  beq          s5, s10, 128f
                  srl          s4, s5, s10
                  bltu         t4, s2, 133f
                  slli         a0, t5, 7
                  add          a5, s6, t3
128:              slli         s7, a0, 12
                  nop
                  beq          t2, s4, 147f
                  xor          tp, s3, t0
132:              add          s0, a3, s4
133:              beq          t2, a5, 142f
                  srl          a0, a7, a7
                  sra          s1, a0, s1
                  nop
                  xor          s1, s1, t4
                  slli         a2, t2, 9
                  add          t3, a7, t0
                  sra          a4, t3, t5
                  sll          tp, s6, s9
142:              sll          s2, gp, s7
                  blt          s10, gp, 147f
                  srl          a5, t1, a4
                  slt          s1, a4, t0
                  add          zero, s4, t5
147:              bgeu         s6, s10, 151f
                  sub          a7, a2, a1
                  add          s10, s0, sp
                  ori          a0, s4, -504
151:              andi         t1, s5, -643
                  srl          s2, a0, s0
                  bne          s11, s10, 173f
                  bgeu         sp, s6, 168f
                  ori          a6, a6, 283
                  sltiu        t5, s0, 1978
                  and          tp, t6, a4
                  or           s0, a7, s1
                  slti         t6, s2, -341
                  bne          s5, s2, 170f
                  srai         gp, s5, 2
                  bge          a5, s3, 178f
                  bge          t1, s8, 171f
                  srli         s7, zero, 11
                  sltiu        t5, a2, -1539
                  slt          t2, s8, t0
                  bltu         s1, a5, 177f
168:              slli         s11, tp, 20
                  sltu         t0, t0, t0
170:              bgeu         s1, t0, 188f
171:              sra          s2, t0, a6
                  addi         s3, s5, 1451
173:              nop
                  and          s0, t1, s5
                  xor          a1, s4, s8
                  bge          a7, t4, 194f
177:              addi         sp, ra, -797
178:              sra          s7, s4, t1
                  sra          a1, s8, t0
                  srli         s0, s3, 13
                  bne          a3, t6, 193f
                  sra          t1, a2, a7
                  slli         t4, s5, 4
                  and          t3, t6, s8
                  sltiu        s7, s10, 1401
                  bge          t4, s2, 200f
                  addi         t0, zero, 984
188:              add          a4, t0, tp
                  nop
                  slti         t0, s1, 1552
                  bne          a4, gp, 200f
                  bgeu         a2, a2, 196f
193:              lui          s11, 75685
194:              slti         a0, t2, 1410
                  sltu         sp, s2, t4
196:              blt          s7, s11, 213f
                  or           s1, a6, t1
                  sll          t4, tp, s3
                  sub          s2, tp, t4
200:              sll          t3, t4, a5
                  slt          s4, s3, a4
                  bgeu         s5, s7, 211f
                  srli         a1, s2, 28
                  bltu         a1, s11, 222f
                  ori          t5, ra, -568
                  bge          ra, a4, 224f
                  bne          sp, a5, 225f
                  and          a1, s0, s9
                  and          sp, a0, zero
                  slt          t4, t6, s6
211:              slt          a5, sp, s11
                  bge          a0, a3, 225f
213:              sltiu        t3, gp, 137
                  slt          a4, s1, s8
                  slti         zero, a1, 1444
                  bge          t5, s8, 225f
                  beq          ra, t1, 222f
                  slt          t0, a3, a2
                  add          s2, a1, t0
                  xori         s10, a1, -1803
                  slti         a0, s1, 990
222:              bge          ra, zero, 223f
223:              sra          t0, t2, s6
224:              addi         ra, a1, -510
225:              ori          s11, s0, -133
                  slti         a4, s0, -1935
                  lw           t1, 4(s5)
                  sltiu        gp, a1, -1245
                  xor          a5, s2, zero
                  sra          s11, s9, s3
                  xor          t3, s8, a3
                  srli         gp, s6, 5
                  sltu         t5, a2, t3
                  slt          s8, sp, t1
                  addi         a7, s7, 1421
                  addi         s5, s5, 40
                  xor          s4, a0, t0
350:              addi x10, x6, 0
350:              jalr x10, x10, 0
sub_1:            addi         zero, s8, -64
                  andi         t4, s8, 1237
                  slli         sp, s7, 30
                  xor          sp, s7, s1
                  add          zero, a0, s0
                  beq          s3, t5, sub_1_stack_p
                  nop
                  xori         s7, a4, 1958
sub_1_stack_p:    addi         s5, s5, -12
                  sra          a1, s0, a1
                  sw           t1, 4(s5)
                  and          a7, s8, a0
sub_1_0:          jal          t1, 1f
0:                jal          a7, 8f
1:                jal          ra, 2f
2:                jal          sp, 5f
3:                jal          tp, 13f
4:                jal          t6, 16f
5:                jal          ra, 12f
6:                jal          t1, 7f
7:                jal          ra, 14f
8:                jal          ra, 3b
9:                jal          ra, 15f
10:               jal          t1, 6b
11:               jal          tp, 10b
12:               jal          ra, 4b
13:               jal          t1, 11b
14:               jal          ra, 17f
15:               jal          ra, 0b
16:               jal          t0, 9b
17:               add          t3, t1, s5
                  srli         ra, s10, 13
                  andi         ra, s2, -404
                  sltiu        s0, tp, 146
                  slti         a7, a5, -1842
                  srli         t1, a4, 4
                  xori         s4, s5, 1488
                  srl          s11, gp, s2
                  ori          a6, a4, 1906
                  xori         t1, s10, -113
                  beq          a1, s11, 18f
                  sub          a4, s0, a6
                  auipc        s1, 918029
                  sub          tp, s6, ra
                  and          a4, s8, s0
                  and          a0, sp, ra
                  lui          t2, 538918
                  bgeu         s1, gp, 22f
                  srl          t3, t5, t4
18:               srl          zero, s3, s0
                  addi         a2, s0, 563
                  sra          a7, a4, a2
                  slti         s2, t4, -1261
22:               and          sp, a2, t6
                  andi         s7, s11, 1094
                  srai         s0, s10, 4
                  andi         s3, ra, 701
                  srli         s11, a2, 24
                  ori          gp, a7, -1127
                  bne          a3, s6, 32f
                  blt          t6, s2, 40f
                  bne          ra, t4, 43f
                  add          zero, a0, t0
32:               andi         a1, s11, 820
                  blt          s7, t3, 38f
                  blt          s8, a4, 44f
                  andi         a2, ra, 1871
                  slt          a3, s11, s1
                  sll          s7, s1, t0
38:               ori          s4, s9, -24
                  addi         a5, t6, 605
40:               sltiu        a5, sp, 1646
                  or           a6, a3, sp
                  bne          t6, a3, 45f
43:               slt          s2, t6, zero
44:               srl          t5, t1, a6
45:               xori         ra, a3, -1255
                  blt          gp, tp, 48f
                  andi         s3, s3, -459
48:               blt          a6, gp, 61f
                  bgeu         s5, a3, 57f
                  sll          gp, t3, a6
                  and          a6, t5, t6
                  srl          sp, s2, ra
                  and          a7, a5, t4
                  sub          a2, ra, gp
                  srl          s7, s0, a3
                  xor          a1, s6, sp
57:               add          a6, a0, a3
                  bge          a1, s7, 71f
                  srai         s4, s7, 24
                  sub          ra, a5, s6
61:               sltu         t4, a7, a6
                  andi         a2, sp, -146
                  bltu         ra, s1, 69f
                  add          t3, a2, s10
                  sltu         t3, a3, a0
                  andi         s7, a2, -851
                  slt          a2, t2, s8
                  sltiu        s2, s5, -1146
69:               nop
                  ori          a6, a2, 814
71:               slt          t0, a6, s9
                  and          a2, tp, a6
                  srli         a4, s6, 15
                  xori         zero, s10, 1312
                  lw           t1, 4(s5)
                  ori          t0, s11, 1825
                  lui          sp, 394266
                  xori         t0, ra, -1176
                  addi         s5, s5, 12
                  slt          s0, s1, s6
112:              addi x3, x6, 1
112:              jalr x3, x3, 0
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x25, x21, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x23, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x23, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x23, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x23, x16, ecall_handler
                  li x16, 0x1
                  beq x23, x16, instr_fault_handler
                  li x16, 0x5
                  beq x23, x16, load_fault_handler
                  li x16, 0x7
                  beq x23, x16, store_fault_handler
                  li x16, 0xc
                  beq x23, x16, pt_fault_handler
                  li x16, 0xd
                  beq x23, x16, pt_fault_handler
                  li x16, 0xf
                  beq x23, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x21, x25, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x25, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x25, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x21, x25, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x21, x25, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x21, x25, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
