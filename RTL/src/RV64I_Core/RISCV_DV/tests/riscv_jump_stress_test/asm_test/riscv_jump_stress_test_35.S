.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xd
                  li x2, 0x60599e26
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x1146fc2d
                  li x7, 0x7
                  li x8, 0xf
                  li x9, 0x80000000
                  li x10, 0x5
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x6
                  li x16, 0xffdb5652
                  li x18, 0x369ef56d
                  li x19, 0xff221c58
                  li x20, 0x80000000
                  li x22, 0xb8a19a17
                  li x23, 0x80000000
                  li x24, 0xd
                  li x25, 0x9
                  li x26, 0x68bb1c42
                  li x27, 0xf843791b
                  li x28, 0xfc396f06
                  li x29, 0x2
                  li x30, 0x2e63a063
                  li x31, 0x80000000
                  la x17, user_stack_end
main:             jal          a6, 15f
0:                jal          ra, 26f
1:                jal          t3, 6f
2:                jal          a3, 4f
3:                jal          ra, 23f
4:                jal          ra, 1b
5:                jal          t1, 3b
6:                jal          ra, 0b
7:                jal          ra, 20f
8:                jal          t1, 9f
9:                jal          t1, 10f
10:               jal          t1, 5b
11:               jal          t1, 7b
12:               jal          a5, 13f
13:               jal          t1, 17f
14:               jal          ra, 25f
15:               jal          s9, 19f
16:               jal          ra, 8b
17:               jal          ra, 14b
18:               jal          t3, 2b
19:               jal          ra, 16b
20:               jal          s3, 24f
21:               jal          t1, 12b
22:               jal          ra, 11b
23:               jal          t1, 18b
24:               jal          ra, 27f
25:               jal          t1, 22b
26:               jal          ra, 21b
27:               srli         s9, s8, 30
main_29:          jal          a6, 11f
0:                jal          t1, 8f
1:                jal          s9, 15f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          t1, 14f
5:                jal          ra, 19f
6:                jal          a6, 1b
7:                jal          t1, 5b
8:                jal          ra, 4b
9:                jal          t0, 0b
10:               jal          ra, 16f
11:               jal          s3, 18f
12:               jal          sp, 17f
13:               jal          t2, 20f
14:               jal          ra, 6b
15:               jal          ra, 13b
16:               jal          t1, 7b
17:               jal          ra, 21f
18:               jal          ra, 2b
19:               jal          ra, 9b
20:               jal          s3, 12b
21:               and          s11, sp, a6
main_18:          jal          a6, 8f
0:                jal          ra, 2f
1:                jal          ra, 4f
2:                jal          gp, 1b
3:                jal          t1, 5f
4:                jal          t6, 3b
5:                jal          ra, 9f
6:                jal          ra, 7f
7:                jal          t1, 0b
8:                jal          ra, 10f
9:                jal          gp, 11f
10:               jal          t1, 6b
11:               lui          a2, 583098
main_17:          jal          a6, 5f
0:                jal          sp, 21f
1:                jal          t4, 10f
2:                jal          t1, 16f
3:                jal          t1, 12f
4:                jal          gp, 29f
5:                jal          ra, 26f
6:                jal          ra, 2b
7:                jal          t2, 3b
8:                jal          ra, 0b
9:                jal          t1, 23f
10:               jal          ra, 13f
11:               jal          ra, 18f
12:               jal          ra, 17f
13:               jal          s2, 14f
14:               jal          t1, 4b
15:               jal          t1, 19f
16:               jal          ra, 1b
17:               jal          ra, 15b
18:               jal          ra, 20f
19:               jal          ra, 11b
20:               jal          t1, 27f
21:               jal          t1, 24f
22:               jal          ra, 9b
23:               jal          ra, 25f
24:               jal          s1, 28f
25:               jal          t1, 8b
26:               jal          sp, 22b
27:               jal          sp, 6b
28:               jal          t0, 7b
29:               auipc        s1, 866699
main_14:          jal          a6, 7f
0:                jal          s1, 13f
1:                jal          t1, 10f
2:                jal          t0, 18f
3:                jal          t1, 5f
4:                jal          ra, 17f
5:                jal          t1, 16f
6:                jal          a4, 14f
7:                jal          gp, 1b
8:                jal          s10, 3b
9:                jal          ra, 20f
10:               jal          ra, 0b
11:               jal          a4, 9b
12:               jal          ra, 11b
13:               jal          ra, 4b
14:               jal          s0, 15f
15:               jal          t1, 2b
16:               jal          t2, 12b
17:               jal          ra, 19f
18:               jal          ra, 8b
19:               jal          ra, 6b
20:               sltu         a5, a0, gp
main_3:           jal          a6, 20f
0:                jal          sp, 21f
1:                jal          t1, 16f
2:                jal          ra, 22f
3:                jal          gp, 19f
4:                jal          s6, 3b
5:                jal          t1, 27f
6:                jal          ra, 2b
7:                jal          ra, 5b
8:                jal          s6, 23f
9:                jal          ra, 24f
10:               jal          a1, 26f
11:               jal          ra, 14f
12:               jal          t1, 13f
13:               jal          t3, 1b
14:               jal          ra, 12b
15:               jal          t1, 8b
16:               jal          s11, 25f
17:               jal          t1, 9b
18:               jal          gp, 6b
19:               jal          a2, 10b
20:               jal          ra, 0b
21:               jal          ra, 11b
22:               jal          ra, 7b
23:               jal          ra, 4b
24:               jal          t1, 18b
25:               jal          a5, 15b
26:               jal          gp, 17b
27:               srli         s8, a1, 19
main_21:          jal          a6, 13f
0:                jal          s2, 14f
1:                jal          ra, 2f
2:                jal          t0, 3f
3:                jal          ra, 11f
4:                jal          ra, 0b
5:                jal          ra, 20f
6:                jal          ra, 8f
7:                jal          sp, 12f
8:                jal          t1, 24f
9:                jal          s10, 21f
10:               jal          t4, 6b
11:               jal          t1, 7b
12:               jal          ra, 17f
13:               jal          ra, 9b
14:               jal          ra, 16f
15:               jal          ra, 23f
16:               jal          t1, 15b
17:               jal          ra, 18f
18:               jal          ra, 4b
19:               jal          s8, 1b
20:               jal          s9, 19b
21:               jal          t1, 5b
22:               jal          ra, 10b
23:               jal          t1, 22b
24:               ori          a3, a5, 941
main_4:           jal          a6, 16f
0:                jal          ra, 6f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          ra, 14f
4:                jal          ra, 3b
5:                jal          ra, 23f
6:                jal          t1, 10f
7:                jal          sp, 11f
8:                jal          t1, 12f
9:                jal          t1, 4b
10:               jal          t1, 20f
11:               jal          sp, 1b
12:               jal          t0, 13f
13:               jal          t1, 7b
14:               jal          ra, 5b
15:               jal          ra, 0b
16:               jal          ra, 18f
17:               jal          t1, 24f
18:               jal          ra, 22f
19:               jal          ra, 17b
20:               jal          ra, 26f
21:               jal          t1, 25f
22:               jal          t1, 21b
23:               jal          gp, 15b
24:               jal          ra, 2b
25:               jal          ra, 19b
26:               add          s9, a0, t3
main_13:          jal          a6, 6f
0:                jal          ra, 10f
1:                jal          t1, 27f
2:                jal          t1, 21f
3:                jal          ra, 0b
4:                jal          ra, 14f
5:                jal          ra, 1b
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          a6, 24f
9:                jal          t0, 2b
10:               jal          ra, 15f
11:               jal          s0, 18f
12:               jal          s7, 23f
13:               jal          a4, 19f
14:               jal          t1, 29f
15:               jal          t1, 12b
16:               jal          ra, 5b
17:               jal          s9, 11b
18:               jal          ra, 7b
19:               jal          ra, 25f
20:               jal          ra, 28f
21:               jal          ra, 4b
22:               jal          ra, 8b
23:               jal          ra, 22b
24:               jal          ra, 26f
25:               jal          s6, 20b
26:               jal          ra, 13b
27:               jal          ra, 17b
28:               jal          t5, 16b
29:               slti         t2, s7, -1081
main_0:           jal          a6, 2f
0:                jal          t1, 6f
1:                jal          a0, 4f
2:                jal          ra, 19f
3:                jal          t5, 22f
4:                jal          ra, 5f
5:                jal          s11, 21f
6:                jal          s6, 17f
7:                jal          t1, 12f
8:                jal          ra, 3b
9:                jal          t0, 15f
10:               jal          a0, 0b
11:               jal          ra, 8b
12:               jal          s3, 25f
13:               jal          ra, 26f
14:               jal          t1, 18f
15:               jal          ra, 11b
16:               jal          t1, 14b
17:               jal          ra, 1b
18:               jal          ra, 28f
19:               jal          ra, 13b
20:               jal          t1, 29f
21:               jal          a3, 20b
22:               jal          t1, 23f
23:               jal          t1, 7b
24:               jal          t0, 16b
25:               jal          ra, 24b
26:               jal          t1, 27f
27:               jal          s4, 10b
28:               jal          t1, 30f
29:               jal          ra, 9b
30:               sltiu        s8, t3, 1243
main_5:           jal          a6, 8f
0:                jal          t1, 1f
1:                jal          a0, 4f
2:                jal          ra, 10f
3:                jal          ra, 0b
4:                jal          gp, 12f
5:                jal          s1, 6f
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          ra, 2b
9:                jal          ra, 11f
10:               jal          ra, 5b
11:               jal          ra, 3b
12:               jal          gp, 13f
13:               or           a3, a5, s10
main_31:          jal          a6, 1f
0:                jal          ra, 19f
1:                jal          ra, 7f
2:                jal          ra, 17f
3:                jal          s10, 23f
4:                jal          ra, 20f
5:                jal          t1, 3b
6:                jal          ra, 4b
7:                jal          ra, 13f
8:                jal          t1, 18f
9:                jal          ra, 21f
10:               jal          t5, 15f
11:               jal          a6, 22f
12:               jal          ra, 0b
13:               jal          t0, 11b
14:               jal          ra, 24f
15:               jal          ra, 8b
16:               jal          t0, 6b
17:               jal          t1, 10b
18:               jal          gp, 12b
19:               jal          ra, 14b
20:               jal          ra, 9b
21:               jal          ra, 2b
22:               jal          t1, 5b
23:               jal          ra, 16b
24:               slli         a5, s9, 16
main_8:           jal          a6, 3f
0:                jal          ra, 4f
1:                jal          ra, 2f
2:                jal          t1, 11f
3:                jal          ra, 1b
4:                jal          ra, 8f
5:                jal          a1, 13f
6:                jal          ra, 5b
7:                jal          ra, 9f
8:                jal          ra, 10f
9:                jal          a0, 6b
10:               jal          ra, 12f
11:               jal          ra, 0b
12:               jal          t1, 7b
13:               xor          s1, a2, s9
main_16:          jal          a6, 6f
0:                jal          ra, 8f
1:                jal          ra, 11f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          t0, 1b
5:                jal          t1, 2b
6:                jal          t1, 4b
7:                jal          ra, 10f
8:                jal          t0, 3b
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          ra, 0b
12:               jal          t0, 13f
13:               srai         t3, s9, 0
main_10:          jal          a6, 14f
0:                jal          ra, 9f
1:                jal          ra, 15f
2:                jal          t1, 1b
3:                jal          ra, 12f
4:                jal          s6, 5f
5:                jal          t6, 2b
6:                jal          ra, 10f
7:                jal          s4, 11f
8:                jal          ra, 0b
9:                jal          t1, 3b
10:               jal          ra, 8b
11:               jal          ra, 4b
12:               jal          ra, 13f
13:               jal          s2, 7b
14:               jal          ra, 6b
15:               or           s8, a5, zero
main_30:          jal          a6, 9f
0:                jal          t1, 8f
1:                jal          ra, 5f
2:                jal          t1, 20f
3:                jal          ra, 1b
4:                jal          s8, 17f
5:                jal          ra, 12f
6:                jal          ra, 0b
7:                jal          ra, 4b
8:                jal          t1, 2b
9:                jal          gp, 13f
10:               jal          s10, 14f
11:               jal          s3, 3b
12:               jal          s2, 10b
13:               jal          s2, 15f
14:               jal          ra, 7b
15:               jal          s8, 11b
16:               jal          t1, 6b
17:               jal          ra, 19f
18:               jal          t1, 16b
19:               jal          ra, 18b
20:               add          a6, a5, a1
main_15:          jal          a6, 4f
0:                jal          t0, 21f
1:                jal          t1, 8f
2:                jal          t1, 19f
3:                jal          ra, 12f
4:                jal          gp, 1b
5:                jal          ra, 2b
6:                jal          ra, 7f
7:                jal          t1, 25f
8:                jal          t1, 10f
9:                jal          ra, 24f
10:               jal          ra, 11f
11:               jal          ra, 5b
12:               jal          ra, 15f
13:               jal          ra, 3b
14:               jal          ra, 20f
15:               jal          ra, 14b
16:               jal          ra, 18f
17:               jal          a3, 6b
18:               jal          s6, 22f
19:               jal          ra, 13b
20:               jal          s3, 23f
21:               jal          t4, 9b
22:               jal          ra, 0b
23:               jal          ra, 16b
24:               jal          a5, 17b
25:               sltiu        s10, a1, 1669
main_27:          jal          a6, 1f
0:                jal          ra, 6f
1:                jal          s2, 7f
2:                jal          ra, 5f
3:                jal          ra, 8f
4:                jal          s2, 0b
5:                jal          ra, 12f
6:                jal          ra, 10f
7:                jal          ra, 2b
8:                jal          ra, 11f
9:                jal          t1, 13f
10:               jal          ra, 14f
11:               jal          ra, 9b
12:               jal          t1, 3b
13:               jal          s2, 4b
14:               jal          ra, 15f
15:               slti         t6, s8, -1791
main_22:          jal          a6, 8f
0:                jal          s3, 29f
1:                jal          s4, 14f
2:                jal          ra, 25f
3:                jal          ra, 26f
4:                jal          t2, 21f
5:                jal          ra, 7f
6:                jal          t1, 5b
7:                jal          ra, 4b
8:                jal          t1, 12f
9:                jal          gp, 27f
10:               jal          ra, 6b
11:               jal          t5, 0b
12:               jal          t1, 3b
13:               jal          ra, 17f
14:               jal          a3, 2b
15:               jal          ra, 13b
16:               jal          ra, 22f
17:               jal          ra, 16b
18:               jal          ra, 19f
19:               jal          gp, 30f
20:               jal          t1, 9b
21:               jal          t1, 1b
22:               jal          ra, 24f
23:               jal          ra, 11b
24:               jal          s0, 23b
25:               jal          a5, 15b
26:               jal          ra, 20b
27:               jal          t1, 28f
28:               jal          ra, 10b
29:               jal          ra, 18b
30:               srai         s4, a6, 27
main_24:          jal          a6, 18f
0:                jal          s10, 15f
1:                jal          ra, 4f
2:                jal          ra, 0b
3:                jal          ra, 14f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          a6, 13f
7:                jal          ra, 22f
8:                jal          t1, 10f
9:                jal          ra, 2b
10:               jal          ra, 3b
11:               jal          t1, 23f
12:               jal          ra, 21f
13:               jal          ra, 12b
14:               jal          t3, 6b
15:               jal          ra, 7b
16:               jal          ra, 1b
17:               jal          ra, 20f
18:               jal          ra, 17b
19:               jal          s9, 9b
20:               jal          ra, 19b
21:               jal          ra, 16b
22:               jal          t4, 8b
23:               slti         s1, s6, -1753
main_6:           jal          a6, 20f
0:                jal          s1, 10f
1:                jal          ra, 12f
2:                jal          t1, 9f
3:                jal          a1, 18f
4:                jal          ra, 8f
5:                jal          t1, 17f
6:                jal          ra, 5b
7:                jal          s7, 15f
8:                jal          gp, 21f
9:                jal          ra, 11f
10:               jal          ra, 23f
11:               jal          ra, 14f
12:               jal          ra, 3b
13:               jal          t1, 0b
14:               jal          a4, 13b
15:               jal          t1, 6b
16:               jal          t1, 19f
17:               jal          ra, 22f
18:               jal          ra, 7b
19:               jal          t1, 4b
20:               jal          ra, 1b
21:               jal          t5, 2b
22:               jal          t1, 16b
23:               lui          s10, 72822
main_28:          jal          a6, 15f
0:                jal          t1, 7f
1:                jal          ra, 19f
2:                jal          t1, 12f
3:                jal          s11, 8f
4:                jal          t1, 0b
5:                jal          ra, 21f
6:                jal          t1, 11f
7:                jal          t1, 6b
8:                jal          ra, 14f
9:                jal          t0, 3b
10:               jal          s2, 20f
11:               jal          a1, 17f
12:               jal          ra, 10b
13:               jal          ra, 16f
14:               jal          sp, 18f
15:               jal          a1, 1b
16:               jal          t0, 2b
17:               jal          ra, 13b
18:               jal          ra, 4b
19:               jal          ra, 9b
20:               jal          gp, 5b
21:               ori          a5, t1, -789
main_25:          jal          a6, 6f
0:                jal          ra, 2f
1:                jal          ra, 22f
2:                jal          ra, 13f
3:                jal          ra, 7f
4:                jal          ra, 26f
5:                jal          ra, 25f
6:                jal          ra, 20f
7:                jal          ra, 0b
8:                jal          ra, 21f
9:                jal          ra, 19f
10:               jal          ra, 15f
11:               jal          s10, 12f
12:               jal          t5, 9b
13:               jal          ra, 24f
14:               jal          t1, 11b
15:               jal          ra, 17f
16:               jal          t1, 14b
17:               jal          sp, 4b
18:               jal          ra, 3b
19:               jal          t1, 10b
20:               jal          ra, 5b
21:               jal          ra, 1b
22:               jal          ra, 23f
23:               jal          ra, 16b
24:               jal          t1, 8b
25:               jal          ra, 18b
26:               xor          a6, s8, t0
                  addi         s4, s6, 462
                  srli         zero, t3, 28
                  or           s10, t1, s8
                  or           a5, a1, s11
                  add          a6, sp, t6
                  bltu         t3, ra, 20f
                  sll          a2, t6, a2
                  xori         a0, s6, -1640
                  blt          sp, sp, 22f
                  sub          zero, s10, t3
                  slti         sp, s0, -1540
                  bne          t1, s10, 29f
                  srl          s10, t0, a6
                  and          s3, s8, zero
                  srli         s2, ra, 6
                  sub          t2, s8, t2
                  nop
main_19:          jal          a6, 13f
0:                jal          ra, 3f
1:                jal          ra, 0b
2:                jal          ra, 14f
3:                jal          t1, 12f
4:                jal          t0, 1b
5:                jal          t1, 7f
6:                jal          ra, 2b
7:                jal          t1, 10f
8:                jal          ra, 9f
9:                jal          ra, 5b
10:               jal          ra, 6b
11:               jal          s0, 4b
12:               jal          ra, 8b
13:               jal          s0, 11b
14:               add          s4, s1, t3
                  and          a1, a0, t4
                  andi         s9, a1, -1621
                  slti         s6, t0, -2011
20:               bltu         s9, a5, 29f
                  srai         s1, s8, 2
22:               sra          s8, gp, s7
                  beq          s11, t4, 39f
                  beq          s4, t4, 25f
25:               bltu         sp, s8, 27f
                  sll          s7, a5, s3
27:               srai         a4, t3, 26
                  auipc        s6, 976693
29:               bgeu         a4, s4, 42f
                  bltu         s2, s10, 43f
                  addi         s0, t0, -543
main_23:          jal          a6, 1f
0:                jal          ra, 6f
1:                jal          a0, 7f
2:                jal          ra, 10f
3:                jal          s1, 0b
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          ra, 4b
7:                jal          ra, 8f
8:                jal          t1, 5b
9:                jal          ra, 3b
10:               slli         ra, a7, 5
                  sub          t2, tp, s8
                  sra          s0, t0, s11
                  slt          s7, sp, a7
                  sub          s8, s10, s7
                  slt          s11, s9, t3
                  xori         t1, a4, -673
                  xor          t6, zero, a5
39:               andi         s11, t3, 134
                  ori          s7, a2, -1864
                  andi         t1, s3, -1567
42:               sll          s2, s2, sp
43:               or           zero, t0, t6
                  xor          s0, s6, t2
                  bltu         a1, t0, 65f
                  sll          ra, a3, t4
                  bgeu         s6, ra, 62f
                  nop
                  slli         t1, s2, 0
                  sltu         t1, s1, gp
                  bltu         s8, s9, 68f
                  slti         a0, a7, -1707
                  sra          zero, t5, a2
                  addi         s8, t3, 1742
                  bltu         sp, s0, 66f
                  beq          s11, s1, 60f
                  sltu         t1, s7, a4
                  srai         s4, s3, 15
                  or           a4, s9, s5
60:               slti         a6, s3, -373
                  bne          a2, a5, 69f
62:               beq          a3, a1, 73f
                  bne          s6, a0, 83f
                  blt          s8, s1, 69f
65:               sub          sp, zero, a7
66:               bltu         t2, sp, 75f
                  xor          gp, s1, a0
68:               srli         s4, a2, 1
69:               beq          s0, s10, 72f
                  sll          t2, a1, s7
                  blt          s6, t1, 73f
72:               bgeu         a2, a6, 74f
73:               auipc        a0, 139266
74:               bne          s5, t2, 89f
75:               nop
                  and          a1, s5, s4
                  bltu         s4, t1, 87f
                  ori          s9, s6, -1594
                  slli         t1, t4, 7
                  auipc        s7, 78803
                  bne          a3, a2, 97f
                  nop
83:               lui          t0, 468578
                  auipc        s8, 255872
                  sub          s8, a3, gp
                  sra          t1, t6, a0
87:               auipc        t3, 114088
                  sll          a2, s9, a6
89:               andi         a1, t0, 82
                  ori          s2, s3, 1464
                  sra          t6, a7, s10
main_12:          jal          a6, 7f
0:                jal          ra, 1f
1:                jal          ra, 2f
2:                jal          t1, 3f
3:                jal          ra, 12f
4:                jal          t1, 11f
5:                jal          ra, 8f
6:                jal          ra, 0b
7:                jal          t1, 5b
8:                jal          a0, 9f
9:                jal          ra, 4b
10:               jal          t1, 13f
11:               jal          ra, 6b
12:               jal          a2, 10b
13:               slli         s6, s2, 25
                  and          s3, s1, a0
                  srl          a2, t1, s3
                  xor          t5, s8, tp
                  bne          zero, a3, 102f
                  nop
97:               srl          a2, a5, t3
                  sll          s8, zero, s7
                  sltu         s7, zero, t0
                  sub          a4, s4, s9
                  lui          ra, 244992
102:              bltu         t1, s7, 108f
                  bgeu         ra, s7, 122f
                  slt          a2, t5, zero
                  bge          s0, s4, 123f
                  sub          s6, tp, s3
                  add          s4, t1, a1
108:              sub          s2, sp, a3
main_11:          jal          a6, 20f
0:                jal          s10, 15f
1:                jal          a3, 2f
2:                jal          ra, 3f
3:                jal          ra, 0b
4:                jal          t1, 10f
5:                jal          a6, 17f
6:                jal          ra, 19f
7:                jal          s9, 5b
8:                jal          ra, 25f
9:                jal          t6, 13f
10:               jal          t2, 12f
11:               jal          t1, 14f
12:               jal          a2, 26f
13:               jal          t1, 21f
14:               jal          ra, 23f
15:               jal          a2, 22f
16:               jal          ra, 8b
17:               jal          s10, 4b
18:               jal          ra, 6b
19:               jal          t1, 24f
20:               jal          ra, 1b
21:               jal          ra, 18b
22:               jal          gp, 16b
23:               jal          ra, 7b
24:               jal          ra, 11b
25:               jal          ra, 9b
26:               and          s11, a5, t5
                  srl          s11, t5, s1
                  lui          a2, 9921
                  or           a6, s10, s2
                  add          t5, t6, ra
                  sub          s7, ra, s2
                  srai         a4, s0, 13
                  bne          a0, a2, 128f
                  xori         s1, s10, 105
                  bne          t2, t3, 131f
                  bge          t2, s10, 127f
                  sltiu        s2, s3, -275
                  bltu         s8, a0, 122f
                  slt          s8, t3, s3
122:              bge          s9, s8, 140f
123:              bgeu         a2, a3, 136f
                  nop
                  srai         a5, gp, 30
                  sll          s2, a0, s9
127:              auipc        t2, 9987
128:              srli         a6, a4, 12
                  ori          t0, a3, 155
                  ori          t4, s5, -674
131:              lui          t1, 362492
                  slt          ra, a0, gp
                  sra          a6, s8, tp
                  addi         s0, gp, 1706
                  srl          a1, a6, s5
136:              sll          a2, a6, s10
                  and          s6, a5, a5
                  bltu         t6, a3, 142f
                  bne          zero, sp, 159f
140:              bne          s2, s2, 150f
                  srl          a0, gp, sp
142:              srai         s6, s0, 4
                  and          ra, s6, a7
                  bltu         s2, tp, 146f
                  bltu         ra, a2, 153f
146:              beq          t2, s0, 157f
                  srai         ra, s2, 23
                  bltu         s6, ra, 153f
                  auipc        s9, 836453
150:              nop
                  add          s3, a6, t1
                  andi         a6, t1, 1492
153:              sltu         a1, t1, a3
                  andi         s2, s8, -1526
                  andi         t1, t3, -1280
                  lui          a5, 526593
157:              auipc        a4, 667748
                  beq          tp, a7, 164f
159:              beq          s10, zero, 166f
                  sub          s3, tp, a3
                  sra          zero, s6, s10
                  bltu         t2, a7, 165f
                  srai         a0, t0, 23
164:              sltu         s0, a4, s9
165:              beq          zero, a1, 185f
166:              auipc        s9, 120043
                  bgeu         s5, s3, 168f
168:              blt          sp, tp, 184f
                  bgeu         s8, s6, 185f
                  srli         t2, t3, 25
                  slti         zero, a1, -1939
                  xori         s8, s4, -446
                  xor          s9, t1, zero
                  or           s7, t2, a4
                  sltu         zero, t5, a1
                  bge          ra, tp, 191f
                  xor          t2, tp, s0
                  add          a1, a1, ra
                  sltiu        t2, a1, -949
                  blt          tp, tp, 199f
                  srli         a6, t2, 22
                  sra          t5, s0, sp
                  srl          a0, s4, s5
184:              bne          t2, t4, 201f
185:              sltu         s7, a5, t2
                  lui          s2, 592709
                  lui          a3, 64878
                  slt          t2, sp, s1
                  or           t3, sp, a3
                  slt          t6, t4, s0
191:              sub          s2, s7, t1
                  xor          a0, s3, a6
                  sra          s3, a5, a3
                  slli         a0, sp, 8
                  sra          s1, s5, t5
                  sll          s6, s7, sp
                  sub          s8, s6, s0
                  xor          s10, s10, a4
199:              srli         a5, t0, 23
                  sra          t4, s1, a0
201:              sub          zero, s4, a4
                  addi         ra, a4, 1058
                  add          s7, a2, a7
                  srl          a1, s2, s3
                  slti         gp, s4, -625
                  nop
                  bne          s0, t1, 222f
                  andi         s9, a3, -1687
                  sra          a1, s3, s9
                  slti         t2, t5, 536
                  bge          a1, s3, 220f
                  or           s6, s5, s7
                  and          zero, a2, a1
                  bge          a7, t5, 225f
                  auipc        s0, 947061
                  slt          zero, s3, s9
                  sub          s10, a6, t4
                  xor          s9, a0, s6
                  ori          s6, t5, -1375
220:              xori         a0, gp, -346
                  bltu         t6, s11, 234f
222:              xor          s3, t4, s0
                  auipc        s9, 702862
                  slti         s8, zero, -13
225:              bne          a7, s10, 243f
                  sltu         a6, zero, s4
                  or           s6, tp, a0
                  bge          a2, ra, 230f
                  sltiu        a3, ra, 1814
230:              srl          s2, t4, a0
                  xori         a4, s9, 1957
                  slt          s0, s0, tp
                  nop
234:              blt          s0, a7, 247f
                  sltiu        s10, a1, -622
                  slti         ra, t3, 1065
                  srli         gp, t2, 4
                  add          t5, a4, a5
                  sll          sp, a7, ra
                  blt          sp, a1, 255f
                  srl          a5, a2, s4
                  lui          ra, 496293
243:              or           t0, t0, ra
                  slt          s0, ra, s8
                  srl          s0, a7, s0
                  sra          s11, a4, t5
247:              andi         ra, s4, -1277
                  lui          t0, 418566
                  blt          s9, a6, 267f
                  srl          s8, tp, s4
                  lui          s9, 616760
                  and          t1, s4, a6
                  bgeu         s6, a6, 264f
                  slli         s11, s4, 16
255:              auipc        s2, 1027567
                  slli         s3, a4, 23
                  sltiu        a0, a0, 628
                  and          t4, gp, s5
                  blt          s1, a4, 265f
                  ori          zero, a1, -308
                  or           s8, t4, s4
                  nop
                  srl          zero, a5, a2
264:              andi         s4, sp, 1203
265:              srai         t6, s0, 20
                  sll          ra, ra, s7
267:              srl          a1, ra, a5
                  andi         s8, sp, 968
                  and          a2, a2, s11
                  sub          sp, ra, a0
                  sra          gp, a3, s7
                  bgeu         sp, t0, 281f
                  bne          s1, a2, 287f
                  sub          a0, a5, zero
                  bne          s0, s1, 284f
                  bge          t4, t3, 287f
                  srli         sp, s3, 29
                  nop
                  sll          s2, a3, t1
                  and          t6, a0, t3
281:              bltu         s3, s3, 284f
                  or           t6, a2, a5
                  sub          t5, s8, t4
284:              or           s4, a6, sp
                  lui          s7, 3900
                  nop
287:              bne          t2, gp, 295f
                  srl          a0, t4, s9
                  xori         ra, ra, 1185
                  bge          s0, t6, 306f
                  bgeu         t6, t3, 304f
                  blt          a2, sp, 294f
                  bgeu         t0, t4, 308f
294:              andi         t4, s10, 1727
295:              slti         sp, a1, 971
                  or           a3, s0, a6
                  xor          a3, a6, s4
                  nop
                  lui          s2, 844294
                  lui          s11, 976613
                  srai         t3, a6, 26
                  srai         s11, s9, 9
                  bge          a7, a3, 308f
304:              xor          s8, a4, t5
                  nop
306:              xori         s8, s5, 644
                  slli         t6, s2, 30
308:              sltu         t5, t2, t4
                  bge          a6, s8, 324f
                  srl          t2, s0, s11
                  addi         s6, a6, -135
                  nop
                  addi         zero, t3, 326
                  auipc        sp, 944541
                  lui          ra, 231101
                  xor          a4, s10, tp
                  bge          tp, s5, 334f
                  blt          a3, s3, 337f
                  bltu         zero, a0, 332f
                  ori          a3, t1, -395
                  sll          s11, s4, s7
                  or           t3, a3, t5
                  slti         a6, t3, -1202
324:              xor          s10, a6, s5
                  sll          gp, s2, a1
                  blt          s4, s3, 327f
327:              and          t6, t0, s2
                  slli         a1, s7, 22
                  addi         sp, a5, -747
                  ori          a2, s3, 1998
                  srl          a1, t1, a0
332:              blt          s1, a2, 339f
                  sltiu        s4, a7, -684
334:              srl          sp, t5, s2
                  bge          s2, s4, 350f
                  lui          t3, 398031
337:              bge          a6, ra, 339f
                  beq          a4, t0, 340f
339:              bge          a2, s1, 359f
340:              auipc        sp, 930455
                  xori         s7, gp, 104
                  slt          s6, a1, a4
                  or           s11, a4, a7
                  blt          t0, a1, 348f
                  sltiu        s7, s8, 682
                  srl          s10, t5, s1
                  bltu         t1, s6, 363f
348:              srl          a1, a3, s11
                  lui          a4, 847320
350:              or           t4, a6, s2
                  andi         s4, s11, 1003
                  auipc        s4, 779198
                  or           s2, a5, s11
                  andi         s4, s10, 1313
                  add          a0, a2, t0
                  bltu         ra, a7, 376f
                  xori         t6, s10, 1230
                  sub          s3, s5, a1
359:              sub          a6, s10, s1
                  slt          a0, s6, tp
                  add          t1, a5, s4
                  slt          t3, s9, t6
363:              bltu         s7, t6, 373f
                  lui          t2, 950821
                  ori          s11, gp, -156
                  blt          a1, a0, 384f
                  or           s2, a7, s8
                  ori          sp, s8, -1601
                  and          s7, a7, t0
                  sub          s6, s8, t4
                  slt          sp, s5, t6
                  and          t1, s1, t5
373:              bne          s11, s3, 386f
                  ori          s3, t2, -1548
                  ori          a4, s2, -1374
376:              addi         a5, s11, 506
                  beq          t6, a5, 390f
                  slli         a1, s10, 21
                  slli         ra, s4, 1
                  bgeu         a7, s1, 386f
                  beq          s5, a1, 399f
                  sltiu        ra, s0, -1390
                  srl          s6, a5, s1
384:              lui          a0, 748171
                  addi         a1, s9, 1250
386:              blt          s2, a7, 402f
                  slt          a0, ra, s11
                  and          s10, t3, t4
                  ori          a6, t2, 441
390:              and          s0, s2, t1
                  slli         a0, t0, 14
                  add          s8, a7, t4
                  srai         s3, t2, 8
                  or           s1, s1, t1
                  srai         s1, a7, 20
                  xor          s11, s7, sp
                  auipc        s1, 648017
                  sltu         s1, a2, a6
399:              bltu         t3, a4, 402f
                  sltu         a1, t0, a4
                  or           s8, t2, s3
402:              ori          s4, ra, 898
                  srl          t5, t2, s5
main_1:           jal          a6, 8f
0:                jal          ra, 5f
1:                jal          t1, 2f
2:                jal          ra, 11f
3:                jal          ra, 6f
4:                jal          t1, 3b
5:                jal          ra, 1b
6:                jal          ra, 12f
7:                jal          t4, 9f
8:                jal          a0, 10f
9:                jal          t1, 0b
10:               jal          t1, 7b
11:               jal          ra, 4b
12:               nop
                  sra          t0, a5, tp
                  srai         s4, t0, 0
                  and          t3, tp, s8
                  and          a4, s4, t5
                  or           s7, t3, s7
                  beq          s0, s2, 427f
                  nop
                  bne          a6, s3, 413f
                  beq          a7, s11, 431f
413:              srli         ra, a4, 10
                  add          s7, ra, tp
                  slli         s10, a6, 17
                  bge          t6, t6, 425f
                  slt          s4, a0, s1
                  sltu         a0, s6, gp
                  andi         t2, s0, -1705
                  sra          a4, s3, t0
                  lui          s6, 663659
                  srai         sp, s3, 17
                  lui          t4, 667282
                  blt          a4, s11, 434f
425:              srli         a1, t6, 8
                  sll          a2, t1, a0
                  sub          gp, s9, a1
                  la           a4, sub_1
                  sll          s4, s9, s5
                  addi         a4, a4, 665
                  nop
                  addi         t4, a3, -1176
                  sltiu        t2, a5, 1019
                  blt          t0, a6, main_j1 #branch to jump instr
                  sra          s9, s4, s10
main_j1:          jalr         a6, a4, -664 #jump main -> sub_1
427:              andi         a2, t5, 1400
                  nop
                  bne          a2, t2, 444f
                  srli         s10, t6, 14
431:              sub          a4, zero, t3
                  sltu         s3, a5, gp
                  sra          t5, t6, s0
434:              bgeu         s5, t2, 450f
                  sltiu        t6, t4, 1123
                  and          t0, a4, s6
                  srl          s0, tp, s3
                  sub          s11, a7, ra
                  sra          t3, tp, s0
                  bge          s10, s9, 454f
                  slli         sp, s4, 3
                  ori          a6, ra, 722
                  auipc        s6, 791342
444:              sub          t3, s1, zero
                  or           a0, s2, s1
                  slli         a0, s3, 21
                  sll          a4, t1, s8
                  slli         s9, t5, 16
                  srai         sp, s2, 23
450:              or           a1, s10, sp
                  slli         a5, s2, 27
                  bltu         a5, gp, 460f
                  bge          gp, s11, 466f
454:              auipc        s2, 726107
                  slli         a0, s10, 18
                  sra          s6, a2, s11
                  slti         s9, a4, 1965
                  sltiu        zero, s2, 425
                  sub          s6, s4, a3
460:              slti         t3, a4, -44
                  blt          t0, ra, 463f
                  sltiu        s7, s1, -201
463:              srli         ra, s4, 26
                  sra          s6, s4, t6
                  sltiu        t1, a2, -770
466:              bgeu         a4, a0, 477f
                  beq          a2, s0, 487f
                  sub          s4, a5, tp
                  srli         s8, s6, 23
                  bne          t6, sp, 487f
                  sub          s2, s7, s4
                  sra          s10, t6, s10
                  srl          a2, a1, s10
                  lui          a0, 107916
                  beq          a6, t0, 477f
                  blt          t0, a2, 496f
477:              beq          a0, s7, 484f
                  add          s7, a2, t2
                  lui          s0, 730334
                  auipc        a0, 396239
                  xori         s7, s3, -857
                  bge          s10, tp, 491f
                  ori          t1, s3, 1654
484:              sltu         s4, tp, tp
                  bne          t2, sp, 496f
                  srl          s11, t1, s1
487:              slti         a6, s4, 1212
                  slti         s3, t0, -1138
                  or           t0, zero, a1
                  bge          t4, t4, 491f
491:              beq          a3, a2, 504f
                  blt          zero, s8, 507f
                  andi         t0, s9, 20
                  sltu         zero, tp, t0
                  blt          s1, s2, 499f
496:              andi         s3, t0, -281
                  bge          t1, s2, 502f
                  sra          gp, s7, s0
499:              sltiu        s7, s3, 1604
                  sltiu        t0, tp, -835
                  addi         a5, a1, -1710
502:              ori          s0, s6, 1533
                  bne          s7, t2, 518f
504:              andi         a4, s1, -105
                  or           t2, a4, s8
                  and          zero, gp, s9
507:              slt          a2, zero, a3
                  andi         t2, a7, 20
                  bgeu         tp, zero, 529f
                  bgeu         zero, t2, 523f
                  srl          gp, a2, t2
                  or           t3, s5, s11
                  srai         a3, a6, 1
                  slt          s2, s8, ra
                  sltiu        a3, s7, 93
                  auipc        s3, 915631
                  srl          gp, s5, s10
518:              bge          t2, a7, 527f
                  bne          a6, a6, 539f
                  sll          t6, t5, a4
                  srai         s9, t4, 13
                  ori          zero, s5, 444
523:              add          t3, s8, t2
                  sub          s11, s6, s2
                  addi         a6, t5, 686
                  srl          s1, sp, a5
527:              add          t4, sp, s4
                  sub          t4, s0, s2
529:              srli         a5, tp, 29
                  srl          ra, s3, s4
                  lui          a6, 893077
                  andi         s6, zero, 739
                  srai         s6, t2, 29
                  bltu         s10, ra, 548f
                  addi         t2, s6, 1881
                  bltu         s6, s10, 540f
                  sll          s6, tp, a0
                  bltu         a4, s10, 540f
539:              bltu         s0, a2, 552f
540:              bge          s4, tp, 558f
                  lui          s10, 343712
                  xor          s9, tp, a2
                  sub          s6, t4, ra
                  xor          s3, a5, tp
                  and          a2, sp, a2
                  bne          tp, t5, 561f
                  ori          t3, s0, 1931
548:              bne          a4, s0, 567f
                  sra          a6, gp, s11
                  slti         s6, s5, 823
                  and          a4, s5, a3
552:              and          t2, a6, s2
                  beq          t3, s11, 569f
                  bgeu         gp, tp, 570f
                  xor          s6, s3, a7
                  add          t1, s1, t0
                  sub          s7, a5, s7
558:              addi         s0, a2, 362
                  sltu         gp, s1, t1
                  slli         s3, s7, 11
561:              srl          gp, a3, s0
                  sltu         s1, s11, t5
                  or           s11, gp, s10
                  lui          a6, 253406
                  add          s3, a0, s10
                  addi         t1, ra, -1365
567:              beq          tp, t5, 576f
                  beq          s0, s2, 583f
569:              sll          s1, t5, a5
570:              slti         s4, s10, -516
                  bge          t6, s3, 588f
                  bgeu         t1, a0, 577f
                  andi         t0, a1, 1393
                  slt          a2, t2, t4
                  slt          a2, a2, sp
576:              or           t5, s2, tp
577:              xor          sp, a5, t4
                  andi         s8, s6, 1280
                  beq          s8, a3, 582f
                  sltu         s2, a5, a1
                  nop
582:              and          s6, a4, t0
583:              srli         a0, s6, 31
                  bge          t3, a6, 592f
                  xori         t3, s8, -1607
                  blt          s7, t0, 588f
                  nop
588:              bgeu         ra, t1, 601f
                  blt          s0, s4, 591f
                  srli         a1, a2, 22
591:              sll          t0, s1, t2
592:              bgeu         t1, t5, 607f
                  srai         zero, a5, 5
                  bge          sp, tp, 600f
                  bgeu         a5, a0, 613f
                  beq          s9, t2, 597f
597:              bltu         ra, a0, 608f
                  bltu         a3, s10, 605f
                  beq          t2, s1, 609f
600:              srl          a3, t6, t3
601:              slti         zero, s7, 976
                  addi         sp, t6, 573
                  blt          ra, s9, 614f
                  sll          s7, s10, t6
605:              srai         s3, s2, 0
                  slti         s1, s3, -384
607:              sub          a6, ra, t6
608:              srli         a2, tp, 21
609:              slti         a6, ra, -1099
                  sra          zero, t4, t3
                  add          t3, a7, s6
                  bge          ra, t4, 630f
613:              bge          a3, s3, 629f
614:              blt          s2, s11, 623f
                  nop
                  andi         t4, s4, -137
                  srai         s9, s4, 2
                  nop
                  andi         a3, t3, 2012
                  bgeu         t3, s9, 629f
                  addi         s3, s9, 53
                  sll          s4, s8, tp
623:              sltiu        t3, t6, 144
                  slti         s9, t4, 1088
                  auipc        t4, 145690
                  sltu         s4, t3, a5
                  addi         t5, a7, 1521
                  and          t4, s7, sp
629:              nop
630:              nop
                  slti         a4, s1, 1253
                  srli         s6, t1, 4
                  sltiu        s4, s5, -791
                  slli         t3, s10, 15
                  sll          sp, s6, t2
                  srl          s4, zero, gp
                  or           s3, s8, a7
                  andi         s10, a7, 809
                  srli         s8, a2, 9
                  bltu         s5, s10, 646f
                  sub          zero, gp, s3
                  xor          ra, s3, t3
                  andi         a2, gp, 268
                  sltiu        t5, s7, 1978
                  beq          a1, s6, 647f
646:              bltu         gp, a3, 654f
647:              xori         t3, gp, 1578
                  srai         t1, t3, 12
                  bltu         a7, ra, 654f
                  nop
                  sub          t3, t3, a2
                  nop
                  andi         gp, s3, -677
654:              bltu         a4, ra, 672f
                  or           a0, gp, s0
                  blt          a7, t0, 667f
                  xor          s7, s4, a5
                  and          s10, zero, s10
                  sra          t3, t4, s9
                  srl          s10, a6, t3
                  sltiu        t4, sp, 1389
                  srli         t3, s0, 11
                  auipc        s3, 247115
                  sub          s8, ra, s0
                  blt          s1, gp, 672f
                  blt          t6, gp, 667f
667:              sub          zero, a5, a7
                  nop
                  sra          s8, gp, zero
                  srl          t6, s4, a4
                  add          s11, a1, s0
672:              auipc        s2, 657510
                  and          zero, s11, s3
                  slli         s4, tp, 22
                  and          a6, a0, sp
                  bne          gp, t0, 678f
                  xori         t0, s0, -1288
678:              sra          a1, a3, t2
                  ori          t5, t2, 1691
                  slt          s8, s0, a6
                  slli         a0, t2, 11
                  ori          t6, s11, 1897
                  and          s7, tp, s7
                  addi         t0, gp, 653
                  ori          ra, s10, -1682
                  srli         t1, t3, 11
                  sltiu        zero, a7, -89
                  andi         s3, a2, 1611
                  and          s0, a0, s3
                  xor          gp, s11, s8
                  sltu         t0, a0, s7
                  slti         a6, s5, -589
                  sltiu        s0, gp, 1845
                  sltu         a1, a2, tp
main_26:          jal          a6, 10f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          t1, 1b
3:                jal          ra, 5f
4:                jal          t1, 9f
5:                jal          sp, 15f
6:                jal          s2, 4b
7:                jal          ra, 0b
8:                jal          t1, 7b
9:                jal          t1, 3b
10:               jal          ra, 14f
11:               jal          ra, 13f
12:               jal          ra, 8b
13:               jal          ra, 12b
14:               jal          ra, 2b
15:               addi         s9, s6, -666
                  sltiu        a5, s2, 1244
                  bge          zero, a4, 706f
                  blt          t4, s1, 716f
                  sltu         s9, s0, a7
                  or           a4, s1, t0
                  bltu         s9, s3, 715f
                  or           t2, ra, s10
                  addi         s11, a2, 1170
                  bge          a4, s3, 719f
                  srl          s9, ra, t0
                  add          a0, t6, t0
706:              sll          a5, a5, a0
                  lui          sp, 1004458
                  and          s9, a2, s11
                  srai         s8, s9, 31
                  sltiu        t0, ra, -1895
                  slli         t4, s1, 29
                  and          s9, t4, t3
                  addi         t4, s9, 820
                  addi         a5, s8, -1651
715:              srli         t6, t4, 21
716:              xor          s3, a4, t2
                  andi         s1, gp, 340
                  slli         t4, a4, 2
719:              xor          s9, s3, s1
                  and          zero, s0, t0
                  sltiu        s0, s9, -173
                  bge          s7, a1, 735f
                  blt          s2, t6, 734f
                  xori         a4, s9, 194
                  sltiu        s2, t5, -219
                  blt          s3, s1, 740f
                  sra          s4, gp, s6
                  sra          s4, s5, s8
                  sll          s2, s10, a3
                  srli         s4, ra, 25
                  add          s0, a6, t1
                  srli         s1, t1, 3
                  bge          s1, s8, 753f
734:              nop
735:              bge          ra, t0, 738f
                  sltiu        t1, t1, 1913
                  slti         a5, a2, 1107
738:              srli         a6, s2, 25
                  beq          s6, s11, 743f
740:              lui          a0, 32521
                  srai         s6, s7, 18
                  slti         a3, a6, 1478
743:              or           s11, t3, t0
                  sub          a3, t5, a3
                  blt          a7, t2, 760f
                  xor          s9, s7, s7
                  xor          a0, s4, t4
                  bge          a5, a5, 765f
                  bge          sp, s2, 764f
                  slt          s10, s9, a7
                  bne          s1, tp, 771f
                  auipc        t5, 447129
753:              or           t0, t5, t5
                  slti         a5, a2, 873
                  srli         t3, t1, 26
                  addi         s4, a4, -1059
                  blt          s11, a0, 770f
                  srai         gp, s0, 27
                  blt          a5, gp, 761f
760:              srai         ra, s1, 25
761:              sra          s9, a5, s9
                  xori         s11, s5, 1555
                  sltu         gp, a6, ra
764:              sra          t3, sp, s6
765:              srl          s11, t5, ra
                  nop
                  srai         s3, s3, 9
                  sltiu        t5, ra, -1564
                  xori         t6, tp, -87
770:              bgeu         s1, a0, 783f
771:              addi         s11, a3, -174
                  srai         a6, a0, 30
                  beq          t6, t3, 782f
                  sll          a1, s10, s3
                  bne          s6, s4, 791f
                  blt          s7, s6, 794f
                  blt          t6, s6, 785f
                  bne          t2, t5, 791f
                  auipc        a0, 202495
                  beq          t1, t4, 793f
                  slt          a6, ra, s2
782:              bne          t0, s4, 793f
783:              nop
                  sub          s9, s11, tp
785:              add          s8, zero, s2
                  sub          a2, a5, s7
                  sub          s2, s8, gp
                  ori          ra, t2, -615
                  sltu         s0, a0, t2
                  andi         s7, s8, -1235
791:              ori          gp, a5, 1245
                  sltu         s1, a7, s11
793:              bltu         tp, ra, 808f
794:              add          t4, s2, tp
                  bne          s2, s0, 797f
                  or           gp, s3, s5
797:              bgeu         t2, s9, 810f
                  slt          t2, s4, t3
                  srli         s4, a5, 3
                  blt          a4, a1, 820f
                  bge          a7, tp, 819f
                  addi         gp, t2, 1712
                  bltu         s2, s4, 818f
                  bne          a4, s4, 819f
                  bgeu         a0, s11, 808f
                  bne          a5, a0, 808f
                  sub          s3, a4, s4
808:              addi         t1, s2, 964
                  bltu         s1, t4, 816f
810:              beq          a3, s1, 827f
                  sra          s0, t0, s8
                  bltu         tp, a4, 818f
                  sub          t4, s6, t5
                  add          s1, s0, a4
                  andi         a2, a0, 153
816:              slli         zero, t3, 31
                  slt          a2, a7, a1
818:              blt          zero, s5, 837f
819:              sltu         s4, s2, a6
820:              xori         t5, s5, -726
                  slt          t5, s5, s1
                  bge          zero, s0, 831f
                  srli         s3, tp, 24
                  beq          t5, t1, 835f
                  slli         ra, a7, 7
                  srai         s3, s1, 0
827:              sub          t4, s1, a6
                  nop
                  slli         t4, s4, 17
                  addi         t3, t3, 372
831:              srai         sp, s7, 4
                  bne          a7, s9, 834f
                  srl          s1, s9, tp
834:              addi         sp, sp, -117
835:              or           a1, tp, s4
                  blt          a4, t5, 850f
837:              sra          s1, s3, s7
                  slli         t5, gp, 5
                  and          t2, s2, sp
                  srai         t3, t1, 11
                  nop
                  sub          t5, s4, s2
                  srai         a4, s11, 23
                  add          s3, sp, t3
                  or           t6, s5, t1
                  xori         t2, s9, -113
                  xor          ra, s3, a1
                  andi         s9, t6, -1159
                  add          s1, s9, a5
850:              srai         t6, t2, 25
                  blt          a0, s5, 855f
                  bgeu         t0, t1, 862f
                  xori         s6, s4, -1315
                  bne          t3, s3, 855f
855:              ori          s3, s10, 95
                  bne          sp, s8, 861f
                  srl          a6, s11, t2
                  slt          t6, s1, t3
                  srli         a3, t3, 23
                  slli         sp, tp, 26
861:              slli         gp, s11, 6
862:              and          a1, a1, zero
                  addi         t0, tp, 345
                  sll          sp, s0, s3
                  bne          s10, s2, 885f
                  srai         s4, t0, 4
                  slli         sp, s3, 30
                  srli         s7, a4, 31
                  or           s11, s4, s5
                  lui          t5, 576049
                  slli         s0, s6, 22
                  auipc        s2, 251017
                  sub          sp, s2, s8
                  bne          s7, s10, 890f
                  ori          t0, a0, -932
                  addi         s9, t2, -861
                  sra          a4, s1, s11
                  beq          t2, t2, 893f
                  sra          s3, s4, s7
                  bge          gp, s4, 895f
                  sll          gp, t1, ra
                  xor          a1, a4, t1
                  andi         s10, t4, 656
                  auipc        a3, 321744
885:              srl          s8, a5, s3
                  sra          s2, zero, s2
                  ori          a1, s4, 1080
                  ori          s6, s4, -1239
                  slt          t6, t0, sp
890:              addi         s0, zero, 1619
                  auipc        a4, 12999
                  bge          t4, s6, 901f
893:              xor          gp, s9, t3
                  slti         a1, a3, -88
895:              add          t2, s1, t3
                  sra          s1, ra, s10
                  bge          s6, a7, 917f
                  xor          t0, a3, a2
                  slli         t6, s1, 12
                  bge          a3, a5, 916f
901:              srai         s10, a0, 0
                  sltiu        sp, a5, 1089
                  ori          a2, zero, -223
                  addi         s0, zero, -1552
                  bgeu         s0, t0, 910f
                  or           a2, s11, a6
                  srl          s9, t5, a7
                  slt          t4, s4, s0
                  sub          s10, tp, s3
910:              sll          a6, s10, sp
                  addi         sp, sp, 252
                  ori          s11, t2, 965
                  sll          gp, a5, sp
                  slti         t3, t4, -33
                  slli         s2, s4, 29
916:              add          s7, s7, s11
917:              or           ra, s9, t2
                  slt          t1, tp, tp
                  bne          a3, t5, 920f
920:              slt          t0, s7, s1
                  xori         t3, a7, -1473
                  andi         t3, s8, -527
                  bne          s0, zero, 933f
                  sra          s8, sp, zero
                  bltu         a1, sp, 938f
                  bgeu         s8, t1, 928f
                  ori          t1, zero, 1732
928:              srai         t1, t0, 16
                  sub          s6, tp, s4
                  slt          t2, s8, s3
                  srli         s0, t6, 17
                  lui          t6, 732834
933:              or           t5, zero, s9
                  sub          sp, s1, t2
                  slli         gp, t1, 22
                  lui          s4, 497617
                  srai         a5, t3, 11
938:              beq          a3, ra, 947f
                  nop
                  xori         t1, t5, 185
                  sltu         zero, s9, a0
                  auipc        a2, 819582
                  sra          zero, a5, t4
                  blt          sp, gp, 952f
                  slli         a2, s8, 25
                  and          gp, t6, t3
947:              bgeu         s10, sp, 951f
                  ori          t4, s1, 1551
                  or           s8, zero, a5
                  bge          t0, s1, 967f
951:              srai         s7, a1, 15
952:              blt          gp, s3, 967f
                  nop
                  bne          t2, s10, 972f
                  and          t4, sp, a1
                  and          a4, a0, t3
                  sltiu        s10, t3, 837
                  bne          s4, sp, 960f
                  slti         zero, t5, 13
960:              srli         ra, s1, 5
                  add          a4, s8, a7
                  or           sp, t6, a4
                  srl          zero, t4, t4
                  srl          t0, gp, s0
                  or           a0, gp, gp
                  sltu         s7, s3, tp
967:              sra          gp, a2, t3
                  bgeu         sp, a1, 984f
                  xor          a6, a1, s0
                  ori          s9, s3, 409
                  blt          t2, ra, 982f
972:              addi         t1, t3, -1963
                  lui          s3, 684712
                  addi         a2, a1, -371
                  xor          s9, t6, tp
                  nop
                  sra          sp, s6, tp
                  sll          a5, a5, t5
                  blt          s9, s0, 992f
                  ori          t3, ra, -1973
                  bne          t0, a1, 988f
982:              auipc        t1, 787702
                  nop
984:              bltu         t2, t6, 997f
                  bge          ra, s8, 999f
                  andi         s6, t3, 966
                  bgeu         t0, s11, 1007f
988:              sub          t6, zero, t0
                  addi         s11, t4, -203
                  add          t0, sp, s10
                  or           a0, sp, s2
992:              sub          s4, sp, ra
                  sra          s4, s2, a6
                  nop
                  addi         s6, a4, 1311
                  slli         t0, t4, 14
997:              srai         t1, s2, 13
                  lui          a1, 465599
999:              bgeu         a2, s11, 1005f
                  or           s10, tp, s5
                  srli         s10, s1, 7
                  addi         gp, gp, -715
                  sub          t6, s3, ra
                  slti         gp, ra, -1914
1005:             lui          zero, 61183
                  sra          s9, tp, s5
1007:             bltu         ra, ra, 1009f
                  slli         t3, s6, 9
1009:             and          s8, t5, s0
                  xor          s10, a3, t3
                  auipc        t6, 455400
                  nop
                  bne          a5, a7, 1032f
                  nop
                  sltu         a6, s2, s10
                  ori          s9, a5, -582
                  and          t4, t5, s8
                  bgeu         ra, s3, 1029f
                  sltiu        sp, t5, 571
                  nop
                  andi         a3, a5, -308
                  addi         s0, s5, 1651
                  sltiu        gp, tp, 1976
                  addi         t4, tp, -1319
                  or           t1, t2, ra
                  bge          zero, a5, 1044f
                  sub          t4, t5, t0
                  sltu         s1, s2, s10
1029:             and          t6, a1, tp
                  xori         s11, s0, 1798
                  bge          s11, t3, 1034f
1032:             bgeu         sp, s2, 1036f
                  slt          a5, zero, t6
1034:             slli         t2, s9, 10
                  andi         t4, s8, 104
1036:             slt          s7, t4, t0
                  bgeu         t6, a4, 1054f
                  ori          a5, a2, -1883
                  sltiu        s2, s1, -1106
                  sltu         t0, a2, a1
                  xori         s0, a2, -1485
                  slti         t2, a4, -449
                  bge          a2, s2, 1045f
1044:             srl          a2, s4, ra
1045:             auipc        s11, 762372
                  sub          s3, a4, s2
                  xori         zero, s3, -543
                  ori          ra, s2, 851
                  beq          t3, zero, 1068f
                  xori         t5, a2, -1546
                  srl          t5, sp, t1
                  beq          s2, a4, 1067f
                  xor          a2, s1, s1
1054:             slli         t4, a4, 15
                  sll          a2, t0, s10
                  srli         s4, a3, 14
                  or           a5, t6, s0
                  bge          s9, s9, 1069f
                  auipc        a0, 393762
                  sra          s0, a6, s4
                  add          s6, s4, t2
                  xor          a4, s0, t6
                  slti         t0, a6, 1096
                  or           t6, a6, a7
                  bge          tp, s11, 1067f
                  auipc        s0, 1022932
1067:             sub          s2, zero, a0
1068:             sltu         a1, t3, gp
1069:             and          a0, a3, a2
                  xor          a5, s3, a2
                  slt          a5, s7, a7
                  nop
                  sll          s10, s3, a4
                  slli         s10, s0, 14
                  nop
                  auipc        s0, 549188
                  nop
                  srai         s8, s0, 17
                  blt          a6, t6, 1095f
                  add          a6, ra, a3
                  srai         a3, a3, 30
                  slti         s9, t4, 838
                  andi         s8, s10, -1552
                  addi         a2, s10, 1392
main_20:          jal          a6, 1f
0:                jal          ra, 4f
1:                jal          ra, 10f
2:                jal          ra, 5f
3:                jal          ra, 2b
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          t1, 11f
8:                jal          ra, 3b
9:                jal          t1, 0b
10:               jal          a4, 6b
11:               srl          a1, s1, s2
                  and          s6, s9, ra
                  slt          ra, a0, a5
                  ori          s2, s11, 1547
                  add          t1, s5, s9
                  slt          s9, a4, t6
                  bltu         a4, tp, 1101f
                  bge          s11, a7, 1104f
                  sltiu        t4, t5, -1594
                  xori         s6, t1, -962
                  bltu         ra, s10, 1112f
1095:             sltu         a4, a7, zero
                  beq          t1, s1, 1101f
                  srai         t4, s8, 11
                  lui          a2, 175485
                  xori         t2, s7, -390
                  sub          s8, s9, t6
1101:             auipc        a5, 515286
                  add          t2, a0, s6
                  and          sp, s0, s5
1104:             bne          s1, t3, 1117f
                  sltiu        s10, tp, 1886
                  srl          t5, a5, a0
                  sll          ra, s0, t5
                  bne          t4, tp, 1123f
                  srai         t2, a6, 21
                  bltu         a5, s2, 1123f
                  sub          t1, s1, t4
1112:             add          t6, t5, zero
                  srli         a5, a3, 0
                  lui          s6, 443847
                  blt          s4, a5, 1124f
                  srai         ra, s3, 21
1117:             auipc        t0, 769429
                  slti         s6, t2, -390
                  xor          s10, a3, a3
                  ori          s4, s10, 1769
                  or           t4, s9, s9
                  slt          s1, s11, ra
1123:             sll          s7, s1, s5
1124:             nop
                  lui          s1, 592619
                  sra          s0, a7, a5
                  slt          s2, s6, a2
                  slli         t4, a4, 18
                  xori         a3, a2, -447
                  sub          a4, s4, t5
                  xor          s3, s0, t3
                  beq          t0, s7, 1142f
                  bge          tp, a3, 1147f
                  beq          zero, t5, 1135f
1135:             nop
                  slti         sp, zero, 340
                  slli         s10, s9, 12
                  srli         s2, s6, 15
                  slli         a6, a4, 18
                  nop
                  bltu         a2, a5, 1144f
1142:             bgeu         a7, s4, 1149f
                  add          a3, s6, a0
1144:             and          s7, t3, s4
                  and          a2, s9, s5
                  add          t4, t2, a5
1147:             sltiu        a2, a1, 1956
                  sltu         gp, a3, zero
1149:             srli         a5, t1, 6
                  and          s9, a2, sp
                  sltiu        a6, gp, 1352
                  andi         s1, a4, 702
                  slti         a1, s0, -1711
                  srai         ra, s9, 26
                  slti         s9, s6, -1678
                  bge          s11, a0, 1174f
                  and          s8, a5, t6
                  srl          a0, t3, s3
                  xori         t6, s8, 273
                  beq          t6, t0, 1176f
                  and          s6, a7, tp
                  xori         s9, s7, -664
                  auipc        a0, 769923
                  lui          t6, 323439
                  and          t6, s11, s8
                  sra          s1, t6, s7
                  bne          a6, s6, 1187f
                  lui          t5, 755523
                  bne          s9, tp, 1175f
                  slti         t6, s9, -759
                  xori         a4, t0, 262
                  sub          a6, s7, t0
                  srli         a3, a3, 10
1174:             sra          s3, s5, s6
1175:             addi         a6, s2, 1376
1176:             slli         t3, a6, 31
                  bltu         t5, sp, 1185f
                  addi         a0, zero, -754
                  srli         s8, ra, 8
                  bgeu         t0, t6, 1195f
                  sra          zero, a5, ra
                  bge          a3, a7, 1184f
                  srli         s8, s0, 12
1184:             auipc        s10, 475382
1185:             sub          a1, a6, s11
                  sub          a1, ra, s9
1187:             or           a5, s2, a4
                  sll          sp, t6, a3
                  ori          s11, s1, 883
                  and          a2, tp, s10
                  sll          a6, a1, s8
                  xor          s0, a4, ra
                  bltu         ra, tp, 1213f
                  andi         t0, s6, -1818
1195:             addi         a4, s5, -1921
                  xor          t0, t4, a0
                  sub          sp, t6, s2
                  andi         s10, a6, 1828
                  lui          s10, 797732
                  nop
                  sra          a4, a5, a6
                  or           s6, t1, t4
                  and          sp, t4, s0
                  lui          gp, 320032
                  ori          s6, t0, -848
                  beq          s10, s10, 1215f
                  nop
                  xori         s4, t1, 1084
                  srl          t1, t1, s1
                  andi         s10, t4, -48
                  sub          s9, t3, s5
                  slti         a6, s4, -1863
1213:             ori          t2, t4, -2032
                  blt          s2, s9, 1225f
1215:             srai         s8, s4, 23
                  xor          s1, a5, s5
                  srai         a4, t6, 29
                  srli         a4, tp, 22
                  srli         sp, t0, 12
                  slt          s3, s9, t5
                  blt          a2, a0, 1224f
                  sra          t4, s9, ra
                  xori         s7, t4, 1052
1224:             bge          t1, s6, 1239f
1225:             slti         t5, s8, 1779
                  sra          s1, t2, s3
                  sltiu        s6, a6, 1328
                  or           a2, s11, s9
                  andi         t3, s0, -1065
                  add          s3, a3, a1
                  bgeu         a7, s11, 1251f
                  xori         t1, s9, 1068
                  slli         t3, a1, 4
                  sub          t3, t4, gp
                  sltiu        t0, s10, -673
                  and          gp, a2, s5
                  xori         s10, s0, 1747
                  andi         t6, a6, 699
1239:             xor          t0, a3, s5
                  and          ra, s0, s6
                  lui          t3, 72551
                  addi         t6, s8, 1642
                  sra          t6, t2, a4
                  xor          s11, s10, a0
                  bgeu         s7, zero, 1264f
                  sra          s9, s11, tp
                  srl          t4, s11, t6
                  nop
                  slt          zero, a7, s8
                  or           a3, gp, a0
1251:             slli         a6, t0, 26
                  bltu         t4, gp, 1265f
                  bne          s10, sp, 1262f
                  ori          s9, a5, -221
                  bgeu         s10, zero, 1268f
                  bltu         s9, a0, 1262f
                  sltu         sp, a5, t1
                  or           a0, t3, s8
                  sltiu        t0, s7, 1255
                  addi         s4, a6, 810
                  or           s1, gp, s5
1262:             srai         t6, s6, 21
                  xor          t0, a2, s8
1264:             bltu         t0, t3, 1268f
1265:             sltu         t4, s9, t4
                  nop
                  sltiu        t3, a3, -1349
1268:             sltu         a0, t2, s3
                  addi         s6, s11, -1303
                  beq          a4, a1, 1283f
                  slli         sp, t0, 21
                  andi         s3, a7, 387
                  xori         a2, s1, -1861
                  srli         a2, a4, 28
                  ori          s3, s6, -1153
                  xori         ra, sp, 1893
                  beq          s11, s8, 1285f
                  bgeu         ra, a4, 1294f
                  bltu         zero, gp, 1296f
                  sra          t4, a1, s6
                  ori          t5, s10, 38
                  srli         s11, zero, 11
1283:             slli         t3, ra, 26
                  xor          zero, s0, a1
1285:             slli         s0, a1, 3
                  srl          s6, sp, s11
                  sub          s10, s0, s1
                  slt          s8, ra, s3
                  sltiu        a0, s8, -441
                  lui          s1, 640436
                  blt          s4, t1, 1292f
1292:             sub          t3, s6, s10
                  sra          s6, t5, tp
1294:             sltu         s11, a3, t4
                  ori          a5, s10, -678
1296:             bne          s5, s8, 1303f
                  srl          t1, a0, s5
                  slt          a2, t3, gp
                  bne          s4, s11, 1309f
                  xor          s9, tp, t2
                  slt          ra, a6, a6
                  sltu         s6, a6, a1
1303:             or           s8, t2, s8
                  sltu         t0, s10, gp
                  or           a6, t1, s0
                  bge          t0, s7, 1324f
                  and          a6, a6, sp
                  nop
1309:             auipc        a5, 464021
                  ori          a5, a4, -1146
                  xori         a2, zero, -1026
                  bne          a4, t0, 1330f
                  nop
                  bge          t6, t5, 1319f
                  beq          t5, sp, 1317f
                  nop
1317:             and          a0, s3, s7
                  sra          s0, gp, s2
1319:             beq          ra, t3, 1335f
                  xori         t0, s8, 1816
                  and          a0, a0, sp
                  xori         a1, t1, -1341
                  add          t4, t4, t0
1324:             sltu         a4, s4, t0
                  xori         s7, tp, 1074
                  auipc        s10, 928412
                  slti         a3, a7, -1745
                  sltu         s6, sp, s4
                  nop
1330:             andi         s8, ra, -134
                  sltu         gp, t2, sp
                  add          t5, s7, tp
                  sub          t4, a7, a4
                  bltu         s10, s9, 1348f
1335:             bne          s1, sp, 1355f
                  or           s11, a7, t2
                  or           s7, a7, s0
                  bge          s10, s9, 1353f
                  nop
                  addi         gp, s2, 1624
                  slt          s11, t2, t4
                  andi         s7, s4, 1409
                  srli         a1, s1, 29
                  and          s8, s5, zero
                  sub          a2, a4, tp
                  bne          s0, t2, 1355f
                  xor          s6, t1, s5
1348:             and          t3, s4, s7
                  slt          t1, s11, sp
                  auipc        s10, 597547
                  bgeu         s8, s5, 1366f
                  auipc        s6, 1045638
1353:             bgeu         t0, t6, 1355f
                  andi         ra, a6, -874
1355:             andi         a6, t6, 865
                  ori          t4, s1, 975
                  sra          s0, s3, s1
                  slli         s6, t5, 10
                  beq          t2, a5, 1370f
                  sltiu        s1, s11, -1737
                  blt          s7, zero, 1363f
                  auipc        zero, 592782
1363:             sll          s0, a2, a7
                  and          t4, a4, s1
                  xori         ra, t6, -115
1366:             slti         a4, a5, 146
                  bge          a4, s1, 1380f
                  andi         a3, s8, 1384
                  bge          ra, s10, 1372f
1370:             or           t6, t5, s11
                  andi         a1, s2, 1058
1372:             bne          t5, a2, 1383f
                  blt          a7, t5, 1393f
                  nop
                  sltu         s3, s4, t1
                  sltiu        a6, s2, -775
                  beq          s8, s6, 1395f
                  bge          t1, t1, 1391f
                  andi         gp, a3, -1899
1380:             bltu         a1, a2, 1386f
                  bgeu         a3, ra, 1392f
                  blt          t5, a1, 1389f
1383:             slti         t4, sp, 1752
                  add          s3, a4, ra
                  sltiu        t4, a2, 417
1386:             beq          s6, t4, 1402f
                  sltu         a3, s4, s3
                  sll          s1, sp, s1
1389:             bge          a3, s0, 1398f
                  add          a5, s6, ra
1391:             lui          a0, 152564
1392:             srl          t5, s10, s0
1393:             slt          s10, s4, s1
                  sll          s7, a0, s1
1395:             beq          a0, sp, 1413f
                  lui          a3, 7059
                  or           s10, a1, gp
1398:             bgeu         t0, s2, 1400f
                  xor          a5, s1, sp
1400:             bne          s8, a4, 1413f
                  beq          t5, a6, 1420f
1402:             blt          sp, a1, 1417f
                  beq          t6, s0, 1408f
                  lui          s0, 501307
                  lui          ra, 445900
                  sltu         sp, s0, a6
                  or           gp, t6, t3
1408:             bltu         t4, t5, 1423f
                  slli         s11, s11, 0
                  sltu         s4, s4, t5
                  bltu         a3, a0, 1425f
                  addi         s4, s9, 1481
1413:             sra          s0, a7, t3
                  bgeu         s2, s0, 1434f
                  auipc        s4, 448785
                  ori          sp, t2, 1626
1417:             sra          sp, s0, s7
                  blt          s5, s7, 1420f
                  or           a2, t5, a2
1420:             addi         a1, t5, -581
                  bne          t0, s7, 1429f
                  slli         s6, a7, 9
1423:             bltu         a1, s0, 1439f
                  auipc        s0, 53300
1425:             bge          a3, a1, 1440f
                  slt          t1, s10, a3
                  sub          s10, t3, a1
                  blt          sp, t1, 1438f
1429:             slt          s9, a6, tp
                  sub          a1, s2, s6
                  auipc        a2, 483646
                  slti         t5, s2, 736
                  beq          s5, a5, 1435f
1434:             ori          s0, a0, -1994
main_2:           jal          a6, 1f
0:                jal          t1, 6f
1:                jal          s2, 9f
2:                jal          t1, 10f
3:                jal          ra, 8f
4:                jal          ra, 7f
5:                jal          t1, 2b
6:                jal          t1, 3b
7:                jal          ra, 5b
8:                jal          ra, 4b
9:                jal          ra, 0b
10:               sub          s8, gp, a7
1435:             blt          s5, s2, 1444f
                  slti         ra, s4, 334
                  addi         s0, s3, 852
1438:             bne          tp, s8, 1439f
1439:             sub          t0, t4, ra
1440:             bne          ra, a0, 1444f
main_7:           jal          a6, 12f
0:                jal          ra, 20f
1:                jal          a4, 8f
2:                jal          ra, 10f
3:                jal          ra, 17f
4:                jal          ra, 0b
5:                jal          gp, 16f
6:                jal          ra, 13f
7:                jal          ra, 15f
8:                jal          ra, 14f
9:                jal          ra, 24f
10:               jal          ra, 6b
11:               jal          ra, 3b
12:               jal          ra, 22f
13:               jal          ra, 11b
14:               jal          ra, 4b
15:               jal          ra, 9b
16:               jal          ra, 7b
17:               jal          ra, 21f
18:               jal          ra, 23f
19:               jal          ra, 5b
20:               jal          t2, 2b
21:               jal          a1, 19b
22:               jal          ra, 18b
23:               jal          ra, 1b
24:               or           s2, zero, t4
                  sub          a0, t3, s9
                  add          a1, s9, t2
                  beq          a7, t4, 1460f
1444:             or           a2, ra, a5
                  sltiu        t0, zero, -1011
                  sltiu        s3, a2, -957
                  bne          s5, a1, 1463f
                  ori          a4, tp, 933
                  lui          a3, 951725
                  auipc        a6, 470483
                  addi         gp, t3, 982
                  beq          sp, gp, 1472f
                  nop
                  beq          s2, sp, 1464f
                  addi         s0, s4, 211
                  or           gp, a5, s10
                  andi         zero, t4, 260
                  or           s6, s0, s7
                  sltu         a3, t2, a7
1460:             srli         s0, t2, 8
                  or           s3, t2, a5
                  and          a0, a2, s1
1463:             blt          s3, a4, 1481f
1464:             xori         t1, gp, 273
                  sra          t6, s11, t6
                  nop
                  sll          a0, t3, t3
                  xor          a1, s7, s5
                  bltu         a4, t2, 1483f
                  sltu         a5, s9, a4
                  sll          s0, a6, t2
1472:             auipc        s6, 505951
                  sra          a4, a0, t2
                  slt          t6, a6, a2
                  nop
                  slti         a4, s11, 1138
                  slt          ra, a7, t3
                  sltiu        s11, a1, -1943
                  sub          ra, a7, t2
                  slt          a0, s10, a0
1481:             andi         a4, t4, -505
                  slli         a0, t3, 30
1483:             sll          s11, sp, s11
                  slt          a2, s10, t6
                  srli         t1, s1, 28
                  sra          gp, s9, a0
                  bge          a5, s10, 1491f
                  srai         s6, t4, 4
                  addi         s2, t2, -523
                  sub          t6, a6, t1
1491:             bne          s1, s5, 1498f
                  addi         t6, a6, 213
                  srli         a5, t0, 23
                  srli         a2, s5, 0
                  slt          a0, s6, t0
                  or           s7, a7, a4
                  add          s0, s6, gp
1498:             auipc        t0, 15427
                  bltu         a1, a4, 1510f
                  sub          t3, gp, s0
                  add          s3, a1, s10
                  slli         s10, tp, 30
                  or           s4, t6, tp
                  srai         a3, a3, 31
                  xor          t1, sp, s10
                  srl          s10, tp, t2
                  auipc        s0, 653856
                  sub          t0, a6, a0
                  ori          zero, t6, -1003
1510:             andi         t1, s6, 1714
                  blt          gp, ra, 1512f
1512:             slti         a0, ra, -1438
                  slt          a3, s8, t1
                  sll          s10, s1, s4
                  slli         zero, s2, 1
                  srli         s0, a1, 28
                  bne          s5, s7, 1520f
                  bne          s4, s9, 1538f
                  add          a4, t2, t0
1520:             xor          s1, t6, tp
                  srli         a3, t1, 2
                  ori          t2, t0, 1672
                  srli         a4, a1, 10
                  bgeu         s6, t3, 1540f
                  xori         t4, a0, -612
                  lui          t6, 336119
                  bge          zero, s1, 1542f
                  srli         t3, a3, 30
                  xori         s4, s7, -507
                  slt          s10, a3, t1
                  auipc        s8, 277437
                  srai         t1, zero, 21
                  and          a3, s10, s7
                  bgeu         s3, t2, 1543f
                  bltu         a2, s10, 1552f
                  xor          a6, a6, a5
                  bgeu         a5, t0, 1542f
1538:             xori         t4, gp, 1117
                  addi         ra, s9, -1643
1540:             xor          sp, a4, a3
                  andi         a1, a4, 135
1542:             lui          t4, 65639
1543:             auipc        t2, 410179
                  xori         sp, t3, -435
                  slt          s2, t1, s3
                  auipc        s0, 706327
                  lui          a5, 79689
                  blt          s4, s11, 1550f
                  sra          s4, t0, t3
1550:             ori          a6, s3, -479
                  bgeu         sp, s8, 1562f
1552:             sll          s4, t4, s0
                  auipc        s11, 611210
                  srai         t0, s6, 28
                  lui          s0, 936780
                  beq          s8, zero, 1574f
                  nop
                  addi         s9, s8, 2017
                  addi         t4, t5, 363
                  srl          s1, t4, s3
                  sll          a2, s2, sp
1562:             beq          s2, s10, 1575f
                  andi         t0, tp, 984
                  bne          tp, tp, 1572f
                  xor          t3, s10, s10
                  slt          s9, a2, t6
                  nop
                  ori          s8, t0, -192
                  sltiu        t5, s1, 35
                  slti         s4, zero, -379
                  xor          t6, t2, s1
1572:             beq          zero, a1, 1587f
                  or           s2, a5, t5
1574:             slt          a4, ra, t5
1575:             add          s2, zero, s5
                  sltiu        a3, tp, 751
                  blt          t1, s3, 1586f
                  and          a2, s7, tp
                  xori         t6, a5, -1135
                  srli         a5, s9, 17
                  sub          a3, t3, a1
                  addi         s3, s1, -383
                  slt          a5, a3, a3
                  add          t4, s2, t5
                  sll          s4, s0, s6
1586:             addi         a1, a2, -325
1587:             sub          a4, s4, a7
                  or           s2, t6, a7
                  sub          t4, tp, t4
                  bgeu         t6, s8, 1603f
                  blt          s7, sp, 1593f
                  slti         sp, s2, 1032
1593:             xor          s10, s2, zero
                  slti         a5, t2, -940
                  slt          s7, t1, t1
                  addi         s7, a2, 318
                  xori         gp, tp, -1310
                  sll          s10, zero, ra
                  or           gp, s8, a2
                  srai         a6, zero, 6
                  or           a4, sp, sp
                  slli         s8, t6, 2
1603:             andi         t4, s8, 300
                  nop
                  slti         t3, a5, 1606
                  bgeu         s1, a2, 1612f
                  blt          t5, ra, 1609f
                  sll          t4, t5, zero
1609:             ori          a4, a4, -1402
                  sra          a2, t6, a0
                  add          s11, zero, t2
1612:             slti         s7, s9, -1864
                  nop
                  srl          s7, a7, t1
                  blt          s1, s2, 1630f
                  and          s0, s5, t6
                  bge          s7, a7, 1630f
                  xor          s6, a0, tp
                  bltu         gp, s4, 1630f
                  and          s3, gp, s7
                  add          s2, s5, a7
                  sltiu        t0, s11, 894
                  add          s6, zero, s10
                  slti         t0, s0, 156
                  andi         s11, a7, -867
                  xori         t0, a1, -1574
                  bgeu         s11, tp, 1630f
                  srai         a4, t1, 27
                  srai         t0, t3, 18
1630:             lui          zero, 286839
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a7, a7, -44
                  slli         t2, s3, 28
                  srai         a0, t2, 31
                  and          a1, a6, tp
                  slti         s10, s5, 734
                  slli         t4, sp, 19
                  sw           a6, 4(a7)
                  addi         a5, s11, -1034
                  sra          s2, s11, t0
                  slli         a1, s2, 5
                  sra          a6, zero, ra
                  la           s3, sub_5
                  sub          a1, t5, sp
                  addi         s3, s3, 508
                  srli         t2, t6, 19
                  slt          a1, s6, t4
                  bltu         t0, t5, sub_2_j4 #branch to jump instr
                  sltu         a5, t0, s5
                  and          a4, t4, a1
sub_2_j4:         jalr         a6, s3, -508 #jump sub_2 -> sub_5
                  auipc        a2, 601863
                  la           s4, sub_3
                  ori          s11, tp, -1738
                  or           a5, s8, a5
                  addi         s4, s4, -758
                  add          gp, t2, s7
                  srli         a1, a3, 17
sub_2_j5:         jalr         a6, s4, 759 #jump sub_2 -> sub_3
                  auipc        s4, 607401
                  or           t1, s4, gp
                  sltu         a0, tp, t4
                  sll          t2, t1, t5
                  lui          s11, 342701
                  lui          t5, 281406
                  sll          t2, s6, s4
                  lui          s8, 218154
                  srli         a5, t2, 26
                  srl          s1, tp, s10
sub_2_j6:         jal          a6, sub_4 #jump sub_2 -> sub_4
                  ori          gp, a4, 622
                  add          ra, a1, s7
                  bgeu         s6, t1, sub_2_j7 #branch to jump instr
                  slti         t3, t1, 72
                  srl          s11, s11, s6
                  slti         gp, t2, -1661
                  srai         a2, s6, 17
                  add          s6, s10, s11
                  lui          s1, 697987
                  add          a1, a2, a0
sub_2_j7:         jal          a6, sub_5 #jump sub_2 -> sub_5
sub_2_1:          jal          a6, 14f
0:                jal          ra, 24f
1:                jal          ra, 4f
2:                jal          t0, 11f
3:                jal          ra, 19f
4:                jal          t1, 17f
5:                jal          s3, 12f
6:                jal          t1, 20f
7:                jal          t1, 21f
8:                jal          ra, 9f
9:                jal          t1, 0b
10:               jal          ra, 3b
11:               jal          t1, 15f
12:               jal          s8, 7b
13:               jal          s0, 16f
14:               jal          t1, 13b
15:               jal          t1, 8b
16:               jal          ra, 6b
17:               jal          s3, 10b
18:               jal          gp, 2b
19:               jal          ra, 23f
20:               jal          s8, 5b
21:               jal          ra, 1b
22:               jal          t1, 18b
23:               jal          ra, 22b
24:               lui          s1, 744507
sub_2_4:          jal          a6, 8f
0:                jal          t1, 28f
1:                jal          sp, 13f
2:                jal          ra, 26f
3:                jal          s3, 24f
4:                jal          t1, 22f
5:                jal          t0, 2b
6:                jal          t1, 7f
7:                jal          t1, 18f
8:                jal          ra, 14f
9:                jal          a3, 19f
10:               jal          ra, 0b
11:               jal          a2, 3b
12:               jal          ra, 27f
13:               jal          t0, 20f
14:               jal          t1, 21f
15:               jal          gp, 6b
16:               jal          ra, 10b
17:               jal          s0, 9b
18:               jal          ra, 23f
19:               jal          t1, 4b
20:               jal          t1, 29f
21:               jal          t1, 25f
22:               jal          sp, 16b
23:               jal          ra, 5b
24:               jal          ra, 1b
25:               jal          ra, 17b
26:               jal          ra, 11b
27:               jal          t1, 15b
28:               jal          gp, 12b
29:               sltu         t0, t5, a3
sub_2_2:          jal          a6, 3f
0:                jal          t1, 7f
1:                jal          t1, 13f
2:                jal          t1, 11f
3:                jal          ra, 10f
4:                jal          ra, 12f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          ra, 5b
8:                jal          ra, 6b
9:                jal          sp, 4b
10:               jal          ra, 2b
11:               jal          s11, 9b
12:               jal          t5, 8b
13:               srli         s3, s2, 13
sub_2_0:          jal          a6, 2f
0:                jal          ra, 3f
1:                jal          t1, 6f
2:                jal          ra, 8f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          t1, 4b
6:                jal          ra, 7f
7:                jal          s9, 0b
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          sp, 5b
11:               slli         zero, s10, 8
sub_2_3:          jal          a6, 9f
0:                jal          ra, 2f
1:                jal          ra, 7f
2:                jal          a1, 3f
3:                jal          ra, 10f
4:                jal          t1, 5f
5:                jal          ra, 0b
6:                jal          t1, 4b
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          ra, 1b
10:               or           s1, a1, a3
                  lui          s3, 661506
                  ori          s3, ra, 1935
                  or           s3, a7, s9
                  srli         t5, a3, 27
                  srli         s8, gp, 10
                  sra          s2, a1, t1
                  lui          gp, 771976
                  andi         a5, ra, -643
                  blt          a5, zero, 14f
                  bge          a1, a5, 12f
                  slt          t1, t3, a6
                  slti         s11, s6, -1357
12:               add          a6, a5, s2
                  bltu         s2, t5, 28f
14:               sll          gp, a5, s5
                  bgeu         t4, a3, 30f
                  beq          t6, s11, 35f
                  xor          t5, a5, s11
                  xori         s6, t0, -929
                  slt          t4, a5, s8
                  slli         s2, t5, 7
                  bgeu         a7, a2, 26f
                  ori          t0, gp, 158
                  sub          t0, a5, s0
                  beq          s3, t1, 31f
                  nop
26:               bge          gp, s7, 45f
                  sll          s9, s11, a2
28:               bge          a2, tp, 33f
                  ori          s2, gp, -189
30:               xori         a1, sp, -413
31:               bgeu         a2, s5, 45f
                  add          s7, zero, t6
33:               srli         t1, sp, 30
                  srli         s1, a5, 19
35:               addi         a2, t3, 795
                  slti         s8, t1, -476
                  bltu         a2, t2, 45f
                  bge          t6, a4, 58f
                  srl          s10, s0, s0
                  xor          s7, zero, tp
                  bgeu         s1, a2, 61f
                  or           s11, s11, a5
                  bne          gp, t0, 56f
                  slti         s0, ra, -432
45:               addi         s1, sp, 1608
                  srli         t4, t3, 16
                  blt          ra, a7, 51f
                  sra          a5, s3, a6
                  sub          s0, a3, zero
                  xor          s3, a3, s8
51:               add          s2, t2, sp
                  sra          a4, a4, s5
                  ori          t3, s0, 24
                  sub          s11, t0, zero
                  bge          tp, t0, 66f
56:               slt          s3, a7, gp
                  ori          s7, s7, -1750
58:               bgeu         a2, s11, 60f
                  bge          s1, t3, 77f
60:               srl          a6, s8, t1
61:               and          t4, s3, s6
                  sll          t2, sp, a4
                  srli         ra, gp, 1
                  bne          t6, a6, 68f
                  bne          a6, t4, 68f
66:               sltiu        a2, s6, 256
                  bge          a4, t1, 83f
68:               nop
                  sll          a0, s3, sp
                  sltiu        s1, a0, 764
                  beq          s4, a7, 89f
                  auipc        s3, 169358
                  sltiu        t2, ra, 1083
                  ori          ra, t0, -1277
                  sub          s4, t3, a1
                  slli         a6, gp, 11
77:               bltu         a1, a4, 78f
78:               srai         sp, a4, 8
                  sra          s7, s3, s7
                  and          a5, a7, a6
                  xori         s0, a1, 259
                  beq          t1, s10, 99f
83:               beq          t0, s11, 101f
                  sll          t6, a7, s8
                  andi         s9, t6, -23
                  sra          t2, a6, s1
                  auipc        t0, 262036
                  srai         t0, s0, 27
89:               srl          t2, a1, t5
                  xori         s10, s9, 270
                  and          a3, s1, s11
                  add          t5, t6, t6
                  and          a5, s8, sp
                  srl          a2, s9, t4
                  beq          s2, sp, 107f
                  sub          t3, s1, s11
                  addi         ra, gp, -1200
                  srli         ra, a4, 26
99:               andi         s0, a4, 380
                  srl          s4, gp, s1
101:              addi         zero, t2, -676
                  sra          t5, s10, t2
                  bltu         s4, s11, 123f
                  sltiu        sp, t6, 184
                  addi         t3, t2, -2038
                  slti         s8, t2, 575
107:              ori          a3, a7, 1531
                  slli         t4, s11, 15
                  xor          s1, t4, t3
                  nop
                  srai         s0, a3, 28
                  slt          s9, a0, s4
                  sltiu        a0, a0, -1029
                  and          t3, a5, a2
                  addi         s7, s10, 1006
                  slli         a0, t6, 28
                  sub          s1, t1, s2
                  bgeu         s8, s2, 135f
                  addi         t1, s6, 1264
                  bne          t6, t0, 135f
                  blt          s10, t3, 127f
                  beq          t4, t3, 125f
123:              or           s9, s3, s6
                  slti         t0, t1, 1169
125:              srai         t3, s1, 24
                  ori          t3, s9, -484
127:              xori         sp, s0, 1807
                  add          zero, a4, a7
                  sltu         s2, t6, s7
                  sra          a1, a0, a6
                  nop
                  srl          a2, s6, s1
                  srai         t1, t5, 1
                  lui          t3, 830793
135:              sub          t6, s5, s5
                  addi         s1, s5, -2018
                  andi         t2, gp, 1366
                  bge          t6, a5, 157f
                  add          a3, t2, gp
                  nop
                  bge          tp, t4, 159f
                  bge          sp, t5, 156f
                  add          s7, t2, a5
                  slli         s7, a3, 31
                  sltu         zero, s6, s6
                  bne          s4, s2, 161f
                  ori          zero, t1, 559
                  sltiu        a5, a5, -700
                  srl          s7, s6, s9
                  srli         a6, t6, 10
                  or           s2, t0, a6
                  sltu         s10, t3, a1
                  or           s9, t2, a4
                  slli         t5, a1, 20
                  slti         a5, t6, 1669
156:              sra          s11, s6, s8
157:              slli         s1, a7, 28
                  add          t4, s2, a4
159:              sub          a1, t1, s3
                  nop
161:              srli         a3, t2, 6
                  andi         s3, gp, 837
                  andi         s10, s6, 1742
                  andi         t3, s5, 1804
                  srli         a4, s10, 4
                  srl          s0, a5, s8
                  bge          gp, t3, 187f
                  nop
                  bge          s7, s9, 184f
                  srl          a1, s8, s2
                  bgeu         s1, a4, 184f
                  bge          s9, s7, 179f
                  xori         s3, a2, -1256
                  sll          a3, s3, a5
                  xori         t6, s2, -72
                  slli         s1, s9, 5
                  andi         s2, a7, -174
                  auipc        a6, 505486
179:              ori          s0, t2, 864
                  xori         t4, a3, 1233
                  bge          t5, zero, 193f
                  sub          s10, a5, tp
                  bltu         t4, s4, 186f
184:              slt          s10, s5, s3
                  or           s4, t5, ra
186:              bne          tp, s3, 192f
187:              auipc        s0, 642656
                  nop
                  lui          a3, 1035926
                  lui          sp, 348780
                  srl          t5, t0, tp
192:              addi         t4, t3, 526
193:              beq          t1, zero, 210f
                  blt          ra, s2, 214f
                  slt          a4, t5, a7
                  beq          zero, s3, 216f
                  slti         s2, sp, -471
                  bgeu         a2, a7, 216f
                  blt          t0, t4, 215f
                  sll          s2, t3, s5
                  sltiu        s9, s8, -1293
                  slti         a2, a4, -1224
                  slt          a2, t6, a1
                  sra          s6, a3, tp
                  nop
                  addi         s8, ra, -1980
                  srai         s4, a5, 16
                  auipc        s6, 453628
                  or           a3, sp, t5
210:              beq          t3, s3, 214f
                  and          zero, t4, tp
                  ori          t1, t4, 1853
                  srl          ra, s3, zero
214:              andi         a1, t5, -1543
215:              andi         s11, a7, 217
216:              bge          s4, t5, 235f
                  and          t5, s8, t6
                  addi         t6, s3, -1677
                  srai         ra, t1, 30
                  beq          a2, t4, 222f
                  sltu         s10, t0, gp
222:              and          sp, ra, s3
                  bge          s8, s5, 224f
224:              add          zero, t5, a5
                  slt          t5, a7, s9
                  slt          a3, t3, s3
                  andi         s3, zero, 1162
                  bgeu         s0, a4, 233f
                  srai         t0, ra, 13
                  addi         s2, s7, 1757
                  addi         s7, s11, 397
                  sltiu        t5, t5, -406
233:              nop
                  sll          s1, a2, a1
235:              sltiu        t5, a3, -2019
                  srai         s3, a0, 0
                  auipc        s2, 854204
                  nop
                  andi         a4, s2, 1217
                  bgeu         s1, a1, 245f
                  xori         sp, zero, -1616
                  slli         t4, sp, 3
                  or           s9, s2, t3
                  sub          s4, ra, a3
245:              andi         a1, t0, 1499
                  ori          s7, ra, 1985
                  auipc        a3, 515992
                  sltiu        t2, s5, -1472
                  addi         s6, t4, -150
                  sll          s10, a4, s9
                  sltu         s3, t2, a6
                  andi         a1, t6, -31
                  sra          a5, s7, t5
                  xori         a4, sp, -649
                  slli         sp, t1, 4
                  xor          t4, a6, tp
                  lw           a6, 4(a7)
                  andi         s3, s11, 366
                  ori          a3, s8, 1776
                  addi         a7, a7, 44
                  auipc        s8, 379964
                  or           ra, s1, s8
410:              addi x1, x16, 0
410:              jalr x1, x1, 0
sub_3:            xori         gp, s5, 2038
                  slt          a4, a7, t3
                  beq          sp, a7, sub_3_stack_p
                  slti         sp, t2, 833
                  ori          a0, s7, 1664
sub_3_stack_p:    addi         a7, a7, -24
                  srl          a1, t6, a6
                  add          gp, ra, t3
                  sw           a6, 4(a7)
                  xor          a1, t5, s2
sub_3_0:          jal          a6, 9f
0:                jal          s2, 10f
1:                jal          ra, 13f
2:                jal          t1, 5f
3:                jal          t1, 15f
4:                jal          t1, 14f
5:                jal          ra, 7f
6:                jal          sp, 11f
7:                jal          ra, 0b
8:                jal          ra, 16f
9:                jal          a3, 3b
10:               jal          t1, 1b
11:               jal          ra, 4b
12:               jal          ra, 2b
13:               jal          ra, 6b
14:               jal          t1, 8b
15:               jal          ra, 12b
16:               lui          a1, 583432
sub_3_2:          jal          a6, 0f
0:                jal          ra, 6f
1:                jal          ra, 9f
2:                jal          ra, 15f
3:                jal          ra, 5f
4:                jal          t6, 7f
5:                jal          ra, 4b
6:                jal          a3, 11f
7:                jal          a1, 8f
8:                jal          a4, 14f
9:                jal          ra, 12f
10:               jal          ra, 13f
11:               jal          t1, 1b
12:               jal          s3, 2b
13:               jal          a2, 17f
14:               jal          t0, 10b
15:               jal          ra, 16f
16:               jal          t1, 3b
17:               addi         a2, s0, -1880
sub_3_1:          jal          a6, 1f
0:                jal          t6, 7f
1:                jal          t1, 13f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          s7, 6f
5:                jal          s0, 3b
6:                jal          ra, 8f
7:                jal          t6, 9f
8:                jal          ra, 11f
9:                jal          ra, 2b
10:               jal          ra, 4b
11:               jal          s9, 0b
12:               jal          t1, 5b
13:               jal          s6, 12b
14:               sltiu        zero, ra, -613
                  xori         s0, sp, -1594
                  bne          a2, s11, 11f
                  xori         t1, tp, -530
                  bgeu         t4, t5, 8f
                  sub          s2, s7, s8
                  nop
                  slt          s0, a0, a5
                  ori          t6, a7, -1
8:                sltiu        t4, t0, -1423
                  nop
                  slli         a4, a0, 12
11:               or           ra, t2, t0
                  addi         t0, t0, 138
                  slt          a1, s3, s3
                  sltiu        s7, s10, -1608
                  lui          s1, 474185
                  slli         s9, a6, 29
                  slli         a5, a5, 15
                  bgeu         a4, t1, 33f
                  srai         t6, sp, 24
                  andi         s9, s8, 212
                  ori          ra, a7, -1416
                  xori         s11, s1, -1825
                  addi         a6, t1, 1957
                  ori          a6, a7, -705
                  xor          s4, a4, ra
                  addi         s10, t5, 1890
                  add          t2, s8, a7
                  bltu         t4, s2, 41f
                  auipc        t2, 910396
                  sltu         t6, a0, ra
                  auipc        ra, 733495
                  bgeu         s6, s4, 45f
33:               xor          gp, s6, sp
                  srai         sp, t2, 25
                  addi         sp, a7, 1954
                  ori          a5, a2, -977
                  bltu         t2, s0, 47f
                  bltu         t4, s10, 41f
                  or           t2, a2, t2
                  nop
41:               xor          a4, s9, gp
                  slt          t1, a7, t6
                  bgeu         zero, t2, 61f
                  slli         s7, gp, 30
45:               auipc        t1, 344678
                  blt          s1, s7, 47f
47:               bne          s7, t3, 49f
                  ori          a0, t6, -1378
49:               sltiu        s0, t3, 821
                  bltu         ra, t3, 64f
                  xori         gp, t1, -1033
                  auipc        s1, 292457
                  add          s9, s4, s2
                  srli         a3, t3, 21
                  sll          t4, t0, t3
                  sll          t1, s2, t3
                  sub          t2, s10, t0
                  andi         zero, a2, 775
                  ori          s0, t1, 769
                  srl          sp, s4, a2
61:               srai         s4, s3, 30
                  sub          a5, a0, s4
                  addi         s8, s0, -31
64:               nop
                  slt          s10, t2, a6
                  sra          s7, s4, a7
                  addi         s0, s4, -129
                  addi         a1, ra, -1915
                  or           s8, a3, t6
                  slt          s10, sp, a3
                  sra          a6, t1, s9
                  bltu         t1, t4, 91f
                  slti         s9, s5, 260
                  auipc        zero, 546042
                  blt          s0, s7, 79f
                  add          t1, s6, t4
                  xor          a6, s3, t0
                  srl          s11, s6, a7
79:               or           t2, s8, a7
                  beq          s6, tp, 85f
                  slli         a1, s7, 6
                  addi         t5, t4, -614
                  sub          s10, s10, a6
                  bltu         s0, t2, 101f
85:               slli         s10, s1, 1
                  slli         t6, s2, 31
                  xori         a0, s4, 1258
                  sltu         a4, s0, a7
                  ori          s11, tp, 1357
                  beq          t1, gp, 99f
91:               bltu         ra, s0, 109f
                  andi         t4, s4, 1845
                  sltu         s7, a2, t2
                  sra          a3, s0, s11
                  nop
                  bltu         s11, a4, 97f
97:               or           t3, s10, a1
                  andi         t5, s0, -240
99:               blt          s2, s8, 112f
                  srl          s4, a4, s6
101:              sltu         ra, ra, a2
                  sltiu        s7, t2, 1393
                  sltiu        a3, t2, 657
                  andi         s2, a4, -1767
                  sltiu        s9, s6, -1159
                  xor          a4, t0, t4
                  srl          t0, s8, a1
                  sltiu        s10, s0, 1572
109:              beq          s9, t4, 116f
                  or           s2, t6, zero
                  lui          a3, 638423
112:              sltu         a4, gp, t2
                  auipc        t4, 86154
                  or           s6, a5, t1
                  xor          gp, a7, s11
116:              sub          s7, t4, s3
                  bge          a5, t1, 137f
                  blt          s0, s2, 131f
                  nop
                  ori          zero, gp, -2016
                  and          s8, s2, a7
                  sltu         a5, s6, a6
                  bltu         s4, a4, 124f
124:              srl          s3, t5, s2
                  addi         gp, t6, 934
                  or           s10, tp, t2
                  sub          s0, s5, s8
                  sltiu        ra, t2, 1119
                  xori         ra, sp, 1840
                  addi         t1, s11, 1615
131:              slti         s11, s6, 938
                  auipc        s0, 197228
                  sltiu        s1, a3, 489
                  lui          t2, 1002293
                  addi         zero, a6, -944
                  blt          a3, t2, 138f
137:              addi         gp, a3, -95
138:              sltu         t2, t3, s11
                  ori          s1, t6, -34
                  slt          t3, a7, s3
                  bne          s5, a4, 158f
                  bge          s11, s2, 162f
                  ori          a2, s6, -1894
                  sltiu        a5, t0, 667
                  xori         a1, t1, -1437
                  slt          sp, a0, t3
                  xori         s4, a0, -1191
                  addi         s7, t5, -1154
                  xor          t1, s11, a5
                  sltu         gp, s8, s2
                  nop
                  xor          s4, t0, t4
                  ori          s10, zero, 1441
                  sll          a4, t4, s6
                  bgeu         s7, t4, 157f
                  lui          a2, 208645
157:              or           s0, a2, s0
158:              beq          s8, tp, 165f
                  slt          a2, sp, a7
                  beq          a2, t1, 174f
                  lui          ra, 157263
162:              add          t0, s8, s5
                  sub          a5, s9, s2
                  bgeu         ra, t4, 175f
165:              auipc        ra, 454262
                  and          t3, zero, t6
                  sub          s6, t5, t2
                  srai         a3, t3, 11
                  slli         a0, s7, 10
                  and          t5, sp, ra
                  ori          s4, a3, 1963
                  bgeu         s8, a0, 189f
                  slti         s10, s4, -154
174:              nop
175:              xor          s2, s1, tp
                  or           a4, a4, a2
                  and          t3, tp, s0
                  slti         s6, gp, 2024
                  and          gp, a7, gp
                  sub          s10, s1, t2
                  xori         t6, zero, -406
                  or           a0, ra, t2
                  xori         s3, ra, -257
                  bge          t2, a4, 189f
                  sub          zero, s10, t0
                  sltiu        s8, gp, -22
                  slti         a5, s2, -146
                  srai         gp, a5, 5
189:              slt          gp, a2, a1
                  or           a6, a7, s10
                  auipc        a2, 870266
                  nop
                  sll          t5, t1, a6
                  lui          sp, 803232
                  nop
                  sll          s6, s4, gp
                  addi         s0, s2, 126
                  srl          t3, sp, t4
                  ori          ra, a7, -991
                  bge          s7, a3, 210f
                  addi         s4, a1, -1254
                  lui          s0, 529574
                  xor          s6, t6, s8
                  slti         zero, a5, -1182
                  beq          a4, s6, 220f
                  blt          s6, s6, 210f
                  beq          s10, t0, 217f
                  srl          a6, s6, sp
                  slli         a4, zero, 16
210:              xori         s4, sp, 977
                  bge          a0, tp, 229f
                  slli         a4, t6, 31
                  bltu         a6, t2, 218f
                  srl          s9, s11, t4
                  xor          zero, a1, t6
                  sra          a1, t1, a0
217:              add          t4, s9, t4
218:              add          s3, a6, gp
                  srl          a6, t5, tp
220:              sltu         s1, a1, a1
                  bgeu         t1, a0, 234f
                  bgeu         s2, tp, 239f
                  bltu         t4, a0, 236f
                  xori         a6, t4, 1525
                  add          sp, a2, tp
                  add          s9, s2, t1
                  nop
                  addi         t4, a6, -85
229:              slt          zero, t5, tp
                  srai         a3, t3, 14
                  sll          s11, s3, sp
                  slti         a0, a2, 658
                  bge          a2, t6, 239f
234:              add          s4, t3, a3
                  sll          a5, s1, s3
236:              bltu         s4, s2, 239f
                  add          a6, s6, t3
                  add          gp, s11, a7
sub_3_3:          jal          a6, 8f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          ra, 5f
3:                jal          t1, 10f
4:                jal          ra, 9f
5:                jal          ra, 3b
6:                jal          t1, 4b
7:                jal          t5, 11f
8:                jal          t1, 2b
9:                jal          t1, 0b
10:               jal          t1, 1b
11:               andi         s6, a2, 1506
239:              slli         t5, s10, 2
                  slti         a1, s8, 39
                  lw           a6, 4(a7)
                  sll          t0, sp, s11
                  slt          t3, a4, a3
                  addi         a7, a7, 24
                  srli         t1, s1, 28
322:              addi x30, x16, 1
322:              jalr x30, x30, 0
sub_4:            sltiu        t4, t2, 670
                  srl          a5, s9, a6
                  bge          s10, t3, sub_4_stack_p
                  sltiu        t4, t6, -241
                  sub          a5, s2, s8
sub_4_stack_p:    addi         a7, a7, -40
                  xor          a3, a6, tp
                  addi         t3, s8, -1090
                  sw           a6, 4(a7)
                  xori         a4, s7, -1854
sub_4_0:          jal          a6, 21f
0:                jal          t6, 12f
1:                jal          ra, 27f
2:                jal          gp, 16f
3:                jal          ra, 2b
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          s1, 25f
7:                jal          t1, 18f
8:                jal          a5, 7b
9:                jal          t1, 22f
10:               jal          s11, 5b
11:               jal          s10, 0b
12:               jal          ra, 1b
13:               jal          s3, 19f
14:               jal          a1, 13b
15:               jal          ra, 24f
16:               jal          sp, 17f
17:               jal          t0, 20f
18:               jal          t1, 28f
19:               jal          t1, 9b
20:               jal          ra, 10b
21:               jal          ra, 14b
22:               jal          ra, 26f
23:               jal          ra, 6b
24:               jal          sp, 4b
25:               jal          ra, 3b
26:               jal          ra, 23b
27:               jal          t1, 15b
28:               auipc        gp, 509498
sub_4_3:          jal          a6, 7f
0:                jal          ra, 13f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          ra, 12f
4:                jal          t1, 8f
5:                jal          ra, 1b
6:                jal          a5, 11f
7:                jal          sp, 4b
8:                jal          ra, 10f
9:                jal          t1, 3b
10:               jal          t1, 6b
11:               jal          ra, 18f
12:               jal          t3, 21f
13:               jal          ra, 17f
14:               jal          s10, 0b
15:               jal          a3, 19f
16:               jal          t1, 5b
17:               jal          sp, 20f
18:               jal          t1, 9b
19:               jal          sp, 16b
20:               jal          s3, 22f
21:               jal          ra, 15b
22:               sltu         s11, s8, t4
sub_4_2:          jal          a6, 3f
0:                jal          ra, 4f
1:                jal          ra, 11f
2:                jal          t0, 7f
3:                jal          ra, 18f
4:                jal          ra, 19f
5:                jal          ra, 14f
6:                jal          t1, 5b
7:                jal          ra, 10f
8:                jal          ra, 13f
9:                jal          ra, 1b
10:               jal          t1, 6b
11:               jal          ra, 0b
12:               jal          t1, 8b
13:               jal          t1, 15f
14:               jal          t6, 17f
15:               jal          t1, 9b
16:               jal          t6, 12b
17:               jal          t1, 16b
18:               jal          ra, 2b
19:               add          s8, t4, a1
                  slt          a5, a5, t5
                  bltu         tp, s7, 3f
                  or           s7, s10, t3
3:                bne          zero, s9, 14f
                  slti         a2, a7, -1971
                  xori         t4, t6, -927
                  slt          a3, s2, s7
                  bgeu         sp, a2, 25f
                  srai         s10, s0, 25
                  bltu         s0, a2, 16f
                  bltu         a2, t2, 16f
                  xori         a2, ra, 867
                  sll          a1, s5, s1
                  bne          sp, a5, 16f
14:               slti         zero, gp, -1058
                  sra          s6, a4, a1
16:               auipc        a1, 872190
                  lui          t1, 914197
                  sll          a4, sp, s0
                  sltu         s7, t5, s2
                  bgeu         t6, zero, 28f
                  sltu         t0, a1, t2
                  sra          s10, s4, s1
                  andi         s11, gp, -774
                  slt          t3, a0, t3
25:               nop
                  sltiu        t1, a2, -1358
                  sub          zero, s4, s9
28:               add          s11, a4, a4
                  bge          s5, t6, 41f
                  xori         a2, t2, 735
                  bge          a4, zero, 33f
                  sub          s0, gp, tp
33:               auipc        t5, 531990
                  srai         zero, t6, 28
                  nop
                  xori         a0, s9, 1270
                  bltu         t0, a1, 41f
                  bltu         s10, a4, 48f
                  addi         t2, s6, -1610
                  sltiu        a0, s4, 792
41:               srli         a1, a0, 3
                  xori         t4, t4, -2013
                  add          a3, a6, a5
                  nop
                  add          a2, a4, t4
                  xori         s6, ra, -822
                  slti         gp, t1, -392
48:               slt          s0, sp, a3
                  bgeu         a3, a5, 58f
                  srli         s2, t1, 9
                  sra          a4, a0, s3
                  addi         s1, s8, 84
                  bgeu         s9, s0, 65f
                  andi         t1, s7, -746
                  sub          a2, s11, a3
                  sll          s2, a4, t4
                  srai         a6, s5, 22
58:               bne          s1, a4, 60f
                  srai         s9, s2, 19
60:               or           t3, s9, a3
                  sub          s7, s7, s7
                  bge          a2, tp, 82f
                  sll          a0, a4, s2
                  beq          a1, s9, 82f
65:               bne          s0, s2, 69f
                  sra          t1, a6, a7
                  sll          t2, s0, tp
                  sll          s9, ra, s8
69:               add          gp, gp, s0
                  slti         s10, sp, 678
                  nop
                  slt          s3, t5, a1
                  srl          a5, s10, tp
                  lui          s9, 509849
                  ori          gp, t3, -593
                  bge          t3, t5, 93f
                  xor          a3, t5, s8
                  auipc        a4, 591013
                  sra          s4, ra, a7
                  slti         s7, t6, 1324
                  srai         t2, s5, 10
82:               andi         s9, s2, 1714
                  srai         a4, t2, 17
                  bge          t3, a2, 96f
                  lui          s6, 381982
                  bne          s2, s9, 106f
                  srai         a3, s2, 26
                  sra          a1, tp, gp
                  auipc        t4, 206110
                  lui          a0, 830829
                  and          t0, t5, a2
                  srai         gp, t1, 3
93:               sra          a0, a2, gp
                  nop
                  addi         a1, s7, 1422
96:               sll          s10, s9, tp
                  sll          gp, s1, t3
                  srai         a3, s2, 5
                  bge          t3, a6, 109f
                  andi         zero, t0, 795
                  slli         t4, zero, 3
                  add          s9, s7, s9
                  sltiu        a5, a2, 1412
                  addi         s11, t2, -889
                  add          ra, a1, a4
106:              add          a6, zero, a6
                  sub          zero, zero, ra
                  and          zero, t5, s5
109:              andi         a6, a1, -2026
                  blt          s10, s4, 117f
                  sltu         t5, s2, t3
                  xori         t6, s3, -980
                  and          t5, a6, s7
                  add          s4, t6, a6
                  lui          s6, 545385
                  lui          t3, 450665
117:              bltu         t5, a2, 135f
                  beq          s7, s4, 130f
                  blt          sp, tp, 126f
                  xor          s7, a1, s1
                  srli         s4, s11, 12
                  srai         t1, t5, 1
                  bne          tp, s5, 136f
                  blt          a6, s2, 134f
                  nop
126:              srai         a2, zero, 13
                  bge          gp, s8, 147f
                  bgeu         zero, tp, 137f
                  sltu         s6, t3, s4
130:              xor          a1, a2, gp
                  ori          a0, a0, 485
                  addi         s2, a5, 1239
                  blt          tp, s7, 151f
134:              andi         t3, t4, 705
135:              bgeu         s6, a6, 145f
136:              andi         a5, tp, 991
137:              srl          a2, t2, t6
                  bgeu         s1, s6, 140f
                  auipc        a5, 111011
140:              or           t6, t4, s10
                  lui          sp, 997986
                  xori         a0, a5, -1118
                  sltiu        s11, t0, 270
                  srli         ra, t6, 24
145:              sltiu        t6, t4, -1189
                  andi         a6, s11, -659
147:              slti         s8, t3, -527
                  slt          t4, s9, t1
                  andi         s4, s11, 154
                  addi         a1, s6, -1433
151:              blt          s9, a5, 162f
                  bgeu         a2, s1, 162f
                  bltu         tp, s8, 165f
                  srai         a5, s11, 15
                  bne          a4, s4, 173f
                  slt          s9, s5, t1
                  slli         t1, t3, 7
                  srli         s10, t5, 18
                  slt          a1, t6, tp
                  nop
                  slli         s8, tp, 21
162:              ori          a1, s3, -750
                  slli         s10, a5, 14
                  sltu         t1, s2, t1
165:              sub          gp, t0, s0
                  slti         t0, s7, 1755
                  srl          s3, t2, t0
                  xor          t2, s4, s8
                  beq          t3, t6, 176f
                  slt          sp, s3, s8
                  beq          s10, a1, 173f
                  bltu         t1, a2, 192f
173:              xori         s7, a5, 433
                  slt          s2, s5, t4
                  xor          t6, zero, t0
176:              bltu         s6, t0, 185f
                  sub          t5, s5, t0
                  xori         t0, a0, -935
                  lui          t3, 549012
                  sltu         a1, zero, a1
                  xor          ra, s0, zero
                  sltu         a4, s0, a5
                  sltu         sp, t0, t4
                  bne          a2, s0, 202f
185:              slli         s6, s6, 31
                  andi         s6, s6, -1630
                  xori         a4, tp, 798
                  add          t3, t5, s9
                  xor          sp, a4, s0
                  or           a3, s5, s5
                  or           s7, a3, s3
sub_4_1:          jal          a6, 0f
0:                jal          t3, 8f
1:                jal          ra, 9f
2:                jal          ra, 7f
3:                jal          ra, 2b
4:                jal          t4, 6f
5:                jal          t1, 3b
6:                jal          s4, 1b
7:                jal          t1, 4b
8:                jal          ra, 10f
9:                jal          ra, 11f
10:               jal          t1, 5b
11:               slt          t0, t4, t0
192:              slti         s1, s7, 907
                  ori          a1, sp, 1449
                  auipc        gp, 26946
                  xor          a2, s0, a2
                  srli         ra, a6, 3
                  addi         sp, sp, 78
                  bltu         s2, s5, 202f
                  slli         ra, t5, 10
                  bltu         t5, zero, 218f
                  srai         t1, a6, 9
202:              beq          a2, s6, 205f
                  sltu         t5, tp, ra
                  slt          s3, a6, zero
205:              srl          s10, t2, a6
                  auipc        zero, 1023438
                  slt          s6, a5, zero
                  beq          t3, t1, 219f
                  or           a3, s2, a7
                  bgeu         s1, s4, 216f
                  and          s6, s1, s6
                  srai         s9, t4, 18
                  sll          s3, s4, a2
                  ori          t6, tp, 373
                  nop
216:              slt          a5, s10, s7
                  blt          s0, s5, 219f
218:              srai         s2, a7, 7
219:              xor          s0, a1, a6
                  srl          s9, s8, zero
                  xori         a5, a2, 999
                  xor          s3, a5, s1
                  slti         t3, t0, 1648
                  and          t2, a7, gp
                  lw           a6, 4(a7)
                  slt          a5, s6, a6
                  addi         a7, a7, 40
                  addi         s11, s1, -1664
327:              addi x11, x16, 1
327:              jalr x11, x11, 0
sub_5:            bgeu         t6, t1, sub_5_stack_p
                  sub          ra, sp, a0
                  sltiu        s8, s1, -856
                  sra          sp, a2, s1
sub_5_stack_p:    addi         a7, a7, -8
                  sw           a6, 4(a7)
                  andi         s1, s6, 389
                  andi         a3, t2, -524
                  ori          s8, s5, -2019
                  slt          a1, t4, s8
                  srl          s4, a7, a1
sub_5_0:          jal          a6, 1f
0:                jal          a4, 2f
1:                jal          ra, 10f
2:                jal          ra, 23f
3:                jal          t0, 13f
4:                jal          ra, 21f
5:                jal          ra, 20f
6:                jal          sp, 9f
7:                jal          t1, 14f
8:                jal          t1, 11f
9:                jal          ra, 7b
10:               jal          ra, 3b
11:               jal          t4, 4b
12:               jal          ra, 15f
13:               jal          ra, 12b
14:               jal          t1, 5b
15:               jal          t1, 19f
16:               jal          t1, 17f
17:               jal          a2, 25f
18:               jal          ra, 24f
19:               jal          t4, 0b
20:               jal          ra, 22f
21:               jal          ra, 18b
22:               jal          s8, 8b
23:               jal          ra, 6b
24:               jal          ra, 16b
25:               andi         t2, ra, 121
sub_5_4:          jal          a6, 4f
0:                jal          a1, 8f
1:                jal          ra, 11f
2:                jal          sp, 0b
3:                jal          ra, 9f
4:                jal          t0, 6f
5:                jal          ra, 1b
6:                jal          a2, 7f
7:                jal          t1, 10f
8:                jal          t0, 3b
9:                jal          sp, 5b
10:               jal          ra, 2b
11:               auipc        t2, 629924
sub_5_1:          jal          a6, 19f
0:                jal          sp, 12f
1:                jal          t1, 25f
2:                jal          t1, 29f
3:                jal          ra, 18f
4:                jal          ra, 23f
5:                jal          ra, 10f
6:                jal          t4, 17f
7:                jal          ra, 22f
8:                jal          ra, 14f
9:                jal          ra, 20f
10:               jal          ra, 15f
11:               jal          sp, 26f
12:               jal          t1, 1b
13:               jal          ra, 11b
14:               jal          t1, 4b
15:               jal          ra, 9b
16:               jal          sp, 8b
17:               jal          a2, 13b
18:               jal          ra, 2b
19:               jal          ra, 28f
20:               jal          t1, 24f
21:               jal          gp, 5b
22:               jal          sp, 3b
23:               jal          ra, 6b
24:               jal          s7, 27f
25:               jal          t1, 16b
26:               jal          t0, 7b
27:               jal          ra, 30f
28:               jal          ra, 0b
29:               jal          ra, 21b
30:               sltiu        s4, s0, 47
sub_5_5:          jal          a6, 14f
0:                jal          t1, 15f
1:                jal          ra, 2f
2:                jal          ra, 5f
3:                jal          t1, 0b
4:                jal          s4, 9f
5:                jal          ra, 12f
6:                jal          ra, 3b
7:                jal          ra, 10f
8:                jal          t1, 4b
9:                jal          ra, 1b
10:               jal          ra, 6b
11:               jal          t1, 7b
12:               jal          s7, 13f
13:               jal          t2, 11b
14:               jal          a1, 8b
15:               jal          a4, 16f
16:               nop
sub_5_2:          jal          a6, 17f
0:                jal          ra, 14f
1:                jal          s1, 20f
2:                jal          ra, 7f
3:                jal          t1, 0b
4:                jal          ra, 21f
5:                jal          ra, 16f
6:                jal          ra, 1b
7:                jal          ra, 5b
8:                jal          ra, 13f
9:                jal          t0, 12f
10:               jal          ra, 19f
11:               jal          ra, 15f
12:               jal          ra, 6b
13:               jal          ra, 2b
14:               jal          t1, 4b
15:               jal          t1, 10b
16:               jal          s6, 18f
17:               jal          gp, 9b
18:               jal          s1, 11b
19:               jal          ra, 3b
20:               jal          ra, 8b
21:               sltu         s4, t3, t4
sub_5_6:          jal          a6, 13f
0:                jal          s4, 17f
1:                jal          ra, 16f
2:                jal          ra, 14f
3:                jal          ra, 7f
4:                jal          a4, 1b
5:                jal          a1, 12f
6:                jal          s7, 15f
7:                jal          ra, 2b
8:                jal          ra, 23f
9:                jal          ra, 10f
10:               jal          t1, 11f
11:               jal          ra, 18f
12:               jal          ra, 9b
13:               jal          a4, 20f
14:               jal          ra, 6b
15:               jal          t1, 19f
16:               jal          ra, 21f
17:               jal          ra, 24f
18:               jal          a1, 8b
19:               jal          ra, 5b
20:               jal          sp, 3b
21:               jal          sp, 22f
22:               jal          s1, 0b
23:               jal          t0, 4b
24:               add          t1, tp, a6
                  sll          s0, t6, a2
                  xori         s7, a3, -1517
                  andi         t4, s11, 636
                  srl          a4, sp, a1
                  andi         gp, s9, -1325
                  srai         a2, s11, 9
                  lui          s9, 204616
                  slti         t4, a0, -986
                  lui          t0, 620204
                  add          s8, s7, tp
                  bltu         s10, t3, 18f
                  or           a0, s5, s8
                  sll          t2, s6, a2
                  addi         s4, a0, -1628
                  beq          s0, t2, 15f
15:               and          a5, s5, a4
                  bge          t0, a4, 35f
                  bltu         s11, s0, 23f
18:               sub          t4, tp, sp
                  srl          s2, t1, s3
                  slt          ra, zero, s8
                  bge          s8, t5, 26f
                  bgeu         t2, s10, 36f
23:               sll          a2, a1, t4
                  bgeu         t1, t4, 30f
                  srli         a5, sp, 30
26:               or           t5, t6, a5
                  beq          s8, t2, 45f
                  blt          a5, s4, 43f
                  bgeu         s11, s4, 42f
30:               nop
                  auipc        s2, 414752
                  slt          a3, s10, s10
                  xor          a3, t0, s4
                  add          t4, s3, t4
35:               auipc        s0, 236033
36:               slli         a2, gp, 15
                  bltu         s6, s2, 52f
                  addi         a0, t5, 629
                  bltu         s0, t3, 44f
                  and          t4, t5, s1
                  sltiu        a3, s11, -64
42:               slti         s8, t6, -849
43:               sra          a4, s6, t4
44:               sltiu        ra, s7, 735
45:               sub          t0, s5, sp
                  sub          t1, s4, s1
                  nop
                  blt          t3, a4, 64f
                  slli         s6, t3, 17
                  blt          s0, s0, 59f
                  addi         s4, sp, 415
52:               and          s6, s0, s11
                  xor          s8, a3, s5
                  bltu         zero, t4, 60f
                  xor          t4, t2, s1
                  sub          a3, sp, a2
                  ori          s11, s8, -413
                  beq          s3, s1, 64f
59:               bge          a5, s6, 71f
60:               srl          a1, s9, t3
                  lui          sp, 41926
                  addi         s10, a6, -1077
                  blt          zero, t0, 70f
64:               add          t4, t6, s9
                  lui          a3, 792486
                  bge          a3, t4, 80f
                  addi         t6, t3, -1274
                  slt          s2, sp, a2
                  nop
70:               sra          a6, a7, zero
71:               bne          gp, t2, 72f
72:               srli         a5, t4, 31
                  auipc        t3, 692393
                  sltiu        s3, s7, -150
                  nop
                  srai         t2, s6, 10
                  slt          t0, t1, s7
                  srl          t0, a1, t3
                  ori          s9, a3, 1276
80:               slti         t2, s0, 1229
                  addi         s7, s6, -1428
                  auipc        a1, 128011
                  or           a3, t0, a3
                  srli         s0, s2, 20
                  bne          s9, a1, 92f
                  srai         ra, gp, 2
                  lui          ra, 549451
                  srli         a5, s10, 12
                  srl          a1, s4, t5
                  add          a1, s7, gp
                  srai         s2, sp, 11
92:               sltu         t2, s6, s0
                  slt          a6, a7, s6
                  sltiu        t3, s5, 220
                  bne          s9, a6, 102f
                  beq          a3, t2, 101f
                  srl          s4, t6, s10
                  slt          a5, ra, t6
                  bltu         ra, t3, 115f
                  slli         t4, s7, 10
101:              andi         t3, s6, -1585
102:              sltiu        s6, t0, -1953
                  sra          t4, s4, s6
                  sub          t6, a6, a0
                  slt          a0, t1, t2
                  xori         s6, t6, 1811
                  bne          s6, s9, 124f
                  bltu         s1, t6, 114f
                  slt          a6, s2, a7
                  sltiu        sp, s3, 1644
                  sra          gp, t0, ra
                  xori         s3, sp, -1223
                  blt          t4, a5, 124f
114:              srl          s7, s1, sp
115:              beq          t2, t2, 123f
                  lui          s9, 167048
                  bgeu         a6, t0, 129f
                  nop
                  sra          zero, a1, s10
                  sub          t6, t3, t2
                  beq          t4, a7, 139f
                  add          s8, s10, s11
123:              bge          s6, a3, 124f
124:              andi         ra, s5, 1378
                  blt          s7, tp, 136f
                  srli         a2, a5, 30
                  sltiu        a4, s8, -86
                  addi         t1, t5, 1222
129:              or           gp, sp, a2
                  addi         a0, s8, 1438
                  beq          t3, s9, 136f
                  sub          s9, s0, a2
                  bge          t2, a6, 141f
                  blt          a1, s2, 147f
                  blt          s6, a2, 142f
136:              nop
                  sltiu        t3, t5, -914
                  bgeu         t3, s0, 154f
139:              sltu         s8, tp, s0
                  srli         zero, gp, 12
141:              bge          t6, s6, 158f
142:              sra          s11, t5, a4
                  or           t5, a1, t5
                  sra          s7, a4, s10
                  slti         t3, a3, 1418
                  sltu         s4, a2, gp
147:              slli         s4, a4, 25
                  bne          gp, t4, 160f
                  beq          s7, ra, 154f
                  sub          zero, s4, s3
                  bgeu         a3, t5, 166f
                  sra          s2, a1, s0
                  beq          t2, a0, 160f
154:              sra          t4, ra, a3
                  add          a3, s6, s3
                  lui          s0, 479967
                  srai         s1, s0, 30
158:              slt          s3, s4, s9
                  xori         zero, s7, 1741
160:              sltiu        s6, s6, 1888
                  sltiu        a5, s1, -1871
                  addi         s11, t3, -156
                  sra          a1, s3, s8
                  sub          a3, t6, s3
                  and          s1, gp, s10
166:              srli         s1, a6, 17
                  andi         a0, t0, 832
                  xori         s4, tp, -551
                  sltu         sp, s11, a6
                  sub          t6, zero, t4
                  sra          s1, a0, s1
                  bge          s2, a3, 180f
                  and          t1, s5, zero
                  blt          s8, s6, 179f
sub_5_3:          jal          a6, 8f
0:                jal          ra, 9f
1:                jal          t1, 11f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          t0, 15f
6:                jal          gp, 1b
7:                jal          ra, 13f
8:                jal          s1, 6b
9:                jal          ra, 4b
10:               jal          s11, 12f
11:               jal          ra, 3b
12:               jal          ra, 14f
13:               jal          s1, 10b
14:               jal          t1, 0b
15:               xor          zero, s7, s5
                  bgeu         s0, s3, 181f
                  bltu         t4, s1, 191f
                  sra          s2, a4, s3
                  bge          a5, t6, 187f
179:              sub          t1, a7, a0
180:              bltu         a0, t4, 187f
181:              nop
                  andi         t0, s11, 417
                  sra          a5, a4, gp
                  beq          s0, zero, 200f
                  bge          t3, a3, 186f
186:              xori         s10, t2, 217
187:              xori         a6, a2, 799
                  lui          a2, 310829
                  slli         t6, tp, 2
                  nop
191:              bge          gp, sp, 210f
                  nop
                  ori          t1, a2, 1066
                  and          t5, gp, t3
                  srai         gp, s9, 20
                  sll          s10, a2, t0
                  or           s2, a1, s1
                  addi         a6, t1, 85
                  bgeu         a3, s9, 205f
200:              sra          t2, s9, t2
                  sub          a5, t4, sp
                  slt          a3, zero, s3
                  bltu         s4, s0, 217f
                  srl          s7, s0, s7
205:              sub          sp, s10, t5
                  xori         s2, s11, -1975
                  bltu         sp, a7, 221f
                  sltu         s11, t3, tp
                  bne          t0, t6, 227f
210:              blt          a2, t4, 216f
                  bne          s3, zero, 229f
                  sltu         a5, t0, t0
                  sll          t0, s9, s2
                  slli         ra, a1, 1
                  xor          t4, s11, a5
216:              blt          sp, tp, 222f
217:              bltu         s7, tp, 223f
                  sub          a4, s0, t6
                  sltiu        s2, s8, 1327
                  slli         s11, s2, 17
221:              ori          s0, a3, -1179
222:              sltu         t1, a3, s9
223:              slt          a6, tp, gp
                  slt          t3, s8, s6
                  ori          s4, t4, -903
                  and          t2, s6, t5
227:              slti         a5, t5, -1342
                  srai         a3, s1, 11
229:              nop
                  blt          s11, s7, 242f
                  bgeu         t3, t6, 236f
                  sub          t0, s9, a2
                  srai         s6, ra, 0
                  slti         s2, s1, -313
                  slt          s9, zero, s10
236:              xori         t3, t6, -77
                  sltiu        s0, a2, -1301
                  srai         a2, s10, 19
                  slti         t4, t5, -1363
                  xori         t3, t0, 619
                  nop
242:              bne          t1, t1, 260f
                  ori          t3, s0, -19
                  ori          t2, s0, -122
                  bge          s5, a5, 251f
                  srl          s7, t3, sp
                  bge          s2, s3, 253f
                  addi         a2, s11, -2012
                  ori          a6, s6, -1716
                  add          t5, tp, ra
251:              bge          s4, s2, 256f
                  slti         a6, s5, 2023
253:              srli         t3, t2, 11
                  and          t1, s3, ra
                  auipc        gp, 492212
256:              sltiu        a3, s4, -49
                  srl          s3, t1, s3
                  bltu         a0, a5, 259f
259:              auipc        ra, 676454
260:              bltu         s11, s7, 273f
                  blt          a2, s5, 268f
                  lui          t5, 295655
                  slt          a1, t5, ra
                  ori          a2, zero, 669
                  slli         s1, ra, 18
                  srai         a1, ra, 16
                  andi         ra, a7, -1939
268:              srli         s8, s11, 19
                  sll          a5, a6, t3
                  addi         s6, sp, 926
                  sub          s7, a2, s9
                  xori         a1, s10, 805
273:              nop
                  add          s11, t1, t1
                  addi         s0, t0, 1900
                  srai         t1, s6, 26
                  andi         t4, a7, 455
                  srl          s4, s3, s7
                  add          a4, t2, t2
                  srli         zero, s8, 24
                  or           t2, s4, a5
                  xori         s3, sp, -673
                  bge          s8, t1, 295f
                  blt          tp, t3, 302f
                  sll          t6, gp, s9
                  sltiu        s6, s2, -1953
                  addi         t4, s7, 438
                  sra          t6, s0, a7
                  blt          t3, t4, 308f
                  sll          a3, s5, s6
                  xori         s9, s8, -1000
                  sub          a0, s10, s11
                  slli         zero, s5, 18
                  lui          s2, 159018
295:              slt          s9, s9, a1
                  sll          zero, ra, t2
                  blt          s7, s1, 304f
                  srli         gp, t6, 28
                  bgeu         t4, t3, 307f
                  sra          t1, s10, s8
                  xor          ra, t5, ra
302:              sra          a4, s11, t1
                  sll          s8, s9, a0
304:              xor          t4, a3, t3
                  slti         t3, a7, -717
                  ori          t1, gp, 485
307:              slt          s1, a2, s9
308:              andi         s1, a5, 495
                  bgeu         a1, s4, 320f
                  beq          a1, s4, 316f
                  ori          s6, a5, -500
                  blt          a6, a4, 313f
313:              blt          s10, s4, 319f
                  or           zero, s3, a2
                  or           a4, s0, gp
316:              sra          s0, a5, a3
                  andi         a1, t5, 1025
                  or           ra, s10, t0
319:              bge          a7, tp, 333f
320:              xori         t3, s6, -706
                  auipc        zero, 333618
                  sra          a4, s0, s1
                  lui          s11, 1020142
                  blt          t2, s5, 331f
                  and          s0, s5, tp
                  blt          a5, gp, 342f
                  srli         zero, ra, 1
                  srai         s4, tp, 23
                  beq          a7, s6, 338f
                  and          t0, a5, a5
331:              sra          t0, a5, a4
                  sltiu        sp, sp, -260
333:              slti         s6, a1, 414
                  srl          a6, zero, a6
                  lui          s9, 330934
                  sltu         a2, s4, s10
                  bltu         s5, s11, 354f
338:              addi         zero, t5, -299
                  sltiu        s4, t2, 889
                  slti         t1, a3, -356
                  bgeu         a6, t3, 346f
342:              andi         a4, a3, -675
                  addi         s4, s11, 313
                  or           s7, t6, t1
                  nop
346:              slli         t4, a6, 21
                  sub          a5, t3, a1
                  and          t2, s4, gp
                  srl          s1, a6, s1
                  slli         t3, a2, 3
                  sll          s11, s1, s1
                  or           a6, s5, t2
                  blt          a7, t2, 367f
354:              sll          t4, tp, s6
                  bltu         s11, a4, 363f
                  sltiu        a2, s1, -2009
                  bge          a1, t0, 373f
                  sltiu        a1, tp, -861
                  sll          t3, gp, a5
                  sll          s6, a1, t3
                  xori         s11, a4, 648
                  or           a1, s8, t4
363:              ori          s4, a2, -1212
                  bge          s10, ra, 374f
                  sltu         s11, s10, a1
                  add          s2, s10, tp
367:              ori          a2, t1, -6
                  nop
                  sll          t5, a3, t0
                  bgeu         a0, a6, 374f
                  addi         s4, t5, 265
                  addi         a0, a2, -758
373:              slli         a2, s8, 15
374:              srli         s3, zero, 17
                  srai         a2, a7, 2
                  srli         s2, t3, 21
                  slt          s10, gp, a1
                  xor          t5, t4, s0
                  sltiu        sp, a5, -406
                  sub          a1, s3, s11
                  lw           a6, 4(a7)
                  srai         a3, t6, 26
                  nop
                  addi         a7, a7, 8
                  sltu         sp, t2, a6
553:              addi x27, x16, 1
553:              jalr x27, x27, 0
sub_1:            addi         a7, a7, -60
                  sra          ra, a6, a6
                  srli         s7, a7, 13
                  sw           a6, 4(a7)
                  srai         a0, s3, 12
                  sll          ra, s11, zero
                  sltiu        s10, s11, 569
                  sub          a5, zero, ra
                  la           s1, sub_2
                  srli         t4, a0, 8
                  addi         s1, s1, -293
                  srai         t1, t3, 21
                  add          a5, s9, a7
                  and          a4, t5, s9
                  bltu         s8, t1, sub_1_j2 #branch to jump instr
                  or           t6, t3, s9
sub_1_j2:         jalr         a6, s1, 294 #jump sub_1 -> sub_2
                  sll          s10, t4, a5
                  la           ra, sub_2
                  srli         s1, s6, 5
                  addi         ra, ra, -59
                  slt          a2, t0, t2
                  beq          sp, a4, sub_1_j3 #branch to jump instr
                  srli         t4, t3, 25
                  sub          a3, s6, a1
                  andi         sp, sp, -432
sub_1_j3:         jalr         a6, ra, 60 #jump sub_1 -> sub_2
sub_1_3:          jal          a6, 12f
0:                jal          ra, 3f
1:                jal          t1, 22f
2:                jal          s2, 21f
3:                jal          ra, 10f
4:                jal          t1, 5f
5:                jal          ra, 0b
6:                jal          ra, 15f
7:                jal          t1, 18f
8:                jal          ra, 17f
9:                jal          ra, 7b
10:               jal          ra, 19f
11:               jal          ra, 2b
12:               jal          ra, 14f
13:               jal          s0, 11b
14:               jal          t5, 9b
15:               jal          ra, 20f
16:               jal          ra, 1b
17:               jal          ra, 6b
18:               jal          ra, 8b
19:               jal          ra, 16b
20:               jal          ra, 13b
21:               jal          ra, 4b
22:               or           s1, s4, a6
sub_1_1:          jal          a6, 14f
0:                jal          t1, 3f
1:                jal          ra, 8f
2:                jal          ra, 12f
3:                jal          t0, 20f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          ra, 10f
7:                jal          t1, 17f
8:                jal          t1, 21f
9:                jal          t0, 4b
10:               jal          s1, 1b
11:               jal          s10, 19f
12:               jal          t1, 9b
13:               jal          ra, 5b
14:               jal          t1, 11b
15:               jal          gp, 16f
16:               jal          sp, 18f
17:               jal          ra, 13b
18:               jal          ra, 7b
19:               jal          ra, 2b
20:               jal          s6, 15b
21:               srl          s11, t1, a6
sub_1_2:          jal          a6, 2f
0:                jal          t1, 13f
1:                jal          ra, 7f
2:                jal          s3, 4f
3:                jal          ra, 9f
4:                jal          gp, 6f
5:                jal          sp, 3b
6:                jal          ra, 11f
7:                jal          ra, 0b
8:                jal          ra, 12f
9:                jal          ra, 8b
10:               jal          gp, 5b
11:               jal          sp, 10b
12:               jal          ra, 1b
13:               slli         t4, s11, 7
sub_1_0:          jal          a6, 20f
0:                jal          ra, 18f
1:                jal          ra, 0b
2:                jal          ra, 10f
3:                jal          t1, 8f
4:                jal          t1, 15f
5:                jal          t1, 11f
6:                jal          ra, 7f
7:                jal          gp, 17f
8:                jal          ra, 19f
9:                jal          t1, 6b
10:               jal          gp, 1b
11:               jal          t1, 12f
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               jal          ra, 4b
15:               jal          ra, 9b
16:               jal          t1, 3b
17:               jal          ra, 16b
18:               jal          ra, 13b
19:               jal          ra, 21f
20:               jal          t2, 2b
21:               sub          s0, s1, t3
                  bne          s2, a4, 7f
                  srai         s9, s7, 12
                  blt          t6, s6, 3f
3:                slt          a3, s3, gp
                  bne          a4, s2, 15f
                  add          sp, zero, s0
                  and          a6, s3, s11
7:                blt          a3, t4, 23f
                  add          s2, s3, a5
                  blt          a6, a0, 14f
                  slt          a4, a7, a5
                  sra          s2, t2, ra
                  sub          a6, s10, t1
                  blt          t4, s10, 25f
14:               lui          a2, 368594
15:               addi         s11, a2, 1779
                  sub          s0, sp, a5
                  addi         zero, t1, -460
                  nop
                  blt          s2, t4, 25f
                  sub          t2, t3, gp
                  andi         s8, tp, -1144
                  and          a4, ra, gp
23:               sll          a3, a6, gp
                  slli         s10, s5, 11
25:               bgeu         s1, t0, 40f
                  blt          a5, s3, 39f
                  lui          s2, 706105
                  bltu         s5, a1, 32f
                  sltiu        s4, s9, -270
                  and          a4, s8, s10
                  or           s8, s6, t6
32:               slt          a0, s0, s9
                  xor          s10, s0, t2
                  bne          s9, t0, 42f
                  srl          t0, a5, a3
                  ori          gp, a6, -392
                  nop
                  srai         t5, ra, 11
39:               srl          gp, a3, s11
40:               blt          s6, s5, 47f
                  sltu         s8, s10, tp
42:               xor          s7, s4, s8
                  bltu         a3, s2, 53f
                  slti         a0, gp, -1812
                  auipc        t2, 786916
                  nop
47:               ori          a3, t3, -144
                  blt          a5, t5, 55f
                  sll          a1, gp, a2
                  or           s3, t5, a6
                  xori         t0, a0, -205
                  addi         s2, t3, 141
53:               bgeu         s9, s11, 73f
                  sltiu        s6, s4, -1536
55:               xor          gp, s0, t5
                  and          s3, t2, a5
                  lui          t6, 845218
                  add          s4, s11, s11
                  slt          t5, a0, s2
                  sltiu        s6, sp, 61
                  srli         a6, a4, 27
                  slt          s0, s11, a1
                  srl          a2, t2, s11
                  sra          s0, t2, s0
                  srli         ra, gp, 26
                  nop
                  sub          s11, a2, tp
                  bgeu         a6, s10, 84f
                  slti         s0, t6, 716
                  xor          s1, t1, a7
                  add          t0, s6, a4
                  bltu         tp, s8, 88f
73:               sll          s0, t6, a2
                  slt          a1, t3, gp
                  bge          a6, gp, 95f
                  xori         a0, s0, -1162
                  bgeu         t3, t6, 81f
                  or           s4, s4, a6
                  srai         t2, t6, 24
                  slt          s7, t2, t3
81:               or           gp, t2, s0
                  bgeu         a2, a4, 93f
                  blt          a1, a4, 96f
84:               sltiu        t5, t3, -1261
                  or           a0, sp, s7
                  ori          s3, tp, -856
                  or           t4, a4, t4
88:               nop
                  sub          s0, s2, a5
                  xor          zero, s3, a0
                  srai         s3, sp, 12
                  srai         a5, t1, 23
93:               srl          s3, s8, t6
                  sub          s9, s1, s5
95:               sltu         a3, s8, s0
96:               beq          a1, s0, 109f
                  slli         a1, ra, 27
                  bltu         sp, a6, 100f
                  blt          zero, t5, 103f
100:              sra          s0, s10, a2
                  nop
                  xori         a3, t1, -609
103:              srai         s9, s1, 27
                  or           zero, a6, a5
                  sra          t4, s11, a4
                  auipc        a2, 387657
                  bgeu         t1, t1, 123f
                  addi         a5, t2, 616
109:              bltu         a5, s3, 120f
                  slt          t1, a1, s6
                  ori          s10, gp, -1729
                  sra          a4, s3, t0
                  bgeu         sp, t5, 126f
                  sub          t5, t0, a2
                  slli         s8, a0, 27
                  xor          s3, t3, sp
                  bge          t2, ra, 122f
                  beq          a0, t2, 138f
                  sub          a1, s3, s11
120:              slt          s9, t1, t5
                  xori         s1, s1, -1067
122:              bltu         s3, s9, 139f
123:              and          s1, gp, s8
                  sra          s7, t0, s5
                  sltiu        s6, t2, -165
126:              bne          gp, t1, 133f
                  or           t6, a2, a7
                  sltu         t1, s8, s5
                  bltu         s7, t3, 142f
                  bgeu         t4, t3, 131f
131:              slti         s6, ra, -1672
                  andi         a2, s1, -143
133:              sltiu        zero, a7, 487
                  nop
                  sra          t6, s3, a1
                  sra          s9, ra, a0
                  auipc        t1, 754070
138:              slli         a4, t3, 16
139:              bgeu         s7, s6, 156f
                  andi         t5, zero, 278
                  bge          s8, s11, 154f
142:              sltu         a6, s8, t6
                  beq          a2, s4, 156f
                  srai         ra, t2, 17
                  bltu         gp, s6, 156f
                  slli         t4, t4, 18
                  or           zero, tp, t1
                  ori          a0, s4, 1771
                  sltiu        a2, s1, -1864
                  and          s4, s9, t5
                  addi         s6, a2, 607
                  auipc        t4, 226236
                  andi         a1, s7, 1300
154:              xori         sp, a4, 1999
                  andi         s2, s4, -1415
156:              lui          t1, 636431
                  or           ra, a6, a4
                  or           t6, t1, t3
                  slli         a2, s8, 24
                  nop
                  addi         a2, a4, 1176
                  slli         a6, a1, 0
                  sra          a0, t0, a7
                  sra          s2, s4, s8
                  ori          a0, a5, -473
                  sra          t0, ra, a0
                  lui          s10, 684672
                  bltu         t6, t2, 188f
                  lui          s7, 329184
                  add          a5, s8, t4
                  sltu         s6, s7, t1
                  blt          a7, zero, 188f
                  nop
                  srli         s2, t6, 11
                  addi         s2, s11, 1725
                  add          a3, ra, a4
                  bge          a2, s1, 189f
                  addi         t4, s7, 1400
                  bgeu         t2, t0, 186f
                  bltu         a7, t2, 184f
                  bge          t1, a0, 189f
                  slli         s9, s0, 19
                  sub          s11, a7, t3
184:              or           s1, s8, s2
                  sub          a0, sp, sp
186:              and          s11, s6, t2
                  bltu         s9, s1, 192f
188:              blt          s0, s6, 190f
189:              ori          a5, zero, 960
190:              addi         a6, gp, -343
                  slt          a5, tp, zero
192:              andi         t0, t4, -1416
                  lui          t6, 492765
                  xori         a5, t1, -585
                  slli         a1, s7, 21
                  slti         a4, a2, 590
                  bne          a1, a4, 210f
                  nop
                  lui          gp, 281843
                  and          a0, zero, s10
                  xori         a0, s6, 1123
                  auipc        s7, 411506
                  slli         a3, a4, 21
                  xor          t1, a0, a3
                  sltu         s11, s3, s1
                  beq          t0, s3, 210f
                  sub          s4, s6, a3
                  sra          s7, s11, a6
                  bne          a6, s2, 229f
210:              nop
                  addi         s2, tp, 1935
                  sltu         a1, s6, gp
                  bgeu         s5, a3, 224f
                  nop
                  addi         s7, t2, -201
                  addi         s2, a1, 1386
                  srl          s0, s7, s2
                  and          gp, a5, t2
                  xori         t4, t0, 1106
                  addi         s11, s9, 1280
                  slli         t6, a5, 3
                  or           t4, sp, s9
                  srl          t0, s7, s5
224:              andi         a0, t1, 473
                  bne          t6, a3, 236f
                  sra          a5, s11, s11
                  sra          s7, a5, a4
                  bge          a4, a5, 233f
229:              slti         a3, t5, -1580
                  sra          s8, a2, s10
                  addi         a4, a4, 1439
                  nop
233:              sub          sp, s7, t3
                  lui          a4, 821346
                  blt          s5, t1, 242f
236:              sll          a1, s7, s8
                  sltu         ra, a4, s10
                  slli         s6, t5, 12
                  slt          gp, t4, t5
                  blt          s7, s7, 256f
                  sltiu        ra, s4, -650
242:              andi         ra, a4, -1862
                  bge          a2, t6, 253f
                  bltu         s2, t0, 264f
                  xor          a1, sp, s11
                  sll          s10, s5, t5
                  sltu         t0, a4, t4
                  or           ra, t2, zero
                  add          gp, s8, s10
                  addi         t1, t2, -441
                  or           a2, s8, sp
sub_1_4:          jal          a6, 20f
0:                jal          s10, 22f
1:                jal          ra, 8f
2:                jal          ra, 11f
3:                jal          ra, 28f
4:                jal          ra, 2b
5:                jal          t0, 26f
6:                jal          ra, 12f
7:                jal          ra, 9f
8:                jal          ra, 5b
9:                jal          sp, 24f
10:               jal          t1, 7b
11:               jal          t0, 23f
12:               jal          ra, 18f
13:               jal          s11, 10b
14:               jal          s11, 1b
15:               jal          ra, 17f
16:               jal          t1, 27f
17:               jal          ra, 14b
18:               jal          t2, 25f
19:               jal          t1, 13b
20:               jal          s10, 0b
21:               jal          t1, 6b
22:               jal          s0, 16b
23:               jal          ra, 3b
24:               jal          ra, 15b
25:               jal          t1, 4b
26:               jal          t1, 21b
27:               jal          s11, 19b
28:               ori          t0, zero, -44
                  slt          s0, t2, t6
253:              add          s1, a0, s5
                  sll          t2, s2, a3
                  sltiu        t0, s10, 1197
256:              and          a4, zero, t3
                  sltiu        a5, s10, 988
                  nop
                  addi         a1, s4, -1142
                  bltu         a3, sp, 275f
                  xori         a4, a6, 1368
                  lui          s10, 241111
                  bge          s5, a0, 269f
264:              andi         t3, s1, -244
                  lui          a6, 418918
                  or           t3, s5, t3
                  beq          tp, s7, 276f
                  srai         s7, t5, 17
269:              srli         t6, s4, 31
                  sltu         t5, a2, a4
                  sll          s11, a2, s0
                  lui          t4, 755820
                  or           gp, t0, s8
                  beq          a7, zero, 276f
275:              addi         t6, a4, -2010
276:              addi         t4, a7, 351
                  lw           a6, 4(a7)
                  slti         s9, a0, -1585
                  slt          sp, sp, s3
                  srai         t0, s2, 21
                  auipc        s10, 718549
                  sub          sp, a4, ra
                  ori          gp, s8, -1574
                  ori          s4, s3, 667
                  addi         a7, a7, 60
                  ori          a2, t4, -774
429:              addi x15, x16, 0
429:              jalr x15, x15, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x21, x17, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x29, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x29, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x29, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x29, x7, ecall_handler
                  li x7, 0x1
                  beq x29, x7, instr_fault_handler
                  li x7, 0x5
                  beq x29, x7, load_fault_handler
                  li x7, 0x7
                  beq x29, x7, store_fault_handler
                  li x7, 0xc
                  beq x29, x7, pt_fault_handler
                  li x7, 0xd
                  beq x29, x7, pt_fault_handler
                  li x7, 0xf
                  beq x29, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x17, x21, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x21, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x21, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x17, x21, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x17, x21, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x17, x21, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
