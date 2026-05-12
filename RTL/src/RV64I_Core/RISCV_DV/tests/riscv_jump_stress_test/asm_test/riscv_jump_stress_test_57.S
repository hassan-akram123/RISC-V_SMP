.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0xa
                  li x1, 0x4
                  li x2, 0xdb6020bb
                  li x3, 0x80000000
                  li x4, 0xf6b894f2
                  li x5, 0x80000000
                  li x6, 0x6e3f84bb
                  li x7, 0xb
                  li x8, 0x8
                  li x9, 0x0
                  li x10, 0xf7615972
                  li x11, 0x0
                  li x12, 0x0
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xfbdb0817
                  li x18, 0x80000000
                  li x19, 0xff04204a
                  li x20, 0x80000000
                  li x21, 0xde6f06f4
                  li x22, 0x5
                  li x23, 0x80000000
                  li x24, 0x6
                  li x25, 0x80000000
                  li x27, 0xa
                  li x28, 0xf4611292
                  li x29, 0xf416cfe6
                  li x30, 0xc
                  li x31, 0xf207e8ce
                  la x26, user_stack_end
main:             jal          t6, 7f
0:                jal          t1, 6f
1:                jal          s0, 3f
2:                jal          t1, 8f
3:                jal          ra, 0b
4:                jal          ra, 10f
5:                jal          gp, 1b
6:                jal          ra, 4b
7:                jal          t1, 2b
8:                jal          t0, 9f
9:                jal          t1, 5b
10:               srai         s7, s4, 12
main_0:           jal          t6, 19f
0:                jal          gp, 1f
1:                jal          ra, 27f
2:                jal          a7, 22f
3:                jal          gp, 20f
4:                jal          s1, 16f
5:                jal          t1, 8f
6:                jal          gp, 10f
7:                jal          ra, 14f
8:                jal          s2, 15f
9:                jal          ra, 7b
10:               jal          s0, 25f
11:               jal          t1, 24f
12:               jal          ra, 21f
13:               jal          ra, 6b
14:               jal          ra, 3b
15:               jal          ra, 13b
16:               jal          ra, 18f
17:               jal          t1, 28f
18:               jal          ra, 0b
19:               jal          ra, 11b
20:               jal          ra, 2b
21:               jal          s8, 26f
22:               jal          t1, 5b
23:               jal          ra, 12b
24:               jal          t0, 9b
25:               jal          t1, 4b
26:               jal          t4, 17b
27:               jal          tp, 23b
28:               ori          ra, s0, 1027
                  andi         t6, t5, 469
                  ori          a5, s8, -433
                  and          s8, zero, s6
                  and          s4, t4, sp
                  bgeu         a6, s9, 19f
                  srli         sp, s0, 27
                  auipc        t5, 688879
                  addi         t4, s9, -18
                  slli         gp, zero, 16
                  srli         s5, a2, 13
                  nop
                  srai         t2, t5, 21
                  srai         t0, s4, 13
                  beq          ra, zero, 30f
                  or           s7, t6, t2
                  ori          tp, ra, -1651
                  xor          t0, tp, a4
                  sltiu        s9, s1, 584
                  ori          gp, a6, 39
19:               lui          t6, 649793
                  addi         s5, s3, 1123
                  slt          s5, a5, a3
                  slli         s3, s4, 19
                  bne          a5, ra, 25f
                  xori         a4, s5, -228
25:               srl          s2, a3, s0
                  andi         s11, s8, 1965
                  add          a5, s7, tp
                  ori          s2, a0, -1508
                  auipc        a2, 891337
30:               and          ra, a6, a3
                  bltu         s8, a0, 38f
                  slti         a5, s10, 211
                  bge          t5, a7, 45f
                  lui          s4, 1041656
                  slli         t0, ra, 10
                  andi         t5, s3, -118
                  addi         sp, t3, -1605
38:               blt          s0, s6, 49f
                  bltu         a0, t5, 52f
                  srl          s5, s5, t0
                  lui          s3, 933598
                  xori         s4, a1, -1541
                  lui          zero, 313811
                  or           tp, t5, t2
45:               srai         a6, s9, 0
                  sltiu        t0, a5, 298
                  bne          gp, t0, 64f
                  sra          t4, s6, s9
49:               slt          t0, s3, s5
                  blt          s9, t3, 53f
                  sltiu        a4, t4, 852
52:               andi         s5, s6, 280
53:               blt          ra, t2, 65f
                  or           s11, s8, a7
                  slli         gp, s1, 17
                  slli         s2, a2, 30
                  nop
                  and          t0, gp, a1
                  xori         a1, a4, -539
                  bltu         s3, zero, 65f
                  sll          a7, t3, s5
                  slt          t0, a3, ra
                  lui          s8, 904542
64:               bgeu         a5, ra, 67f
65:               sltiu        zero, gp, 1106
                  or           a4, t5, zero
67:               and          a4, s2, a1
                  blt          s7, t5, 78f
                  xori         t6, zero, 375
                  auipc        ra, 764837
                  or           s0, tp, t3
                  addi         t0, t2, -310
                  sltu         gp, s7, a1
                  sltu         s2, s1, s8
                  xori         t0, a4, -1570
                  sltu         tp, t4, t1
                  slt          s5, t1, a1
78:               srai         a1, a3, 23
                  or           s9, s5, s6
                  sll          s0, t5, s8
                  sll          t4, s8, s8
                  bltu         s0, s9, 97f
                  and          gp, t3, ra
                  sra          s8, sp, t0
                  sll          s6, t2, s5
                  bne          s2, s8, 106f
                  or           s11, s2, s7
                  xori         t0, s1, 1278
                  srai         t2, s8, 8
                  xori         a2, a7, 494
                  srl          tp, s3, s6
                  xori         s9, s11, 1068
                  lui          sp, 300658
                  bgeu         a1, s6, 107f
                  srl          t2, s1, s7
                  ori          a4, a5, -930
97:               srai         s0, a3, 12
                  auipc        a4, 430783
                  or           t6, s2, s7
                  sltu         s0, t3, s4
                  auipc        t2, 621159
                  sltu         t0, s0, ra
                  la           t1, sub_1
                  ori          gp, t3, 1459
                  addi         t1, t1, 110
                  srli         t3, s4, 17
                  sra          t5, s5, gp
                  beq          a6, s11, main_j1 #branch to jump instr
                  andi         s0, gp, 638
                  or           s1, t6, t1
                  sltu         s3, t3, t3
main_j1:          jalr         t6, t1, -109 #jump main -> sub_1
                  srli         a5, s10, 28
                  sra          s6, t2, a6
                  sll          s3, s11, s6
                  xori         t1, t6, -1906
                  slt          s2, t4, t3
106:              srl          s0, a1, zero
107:              srli         a7, s9, 21
                  srl          s5, a2, a5
                  beq          t2, s7, 126f
                  sltiu        s2, s8, 460
                  auipc        t1, 286899
                  addi         a6, a5, -1210
                  bgeu         s5, s5, 118f
                  bgeu         s11, a5, 117f
                  addi         s5, s3, -796
                  srl          t6, s4, s8
117:              andi         s5, a6, 144
118:              slt          t0, s6, s2
                  lui          ra, 458071
                  slli         a2, t5, 31
                  sub          s5, a6, s0
                  slli         t2, t2, 30
                  la           s8, sub_1
                  sltu         t2, a0, a1
                  add          s7, zero, a0
                  auipc        s1, 508605
                  addi         t1, s3, -1120
                  addi         s8, s8, -65
                  srli         t0, tp, 31
                  lui          s11, 401631
                  sltu         s9, a1, s8
main_j2:          jalr         t6, s8, 66 #jump main -> sub_1
                  nop
                  srai         zero, s4, 29
                  sltiu        s0, s8, 1168
126:              blt          t3, s9, 127f
127:              addi         s1, s9, 552
                  lui          s7, 271027
                  sub          a1, t0, a4
                  addi         s3, t4, 365
                  bltu         a7, s6, 132f
132:              slt          s5, s0, s4
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            nop
                  or           a2, tp, sp
                  beq          s11, s1, sub_2_stack_p
                  slt          a1, tp, tp
                  sra          tp, a0, a5
                  srl          s2, a7, a2
                  lui          s4, 947690
sub_2_stack_p:    addi         s10, s10, -24
                  or           s9, s7, a2
                  sw           t6, 4(s10)
                  slt          ra, t4, t1
                  slli         s0, t5, 22
                  srli         t5, sp, 25
sub_2_14:         jal          t6, 7f
0:                jal          s11, 12f
1:                jal          s4, 11f
2:                jal          ra, 3f
3:                jal          ra, 13f
4:                jal          ra, 9f
5:                jal          ra, 8f
6:                jal          ra, 2b
7:                jal          ra, 0b
8:                jal          tp, 1b
9:                jal          ra, 5b
10:               jal          ra, 4b
11:               jal          ra, 6b
12:               jal          ra, 10b
13:               or           s8, s2, t1
sub_2_20:         jal          t6, 5f
0:                jal          gp, 7f
1:                jal          ra, 15f
2:                jal          ra, 9f
3:                jal          ra, 4f
4:                jal          ra, 10f
5:                jal          t1, 11f
6:                jal          tp, 2b
7:                jal          ra, 3b
8:                jal          t6, 1b
9:                jal          ra, 12f
10:               jal          t0, 16f
11:               jal          ra, 14f
12:               jal          ra, 0b
13:               jal          s11, 8b
14:               jal          t1, 13b
15:               jal          a1, 6b
16:               srl          t5, a6, a7
sub_2_12:         jal          t6, 11f
0:                jal          t4, 10f
1:                jal          t1, 5f
2:                jal          gp, 6f
3:                jal          ra, 12f
4:                jal          s6, 13f
5:                jal          t1, 3b
6:                jal          s11, 4b
7:                jal          ra, 0b
8:                jal          ra, 2b
9:                jal          sp, 8b
10:               jal          gp, 1b
11:               jal          t1, 9b
12:               jal          ra, 14f
13:               jal          ra, 7b
14:               lui          a2, 803063
sub_2_16:         jal          t6, 13f
0:                jal          ra, 2f
1:                jal          a2, 17f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          t1, 12f
5:                jal          ra, 16f
6:                jal          ra, 1b
7:                jal          sp, 14f
8:                jal          ra, 11f
9:                jal          ra, 3b
10:               jal          a2, 4b
11:               jal          ra, 6b
12:               jal          t0, 9b
13:               jal          ra, 15f
14:               jal          t1, 8b
15:               jal          s0, 10b
16:               jal          t1, 7b
17:               srli         s6, sp, 2
sub_2_19:         jal          t6, 23f
0:                jal          ra, 6f
1:                jal          ra, 26f
2:                jal          t1, 24f
3:                jal          t1, 10f
4:                jal          ra, 25f
5:                jal          ra, 8f
6:                jal          s6, 11f
7:                jal          t1, 9f
8:                jal          ra, 16f
9:                jal          t2, 22f
10:               jal          ra, 13f
11:               jal          ra, 21f
12:               jal          ra, 17f
13:               jal          s11, 15f
14:               jal          ra, 12b
15:               jal          t1, 14b
16:               jal          ra, 3b
17:               jal          t1, 1b
18:               jal          ra, 7b
19:               jal          ra, 20f
20:               jal          ra, 2b
21:               jal          ra, 18b
22:               jal          ra, 5b
23:               jal          t1, 19b
24:               jal          t4, 4b
25:               jal          t1, 0b
26:               add          s11, a7, t1
sub_2_7:          jal          t6, 7f
0:                jal          a6, 6f
1:                jal          s8, 11f
2:                jal          t1, 3f
3:                jal          t1, 10f
4:                jal          ra, 0b
5:                jal          ra, 8f
6:                jal          t1, 1b
7:                jal          t1, 5b
8:                jal          s5, 9f
9:                jal          t0, 2b
10:               jal          t1, 4b
11:               slli         s4, s2, 17
sub_2_11:         jal          t6, 10f
0:                jal          ra, 8f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          a1, 5f
5:                jal          ra, 1b
6:                jal          t1, 3b
7:                jal          ra, 12f
8:                jal          t1, 4b
9:                jal          ra, 2b
10:               jal          t3, 6b
11:               jal          ra, 0b
12:               slti         s4, t1, -1594
sub_2_10:         jal          t6, 10f
0:                jal          ra, 5f
1:                jal          ra, 23f
2:                jal          t1, 24f
3:                jal          a6, 14f
4:                jal          t1, 8f
5:                jal          ra, 15f
6:                jal          t1, 12f
7:                jal          ra, 2b
8:                jal          ra, 25f
9:                jal          ra, 22f
10:               jal          ra, 6b
11:               jal          a7, 20f
12:               jal          ra, 0b
13:               jal          ra, 1b
14:               jal          t1, 4b
15:               jal          t1, 11b
16:               jal          ra, 17f
17:               jal          a6, 3b
18:               jal          t1, 16b
19:               jal          ra, 18b
20:               jal          t1, 13b
21:               jal          ra, 9b
22:               jal          s11, 19b
23:               jal          t1, 7b
24:               jal          ra, 21b
25:               and          zero, t3, t1
sub_2_9:          jal          t6, 5f
0:                jal          t1, 8f
1:                jal          t5, 15f
2:                jal          gp, 16f
3:                jal          s0, 10f
4:                jal          ra, 3b
5:                jal          ra, 9f
6:                jal          ra, 0b
7:                jal          t1, 12f
8:                jal          a5, 4b
9:                jal          sp, 6b
10:               jal          ra, 14f
11:               jal          gp, 1b
12:               jal          s4, 2b
13:               jal          s5, 11b
14:               jal          a6, 13b
15:               jal          ra, 7b
16:               addi         tp, t4, 19
sub_2_5:          jal          t6, 1f
0:                jal          t1, 12f
1:                jal          t1, 8f
2:                jal          t1, 3f
3:                jal          t1, 5f
4:                jal          ra, 22f
5:                jal          s0, 4b
6:                jal          t1, 14f
7:                jal          gp, 19f
8:                jal          t1, 13f
9:                jal          ra, 17f
10:               jal          t1, 20f
11:               jal          gp, 21f
12:               jal          ra, 7b
13:               jal          t1, 6b
14:               jal          t1, 0b
15:               jal          a1, 9b
16:               jal          ra, 15b
17:               jal          ra, 18f
18:               jal          t1, 10b
19:               jal          ra, 16b
20:               jal          t1, 11b
21:               jal          t3, 2b
22:               sll          s6, s1, a5
sub_2_8:          jal          t6, 24f
0:                jal          ra, 1f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          t1, 17f
4:                jal          ra, 5f
5:                jal          sp, 9f
6:                jal          ra, 20f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          s3, 12f
10:               jal          ra, 28f
11:               jal          sp, 26f
12:               jal          ra, 14f
13:               jal          t1, 23f
14:               jal          ra, 16f
15:               jal          ra, 4b
16:               jal          ra, 8b
17:               jal          t1, 6b
18:               jal          s4, 22f
19:               jal          s6, 27f
20:               jal          ra, 10b
21:               jal          ra, 15b
22:               jal          t1, 13b
23:               jal          ra, 0b
24:               jal          ra, 25f
25:               jal          ra, 19b
26:               jal          t5, 18b
27:               jal          ra, 21b
28:               or           a6, a1, a5
sub_2_1:          jal          t6, 1f
0:                jal          ra, 17f
1:                jal          ra, 15f
2:                jal          tp, 18f
3:                jal          ra, 5f
4:                jal          ra, 12f
5:                jal          s8, 7f
6:                jal          ra, 3b
7:                jal          s0, 4b
8:                jal          a1, 14f
9:                jal          ra, 0b
10:               jal          a6, 20f
11:               jal          ra, 10b
12:               jal          ra, 16f
13:               jal          t0, 6b
14:               jal          t1, 9b
15:               jal          s9, 8b
16:               jal          t1, 2b
17:               jal          ra, 13b
18:               jal          tp, 19f
19:               jal          ra, 11b
20:               addi         s9, a0, -287
sub_2_4:          jal          t6, 9f
0:                jal          ra, 6f
1:                jal          tp, 0b
2:                jal          ra, 4f
3:                jal          t0, 7f
4:                jal          ra, 12f
5:                jal          ra, 2b
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          t1, 11f
11:               jal          ra, 1b
12:               auipc        s2, 185707
sub_2_13:         jal          t6, 7f
0:                jal          ra, 13f
1:                jal          t1, 9f
2:                jal          ra, 19f
3:                jal          s9, 5f
4:                jal          s11, 2b
5:                jal          ra, 16f
6:                jal          ra, 15f
7:                jal          s4, 1b
8:                jal          ra, 17f
9:                jal          ra, 3b
10:               jal          a2, 4b
11:               jal          sp, 14f
12:               jal          t0, 8b
13:               jal          s4, 18f
14:               jal          t1, 21f
15:               jal          t1, 12b
16:               jal          ra, 0b
17:               jal          ra, 11b
18:               jal          ra, 20f
19:               jal          ra, 6b
20:               jal          s9, 10b
21:               nop
sub_2_0:          jal          t6, 27f
0:                jal          ra, 15f
1:                jal          ra, 13f
2:                jal          s6, 17f
3:                jal          ra, 9f
4:                jal          ra, 25f
5:                jal          ra, 23f
6:                jal          t1, 24f
7:                jal          ra, 10f
8:                jal          t1, 19f
9:                jal          t1, 16f
10:               jal          ra, 0b
11:               jal          t5, 12f
12:               jal          ra, 26f
13:               jal          ra, 6b
14:               jal          t1, 4b
15:               jal          t1, 1b
16:               jal          ra, 20f
17:               jal          ra, 7b
18:               jal          ra, 2b
19:               jal          ra, 5b
20:               jal          gp, 28f
21:               jal          ra, 14b
22:               jal          ra, 3b
23:               jal          t1, 22b
24:               jal          ra, 8b
25:               jal          s0, 11b
26:               jal          a2, 18b
27:               jal          ra, 21b
28:               xor          gp, sp, a4
sub_2_18:         jal          t6, 4f
0:                jal          sp, 21f
1:                jal          ra, 18f
2:                jal          ra, 12f
3:                jal          a2, 5f
4:                jal          t1, 8f
5:                jal          ra, 15f
6:                jal          ra, 11f
7:                jal          ra, 26f
8:                jal          ra, 0b
9:                jal          s11, 19f
10:               jal          ra, 23f
11:               jal          ra, 3b
12:               jal          t1, 20f
13:               jal          s8, 24f
14:               jal          t1, 1b
15:               jal          t2, 16f
16:               jal          t0, 10b
17:               jal          s1, 9b
18:               jal          s0, 17b
19:               jal          tp, 25f
20:               jal          ra, 27f
21:               jal          ra, 14b
22:               jal          ra, 13b
23:               jal          t1, 22b
24:               jal          s4, 2b
25:               jal          ra, 7b
26:               jal          ra, 6b
27:               nop
sub_2_15:         jal          t6, 2f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          ra, 8f
4:                jal          a4, 3b
5:                jal          s7, 11f
6:                jal          s11, 15f
7:                jal          t1, 12f
8:                jal          ra, 5b
9:                jal          t1, 10f
10:               jal          ra, 1b
11:               jal          t1, 14f
12:               jal          t5, 13f
13:               jal          a4, 4b
14:               jal          ra, 16f
15:               jal          t1, 9b
16:               lui          zero, 157341
sub_2_6:          jal          t6, 27f
0:                jal          ra, 20f
1:                jal          ra, 16f
2:                jal          t1, 3f
3:                jal          ra, 5f
4:                jal          ra, 28f
5:                jal          t1, 12f
6:                jal          t6, 23f
7:                jal          t1, 24f
8:                jal          t1, 7b
9:                jal          sp, 22f
10:               jal          gp, 1b
11:               jal          ra, 13f
12:               jal          t1, 11b
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          t1, 2b
16:               jal          ra, 26f
17:               jal          s6, 4b
18:               jal          s6, 19f
19:               jal          ra, 14b
20:               jal          ra, 25f
21:               jal          s0, 18b
22:               jal          ra, 0b
23:               jal          ra, 21b
24:               jal          ra, 10b
25:               jal          ra, 15b
26:               jal          ra, 9b
27:               jal          t1, 6b
28:               auipc        a7, 670300
sub_2_2:          jal          t6, 9f
0:                jal          a7, 6f
1:                jal          tp, 4f
2:                jal          t1, 13f
3:                jal          sp, 8f
4:                jal          ra, 11f
5:                jal          gp, 1b
6:                jal          a7, 7f
7:                jal          t1, 3b
8:                jal          ra, 10f
9:                jal          t1, 0b
10:               jal          a7, 12f
11:               jal          ra, 2b
12:               jal          s2, 5b
13:               and          t2, tp, a6
                  auipc        s1, 702197
                  srai         zero, t5, 31
                  bne          s5, s7, 15f
                  srli         t5, a5, 7
                  srli         t5, a3, 20
                  beq          a2, s8, 13f
                  srli         tp, zero, 11
                  srli         s0, a0, 26
                  bltu         a7, t4, 24f
                  xori         t0, a1, -806
                  sltu         s8, s2, t6
                  srl          s5, s7, s5
                  sll          gp, a7, s1
13:               srai         a7, s9, 13
                  sltiu        a4, a1, 479
15:               andi         a7, a6, -1505
                  auipc        s3, 791574
                  addi         ra, a2, 491
                  xori         s3, sp, -110
                  lui          s8, 836442
                  bne          t1, a7, 37f
                  beq          t4, s9, 36f
                  slli         s8, zero, 17
                  slti         a4, s10, -780
24:               blt          tp, tp, 26f
                  slt          s5, a4, t4
26:               blt          a7, s1, 39f
                  addi         t2, s10, -846
                  addi         t3, s3, -616
                  sltiu        s6, s0, -1199
                  slli         s7, a1, 21
                  sra          s3, a1, s2
                  slti         s7, s0, 731
                  lui          t4, 624560
                  xori         sp, s5, -1611
                  sra          s11, s6, ra
36:               xor          t6, t2, s4
37:               add          s9, s7, a5
                  lui          s3, 830245
39:               beq          a4, s11, 47f
                  bne          a3, t6, 43f
                  slli         a6, s0, 13
                  srai         zero, s4, 28
43:               auipc        sp, 754215
                  slli         a1, ra, 11
                  bgeu         s6, a4, 60f
                  sltiu        s3, a1, 1140
47:               addi         t4, tp, -726
                  sra          t5, a0, a7
                  slti         ra, t3, 1863
                  beq          a3, t0, 62f
                  nop
                  bgeu         s1, a2, 57f
                  slti         s6, t4, 126
                  or           a1, s11, zero
                  slt          a2, s3, a2
                  ori          s9, t5, -266
57:               slli         zero, a3, 18
                  beq          s10, a7, 63f
                  bge          s10, a7, 61f
60:               srl          t0, t1, a4
61:               nop
62:               auipc        t2, 1038775
63:               xori         s7, ra, -342
                  blt          s9, s9, 65f
65:               sra          s6, s10, sp
                  auipc        a6, 183688
                  sub          gp, s5, a6
                  srai         s9, t3, 24
                  bge          sp, s0, 70f
70:               bge          a2, a3, 74f
                  sll          a7, a0, s11
                  bgeu         s11, t5, 76f
                  bgeu         t1, s3, 83f
74:               sll          s0, a1, t1
                  lui          t0, 671486
76:               nop
                  nop
                  and          gp, a7, t2
                  or           s1, t4, s4
                  sub          t3, t4, s5
                  add          s1, s4, gp
                  slt          a7, t1, gp
83:               slti         t4, s5, -1553
                  slli         s1, a2, 29
                  sll          gp, s1, a1
                  srai         s1, s8, 22
                  nop
                  bne          a2, a3, 93f
                  srl          s6, tp, tp
                  ori          s6, t4, -1521
                  blt          a4, sp, 92f
92:               nop
93:               bgeu         t4, a6, 104f
                  bgeu         t1, t2, 107f
                  sltu         s0, a3, s5
                  xor          t5, s2, s0
                  xori         a7, s1, -910
                  bne          a5, a0, 108f
                  sll          a4, s11, a0
                  bne          t6, s5, 101f
101:              slt          s11, t3, a6
                  bne          a6, a1, 111f
                  nop
104:              auipc        gp, 218589
                  sltiu        s2, gp, 1199
                  xori         a6, s3, -1260
107:              lui          a6, 514045
108:              nop
                  sub          t2, s8, s2
                  blt          a6, s6, 113f
111:              add          a6, s5, zero
                  srl          t6, sp, s11
113:              addi         a7, a3, 1118
                  xori         ra, t5, 151
                  auipc        s9, 179045
                  xor          a7, a4, s5
                  addi         s5, a5, -732
                  sltu         s1, a3, sp
                  slt          t4, s3, tp
                  sltu         ra, s1, tp
                  andi         ra, a7, 1828
                  slt          a2, ra, a4
                  sltu         t0, a1, a4
                  bgeu         s4, ra, 139f
                  sltu         ra, a2, s1
                  bltu         s0, t0, 137f
                  sltu         s2, gp, s3
                  or           s4, a7, s0
                  slti         tp, a0, 478
                  srai         zero, s10, 26
                  slli         sp, tp, 27
                  sll          t0, a1, a3
                  srl          s4, s4, a3
                  slli         s5, s5, 8
                  andi         a1, a5, -1062
                  slti         s0, s5, -12
137:              beq          s0, s1, 144f
                  slti         a2, a5, -141
139:              add          a5, t1, s3
                  blt          s1, s11, 145f
                  blt          t4, tp, 157f
                  bne          tp, a6, 147f
                  sltu         s3, zero, t1
144:              andi         a6, s0, -65
145:              sub          tp, a4, t0
                  bne          a3, s2, 156f
147:              sltu         t4, gp, a3
                  addi         tp, a6, 411
                  ori          a6, gp, -726
                  bge          s9, a3, 153f
                  sltiu        s7, s8, -1556
                  addi         t4, s8, 2029
153:              andi         s2, s11, -867
                  slli         sp, t1, 18
                  srai         a7, a2, 23
156:              slt          s1, a7, a2
157:              and          gp, a5, a3
                  srl          t3, a6, t0
                  auipc        s4, 159770
                  sltu         sp, t6, gp
                  slti         a7, a3, 1586
                  bgeu         s10, s6, 170f
                  xori         a1, t1, 936
                  lui          sp, 782902
                  auipc        t3, 256975
                  ori          s6, s4, -391
                  beq          gp, s4, 168f
168:              bltu         s11, t6, 181f
                  bne          t6, s1, 186f
170:              sltiu        t5, ra, 1930
                  slti         t0, t3, -1367
                  ori          a4, t2, -1654
                  nop
                  slt          t2, t3, s2
                  nop
                  ori          s6, a0, -750
                  sltiu        gp, a0, -739
                  add          s7, a0, a7
                  blt          sp, s3, 183f
                  srai         t4, t3, 13
181:              sltu         gp, s2, s1
                  bge          a3, ra, 186f
183:              xor          s7, s1, s9
                  nop
                  srli         s9, a1, 14
186:              srli         s6, ra, 21
                  ori          t2, tp, -1308
                  srai         t1, a1, 24
                  bgeu         t5, a7, 202f
                  sltiu        ra, s10, 75
                  blt          gp, a2, 192f
192:              add          a5, a2, s4
                  sub          s3, a2, ra
                  sub          a2, t0, s11
                  add          t1, a4, s11
                  nop
                  ori          s0, s3, 206
                  lui          t6, 1012920
                  or           t4, gp, s10
                  bne          s11, s10, 201f
201:              sub          t0, s7, a0
202:              srl          t5, tp, a2
                  srl          t5, s5, s1
                  auipc        t6, 225112
                  bgeu         a5, s11, 215f
                  and          a5, a4, a7
                  xori         a5, s1, 929
                  xor          s5, tp, t1
                  sltu         s11, s11, gp
                  slti         a2, t6, 1734
                  or           t5, t1, t2
                  bge          s10, s7, 227f
                  bge          s5, s4, 215f
                  sub          s0, t4, t6
215:              srl          a6, sp, a4
                  srl          t6, t5, t0
                  sltiu        s7, a1, 142
                  auipc        s1, 667236
                  srli         s7, t6, 1
                  andi         tp, t5, -1159
                  bgeu         s11, s2, 228f
                  add          ra, t6, tp
                  bne          s6, t6, 226f
                  srai         a1, t1, 16
                  bltu         t5, a7, 226f
226:              lui          s9, 561219
227:              sltu         s5, a2, s11
228:              srl          tp, zero, a2
                  sra          s8, t6, s11
                  nop
                  bgeu         s7, gp, 244f
                  sll          a6, s10, t6
                  sltiu        t6, sp, -770
                  sltu         zero, t5, t3
                  xori         a1, t3, -878
                  add          s1, s10, s8
                  slli         s5, a0, 29
                  beq          gp, a5, 253f
                  lui          a7, 600101
                  ori          a2, a4, -1003
                  slt          gp, t3, s8
                  sltiu        s7, t3, 989
                  sltu         a2, s10, a1
244:              addi         a2, a4, -2029
                  lui          s0, 241812
                  slt          s1, a5, t2
                  andi         s4, s1, 1867
                  bltu         a7, a7, 259f
                  slli         t1, s7, 22
                  xori         a1, t0, 101
                  srai         s3, zero, 21
                  sll          a6, a2, s9
253:              nop
                  add          a2, a1, s7
                  slt          sp, t4, s1
                  bgeu         ra, gp, 264f
                  slli         ra, t6, 29
                  blt          t3, zero, 267f
259:              bltu         t1, t4, 274f
                  add          a6, tp, tp
                  srl          s11, a6, t3
                  sltiu        t6, s6, 873
                  sra          s7, s6, a0
264:              beq          t0, ra, 269f
                  bltu         sp, t4, 267f
                  bgeu         s11, a0, 278f
267:              sub          a6, s4, t5
                  slt          t3, s5, s8
269:              srai         t0, s5, 24
                  andi         s9, a2, -456
                  xori         zero, a7, -1591
                  srl          s7, ra, zero
                  slli         a4, a1, 28
274:              sll          t0, t6, t5
                  slli         s4, s5, 3
                  xor          s3, t3, s5
                  slt          gp, a3, a7
278:              srl          t4, t6, s2
                  and          t0, a6, s9
                  and          a1, t2, s2
                  xori         t0, t1, -1408
                  bne          a0, s10, 293f
                  add          t5, t5, s5
                  add          tp, a6, a1
                  nop
                  or           s2, t5, s11
                  sra          t2, s0, t1
                  xori         s1, a4, 1277
                  andi         t6, s4, 3
                  srli         s9, s5, 24
                  auipc        sp, 899944
                  bne          s7, a2, 307f
293:              sltiu        s9, sp, -1129
                  bltu         t2, t2, 295f
295:              auipc        s5, 186492
                  bge          s1, zero, 311f
                  addi         t5, s10, 1504
                  bgeu         t1, s8, 305f
                  slt          gp, t5, s6
                  and          a1, s5, a1
                  beq          s11, t3, 303f
                  andi         s0, t4, -452
303:              auipc        s2, 410084
                  bgeu         a6, t2, 307f
305:              ori          s6, t4, 2019
                  blt          t0, a7, 323f
307:              or           s11, s9, a5
                  srli         t1, sp, 14
                  bne          a0, s10, 313f
                  sltu         a4, t5, t2
311:              add          t0, t2, s8
                  srli         s0, a0, 5
313:              srai         a2, s4, 24
                  xori         a4, s3, 1340
                  andi         s9, a7, 1599
                  auipc        s5, 711326
                  srai         s0, t0, 22
                  nop
                  sra          s0, tp, a0
                  bgeu         s5, s7, 321f
321:              sra          sp, s8, s8
                  sub          s2, s11, s2
323:              beq          a6, a3, 338f
                  beq          t4, t0, 328f
                  and          zero, s4, s7
                  slt          a1, t5, t3
                  addi         t2, a7, 1835
328:              auipc        s3, 557668
                  sub          t1, sp, gp
                  and          t2, t5, ra
                  beq          s8, s2, 342f
                  andi         a6, a6, -1929
                  sltu         t3, s7, a3
                  xori         s2, t0, 1458
                  slt          a2, a1, s8
                  beq          a5, zero, 346f
                  sub          a4, a5, t6
338:              addi         zero, zero, -34
                  slt          s6, ra, sp
                  slli         s11, s1, 1
                  xori         t0, a7, 44
342:              bge          a7, s11, 343f
343:              srli         s7, ra, 11
                  andi         s6, s3, -22
                  sltiu        gp, t1, -1358
346:              sll          s6, s0, s5
                  srl          t2, a0, t3
                  bltu         gp, a0, 357f
                  bge          s3, a2, 354f
                  ori          s6, s0, -1929
                  nop
                  bne          zero, s3, 353f
353:              slli         s7, a0, 8
354:              sra          t4, s11, s6
                  ori          a2, a4, 1242
                  bne          tp, sp, 361f
357:              srl          t4, t3, a0
                  lui          ra, 883054
                  addi         a7, s0, 940
                  slti         t6, s11, -220
361:              slti         zero, a2, -1618
                  sltu         a5, a5, t2
                  or           t4, s1, t4
                  bgeu         tp, s4, 372f
                  srli         s2, s11, 30
                  bne          zero, t0, 368f
                  ori          t1, s2, -1745
368:              addi         t3, t1, 854
                  or           a6, s0, s3
                  sub          s3, s11, s8
                  slti         t0, t5, -531
372:              bgeu         s9, s9, 385f
                  slt          s0, a2, sp
                  xori         t1, a5, -2013
                  bge          t3, t1, 383f
                  andi         t2, t6, 1850
                  bge          a1, a1, 393f
                  beq          s5, zero, 381f
                  sub          s6, a7, a5
                  add          s9, s9, a0
381:              addi         s1, sp, 740
                  sltiu        t3, s6, 1165
383:              sll          t6, a5, ra
                  blt          t3, s4, 396f
385:              auipc        s4, 765105
                  or           a2, ra, a4
                  sltiu        a2, s3, -579
                  andi         a6, t0, -1887
                  or           s2, s11, s6
                  beq          s5, s8, 401f
                  sll          zero, s11, a7
                  srl          zero, t2, a7
393:              blt          s1, t4, 406f
                  ori          a6, t1, 741
                  or           s8, s5, s11
396:              bge          s5, a2, 401f
                  sltu         a5, sp, tp
                  sub          t0, t4, s9
                  sltiu        t1, s3, 1419
                  bne          s4, a7, 410f
401:              sltu         s0, s10, s9
                  srli         ra, t1, 15
                  lui          a1, 448799
                  blt          gp, a2, 417f
                  beq          s5, t4, 420f
406:              bge          t1, t0, 419f
                  srl          s5, a3, s8
                  slt          t4, s4, s2
                  xori         s1, s6, -568
410:              srli         t1, sp, 13
                  slti         t4, s9, 1389
                  slti         t3, sp, 901
                  bge          gp, s11, 418f
                  or           a4, s3, t1
                  sltu         ra, t1, a4
                  addi         t1, t6, 124
417:              bltu         tp, s1, 430f
418:              or           gp, s8, t1
419:              srai         a2, a5, 5
420:              sltu         t1, s9, t0
                  slti         s0, a5, 1297
                  or           s5, sp, t4
                  bne          a7, ra, 428f
                  lui          t1, 134729
                  blt          s11, a7, 441f
                  sra          t1, t0, gp
                  sra          t5, t4, s7
428:              sll          sp, a2, t6
                  bgeu         s11, t5, 431f
430:              addi         gp, s6, 1525
431:              bltu         a6, t0, 441f
                  sub          gp, a4, zero
                  addi         s11, s10, 1904
                  andi         a4, t0, 1026
                  beq          zero, s5, 450f
                  sub          t4, sp, s6
                  srai         s1, s0, 31
                  ori          s7, gp, -552
                  bgeu         s0, sp, 452f
                  or           s0, s11, a2
441:              slti         ra, a5, 1598
                  auipc        a7, 1017896
                  sub          t5, sp, a7
                  srl          s3, a6, s0
                  srl          t0, gp, t4
                  srli         t5, s2, 18
                  sra          s9, a7, t3
                  and          s4, ra, s3
                  xor          s0, s4, t1
450:              bne          s1, tp, 451f
451:              bge          s10, gp, 454f
452:              add          t2, t6, s2
                  slti         t4, gp, 1505
454:              xor          s6, s10, t6
                  sub          t2, t3, a3
                  ori          t3, a6, -1764
                  la           a2, sub_4
                  and          a4, a7, ra
                  and          gp, t6, t2
                  addi         s3, t6, 887
                  slti         tp, a6, -1849
                  addi         a2, a2, -706
                  addi         t6, s1, -766
sub_2_j6:         jalr         t6, a2, 706 #jump sub_2 -> sub_4
                  ori          ra, t6, 1653
                  andi         s11, s7, -1726
                  lui          t1, 425963
                  andi         s11, s3, 505
                  auipc        a5, 836595
                  slti         s5, a0, 811
                  lui          s5, 565191
                  nop
                  bge          a7, a5, 469f
                  xori         t1, s11, -793
                  nop
                  beq          s3, s9, 469f
469:              bltu         a6, a0, 471f
                  xor          tp, a2, s11
471:              sltiu        s0, s4, -483
                  addi         t1, t4, -1409
                  or           t2, gp, a2
                  andi         a2, s7, -157
                  beq          a1, s1, 476f
476:              sra          t5, tp, s9
                  bgeu         a7, t0, 484f
                  srl          a2, a5, s0
                  bne          t3, ra, 489f
                  bge          s10, a5, 489f
                  and          a7, t6, a4
                  slt          t5, s8, a2
                  blt          a4, a0, 495f
484:              srli         sp, a5, 5
                  slt          t2, a5, t3
                  ori          s3, a2, -211
                  slt          a5, a0, s1
                  addi         s1, s4, -925
489:              sltiu        s6, s5, -1663
                  srli         s3, s9, 8
                  lui          tp, 339899
                  slti         tp, s2, 1465
                  sll          s1, a7, t4
                  slti         s11, s3, 1719
495:              bgeu         a7, a5, 503f
                  or           a4, s3, zero
                  xori         a5, s4, -1060
                  bltu         ra, t0, 509f
                  srai         s1, t6, 8
                  andi         t1, t3, 1981
                  bge          s1, a7, 509f
                  beq          s2, t4, 505f
503:              sll          ra, a5, s3
                  sub          a5, s9, tp
505:              sltiu        t3, s1, 1288
                  slt          s6, a0, a6
                  slt          t2, s0, a0
                  sltu         t4, s10, a3
509:              sltu         s8, s9, t2
                  bltu         s2, a6, 514f
                  or           a7, zero, s10
                  bne          a0, s9, 513f
513:              srai         t6, s6, 9
514:              ori          a4, t6, 1340
                  sll          a4, s6, a5
                  slti         s6, a2, 1260
                  nop
                  slli         tp, t2, 12
                  xori         a4, t4, -1993
                  sltiu        s8, ra, 148
                  sra          gp, a1, t5
                  srai         s3, ra, 27
                  bltu         s1, s7, 528f
                  andi         a7, s3, -1745
                  bltu         s10, t3, 536f
                  sltu         t4, a1, s10
                  auipc        tp, 452702
528:              sll          t4, a3, t5
                  bne          s1, s11, 544f
                  or           a1, a3, a5
                  slli         t1, a3, 16
                  bne          s6, t6, 549f
                  xor          s2, gp, t4
                  lui          a4, 890020
                  add          s7, s8, a7
536:              lui          s8, 950967
                  andi         sp, t6, 47
                  bge          s11, t1, 545f
                  bgeu         ra, t3, 544f
                  add          s6, t1, s9
                  slt          sp, sp, sp
                  or           a7, a4, s7
                  slli         s2, t0, 19
544:              xor          s4, s2, s6
545:              xori         s11, s10, -1847
                  bne          a0, a4, 558f
                  sll          a6, t3, tp
                  slli         t1, sp, 15
549:              bne          s7, a4, 550f
550:              xori         gp, a6, -412
                  srl          t3, a7, s9
                  addi         zero, ra, 202
                  blt          s5, a5, 556f
                  and          s5, a0, a0
                  nop
556:              lui          ra, 630123
                  ori          t3, t6, 115
558:              sltiu        a2, s11, 1138
                  bltu         a3, t5, 569f
                  add          s8, ra, t1
                  slli         t2, a5, 14
                  nop
                  ori          s0, a5, 157
                  slt          a7, a4, t0
                  sll          s11, a2, s9
                  bne          s10, s9, 568f
                  andi         t2, s2, 237
568:              bltu         zero, zero, 579f
569:              xori         a4, a1, -439
                  srli         zero, s5, 8
                  xori         a7, a1, 669
                  and          s2, s10, t2
                  blt          zero, s6, 589f
                  bgeu         t6, a5, 589f
                  and          tp, s8, s0
                  sltu         s0, s5, a3
                  slli         a1, t0, 28
                  bgeu         t2, ra, 591f
579:              bltu         s3, s11, 583f
                  bltu         tp, sp, 585f
                  or           s8, s9, s9
                  srl          a6, s0, s0
583:              xor          s5, t1, s4
                  slt          t2, a2, s5
585:              sll          s3, s2, s11
                  sltiu        a1, s0, 476
                  andi         s4, s7, 1125
                  auipc        a6, 69175
589:              auipc        s2, 188266
                  addi         a7, t1, 85
591:              and          sp, zero, s1
                  sll          t1, s8, s0
                  lui          t6, 554371
                  nop
                  sltiu        s8, t6, 1842
                  srai         s6, s4, 16
                  sltiu        s11, t0, 131
                  or           a4, s5, a1
                  slti         t4, s7, 1487
                  sltiu        t1, a6, 473
                  sltiu        t1, s10, -898
                  xori         s4, a4, 671
                  addi         s4, t6, -1517
                  sra          tp, t1, ra
                  bge          s6, s4, 606f
606:              srl          s2, t2, a7
                  blt          a4, t6, 624f
                  xor          s9, s2, gp
                  sltiu        t4, ra, -181
                  srai         t4, s5, 22
                  srai         t5, s0, 15
                  beq          s9, s3, 620f
                  slti         t5, a5, 606
                  slt          s9, s5, s8
                  sltiu        tp, s10, -379
                  add          a7, a2, t5
                  bgeu         a0, zero, 630f
                  sra          t3, s5, s8
                  blt          s10, gp, 620f
620:              andi         s11, a3, 526
                  bltu         t0, t4, 636f
                  auipc        s7, 982236
                  srl          a1, s10, sp
624:              srl          s11, t2, t2
                  sltu         s3, a4, zero
                  sll          zero, s6, a7
                  add          s5, a3, s4
                  andi         ra, a6, 718
                  and          t3, a2, s10
630:              beq          a4, a4, 634f
                  and          s4, s10, tp
                  nop
                  srl          s9, sp, s6
634:              sltu         a4, a0, t6
                  xori         tp, t5, -544
636:              add          zero, sp, zero
                  slli         s11, a3, 27
                  blt          a6, sp, 648f
                  lui          s7, 981706
                  bne          a1, a0, 653f
                  bne          s2, s7, 644f
                  lui          s11, 301253
                  srli         s11, s9, 28
644:              add          a7, gp, s11
                  nop
                  or           t1, s7, a5
                  xori         a1, s7, -1935
648:              and          s0, t2, zero
                  slti         s9, s8, -1885
                  bltu         t6, a7, 661f
                  sub          s4, a6, s1
                  sltu         zero, a2, tp
653:              slti         t2, t4, -1687
                  bltu         s8, t4, 655f
655:              ori          a7, a1, 278
                  sra          s7, zero, s6
                  slli         s6, a4, 16
                  nop
                  sub          s0, a3, s11
                  lui          a5, 204720
661:              beq          s1, s0, 663f
                  srai         gp, a4, 25
663:              sltiu        t6, sp, -1665
                  bgeu         t1, zero, 679f
                  blt          s1, s0, 674f
                  ori          a5, a3, -1142
                  beq          a3, ra, 672f
                  srl          s7, zero, s8
                  xori         s3, t3, -2021
                  bltu         gp, s8, 678f
                  auipc        s9, 623074
672:              bge          gp, s9, 685f
                  srli         s2, s11, 21
674:              slti         t0, a7, -154
                  sltiu        sp, t6, -1925
                  addi         zero, tp, -1826
                  sll          s5, sp, a3
678:              lui          s0, 707138
679:              sltu         zero, s4, t0
                  and          s3, ra, t6
                  addi         t3, zero, 2003
                  xor          t6, s8, s4
                  or           a4, t3, t0
                  ori          a7, gp, 461
685:              xori         a5, t5, -165
                  slt          a2, s9, ra
                  srli         s8, s2, 9
                  xori         s3, tp, -1085
                  xori         t5, s4, -1687
                  beq          s7, ra, 698f
                  add          s9, s7, s5
                  bge          s9, t1, 697f
                  addi         a4, ra, -147
                  auipc        t5, 59762
                  sub          s5, gp, s3
                  lui          t2, 966432
697:              srl          zero, s8, s8
698:              slli         a5, a2, 7
                  slli         sp, s10, 16
                  slli         s5, s5, 22
                  addi         zero, s8, 1654
                  auipc        s1, 151110
                  lui          a5, 913189
                  srai         s4, s8, 1
                  slt          t3, sp, s0
                  or           ra, t0, s6
                  sub          a5, s6, s5
                  sub          tp, ra, s7
                  sll          zero, s3, a3
                  andi         a2, s10, -966
                  blt          gp, s5, 713f
                  and          a7, s1, s10
713:              sra          t4, s4, s8
                  bne          a7, s4, 719f
                  bgeu         t2, t3, 718f
                  sra          s3, tp, s1
                  bgeu         s0, a3, 720f
718:              bltu         t2, t0, 728f
719:              xori         t2, t0, 647
720:              ori          s2, tp, -1378
                  or           s5, s5, s3
                  xori         a7, t3, -39
                  srli         t2, a3, 31
                  blt          a0, s2, 729f
                  slt          t3, a0, a3
                  ori          s9, sp, 759
                  add          s2, tp, a0
728:              slli         s2, a3, 28
sub_2_17:         jal          t6, 4f
0:                jal          ra, 2f
1:                jal          t1, 26f
2:                jal          t1, 25f
3:                jal          a7, 10f
4:                jal          ra, 16f
5:                jal          ra, 17f
6:                jal          t1, 5b
7:                jal          gp, 1b
8:                jal          s2, 9f
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          ra, 19f
12:               jal          ra, 3b
13:               jal          ra, 8b
14:               jal          t1, 21f
15:               jal          t5, 23f
16:               jal          ra, 6b
17:               jal          t1, 12b
18:               jal          gp, 7b
19:               jal          ra, 15b
20:               jal          a7, 18b
21:               jal          ra, 20b
22:               jal          ra, 14b
23:               jal          s1, 0b
24:               jal          ra, 22b
25:               jal          t1, 24b
26:               or           s0, a5, s2
729:              slti         s11, s7, -1819
                  or           a4, a6, t0
                  slli         ra, s8, 9
                  lui          s6, 720736
                  add          s8, s11, s4
                  xori         a4, sp, -50
                  ori          s8, t6, -916
                  xori         a6, a5, 1282
                  blt          s3, t0, 752f
                  beq          s10, s11, 751f
                  sltu         a4, a2, a0
                  bltu         s10, t1, 741f
741:              auipc        t5, 622587
                  lui          s11, 228513
                  ori          a4, t2, -667
                  andi         s2, zero, 1835
                  andi         t3, s1, 1283
                  bgeu         ra, s3, 757f
                  srli         s6, tp, 16
                  bne          s10, a4, 759f
                  slli         s3, s8, 18
                  beq          s10, s8, 766f
751:              beq          a6, a7, 764f
752:              srl          s8, s9, t0
                  srli         s1, s4, 24
                  blt          s9, s2, 761f
                  nop
                  beq          t3, s5, 771f
757:              sub          s7, sp, zero
                  srai         s7, a5, 0
759:              beq          a0, tp, 763f
                  bltu         s0, s5, 772f
761:              auipc        s8, 637260
                  bgeu         a1, a2, 770f
763:              bne          s1, s6, 780f
764:              or           s8, gp, a4
                  srli         a4, s11, 0
766:              slt          t6, a0, zero
                  srl          a2, t1, s11
                  bge          t2, zero, 783f
                  sll          s8, t1, s6
770:              bgeu         ra, t0, 771f
771:              sll          s0, t0, s4
772:              slti         zero, a6, 1307
                  or           a6, s1, s10
                  sltu         t5, s3, zero
                  addi         s8, a4, 1049
                  slti         s9, s6, -1313
                  lui          t4, 201344
                  bltu         s7, a4, 779f
779:              add          sp, t3, zero
780:              auipc        tp, 203794
                  xor          s3, s2, a0
                  andi         a5, a2, 217
783:              bne          ra, t5, 784f
784:              beq          a4, s3, 788f
                  add          s3, s4, a5
                  bgeu         ra, s10, sub_2_j5 #branch to jump instr
                  ori          t6, s3, -1280
                  and          t6, a3, t6
                  sub          t0, ra, s0
                  xori         s0, gp, 618
                  sltiu        a2, t6, -913
                  sltiu        tp, t5, 639
                  andi         s9, t0, 776
                  lui          ra, 5259
sub_2_j5:         jal          t6, sub_4 #jump sub_2 -> sub_4
                  bltu         gp, zero, 795f
                  bgeu         a0, t3, 788f
                  slti         s2, s5, 1933
788:              sub          s2, t0, sp
                  lui          a6, 907784
                  andi         s0, t0, 795
                  bltu         s7, s8, 800f
                  sra          s7, a6, s10
                  bltu         s5, s1, 810f
                  sltu         a5, s0, a3
795:              bgeu         a3, s1, 803f
                  sll          a2, a2, t5
                  srai         t6, gp, 25
                  sll          ra, s9, gp
                  slt          t0, s4, sp
800:              nop
                  sra          s4, s10, t6
                  bgeu         s11, s8, 803f
803:              andi         s7, s0, 932
                  beq          s4, a6, 806f
                  sra          a5, s0, a1
806:              srli         s3, s9, 23
                  ori          t5, s11, 874
                  bgeu         a2, s2, 809f
809:              add          tp, s3, s2
810:              bgeu         a3, a1, 813f
                  srl          a6, a5, t0
                  srai         ra, t3, 1
813:              auipc        s2, 358791
                  sltu         gp, a4, a2
                  ori          t4, ra, 1111
                  beq          gp, gp, 828f
                  sltiu        a7, t0, 1971
                  slli         t0, a6, 15
                  srli         a7, s1, 23
                  slti         ra, s4, 1596
                  slli         s3, s6, 14
                  bne          t2, t1, 825f
                  slti         a1, s8, 109
                  srl          tp, sp, t6
825:              bne          s10, s2, 840f
                  sltiu        s6, a3, 464
                  xori         ra, sp, -1111
828:              slti         t2, tp, 981
                  and          s0, a7, a5
                  srai         s0, a5, 15
                  nop
                  sltu         gp, zero, t4
                  sltiu        tp, s3, 2039
                  sltiu        s3, a6, -677
                  auipc        s0, 556937
                  xor          a1, s3, s1
                  bge          a6, a0, 842f
                  or           a7, s3, a2
                  bltu         a6, t5, 850f
840:              sub          gp, tp, t0
                  slli         s9, s9, 24
842:              blt          s6, a1, 843f
843:              xori         s2, t1, 686
                  slti         t3, gp, 1857
                  bne          s8, sp, 849f
                  xor          t5, s7, s1
                  sub          sp, t5, a1
                  ori          s0, s0, 1392
849:              and          a5, s11, a2
850:              srl          a7, s4, s6
                  srl          s8, a5, zero
                  srl          s1, s4, sp
                  slt          gp, a1, t1
                  add          s11, a4, ra
                  nop
                  srli         t3, tp, 27
                  blt          a4, t6, 865f
                  bgeu         s11, tp, 868f
                  bgeu         s8, t5, 869f
                  beq          a2, a7, 865f
                  blt          s1, s2, 874f
                  xori         a1, t5, -1670
                  sub          a4, a5, a5
                  auipc        t3, 635960
865:              srai         a5, a3, 5
                  slt          ra, gp, s3
                  lui          s11, 527541
868:              beq          a3, s8, 881f
869:              auipc        t4, 149416
                  blt          s10, s10, 874f
                  slti         t3, t6, 387
                  srli         s9, t2, 22
                  nop
874:              lui          ra, 255750
                  bltu         a5, ra, 876f
876:              bltu         t2, s6, 892f
                  bne          s2, s2, 892f
                  srl          a2, s5, sp
                  andi         s11, a7, 292
                  sub          tp, s3, t3
881:              slt          t1, s6, s3
                  lui          s3, 612902
                  addi         gp, t3, 97
                  srli         s4, s7, 20
                  sltiu        s3, s3, -1684
                  bgeu         t3, tp, 888f
                  beq          a3, s3, 892f
888:              ori          t2, s2, -401
                  slti         s3, t4, 177
                  nop
                  bge          s4, t3, 898f
892:              addi         t4, sp, 2040
                  beq          s7, a3, 908f
                  auipc        a4, 81022
                  auipc        a1, 973398
                  srl          s7, t0, a3
                  srli         s6, zero, 16
898:              sltu         s3, s1, s10
                  andi         t1, gp, -1513
                  or           t3, s2, s0
                  slt          a6, t4, t4
                  srl          s11, a6, t4
                  beq          t5, a6, 912f
                  bltu         gp, s7, 915f
                  sub          zero, t1, a6
                  add          t4, s6, zero
                  beq          zero, s4, 920f
908:              slli         a4, t2, 0
                  xor          zero, t4, s1
                  sltiu        a2, s6, 183
                  xori         t0, a4, -1872
912:              srl          s8, ra, gp
                  srai         a5, tp, 15
                  srl          gp, t6, s0
915:              sub          t3, t6, a6
                  lui          s5, 297625
                  and          s11, s6, t5
                  srl          s4, a5, ra
                  auipc        s7, 131220
920:              bgeu         s5, zero, 925f
                  bne          s0, s8, 933f
                  bge          sp, a5, 926f
                  sltiu        s0, a4, 151
                  srl          s2, s7, t6
925:              blt          a1, a7, 926f
926:              sra          s0, t2, t3
                  auipc        t1, 1022591
                  bgeu         s11, a3, 930f
                  xori         a6, s4, 53
930:              xori         t4, a5, -92
                  slti         a6, a6, 1007
                  beq          s4, sp, 939f
933:              lui          a5, 4239
                  or           s5, s8, t2
                  beq          sp, s3, 950f
                  sra          s9, a0, s9
                  sltu         zero, t0, t0
                  bge          tp, s2, 951f
939:              andi         s11, s0, -1341
                  ori          s6, s8, 1940
                  sltiu        sp, s7, 715
                  sltiu        sp, a6, -671
                  sra          t3, t6, s3
                  or           ra, s8, t1
sub_2_3:          jal          t6, 10f
0:                jal          ra, 9f
1:                jal          ra, 0b
2:                jal          t1, 1b
3:                jal          s2, 4f
4:                jal          ra, 2b
5:                jal          s7, 3b
6:                jal          gp, 11f
7:                jal          t1, 8f
8:                jal          t0, 5b
9:                jal          s9, 6b
10:               jal          t1, 7b
11:               sub          a7, a0, gp
                  ori          t5, t3, 207
                  bltu         t6, t2, 955f
                  beq          a3, a6, 952f
                  nop
                  sll          s11, s4, s7
950:              bne          s5, a0, 958f
951:              srli         t5, t0, 29
952:              add          s1, a7, ra
                  slti         s3, s1, 1268
                  srli         tp, zero, 22
955:              add          s2, s9, t5
                  auipc        s5, 178427
                  blt          t5, s0, 962f
958:              blt          a4, s4, 969f
                  lui          t0, 372656
                  auipc        s7, 363176
                  slli         s8, a2, 10
962:              bne          s9, a5, 972f
                  srli         a6, a2, 10
                  ori          t4, t5, 836
                  xori         t5, t5, -605
                  beq          s3, gp, 970f
                  slli         t2, t5, 6
                  bge          t4, s6, 984f
969:              sltu         a7, s0, s8
970:              sub          sp, a5, t2
                  xori         s11, s10, 1115
972:              andi         s8, a2, 187
                  and          a2, s1, t4
                  slt          s0, s8, a5
                  nop
                  sltiu        tp, s6, -994
                  sub          a4, ra, s7
                  beq          s9, a4, 993f
                  srl          gp, s9, zero
                  bne          s2, a7, 983f
                  addi         zero, s9, -69
                  bgeu         a6, s2, 995f
983:              or           sp, s10, gp
984:              xor          zero, t4, s1
                  auipc        a5, 560497
                  bne          a7, s5, 1001f
                  auipc        s9, 802343
                  xori         ra, zero, -1994
                  sltiu        t0, a7, 27
                  nop
                  sll          s5, t0, a2
                  sra          s8, a2, sp
993:              xor          t0, t6, s8
                  slt          s4, t1, s4
995:              slli         tp, s3, 6
                  lui          a1, 496507
                  blt          a0, a3, 1007f
                  sll          s9, s9, s2
                  slti         s4, ra, -1837
                  beq          s8, gp, 1001f
1001:             sltu         s2, gp, t0
                  beq          gp, s7, 1004f
                  sltu         s7, t3, a5
1004:             addi         s11, a5, -734
                  sll          tp, gp, t6
                  addi         t6, s1, -898
1007:             auipc        s5, 358551
                  bge          s6, t0, 1019f
                  sra          s1, s5, t6
                  sra          s0, a7, s7
                  bge          s10, a0, 1014f
                  sll          t0, a2, s11
                  sra          a1, sp, a2
1014:             bne          s2, s11, 1027f
                  blt          a0, s7, 1023f
                  add          t3, s1, s2
                  slli         a5, s11, 3
                  srai         a7, gp, 8
1019:             sltu         a6, s9, a0
                  sltiu        s9, zero, 185
                  slt          s1, s8, tp
                  add          t4, t1, t3
1023:             srai         s2, s3, 28
                  slli         a4, s1, 24
                  slli         t2, a5, 20
                  beq          a4, s8, 1027f
1027:             bne          a0, s11, 1044f
                  or           t5, a7, zero
                  bltu         s9, s10, 1030f
1030:             blt          sp, t1, 1038f
                  nop
                  xor          s8, t3, gp
                  bltu         sp, s7, 1044f
                  srl          t1, tp, t3
                  sltiu        t2, s1, -1416
                  bltu         s1, t2, 1041f
                  blt          a4, gp, 1050f
1038:             sub          zero, t0, ra
                  bgeu         t0, s7, 1042f
                  bgeu         s4, s1, 1044f
1041:             srli         t1, t5, 30
1042:             slli         zero, s9, 7
                  ori          a2, s9, 1432
1044:             sub          t6, s9, sp
                  nop
                  bne          sp, t4, 1061f
                  beq          s2, t4, 1048f
1048:             bne          t1, t6, 1049f
1049:             sltiu        zero, s11, -958
1050:             xor          zero, t0, a1
                  auipc        t4, 275367
                  beq          t3, zero, 1055f
                  ori          s5, s8, 1349
                  bge          gp, s6, 1056f
1055:             beq          zero, s4, 1064f
1056:             or           tp, t0, t1
                  addi         t0, sp, 893
                  add          tp, s10, zero
                  bne          s11, tp, 1064f
                  andi         tp, s2, 216
1061:             slli         t3, t0, 16
                  slli         t6, t2, 28
                  blt          a4, s2, 1064f
1064:             srl          t2, t5, a0
                  nop
                  nop
                  slli         s8, gp, 5
                  addi         a2, a6, -651
                  slli         a1, s11, 23
                  lw           t6, 4(s10)
                  sra          a5, sp, s3
                  addi         s10, s10, 24
                  srai         a7, s5, 5
                  xori         a5, s5, 1398
1551:             addi x29, x31, 0
1551:             jalr x29, x29, 0
sub_4:            slli         a4, t4, 23
                  bne          t1, a0, sub_4_stack_p
                  nop
sub_4_stack_p:    addi         s10, s10, -56
                  sw           t6, 4(s10)
                  lui          s9, 880682
                  nop
                  ori          zero, a0, 619
                  sltu         sp, s6, s9
                  or           a6, a6, tp
                  slt          a6, s7, s5
                  slti         zero, t0, 1416
                  la           s2, sub_5
                  slli         tp, tp, 24
                  add          s6, s5, tp
                  addi         s2, s2, 191
                  or           t0, gp, t4
                  addi         ra, a1, 2032
sub_4_j7:         jalr         t6, s2, -191 #jump sub_4 -> sub_5
                  la           s9, sub_5
                  andi         tp, tp, -654
                  addi         s9, s9, -102
                  xori         s4, tp, 413
                  sltiu        s0, a3, 301
                  bge          a7, s4, sub_4_j8 #branch to jump instr
                  slt          t6, a0, zero
                  sra          a5, tp, t4
                  add          ra, a6, s8
                  and          a5, gp, a6
sub_4_j8:         jalr         t6, s9, 102 #jump sub_4 -> sub_5
sub_4_10:         jal          t6, 2f
0:                jal          ra, 7f
1:                jal          t1, 0b
2:                jal          ra, 15f
3:                jal          ra, 19f
4:                jal          ra, 10f
5:                jal          s6, 3b
6:                jal          t0, 11f
7:                jal          s8, 9f
8:                jal          ra, 13f
9:                jal          t6, 16f
10:               jal          t6, 8b
11:               jal          ra, 18f
12:               jal          ra, 17f
13:               jal          ra, 1b
14:               jal          t0, 12b
15:               jal          t1, 14b
16:               jal          t1, 6b
17:               jal          ra, 4b
18:               jal          tp, 5b
19:               add          t0, t4, s0
sub_4_0:          jal          t6, 10f
0:                jal          t1, 6f
1:                jal          a7, 4f
2:                jal          t1, 0b
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          ra, 3b
6:                jal          ra, 11f
7:                jal          gp, 12f
8:                jal          a6, 5b
9:                jal          ra, 1b
10:               jal          ra, 2b
11:               jal          ra, 9b
12:               andi         t3, s9, 2007
sub_4_4:          jal          t6, 21f
0:                jal          ra, 7f
1:                jal          t1, 20f
2:                jal          ra, 4f
3:                jal          t1, 0b
4:                jal          ra, 15f
5:                jal          t4, 18f
6:                jal          t1, 11f
7:                jal          ra, 17f
8:                jal          ra, 14f
9:                jal          tp, 2b
10:               jal          ra, 3b
11:               jal          tp, 16f
12:               jal          t0, 5b
13:               jal          ra, 9b
14:               jal          t1, 13b
15:               jal          ra, 19f
16:               jal          a1, 10b
17:               jal          ra, 12b
18:               jal          ra, 1b
19:               jal          t6, 22f
20:               jal          ra, 8b
21:               jal          ra, 6b
22:               sltu         s1, a6, ra
sub_4_3:          jal          t6, 13f
0:                jal          ra, 6f
1:                jal          t3, 20f
2:                jal          ra, 9f
3:                jal          ra, 23f
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          gp, 2b
7:                jal          s3, 21f
8:                jal          s8, 4b
9:                jal          t0, 22f
10:               jal          ra, 24f
11:               jal          t1, 10b
12:               jal          t1, 0b
13:               jal          ra, 16f
14:               jal          sp, 7b
15:               jal          ra, 1b
16:               jal          tp, 8b
17:               jal          ra, 5b
18:               jal          a5, 11b
19:               jal          ra, 14b
20:               jal          s2, 25f
21:               jal          ra, 18b
22:               jal          ra, 17b
23:               jal          ra, 19b
24:               jal          ra, 15b
25:               and          s11, s3, t2
sub_4_11:         jal          t6, 25f
0:                jal          ra, 7f
1:                jal          ra, 4f
2:                jal          gp, 17f
3:                jal          sp, 18f
4:                jal          a4, 15f
5:                jal          ra, 20f
6:                jal          t1, 22f
7:                jal          sp, 13f
8:                jal          gp, 5b
9:                jal          a4, 23f
10:               jal          ra, 6b
11:               jal          t4, 2b
12:               jal          t1, 10b
13:               jal          ra, 8b
14:               jal          t1, 21f
15:               jal          ra, 16f
16:               jal          ra, 3b
17:               jal          t1, 14b
18:               jal          ra, 9b
19:               jal          t1, 12b
20:               jal          ra, 24f
21:               jal          ra, 26f
22:               jal          ra, 1b
23:               jal          ra, 11b
24:               jal          t1, 19b
25:               jal          ra, 0b
26:               lui          s2, 366911
sub_4_2:          jal          t6, 5f
0:                jal          t1, 1f
1:                jal          ra, 26f
2:                jal          ra, 16f
3:                jal          t1, 9f
4:                jal          tp, 27f
5:                jal          t6, 7f
6:                jal          ra, 21f
7:                jal          t1, 14f
8:                jal          ra, 20f
9:                jal          t2, 15f
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               jal          ra, 17f
13:               jal          ra, 11b
14:               jal          ra, 25f
15:               jal          t1, 18f
16:               jal          ra, 4b
17:               jal          tp, 19f
18:               jal          t1, 24f
19:               jal          ra, 3b
20:               jal          gp, 10b
21:               jal          t1, 12b
22:               jal          ra, 23f
23:               jal          ra, 8b
24:               jal          t1, 13b
25:               jal          ra, 22b
26:               jal          ra, 6b
27:               srli         t4, ra, 10
sub_4_5:          jal          t6, 4f
0:                jal          ra, 2f
1:                jal          s8, 10f
2:                jal          t1, 8f
3:                jal          s8, 1b
4:                jal          gp, 5f
5:                jal          ra, 0b
6:                jal          s11, 13f
7:                jal          ra, 6b
8:                jal          ra, 3b
9:                jal          sp, 12f
10:               jal          ra, 11f
11:               jal          ra, 9b
12:               jal          ra, 7b
13:               auipc        s1, 815420
sub_4_6:          jal          t6, 5f
0:                jal          t1, 6f
1:                jal          a5, 3f
2:                jal          ra, 7f
3:                jal          t1, 12f
4:                jal          t1, 1b
5:                jal          gp, 2b
6:                jal          ra, 13f
7:                jal          t2, 4b
8:                jal          ra, 9f
9:                jal          s6, 0b
10:               jal          t1, 11f
11:               jal          ra, 8b
12:               jal          ra, 10b
13:               sltu         a4, a5, t2
sub_4_1:          jal          t6, 0f
0:                jal          a6, 13f
1:                jal          a6, 11f
2:                jal          a6, 3f
3:                jal          ra, 8f
4:                jal          ra, 6f
5:                jal          t1, 17f
6:                jal          a7, 10f
7:                jal          t0, 9f
8:                jal          t1, 7b
9:                jal          ra, 16f
10:               jal          t2, 15f
11:               jal          s2, 14f
12:               jal          tp, 4b
13:               jal          t1, 2b
14:               jal          ra, 5b
15:               jal          ra, 21f
16:               jal          ra, 18f
17:               jal          t1, 12b
18:               jal          t1, 19f
19:               jal          s2, 20f
20:               jal          t1, 1b
21:               sll          a6, a3, s0
sub_4_8:          jal          t6, 13f
0:                jal          gp, 15f
1:                jal          ra, 2f
2:                jal          ra, 12f
3:                jal          gp, 6f
4:                jal          ra, 5f
5:                jal          t1, 1b
6:                jal          ra, 14f
7:                jal          t1, 11f
8:                jal          ra, 4b
9:                jal          ra, 8b
10:               jal          ra, 20f
11:               jal          t1, 9b
12:               jal          ra, 17f
13:               jal          t6, 0b
14:               jal          t1, 7b
15:               jal          t1, 16f
16:               jal          t1, 18f
17:               jal          tp, 10b
18:               jal          ra, 19f
19:               jal          ra, 3b
20:               sub          t3, t3, sp
sub_4_12:         jal          t6, 7f
0:                jal          t1, 9f
1:                jal          ra, 19f
2:                jal          t0, 0b
3:                jal          ra, 5f
4:                jal          ra, 18f
5:                jal          t0, 16f
6:                jal          ra, 21f
7:                jal          t1, 22f
8:                jal          ra, 23f
9:                jal          t1, 13f
10:               jal          a1, 14f
11:               jal          t1, 12f
12:               jal          gp, 2b
13:               jal          t1, 8b
14:               jal          t1, 17f
15:               jal          ra, 1b
16:               jal          t4, 20f
17:               jal          ra, 4b
18:               jal          ra, 6b
19:               jal          t1, 3b
20:               jal          ra, 11b
21:               jal          ra, 25f
22:               jal          ra, 24f
23:               jal          tp, 10b
24:               jal          s2, 15b
25:               add          s5, a7, t4
sub_4_7:          jal          t6, 7f
0:                jal          t0, 4f
1:                jal          s5, 22f
2:                jal          t0, 23f
3:                jal          ra, 2b
4:                jal          t1, 9f
5:                jal          t1, 10f
6:                jal          ra, 11f
7:                jal          ra, 12f
8:                jal          ra, 13f
9:                jal          ra, 16f
10:               jal          ra, 17f
11:               jal          ra, 14f
12:               jal          s4, 15f
13:               jal          ra, 3b
14:               jal          ra, 18f
15:               jal          t1, 8b
16:               jal          a6, 1b
17:               jal          ra, 20f
18:               jal          ra, 21f
19:               jal          t1, 5b
20:               jal          gp, 24f
21:               jal          ra, 19b
22:               jal          ra, 25f
23:               jal          ra, 6b
24:               jal          t1, 0b
25:               xor          s7, s2, t3
                  slli         s4, t2, 31
                  ori          s11, s11, -1909
                  blt          s10, s9, 17f
                  sra          s8, a7, ra
                  slti         s4, a3, -1468
                  and          a7, a0, s5
                  bge          s3, tp, 8f
                  slli         a1, zero, 6
8:                sltu         s3, s0, t3
                  xori         a5, s8, -58
                  xor          s1, t0, s5
                  lui          zero, 23719
                  sra          s2, gp, s2
                  beq          a4, s4, 17f
                  lui          s2, 371570
                  sub          a7, t2, s11
                  sra          s9, sp, s6
17:               or           s2, s4, t0
                  ori          t0, t5, -1010
                  and          t0, tp, t3
                  andi         a6, a3, -193
                  slt          t2, s7, a6
                  nop
                  bltu         a4, a3, 24f
24:               and          zero, s8, a1
                  sltu         s5, s3, gp
                  sll          a7, t1, t5
                  or           a6, a3, s9
                  srl          t6, zero, s5
                  and          sp, t6, s5
                  andi         s7, zero, 12
                  xori         t5, s8, -351
                  slt          t3, s11, s6
                  addi         t1, s9, -715
                  bne          s3, gp, 52f
                  srli         tp, a5, 21
                  sra          s7, t6, s3
                  sltiu        a7, t2, 873
                  srl          s11, t5, a3
                  and          a5, s3, a0
                  slt          a1, a5, gp
                  nop
                  ori          s5, s5, 33
                  sltiu        a7, a0, -1478
                  andi         s5, a4, -2019
                  beq          s11, t4, 48f
                  srl          gp, tp, s6
                  addi         zero, s4, 1168
48:               xor          s11, t0, a4
                  srai         a4, t4, 27
                  sltiu        t6, s8, -1157
                  andi         s7, s7, 1421
52:               sub          s5, gp, s3
                  srai         t4, s11, 5
                  lui          ra, 998952
                  lui          t6, 784347
                  auipc        s11, 601648
                  bgeu         s7, s11, 68f
                  or           s11, t4, s1
                  or           gp, a7, a3
                  or           t6, t1, s8
                  and          s0, s3, a3
                  bne          s10, a4, 64f
                  xori         s11, a1, -1827
64:               srli         s6, a5, 7
                  slli         t2, s8, 16
                  or           ra, a0, s1
                  bgeu         s11, s2, 69f
68:               srl          t2, a1, s4
69:               bge          a3, s7, 88f
                  sll          gp, sp, t1
                  addi         s11, s10, 1263
                  slli         t3, a5, 17
                  sra          s9, s11, s2
                  sltiu        t1, s11, 1244
                  sltu         t2, t1, s2
                  and          a7, t3, a6
                  xori         a5, ra, 162
                  sll          s1, tp, a5
                  slti         sp, s11, 1883
                  sltu         s7, s0, t5
                  lui          s4, 696620
                  and          s6, a7, a4
                  slli         s11, zero, 5
                  sltu         a6, a3, s1
                  sra          s3, a0, a5
                  blt          a3, a0, 102f
                  slli         s7, t3, 14
88:               slt          s3, s3, t0
                  blt          s10, s7, 94f
                  srai         a4, s6, 26
                  slt          s0, t5, t3
                  srai         sp, t6, 1
                  bge          s2, s0, 95f
94:               addi         s7, a3, 1877
95:               xori         a2, t4, -1354
                  or           s0, a5, tp
                  xori         s7, t1, -460
                  or           s2, gp, s11
                  bltu         a1, s9, 112f
                  auipc        a2, 154175
                  and          s9, s10, s1
102:              ori          t0, s8, -138
                  srl          s0, tp, a0
                  xor          a1, a7, s5
                  and          a7, s9, s4
                  auipc        s4, 443723
                  sltiu        s6, a4, -181
                  bltu         s10, t4, 124f
                  sltiu        a2, s2, 2024
                  andi         s3, t3, -1782
                  bge          a6, t5, 119f
112:              slti         a6, a3, 1805
                  or           a6, s5, t4
                  addi         a6, a7, 651
                  srai         t1, t1, 13
                  sll          a2, a2, s7
                  srli         sp, t4, 0
                  bgeu         s11, a7, 134f
119:              and          s6, t2, a5
                  bne          t0, s4, 134f
                  srai         s8, s5, 25
                  xor          zero, s10, s3
                  xori         s3, gp, 579
124:              blt          t6, s6, 125f
125:              add          zero, a3, s8
                  srl          t5, a1, a6
                  ori          t1, a6, 1312
                  sltiu        s0, t1, -702
                  xori         s7, a3, 1289
                  xor          zero, s10, tp
                  slt          t1, a2, sp
                  ori          t4, a5, 1171
                  bltu         a4, s10, 138f
134:              or           zero, s0, t4
                  xor          a6, s2, s8
                  bne          a0, t0, 144f
                  ori          a1, s6, 633
138:              and          zero, s3, zero
                  xor          a5, a7, sp
                  sltu         s5, ra, s11
                  or           a7, s1, t6
                  xor          a7, sp, s8
                  xori         s11, a7, -1198
144:              sra          s9, a7, gp
                  sltu         a6, a1, t2
                  xor          tp, a7, t3
                  slti         t2, a2, 56
                  bne          t6, s0, 151f
                  ori          zero, a1, 909
                  and          s6, s10, a5
151:              or           zero, sp, s4
                  srl          s5, s3, a2
                  srl          a2, t0, t4
                  sll          s3, tp, s0
                  andi         a5, a7, -1275
                  sltiu        a1, s8, -1953
                  slti         s3, s6, -1724
                  sltiu        a5, s1, 593
                  bltu         s9, a3, 179f
                  bltu         s0, s9, 165f
                  slt          t6, s3, s6
                  xori         t3, s0, 659
                  srli         s5, s3, 20
                  bltu         s9, s9, 178f
165:              bne          t4, s2, 172f
                  sub          t3, s3, a2
                  andi         s2, s3, -129
                  srli         zero, s5, 28
                  slt          t6, a4, s7
                  sll          tp, s7, sp
                  addi         s8, s6, 765
172:              andi         t6, s9, 1100
                  slti         a5, t2, 1067
                  ori          t0, ra, 1149
                  sltu         a6, a4, s11
                  beq          t5, s4, 190f
                  bltu         a1, s2, 187f
178:              add          a6, a4, t3
179:              bgeu         t3, t1, 190f
                  bge          gp, a6, 181f
181:              nop
                  nop
                  bne          s10, t5, 197f
                  bge          t3, s6, 186f
                  bltu         s6, a1, 187f
186:              add          ra, s9, sp
187:              srai         ra, a7, 7
                  sub          s2, s4, tp
                  slti         s1, s5, -1635
190:              xor          t3, s2, zero
                  ori          a7, s6, 1305
                  xor          s0, s4, s6
                  slt          s3, t4, s10
                  bgeu         t0, sp, 195f
195:              addi         s11, a3, -1640
                  add          t3, t4, s0
197:              addi         s5, s5, -1822
                  slt          s11, t1, a5
                  bltu         a2, a1, 217f
                  slti         s3, s10, 1275
                  sra          zero, s0, s9
                  slli         a2, s7, 24
                  bltu         s9, a6, 208f
                  slti         s11, s11, 1797
                  sra          a6, tp, a6
                  sltu         t5, s8, a2
                  bltu         a4, s8, 210f
208:              slli         t5, s4, 8
                  sra          s4, s7, t5
210:              srl          sp, s4, a0
                  and          a6, zero, s7
                  blt          a1, s10, 213f
213:              beq          t3, s1, 216f
                  lui          t3, 432860
                  auipc        t6, 438038
216:              srli         s4, sp, 9
217:              sltiu        t3, a1, 1002
                  and          t6, sp, t1
                  srli         a7, a5, 24
                  lui          t4, 85481
                  lui          gp, 717604
                  nop
                  nop
                  nop
                  auipc        a2, 843538
                  blt          t5, s3, 233f
                  sub          a7, tp, s1
                  or           s11, tp, t1
                  slti         t0, t1, 35
                  add          a1, zero, a6
                  srl          s6, a6, s10
                  bgeu         t2, t0, 248f
233:              andi         a1, t5, -1796
                  srl          t2, tp, s6
                  sltu         s8, t3, a5
                  or           tp, s0, zero
                  sltiu        a1, t2, -1611
                  sra          s4, t0, t2
                  slt          s1, ra, a3
                  ori          a5, t0, -306
                  bgeu         ra, s3, 249f
                  bne          t6, s5, 258f
                  and          tp, gp, a0
                  ori          s8, s10, -386
                  lui          t2, 862617
                  auipc        sp, 168777
                  xori         s8, gp, 1449
248:              add          t5, s1, s1
249:              slti         zero, t3, -919
                  slti         sp, gp, 1686
                  srli         zero, gp, 19
                  sltu         s5, t2, a6
                  slti         s3, s7, 512
                  srai         gp, t4, 28
                  or           s4, a7, a3
                  sltiu        t4, gp, 1933
                  sll          ra, zero, t0
258:              srl          t2, s3, s10
                  lui          a5, 40748
                  slt          s1, s7, gp
                  ori          t6, s9, -1145
                  bltu         ra, s11, 273f
                  slti         t2, a7, 219
                  beq          t6, t1, 272f
                  xori         ra, a5, -15
                  srli         s7, a6, 11
                  slti         t0, s5, -1098
                  bne          t1, a3, 284f
                  bne          a0, a6, 289f
                  bge          a7, t1, 275f
                  auipc        s6, 624727
272:              slli         ra, s2, 14
273:              and          t3, t4, t5
                  sltiu        a1, s9, 186
275:              sub          t0, a4, tp
                  xor          s2, s11, zero
                  nop
                  blt          s4, a7, 288f
                  sltiu        s4, a2, -1884
                  sltiu        s8, tp, -769
                  slt          sp, zero, a3
                  or           s7, a2, s5
                  sll          sp, a0, t3
284:              auipc        ra, 926588
                  lui          a4, 960283
                  sra          s2, a4, a2
                  nop
288:              xori         ra, s6, -1016
289:              sltiu        t3, t2, 133
                  andi         s1, s3, -686
                  auipc        a2, 204614
                  nop
                  lui          sp, 182555
                  andi         s1, ra, 1903
                  sll          s6, zero, t3
                  sll          a1, t0, t5
                  bgeu         s11, t1, 311f
                  sll          a6, a6, a7
                  addi         s4, a7, 1274
                  add          s1, s2, t6
                  ori          s5, a7, -261
                  xori         t2, s11, 669
                  bgeu         s4, s8, 308f
                  sra          a5, s9, s7
                  lui          t4, 38375
                  andi         s7, s11, -1385
                  nop
308:              add          t6, t6, s1
                  sra          s5, a4, a1
                  ori          s5, t1, -987
311:              srli         s4, s8, 12
                  slli         sp, a0, 1
                  sltu         t1, a4, s4
                  slt          t0, t2, t1
                  bge          t0, s9, 317f
                  beq          a4, s0, 330f
317:              srai         tp, a3, 0
                  srai         s0, s8, 14
                  slli         a5, a4, 6
                  bgeu         t0, t3, 339f
                  or           s8, s0, a5
                  bne          sp, t3, 337f
                  sll          s2, s1, s2
                  bgeu         s6, zero, 328f
                  srli         t4, a1, 10
                  srl          a7, s8, s7
                  srli         sp, s5, 26
328:              blt          a6, zero, 330f
                  xor          t4, a7, s3
330:              ori          t3, a4, -2012
                  lui          a7, 245442
                  sltu         t2, t3, a4
                  andi         gp, ra, 519
                  addi         s3, t4, 775
                  ori          s5, s5, 1610
                  slt          sp, s9, zero
337:              srl          zero, a4, s3
                  ori          s4, zero, -58
339:              sra          t2, a2, a6
                  sll          a4, s0, a4
                  sra          s3, tp, a6
                  lui          t3, 938375
                  sll          t0, s9, s2
                  sltu         s8, t6, s4
                  xor          a5, sp, sp
                  xori         t1, t3, -1344
                  sra          s1, t2, tp
                  slti         s7, t3, -430
                  and          s6, s9, a7
                  srli         s7, tp, 12
                  srl          a1, s7, a2
                  andi         s3, t0, 789
                  beq          a1, tp, 366f
                  slli         s8, s6, 2
                  sltiu        s4, s3, -1853
                  auipc        a1, 546233
                  add          s8, a6, a1
                  auipc        s4, 6226
                  sra          a6, t5, a0
                  and          s11, s2, zero
                  srli         a6, sp, 28
                  nop
                  blt          t5, t3, 374f
                  nop
                  andi         t2, s4, -310
366:              slt          s4, t4, t4
                  srl          t3, s5, s11
                  bge          t3, s10, 369f
369:              add          t4, a5, a5
                  sltiu        sp, s8, -480
                  srl          s7, a2, t4
                  sltiu        s11, s7, 1132
                  slti         s5, t4, 1730
374:              auipc        a2, 945064
                  sll          t5, a3, t1
                  srl          tp, a7, s4
                  bge          s11, a2, 385f
                  addi         a4, a2, -1268
                  bgeu         s1, t0, 380f
380:              addi         t1, t0, -1698
                  sub          sp, a7, s8
                  sltu         t6, s8, s9
                  srl          t0, s8, a3
                  sll          zero, a1, sp
385:              nop
                  sra          t1, a2, s0
                  sltiu        tp, gp, 986
                  nop
                  or           t0, t6, t0
                  bge          s7, t5, 406f
                  bne          a1, a5, 409f
                  add          tp, s7, zero
                  andi         a6, zero, -548
                  lui          t6, 434737
                  bne          a7, s8, 400f
                  bltu         s7, tp, 404f
                  lui          t0, 15889
                  addi         s6, s5, -1402
                  blt          a5, s1, 402f
400:              blt          t3, s7, 403f
                  slli         s0, s5, 27
402:              beq          s9, sp, 404f
403:              ori          t3, a0, -864
404:              andi         s0, s9, -662
                  srai         s5, s1, 28
406:              slti         s5, zero, -1651
                  bne          t0, t2, 423f
                  auipc        gp, 548466
409:              sltu         s11, s1, s1
                  xor          ra, a0, t0
                  bne          a3, gp, 425f
                  srl          t3, t3, s1
                  slli         s2, a3, 18
                  srl          a7, a4, s3
                  andi         a6, s11, 306
                  xor          a7, s4, a6
                  auipc        t6, 863439
                  srl          gp, t0, s11
                  bltu         s10, t1, 421f
                  sltu         sp, a5, s3
421:              add          sp, t5, a5
                  bgeu         s10, t4, 436f
423:              bltu         sp, zero, 443f
                  slli         s3, s9, 15
425:              sltu         tp, s5, t0
                  add          s6, s7, t4
                  andi         a1, s6, 276
                  andi         s7, s9, 470
                  andi         t2, gp, 241
                  sltiu        a1, t0, -837
                  or           s4, s6, t3
                  beq          t0, a5, 451f
                  sltiu        t1, s0, 1178
                  beq          t1, s0, 438f
                  and          s2, t6, s0
436:              and          t4, s4, s1
                  add          s11, a2, a0
438:              srai         a7, s0, 29
                  bltu         a4, s9, 441f
                  and          a5, s10, t5
441:              nop
                  sltiu        zero, a0, -111
443:              srli         s0, s5, 16
                  addi         a1, a3, 1317
                  sltu         zero, t4, a0
                  srl          t4, a0, s5
                  or           s6, s8, s5
                  sra          s0, t5, a4
                  andi         tp, ra, 19
                  bltu         s9, s4, 461f
451:              slli         zero, t6, 27
                  srl          t0, s4, t0
                  ori          ra, s9, 1385
                  beq          zero, a3, 455f
455:              sltu         s6, t3, t3
                  auipc        gp, 812671
                  sltu         a4, a0, t0
                  ori          s0, s1, -427
                  xor          s6, a7, s5
                  bge          a7, t2, 467f
461:              sub          a1, s2, s8
                  andi         s0, tp, -1037
                  bltu         a1, a4, 477f
                  auipc        t3, 230994
                  add          a7, a7, a0
                  auipc        zero, 184155
467:              xori         tp, t3, 1800
                  slt          a5, s0, s11
                  srai         s0, zero, 24
                  slt          s0, s7, zero
                  xori         s6, t1, -1265
                  sub          s8, s1, sp
                  addi         ra, t3, -1787
                  andi         t6, a7, 1897
                  or           a7, s4, t6
                  or           gp, t5, t5
477:              auipc        s2, 507246
                  add          s1, s3, t2
                  and          a5, s8, a6
                  slt          s5, t6, s8
                  slt          gp, s1, a1
                  slt          ra, t2, s10
                  bltu         s6, t6, 493f
                  slti         s3, t4, -3
                  xori         t6, s3, -1562
                  addi         t4, s6, -67
                  beq          t6, zero, 498f
                  srli         t5, zero, 20
                  bltu         s0, s4, 494f
                  slli         a2, a1, 4
                  srli         t0, t1, 25
                  addi         s1, s0, 1781
493:              ori          ra, s8, -2024
494:              sub          s5, s1, ra
                  addi         a7, t3, 126
                  bgeu         ra, s1, 512f
                  srli         s4, s1, 29
498:              bne          s11, ra, 500f
                  and          a6, s7, s9
500:              andi         s7, t1, 1977
                  sll          sp, t1, s4
                  beq          s9, t2, 507f
                  beq          s3, a0, 518f
                  bge          s9, t6, 505f
505:              nop
                  ori          s8, t1, 1351
507:              or           a1, s3, ra
                  sltiu        t5, t5, 1788
                  xor          s2, t1, s6
                  sll          t0, sp, s6
                  srli         a5, t0, 26
512:              nop
                  slti         t3, a0, 1689
                  slti         s4, s2, -1793
                  nop
                  slti         t1, a5, 896
                  srl          zero, s11, gp
518:              slli         t4, t0, 24
                  and          s9, a3, a6
                  sltiu        a5, s0, -2017
                  auipc        t2, 342487
                  nop
                  sub          t2, s5, a3
                  andi         s5, t6, 1517
                  auipc        tp, 948691
                  blt          a6, t6, 539f
                  slt          s9, s2, s2
                  add          t5, s3, s5
                  lui          a4, 41191
                  or           a2, a6, t2
                  addi         s11, s3, 134
                  and          s8, s9, s4
                  slt          a1, a6, t3
                  or           ra, s9, s5
                  sltiu        t2, s6, -951
                  slti         s4, s1, -914
                  bne          zero, s9, 556f
                  or           s8, ra, s7
539:              or           a5, a4, sp
                  srl          a1, s10, s5
                  bltu         t1, t3, 561f
                  addi         a6, s8, -301
                  bgeu         a1, t2, 544f
544:              addi         t0, s1, -1913
                  add          zero, t1, s4
                  srli         tp, s7, 1
                  ori          a5, s6, 784
                  srai         a4, t5, 7
                  addi         t5, ra, 691
                  bne          t2, sp, 554f
                  sub          t1, t0, s5
                  sll          zero, tp, a5
                  bge          a4, sp, 556f
554:              slt          a1, t0, s0
                  xor          a5, gp, zero
556:              slti         ra, a7, -609
sub_4_9:          jal          t6, 6f
0:                jal          t1, 15f
1:                jal          t6, 17f
2:                jal          s8, 4f
3:                jal          t1, 12f
4:                jal          ra, 11f
5:                jal          t1, 13f
6:                jal          a6, 7f
7:                jal          t0, 10f
8:                jal          t1, 9f
9:                jal          ra, 16f
10:               jal          t1, 8b
11:               jal          ra, 3b
12:               jal          ra, 0b
13:               jal          ra, 2b
14:               jal          t0, 1b
15:               jal          ra, 14b
16:               jal          t1, 5b
17:               sub          s7, s4, s11
                  sltu         s4, s2, t2
                  bgeu         s7, gp, 569f
                  sll          a6, a0, t3
                  and          s4, s9, t0
561:              beq          s6, a4, 579f
                  nop
                  bge          t5, s1, 565f
                  addi         sp, a3, -731
565:              sltu         s5, s4, t2
                  sltu         a2, t6, a4
                  sub          zero, s3, t4
                  addi         s4, a7, 1350
569:              auipc        s7, 748627
                  sltiu        a2, a4, 99
                  slli         a6, a7, 22
                  blt          gp, s10, 588f
                  xor          a4, a1, zero
                  slli         t0, s2, 11
                  xor          a1, s9, ra
                  sll          s0, s8, a7
                  nop
                  slt          s3, s0, t3
579:              bge          s5, t5, 590f
                  slti         s8, s3, 1909
                  bltu         s10, tp, 594f
                  bne          a3, tp, 585f
                  slt          s2, s5, a5
                  slt          s5, t6, tp
585:              sub          gp, t6, t6
                  slt          s7, s3, s10
                  srai         t4, s1, 23
588:              andi         zero, s8, 1420
                  auipc        s1, 24806
590:              bge          a2, s9, 597f
                  sub          a7, t1, a4
                  blt          s2, gp, 594f
                  lui          s11, 114480
594:              sltiu        t2, s11, -1225
                  auipc        s6, 295309
                  sltu         s7, t2, a7
597:              slli         s5, a0, 5
                  xori         t4, t2, 1103
                  slli         s2, a5, 24
                  slt          t4, a4, a6
                  ori          a2, sp, -101
                  andi         s0, s11, 620
                  srai         t1, t5, 2
                  sub          ra, t5, sp
                  slli         t6, a3, 18
                  ori          a5, gp, -671
                  or           ra, s2, s10
                  slti         t0, gp, 661
                  lui          a1, 721307
                  sll          t6, t2, a3
                  slti         a4, a5, -1163
                  sll          s3, s6, t2
                  sll          t2, s1, s4
                  slti         t1, s11, -902
                  bge          t6, a7, 629f
                  xori         t0, sp, -953
                  sltu         a2, s6, zero
                  xori         t3, t4, 1770
                  sub          s9, t2, s4
                  xor          s7, t5, s7
                  xor          s2, ra, tp
                  nop
                  slti         s4, tp, -1431
                  lui          s8, 167700
                  ori          t5, s6, -1100
                  slt          t1, t6, t6
                  bne          s10, sp, 628f
628:              add          s4, ra, ra
629:              xor          s2, s7, a0
                  xori         a6, s5, -970
                  sub          s0, s9, t0
                  bne          t0, a7, 633f
633:              bgeu         a7, tp, 647f
                  sltiu        t1, a0, -301
                  sltiu        s11, s8, 1963
                  bge          t0, ra, 638f
                  blt          s7, s9, 653f
638:              xor          t0, a2, t6
                  bge          gp, a7, 649f
                  bltu         t5, t6, 648f
                  srli         s6, zero, 29
                  slti         s2, a3, 781
                  sltu         s4, s11, s0
                  slti         t3, t3, 1893
                  lui          s2, 734838
                  slli         ra, s7, 20
647:              sll          t0, s8, s6
648:              nop
649:              slli         t4, t5, 5
                  slt          sp, s0, a1
                  srl          a1, t4, sp
                  sub          s6, s3, t5
653:              beq          t3, s0, 669f
                  addi         a7, s1, -93
                  bne          s7, t0, 663f
                  addi         t0, s1, 598
                  nop
                  slli         t2, t3, 6
                  slli         a1, t6, 17
                  beq          t5, s10, 665f
                  slt          s5, t6, s9
                  addi         t0, a0, 374
663:              lui          t4, 422632
                  and          s3, t2, t0
665:              auipc        t1, 77233
                  srl          s9, a6, a0
                  or           t0, gp, s3
                  xori         a6, a3, -102
669:              bltu         s9, t4, 670f
670:              srli         zero, a5, 8
                  or           t1, s7, t4
                  lw           t6, 4(s10)
                  auipc        t2, 890207
                  or           s4, t3, t3
                  xori         s6, sp, -1499
                  xor          a6, tp, t5
                  addi         s10, s10, 56
                  srl          a4, s5, zero
                  xor          gp, t2, s2
1001:             addi x1, x31, 0
1001:             jalr x1, x1, 0
sub_5:            sll          s8, t4, s11
                  addi         s10, s10, -56
                  lui          s8, 154723
                  srl          s1, a4, s1
                  sub          gp, s10, a6
                  sw           t6, 4(s10)
                  lui          s3, 26293
                  srli         ra, t1, 12
sub_5_2:          jal          t6, 9f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          ra, 13f
3:                jal          t3, 7f
4:                jal          a6, 11f
5:                jal          ra, 8f
6:                jal          t0, 19f
7:                jal          ra, 6b
8:                jal          t1, 1b
9:                jal          ra, 16f
10:               jal          ra, 5b
11:               jal          s4, 0b
12:               jal          s9, 2b
13:               jal          ra, 14f
14:               jal          ra, 18f
15:               jal          ra, 12b
16:               jal          ra, 15b
17:               jal          ra, 10b
18:               jal          ra, 4b
19:               sub          a6, s11, s6
sub_5_0:          jal          t6, 15f
0:                jal          ra, 9f
1:                jal          t1, 14f
2:                jal          ra, 7f
3:                jal          ra, 1b
4:                jal          t1, 8f
5:                jal          ra, 0b
6:                jal          sp, 13f
7:                jal          ra, 18f
8:                jal          s3, 3b
9:                jal          ra, 4b
10:               jal          sp, 16f
11:               jal          t2, 12f
12:               jal          ra, 5b
13:               jal          t1, 10b
14:               jal          ra, 6b
15:               jal          t1, 17f
16:               jal          ra, 2b
17:               jal          t0, 11b
18:               sltiu        sp, ra, -191
sub_5_1:          jal          t6, 1f
0:                jal          t1, 5f
1:                jal          t0, 7f
2:                jal          t1, 15f
3:                jal          ra, 2b
4:                jal          ra, 24f
5:                jal          t1, 14f
6:                jal          ra, 25f
7:                jal          ra, 19f
8:                jal          t1, 9f
9:                jal          t5, 11f
10:               jal          t1, 20f
11:               jal          gp, 26f
12:               jal          ra, 18f
13:               jal          t1, 4b
14:               jal          ra, 3b
15:               jal          ra, 6b
16:               jal          t0, 23f
17:               jal          ra, 27f
18:               jal          a2, 8b
19:               jal          ra, 16b
20:               jal          s6, 0b
21:               jal          ra, 13b
22:               jal          s4, 12b
23:               jal          ra, 21b
24:               jal          t1, 10b
25:               jal          s0, 22b
26:               jal          ra, 17b
27:               srli         a7, s2, 0
sub_5_4:          jal          t6, 11f
0:                jal          ra, 14f
1:                jal          t1, 6f
2:                jal          gp, 12f
3:                jal          s4, 8f
4:                jal          ra, 13f
5:                jal          gp, 15f
6:                jal          ra, 9f
7:                jal          s3, 0b
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          t1, 7b
11:               jal          t1, 10b
12:               jal          ra, 5b
13:               jal          tp, 2b
14:               jal          t1, 1b
15:               sltu         s4, t1, s9
                  andi         t5, a7, 208
                  srl          s4, s8, s4
                  bgeu         t4, t1, 20f
                  ori          s6, a0, 843
                  srl          s6, t0, a3
                  add          t4, t3, t3
                  and          s3, t1, s8
                  bge          zero, t6, 15f
                  srli         t5, a5, 26
                  bgeu         t0, s10, 16f
                  bltu         t2, a7, 18f
                  add          s1, s2, s10
                  xor          s2, zero, ra
                  sra          t6, zero, s7
                  add          t6, a4, a4
15:               slli         a6, s10, 24
16:               andi         a6, a7, 1174
                  slti         sp, a5, 681
18:               nop
                  srli         tp, a1, 15
20:               sll          t4, t3, t2
                  sll          t0, s9, s1
                  bgeu         a4, t2, 30f
sub_5_3:          jal          t6, 5f
0:                jal          ra, 17f
1:                jal          t0, 16f
2:                jal          t1, 4f
3:                jal          ra, 8f
4:                jal          t1, 20f
5:                jal          s1, 14f
6:                jal          a7, 13f
7:                jal          a4, 9f
8:                jal          ra, 2b
9:                jal          t0, 6b
10:               jal          ra, 1b
11:               jal          ra, 15f
12:               jal          ra, 19f
13:               jal          ra, 3b
14:               jal          ra, 7b
15:               jal          ra, 0b
16:               jal          ra, 21f
17:               jal          t1, 10b
18:               jal          t1, 11b
19:               jal          gp, 18b
20:               jal          tp, 12b
21:               slti         t0, a4, 20
                  bgeu         s5, s6, 30f
                  add          zero, a6, gp
                  beq          a4, s4, 43f
                  sltu         s9, s6, a3
                  sub          t2, s11, s9
                  srli         a2, a1, 11
                  srl          ra, a5, a0
30:               sub          ra, a1, s11
                  or           t5, s5, zero
                  beq          t0, s0, 33f
33:               bne          t5, a0, 40f
                  slti         s3, a6, -381
                  bge          gp, zero, 44f
                  xori         zero, sp, 287
                  bgeu         a1, s7, 54f
                  srai         t2, s4, 17
                  bltu         a7, a5, 59f
40:               add          gp, s0, t3
                  bgeu         s4, t5, 53f
                  sub          t5, s11, s0
43:               bltu         a7, a5, 61f
44:               srai         sp, s7, 5
                  add          t4, a3, s9
                  slti         s6, t6, 235
                  bltu         a0, a0, 52f
                  slli         s9, s3, 15
                  auipc        t5, 763608
                  srai         s5, a4, 9
                  srl          s3, a3, s0
52:               sltiu        a6, sp, 1581
53:               add          sp, a2, a4
54:               and          t6, gp, sp
                  bne          t3, t1, 62f
                  bgeu         a6, gp, 63f
                  ori          s0, s9, 626
                  sub          a2, gp, a6
59:               slti         a1, s4, -1157
                  beq          sp, s3, 73f
61:               ori          t2, s7, 1942
62:               slli         s2, t2, 12
63:               slti         t5, a1, 1563
                  slti         t2, s9, -352
                  andi         a2, s6, -300
                  and          a5, t5, s8
                  addi         a7, s7, 589
                  bltu         s9, t2, 69f
69:               beq          s6, t5, 82f
                  bne          s11, s8, 84f
                  srl          t6, sp, t0
                  add          gp, s9, a5
73:               sltiu        t2, s6, 285
                  srl          s6, a4, s7
                  lui          s11, 925433
                  srl          t1, t2, ra
                  srli         s5, a5, 2
                  bgeu         ra, t2, 89f
                  nop
                  beq          s2, sp, 87f
                  bgeu         gp, s0, 100f
82:               bltu         a4, s1, 88f
                  beq          t1, t5, 97f
84:               beq          s10, t2, 87f
                  sltiu        a4, a3, -171
                  bge          t0, s3, 104f
87:               sltu         a2, a1, s7
88:               beq          a6, t4, 96f
89:               srli         s3, s7, 8
                  nop
                  blt          t1, a5, 98f
                  srai         s5, s8, 1
                  sra          t1, t0, s5
                  lui          s6, 522140
                  lui          s11, 369091
96:               srl          sp, s9, t5
97:               blt          sp, t6, 111f
98:               ori          s0, s9, -1863
                  bltu         a5, s4, 113f
100:              sll          a2, s9, a5
                  sltiu        s6, s1, -1746
                  auipc        tp, 648437
                  xor          ra, a3, zero
104:              blt          ra, t6, 111f
                  andi         s9, t0, 1090
                  sll          s4, ra, s10
                  blt          a7, t4, 127f
                  blt          t5, a6, 115f
                  bge          a1, s8, 110f
110:              xor          s11, s8, t6
111:              auipc        tp, 503443
                  bne          ra, ra, 131f
113:              bltu         s3, sp, 121f
                  andi         t3, tp, 1834
115:              sub          gp, s3, s0
                  sub          a1, gp, tp
                  slti         s6, s6, -179
                  or           s3, a3, a0
                  srai         zero, s3, 15
                  add          a4, zero, s0
121:              andi         s4, t3, 898
                  add          a5, t4, s5
                  xor          sp, zero, s5
                  srl          a4, t4, t3
                  slli         zero, a5, 26
                  slt          s6, a1, s7
127:              srl          t1, ra, sp
                  sra          s3, a1, s3
                  xori         t6, ra, 1813
                  addi         t6, t0, -927
131:              bltu         gp, t3, 138f
                  bgeu         t1, a1, 143f
                  auipc        t5, 76204
                  slti         tp, a3, 1203
                  bne          t0, t6, 148f
                  blt          t0, s0, 137f
137:              sltu         s8, t0, t4
138:              bge          t2, s2, 150f
                  nop
                  slli         t4, a1, 30
                  nop
                  sltu         s2, ra, t3
143:              bge          s4, ra, 161f
                  xor          gp, zero, a3
                  auipc        s0, 938311
                  xori         s3, a6, -1708
                  ori          s6, s3, 1643
148:              bne          t3, s8, 155f
                  srli         s9, a2, 16
150:              blt          gp, a4, 158f
                  blt          a2, t1, 169f
                  bltu         a1, s11, 160f
                  andi         sp, a0, 1265
                  and          s3, s7, s1
155:              bgeu         t2, s1, 163f
                  slt          s2, a5, s9
                  srli         s11, ra, 28
158:              bgeu         a6, t3, 165f
                  addi         s9, ra, 808
160:              slli         s5, gp, 1
161:              bltu         tp, s5, 174f
                  auipc        tp, 141567
163:              sll          s11, s11, s7
                  beq          a1, a3, 170f
165:              sltu         gp, t3, t4
                  blt          a2, s6, 184f
                  bge          sp, a1, 172f
                  beq          s5, t4, 177f
169:              ori          a1, gp, 1289
170:              slli         a7, s11, 2
                  slti         a2, t1, 1710
172:              sra          s0, a5, t6
                  addi         ra, t1, 1237
174:              and          sp, zero, t1
                  bge          t5, a4, 182f
                  lui          s1, 414008
177:              bge          t4, a0, 194f
                  blt          s0, s4, 185f
                  sltu         tp, t1, s8
                  xor          s3, zero, s8
                  and          t2, t4, s2
182:              srl          t6, s0, s5
                  sltiu        zero, a5, 951
184:              sub          a7, t4, s3
185:              or           s6, s1, sp
                  auipc        s11, 190452
                  sra          s3, a0, s8
                  xor          ra, a2, s2
                  beq          s3, s4, 192f
                  add          s1, ra, s11
                  xor          a7, s6, t3
192:              slti         t4, s2, 375
                  ori          a4, t1, -334
194:              bgeu         zero, s7, 212f
                  slt          a2, t2, s5
                  srli         t5, s8, 15
                  xori         t4, t3, -1096
                  nop
                  addi         s11, a4, 173
                  lui          s0, 79000
                  bgeu         s10, t1, 209f
                  addi         s3, a4, 274
                  xor          a1, s1, ra
                  srli         s4, a1, 6
                  lui          t0, 1003682
                  lui          a4, 1024243
                  slli         s5, a1, 3
                  add          a6, a7, a7
209:              bne          zero, t6, 216f
                  bge          s9, a3, 228f
                  addi         t4, tp, 1642
212:              sltu         s8, tp, s6
                  slti         s11, tp, 828
                  lui          t4, 892144
                  nop
216:              srai         s1, t0, 13
                  slti         s9, s5, -28
                  bne          s8, tp, 236f
                  sra          sp, s8, t5
                  bltu         a4, s3, 232f
                  or           t3, s9, s5
                  bge          s4, a4, 235f
                  bge          t2, s11, 232f
                  blt          t5, t5, 238f
                  slti         tp, tp, 66
                  xor          a2, a0, s1
                  addi         t0, s3, -722
228:              sll          s2, s0, t1
                  bge          s10, s0, 234f
                  bne          gp, a2, 233f
                  xor          t1, t3, a0
232:              xor          t5, tp, sp
233:              sub          a7, s10, sp
234:              srl          s7, a5, t3
235:              srli         s3, t4, 31
236:              auipc        s1, 702460
                  slt          a2, s11, t1
238:              beq          a3, t2, 252f
                  xor          s0, t6, a5
                  bltu         s11, sp, 248f
                  ori          t1, t4, -325
                  xori         s3, t3, -1398
                  auipc        ra, 652921
                  bne          s7, tp, 254f
                  sub          t5, t3, gp
                  add          t2, tp, a7
                  bltu         s1, sp, 254f
248:              andi         s6, a2, 1054
                  bgeu         s10, s11, 254f
                  or           s9, gp, ra
                  auipc        s0, 71471
252:              srl          s8, s7, s9
                  slli         t0, s4, 6
254:              and          a4, zero, s1
                  lw           t6, 4(s10)
                  lui          t2, 911463
                  ori          sp, s2, -939
                  addi         s10, s10, 56
                  addi         zero, s9, -349
                  sra          t1, s11, s3
                  xor          s9, s9, a4
380:              addi x30, x31, 1
380:              jalr x30, x30, 0
sub_3:            auipc        a2, 632568
                  addi         s10, s10, -8
                  sw           t6, 4(s10)
                  sltiu        a6, t1, 507
                  xor          t1, ra, a6
                  sub          s3, a0, sp
sub_3_5:          jal          t6, 24f
0:                jal          t1, 3f
1:                jal          s6, 11f
2:                jal          s7, 14f
3:                jal          t1, 10f
4:                jal          t0, 6f
5:                jal          t1, 2b
6:                jal          s7, 1b
7:                jal          t1, 5b
8:                jal          sp, 15f
9:                jal          ra, 17f
10:               jal          t1, 23f
11:               jal          ra, 22f
12:               jal          ra, 13f
13:               jal          ra, 7b
14:               jal          tp, 8b
15:               jal          ra, 19f
16:               jal          ra, 25f
17:               jal          t1, 12b
18:               jal          ra, 0b
19:               jal          t1, 20f
20:               jal          t1, 4b
21:               jal          ra, 26f
22:               jal          ra, 16b
23:               jal          sp, 21b
24:               jal          ra, 9b
25:               jal          tp, 18b
26:               jal          t1, 27f
27:               nop
sub_3_3:          jal          t6, 25f
0:                jal          s7, 15f
1:                jal          tp, 14f
2:                jal          ra, 5f
3:                jal          t1, 16f
4:                jal          ra, 17f
5:                jal          ra, 1b
6:                jal          t1, 20f
7:                jal          ra, 0b
8:                jal          t1, 26f
9:                jal          ra, 27f
10:               jal          sp, 7b
11:               jal          s1, 13f
12:               jal          gp, 21f
13:               jal          gp, 3b
14:               jal          ra, 22f
15:               jal          ra, 4b
16:               jal          ra, 2b
17:               jal          ra, 8b
18:               jal          s0, 23f
19:               jal          ra, 18b
20:               jal          t1, 19b
21:               jal          t1, 9b
22:               jal          ra, 10b
23:               jal          ra, 24f
24:               jal          t5, 11b
25:               jal          s3, 6b
26:               jal          ra, 12b
27:               xor          s0, t5, gp
sub_3_7:          jal          t6, 12f
0:                jal          a2, 4f
1:                jal          t1, 7f
2:                jal          t1, 0b
3:                jal          t1, 9f
4:                jal          ra, 8f
5:                jal          ra, 3b
6:                jal          tp, 2b
7:                jal          t1, 14f
8:                jal          t2, 15f
9:                jal          t6, 13f
10:               jal          t1, 11f
11:               jal          a7, 5b
12:               jal          ra, 1b
13:               jal          a1, 6b
14:               jal          ra, 10b
15:               andi         t0, zero, 1683
sub_3_9:          jal          t6, 2f
0:                jal          t1, 13f
1:                jal          t1, 0b
2:                jal          ra, 6f
3:                jal          t5, 14f
4:                jal          t1, 9f
5:                jal          ra, 16f
6:                jal          ra, 3b
7:                jal          ra, 12f
8:                jal          tp, 10f
9:                jal          s3, 11f
10:               jal          t1, 1b
11:               jal          ra, 7b
12:               jal          ra, 15f
13:               jal          s5, 4b
14:               jal          ra, 8b
15:               jal          t1, 5b
16:               srl          ra, a1, s5
sub_3_0:          jal          t6, 5f
0:                jal          ra, 17f
1:                jal          ra, 15f
2:                jal          t3, 13f
3:                jal          t6, 11f
4:                jal          ra, 23f
5:                jal          ra, 22f
6:                jal          ra, 19f
7:                jal          t6, 18f
8:                jal          a6, 24f
9:                jal          t0, 25f
10:               jal          ra, 9b
11:               jal          tp, 12f
12:               jal          t1, 16f
13:               jal          ra, 0b
14:               jal          t1, 1b
15:               jal          ra, 8b
16:               jal          ra, 6b
17:               jal          ra, 4b
18:               jal          s5, 3b
19:               jal          t1, 2b
20:               jal          ra, 21f
21:               jal          t1, 7b
22:               jal          ra, 20b
23:               jal          t1, 14b
24:               jal          ra, 10b
25:               slti         s6, t3, 308
sub_3_10:         jal          t6, 16f
0:                jal          ra, 12f
1:                jal          s3, 15f
2:                jal          ra, 13f
3:                jal          ra, 5f
4:                jal          ra, 14f
5:                jal          s4, 4b
6:                jal          t0, 2b
7:                jal          s4, 8f
8:                jal          a6, 20f
9:                jal          tp, 10f
10:               jal          ra, 1b
11:               jal          ra, 0b
12:               jal          s5, 9b
13:               jal          ra, 7b
14:               jal          ra, 17f
15:               jal          t1, 3b
16:               jal          t1, 11b
17:               jal          ra, 18f
18:               jal          t1, 19f
19:               jal          ra, 6b
20:               or           a1, t5, s2
sub_3_1:          jal          t6, 7f
0:                jal          ra, 12f
1:                jal          ra, 6f
2:                jal          t1, 3f
3:                jal          s6, 15f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          a6, 18f
7:                jal          t1, 13f
8:                jal          gp, 10f
9:                jal          t6, 2b
10:               jal          t1, 16f
11:               jal          ra, 14f
12:               jal          ra, 11b
13:               jal          ra, 9b
14:               jal          s9, 8b
15:               jal          ra, 5b
16:               jal          a2, 17f
17:               jal          ra, 1b
18:               slti         s7, s3, 1563
                  srl          ra, a0, a6
                  beq          s1, s2, 18f
                  lui          t6, 982743
                  lui          s11, 316144
                  nop
                  sll          a4, t1, t0
                  sub          t4, s6, s4
                  andi         t1, a5, 1729
                  beq          s4, sp, 11f
                  ori          s8, a0, 281
                  srl          t4, s4, t1
11:               or           s1, t5, s11
                  lui          s1, 247553
                  bge          s2, s3, 32f
                  andi         ra, s10, -1796
                  ori          s5, a1, -426
                  slti         gp, t2, -363
                  nop
18:               sra          t5, gp, s5
                  bgeu         s4, t6, 37f
                  srai         a7, s9, 9
                  slti         gp, sp, -17
                  add          s6, a6, a7
                  bgeu         a3, a5, 39f
                  sll          s0, s6, s11
                  andi         s5, s1, 26
                  bge          gp, t4, 46f
                  sra          s8, s9, t5
                  bgeu         gp, a3, 44f
                  blt          ra, s3, 33f
                  srl          t2, s7, s2
                  add          t5, t2, t5
32:               srl          zero, s11, t2
33:               sll          t4, a3, t4
                  or           gp, t1, a6
                  srl          tp, a4, a5
                  or           a4, t4, t0
37:               sll          s5, t5, t3
                  sra          t6, t4, s4
39:               blt          s6, s11, 50f
                  sltiu        a2, s6, 1846
                  srl          t2, zero, a5
                  addi         s8, s2, -1578
                  add          s4, s0, a3
44:               xori         s9, t4, 480
                  bgeu         s5, t1, 51f
46:               nop
                  bge          a4, t1, 63f
                  xor          s1, t5, zero
                  beq          zero, s2, 51f
50:               addi         a2, s3, -990
51:               bge          t5, t3, 66f
                  blt          a4, sp, 68f
                  bne          s8, sp, 69f
                  bgeu         t2, a4, 72f
                  sll          s6, s11, a5
sub_3_4:          jal          t6, 1f
0:                jal          t1, 5f
1:                jal          ra, 3f
2:                jal          a7, 10f
3:                jal          t1, 9f
4:                jal          ra, 6f
5:                jal          ra, 8f
6:                jal          t2, 2b
7:                jal          t1, 0b
8:                jal          ra, 4b
9:                jal          tp, 7b
10:               sra          t6, s6, a3
                  bge          t0, t5, 74f
                  bne          gp, a2, 58f
58:               srai         s11, a6, 22
                  srli         s3, s7, 22
                  xor          a7, a6, t6
                  and          a2, s10, s11
                  lui          t1, 712527
63:               bne          t5, gp, 70f
                  bne          t1, t3, 71f
                  and          tp, t4, a0
66:               or           t3, t6, a4
                  bne          t2, s10, 85f
68:               blt          gp, s8, 85f
69:               bgeu         s4, t1, 75f
70:               sltu         a1, s9, a0
71:               sll          a5, s1, s6
72:               xor          s2, zero, t3
                  sub          s3, tp, s6
74:               add          a2, s6, sp
75:               andi         s9, t0, -1331
                  beq          s3, a3, 82f
                  bltu         s11, a3, 80f
                  slli         t0, zero, 29
                  srl          ra, s10, s8
80:               sll          t0, t0, s3
                  ori          ra, s10, -587
82:               bge          s1, ra, 93f
                  nop
                  slt          t5, a1, t2
85:               xor          zero, s0, s4
                  slti         s2, s9, -743
                  bltu         a4, t1, 97f
                  beq          t2, t1, 91f
                  bne          a2, a5, 98f
                  or           s11, t5, t5
91:               srl          t4, a0, s11
                  and          s3, s8, s7
93:               bne          s2, a7, 111f
                  xor          t5, a2, s9
                  ori          t0, a6, -629
                  sltu         a2, t1, s2
97:               slt          t2, tp, s5
98:               sltu         t1, a7, s3
                  auipc        tp, 22311
                  ori          s2, tp, 945
                  auipc        s6, 1007629
                  bltu         t4, a6, 120f
                  slt          t4, a2, t3
                  slli         a7, s8, 4
                  xor          t3, t2, s5
                  ori          t2, a6, 1926
                  sub          a7, a4, t2
                  slt          s11, tp, s8
                  xori         s3, t0, 7
                  and          a5, s5, a7
111:              bne          t3, a2, 130f
                  addi         t5, t0, 1021
                  lui          a5, 215584
                  srl          s5, a5, t5
                  sub          a6, t4, s3
                  nop
                  blt          s2, zero, 120f
                  srai         ra, s3, 17
                  sub          t0, tp, t1
120:              sltiu        s1, s5, -1616
                  addi         s7, s7, -131
                  sltu         s4, s9, s10
                  srai         s9, t3, 19
                  slli         s7, a4, 3
                  slt          s4, s10, s0
                  bge          s11, a2, 146f
                  bgeu         zero, ra, 130f
                  ori          a4, s7, 581
                  or           a6, a3, s7
sub_3_8:          jal          t6, 7f
0:                jal          t1, 2f
1:                jal          s0, 6f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          gp, 5f
5:                jal          s0, 8f
6:                jal          t1, 13f
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          t1, 1b
10:               jal          ra, 11f
11:               jal          t1, 3b
12:               jal          tp, 9b
13:               sll          s9, s10, a2
130:              blt          t2, a3, 136f
                  bge          s1, a2, 138f
                  ori          s11, t1, 1954
                  slti         t1, a1, -1840
                  and          t5, t0, s4
                  srai         a7, s1, 8
136:              srli         tp, zero, 31
                  slti         s0, a2, -1167
138:              andi         s5, t6, -196
                  xor          a4, t5, ra
                  bge          t6, t4, 158f
                  beq          t2, a0, 152f
                  bltu         s6, s8, 158f
                  ori          s9, s3, -311
                  sltiu        t2, t6, 979
                  bne          s1, s0, 146f
146:              sub          t3, s7, a3
                  sll          sp, s11, s0
                  ori          s1, a1, 348
                  beq          s4, s8, 160f
                  sub          t3, tp, s8
                  ori          t6, t3, -1229
152:              bne          t3, s7, 158f
                  bgeu         s5, t2, 170f
                  and          s2, s8, a3
                  blt          s10, a1, 173f
                  add          s7, s11, s11
                  lui          t1, 123829
158:              slti         a6, s11, 600
                  nop
160:              bge          s2, sp, 178f
                  sub          a2, a2, t0
                  slli         gp, s1, 10
                  sll          s2, a2, a2
                  andi         s9, tp, -617
                  and          a4, s10, a5
                  addi         a7, sp, 486
                  slti         t5, t1, 1495
                  and          zero, t6, t3
                  bge          t4, a3, 184f
170:              andi         s2, s6, -1996
                  and          s2, tp, s2
                  sltiu        a5, s5, -1121
173:              srai         a1, t0, 8
                  srli         s11, a5, 29
                  ori          sp, t6, -425
                  sll          t1, s11, zero
                  slti         sp, t6, -170
178:              slli         t4, s9, 17
                  sub          s0, s0, s11
                  slt          a4, ra, s11
                  slli         s8, s0, 29
                  sltiu        t4, s1, 1140
                  ori          t0, s5, -1693
184:              srli         gp, a1, 3
                  bge          t2, s9, 191f
                  slti         sp, t2, 1197
                  xori         a4, s6, -1287
                  ori          t0, gp, -1979
                  or           tp, t0, s11
                  sub          a4, a6, s11
191:              nop
                  srai         ra, a0, 29
                  auipc        sp, 339935
                  slt          gp, gp, t6
                  lui          t4, 110018
                  add          a2, s3, s3
                  srai         ra, sp, 10
                  slt          a6, t4, t2
                  slt          s7, t2, t6
                  bltu         s1, a5, 218f
                  bltu         tp, s3, 211f
                  and          t0, zero, s8
                  slti         a1, a3, 377
                  andi         s2, s8, -649
                  srl          t5, t1, a0
                  srli         t1, a2, 4
                  bltu         a6, s5, 223f
                  addi         t0, a7, -1920
                  add          s9, s9, gp
                  or           s2, t4, t2
211:              add          s5, t2, t3
                  bltu         a5, a7, 228f
                  slt          a2, t5, zero
                  srli         s1, a1, 29
                  xori         s0, t1, 469
                  ori          s3, a2, -126
                  add          t6, s11, sp
218:              auipc        t3, 777439
                  slli         a6, sp, 4
                  xori         a7, a1, 1604
                  sltiu        a2, a2, 2032
                  addi         t4, t0, -1609
223:              xor          tp, s7, t4
                  bltu         tp, a5, 241f
                  blt          s1, a5, 234f
                  ori          a6, s5, -526
                  bltu         s1, a4, 243f
228:              srli         t3, s0, 24
                  nop
                  slt          s9, a3, s11
                  bge          a2, s0, 234f
                  and          sp, t5, t2
                  srli         sp, a4, 30
234:              bge          s9, s2, 241f
                  sltu         s3, tp, a2
                  addi         gp, t5, 992
                  ori          s1, t0, 1088
                  or           s5, s1, tp
                  sll          t0, s10, s11
                  sltu         s3, t0, t3
241:              sra          t0, gp, t0
                  auipc        s2, 451384
243:              bgeu         a0, s10, 245f
                  or           t4, t4, s9
245:              add          tp, s5, a2
                  lui          s2, 129706
                  nop
                  blt          a7, s11, 264f
                  sll          s0, sp, s1
                  sra          s11, s3, t0
                  bltu         a1, a6, 255f
                  bge          a4, a2, 263f
                  sub          t5, t1, s3
                  sltu         ra, s4, t2
255:              sra          a2, t2, t0
                  sltu         s9, s2, s6
                  slt          t3, t3, s0
                  srli         t2, s10, 18
                  lui          a5, 54634
                  add          tp, a4, s9
                  lui          sp, 280654
                  auipc        s11, 520116
263:              nop
264:              srli         t5, s9, 30
                  and          s9, s5, s0
                  addi         t4, a7, -581
                  srl          s1, s5, s5
                  sub          t5, t6, t4
                  bgeu         a4, s7, 285f
                  beq          t4, sp, 273f
                  xor          s3, a4, ra
                  nop
273:              bge          s7, s7, 289f
                  lui          tp, 159869
                  sll          sp, t3, a3
                  slti         t6, a1, 344
                  blt          t1, t4, 283f
                  bltu         a7, a6, 296f
                  and          a5, t1, a4
                  sltiu        s0, s6, -842
                  auipc        s2, 881
                  xor          a5, t2, s5
283:              bgeu         a5, a0, 284f
284:              sltu         t5, a3, t2
285:              blt          t0, s2, 303f
                  add          s2, s4, s2
                  beq          t3, a4, 296f
                  ori          s2, zero, -1384
289:              slti         s8, t4, 397
                  slti         ra, ra, -1859
                  blt          a0, s9, 295f
                  bltu         s3, s8, 308f
                  bgeu         a7, s1, 309f
                  bne          a7, gp, 296f
295:              sltu         s6, s10, s11
296:              slti         a7, ra, -512
                  srli         ra, a4, 22
                  and          a1, zero, t5
                  bltu         a4, t1, 314f
                  andi         tp, ra, -81
                  auipc        t0, 954846
                  slli         a1, t6, 0
303:              srai         a7, a7, 15
                  addi         s6, t2, -843
                  bgeu         s0, t0, 311f
                  nop
                  srli         s0, t6, 7
308:              bge          s3, t2, 328f
309:              xori         s5, a6, -730
                  xor          a4, a4, ra
311:              sra          t6, ra, s6
                  bltu         s9, s9, 318f
                  sll          a4, t3, s6
314:              bgeu         a5, a2, 321f
                  bltu         a7, a2, 325f
                  srl          a2, s6, s8
                  srli         s6, s5, 6
318:              ori          s11, t2, 1757
                  auipc        t3, 98190
                  bge          a1, sp, 327f
321:              auipc        s9, 657782
                  srli         s7, t0, 1
                  add          t1, t5, t0
                  nop
325:              sltu         s6, a3, sp
                  srli         t1, tp, 15
327:              xor          a6, a1, t2
328:              sub          s6, s5, a6
                  lui          s6, 591099
                  sltu         a4, t4, s4
                  auipc        a2, 344389
                  and          t1, a0, t1
                  add          t0, s1, a7
                  xori         s2, a2, -1203
                  nop
                  sltu         s8, t2, tp
                  xori         gp, a3, -1864
                  nop
                  lui          s5, 64836
                  lui          tp, 812780
                  auipc        s7, 86832
                  srai         t0, sp, 1
                  addi         s7, s0, 383
                  sra          tp, a1, a2
                  ori          t0, s3, 1249
                  ori          s5, s4, -1508
                  and          t4, zero, a5
                  ori          tp, a1, -358
                  srl          a5, sp, t4
                  bltu         a0, s7, 368f
                  and          t6, t0, t3
sub_3_11:         jal          t6, 22f
0:                jal          gp, 1f
1:                jal          ra, 13f
2:                jal          a6, 21f
3:                jal          t1, 23f
4:                jal          t1, 5f
5:                jal          ra, 17f
6:                jal          ra, 27f
7:                jal          ra, 29f
8:                jal          a6, 10f
9:                jal          ra, 20f
10:               jal          tp, 15f
11:               jal          s9, 6b
12:               jal          ra, 11b
13:               jal          s9, 4b
14:               jal          ra, 19f
15:               jal          t1, 3b
16:               jal          ra, 2b
17:               jal          a7, 7b
18:               jal          t6, 8b
19:               jal          t1, 24f
20:               jal          ra, 14b
21:               jal          ra, 18b
22:               jal          t0, 25f
23:               jal          gp, 0b
24:               jal          s3, 26f
25:               jal          ra, 12b
26:               jal          t1, 28f
27:               jal          t1, 9b
28:               jal          ra, 16b
29:               sub          tp, s7, a1
                  srli         t0, s0, 1
                  sltu         ra, a2, a4
                  slti         s3, a2, 754
                  srai         ra, s11, 28
                  sll          s7, a5, t4
                  lui          ra, 527254
                  blt          a1, a7, 376f
                  bgeu         s5, s11, 375f
                  ori          s3, tp, -668
                  blt          zero, zero, 364f
                  slli         t5, s9, 15
                  blt          a6, a0, 366f
364:              sltu         s3, s3, s3
                  andi         s5, t6, 1648
366:              slti         t1, a0, 906
                  lui          t5, 363819
368:              srl          ra, t5, s3
                  ori          s8, t5, 1238
                  srai         s1, s1, 1
                  slti         s7, t6, 362
                  slti         t4, t6, 89
                  sub          t3, a2, s6
                  slti         s9, a6, -1925
375:              sll          sp, tp, a4
376:              bltu         a2, s5, 387f
                  sltu         a6, t6, t0
                  beq          s0, a6, 395f
                  bltu         tp, t5, 397f
                  srai         a7, s5, 12
                  xor          sp, s11, t0
                  slt          s2, s8, s10
                  andi         a4, t6, 367
                  sltu         t5, tp, a5
                  lui          t1, 187723
                  add          s4, zero, t2
387:              sltiu        s7, a6, 531
                  slli         s7, a1, 10
                  and          a5, a1, s6
                  srai         t2, t3, 21
                  slt          a5, s11, ra
                  srai         t6, gp, 6
                  xor          t0, a7, t6
                  sub          s3, zero, t4
395:              sltu         s1, s7, a4
                  sltu         s4, a2, gp
397:              ori          a4, gp, -1258
                  sub          a7, a5, s6
                  sltiu        s11, s9, 477
                  or           t3, t4, s5
                  ori          a1, t6, -707
                  srl          t3, a6, s7
                  slti         s7, t5, 671
                  and          s1, s8, sp
                  bne          sp, sp, 424f
                  sltiu        sp, s0, -206
                  addi         s6, s7, -1042
                  bltu         s4, s7, 425f
                  bltu         t4, s2, 427f
                  srli         ra, tp, 18
                  xor          a7, a3, ra
                  or           s8, t1, s6
                  bgeu         ra, sp, 432f
                  ori          sp, t5, -1537
                  addi         s3, s3, 527
                  add          s8, a1, t1
                  lui          s0, 440679
                  beq          a3, zero, 434f
                  sltu         s0, s5, a3
                  auipc        s8, 297467
                  nop
                  and          a2, a6, s0
                  bltu         t0, t2, 438f
424:              srli         s7, s9, 31
425:              slli         s8, s1, 21
                  srl          s8, s8, t6
427:              lui          s1, 123140
                  bne          a2, s3, 431f
                  sub          t2, a4, s10
sub_3_6:          jal          t6, 14f
0:                jal          t1, 23f
1:                jal          t1, 8f
2:                jal          ra, 3f
3:                jal          t1, 21f
4:                jal          t1, 16f
5:                jal          gp, 20f
6:                jal          t1, 13f
7:                jal          ra, 25f
8:                jal          ra, 0b
9:                jal          ra, 10f
10:               jal          ra, 24f
11:               jal          t1, 4b
12:               jal          sp, 9b
13:               jal          t1, 26f
14:               jal          s2, 2b
15:               jal          ra, 5b
16:               jal          ra, 17f
17:               jal          t1, 1b
18:               jal          ra, 15b
19:               jal          t1, 18b
20:               jal          ra, 12b
21:               jal          ra, 19b
22:               jal          s5, 6b
23:               jal          ra, 22b
24:               jal          ra, 7b
25:               jal          ra, 11b
26:               slli         sp, s0, 15
                  bge          t1, s1, 431f
431:              slli         a2, a0, 7
432:              auipc        s3, 852910
                  sll          a6, ra, s10
434:              slti         s4, t6, -30
                  bltu         s2, a5, 455f
                  sll          t1, t4, ra
                  beq          s11, s1, 448f
438:              auipc        s1, 743272
                  andi         t1, zero, 73
                  blt          a0, a4, 443f
                  beq          tp, t0, 458f
                  blt          s5, s0, 460f
443:              addi         a7, s11, 1395
                  bne          a6, t2, 453f
                  srl          sp, s6, a2
                  srl          a7, ra, s2
                  add          t0, a0, a1
448:              or           s5, a0, t6
                  sub          s8, s8, gp
                  lui          s9, 128548
                  or           t6, t5, t1
                  blt          a6, a4, 470f
453:              addi         a6, s0, -936
                  sltu         t1, a1, a7
455:              sltu         s6, t2, a6
                  add          s9, t4, s10
                  addi         t1, a2, -1108
458:              ori          a1, s4, -1065
                  auipc        t0, 608030
460:              sltu         s8, s7, t6
                  and          s9, ra, gp
                  beq          sp, a2, 478f
                  sltu         s2, a3, sp
                  srli         s1, gp, 27
                  bne          s10, s9, 475f
                  slli         a1, t3, 7
                  slti         zero, a0, 1258
                  slti         s9, s0, -1126
                  lui          s4, 667622
470:              srl          s0, a1, ra
                  slli         ra, s7, 9
                  sra          t4, s4, s2
                  nop
                  slti         a5, t0, -1528
475:              srli         a4, gp, 2
                  bgeu         a5, a4, 483f
                  sltu         s3, s7, a7
478:              srli         a2, a3, 19
                  sll          sp, gp, a7
                  andi         a5, gp, 1515
                  srai         tp, zero, 26
                  xori         t1, t3, 1857
483:              bltu         s8, t2, 489f
                  bge          s6, a1, 501f
                  and          t5, t0, s11
                  bgeu         a6, s1, 502f
                  sub          tp, ra, a6
                  and          a7, a5, tp
489:              bltu         a4, s11, 496f
                  xor          zero, s5, a7
                  slt          gp, s2, s1
                  sll          s11, s2, s1
                  ori          s8, a4, -573
                  sra          a5, t2, a4
                  xor          sp, s7, s1
496:              sltu         a7, a5, a0
                  beq          ra, s11, 513f
                  blt          gp, t0, 514f
                  srl          gp, a6, s11
                  bgeu         s11, t0, 518f
501:              sltiu        ra, s6, 186
502:              nop
                  blt          s4, s6, 507f
                  sll          tp, s4, a7
                  sra          s5, s1, a1
                  lui          gp, 300750
507:              slti         ra, a3, 148
                  or           t6, gp, s5
                  slli         gp, t5, 14
                  bge          t2, ra, 516f
                  beq          a2, ra, 529f
                  bgeu         t4, s8, 515f
513:              srli         sp, a4, 14
514:              slli         t2, a5, 18
515:              slli         a5, s2, 27
sub_3_2:          jal          t6, 21f
0:                jal          ra, 14f
1:                jal          ra, 0b
2:                jal          ra, 22f
3:                jal          t1, 18f
4:                jal          t1, 23f
5:                jal          s5, 7f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          s11, 11f
9:                jal          ra, 3b
10:               jal          s11, 17f
11:               jal          ra, 24f
12:               jal          ra, 1b
13:               jal          ra, 4b
14:               jal          ra, 5b
15:               jal          ra, 13b
16:               jal          s4, 12b
17:               jal          ra, 20f
18:               jal          ra, 15b
19:               jal          ra, 6b
20:               jal          ra, 2b
21:               jal          ra, 16b
22:               jal          t1, 25f
23:               jal          ra, 8b
24:               jal          t1, 19b
25:               sll          s0, s3, s8
516:              slt          t6, t5, a1
                  bne          a7, a6, 528f
518:              xori         ra, s1, -1067
                  sltu         s2, s11, ra
                  or           s9, a1, s6
                  sll          zero, t5, t3
                  sub          a1, a3, sp
                  nop
                  sra          a1, t5, s7
                  andi         s11, t3, -144
                  beq          a4, t5, 532f
                  srl          a7, s1, t0
528:              sll          ra, t5, t5
529:              add          t5, t1, a3
                  srai         s4, a6, 16
                  and          a6, t5, s5
532:              slt          a4, s1, s5
                  add          t6, s2, t2
                  slli         a1, s1, 11
                  bne          s3, s9, 537f
                  slt          a4, a2, a6
537:              bge          t4, zero, 554f
                  sra          s0, a0, s5
                  slti         s9, t0, 1420
                  slt          a4, s9, s8
                  srl          t0, gp, a4
                  beq          t4, a5, 548f
                  auipc        sp, 930827
                  blt          s6, t2, 562f
                  xori         t3, s6, 121
                  srl          s4, t2, s3
                  add          s5, a4, t2
548:              bgeu         a3, zero, 564f
                  sra          t1, s3, a1
                  or           zero, s1, s8
                  bne          s3, a4, 567f
                  lui          s1, 298896
                  slt          s7, s1, sp
554:              bge          s7, gp, 569f
                  add          sp, s8, t3
                  slti         tp, t1, -1321
                  srl          t5, s1, a0
                  srl          tp, t3, t1
                  srai         a5, t1, 0
                  and          t3, s0, a2
                  srli         t0, gp, 27
562:              sub          a6, t0, a3
                  bge          a3, s11, 570f
564:              sub          gp, s8, t5
                  add          tp, t6, t4
                  bne          s4, s4, 577f
567:              lui          a6, 687393
                  add          t5, s9, gp
569:              or           a4, a5, s0
570:              sltu         ra, s8, s5
                  sra          s3, a7, s10
                  andi         zero, a1, 1733
                  bne          a0, ra, 591f
                  and          sp, tp, a6
                  or           a2, a1, a2
                  bge          s6, sp, 592f
577:              bltu         t2, s9, 579f
                  srli         t6, s1, 14
579:              sltu         t1, t6, a1
                  sub          t3, t0, gp
                  bltu         t1, sp, 587f
                  nop
                  ori          ra, a2, 175
                  blt          s6, a0, 602f
                  bge          tp, s5, 601f
                  sra          s3, s2, s5
587:              addi         a4, s8, -1334
                  slli         s0, a6, 4
                  nop
                  srl          zero, t3, t6
591:              ori          t2, sp, -672
592:              slt          a6, gp, a1
                  ori          s3, t4, 364
                  sll          s5, ra, s6
                  or           ra, s3, a6
                  sra          a1, a1, ra
                  or           sp, s6, a3
                  addi         s6, a1, 435
                  beq          s9, s11, 617f
                  andi         a2, a2, -1506
601:              ori          a7, a1, -378
602:              xor          s7, a0, s3
                  srl          s11, t4, tp
                  srl          t1, t0, s7
                  blt          ra, t4, 616f
                  sltu         t6, a1, s10
                  beq          a7, tp, 611f
                  slti         s4, a2, 1533
                  bltu         ra, a6, 619f
                  andi         t1, zero, -1835
611:              xor          s0, s0, t4
                  nop
                  xor          zero, a3, s5
                  srai         s4, s6, 14
                  blt          t1, s1, 624f
616:              nop
617:              xor          a4, s10, a7
                  srai         tp, sp, 19
619:              slti         a5, a1, 272
                  and          s1, a1, s4
                  sra          a5, t1, a7
                  srai         t6, a7, 17
                  sltiu        s0, s0, -853
624:              auipc        s9, 250257
                  slti         a6, s2, 1787
                  nop
                  lw           t6, 4(s10)
                  addi         s10, s10, 8
                  nop
                  nop
912:              addi x30, x31, 1
912:              jalr x30, x30, 0
sub_1:            bge          a2, a0, sub_1_stack_p
                  srai         t5, t6, 20
                  lui          sp, 390006
                  sll          s1, a2, s11
                  sra          s4, s7, a6
                  or           s11, a7, t1
sub_1_stack_p:    addi         s10, s10, -36
                  nop
                  addi         s1, a4, 1381
                  srli         a6, gp, 2
                  sw           t6, 4(s10)
                  slt          tp, t1, t1
                  sltiu        a4, t3, 897
                  nop
                  addi         s1, a5, 717
                  and          gp, a7, tp
                  and          s3, sp, a2
                  srli         s7, a0, 22
                  la           t6, sub_3
                  addi         t6, t6, -453
                  slti         s6, a2, -1776
                  bne          s10, s2, sub_1_j3 #branch to jump instr
                  ori          s2, s1, 200
                  andi         ra, zero, -914
sub_1_j3:         jalr         t6, t6, 453 #jump sub_1 -> sub_3
sub_1_4:          jal          t6, 10f
0:                jal          s9, 12f
1:                jal          ra, 14f
2:                jal          ra, 11f
3:                jal          t1, 16f
4:                jal          ra, 21f
5:                jal          ra, 9f
6:                jal          t1, 19f
7:                jal          t1, 13f
8:                jal          t1, 3b
9:                jal          ra, 1b
10:               jal          ra, 15f
11:               jal          ra, 8b
12:               jal          ra, 5b
13:               jal          t1, 17f
14:               jal          ra, 2b
15:               jal          ra, 7b
16:               jal          ra, 4b
17:               jal          ra, 6b
18:               jal          ra, 0b
19:               jal          t1, 20f
20:               jal          sp, 18b
21:               xori         s4, t4, -69
sub_1_1:          jal          t6, 14f
0:                jal          ra, 17f
1:                jal          gp, 8f
2:                jal          ra, 15f
3:                jal          t1, 20f
4:                jal          ra, 19f
5:                jal          ra, 13f
6:                jal          s3, 7f
7:                jal          ra, 0b
8:                jal          t1, 3b
9:                jal          ra, 18f
10:               jal          t1, 16f
11:               jal          s2, 12f
12:               jal          ra, 6b
13:               jal          s0, 11b
14:               jal          sp, 10b
15:               jal          a1, 9b
16:               jal          ra, 4b
17:               jal          ra, 1b
18:               jal          ra, 5b
19:               jal          ra, 2b
20:               andi         t6, tp, -84
sub_1_3:          jal          t6, 15f
0:                jal          a7, 7f
1:                jal          t1, 18f
2:                jal          ra, 13f
3:                jal          ra, 20f
4:                jal          t1, 23f
5:                jal          ra, 2b
6:                jal          t1, 9f
7:                jal          t1, 17f
8:                jal          t1, 25f
9:                jal          ra, 19f
10:               jal          tp, 24f
11:               jal          ra, 21f
12:               jal          ra, 27f
13:               jal          t1, 4b
14:               jal          s11, 5b
15:               jal          a5, 16f
16:               jal          s9, 12b
17:               jal          t2, 28f
18:               jal          ra, 11b
19:               jal          ra, 8b
20:               jal          s3, 6b
21:               jal          a2, 0b
22:               jal          ra, 30f
23:               jal          t3, 26f
24:               jal          ra, 29f
25:               jal          ra, 10b
26:               jal          ra, 3b
27:               jal          ra, 14b
28:               jal          ra, 22b
29:               jal          s11, 1b
30:               srl          gp, s3, s11
sub_1_0:          jal          t6, 6f
0:                jal          s6, 17f
1:                jal          ra, 20f
2:                jal          ra, 7f
3:                jal          ra, 0b
4:                jal          s8, 18f
5:                jal          ra, 14f
6:                jal          t1, 5b
7:                jal          ra, 16f
8:                jal          t1, 15f
9:                jal          ra, 1b
10:               jal          t0, 2b
11:               jal          sp, 9b
12:               jal          ra, 13f
13:               jal          ra, 11b
14:               jal          gp, 3b
15:               jal          ra, 4b
16:               jal          ra, 19f
17:               jal          a1, 8b
18:               jal          tp, 10b
19:               jal          t1, 12b
20:               sll          sp, s9, s1
                  or           s8, a2, s5
                  srai         a2, t6, 3
                  blt          s0, t4, 19f
                  sra          a5, s2, s11
                  auipc        t5, 163750
                  sltu         t5, t5, zero
                  bltu         s6, s7, 16f
                  or           tp, t4, t1
                  bne          t5, t5, 19f
                  xori         a2, s6, 194
                  lui          t5, 168894
                  blt          t1, s9, 24f
                  bne          s6, s8, 30f
                  xor          a4, s4, a1
                  srli         t4, ra, 10
                  srli         gp, a3, 13
16:               sll          s0, a0, s7
                  slti         a5, s5, -707
                  andi         a7, s10, 1182
19:               lui          s1, 551646
                  xor          t1, s9, s3
                  ori          t0, ra, 1786
                  bltu         a7, s9, 39f
                  bge          t2, t1, 35f
24:               slti         t1, s6, -28
                  sra          t3, s8, a0
                  sra          a7, s10, s1
                  sub          s6, s1, s8
                  xori         s11, s0, 1475
                  sub          s6, gp, t6
30:               sltiu        t5, a5, 351
                  ori          t5, ra, 1569
                  add          t2, a6, s6
                  sub          a4, t2, a7
                  ori          t6, t6, 12
35:               blt          zero, t1, 39f
                  bge          a5, s6, 42f
                  andi         s2, s9, 826
                  bge          a4, t1, 49f
39:               auipc        s11, 443766
                  sltiu        t2, s2, 624
                  ori          s5, t2, 640
42:               andi         s3, s10, -1860
                  addi         s2, zero, 495
                  xori         a7, s3, 1434
                  srli         a4, t5, 5
                  or           a5, sp, t0
                  nop
                  slli         s0, s10, 7
49:               addi         gp, a5, -1207
                  nop
                  sll          s1, gp, ra
                  bne          t2, s3, 63f
                  lui          s5, 447448
                  auipc        s9, 509476
                  auipc        zero, 275360
                  nop
                  slt          t1, a3, a4
                  or           s6, t1, tp
                  ori          a4, tp, -412
                  and          t1, gp, s5
                  addi         t0, s3, -1227
                  auipc        s5, 758588
63:               ori          t3, a5, 815
                  xor          s7, a6, a4
sub_1_2:          jal          t6, 14f
0:                jal          ra, 5f
1:                jal          a7, 8f
2:                jal          sp, 18f
3:                jal          ra, 4f
4:                jal          a2, 10f
5:                jal          ra, 16f
6:                jal          ra, 12f
7:                jal          gp, 15f
8:                jal          ra, 6b
9:                jal          t6, 2b
10:               jal          t1, 9b
11:               jal          sp, 17f
12:               jal          tp, 11b
13:               jal          ra, 0b
14:               jal          t1, 13b
15:               jal          t1, 1b
16:               jal          t1, 7b
17:               jal          ra, 3b
18:               slt          s7, t4, a7
                  srl          t0, s4, a6
                  bge          a5, ra, 81f
                  nop
                  slt          s5, s7, s1
                  xor          s5, s4, zero
                  or           s0, s1, t0
                  nop
                  nop
                  sltu         t0, s9, a6
                  or           sp, a2, tp
                  sub          tp, t4, s8
                  sltu         t5, s1, s8
                  xori         s6, a6, -1694
                  nop
                  sltu         a1, t6, t5
                  and          a7, s4, t5
81:               bge          t2, s5, 86f
                  slt          s7, t6, s6
                  beq          s6, s1, 92f
                  sll          gp, a4, a1
                  and          t6, t4, t6
86:               nop
                  srl          s6, t6, t5
                  xor          t0, a6, s10
                  sltu         s2, ra, tp
                  ori          s1, s2, -1295
                  srai         tp, s9, 10
92:               srl          a6, a4, t5
                  bgeu         a3, a3, 105f
                  srl          s6, a0, t5
                  add          a2, t1, gp
                  slli         ra, zero, 2
                  addi         a6, a1, -996
                  blt          a1, s1, 106f
                  and          s4, t6, s4
                  sltu         s5, s4, s0
                  xor          a6, s8, sp
                  sltu         s3, t3, ra
                  slti         s1, t1, 959
                  sub          a1, s8, t0
105:              sltiu        a1, a4, 1807
106:              xori         t1, s5, -1212
                  slli         zero, t5, 8
                  addi         s9, t5, 2012
                  and          t6, t0, t1
                  ori          a6, t4, 1743
                  bgeu         s10, t0, 116f
                  and          a6, s10, s8
                  srli         t0, t5, 25
                  sll          a6, s0, zero
                  andi         a5, zero, 1814
116:              auipc        zero, 60665
                  or           ra, t6, a2
                  bltu         gp, a7, 126f
                  slt          t4, tp, gp
                  andi         s1, s9, 1567
                  and          a4, t5, s1
                  addi         s0, ra, 1597
                  bge          a2, t0, 125f
                  bltu         t2, s3, 128f
125:              addi         zero, t6, 1791
126:              xori         a2, s7, -1384
                  slt          t5, s3, a0
128:              sub          sp, a7, s8
                  auipc        t1, 219751
                  bne          s8, a6, 133f
                  beq          s8, a4, 146f
                  lui          s1, 568612
133:              lui          t2, 1016895
                  xor          t4, s1, s4
                  sltu         t5, a3, t6
                  sltiu        ra, s0, 881
                  sub          a1, a3, t5
                  lui          s4, 403924
                  nop
                  bge          s9, t1, 150f
                  xori         a7, t4, -1359
                  sra          t4, s10, a1
                  sll          t3, a4, s9
                  xori         ra, s7, -1110
                  addi         a4, t2, 528
146:              blt          gp, t2, 161f
                  or           s4, s4, t2
                  sub          a5, s7, s5
                  or           s5, ra, s10
150:              beq          a2, s5, 154f
                  lui          t5, 231267
                  and          zero, t6, s8
                  xori         tp, tp, 760
154:              ori          s8, s1, -716
                  beq          t2, s2, 168f
                  sll          s9, s5, s11
                  beq          s0, gp, 169f
                  nop
                  add          s0, tp, s6
                  sltu         a5, s1, a4
161:              auipc        a6, 198414
                  blt          a1, gp, 167f
                  slli         s0, ra, 30
                  and          a7, s5, a1
                  bgeu         sp, t4, 170f
                  sub          t1, a1, a5
167:              addi         t1, a4, 1181
168:              addi         tp, s8, -1088
169:              bgeu         t1, gp, 187f
170:              sltu         a1, s7, a4
                  srl          s4, a0, zero
                  add          t5, a0, s9
                  bne          t0, ra, 188f
                  sltu         t3, s4, zero
                  sub          s7, t6, a1
                  slli         s2, a3, 27
                  bgeu         a0, s11, 187f
                  lui          sp, 816234
                  sltiu        s9, s11, 378
                  or           s9, a4, a0
                  bge          a5, s10, 198f
                  add          t6, zero, s1
                  slti         t4, a3, 1290
                  addi         t3, s2, 1411
                  sltu         s0, a1, s1
                  bgeu         s6, s6, 189f
187:              slti         t6, a0, 824
188:              beq          a5, tp, 193f
189:              blt          a7, a4, 194f
                  addi         s11, s5, -486
                  or           ra, s8, s6
                  addi         t6, tp, 512
193:              slt          a4, s8, t3
194:              addi         s7, t2, 729
                  srai         a4, s3, 21
                  or           s0, a1, a1
                  sra          s11, t1, t1
198:              lui          s4, 593957
                  lui          sp, 372069
                  ori          s2, ra, -1358
                  beq          s1, t1, 209f
                  sltu         a4, a6, t6
                  bltu         s4, t5, 215f
                  sub          t0, a0, t0
                  or           a5, s11, gp
                  bne          t4, s9, 217f
                  nop
                  beq          s0, a7, 220f
209:              addi         t0, s4, 397
                  sltiu        a5, a4, -2005
                  sltiu        s1, s9, 1440
                  sltiu        a5, s6, 1295
                  xor          s5, ra, gp
                  and          tp, s5, s10
215:              andi         a7, a7, 278
                  lui          s8, 598077
217:              bge          t1, s0, 235f
                  bgeu         a4, a0, 222f
                  andi         tp, s8, -1539
220:              sltu         tp, s7, a0
                  bltu         t0, a4, 233f
222:              sub          t1, a6, ra
                  blt          a0, s9, 228f
                  sll          t2, t3, t3
                  sra          ra, t4, tp
                  andi         zero, s11, 1422
                  beq          s9, s2, 244f
228:              sltiu        tp, t4, -321
                  addi         sp, s8, 1916
                  slli         gp, s2, 29
                  blt          t6, s3, 237f
                  bge          s10, s5, 241f
233:              nop
                  beq          t1, a5, 239f
235:              bne          s3, s0, 248f
                  bge          s5, s8, 249f
237:              sltu         a7, gp, t3
                  xor          t3, s2, s3
239:              slti         s3, s9, 206
                  andi         ra, a2, 551
                  srl          s2, gp, a6
                  srl          gp, sp, tp
                  blt          a0, a3, sub_1_j4 #branch to jump instr
                  ori          ra, s11, -1808
                  addi         gp, gp, -870
                  xori         s11, s1, 260
                  lui          ra, 512059
                  sltiu        s3, a3, -1455
                  srai         a1, ra, 0
                  srai         s6, tp, 22
sub_1_j4:         jal          t6, sub_2 #jump sub_1 -> sub_2
241:              andi         s4, tp, 71
                  srli         t4, s5, 29
                  ori          t3, a1, -1103
244:              bge          t1, ra, 250f
                  bne          t5, s0, 250f
                  ori          t4, s3, 140
                  addi         sp, t0, 411
248:              sub          a2, a4, t5
249:              blt          t2, a1, 250f
250:              auipc        t2, 220164
                  xor          s1, a7, s0
                  slti         a6, s11, -83
                  xori         s3, t2, 2019
                  sltu         t2, a4, s1
                  sltiu        s2, s0, 275
                  slti         zero, zero, -1939
                  lui          t4, 897064
                  srl          a4, a2, a3
                  lw           t6, 4(s10)
                  addi         s10, s10, 36
                  lui          s9, 995785
                  sll          a6, sp, s2
418:              addi x19, x31, 1
418:              jalr x19, x19, 0
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
.word 0x13567c17, 0xaf32850d, 0xd25eddc2, 0xd060d770, 0x0540c39e, 0x072c6447, 0xf283cc82, 0x2cf138e7
.word 0x4af3f62a, 0xeedd4900, 0x38e36093, 0xb0a28535, 0x262cd34d, 0x1fae65b3, 0xf5fa3cbe, 0xee1aed6d
.word 0x54f326dc, 0x85a51bb2, 0x2d1cb751, 0x61ae9dfc, 0xae88f7df, 0x143d8c91, 0x56bbb932, 0xa6e57db9
.word 0x55f2f53c, 0x94d173dc, 0xf4ce47c3, 0xc612cc5f, 0xe70047cf, 0x80e687f5, 0x143768bf, 0xf0d9c7fa
.word 0x7c45f0cf, 0x2ddb7259, 0xa4b404a1, 0xb082447a, 0xea40bf50, 0xbb29a1c2, 0x54ca90c3, 0xd2a77a20
.word 0xf443e3ae, 0x05809aee, 0x28c73cba, 0xa1ecfe2f, 0x06e5d351, 0x7ba0e005, 0x980efefc, 0xd7135a1f
.word 0x74aa5da3, 0x7f8989fe, 0x7712464a, 0x819d341f, 0xbb4f1902, 0x9405a240, 0x832bde7c, 0xecb3591a
.word 0x54ef0eb0, 0xe1384542, 0xc73e03a3, 0x1dc4ac8d, 0xff8ea6da, 0xafb7e839, 0x2778e195, 0x3fcb46fc
.word 0x95a9adc2, 0x258023dd, 0xb966453b, 0x1436c612, 0x6afb3e37, 0xdbe38455, 0x06899c50, 0x73f2e6a1
.word 0xc1d8b558, 0x87901bff, 0x7be71713, 0x5ec06cc7, 0xce1ba299, 0xe516b6d8, 0x6509bfe7, 0xa5fcc6bf
.word 0x246a6e94, 0xe0ec828b, 0xb421776d, 0x92b8062a, 0x424c060d, 0x584852fc, 0x84ca27c2, 0xfb0686bd
.word 0x86b1e851, 0x3e6c29cf, 0x4a90d056, 0x95153e17, 0x54ccb568, 0xae050695, 0x0373bca5, 0x3374bde1
.word 0x6f4beade, 0xad445a55, 0x0f90eb44, 0xc9b48a46, 0x96a1b910, 0xd03ef19b, 0xdacc5d18, 0x2b3fa6d0
.word 0x298847ad, 0x90791686, 0x9cfd008b, 0x8a6cb261, 0xe9b3d576, 0x764fd92b, 0x2de11fbf, 0x5e8b4b45
.word 0x93cd450e, 0x03fc4aac, 0x7446a5ff, 0x4c29b5c4, 0x69be3d3d, 0x1528f9a7, 0x2494ff3a, 0xee9ce985
.word 0xd467ab74, 0x0efe55ab, 0xf6a9e760, 0x3e480fbb, 0x28a5eeca, 0x17cdf526, 0xd6e1d550, 0x18d496af
.word 0xf22efcab, 0x321ed7b6, 0x1cf7f7db, 0x8b9c1d2b, 0x3e4e4f7e, 0xe1c8f07e, 0x17e8094b, 0xdde6e90b
.word 0xdf0d244f, 0x4e6ea219, 0x32338b87, 0x986448f9, 0xd3dc7eee, 0x1bcc13d0, 0xaf75e858, 0xa2bc4491
.word 0x9ced5848, 0xcc96d721, 0x421d407c, 0x7efee90b, 0x55a945be, 0x89ac4692, 0x3cd78a8b, 0xab2ddae8
.word 0xe072b401, 0x2726a599, 0x1e96448f, 0xb0c353f7, 0xa04b3140, 0x71390cb4, 0x12e8531b, 0x0049d99d
.word 0x5889a246, 0x93dd4a13, 0xd6d35431, 0x48e32f9f, 0x1f1b240c, 0x822e2760, 0x45aff725, 0x95b88379
.word 0x7beaadf6, 0x997296b6, 0xd63de309, 0x491f835a, 0xa2256c36, 0x779bcfc5, 0x6762c032, 0xe86825b6
.word 0xd04e39ed, 0xcc7ab7bf, 0xff4f93bb, 0xd0e83aea, 0x2e5fe6e6, 0xc77f49d3, 0xf288f338, 0x632303d0
.word 0xcc30a793, 0x8aac8058, 0x20c4ac49, 0x25413548, 0x7818066d, 0xcb5e81ea, 0x590f02a6, 0x4364c4ea
.word 0x4aefc0bb, 0xeb8b0b3f, 0xf5df94e8, 0x1f964249, 0x4aeb08ec, 0xd84609e0, 0x4f31419e, 0x86d44eff
.word 0xea10801b, 0xac7c3472, 0x079e534e, 0x5b90904d, 0x853ce936, 0xb2b6ae3c, 0xae4330ce, 0x6ce67cac
.word 0x25514d37, 0x8e116684, 0xafbc8459, 0x126fcc23, 0x01744adf, 0xa72429ac, 0x2ef6d8dc, 0x519f35cb
.word 0xdcd4d661, 0x4d5e7bf4, 0xa9faa76a, 0xf79a9f1c, 0x58d8d534, 0x21b90518, 0x108afd23, 0xe08ebcdc
.word 0x0fc05d9a, 0x200279b6, 0x8658e2a9, 0x8144a8e0, 0x3d3715a5, 0xee2967d6, 0x59a10687, 0xece11c2c
.word 0x9f5da70b, 0x02ce203c, 0x31399c30, 0xf435d7ff, 0xca99c46e, 0xa0c6d557, 0x5f19ca94, 0xb36f7b8f
.word 0x2da25736, 0x521b8a82, 0x31264fc0, 0x6dae6528, 0xd5a913bb, 0x8c2777d1, 0x50b3d05f, 0xbbf9f3b7
.word 0x4a330a0c, 0xf1fea43a, 0x45c144c4, 0xdb8b6978, 0xee77b250, 0xa1c860ec, 0x7d754ef4, 0x18edeb8d
.word 0x591da4bf, 0x9a625dcc, 0x634183d8, 0xa01fdf7f, 0xe470d058, 0xea6a791c, 0xc838dedd, 0xf1aca025
.word 0xd0e3dac9, 0x8a303392, 0xe1787a75, 0xa060b740, 0xa298030d, 0xd279f624, 0x1ff8a9ec, 0xc52d5e93
.word 0x99060b5c, 0xd735e9be, 0x13514375, 0xa0c1ecd5, 0x28380abc, 0x998519b7, 0xd6b61c2b, 0x492e08c8
.word 0xa6217f48, 0x9eda2fa8, 0xba5e05ea, 0x85b4e3f1, 0xd358a609, 0xe9e141ca, 0xdba2e8e7, 0x38842894
.word 0x6334a5d7, 0xc8bd53f2, 0xfddd4730, 0x56c97ca2, 0x636e357d, 0x5e0d550c, 0x081036cc, 0xb4f5bf43
.word 0x1c59ac89, 0x20516d6b, 0x669e8e5f, 0xe9844463, 0x7675ea81, 0x07d9f4fe, 0x415400e1, 0x1dbf457b
.word 0x11f163b9, 0x846e4cb3, 0x43df3511, 0xf33255d4, 0x75309903, 0x9e9f683b, 0x2650e6db, 0x8bf62288
.word 0x52ba7138, 0x53535e54, 0xa89e9960, 0x4c339eff, 0xec5a15b6, 0x64a89898, 0x01273559, 0xe0259cfc
.word 0x44c89a67, 0x6a8d53b5, 0xcbc763e3, 0x7c5b5649, 0x6238daea, 0xf5a6e271, 0xd9c3591b, 0xfa9b570b
.word 0x30d34926, 0xfdd420f8, 0x4b166d73, 0x11a85920, 0x414938eb, 0x6200c1a4, 0x67225903, 0xc3b5905a
.word 0x6f5f2a58, 0x0c43aee6, 0xa793aa42, 0xee66f2ff, 0xb81f76fc, 0x9e3e3f8a, 0x846f22fa, 0xd22e8a0f
.word 0xb69e1930, 0x7fbf5911, 0xd71241d8, 0xb87e22b9, 0x1e9c6fa3, 0xf10cc3fe, 0x51dd04f0, 0x07ee0f84
.word 0xe7569dd9, 0x3caac145, 0xa3cbca9a, 0xfd15c16c, 0x5c9b8cee, 0x279eef61, 0x9f8f84e8, 0xe24b9851
.word 0x9632eb80, 0x3eaa7663, 0x10c1814e, 0x0d3ee15e, 0xafbf593f, 0xfafad6d3, 0xe3f26200, 0x51bef61a
.word 0x4fe353fe, 0xcff22a78, 0x2d8927cc, 0x19382fe6, 0x31b4b2fe, 0xef04d4fa, 0x4ac681dd, 0x875fbb75
.word 0xc68338b4, 0xf479e9dc, 0x38af2dcf, 0xbb0462ad, 0xd923e91d, 0x61fdaeb8, 0xea19f70c, 0x9401d80b
.word 0x872ea19d, 0xc4e1661a, 0xd305e83f, 0x3981a88f, 0xea493d2f, 0x9884870b, 0x942b11e5, 0x6820fa74
.word 0x8469c245, 0xbca94da9, 0x47fa9cd3, 0x4ab8fb8f, 0xb07e684a, 0x22d52f52, 0xf0b5f644, 0xd5a9f1d9
.word 0xcfe19f17, 0x6a0a2c9c, 0xcd4ec602, 0x54bfa6ee, 0xc66e519b, 0xa0e19c07, 0x17b3ac3a, 0xdd4b9759
.word 0x1ee90d48, 0xafb41d32, 0x22904183, 0xc8e3cbc0, 0x8bfec5ca, 0x7bc739a8, 0x0437f1eb, 0xf7acdfae
.word 0x3c1a442d, 0x541621e6, 0x6db1f6c0, 0x98120084, 0x9d317065, 0x1e3394b1, 0x6d323671, 0x3cd9421d
.word 0x05ba6084, 0x2b1da60f, 0xeb538547, 0x4f9aafb5, 0xec637837, 0x257f72d5, 0xb241f21a, 0x6e6771d4
.word 0x17fab0bd, 0x2b2febb6, 0x4382cb1d, 0x58ad38ef, 0x4e6685ca, 0x2098f04e, 0xec9e064f, 0xd6cce906
.word 0x86bd40dd, 0x451c2403, 0xc3fae39f, 0x50264f1c, 0x71917743, 0xfec97586, 0xea6cf9e8, 0x7ea27b85
.word 0x208a649a, 0xe75d80ca, 0x24dcd187, 0x6a8efda1, 0xd6d48b71, 0x03878108, 0x31bea84e, 0x4b67b4ff
.word 0xc08ae8e5, 0x8f9e7aca, 0x0f8602cf, 0x2b1a3f5d, 0xead41096, 0x2779cd2b, 0x205fda08, 0x09359713
.word 0x26f77421, 0x7a11e1b4, 0x0b8a5001, 0x88deb1cd, 0x4fa05564, 0x6afe34a5, 0x1a4d1771, 0xf60f9b21
.word 0x932416ee, 0x8f2ea00d, 0x432976ca, 0x9c8caa99, 0xce2ff18e, 0x22836fd6, 0xb6dc9c6f, 0x0dc540f7
.word 0xa10010cb, 0xf89c52f7, 0xd71474e9, 0xf727a565, 0xbd9d1e7a, 0xb5a7a448, 0xbacd6d47, 0xa47a4736
.word 0x7a1a052b, 0x895518e5, 0x8ba3bf7c, 0x49b02098, 0xea5802cb, 0x8f5d6dda, 0x84e92918, 0xd0d41ca9
.word 0xf8ca6760, 0x5cfa3dd2, 0xda3593ff, 0xc374d109
.section .region_1,"aw",@progbits;
region_1:
.word 0x7c572b5d, 0xab922573, 0xf64f8b7d, 0xc7fd83e1, 0xd6856929, 0x07f360e7, 0x4ee47a46, 0x16ed699d
.word 0x7857a1d9, 0xcc63da12, 0x4fcf9198, 0x057caf89, 0x2f5265fc, 0x869c103d, 0xbfd2590f, 0x68bdc85b
.word 0x92570919, 0x753fe147, 0xca8a0e43, 0xdb538ca4, 0x60faeb4f, 0x48107941, 0xe18a3cb6, 0x0074a4b4
.word 0x156748a0, 0x21708480, 0x6de8fef2, 0x08166e16, 0x5f9eb119, 0x4df24bb7, 0xd4eb3f85, 0x59e10742
.word 0x98532d37, 0x14cd269a, 0x7ea270b2, 0x607f21a0, 0x4c223e9b, 0xe3037911, 0xda15adfc, 0x10bf431c
.word 0xdda1f844, 0xdc395c78, 0x85b73943, 0xc3e018c2, 0xe0d5c3a4, 0xec7717e8, 0x5287ea74, 0xd657016e
.word 0x5cf390bd, 0xbfc20774, 0xa85ef7c4, 0xc8a22091, 0xfdca56ec, 0xcaeb5a1c, 0xafcf0ff7, 0xe3abac56
.word 0x7dd2820b, 0xfa3c2bc7, 0x9cd5539b, 0xafc726ab, 0xb5158af2, 0x7487255c, 0x9b9fab78, 0x8851e6b2
.word 0x191fc283, 0xb8bacdad, 0x4aa38b5d, 0x8e5de0da, 0xf4004f3a, 0x15ff88b2, 0xd8d18f11, 0xb87570bc
.word 0x5f06bb2b, 0x6009623f, 0x734b4ee9, 0x8ad29c98, 0x188244e2, 0x74ea6ae5, 0x54031f52, 0x4d257ef5
.word 0x7dd0e575, 0x1bf541bd, 0x92191cc7, 0x34d4d85a, 0xa8351f65, 0x0ae04b77, 0xcb21b693, 0xca865239
.word 0xd63de203, 0xe22a1a0d, 0xcbf7b10f, 0xf0e46a18, 0xf5ce9ee7, 0xcef26501, 0x305e6bb1, 0x313b7aef
.word 0x97cf8032, 0xde2150dc, 0x582c317a, 0x6594881b, 0x1c19c96b, 0xa8cdd23c, 0xd6b6ae65, 0x99ee9ee4
.word 0xc368e2a6, 0xe56cd531, 0x30b10870, 0x90e41eb4, 0x57d66dce, 0xb001e295, 0x679a512a, 0xf66470c8
.word 0x1254f95e, 0x0674fce4, 0xebd93b7b, 0xede1d90f, 0xcf546bbb, 0x1d0b06a7, 0x85d54859, 0x8efb6424
.word 0xb6bf6829, 0xccf7592d, 0x9a7119a3, 0x1468b2a1, 0x4da453ec, 0xd4b8579a, 0xfe41b01f, 0xee0d5b49
.word 0x50c29c7e, 0x70f975c6, 0xed0633e4, 0x6dc44a11, 0xc50d13fe, 0xee44045d, 0x8af9063a, 0x23c29706
.word 0x20dfa71d, 0x5c30b2a7, 0xe3fe3fff, 0xe6d29a4b, 0x35e3283d, 0xeb0a9f13, 0xe8e8984e, 0x4be8023d
.word 0xdde59ab7, 0x0b9ff451, 0xf2f31bd5, 0x28c010bf, 0x40164bb8, 0x5e328eb6, 0x8ed86591, 0xfe7a964a
.word 0x63c32b17, 0x0a839452, 0xfd2e3693, 0x4ecf73a8, 0x483292a8, 0x168eefbc, 0x07072257, 0x698ee767
.word 0x5eed201d, 0x66b6f7e3, 0xcbcff6b2, 0xd83dc065, 0xe4c585d0, 0xe47f925c, 0x879116cc, 0xd6d4d657
.word 0x7b31d1b1, 0x60b7ad5d, 0xe85e319d, 0x222b923e, 0x0ff4d704, 0x9aa5b4d1, 0xcc2f3ba6, 0xdc24cf4c
.word 0xbb4129a3, 0x7bfd65de, 0x5b8e1e18, 0x3309f4b4, 0xeff60c23, 0xe52f16ee, 0x15dab7b6, 0x26b594dd
.word 0xd80e2c37, 0x5637cd60, 0x290c45ef, 0xf6184d39, 0xe22fa610, 0x7ae00aaf, 0x85371b26, 0x04e10e41
.word 0x91e29456, 0xabf5ce06, 0x777c0a78, 0x888d4ecf, 0x370bf542, 0x0f751dd3, 0xc09dfe2d, 0xde19100f
.word 0x47773529, 0xffd59faa, 0x6e7746ce, 0xf8e824a9, 0x33bfd22e, 0x80f91f51, 0x0d82e237, 0x6caaf3a1
.word 0xd4272728, 0xe57c3b13, 0x8aa3ada5, 0x9be75b00, 0x34d9cc9d, 0x00a1a479, 0xfcb499fc, 0x5ec9c59b
.word 0xed1433fb, 0x3c415e2f, 0x6b84f250, 0xa9c1c176, 0x47693eca, 0xe6e219e2, 0x3d33e906, 0x0dd286f6
.word 0x0b15650e, 0x1b3559e4, 0x42a811a8, 0xcd904527, 0x25bc6c48, 0x4b86849f, 0x263cbdbc, 0x3be7b459
.word 0xf214d680, 0x5e0de284, 0x589ffeda, 0x0fc1f0f8, 0x8f271f57, 0x60e69aae, 0x80e0b527, 0xd43bed36
.word 0xc1cb06b2, 0x4a0d8e47, 0x7c07559e, 0xa18920f2, 0x15498bf7, 0x4e82375d, 0xbac24ba6, 0x8b7695c8
.word 0xd72a7458, 0x586d8653, 0x26ff29dc, 0x47176444, 0x54c36b70, 0x30fd2a0e, 0xa4ba859d, 0xfc3c0f3c
.word 0x1be35102, 0x6ed1e4f0, 0xcc87bd7b, 0x07ffca8d, 0x44e39855, 0x05db0edf, 0x8f8a9f71, 0xf3475c37
.word 0x01c73e08, 0x89f808a5, 0xcd5d9971, 0x17be12e5, 0x58d399af, 0x7cece868, 0x9637e2e9, 0x3b81f42b
.word 0xe8df6e5e, 0x214aaff8, 0xb9a59721, 0xa7c2e321, 0x84919298, 0x971429f8, 0x053d942d, 0x61907568
.word 0x53957e7c, 0xe9b90a64, 0x0bd4bbee, 0xafa6d472, 0x91eb2a7f, 0xcec9fc7f, 0x71b8b310, 0x7699fde5
.word 0xbefd95cb, 0xa4d617bc, 0xcebc1eeb, 0xf66cf95a, 0x74b8b6b5, 0xdb85c90a, 0xadafbfeb, 0x9d56de0b
.word 0x9df649b6, 0xd3622893, 0xd656d88e, 0x57c20f1b, 0x306ea861, 0x8067ba9a, 0xc9e2e683, 0x849a79c8
.word 0x359288eb, 0xfbab266c, 0x2f8021ed, 0xb6fccc60, 0x2c845d69, 0x6e23a8c9, 0x2e1f1893, 0x820b57d4
.word 0xf26b5aab, 0x0de96c57, 0x26c2e84a, 0x6d488522, 0xb78a4618, 0x4eafcf07, 0x74a54ba1, 0x4a40409c
.word 0xdf8367b4, 0xc8a9dd0a, 0x71468c7c, 0x46174bf8, 0xcab160d9, 0xdd70f696, 0xad6fb32e, 0xf28a6723
.word 0xd61c0987, 0xd69b3ee3, 0x639a0cfb, 0x15a9ea30, 0x1909e84a, 0x9897416c, 0xd1389059, 0x22db4837
.word 0x6586c942, 0x9e30d1a8, 0x4caa23d1, 0x4edf43de, 0x102f4d59, 0x7cf10ec1, 0x337a68e9, 0x4270cabc
.word 0x8e68b3ac, 0x836d47e5, 0xb2240968, 0x29434a68, 0xdbf0e6c5, 0x5c989d80, 0x4b6e4c66, 0x8ea67aa7
.word 0x586e2d68, 0x7b5b2d27, 0x2590235b, 0xecfa7c4e, 0xeef1a049, 0x3d5bf256, 0x110e8ed1, 0xbbedbd76
.word 0x32b33bcd, 0x88ca75aa, 0x7fa393a5, 0x93db8342, 0x7498f6c8, 0x2b4e7274, 0x673eec22, 0x17461d9e
.word 0xfb5d9e3a, 0xacb66f90, 0xd9bf6e68, 0x76a40886, 0x5fc1f3eb, 0x968370cd, 0xadb25d6e, 0xad6ac3c2
.word 0x8b3cfa45, 0x6c934be5, 0x606e6964, 0x5be38006, 0x67e657aa, 0xa8af472a, 0x4835ef9d, 0xc143c3e9
.word 0x6810cccb, 0xae57282c, 0x028cfcb1, 0xa96243a5, 0x1bb0f7ca, 0xfa7ca515, 0x50449a14, 0xb2aa1c44
.word 0xc8bd9eef, 0x230fbffa, 0x6907c172, 0x3d1b1220, 0xdef1989a, 0x41f342fc, 0x419e5fe1, 0x7cb4b07e
.word 0xc2b056cb, 0xc81cf9d5, 0x56828a66, 0x5cbcf4bc, 0xd019dbb5, 0x9a23b110, 0xc86c1604, 0xf16a3d2c
.word 0x48c37656, 0x98383373, 0x8a3e605f, 0xdc4b112d, 0xde66cd52, 0xac816430, 0xd6716e96, 0x23971f65
.word 0x8f741800, 0xaf43b230, 0x64c67f91, 0x155b6db7, 0xb39e9090, 0xdfe3b276, 0x1c205568, 0x3b60b219
.word 0x5cfd47ca, 0xa7366062, 0xa3a03437, 0x10cd24c0, 0x0f67aba2, 0x30387444, 0x63b329a7, 0xfee57d90
.word 0x57533c67, 0x38ca63f7, 0xd7c4fbf4, 0xc951e90d, 0xde82cbc6, 0x819f0379, 0xb5da06c5, 0xaa5e1e25
.word 0x3db22b23, 0xcac0cd07, 0x10645347, 0x8ed9f237, 0x96c351e5, 0xfa04c3b2, 0x5738b9a2, 0x04dbb854
.word 0x19b0681f, 0x19f082b1, 0xa6916828, 0x4e6d844f, 0x159b4ca8, 0x26bf69fa, 0xfe7ebe8f, 0x9c7aec16
.word 0x66d5a397, 0x995bee30, 0x6a9efa39, 0x646497c1, 0xd2681b0c, 0xacd1d8d4, 0x4bdb185d, 0x0df770e4
.word 0x4d4891c0, 0xffa61e3f, 0x17d3f70a, 0x908bcf7a, 0x3da8371d, 0x6b0b3b41, 0x92bdc0b1, 0x6abe50d0
.word 0x384b7898, 0x0124a877, 0x133d7278, 0x1abd278c, 0x175bcf87, 0x77ad2aff, 0xb4dc81b6, 0x4ed3e134
.word 0xbf260310, 0xcbf6d03f, 0x6937a519, 0x68996d59, 0x1df98355, 0xc8525268, 0xe1e31680, 0x52a25926
.word 0x3cf4cb12, 0x4994eb05, 0xd5fa25e4, 0x5da9a31b, 0x2ea1cdaa, 0x15a21290, 0x2495e698, 0xe6d2afac
.word 0x3c23543e, 0x6c6ee52c, 0x00504737, 0xc8487423
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x13, x26, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x21, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x21, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x21, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x21, x5, ecall_handler
                  li x5, 0x1
                  beq x21, x5, instr_fault_handler
                  li x5, 0x5
                  beq x21, x5, load_fault_handler
                  li x5, 0x7
                  beq x21, x5, store_fault_handler
                  li x5, 0xc
                  beq x21, x5, pt_fault_handler
                  li x5, 0xd
                  beq x21, x5, pt_fault_handler
                  li x5, 0xf
                  beq x21, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x26, x13, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x13, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x13, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x26, x13, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x26, x13, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x26, x13, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
