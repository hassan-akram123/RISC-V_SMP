.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x9
                  li x1, 0x0
                  li x2, 0xf7682176
                  li x3, 0xb5ac6149
                  li x4, 0x80000000
                  li x6, 0xf8217421
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xb
                  li x10, 0x0
                  li x11, 0xf2a4efbf
                  li x12, 0xf87e5cab
                  li x13, 0x80000000
                  li x14, 0xa
                  li x15, 0x0
                  li x16, 0xf2bb2ff8
                  li x17, 0x6896a256
                  li x18, 0x7cb51e9f
                  li x19, 0xf81b1ad1
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x2
                  li x24, 0x0
                  li x25, 0x7de4d67
                  li x26, 0xfef6bae4
                  li x27, 0xc
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xf5888caa
                  li x31, 0x80000000
                  la x5, user_stack_end
main:             lui          gp, 251243
                  la           a0, sub_1
                  nop
                  slti         t5, a0, -64
                  sra          s4, s7, tp
                  sltu         t5, t6, s5
                  slti         a2, s8, -125
                  slti         s3, s0, 922
                  xor          s4, t1, t2
                  addi         a0, a0, -1019
                  srl          s8, s9, a2
main_j2:          jalr         t1, a0, 1020 #jump main -> sub_1
main_1:           jal          t1, 19f
0:                jal          ra, 27f
1:                jal          s9, 7f
2:                jal          ra, 20f
3:                jal          t1, 26f
4:                jal          ra, 14f
5:                jal          ra, 6f
6:                jal          ra, 23f
7:                jal          ra, 2b
8:                jal          a4, 25f
9:                jal          ra, 15f
10:               jal          t1, 0b
11:               jal          s8, 12f
12:               jal          tp, 3b
13:               jal          a4, 10b
14:               jal          ra, 16f
15:               jal          ra, 13b
16:               jal          s3, 9b
17:               jal          ra, 11b
18:               jal          ra, 17b
19:               jal          ra, 28f
20:               jal          ra, 4b
21:               jal          t1, 8b
22:               jal          ra, 18b
23:               jal          s6, 24f
24:               jal          s3, 22b
25:               jal          gp, 5b
26:               jal          t1, 29f
27:               jal          t6, 21b
28:               jal          ra, 1b
29:               sra          s0, s11, s11
main_0:           jal          t1, 24f
0:                jal          ra, 6f
1:                jal          ra, 10f
2:                jal          a2, 25f
3:                jal          t1, 16f
4:                jal          sp, 27f
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          t1, 8f
8:                jal          t1, 21f
9:                jal          ra, 19f
10:               jal          ra, 15f
11:               jal          ra, 17f
12:               jal          s8, 23f
13:               jal          ra, 5b
14:               jal          ra, 11b
15:               jal          sp, 22f
16:               jal          ra, 1b
17:               jal          t5, 26f
18:               jal          gp, 7b
19:               jal          gp, 29f
20:               jal          s8, 18b
21:               jal          ra, 30f
22:               jal          tp, 2b
23:               jal          ra, 0b
24:               jal          t1, 13b
25:               jal          t1, 14b
26:               jal          ra, 12b
27:               jal          s9, 20b
28:               jal          ra, 3b
29:               jal          ra, 28b
30:               srl          a7, zero, t0
                  slli         ra, a1, 28
                  srl          s5, ra, s8
                  bge          s7, t1, 21f
                  bne          s10, a0, 8f
                  sra          t2, a4, t5
                  sub          s4, s0, s0
                  srai         tp, a4, 25
                  slti         t2, s5, 1718
8:                xor          s1, s2, ra
                  srl          t4, s11, tp
                  srli         s10, sp, 17
                  auipc        t2, 526582
                  lui          sp, 813425
                  bne          s0, s3, 31f
                  srli         s4, t5, 28
                  nop
                  bne          t6, a2, 35f
                  srl          s2, s5, t4
                  add          s2, s10, a5
                  blt          sp, t5, 39f
                  sltiu        a4, t5, 1263
21:               and          s4, sp, s5
                  beq          s4, a5, 42f
                  bgeu         a7, a3, 37f
                  bgeu         a5, t1, 41f
                  bgeu         s11, t3, 37f
                  ori          a2, s11, 449
                  srai         s2, t0, 21
                  bne          t3, a7, 34f
                  lui          s3, 889532
                  ori          t2, t5, 1847
31:               auipc        t2, 656049
                  addi         sp, s6, 1266
                  nop
34:               nop
35:               srli         s8, sp, 2
                  nop
37:               ori          t5, a6, -940
                  or           s10, zero, t1
39:               beq          a4, s3, 47f
                  addi         a7, a7, 152
41:               andi         ra, t0, 698
42:               sra          s5, s7, zero
                  slli         s3, s7, 25
                  nop
                  bge          sp, ra, 53f
                  bne          sp, s3, 51f
47:               ori          s0, a4, -1761
                  auipc        s9, 685947
                  bgeu         t5, tp, 55f
                  slt          zero, a3, s8
51:               bltu         a2, a5, 64f
                  sltiu        t1, sp, 1788
53:               and          s9, a7, zero
                  lui          t5, 858349
55:               auipc        a2, 367816
                  slli         sp, s0, 21
                  bgeu         s2, gp, 59f
                  addi         s6, s3, 660
59:               nop
                  bge          t1, a7, 61f
61:               auipc        t1, 863490
                  sub          a5, t4, gp
                  bne          t5, a0, 71f
64:               beq          s11, s8, 83f
                  srl          a1, a2, t3
                  sll          gp, tp, a0
                  srl          s6, s11, s8
                  bge          t5, s11, 77f
                  lui          sp, 727901
                  blt          s5, s3, 71f
71:               add          sp, s1, s0
                  bne          s10, s5, 73f
73:               sra          s0, s4, s3
                  bne          s8, a3, 92f
                  slt          s0, t4, a6
                  bgeu         sp, t2, 91f
77:               bne          gp, t1, 91f
                  andi         s8, s4, -314
                  sra          a0, s4, t1
                  blt          t3, t1, 83f
                  sll          a2, s4, gp
                  slt          a3, t6, zero
83:               nop
                  sltiu        s11, tp, -1597
                  slli         a4, t6, 1
                  bgeu         gp, s7, 97f
                  srl          a2, a2, ra
                  slti         s11, s6, 2019
                  bne          s9, t4, 109f
                  sra          tp, a7, a0
91:               bne          s6, t6, 105f
92:               sra          s4, t2, s9
                  xori         s8, gp, -1291
                  sltiu        s10, s4, 801
                  xor          t2, s5, ra
                  bne          s10, a1, 112f
97:               ori          t6, a5, 1743
                  sra          s10, gp, t5
                  and          zero, s1, t0
                  sltu         tp, t0, s6
                  srl          s10, t1, s3
                  sltu         s5, tp, sp
                  xor          s5, s1, s2
                  andi         gp, a2, -154
105:              sub          a1, tp, a5
                  blt          ra, t3, 124f
                  beq          s3, t1, 109f
                  sll          s8, s6, t0
109:              bne          a6, a2, 112f
                  bgeu         s11, s10, 126f
                  sra          a3, a3, s5
112:              sub          t1, s5, s10
                  addi         t6, s9, -154
                  sll          t4, s5, a0
                  beq          s2, t1, 121f
                  srli         t6, s9, 5
                  slli         t1, a6, 26
                  la           a5, sub_1
                  and          sp, t0, sp
                  lui          s8, 215978
                  ori          s3, s9, -1553
                  srl          s11, s1, s1
                  addi         a5, a5, -420
                  srai         t6, sp, 2
main_j1:          jalr         t1, a5, 420 #jump main -> sub_1
                  slli         t2, s4, 21
                  xor          s8, t3, s11
                  bge          s10, s7, 132f
                  xori         s2, a1, 701
                  sub          a6, t0, s9
121:              lui          s9, 546519
                  sub          s8, ra, a3
                  ori          s8, a0, -1993
124:              sltiu        s1, tp, 1434
                  xori         sp, sp, 1257
126:              xori         s10, a3, 1955
                  bgeu         s9, t5, 128f
128:              bgeu         a6, t0, 134f
                  add          sp, s6, a2
                  auipc        a3, 159307
                  bne          gp, t2, 136f
132:              bltu         t5, s9, 136f
                  andi         s6, gp, 581
134:              ori          t5, s7, -526
                  lui          s0, 1004719
136:              nop
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         s3, s7, -1809
                  slti         a3, s4, 1046
                  slti         t5, ra, -929
                  addi         t0, t0, -12
                  or           s5, t5, a2
                  sltiu        s5, s8, 2041
                  slti         t6, sp, 760
                  sw           t1, 4(t0)
                  addi         ra, s5, 1260
                  lui          t6, 202647
sub_5_2:          jal          t1, 5f
0:                jal          t1, 18f
1:                jal          t1, 4f
2:                jal          ra, 7f
3:                jal          t1, 6f
4:                jal          ra, 21f
5:                jal          a5, 9f
6:                jal          ra, 11f
7:                jal          t1, 12f
8:                jal          ra, 19f
9:                jal          ra, 16f
10:               jal          t1, 1b
11:               jal          a1, 17f
12:               jal          ra, 13f
13:               jal          ra, 20f
14:               jal          ra, 2b
15:               jal          ra, 0b
16:               jal          t1, 14b
17:               jal          ra, 8b
18:               jal          s6, 3b
19:               jal          t1, 10b
20:               jal          ra, 15b
21:               srl          t4, s0, s2
sub_5_0:          jal          t1, 6f
0:                jal          ra, 24f
1:                jal          t2, 25f
2:                jal          a0, 13f
3:                jal          s5, 2b
4:                jal          t1, 0b
5:                jal          t1, 12f
6:                jal          t1, 3b
7:                jal          t2, 18f
8:                jal          ra, 15f
9:                jal          t1, 11f
10:               jal          ra, 14f
11:               jal          t1, 16f
12:               jal          ra, 20f
13:               jal          ra, 21f
14:               jal          a4, 22f
15:               jal          t4, 5b
16:               jal          ra, 19f
17:               jal          ra, 8b
18:               jal          s4, 26f
19:               jal          ra, 4b
20:               jal          t1, 9b
21:               jal          t1, 17b
22:               jal          tp, 7b
23:               jal          a5, 1b
24:               jal          t1, 23b
25:               jal          ra, 10b
26:               auipc        a3, 270583
sub_5_1:          jal          t1, 4f
0:                jal          ra, 9f
1:                jal          ra, 13f
2:                jal          ra, 12f
3:                jal          ra, 10f
4:                jal          sp, 6f
5:                jal          ra, 0b
6:                jal          ra, 7f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          tp, 1b
12:               jal          ra, 5b
13:               slli         s10, a3, 10
                  auipc        a3, 114515
                  lui          s4, 890152
                  lui          s6, 430
                  nop
                  bge          a5, s9, 17f
                  or           s3, s6, a3
                  beq          s7, t5, 8f
                  ori          zero, s0, 550
8:                xori         t1, t1, 1549
                  xor          t4, a5, s4
                  sub          s8, s2, s5
                  xor          a5, s3, s1
                  add          s8, a6, t3
                  beq          s2, s0, 22f
                  srl          s3, t3, gp
                  or           a5, s4, ra
                  andi         a0, t3, -146
17:               sra          t6, s0, sp
                  slli         a0, t5, 25
                  srai         a1, t2, 14
                  lui          t6, 100626
                  sub          t4, s5, a0
22:               and          s2, tp, t4
                  bge          s7, s2, 28f
                  blt          t0, s3, 31f
                  slli         a1, a6, 31
                  sub          t6, a2, a2
                  sra          a6, s6, t4
28:               or           t5, sp, s4
                  andi         a2, a0, -1998
                  andi         gp, a5, -797
31:               sra          t1, t6, s3
                  slti         s8, tp, 1574
                  srl          a0, a3, s2
                  srli         s10, a6, 23
                  sll          t1, s0, t6
                  sub          a1, s8, sp
                  nop
                  sltiu        a1, ra, -1409
                  addi         s2, t4, -1552
                  slt          a1, s5, ra
                  bgeu         gp, t4, 43f
                  sll          s11, a1, a0
43:               xori         s8, s2, 229
                  auipc        s8, 618609
                  bltu         sp, t3, 58f
                  sub          zero, s6, t4
                  beq          t0, t4, 53f
                  nop
                  sltiu        a6, s9, 320
                  slt          tp, a7, ra
                  or           a0, s4, s11
                  sub          s0, gp, ra
53:               beq          tp, t0, 66f
                  lui          zero, 336895
                  sra          ra, s7, t4
                  srai         sp, t0, 11
                  bge          s8, s10, 75f
58:               ori          sp, s11, -1035
                  andi         sp, s8, 2035
                  sra          t6, sp, s3
                  bltu         s7, a3, 79f
                  srai         s0, a3, 30
                  slti         t1, t5, -1218
                  slt          a5, a5, t0
                  slt          s2, sp, a0
66:               bltu         a6, s6, 68f
                  srai         s8, s0, 25
68:               bgeu         t5, s0, 73f
                  slli         s6, t1, 25
                  beq          s5, t0, 76f
                  xor          a2, s9, s6
                  xor          a7, tp, t4
73:               or           ra, a1, s5
                  sra          s0, t6, a2
75:               srai         zero, s3, 23
76:               slli         t2, a0, 11
                  sltiu        gp, a4, -1021
                  slt          a1, s2, s10
79:               bne          t2, a7, 89f
                  srai         s6, s6, 29
                  lui          s3, 25480
                  srai         s11, sp, 23
                  slli         s6, t6, 9
                  or           a6, s8, t0
                  add          s0, s5, s8
                  slt          zero, s9, tp
                  slti         a6, s4, -2048
                  slli         s1, a6, 23
89:               xor          s2, a0, t1
                  bltu         s10, t4, 92f
                  beq          s6, sp, 94f
92:               sltiu        a1, sp, 1547
                  slt          s0, s1, tp
94:               blt          s7, s1, 99f
                  srai         a7, tp, 7
                  lui          s2, 166550
                  auipc        a6, 570071
                  bne          s10, gp, 101f
99:               beq          a0, t4, 101f
                  xori         ra, s5, -173
101:              ori          a3, s1, 235
                  sltiu        s11, s6, -856
                  ori          s0, a2, 299
                  slli         a4, s5, 15
                  and          s2, s2, s10
                  xor          a0, a1, a1
                  add          a5, gp, t2
                  beq          s2, t0, 128f
                  srl          s6, t5, t5
                  blt          s4, a7, 124f
                  nop
                  andi         t2, a2, -377
                  sltu         a3, t5, a4
                  sub          a7, t1, s2
                  bne          tp, s9, 117f
                  lui          t4, 771923
117:              slti         t5, s9, -75
                  bne          t0, s0, 123f
                  andi         s8, t5, 1694
                  srai         s8, a5, 12
                  ori          t5, s11, 499
                  auipc        s2, 57351
123:              srai         t6, t6, 18
124:              sltu         s4, a3, s5
                  sra          gp, t0, sp
                  and          s2, s10, s10
                  lui          gp, 786937
128:              beq          t1, s6, 138f
                  ori          s4, s9, -1161
                  ori          a0, s10, -238
                  lui          a1, 694830
                  bgeu         gp, t5, 143f
                  sra          sp, t4, s10
                  bgeu         ra, s2, 152f
                  bge          a4, s0, 148f
                  sltiu        a2, a0, 397
                  bge          a2, a1, 143f
138:              bge          t5, s11, 141f
                  xor          a7, t1, a4
                  add          t5, a0, s3
141:              andi         s1, s3, -775
                  srai         tp, s2, 7
143:              ori          a0, t4, -362
                  slti         s8, tp, 840
                  xor          s5, a0, s10
                  or           s10, a4, t1
                  slt          s8, a6, s5
148:              sll          s2, a2, t2
                  or           s11, tp, t3
                  sltu         a5, a2, t0
                  or           a2, zero, s2
152:              andi         sp, zero, -572
                  or           t1, t0, s9
                  andi         a5, s10, -1025
                  srai         ra, t6, 6
                  add          a1, ra, s6
                  srai         a4, s10, 1
                  lui          a6, 516717
                  sra          s0, s2, t1
                  sltiu        s3, s3, -1751
                  addi         a7, s9, -1925
                  lui          a1, 386569
                  sra          t6, t6, s10
                  srl          sp, a1, tp
                  bge          t3, s0, 170f
                  xor          s2, s6, a1
                  slt          a6, a2, ra
                  addi         s3, s7, 1231
                  sltiu        t2, a7, -237
170:              xor          s3, a6, a3
                  sll          s11, a0, gp
                  sltu         s2, a0, s1
                  auipc        t5, 949736
                  and          zero, s7, a6
                  ori          tp, s3, -1751
                  slti         s6, a2, -195
                  or           gp, sp, tp
                  bgeu         s5, s2, 184f
                  ori          s9, a3, -667
                  lui          s4, 869752
                  sub          s8, s2, s5
                  and          a4, s5, a7
                  slli         s2, a6, 17
184:              andi         s1, s4, -1527
                  xori         s4, a0, -1036
                  xori         a5, s3, 859
                  sltiu        t5, a4, -306
                  nop
                  lw           t1, 4(t0)
                  nop
                  srli         s11, t1, 29
                  addi         t0, t0, 12
                  or           t5, s5, s10
                  srl          sp, t0, a2
271:              addi x16, x6, 0
271:              jalr x16, x16, 0
sub_4:            sra          s9, s7, gp
                  sll          s10, s7, s8
                  auipc        a1, 1031207
                  addi         t0, t0, -28
                  srli         t6, t0, 10
                  slt          sp, t3, s1
                  sw           t1, 4(t0)
                  sll          s3, zero, s1
sub_4_0:          jal          t1, 7f
0:                jal          sp, 8f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          t1, 1b
5:                jal          t1, 6f
6:                jal          ra, 9f
7:                jal          s0, 10f
8:                jal          ra, 4b
9:                jal          s4, 0b
10:               jal          ra, 5b
11:               auipc        sp, 875993
sub_4_2:          jal          t1, 18f
0:                jal          s8, 16f
1:                jal          a5, 19f
2:                jal          ra, 10f
3:                jal          sp, 15f
4:                jal          sp, 6f
5:                jal          ra, 2b
6:                jal          ra, 14f
7:                jal          ra, 8f
8:                jal          tp, 9f
9:                jal          s1, 12f
10:               jal          t1, 7b
11:               jal          t1, 5b
12:               jal          t1, 4b
13:               jal          ra, 17f
14:               jal          t1, 0b
15:               jal          t1, 11b
16:               jal          ra, 13b
17:               jal          a3, 1b
18:               jal          t1, 3b
19:               slti         a7, a7, 388
sub_4_5:          jal          t1, 6f
0:                jal          ra, 1f
1:                jal          s2, 8f
2:                jal          t1, 12f
3:                jal          t1, 10f
4:                jal          ra, 14f
5:                jal          s2, 0b
6:                jal          ra, 5b
7:                jal          tp, 15f
8:                jal          t2, 7b
9:                jal          ra, 4b
10:               jal          s3, 9b
11:               jal          ra, 16f
12:               jal          ra, 13f
13:               jal          ra, 3b
14:               jal          ra, 11b
15:               jal          ra, 2b
16:               addi         s9, a5, 263
sub_4_3:          jal          t1, 5f
0:                jal          sp, 7f
1:                jal          a5, 6f
2:                jal          t1, 13f
3:                jal          tp, 14f
4:                jal          ra, 9f
5:                jal          t1, 8f
6:                jal          ra, 11f
7:                jal          tp, 12f
8:                jal          ra, 2b
9:                jal          t1, 15f
10:               jal          ra, 17f
11:               jal          ra, 16f
12:               jal          ra, 10b
13:               jal          a6, 4b
14:               jal          t1, 0b
15:               jal          t1, 1b
16:               jal          t5, 3b
17:               lui          t6, 975087
sub_4_4:          jal          t1, 11f
0:                jal          a7, 14f
1:                jal          ra, 19f
2:                jal          a4, 1b
3:                jal          a7, 23f
4:                jal          tp, 13f
5:                jal          ra, 10f
6:                jal          a3, 9f
7:                jal          ra, 3b
8:                jal          ra, 5b
9:                jal          s2, 12f
10:               jal          t1, 15f
11:               jal          t1, 2b
12:               jal          ra, 24f
13:               jal          t4, 22f
14:               jal          s9, 4b
15:               jal          s8, 16f
16:               jal          s1, 7b
17:               jal          ra, 6b
18:               jal          t1, 17b
19:               jal          t1, 21f
20:               jal          ra, 18b
21:               jal          s0, 0b
22:               jal          t1, 20b
23:               jal          ra, 25f
24:               jal          s9, 8b
25:               jal          t1, 26f
26:               slt          s1, s5, a3
                  srai         zero, t2, 2
                  bltu         t1, t5, 18f
                  bge          a5, t0, 13f
                  slti         s2, s6, 126
                  nop
                  or           s6, s2, s0
                  add          t4, t6, tp
                  addi         s9, t1, -93
                  sll          a4, s2, t5
                  bgeu         t1, t1, 11f
                  beq          t0, t1, 27f
11:               srli         a7, tp, 13
                  xor          a3, s4, a5
13:               sltu         gp, t6, s4
                  nop
                  bltu         s3, t5, 35f
                  slt          zero, t0, s0
                  slli         t4, t5, 4
18:               sltiu        s4, s9, -1604
                  bne          s5, t6, 39f
                  or           s9, t2, t0
                  sltu         s10, t5, s3
                  slli         s4, a2, 5
                  bge          t5, s0, 34f
                  sltiu        a3, s9, 1781
                  and          t6, s3, s1
                  sltiu        t1, s11, 687
27:               beq          s1, a2, 39f
                  auipc        s10, 33441
                  xor          zero, tp, t1
                  ori          s6, s8, 156
                  sltiu        a6, sp, -284
                  andi         a5, a3, 274
                  bgeu         a6, t4, 46f
34:               xori         a5, a4, 1529
35:               bne          s3, t1, 50f
                  sll          a3, zero, sp
                  slti         s5, tp, -283
                  xori         s11, t3, 825
39:               nop
                  blt          s8, t2, 58f
                  srli         s10, a6, 20
                  ori          s5, s3, 1887
                  srl          ra, s5, a4
                  xor          s8, s5, t2
                  addi         s9, ra, -63
46:               slti         ra, t5, 1291
                  blt          t5, s5, 62f
                  xori         t6, t5, -1172
                  sra          s5, t5, t1
50:               ori          sp, s5, -1959
                  bne          gp, s9, 66f
                  srai         t5, t3, 16
                  slt          ra, s10, s10
                  nop
                  sra          t5, t2, s4
                  srli         a0, a5, 12
                  and          zero, s3, s0
58:               beq          s5, s8, 69f
                  xori         s5, a1, -275
                  sub          a4, s5, s0
                  slt          t2, s7, s10
62:               bne          s1, a3, 76f
                  or           t4, gp, zero
                  srl          s4, a7, s0
                  bge          t6, a1, 83f
66:               sltu         t1, a4, s5
                  xori         s2, tp, 645
                  bgeu         s0, tp, 83f
69:               bltu         a0, a6, 82f
                  slli         a1, s10, 31
                  xor          a0, s0, t2
                  nop
                  bge          s5, a0, 92f
                  blt          ra, s1, 75f
75:               addi         tp, s5, -1841
76:               srl          s2, t0, a5
                  bne          a6, s6, 80f
                  and          a3, t3, sp
                  beq          s4, a1, 91f
80:               sltiu        s3, s1, -1107
                  addi         s8, s10, -1627
82:               sltiu        tp, a0, -1515
83:               and          ra, s9, ra
                  addi         s4, a7, -1546
                  auipc        a3, 21131
                  srl          t4, a1, s7
                  srl          s9, a0, s5
                  xor          gp, a1, s8
                  sra          a0, s3, t3
                  slti         s9, t5, 509
91:               sra          t6, s8, a4
92:               slt          a7, t2, gp
                  sra          a7, t2, zero
                  srli         a4, t0, 29
                  nop
                  andi         a7, s1, -1194
                  sltiu        s9, zero, -659
                  sub          a0, s9, gp
                  srl          a6, a6, t5
                  slt          tp, a5, s4
                  srli         s6, t6, 16
                  slt          s8, gp, s11
                  blt          s3, a5, 122f
                  slti         t5, zero, -1693
                  sltu         s5, sp, tp
                  bltu         a0, s6, 123f
                  xori         t1, a0, 2018
                  andi         s8, ra, 163
                  slti         a7, a1, 374
                  xori         a6, t4, -1978
                  auipc        t2, 1006889
                  lui          s2, 899433
                  slli         s6, a1, 3
                  srai         a3, s2, 7
                  ori          s6, s9, -86
                  srai         zero, s6, 12
                  nop
                  srli         a6, a5, 21
                  bne          s4, s0, 139f
                  srli         a5, tp, 16
                  bge          t0, a4, 132f
122:              sltu         s4, s9, zero
123:              bne          tp, a0, 128f
                  sll          s6, s0, s5
                  ori          a3, s0, 1712
                  slli         t1, s6, 28
                  sra          t2, s10, gp
128:              lui          s10, 415095
                  srli         s5, ra, 14
                  bltu         t6, a6, 146f
                  srli         a5, sp, 23
132:              sltu         s0, a6, t0
                  sll          a4, zero, s7
                  nop
                  slt          t2, s11, t3
                  xor          t2, a7, s8
                  ori          t1, t3, 1194
                  add          s9, s5, a6
139:              sra          s6, tp, s9
                  blt          sp, t4, 145f
                  nop
                  bge          a1, s3, 153f
                  xor          s1, a4, a0
                  sltiu        s10, s6, 1507
145:              srai         tp, gp, 29
146:              andi         a5, t0, 307
                  or           t4, s10, s11
                  slli         a1, t6, 9
                  sltiu        tp, s0, 675
                  bgeu         zero, gp, 170f
                  blt          gp, s5, 162f
                  addi         s8, a1, 184
153:              bne          t6, t3, 168f
                  xori         t1, a2, -363
                  slti         zero, s5, -1438
                  sltu         a1, s3, s7
                  srl          t1, sp, t6
                  srl          s4, s0, a1
                  and          t2, a1, t2
                  srl          sp, s0, s11
                  bne          t2, gp, 172f
162:              sra          a6, t4, t5
                  and          a5, a2, t0
                  addi         s8, s11, 1088
                  slli         a7, t5, 12
                  sltiu        a7, s4, 205
                  srai         a7, s2, 26
168:              add          a5, a5, tp
                  sltiu        a0, s10, 277
170:              srl          zero, s2, t6
                  bltu         s2, s8, 190f
172:              sub          sp, zero, s8
                  lui          s0, 855443
                  nop
                  sll          a2, s1, a3
                  add          ra, t6, s2
                  lui          s0, 626787
                  bgeu         a0, t2, 180f
                  sra          zero, t0, t4
180:              blt          s1, s9, 191f
                  slt          a5, t0, t0
                  slt          t6, s4, a4
                  blt          s6, a0, 195f
                  sub          s11, a6, sp
                  xori         s9, s10, -150
                  andi         a3, t6, 3
                  nop
                  slt          s8, ra, t3
sub_4_1:          jal          t1, 8f
0:                jal          t1, 10f
1:                jal          t5, 4f
2:                jal          ra, 0b
3:                jal          t1, 9f
4:                jal          ra, 12f
5:                jal          t1, 13f
6:                jal          ra, 5b
7:                jal          t1, 3b
8:                jal          t4, 6b
9:                jal          t1, 2b
10:               jal          t1, 1b
11:               jal          t4, 7b
12:               jal          ra, 14f
13:               jal          s2, 11b
14:               and          t6, zero, s9
                  srl          s1, s8, a5
190:              add          s8, s6, t1
191:              bltu         t0, a7, 208f
                  addi         a1, t2, -1332
                  nop
                  sra          t6, s11, s7
195:              bne          a3, a3, 210f
                  sltiu        t6, t2, 1603
                  addi         s2, s11, -311
                  beq          s10, a5, 218f
                  nop
                  add          zero, s3, s3
                  auipc        a1, 88989
                  sltiu        s6, s8, -1110
                  addi         t1, t3, 1758
                  srl          s3, a3, a0
                  bgeu         t3, ra, 221f
                  srli         a5, s9, 29
                  bltu         a2, a6, 221f
208:              add          a3, sp, a2
                  andi         s9, gp, 1883
210:              beq          t6, s2, 223f
                  or           s6, s7, t5
                  srai         s10, t0, 3
                  sll          t4, s3, s11
                  sltu         ra, a3, a5
                  addi         s8, gp, -950
                  nop
                  nop
218:              srai         zero, s11, 25
                  sub          s11, ra, a4
                  bne          s8, s6, 225f
221:              sub          s2, a4, s3
                  bge          s8, a5, 239f
223:              xor          a5, s8, s10
                  srai         a2, s11, 18
225:              xori         a2, tp, 826
                  beq          zero, s10, 227f
227:              nop
                  bge          gp, ra, 240f
                  sub          s11, s8, s9
                  sll          a2, s3, s9
                  andi         tp, t5, -1194
                  bgeu         t2, a2, 243f
                  srai         s0, a0, 22
                  bgeu         a0, t6, 239f
                  sltu         s4, s11, s9
                  srai         tp, t3, 7
                  bne          s0, s9, 255f
                  nop
239:              beq          s0, s9, 254f
240:              slli         s10, s2, 12
                  ori          s11, t3, 780
                  sub          zero, s5, a5
243:              slti         ra, s6, -1875
                  sra          s1, t0, s10
                  lui          s3, 473894
                  srl          s1, t5, a2
                  xori         t5, sp, 1810
                  or           s4, s4, s3
                  auipc        s0, 667192
                  srli         a2, a6, 20
                  bgeu         a2, ra, 264f
                  beq          s4, t3, 270f
                  andi         s11, s6, -2040
254:              xor          a0, t4, a6
255:              add          a4, t1, s8
                  or           t5, s6, s7
                  addi         t6, gp, 1502
                  sra          a2, t3, a5
                  lui          s5, 871453
                  blt          s3, a6, 271f
                  ori          t4, t0, -1099
                  bge          a6, s11, 277f
                  add          s4, s7, s3
264:              bgeu         a6, t0, 281f
                  bge          t3, s0, 284f
                  ori          s1, a3, -99
                  srai         tp, gp, 11
                  slt          a2, s4, sp
                  slli         t5, gp, 17
270:              slli         gp, a5, 30
271:              bgeu         t1, a0, 274f
                  ori          s8, t5, -1702
                  sltu         t4, s2, gp
274:              bge          t0, s11, 294f
                  sltu         s4, tp, s7
                  sra          t2, s2, a0
277:              beq          a5, t1, 294f
                  sub          s6, t0, t6
                  sra          sp, s7, t3
                  sra          t4, a2, t3
281:              andi         t2, t1, -596
                  sltiu        s0, s9, -151
                  beq          t3, a7, 288f
284:              sra          a5, t4, sp
                  add          gp, t3, zero
                  slti         sp, s5, -1614
                  sltu         a7, s1, s11
288:              or           t4, a1, t5
                  bgeu         s6, sp, 304f
                  srl          s1, t5, t0
                  blt          a7, t4, 307f
                  bgeu         t5, s5, 305f
                  srai         zero, t1, 14
294:              sltiu        a2, s0, -940
                  srl          s8, s9, s9
                  sltiu        s10, t6, -1097
                  xor          s1, a2, a4
                  bne          t3, zero, 314f
                  add          zero, sp, a7
                  bltu         gp, s8, 314f
                  beq          s3, s7, 306f
                  xor          s2, t3, a1
                  sltiu        s10, gp, -1208
304:              blt          t0, a4, 314f
305:              slli         s1, a7, 31
306:              srai         a7, t5, 22
307:              blt          sp, gp, 314f
                  beq          s7, sp, 309f
309:              ori          zero, a5, -292
                  add          s4, s2, t4
                  bne          gp, a7, 314f
                  sltiu        s6, t3, -1184
                  andi         s1, a6, -1204
314:              nop
                  addi         tp, a2, -797
                  lw           t1, 4(t0)
                  nop
                  sub          a7, s2, a2
                  addi         t0, t0, 28
                  srli         s2, s0, 8
                  nop
                  slt          s3, t2, s8
446:              addi x9, x6, 0
446:              jalr x9, x9, 0
sub_2:            addi         s3, a2, 1064
                  addi         t0, t0, -32
                  or           t6, s9, t1
                  sw           t1, 4(t0)
                  sltu         t5, s0, a3
                  or           s5, t6, t4
                  beq          s9, a0, 8f
                  srl          a1, t2, t5
                  xor          t2, sp, s3
                  sra          a4, s3, s8
                  srli         s4, ra, 12
                  bne          tp, a7, 9f
                  ori          s6, a3, -837
                  slli         gp, s8, 2
8:                slt          s1, t2, s2
9:                xor          s8, a1, t0
                  and          s5, zero, a7
                  slli         t5, s2, 31
                  sltiu        zero, t4, 1389
                  sll          a2, a5, s11
                  nop
                  sra          a5, t1, t3
                  blt          tp, sp, 30f
                  slt          a4, gp, zero
                  or           t5, a1, ra
                  ori          s8, a1, 819
                  xori         s3, a2, -1381
                  sub          a7, s6, a4
                  srai         a0, t4, 5
                  sub          tp, a6, zero
                  bge          s9, t1, 40f
                  sub          t4, s6, a6
                  auipc        s0, 234089
                  sra          ra, tp, tp
                  and          a1, t4, t3
                  beq          a1, a6, 31f
30:               bge          s8, a5, 34f
31:               slli         a3, s2, 18
                  bltu         ra, s2, 42f
                  bne          a0, a1, 40f
34:               bltu         s8, a0, 36f
                  srai         tp, zero, 15
36:               xor          s3, ra, a7
                  beq          s3, ra, 42f
                  or           t2, s4, s3
                  sltiu        s10, s9, -1612
40:               bgeu         s7, s10, 44f
                  slli         a5, s5, 26
42:               beq          s5, a3, 56f
                  beq          a3, s3, 51f
44:               xor          s10, a1, gp
                  slt          ra, t4, s1
                  srli         s3, t0, 12
                  bne          s4, t4, 54f
                  slt          s8, a7, t5
                  slti         s1, a1, 1802
                  slt          t5, s0, s4
51:               lui          a4, 708062
                  sltiu        s10, t5, 1487
                  sra          s6, t3, a3
54:               nop
                  andi         t5, a3, -82
56:               and          s10, s3, a5
                  bne          a7, a7, 66f
                  auipc        a1, 848679
                  sra          a2, a4, s0
                  srl          a1, s0, s10
                  andi         ra, a2, 1156
                  addi         s5, t4, -1797
                  sll          gp, s4, s10
                  add          t1, a7, a1
                  sub          tp, t2, t1
66:               slt          a7, s5, s1
                  ori          a0, a5, 616
                  sltiu        t6, s5, 1967
                  bltu         sp, ra, 73f
                  bge          zero, sp, 78f
                  blt          s5, zero, 78f
                  slti         s5, s11, -1994
73:               addi         tp, s10, 698
                  nop
                  nop
                  or           s8, t5, s3
                  andi         s10, s7, -1709
sub_2_0:          jal          t1, 3f
0:                jal          ra, 8f
1:                jal          s3, 9f
2:                jal          s11, 1b
3:                jal          t1, 6f
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          a1, 11f
8:                jal          t1, 2b
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          ra, 4b
12:               jal          t2, 5b
13:               sll          s4, t3, gp
78:               sll          s9, s6, s5
                  slti         sp, a0, 284
                  lw           t1, 4(t0)
                  slli         s9, sp, 23
                  slli         gp, s8, 12
                  sub          t2, a0, a7
                  addi         t0, t0, 32
                  xor          s3, t0, a3
                  sltiu        a2, a5, 1345
108:              addi x8, x6, 1
108:              jalr x8, x8, 0
sub_1:            and          gp, a3, s11
                  addi         t0, t0, -12
                  slti         zero, s9, 1399
                  srai         s3, t4, 5
                  sw           t1, 4(t0)
                  xor          a7, a7, a6
                  ori          zero, a2, 1334
                  xori         s10, a3, 1814
                  sltu         s3, a2, s6
                  xor          t6, s7, zero
                  sltu         zero, gp, t5
                  xori         s9, s8, 1559
                  bne          s4, s10, sub_1_j5 #branch to jump instr
                  nop
                  add          s4, t6, s5
                  sltu         zero, t5, s2
sub_1_j5:         jal          t1, sub_4 #jump sub_1 -> sub_4
sub_1_0:          jal          t1, 5f
0:                jal          t1, 12f
1:                jal          t1, 21f
2:                jal          ra, 3f
3:                jal          ra, 6f
4:                jal          t1, 11f
5:                jal          ra, 16f
6:                jal          s3, 13f
7:                jal          t1, 4b
8:                jal          t1, 14f
9:                jal          gp, 15f
10:               jal          t1, 9b
11:               jal          t1, 17f
12:               jal          ra, 20f
13:               jal          sp, 8b
14:               jal          ra, 19f
15:               jal          ra, 0b
16:               jal          tp, 18f
17:               jal          a4, 22f
18:               jal          t5, 1b
19:               jal          ra, 7b
20:               jal          s3, 2b
21:               jal          ra, 10b
22:               sra          s1, s11, a5
sub_1_3:          jal          t1, 5f
0:                jal          t1, 18f
1:                jal          ra, 19f
2:                jal          ra, 0b
3:                jal          t1, 16f
4:                jal          ra, 8f
5:                jal          ra, 9f
6:                jal          t1, 14f
7:                jal          t1, 24f
8:                jal          t1, 21f
9:                jal          ra, 17f
10:               jal          ra, 1b
11:               jal          ra, 2b
12:               jal          ra, 20f
13:               jal          ra, 22f
14:               jal          ra, 13b
15:               jal          ra, 7b
16:               jal          t1, 15b
17:               jal          ra, 3b
18:               jal          t1, 12b
19:               jal          ra, 6b
20:               jal          ra, 10b
21:               jal          t1, 23f
22:               jal          ra, 25f
23:               jal          ra, 11b
24:               jal          ra, 4b
25:               xori         a0, s9, 805
sub_1_2:          jal          t1, 19f
0:                jal          s4, 12f
1:                jal          t1, 7f
2:                jal          gp, 15f
3:                jal          ra, 17f
4:                jal          t1, 20f
5:                jal          s2, 4b
6:                jal          t1, 18f
7:                jal          sp, 9f
8:                jal          t1, 22f
9:                jal          tp, 8b
10:               jal          t1, 13f
11:               jal          tp, 6b
12:               jal          ra, 10b
13:               jal          ra, 5b
14:               jal          ra, 11b
15:               jal          t6, 14b
16:               jal          ra, 3b
17:               jal          gp, 1b
18:               jal          ra, 0b
19:               jal          t1, 21f
20:               jal          ra, 16b
21:               jal          a5, 2b
22:               andi         t6, s3, -772
sub_1_4:          jal          t1, 14f
0:                jal          ra, 9f
1:                jal          t1, 12f
2:                jal          ra, 3f
3:                jal          t1, 0b
4:                jal          t1, 19f
5:                jal          ra, 8f
6:                jal          t4, 5b
7:                jal          ra, 29f
8:                jal          ra, 13f
9:                jal          ra, 21f
10:               jal          s1, 24f
11:               jal          ra, 22f
12:               jal          ra, 23f
13:               jal          ra, 2b
14:               jal          s8, 15f
15:               jal          ra, 6b
16:               jal          t2, 20f
17:               jal          sp, 16b
18:               jal          ra, 4b
19:               jal          t1, 27f
20:               jal          a0, 10b
21:               jal          a0, 28f
22:               jal          ra, 17b
23:               jal          ra, 7b
24:               jal          ra, 18b
25:               jal          t1, 11b
26:               jal          ra, 1b
27:               jal          ra, 26b
28:               jal          t1, 25b
29:               xor          t5, s11, s1
sub_1_1:          jal          t1, 4f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          ra, 12f
3:                jal          ra, 6f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          tp, 1b
7:                jal          ra, 3b
8:                jal          sp, 13f
9:                jal          ra, 7b
10:               jal          t1, 5b
11:               jal          ra, 8b
12:               jal          t1, 11b
13:               xori         t6, a2, 1722
                  add          s9, ra, gp
                  slti         t1, s0, -679
                  bltu         a4, s1, 20f
                  beq          s2, a0, 15f
                  xor          a3, t4, sp
                  ori          t2, s0, -621
                  addi         a1, zero, 516
                  andi         s0, s7, 1514
                  bltu         s9, s3, 15f
                  sltu         s10, tp, s7
                  bltu         t5, t2, 29f
                  andi         t5, a5, -512
                  srai         t5, s9, 20
                  sll          t5, s4, a1
                  slli         s5, t5, 10
15:               srli         t2, s7, 30
                  nop
                  slti         t6, gp, -1268
                  sra          s3, s6, s11
                  ori          a1, s11, 1751
20:               or           a5, t4, t6
                  nop
                  xori         a1, s6, 342
                  srl          zero, s2, s3
                  andi         a1, s4, 1480
                  bne          a0, s11, 31f
                  blt          s9, a0, 30f
                  nop
                  sll          t4, s11, a1
29:               or           zero, t1, t4
30:               srai         a7, t3, 5
31:               srai         tp, zero, 21
                  auipc        s1, 865853
                  nop
                  beq          a1, s0, 38f
                  sra          a5, s4, s2
                  beq          t0, ra, 45f
                  addi         zero, s11, 1186
38:               slti         tp, a5, -1714
                  sra          s6, gp, t2
                  bltu         t1, s10, 52f
                  sra          s5, a0, s2
                  bltu         t6, ra, 44f
                  sltu         t2, a2, s11
44:               nop
45:               sll          a7, t0, sp
                  sll          a3, a7, gp
                  sltu         a3, s0, t0
                  bge          s7, s1, 61f
                  slt          a7, s10, s11
                  xori         a6, a5, 1983
                  xori         a1, tp, -436
52:               slli         t6, a2, 14
                  nop
                  blt          a4, s5, 70f
                  ori          a5, s4, 503
                  slli         s5, s5, 6
                  bltu         t6, a1, sub_1_j3 #branch to jump instr
                  sll          s4, t2, a1
                  sra          s0, a1, a2
                  auipc        a1, 21296
                  nop
                  srli         s4, ra, 14
sub_1_j3:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  add          s0, t2, s1
                  srai         a6, s0, 4
                  beq          a3, s4, 68f
                  ori          a7, t4, 2030
61:               and          a1, gp, s0
                  slt          s2, s6, ra
                  sub          a5, s7, s1
                  sltu         s11, t6, a7
                  bge          t6, a2, 67f
                  addi         zero, zero, 1175
67:               andi         a4, sp, 641
68:               xor          t4, s0, t4
                  addi         t6, s10, 1541
70:               andi         a0, zero, -209
                  sltu         a5, s4, s3
                  andi         t1, s10, 888
                  slti         a7, t4, -1732
                  and          ra, s7, s0
                  auipc        a7, 514078
                  slt          tp, s9, a2
                  slli         a3, s5, 31
                  sra          a5, ra, s10
                  or           s9, t0, sp
                  srl          s2, s7, t0
                  sub          t4, a6, t6
                  beq          t4, a7, sub_1_j4 #branch to jump instr
                  slti         s9, s2, 392
                  sub          t5, s8, a4
sub_1_j4:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  xori         s8, s4, 1059
                  sll          gp, t3, s11
                  xor          a4, s11, t3
                  andi         s0, t3, -811
                  sra          s1, s9, a3
                  beq          t1, t1, 81f
                  lui          a3, 711608
81:               xor          t1, s2, t6
                  sltu         s0, s11, a0
                  srai         s8, a1, 20
                  lui          zero, 1012205
                  slti         a1, a3, 1049
                  bge          sp, a3, 88f
                  sltu         s10, tp, a4
88:               beq          t0, a4, 106f
                  andi         t1, zero, -5
                  nop
                  bne          a5, t6, 95f
                  andi         a3, s0, -1340
                  beq          t1, a3, 99f
                  sra          t1, s6, sp
95:               srl          s2, t0, s1
                  and          a3, s3, s6
                  xori         ra, tp, 1433
                  add          sp, t4, a1
99:               ori          zero, s8, -563
                  bltu         t4, s5, 102f
                  beq          zero, s10, 119f
102:              sub          tp, t4, t0
                  auipc        gp, 510705
                  bgeu         s8, t6, 123f
                  sltiu        s6, s3, -601
106:              xor          tp, a0, t2
                  nop
                  bne          s5, t5, 121f
                  nop
                  sub          tp, s2, t5
                  srl          ra, s3, t4
                  slli         s6, s9, 29
                  bne          s10, s7, 117f
                  bltu         tp, t3, 127f
                  and          s6, s10, a3
                  slli         a7, t6, 13
117:              xor          t4, t3, t5
                  nop
119:              blt          t3, t1, 130f
                  slt          t5, s9, a3
121:              bne          s3, s10, 140f
                  slti         s9, s8, 504
123:              auipc        a2, 796227
                  bge          sp, s5, 130f
                  bgeu         zero, s4, 130f
                  ori          zero, s1, 1941
127:              srl          gp, s1, s10
                  beq          zero, s0, 138f
                  bgeu         t1, s2, 147f
130:              slti         a3, t0, 1853
                  slli         s4, a4, 15
                  slti         a4, s4, -1092
                  bne          a3, tp, 146f
                  or           a6, s5, s4
                  auipc        s0, 98513
                  slt          s3, s6, s3
                  beq          a1, s3, 156f
138:              beq          a6, s4, 148f
                  bge          sp, s4, 143f
140:              srai         s6, s0, 21
                  addi         s3, zero, 486
                  or           ra, a0, a4
143:              blt          a6, s0, 145f
                  or           t2, s7, sp
145:              bge          a4, s0, 163f
146:              sra          t4, t0, s11
147:              blt          a6, t4, 156f
148:              sra          s10, a7, zero
                  slt          s1, s11, t5
                  srli         tp, a1, 31
                  slti         a6, a7, -1217
                  blt          s4, s3, 154f
                  sll          s4, s0, a3
154:              andi         a2, t1, -885
                  bgeu         tp, ra, 161f
156:              srl          t2, s1, a1
                  auipc        s4, 928964
                  sub          a4, s2, a1
                  bgeu         sp, a1, 161f
                  bgeu         s1, sp, 173f
161:              bgeu         a6, s5, 163f
                  auipc        s4, 63174
163:              bltu         zero, t3, 175f
                  add          s0, s4, s11
                  add          s11, a4, t6
                  bne          t6, t0, 172f
                  bltu         a0, s1, 186f
                  bgeu         s5, tp, 184f
                  lui          a2, 1004426
                  sltiu        s2, ra, -1094
                  and          tp, ra, sp
172:              or           s1, s8, s0
173:              xor          t5, ra, s8
                  nop
175:              addi         gp, s6, -372
                  srl          tp, tp, a4
                  blt          s11, t3, 181f
                  sll          a1, s10, s7
                  bgeu         a1, t4, 198f
                  bne          t4, zero, 184f
181:              bgeu         a1, s7, 188f
                  srai         gp, s11, 16
                  sll          s5, s4, ra
184:              and          a1, s11, a3
                  sltu         t6, a0, t6
186:              slli         gp, t2, 1
                  xor          sp, a2, a0
188:              beq          sp, tp, 194f
                  bge          t0, a2, 202f
                  bgeu         ra, s11, 202f
                  sll          s8, s10, t2
                  blt          sp, s7, 194f
                  andi         zero, s6, 1143
194:              nop
                  sra          s9, s11, s3
                  ori          a2, t1, 1609
                  sub          a6, s10, t4
198:              sll          t1, t6, s11
                  bne          a2, t6, 208f
                  srl          sp, s4, s6
                  srli         s9, sp, 31
202:              andi         s5, t3, 1750
                  xor          s9, s8, a1
                  sub          a4, a5, t0
                  add          a1, t4, a5
                  slli         t5, a1, 24
                  slt          s1, a6, a5
208:              sub          t1, s7, t4
                  auipc        a7, 322148
                  srl          a2, gp, a2
                  and          t1, s0, s0
                  blt          s8, s3, 216f
                  slli         a5, sp, 9
                  srai         ra, ra, 27
                  auipc        gp, 258474
216:              and          a1, s5, s4
                  add          s11, t5, s6
                  nop
                  addi         s5, a4, -1608
                  auipc        s8, 851128
                  bltu         t2, s11, 232f
                  slli         tp, t3, 26
                  and          a1, s10, t0
                  sub          s0, gp, s7
                  and          a5, t2, s3
                  beq          s4, t6, 231f
                  blt          t6, t0, 245f
                  sltiu        sp, t5, -1950
                  sltiu        t4, s10, 1384
                  bgeu         s10, s7, 246f
231:              srl          a3, a6, t3
232:              ori          s3, s1, -1834
                  slt          a2, t1, s4
                  bltu         s6, t3, 245f
                  sll          t5, s6, t1
                  auipc        s11, 836533
                  nop
                  sub          s3, s7, s2
                  srli         t6, t0, 3
                  bne          s11, t2, 253f
                  add          a3, s0, t4
                  sub          t4, s6, s0
                  nop
                  xori         t6, s2, -1147
245:              srli         sp, a1, 12
246:              sra          s2, t2, a1
                  bgeu         t5, s8, 249f
                  blt          zero, s11, 254f
249:              bge          a1, a4, 261f
                  slt          a3, a6, s10
                  sll          s9, t3, a5
                  srli         t5, s6, 27
253:              auipc        s5, 360661
254:              addi         s3, t2, 1217
                  bne          s11, s10, 273f
                  slti         a2, a5, 1651
                  srli         a1, s1, 5
                  or           s6, s6, a5
                  ori          s4, s0, 754
                  nop
261:              sra          s2, t6, t3
                  lui          s3, 355669
                  slti         a6, s4, -5
                  beq          t1, a6, 273f
                  sltu         a7, t4, gp
                  and          a1, s10, zero
                  auipc        a0, 348908
                  srl          zero, s5, s7
                  and          t5, a5, a5
                  srl          s1, s8, t5
                  bne          s6, a7, 273f
                  addi         a3, t6, 1039
273:              blt          s3, t2, 291f
                  srli         a6, a3, 8
                  blt          a7, a4, 288f
                  auipc        a3, 944741
                  srli         s6, s11, 10
                  bltu         a2, a5, 291f
                  slli         tp, t0, 7
                  andi         sp, t3, -256
                  bge          tp, a3, 287f
                  auipc        ra, 1005471
                  sub          s0, s7, t6
                  sub          s11, t4, s6
                  slt          a1, gp, s9
                  sltiu        gp, s6, -365
287:              xori         a6, a0, -1179
288:              sub          tp, s7, s5
                  ori          s1, tp, 1954
                  xor          s8, t5, a4
291:              sra          a7, s7, s7
                  sll          s8, a0, s2
                  lw           t1, 4(t0)
                  andi         ra, a7, 1990
                  addi         t0, t0, 12
                  sltiu        t2, a3, -1936
                  srai         a6, a4, 16
                  nop
                  sra          s1, tp, t0
457:              addi x10, x6, 1
457:              jalr x10, x10, 0
sub_3:            bge          t2, s4, sub_3_stack_p
                  xori         a2, s5, 622
sub_3_stack_p:    addi         t0, t0, -12
                  nop
                  and          sp, s11, s5
                  sw           t1, 4(t0)
                  addi         a0, t0, -1760
sub_3_17:         jal          t1, 18f
0:                jal          a2, 8f
1:                jal          ra, 22f
2:                jal          ra, 14f
3:                jal          ra, 2b
4:                jal          a6, 10f
5:                jal          ra, 0b
6:                jal          ra, 24f
7:                jal          t1, 6b
8:                jal          ra, 4b
9:                jal          t2, 30f
10:               jal          gp, 29f
11:               jal          t1, 27f
12:               jal          ra, 28f
13:               jal          ra, 26f
14:               jal          ra, 17f
15:               jal          s1, 12b
16:               jal          s2, 20f
17:               jal          t1, 9b
18:               jal          ra, 13b
19:               jal          t1, 7b
20:               jal          t1, 1b
21:               jal          ra, 25f
22:               jal          ra, 23f
23:               jal          ra, 19b
24:               jal          ra, 5b
25:               jal          ra, 11b
26:               jal          t1, 16b
27:               jal          a7, 15b
28:               jal          ra, 3b
29:               jal          ra, 21b
30:               sra          s2, s6, t2
sub_3_21:         jal          t1, 4f
0:                jal          ra, 13f
1:                jal          ra, 2f
2:                jal          t1, 5f
3:                jal          ra, 18f
4:                jal          ra, 22f
5:                jal          ra, 7f
6:                jal          a6, 19f
7:                jal          ra, 10f
8:                jal          ra, 9f
9:                jal          tp, 23f
10:               jal          ra, 14f
11:               jal          t4, 6b
12:               jal          t1, 16f
13:               jal          ra, 8b
14:               jal          ra, 15f
15:               jal          t1, 21f
16:               jal          a4, 3b
17:               jal          ra, 0b
18:               jal          ra, 17b
19:               jal          a3, 1b
20:               jal          tp, 11b
21:               jal          ra, 12b
22:               jal          a5, 20b
23:               slt          a5, a6, s3
sub_3_27:         jal          t1, 10f
0:                jal          ra, 7f
1:                jal          t1, 4f
2:                jal          ra, 16f
3:                jal          ra, 1b
4:                jal          gp, 9f
5:                jal          s0, 14f
6:                jal          ra, 2b
7:                jal          a4, 5b
8:                jal          t4, 13f
9:                jal          ra, 11f
10:               jal          sp, 3b
11:               jal          t1, 0b
12:               jal          s2, 15f
13:               jal          a7, 6b
14:               jal          gp, 12b
15:               jal          a7, 8b
16:               ori          t2, a7, -484
sub_3_3:          jal          t1, 11f
0:                jal          ra, 14f
1:                jal          a5, 7f
2:                jal          ra, 3f
3:                jal          t1, 9f
4:                jal          ra, 1b
5:                jal          ra, 0b
6:                jal          a3, 13f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 15f
10:               jal          ra, 8b
11:               jal          s3, 6b
12:               jal          a2, 10b
13:               jal          ra, 12b
14:               jal          t1, 4b
15:               and          s4, s2, s10
sub_3_18:         jal          t1, 10f
0:                jal          ra, 13f
1:                jal          t1, 6f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          ra, 0b
5:                jal          s3, 11f
6:                jal          t1, 4b
7:                jal          ra, 8f
8:                jal          gp, 2b
9:                jal          a7, 12f
10:               jal          ra, 3b
11:               jal          gp, 1b
12:               jal          s4, 5b
13:               nop
sub_3_7:          jal          t1, 4f
0:                jal          ra, 13f
1:                jal          t1, 8f
2:                jal          ra, 17f
3:                jal          a6, 11f
4:                jal          ra, 14f
5:                jal          s8, 9f
6:                jal          s2, 3b
7:                jal          t1, 1b
8:                jal          gp, 10f
9:                jal          sp, 6b
10:               jal          sp, 5b
11:               jal          ra, 0b
12:               jal          ra, 15f
13:               jal          t1, 16f
14:               jal          ra, 2b
15:               jal          s3, 18f
16:               jal          a2, 12b
17:               jal          gp, 7b
18:               sll          a3, t3, s3
sub_3_35:         jal          t1, 10f
0:                jal          ra, 18f
1:                jal          a1, 8f
2:                jal          ra, 4f
3:                jal          ra, 17f
4:                jal          ra, 15f
5:                jal          a2, 1b
6:                jal          gp, 7f
7:                jal          ra, 9f
8:                jal          ra, 13f
9:                jal          ra, 0b
10:               jal          ra, 14f
11:               jal          ra, 6b
12:               jal          ra, 16f
13:               jal          ra, 12b
14:               jal          ra, 2b
15:               jal          gp, 5b
16:               jal          t1, 3b
17:               jal          t1, 11b
18:               lui          s4, 50441
sub_3_26:         jal          t1, 7f
0:                jal          ra, 15f
1:                jal          a2, 17f
2:                jal          ra, 13f
3:                jal          ra, 2b
4:                jal          ra, 16f
5:                jal          t1, 14f
6:                jal          ra, 10f
7:                jal          ra, 0b
8:                jal          ra, 5b
9:                jal          ra, 8b
10:               jal          a6, 4b
11:               jal          ra, 1b
12:               jal          a1, 6b
13:               jal          t6, 12b
14:               jal          s1, 11b
15:               jal          s4, 3b
16:               jal          t1, 9b
17:               and          s0, s3, s2
sub_3_37:         jal          t1, 11f
0:                jal          s5, 5f
1:                jal          a2, 4f
2:                jal          ra, 9f
3:                jal          t1, 2b
4:                jal          t1, 0b
5:                jal          ra, 13f
6:                jal          ra, 16f
7:                jal          a1, 17f
8:                jal          ra, 3b
9:                jal          s2, 6b
10:               jal          ra, 14f
11:               jal          ra, 15f
12:               jal          sp, 8b
13:               jal          ra, 7b
14:               jal          ra, 12b
15:               jal          t1, 10b
16:               jal          t1, 1b
17:               slti         a2, gp, 620
sub_3_20:         jal          t1, 7f
0:                jal          t1, 2f
1:                jal          s9, 8f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          t1, 5f
5:                jal          ra, 11f
6:                jal          t1, 0b
7:                jal          ra, 1b
8:                jal          gp, 10f
9:                jal          ra, 3b
10:               jal          ra, 9b
11:               addi         a3, t6, 666
sub_3_16:         jal          t1, 1f
0:                jal          ra, 12f
1:                jal          s10, 0b
2:                jal          ra, 9f
3:                jal          t1, 10f
4:                jal          ra, 20f
5:                jal          gp, 19f
6:                jal          ra, 14f
7:                jal          t1, 16f
8:                jal          sp, 15f
9:                jal          t6, 17f
10:               jal          a7, 11f
11:               jal          ra, 7b
12:               jal          ra, 5b
13:               jal          t1, 3b
14:               jal          a6, 18f
15:               jal          ra, 6b
16:               jal          sp, 8b
17:               jal          t1, 13b
18:               jal          ra, 4b
19:               jal          tp, 2b
20:               srl          t1, t2, s7
sub_3_33:         jal          t1, 2f
0:                jal          ra, 9f
1:                jal          gp, 12f
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          tp, 3b
5:                jal          t4, 8f
6:                jal          ra, 4b
7:                jal          t1, 0b
8:                jal          s5, 11f
9:                jal          s9, 6b
10:               jal          t1, 7b
11:               jal          t1, 10b
12:               srli         a7, s11, 1
sub_3_25:         jal          t1, 24f
0:                jal          ra, 28f
1:                jal          a0, 6f
2:                jal          t1, 20f
3:                jal          ra, 26f
4:                jal          ra, 29f
5:                jal          ra, 16f
6:                jal          ra, 2b
7:                jal          ra, 18f
8:                jal          ra, 14f
9:                jal          t1, 17f
10:               jal          sp, 25f
11:               jal          t1, 21f
12:               jal          t1, 7b
13:               jal          ra, 22f
14:               jal          tp, 9b
15:               jal          ra, 13b
16:               jal          ra, 10b
17:               jal          ra, 23f
18:               jal          t1, 3b
19:               jal          ra, 11b
20:               jal          ra, 4b
21:               jal          t1, 27f
22:               jal          ra, 19b
23:               jal          ra, 1b
24:               jal          t1, 12b
25:               jal          t1, 30f
26:               jal          ra, 0b
27:               jal          s5, 8b
28:               jal          t1, 15b
29:               jal          gp, 5b
30:               sra          a6, s5, t0
sub_3_23:         jal          t1, 2f
0:                jal          sp, 12f
1:                jal          ra, 14f
2:                jal          s10, 8f
3:                jal          ra, 16f
4:                jal          s4, 7f
5:                jal          tp, 15f
6:                jal          a7, 13f
7:                jal          t1, 1b
8:                jal          ra, 5b
9:                jal          t1, 6b
10:               jal          a1, 17f
11:               jal          t1, 4b
12:               jal          ra, 11b
13:               jal          a6, 0b
14:               jal          ra, 10b
15:               jal          ra, 3b
16:               jal          ra, 9b
17:               srl          t6, s8, s2
sub_3_8:          jal          t1, 5f
0:                jal          t1, 2f
1:                jal          ra, 25f
2:                jal          ra, 1b
3:                jal          ra, 16f
4:                jal          s9, 21f
5:                jal          t1, 22f
6:                jal          ra, 23f
7:                jal          ra, 20f
8:                jal          t1, 24f
9:                jal          s11, 15f
10:               jal          tp, 13f
11:               jal          s3, 0b
12:               jal          ra, 14f
13:               jal          s6, 4b
14:               jal          t1, 7b
15:               jal          t1, 11b
16:               jal          t1, 17f
17:               jal          ra, 18f
18:               jal          ra, 10b
19:               jal          t1, 27f
20:               jal          ra, 3b
21:               jal          t1, 9b
22:               jal          ra, 26f
23:               jal          ra, 12b
24:               jal          ra, 6b
25:               jal          ra, 19b
26:               jal          ra, 8b
27:               xori         s8, t1, -1771
sub_3_32:         jal          t1, 1f
0:                jal          sp, 3f
1:                jal          s1, 6f
2:                jal          t1, 10f
3:                jal          ra, 9f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 11f
10:               jal          ra, 8b
11:               or           s5, s2, gp
sub_3_28:         jal          t1, 20f
0:                jal          t1, 21f
1:                jal          ra, 10f
2:                jal          s10, 0b
3:                jal          ra, 24f
4:                jal          gp, 17f
5:                jal          ra, 3b
6:                jal          t1, 16f
7:                jal          ra, 5b
8:                jal          ra, 15f
9:                jal          a2, 12f
10:               jal          t1, 8b
11:               jal          t1, 19f
12:               jal          ra, 11b
13:               jal          ra, 23f
14:               jal          s5, 6b
15:               jal          ra, 13b
16:               jal          ra, 18f
17:               jal          s3, 14b
18:               jal          s5, 1b
19:               jal          gp, 2b
20:               jal          ra, 22f
21:               jal          a7, 4b
22:               jal          a0, 7b
23:               jal          t1, 25f
24:               jal          ra, 9b
25:               srli         a3, s2, 6
sub_3_0:          jal          t1, 5f
0:                jal          tp, 2f
1:                jal          t5, 11f
2:                jal          ra, 4f
3:                jal          ra, 0b
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          t1, 1b
7:                jal          a2, 3b
8:                jal          ra, 6b
9:                jal          ra, 10f
10:               jal          ra, 8b
11:               or           s9, s6, s6
sub_3_13:         jal          t1, 16f
0:                jal          ra, 17f
1:                jal          a6, 2f
2:                jal          ra, 10f
3:                jal          t1, 20f
4:                jal          ra, 0b
5:                jal          ra, 12f
6:                jal          sp, 5b
7:                jal          sp, 24f
8:                jal          t1, 1b
9:                jal          s10, 11f
10:               jal          ra, 6b
11:               jal          a1, 23f
12:               jal          tp, 7b
13:               jal          ra, 19f
14:               jal          tp, 9b
15:               jal          t1, 14b
16:               jal          ra, 8b
17:               jal          t1, 13b
18:               jal          ra, 22f
19:               jal          a3, 18b
20:               jal          a2, 15b
21:               jal          gp, 3b
22:               jal          t1, 25f
23:               jal          ra, 4b
24:               jal          t1, 21b
25:               sub          sp, a5, a3
sub_3_34:         jal          t1, 5f
0:                jal          gp, 8f
1:                jal          t1, 12f
2:                jal          t1, 11f
3:                jal          a2, 9f
4:                jal          ra, 23f
5:                jal          ra, 6f
6:                jal          ra, 26f
7:                jal          sp, 4b
8:                jal          ra, 16f
9:                jal          a6, 1b
10:               jal          t5, 2b
11:               jal          tp, 20f
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               jal          s2, 3b
15:               jal          tp, 27f
16:               jal          tp, 21f
17:               jal          ra, 25f
18:               jal          ra, 19f
19:               jal          ra, 13b
20:               jal          sp, 15b
21:               jal          t4, 24f
22:               jal          tp, 7b
23:               jal          ra, 18b
24:               jal          tp, 17b
25:               jal          ra, 10b
26:               jal          ra, 22b
27:               slt          s9, t6, a6
sub_3_29:         jal          t1, 2f
0:                jal          ra, 9f
1:                jal          t6, 13f
2:                jal          ra, 3f
3:                jal          gp, 0b
4:                jal          s3, 11f
5:                jal          ra, 6f
6:                jal          ra, 8f
7:                jal          ra, 4b
8:                jal          t1, 10f
9:                jal          t1, 5b
10:               jal          sp, 7b
11:               jal          gp, 12f
12:               jal          t1, 1b
13:               slt          a1, a2, ra
sub_3_30:         jal          t1, 14f
0:                jal          t4, 11f
1:                jal          ra, 13f
2:                jal          a4, 10f
3:                jal          t1, 2b
4:                jal          t1, 1b
5:                jal          sp, 15f
6:                jal          ra, 9f
7:                jal          ra, 4b
8:                jal          ra, 12f
9:                jal          s1, 7b
10:               jal          sp, 5b
11:               jal          ra, 3b
12:               jal          ra, 0b
13:               jal          t1, 8b
14:               jal          s0, 6b
15:               srai         s2, a1, 16
sub_3_36:         jal          t1, 0f
0:                jal          ra, 6f
1:                jal          ra, 8f
2:                jal          t1, 9f
3:                jal          s5, 17f
4:                jal          ra, 20f
5:                jal          t1, 23f
6:                jal          sp, 25f
7:                jal          t5, 10f
8:                jal          sp, 21f
9:                jal          a3, 18f
10:               jal          ra, 13f
11:               jal          ra, 14f
12:               jal          ra, 19f
13:               jal          t1, 11b
14:               jal          sp, 12b
15:               jal          ra, 5b
16:               jal          ra, 7b
17:               jal          a6, 16b
18:               jal          ra, 15b
19:               jal          ra, 1b
20:               jal          s1, 26f
21:               jal          ra, 22f
22:               jal          ra, 24f
23:               jal          tp, 4b
24:               jal          s8, 2b
25:               jal          ra, 3b
26:               sll          a3, gp, t0
sub_3_19:         jal          t1, 9f
0:                jal          t2, 8f
1:                jal          ra, 7f
2:                jal          t1, 14f
3:                jal          ra, 5f
4:                jal          ra, 12f
5:                jal          ra, 10f
6:                jal          t1, 11f
7:                jal          ra, 18f
8:                jal          tp, 15f
9:                jal          ra, 2b
10:               jal          a2, 1b
11:               jal          ra, 0b
12:               jal          a2, 13f
13:               jal          t1, 6b
14:               jal          s8, 4b
15:               jal          ra, 17f
16:               jal          ra, 3b
17:               jal          t1, 16b
18:               srai         s3, a7, 27
sub_3_11:         jal          t1, 5f
0:                jal          ra, 13f
1:                jal          ra, 0b
2:                jal          t1, 15f
3:                jal          ra, 7f
4:                jal          t1, 17f
5:                jal          t1, 3b
6:                jal          ra, 4b
7:                jal          a7, 14f
8:                jal          gp, 2b
9:                jal          ra, 8b
10:               jal          ra, 16f
11:               jal          ra, 18f
12:               jal          t1, 6b
13:               jal          ra, 9b
14:               jal          ra, 1b
15:               jal          a1, 10b
16:               jal          ra, 12b
17:               jal          ra, 11b
18:               sltu         s0, t0, t4
sub_3_24:         jal          t1, 15f
0:                jal          ra, 11f
1:                jal          ra, 17f
2:                jal          ra, 16f
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          ra, 0b
6:                jal          t1, 1b
7:                jal          t1, 2b
8:                jal          ra, 10f
9:                jal          t1, 6b
10:               jal          ra, 14f
11:               jal          ra, 13f
12:               jal          ra, 9b
13:               jal          ra, 8b
14:               jal          ra, 12b
15:               jal          tp, 7b
16:               jal          ra, 3b
17:               slli         t1, a7, 25
sub_3_2:          jal          t1, 1f
0:                jal          ra, 10f
1:                jal          ra, 3f
2:                jal          t1, 5f
3:                jal          gp, 13f
4:                jal          t1, 0b
5:                jal          t1, 7f
6:                jal          t4, 11f
7:                jal          a1, 8f
8:                jal          ra, 14f
9:                jal          a1, 6b
10:               jal          t1, 2b
11:               jal          ra, 12f
12:               jal          t1, 15f
13:               jal          s11, 4b
14:               jal          ra, 9b
15:               and          a1, t2, t3
sub_3_31:         jal          t1, 8f
0:                jal          ra, 7f
1:                jal          ra, 26f
2:                jal          t4, 21f
3:                jal          ra, 11f
4:                jal          sp, 14f
5:                jal          t1, 20f
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          ra, 1b
9:                jal          ra, 19f
10:               jal          s11, 18f
11:               jal          s5, 22f
12:               jal          ra, 29f
13:               jal          a2, 3b
14:               jal          ra, 15f
15:               jal          a1, 9b
16:               jal          t1, 24f
17:               jal          t1, 10b
18:               jal          t1, 0b
19:               jal          ra, 16b
20:               jal          ra, 23f
21:               jal          ra, 13b
22:               jal          t1, 27f
23:               jal          ra, 25f
24:               jal          t1, 6b
25:               jal          ra, 28f
26:               jal          t1, 17b
27:               jal          a4, 12b
28:               jal          ra, 2b
29:               sltu         s1, s0, t5
sub_3_22:         jal          t1, 20f
0:                jal          t1, 12f
1:                jal          ra, 23f
2:                jal          ra, 8f
3:                jal          t4, 9f
4:                jal          s2, 10f
5:                jal          t1, 0b
6:                jal          t1, 16f
7:                jal          tp, 19f
8:                jal          ra, 7b
9:                jal          ra, 6b
10:               jal          t1, 18f
11:               jal          ra, 13f
12:               jal          t1, 2b
13:               jal          ra, 15f
14:               jal          t1, 5b
15:               jal          t1, 4b
16:               jal          ra, 21f
17:               jal          ra, 3b
18:               jal          ra, 17b
19:               jal          t1, 1b
20:               jal          t1, 11b
21:               jal          t1, 22f
22:               jal          tp, 14b
23:               xor          s6, t0, t2
sub_3_14:         jal          t1, 15f
0:                jal          t1, 4f
1:                jal          ra, 10f
2:                jal          ra, 8f
3:                jal          t1, 7f
4:                jal          ra, 2b
5:                jal          ra, 13f
6:                jal          a6, 9f
7:                jal          t1, 14f
8:                jal          ra, 11f
9:                jal          a1, 16f
10:               jal          ra, 19f
11:               jal          s0, 6b
12:               jal          t1, 23f
13:               jal          t1, 3b
14:               jal          gp, 21f
15:               jal          t1, 0b
16:               jal          ra, 22f
17:               jal          ra, 12b
18:               jal          ra, 17b
19:               jal          t1, 5b
20:               jal          ra, 18b
21:               jal          t1, 20b
22:               jal          t1, 1b
23:               xor          s0, a5, s5
sub_3_38:         jal          t1, 20f
0:                jal          sp, 11f
1:                jal          ra, 15f
2:                jal          ra, 9f
3:                jal          ra, 8f
4:                jal          t1, 19f
5:                jal          ra, 6f
6:                jal          ra, 0b
7:                jal          t1, 16f
8:                jal          ra, 5b
9:                jal          ra, 1b
10:               jal          ra, 3b
11:               jal          t1, 14f
12:               jal          ra, 13f
13:               jal          sp, 7b
14:               jal          a5, 21f
15:               jal          ra, 10b
16:               jal          ra, 18f
17:               jal          gp, 2b
18:               jal          ra, 17b
19:               jal          t1, 12b
20:               jal          s11, 4b
21:               xori         a1, t1, -1703
                  slt          s0, s5, s1
                  add          gp, t6, t5
                  add          s9, a3, s2
                  bgeu         t0, s3, 7f
                  beq          ra, a3, 11f
                  xori         s0, a1, -789
                  ori          a5, s5, -1392
7:                bge          a3, gp, 10f
                  lui          tp, 857418
                  sltu         s6, s4, a7
10:               blt          s2, s11, 18f
11:               or           s6, s7, s4
                  bltu         s10, a2, 13f
13:               sltu         s3, a1, t4
                  slt          s0, gp, s11
                  slti         s4, t5, -1823
                  ori          t6, ra, 591
                  xor          s4, zero, a0
18:               xor          t5, s1, s1
                  sll          a3, t5, t5
                  nop
                  bgeu         t4, t6, 35f
                  ori          a1, s10, -1566
                  sltiu        a4, a2, 667
                  bge          s2, s10, 36f
                  add          s10, t1, ra
                  ori          s4, t4, 1280
                  sra          s4, s2, a1
                  bltu         a6, s1, 34f
                  xor          s9, t4, s11
                  slti         s11, t1, -910
                  xor          s4, t0, s0
                  blt          a1, s10, 40f
                  srli         s1, s9, 26
34:               ori          a5, a3, -1622
35:               bne          a2, a1, 49f
36:               nop
                  srai         s5, t2, 12
                  bgeu         a2, s3, 42f
                  nop
40:               blt          t1, t2, 54f
                  xor          a7, a7, gp
42:               bltu         s5, s1, 50f
                  sltiu        s2, t0, 599
                  or           a4, a5, a1
                  bgeu         t3, a4, 53f
                  addi         s11, a5, 689
                  addi         t6, t2, 1911
                  sub          a2, s4, a7
49:               xor          a6, a4, a0
50:               xori         a2, a7, 1862
                  blt          s11, t1, 62f
                  auipc        t2, 598435
53:               addi         s0, t6, -865
54:               blt          t3, sp, 66f
                  and          a5, t2, a6
                  xor          a5, zero, a5
                  xor          a3, t2, s8
                  srl          t6, t3, t4
                  addi         t5, zero, 1845
                  srai         a0, tp, 29
                  auipc        s3, 674678
62:               addi         a2, s9, 1234
                  xori         a1, s5, -1934
                  sltiu        s10, a7, -1702
                  bge          s9, s2, 70f
66:               and          a0, s10, a7
                  sltu         t2, gp, tp
                  nop
                  ori          sp, t1, 500
70:               sll          t4, a4, s10
                  lui          a6, 968139
                  bge          s8, t6, 85f
                  sub          s1, t5, a5
                  sltiu        a3, ra, 1264
                  and          ra, s2, zero
                  srl          a6, t4, ra
                  sll          s4, s4, t1
                  sll          a0, t5, a6
                  auipc        t2, 489934
                  sra          t6, s0, s3
                  xori         a0, sp, 1244
                  bne          sp, s5, 102f
                  or           s8, a6, t0
                  and          ra, t2, s4
85:               slti         t6, zero, 1348
                  slti         s3, sp, -1384
                  lui          a4, 870546
                  bgeu         a5, ra, 98f
                  srl          ra, tp, ra
                  srl          s10, s11, ra
                  nop
                  or           s2, t6, s3
                  sub          s11, t4, s2
                  xori         s6, tp, 255
                  sra          a1, a3, t3
                  addi         s1, s5, -1364
                  sra          a7, s2, a1
98:               ori          s0, t4, 1387
                  xor          gp, s3, a5
                  sll          s3, gp, gp
                  bltu         a5, s11, 116f
102:              srai         t5, a2, 25
                  bltu         t2, s2, 120f
                  and          tp, ra, a2
                  addi         s2, a2, 1685
                  sltu         s10, ra, gp
                  auipc        a5, 510850
                  srli         a2, s10, 23
                  or           a4, ra, a6
                  and          gp, t4, s7
                  bgeu         s5, gp, 117f
                  beq          t1, a2, 113f
113:              bgeu         a7, s8, 130f
                  sltu         s1, t4, a6
                  xori         s10, tp, -518
116:              add          s0, t5, t2
117:              andi         sp, s10, -1035
                  sll          s5, a4, gp
                  xor          tp, s7, s0
120:              bgeu         sp, s3, 130f
                  nop
                  sltu         s9, a6, s8
                  blt          a1, t1, 124f
124:              srai         s1, zero, 26
                  srli         t4, s10, 29
                  bne          a6, s2, 137f
                  lui          a3, 926717
                  srai         t6, a0, 22
                  sub          s6, a0, s0
130:              blt          t1, t2, 149f
                  and          ra, s1, t4
                  xor          t5, s0, s7
                  sll          t4, t4, s9
                  auipc        t4, 999480
                  add          t4, tp, t6
                  sll          a4, a6, s3
137:              sltu         a5, t0, s10
                  xor          s3, s7, s4
                  srli         sp, t1, 3
                  sltu         tp, a4, s7
                  blt          s4, s7, 150f
                  sub          a1, s6, s0
                  sra          s2, a1, a2
                  srai         a0, t2, 1
                  sub          a0, ra, s7
                  slli         s9, zero, 12
                  bgeu         s1, a6, 153f
                  slti         s9, s3, -1905
149:              srli         s3, t4, 22
150:              sltiu        sp, t6, 1291
                  and          s2, a6, a1
                  slt          s3, s2, s6
153:              slli         a6, s0, 24
                  addi         s9, a2, -657
                  xor          a1, s1, t6
                  or           t2, a5, zero
                  auipc        s9, 247935
                  add          a7, t5, zero
                  auipc        a6, 780161
                  sltu         t1, s2, gp
                  ori          a2, t6, -506
                  xor          t4, a3, s6
                  blt          s3, tp, 172f
                  bne          t0, t1, 176f
                  or           s9, s9, s8
                  ori          a5, s7, -738
                  sub          t4, s0, a1
                  slti         gp, s2, -526
                  srli         s9, s6, 13
                  andi         s11, a1, -553
                  auipc        t1, 852331
172:              add          zero, s7, s10
                  addi         s10, a4, 1709
                  slli         s5, s2, 7
                  lui          s11, 131126
176:              srai         sp, t6, 13
                  sll          t4, a5, zero
                  beq          t2, s10, 197f
                  srl          gp, s2, a5
                  beq          zero, a5, 194f
                  ori          t1, a2, 137
                  and          a2, s7, a6
                  xori         t5, a2, -2032
                  blt          a7, t2, 201f
                  sltiu        zero, a5, 522
                  bgeu         zero, a5, 199f
                  srli         s4, s1, 13
                  and          s9, s7, t3
                  xor          s3, t5, sp
                  or           t1, a4, s11
                  sltu         a0, a1, s8
                  lui          sp, 38232
                  bge          t2, s2, 197f
194:              srai         a4, s3, 29
                  sltiu        t4, t3, 1830
                  addi         a5, t0, 1947
197:              and          s3, s7, ra
                  slt          a5, a5, s9
199:              xor          s11, s5, s7
                  bge          s5, s0, 210f
201:              srl          s4, ra, ra
                  sltu         s9, ra, ra
                  bge          tp, a6, 204f
204:              slti         s1, a4, 129
                  nop
                  srai         s5, tp, 5
                  slti         a5, t6, 661
                  or           a4, tp, s6
                  bne          a6, t0, 212f
210:              bne          t2, a0, 224f
                  add          zero, a3, t3
212:              nop
                  sltiu        t2, a0, -574
                  or           s5, sp, t1
                  bgeu         s1, s8, 225f
                  slt          a6, a6, t5
                  addi         a5, s0, 140
                  xor          a2, a1, gp
                  bgeu         a5, zero, 225f
                  or           s2, s11, a7
                  blt          a4, s11, 229f
                  and          s3, s4, zero
                  bltu         t0, s4, 224f
224:              sub          s3, a6, ra
225:              bge          s0, s0, 237f
                  blt          s3, s9, 234f
                  slt          s2, a0, gp
                  slli         s0, s8, 24
229:              srli         a1, a0, 23
                  sll          s4, t0, gp
                  add          t2, s0, s4
                  xori         s2, a6, 1106
                  xori         s8, t5, 1348
234:              bgeu         sp, s5, 254f
                  xor          sp, t5, t1
                  bne          t1, ra, 247f
237:              and          t2, a1, s11
                  blt          s7, gp, 249f
                  xori         t4, t3, 1292
                  ori          s11, s3, -1187
                  or           a1, s5, sp
                  bltu         s11, t1, 257f
                  andi         t1, s1, -516
                  sltu         s10, gp, a2
                  xori         s6, s4, 297
                  bne          t1, a6, 247f
247:              slli         a0, sp, 23
                  and          zero, t3, s9
249:              slti         t6, t6, 39
                  xor          s11, a7, t4
                  and          t2, s0, s4
                  srli         s8, s4, 10
                  ori          t2, sp, -160
254:              sub          a2, s9, s3
                  lui          s2, 77927
                  sra          a2, a2, s9
257:              and          a5, s5, s2
                  beq          s10, tp, 262f
                  auipc        t6, 797604
                  slt          t6, t5, s11
                  andi         t6, s4, 850
262:              bgeu         a0, a3, 270f
                  auipc        a2, 962951
                  xori         s2, s0, 559
                  srai         gp, sp, 14
                  or           zero, a4, s0
                  xor          a5, s8, sp
                  andi         a4, t4, 9
sub_3_15:         jal          t1, 10f
0:                jal          ra, 11f
1:                jal          ra, 14f
2:                jal          ra, 3f
3:                jal          ra, 12f
4:                jal          ra, 16f
5:                jal          ra, 7f
6:                jal          s9, 13f
7:                jal          ra, 22f
8:                jal          t1, 5b
9:                jal          ra, 21f
10:               jal          t1, 8b
11:               jal          s11, 4b
12:               jal          ra, 17f
13:               jal          t5, 2b
14:               jal          t1, 9b
15:               jal          ra, 19f
16:               jal          ra, 20f
17:               jal          gp, 15b
18:               jal          sp, 23f
19:               jal          ra, 18b
20:               jal          s1, 6b
21:               jal          ra, 0b
22:               jal          tp, 1b
23:               srl          s5, t6, s8
                  andi         a0, ra, -1903
270:              ori          a3, a6, 399
                  nop
                  slti         a5, t6, -245
                  beq          s10, ra, 281f
                  srl          s4, s10, s10
                  sll          s2, t3, a2
                  slti         gp, s1, 1655
                  bgeu         a4, t2, 282f
                  xori         a4, t0, 582
                  sltiu        tp, tp, 276
                  slt          a6, a6, s7
281:              auipc        s4, 275456
282:              auipc        ra, 280612
                  and          a5, s1, s5
                  addi         s2, a0, 1661
                  sltiu        a4, a4, 48
                  xori         t1, a1, -1352
                  blt          s3, tp, 301f
                  lui          s9, 137628
                  andi         s8, tp, 1789
                  sub          s0, t4, s8
                  bne          s8, s7, 298f
                  sltiu        s2, t6, -1434
                  auipc        s4, 129442
                  beq          s5, a2, 311f
                  bne          tp, s5, 308f
                  addi         zero, ra, 379
                  nop
298:              lui          s5, 215305
                  xor          gp, s1, s5
                  beq          s10, a6, 311f
301:              nop
                  xor          s8, gp, s9
                  andi         gp, s9, 361
                  nop
                  add          tp, tp, s6
                  srl          a3, s0, a6
                  ori          s9, tp, 423
308:              slt          s3, a0, t3
                  slti         zero, s1, -1876
                  blt          s11, a6, 314f
311:              sltu         ra, t1, sp
                  xor          a2, a2, a0
                  sra          s0, gp, a1
314:              lui          t6, 900334
                  slli         a1, s11, 16
                  sltu         s4, s6, zero
                  sll          s4, s3, a6
                  srai         a3, s0, 23
                  sub          t5, s7, tp
                  sltiu        s2, ra, -1935
                  srli         a4, s10, 25
                  xori         t6, a5, -1656
                  addi         s11, tp, 940
                  sll          a6, t0, a1
                  xor          a2, s5, s6
                  ori          a0, s0, -74
                  xori         ra, s6, 1724
                  bltu         s4, a1, 333f
                  addi         a5, s11, 1494
                  blt          a4, s7, 331f
331:              bltu         t1, t0, 337f
                  add          a6, a7, a7
333:              nop
                  sll          a5, t6, s11
                  andi         s8, s7, -634
                  ori          s3, zero, -2025
337:              nop
                  slt          s0, s9, s6
                  slt          s8, s7, t6
                  bge          s8, s6, 360f
                  sltiu        a3, s7, -668
                  andi         s11, ra, 1086
                  andi         a0, t2, 1718
                  sub          t1, a2, s4
                  auipc        a7, 19260
                  bltu         s7, zero, 350f
                  slli         s10, a6, 4
                  lui          a5, 141533
                  nop
350:              sltu         a3, t1, s4
                  srli         zero, a7, 5
                  or           tp, s2, s6
                  addi         a2, zero, 1579
                  sub          t2, s9, ra
                  slti         sp, s7, -1315
                  bne          ra, t3, 370f
                  xori         a6, s8, -325
                  srl          s5, a4, t5
                  or           s4, s5, s10
360:              srli         s11, zero, 10
                  andi         s6, t4, 994
                  nop
                  sltu         zero, s6, zero
                  bne          zero, s0, 378f
                  auipc        s1, 938328
                  slli         s4, t0, 5
                  slli         a5, a7, 29
                  bgeu         a0, s2, 382f
                  sub          s6, zero, sp
370:              bgeu         a3, sp, 371f
371:              slt          zero, s7, zero
                  bge          s1, gp, 391f
                  andi         t6, t2, 606
                  andi         sp, a2, -306
                  slt          a0, a0, a4
                  lui          t6, 523718
                  and          t2, zero, a1
378:              blt          sp, s5, 385f
                  bgeu         gp, s9, 396f
                  and          s8, t4, a0
                  srl          a2, a1, t2
382:              bltu         s11, t5, 390f
                  slti         zero, gp, -1488
                  auipc        s1, 420801
385:              xori         t6, a6, -1715
                  slli         s6, t1, 0
                  slli         a4, a2, 29
                  srai         s9, a4, 27
                  sltiu        sp, s3, -1397
390:              xori         a6, gp, -303
391:              addi         t2, s9, -208
                  auipc        a1, 916703
                  andi         s9, sp, 749
                  auipc        s4, 757005
                  sub          s4, a7, t6
396:              nop
                  bge          t5, s4, 403f
                  and          tp, s9, s9
                  slti         a5, s8, -1229
                  addi         s9, s11, 567
                  ori          ra, a7, 1389
                  sltu         a0, gp, s1
403:              bge          t1, a6, 411f
                  sra          s5, s1, t0
                  andi         s5, t2, -195
                  xori         s10, s5, -378
                  lui          a4, 315353
                  xor          a7, a0, t0
                  lui          sp, 119762
                  bgeu         t3, s9, 422f
411:              sra          s10, a3, s10
                  bltu         t5, a3, 420f
                  sll          t4, s3, s8
                  slt          ra, t2, zero
                  sltiu        s3, a7, 1535
                  bltu         a3, a5, 425f
                  sltu         a1, s2, s7
                  srli         s3, a2, 0
                  srli         a1, s1, 23
420:              or           tp, s2, t4
                  xor          s10, a1, t2
422:              xor          s11, t4, s9
                  bge          tp, a6, 440f
                  slli         a6, t4, 5
425:              bge          a2, zero, 433f
                  lui          s8, 647289
                  beq          s2, s11, 439f
                  ori          a0, t5, 2018
                  beq          s1, s7, 430f
430:              addi         t5, a7, -1644
                  srai         sp, s6, 20
                  bgeu         tp, t1, 442f
433:              or           ra, t5, t4
                  nop
                  slli         a2, s10, 13
                  blt          ra, a6, 447f
                  bgeu         sp, s4, 447f
                  sltu         a6, s4, s10
439:              ori          t2, a4, -440
440:              and          t5, a0, s8
                  auipc        t1, 48118
442:              bgeu         s6, s2, 445f
                  or           s2, s2, s6
                  addi         t5, a6, 372
445:              sltu         t1, a2, s2
                  or           a5, a6, a4
447:              bge          t2, s3, 462f
                  slt          a0, a6, sp
                  add          a2, s3, t1
                  or           a4, a1, s1
                  sub          a0, a0, s8
                  bge          a1, s0, 455f
                  sub          t1, t5, zero
                  srai         ra, a4, 26
455:              lui          t6, 21199
                  add          s9, a6, t1
                  srai         s1, s3, 14
                  or           a2, t2, ra
                  andi         s10, s6, -736
                  srli         t6, a6, 16
                  addi         t1, t3, 78
462:              and          tp, a3, a7
                  bgeu         t2, s10, 480f
                  andi         s0, t5, 1382
                  sltiu        t4, s2, -1249
                  srl          t4, t1, s9
                  slli         s0, s8, 13
                  srai         s9, s0, 5
                  nop
                  addi         s4, t2, 179
                  ori          a1, sp, 867
                  slt          t1, s4, t4
                  lui          zero, 236995
                  bne          a1, a5, 475f
475:              sra          s10, t4, t1
                  sltu         s1, t6, s10
                  slti         zero, s11, -948
                  lui          gp, 743749
                  sub          s3, a4, a7
480:              add          t5, s7, tp
                  srli         s9, a6, 17
                  or           t6, ra, sp
                  lui          s9, 701267
                  ori          a4, ra, 1556
                  bge          tp, s3, 505f
                  srli         t5, s11, 25
                  auipc        s2, 1028710
                  beq          s0, s4, 494f
                  bge          s5, s10, 500f
                  and          s5, a3, a4
                  sll          a1, sp, s8
                  bgeu         s3, t5, 500f
                  bgeu         ra, t4, 507f
494:              srl          t2, a3, tp
                  slli         t2, a4, 5
                  slli         s10, s0, 31
                  slti         s11, s5, 1050
                  xor          ra, gp, s6
                  or           gp, t1, gp
500:              sra          a1, a5, s6
                  or           s11, a4, zero
                  bne          a1, t1, 516f
                  or           a4, s8, a6
                  sll          s3, t0, a3
505:              or           sp, s2, a2
                  nop
507:              srl          s10, a2, tp
                  srl          s0, a2, s1
                  sltu         a1, s10, tp
                  xori         t2, a3, -1094
                  nop
                  sltiu        s2, t0, 650
                  sub          ra, s1, a7
                  and          s0, s3, t0
                  auipc        sp, 147693
516:              nop
                  xor          s10, a2, s8
                  sll          ra, ra, t3
                  sll          a1, s7, s11
                  beq          a5, s8, 533f
                  srl          ra, t4, s2
                  slti         ra, ra, -2048
                  ori          ra, t2, 1856
                  sub          t1, s8, t4
                  slt          t5, s10, s4
                  slli         t5, a4, 9
                  srl          t6, t1, t1
                  xor          tp, s6, a5
                  srli         s3, s7, 15
                  add          t1, t6, s10
                  blt          gp, sp, 540f
                  nop
533:              srli         a5, tp, 20
                  andi         t6, t5, -1171
                  srl          a1, s7, a2
                  addi         s4, s3, -478
                  sub          a0, t6, zero
                  auipc        gp, 850809
                  sub          a5, a2, s11
sub_3_9:          jal          t1, 9f
0:                jal          ra, 2f
1:                jal          ra, 0b
2:                jal          gp, 15f
3:                jal          ra, 5f
4:                jal          ra, 8f
5:                jal          s4, 1b
6:                jal          t1, 16f
7:                jal          ra, 10f
8:                jal          ra, 14f
9:                jal          ra, 11f
10:               jal          t1, 17f
11:               jal          ra, 3b
12:               jal          t1, 4b
13:               jal          s3, 12b
14:               jal          t1, 18f
15:               jal          t1, 6b
16:               jal          sp, 7b
17:               jal          ra, 13b
18:               slt          a3, s0, a4
540:              srl          zero, sp, s2
                  bne          gp, s2, 549f
                  add          s8, s10, t1
                  and          t5, t2, s3
                  lui          s2, 702769
                  slti         t1, t1, 1986
                  bne          s2, s10, 552f
                  auipc        t5, 920333
                  sub          s4, a4, s1
549:              sra          s0, gp, s0
                  sra          a0, tp, t2
                  lui          a3, 380212
552:              sra          a5, s0, t5
                  sltu         a3, t4, t2
                  bge          s5, s6, 565f
                  bltu         a0, s4, 574f
                  bltu         sp, s1, 563f
                  slt          a2, zero, t1
                  add          t2, t3, s7
                  nop
                  sltu         s3, a0, zero
                  sltiu        gp, a6, -998
                  sub          s11, sp, a4
563:              andi         a1, s2, -609
                  srli         a5, t2, 11
565:              sltu         s3, s8, s10
                  xor          a3, s2, t4
                  lui          t1, 885616
                  lui          s1, 265543
                  sltu         a7, a6, a2
                  srl          a3, a0, s11
                  beq          s6, a5, 586f
                  sltiu        t2, a3, -711
                  or           a3, s10, t1
574:              bne          s8, zero, 578f
                  bne          gp, t4, 587f
                  xori         gp, a0, -886
                  srli         s3, t6, 19
578:              sra          a4, s4, sp
                  sll          a6, s4, s7
                  sltiu        a4, gp, 1975
                  sll          gp, t1, s9
                  slli         s8, s6, 3
                  bne          t2, tp, 593f
                  andi         sp, s9, 421
                  beq          t4, s6, 597f
586:              slti         s9, s3, 1108
587:              xor          zero, a6, a2
                  addi         s0, s10, -436
                  bne          a1, s5, 603f
                  ori          a4, a2, -536
                  srli         a6, t6, 23
                  sll          a5, tp, s1
593:              sltu         s10, s6, s8
                  xor          t2, s1, a2
                  srai         s9, t6, 19
                  xori         s2, s6, -1700
597:              bgeu         a7, t5, 605f
                  xori         s6, s9, 1525
                  auipc        gp, 657921
                  srl          t1, sp, a5
                  xor          t5, s1, t5
                  or           a4, s4, s0
603:              srai         a6, t6, 12
                  sra          s11, s4, s0
605:              or           a5, ra, a7
                  lui          tp, 963456
                  beq          tp, a7, 611f
                  or           s8, a1, a0
                  slli         gp, t4, 0
                  slt          s3, s4, s4
611:              bge          s0, zero, 628f
                  add          a3, zero, a6
                  bne          a1, a4, 618f
                  sub          s9, s10, ra
                  ori          s8, t0, -288
                  srai         a5, a6, 1
                  ori          s1, s1, 382
618:              auipc        a0, 214808
                  add          gp, s1, s1
                  slli         s10, t1, 26
                  ori          ra, t0, 250
                  sll          a3, s11, s4
                  bltu         t2, t5, 631f
                  sltiu        t1, s6, -384
sub_3_1:          jal          t1, 15f
0:                jal          t1, 23f
1:                jal          ra, 24f
2:                jal          ra, 20f
3:                jal          ra, 4f
4:                jal          ra, 19f
5:                jal          ra, 10f
6:                jal          s11, 21f
7:                jal          t6, 9f
8:                jal          t5, 14f
9:                jal          t1, 1b
10:               jal          t1, 8b
11:               jal          t1, 7b
12:               jal          t1, 13f
13:               jal          ra, 2b
14:               jal          ra, 18f
15:               jal          a4, 22f
16:               jal          t1, 0b
17:               jal          t1, 26f
18:               jal          s0, 6b
19:               jal          ra, 11b
20:               jal          ra, 16b
21:               jal          ra, 3b
22:               jal          ra, 12b
23:               jal          a0, 5b
24:               jal          gp, 25f
25:               jal          s1, 17b
26:               sub          s5, a6, t4
                  sltiu        s5, t4, -1633
                  srli         s0, t1, 7
                  sra          s0, s2, ra
628:              bgeu         a1, gp, 638f
                  slli         s5, s8, 25
                  auipc        ra, 391158
631:              blt          a6, s3, 632f
632:              ori          s4, s0, -1000
                  srai         s0, t0, 7
                  and          a1, s8, a7
                  sll          s9, s10, zero
                  sub          a1, s2, a2
                  addi         sp, t0, -1320
638:              sltiu        a5, t5, -774
                  and          t2, s0, s8
                  bltu         t4, a6, 641f
641:              auipc        s6, 504696
                  sub          a7, s11, s7
                  sub          s0, a5, s2
                  bgeu         s1, a6, 663f
                  auipc        a2, 379671
                  xori         s8, sp, 1984
                  add          a4, tp, t4
                  sltu         a3, a1, a1
                  lui          s8, 526309
                  srl          sp, a4, t0
                  bltu         t3, s9, 652f
652:              srai         a0, s11, 16
                  sub          a1, a3, s6
                  ori          t4, a6, -2045
                  or           tp, t2, a3
                  sub          ra, s0, a5
                  blt          s2, t3, 667f
                  blt          a0, s3, 672f
                  slti         a4, s5, 329
                  sub          a0, sp, a2
                  blt          s2, zero, 681f
                  sltiu        s4, s3, -1150
663:              auipc        ra, 966429
                  sltu         s5, a3, a2
                  beq          a1, t6, 670f
                  bgeu         s2, t6, 667f
667:              bge          s9, a5, 668f
668:              lui          s2, 139702
                  srai         s6, a6, 26
670:              bne          s9, t4, 681f
                  addi         a5, t2, -1273
672:              sub          s6, s6, t0
                  slti         a5, a7, 508
                  sll          t6, s3, t1
                  bgeu         t6, s7, 683f
                  slti         s2, s8, -195
                  srli         s3, t3, 9
                  slli         a6, s9, 11
                  bge          t4, s3, 687f
                  beq          s5, t2, 689f
681:              bne          s1, s2, 698f
                  xori         t5, s8, -313
683:              blt          t5, s11, 693f
                  sll          t4, a6, s4
                  andi         t5, a6, 918
                  xori         s2, s5, -675
687:              ori          t1, t2, -116
                  slti         a5, s1, -223
689:              sub          a7, s0, s7
                  sltiu        s11, gp, 855
                  auipc        a7, 329742
                  sra          s11, a0, t0
693:              srl          t6, a1, tp
                  addi         a6, a6, -1218
                  slt          t6, tp, sp
                  lui          s11, 287285
                  sltiu        s3, s9, -73
698:              nop
                  blt          t0, s9, 706f
                  sub          s0, a7, s10
                  blt          s6, s5, 714f
                  srl          s4, s3, t5
                  or           a2, s5, sp
                  xori         a4, s5, -677
                  slt          t6, a2, s4
706:              beq          s9, tp, 718f
                  ori          s11, s3, 775
                  sll          s8, t0, s9
                  nop
                  add          s1, s11, zero
                  xori         tp, s9, -104
                  sltu         t5, s1, s8
                  xor          a7, s3, s7
714:              andi         a0, t4, -1821
                  slt          s2, a2, sp
                  andi         s9, s5, 1672
                  bge          t4, s5, 721f
718:              srl          a0, a5, t4
                  beq          s2, s10, 722f
                  srai         s5, t4, 24
721:              blt          gp, a5, 729f
722:              beq          s5, s10, 728f
                  sltu         s8, sp, ra
                  srai         s0, t6, 4
                  and          gp, a6, t1
                  beq          s4, s6, 732f
                  srai         a6, t1, 17
728:              and          a2, ra, s4
729:              ori          sp, t6, -808
                  xor          t2, s4, t1
                  and          s3, s10, a3
732:              or           sp, s9, t0
                  bge          t4, t6, 747f
                  slt          gp, a1, a6
                  blt          s4, s9, 749f
                  beq          t2, s10, 748f
                  srli         a3, s10, 29
                  addi         t5, t0, 1235
                  and          a3, a2, a5
                  addi         s11, a2, 1491
                  srli         s4, ra, 12
                  sub          t1, a6, t1
                  sll          t2, t4, s1
                  and          a7, s9, a5
                  slt          gp, ra, a2
                  and          gp, ra, t4
747:              bge          s2, t1, 762f
748:              sltu         t2, s3, s1
749:              lui          ra, 749942
                  ori          a4, t0, -1660
                  bltu         sp, s4, 759f
                  andi         s4, s10, -111
                  slli         a5, t2, 8
                  nop
                  addi         a4, a7, -48
                  srai         zero, s3, 2
                  bgeu         t4, s5, 768f
                  slli         zero, s4, 4
759:              beq          s5, a7, 763f
                  auipc        a5, 505537
                  sltiu        a7, a3, 1902
762:              bgeu         s1, a7, 779f
763:              bltu         tp, s10, 764f
764:              slli         t5, s11, 24
                  xori         t5, t0, -1675
                  slli         a2, s1, 13
                  add          s5, s7, s5
768:              andi         a0, zero, -425
                  andi         t4, t4, 1175
                  slt          zero, a0, a3
                  srl          a3, a7, zero
                  sra          a7, s4, s11
                  slt          a2, t4, t4
                  slli         s9, s1, 18
                  slli         a1, a4, 22
                  ori          a2, a4, 1978
                  xori         t1, a2, 1597
                  slti         s10, s9, 185
779:              lui          tp, 286694
                  ori          s1, a1, 1346
                  slt          a0, s0, t2
                  bltu         a2, t6, 799f
                  addi         s6, s3, 126
                  bge          t0, a5, 796f
                  and          zero, t1, t5
                  ori          t6, s1, -1051
sub_3_4:          jal          t1, 25f
0:                jal          t1, 8f
1:                jal          ra, 29f
2:                jal          tp, 9f
3:                jal          s9, 14f
4:                jal          ra, 12f
5:                jal          ra, 10f
6:                jal          s8, 22f
7:                jal          ra, 21f
8:                jal          s4, 6b
9:                jal          t1, 11f
10:               jal          s1, 24f
11:               jal          ra, 28f
12:               jal          t1, 15f
13:               jal          ra, 1b
14:               jal          t1, 4b
15:               jal          ra, 26f
16:               jal          ra, 0b
17:               jal          ra, 27f
18:               jal          ra, 23f
19:               jal          ra, 17b
20:               jal          ra, 3b
21:               jal          t1, 13b
22:               jal          ra, 20b
23:               jal          gp, 19b
24:               jal          ra, 16b
25:               jal          ra, 2b
26:               jal          t1, 7b
27:               jal          t1, 5b
28:               jal          ra, 18b
29:               srl          a4, s6, t2
                  bgeu         s8, t5, 801f
                  ori          a1, a4, 125
                  addi         s5, sp, -1819
                  sra          a6, a6, a6
                  lui          s6, 81501
                  bne          a1, t2, 797f
                  beq          t5, s6, 799f
                  beq          s1, t5, 798f
                  sltiu        gp, zero, -1813
796:              slti         a2, s9, -464
797:              srai         sp, s3, 8
798:              addi         s9, a3, 1178
799:              slli         ra, s7, 0
                  sll          s9, s0, t6
801:              bne          sp, t5, 805f
                  sll          gp, a1, a4
                  srl          t2, a2, s9
                  lui          s8, 103002
805:              srli         t5, a0, 14
                  bge          ra, a5, 809f
                  beq          zero, s5, 824f
                  add          sp, t3, s10
809:              or           a4, s10, s1
                  slt          a3, t4, s11
                  blt          a1, a3, 812f
812:              sltiu        t6, s11, -555
                  srli         s11, a4, 1
                  lui          a2, 104756
                  lui          a7, 596276
                  bne          a3, a5, 824f
                  or           s10, a0, a4
                  beq          a2, s9, 830f
                  auipc        zero, 699302
                  slli         sp, a2, 5
                  beq          a0, t4, 835f
                  xor          a5, s10, s11
                  bne          t2, a2, 832f
824:              andi         s4, gp, -1211
                  bne          zero, t3, 831f
                  srl          s10, a3, s9
                  bgeu         a1, zero, 837f
                  bgeu         a6, s7, 839f
                  slti         t4, sp, 391
830:              srl          t6, ra, t3
831:              slti         t2, s4, 431
832:              srl          a2, a4, s0
                  slti         a5, t5, 541
                  nop
835:              andi         t4, s5, -1796
                  sra          t4, s11, a5
837:              srai         s11, s3, 6
                  srl          a0, s6, s2
839:              blt          a0, s6, 853f
                  bne          a5, s11, 855f
                  srai         s2, t0, 11
                  slti         s2, s1, -364
                  sltiu        a2, s9, 1498
                  slli         a2, zero, 22
                  sltiu        t4, a6, -1951
                  and          zero, zero, a6
                  bne          gp, s9, 866f
                  add          t2, a1, s7
                  sltiu        t6, a7, -612
                  bgeu         s2, a7, 857f
                  beq          s2, a2, 859f
                  nop
853:              slt          t6, s1, t3
                  srai         t4, a3, 26
855:              beq          s0, s6, 856f
856:              slti         s1, s4, 571
857:              sll          t5, t5, t1
                  slt          gp, tp, sp
859:              bge          t4, a2, 872f
                  beq          s4, t2, 870f
                  andi         t6, a6, 2025
                  sltiu        s4, s6, -449
                  ori          sp, t3, -1406
                  beq          tp, a4, 884f
                  xor          t4, s4, a4
866:              sltiu        s8, a0, -1251
                  auipc        s2, 70186
                  or           a4, s1, s7
                  auipc        t5, 369179
870:              bne          t2, a6, 878f
                  bne          s1, t5, 882f
872:              beq          s7, sp, 880f
                  and          sp, t1, a5
                  add          t2, a4, s10
                  and          s3, s11, t4
                  slt          t4, s10, t2
                  auipc        s11, 970690
878:              srli         s4, a3, 17
                  or           ra, a6, a1
880:              ori          a7, s2, 54
                  sltiu        t1, t6, 1987
882:              blt          t5, s2, 887f
                  add          s8, s7, s6
884:              sra          t1, t3, a2
                  bge          s4, a5, 895f
                  ori          s4, t5, 1716
887:              sub          s5, s11, ra
                  ori          tp, a4, 1685
                  slli         a3, t6, 27
                  sub          a7, s7, sp
                  add          t5, s0, s4
                  blt          s9, s10, 900f
                  slti         s2, tp, -1422
                  slti         t5, s9, 1280
895:              xor          a2, zero, tp
                  blt          ra, s6, 909f
                  bgeu         a0, s8, 907f
                  add          s0, t6, t4
                  sltiu        a3, s4, -1674
900:              sltiu        t5, s1, -2016
                  sll          a0, s11, t1
                  sub          a4, s11, sp
                  sll          t2, t4, s9
                  auipc        s5, 974174
                  blt          s8, s5, 917f
                  bge          s5, gp, 918f
907:              sltu         sp, t2, s7
                  auipc        s2, 100114
909:              slt          t6, zero, a0
                  xori         a3, a2, 354
                  sub          s10, tp, a3
                  sltu         tp, t6, t3
                  beq          a0, t3, 922f
                  ori          a6, s5, 1148
                  xor          t4, t3, a0
                  srai         a6, s5, 8
917:              slt          s6, tp, t0
918:              xori         zero, a0, -607
                  addi         a7, s10, -243
                  xori         t4, ra, -1802
                  sub          a7, zero, tp
922:              slt          a7, s7, a6
                  sltiu        t2, t1, -1869
                  sltu         s5, t2, ra
                  sra          tp, s4, s3
sub_3_10:         jal          t1, 9f
0:                jal          t1, 6f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          t1, 11f
4:                jal          a2, 3b
5:                jal          tp, 10f
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          gp, 4b
9:                jal          t5, 5b
10:               jal          s5, 1b
11:               jal          s10, 0b
12:               add          gp, t0, zero
                  bgeu         s8, s5, 927f
927:              blt          gp, s5, 947f
                  beq          s6, t5, 932f
                  sltu         tp, gp, s5
                  nop
                  sltu         ra, s2, s2
932:              auipc        a7, 374816
                  sub          a1, a6, a3
                  addi         s0, s5, -1458
                  bgeu         a5, t4, 941f
                  sub          s2, a7, t0
                  srai         sp, s11, 2
                  or           a5, gp, t3
                  add          a3, s0, s5
                  addi         sp, s8, -1
941:              slli         s8, s2, 23
                  sll          s4, a6, s0
                  xori         s4, s9, -516
                  and          t4, a0, a3
                  beq          zero, s4, 964f
                  and          gp, s4, t6
947:              xori         zero, a1, 1033
                  slti         gp, s5, 1499
                  srl          t6, t0, s7
                  srl          a3, a7, s7
                  slti         a7, s11, 977
                  sltiu        s2, a0, -600
                  sltu         s10, s8, a5
                  xori         ra, sp, -96
                  slt          zero, sp, s8
                  ori          s6, t1, -1999
                  auipc        s2, 359464
                  auipc        s0, 348275
                  bne          a2, s6, 967f
                  add          zero, t6, t1
                  slt          a7, s4, a6
                  addi         a4, s0, 770
                  sub          zero, s4, t4
964:              sub          s2, s6, t5
                  xori         a1, tp, -700
                  xori         t5, sp, -1711
967:              sltiu        s11, s5, -1612
                  slli         zero, s5, 12
                  slt          a2, t1, t0
                  lui          a3, 155126
                  srl          a3, a5, s9
                  srl          a4, s4, a2
                  srai         s0, zero, 16
                  sub          a4, gp, s0
                  bgeu         s1, t6, 989f
                  xori         tp, a7, -580
                  auipc        ra, 648396
                  sltu         s3, ra, s6
                  ori          a2, a5, 1751
                  addi         s1, a3, 1063
                  bne          t4, a3, 987f
                  ori          s3, s6, -92
                  sll          zero, s9, zero
                  sltu         a7, a0, a7
                  srli         s6, t1, 24
                  addi         zero, t3, -1277
987:              bge          t2, t5, 990f
                  xor          t5, a4, s2
989:              nop
990:              slli         a2, a2, 3
                  srl          s3, zero, s8
                  srli         tp, a3, 22
                  slli         s6, s5, 7
                  xor          t5, s5, ra
                  xor          t6, a1, t5
                  and          s11, a2, a1
                  sltiu        t2, s8, -347
                  sltiu        s10, s1, 327
                  slt          gp, a7, a3
                  slti         a2, t4, 788
                  addi         tp, s8, 1133
                  addi         t5, s8, -1230
                  sub          s2, s7, t0
                  xor          s10, s2, s7
                  or           a7, s9, s10
                  srl          t4, s8, a5
                  srl          t6, a7, s11
                  beq          zero, t1, 1019f
                  sra          s4, a4, ra
                  slti         s2, t3, -1047
                  xori         t6, t0, 2039
                  srli         s4, ra, 28
                  add          zero, s0, a2
                  ori          s11, s1, -1650
                  srli         tp, t5, 31
                  slli         s11, a3, 27
                  srl          zero, ra, s4
                  srl          t1, s9, t5
1019:             sub          s11, t0, a3
                  bge          s7, a2, 1037f
                  srai         s10, t3, 15
                  slt          ra, t0, s3
                  srl          a3, zero, s5
                  ori          s2, a3, 1102
                  lui          s11, 664246
                  xori         t5, tp, 548
                  srli         a2, t4, 7
                  bltu         a4, s6, 1035f
                  srli         t5, s4, 23
                  andi         t1, sp, 1155
                  slti         a3, t3, -848
                  bltu         a1, a1, 1046f
                  bne          t3, s3, 1041f
                  andi         t5, tp, 186
1035:             add          a0, tp, a1
                  bgeu         tp, s5, 1040f
1037:             auipc        a3, 36586
                  auipc        s0, 875474
                  srai         s3, zero, 6
1040:             lui          t6, 91303
1041:             sltiu        s3, gp, -1013
                  sub          tp, s4, a3
                  srli         a5, tp, 28
                  sll          s9, s8, t6
                  and          a4, a0, s7
1046:             lui          t4, 659473
                  addi         t4, s7, -1629
                  beq          a1, tp, 1049f
1049:             srl          s2, a3, a3
                  blt          s9, s2, 1058f
                  auipc        a7, 935028
                  sll          s3, s10, s10
                  xor          a0, t1, t1
                  and          s11, s4, s2
                  blt          s10, a3, 1070f
                  nop
                  xor          s2, s0, a6
1058:             slli         s4, a1, 21
                  bgeu         tp, s3, 1076f
                  add          gp, a7, s3
                  bne          s9, s3, 1075f
                  nop
                  slt          s11, s11, t2
                  sltiu        a2, s6, 1621
                  sub          s5, a7, s0
                  sra          t5, a4, s6
                  auipc        a7, 416907
                  slli         gp, gp, 18
                  srli         a5, s0, 23
1070:             sltu         s9, t4, s11
                  bgeu         t5, s10, 1082f
                  addi         a5, a3, 1539
                  bne          s8, a7, 1074f
1074:             andi         t6, a4, 962
1075:             add          s1, s2, a6
1076:             add          t1, a1, t2
                  xori         a7, a0, -794
                  addi         a5, sp, -1457
                  bge          a2, t4, 1094f
                  slti         a2, s6, -49
                  xor          a7, t2, gp
1082:             auipc        s6, 879390
                  bgeu         a7, s4, 1089f
                  sub          s6, zero, t6
                  srl          s3, t4, s8
                  srli         a2, tp, 13
                  srli         s1, s11, 23
                  bltu         t3, s9, 1089f
1089:             bgeu         t2, s4, 1090f
1090:             and          s2, t5, t2
                  andi         t4, a4, 1509
                  bne          a7, a6, 1106f
                  srai         a6, s2, 7
1094:             lui          a2, 655640
                  blt          a3, s0, 1103f
                  srl          s9, a5, a4
                  ori          t5, s11, -462
                  bltu         s5, t3, 1107f
                  slt          sp, s3, s3
                  sub          a4, t1, a3
                  ori          s9, s10, -266
                  slti         s5, a0, 1799
1103:             slli         a1, s0, 2
                  xor          s8, a2, s11
                  beq          t6, a6, 1124f
1106:             slt          t6, t1, tp
1107:             add          a2, t2, s6
                  nop
                  slti         s0, t3, 1909
                  ori          t2, a3, -159
                  slt          s5, t5, s2
                  sltiu        a4, t0, -35
                  slti         s6, zero, -578
                  xori         a1, a3, 1341
                  slti         s8, t6, -1357
                  srl          a5, t1, t2
sub_3_5:          jal          t1, 6f
0:                jal          ra, 1f
1:                jal          t1, 3f
2:                jal          a7, 8f
3:                jal          ra, 4f
4:                jal          tp, 7f
5:                jal          ra, 0b
6:                jal          ra, 9f
7:                jal          gp, 11f
8:                jal          tp, 10f
9:                jal          ra, 2b
10:               jal          ra, 5b
11:               lui          a4, 1029716
                  slti         t2, tp, 1310
                  add          sp, a0, s5
                  slti         t4, t5, -445
                  sub          s3, s4, ra
                  slli         a4, t4, 25
                  add          s6, s2, s11
                  sltiu        s1, a7, 153
1124:             slt          ra, tp, tp
                  xori         a2, t4, 218
                  add          t6, gp, sp
                  or           t4, s0, a1
                  add          s8, s7, t3
                  or           t6, t1, s10
                  xor          s8, s4, zero
                  srli         s9, s7, 7
                  and          s11, s6, zero
                  andi         gp, t5, -1750
                  ori          s5, a1, 976
                  add          s9, a3, t6
                  xori         a3, a4, 1579
                  slli         s1, sp, 25
                  xor          a7, sp, s11
                  add          s5, s10, s1
                  or           s6, t4, a2
                  beq          ra, s11, 1146f
                  srli         s2, t1, 24
                  blt          a3, ra, 1160f
                  lui          gp, 685600
                  xor          t2, a2, s2
1146:             auipc        s0, 312901
                  sra          a1, s1, sp
                  add          t2, a5, a2
                  slli         a4, s1, 25
                  bne          sp, t0, 1160f
                  bgeu         t0, a1, 1168f
                  blt          gp, s7, 1172f
                  srli         a6, s9, 4
                  blt          s6, s10, 1165f
                  sra          a2, t2, a7
                  auipc        a5, 164272
                  ori          t2, a3, 1422
                  xor          sp, t4, s0
                  xor          s5, zero, a5
1160:             nop
                  sltiu        a7, s1, -1462
                  srai         a2, t3, 8
                  addi         a4, t3, -1475
                  ori          s9, a2, 332
1165:             sra          a4, s1, s0
                  xori         zero, s3, -64
                  slti         t6, a3, -729
1168:             beq          a0, a5, 1181f
                  sltu         a7, zero, a6
                  beq          s11, t1, 1178f
                  srl          s10, gp, a4
1172:             xor          a4, s6, ra
                  sll          zero, s2, sp
                  lui          s9, 539846
                  sltu         a2, t5, t2
                  beq          s6, t6, 1183f
                  xori         a5, tp, -1700
1178:             lui          s2, 517835
                  srai         a0, s6, 31
                  add          s4, t1, s2
1181:             xor          t1, s2, gp
                  bge          s2, s11, 1196f
1183:             xor          t4, a1, ra
                  bge          s0, gp, 1195f
                  slli         t4, s3, 24
                  srl          a2, s11, s5
                  beq          s10, t3, 1191f
                  addi         gp, a2, -1853
                  bne          ra, t5, 1201f
                  ori          a7, t4, 11
1191:             add          tp, a1, s9
                  srli         gp, s1, 15
                  bne          a2, zero, 1197f
                  or           t5, s10, s6
1195:             bgeu         s9, a3, 1203f
1196:             or           t1, s8, s1
1197:             sltu         t4, s4, gp
                  bltu         a6, t0, 1208f
                  srli         s11, s9, 5
                  beq          s9, a3, 1201f
1201:             addi         s6, t2, -975
                  srl          a5, a7, t5
1203:             and          t6, s2, a5
                  srli         a7, s5, 2
                  bne          a3, s4, 1219f
                  sll          t4, t1, t2
                  lui          s10, 203428
1208:             srai         a7, s3, 31
                  slli         s1, t4, 27
                  srli         t4, ra, 8
                  or           zero, zero, a6
                  auipc        t5, 667143
                  lui          s0, 432653
                  xor          sp, s1, a2
                  beq          a3, s9, 1221f
                  srai         s11, a6, 16
                  or           t1, t1, t4
                  slt          sp, t6, t3
1219:             bgeu         s9, s10, 1227f
                  addi         s1, s1, -1584
1221:             srai         t1, s8, 2
                  slti         s11, t3, 641
                  lui          a5, 167391
                  sub          zero, t2, a2
                  srai         s5, s0, 26
                  andi         s2, gp, 665
1227:             sltu         s9, t6, a4
                  xori         sp, zero, -130
                  srai         t2, s6, 3
                  andi         a2, t3, 1210
                  auipc        sp, 929366
                  sll          a6, t6, a3
                  auipc        sp, 733690
                  blt          t6, a0, 1237f
                  bge          t1, gp, 1247f
                  sra          a3, s9, t5
1237:             sltiu        zero, zero, 1409
                  slli         a5, s2, 1
                  srl          s4, s8, a1
                  srai         a0, t0, 13
                  andi         tp, a0, -903
                  sll          a2, t0, t1
                  or           gp, s7, s6
                  sra          s0, t5, a5
                  slti         a6, s4, -1986
                  slti         s1, a4, -1543
1247:             bltu         a4, gp, 1253f
                  bltu         ra, a7, 1256f
                  bgeu         a6, s0, 1263f
                  bltu         t0, s6, 1267f
                  slti         s11, s8, 1823
                  nop
1253:             bge          s2, s11, 1254f
1254:             slli         tp, a3, 0
                  slli         ra, t5, 30
1256:             nop
                  lui          a2, 234482
                  beq          s1, a1, 1265f
                  bge          a2, s6, 1264f
                  bltu         a1, t2, 1264f
                  or           s0, zero, s2
                  sra          a4, ra, s1
1263:             sub          t6, a5, s3
1264:             nop
1265:             srl          s5, s3, s11
                  sltu         t1, t2, s2
                  ori          tp, a4, -29
                  slli         s5, sp, 2
                  srli         s0, ra, 14
                  addi         s8, s1, -81
                  add          gp, a6, t4
                  blt          s3, a7, sub_3_j6 #branch to jump instr
                  sltiu        t5, t4, -1460
                  or           t2, a2, a4
                  sll          t2, s0, s8
sub_3_j6:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  bgeu         s1, t0, 1277f
1267:             add          a4, a2, t0
                  add          s10, t4, s4
                  add          sp, t6, a0
                  sll          s11, s9, s7
                  sll          zero, s11, a1
                  sltu         s6, s5, a5
                  bltu         s2, s8, 1283f
                  sltiu        s9, tp, 119
                  srai         s2, t5, 25
                  andi         s8, a1, 1575
1277:             bge          s6, a3, 1296f
                  blt          s0, zero, 1281f
                  bgeu         s10, s11, 1299f
                  ori          ra, s5, -627
1281:             xori         s5, s6, -1262
                  ori          a4, t3, -1511
1283:             blt          a5, t2, 1289f
                  bge          t1, sp, 1294f
                  sltiu        s11, t1, 1510
                  add          ra, zero, t3
                  ori          a3, a0, -1144
                  slli         s5, zero, 26
1289:             xor          s1, ra, a4
                  sltiu        sp, tp, 535
                  beq          s1, t6, 1306f
                  slt          t1, tp, s1
                  slli         tp, t1, 27
1294:             bge          s2, a0, 1306f
                  and          a5, s6, tp
1296:             auipc        a4, 40083
                  bge          a2, s7, 1311f
                  blt          a3, a5, 1311f
1299:             srli         s11, s6, 13
                  slt          s5, tp, a1
                  and          a4, t1, a0
                  srai         zero, s9, 18
                  sra          ra, s0, s10
                  and          s9, a7, t3
                  srl          t4, s1, s3
1306:             sra          t4, t3, t2
                  sra          a1, s10, s2
sub_3_6:          jal          t1, 1f
0:                jal          t1, 16f
1:                jal          ra, 0b
2:                jal          t1, 24f
3:                jal          sp, 13f
4:                jal          ra, 23f
5:                jal          t1, 17f
6:                jal          ra, 3b
7:                jal          ra, 6b
8:                jal          ra, 7b
9:                jal          s4, 11f
10:               jal          ra, 29f
11:               jal          t1, 22f
12:               jal          t1, 9b
13:               jal          ra, 5b
14:               jal          t1, 18f
15:               jal          t6, 25f
16:               jal          ra, 15b
17:               jal          ra, 19f
18:               jal          t1, 28f
19:               jal          t1, 12b
20:               jal          ra, 21f
21:               jal          ra, 10b
22:               jal          ra, 4b
23:               jal          t1, 14b
24:               jal          t1, 27f
25:               jal          ra, 26f
26:               jal          s2, 2b
27:               jal          ra, 8b
28:               jal          ra, 20b
29:               sll          t4, s4, zero
                  sltu         t1, t3, t6
                  sub          s4, s3, s0
                  slti         s10, tp, 1090
1311:             xor          a4, a3, s0
                  bgeu         a3, a3, 1313f
1313:             beq          s1, a1, 1321f
                  bne          s0, s9, 1318f
                  sltu         s0, s1, sp
                  srai         a1, a3, 6
                  sll          gp, ra, s3
1318:             beq          a0, a3, 1327f
                  nop
                  lui          t2, 479593
1321:             slli         s11, t3, 10
                  srli         s9, s1, 20
                  beq          sp, t1, 1324f
1324:             nop
                  bge          t6, s1, 1339f
                  bgeu         t3, s1, 1343f
1327:             xori         ra, s7, -826
                  blt          s4, s0, 1336f
                  addi         s0, gp, 1667
                  bgeu         a4, s5, 1341f
                  add          t2, t5, s4
                  add          a4, a1, ra
                  slli         s11, s9, 23
                  nop
                  bgeu         t4, s2, 1343f
1336:             srli         a1, a2, 28
                  slti         gp, a2, 1970
                  srli         t6, a1, 25
1339:             add          a5, a1, t2
                  auipc        a4, 649664
1341:             srl          s8, a5, a1
                  lui          s6, 55058
1343:             bgeu         s0, tp, 1355f
                  auipc        s8, 284987
                  nop
                  bne          s0, ra, 1361f
                  lui          a0, 894907
                  slli         t4, t0, 29
                  andi         s1, a5, -1180
                  andi         s3, s4, -1268
                  blt          t4, s2, 1355f
                  xori         t2, t0, 1836
                  srai         t6, zero, 22
                  slli         s9, a1, 25
1355:             bne          s9, t6, 1367f
                  beq          s1, a7, 1367f
                  slli         s8, ra, 19
                  sub          a4, s3, a3
                  slli         s4, t1, 7
                  lui          t5, 924457
1361:             bltu         a7, s0, 1369f
                  srai         s0, s1, 19
                  lui          ra, 405309
                  srli         s5, a2, 13
                  beq          t6, s4, 1366f
1366:             xor          a3, t5, a3
1367:             ori          t2, a5, -908
                  slti         s10, t1, -1979
1369:             srl          a1, t4, t4
                  blt          a7, zero, 1378f
                  blt          tp, tp, 1372f
1372:             andi         a3, t5, 1768
                  add          s10, zero, a0
                  or           sp, t0, s4
                  srai         s10, s1, 0
                  slt          a5, s0, t0
                  slli         t6, t3, 21
1378:             sll          s3, t0, s4
                  sltu         a2, t6, t6
                  ori          sp, t1, -955
                  sltu         s11, sp, t5
                  bltu         s11, gp, 1402f
                  xor          s4, s4, a7
                  beq          ra, s5, 1401f
                  sltiu        t6, zero, -1507
                  srli         a7, ra, 26
                  ori          sp, s1, 583
                  xori         a5, sp, -256
                  srli         s1, s5, 10
                  bgeu         s7, t3, 1391f
1391:             and          s1, s10, a6
                  bltu         a6, s5, 1399f
                  ori          s5, a4, 1310
                  xor          s0, ra, s11
                  sltu         s5, s2, gp
                  or           s5, a7, t0
                  slli         sp, s2, 12
                  blt          s3, t4, 1404f
1399:             addi         ra, s0, 1971
                  slti         a0, s6, -49
1401:             srli         t2, s11, 14
1402:             bne          a5, t3, 1419f
                  addi         t4, a4, -860
1404:             addi         t4, gp, 76
                  slli         s10, t1, 20
                  sltiu        s0, t2, 502
                  xori         ra, s11, 1246
                  sltiu        a7, t0, 606
                  beq          s7, s6, 1414f
                  beq          s1, a2, 1424f
                  slli         sp, t5, 25
                  bne          t1, s4, 1418f
                  slti         a2, zero, -589
1414:             slti         a7, s0, -807
                  bge          a2, s5, 1425f
                  srai         gp, a1, 21
                  xor          a7, s2, sp
1418:             sll          s5, s0, s9
1419:             nop
                  srl          zero, a5, gp
                  beq          a6, t2, 1431f
                  bltu         s10, s2, 1431f
                  andi         s2, tp, -1670
1424:             sltu         s4, tp, s8
1425:             bltu         a6, s0, 1444f
                  and          s10, s0, t6
                  sltiu        s1, a4, -88
                  or           a1, s5, a5
                  ori          s0, a7, 964
                  srai         s11, t6, 19
1431:             and          a3, t3, a7
                  add          a5, sp, s9
                  addi         s4, s11, -126
                  beq          a5, t0, 1445f
                  blt          zero, s10, 1449f
                  slti         a6, a3, -1349
                  and          s11, s7, s0
                  slti         t5, a5, 1679
                  bgeu         tp, sp, 1451f
                  auipc        t1, 598224
                  bne          a7, a1, 1444f
                  bne          a3, s8, 1446f
                  andi         s10, a5, -839
1444:             xori         t4, s0, 1188
1445:             lui          s10, 1042476
1446:             sltu         s3, s8, gp
                  lui          s2, 706299
                  slli         s11, a3, 7
1449:             bne          tp, t5, 1463f
                  or           a1, zero, t2
1451:             blt          t3, s7, 1464f
                  slli         s6, sp, 7
                  ori          t4, gp, -1242
                  slli         gp, a7, 10
                  lui          a0, 756761
                  sub          a3, t0, zero
                  andi         a0, gp, 1058
                  xori         s0, s6, 1745
                  and          gp, t1, s8
                  and          a7, t1, s3
                  andi         s9, a3, -910
                  sltu         s6, t5, s7
1463:             srli         a4, ra, 24
1464:             nop
                  bge          a5, s8, 1473f
                  addi         s11, s7, 1611
                  xor          s4, ra, t4
                  slti         sp, s2, 50
                  srai         s0, s7, 2
                  sra          sp, tp, a7
                  sltiu        s10, s1, 1062
                  xor          gp, a2, s2
1473:             ori          t4, t6, -340
                  slt          sp, s10, sp
                  sub          s9, s5, t3
                  bltu         s11, s4, 1484f
                  slli         a2, gp, 18
                  bne          a1, tp, 1481f
                  sub          a4, s8, s8
                  add          a4, tp, tp
1481:             srl          a4, a1, a6
                  srl          s4, a7, a5
                  and          s1, s3, a7
1484:             srai         a2, a6, 29
                  ori          t6, a7, -1532
                  andi         s6, a7, -1687
                  blt          a0, a6, 1501f
                  slt          s3, a7, t5
                  bne          t4, s7, 1494f
                  bne          s11, a6, 1504f
                  bne          s7, s7, 1495f
                  or           s5, tp, s3
                  xor          s3, a2, s7
1494:             add          t1, t6, s5
1495:             or           s3, s1, gp
                  sltiu        a6, s9, 1589
                  bne          sp, sp, 1503f
                  sub          gp, s6, s10
                  and          t2, s6, s10
                  bne          t5, sp, 1508f
1501:             auipc        t5, 892653
                  srli         sp, t1, 9
1503:             bne          s9, a3, 1514f
1504:             slt          s5, a6, s8
                  bge          s9, s7, 1506f
1506:             slti         s4, s1, 133
                  nop
1508:             beq          s8, t2, 1518f
                  addi         s6, s1, 1821
                  blt          s7, a1, 1527f
                  xori         s6, s9, 1542
                  xori         s5, gp, 451
                  bne          s5, a1, 1530f
1514:             blt          t6, s9, 1520f
                  srai         s1, t5, 0
                  or           sp, a5, s7
                  and          s1, s1, zero
1518:             srli         s2, zero, 0
                  slli         s3, s5, 22
1520:             slli         ra, t5, 21
                  sltiu        s6, ra, -81
                  sltiu        t6, a2, 1576
                  srai         a6, s6, 20
                  sltiu        a4, t0, -1489
                  lui          s4, 698798
sub_3_12:         jal          t1, 0f
0:                jal          ra, 14f
1:                jal          ra, 6f
2:                jal          s2, 22f
3:                jal          ra, 4f
4:                jal          ra, 23f
5:                jal          ra, 15f
6:                jal          ra, 17f
7:                jal          ra, 8f
8:                jal          ra, 24f
9:                jal          ra, 16f
10:               jal          s5, 26f
11:               jal          s8, 7b
12:               jal          t1, 20f
13:               jal          ra, 21f
14:               jal          ra, 13b
15:               jal          ra, 10b
16:               jal          ra, 18f
17:               jal          t1, 3b
18:               jal          tp, 12b
19:               jal          ra, 9b
20:               jal          ra, 2b
21:               jal          t6, 11b
22:               jal          t1, 25f
23:               jal          ra, 5b
24:               jal          sp, 19b
25:               jal          ra, 1b
26:               and          s3, a0, s1
                  srl          ra, a0, a2
1527:             xori         a4, tp, 1938
                  slt          s3, sp, a3
                  xori         s10, sp, -1718
1530:             bltu         a4, gp, 1542f
                  and          t6, t1, a0
                  blt          s2, a6, 1542f
                  srli         s3, s5, 20
                  blt          t5, zero, 1545f
                  srai         t1, s7, 6
                  sra          a1, s9, t4
                  xori         s2, t2, -2008
                  lui          a2, 80775
                  ori          t6, s1, -1992
                  nop
                  auipc        t2, 645497
1542:             sll          a7, s10, t6
                  xori         a5, sp, -542
                  srli         a2, a6, 30
1545:             add          sp, s5, a1
                  xor          a3, a2, s8
                  xori         t4, s1, 1879
                  slt          zero, s11, ra
                  andi         s3, zero, 1408
                  and          a2, t0, gp
                  xor          s3, t3, t6
                  sub          t4, s1, a0
                  sub          s2, a4, tp
                  xori         gp, a2, -1730
                  sll          t5, s2, s1
                  bltu         tp, s5, 1564f
                  bne          t2, ra, 1571f
                  slti         t5, a0, -1120
                  add          tp, ra, s2
                  xor          a0, a1, s7
                  bge          s11, zero, 1574f
                  slti         a0, zero, 486
                  or           ra, t3, a6
1564:             bne          s2, t1, 1572f
                  srl          s8, tp, a6
                  srli         a4, a1, 30
                  bge          s1, s11, 1571f
                  sll          t5, sp, s6
                  blt          a0, s11, 1577f
                  srai         sp, s8, 15
1571:             xori         t6, sp, 1406
1572:             sra          ra, a1, a1
                  sltu         tp, s4, s8
1574:             auipc        s11, 258296
                  nop
                  nop
1577:             sltu         s0, sp, t5
                  srai         a1, s3, 10
                  auipc        t4, 171617
                  xor          gp, s1, a4
                  slti         s10, s3, 704
                  or           s0, a4, t6
                  bgeu         s6, sp, 1595f
                  blt          s2, zero, 1585f
1585:             or           s0, t2, s1
                  and          a0, s8, a0
                  sltu         ra, a3, s10
                  and          a7, t3, a5
                  blt          t3, a3, 1608f
                  and          s10, t6, t3
                  bne          t6, a4, 1592f
1592:             xori         a6, t5, 1538
                  bge          s11, s1, 1608f
                  andi         a4, ra, 221
1595:             srl          s6, s7, s9
                  andi         gp, a1, -201
                  srai         a6, t5, 25
                  sra          s10, s7, a0
                  or           s2, t5, t2
                  add          s0, gp, ra
                  beq          s2, s8, 1608f
                  bgeu         s10, a6, 1622f
                  bne          a2, t2, 1612f
                  slt          s11, s8, t4
                  and          s4, a1, ra
                  andi         sp, t6, -1645
                  addi         tp, t1, -1688
1608:             add          t2, sp, s2
                  bgeu         s8, ra, 1620f
                  slti         s10, a2, -1588
                  xori         s10, a6, 1583
1612:             beq          s11, a7, 1624f
                  slt          s1, s0, s8
                  sra          gp, s1, s5
                  sra          t1, t4, s3
                  lui          s8, 295983
                  or           a7, a3, t3
                  beq          a2, t3, 1626f
                  sltu         a7, a2, zero
1620:             addi         s2, a3, 1892
                  ori          t6, s2, 183
1622:             srl          a2, s11, t6
                  lui          t2, 435402
1624:             and          s1, a5, s1
                  srl          s5, a1, a0
1626:             sltu         s3, a4, s9
                  blt          s8, a3, 1638f
                  sll          a5, a1, t0
                  bne          a7, t6, 1643f
                  xori         a7, gp, 445
                  beq          s0, ra, 1648f
                  xori         s10, a3, -1914
                  beq          t1, s11, 1647f
                  lui          a2, 396896
                  srli         tp, zero, 26
                  slli         s4, sp, 3
                  slt          ra, s4, a2
1638:             beq          a6, s2, 1657f
                  and          s1, s0, s0
                  beq          a5, s0, 1641f
1641:             slti         a5, a2, -245
                  addi         s3, s9, 1789
1643:             bltu         a1, s2, 1647f
                  sll          s5, t2, s0
                  sltu         a0, a2, s1
                  sra          tp, t3, s11
1647:             or           t1, ra, s9
1648:             addi         t2, t2, 694
                  add          s9, tp, a6
                  sltiu        a6, a1, 187
                  srli         s9, t3, 6
                  slt          t2, a5, t1
                  xori         s9, a7, -985
                  nop
                  slli         t5, sp, 29
                  addi         s0, t6, -592
1657:             sub          s3, a7, s10
                  sra          a0, s6, s3
                  or           t6, s2, t4
                  and          t4, a3, sp
                  or           s10, s8, tp
                  andi         s2, s8, -1361
                  or           s5, s1, a2
                  bne          s8, s8, 1684f
                  sltiu        a5, ra, 1371
                  slli         t6, s3, 8
                  xori         t5, t6, -347
                  xori         t4, s1, 340
                  ori          t1, t4, 1734
                  blt          a6, t4, 1671f
1671:             blt          s4, a4, 1679f
                  sra          a5, a5, a7
                  or           s3, a6, t6
                  beq          s0, s0, 1682f
                  blt          s0, s8, 1679f
                  bgeu         s7, s9, 1681f
                  sll          zero, s11, s11
                  auipc        s6, 347040
1679:             sll          s11, a5, a4
                  andi         s1, a2, 1586
1681:             nop
1682:             srai         s0, a0, 4
                  addi         s11, s5, -876
1684:             sltiu        s2, gp, 571
                  bltu         t6, t2, 1688f
                  srl          s4, a1, tp
                  auipc        a3, 194844
1688:             nop
                  srli         s8, gp, 20
                  sra          s2, tp, s7
                  slt          a7, t1, a0
                  srli         a1, s3, 29
                  sltiu        gp, s3, 15
                  blt          s11, s0, 1709f
                  or           a7, t2, s6
                  sll          sp, s3, s3
                  sra          s6, a5, s5
                  slt          t4, s11, s6
                  sll          s5, t4, s9
                  srli         s2, zero, 8
                  ori          t1, s1, -804
                  sll          a0, a4, a3
                  sra          s2, s1, s5
                  bltu         s9, gp, 1712f
                  sub          a6, s9, ra
                  sltu         a4, s5, s6
                  bge          a2, s8, 1720f
                  bne          s8, a4, 1709f
1709:             blt          s3, t5, 1719f
                  sll          a6, s1, s6
                  sra          t2, a7, a1
1712:             sub          t6, s3, s4
                  xor          s6, ra, s0
                  bne          a3, sp, 1720f
                  beq          s6, s1, 1732f
                  slli         s5, s9, 3
                  slt          t4, a0, t5
                  bgeu         t0, a5, 1724f
1719:             slt          a3, a6, t0
1720:             slti         s8, s4, -1437
                  xori         t4, a6, 892
                  bgeu         gp, gp, 1736f
                  sltiu        a4, ra, 1469
1724:             bne          s7, s9, 1731f
                  andi         a3, a0, -231
                  bgeu         s8, a6, 1738f
                  or           tp, zero, s7
                  and          s11, a4, a2
                  bge          sp, t3, 1738f
                  srai         t2, zero, 9
1731:             slli         a1, s6, 1
1732:             add          t5, a4, a0
                  or           a6, s11, t3
                  or           s11, a7, a2
                  sll          s10, t3, a1
1736:             andi         t1, tp, -1084
                  lui          s9, 146619
1738:             sltiu        s5, s3, 1774
                  sltu         sp, t3, s10
                  slti         t5, s5, 1459
                  lui          t1, 103285
                  slt          s11, a2, zero
                  slti         s9, s5, 890
                  srl          t2, s7, s6
                  and          s8, a6, s7
                  lui          a1, 124027
                  bgeu         a2, s6, 1757f
                  slt          a3, s2, a0
                  bltu         s8, s5, 1769f
                  srl          s3, s5, a0
                  andi         gp, s7, -1542
                  beq          a3, t1, 1764f
                  slli         gp, s4, 23
                  srl          a3, s7, t0
                  nop
                  srl          s4, a0, s11
1757:             andi         s8, t5, 1209
                  add          t5, gp, s11
                  ori          a2, zero, 646
                  bgeu         a0, a2, 1766f
                  slli         t4, t1, 0
                  slti         a7, s6, -864
                  bltu         a5, t6, 1769f
1764:             slli         t4, a4, 11
                  bne          s4, s6, 1780f
1766:             slli         t1, a1, 25
                  slt          t1, a5, a3
                  lui          a1, 524874
1769:             ori          s6, s6, 440
                  addi         s11, s9, -333
                  andi         a6, a7, 6
                  bge          s9, t0, 1780f
                  srai         s4, a2, 22
                  slti         a6, a4, 238
                  ori          a6, t4, 1726
                  addi         t6, s3, -1611
                  sltu         a6, a3, ra
                  slli         a6, a6, 15
                  and          s10, s0, s1
1780:             addi         a6, ra, 840
                  xor          a3, s1, sp
                  beq          s9, s3, 1793f
                  sra          s10, s4, t1
                  ori          s0, a7, -2018
                  ori          a3, t5, -1597
                  sltiu        s0, a7, 451
                  xor          s10, s11, a7
                  xori         s2, s6, 494
                  bne          s2, s9, 1800f
                  sltiu        ra, a5, 1817
                  bne          t6, zero, 1801f
                  sltiu        a7, a0, 21
1793:             or           s1, s6, s4
                  auipc        t4, 119328
                  srli         a0, s8, 15
                  srl          a1, t6, s1
                  sll          t4, s0, ra
                  sra          t2, s5, s6
                  srai         tp, t5, 15
1800:             slt          gp, t2, t6
1801:             lui          s2, 292272
                  add          s4, a4, a7
                  ori          ra, s11, 839
                  sltiu        a3, a5, -200
                  and          a3, a3, s1
                  bltu         s3, s7, 1823f
                  sltiu        a0, ra, 1680
                  sltu         t5, a2, a6
                  xor          s9, s3, s0
                  srai         s1, a2, 25
                  addi         s8, s10, -2007
                  nop
                  sub          s6, a3, gp
                  add          t5, gp, t6
                  sra          s4, t2, s6
                  bgeu         s3, t4, 1817f
1817:             sll          s9, s11, s9
                  srl          a1, a4, s0
                  xori         s8, a3, 606
                  xor          s10, s4, a7
                  srai         gp, a2, 22
                  bltu         gp, a2, 1823f
1823:             srl          s3, tp, s11
                  sub          t6, sp, t6
                  slt          s10, s1, a1
                  or           tp, s3, t0
                  xor          t4, s11, s7
                  addi         s10, s7, -533
                  bne          s7, s0, 1830f
1830:             slti         s10, a4, -1537
                  bge          sp, s7, 1838f
                  sltiu        a1, t6, -1147
                  ori          a7, s9, -962
                  nop
                  ori          s3, sp, -97
                  beq          a1, t3, 1848f
                  srai         s11, gp, 8
1838:             or           a5, t2, ra
                  auipc        t6, 855807
                  xori         t1, sp, 593
                  bltu         ra, a7, 1850f
                  sra          s6, a5, t0
                  addi         s0, sp, 626
                  blt          t0, a3, 1847f
                  auipc        s4, 593501
                  slli         a3, a6, 22
1847:             andi         t2, s10, -165
1848:             bge          zero, a3, 1856f
                  add          a2, a4, a0
1850:             sll          s8, t0, t5
                  xori         t1, t4, -1437
                  addi         a6, s2, 266
                  and          a2, t6, s7
                  addi         ra, s11, 1889
                  lui          a2, 606633
1856:             srl          s9, s0, t6
                  ori          t1, s1, -92
                  sub          s5, s5, a4
                  bltu         s6, s1, 1873f
                  andi         zero, a2, -455
                  bgeu         tp, s0, 1875f
                  andi         t1, s10, 858
                  xori         t5, t0, 1301
                  sltu         s2, s8, s6
                  nop
                  slti         s9, tp, -172
                  bge          zero, s10, 1880f
                  sltiu        s11, s0, 486
                  srai         s2, a4, 25
                  sll          gp, tp, t0
                  ori          t2, a6, -1417
                  srl          a4, s1, ra
1873:             sltiu        s0, t2, 1575
                  andi         sp, s8, 1439
1875:             xori         t6, t2, 1775
                  srli         a7, ra, 25
                  sra          s0, tp, a1
                  andi         a2, tp, -392
                  bgeu         a5, t0, 1883f
1880:             addi         s6, s10, -1649
                  add          a3, a5, a6
                  bgeu         s1, s4, 1892f
1883:             sub          t5, t5, s8
                  and          t1, zero, t3
                  slti         s2, s9, -822
                  bltu         s0, a6, 1891f
                  sltu         a1, a1, s9
                  slt          s8, s9, t1
                  and          s9, a6, s11
                  beq          sp, t6, 1907f
1891:             srli         a2, a6, 7
1892:             sub          t2, s9, a7
                  bgeu         gp, sp, 1901f
                  sll          a2, t2, s0
                  and          s2, a2, gp
                  slti         a6, s6, 1329
                  add          t4, s0, s1
                  sub          s10, a1, t1
                  and          gp, sp, s0
                  bne          t2, t1, 1914f
1901:             addi         s6, s9, -1726
                  bgeu         sp, a3, 1910f
                  nop
                  slt          s10, s7, a0
                  srli         t2, s8, 10
                  and          s1, s5, s0
1907:             or           s3, a2, s7
                  bgeu         s9, t4, 1927f
                  or           s8, t5, s11
1910:             slt          s3, a4, a1
                  nop
                  bltu         s4, a3, 1916f
                  xor          s1, t3, s10
1914:             xori         s2, gp, -1257
                  bge          s9, t2, 1935f
1916:             bltu         s1, s10, 1920f
                  or           zero, t1, a3
                  bne          tp, a6, 1921f
                  sra          s11, s7, a2
1920:             beq          s2, s11, 1928f
1921:             ori          s11, s7, 1893
                  srli         gp, a2, 26
                  bne          s3, t0, 1927f
                  add          t5, t3, s2
                  nop
                  bge          s3, t5, 1934f
1927:             ori          a6, s2, -1462
1928:             andi         t5, s5, 120
                  slt          s5, s9, s11
                  xor          t1, a0, s11
                  sub          s8, t4, t4
                  and          s5, t3, s2
                  auipc        s0, 53945
1934:             slti         t5, s5, 1252
1935:             slti         a3, t3, -700
                  sltu         s5, zero, s2
                  nop
                  sltiu        s9, t2, -584
                  beq          s2, s9, 1951f
                  srai         t6, a3, 3
                  andi         a1, sp, 1934
                  andi         a7, t3, 1937
                  srli         s9, a4, 13
                  or           s1, t5, sp
                  ori          a4, s8, -847
                  sll          s9, s4, sp
                  andi         zero, s5, -105
                  or           a0, t1, s7
                  andi         t6, s7, 539
                  bgeu         s4, a0, 1961f
1951:             slli         a2, t0, 6
                  addi         ra, t0, -164
                  xor          s9, a4, gp
                  sltiu        zero, a3, -489
                  sltiu        a3, s5, -831
                  srl          t1, s6, a6
                  or           s10, s9, t6
                  ori          ra, t2, 1408
                  xori         a5, a5, -836
                  sra          t4, ra, a1
1961:             bltu         t4, a1, 1975f
                  ori          a7, s3, 545
                  nop
                  slli         a3, a3, 23
                  sltiu        s0, s3, 445
                  xor          t6, s9, t5
                  bge          t2, s0, 1981f
                  bne          t4, a2, 1982f
                  xor          a7, s0, a1
                  xori         a6, a1, 60
                  slt          gp, a4, s5
                  beq          a7, a7, 1985f
                  auipc        s6, 818584
                  andi         a4, t4, -829
1975:             add          a5, a3, t6
                  srl          a5, s7, s5
                  srli         t4, t6, 25
                  sltiu        s0, s10, -1033
                  auipc        s10, 154940
                  lui          gp, 279658
1981:             bge          t4, t5, 1987f
1982:             beq          t5, gp, 1987f
                  srli         t6, a0, 10
                  sub          s0, gp, s7
1985:             bgeu         s2, gp, 1987f
                  sub          a0, t3, a6
1987:             and          a1, a5, s11
                  srli         s8, s1, 1
                  slti         s1, a1, -1924
                  lw           t1, 4(t0)
                  addi         t0, t0, 12
                  srai         s1, a3, 24
                  andi         a3, t1, -1885
                  slt          tp, t1, t4
2866:             addi x17, x6, 0
2866:             jalr x17, x17, 0
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
                  add x23, x5, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x19, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x19, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x19, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x19, x30, ecall_handler
                  li x30, 0x1
                  beq x19, x30, instr_fault_handler
                  li x30, 0x5
                  beq x19, x30, load_fault_handler
                  li x30, 0x7
                  beq x19, x30, store_fault_handler
                  li x30, 0xc
                  beq x19, x30, pt_fault_handler
                  li x30, 0xd
                  beq x19, x30, pt_fault_handler
                  li x30, 0xf
                  beq x19, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x5, x23, zero
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
                  add x5, x23, zero
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
                  add x5, x23, zero
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
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x5, x23, zero
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
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x5, x23, zero
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
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x5, x23, zero
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
