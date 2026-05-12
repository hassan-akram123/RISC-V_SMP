.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0xfdb5c23c
                  li x1, 0xe
                  li x2, 0xfbdd758c
                  li x3, 0x8
                  li x4, 0xb1a1375a
                  li x5, 0x3f3f6016
                  li x6, 0x80000000
                  li x7, 0xfbebfd53
                  li x9, 0xf164107e
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xa
                  li x13, 0x3
                  li x14, 0xf5ee75b3
                  li x15, 0x7
                  li x16, 0xfa47f4ba
                  li x17, 0xc15622cf
                  li x18, 0xf6c8c9db
                  li x19, 0xf2760fd9
                  li x21, 0x6
                  li x22, 0x0
                  li x23, 0xf235d4db
                  li x24, 0xaa097ec8
                  li x25, 0xfd48a3d5
                  li x26, 0xf5773ede
                  li x27, 0xce279d57
                  li x28, 0x80000000
                  li x29, 0x2
                  li x30, 0xb
                  li x31, 0xf7676f5f
                  la x20, user_stack_end
main:             addi         t3, zero, 4 #init loop 0 counter
                  or           s11, a1, s4
                  auipc        a4, 520385
                  slli         a0, a4, 9
                  slti         s10, t3, -59
                  or           t6, s3, a6
                  addi         s8, a6, -1603
                  lui          s7, 172056
                  srai         a7, s11, 21
                  auipc        a6, 600413
                  add          s2, a0, a4
                  xor          a3, a3, s0
                  addi         a1, zero, 8 #init loop 0 limit
                  sub          t4, t2, t5
main_12_0_t:      addi         gp, s1, 1099
                  addi         t3, t3, 5 #update loop 0 counter
                  slt          t1, t5, s11
                  slt          s9, s4, s3
                  slli         a4, sp, 15
                  sll          s11, t6, ra
                  bltu         t3, a1, main_12_0_t #branch for loop 0
                  nop
                  addi         s11, zero, 5 #init loop 1 counter
                  lui          t0, 445863
                  addi         a0, zero, 20 #init loop 1 limit
                  sra          s3, sp, sp
                  slti         s3, a5, -859
main_7_1_t:       slt          a6, zero, s4
                  addi         s11, s11, 5 #update loop 1 counter
                  addi         s8, zero, 7 #init loop 0 counter
                  sub          t0, sp, a0
                  or           t3, gp, s2
                  sll          t2, s9, s1
                  addi         t4, zero, 6 #init loop 0 limit
                  lui          ra, 261471
                  srai         tp, s1, 11
main_7_0_t:       lui          s2, 740424
                  srli         a7, t1, 24
                  andi         a6, a2, 1381
                  slti         t2, t5, 683
                  sll          a7, a5, t2
                  slti         s2, s6, -1674
                  sra          a2, ra, t4
                  andi         tp, a6, 1396
                  addi         s8, s8, -4 #update loop 0 counter
                  and          a2, s5, a1
                  sra          t2, tp, s6
                  slt          a2, s0, a7
                  sltu         a3, t0, s1
                  srl          ra, t0, t0
                  addi         t1, t5, 983
                  bgeu         s8, t4, main_7_0_t #branch for loop 0
                  sub          s6, a1, a4
                  beq          s11, a0, main_7_1_t #branch for loop 1
                  lui          a1, 653885
                  addi         s7, zero, -10 #init loop 1 counter
                  slt          t3, s3, t2
                  addi         s3, zero, 15 #init loop 1 limit
                  andi         s5, t5, -1332
main_15_1_t:      ori          t6, t3, -1379
                  sub          a4, t4, t6
                  and          s11, t3, s10
                  addi         s7, s7, 2 #update loop 1 counter
                  or           a4, t5, a5
                  slt          a4, zero, t2
                  lui          s8, 1043929
                  sub          s8, s9, a4
                  addi         a0, zero, 10 #init loop 0 counter
                  andi         s11, a2, -2009
                  sltiu        s5, s8, -811
                  addi         a6, zero, 10 #init loop 0 limit
                  srli         a5, a1, 3
                  nop
                  srli         a3, a0, 12
main_15_0_t:      sub          a2, gp, t2
                  sltiu        ra, t5, -478
                  addi         a0, a0, -9 #update loop 0 counter
                  bgeu         a0, a6, main_15_0_t #branch for loop 0
                  andi         t2, s8, -1533
                  or           gp, t1, t3
                  auipc        a5, 222574
                  and          ra, gp, s10
                  bltu         s7, s3, main_15_1_t #branch for loop 1
                  slt          s1, a1, zero
                  addi         ra, zero, -6 #init loop 0 counter
                  sll          a2, s1, gp
                  auipc        s9, 399571
                  addi         a4, zero, 16 #init loop 0 limit
                  or           zero, a2, t5
main_11_0_t:      add          zero, ra, a0
                  srai         gp, a5, 27
                  xor          s11, t0, t4
                  addi         ra, ra, 9 #update loop 0 counter
                  slli         s2, s5, 6
                  slti         a1, a0, 1594
                  sltu         s6, a5, t6
                  auipc        t2, 196907
                  andi         a5, sp, 984
                  sltu         gp, zero, a7
                  srai         t1, a0, 9
                  auipc        a0, 206184
                  bltu         ra, a4, main_11_0_t #branch for loop 0
                  addi         gp, s10, -1475
                  addi         a7, zero, 1 #init loop 0 counter
                  or           ra, s4, s11
                  sltu         a5, s3, s11
                  xor          a1, ra, a6
                  add          a2, t2, t5
                  ori          s3, a7, 786
                  slti         ra, s0, -198
                  srl          t4, a7, s11
                  sltu         s10, a5, gp
                  sltu         s6, a5, sp
                  addi         tp, zero, -13 #init loop 0 limit
                  sra          zero, ra, t4
main_6_0_t:       sltiu        t4, a5, 2012
                  sll          s9, s5, sp
                  and          s1, t6, a0
                  nop
                  addi         a7, a7, -9 #update loop 0 counter
                  or           sp, t4, s5
                  and          s5, a1, s5
                  and          s6, sp, s10
                  sub          a2, a0, t2
                  ori          t2, a2, 1108
                  sltu         s5, s8, a6
                  and          t2, s10, ra
                  bge          a7, tp, main_6_0_t #branch for loop 0
                  ori          ra, s7, 1234
                  addi         a1, zero, -3 #init loop 1 counter
                  add          t4, t2, t1
                  addi         a7, zero, 9 #init loop 1 limit
main_8_1_t:       xor          s11, a4, t6
                  addi         a1, a1, 3 #update loop 1 counter
                  srai         s1, a6, 18
                  addi         t2, zero, -3 #init loop 0 counter
                  and          t4, s1, s7
                  slt          s10, s8, t0
                  xori         t4, a6, 963
                  addi         t1, zero, 6 #init loop 0 limit
                  andi         zero, a0, -537
                  srl          ra, t6, a7
                  srli         gp, sp, 6
main_8_0_t:       xor          zero, a1, t4
                  sltiu        s11, t0, -19
                  addi         t2, t2, 3 #update loop 0 counter
                  lui          gp, 354387
                  bne          t2, t1, main_8_0_t #branch for loop 0
                  or           tp, tp, t4
                  andi         s3, s5, 1307
                  slli         s5, t4, 21
                  sll          s1, t1, s7
                  sub          t0, a2, s7
                  beq          a1, a7, main_8_1_t #branch for loop 1
                  slli         sp, a3, 17
                  addi         t3, zero, 9 #init loop 1 counter
                  or           t1, s9, s9
                  nop
                  addi         ra, zero, 8 #init loop 1 limit
main_9_1_t:       and          a1, a2, a0
                  and          a1, s7, gp
                  srai         sp, zero, 29
                  sltiu        a5, t2, 768
                  lui          a0, 87980
                  addi         t3, t3, -6 #update loop 1 counter
                  slli         s7, t6, 27
                  addi         s5, zero, -9 #init loop 0 counter
                  auipc        a7, 349120
                  sll          a2, t5, s0
                  addi         t4, zero, 8 #init loop 0 limit
                  srli         a6, a1, 5
main_9_0_t:       auipc        gp, 805678
                  srli         tp, a1, 29
                  lui          s9, 879112
                  add          zero, a2, t5
                  srai         t2, tp, 6
                  add          zero, s2, s11
                  addi         s5, s5, 2 #update loop 0 counter
                  auipc        s10, 547396
                  sll          t2, sp, t0
                  or           s2, s10, a5
                  auipc        s10, 195360
                  ori          t0, a3, 1669
                  slt          a6, t5, s0
                  or           a4, t4, a5
                  blt          s5, t4, main_9_0_t #branch for loop 0
                  addi         s2, s9, -1179
                  sra          s8, a2, s5
                  bgeu         t3, ra, main_9_1_t #branch for loop 1
                  or           t1, a1, a1
                  addi         t2, zero, 3 #init loop 0 counter
                  addi         a7, zero, -1 #init loop 0 limit
main_2_0_t:       slt          s3, t6, t5
                  addi         t2, t2, -10 #update loop 0 counter
                  bge          t2, a7, main_2_0_t #branch for loop 0
                  nop
                  addi         s8, zero, 10 #init loop 0 counter
                  srli         a4, ra, 3
                  addi         a0, zero, 10 #init loop 0 limit
main_13_0_t:      sub          s11, s1, s10
                  sra          s11, tp, t6
                  addi         s8, s8, -8 #update loop 0 counter
                  sltu         t2, t5, s3
                  sra          s10, s8, t4
                  bgeu         s8, a0, main_13_0_t #branch for loop 0
                  sll          ra, s2, s4
                  addi         s2, zero, 1 #init loop 1 counter
                  sltiu        a0, gp, -1353
                  addi         a1, zero, 13 #init loop 1 limit
                  lui          tp, 646596
main_10_1_t:      slt          s9, gp, a3
                  nop
                  addi         s2, s2, 6 #update loop 1 counter
                  sra          s11, t6, s9
                  xor          s1, a7, t6
                  sltu         t1, s6, t0
                  and          t6, a4, s9
                  sub          a7, t4, s7
                  addi         t2, zero, 3 #init loop 0 counter
                  addi         s3, zero, -12 #init loop 0 limit
                  or           s9, s1, s4
main_10_0_t:      and          a3, a3, a0
                  addi         t2, t2, -1 #update loop 0 counter
                  sll          sp, a2, s5
                  beq          t2, s3, main_10_0_t #branch for loop 0
                  addi         s8, t3, -1102
                  add          a4, s7, t1
                  sra          gp, t6, s10
                  nop
                  sub          a2, a0, a0
                  bltu         s2, a1, main_10_1_t #branch for loop 1
                  lui          s7, 864479
                  addi         t3, zero, -8 #init loop 1 counter
                  slli         zero, s8, 14
                  slti         zero, s11, 136
                  xori         s6, s6, 905
                  addi         gp, zero, 11 #init loop 1 limit
main_14_1_t:      add          s11, a3, s1
                  addi         t3, t3, 7 #update loop 1 counter
                  and          a2, t3, s11
                  add          a5, s0, a5
                  slt          s11, gp, s8
                  addi         s1, zero, -9 #init loop 0 counter
                  ori          s8, s4, -31
                  addi         t4, zero, 20 #init loop 0 limit
                  lui          s10, 105655
                  add          t0, t4, tp
main_14_0_t:      ori          ra, ra, -389
                  srl          t2, a4, a4
                  addi         s1, s1, 10 #update loop 0 counter
                  sltiu        s8, s7, -817
                  bltu         s1, t4, main_14_0_t #branch for loop 0
                  srl          sp, s3, s8
                  bltu         t3, gp, main_14_1_t #branch for loop 1
                  slli         a7, a5, 5
                  addi         t1, zero, 7 #init loop 1 counter
                  sltiu        s10, t0, 1080
                  srl          tp, s7, t5
                  add          s7, tp, a2
                  xori         t6, t4, 1534
                  and          s9, s11, a6
                  sltiu        a7, s7, 1960
                  or           a0, a6, t2
                  xori         s8, s7, -1851
                  addi         s2, s7, -606
                  srai         t6, a4, 12
                  addi         s5, zero, -18 #init loop 1 limit
                  srai         a5, t3, 7
                  slli         ra, s8, 30
                  addi         a0, gp, 714
main_4_1_t:       sltu         a0, s2, t5
                  or           s6, s9, s2
                  nop
                  addi         t1, t1, -4 #update loop 1 counter
                  addi         a6, s8, -1955
                  srli         s9, s6, 15
                  sub          a0, a7, ra
                  xor          a7, a1, a1
                  sltu         s7, s5, a0
                  addi         a1, zero, 0 #init loop 0 counter
                  addi         gp, zero, 19 #init loop 0 limit
main_4_0_t:       add          s7, t2, s8
                  slt          s3, t4, ra
                  addi         a1, a1, 3 #update loop 0 counter
                  bltu         a1, gp, main_4_0_t #branch for loop 0
                  auipc        t0, 742022
                  sub          s10, s5, s11
                  bge          t1, s5, main_4_1_t #branch for loop 1
                  andi         a4, t3, 212
                  addi         s3, zero, 1 #init loop 0 counter
                  addi         s11, zero, 7 #init loop 0 limit
main_1_0_t:       slti         t3, gp, -415
                  addi         s3, s3, 5 #update loop 0 counter
                  ori          ra, s8, 1995
                  sltiu        a2, a5, -912
                  blt          s3, s11, main_1_0_t #branch for loop 0
                  slt          t0, gp, t4
                  addi         a1, zero, 6 #init loop 0 counter
                  lui          ra, 338315
                  sltiu        a0, s6, 55
                  addi         s3, zero, -7 #init loop 0 limit
                  srai         t2, a0, 7
main_0_0_t:       slti         s1, t5, -76
                  srl          a3, a2, s0
                  addi         a1, a1, -5 #update loop 0 counter
                  add          s11, a6, a2
                  addi         t4, t1, -540
                  lui          t1, 38094
                  slli         a5, a7, 12
                  sll          a7, a2, s10
                  bge          a1, s3, main_0_0_t #branch for loop 0
                  ori          s5, s5, 999
                  add          a3, a2, a7
                  or           t6, a7, t6
                  bgeu         s7, s8, 7f
                  bge          tp, t2, 5f
                  lui          a6, 454834
5:                beq          t3, s10, 25f
                  xor          s1, s9, a1
7:                ori          a4, a0, -1535
                  srl          a4, t6, tp
                  and          s3, a5, t5
                  bltu         sp, a6, 20f
                  sll          t0, s8, s4
                  lui          t4, 10590
                  slli         a1, s0, 23
                  or           s9, a7, t2
                  xor          a3, s4, t2
                  slti         a4, ra, -1609
                  auipc        a4, 259867
                  srai         s10, s0, 17
                  sltu         t4, ra, a7
20:               or           zero, a6, s5
                  and          ra, s6, t2
                  sra          s9, s1, s10
                  slti         a0, tp, 717
                  lui          t3, 37031
25:               bne          s9, a2, 40f
                  auipc        s10, 968005
                  sll          s8, sp, s4
                  srli         s5, s10, 29
                  and          s1, s10, t3
                  auipc        s8, 583698
                  sra          a0, s3, s0
                  slt          a2, s7, t1
                  sub          s8, zero, a3
                  auipc        s5, 820044
                  bltu         t1, t6, 42f
                  sltiu        zero, t6, -1513
                  bgeu         s3, s5, 40f
                  andi         a0, t4, 957
                  sll          s5, s11, a6
40:               srli         s6, s6, 1
                  addi         a0, t6, -1649
42:               addi         a4, s7, -1120
                  nop
                  andi         sp, a4, 2032
                  addi         t2, zero, 0 #init loop 0 counter
                  slti         t3, s3, 1109
                  slt          t6, a5, a5
                  sra          ra, tp, s8
                  slt          a5, s0, s3
                  slti         s8, s8, -709
                  andi         a6, t6, -267
                  srli         ra, t1, 2
                  sra          ra, gp, gp
                  sra          s7, s11, a7
                  addi         s10, zero, 17 #init loop 0 limit
                  slti         s5, a3, 1091
main_3_0_t:       sltu         s3, a7, a1
                  addi         a7, ra, -870
                  addi         t2, t2, 2 #update loop 0 counter
                  nop
                  ori          a1, s5, -661
                  sltiu        t6, a0, 908
                  auipc        a7, 604878
                  add          s5, a5, s9
                  xor          t3, sp, s3
                  and          s8, ra, s6
                  xori         gp, a4, -1760
                  slti         a3, s0, 504
                  blt          t2, s10, main_3_0_t #branch for loop 0
                  or           t4, s11, s3
                  bgeu         s9, s1, 61f
                  and          gp, s1, t3
                  blt          a4, tp, 53f
                  srl          a0, ra, t5
                  sltu         zero, s4, s6
                  sltu         s5, a3, s3
                  bltu         a7, s0, 65f
                  ori          a1, a4, -160
53:               blt          s11, s4, 59f
                  srai         s2, s4, 20
                  srai         a7, s0, 19
                  srli         a5, s8, 4
                  bne          a4, s8, 64f
                  lui          t2, 615515
59:               bgeu         t1, a2, 74f
                  xori         a1, s11, -1073
61:               blt          ra, s7, 71f
                  bltu         s10, s10, 76f
                  beq          s9, t4, 76f
64:               slti         a6, s1, -467
65:               sra          s10, a3, a1
                  or           zero, tp, s9
                  or           a6, t5, a2
                  xori         s10, gp, 1684
                  sub          t6, a0, a1
                  bltu         t3, a2, 75f
71:               slli         sp, ra, 28
                  sra          s7, tp, a6
                  auipc        s11, 249353
74:               sll          gp, a4, s2
75:               add          s11, ra, s10
76:               beq          s1, s4, 81f
                  slli         a5, s9, 30
                  sll          a2, sp, a0
                  sltiu        s9, t1, -1281
                  andi         t0, s8, 1960
81:               srl          a2, s10, t1
                  or           s9, s5, s5
                  xori         zero, a3, 1135
                  auipc        s10, 34635
                  andi         t2, a2, -522
                  addi         t2, t5, 30
                  srai         a6, s4, 19
                  lui          s6, 663310
                  srl          s7, sp, t3
                  bltu         s1, s9, 105f
                  srli         t4, ra, 10
                  sltu         s10, tp, s11
                  or           s11, a7, a7
                  andi         t6, t5, -1706
                  bltu         t1, s9, 103f
                  addi         a4, t5, -29
                  bgeu         s3, a4, 117f
                  srl          a3, s3, s1
                  addi         s11, s4, 1527
                  srai         ra, a2, 28
                  slt          s9, ra, s0
                  nop
103:              bgeu         s2, s9, 109f
                  bge          t3, a5, 113f
105:              add          sp, s3, tp
                  bgeu         s7, a7, 111f
                  or           gp, t4, gp
                  addi         a4, s1, -312
109:              xori         gp, t6, 1675
                  beq          t6, s1, 120f
111:              sll          a6, t1, s0
                  slt          a5, a2, t4
113:              slli         a4, a4, 14
                  beq          s10, s9, 117f
                  or           a5, s6, a7
                  srli         a2, s10, 25
117:              or           sp, a5, s2
                  slli         a6, tp, 6
                  srli         s1, t1, 16
120:              bgeu         a2, s4, 122f
                  sltiu        a4, t3, -1692
122:              srai         s6, a2, 1
                  beq          a1, s7, 128f
                  slti         ra, a2, -2033
                  addi         a5, a4, 684
                  blt          a3, a0, 133f
                  andi         s8, s9, -267
128:              slt          zero, t1, s2
                  blt          a3, sp, 134f
                  andi         t0, s8, 50
                  addi         s3, s2, -2003
                  auipc        a5, 843517
133:              auipc        t4, 658474
134:              addi         s2, a1, -338
                  addi         gp, s10, 1796
                  beq          a2, sp, 151f
                  andi         a0, t6, 711
                  or           a0, t2, s6
                  srli         gp, s7, 26
                  srai         s8, s0, 6
                  bltu         s0, a1, 156f
                  sra          a7, s6, a5
                  slli         a2, ra, 20
                  sra          s9, s0, a1
                  slt          s2, s5, a7
                  srli         a4, tp, 28
                  or           a4, s1, s3
                  bge          tp, gp, 155f
                  andi         t3, a1, -1202
                  srl          gp, zero, s3
151:              lui          s2, 268069
                  slt          t4, a0, s6
                  bne          s1, s10, 156f
                  blt          s3, s11, 157f
155:              lui          sp, 861220
156:              sll          zero, s11, a2
157:              xor          s11, a2, s10
                  slt          t2, s5, s2
                  addi         s10, s7, -1324
                  ori          a4, t1, 1995
                  slli         s5, t6, 13
                  sra          ra, s5, zero
                  slt          s8, t2, a4
                  bne          a4, a5, 170f
                  blt          a3, a5, 173f
                  nop
                  xor          a4, s2, t6
                  bne          t2, s10, 177f
                  andi         a6, s6, -517
170:              sll          a6, a3, zero
                  xori         s10, t0, -364
                  bne          a2, a2, 182f
173:              and          t1, a2, a7
                  bge          s2, a4, 179f
                  srai         s11, gp, 17
                  blt          t2, s2, 181f
177:              andi         t6, t4, 271
                  beq          s7, t6, 194f
179:              sltu         a1, s5, a4
                  sltiu        t3, a6, -1759
181:              xori         t1, a6, -2016
182:              srai         a0, gp, 6
                  sll          sp, t2, t4
                  slli         s5, t5, 5
                  bgeu         a5, t1, 191f
                  sltiu        a3, s6, -1928
                  or           s11, s7, a3
                  sltiu        s5, t4, -1639
                  auipc        tp, 21674
                  sub          ra, a3, s1
191:              nop
                  add          s10, a7, zero
                  slli         t0, s4, 12
194:              lui          t1, 659296
                  sra          s1, s8, tp
                  blt          a6, t2, 206f
                  sltu         t3, s5, s0
                  sll          s5, a5, s8
                  auipc        s2, 19033
                  srli         tp, a2, 10
                  srli         a0, zero, 0
                  andi         a4, a1, 1322
                  sll          t0, s11, t3
                  bgeu         s2, s11, 209f
                  slt          s8, t6, s2
206:              lui          a7, 866605
                  auipc        a1, 836582
                  bgeu         s0, a3, 215f
209:              srai         ra, s5, 13
                  slli         tp, a0, 17
                  add          a7, s4, a7
                  lui          t2, 819243
                  blt          sp, s1, 215f
                  ori          s8, a3, -1760
215:              sltu         s5, t0, t2
                  sll          s8, gp, gp
                  xor          s5, a6, s1
                  addi         s1, t3, 1822
                  xor          s2, t6, s7
                  bgeu         s9, sp, 235f
                  sltu         zero, t4, a5
                  sltiu        s11, s4, 1546
                  slt          zero, zero, s10
                  srai         s2, sp, 24
                  bgeu         t1, s9, 235f
                  sra          tp, s8, zero
                  sltiu        a4, zero, -1901
                  srli         s10, a3, 4
                  srai         a6, gp, 22
                  add          a4, s1, s11
                  auipc        s9, 145970
                  sltiu        a4, a7, 173
                  sra          s5, s10, a6
                  beq          t6, t4, 248f
235:              addi         s5, a0, 1872
                  andi         t6, a4, 1651
                  slli         s7, ra, 7
                  bge          gp, t3, 243f
                  sub          s11, t2, s10
                  bgeu         s9, s2, 242f
                  bne          s3, t0, 254f
242:              xor          s8, a7, s4
243:              bgeu         t4, s6, 248f
                  srai         a0, a4, 5
                  bgeu         ra, a2, 251f
                  bne          t3, zero, 251f
                  bne          zero, t1, 267f
248:              bgeu         s0, t3, 262f
                  srai         a5, s5, 28
                  or           s11, t5, a2
251:              lui          t4, 518397
                  andi         s10, a4, 1266
                  bge          t0, s10, 260f
254:              andi         sp, a4, 743
                  and          s7, t2, t4
                  addi         s8, zero, 1376
                  bne          t2, s5, 277f
                  srli         gp, t4, 31
                  beq          t5, zero, 274f
260:              slli         a1, t4, 28
                  beq          sp, s5, 266f
262:              bltu         s0, a5, 272f
                  andi         s6, s10, -540
                  blt          zero, s1, 269f
                  bgeu         s4, s3, 273f
266:              auipc        zero, 152698
267:              srl          s2, s3, a0
                  bge          a7, ra, 271f
269:              bne          t0, ra, 275f
                  add          a1, t4, t2
271:              auipc        t4, 600
272:              sltiu        t3, a0, -617
273:              blt          gp, gp, 286f
274:              xori         s9, a2, 1816
275:              nop
                  addi         a3, a4, -226
277:              and          tp, a6, a0
                  srl          s10, t4, a7
                  ori          s9, s10, -777
                  sub          tp, s9, s3
                  slti         a4, t2, -1
                  slt          a4, sp, t2
                  beq          s6, s7, 285f
                  blt          t4, a2, 290f
285:              sra          t4, s0, s4
286:              bne          a5, s6, 289f
                  bne          t1, s8, 294f
                  bgeu         s2, t1, 293f
289:              sltiu        s9, t3, -1166
290:              nop
                  ori          t0, a4, -309
                  srai         s8, sp, 21
293:              bgeu         a2, a0, 313f
294:              sltu         s10, t1, s11
                  blt          zero, t5, 309f
                  sra          s5, t2, a4
                  srli         s3, s10, 29
                  ori          a6, ra, -1308
                  beq          sp, a4, 304f
                  sra          zero, s11, t1
                  add          s6, a0, s1
                  andi         t6, t3, -174
                  bne          tp, a7, 319f
304:              andi         a1, a7, 826
                  srli         s1, a1, 31
                  lui          t1, 159385
                  auipc        t0, 299828
                  lui          t1, 413024
309:              nop
                  sltu         t0, t1, t4
                  auipc        s7, 686237
                  addi         zero, t1, 1042
313:              lui          s8, 977919
                  srai         ra, t5, 20
                  xori         ra, s1, -1132
                  or           s9, t5, s8
                  addi         a4, a2, 1943
                  sll          gp, s9, s9
319:              slli         zero, a7, 18
                  lui          s2, 169507
                  sub          zero, s5, s3
                  beq          t2, s9, 332f
                  bge          gp, s5, 332f
                  bge          a1, s0, 326f
                  and          t0, a6, s6
326:              addi         t2, s6, -438
                  xor          a5, s2, s3
                  sltiu        gp, t1, 1735
                  or           a4, zero, a1
                  andi         s7, s9, -932
                  beq          s8, s6, 346f
332:              auipc        s6, 406510
                  beq          t4, s1, 338f
                  srl          t2, s8, sp
                  xori         t0, a7, -1100
                  ori          ra, ra, -680
                  nop
338:              beq          s10, a5, 345f
                  andi         tp, zero, 2024
                  srl          s1, s9, a5
                  sll          t2, a4, s4
                  sll          a6, t3, s4
                  sltiu        sp, t0, 1994
                  or           t4, a5, zero
345:              addi         a0, sp, 161
346:              addi         t1, t6, 2006
                  slti         a3, a3, 742
                  lui          t3, 334246
                  bge          t6, a7, 355f
                  sltu         s8, a3, s6
                  sltiu        s8, ra, 351
                  blt          s0, t1, 367f
                  bltu         t2, t0, 363f
                  srli         s2, zero, 10
355:              blt          a0, a2, 360f
                  xori         t4, gp, -1544
                  sltu         ra, a5, t4
                  sub          a6, s0, s3
                  sra          t4, a6, s8
360:              sltu         t4, t3, t6
                  bgeu         t1, ra, 375f
                  bne          s0, s7, 369f
363:              sll          zero, t4, tp
                  lui          t4, 1006750
                  srai         s11, t5, 23
                  bltu         s1, a5, 386f
367:              bltu         a5, a7, 372f
                  andi         a6, a7, -5
369:              andi         t0, a4, -235
                  lui          s1, 403888
                  slt          a3, a0, t4
372:              blt          s10, a6, 377f
                  lui          s6, 540953
                  lui          a7, 568550
375:              slt          a3, ra, s8
                  and          s1, a2, a6
377:              bge          s6, t1, 391f
                  and          t4, s0, a3
                  sra          t0, a0, s8
                  bne          t2, t0, 385f
                  bltu         a5, s3, 388f
                  sub          t2, s8, s3
                  or           a3, t6, s4
                  slti         t1, s1, 497
385:              sll          a4, s7, sp
386:              bltu         gp, a0, 396f
                  sra          t6, s4, sp
388:              sub          a6, zero, a6
                  bgeu         sp, zero, 404f
                  xor          s11, t4, a4
391:              sra          s7, s5, t0
                  bgeu         s0, a6, 407f
                  sltiu        s2, a1, -23
                  bne          s6, a4, 401f
                  auipc        a4, 151507
396:              blt          t1, t5, 399f
                  xori         s2, a6, -661
                  srl          s10, ra, s2
399:              auipc        a7, 648535
                  xori         a5, t0, 243
401:              srli         a1, s5, 30
                  sltiu        zero, s9, -1111
                  addi         s3, a5, -270
404:              slti         a3, t5, 1560
                  srl          s8, s9, s7
                  auipc        ra, 393037
407:              andi         s3, tp, -1737
                  srl          tp, t2, s0
                  andi         s6, gp, -1891
                  add          s6, a5, s9
                  sltiu        s2, s3, -977
                  slli         a4, a1, 21
                  slti         t6, s6, 1435
                  xor          a7, s0, ra
                  sltu         s7, s10, t4
                  andi         t2, a2, 658
                  addi         a5, s4, -127
                  sltiu        gp, a6, -392
                  andi         s7, sp, 2016
                  la           s9, sub_2
                  slti         a5, t1, -669
                  addi         s9, s9, 465
                  sll          t4, s9, s4
                  slt          s1, a1, t3
                  srai         a2, s8, 13
                  and          a0, a3, a2
                  srl          zero, s7, t6
                  bne          gp, t0, main_j1 #branch to jump instr
                  xori         a7, t2, 1320
                  nop
main_j1:          jalr         a7, s9, -465 #jump main -> sub_2
                  blt          a3, a1, 435f
                  srli         a2, a1, 29
                  srai         zero, s11, 12
                  auipc        a0, 178767
                  lui          s10, 44005
                  srl          a3, t4, t4
                  auipc        gp, 960464
                  xori         t2, s7, -353
                  slli         t4, s10, 10
                  and          t2, a2, a4
                  srai         t6, s9, 27
                  addi         a4, a7, 706
                  lui          t6, 471926
                  slt          s6, a4, s6
                  srl          a1, a0, s7
435:              sub          s11, t2, zero
                  xori         sp, s5, 213
                  sltu         t6, zero, s10
                  slli         a4, t3, 28
                  lui          s11, 996853
                  xor          ra, t5, t2
                  bne          t4, s10, 454f
                  add          s5, s9, a0
                  slli         s5, s9, 5
                  nop
                  addi         a6, ra, 403
                  andi         a5, a3, -1090
                  la           t6, sub_1
                  addi         t6, t6, 704
                  srl          t3, t2, t3
                  bge          s6, gp, main_j2 #branch to jump instr
                  xori         s2, s10, 316
                  auipc        a7, 426367
                  slt          a6, a4, s9
                  sltu         s11, ra, s6
main_j2:          jalr         a7, t6, -704 #jump main -> sub_1
                  or           gp, s0, s2
                  sll          s5, s6, t3
                  beq          tp, s4, 447f
                  sltiu        s8, s2, 1120
                  sub          t6, a1, sp
447:              xori         t0, t3, -714
                  bgeu         s9, gp, 453f
                  bge          s0, a0, 459f
                  bgeu         s2, a7, 464f
                  or           s7, tp, s10
                  and          ra, s5, a1
453:              xor          s10, s5, tp
454:              add          t3, a2, s0
                  blt          t2, a0, 460f
                  beq          a3, a0, 461f
                  add          a2, t2, a4
                  andi         s11, ra, -589
459:              xori         t3, a6, 551
460:              beq          s9, s9, 462f
461:              blt          s5, s5, 477f
462:              addi         gp, s11, -1633
                  blt          s5, s11, 469f
464:              sll          a7, s3, zero
                  sltu         tp, tp, ra
                  xor          a7, s3, s6
                  srai         t4, s1, 19
                  beq          sp, a6, 470f
469:              blt          t4, s10, 477f
470:              bgeu         a6, a1, 490f
                  and          a3, a3, s3
                  blt          t1, t0, 479f
                  andi         t6, a4, -1816
                  bge          t4, s7, 494f
                  or           s1, s10, zero
                  blt          t3, s4, 482f
477:              sltiu        s5, a4, -132
                  blt          s5, t1, 487f
479:              xori         a5, s0, 1837
                  blt          a2, zero, 486f
                  sll          gp, s1, tp
482:              ori          a2, s6, -1085
                  bne          gp, zero, 493f
                  auipc        s11, 742863
                  sra          a7, sp, s1
486:              auipc        s8, 411588
487:              beq          a1, s8, 494f
                  sll          s6, a1, t1
                  slt          s3, s9, ra
490:              and          t3, a1, s4
                  slli         s10, s0, 6
                  beq          t4, s0, 507f
493:              sub          t6, s2, t5
494:              srli         a0, t0, 30
                  add          s7, t2, s7
                  sra          t6, a0, t6
                  beq          s1, a6, 510f
                  sra          t1, a3, gp
                  andi         s8, sp, 298
                  sltu         s5, t0, zero
                  srl          a7, s2, t1
                  lui          t0, 99474
                  slli         s8, s1, 23
                  slti         tp, t1, 978
                  add          s7, gp, a7
                  ori          sp, a7, 160
507:              slt          a2, tp, a4
                  blt          s7, gp, 518f
                  beq          s3, t6, 525f
510:              slt          s6, s10, s2
                  add          zero, s7, ra
                  addi         a3, a7, 358
                  srl          t4, s10, s9
                  srli         a6, t5, 10
                  beq          ra, s0, 522f
                  ori          zero, a4, 648
                  slt          ra, sp, t0
518:              add          s7, a4, a2
                  lui          a4, 591189
                  nop
                  bgeu         t4, s7, 526f
522:              srli         t2, s3, 17
                  ori          s1, a0, -354
                  add          s1, s6, s10
525:              bgeu         s5, a2, 530f
526:              slt          tp, sp, a4
                  add          s8, t4, s6
                  xori         t1, s6, 509
                  add          s5, a7, t4
530:              bne          tp, s3, 545f
                  andi         a4, ra, 882
                  sltu         s9, t3, s9
                  srli         a7, s5, 15
                  srli         a1, s3, 8
                  lui          a1, 393319
                  bge          a2, sp, 556f
                  nop
                  beq          a6, s7, 544f
                  sub          sp, s1, t0
                  bgeu         t5, s11, 554f
                  addi         t2, tp, 1992
                  auipc        s7, 755404
                  srli         s1, a7, 16
544:              bge          s9, a0, 549f
545:              andi         s7, s9, 1641
                  or           s1, sp, a2
                  sub          sp, s6, s10
                  lui          ra, 650997
549:              sltiu        s8, t5, 315
                  sltiu        gp, s5, -331
                  xor          s5, s3, s9
                  bne          t2, s7, 561f
                  addi         a2, s1, -1134
554:              bge          ra, a7, 574f
                  srli         s9, s7, 25
556:              slt          s7, t0, s5
                  bge          t1, a5, 567f
                  andi         s1, s0, -740
                  nop
                  slli         s1, s8, 8
561:              sub          s6, s0, s9
                  addi         s8, zero, 4 #init loop 0 counter
                  slt          t2, a0, s10
                  add          s5, s0, a7
                  and          s10, sp, s9
                  lui          t1, 32255
                  auipc        s1, 630619
                  slt          s10, s7, t0
                  slli         a0, t4, 26
                  sltiu        t2, gp, -1111
                  slli         t2, s11, 22
                  slli         s9, t6, 27
                  addi         a2, zero, 7 #init loop 0 limit
                  srl          a3, s8, a2
                  srl          s1, s7, a7
main_5_0_t:       sltiu        s3, s11, 471
                  add          s9, t3, a3
                  srli         ra, s2, 26
                  addi         s8, s8, 8 #update loop 0 counter
                  xor          a0, a2, a7
                  and          a4, t6, s5
                  lui          gp, 201212
                  blt          s8, a2, main_5_0_t #branch for loop 0
                  andi         t4, a5, 976
                  blt          zero, s4, 568f
                  srli         t4, a5, 23
                  addi         a7, a4, 313
                  sra          t6, s7, a4
                  xor          t6, sp, s4
567:              blt          zero, s5, 573f
568:              bne          t2, t5, 573f
                  sltu         s3, gp, zero
                  beq          gp, s0, 584f
                  and          gp, s0, s5
                  and          s9, s1, t0
573:              beq          s2, t5, 580f
574:              bltu         gp, a7, 584f
                  andi         s8, a3, 628
                  or           s6, s9, t6
                  sub          t0, a3, t3
                  bne          zero, s7, 580f
                  srai         s7, a1, 28
580:              sra          a4, s11, s8
                  srai         s6, s10, 21
                  sltu         s9, s1, a1
                  slli         t1, t0, 10
584:              xor          gp, s5, s9
                  add          tp, s0, s2
                  andi         s1, s10, 1159
                  or           s3, t1, t0
                  bne          s5, s4, 591f
                  xor          t2, zero, a1
                  srl          s11, t4, s9
591:              or           s9, zero, a0
                  beq          s7, s2, 594f
                  addi         s7, t4, -168
594:              xor          zero, t2, tp
                  srl          gp, s7, t2
                  bne          a3, a0, 601f
                  bgeu         s1, t2, 612f
                  auipc        a3, 831640
                  bgeu         s2, s8, 607f
                  beq          tp, a1, 603f
601:              bltu         s11, sp, 606f
                  sltiu        t1, gp, 246
603:              slli         s2, zero, 17
                  srl          s8, a0, a3
                  sra          s1, t4, a0
606:              bne          t3, tp, 612f
607:              bne          a5, s4, 614f
                  sltu         a6, a1, s1
                  lui          s7, 368045
                  auipc        a7, 522070
                  srai         a0, a3, 14
612:              srai         s9, tp, 6
                  sra          a7, t0, t3
614:              srai         gp, a5, 8
                  sltu         t2, s3, tp
                  sra          s10, a6, a7
                  sll          a6, t1, s0
                  bgeu         zero, s9, 623f
                  bltu         a6, a5, 624f
                  slti         s8, a6, -209
                  sll          s5, s9, s9
                  srli         ra, a4, 28
623:              ori          t6, zero, 1108
624:              sll          s3, s8, t1
                  xor          zero, t3, s8
                  auipc        s5, 303228
                  auipc        sp, 42219
                  bgeu         a2, a2, 631f
                  and          a0, t1, gp
                  slti         a5, a3, 825
631:              sll          s8, s2, s7
                  lui          ra, 105167
                  slli         s2, a1, 5
                  andi         a3, s8, 1470
                  lui          s6, 440065
                  sub          tp, a4, a2
                  srai         t2, a1, 28
                  nop
                  sltiu        s6, a4, 1265
                  bgeu         gp, tp, 643f
                  addi         t2, gp, 1819
                  sll          s1, s11, zero
643:              bltu         a7, t6, 658f
                  bge          t1, t2, 654f
                  and          zero, a1, s0
                  and          s8, t4, t4
                  bltu         s5, s7, 654f
                  nop
                  sltiu        tp, t6, 871
                  slti         t6, s0, 1899
                  bne          s11, t1, 657f
                  sra          t4, t5, gp
                  beq          s8, s6, 663f
654:              bgeu         sp, s6, 659f
                  slti         t1, s11, -151
                  beq          a4, a3, 671f
657:              sll          s9, tp, s10
658:              sltiu        a1, ra, 887
659:              add          a3, t3, a2
                  bltu         s9, sp, 665f
                  srai         s3, s11, 5
                  beq          s4, s8, 671f
663:              auipc        a3, 291173
                  slt          s2, t4, t6
665:              lui          a2, 90928
                  or           a2, t2, s11
                  srai         sp, a2, 27
                  srai         s8, a3, 3
                  andi         s2, s9, -958
                  blt          t3, tp, 677f
671:              nop
                  xor          s5, zero, gp
                  beq          t3, t5, 693f
                  lui          s10, 115196
                  nop
                  bne          a4, a6, 678f
677:              auipc        s7, 127943
678:              srai         t4, s3, 15
                  slt          s10, s8, a3
                  sltu         t0, ra, a7
                  slli         a0, a7, 9
                  srai         t2, s1, 14
                  andi         a7, s0, -2015
                  blt          t6, a0, 698f
                  slt          t4, t2, s7
                  add          t0, tp, s11
                  blt          a7, s3, 703f
                  sltiu        s11, a3, -1261
                  beq          s8, t6, 694f
                  xori         a3, s4, -1662
                  add          s6, zero, sp
                  slti         s6, t6, 679
693:              sub          a4, s2, s4
694:              or           t2, t6, s1
                  xor          t1, s8, a0
                  sub          s5, a5, s5
                  lui          gp, 261722
698:              srli         t6, t3, 5
                  srli         tp, s1, 15
                  srli         tp, s2, 30
                  slt          s9, s10, t5
                  sltu         t2, s9, s11
703:              bltu         s8, s3, 723f
                  srl          a4, a2, t5
                  addi         a5, a5, -350
                  auipc        s8, 360388
                  and          a1, a6, s2
                  slt          a2, t3, a2
                  addi         gp, a0, 1578
                  lui          s2, 912002
                  sltu         s3, a0, a1
                  srli         t3, t0, 31
                  sltu         s8, t3, a5
                  addi         t4, s9, -1341
                  sltiu        s1, s9, -673
                  and          s7, s5, s11
                  slli         t1, t3, 0
                  slt          a2, s3, t4
                  nop
                  xor          s2, s0, t2
                  slli         s2, s7, 26
                  blt          tp, t2, 732f
723:              bltu         s7, a3, 731f
                  slt          t3, tp, t4
                  sltiu        tp, s4, -379
                  addi         a5, a4, 1711
                  beq          a7, a4, 733f
                  srai         a1, s7, 25
                  sltu         a2, t0, a5
                  ori          s11, ra, -2025
731:              srai         a6, sp, 2
732:              beq          s0, a5, 746f
733:              andi         s7, s7, 996
                  andi         t2, sp, 127
                  beq          s7, s11, 748f
                  xor          s6, s2, s0
                  slt          a6, tp, t2
                  sll          a7, t2, s6
                  blt          a1, s10, 754f
                  sra          sp, gp, s9
                  or           ra, a4, t3
                  srl          s11, a5, s5
                  blt          a7, t4, 745f
                  and          s2, a2, s0
745:              sub          t4, a6, s7
746:              bne          zero, a3, 751f
                  sub          s8, s4, t5
748:              sltu         t4, s9, a2
                  bne          t5, t0, 758f
                  srai         gp, s0, 4
751:              srai         t0, t6, 19
                  srli         t6, s6, 31
                  bltu         s5, ra, 758f
754:              or           s3, s4, a4
                  sltiu        sp, a6, 299
                  ori          a1, a2, -1995
                  bne          s0, s7, 767f
758:              or           s6, s10, s5
                  nop
                  and          t4, a7, t6
                  blt          ra, t1, 771f
                  andi         zero, a4, 27
                  blt          a4, s10, 768f
                  slt          s5, ra, s10
                  slli         s7, a5, 0
                  sll          s7, s8, gp
767:              bltu         s11, a5, 770f
768:              and          sp, s0, a0
                  srai         a0, a7, 4
770:              lui          a2, 260691
771:              sll          t2, t6, s5
                  or           s3, s6, s11
                  sll          tp, t4, a1
                  slli         a4, sp, 2
                  bge          s1, s9, 795f
                  sltu         tp, s0, s2
                  xori         a5, s5, 964
                  sltu         s7, a6, a1
                  bgeu         t2, t2, 794f
                  bltu         a3, t6, 787f
                  and          tp, t4, s0
                  bne          a3, s5, 797f
                  add          s2, t2, s3
                  add          t0, s6, s2
                  bne          s3, tp, 793f
                  xor          a6, s6, s7
787:              auipc        s7, 708821
                  bltu         s11, s4, 791f
                  slt          a5, a4, s7
                  lui          t1, 779341
791:              slli         s11, sp, 29
                  srli         s6, s11, 11
793:              add          s8, s1, t0
794:              sll          s2, tp, t3
795:              sra          s11, s8, s0
                  sll          a3, t6, a5
797:              sra          t2, a2, a6
                  ori          a4, s1, -164
                  bge          a4, a2, 805f
                  bltu         a7, s5, 815f
                  bge          s5, a4, 821f
                  bltu         s0, s5, 807f
                  sltiu        t1, a2, -174
                  ori          tp, s0, 339
805:              lui          t1, 260450
                  and          a6, t6, ra
807:              addi         s6, a4, 1072
                  srai         t4, s0, 16
                  bltu         s8, t5, 819f
                  addi         sp, a5, -2036
                  or           a6, s8, t3
                  sra          s11, a1, s11
                  bge          t6, a0, 818f
                  andi         a6, s0, -849
815:              sra          s8, s7, s3
                  bne          a1, s1, 818f
                  slli         t6, s4, 16
818:              xori         ra, a2, 381
819:              bgeu         a3, s5, 825f
                  slli         t2, gp, 31
821:              addi         a1, s5, 1905
                  bltu         s8, a5, 836f
                  add          s8, gp, t1
                  sra          t4, t1, t5
825:              bltu         s10, s8, 841f
                  sll          a3, t0, s1
                  addi         a0, s7, 935
                  auipc        t0, 23747
                  xor          a0, s11, a4
                  beq          gp, s4, 836f
                  beq          ra, ra, 844f
                  auipc        t3, 1046430
                  sltiu        a6, s11, 449
                  ori          t1, t4, 164
                  bltu         a4, t3, 847f
836:              bge          s7, a7, 843f
                  bge          s9, t2, 842f
                  or           a2, a5, s0
                  srli         a2, s11, 28
                  and          a4, ra, a0
841:              ori          a4, t1, 144
842:              sll          t1, zero, t5
843:              sltu         s8, s5, a6
844:              xori         zero, t1, 1674
                  auipc        s5, 57269
                  nop
847:              srli         t4, t4, 18
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            lui          a0, 391813
                  addi         s4, s4, -16
                  xori         s3, a1, -753
                  sw           a7, 4(s4)
                  srli         sp, a5, 0
                  xori         ra, a1, 1113
                  ori          zero, s3, -191
                  slli         t3, gp, 16
                  addi         a6, zero, 7 #init loop 1 counter
                  addi         s7, zero, 8 #init loop 1 limit
                  sra          a0, a1, t1
                  sltu         s2, a1, t1
sub_4_7_1_t:      xori         t1, t3, -206
                  addi         a6, a6, 2 #update loop 1 counter
                  addi         a2, zero, 10 #init loop 0 counter
                  sll          a1, a0, a2
                  sltu         zero, gp, gp
                  addi         s6, zero, 10 #init loop 0 limit
                  sltu         s8, t6, a7
sub_4_7_0_t:      andi         a5, zero, 1386
                  srli         s11, t2, 30
                  addi         a2, a2, -9 #update loop 0 counter
                  xori         s3, s4, 372
                  bgeu         a2, s6, sub_4_7_0_t #branch for loop 0
                  blt          a6, s7, sub_4_7_1_t #branch for loop 1
                  addi         ra, s0, -2019
                  addi         a1, zero, 9 #init loop 0 counter
                  sltiu        t2, a3, -51
                  addi         s10, zero, 9 #init loop 0 limit
                  lui          zero, 612657
                  ori          s3, s10, 1448
sub_4_8_0_t:      and          t2, s9, t0
                  sll          t0, t2, zero
                  addi         a1, a1, -8 #update loop 0 counter
                  andi         s1, tp, 1944
                  xori         s2, s9, -1365
                  andi         s8, a4, 537
                  bgeu         a1, s10, sub_4_8_0_t #branch for loop 0
                  slli         a6, tp, 29
                  addi         gp, zero, 8 #init loop 1 counter
                  slli         a6, s9, 4
                  sub          a2, t6, s5
                  addi         s8, zero, 15 #init loop 1 limit
                  lui          sp, 411064
sub_4_9_1_t:      slti         t2, s2, 1599
                  slt          s2, s8, t5
                  xor          a7, s8, t6
                  andi         t0, tp, -403
                  auipc        s2, 483955
                  and          t3, sp, s5
                  xori         a7, a1, -536
                  addi         gp, gp, 3 #update loop 1 counter
                  addi         a5, zero, -7 #init loop 0 counter
                  auipc        t3, 64830
                  addi         a4, zero, 13 #init loop 0 limit
                  slt          s7, sp, s8
                  srai         s6, s10, 2
sub_4_9_0_t:      xor          t6, s6, s9
                  addi         a5, a5, 10 #update loop 0 counter
                  auipc        t2, 588332
                  slli         t4, t3, 15
                  bne          a5, a4, sub_4_9_0_t #branch for loop 0
                  bltu         gp, s8, sub_4_9_1_t #branch for loop 1
                  auipc        tp, 448800
                  addi         t0, zero, -7 #init loop 0 counter
                  or           t3, s5, t1
                  slti         s1, s5, -718
                  andi         s3, s8, -1266
                  nop
                  addi         t2, s10, -1255
                  addi         s6, s11, -315
                  addi         gp, zero, 4 #init loop 0 limit
                  slli         t2, sp, 13
                  slt          tp, a3, a2
                  add          a7, a2, zero
                  nop
sub_4_0_0_t:      ori          s5, t0, -1736
                  addi         t0, t0, 10 #update loop 0 counter
                  sll          sp, t1, s1
                  slt          t3, a5, a6
                  bltu         t0, gp, sub_4_0_0_t #branch for loop 0
                  ori          s8, a2, 438
                  addi         a2, zero, 2 #init loop 0 counter
                  add          a3, s9, s8
                  srli         gp, a0, 2
                  ori          s7, zero, -122
                  srl          s2, a2, t6
                  or           s8, t5, gp
                  lui          s7, 702424
                  sra          a6, ra, t5
                  xori         t0, t2, -413
                  slli         a4, s9, 1
                  xor          t2, s11, a5
                  addi         s9, zero, 15 #init loop 0 limit
sub_4_1_0_t:      sltiu        s3, a5, 145
                  and          s10, t1, s1
                  ori          a6, s10, -1878
                  slt          a5, t5, s11
                  auipc        s6, 1020467
                  add          t1, s8, a5
                  or           a7, tp, t4
                  sra          zero, t4, s10
                  sll          a1, t0, s8
                  andi         s5, a1, -1000
                  srli         t3, s10, 14
                  sub          a5, gp, a4
                  ori          s5, s7, -1713
                  addi         a2, a2, 3 #update loop 0 counter
                  nop
                  blt          a2, s9, sub_4_1_0_t #branch for loop 0
                  srai         a0, sp, 3
                  addi         sp, zero, 1 #init loop 0 counter
                  addi         t6, t1, -1025
                  slt          t2, a7, a0
                  addi         s7, zero, 5 #init loop 0 limit
sub_4_3_0_t:      sltu         gp, a7, s9
                  addi         sp, sp, 4 #update loop 0 counter
                  srli         a2, t2, 23
                  beq          sp, s7, sub_4_3_0_t #branch for loop 0
                  slli         t3, a5, 17
                  addi         s2, zero, 8 #init loop 1 counter
                  addi         a0, s7, -1538
                  sub          s1, s7, a3
                  sub          gp, gp, a6
                  addi         t3, zero, -20 #init loop 1 limit
                  srl          a5, ra, s5
                  xori         t6, t6, 1310
sub_4_4_1_t:      sltu         s3, a1, t6
                  addi         s2, s2, -6 #update loop 1 counter
                  sltiu        a4, s11, -1247
                  xor          s3, t2, a2
                  ori          a4, s6, 1639
                  addi         a7, zero, 0 #init loop 0 counter
                  slt          tp, s5, a0
                  addi         s10, zero, -6 #init loop 0 limit
sub_4_4_0_t:      or           a1, t5, t1
                  addi         a7, a7, -9 #update loop 0 counter
                  slti         s5, t6, -1291
                  bge          a7, s10, sub_4_4_0_t #branch for loop 0
                  xor          gp, s2, s8
                  srai         s8, s0, 6
                  srli         gp, s2, 12
                  xori         t6, t4, 1694
                  sltu         a3, a5, a1
                  and          tp, t5, t6
                  bge          s2, t3, sub_4_4_1_t #branch for loop 1
                  nop
                  addi         s9, zero, -7 #init loop 0 counter
                  lui          s2, 270786
                  srli         t6, a7, 18
                  srli         s1, t3, 24
                  sltu         t3, t3, a2
                  addi         a2, t1, 451
                  or           ra, a1, t0
                  slli         t0, t3, 1
                  ori          a3, t2, -1904
                  addi         a7, zero, 12 #init loop 0 limit
                  add          t4, s0, s9
                  sub          gp, t3, tp
                  lui          s6, 976269
                  slt          t6, t6, s6
sub_4_2_0_t:      addi         a2, t1, 919
                  nop
                  srli         a6, t4, 10
                  srai         t6, a4, 27
                  nop
                  addi         s9, s9, 7 #update loop 0 counter
                  sra          s1, s4, tp
                  slti         s11, sp, -858
                  sltiu        a5, a1, -515
                  xor          s1, t4, a4
                  and          gp, s5, a3
                  srli         s3, a5, 1
                  bltu         s9, a7, sub_4_2_0_t #branch for loop 0
                  sra          a0, zero, a7
                  sub          s10, gp, a1
                  nop
                  sra          s10, s9, tp
                  addi         a6, s8, -1099
                  bltu         s1, t4, 7f
                  sltiu        s2, s8, -1681
                  sra          t2, s5, s10
7:                blt          a6, t4, 25f
                  xori         a5, s3, 1086
                  beq          s11, a7, 12f
                  andi         a0, zero, 1338
                  andi         s7, sp, 1797
12:               blt          a3, s5, 19f
                  bltu         t6, a1, 19f
                  bgeu         a6, t2, 28f
                  srai         s11, a7, 10
                  sll          gp, a2, sp
                  auipc        ra, 894187
                  sltu         s10, a1, t4
19:               add          a4, t6, t5
                  beq          t0, s8, 26f
                  sub          a5, tp, t3
                  blt          s3, sp, 25f
                  slt          s10, s9, t3
                  beq          s2, t3, 25f
25:               srl          s2, s6, gp
26:               bltu         s9, t1, 37f
                  add          s1, a3, s10
28:               auipc        a1, 463408
                  andi         s6, a6, 1988
                  or           t1, s4, a3
                  and          a6, tp, a6
                  bltu         a7, t0, 45f
                  blt          t6, tp, 52f
                  sub          s3, s6, a5
                  sub          a7, s2, a3
                  sra          s10, a6, zero
37:               sra          sp, t3, a6
                  sra          t0, s9, zero
                  ori          t2, a7, -590
                  xori         s3, a0, 41
                  xor          s10, s1, sp
                  srl          s7, sp, a4
                  slli         t6, s9, 28
                  blt          a2, s10, 57f
45:               bgeu         zero, s11, 65f
                  sltu         s3, tp, a3
                  sltu         s1, sp, s10
                  andi         a7, s0, 1667
                  bge          t4, s8, 52f
                  slti         t4, s10, 1438
                  bgeu         s11, s3, 61f
52:               sll          s3, a2, a2
                  sra          s7, s9, s8
                  or           t0, s3, zero
                  slti         ra, s1, 937
                  lui          s6, 1021032
57:               sltu         zero, a2, s8
                  beq          a2, a4, 67f
                  slti         a3, zero, 1841
                  srli         gp, t3, 2
61:               xor          s2, s7, a4
                  sll          t6, s3, a6
                  xor          s1, t4, s9
                  xor          t3, t3, a5
65:               srai         a7, s3, 26
                  beq          s8, t5, 86f
67:               lui          tp, 880824
                  sra          tp, s7, t5
                  bge          sp, s5, 86f
                  or           s5, t0, s5
                  bltu         tp, t2, 87f
                  sra          s3, a7, t1
                  srli         a4, gp, 0
                  and          s7, a1, a4
                  srli         tp, a2, 16
                  xori         tp, t2, -1698
                  and          t6, s4, s0
                  sltiu        t6, s4, -1887
                  xor          s9, s8, a7
                  bge          s1, s7, 81f
81:               nop
                  bne          t6, t1, 97f
                  sltiu        s3, s4, -657
                  nop
                  bgeu         a2, a7, 91f
86:               slt          s8, s5, t6
87:               and          t3, t4, s6
                  sltiu        a5, t5, 1731
                  nop
                  sra          t0, a0, a1
91:               bgeu         a2, a7, 97f
                  addi         s1, a5, -1311
                  ori          t6, a3, -64
                  ori          t4, gp, 104
                  addi         a1, a7, -918
                  bge          s6, t6, 102f
97:               sltu         s9, s10, s5
                  bltu         a3, t2, 117f
                  srli         s3, sp, 15
                  srli         s10, s8, 6
                  or           a4, t0, a2
102:              srl          a3, t6, a7
                  slti         s5, s4, 996
                  addi         t4, s8, 1972
                  bne          s11, zero, 116f
                  slt          tp, a0, tp
                  sltiu        t1, a6, 1559
                  or           t4, s11, a4
                  andi         a7, s4, 1702
                  addi         s8, a2, -594
                  and          s11, t3, t3
                  sll          s9, a7, a3
                  nop
                  lui          s2, 909844
                  lui          s3, 107197
116:              slli         s10, t0, 13
117:              beq          tp, t1, 126f
                  blt          s1, a3, 129f
                  xor          s8, a3, s8
                  sltu         tp, t2, s3
                  sll          a1, a4, tp
                  srli         t4, a3, 13
                  bgeu         a7, s5, 138f
                  blt          a2, sp, 125f
125:              nop
126:              xori         s3, gp, -894
                  srl          a1, t2, a1
                  sra          s6, s9, a5
129:              andi         s10, a0, -257
                  ori          a4, a0, 1466
                  slt          a3, a6, a1
                  bge          ra, s11, 138f
                  xor          s7, t5, tp
                  bge          s9, s0, 150f
                  ori          s11, t4, 1300
                  xori         gp, t3, -814
                  or           t2, t3, ra
138:              and          s3, t1, s11
                  srai         a1, t4, 23
                  andi         a4, sp, 588
                  srai         a0, s2, 6
                  sll          t6, t3, s7
                  srli         t3, a5, 16
                  sra          a4, s1, s2
                  bge          a6, s7, 156f
                  xor          s7, t6, t4
                  sub          a6, s11, ra
                  nop
                  sltu         s8, a0, t4
150:              sub          s11, t6, s1
                  andi         s9, s2, -183
                  sll          t1, s0, ra
                  slt          t0, zero, a6
                  addi         a3, a3, -1783
                  nop
156:              srl          a3, a2, t3
                  xori         s3, t1, 1111
                  srli         s10, t0, 4
                  bne          zero, s1, 166f
                  bge          a0, t0, 179f
                  sll          s7, zero, sp
                  srai         a0, s3, 14
                  srli         t2, a4, 16
                  and          t0, s7, t2
                  sll          t2, t4, a6
166:              add          a3, t1, tp
                  bgeu         t4, t1, 187f
                  and          zero, s7, a5
                  nop
                  slt          s8, a1, s4
                  sra          s8, s8, s6
                  sub          a6, a4, t0
                  auipc        s7, 17701
                  xori         a0, s10, -435
                  or           t6, s5, t5
                  blt          s10, a2, 194f
                  or           s9, a2, t0
                  bltu         a2, sp, 181f
179:              bltu         tp, tp, 185f
                  lui          s11, 47343
181:              bge          a4, t2, 182f
182:              and          t2, s4, a0
                  sra          s6, sp, s9
                  slli         t0, s7, 15
185:              bltu         t5, s0, 196f
                  and          s11, t5, s9
187:              xori         s1, s6, 1452
                  addi         t3, s11, 632
                  sll          t1, t3, s9
                  sltu         a5, ra, s4
                  xor          t6, t5, s5
                  bne          a5, a6, 205f
                  and          a1, s0, s1
194:              addi         s11, a5, 1830
                  bne          s3, s5, 198f
196:              srai         s5, gp, 22
                  beq          s11, sp, 216f
198:              sll          ra, s0, tp
                  addi         s5, s9, -1266
                  slli         sp, ra, 0
                  ori          s6, zero, -116
                  beq          t2, tp, 211f
                  sltiu        t6, s5, 1068
                  beq          t0, s1, 221f
205:              bge          a3, s5, 216f
                  and          a2, s2, a4
                  lui          s8, 1042124
                  bgeu         t6, tp, 222f
                  srli         gp, t3, 26
                  andi         t6, s6, 1078
211:              addi         a3, s3, -471
                  sltu         a7, a7, t1
                  slli         s8, t3, 11
                  lui          tp, 570332
                  bge          s11, s5, 225f
216:              slli         s2, s3, 10
                  add          s5, t3, t0
                  and          a7, a0, a1
                  slti         sp, sp, -898
                  xor          s10, zero, s1
221:              beq          t2, s5, 227f
222:              sltu         a0, s7, s6
                  bge          t2, s9, 238f
                  sll          sp, s0, a0
225:              andi         s5, s7, -751
                  srl          tp, a0, s6
227:              ori          t3, tp, -972
                  andi         a7, ra, -974
                  blt          s0, zero, 235f
                  lui          a4, 215133
                  sll          t6, zero, a2
                  add          s1, s9, t2
                  add          ra, s11, t0
                  nop
235:              srl          s10, s1, t4
                  bne          a6, gp, 256f
                  sltu         s3, s9, tp
238:              auipc        a0, 659685
                  blt          t1, s8, 245f
                  auipc        s6, 114819
                  add          s3, s2, a3
                  slti         s6, a5, -338
                  beq          t6, s5, 258f
                  bgeu         s4, s6, 253f
245:              or           s9, a1, a3
                  and          tp, t2, a3
                  sltu         t1, t6, zero
                  addi         s1, t3, -103
                  ori          t3, s4, 1083
                  ori          t3, s6, 1540
                  auipc        a6, 175250
                  xor          s9, sp, a5
253:              srl          t6, s10, gp
                  srl          sp, s4, a0
                  andi         s8, a7, -2028
256:              srli         t4, s2, 3
                  auipc        t2, 178074
258:              blt          a7, t1, 261f
                  slt          a1, s10, s5
                  ori          a2, zero, -417
261:              auipc        t3, 448439
                  bltu         s10, t0, 265f
                  addi         s3, a2, 309
                  slt          s10, a0, t4
265:              srl          t6, t4, a7
                  bne          a3, a3, 279f
                  auipc        s9, 762172
                  addi         s9, s1, 1428
                  slti         tp, s5, -46
                  slt          s5, gp, s2
                  andi         s6, t0, -992
                  addi         t1, a2, 1338
                  bgeu         s3, s2, 274f
274:              srai         s11, s3, 31
                  auipc        a5, 204987
                  srai         s11, a0, 1
                  auipc        a5, 716501
                  add          t4, sp, t2
279:              xor          t3, a6, s9
                  slli         s5, s11, 5
                  addi         s7, zero, -10 #init loop 1 counter
                  slti         gp, s6, 1011
                  andi         gp, s6, 1652
                  and          a1, a0, zero
                  srl          a5, a6, s8
                  addi         t6, zero, -16 #init loop 1 limit
                  auipc        a7, 643344
                  sltiu        t1, s5, -330
sub_4_6_1_t:      add          s9, ra, t0
                  srli         s8, s9, 11
                  addi         s7, s7, -9 #update loop 1 counter
                  addi         ra, zero, 10 #init loop 0 counter
                  nop
                  srl          s10, t2, s6
                  ori          s8, sp, 1490
                  addi         a0, zero, 4 #init loop 0 limit
                  sltu         a1, a2, s1
                  or           a1, t0, s9
                  and          t4, s0, ra
                  srl          t3, ra, a0
                  srai         a2, a1, 26
sub_4_6_0_t:      slti         t3, s4, -491
                  or           s9, tp, tp
                  addi         ra, ra, -1 #update loop 0 counter
                  xori         t3, t2, -766
                  andi         a3, s6, -1836
                  bgeu         ra, a0, sub_4_6_0_t #branch for loop 0
                  sltiu        a1, a0, -1558
                  xori         a6, a6, 66
                  srai         s9, t3, 18
                  andi         t3, s4, 1943
                  bge          s7, t6, sub_4_6_1_t #branch for loop 1
                  and          a3, s2, s7
                  slt          gp, t6, s0
                  srai         a2, a5, 6
                  bgeu         a1, t2, 296f
                  sll          a0, a6, t3
                  slli         gp, t1, 17
                  andi         a7, a1, -96
                  sub          s8, t1, s11
                  xori         sp, gp, 463
                  slti         t0, s6, 1986
                  sll          a4, a3, zero
                  xor          a6, s8, s5
                  sltu         ra, t1, s1
                  sltiu        a1, tp, -695
                  xor          s5, s1, t2
                  xori         s3, s4, 564
296:              sll          a6, s7, s2
                  sub          t2, a4, zero
                  beq          t5, t1, 309f
                  sra          s11, a3, s1
                  sub          a3, s6, t5
                  sltiu        s3, s8, 543
                  srl          s5, gp, a5
                  bgeu         s8, s0, 316f
                  slt          a5, s8, t0
                  or           a6, a0, a0
                  blt          sp, t0, 312f
                  bgeu         s0, s3, 310f
                  sub          zero, s6, t0
309:              or           s6, s7, a7
310:              srl          sp, gp, s9
                  slli         t1, s0, 27
312:              srl          a0, s5, t6
                  sltiu        ra, t6, 434
                  beq          a0, t4, 331f
                  bge          a6, s3, 326f
316:              bne          t4, s5, 332f
                  sltu         t1, s8, a1
                  andi         a1, ra, 1960
                  bltu         s8, a2, 322f
                  blt          s9, s4, 326f
                  ori          t0, t6, 1405
322:              sub          s3, tp, s9
                  slti         a4, a3, 50
                  slti         a6, s1, -590
                  lui          a4, 744586
326:              slt          t6, a6, t5
                  or           s10, s8, s11
                  bge          a2, ra, 337f
                  nop
                  srai         t0, ra, 16
331:              lui          s11, 970577
332:              sll          s10, a0, a6
                  bltu         zero, a1, 339f
                  beq          s2, s11, 335f
335:              bne          s4, ra, 341f
                  xori         a6, s9, -322
337:              addi         s7, tp, -1091
                  bgeu         t0, s3, 358f
339:              or           a4, s9, s1
                  or           a1, a6, s6
341:              slli         t0, gp, 27
                  slt          a6, a5, s9
                  auipc        s8, 936028
                  xori         tp, t2, -162
                  beq          t0, s0, 354f
                  ori          sp, s5, 1571
                  srli         s11, gp, 12
                  slli         zero, s6, 24
                  slli         a0, t6, 12
                  srli         s3, s0, 25
                  andi         s11, t6, -262
                  bne          a6, t0, 358f
                  andi         t4, s3, 500
354:              andi         a7, t3, 538
                  nop
                  slti         t2, s3, 183
                  sltu         ra, sp, a6
358:              auipc        s3, 14457
                  add          t2, s2, t1
                  xor          a2, a6, tp
                  bgeu         s4, sp, 372f
                  slt          t0, a3, s3
                  auipc        a4, 719423
                  bge          s0, s8, 371f
                  addi         t4, zero, -8 #init loop 0 counter
                  slli         a2, t4, 4
                  xori         s3, tp, -739
                  xori         s2, a3, 616
                  lui          ra, 940782
                  srli         s7, t6, 14
                  sub          a0, a1, t0
                  xor          t2, a1, t3
                  sltu         s9, a2, t1
                  srli         s1, s2, 16
                  sub          t0, a2, t6
                  ori          ra, a6, -411
                  add          a4, s2, t1
                  srl          a1, t5, s3
                  slli         zero, a2, 9
                  sll          s10, t6, s3
                  ori          s1, zero, -1882
                  addi         a5, zero, -12 #init loop 0 limit
                  sltu         tp, t6, t6
                  lui          s7, 858573
                  srli         a0, a1, 10
                  sll          ra, zero, a4
sub_4_5_0_t:      sltu         s7, a5, a2
                  slti         s5, a7, -249
                  sra          s1, a7, s2
                  addi         t4, t4, -1 #update loop 0 counter
                  auipc        a3, 532185
                  andi         s5, sp, -1029
                  bge          t4, a5, sub_4_5_0_t #branch for loop 0
                  xori         t3, t4, 1594
                  auipc        s5, 671212
                  nop
                  lui          a3, 796381
                  bge          t2, s5, 386f
                  slli         t6, t1, 2
                  nop
371:              bge          s6, t5, 385f
372:              slt          s8, s5, a0
                  addi         a0, t2, -635
                  slli         a2, t5, 19
                  bltu         a2, a7, 395f
                  lui          gp, 72199
                  slt          s8, s5, s9
                  slli         s6, sp, 1
                  bne          a4, a5, 382f
                  ori          t0, t2, 1597
                  srai         t1, a4, 12
382:              auipc        t2, 171443
                  xor          sp, t6, s3
                  srli         a2, s0, 18
385:              blt          t6, t6, 400f
386:              bltu         s8, tp, 401f
                  sltu         a1, s8, t0
                  bne          t3, t6, 398f
                  sll          s1, s6, a7
                  srai         sp, t6, 1
                  srl          t6, a3, a6
                  sll          s10, a3, a3
                  and          t4, t6, s5
                  bge          s9, a2, 397f
395:              bltu         s4, a5, 414f
                  sra          t6, a7, s9
397:              ori          s6, a0, 1476
398:              nop
                  and          t2, a7, s1
400:              andi         t1, a0, 187
401:              xori         a4, zero, 1913
                  and          a1, s5, a3
                  sll          t2, zero, a5
                  srai         tp, s6, 13
                  sll          a7, s5, t3
                  beq          s1, a1, 425f
                  sltiu        s1, a5, -157
                  bge          a0, s7, 421f
                  auipc        a6, 997016
                  addi         t3, t4, 444
                  ori          zero, a0, -1527
                  nop
                  xori         s10, a5, -1728
414:              add          t1, s8, t6
                  slti         s1, s2, -1293
                  ori          t0, s9, 1412
                  nop
                  xor          a4, a5, zero
                  addi         a7, a7, 692
                  srai         a2, a4, 11
421:              slti         a7, sp, 1756
                  sltiu        t4, sp, -437
                  xor          gp, s4, t6
                  srai         t4, a1, 23
425:              xori         gp, gp, -512
                  slti         a4, t3, -465
                  sub          t1, s1, s0
                  blt          a3, s11, 434f
                  srl          s11, s9, t0
                  bltu         t2, a6, 439f
                  beq          s4, a5, 446f
                  blt          a5, gp, 441f
                  slti         zero, t6, 812
434:              xor          s3, s10, sp
                  auipc        gp, 816230
                  sra          sp, s6, gp
                  bge          s3, a0, 457f
                  xori         ra, a4, -426
439:              beq          s3, t1, 442f
                  addi         t6, s6, 2007
441:              or           t6, a7, t0
442:              bge          s7, zero, 453f
                  bgeu         a5, s6, 449f
                  slti         ra, s6, -158
                  addi         t2, tp, 342
446:              beq          zero, s2, 449f
                  blt          s4, gp, 458f
                  beq          s1, a5, 458f
449:              sub          t3, a1, t0
                  slti         gp, a6, -1366
                  slt          a7, a6, t5
                  sra          sp, sp, t2
453:              or           s7, t2, a1
                  sra          a0, a0, a1
                  beq          zero, ra, 471f
                  andi         tp, a1, -467
457:              addi         t0, s8, -47
458:              sll          a6, a4, s0
                  xori         s7, s1, -369
                  add          t0, t1, s11
                  slti         a4, t6, 1633
                  blt          a1, t2, 468f
                  sub          ra, s4, a3
                  lui          a3, 204795
                  slli         tp, t5, 6
                  addi         t1, s2, 571
                  blt          t3, s7, 480f
468:              sub          t2, t6, s10
                  ori          sp, sp, 114
                  srl          t1, a6, s5
471:              srai         s10, a4, 27
                  bltu         s1, s4, 475f
                  andi         s3, a1, 1789
                  sub          a7, a6, s3
475:              slli         s2, s1, 11
                  sub          a0, a4, s7
                  srai         gp, s8, 30
                  blt          a7, ra, 498f
                  srai         t1, t2, 11
480:              bgeu         s11, t6, 483f
                  bge          s4, s3, 495f
                  or           t6, t0, t6
483:              bltu         a7, s4, 489f
                  sltu         ra, a4, t5
                  sra          t2, a1, a6
                  sra          s8, t0, a3
                  sltiu        a5, a5, -338
                  slt          a4, a2, s2
489:              blt          a4, a6, 505f
                  andi         s7, s8, -174
                  sltiu        s8, s9, 1854
                  sltu         a1, s4, a2
                  add          a3, a6, s10
                  auipc        gp, 625592
495:              and          a5, a0, t2
                  lui          t0, 644051
                  xori         zero, s3, 1427
498:              or           s5, s4, s9
                  xori         a6, t0, 779
                  ori          tp, s8, 1161
                  sltu         s8, a1, s9
                  xor          s1, t0, t5
                  add          s8, t5, a0
                  bgeu         ra, a0, 505f
505:              ori          a1, s11, -1299
                  srl          a4, s1, a2
                  sltiu        a0, gp, -1846
                  slli         a4, a2, 13
                  lw           a7, 4(s4)
                  slt          a3, a7, s6
                  addi         s4, s4, 16
                  or           a6, t3, t0
                  and          t1, tp, a6
                  sltiu        s1, s3, 110
                  srl          s5, a2, s11
                  sra          a1, t5, a0
                  srai         s7, s4, 20
756:              addi x24, x17, 1
756:              jalr x24, x24, 0
sub_3:            sra          zero, t5, a1
                  and          s10, gp, s4
                  addi         s4, s4, -56
                  addi         t3, t5, -997
                  sw           a7, 4(s4)
                  slli         s3, t0, 12
                  xori         a1, tp, -801
                  slli         a3, s2, 1
                  bne          a1, a0, 9f
                  sltiu        s5, gp, 1724
                  sll          t0, sp, t4
                  slli         s7, a6, 23
                  srai         s6, s7, 14
                  slt          s1, a1, t0
                  slt          s3, s10, s3
9:                srli         a1, s8, 6
                  sltiu        s11, t5, 1914
                  lw           a7, 4(s4)
                  sub          s11, t6, s3
                  or           a5, gp, t4
                  addi         s4, s4, 56
                  or           s5, s10, a4
                  sltu         a3, zero, t1
                  lui          s9, 286161
                  sltiu        s10, s0, -1210
25:               addi x25, x17, 0
25:               jalr x25, x25, 0
sub_1:            srli         a5, s0, 19
                  addi         s4, s4, -32
                  slt          a5, s9, s4
                  nop
                  sltu         tp, s7, a2
                  sw           a7, 4(s4)
                  slli         t2, t2, 1
                  la           tp, sub_3
                  sub          s10, a4, s0
                  addi         tp, tp, -911
                  slti         s6, s10, 1205
                  and          s11, s4, t5
                  andi         s11, s8, 1734
                  and          gp, gp, t3
                  sll          a1, t6, t5
                  sltiu        a1, tp, 1568
                  slti         a0, t3, -1479
sub_1_j3:         jalr         a7, tp, 911 #jump sub_1 -> sub_3
                  nop
                  srli         a4, s9, 11
                  xori         a7, zero, 984
                  slti         tp, t6, -809
                  bne          s7, a6, 24f
                  srai         a2, s10, 5
                  or           sp, s4, a6
                  andi         gp, a7, -1535
                  srl          t3, zero, s5
                  sltu         a5, s8, s5
                  sll          s1, t0, a5
                  auipc        t4, 875132
                  xori         a7, s3, -788
                  sll          t0, t0, t4
                  srai         s7, s5, 17
                  bltu         t1, a5, 27f
                  addi         s9, s2, -872
                  sra          s7, s2, a7
                  srli         a3, s11, 0
                  beq          a0, t3, 22f
                  sltiu        s11, a3, 757
                  sll          s6, s1, zero
22:               or           s6, t3, s10
                  and          s10, s3, t3
24:               auipc        a4, 467378
                  srai         s3, t3, 3
                  bltu         t3, t2, 27f
27:               add          t0, a7, t3
                  lw           a7, 4(s4)
                  auipc        s6, 986926
                  add          ra, s0, a4
                  nop
                  sll          t0, s5, t5
                  and          s8, t6, t3
                  addi         s4, s4, 32
                  or           zero, a3, t6
                  auipc        t6, 76903
                  andi         t6, a5, 1721
56:               addi x2, x17, 0
56:               jalr x2, x2, 0
sub_5:            addi         s4, s4, -48
                  sltu         s1, s4, t2
                  lui          zero, 1038126
                  xori         s6, s5, 512
                  addi         t2, s3, 344
                  srli         s11, s7, 22
                  ori          a2, s8, -651
                  lui          t3, 1030083
                  sub          sp, s2, s5
                  sw           a7, 4(s4)
                  and          a4, a7, s11
                  nop
                  xori         sp, s3, 1431
                  auipc        s2, 166441
                  xor          tp, t4, tp
                  slti         t1, t3, 516
                  sra          t0, s3, sp
                  sltiu        s1, a1, 494
                  auipc        ra, 717473
                  slli         s5, a1, 22
                  andi         a5, s8, -1110
                  beq          a5, t4, 13f
                  bge          gp, t4, 14f
                  bgeu         s0, s2, 15f
13:               andi         a7, s9, 1642
14:               lui          s10, 384638
15:               bltu         s8, s0, 24f
                  blt          gp, a2, 28f
                  auipc        t4, 613979
                  xori         s3, a3, -883
                  bne          s1, gp, 28f
                  sll          s8, a2, zero
                  blt          s4, s8, 24f
                  srli         s3, t3, 25
                  sub          s10, s6, s3
24:               xor          t1, a2, a3
                  addi         ra, s1, -1276
                  slt          a7, s9, s3
                  xori         s8, s3, -979
28:               slti         s11, a0, 1111
                  sra          t2, s5, gp
                  ori          a7, gp, -188
                  sll          s1, a5, tp
                  sll          t0, a6, s10
                  lw           a7, 4(s4)
                  sra          gp, s8, a5
                  sltu         a2, zero, t0
                  addi         s4, s4, 48
                  srli         sp, tp, 11
49:               addi x13, x17, 1
49:               jalr x13, x13, 0
sub_2:            bltu         s1, a1, sub_2_stack_p
                  srli         t2, a2, 15
sub_2_stack_p:    addi         s4, s4, -12
                  slli         a4, t0, 11
                  or           s9, a2, t6
                  slt          sp, sp, s8
                  nop
                  sw           a7, 4(s4)
                  lui          t0, 581905
                  la           t2, sub_5
                  srai         s11, t6, 4
                  sub          t3, s9, s10
                  srai         s7, s7, 13
                  sll          a4, t2, a0
                  srai         a2, s2, 20
                  addi         t2, t2, 131
                  srli         a6, s1, 9
                  xori         t4, t3, 357
                  beq          a1, s7, sub_2_j4 #branch to jump instr
                  srai         s10, s10, 0
sub_2_j4:         jalr         a7, t2, -130 #jump sub_2 -> sub_5
                  sub          s2, t0, a4
                  sll          s5, s1, a0
                  sra          t3, s8, s2
                  slli         s8, s3, 12
                  auipc        a3, 412252
                  slti         s1, a0, -8
                  la           tp, sub_4
                  xor          ra, a7, s2
                  addi         tp, tp, 748
                  andi         t1, ra, -1576
                  auipc        s1, 164895
sub_2_j5:         jalr         a7, tp, -747 #jump sub_2 -> sub_4
                  addi         t3, zero, 1 #init loop 1 counter
                  sll          t2, zero, a1
                  add          a5, s8, t2
                  sra          s10, s7, s5
                  addi         t1, zero, 12 #init loop 1 limit
                  and          a0, t5, sp
                  ori          a5, s9, 237
                  sra          s3, t2, s5
                  sra          a4, t4, a7
sub_2_8_1_t:      or           gp, s3, t1
                  addi         t3, t3, 1 #update loop 1 counter
                  xor          a6, tp, a6
                  addi         s11, zero, 5 #init loop 0 counter
                  addi         t0, zero, 5 #init loop 0 limit
                  auipc        a7, 134829
                  auipc        ra, 542543
sub_2_8_0_t:      addi         a5, s10, -189
                  sra          a2, s2, a7
                  srli         s8, tp, 21
                  sll          s5, tp, s9
                  addi         s11, s11, -2 #update loop 0 counter
                  add          a6, a0, gp
                  slt          a4, gp, t2
                  sltiu        a0, s10, 2024
                  nop
                  xori         s9, s6, 2042
                  bgeu         s11, t0, sub_2_8_0_t #branch for loop 0
                  sltiu        a5, s11, -1821
                  blt          t3, t1, sub_2_8_1_t #branch for loop 1
                  srai         s1, t6, 21
                  addi         s8, zero, 6 #init loop 0 counter
                  slli         a1, a6, 18
                  lui          sp, 123911
                  slt          s10, a3, ra
                  sltiu        a4, s6, 684
                  sra          s11, gp, s10
                  auipc        s5, 669560
                  sub          s10, a7, s2
                  andi         a3, s3, -12
                  srl          a0, a4, s5
                  sll          t4, a2, zero
                  slti         a6, a2, -1681
                  srai         s11, ra, 23
                  slli         t1, a5, 27
                  sltu         a5, s6, a3
                  addi         tp, zero, 6 #init loop 0 limit
                  sltu         sp, a2, a1
sub_2_3_0_t:      lui          t1, 361562
                  addi         a0, t3, -1920
                  xori         s6, a0, -1341
                  and          sp, a0, ra
                  xori         a1, zero, 1518
                  auipc        a4, 533481
                  addi         s8, s8, -4 #update loop 0 counter
                  sltu         t6, ra, a4
                  bgeu         s8, tp, sub_2_3_0_t #branch for loop 0
                  and          s10, s0, s5
                  addi         s11, zero, 0 #init loop 0 counter
                  lui          s8, 379366
                  sub          a1, s0, gp
                  sll          t0, a2, t0
                  slt          tp, s10, a3
                  addi         t4, s4, 1207
                  srai         s5, s2, 29
                  and          a1, a1, t3
                  xor          a0, s8, t3
                  slt          t4, ra, t4
                  addi         s3, zero, 15 #init loop 0 limit
sub_2_5_0_t:      andi         s8, s8, 1657
                  or           t3, s0, s3
                  slti         s6, tp, -61
                  srai         t6, s9, 21
                  nop
                  sra          ra, a7, s4
                  add          sp, s6, a7
                  slti         a3, s9, 336
                  or           s8, ra, gp
                  addi         s11, s11, 8 #update loop 0 counter
                  srli         s1, s11, 28
                  srai         t2, gp, 16
                  sltu         gp, ra, t5
                  blt          s11, s3, sub_2_5_0_t #branch for loop 0
                  andi         t4, a5, 79
                  addi         s3, zero, 1 #init loop 1 counter
                  addi         s1, zero, -5 #init loop 1 limit
sub_2_10_1_t:     slt          a6, s7, a1
                  addi         s3, s3, -6 #update loop 1 counter
                  addi         s7, zero, -8 #init loop 0 counter
                  addi         t1, zero, -10 #init loop 0 limit
sub_2_10_0_t:     slti         a4, t4, 1288
                  addi         s7, s7, -2 #update loop 0 counter
                  bge          s7, t1, sub_2_10_0_t #branch for loop 0
                  bne          s3, s1, sub_2_10_1_t #branch for loop 1
                  sll          t0, s3, s7
                  addi         gp, zero, 10 #init loop 0 counter
                  sll          zero, a1, s10
                  and          s5, gp, t0
                  sltiu        a5, s3, -1790
                  auipc        zero, 529984
                  xor          a0, a6, tp
                  slti         t3, s11, 1011
                  xori         a2, zero, 1769
                  addi         s6, zero, 10 #init loop 0 limit
                  xor          a0, t3, a5
                  or           a7, a1, a0
                  lui          zero, 967428
                  andi         a2, a5, -225
sub_2_1_0_t:      sltiu        s11, a5, 213
                  slti         s5, zero, 269
                  addi         s3, t3, -812
                  lui          s2, 468476
                  addi         gp, gp, -7 #update loop 0 counter
                  auipc        ra, 637463
                  auipc        t2, 608131
                  bgeu         gp, s6, sub_2_1_0_t #branch for loop 0
                  nop
                  addi         s8, zero, 10 #init loop 1 counter
                  addi         s10, zero, 18 #init loop 1 limit
sub_2_6_1_t:      and          a6, gp, t3
                  addi         s8, s8, 4 #update loop 1 counter
                  addi         a0, zero, -2 #init loop 0 counter
                  addi         s1, zero, 6 #init loop 0 limit
sub_2_6_0_t:      xori         s9, sp, -1406
                  addi         s3, t6, 425
                  addi         a0, a0, 8 #update loop 0 counter
                  beq          a0, s1, sub_2_6_0_t #branch for loop 0
                  bne          s8, s10, sub_2_6_1_t #branch for loop 1
                  sltu         tp, s1, a2
                  addi         s9, zero, 0 #init loop 0 counter
                  ori          s8, s11, 1452
                  srl          s7, sp, t5
                  addi         a7, zero, 15 #init loop 0 limit
                  addi         a3, zero, 727
sub_2_7_0_t:      slt          a5, s6, t6
                  and          t2, t1, a2
                  auipc        a5, 423171
                  sltiu        a4, gp, 618
                  addi         s9, s9, 1 #update loop 0 counter
                  srli         a3, a4, 23
                  sll          gp, t3, t4
                  slti         tp, zero, 953
                  auipc        ra, 588835
                  sll          a1, s10, s3
                  sub          t2, t6, a7
                  blt          s9, a7, sub_2_7_0_t #branch for loop 0
                  andi         s2, a0, -678
                  addi         a2, zero, 9 #init loop 1 counter
                  addi         s10, zero, 9 #init loop 1 limit
sub_2_2_1_t:      or           a3, t4, t3
                  sltiu        s8, s2, -913
                  addi         a2, a2, -8 #update loop 1 counter
                  auipc        t1, 341300
                  andi         sp, t1, 74
                  ori          t6, s11, -533
                  addi         a6, zero, 6 #init loop 0 counter
                  addi         s9, zero, -20 #init loop 0 limit
                  xor          s5, s3, tp
sub_2_2_0_t:      andi         ra, t3, 58
                  addi         a6, a6, -2 #update loop 0 counter
                  sll          a7, tp, a4
                  bge          a6, s9, sub_2_2_0_t #branch for loop 0
                  lui          t6, 110589
                  bgeu         a2, s10, sub_2_2_1_t #branch for loop 1
                  slti         t1, a1, 1986
                  slli         s9, t5, 28
                  bltu         a5, t4, 11f
                  bgeu         s4, t6, 3f
3:                sll          a1, t6, gp
                  sub          a4, s11, t3
                  sltiu        s8, s2, 437
                  bne          a1, s6, 21f
                  add          a1, s5, s11
                  srai         t6, s1, 28
                  slti         s6, s3, 141
                  bne          s0, a5, 15f
11:               and          t1, ra, s2
                  srl          t3, s1, a4
                  nop
                  sub          s9, gp, s2
15:               or           a3, s5, t3
                  bge          s7, a6, 20f
                  slli         s8, a1, 10
                  auipc        a4, 527172
                  bgeu         ra, sp, 24f
20:               andi         sp, t6, -1072
21:               xori         t1, t1, 1584
                  sub          zero, s1, s2
                  lui          a1, 972309
24:               slti         a4, s3, 790
                  blt          s2, a2, 42f
                  lui          s6, 390456
                  srl          a6, tp, sp
                  xor          s5, s4, s1
                  and          zero, a6, s4
                  bne          s3, s8, 40f
                  xor          s9, tp, t0
                  blt          ra, s1, 44f
                  sltiu        t0, t5, 2038
                  srai         s3, t2, 8
                  addi         s3, t2, -946
                  or           gp, t6, t5
                  srai         a7, s9, 0
                  bge          t5, gp, 46f
                  sltiu        s5, zero, -1018
40:               sub          t6, s0, t6
                  or           t1, s6, s3
42:               sltiu        s7, a7, 618
                  slt          t2, s4, t5
44:               sll          sp, s5, a6
                  srai         t4, a3, 19
46:               ori          tp, s4, -1695
                  nop
                  xor          gp, a5, t3
                  andi         gp, t5, -24
                  bltu         zero, t4, 57f
                  and          s8, a0, a6
                  xor          a1, sp, s1
                  or           s5, t1, t6
                  srli         s2, t4, 31
                  addi         s9, s4, 1613
                  srai         ra, t0, 15
57:               sltu         a0, s1, sp
                  and          s11, t1, t0
                  xor          a4, s0, s6
                  ori          s2, t4, -1307
                  slli         s7, a3, 3
                  sltu         s6, a3, zero
                  srl          s10, s5, s2
                  or           a2, a3, s6
                  bne          a6, s8, 70f
                  sll          s6, t2, a7
                  and          s2, a7, s10
                  blt          t5, ra, 88f
                  srai         zero, s1, 15
70:               bge          t5, a7, 87f
                  slti         a4, a5, 1544
                  xor          s8, t5, a4
                  xor          ra, s8, a2
                  sltu         t1, ra, a5
                  and          ra, t3, a3
                  srai         s5, a7, 30
                  beq          t0, a0, 88f
                  sltiu        a2, t6, -1483
                  sub          s11, t2, s9
                  auipc        sp, 702675
                  slt          tp, a1, a0
                  bne          s3, s3, 94f
                  ori          a3, t3, -1181
                  sra          tp, s6, t0
                  sll          a0, s6, t6
                  addi         s6, t3, 1724
87:               bne          tp, a1, 96f
88:               slti         s1, s11, -413
                  slt          t1, a4, t0
                  lui          t3, 21411
                  auipc        a5, 820375
                  addi         a4, t4, 942
                  andi         zero, a4, -1074
94:               xor          gp, s4, a4
                  slli         s10, s8, 10
96:               sra          s1, gp, s2
                  lui          tp, 437731
                  addi         a3, a0, -1070
                  and          a4, gp, a7
                  addi         t6, s8, -1486
                  blt          t2, t1, 105f
                  srli         a4, a0, 17
                  sll          t0, zero, s3
                  andi         sp, s9, -683
105:              add          t2, s2, a2
                  blt          t0, a4, 119f
                  andi         s11, s4, 1355
                  slt          t4, a3, gp
                  bgeu         a0, s6, 123f
                  beq          a1, gp, 111f
111:              srli         s6, s8, 16
                  slli         tp, t1, 18
                  sll          s3, a7, a3
                  andi         t1, s2, -1371
                  addi         a1, s6, -526
                  xori         t3, s11, 1322
                  sll          ra, t3, tp
                  srl          a1, a3, t0
119:              xor          s10, s11, s8
                  addi         a5, a4, -602
                  bgeu         s3, s4, 123f
                  sub          t0, s3, a0
123:              slti         s3, t6, 1747
                  addi         t2, zero, 7 #init loop 0 counter
                  andi         s6, t4, 1312
                  sll          tp, s11, s11
                  auipc        a5, 73064
                  slt          a2, s0, s6
                  srai         a0, ra, 19
                  or           gp, t4, sp
                  addi         s5, s4, 1606
                  addi         a4, zero, 7 #init loop 0 limit
                  sltu         zero, a2, s7
sub_2_4_0_t:      ori          t6, a6, -973
                  nop
                  slti         tp, a4, 647
                  sltiu        t1, a6, -2035
                  slti         s1, a2, 862
                  sltu         a0, s9, t6
                  srl          s6, s11, s2
                  addi         t2, t2, -5 #update loop 0 counter
                  andi         a0, s10, -1581
                  sltiu        t1, gp, -1350
                  xori         s3, t5, -1952
                  nop
                  srl          t4, s7, s0
                  sub          sp, a1, a5
                  sll          tp, gp, s7
                  bgeu         t2, a4, sub_2_4_0_t #branch for loop 0
                  auipc        zero, 129989
                  ori          s9, s9, 1451
                  beq          s0, a5, 138f
                  sra          s5, a5, a2
                  slti         t2, t3, 400
                  bgeu         sp, a5, 131f
                  bge          s2, gp, 138f
                  sra          s8, ra, gp
131:              sll          t0, gp, a7
                  add          ra, tp, s10
                  srli         sp, s11, 12
                  srai         sp, s2, 24
                  add          gp, t3, zero
                  add          gp, s0, a5
                  sll          a6, sp, t3
138:              sra          a0, a2, ra
                  sll          s10, a0, s5
                  bgeu         sp, sp, 155f
                  bltu         tp, ra, 151f
                  andi         s11, ra, -1138
                  and          s11, s11, s4
                  slti         sp, tp, 1414
                  nop
                  slt          t3, s8, a3
                  or           a0, a4, gp
                  nop
                  slti         s11, a1, 1566
                  or           s10, a7, s9
151:              or           s7, ra, a0
                  bltu         s2, s3, 161f
                  nop
                  bge          s9, s1, 170f
155:              or           a1, s6, s6
                  add          tp, s9, t4
                  sll          s11, t6, t1
                  sra          t1, s3, a4
                  bgeu         s8, s5, 165f
                  addi         t3, a6, 400
161:              slt          s11, s0, s1
                  xor          a5, ra, a4
                  sll          zero, s4, s6
                  or           a1, s9, s4
165:              nop
                  sub          t1, a0, a2
                  bgeu         a0, s7, 180f
                  bgeu         sp, s0, 185f
                  or           zero, s8, tp
170:              bgeu         s1, t2, 179f
                  bge          a1, s2, 179f
                  lui          a6, 989324
                  sll          s7, s8, a5
                  srli         s9, gp, 13
                  lui          s8, 520943
                  srl          a1, ra, t6
                  xor          s9, s0, s3
                  beq          s5, s5, 184f
179:              blt          s2, s2, 194f
180:              beq          s0, t0, 184f
                  sra          s8, t2, s7
                  srli         s5, sp, 21
                  blt          a6, t6, 193f
184:              and          s11, a3, a0
185:              bne          s8, sp, 201f
                  beq          s0, a2, 187f
187:              beq          gp, a5, 189f
                  slti         t3, s5, 1741
189:              sub          s9, a2, a1
                  bgeu         t1, a5, 194f
                  add          gp, tp, s9
                  addi         s8, s6, -1414
193:              sll          a5, tp, s10
194:              bgeu         s0, s3, 203f
                  slti         a1, a3, -1488
                  ori          a3, s1, -1270
                  sll          t2, t3, t2
                  lui          s3, 26513
                  srl          t4, s0, t1
                  srli         s8, s10, 1
201:              or           s9, a0, s3
                  sll          tp, s9, tp
203:              srl          s11, a5, s0
                  and          a0, a4, a2
                  srai         a2, t5, 24
                  ori          a6, a1, 607
                  addi         s11, ra, 1492
                  sltiu        zero, s6, 1309
                  or           s11, zero, t4
                  blt          t1, t2, 223f
                  and          s2, t4, a6
                  slli         t4, s9, 12
                  sll          zero, a0, s1
                  xor          ra, a7, gp
                  xor          gp, a3, ra
                  sub          t2, ra, t0
                  sltu         zero, a0, s5
                  auipc        s5, 323396
                  bltu         a2, a7, 230f
                  addi         t2, zero, 6 #init loop 1 counter
                  xor          s8, s10, tp
                  addi         t6, zero, -14 #init loop 1 limit
                  sltu         s3, s8, a2
sub_2_9_1_t:      sub          s10, a0, a4
                  addi         t2, t2, -10 #update loop 1 counter
                  addi         a2, zero, 2 #init loop 0 counter
                  sltu         sp, t0, t2
                  addi         a7, zero, -5 #init loop 0 limit
sub_2_9_0_t:      and          a0, ra, zero
                  addi         a2, a2, -7 #update loop 0 counter
                  sll          s8, t5, t3
                  bne          a2, a7, sub_2_9_0_t #branch for loop 0
                  bne          t2, t6, sub_2_9_1_t #branch for loop 1
                  auipc        a1, 471551
                  sll          a2, t4, t3
                  beq          s4, s8, 231f
                  addi         a6, t0, -1634
223:              bgeu         tp, s8, 230f
                  bgeu         s3, s5, 227f
                  andi         s3, t4, 445
                  sltu         a1, tp, s10
227:              sra          s2, s11, sp
                  slt          a4, s5, s3
                  slt          t4, s4, a5
230:              lui          a2, 538573
231:              sll          s9, s0, t2
                  slti         s7, s3, -1967
                  slti         t3, t5, -1275
                  blt          a1, a6, 254f
                  nop
                  sltu         t2, s11, t4
                  or           sp, t5, sp
                  sra          s2, t3, s6
                  xori         a7, s1, 1349
                  srai         zero, s6, 7
                  bne          a4, s0, 246f
                  andi         a3, s2, -1694
                  and          t3, s5, gp
                  ori          s7, s7, 652
                  srai         s10, t4, 3
246:              slli         t6, t1, 2
                  sub          sp, zero, s7
                  addi         t6, t1, 936
                  srai         ra, a4, 25
                  srli         a4, t4, 7
                  srl          s10, s7, a1
                  or           s10, s5, s6
                  blt          s4, s11, 258f
254:              slli         t3, s1, 20
                  lui          s8, 99195
                  xor          t3, a5, s1
                  bltu         a0, gp, 267f
258:              auipc        a2, 484865
                  slt          t0, s5, s11
                  slt          a2, a4, t0
                  blt          s5, s6, 276f
                  add          a5, s10, s4
                  slt          s1, s6, a2
                  lui          t3, 591943
                  sub          t3, a5, s5
                  lui          ra, 756513
267:              xor          s8, s6, s2
                  sltu         a4, t4, sp
                  bltu         a4, a3, 274f
                  blt          s5, s6, 284f
                  and          t1, zero, t5
                  xor          a3, ra, sp
                  lui          a2, 341992
274:              andi         zero, a4, 388
                  srl          t2, sp, a0
276:              ori          gp, t3, 998
                  sll          s1, s2, s8
                  bgeu         zero, ra, 287f
                  bltu         gp, s10, 291f
                  ori          zero, a7, 801
                  slt          a1, a1, s5
                  and          s2, s10, t5
                  nop
284:              andi         s7, t4, 1068
                  slli         s3, t1, 31
                  bgeu         s6, zero, 303f
287:              bltu         s5, s5, 288f
288:              sll          a6, s6, a3
                  sltu         s6, s9, a0
                  sltu         a2, a1, sp
291:              xori         t2, s6, -1610
                  sra          t6, a0, a0
                  xori         a6, s3, 1907
                  ori          s6, s2, -2006
                  slt          s5, a7, s10
                  and          a3, s6, ra
                  addi         a6, t3, -1495
                  bge          a5, a7, 310f
                  slli         tp, tp, 1
                  srai         sp, s0, 17
                  bltu         s10, s1, 302f
302:              ori          tp, a2, -360
303:              sra          s1, t4, t1
                  add          a1, s8, a0
                  srl          s8, s3, s7
                  slti         tp, a5, 623
                  bltu         s7, t2, 317f
                  add          t4, t5, s5
                  sll          s6, s7, s1
310:              blt          t6, s8, 319f
                  sltu         s5, a7, s2
                  or           a6, s8, s0
                  and          a3, t4, s10
                  sltu         s5, tp, sp
                  sra          s2, s3, s2
                  ori          a1, a2, 1185
317:              bltu         t1, s11, 330f
                  auipc        a0, 955705
319:              auipc        s10, 33954
                  lui          s8, 487803
                  and          s3, s4, s8
                  sub          t4, sp, t0
                  blt          t1, s3, 340f
                  srai         a6, s5, 16
                  srli         s8, sp, 22
                  and          s3, a4, s2
                  xori         s1, t6, -304
                  ori          t3, a4, -1677
                  bge          a2, s8, 330f
330:              sra          s5, s0, a0
                  addi         s10, s0, 41
                  sltiu        s5, s3, 35
                  bge          zero, s6, 343f
                  lui          s6, 949215
                  addi         s7, s0, 1111
                  sll          s6, a4, s7
                  or           s1, tp, a6
                  beq          s0, t5, 353f
                  slli         a1, a3, 2
340:              beq          s4, t2, 351f
                  slli         a6, a0, 22
                  beq          t3, s0, 355f
343:              addi         sp, s5, -1471
                  blt          s10, t1, 349f
                  sltu         a6, s6, tp
                  sub          a2, a2, zero
                  srl          s11, zero, t3
                  srai         gp, t5, 2
349:              blt          a5, t4, 355f
                  sll          sp, t2, a5
351:              sra          t2, ra, t1
                  add          a2, s6, s8
353:              sltiu        a6, s0, -251
                  or           a2, s3, a7
355:              slli         a2, s9, 17
                  addi         s8, s1, -591
                  beq          t5, s0, 371f
                  srli         a2, ra, 25
                  auipc        a0, 430980
                  andi         zero, tp, -1869
                  slti         s1, s4, 366
                  beq          a6, a4, 366f
                  sub          s9, t5, zero
                  addi         a5, a7, 166
                  andi         a2, t3, 1524
366:              andi         s9, s3, -784
                  xor          t1, t5, s2
                  bgeu         a4, t5, 383f
                  or           s6, a4, t0
                  bgeu         s5, ra, 382f
371:              bltu         t1, a7, 375f
                  sltiu        gp, sp, 1093
                  srli         sp, s10, 13
                  slt          t2, s9, tp
375:              bgeu         a7, gp, 391f
                  sltiu        a4, t2, 367
                  slli         t3, zero, 17
                  or           t1, s6, s2
                  srli         tp, t1, 11
                  bltu         a3, tp, 383f
                  ori          s6, s4, 230
382:              ori          t6, s3, -1140
383:              addi         s5, t6, -843
                  bltu         t2, t3, 404f
                  bge          s3, t6, 397f
                  bge          s2, tp, 393f
                  slti         t2, t3, 1433
                  xori         a4, gp, 1656
                  xor          a0, a1, a6
                  slli         ra, s9, 20
391:              or           a0, a0, s0
                  bge          t5, a6, 401f
393:              lui          s10, 985557
                  srli         a6, a4, 6
                  bgeu         t1, s3, 397f
                  or           a1, t1, a0
397:              xor          a0, zero, t5
                  xori         a7, a1, -292
                  xori         s3, s9, -528
                  slti         gp, a4, 752
401:              or           a6, ra, t1
                  slt          a5, s7, a4
                  srl          t4, a1, s6
404:              srai         a2, t1, 29
                  andi         s10, a0, -1364
                  bgeu         s2, a5, 416f
                  blt          a7, s6, 415f
                  lui          s6, 986895
                  slli         gp, gp, 20
                  srli         s2, a7, 1
                  or           s1, s3, ra
                  slli         a6, sp, 10
                  bge          t2, ra, 422f
                  auipc        t4, 809585
415:              srli         a5, s9, 31
416:              srli         a1, a4, 17
                  bltu         t5, a0, 422f
                  bge          s2, s6, 435f
                  nop
                  and          a5, s0, s11
                  sll          zero, a3, a1
422:              srai         s3, t4, 9
                  or           s10, s3, t1
                  srl          a0, a2, s0
                  bne          a5, tp, 430f
                  addi         s8, a1, 707
                  sltiu        s10, sp, 1731
                  slli         s2, a0, 29
                  auipc        t2, 346504
430:              add          s1, t1, s9
                  slti         a7, s3, -1030
                  addi         sp, zero, 4 #init loop 1 counter
                  xori         t1, s5, -1334
                  lui          a2, 275913
                  addi         s3, zero, 4 #init loop 1 limit
                  srai         a0, a5, 10
sub_2_0_1_t:      addi         s7, s2, -363
                  add          zero, s11, s2
                  addi         sp, sp, -3 #update loop 1 counter
                  auipc        a1, 272472
                  andi         gp, a4, 418
                  and          zero, s4, a6
                  srli         s1, a0, 26
                  addi         s11, zero, 5 #init loop 0 counter
                  nop
                  auipc        gp, 20530
                  addi         t4, zero, 7 #init loop 0 limit
                  addi         a3, s6, 82
                  xori         s5, s7, -213
sub_2_0_0_t:      auipc        s1, 298448
                  addi         s11, s11, 5 #update loop 0 counter
                  sll          s10, s2, t1
                  xori         t1, s8, -74
                  blt          s11, t4, sub_2_0_0_t #branch for loop 0
                  or           s1, a5, gp
                  sltu         t2, s1, s6
                  srl          a1, s6, zero
                  or           t1, t5, ra
                  slt          t0, s0, sp
                  slt          zero, s5, a4
                  srai         a7, t4, 30
                  sll          a7, s8, ra
                  bgeu         sp, s3, sub_2_0_1_t #branch for loop 1
                  slti         t2, ra, 1618
                  bgeu         sp, t3, 441f
                  srli         t3, gp, 6
                  lui          tp, 253746
435:              andi         sp, t1, 1813
                  slti         a5, t3, 1192
                  sub          t0, t4, s8
                  addi         a3, s9, 2045
                  bltu         t4, s9, 456f
                  and          s1, a6, s6
441:              bgeu         tp, a7, 450f
                  addi         s10, s6, -1887
                  add          s1, s6, t4
                  sltiu        a5, s6, 718
                  slti         tp, s7, -346
                  or           s10, s4, t1
                  srl          ra, a4, s7
                  lui          gp, 491784
                  beq          gp, s9, 450f
450:              srl          s2, s2, a7
                  sra          zero, t4, t6
                  slli         t1, s10, 28
                  ori          s1, a6, 1383
                  sll          s10, s3, s0
                  nop
456:              add          t3, tp, s7
                  sub          t6, s8, ra
                  and          a7, s5, s5
                  slti         t0, a3, -1183
                  slt          a5, s2, t1
                  addi         gp, a6, 693
                  lui          a5, 1011242
                  beq          t6, gp, 471f
                  auipc        s3, 495040
                  sub          s3, s0, zero
                  sltu         gp, ra, s4
                  sltu         a0, t0, a7
                  ori          s9, s7, 399
                  andi         zero, s0, 261
                  srli         t3, sp, 7
471:              or           a0, t0, zero
                  slti         t0, t6, -359
                  slt          gp, s5, a1
                  bgeu         a5, s7, 481f
                  andi         s5, s0, 1500
                  bltu         s2, sp, 480f
                  xor          a2, ra, a1
                  bne          t3, t5, 493f
                  auipc        ra, 816330
480:              blt          t6, a2, 485f
481:              xor          s10, t6, t2
                  slt          s1, s0, s5
                  or           a1, s0, s3
                  add          s2, a1, s10
485:              nop
                  or           s1, s7, s1
                  xor          zero, ra, s9
                  auipc        gp, 735943
                  slli         a4, a4, 28
                  slt          a2, s4, a5
                  beq          s0, t6, 511f
                  blt          s9, s0, 496f
493:              slti         a3, t4, 1025
                  andi         a5, s10, 1239
                  lui          a1, 582413
496:              bne          s11, s2, 510f
                  slli         gp, tp, 24
                  srai         t2, a4, 21
                  xor          s10, a6, s0
                  sub          t2, a3, t3
                  ori          t1, s0, -1430
                  srai         a1, a5, 26
                  bne          s3, t1, 514f
                  sltiu        t0, t0, -401
                  srai         a5, s0, 31
                  srli         t4, gp, 10
                  bgeu         sp, s4, 519f
                  add          s1, s6, a1
                  sll          ra, t2, s4
510:              blt          a4, sp, 515f
511:              slt          ra, gp, s6
                  and          t3, s3, a1
                  andi         a0, s2, -242
514:              slt          a5, gp, sp
515:              sltu         a3, s5, tp
                  bge          a1, t0, 528f
                  srai         s3, s3, 28
                  slti         a1, t6, 449
519:              beq          s11, t2, 535f
                  srai         t1, a7, 8
                  auipc        s7, 825757
                  sra          s2, t6, ra
                  addi         s6, sp, 904
                  ori          a6, a5, 1346
                  beq          s4, sp, 535f
                  slli         t3, a2, 27
                  xori         s2, t5, -298
528:              slti         s1, a3, 626
                  srai         s6, a3, 1
                  beq          s0, s6, 539f
                  bgeu         s8, a5, 536f
                  add          s7, s6, t1
                  lui          a3, 789025
                  beq          t3, s2, 540f
535:              sll          ra, zero, sp
536:              xor          tp, t2, a4
                  lui          t1, 446851
                  beq          s2, a6, 555f
539:              sll          s9, a2, sp
540:              slt          a3, a2, a5
                  blt          tp, s3, 551f
                  sra          a2, t3, a7
                  nop
                  addi         a3, t2, -609
                  bge          s8, a6, 547f
                  slt          s3, a1, a0
547:              beq          t3, s2, 550f
                  xori         s8, a4, -5
                  or           a6, a6, s4
550:              sra          gp, s7, sp
551:              ori          t3, a6, 759
                  add          s7, t3, a4
                  blt          t4, s3, 566f
                  xori         s9, s2, -1812
555:              add          zero, t3, t2
                  andi         s3, a7, 128
                  sltiu        ra, a6, 960
                  nop
                  ori          sp, a3, 1783
                  slti         s6, a3, 2030
                  srai         a6, zero, 10
                  or           a6, a6, t0
                  sltiu        s5, s5, -380
                  slt          s2, s0, sp
                  beq          a5, gp, 576f
566:              sltiu        a5, t3, -1917
                  blt          t3, zero, 568f
568:              xor          gp, s2, ra
                  ori          s6, t4, 778
                  addi         a2, s1, -1247
                  xor          t1, a0, t4
                  srli         ra, t1, 27
                  srl          s11, ra, a4
                  slti         s6, s11, -438
                  srai         s11, t6, 5
576:              sltiu        a6, a4, -413
                  srli         ra, a5, 25
                  lw           a7, 4(s4)
                  ori          s6, t6, -1595
                  lui          s8, 659324
                  addi         a0, a4, 917
                  and          tp, a2, a3
                  ori          zero, s4, 1507
                  srai         t2, s10, 3
                  srai         t3, s8, 1
                  addi         s4, s4, 12
                  auipc        s1, 299003
                  or           s2, zero, a0
861:              addi x22, x17, 1
861:              jalr x22, x22, 0
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
.word 0x24f57f15, 0xbda49b6b, 0xfdbbd8f7, 0x699ec24c, 0x5ebcadf4, 0x3169ab16, 0x1f2a8c41, 0xcc3398a4
.word 0x18ae07ee, 0x4b18eb15, 0x3cf5d0bb, 0xbaa1817d, 0xf5c32ce8, 0xc1a9fa5c, 0xb1790876, 0xddb1b601
.word 0x40537b7d, 0xf33d3916, 0x2e48ad26, 0x4b9d5bae, 0x298020af, 0x0755f706, 0xb51394bb, 0x537df9a2
.word 0x543e92fb, 0x3c7f8ab8, 0xdb96d115, 0x5943d78e, 0x72b0c98a, 0x0904f002, 0x1dd2ee03, 0xe63aa7e8
.word 0x92c886b8, 0x42d0e990, 0x603dc8f1, 0xa9692aea, 0x363985a5, 0x2729d1a5, 0xe8c80656, 0x28b2ff3c
.word 0xe8917444, 0x6ca05f7e, 0x4f62166a, 0x52bec37f, 0x40b3015e, 0xbd5570c7, 0x717819e6, 0x69b60f11
.word 0x60cdb27d, 0x93f8895d, 0x08d3b84c, 0x91dbe9c1, 0x523c1e7c, 0x7f1a86e2, 0x5bd98dce, 0xe1c52cf3
.word 0x08a3ae4b, 0x78a2cef1, 0x435cc45b, 0xbc60431d, 0xe290746f, 0xc01ecc4c, 0x98d5ed1f, 0x15d16683
.word 0xc7d66b7c, 0x8b12d0ed, 0x1ae72b90, 0x89cf90e0, 0x29cfde11, 0x481cb4a3, 0xc5129aab, 0x11f17776
.word 0x0ecabdd4, 0x733177da, 0x2e5caa77, 0x624b03f4, 0xc95be31f, 0xef38bf0c, 0xa8223c0e, 0x027608d6
.word 0x8a1d1cc3, 0x7f0734e6, 0x85b183f5, 0x04aca637, 0xcdc955eb, 0x79e40f6c, 0x11e96b5e, 0xbcf6bdab
.word 0x791f8cb6, 0xd45c1f0a, 0x26182303, 0xfa3b7e06, 0x3b9e3836, 0x6a7998cf, 0xf3eb70f8, 0xf72b9ab0
.word 0xdd1a8aa3, 0x8f9ab1ef, 0x87e74d77, 0xe2476531, 0x1a4b6b65, 0x54a50d50, 0x6c5c5c9f, 0x11785e19
.word 0x0fc45eae, 0x7b9cd9d4, 0xdb280fbe, 0x41bb2755, 0x53c4e1fa, 0xf1956951, 0xfe9dda07, 0xe6eafc78
.word 0xa41f28a1, 0x0908cea2, 0xe3b9f25d, 0xc9a36a16, 0x2b9e592d, 0xa96998d5, 0x67855744, 0x84a441f8
.word 0x66211df1, 0xf34e9883, 0x6ff806ae, 0xa5eb324a, 0x01fa8dd4, 0x068735d2, 0x43967d0f, 0x9151ed6a
.word 0x2248251b, 0x754427d9, 0x31300d9a, 0x94fc09f3, 0xafe985f7, 0xcd7ac574, 0xea8584f9, 0x60ab19e9
.word 0x58868539, 0x11833c48, 0x61ed51a0, 0xa11545bb, 0x58634f2c, 0x331138f4, 0x0425192f, 0xca9f38e7
.word 0x35ad6f48, 0xef187042, 0x272792c2, 0xe75a43d8, 0xda8054d7, 0xb7ca9cbe, 0x4365563d, 0x3033a86b
.word 0x0c984e17, 0x3b05f92c, 0x07289dc6, 0xc8348f22, 0x5ecd4b6c, 0xb805a51c, 0x36a50a38, 0x9fc7023b
.word 0x31d0c759, 0xeac5c412, 0xa7d7f03e, 0x6869124e, 0xee1ee89c, 0x9990927a, 0x04608c59, 0x2fa2212f
.word 0xa6a96bf0, 0xb9728e5b, 0x43ea5530, 0xc1a56a3a, 0xc255e204, 0xf16ecf70, 0x94d1c995, 0x372880ca
.word 0x05357aad, 0x882fae17, 0xd62d90a4, 0x649a719c, 0xbc2a5489, 0xb6c4b6ed, 0xf80d8989, 0xbb1c353a
.word 0x5b125247, 0xcbd2495c, 0xdce75e27, 0x20476f71, 0x56fb7824, 0xdb2656d8, 0xe7e87da3, 0xa21bbff7
.word 0x21a627e0, 0x69112663, 0xf7eef031, 0xe08b4d6e, 0x3740d6de, 0x7a866396, 0x1a7cc476, 0x0be7d1c7
.word 0xe0b6d571, 0x07219c2c, 0x39744f13, 0x9a20c173, 0x14d03039, 0x3f51df37, 0x2b473b5f, 0x23041947
.word 0xbf5bc51a, 0x128e1d06, 0x6136ae01, 0x24453bc4, 0xaf92cc6b, 0x83ce72f0, 0xa157301e, 0xb3022cdf
.word 0x57487254, 0x4df094ad, 0x783b0e9f, 0xbf8fe98d, 0x901735d1, 0xb8ef6e37, 0xc014cd14, 0xd7906237
.word 0x89baadd9, 0x486c9c36, 0x11fe119c, 0xf8c89599, 0xcb5d58c5, 0x35094ebc, 0x6879aa29, 0x71084108
.word 0xa6b235f1, 0xe29b29d5, 0xffe554e8, 0x07fe285b, 0xe4994044, 0x4645745c, 0x5102239b, 0x2711d1d0
.word 0xdc7b3424, 0x392b22ef, 0x5b2ec08b, 0xcce99937, 0xb2e97c03, 0x83c7de9b, 0x6e0c8f8b, 0x49ff7225
.word 0x19189bb8, 0x485eba04, 0x252a076d, 0x2b0d0d37, 0xaa03ca26, 0x4fb484c5, 0x38e48472, 0xe02e6c30
.word 0x7fa3941c, 0x5ae322b3, 0xf73bad2b, 0x6db69356, 0xaa165e8e, 0x8e07d11f, 0x680eff13, 0xb59dcd8c
.word 0x1660fc5c, 0xf5679152, 0x4d828bf4, 0x0c119ab2, 0x4a2d7f63, 0xba6623b0, 0xa7650c05, 0x2ac227ac
.word 0xc9b30e64, 0x911bde74, 0x60efa8fa, 0x31ee0494, 0x997387da, 0x3dac1ba2, 0x5e51ce6c, 0x11e4d12a
.word 0xb55e3764, 0xe2eb0b34, 0x5994aef4, 0xb28f347d, 0xfe03be1f, 0x5314aa09, 0xcf7acea7, 0xf3eb1ab1
.word 0xb76fa919, 0x8bace278, 0xfc40d968, 0x43620d20, 0xd974dbcd, 0x62c1a4fe, 0x32487758, 0x19e5bd94
.word 0x490ec574, 0x5def2873, 0x923b3336, 0xd5892438, 0x08489222, 0xd9565cbc, 0x0ff00e52, 0xc2ecf201
.word 0x545f31fe, 0x7f160a43, 0x8d807ced, 0x92c748b0, 0x4d8a5313, 0x4c2d9c35, 0xe20da80f, 0x173f313b
.word 0x39c0bee3, 0x24d91726, 0x9980a6f9, 0xb2a822fc, 0xc605ff0d, 0xbfe45c40, 0xfa56e604, 0x09770f08
.word 0xd34dbee5, 0xc51ff065, 0xc243b55c, 0x3d4f9d06, 0x5fac1b8e, 0x311847f7, 0x0456915c, 0xde98a364
.word 0x7f1b856c, 0x23e6a07b, 0xa64ba1d5, 0xa719a507, 0x6db6db04, 0x90c30fad, 0x4178d745, 0x63a62e2a
.word 0xc1621cd8, 0xd7ff1d4a, 0x5b1b8927, 0x8a4e7094, 0xc8c3906e, 0x94ee70f0, 0x8741dbc0, 0xf8fad1c6
.word 0x29054bb5, 0xba82801c, 0x9cd9abfc, 0xfed38a47, 0x5ae0711e, 0x9d3bfb3d, 0x40cc61d4, 0x01a3057a
.word 0x7f41fc38, 0xe2b09816, 0x6aa84917, 0x3ecc12e3, 0xebd5d819, 0x8b5babea, 0xa3e30f86, 0xdbf7341f
.word 0xc2e64fc9, 0x705794ed, 0x2d2d436e, 0xa72f9575, 0x66c1a1f8, 0xde74341d, 0xf8e56ada, 0xa84640e5
.word 0x7096387f, 0x49f6678f, 0xe8c992e3, 0xe42bede2, 0x6b99403c, 0x2551a7e8, 0x088bdf46, 0xfc77afdf
.word 0x3b4f3622, 0xa3c3e711, 0x6fa0d1b2, 0x5d3f5b75, 0x84cceffa, 0xcd83d645, 0x3acf8f74, 0xd7cd52b8
.word 0x8c2b3c31, 0x4f48589c, 0xa3a838f2, 0x0c7762a1, 0xaa941619, 0xd3852f71, 0x1b55afe5, 0xa2c4ef5b
.word 0x0b32adae, 0x305b19c3, 0x4024a93f, 0xe7d6a741, 0x001f6131, 0x811a4379, 0x2cf5bc69, 0x7e90f58d
.word 0x7bcc7749, 0xdaeaab16, 0x3f5b4839, 0xf1c4ed9f, 0x66c56721, 0xa8f4aeb9, 0x2d040ebc, 0x4ef628e1
.word 0x82b7fc02, 0x3c847459, 0xe534dffa, 0x7dd6dd5f, 0x4413dda6, 0xed974c5a, 0xefe2a823, 0xad5b8e2b
.word 0x2d977f53, 0xeaa966b8, 0xf680aea2, 0xe9d087a9, 0xcc1456bc, 0x4280cb67, 0xcf261830, 0xb821a11c
.word 0x25c950f7, 0x443c55f2, 0x5f732e8b, 0xccdbad77, 0x3c1d4b34, 0x383ba609, 0xffecaa79, 0x27b4d25c
.word 0x53c30ba7, 0x53bf75d6, 0x55266922, 0x314a6abd, 0x4c3772ef, 0x4bcebd86, 0xca4e2077, 0x9067c922
.word 0x08f087ec, 0xfa000ee9, 0xee7d7443, 0x2e73a436, 0x7b3cbc34, 0xddf4b44b, 0x099ba3be, 0xfca417a8
.word 0x65c220c2, 0x338b91ba, 0x671e8bad, 0x96f2ad92, 0x9f4e97c6, 0x808a7131, 0x5d621abf, 0x7291d3be
.word 0x4db9c8e8, 0x6aa1e3da, 0x3b822a40, 0x77fcea44, 0x8800ef85, 0xb9abd3d0, 0x48317a63, 0x24ace2b5
.word 0xc68c49cc, 0x12d3b99f, 0x275e3dae, 0xa80df6e6, 0xca69cb73, 0x12e14fe2, 0xf157684e, 0x84c60226
.word 0x01b99db5, 0x9e4478a7, 0x5c10419e, 0xde1ab965, 0xe3fc6030, 0x7da8ff9c, 0xc8a88f9a, 0xb8f08352
.word 0x2b2ebc5e, 0x6bd64259, 0xf2567e36, 0x9e65b669, 0xf1ed9c13, 0x2d9a203e, 0x6c051ba5, 0x15008f7c
.word 0x0fb7894e, 0xd8c8617b, 0xadc25496, 0x99ec914f, 0x75598c5b, 0x06e7f7b7, 0xaa1078d0, 0x6cabd319
.word 0x2a5f6650, 0x32214f2b, 0xa8d8412b, 0x3b639f4c
.section .region_1,"aw",@progbits;
region_1:
.word 0x580dcf98, 0xbaa85668, 0xdfcc6014, 0x6d09a586, 0x3179f956, 0xc8dcfb99, 0x37ed8c64, 0x6f23623e
.word 0xdbe3d514, 0xbd1cb1ac, 0x8cd22250, 0xfa033c1d, 0x0213c3c6, 0x4aa4030e, 0x9742566c, 0x3fba2cae
.word 0x3b456896, 0x2e6dc882, 0x90f728b4, 0xb9ad5b8a, 0x422d9a34, 0xf5919ec5, 0xdd371d44, 0xaac38e01
.word 0x9165cfab, 0x73928045, 0xc35f6867, 0xdc9e0b53, 0xfca73882, 0x1b8280da, 0x5bf76478, 0x93860fd9
.word 0xf942f8b7, 0x87ca05f5, 0xbc62e1a5, 0xe04c3bc2, 0x6932d615, 0xfd41062e, 0x8a43f7c6, 0x2df83fd0
.word 0x96c024ac, 0xe4bb8c4e, 0xa6ddbe37, 0x8b39ef67, 0x622fac61, 0x610f34ac, 0xf5ecdd58, 0x26a9705a
.word 0x35095833, 0x91be826e, 0x6261e525, 0xa3590180, 0x7ff908c1, 0xb932fab1, 0x140a46f8, 0xfebcff1c
.word 0x69950c5a, 0x4457f54d, 0x62f1e58a, 0x7271298c, 0xa141be8a, 0x8674b788, 0xdfd5c59c, 0x5445e3b1
.word 0x143b2e9e, 0x62ffd073, 0xbfa44127, 0x9168d188, 0x0f7fcbb3, 0xee558015, 0xfdcde6cf, 0x031d6c9b
.word 0xfdd92632, 0x0ee5ddb5, 0xfcd8c499, 0x121c6650, 0xb84a9aef, 0x143e2cd0, 0xf0c2d062, 0xe089f6ee
.word 0x3afa073d, 0x7fa57c10, 0x221598db, 0x17f465cd, 0xf900179e, 0x4954bf13, 0x740ae556, 0x8dc55509
.word 0x8673b25d, 0x27807c12, 0xd6974e94, 0xcaad9cba, 0x7853139d, 0xb54c4401, 0x9411e151, 0xa0247cf7
.word 0xd5d08224, 0xb8486706, 0xc4871598, 0xa85bfd83, 0xdd7c57b2, 0x65c3785b, 0x5162bc51, 0xe1f65be3
.word 0xe126b45e, 0xf3cf734a, 0x1f7ca063, 0xf86655ab, 0x3ce4d0d0, 0x8e731015, 0x67fc7ee8, 0x52f15546
.word 0xd95ac894, 0x0c591b83, 0x4cf1933b, 0x22efa066, 0x53972cc1, 0x59ce90b7, 0x37c93568, 0xdd143446
.word 0x79c23634, 0x9c31d04f, 0x40731561, 0x61f374c2, 0x59b69774, 0x57a388fe, 0x33b73a04, 0xc0face64
.word 0xc9c74ca8, 0xf6c3d935, 0xb252b60e, 0x94714c9a, 0xc0c068bc, 0xcb7743a1, 0xed4b4e74, 0x80080d0c
.word 0xd9128e49, 0x09140dec, 0xfdb23bdc, 0x52318afa, 0xb4b2d35e, 0xc7c8e677, 0x20ac528a, 0xf35f9038
.word 0x89769087, 0x07b64d6a, 0x9bc3797f, 0x022e525b, 0x9f3d9b99, 0x2f7d3606, 0x9b58f44b, 0xeb5d5b30
.word 0x5cf00c06, 0x7dd37e33, 0x91a7877e, 0x35e7c5f3, 0x158477a8, 0xb129c400, 0xe4f13612, 0x54971389
.word 0x4db657ee, 0x40293dd4, 0x096671cd, 0xa9e6a292, 0xfee7a683, 0x4b34969f, 0xd4d6fd5a, 0x6949a193
.word 0x7ef41346, 0xb45573fd, 0x6c0320a4, 0x77717b81, 0x0acc87d7, 0x84e71102, 0x41d9e4b0, 0x77fc8772
.word 0x232467d3, 0xac736a8a, 0xcec5261d, 0x728715a3, 0xdcf672fd, 0x8f489d2a, 0x331e8127, 0x16cf9fae
.word 0xd49372a2, 0xa33b8af9, 0xd4eb974d, 0x77180c81, 0x550fb207, 0xa0aa7556, 0xa64d2e66, 0x5d8595af
.word 0x1a59e630, 0x592a0e44, 0xe74c08ba, 0xba1271af, 0x7921caed, 0xb1e65377, 0xa87c9d63, 0x430f3966
.word 0x4b1cd770, 0x76fdf9d1, 0x075e3964, 0x9ec2c2ad, 0x2d8605b9, 0x95afa219, 0x895bb5ff, 0x17abdc2c
.word 0xffc07291, 0x3d25b9b9, 0x27a972bb, 0xe778a216, 0xaf12d13b, 0x8193100d, 0x8596d34d, 0x66969069
.word 0xc4da7cf9, 0xba7b2719, 0xd82290b0, 0xbf76ebb9, 0xee0abeb1, 0x631d31dc, 0x45d74c78, 0x04fefd34
.word 0x50520113, 0x6bdb9022, 0x274a9bb7, 0x6585b6be, 0xcadcf510, 0x1e8ef310, 0x5b59bab6, 0x82ac954b
.word 0x626d0536, 0x6d62f28c, 0x33b468c1, 0x56e6c1b6, 0x1a983c01, 0x64a1780c, 0x9984dc87, 0xeaf94e36
.word 0x47f9bd1e, 0x05bd255c, 0x2d3ca2bc, 0x48eec16f, 0xd840e507, 0x4acec128, 0xcd8e5ce8, 0x957ae3a1
.word 0xf0fb2db4, 0x040fa7ec, 0x5be969ea, 0xe62ae912, 0x11218718, 0xa1135140, 0x44931798, 0x023b1cc8
.word 0xa7581f98, 0x8a282ffa, 0x884493b7, 0xfa2bf28e, 0xc59fa902, 0xaa8cc411, 0x5196f71c, 0xcded8f98
.word 0x0e52a0df, 0x4b33b01e, 0xd12d6fc0, 0xab62fc93, 0xdb78d846, 0x01c3235f, 0x6f70a2ca, 0x16a6b2d5
.word 0x8f16a122, 0xaa08fb18, 0x21f9f0e4, 0x642dd5da, 0xb6753c46, 0x34d034da, 0x6848e300, 0x97ccad11
.word 0x90fe69bb, 0x9e407197, 0x7d91ecc5, 0x39bc145b, 0x40735a1c, 0xfb4c4706, 0x6d1d2a8e, 0x629f7e2a
.word 0xe092bd48, 0x7e46d87c, 0x0993af3b, 0xa73404c6, 0xc58ab999, 0x6c632244, 0x9217a1c0, 0x5500fdde
.word 0x6c35ed61, 0xbed28d56, 0x57e37ca0, 0x7ebd61cf, 0x8d59719c, 0x00c3548d, 0x5c7e6c99, 0xc1c51876
.word 0x1aba60a3, 0xe9d71e0d, 0x1b1f9255, 0x09fd7392, 0x27d5244e, 0x5facbdde, 0x27b4d336, 0x68f0f949
.word 0x14fea672, 0x0440a163, 0xeccc6d78, 0x4af10db5, 0x044be2c4, 0x8cba2a4b, 0x5d782877, 0x22c10ab9
.word 0xf76c5d4f, 0x36b2f773, 0x1a656622, 0x6eb5c44c, 0x9cb7e87b, 0x550e26aa, 0x51845bbb, 0x7c2d0b8c
.word 0xb0e6237f, 0x78537ac2, 0xfece728e, 0x5ea79f27, 0xa7a44c47, 0x539b44a1, 0x1aab56d8, 0x47c61f2d
.word 0x88e01387, 0x5302be3d, 0xe58dd1fa, 0x910f63b9, 0x0bf8ec56, 0x1bb12446, 0xdf7422bd, 0xb6f7a7fc
.word 0x4a272f68, 0x0d9ba359, 0x07715020, 0xe9984eb0, 0x3ae88aee, 0x3cd2299e, 0x54e6bad0, 0x834e50e0
.word 0x79348aa2, 0xedbf4b6f, 0x985065cc, 0xc175f9ea, 0xd0ef8e44, 0x7b75317d, 0xb68cd95a, 0x93123f3c
.word 0x22e92aa0, 0xcde9204f, 0x2b940f55, 0x9dad7282, 0xed2ba77d, 0xed5a94a2, 0x978ea998, 0x564ca3ce
.word 0x55682fee, 0xa2ed2041, 0x75836f6e, 0x089edd45, 0xb0526fd5, 0x6621fb82, 0x446f22a5, 0xffb7a7a8
.word 0x643b1ed2, 0x9183570e, 0x47c9dbeb, 0x181cba64, 0xe093145e, 0xe7dd43f4, 0x176327ef, 0x00bdfae2
.word 0x82d76d65, 0xef382554, 0xc1275bd4, 0xed06d01b, 0xf586d510, 0xf8d33d9c, 0xf2dc63b0, 0x2af030e5
.word 0x606f9626, 0xc2f89f37, 0x908e5051, 0x41ff601e, 0x634a88f9, 0xb882ae0f, 0x9fcd96ce, 0x1dec589c
.word 0x06159b90, 0x5dcdaef5, 0x0527d6c1, 0xc7979eb0, 0xac7771f7, 0xbb66a01a, 0x9374f3f0, 0xf29a1648
.word 0xe3086354, 0x56b0769b, 0xaca3dfc8, 0x81ff047e, 0xe43e364f, 0x72bfd385, 0x083d7649, 0xcc2d5197
.word 0x78b31103, 0x4b9edb6b, 0x1601c9d6, 0x62bcb966, 0x55b053f1, 0x51abc259, 0x626619c8, 0x6f59b733
.word 0x14cd215e, 0x7acbefc5, 0x7a98390c, 0xfd5780f0, 0xa86136a1, 0xecf6996b, 0x5c9643dd, 0xf1111920
.word 0xd9102d80, 0x9a650921, 0xe302d77f, 0x88416c8f, 0x05fead40, 0x9cbb3fba, 0x1d11aeda, 0x57d3d5c5
.word 0x37ff2ad9, 0x5ee4a118, 0xdde86089, 0x0dddda6d, 0x289eedb1, 0xf52672e7, 0x91351697, 0x0ccf3aca
.word 0x3f5ca8ce, 0xa5c90d89, 0x11067e4e, 0xaab59a35, 0x96688c15, 0x986ffcf2, 0x0d66c3df, 0x18b06882
.word 0x60fd8f6d, 0xdc7f0610, 0x03d9f56e, 0x57d426f5, 0xe2008a2b, 0xc4cfa2ad, 0x3e72f13b, 0x4059829c
.word 0xf0bb40b0, 0xe9ae7a36, 0xe46fe7b3, 0xd7a9e29a, 0x2498f0a6, 0x4a7dff16, 0x963c4874, 0xcc120386
.word 0x4103141c, 0xfcd6f8ce, 0xc9541be1, 0xc884529e, 0xc9614ca8, 0x3c22fd59, 0xde1846a7, 0x47f9d995
.word 0x0ae0e996, 0x97315b15, 0x6ab93a10, 0x1323c23e, 0xbcb19e71, 0x8addad36, 0x7eaa3219, 0xe6932509
.word 0xa941f09f, 0x5f54adef, 0x14effe86, 0x3febac05, 0xb76b0efc, 0x86409030, 0xbed8016b, 0x50a4a583
.word 0xaa4ad75d, 0xd6265012, 0x5c613ec9, 0xd7f72e13
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x28, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x28, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x28, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x28, x12, ecall_handler
                  li x12, 0x1
                  beq x28, x12, instr_fault_handler
                  li x12, 0x5
                  beq x28, x12, load_fault_handler
                  li x12, 0x7
                  beq x28, x12, store_fault_handler
                  li x12, 0xc
                  beq x28, x12, pt_fault_handler
                  li x12, 0xd
                  beq x28, x12, pt_fault_handler
                  li x12, 0xf
                  beq x28, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
