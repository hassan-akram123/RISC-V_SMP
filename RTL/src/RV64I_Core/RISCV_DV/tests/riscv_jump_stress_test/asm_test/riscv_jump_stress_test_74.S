.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x6, kernel_stack_end

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
                  li x0, 0xc
                  li x1, 0x1
                  li x2, 0x0
                  li x3, 0xd687d4a9
                  li x4, 0x7
                  li x5, 0x192abc0
                  li x7, 0x0
                  li x8, 0xf731743d
                  li x9, 0xb
                  li x11, 0x0
                  li x12, 0x6
                  li x13, 0x3e6eded7
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xfb6fb846
                  li x18, 0x8fccddd3
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x1
                  li x24, 0xe68c9d95
                  li x25, 0xa
                  li x26, 0xbef9d797
                  li x27, 0xb
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf25cbd35
                  la x10, user_stack_end
main:             la           a4, sub_1
                  sll          s5, t2, s10
                  ori          tp, a7, -249
                  srli         sp, t2, 2
                  slt          s10, s4, sp
                  addi         a4, a4, -448
                  slti         s5, a4, 1939
main_j2:          jalr         s10, a4, 449 #jump main -> sub_1
main_0:           jal          s10, 7f
0:                jal          ra, 6f
1:                jal          ra, 4f
2:                jal          ra, 8f
3:                jal          ra, 5f
4:                jal          ra, 9f
5:                jal          gp, 0b
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          ra, 1b
9:                jal          tp, 11f
10:               jal          t3, 2b
11:               jal          ra, 3b
12:               sub          s10, ra, t0
                  bgeu         a4, t6, 8f
                  sub          zero, a2, t4
                  nop
                  ori          s8, s5, 78
                  sub          sp, gp, t3
                  sltiu        t2, t0, -239
                  sra          t2, s9, t6
                  blt          tp, s1, 14f
8:                slli         s4, a0, 31
                  slt          s0, s0, a3
                  sltiu        t3, s1, -1207
                  auipc        a4, 942019
                  la           sp, sub_1
                  nop
                  addi         sp, sp, 905
                  srli         tp, s9, 17
                  and          s3, a7, s0
main_j1:          jalr         s10, sp, -905 #jump main -> sub_1
                  srl          s5, t2, a6
                  addi         s4, t4, -571
                  sub          s7, t2, t1
                  slt          s8, t3, a4
                  sltiu        t5, zero, -1286
14:               or           zero, t2, gp
                  sll          a1, s10, a4
                  sra          zero, s4, s8
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            bge          s2, t1, sub_3_stack_p
                  slti         sp, s2, 921
sub_3_stack_p:    addi         a0, a0, -24
                  ori          t6, s4, 1922
                  slti         s11, s11, -1290
                  and          t6, t3, s8
                  sll          s2, t2, a6
                  sw           s10, 4(a0)
                  ori          s6, a1, -615
sub_3_2:          jal          s10, 4f
0:                jal          s9, 9f
1:                jal          ra, 15f
2:                jal          s6, 7f
3:                jal          s6, 23f
4:                jal          ra, 16f
5:                jal          ra, 22f
6:                jal          ra, 25f
7:                jal          ra, 14f
8:                jal          sp, 11f
9:                jal          a5, 18f
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          ra, 0b
13:               jal          tp, 5b
14:               jal          s1, 26f
15:               jal          ra, 17f
16:               jal          ra, 24f
17:               jal          ra, 2b
18:               jal          ra, 13b
19:               jal          ra, 20f
20:               jal          a6, 3b
21:               jal          s0, 8b
22:               jal          s7, 1b
23:               jal          t2, 21b
24:               jal          ra, 6b
25:               jal          t2, 19b
26:               slt          s5, a0, t3
sub_3_8:          jal          s10, 4f
0:                jal          ra, 5f
1:                jal          ra, 0b
2:                jal          ra, 1b
3:                jal          ra, 8f
4:                jal          sp, 7f
5:                jal          ra, 10f
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          ra, 2b
9:                jal          s0, 3b
10:               srai         s6, gp, 12
sub_3_33:         jal          s10, 2f
0:                jal          ra, 14f
1:                jal          ra, 10f
2:                jal          s5, 20f
3:                jal          ra, 19f
4:                jal          sp, 22f
5:                jal          t4, 21f
6:                jal          t3, 15f
7:                jal          ra, 13f
8:                jal          t3, 9f
9:                jal          ra, 12f
10:               jal          a1, 11f
11:               jal          ra, 7b
12:               jal          s7, 17f
13:               jal          ra, 25f
14:               jal          tp, 24f
15:               jal          ra, 16f
16:               jal          ra, 18f
17:               jal          ra, 26f
18:               jal          tp, 0b
19:               jal          ra, 1b
20:               jal          s11, 3b
21:               jal          ra, 8b
22:               jal          t5, 6b
23:               jal          ra, 4b
24:               jal          ra, 5b
25:               jal          ra, 23b
26:               slti         a4, gp, -759
sub_3_38:         jal          s10, 24f
0:                jal          t6, 22f
1:                jal          ra, 14f
2:                jal          ra, 4f
3:                jal          t0, 23f
4:                jal          sp, 9f
5:                jal          ra, 26f
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          ra, 13f
9:                jal          ra, 12f
10:               jal          ra, 8b
11:               jal          s0, 28f
12:               jal          ra, 16f
13:               jal          ra, 6b
14:               jal          ra, 15f
15:               jal          s10, 11b
16:               jal          ra, 19f
17:               jal          ra, 1b
18:               jal          ra, 3b
19:               jal          s6, 20f
20:               jal          ra, 5b
21:               jal          ra, 0b
22:               jal          ra, 10b
23:               jal          ra, 21b
24:               jal          sp, 18b
25:               jal          a6, 27f
26:               jal          ra, 25b
27:               jal          s7, 17b
28:               srli         s0, s2, 14
sub_3_43:         jal          s10, 9f
0:                jal          ra, 8f
1:                jal          a6, 17f
2:                jal          a2, 20f
3:                jal          t6, 10f
4:                jal          a4, 0b
5:                jal          ra, 6f
6:                jal          ra, 25f
7:                jal          sp, 19f
8:                jal          t0, 12f
9:                jal          tp, 15f
10:               jal          ra, 24f
11:               jal          ra, 26f
12:               jal          a4, 23f
13:               jal          ra, 3b
14:               jal          ra, 1b
15:               jal          ra, 22f
16:               jal          ra, 21f
17:               jal          tp, 2b
18:               jal          ra, 7b
19:               jal          ra, 13b
20:               jal          s8, 16b
21:               jal          ra, 18b
22:               jal          ra, 14b
23:               jal          ra, 5b
24:               jal          ra, 4b
25:               jal          t0, 11b
26:               srai         s4, s3, 29
sub_3_18:         jal          s10, 11f
0:                jal          ra, 9f
1:                jal          gp, 15f
2:                jal          ra, 5f
3:                jal          ra, 16f
4:                jal          ra, 8f
5:                jal          ra, 12f
6:                jal          ra, 18f
7:                jal          ra, 13f
8:                jal          ra, 7b
9:                jal          s3, 2b
10:               jal          s11, 3b
11:               jal          ra, 1b
12:               jal          tp, 6b
13:               jal          ra, 0b
14:               jal          ra, 19f
15:               jal          ra, 17f
16:               jal          ra, 4b
17:               jal          t2, 10b
18:               jal          ra, 14b
19:               slti         tp, a5, 1061
sub_3_10:         jal          s10, 6f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          ra, 3f
3:                jal          ra, 1b
4:                jal          ra, 2b
5:                jal          tp, 9f
6:                jal          s0, 0b
7:                jal          tp, 5b
8:                jal          ra, 7b
9:                jal          ra, 4b
10:               add          sp, s3, t6
sub_3_46:         jal          s10, 17f
0:                jal          ra, 14f
1:                jal          ra, 7f
2:                jal          ra, 15f
3:                jal          tp, 20f
4:                jal          s7, 9f
5:                jal          tp, 1b
6:                jal          ra, 24f
7:                jal          ra, 18f
8:                jal          ra, 30f
9:                jal          ra, 10f
10:               jal          ra, 28f
11:               jal          ra, 22f
12:               jal          a5, 4b
13:               jal          ra, 25f
14:               jal          ra, 21f
15:               jal          ra, 16f
16:               jal          ra, 23f
17:               jal          s9, 19f
18:               jal          t0, 0b
19:               jal          ra, 6b
20:               jal          ra, 12b
21:               jal          ra, 29f
22:               jal          t0, 26f
23:               jal          t2, 5b
24:               jal          ra, 3b
25:               jal          ra, 2b
26:               jal          ra, 13b
27:               jal          ra, 8b
28:               jal          ra, 11b
29:               jal          ra, 27b
30:               xor          zero, t1, s10
sub_3_1:          jal          s10, 11f
0:                jal          ra, 13f
1:                jal          ra, 7f
2:                jal          ra, 1b
3:                jal          ra, 0b
4:                jal          s3, 6f
5:                jal          ra, 12f
6:                jal          s4, 8f
7:                jal          ra, 4b
8:                jal          ra, 9f
9:                jal          ra, 3b
10:               jal          a1, 5b
11:               jal          a7, 10b
12:               jal          s5, 2b
13:               sltu         s1, a2, gp
sub_3_22:         jal          s10, 3f
0:                jal          tp, 9f
1:                jal          ra, 19f
2:                jal          s3, 11f
3:                jal          t3, 6f
4:                jal          t2, 7f
5:                jal          ra, 13f
6:                jal          ra, 18f
7:                jal          sp, 5b
8:                jal          t6, 12f
9:                jal          a5, 4b
10:               jal          t4, 17f
11:               jal          t3, 8b
12:               jal          ra, 10b
13:               jal          ra, 15f
14:               jal          ra, 2b
15:               jal          ra, 1b
16:               jal          ra, 14b
17:               jal          ra, 0b
18:               jal          ra, 16b
19:               slli         s2, a2, 11
sub_3_53:         jal          s10, 5f
0:                jal          a2, 17f
1:                jal          s5, 18f
2:                jal          tp, 7f
3:                jal          gp, 8f
4:                jal          ra, 21f
5:                jal          ra, 20f
6:                jal          ra, 10f
7:                jal          s6, 11f
8:                jal          ra, 2b
9:                jal          ra, 22f
10:               jal          ra, 3b
11:               jal          a2, 0b
12:               jal          t5, 4b
13:               jal          ra, 9b
14:               jal          sp, 1b
15:               jal          ra, 14b
16:               jal          ra, 6b
17:               jal          tp, 13b
18:               jal          s3, 16b
19:               jal          ra, 15b
20:               jal          ra, 12b
21:               jal          ra, 19b
22:               lui          s1, 620083
sub_3_0:          jal          s10, 17f
0:                jal          t0, 21f
1:                jal          t4, 13f
2:                jal          ra, 12f
3:                jal          s7, 29f
4:                jal          s1, 7f
5:                jal          s7, 0b
6:                jal          ra, 1b
7:                jal          ra, 15f
8:                jal          t0, 9f
9:                jal          ra, 20f
10:               jal          ra, 8b
11:               jal          ra, 23f
12:               jal          t0, 4b
13:               jal          ra, 10b
14:               jal          ra, 19f
15:               jal          ra, 6b
16:               jal          s9, 22f
17:               jal          ra, 26f
18:               jal          ra, 11b
19:               jal          ra, 25f
20:               jal          ra, 27f
21:               jal          ra, 28f
22:               jal          s5, 18b
23:               jal          ra, 14b
24:               jal          ra, 2b
25:               jal          ra, 5b
26:               jal          t2, 24b
27:               jal          s2, 16b
28:               jal          ra, 3b
29:               slti         t6, a4, 803
sub_3_4:          jal          s10, 0f
0:                jal          a7, 4f
1:                jal          ra, 9f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          s0, 8f
5:                jal          ra, 13f
6:                jal          ra, 17f
7:                jal          ra, 18f
8:                jal          s4, 1b
9:                jal          s8, 14f
10:               jal          ra, 5b
11:               jal          ra, 3b
12:               jal          s9, 16f
13:               jal          ra, 7b
14:               jal          t0, 2b
15:               jal          tp, 6b
16:               jal          t0, 19f
17:               jal          t2, 11b
18:               jal          ra, 15b
19:               slli         s10, a3, 15
sub_3_31:         jal          s10, 8f
0:                jal          ra, 5f
1:                jal          a7, 12f
2:                jal          ra, 3f
3:                jal          ra, 4f
4:                jal          s9, 11f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          ra, 6b
11:               jal          ra, 7b
12:               ori          t6, t4, 1683
sub_3_34:         jal          s10, 9f
0:                jal          ra, 4f
1:                jal          a4, 14f
2:                jal          a4, 3f
3:                jal          s8, 1b
4:                jal          a7, 10f
5:                jal          ra, 12f
6:                jal          s4, 5b
7:                jal          ra, 0b
8:                jal          ra, 2b
9:                jal          s2, 13f
10:               jal          ra, 8b
11:               jal          ra, 7b
12:               jal          s8, 11b
13:               jal          ra, 6b
14:               xor          s6, a1, s7
sub_3_17:         jal          s10, 1f
0:                jal          t0, 2f
1:                jal          tp, 10f
2:                jal          ra, 8f
3:                jal          t5, 0b
4:                jal          ra, 9f
5:                jal          t0, 13f
6:                jal          t0, 12f
7:                jal          t5, 3b
8:                jal          ra, 5b
9:                jal          s6, 11f
10:               jal          ra, 4b
11:               jal          ra, 6b
12:               jal          s10, 7b
13:               or           sp, s0, s6
sub_3_40:         jal          s10, 8f
0:                jal          ra, 2f
1:                jal          ra, 9f
2:                jal          ra, 4f
3:                jal          s6, 5f
4:                jal          a5, 6f
5:                jal          ra, 1b
6:                jal          ra, 7f
7:                jal          ra, 3b
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          sp, 0b
11:               nop
sub_3_41:         jal          s10, 19f
0:                jal          ra, 5f
1:                jal          ra, 22f
2:                jal          ra, 3f
3:                jal          ra, 4f
4:                jal          ra, 13f
5:                jal          gp, 23f
6:                jal          s1, 24f
7:                jal          ra, 8f
8:                jal          sp, 25f
9:                jal          s2, 14f
10:               jal          ra, 7b
11:               jal          ra, 10b
12:               jal          ra, 11b
13:               jal          t4, 6b
14:               jal          gp, 17f
15:               jal          ra, 2b
16:               jal          t0, 1b
17:               jal          ra, 12b
18:               jal          t0, 15b
19:               jal          ra, 16b
20:               jal          ra, 21f
21:               jal          ra, 26f
22:               jal          ra, 9b
23:               jal          ra, 18b
24:               jal          ra, 20b
25:               jal          ra, 0b
26:               addi         t2, s6, -248
sub_3_15:         jal          s10, 2f
0:                jal          s3, 10f
1:                jal          ra, 5f
2:                jal          ra, 1b
3:                jal          s7, 0b
4:                jal          ra, 7f
5:                jal          ra, 9f
6:                jal          ra, 3b
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          t0, 6b
10:               jal          ra, 8b
11:               add          s7, a2, s2
sub_3_13:         jal          s10, 20f
0:                jal          ra, 17f
1:                jal          ra, 2f
2:                jal          ra, 21f
3:                jal          ra, 7f
4:                jal          ra, 29f
5:                jal          ra, 14f
6:                jal          a4, 22f
7:                jal          s9, 13f
8:                jal          ra, 26f
9:                jal          ra, 23f
10:               jal          a2, 5b
11:               jal          ra, 10b
12:               jal          ra, 24f
13:               jal          ra, 28f
14:               jal          ra, 6b
15:               jal          ra, 3b
16:               jal          ra, 27f
17:               jal          s4, 11b
18:               jal          s7, 9b
19:               jal          ra, 16b
20:               jal          ra, 8b
21:               jal          ra, 0b
22:               jal          a2, 12b
23:               jal          ra, 25f
24:               jal          ra, 19b
25:               jal          ra, 1b
26:               jal          ra, 15b
27:               jal          tp, 4b
28:               jal          ra, 18b
29:               sra          t3, a6, s4
sub_3_50:         jal          s10, 10f
0:                jal          ra, 25f
1:                jal          ra, 17f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          ra, 7f
5:                jal          ra, 22f
6:                jal          ra, 16f
7:                jal          ra, 13f
8:                jal          ra, 12f
9:                jal          a4, 19f
10:               jal          ra, 8b
11:               jal          s4, 23f
12:               jal          ra, 2b
13:               jal          ra, 9b
14:               jal          ra, 21f
15:               jal          s1, 24f
16:               jal          ra, 11b
17:               jal          a7, 0b
18:               jal          ra, 5b
19:               jal          ra, 15b
20:               jal          ra, 14b
21:               jal          ra, 1b
22:               jal          ra, 20b
23:               jal          ra, 26f
24:               jal          s6, 18b
25:               jal          ra, 3b
26:               and          tp, a5, s6
sub_3_44:         jal          s10, 10f
0:                jal          ra, 14f
1:                jal          ra, 9f
2:                jal          sp, 1b
3:                jal          ra, 12f
4:                jal          ra, 13f
5:                jal          gp, 17f
6:                jal          ra, 18f
7:                jal          a2, 4b
8:                jal          ra, 11f
9:                jal          tp, 0b
10:               jal          tp, 5b
11:               jal          s8, 15f
12:               jal          ra, 7b
13:               jal          ra, 6b
14:               jal          gp, 8b
15:               jal          t4, 3b
16:               jal          t6, 2b
17:               jal          ra, 16b
18:               xor          a5, s9, t4
sub_3_11:         jal          s10, 10f
0:                jal          ra, 7f
1:                jal          s9, 2f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          t0, 6f
5:                jal          s2, 11f
6:                jal          a2, 9f
7:                jal          s0, 4b
8:                jal          ra, 1b
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          s11, 13f
12:               jal          ra, 3b
13:               sltiu        s5, s1, 1218
sub_3_37:         jal          s10, 3f
0:                jal          ra, 5f
1:                jal          ra, 4f
2:                jal          ra, 12f
3:                jal          t4, 6f
4:                jal          ra, 2b
5:                jal          t5, 1b
6:                jal          ra, 11f
7:                jal          tp, 10f
8:                jal          ra, 0b
9:                jal          s9, 8b
10:               jal          a7, 9b
11:               jal          a6, 13f
12:               jal          ra, 14f
13:               jal          t2, 7b
14:               jal          ra, 15f
15:               slli         t5, t1, 5
sub_3_7:          jal          s10, 23f
0:                jal          t0, 11f
1:                jal          ra, 28f
2:                jal          ra, 17f
3:                jal          ra, 27f
4:                jal          ra, 29f
5:                jal          gp, 3b
6:                jal          s0, 25f
7:                jal          a4, 15f
8:                jal          s8, 9f
9:                jal          ra, 18f
10:               jal          ra, 21f
11:               jal          ra, 5b
12:               jal          ra, 0b
13:               jal          s1, 16f
14:               jal          s8, 20f
15:               jal          a1, 2b
16:               jal          ra, 12b
17:               jal          s2, 14b
18:               jal          ra, 13b
19:               jal          ra, 10b
20:               jal          a6, 19b
21:               jal          ra, 24f
22:               jal          ra, 4b
23:               jal          s2, 8b
24:               jal          ra, 1b
25:               jal          ra, 7b
26:               jal          ra, 22b
27:               jal          ra, 6b
28:               jal          a2, 26b
29:               nop
sub_3_48:         jal          s10, 23f
0:                jal          ra, 19f
1:                jal          ra, 24f
2:                jal          ra, 27f
3:                jal          ra, 7f
4:                jal          ra, 11f
5:                jal          ra, 0b
6:                jal          s6, 2b
7:                jal          ra, 8f
8:                jal          ra, 20f
9:                jal          gp, 5b
10:               jal          t0, 16f
11:               jal          ra, 26f
12:               jal          gp, 10b
13:               jal          a4, 1b
14:               jal          s5, 22f
15:               jal          ra, 25f
16:               jal          t0, 4b
17:               jal          ra, 29f
18:               jal          s0, 3b
19:               jal          ra, 14b
20:               jal          ra, 15b
21:               jal          ra, 9b
22:               jal          ra, 28f
23:               jal          a2, 6b
24:               jal          ra, 21b
25:               jal          a7, 13b
26:               jal          ra, 18b
27:               jal          ra, 12b
28:               jal          ra, 17b
29:               and          a2, s7, zero
sub_3_32:         jal          s10, 7f
0:                jal          ra, 3f
1:                jal          sp, 2f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          ra, 0b
5:                jal          a7, 1b
6:                jal          tp, 4b
7:                jal          a7, 6b
8:                jal          tp, 10f
9:                jal          gp, 8b
10:               jal          ra, 5b
11:               srai         s4, t3, 4
sub_3_35:         jal          s10, 15f
0:                jal          ra, 16f
1:                jal          a1, 14f
2:                jal          ra, 3f
3:                jal          ra, 7f
4:                jal          tp, 12f
5:                jal          t0, 11f
6:                jal          ra, 2b
7:                jal          a6, 5b
8:                jal          ra, 9f
9:                jal          ra, 0b
10:               jal          gp, 6b
11:               jal          ra, 13f
12:               jal          ra, 8b
13:               jal          gp, 1b
14:               jal          ra, 4b
15:               jal          s3, 10b
16:               add          t0, t3, a4
sub_3_29:         jal          s10, 14f
0:                jal          ra, 5f
1:                jal          ra, 6f
2:                jal          ra, 7f
3:                jal          tp, 9f
4:                jal          ra, 13f
5:                jal          ra, 16f
6:                jal          ra, 18f
7:                jal          ra, 15f
8:                jal          ra, 2b
9:                jal          ra, 4b
10:               jal          tp, 11f
11:               jal          sp, 12f
12:               jal          ra, 8b
13:               jal          ra, 1b
14:               jal          ra, 10b
15:               jal          ra, 17f
16:               jal          a4, 19f
17:               jal          ra, 3b
18:               jal          s11, 0b
19:               slli         s7, ra, 17
sub_3_49:         jal          s10, 14f
0:                jal          ra, 3f
1:                jal          ra, 13f
2:                jal          ra, 17f
3:                jal          s5, 19f
4:                jal          tp, 10f
5:                jal          ra, 16f
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          sp, 0b
9:                jal          ra, 20f
10:               jal          s1, 8b
11:               jal          ra, 5b
12:               jal          s2, 15f
13:               jal          t0, 6b
14:               jal          ra, 4b
15:               jal          t4, 9b
16:               jal          ra, 18f
17:               jal          ra, 11b
18:               jal          s11, 7b
19:               jal          a2, 2b
20:               add          t3, s8, t3
sub_3_14:         jal          s10, 8f
0:                jal          sp, 7f
1:                jal          gp, 4f
2:                jal          ra, 1b
3:                jal          s7, 9f
4:                jal          t0, 5f
5:                jal          ra, 10f
6:                jal          gp, 3b
7:                jal          t6, 6b
8:                jal          tp, 0b
9:                jal          ra, 2b
10:               auipc        a1, 544346
sub_3_52:         jal          s10, 0f
0:                jal          tp, 24f
1:                jal          ra, 25f
2:                jal          t3, 1b
3:                jal          a6, 17f
4:                jal          ra, 6f
5:                jal          ra, 10f
6:                jal          t0, 18f
7:                jal          ra, 21f
8:                jal          ra, 26f
9:                jal          ra, 16f
10:               jal          s5, 8b
11:               jal          ra, 2b
12:               jal          ra, 22f
13:               jal          t3, 7b
14:               jal          ra, 12b
15:               jal          ra, 13b
16:               jal          t6, 5b
17:               jal          ra, 15b
18:               jal          s7, 23f
19:               jal          ra, 4b
20:               jal          a6, 9b
21:               jal          ra, 19b
22:               jal          ra, 11b
23:               jal          s7, 14b
24:               jal          s8, 3b
25:               jal          s5, 20b
26:               srli         s11, s5, 17
sub_3_12:         jal          s10, 12f
0:                jal          tp, 11f
1:                jal          ra, 15f
2:                jal          ra, 7f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          sp, 19f
6:                jal          ra, 14f
7:                jal          ra, 21f
8:                jal          ra, 2b
9:                jal          t3, 10f
10:               jal          ra, 16f
11:               jal          ra, 6b
12:               jal          a2, 1b
13:               jal          ra, 5b
14:               jal          ra, 13b
15:               jal          tp, 4b
16:               jal          ra, 20f
17:               jal          ra, 0b
18:               jal          t0, 9b
19:               jal          s4, 18b
20:               jal          ra, 8b
21:               auipc        s7, 482648
sub_3_5:          jal          s10, 9f
0:                jal          s8, 21f
1:                jal          ra, 16f
2:                jal          ra, 13f
3:                jal          ra, 10f
4:                jal          ra, 1b
5:                jal          ra, 22f
6:                jal          ra, 19f
7:                jal          ra, 26f
8:                jal          ra, 14f
9:                jal          ra, 24f
10:               jal          t4, 15f
11:               jal          ra, 4b
12:               jal          ra, 8b
13:               jal          ra, 12b
14:               jal          ra, 17f
15:               jal          ra, 7b
16:               jal          ra, 2b
17:               jal          ra, 5b
18:               jal          tp, 0b
19:               jal          ra, 3b
20:               jal          ra, 25f
21:               jal          ra, 11b
22:               jal          ra, 23f
23:               jal          gp, 6b
24:               jal          ra, 20b
25:               jal          ra, 18b
26:               and          s5, s3, t5
sub_3_42:         jal          s10, 12f
0:                jal          ra, 3f
1:                jal          ra, 11f
2:                jal          t0, 7f
3:                jal          s9, 5f
4:                jal          t0, 10f
5:                jal          ra, 2b
6:                jal          ra, 0b
7:                jal          ra, 4b
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               jal          ra, 1b
11:               jal          ra, 13f
12:               jal          ra, 8b
13:               slt          t4, s1, a2
sub_3_20:         jal          s10, 5f
0:                jal          gp, 25f
1:                jal          ra, 19f
2:                jal          t2, 7f
3:                jal          ra, 10f
4:                jal          ra, 12f
5:                jal          ra, 22f
6:                jal          t0, 14f
7:                jal          s11, 23f
8:                jal          ra, 13f
9:                jal          a6, 17f
10:               jal          tp, 16f
11:               jal          ra, 6b
12:               jal          gp, 24f
13:               jal          ra, 15f
14:               jal          ra, 27f
15:               jal          ra, 11b
16:               jal          ra, 9b
17:               jal          ra, 18f
18:               jal          ra, 26f
19:               jal          t2, 2b
20:               jal          a6, 8b
21:               jal          ra, 0b
22:               jal          ra, 3b
23:               jal          ra, 4b
24:               jal          ra, 20b
25:               jal          ra, 1b
26:               jal          sp, 21b
27:               sltiu        t5, ra, -473
sub_3_28:         jal          s10, 6f
0:                jal          ra, 3f
1:                jal          sp, 15f
2:                jal          s9, 11f
3:                jal          ra, 1b
4:                jal          ra, 13f
5:                jal          t0, 8f
6:                jal          ra, 2b
7:                jal          ra, 17f
8:                jal          t2, 0b
9:                jal          ra, 10f
10:               jal          ra, 14f
11:               jal          ra, 16f
12:               jal          ra, 9b
13:               jal          ra, 7b
14:               jal          ra, 5b
15:               jal          t2, 4b
16:               jal          ra, 12b
17:               sltu         s0, t5, zero
sub_3_51:         jal          s10, 9f
0:                jal          ra, 22f
1:                jal          ra, 5f
2:                jal          s5, 15f
3:                jal          ra, 24f
4:                jal          t0, 13f
5:                jal          ra, 7f
6:                jal          s9, 4b
7:                jal          s2, 21f
8:                jal          ra, 19f
9:                jal          ra, 14f
10:               jal          ra, 0b
11:               jal          ra, 6b
12:               jal          ra, 16f
13:               jal          s11, 23f
14:               jal          s8, 18f
15:               jal          ra, 20f
16:               jal          s7, 11b
17:               jal          s3, 8b
18:               jal          ra, 1b
19:               jal          tp, 10b
20:               jal          ra, 17b
21:               jal          tp, 12b
22:               jal          ra, 3b
23:               jal          ra, 2b
24:               sub          s5, a4, s7
sub_3_45:         jal          s10, 3f
0:                jal          ra, 1f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          s10, 11f
4:                jal          sp, 6f
5:                jal          ra, 10f
6:                jal          ra, 0b
7:                jal          t0, 8f
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          ra, 2b
12:               sub          ra, s10, a6
sub_3_27:         jal          s10, 4f
0:                jal          ra, 5f
1:                jal          ra, 10f
2:                jal          ra, 1b
3:                jal          ra, 6f
4:                jal          ra, 8f
5:                jal          t2, 2b
6:                jal          t5, 14f
7:                jal          a5, 11f
8:                jal          t0, 7b
9:                jal          ra, 12f
10:               jal          ra, 3b
11:               jal          gp, 0b
12:               jal          ra, 16f
13:               jal          ra, 9b
14:               jal          ra, 15f
15:               jal          ra, 13b
16:               sub          a1, s0, tp
                  slt          sp, sp, s5
                  sub          gp, s7, zero
                  xori         a5, a7, -1726
                  ori          s11, t1, 398
                  slt          s10, s0, s2
                  sub          t0, t0, tp
                  srl          s9, s9, t1
                  addi         zero, s2, 1788
                  lui          ra, 929967
                  sltiu        s10, t1, 95
                  beq          s7, t3, 23f
                  sra          ra, a6, a5
                  sltu         t0, t2, s7
                  auipc        gp, 881124
                  slti         s4, s3, 1991
                  xor          t0, s4, s11
                  nop
                  slti         s5, s1, -373
                  beq          s0, t4, 22f
                  and          ra, s3, ra
                  nop
                  srai         s11, ra, 31
22:               slti         sp, t4, 826
23:               sra          s1, s4, a2
                  blt          s4, a2, 32f
                  sub          s8, a7, s1
                  sra          s4, s6, t4
                  bltu         t3, s1, 44f
                  andi         s2, a2, -4
                  or           t4, a1, s11
                  add          a4, s6, s0
                  sra          a1, s2, a7
32:               bgeu         s6, gp, 41f
                  xor          s11, tp, a3
                  bgeu         s0, zero, 53f
                  sltiu        s10, a7, -415
                  srl          s5, gp, t0
                  add          t4, ra, t2
                  bge          a5, sp, 57f
                  blt          s7, a0, 45f
                  srli         a5, t5, 24
41:               beq          gp, s4, 47f
                  bgeu         s3, t6, 44f
                  sll          ra, a3, s1
44:               lui          t3, 406828
45:               bne          s0, a2, 46f
46:               slti         s3, a0, 1328
47:               srai         s7, a2, 26
                  xor          t3, a1, s0
                  addi         a1, t0, -1458
                  blt          s10, s0, 69f
                  xori         s5, s8, 1702
                  srl          zero, a7, gp
53:               sub          a1, t6, s9
                  sra          s3, t5, t4
                  sra          s11, a0, a3
                  addi         a5, t6, -276
57:               bgeu         gp, t0, 72f
                  blt          s4, s10, 63f
                  xor          t3, s10, s3
                  ori          s7, t5, -1248
                  and          t2, a7, s6
                  xori         gp, s0, -1704
63:               bltu         s1, t2, 83f
                  slli         s5, t1, 17
                  bltu         s2, a4, 72f
                  slt          s2, t5, t3
                  lui          a2, 923634
                  and          a2, s11, s2
69:               ori          t6, t2, -986
                  addi         ra, a0, 960
                  bgeu         a6, s4, 89f
72:               bgeu         a5, s8, 88f
                  beq          t3, sp, 82f
                  auipc        ra, 510224
                  sub          s0, t5, s2
                  blt          s5, a7, 77f
77:               bne          t4, t1, 81f
                  or           zero, s4, a1
                  nop
                  slt          gp, t2, s7
81:               bge          t1, t0, 87f
82:               addi         a2, s8, 855
83:               bge          s3, a0, 95f
                  bne          ra, gp, 98f
                  xor          a2, s2, s8
                  lui          s6, 198421
87:               bne          a0, a3, 97f
88:               slt          t3, s10, ra
89:               srai         a1, a4, 15
                  ori          t4, s9, 1274
                  bltu         t2, s5, 92f
92:               sra          a4, t0, sp
                  bltu         s4, a7, 108f
                  sub          s9, s4, t6
95:               or           t2, a2, sp
                  sub          a1, s1, tp
97:               sra          a2, a0, a5
98:               bne          t3, t4, 116f
                  beq          s8, zero, 107f
                  beq          s1, s2, 104f
                  bltu         a7, a0, 105f
                  slli         s8, s3, 12
                  blt          a1, s3, 118f
104:              slli         s11, a4, 26
105:              nop
                  addi         a4, t2, 151
107:              slt          gp, gp, s10
108:              lui          t4, 867116
                  sub          ra, s11, zero
                  bne          s6, t3, 115f
                  sltiu        a6, a6, 1716
                  xor          s4, a2, zero
                  sll          zero, a1, zero
                  bne          gp, a7, 116f
115:              beq          t0, a1, 121f
116:              xori         s8, a0, 576
                  slt          a2, a5, t6
118:              sltiu        s8, t6, -893
                  lui          a4, 112213
                  sltiu        s3, a5, 593
121:              sltiu        tp, t2, -1092
                  srl          t3, t0, a0
                  slt          s10, sp, s6
                  blt          s2, t4, 132f
                  and          t0, s3, a2
                  nop
                  andi         s9, s11, -1129
                  beq          ra, zero, 138f
                  andi         ra, t5, 59
                  slli         s4, s0, 23
                  slt          s2, a2, a6
132:              and          a6, s7, t2
                  ori          gp, a6, 225
                  andi         s10, tp, -1760
                  beq          a3, a0, 154f
                  srli         a6, s7, 15
                  slt          a2, a5, t2
138:              nop
                  bge          gp, ra, 140f
140:              srai         s3, s0, 17
                  add          a4, t5, a7
                  slli         s5, s0, 15
                  auipc        s5, 665896
                  sltu         s1, zero, s3
                  srli         zero, zero, 2
                  sub          s8, s7, t6
                  lui          zero, 622328
                  bltu         s9, s11, 164f
                  sltu         s4, s4, s4
                  andi         s11, a7, 303
                  blt          s1, s11, 155f
                  slli         t5, s1, 29
                  blt          s7, s2, 157f
154:              ori          s10, a7, 756
155:              xor          zero, s9, t0
                  sra          gp, ra, a5
157:              sll          t0, s7, s0
                  sltu         s9, t0, s9
                  bne          a6, a7, 166f
                  sll          sp, t4, t1
                  blt          a3, t0, 180f
                  auipc        a7, 780010
                  sll          s11, s4, a2
164:              srai         a5, s7, 18
                  nop
166:              and          s0, t5, s7
                  andi         t2, t5, 597
                  srai         t3, a1, 29
                  sltu         s2, zero, t0
                  addi         s4, t2, -967
                  blt          a7, s10, 191f
                  beq          s10, a7, 178f
                  sra          a6, t1, t4
                  bgeu         a5, t4, 175f
175:              addi         s5, s6, 997
                  bltu         s0, s7, 177f
177:              srai         t3, t4, 13
178:              sub          t4, t3, s2
                  add          a1, a5, a6
180:              add          t0, s3, s7
                  andi         s11, a2, -1503
                  bgeu         ra, a6, 197f
                  bgeu         s8, s6, 189f
                  srli         s5, t5, 30
                  srai         a7, t1, 6
                  srli         a2, a4, 20
                  slt          s0, s2, gp
                  xori         a4, a7, -413
189:              xori         t4, zero, 2034
                  add          a1, sp, a2
191:              ori          t2, s6, 106
                  bge          s8, a2, 206f
                  slt          a7, s9, a6
                  sll          s0, t1, t0
                  xor          gp, s9, a1
                  sub          t3, ra, tp
197:              lui          s7, 358332
                  xor          s5, gp, zero
                  bge          ra, sp, 208f
                  ori          a5, t0, 191
                  add          a6, a0, a5
                  xor          a2, a0, s8
                  srai         sp, t4, 24
                  slt          s1, tp, s7
                  addi         tp, a6, -1662
206:              bgeu         tp, t5, 224f
                  bgeu         s8, a2, 220f
208:              bne          a3, s11, 225f
                  slti         t3, t4, -441
                  auipc        sp, 71659
                  nop
                  sltiu        s6, a6, 116
                  sltu         s7, a3, t4
                  slli         s5, a6, 30
                  blt          t1, t5, 234f
                  slli         s6, a1, 16
                  addi         ra, s0, 1766
                  andi         a5, s10, -97
                  bgeu         t3, s2, 228f
220:              srai         sp, t6, 23
                  sltiu        s1, t5, 1782
                  sll          s4, s5, s3
                  beq          s10, t5, 231f
224:              andi         ra, tp, -1543
225:              slli         a2, t6, 19
                  xori         t3, tp, -1883
                  bne          a1, t5, 239f
228:              add          t6, a7, tp
                  or           ra, a0, t4
                  bge          s3, t0, 248f
231:              bne          t1, a4, 235f
                  beq          t0, zero, 236f
                  add          t2, s10, t5
234:              sub          s5, zero, s8
235:              bne          a7, a5, 243f
236:              bltu         s4, t6, 248f
                  bgeu         t0, a7, 255f
                  sub          t3, t6, gp
239:              addi         s10, tp, -1764
                  bne          s7, t3, 245f
                  slli         gp, zero, 18
                  and          s9, a7, tp
243:              srl          t2, t4, sp
                  bltu         a5, a2, 245f
245:              add          t6, a0, zero
                  ori          sp, s6, 361
                  ori          s6, a7, 996
248:              sub          gp, t5, sp
                  sltiu        s4, tp, 1001
                  sub          gp, a5, t4
                  add          s1, t5, s3
                  nop
                  sub          a6, t1, a0
                  add          t5, tp, a0
255:              srli         sp, sp, 30
                  slti         t5, a7, -1606
                  sub          t4, a1, s8
                  bgeu         t3, s4, 277f
                  andi         s5, s7, 527
                  auipc        s6, 330054
                  srai         t6, s0, 26
                  lui          t2, 976757
                  slli         t5, s2, 1
                  bge          zero, t1, 284f
                  srl          s3, s4, t2
                  srl          a6, s3, a0
                  bge          a7, s8, 274f
                  lui          zero, 414694
                  srl          s6, t6, s11
                  slt          t2, s9, s7
                  srl          t2, t0, t1
                  slt          s0, ra, t6
                  sra          s6, s3, a0
274:              bne          zero, a4, 275f
275:              sll          a7, gp, s2
                  sra          s5, s5, a0
277:              xori         a5, t5, -714
                  slti         t6, a3, 329
                  bltu         s6, a2, 288f
                  srl          a4, ra, t3
                  blt          s11, t0, 283f
                  andi         s6, t6, -1355
283:              nop
284:              srai         a7, t6, 14
                  slt          s8, t6, ra
                  sra          a2, t2, a4
                  addi         s4, a2, -48
288:              slli         a6, s1, 20
                  sub          s11, s9, zero
                  add          t6, tp, t4
                  sra          a4, a7, a6
                  bge          s4, s8, 298f
                  bne          tp, s0, 309f
                  srai         s2, ra, 17
                  sltiu        s11, a2, 240
                  addi         t6, s7, -298
                  slli         a4, s6, 8
298:              sll          a4, s9, s3
                  xor          s10, a3, s4
                  bltu         a5, s7, 318f
                  sra          s7, t3, a6
                  bgeu         a6, sp, 303f
303:              sub          a6, s0, a4
                  srl          s7, ra, a6
                  xor          a6, s5, s6
                  sub          a2, s2, s2
                  slli         t3, t1, 13
                  slti         t6, a2, 1040
309:              bltu         s10, a6, 318f
                  and          s3, s1, s7
                  xor          t3, sp, a7
                  sub          t3, a3, a2
                  xori         a1, t2, -906
                  xori         s11, a2, 1089
                  xor          t4, t3, a7
                  bltu         a6, t3, 331f
                  srai         s2, s1, 22
318:              bltu         a1, s5, 331f
                  xor          t6, a5, a3
                  sltu         s8, a6, s8
                  sll          s5, s0, s1
                  sltiu        a4, a3, -1813
                  or           s2, s10, s0
                  bge          sp, tp, 339f
                  slli         sp, s11, 14
                  bgeu         s2, a3, 334f
                  slt          tp, ra, a5
                  xori         t3, tp, 1432
                  sltiu        a1, t3, 583
                  blt          ra, gp, 344f
331:              srl          t6, t0, tp
                  and          a4, t1, a5
                  sltu         a2, t3, zero
334:              sra          s6, a2, s10
                  srai         a6, s0, 4
                  srl          zero, s7, s6
                  addi         a5, t3, -100
                  srli         s2, s3, 16
339:              sltu         t6, s5, a5
                  auipc        s1, 603755
                  srai         s1, s0, 15
                  lui          a6, 916248
                  sll          s8, s1, a7
344:              blt          t4, t2, 361f
                  lui          a4, 655627
                  lui          tp, 519417
                  bne          t3, s2, 353f
                  sll          t4, s9, a5
                  srli         s5, t5, 15
                  xor          s11, a2, a6
                  xori         a6, s11, 762
                  bne          t2, s5, 358f
353:              nop
                  addi         a4, s7, -555
                  srl          t6, t0, t0
                  bltu         s7, a1, 375f
                  bltu         ra, a3, 361f
358:              slli         tp, t6, 4
                  slli         t0, s4, 13
                  slli         s6, a4, 27
361:              addi         s5, t6, -1422
                  add          t2, a3, a0
                  slli         gp, a5, 22
                  sltiu        sp, a4, 354
                  addi         t5, s8, 1593
                  bge          s7, a3, 385f
                  sll          sp, s5, a6
                  sll          t0, t0, a0
                  auipc        t3, 776602
                  srli         s10, s5, 0
                  bltu         s5, s11, 381f
                  srl          s5, s4, a1
                  slli         zero, t1, 16
                  sub          a2, sp, tp
375:              xori         t5, s2, 399
                  add          s11, t4, s1
                  nop
                  slli         s5, t2, 4
                  add          t0, a6, a0
                  xor          s7, t1, s8
381:              slt          s0, t0, t0
                  sra          t5, s1, a5
                  srai         gp, a7, 18
                  blt          t0, tp, 398f
385:              add          t4, t6, sp
                  lui          ra, 418520
                  xor          s5, t5, tp
                  bne          a0, s1, 403f
                  xor          t6, a7, s6
                  slli         s3, s10, 9
                  or           s10, t2, a1
                  srai         s8, t5, 9
                  lui          t3, 626233
                  add          a5, a5, s3
                  sltu         t6, a0, sp
                  srai         a4, a2, 11
                  bne          a4, a1, 404f
398:              slli         sp, s5, 30
                  bltu         sp, t3, 401f
                  auipc        ra, 278523
401:              andi         s7, t3, -836
                  sltu         a2, s8, t0
403:              ori          s6, s6, 594
404:              blt          a4, s4, 413f
                  beq          a0, a0, 424f
                  nop
                  sll          zero, s1, a2
                  bltu         a2, a5, 428f
                  srai         s0, s7, 10
                  sra          s9, a4, t5
                  sltiu        a6, a4, -1671
                  or           a7, t1, t3
413:              sll          a1, t1, a0
                  bne          a3, t4, 433f
                  slti         a7, s6, -207
                  addi         s7, s10, -1257
                  slli         s3, t0, 20
                  blt          s3, a1, 422f
                  addi         a1, a6, 153
                  auipc        t3, 941369
                  and          s8, t2, s9
422:              and          a6, s3, s0
                  sll          zero, zero, a2
424:              sltiu        s7, zero, 1159
                  and          s6, a6, a0
                  or           t0, gp, a3
                  xor          s4, s9, s5
428:              auipc        s7, 254905
                  bne          t5, t5, 434f
                  sltu         s8, a4, t5
                  slt          s2, tp, tp
                  sub          s2, a6, s4
433:              beq          a0, t6, 446f
434:              slt          t0, t4, s4
                  addi         s9, tp, -1041
                  andi         s11, s8, -1011
                  andi         s3, a6, 998
                  andi         a6, a3, 522
                  slti         ra, a4, -1887
                  blt          a7, t2, 449f
                  sll          t0, s7, zero
                  and          ra, a5, gp
                  addi         t4, t3, 888
                  srli         a6, a0, 26
                  bgeu         s8, ra, 451f
446:              nop
                  bne          s0, a7, 451f
                  sra          a2, t0, a5
449:              xori         a5, t1, -1976
                  srl          t2, s2, s4
451:              and          t4, s3, s2
                  sltu         s9, s10, s4
                  ori          s11, s2, 349
                  bltu         s9, t0, 470f
                  or           a2, t0, s10
                  ori          a1, a0, -479
                  bne          zero, zero, 474f
                  blt          t5, gp, 466f
                  bgeu         a1, s5, 460f
460:              srl          sp, t1, s11
                  bne          s11, s3, 467f
                  xori         zero, a1, 1735
                  bltu         a5, s4, 481f
                  sltu         s6, s1, a0
                  sll          s3, s7, s8
466:              srli         s4, a4, 12
467:              sltu         a5, a2, a6
                  sll          t4, a2, a4
                  bltu         t4, a2, 470f
470:              lui          tp, 768488
                  or           sp, t1, s3
                  ori          t6, s1, -879
                  and          a5, t6, s8
474:              srai         s8, s0, 18
                  srai         a5, a1, 8
                  ori          t0, t5, 92
                  add          s8, s11, s6
                  slti         s2, s2, -1800
                  slti         t6, a7, 783
                  and          a1, a4, s3
481:              sub          a5, s2, a6
                  sltu         s1, s6, s6
                  slt          s3, t0, zero
                  xori         s1, tp, 1055
                  lui          zero, 242458
                  auipc        a1, 202664
                  addi         s5, tp, 1853
                  lui          zero, 485769
                  slti         s5, t6, -61
                  or           s7, s5, a4
                  andi         s0, s11, -1192
                  nop
                  lui          s0, 57716
                  slti         a4, s7, 13
                  slti         s1, a4, 1730
                  srli         t0, s7, 1
                  beq          ra, t3, 505f
                  auipc        s7, 528839
                  sll          s5, a7, s8
                  bltu         s7, gp, 510f
                  ori          s11, a6, 294
                  sub          s4, s10, a1
                  ori          t4, a4, -962
                  sll          a4, s10, s3
505:              bgeu         gp, t2, 524f
                  bltu         t0, s0, 507f
507:              or           sp, t5, a3
                  nop
                  sub          s6, a3, s9
510:              srli         gp, a6, 24
                  bltu         sp, zero, 529f
                  add          s2, t2, s7
                  sra          ra, zero, s7
                  srl          t5, a1, a5
                  sra          s0, t6, t3
                  srai         t0, s0, 0
                  or           s2, s1, s10
                  xori         s6, s6, -1588
                  slt          t2, a3, ra
sub_3_21:         jal          s10, 11f
0:                jal          ra, 13f
1:                jal          ra, 19f
2:                jal          ra, 7f
3:                jal          ra, 6f
4:                jal          ra, 20f
5:                jal          t3, 25f
6:                jal          s2, 21f
7:                jal          t0, 0b
8:                jal          ra, 22f
9:                jal          ra, 3b
10:               jal          ra, 26f
11:               jal          ra, 12f
12:               jal          a6, 8b
13:               jal          s5, 9b
14:               jal          a1, 23f
15:               jal          ra, 24f
16:               jal          s6, 17f
17:               jal          a2, 28f
18:               jal          ra, 4b
19:               jal          ra, 27f
20:               jal          ra, 1b
21:               jal          ra, 29f
22:               jal          ra, 16b
23:               jal          t0, 10b
24:               jal          a2, 14b
25:               jal          gp, 2b
26:               jal          ra, 5b
27:               jal          a1, 15b
28:               jal          ra, 18b
29:               sltiu        gp, s9, -1131
                  slti         s3, t6, -312
                  bgeu         t5, zero, 525f
                  blt          t1, s0, 528f
                  and          a5, t5, t6
524:              bge          t3, s0, 539f
525:              blt          sp, t2, 537f
                  sltiu        gp, s0, -827
                  nop
528:              sltu         t3, s8, a1
529:              sra          t0, t0, tp
                  beq          s7, s10, 534f
                  bgeu         s8, gp, 539f
                  beq          a4, s5, 552f
                  bge          t5, t3, 538f
534:              auipc        t6, 45356
                  addi         t0, ra, 1397
                  andi         s2, s4, 169
537:              andi         ra, s10, -2045
538:              sltu         a6, a4, a2
539:              bltu         t6, s8, 558f
                  sll          s8, s7, t2
                  beq          a5, s3, 547f
                  xor          s10, t3, t0
                  blt          a0, s9, 561f
                  addi         s2, a6, -1785
                  sltiu        s9, t6, 876
                  or           t4, s4, s1
547:              sll          tp, a2, t2
                  auipc        a6, 691123
                  nop
                  andi         a5, a3, -1575
                  beq          a7, a6, 567f
552:              addi         ra, a6, -1528
                  srai         tp, t2, 12
                  xori         a4, t3, 1484
                  or           sp, s11, s8
                  beq          t2, sp, 569f
                  sltu         a4, s0, s3
558:              lui          sp, 554062
                  slt          s8, gp, s0
                  beq          t3, a3, 561f
561:              nop
                  xor          s10, a6, a0
                  lui          t4, 622631
                  srai         s7, ra, 10
                  slli         s2, a3, 21
                  bgeu         s8, s6, 576f
567:              srai         s6, t6, 4
                  slli         a1, tp, 2
569:              srl          a7, s9, t0
                  add          a7, ra, zero
                  blt          t0, s6, 590f
                  nop
                  beq          sp, a7, 585f
                  slli         s5, s11, 6
                  add          s7, s9, s1
576:              sltu         t5, a2, t2
                  andi         tp, tp, -1234
                  xor          a7, s9, t2
                  bne          s8, a3, 594f
                  beq          s0, t2, 581f
581:              bgeu         s0, s3, 600f
                  srli         s7, t5, 16
                  xor          a2, t0, t2
sub_3_9:          jal          s10, 7f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          sp, 9f
3:                jal          t0, 12f
4:                jal          ra, 6f
5:                jal          ra, 11f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          ra, 5b
11:               jal          ra, 1b
12:               xor          a4, t1, s0
                  bne          s1, t3, 585f
585:              andi         s5, sp, 1995
                  ori          s10, t5, 1710
                  lui          s3, 859463
                  andi         a4, zero, -1778
                  blt          t3, s2, 595f
590:              slti         s11, a7, -647
                  ori          t6, s2, -1720
                  bgeu         t2, s11, 606f
                  sltiu        t4, s11, -904
594:              add          s4, a2, s0
595:              ori          a7, s9, -565
                  andi         s11, a2, -897
                  sll          s11, a0, s4
                  bltu         tp, a3, 600f
                  srl          ra, t3, a3
600:              slti         sp, a1, 1498
                  addi         s8, t1, -962
                  srli         s7, s3, 2
                  and          t0, s11, a5
                  sra          s2, t6, s3
                  ori          s6, t2, 1587
606:              bgeu         a0, s2, 613f
                  and          zero, gp, t4
                  bne          a7, s10, 617f
                  sll          s8, a0, a2
                  and          a5, a0, s3
                  sltu         a7, s11, a0
                  or           s5, a3, s9
613:              and          a2, s6, t5
                  blt          a3, t6, 629f
                  auipc        t6, 817642
                  bgeu         gp, s2, 622f
617:              beq          gp, sp, 621f
                  srl          t4, s0, s6
                  sll          s7, s4, s9
                  bgeu         sp, t1, 628f
621:              ori          t6, a2, -38
622:              srl          s3, sp, a2
                  sltiu        s4, t5, -1501
                  sll          s3, s10, s9
                  or           s0, s11, s5
                  slti         t0, s4, 1474
                  sltiu        s6, a1, -51
628:              bge          s5, a2, 645f
sub_3_16:         jal          s10, 11f
0:                jal          ra, 13f
1:                jal          ra, 10f
2:                jal          ra, 15f
3:                jal          ra, 18f
4:                jal          ra, 14f
5:                jal          s2, 3b
6:                jal          t0, 8f
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          ra, 6b
10:               jal          ra, 12f
11:               jal          s4, 9b
12:               jal          ra, 4b
13:               jal          ra, 1b
14:               jal          ra, 17f
15:               jal          ra, 5b
16:               jal          ra, 7b
17:               jal          t0, 16b
18:               nop
629:              and          s10, sp, t2
                  sra          zero, s6, s5
                  bltu         s5, zero, 635f
                  sub          a1, t2, s9
                  sltiu        t4, s10, 1792
                  srli         s7, zero, 26
635:              xor          t3, s11, t4
                  lui          a7, 601180
                  bne          sp, s10, 646f
                  bgeu         s9, a7, 656f
                  xor          t5, s5, t5
                  xor          s7, s1, s3
                  blt          s8, t2, 642f
642:              sltiu        a2, s4, -1996
sub_3_39:         jal          s10, 16f
0:                jal          t0, 2f
1:                jal          tp, 4f
2:                jal          ra, 10f
3:                jal          ra, 21f
4:                jal          ra, 9f
5:                jal          t0, 8f
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          ra, 17f
9:                jal          t0, 6b
10:               jal          ra, 5b
11:               jal          s6, 19f
12:               jal          ra, 20f
13:               jal          ra, 15f
14:               jal          t4, 0b
15:               jal          ra, 14b
16:               jal          ra, 11b
17:               jal          ra, 7b
18:               jal          a5, 3b
19:               jal          t2, 13b
20:               jal          s9, 18b
21:               andi         s1, a6, 2025
                  lui          t4, 793404
                  and          gp, t2, s3
645:              sll          a1, s11, s6
646:              beq          a4, gp, 655f
                  xori         s10, ra, -890
                  bgeu         t0, t4, 664f
                  addi         s11, tp, -1941
                  bne          a1, s3, 659f
                  bltu         t1, s7, 669f
                  andi         s8, a4, -1978
                  sra          zero, a0, s11
                  xor          ra, s8, s11
655:              and          s1, s8, s7
656:              bgeu         t4, s4, 673f
                  nop
                  add          s5, s11, t2
659:              auipc        s8, 355593
                  srl          t5, t0, s2
                  xori         s3, sp, 416
                  addi         s1, t0, -292
                  srli         a2, s4, 29
664:              nop
                  nop
                  and          a5, s2, ra
                  slli         t0, s3, 11
                  srl          zero, s7, a0
669:              ori          s7, t0, -1321
                  nop
                  sltiu        t5, gp, 81
                  blt          s9, s1, 673f
673:              srai         t2, t5, 17
                  bge          a7, zero, 694f
                  xor          t5, t2, s6
                  sltu         sp, s11, s1
                  xori         t3, a3, -598
                  sra          s0, a7, a5
                  andi         ra, s10, -790
                  andi         ra, sp, -524
                  andi         s7, a4, 2021
                  andi         s9, s5, -1933
                  bne          t3, t6, 702f
                  srli         a6, a7, 24
                  ori          t5, s9, -34
                  sra          t3, s7, s1
                  bltu         s3, s2, 706f
                  beq          t4, s5, 703f
                  slti         s3, gp, 1591
                  slli         a6, a7, 25
                  addi         tp, s7, -1393
                  add          a4, tp, t5
                  sltu         zero, a1, s6
694:              srl          a7, s7, a6
                  xori         a7, a4, -1799
                  sltu         s6, a1, a1
                  add          gp, a0, a6
                  srli         t3, s7, 26
                  nop
                  srl          s3, s11, s6
                  bge          t1, s2, 715f
702:              sltu         s6, a4, a7
703:              sll          a7, tp, t1
                  bge          a7, t4, 716f
                  slli         s3, s9, 31
706:              or           a4, t2, t2
                  srli         a7, sp, 1
                  bne          a3, a5, 713f
                  and          t4, s9, a4
                  sub          a4, s9, sp
                  bltu         s7, tp, 717f
                  sub          a1, s10, gp
713:              bgeu         t4, sp, 721f
                  slli         t2, t2, 6
715:              bgeu         t5, a0, 725f
716:              auipc        a7, 894863
717:              bge          s10, t6, 736f
                  xori         ra, t4, -151
                  slti         t6, s0, 606
                  and          a7, t1, a1
721:              blt          a0, a1, 725f
                  auipc        s1, 374763
                  slti         ra, s4, -666
                  nop
725:              nop
                  slt          s4, t1, sp
                  slti         s0, s3, -1172
                  bne          a5, gp, 729f
729:              and          tp, zero, sp
                  bltu         s1, sp, 743f
                  srai         zero, t5, 11
                  ori          s7, a7, 887
                  auipc        zero, 207567
                  or           t4, s2, t6
                  nop
736:              srli         a4, s11, 15
                  bltu         s9, t4, 741f
                  add          s11, s5, t2
                  lui          s8, 576027
                  add          s1, a7, a0
741:              lui          s3, 147459
                  srli         a2, s7, 29
743:              andi         s7, t3, -797
                  andi         t4, s5, 977
                  addi         t6, s6, 1752
                  xori         s5, tp, -1854
                  sltiu        s10, sp, -332
                  bge          a0, t3, 750f
                  or           gp, t2, t4
750:              and          s9, t5, a0
                  slti         tp, t1, 1346
                  bgeu         a0, a2, 758f
                  slli         t6, s1, 27
                  xor          t3, s6, gp
                  srai         sp, s1, 15
                  bne          s5, a4, 771f
                  or           zero, a7, zero
758:              srai         s7, s10, 2
                  sra          t6, s9, sp
                  sra          t3, a5, t0
                  bgeu         t2, zero, 769f
                  bge          s6, s9, 769f
                  lui          s6, 332527
                  srai         s7, s10, 3
                  or           zero, s6, s0
                  sll          s7, s6, a5
                  srai         s2, a1, 17
                  blt          zero, s8, 774f
769:              sltu         s0, ra, s6
                  slt          s7, ra, s2
771:              bge          sp, s8, 775f
                  srli         t2, s7, 30
                  nop
774:              srl          a2, t1, s7
775:              auipc        t6, 347989
                  bne          t2, s11, 794f
                  blt          s9, a6, 797f
                  bne          a1, s6, 794f
                  bge          t5, t4, 792f
                  sll          s11, ra, gp
                  nop
                  bgeu         s10, s10, 783f
783:              sra          gp, s5, t5
                  beq          s6, sp, 802f
                  srai         t3, s9, 11
                  beq          s11, s8, 793f
                  sra          zero, a1, s1
                  blt          s6, s3, 802f
                  addi         t5, s9, -1689
                  sll          s1, ra, s0
                  bgeu         ra, s2, 795f
792:              sltu         t4, a1, gp
793:              sll          zero, t5, a5
794:              and          gp, t2, t3
795:              srai         zero, s11, 23
                  andi         s2, sp, -514
797:              sra          t6, s3, s11
                  xor          gp, s0, ra
                  addi         a7, ra, 1865
                  sltu         sp, a6, a1
                  srl          a1, s8, s8
802:              xori         a7, a0, 57
                  nop
                  slt          s3, sp, zero
                  nop
                  sub          t5, s0, s5
                  bgeu         ra, tp, 817f
                  slt          a7, a4, t2
                  xori         zero, a2, -492
                  beq          s11, s6, 825f
                  add          s1, sp, zero
                  srl          t5, t4, a6
                  auipc        s11, 248077
                  srai         a6, t2, 21
                  xori         gp, s9, -2011
                  bgeu         s0, t1, 822f
817:              bgeu         t5, t0, 826f
                  bltu         zero, s9, 835f
                  sub          s8, a5, t6
                  slli         s1, a1, 6
                  addi         s1, a4, 1969
822:              or           s11, zero, tp
                  sub          a2, s10, ra
                  sltu         s7, a4, tp
825:              bgeu         ra, ra, 827f
826:              bgeu         ra, ra, 827f
827:              slt          t6, s3, s4
                  srai         s11, zero, 2
                  beq          s0, t4, 841f
                  sll          t6, a2, sp
                  bne          s7, a1, 850f
                  andi         zero, t0, -141
                  add          a7, a6, a3
                  srli         s3, a1, 15
835:              ori          a2, tp, -1738
                  bge          a7, a6, 844f
                  bgeu         t2, s4, 845f
                  bne          gp, a6, 844f
                  beq          tp, tp, 844f
                  lui          s3, 823451
841:              bne          a3, s11, 860f
                  sltu         s10, s8, s4
                  blt          s9, t2, 847f
844:              slli         a2, t4, 2
845:              lui          ra, 1040567
                  addi         t2, s7, -1020
847:              add          ra, a7, a4
                  sll          a4, s10, t1
                  sll          a1, t3, t3
850:              add          t3, a3, a5
                  slti         t5, s3, -1706
                  and          s1, s2, a3
                  bgeu         t5, a5, 872f
                  sra          a5, sp, t4
                  sra          a4, t2, s11
                  beq          s6, s3, 871f
                  srli         s6, sp, 27
                  andi         s6, t5, 1437
                  addi         s8, a3, 848
860:              sltiu        a1, s9, -1806
                  andi         t3, a1, 981
                  add          s5, gp, tp
                  sltiu        s6, s5, 619
                  sub          a4, t0, ra
                  lui          ra, 578760
                  beq          t3, s11, 870f
                  slli         a1, t6, 31
                  sltiu        gp, a5, -303
                  ori          a7, s3, 292
870:              bgeu         s9, s7, 871f
871:              sra          a1, t0, tp
872:              srli         s6, t6, 28
                  beq          a6, a4, 891f
                  sltu         zero, s2, s2
                  bltu         s6, a3, 884f
                  addi         a2, s2, 1328
sub_3_23:         jal          s10, 4f
0:                jal          ra, 12f
1:                jal          gp, 0b
2:                jal          s6, 14f
3:                jal          ra, 5f
4:                jal          ra, 15f
5:                jal          ra, 18f
6:                jal          s0, 2b
7:                jal          ra, 1b
8:                jal          ra, 17f
9:                jal          s9, 16f
10:               jal          ra, 11f
11:               jal          ra, 9b
12:               jal          ra, 10b
13:               jal          a7, 8b
14:               jal          ra, 7b
15:               jal          ra, 13b
16:               jal          ra, 3b
17:               jal          ra, 6b
18:               lui          s4, 65385
                  xor          s5, a7, t2
                  andi         t4, s4, -1221
                  lui          t4, 4891
                  nop
                  andi         s6, t6, 1832
                  sra          s10, sp, a0
                  sltu         ra, s4, t6
884:              srli         sp, a1, 21
                  sub          gp, s5, a1
                  ori          s9, a6, -1671
                  srl          a4, t5, t0
                  srli         s2, s0, 6
                  sltiu        ra, s2, -515
                  sub          a6, gp, t1
891:              beq          t0, s4, 897f
                  sub          t6, s8, a6
                  bgeu         a5, t1, 899f
                  bne          s7, a1, 911f
                  sll          t5, a2, s10
                  sra          s3, t4, gp
897:              srli         t4, a1, 8
                  bgeu         s3, t3, 902f
899:              auipc        tp, 599076
                  and          a1, a7, gp
                  and          s10, sp, a3
902:              add          zero, s10, s10
                  sub          s6, s7, t4
                  bgeu         t4, a2, 913f
                  sltiu        t4, t6, 1985
                  sub          s5, s3, a7
                  add          s4, a5, t0
                  auipc        s6, 15891
                  sub          s0, s4, t0
                  auipc        s8, 846084
911:              srli         s0, a2, 8
                  slti         a4, a0, -1209
913:              sll          s5, s2, s2
                  slti         a6, a1, 1103
                  xor          s9, tp, s0
                  srai         s9, t5, 17
                  lui          s6, 949153
                  bge          tp, t1, 926f
                  lui          zero, 603319
                  addi         t2, s0, -848
                  and          a4, s7, a5
                  lui          a7, 379073
                  sltiu        a7, t4, 1984
                  addi         s7, s0, -1876
                  or           s3, s10, a7
926:              auipc        sp, 850330
                  lui          a2, 887456
                  ori          s0, t0, -752
                  sltu         a2, t2, t2
                  bge          s2, s9, 949f
                  nop
                  sltu         a1, s1, s5
                  srai         tp, s10, 1
                  blt          s7, s10, 941f
                  sltiu        t5, zero, 1972
                  sltu         zero, s0, a2
                  add          s0, s2, a7
                  and          ra, a6, a0
                  sra          a2, t4, t2
                  sll          s8, s7, a2
941:              auipc        s4, 560563
                  bltu         t1, s11, 943f
943:              auipc        s3, 898556
                  blt          t4, t6, 946f
                  lui          s5, 48722
946:              slti         t3, a3, 242
                  and          t2, t4, t4
                  andi         s10, s6, -124
949:              bltu         a3, a6, 959f
                  addi         s2, a0, -1476
                  bltu         a4, a5, 955f
                  xor          a4, t1, gp
                  bgeu         a3, s1, 971f
                  srl          a2, t0, a2
955:              ori          t0, s9, -1800
                  ori          s5, a2, -229
                  sra          a5, a0, t6
                  xori         s3, a1, -1386
959:              srai         ra, a1, 28
                  srai         t4, s4, 0
                  xori         a2, s10, 1399
                  or           s11, tp, s11
                  andi         s10, t3, -1546
                  auipc        t5, 75067
                  beq          a2, t3, 980f
                  sra          s1, t4, gp
                  sltu         s11, s10, a1
                  sltiu        a6, t3, -773
                  slt          t2, a7, s8
                  lui          t5, 809228
971:              bne          t5, s0, 980f
                  addi         tp, a6, -2018
                  xori         t5, s10, -1022
                  slli         s5, s10, 30
                  and          s8, t6, a7
                  srl          a7, a3, t5
                  srli         a4, a3, 2
                  slli         t6, a6, 15
                  sra          s0, a4, t5
980:              slli         a1, s9, 24
                  slt          t2, t0, s0
                  ori          a1, t3, -999
                  sub          s7, a6, s6
                  srai         t3, tp, 10
                  sll          a2, s7, t5
                  auipc        tp, 161609
                  srai         a4, s3, 0
                  slti         s3, sp, 791
                  sub          sp, a7, t0
                  slli         t0, a6, 25
                  andi         sp, s1, -425
                  slli         a4, t0, 12
                  sltu         s4, sp, ra
                  slt          s9, s7, s7
                  slli         s8, s3, 3
                  xor          a2, s6, s4
                  xor          s6, s8, a0
                  auipc        t5, 407642
                  beq          gp, gp, 1007f
                  bne          t6, s0, 1012f
                  add          t5, t1, tp
                  slli         t0, gp, 12
                  and          a2, s2, s2
                  ori          s3, sp, 553
                  slt          a6, s9, t5
                  bge          a7, t4, 1007f
1007:             srl          s4, gp, s11
                  lui          sp, 570009
                  beq          t0, s0, 1022f
                  beq          a4, zero, 1016f
                  bgeu         s3, t0, 1030f
1012:             slti         ra, a0, 607
                  bne          s10, s7, 1031f
                  slti         a6, s6, 1781
                  srai         s10, a0, 20
1016:             blt          s6, ra, 1020f
                  bge          s6, a0, 1032f
                  srai         t3, a4, 3
                  beq          s0, s10, 1025f
1020:             srli         sp, gp, 6
                  slt          s0, a2, gp
1022:             srl          t5, tp, s9
                  slt          a2, gp, s9
                  sll          s2, ra, s10
1025:             add          s1, a2, a1
                  lui          t6, 30673
                  and          s2, t4, t2
                  and          t5, a5, t1
                  sra          s0, t1, t6
1030:             bltu         ra, s8, 1049f
1031:             nop
1032:             sll          s7, a5, a7
                  srl          a2, a1, s4
                  add          s6, s11, s11
                  srai         t5, a4, 7
                  nop
                  slli         zero, s3, 12
                  slti         s7, s1, 774
                  auipc        t6, 642086
                  bge          ra, t4, 1060f
                  beq          gp, t0, 1055f
                  xori         s0, tp, -174
                  or           a5, t6, s6
                  sra          s0, s11, sp
                  andi         s11, a3, -52
                  ori          gp, s11, 677
                  bne          s3, t2, 1052f
                  srai         ra, s5, 18
1049:             lui          t2, 799536
                  lui          s1, 386809
                  srl          s7, s1, s6
1052:             add          t0, a0, s9
                  srai         s6, gp, 17
                  sub          t5, gp, t2
1055:             srl          s9, t1, t5
                  andi         ra, s11, -1100
                  bgeu         s9, t3, 1058f
1058:             srli         s8, s6, 1
                  slti         a7, s4, -1421
1060:             srai         s4, sp, 8
                  sra          s5, s7, s9
                  or           a5, t1, t4
                  sub          tp, s2, sp
                  bgeu         s7, s4, 1080f
                  srli         t2, s3, 22
                  slt          s11, ra, t0
                  addi         s0, s7, -815
                  slti         zero, t0, 143
                  and          s9, s10, t6
                  bge          s6, s0, 1083f
                  bgeu         t0, a0, 1083f
                  xori         a1, s10, -1720
                  bge          t1, sp, 1079f
                  sub          t0, a4, zero
                  nop
                  sltu         s5, a3, t5
                  or           a6, s9, s10
                  bltu         s10, a2, 1092f
1079:             bltu         s8, zero, 1088f
1080:             nop
                  slli         s1, ra, 12
                  sra          s9, t5, s6
1083:             xori         s11, a0, 386
                  bge          s8, a6, 1086f
                  srai         gp, s10, 27
1086:             bltu         s9, t5, 1093f
                  sltu         s1, s11, a2
1088:             slti         s7, a0, -58
                  bltu         a0, t3, 1099f
                  or           s9, zero, s6
                  xor          s2, s9, zero
1092:             sub          t5, t5, ra
1093:             andi         s1, gp, 555
                  add          s1, a4, t6
                  bgeu         s4, s9, 1099f
                  sll          zero, t0, a7
                  sra          s11, a2, s11
                  slt          s10, gp, s4
1099:             lui          sp, 655060
                  srl          s9, s11, zero
                  slli         sp, s10, 8
                  srl          s6, s2, s7
                  xor          t4, a2, a6
                  lui          gp, 657633
                  slli         s7, t1, 30
                  srai         a5, s11, 8
                  sltiu        s9, s2, 1343
                  srli         s1, ra, 3
                  and          s5, a5, s5
                  slti         s1, s6, -872
                  add          s2, zero, ra
                  andi         s11, t0, 862
                  slt          t4, t5, s5
                  addi         a1, t2, 949
                  slti         s9, s7, -720
                  slti         s7, s10, -1800
                  sltu         zero, t2, s0
                  sll          s11, ra, a0
                  sll          a6, a4, s9
                  bltu         s6, s1, 1121f
1121:             bge          s8, a7, 1139f
                  slti         s10, a0, 1308
                  add          t5, s9, s7
                  and          s7, a7, zero
                  srai         s4, s0, 8
                  andi         s0, s4, -201
                  addi         tp, ra, -504
                  sll          t0, t1, t4
                  slli         a7, s7, 25
                  add          t5, s11, t1
                  nop
                  sltiu        a2, t1, -1001
                  bne          t6, t6, 1134f
1134:             slli         s9, a2, 30
                  add          a2, s1, t0
                  bne          s5, s2, 1142f
                  sra          a1, zero, s1
                  bltu         s7, s10, 1144f
1139:             xor          gp, t0, s8
                  sub          s0, t2, t6
                  blt          t2, tp, 1142f
1142:             slt          s5, sp, ra
                  addi         sp, a6, -1231
1144:             sltiu        t2, s11, -1726
                  and          zero, s4, a5
                  or           t4, t6, s3
                  sll          a4, ra, t4
                  bge          s4, s10, 1163f
                  auipc        s7, 1354
                  addi         s11, zero, -1359
                  bgeu         a7, s0, 1155f
                  bge          ra, gp, 1169f
                  srl          sp, a0, t3
                  andi         zero, a7, -189
1155:             nop
                  sub          gp, s0, a7
                  andi         t4, gp, -1186
                  bltu         s0, t4, 1163f
                  or           a1, t3, s10
                  slt          zero, t6, t1
                  addi         a4, s1, 820
                  xor          a1, s9, a6
1163:             and          t5, s3, s3
                  sra          t3, s9, zero
                  srli         tp, t4, 18
                  beq          s8, t1, 1185f
                  bgeu         s9, t4, 1175f
                  beq          t4, s3, 1177f
1169:             and          zero, t3, s11
                  beq          s8, a7, 1178f
                  srl          tp, s1, s9
                  srli         s7, a2, 29
                  bgeu         t1, zero, 1177f
                  sltu         t2, a0, s1
1175:             slt          s2, s6, s5
                  blt          t2, s4, 1196f
1177:             sltiu        zero, s6, 1231
1178:             bltu         t2, a2, 1193f
                  srai         tp, t2, 31
                  lui          a1, 243053
                  bge          sp, s10, 1197f
                  slli         sp, t4, 10
                  sra          sp, a5, sp
                  bge          s2, ra, 1203f
1185:             slti         zero, a6, 1897
                  xori         ra, s9, 604
                  lui          s4, 173908
                  xor          s2, s7, s9
                  nop
                  ori          zero, a7, -1723
                  sub          a5, t0, ra
                  sra          s3, s5, gp
1193:             srl          a2, s5, a5
                  slli         sp, a5, 6
                  add          a4, t6, zero
1196:             bne          s5, t2, 1214f
1197:             sra          s9, s3, a1
                  bne          s0, s6, 1217f
                  sll          ra, s2, s5
                  sltu         s2, s4, s9
                  slti         t0, zero, 126
                  blt          t3, s5, 1203f
1203:             bge          s7, s4, 1211f
                  slt          s1, s0, gp
                  bne          s2, s4, 1209f
                  sltu         a2, a2, sp
                  lui          s1, 239662
                  slli         a2, a3, 15
1209:             slt          gp, a1, s10
                  addi         s10, a3, -853
1211:             slli         s10, s0, 16
                  slti         ra, s6, -106
sub_3_25:         jal          s10, 5f
0:                jal          a5, 11f
1:                jal          ra, 9f
2:                jal          a4, 15f
3:                jal          sp, 6f
4:                jal          ra, 19f
5:                jal          tp, 0b
6:                jal          ra, 14f
7:                jal          s11, 12f
8:                jal          t0, 17f
9:                jal          ra, 18f
10:               jal          t3, 23f
11:               jal          ra, 2b
12:               jal          s6, 4b
13:               jal          ra, 1b
14:               jal          ra, 7b
15:               jal          a4, 13b
16:               jal          ra, 8b
17:               jal          a2, 10b
18:               jal          ra, 20f
19:               jal          ra, 22f
20:               jal          s3, 3b
21:               jal          ra, 16b
22:               jal          ra, 21b
23:               addi         s11, a6, -742
                  bne          a2, s7, 1218f
1214:             xor          a6, sp, a3
                  bgeu         gp, gp, 1232f
                  bge          s7, s1, 1222f
1217:             sub          t3, t1, s1
1218:             slli         a6, s6, 0
                  xor          t0, t5, t2
                  or           s10, s2, a7
                  beq          s4, a6, 1229f
1222:             sltiu        s0, a0, 1609
                  blt          s9, s5, 1235f
                  sltu         ra, s2, t1
                  xor          a7, s1, a5
                  ori          a5, t3, 1653
                  ori          s5, sp, 1904
                  bge          s3, s10, 1234f
1229:             sltiu        sp, s8, 1268
                  and          s0, s11, t5
                  bgeu         tp, s5, 1232f
1232:             srai         tp, s3, 31
                  sub          a4, s1, s1
1234:             beq          a3, t5, 1241f
1235:             bge          t4, t0, 1249f
                  sra          a6, s8, t2
                  xor          s11, s2, s2
                  srai         s2, s3, 7
                  blt          s8, a0, 1243f
                  beq          t2, t6, 1255f
1241:             slli         s4, s8, 29
                  add          t2, s8, s3
1243:             beq          t0, sp, 1252f
                  srli         gp, t3, 24
                  sltu         s9, a2, t6
                  lui          ra, 85031
                  sra          a4, t5, s3
                  slt          s8, t1, s0
1249:             blt          t1, ra, 1250f
1250:             bgeu         t6, ra, 1252f
                  blt          a3, t6, 1261f
1252:             andi         s8, s2, -1806
                  addi         a2, s3, 1155
                  or           t3, ra, s2
1255:             add          a6, t0, t6
                  or           t6, a6, s1
                  and          s5, zero, s8
                  or           gp, ra, s5
                  bge          a6, a1, 1277f
                  sub          s7, s7, t0
1261:             or           a5, t5, a6
                  beq          s2, a0, 1281f
                  bgeu         t2, s8, 1279f
                  lui          a4, 987247
                  srl          a6, a1, s9
                  beq          s11, ra, 1284f
                  srl          s1, a1, s3
                  blt          s3, t4, 1274f
                  srli         s11, t2, 1
                  ori          a5, a0, 354
                  xori         t2, sp, 2017
                  srli         s0, ra, 23
                  bne          s8, t5, 1277f
1274:             or           tp, a4, t6
                  or           s0, s2, s9
                  sra          tp, t2, s5
1277:             beq          s7, a7, 1296f
                  srl          tp, a0, t5
1279:             nop
                  blt          t0, s10, 1299f
1281:             addi         s7, s6, 28
                  sltiu        s3, t1, -795
                  bltu         s3, t5, 1292f
1284:             sub          s4, t4, s6
                  srai         t3, t2, 9
                  blt          sp, sp, 1299f
                  slt          a4, sp, a7
                  slli         s0, s1, 28
                  slt          s3, a5, s9
                  bne          t4, s7, 1310f
                  ori          s6, s1, -241
1292:             or           s5, t1, s4
                  srli         a6, s2, 31
                  addi         s10, t1, -1916
                  auipc        s4, 95697
1296:             slti         s11, s3, 282
                  beq          s4, a2, 1312f
                  sll          a5, tp, ra
1299:             srl          t5, a6, a4
                  lui          s10, 392615
                  ori          t0, t4, 1432
                  bge          zero, a6, 1306f
                  xor          ra, a4, s3
                  bltu         s4, a2, 1310f
                  sra          s8, s8, a7
1306:             blt          s2, gp, 1314f
                  sltiu        s10, s3, 1085
                  srl          t0, t6, t3
                  nop
1310:             ori          s1, a4, 1901
                  bge          s8, t2, 1320f
1312:             or           t4, t1, t2
                  ori          a2, ra, -1308
1314:             nop
                  blt          t5, a5, 1317f
                  sltu         t5, ra, gp
1317:             sltiu        a1, s5, -1363
                  bgeu         s4, t2, 1331f
                  beq          sp, s4, 1325f
1320:             bgeu         t3, tp, 1324f
                  slli         t2, s8, 0
                  xori         zero, a4, 1488
                  bge          t1, a4, 1340f
1324:             or           s7, a4, t2
1325:             sltu         t3, s9, s3
                  bge          s9, a2, 1327f
1327:             srl          a1, s1, a5
                  srli         s0, sp, 6
                  srli         t6, s11, 25
                  xor          t6, t6, s9
1331:             add          a7, sp, a6
                  xori         t5, s7, 317
                  srl          t3, t1, a7
                  slt          a1, a5, ra
                  sra          gp, t3, zero
                  slti         a2, a6, -1077
                  or           a2, t3, s2
                  bgeu         a5, t6, 1339f
1339:             srai         sp, a5, 25
1340:             ori          s9, tp, -203
                  xori         tp, t4, -1442
                  xor          s7, s6, t1
                  xor          a1, a7, s4
                  slli         a4, ra, 20
                  andi         s8, s5, -1600
sub_3_30:         jal          s10, 18f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          ra, 0b
3:                jal          s4, 19f
4:                jal          s1, 14f
5:                jal          tp, 6f
6:                jal          s7, 15f
7:                jal          ra, 5b
8:                jal          ra, 12f
9:                jal          ra, 3b
10:               jal          ra, 16f
11:               jal          tp, 7b
12:               jal          ra, 9b
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          ra, 13b
16:               jal          ra, 11b
17:               jal          ra, 1b
18:               jal          a6, 10b
19:               sltu         s10, a0, a5
                  and          a7, tp, s5
                  sltiu        s7, s3, -1194
                  slli         a4, ra, 25
                  slli         zero, s2, 5
                  bgeu         s6, a2, 1370f
                  auipc        s9, 452285
                  bge          a1, s8, 1361f
                  srai         s6, s11, 12
                  bne          a1, s2, 1359f
                  srl          t5, s3, s0
                  sltiu        s8, s3, -572
                  xor          a1, s5, t0
                  or           a5, a0, zero
1359:             bne          tp, s4, 1378f
                  and          s7, a7, zero
1361:             sltu         t4, ra, s0
                  nop
                  srai         s11, s0, 28
                  srli         s2, s9, 9
                  sltu         tp, a0, s2
                  bge          s11, t5, 1372f
                  bne          t3, s4, 1385f
                  sltu         s1, sp, s9
                  nop
1370:             andi         zero, s3, 236
                  or           s6, a7, s5
1372:             sltiu        s7, t1, 1646
                  slt          gp, ra, a1
                  slt          a6, s0, a0
                  blt          s2, s10, 1387f
                  bltu         gp, s9, 1392f
                  blt          t2, t2, 1392f
1378:             sll          t0, t5, s2
                  beq          t0, gp, 1386f
                  add          s7, s8, zero
                  or           t6, tp, a2
                  bge          t5, t5, 1396f
                  slli         ra, a6, 22
                  xori         s6, tp, 1141
1385:             bltu         a0, s7, 1395f
1386:             bne          sp, t0, 1404f
1387:             andi         t2, s5, -62
                  nop
                  srai         s8, s2, 10
                  bgeu         a6, s0, 1391f
1391:             srai         t0, a7, 17
1392:             slti         t0, a5, -1017
                  xori         ra, s11, -346
                  bne          s6, s0, 1413f
1395:             slli         tp, s3, 22
1396:             ori          sp, zero, -1756
                  or           s6, s6, gp
                  sltiu        s5, s5, -488
                  sra          s2, s5, t5
                  andi         s4, tp, 1505
                  sra          t5, s8, a7
                  lui          a5, 236420
                  slt          tp, s4, s8
1404:             srai         a6, s10, 10
                  bne          a4, ra, 1413f
                  bltu         a4, s11, 1421f
                  andi         t3, s2, -1140
                  xori         a2, s6, -1530
                  bne          a3, s3, 1428f
                  srl          a4, a5, t5
                  andi         s2, a7, 121
                  or           s3, ra, s0
1413:             slli         t0, s9, 16
                  sub          t2, s5, t3
                  srli         s9, t6, 5
                  sra          s9, a5, s2
                  bge          gp, s9, 1421f
                  and          a4, s10, s11
                  bge          s1, gp, 1420f
1420:             xor          s6, a2, t2
1421:             or           sp, s3, a3
                  srai         ra, t1, 0
                  beq          s3, a5, 1441f
                  sltiu        s0, s3, 1510
                  xori         a7, s8, 1338
                  srai         gp, a7, 11
                  addi         gp, s1, -789
1428:             slti         a5, t0, -866
                  sll          a4, t4, s10
                  blt          t6, a1, 1439f
                  beq          a4, t1, 1435f
                  xori         s10, a2, -59
                  and          a7, s8, a7
                  or           s7, s2, a5
1435:             beq          t6, s10, 1441f
                  xor          a7, s5, s9
                  addi         s9, s7, -205
                  srli         t4, ra, 8
1439:             or           s9, a6, t3
                  slli         t3, t2, 5
1441:             beq          zero, s5, 1447f
                  ori          a2, tp, -356
                  nop
                  sltiu        s8, t0, -953
                  slt          s1, gp, a1
                  xori         gp, s10, -983
1447:             and          s7, s2, a3
                  addi         a6, s4, -2012
                  beq          gp, a1, 1455f
                  xori         a2, t3, -1511
                  nop
                  slt          a7, s2, s8
                  xor          s4, s10, zero
                  bgeu         a4, t2, 1468f
1455:             slti         sp, t4, 127
                  slli         s0, gp, 0
                  lui          a5, 530183
                  sub          s10, sp, s6
                  addi         s0, a7, -1703
                  addi         a2, s4, -1810
                  bge          s11, s0, 1480f
                  auipc        a4, 826893
                  slt          t5, ra, s7
                  sltiu        t4, a7, 1887
                  sub          gp, s11, s2
                  blt          s2, s1, 1471f
                  or           a1, t3, ra
1468:             or           a5, s9, ra
                  beq          s5, a1, 1470f
1470:             addi         s9, t3, 263
1471:             sltu         t3, a7, a0
                  slli         gp, zero, 24
                  lui          gp, 298886
                  addi         a4, a3, -1397
                  sub          s1, s10, s0
                  xori         s3, s9, -670
                  sll          s4, ra, t1
                  or           t3, a6, t1
                  bltu         s1, ra, 1498f
1480:             beq          s6, s2, 1495f
                  lui          s0, 1013353
                  slli         s2, a0, 1
                  auipc        s0, 831734
                  srli         zero, s9, 21
                  sltu         s11, t1, s4
                  or           a1, t4, a0
                  sltiu        s1, a5, 1212
                  ori          s5, a1, 1698
                  srai         a4, t1, 10
                  or           s4, t5, s9
                  bge          zero, s10, 1507f
                  sltu         t3, t2, s1
                  slli         a1, s11, 24
                  add          t4, s2, s8
1495:             addi         t2, sp, -1045
                  srai         ra, a3, 28
                  sub          s0, t2, s3
1498:             or           t5, s2, t0
                  addi         a6, t3, -1763
                  slt          a1, ra, s1
                  srl          s8, zero, s9
                  sltu         a5, s5, sp
                  slli         s1, a7, 26
                  auipc        ra, 445870
                  auipc        t4, 253956
                  xori         t2, s2, -834
1507:             and          t3, tp, a4
                  slt          s2, s0, s1
                  or           s8, t5, gp
                  sltu         s5, ra, gp
                  or           t6, a2, s4
                  slti         t0, s10, -1317
                  or           s7, ra, tp
                  beq          s10, a0, 1532f
                  bge          t6, s0, 1519f
                  bge          tp, s7, 1526f
                  sra          s6, t4, tp
                  slti         t5, s5, 303
1519:             or           a6, s6, s7
                  lui          t5, 208396
                  and          a6, a0, t6
                  sltu         tp, tp, a4
                  nop
                  slt          s5, s10, s7
                  beq          s7, s6, 1542f
1526:             slti         zero, a6, 1237
                  add          ra, a2, sp
                  sltu         s7, s1, s4
                  blt          sp, a6, 1544f
                  srai         t6, s4, 11
                  srli         a7, t0, 31
1532:             lui          s11, 982451
                  beq          s11, ra, 1552f
                  auipc        s0, 448204
                  sra          sp, t0, t2
                  auipc        sp, 1036823
                  auipc        a6, 159577
                  srai         s4, t1, 30
                  ori          s3, s1, 16
                  beq          s11, s1, 1548f
                  sltiu        ra, zero, 350
1542:             slli         s7, s5, 24
                  ori          t6, t6, 1092
1544:             bltu         t6, s8, 1557f
                  ori          a6, a5, 2029
                  slli         s7, t0, 15
                  sltu         ra, sp, a6
1548:             bltu         t3, t1, 1556f
                  sll          s8, t6, a1
                  xori         s9, sp, 998
                  beq          sp, s8, 1552f
1552:             sltu         gp, s4, t4
                  add          t0, tp, zero
                  nop
                  srli         a6, ra, 20
1556:             nop
1557:             srli         zero, a6, 21
                  add          a7, s8, a4
                  xori         tp, s11, 102
                  sra          gp, s0, s10
                  beq          s9, gp, 1573f
                  sltu         t5, s6, t6
                  addi         a4, a0, -54
                  sltiu        zero, s10, -707
                  auipc        a7, 203590
                  ori          s11, a2, 605
                  sra          t4, s2, zero
                  slti         a5, tp, -1075
                  srli         s11, a5, 15
                  andi         s5, a6, -1894
                  beq          s4, tp, 1580f
                  slti         s6, t2, 513
1573:             sra          a1, t0, tp
                  blt          ra, s3, 1578f
                  slti         s1, s3, -736
                  sltiu        a2, a0, -844
                  nop
1578:             sra          s11, gp, t6
                  auipc        s1, 451678
1580:             beq          s9, t1, 1600f
                  bgeu         a7, t3, 1583f
                  nop
1583:             sra          s5, t1, a0
                  beq          s2, sp, 1591f
                  slti         t2, t2, -1606
                  srai         t2, t0, 14
                  bge          s0, s2, 1593f
                  xor          a1, a3, a2
                  srl          s1, a7, t4
                  xor          a2, s6, t4
1591:             lui          a6, 349273
                  and          a1, s6, t3
1593:             srl          s7, t1, t3
                  beq          t2, t4, 1599f
                  bne          s6, s3, 1597f
                  beq          sp, a7, 1605f
1597:             slli         s1, a2, 26
                  auipc        a7, 835553
1599:             nop
1600:             bne          a5, t3, 1614f
                  sltu         s6, a5, t3
                  or           s0, t4, s5
                  bne          a7, s4, 1607f
                  srli         t5, s8, 30
1605:             auipc        t6, 497720
                  srli         s10, t0, 10
1607:             or           t0, sp, a3
                  or           s3, a2, a7
                  bltu         s0, s2, 1613f
                  andi         a6, s4, 1402
                  blt          a0, t5, 1612f
1612:             and          t4, s5, s11
1613:             xori         s4, zero, 1252
1614:             sll          t4, a5, a0
                  and          a7, s5, t3
                  andi         s9, t0, 185
                  sltiu        t6, s3, 901
                  auipc        a7, 391851
                  bge          t3, t1, 1628f
                  and          gp, a4, ra
                  sll          s7, a1, gp
                  lui          s7, 1008878
                  add          s1, t4, s4
                  slli         t0, zero, 16
                  bltu         s5, t6, 1629f
                  xori         t3, a0, 1002
                  bltu         s3, s5, 1635f
1628:             sra          s1, ra, s0
1629:             sll          zero, s9, a7
                  xori         ra, s11, -1238
                  bgeu         zero, t3, 1650f
                  srl          s5, t1, a6
                  slt          s7, gp, s9
                  addi         a5, s6, -539
1635:             addi         t5, a5, 455
                  sltu         a1, zero, s11
                  sra          a1, s0, a2
                  slli         s10, a6, 14
                  sll          a2, s9, s2
                  bltu         ra, a5, 1658f
                  andi         a5, s3, 1529
                  ori          tp, tp, 556
                  sltu         a5, s10, a2
                  bne          zero, a5, 1662f
                  beq          s1, t3, 1655f
                  ori          t2, s9, 80
                  sltiu        a2, s10, -980
                  beq          s11, a2, 1660f
                  srl          t0, t3, s7
1650:             blt          s1, t1, 1665f
                  ori          a5, s10, 1498
                  blt          s0, tp, 1669f
                  slti         s4, s0, 838
                  xori         t0, t6, -1952
1655:             xori         ra, s2, 1348
                  xori         gp, t6, -122
                  srai         s10, s3, 23
1658:             blt          t5, s5, 1659f
1659:             addi         tp, gp, 1375
1660:             xori         s11, s5, 49
                  auipc        t5, 615806
1662:             auipc        s6, 722195
                  slt          a1, s11, ra
                  xori         a2, s10, -1751
1665:             slli         t2, t5, 0
                  lui          s2, 873877
                  srai         t5, a6, 23
                  xori         a5, s5, 1293
1669:             blt          s9, t5, 1684f
                  sltiu        s4, a3, -910
                  bgeu         t2, t2, 1679f
                  sll          sp, s1, a6
                  addi         gp, ra, -1368
                  or           s10, s5, t5
                  andi         s1, s9, -749
                  ori          ra, s6, -1734
                  auipc        s10, 814542
                  or           t5, t2, s9
1679:             beq          s11, t5, 1698f
                  nop
                  slti         a5, gp, -1776
                  and          s10, s6, ra
                  sltu         t0, a2, a1
1684:             beq          s5, a3, 1690f
                  sub          gp, s11, gp
                  sltiu        s9, gp, 1264
                  sra          s2, s4, sp
                  sltiu        a6, a0, -953
                  nop
1690:             lui          s3, 617855
                  bgeu         gp, a1, 1697f
                  sltu         s11, a3, a7
                  xor          t5, s0, s8
                  nop
                  bge          s10, ra, 1708f
                  auipc        t6, 892784
1697:             bgeu         t3, zero, 1717f
1698:             ori          ra, gp, 1051
                  sub          a1, s2, s6
                  beq          s4, s6, 1719f
                  xori         t6, tp, 1017
                  slt          tp, s6, t5
                  sra          t4, s7, tp
                  add          s8, t3, s5
                  nop
                  bgeu         a5, a6, 1713f
                  beq          s1, a7, 1723f
1708:             xori         t2, s6, -1386
                  bgeu         s6, a5, 1710f
1710:             slt          a5, a0, a4
                  bgeu         a7, zero, 1716f
                  xor          s5, s0, s9
1713:             bne          t0, ra, 1714f
1714:             sub          s10, s11, t6
                  srl          t6, s7, t4
1716:             add          s2, s5, s4
1717:             sltu         s1, sp, s2
                  srai         s6, a6, 4
1719:             or           t6, t1, s2
                  bge          s6, s4, 1733f
                  lui          a6, 972903
                  sub          sp, a0, s5
1723:             srai         s7, a7, 2
                  slt          s11, s10, s4
                  addi         a1, tp, 431
                  sub          a5, a5, a4
                  srai         s10, tp, 29
                  bge          sp, s1, 1735f
                  sra          s9, s1, t2
                  addi         s2, t0, -880
                  sra          s2, a5, t2
                  ori          sp, zero, -265
1733:             srli         a4, a6, 13
                  auipc        s9, 593055
1735:             sltu         a6, t3, s3
                  beq          t0, s1, 1748f
                  addi         t5, a3, -1833
                  sra          tp, a7, s3
                  lui          t2, 303113
                  beq          t4, a4, 1755f
                  ori          a5, a5, -1450
                  ori          s7, a1, 1894
                  blt          t3, a3, 1752f
                  addi         a1, s4, 664
                  xori         s11, t0, -1521
                  slli         a7, a1, 9
                  ori          a2, zero, -1239
1748:             ori          tp, s7, 1104
                  slt          s4, gp, s5
                  xori         s0, s10, -1974
                  srai         t6, s7, 7
1752:             sub          s1, s7, a1
                  srl          t5, s3, a6
                  srli         t5, s0, 5
1755:             srli         a2, s5, 31
                  or           ra, s9, tp
                  bge          s4, t1, 1776f
                  sltiu        ra, s1, 1005
                  or           sp, s5, s9
                  lui          a1, 130678
                  andi         s5, s3, 1408
                  sltiu        t3, s1, 1163
                  nop
                  xori         t5, a4, 981
                  blt          t4, zero, 1769f
                  bgeu         s11, a6, 1776f
                  srl          a6, a4, sp
                  bgeu         s8, s10, 1769f
1769:             slt          s0, s11, s6
                  srli         t0, sp, 9
                  beq          zero, ra, 1785f
                  slt          s6, ra, tp
                  sltiu        a7, zero, -70
                  addi         zero, s8, 98
                  blt          tp, t3, 1776f
sub_3_24:         jal          s10, 6f
0:                jal          ra, 8f
1:                jal          ra, 11f
2:                jal          ra, 4f
3:                jal          ra, 5f
4:                jal          ra, 1b
5:                jal          t0, 10f
6:                jal          ra, 12f
7:                jal          a4, 2b
8:                jal          sp, 7b
9:                jal          ra, 0b
10:               jal          ra, 13f
11:               jal          t4, 3b
12:               jal          ra, 9b
13:               auipc        t6, 247122
1776:             sub          t3, s1, s5
                  sltu         t4, t6, t0
                  sltiu        s7, a5, 1501
                  xori         s5, s5, 1867
                  sltu         s6, s1, t0
                  auipc        t2, 337546
                  lui          a1, 817796
                  auipc        s6, 933532
                  slt          sp, t6, a7
1785:             ori          s4, gp, 302
                  bge          a2, ra, 1805f
                  slt          s9, s10, t4
                  addi         a1, t1, 306
                  sub          s4, t4, s8
                  bge          s6, t4, 1794f
                  slti         zero, s9, -1049
                  bgeu         ra, s3, 1800f
                  addi         s5, t3, -140
1794:             slti         s8, a6, 1838
                  sra          a1, s4, a4
                  bgeu         t1, t2, 1798f
                  xor          gp, a2, s7
1798:             sll          s1, gp, t5
                  slti         s8, s8, -768
1800:             beq          s8, s10, 1809f
                  or           s9, zero, zero
                  beq          s6, s11, 1820f
                  sub          s2, tp, s9
                  slt          s0, s5, ra
1805:             bge          s5, zero, 1824f
                  and          s0, s3, a3
                  bne          s3, t2, 1813f
                  add          s7, s0, s4
1809:             srli         s6, a5, 25
                  slti         a1, s11, 202
                  andi         s2, t6, -550
                  slli         t3, s0, 16
1813:             bgeu         s8, gp, 1833f
                  and          t0, gp, t1
                  lui          s9, 407336
                  sltu         a4, gp, t4
                  slli         s6, gp, 31
                  bne          t1, s7, 1826f
                  srai         t2, gp, 3
1820:             nop
                  or           zero, a3, gp
                  sll          sp, a5, t5
                  srl          s3, s2, a1
1824:             xori         a2, s9, -798
                  sub          s2, t3, s4
1826:             add          s2, a4, t0
                  auipc        t3, 159048
sub_3_36:         jal          s10, 13f
0:                jal          ra, 11f
1:                jal          ra, 17f
2:                jal          ra, 6f
3:                jal          t3, 10f
4:                jal          ra, 2b
5:                jal          ra, 19f
6:                jal          ra, 8f
7:                jal          ra, 15f
8:                jal          ra, 12f
9:                jal          ra, 21f
10:               jal          ra, 22f
11:               jal          ra, 3b
12:               jal          ra, 20f
13:               jal          s1, 14f
14:               jal          ra, 23f
15:               jal          ra, 0b
16:               jal          ra, 1b
17:               jal          ra, 18f
18:               jal          a4, 7b
19:               jal          s7, 9b
20:               jal          ra, 5b
21:               jal          ra, 16b
22:               jal          ra, 24f
23:               jal          t2, 4b
24:               sra          s7, s6, s3
                  and          sp, sp, a5
                  srai         s1, ra, 31
                  srl          s8, s3, s3
                  srai         zero, s10, 8
                  xori         t0, ra, 927
1833:             bge          s4, t5, 1837f
                  sub          t3, s1, s2
                  beq          a0, t5, 1841f
                  sra          sp, s4, t3
1837:             slli         t4, t1, 11
                  add          zero, s11, s9
                  xori         s11, a4, -1869
                  srai         t0, s10, 15
1841:             slt          a6, sp, s3
                  and          s2, a5, gp
                  bgeu         s9, a1, 1858f
                  slti         a2, a1, 577
                  sra          s4, s10, zero
                  xor          t3, a0, a0
                  bgeu         t0, s8, 1865f
                  sltiu        gp, s0, 1798
                  slt          a2, a1, s6
                  bltu         s0, a4, 1856f
                  slti         tp, a1, -551
                  bne          t2, t6, 1869f
                  beq          s9, ra, 1869f
                  add          s9, s5, a6
                  blt          t0, t0, 1859f
1856:             sub          s8, sp, a5
                  ori          s2, a7, -342
1858:             add          s9, tp, a2
1859:             sltu         s6, s6, t6
                  xori         s10, a0, -41
                  blt          s8, t1, 1880f
                  sltu         a1, t4, tp
                  addi         t0, s11, 1637
                  bltu         s8, a7, 1865f
1865:             beq          t2, t5, 1884f
                  srai         s9, t4, 0
                  andi         s8, a1, 507
                  sll          tp, s11, tp
1869:             xor          a5, t0, a0
                  srli         t6, s4, 24
                  xori         s11, s11, 1814
                  slli         a2, s3, 20
                  addi         t6, a4, 1925
                  andi         a1, s8, -1413
                  sll          s6, t6, a2
                  beq          s7, s1, 1885f
                  add          gp, a3, t1
                  or           sp, a7, t4
                  auipc        tp, 600120
1880:             add          s4, s2, t2
                  srai         t0, a0, 20
                  srli         sp, t6, 26
                  lui          s2, 242999
1884:             sltu         s8, a7, s9
1885:             andi         s5, t3, -110
                  xori         s0, s10, -1665
                  sltiu        ra, ra, 769
                  srai         sp, ra, 18
                  and          s8, a2, t1
                  auipc        t2, 652494
                  blt          a0, s3, 1892f
1892:             sltu         s10, ra, sp
                  xor          zero, s10, t3
                  xori         s1, s10, 1630
                  sra          s3, s3, t6
                  beq          t4, s0, 1913f
                  sll          s1, gp, t5
                  bne          tp, s4, 1914f
                  addi         sp, s10, -633
                  nop
                  nop
                  sltu         zero, s5, zero
                  auipc        s0, 416032
                  sub          s2, zero, s5
sub_3_19:         jal          s10, 9f
0:                jal          ra, 14f
1:                jal          ra, 2f
2:                jal          a4, 4f
3:                jal          ra, 1b
4:                jal          s8, 12f
5:                jal          ra, 6f
6:                jal          a2, 16f
7:                jal          sp, 13f
8:                jal          a4, 11f
9:                jal          ra, 8b
10:               jal          ra, 0b
11:               jal          ra, 15f
12:               jal          ra, 7b
13:               jal          ra, 5b
14:               jal          ra, 3b
15:               jal          tp, 10b
16:               add          t4, t4, a2
                  sll          a6, tp, sp
                  sltu         a2, s2, s3
                  bltu         t3, sp, 1925f
                  sub          s4, t4, a7
                  sltu         a7, t4, s2
                  bgeu         a2, s4, 1916f
                  blt          s6, gp, 1926f
                  bltu         ra, ra, 1924f
1913:             sltu         s7, a7, zero
1914:             and          t6, a4, t2
                  sub          s0, a6, s11
1916:             bltu         s0, s10, 1935f
                  and          a5, a6, ra
                  or           s7, a0, a5
                  srli         s6, s6, 17
                  xori         s11, t5, -274
                  srli         sp, sp, 12
                  nop
                  srli         t4, t4, 4
1924:             xori         gp, t5, -1757
1925:             slt          s1, s5, s11
1926:             srl          s8, s5, sp
                  add          sp, s0, s9
                  xor          t5, sp, gp
                  auipc        t6, 992403
                  lui          a4, 234183
                  xori         t6, tp, -1277
                  xor          gp, t4, a6
                  slt          s10, s10, a7
                  bge          s4, s9, 1939f
1935:             slt          a6, a3, s7
                  sll          s9, zero, tp
                  add          a5, a5, s7
                  xori         a4, t2, -1454
1939:             sll          s4, s3, t3
                  or           s0, t0, zero
                  add          t6, t3, s8
                  bge          zero, t5, 1943f
1943:             sltiu        t3, t3, -900
                  lui          s11, 902745
                  addi         gp, sp, 192
                  beq          a6, s10, 1966f
                  bltu         tp, s10, 1953f
                  sltiu        t0, a7, 951
                  bge          s6, s9, 1957f
                  bge          t0, t2, 1954f
                  or           a2, tp, t6
                  slli         s6, s2, 24
1953:             bne          s11, s4, 1967f
1954:             add          zero, a2, s2
                  bgeu         ra, t2, 1964f
                  slti         a2, a7, 1948
1957:             srli         s0, t0, 2
                  srli         s6, s8, 15
                  add          a4, s8, a0
                  bgeu         t2, s9, 1967f
                  slli         t0, s5, 22
                  blt          s11, s3, 1966f
                  bge          t5, a0, 1978f
1964:             srai         a7, t4, 0
                  addi         a4, t2, 2041
1966:             auipc        s2, 276243
1967:             srl          t5, s11, t6
                  add          s7, a0, s5
                  nop
                  slt          s6, t6, a5
                  sltiu        t5, s4, 580
                  ori          ra, ra, 1363
                  sltu         t2, s7, s3
                  beq          a5, a5, 1987f
                  xor          zero, a3, s0
                  bne          s9, tp, 1982f
                  addi         a2, s11, 1146
1978:             auipc        s11, 906985
                  sll          zero, s11, a1
                  srai         s0, t6, 6
                  addi         s6, s2, 527
1982:             ori          a7, s5, 724
                  auipc        ra, 783153
                  sra          s3, t4, gp
                  and          t2, s5, t6
                  and          s3, s6, a7
1987:             slti         t6, s11, -790
                  srai         s7, s4, 22
                  and          ra, s0, s4
                  slt          t4, zero, s3
                  slt          t0, s8, t6
                  beq          s5, s3, 1994f
                  sltiu        s7, s5, -1258
1994:             xor          a5, a4, t4
                  ori          s5, s5, 690
                  slt          s7, s4, a1
                  slli         a4, t6, 14
                  bne          t3, s10, 2006f
                  nop
                  andi         s0, s4, -165
                  auipc        gp, 736603
                  blt          t0, a3, 2020f
                  slli         a7, t6, 4
                  and          s11, s3, s8
                  sll          a6, s3, s11
2006:             slli         sp, a1, 27
                  xor          s6, a3, t6
                  auipc        ra, 993023
                  sltiu        tp, sp, -835
                  beq          s5, a6, 2020f
                  nop
                  nop
                  bltu         s6, gp, 2028f
                  slt          s0, zero, t2
                  sub          a2, s10, s1
                  sltiu        zero, a4, 312
                  add          s1, s1, t6
                  sub          zero, gp, ra
                  ori          t0, t4, 1107
2020:             beq          s4, gp, 2027f
                  srai         ra, s7, 11
                  sltu         t0, s10, a1
                  slti         t0, s9, 802
                  sltiu        a5, s7, -1337
                  sltu         a1, s4, s5
                  sub          s5, a0, a1
2027:             blt          a0, s11, 2045f
2028:             auipc        t2, 651631
                  slt          s0, zero, s1
                  bne          a5, ra, 2050f
                  bge          sp, s7, 2032f
2032:             slt          a1, gp, s0
                  blt          a2, s11, 2048f
                  and          gp, s4, a7
                  beq          a5, a1, 2043f
                  xori         s8, s6, 1114
                  sra          a2, t3, s10
                  xori         s0, t4, 1423
                  nop
                  srl          a6, zero, s7
                  ori          zero, ra, -9
                  sra          zero, a6, s11
2043:             ori          a6, sp, 1738
                  bltu         a5, s0, 2060f
2045:             add          tp, sp, a1
                  bne          s6, a1, 2060f
                  srl          s4, t5, ra
2048:             bltu         t3, t2, 2056f
                  blt          t3, zero, 2067f
2050:             beq          ra, a1, 2069f
                  srai         tp, t6, 26
                  sltu         a6, s4, a7
                  beq          a7, s7, 2055f
                  xor          t2, a1, s2
2055:             bltu         t1, t0, 2059f
2056:             blt          t4, s9, 2075f
                  sltu         s1, sp, s6
                  slti         t2, s6, 1882
2059:             srl          t5, s0, a7
2060:             bltu         a0, t0, 2070f
                  xori         a4, a3, 1829
                  xor          s10, ra, a3
                  bge          a1, a1, 2069f
                  beq          s1, t5, 2083f
                  srai         a2, s0, 26
                  slt          a5, t5, s2
2067:             slti         gp, t3, 1563
                  add          a6, t2, a6
2069:             sub          t5, a5, a0
2070:             sltiu        s0, gp, 522
                  bne          a1, s2, 2077f
                  slli         a2, s0, 7
                  lui          a7, 69093
                  or           s5, a1, s2
2075:             addi         t0, a4, 1438
                  or           a7, s6, a3
2077:             or           s2, s2, t1
                  sltu         t3, a5, a2
                  sltiu        s2, s11, -1341
                  sll          t6, s11, a6
                  sll          t6, a6, a1
                  blt          t1, s9, 2095f
2083:             lui          tp, 968346
                  add          a4, t6, a1
                  ori          s9, s5, -1384
                  sra          sp, a7, a5
                  slli         s1, a1, 16
                  lui          s3, 852943
                  srl          s2, s11, t3
                  auipc        s11, 850497
                  sll          a1, t0, t4
                  bgeu         a0, a5, 2093f
2093:             bgeu         a0, s6, 2102f
                  auipc        s4, 888077
2095:             addi         a5, s7, 1452
sub_3_3:          jal          s10, 1f
0:                jal          t0, 13f
1:                jal          ra, 10f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 8f
5:                jal          t0, 4b
6:                jal          ra, 9f
7:                jal          t5, 3b
8:                jal          ra, 0b
9:                jal          s4, 5b
10:               jal          sp, 11f
11:               jal          ra, 7b
12:               jal          ra, 2b
13:               and          t6, tp, s4
                  lui          s3, 165348
                  srl          s1, t5, a0
                  xori         s0, t2, -186
                  add          s0, sp, s6
                  or           ra, s0, a4
                  addi         t4, s3, 1535
2102:             bgeu         s10, s9, 2103f
2103:             beq          t3, t0, 2108f
                  srli         gp, s5, 6
                  srl          t2, sp, a6
                  bne          t6, s6, 2110f
                  bge          s0, s4, 2111f
2108:             sll          a2, t4, s1
                  slt          s3, a3, a6
2110:             srai         sp, a4, 20
2111:             blt          t0, a0, 2117f
                  beq          a6, a2, 2121f
                  auipc        t4, 797209
                  sra          ra, zero, s7
                  lui          t5, 169726
                  sra          gp, s8, t2
2117:             bne          s7, s4, 2129f
                  andi         s10, s2, 908
                  sltu         s9, sp, s2
                  sll          s7, s8, t6
2121:             slti         ra, s0, -839
                  slti         tp, a1, -1489
                  sltiu        gp, a0, 1879
                  xori         zero, t4, -573
                  bne          t5, a1, 2142f
                  ori          a4, gp, -1122
                  slti         a6, s2, 1809
                  or           a4, s5, s5
2129:             xori         t5, t1, -1562
                  xori         s3, t0, 612
                  sltu         t0, ra, t4
                  bge          s8, ra, 2136f
                  ori          a5, t4, 403
                  nop
                  ori          s11, s8, -1594
2136:             bge          t4, s11, 2150f
                  and          sp, s4, s2
                  bltu         t2, a4, 2150f
                  srli         s11, s6, 1
                  bltu         t4, t4, 2159f
                  bne          a2, t5, 2158f
2142:             bltu         t1, s6, 2157f
                  slli         s11, t3, 3
                  xori         s7, tp, 1650
                  sll          s10, zero, s6
                  beq          t0, sp, 2147f
2147:             sll          s8, s11, a2
                  slli         s2, s10, 13
                  blt          s7, zero, 2150f
2150:             sll          s1, t4, s4
                  or           s9, s10, t0
                  ori          gp, s7, 1330
                  srli         s7, s10, 17
                  bne          s10, t5, 2164f
sub_3_47:         jal          s10, 8f
0:                jal          s10, 10f
1:                jal          ra, 12f
2:                jal          t0, 18f
3:                jal          ra, 15f
4:                jal          a7, 0b
5:                jal          sp, 2b
6:                jal          s3, 1b
7:                jal          a6, 5b
8:                jal          s7, 19f
9:                jal          ra, 20f
10:               jal          tp, 11f
11:               jal          ra, 14f
12:               jal          ra, 16f
13:               jal          t3, 6b
14:               jal          ra, 7b
15:               jal          ra, 9b
16:               jal          sp, 3b
17:               jal          ra, 4b
18:               jal          ra, 13b
19:               jal          ra, 17b
20:               andi         t5, s0, 630
                  bne          t5, gp, 2168f
                  bge          s4, s5, 2174f
2157:             sltiu        s9, s10, 499
2158:             or           s8, t3, t6
2159:             ori          s8, s4, 1927
                  bne          t6, t5, 2180f
                  slli         s3, s5, 16
                  srai         a4, sp, 0
                  bge          s2, a5, 2171f
2164:             xori         s11, s11, 1268
                  addi         gp, t2, 982
                  xor          s0, s5, a4
                  addi         t3, t6, -1953
2168:             andi         sp, sp, 1292
                  sltiu        t5, t5, -947
                  sra          t0, t0, s1
2171:             ori          t3, t3, 1097
                  andi         t2, a5, 1904
                  slli         t2, t3, 31
2174:             bgeu         a1, s1, 2182f
                  add          s10, t4, s1
                  or           ra, a1, gp
                  bne          a0, tp, 2193f
                  slti         sp, a1, 1014
                  sltiu        ra, tp, -316
2180:             sltiu        s10, gp, 443
                  addi         s8, tp, -381
2182:             slt          s0, a5, a7
                  sltu         a5, s4, ra
                  nop
                  slli         s3, s5, 10
                  nop
                  blt          t0, a0, 2196f
                  bgeu         a0, s1, 2190f
                  slti         t2, t4, 784
2190:             srli         s5, s11, 24
                  sra          a4, s1, s2
                  bgeu         a7, t4, 2210f
2193:             slti         ra, t2, 1452
                  srai         s9, gp, 19
                  sra          s4, a1, gp
2196:             auipc        a2, 193988
                  andi         a7, a6, -181
                  blt          t6, tp, 2204f
                  bltu         a6, t3, 2203f
                  andi         a1, a0, 1985
                  sltu         s8, s10, s1
                  nop
2203:             srl          ra, a2, t3
2204:             sub          zero, a4, s3
                  srai         a7, s0, 24
                  srli         s5, s7, 26
                  addi         s8, sp, -1861
                  srai         a7, tp, 15
                  ori          a7, t1, -240
2210:             lui          zero, 296852
                  bge          ra, a1, 2216f
                  srl          s1, t0, s10
                  andi         sp, a2, -1590
                  sll          t0, sp, zero
                  nop
2216:             xor          a4, a5, zero
                  slt          t4, a5, a2
                  beq          t2, a0, 2222f
                  sltu         s3, s9, t6
                  auipc        s4, 1015079
                  srai         s11, a3, 25
2222:             bltu         sp, a0, 2228f
                  bge          s1, a1, 2238f
                  add          s6, t2, t6
                  bltu         s0, t5, 2234f
                  xori         s7, t4, -141
                  sll          ra, s2, s9
2228:             bge          t1, tp, 2235f
                  and          s6, t3, s3
                  blt          t4, s6, 2249f
                  blt          s3, a7, 2250f
                  slti         gp, s0, 461
                  bgeu         a4, a6, 2239f
2234:             bltu         s7, s5, 2235f
2235:             andi         s0, s11, 768
                  andi         s3, t3, 731
                  bltu         a3, a4, 2256f
2238:             and          a5, a0, zero
2239:             bltu         s4, t5, 2241f
                  or           s2, a3, s7
2241:             addi         gp, a4, -68
                  nop
                  blt          s2, a5, 2251f
                  bltu         a5, s4, 2245f
2245:             or           a5, a0, t6
                  sub          a4, s5, s2
                  slli         a1, s10, 17
                  slt          s8, s7, s11
2249:             blt          s3, a7, 2255f
2250:             xori         s10, s1, -1649
2251:             srai         ra, t6, 28
                  sltu         s1, t6, gp
                  slti         gp, a1, -62
                  srl          s8, s1, s3
2255:             sltiu        s9, s3, -108
2256:             sll          s10, s6, s6
                  xori         s7, zero, 23
                  ori          s1, a2, 1595
                  srl          t4, t3, ra
                  xor          t2, s11, sp
                  xor          t5, s10, t4
                  sltu         t2, s2, a4
                  beq          a5, a7, 2283f
                  slt          s0, s6, zero
                  sub          s9, sp, s1
                  srl          t5, t0, a0
                  sll          s10, t1, t3
                  sltu         a6, s1, ra
                  slti         s1, a1, -1184
                  andi         s3, tp, -1738
                  or           t2, s7, s10
                  auipc        a6, 902250
                  sltu         a1, a3, a4
                  addi         t2, s2, -187
                  or           s3, a4, t6
                  and          s3, t4, zero
                  addi         s7, a1, -1986
                  srli         a2, s6, 19
                  slli         s6, s5, 6
                  sll          s0, a4, t2
                  andi         a4, a5, 1970
                  sltiu        s5, s6, 894
2283:             sltiu        zero, a6, -89
                  nop
                  andi         a4, s10, -51
                  lui          a2, 646850
                  sll          s10, a2, t4
                  auipc        t5, 678279
                  add          a7, gp, a0
                  srli         s9, zero, 31
                  sub          tp, a0, sp
                  slti         s9, tp, -150
                  sub          zero, tp, s5
                  ori          zero, s8, -2014
                  sll          s11, t5, gp
                  srl          s2, s8, t2
                  slt          s2, ra, s1
                  addi         a5, a3, -425
                  blt          tp, t2, 2305f
                  or           t2, s5, a5
                  sra          t5, t5, t3
                  srli         t2, tp, 23
                  lui          a6, 738891
                  bltu         s11, gp, 2313f
2305:             or           s6, t0, ra
                  sll          a5, ra, t0
                  nop
                  slt          sp, zero, s0
                  sltu         sp, s1, a6
                  xori         s11, s5, 1899
                  addi         a1, s2, -1272
                  sltiu        ra, a1, -1313
2313:             slli         gp, t0, 22
                  blt          s0, s10, 2331f
                  bltu         t3, s10, 2325f
                  add          s2, s0, t4
                  bge          s7, s10, 2318f
2318:             bne          s7, s2, 2319f
2319:             xori         s5, t5, -488
                  srli         t3, a3, 18
                  bltu         gp, t0, 2326f
                  bge          a7, t3, 2326f
                  sll          zero, a7, a6
                  slti         a7, t4, 1972
2325:             andi         s0, a4, -1013
2326:             bltu         t6, t1, 2339f
                  nop
                  xor          zero, sp, a5
                  xor          a5, s5, tp
                  sll          zero, t3, s6
2331:             xori         a2, a3, 508
                  slti         s2, s0, 1540
                  slli         a1, sp, 9
                  xori         s10, zero, -284
                  bgeu         a7, tp, 2350f
                  lui          a2, 557447
                  xor          zero, tp, s1
                  slti         a6, a1, -1807
2339:             add          tp, s1, t2
                  sltiu        s9, t2, -1170
                  bgeu         t4, a1, 2353f
                  sltiu        s5, t0, 1999
                  slt          a4, t6, zero
                  sll          s9, t4, s3
                  sltu         s2, a1, t5
                  beq          a2, tp, 2364f
                  slt          t0, s2, t1
                  sltu         a5, a1, s3
                  xori         a4, s9, 1312
2350:             lui          tp, 40758
                  bge          t0, t1, 2357f
                  srai         t4, sp, 11
2353:             bge          s9, s1, 2361f
                  srai         gp, t2, 25
                  slt          s10, t2, s8
                  sra          t3, ra, tp
2357:             bgeu         ra, a1, 2375f
                  auipc        gp, 531092
                  srl          a5, s0, s1
                  xor          t0, s4, a1
2361:             bne          t5, s5, 2368f
                  bltu         a2, s11, 2376f
                  addi         a7, t6, 1632
2364:             srai         t6, s3, 19
                  addi         t4, t2, 417
                  srl          a4, a1, a1
                  xori         s6, t0, -549
2368:             ori          s9, a6, -1402
                  auipc        tp, 600030
                  srli         tp, s5, 2
                  or           gp, t6, s10
                  xor          a2, s1, ra
                  bne          t0, s1, 2382f
                  bgeu         s10, t4, 2390f
2375:             nop
2376:             sra          gp, a2, t0
                  srli         zero, s2, 13
                  sltu         s9, gp, a7
                  sub          t4, zero, zero
                  bge          t5, a1, 2384f
                  lui          zero, 758399
2382:             add          s7, s1, s5
                  bne          s6, s6, 2398f
2384:             sltiu        s9, sp, -570
                  bge          s5, a0, 2389f
                  xor          s0, s1, a6
                  srl          a6, s11, t1
                  andi         t4, s1, 1107
2389:             srli         a1, s2, 23
2390:             sub          s0, t1, a7
                  lui          a6, 511945
                  andi         t2, gp, -916
                  blt          s9, t0, 2412f
                  and          a1, s3, a0
                  auipc        a2, 879117
                  srai         a7, t6, 8
                  and          s5, s0, s9
2398:             lui          t5, 142500
                  beq          t2, t0, 2418f
                  srl          t5, s3, t5
                  sll          a2, a0, a2
                  sltiu        s3, gp, -1286
                  sltiu        s4, s7, -1371
                  blt          t6, sp, 2418f
                  slt          a6, s10, gp
                  auipc        t2, 1023841
                  nop
                  slt          a5, tp, s4
                  sltiu        s3, a0, -1238
                  blt          s7, s1, 2428f
                  xor          t6, t5, a3
2412:             addi         s8, a6, 1906
                  beq          ra, t4, 2422f
                  srli         sp, s9, 7
                  blt          a2, t4, 2431f
                  ori          s5, s11, -1903
                  sra          zero, a0, a6
2418:             sll          s3, s3, t1
                  srl          s9, s5, ra
sub_3_6:          jal          s10, 5f
0:                jal          ra, 14f
1:                jal          ra, 18f
2:                jal          ra, 8f
3:                jal          ra, 16f
4:                jal          ra, 17f
5:                jal          ra, 20f
6:                jal          ra, 7f
7:                jal          ra, 11f
8:                jal          ra, 13f
9:                jal          s3, 6b
10:               jal          ra, 3b
11:               jal          ra, 4b
12:               jal          s10, 10b
13:               jal          a1, 19f
14:               jal          ra, 2b
15:               jal          s4, 0b
16:               jal          ra, 15b
17:               jal          t0, 1b
18:               jal          sp, 21f
19:               jal          ra, 9b
20:               jal          ra, 12b
21:               and          s8, ra, t5
                  srl          t3, s9, s9
                  bne          s2, s5, 2440f
2422:             sltu         a5, a6, s6
                  sltu         s9, a1, s2
                  bltu         s7, t6, 2431f
                  srai         t5, s10, 1
                  nop
                  srli         gp, gp, 31
2428:             xor          gp, a5, s5
                  sll          a7, s6, a3
                  slli         s3, gp, 2
2431:             srai         a1, t3, 3
                  addi         s2, s10, -1083
                  lui          s10, 17896
                  beq          a4, s1, 2443f
                  bge          s6, t0, 2448f
                  slt          a1, s9, a1
                  nop
                  nop
                  beq          t5, sp, 2447f
2440:             lui          t3, 299614
                  blt          s6, s7, 2458f
                  addi         t3, a4, 1077
2443:             and          a1, a5, t4
                  bltu         s2, ra, 2450f
                  lui          s9, 931852
                  bge          t3, a6, 2465f
2447:             sub          t2, s11, tp
2448:             sll          t3, a7, a2
                  bltu         s1, tp, 2450f
2450:             srai         t0, t5, 29
                  slli         s6, a3, 22
                  srl          s10, s4, s3
                  sltu         s4, t2, a6
                  sltu         t6, t4, s10
                  bne          sp, s9, 2475f
                  srl          t6, s6, s6
                  bge          s11, sp, 2475f
2458:             sltu         s5, a0, s3
                  bge          zero, s11, 2463f
                  bne          s4, a3, 2464f
                  andi         s11, s7, -1540
                  ori          a1, a4, 1876
2463:             lui          t3, 986616
2464:             xor          s11, t6, zero
2465:             add          s9, t1, t6
                  sra          a2, a0, t4
                  bgeu         s9, zero, 2468f
2468:             addi         t4, t6, 1093
                  sub          s11, s10, sp
                  slli         t2, s11, 7
                  bltu         ra, t5, 2477f
                  addi         s10, t2, -1547
                  nop
                  or           s2, a3, t6
2475:             auipc        s11, 381797
                  addi         s5, s5, -1008
2477:             sltu         a1, t3, t2
                  and          s6, s7, sp
                  add          t4, s7, t2
                  slti         s6, t1, -1452
                  or           s6, s5, tp
                  sra          s5, tp, ra
                  ori          s0, gp, 939
                  blt          s4, a3, 2503f
                  bge          s11, a3, 2487f
                  ori          zero, s2, 1697
2487:             xori         s1, ra, 1581
                  addi         zero, s1, -1838
                  beq          ra, a1, 2497f
                  add          s6, a7, t3
                  auipc        a7, 844212
                  ori          sp, t6, 1898
                  addi         zero, a5, 1784
                  bne          ra, zero, 2509f
                  blt          a7, t6, 2499f
                  or           t5, s10, a7
2497:             or           s11, t0, t6
                  or           a5, a6, s11
2499:             sub          zero, gp, s3
                  bgeu         s6, a7, 2510f
                  lui          t0, 419179
                  auipc        a5, 232405
2503:             bgeu         s4, s6, 2508f
                  lui          s6, 577060
                  lui          a5, 1005004
                  srai         s11, t2, 26
                  lui          t3, 968733
2508:             add          t5, t4, s8
2509:             bltu         a1, t3, 2521f
2510:             auipc        a7, 730921
                  sub          a5, a0, s8
                  blt          a7, s6, 2527f
                  or           s11, sp, s10
                  andi         s10, t0, -322
                  lui          t5, 745502
                  bge          t4, a3, 2522f
                  sltu         t3, gp, a2
                  slt          s1, a3, s11
                  blt          t0, s5, 2520f
2520:             addi         a1, a7, 1441
2521:             bgeu         ra, a6, 2537f
2522:             bgeu         sp, a3, 2527f
                  slt          s3, sp, sp
                  bgeu         a6, a2, 2531f
                  slti         t4, a7, -125
                  xori         s3, a5, -567
2527:             bge          sp, s2, 2531f
                  blt          s4, gp, 2537f
                  slt          ra, a7, s2
                  beq          s6, a6, 2547f
2531:             or           a6, s0, a0
                  blt          a6, s1, 2550f
                  and          tp, s9, a6
                  ori          t5, s4, 1075
                  addi         s8, s3, 1884
                  sra          s6, a1, s4
2537:             ori          t5, s6, 1854
                  bne          s2, a1, 2544f
                  sll          t0, a1, s4
                  sltiu        s2, a6, 1940
                  lui          t2, 190815
                  blt          a3, t4, 2557f
                  bltu         s9, sp, 2545f
2544:             sll          s5, t4, t3
2545:             and          s6, a1, t3
                  sll          t3, s1, gp
2547:             sll          sp, s8, a2
                  andi         s2, t6, -464
                  slli         a5, s1, 19
2550:             beq          a1, ra, 2551f
2551:             sltu         t5, a1, ra
                  srl          a4, a3, a1
                  bltu         gp, s10, 2572f
                  andi         t4, a2, 1393
                  ori          t6, a2, -387
                  sub          t5, s6, t0
2557:             nop
                  srl          a4, t4, s10
                  bgeu         s11, a5, 2579f
                  sltiu        a5, s9, 1626
                  xori         a2, s10, -830
                  beq          s10, t5, 2571f
                  add          s0, sp, t3
                  addi         s0, zero, 161
                  slti         s7, a7, 1074
                  slti         s2, s5, 730
                  xor          t6, t2, a4
                  xori         s2, a7, -1082
                  bgeu         sp, gp, 2573f
                  sub          gp, a5, t5
2571:             srai         s0, t6, 10
2572:             slti         s2, gp, -445
2573:             bgeu         s11, s4, 2587f
                  slti         s4, a0, 1448
                  ori          a7, s0, -1042
                  and          a1, t2, a4
                  xor          sp, s2, t2
                  auipc        sp, 323504
2579:             xor          a7, a0, t3
                  srl          ra, s11, t3
                  auipc        a2, 261618
                  lui          s3, 1019161
                  andi         a7, sp, 99
                  addi         zero, a0, -393
                  and          s4, s5, a4
                  sra          t6, t0, ra
2587:             slt          s5, t6, ra
                  bne          a1, s10, 2596f
                  or           s6, s3, a3
                  bgeu         t4, t1, 2609f
                  sltiu        s10, s5, 1865
                  bgeu         s8, t3, 2600f
                  blt          s11, s4, 2603f
                  slli         a4, s11, 5
                  ori          a4, t3, -248
2596:             srai         t5, a6, 22
                  beq          sp, sp, 2615f
                  srli         ra, s11, 13
                  xor          s2, s2, sp
2600:             andi         s4, a1, -1622
                  auipc        s1, 611326
                  bgeu         t1, t0, 2614f
2603:             auipc        t4, 80809
                  andi         t5, a3, 1982
                  bge          t2, s4, 2620f
                  sltu         s4, zero, a0
                  and          a7, s10, t2
                  or           t4, a1, s1
2609:             xor          s5, s7, a4
                  bge          a1, s1, 2623f
                  andi         s7, a2, -1540
                  sll          s10, t0, tp
                  sltiu        s5, s3, 364
2614:             nop
2615:             blt          t3, s3, 2634f
                  sub          tp, s11, s11
                  beq          s4, s9, 2621f
                  add          s5, a4, ra
                  auipc        s10, 608627
2620:             srai         zero, s1, 0
2621:             nop
                  sra          s6, gp, a1
2623:             sltiu        s8, t1, -1416
                  add          s9, t6, a4
                  ori          ra, s9, 1946
                  add          zero, s9, s4
                  srli         s9, s11, 15
                  addi         s3, s2, 930
                  bgeu         a6, a5, 2635f
                  srl          s2, a6, s0
                  xori         a7, gp, -929
                  sltu         t0, t5, s4
                  sll          a7, s10, sp
2634:             bgeu         a5, t6, 2635f
2635:             xori         a1, a6, 513
                  addi         s7, a7, 1988
                  srli         a2, t2, 22
                  bgeu         t1, t2, 2639f
2639:             slt          s7, t1, s9
                  blt          t5, ra, 2646f
                  and          a6, s11, a1
                  auipc        s2, 37425
                  sll          s1, t2, a5
                  or           t0, s0, s6
                  bge          s8, a4, 2655f
2646:             add          s6, t2, a4
                  srai         t0, s10, 5
                  srai         t5, tp, 25
                  sub          s7, s3, t3
                  sltiu        tp, tp, -295
                  slt          s3, sp, a5
                  slli         tp, sp, 29
                  sll          t6, s2, s5
                  bltu         sp, a1, 2661f
2655:             blt          t6, sp, 2673f
                  slt          t6, s8, t2
                  slli         tp, t4, 25
                  slli         t3, t3, 29
                  srl          t3, sp, s4
                  sltu         a5, tp, a1
2661:             or           t0, a7, zero
                  sltu         s5, a5, s9
                  slti         t2, s0, -333
                  xori         s1, zero, 1570
                  ori          s1, s6, -594
                  srli         t5, s11, 0
sub_3_26:         jal          s10, 0f
0:                jal          ra, 10f
1:                jal          sp, 5f
2:                jal          t0, 13f
3:                jal          ra, 8f
4:                jal          a2, 15f
5:                jal          ra, 16f
6:                jal          gp, 14f
7:                jal          s9, 6b
8:                jal          tp, 17f
9:                jal          gp, 2b
10:               jal          t3, 9b
11:               jal          sp, 19f
12:               jal          ra, 4b
13:               jal          s4, 1b
14:               jal          a7, 11b
15:               jal          gp, 7b
16:               jal          ra, 18f
17:               jal          ra, 12b
18:               jal          ra, 3b
19:               sltiu        s1, a4, 703
                  srai         t5, a5, 4
                  sltu         s9, sp, s9
                  srai         a2, s4, 28
                  bge          t3, t1, 2689f
                  xor          a6, s3, a7
                  and          tp, a5, t5
2673:             and          s9, a5, zero
                  sub          s9, s3, t5
                  srai         s4, a4, 26
                  bge          t6, tp, 2695f
                  ori          s3, a1, -1297
                  add          t6, zero, ra
                  auipc        a4, 1030384
                  sub          tp, t5, t6
                  sltiu        gp, s4, -116
                  and          s5, a2, zero
                  andi         s10, t2, -832
                  auipc        s4, 270026
                  sltiu        zero, a5, -1740
                  lui          s9, 291141
                  beq          s4, s2, 2693f
                  bgeu         tp, s10, 2690f
2689:             and          s1, t4, sp
2690:             andi         a6, t2, -1636
                  slli         a7, sp, 2
                  and          s7, s1, ra
2693:             xori         s9, s6, 2041
                  auipc        a6, 643808
2695:             sltu         sp, s2, t1
                  sra          s0, s3, sp
                  bge          a4, s7, 2702f
                  bne          s2, a2, 2699f
2699:             bge          s9, t1, 2702f
                  addi         t0, s5, 933
                  sltu         s4, a5, t3
2702:             sub          s2, s0, s6
                  xori         sp, s0, -161
                  srl          t3, tp, t6
                  addi         s7, s3, -1646
                  or           a4, a2, t1
                  sub          s7, a7, tp
                  lw           s10, 4(a0)
                  addi         a0, a0, 24
                  add          s1, s10, s3
                  ori          t2, ra, -157
3876:             addi x29, x26, 0
3876:             jalr x29, x29, 0
sub_5:            addi         a0, a0, -8
                  xori         a2, zero, -653
                  sltu         s3, a7, tp
                  sw           s10, 4(a0)
                  add          s11, a5, t6
                  srl          t3, a5, t0
                  nop
                  sltu         a1, a7, s6
                  xori         t0, t5, 692
                  slt          a1, s2, s2
sub_5_0:          jal          s10, 5f
0:                jal          ra, 8f
1:                jal          t0, 10f
2:                jal          ra, 11f
3:                jal          ra, 4f
4:                jal          s6, 9f
5:                jal          ra, 7f
6:                jal          ra, 2b
7:                jal          ra, 3b
8:                jal          s6, 12f
9:                jal          s5, 1b
10:               jal          ra, 6b
11:               jal          a7, 0b
12:               jal          sp, 13f
13:               xor          s7, t4, sp
                  lui          a6, 176462
                  bgeu         s4, s8, 14f
                  srai         sp, zero, 16
                  sra          s11, a6, t6
                  bgeu         s3, a4, 5f
5:                sra          zero, a2, zero
                  sub          sp, a3, a7
                  addi         t3, s5, 988
                  srli         s3, t0, 31
                  bltu         a2, s7, 24f
                  or           s9, s4, ra
                  xori         a5, s9, 144
                  bge          t0, a6, 15f
                  bltu         zero, s4, 15f
14:               auipc        sp, 624964
15:               xor          zero, s3, s5
                  bne          a4, a2, 20f
                  bge          t6, s1, 25f
                  andi         s2, zero, -1906
                  auipc        s11, 755270
20:               srl          t4, s5, a3
                  srai         tp, s6, 16
                  nop
                  xori         s5, a6, 306
24:               xor          s2, s8, s7
25:               srl          s1, t3, a2
                  nop
                  blt          sp, a4, 37f
                  xor          s2, t0, zero
                  sltu         s7, sp, a2
                  bne          ra, s6, 34f
                  sltiu        a4, sp, 1265
                  bgeu         a5, ra, 47f
                  bltu         a7, t2, 50f
34:               sltu         t4, s2, a0
                  srl          t5, a4, zero
                  bne          t0, ra, 52f
37:               andi         a1, t2, -1117
                  xori         s1, s9, 197
                  sll          s9, a0, t3
                  srli         t0, s11, 27
                  auipc        t3, 654732
                  blt          s2, gp, 52f
                  sltiu        zero, s1, -626
                  bltu         a4, s0, 52f
                  addi         s3, t6, 1804
                  bge          s8, zero, 52f
47:               and          s1, a5, t0
                  sra          s3, a7, s9
                  xor          t4, t6, a3
50:               srai         a5, t0, 29
                  lui          s4, 266041
52:               srl          s5, t3, t5
                  ori          s7, a1, -1632
                  srli         sp, t6, 11
                  lw           s10, 4(a0)
                  add          ra, sp, sp
                  xor          zero, gp, s4
                  addi         s6, ra, 804
                  add          s5, s5, s9
                  addi         a0, a0, 8
                  xor          a1, a5, gp
                  xor          s5, t0, t2
                  ori          tp, gp, -616
89:               addi x21, x26, 0
89:               jalr x21, x21, 0
sub_4:            srli         t6, a6, 1
                  addi         a0, a0, -24
                  ori          s9, a0, -1951
                  sub          s6, zero, a6
                  auipc        sp, 183038
                  sw           s10, 4(a0)
                  slti         t6, sp, -556
                  srai         gp, sp, 22
                  slli         zero, s0, 19
                  sltu         zero, gp, s2
sub_4_1:          jal          s10, 1f
0:                jal          ra, 17f
1:                jal          ra, 13f
2:                jal          tp, 14f
3:                jal          tp, 12f
4:                jal          a5, 7f
5:                jal          ra, 0b
6:                jal          ra, 21f
7:                jal          ra, 3b
8:                jal          t3, 16f
9:                jal          ra, 19f
10:               jal          sp, 5b
11:               jal          ra, 4b
12:               jal          ra, 18f
13:               jal          ra, 11b
14:               jal          s0, 20f
15:               jal          ra, 9b
16:               jal          a6, 2b
17:               jal          ra, 15b
18:               jal          s7, 10b
19:               jal          ra, 8b
20:               jal          ra, 6b
21:               ori          a6, s2, -1724
sub_4_0:          jal          s10, 9f
0:                jal          ra, 7f
1:                jal          ra, 15f
2:                jal          ra, 8f
3:                jal          ra, 12f
4:                jal          ra, 0b
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          ra, 11f
8:                jal          ra, 14f
9:                jal          ra, 1b
10:               jal          ra, 4b
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               jal          ra, 17f
14:               jal          ra, 16f
15:               jal          t0, 3b
16:               jal          ra, 13b
17:               addi         s0, s9, -69
                  bltu         a5, s8, 10f
                  slli         t6, a6, 12
                  sltiu        a2, t4, -1048
                  bgeu         a2, t6, 13f
                  sltu         s3, s2, s9
                  srl          tp, ra, s3
                  and          a6, a2, tp
                  srl          zero, t4, t5
                  bge          s7, zero, 24f
                  xor          s8, tp, s5
10:               beq          s11, t5, 25f
                  sltu         t3, s6, t5
                  beq          a2, sp, 29f
13:               lui          s2, 893395
                  bgeu         gp, a7, 25f
                  bgeu         s2, s0, 23f
                  and          s10, s2, s8
                  srli         s10, a6, 23
                  and          s3, sp, s3
                  sub          a2, s8, s11
                  srli         tp, zero, 3
                  and          s1, a5, a7
                  blt          s6, t5, 30f
23:               sll          s5, s6, s0
24:               srai         ra, s8, 4
25:               sltiu        s6, t5, -1621
                  ori          s5, t6, 1632
                  slt          s7, s2, zero
                  add          s10, zero, a1
29:               xori         gp, a2, -1218
30:               srai         s10, zero, 11
                  bge          a3, s8, 34f
                  sltu         a6, a7, t6
                  or           s10, t5, s2
34:               lui          ra, 183156
                  auipc        t2, 700830
                  srl          t6, t2, t5
                  add          zero, a4, s0
                  add          s10, s3, a7
                  andi         a1, gp, -1842
                  sub          a6, s0, sp
                  xori         s6, s10, 764
                  addi         s6, s0, 300
                  beq          tp, s11, 44f
44:               bgeu         t5, t0, 52f
                  slli         t6, tp, 31
                  slli         a6, a1, 27
                  sll          s5, a7, sp
                  addi         t0, s9, -768
                  and          a7, t1, t3
                  bne          s0, t1, 54f
                  or           s5, gp, a6
52:               bgeu         s10, a5, 62f
                  beq          s8, s11, 64f
54:               slli         sp, t3, 1
                  and          t5, a7, s4
                  andi         t5, s11, -856
                  lui          t5, 704748
                  sltu         s5, t1, ra
                  sltu         t0, a4, gp
                  auipc        s2, 158210
                  srai         s8, t3, 2
62:               srl          a2, a5, t1
                  beq          t0, tp, 72f
64:               sub          s8, s10, ra
                  or           s0, t0, sp
                  sltiu        s5, ra, -499
                  sltiu        s2, s6, -695
                  bne          s3, t1, 85f
                  add          s3, s4, sp
                  sra          s10, s1, ra
                  sltu         s11, t0, t3
72:               add          a4, s9, t5
                  bgeu         t2, a4, 85f
                  add          s11, a7, a5
                  sll          tp, t3, a2
                  nop
                  slli         s4, t1, 17
                  sltu         s6, zero, s4
                  andi         t6, a5, 1857
                  slti         a6, zero, -1129
                  andi         s11, a0, 685
                  or           s11, s2, zero
                  add          a6, a4, s6
                  or           s9, s6, t0
85:               add          t0, a3, s10
                  bltu         s6, zero, 92f
                  beq          a4, t0, 96f
                  slli         t6, t2, 12
                  sltiu        a6, a6, 354
                  srai         a4, gp, 7
                  blt          gp, a6, 96f
92:               bltu         gp, s10, 93f
93:               or           a1, t4, a4
                  sltu         s8, s10, ra
                  bne          zero, s8, 104f
96:               andi         s9, s8, -1056
                  blt          s1, s9, 104f
                  and          s3, sp, t4
                  andi         ra, s5, -1618
                  slti         s2, t4, -1571
                  bge          t3, sp, 104f
                  and          s3, a1, t6
                  lui          s6, 979039
104:              addi         a2, s6, -299
                  lui          s9, 75675
                  sltu         t3, ra, sp
                  lw           s10, 4(a0)
                  auipc        tp, 439933
                  srai         s5, a4, 9
                  and          s4, a2, s0
                  addi         a0, a0, 24
                  auipc        s0, 576290
                  srli         s5, sp, 20
                  srli         sp, s7, 14
                  slti         t2, a0, 1736
                  srli         t5, a7, 4
169:              addi x12, x26, 0
169:              jalr x12, x12, 0
sub_1:            add          t6, s8, t4
                  bgeu         zero, t6, sub_1_stack_p
                  srl          s3, t4, t6
sub_1_stack_p:    addi         a0, a0, -64
                  nop
                  slt          a7, tp, tp
                  andi         s2, s1, -198
                  slti         a7, s4, 1219
                  sll          s4, s9, s9
                  srli         a7, s2, 22
                  sltu         t0, a2, t0
                  sw           s10, 4(a0)
                  auipc        a7, 459387
                  srai         s10, gp, 0
                  srl          a5, a2, t3
                  auipc        s7, 380812
                  nop
                  sra          s10, t5, s9
sub_1_j3:         jal          s10, sub_2 #jump sub_1 -> sub_2
sub_1_0:          jal          s10, 4f
0:                jal          ra, 5f
1:                jal          a1, 17f
2:                jal          ra, 6f
3:                jal          t5, 8f
4:                jal          ra, 10f
5:                jal          s11, 11f
6:                jal          ra, 13f
7:                jal          s7, 14f
8:                jal          ra, 12f
9:                jal          s9, 0b
10:               jal          ra, 2b
11:               jal          ra, 15f
12:               jal          gp, 1b
13:               jal          a1, 16f
14:               jal          ra, 9b
15:               jal          ra, 3b
16:               jal          a6, 7b
17:               ori          a7, a5, 587
                  bge          s10, s3, 6f
                  add          s10, zero, s9
                  beq          ra, t0, 4f
                  and          t4, t1, t2
4:                addi         a1, a1, 935
                  bltu         zero, s2, 20f
6:                bge          a2, t2, 13f
                  or           sp, a6, s2
                  blt          s6, t4, 24f
                  andi         s9, s1, 1422
                  bltu         s11, a6, 18f
                  sll          s1, sp, gp
                  bne          zero, t6, 32f
13:               andi         s3, sp, -1346
                  xor          s3, a6, t6
                  sra          tp, a5, a2
                  nop
                  sll          zero, s8, a4
18:               slti         tp, s4, -1770
                  bltu         s0, a2, 21f
20:               slli         t5, s11, 17
21:               sltu         t2, s4, s1
                  nop
                  or           a7, t2, a0
24:               nop
                  auipc        zero, 142857
                  sll          t2, s10, s1
                  sll          s4, s10, a2
                  auipc        a1, 595611
                  nop
                  blt          a1, a7, 50f
                  auipc        a6, 326525
32:               add          s10, s5, s3
                  blt          s7, a6, 52f
                  ori          s10, tp, 436
                  slt          a1, t5, a6
                  andi         t6, s2, -438
                  srai         ra, t3, 24
                  sltiu        s8, t5, 1878
                  bge          s1, a5, 57f
                  or           s9, a6, s8
                  or           ra, sp, s8
                  blt          t5, sp, 50f
                  xor          a6, a1, t2
                  sub          a1, a3, s10
                  lui          s9, 747916
                  bltu         s11, s0, 63f
                  ori          a2, t0, -863
                  xor          a2, s10, s8
                  auipc        zero, 654833
50:               ori          a5, a7, -1963
                  bge          s1, a6, 71f
52:               ori          s2, t1, 957
                  sltiu        s0, t0, 2033
                  xor          a2, a1, a7
                  and          zero, s4, a2
                  lui          a5, 543321
57:               add          a1, t2, t6
                  xor          t0, ra, a0
                  nop
                  srl          a5, s3, t1
                  sra          s6, a2, t2
                  xor          gp, t4, t3
63:               bne          s2, tp, 73f
                  srli         s5, t6, 12
                  sll          s6, s9, s2
                  slti         sp, s7, 1728
                  add          t6, t1, s3
                  slt          gp, a4, s2
                  nop
                  slt          a6, t0, s1
71:               slt          tp, s9, a5
                  blt          s9, t4, 81f
73:               and          t2, s5, a6
                  srl          sp, a1, t6
                  addi         s9, a5, -676
                  andi         zero, s5, -1906
                  srli         gp, s6, 23
                  sll          gp, a4, t0
                  lui          gp, 393220
                  sra          gp, t0, s1
81:               sltiu        s5, s5, -1921
                  xor          t0, t2, t4
                  and          zero, t6, t0
                  blt          s1, a2, 85f
85:               add          s1, s11, a4
                  lw           s10, 4(a0)
                  sltiu        t0, s4, 2031
                  addi         s0, a3, -1041
                  andi         t2, s10, -1549
                  sltiu        t6, t3, 1166
                  addi         a0, a0, 64
                  srli         t6, a1, 7
                  nop
                  sltiu        s3, t2, -1748
                  add          a6, gp, s7
                  srl          gp, s3, gp
135:              addi x27, x26, 0
135:              jalr x27, x27, 0
sub_2:            sll          s0, sp, ra
                  srli         gp, s8, 19
                  lui          t2, 648900
                  slti         s6, tp, 1677
                  nop
                  bgeu         s0, t3, sub_2_stack_p
                  sll          ra, t5, a4
sub_2_stack_p:    addi         a0, a0, -8
                  andi         s4, s11, 1730
                  sw           s10, 4(a0)
                  sltiu        a4, s3, 686
                  slti         a4, a1, 1016
                  slti         a4, gp, 1503
                  nop
                  srai         s4, s11, 20
                  sub          t3, s9, gp
                  sub          t0, a2, s9
                  addi         gp, sp, 2032
                  sll          a6, s8, a2
                  sub          t2, s2, t0
                  sltiu        s4, a4, 1588
                  auipc        a4, 276446
sub_2_j4:         jal          s10, sub_3 #jump sub_2 -> sub_3
                  ori          a4, a6, -1957
                  auipc        t6, 59160
                  slli         t6, ra, 20
                  la           gp, sub_5
                  addi         gp, gp, 659
                  ori          s2, s2, -418
                  andi         s6, s4, -134
                  slti         s5, a0, -485
                  sltu         s2, s1, a4
                  beq          a2, s1, sub_2_j5 #branch to jump instr
                  nop
                  slt          s1, a4, a3
                  sltiu        s0, s5, -703
sub_2_j5:         jalr         s10, gp, -658 #jump sub_2 -> sub_5
                  add          a4, a2, s9
                  addi         a7, a1, -583
                  slli         t0, t2, 18
                  auipc        ra, 742325
                  andi         t0, s0, 417
sub_2_j6:         jal          s10, sub_4 #jump sub_2 -> sub_4
                  slt          t4, ra, s3
                  srl          a5, t2, t1
                  xori         sp, a5, -1612
                  add          t3, a5, s8
                  bge          s9, s1, 12f
                  nop
                  xori         s1, a1, -698
                  add          a5, sp, s8
                  srai         s4, t6, 12
                  auipc        a4, 695277
                  auipc        s10, 536915
                  nop
12:               bltu         a4, t3, 28f
                  sra          a5, s11, t6
                  lui          a6, 555615
                  andi         zero, a7, 882
                  ori          t4, s8, -410
                  add          zero, s3, s10
                  bne          gp, t1, 34f
                  blt          s8, s7, 26f
                  xor          ra, gp, a6
                  ori          ra, tp, 1353
                  sltiu        a7, s6, -1230
                  bgeu         s1, s9, 24f
24:               add          t0, t1, t3
                  bne          s6, sp, 31f
26:               srl          a4, a4, s8
                  beq          gp, ra, 34f
28:               nop
                  slli         s8, a2, 0
                  bltu         t3, s2, 34f
31:               sub          t5, a6, s4
                  sltiu        s4, a6, 2042
                  sltiu        gp, sp, -648
34:               slt          t2, a3, s5
                  lw           s10, 4(a0)
                  sub          s6, a6, s10
                  addi         a0, a0, 8
                  slti         ra, s2, -29
                  xori         ra, t0, 1012
83:               addi x14, x26, 1
83:               jalr x14, x14, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x6, x10, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x21, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x21, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x21, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x21, x27, ecall_handler
                  li x27, 0x1
                  beq x21, x27, instr_fault_handler
                  li x27, 0x5
                  beq x21, x27, load_fault_handler
                  li x27, 0x7
                  beq x21, x27, store_fault_handler
                  li x27, 0xc
                  beq x21, x27, pt_fault_handler
                  li x27, 0xd
                  beq x21, x27, pt_fault_handler
                  li x27, 0xf
                  beq x21, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

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
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x10, x6, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
