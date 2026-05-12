.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0xf1f6e6b4
                  li x1, 0x0
                  li x2, 0xfdfdcd07
                  li x3, 0xa803fda
                  li x4, 0x0
                  li x5, 0x427dafc0
                  li x6, 0x80000000
                  li x7, 0xfdcf0d2d
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xf746e631
                  li x11, 0x4
                  li x12, 0x0
                  li x13, 0x29917f47
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xf82a60f0
                  li x18, 0xf2dbdab1
                  li x19, 0x23494311
                  li x20, 0x80000000
                  li x21, 0x4
                  li x22, 0x80000000
                  li x23, 0x4
                  li x24, 0x0
                  li x25, 0xe
                  li x26, 0xfc67a5e5
                  li x27, 0x80000000
                  li x28, 0x5
                  li x29, 0x80000000
                  li x30, 0x368f9bf
                  la x17, user_stack_end
main:             ori          s1, s4, 1125
                  addi         s1, sp, -168
                  la           t3, sub_1
                  addi         t3, t3, 736
                  slli         a5, a5, 0
                  and          s2, t0, t6
                  or           s4, s6, ra
                  ori          t5, a6, -865
                  nop
main_j2:          jalr         s7, t3, -736 #jump main -> sub_1
                  la           tp, region_0+1191 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, 459(tp)
                  or           t1, a7, gp
                  sub          a3, s0, s2
                  lb           a2, -106(tp)
                  sll          s5, s4, s11
                  lhu          s11, -631(tp)
                  slli         s2, a1, 25
                  sh           s2, 511(tp)
                  sb           a1, 776(tp)
                  lb           t1, -438(tp)
                  sb           s9, 320(tp)
                  or           zero, s1, s11
                  lbu          s11, -231(tp)
                  lbu          t3, 806(tp)
                  lb           s10, 492(tp)
                  lb           a1, -12(tp)
                  slt          s9, t2, gp
                  lb           t3, -576(tp)
                  sra          s4, s10, s6
                  lb           s2, -1188(tp)
                  srli         gp, gp, 25
                  lb           a2, -470(tp)
                  lw           s5, -551(tp)
                  lb           s8, -12(tp)
                  sb           tp, 432(tp)
                  lb           s3, 728(tp)
                  lb           s10, -42(tp)
                  lh           s2, -875(tp)
                  xor          s6, t0, t1
                  lb           t3, -374(tp)
                  lb           s9, -345(tp)
                  lb           s1, 404(tp)
                  lbu          sp, -509(tp)
                  lh           s11, 229(tp)
                  slti         s2, s1, -1040
                  and          s3, zero, sp
                  lbu          a2, 99(tp)
                  sb           a2, 42(tp)
                  lh           s11, -593(tp)
                  lw           s6, 357(tp)
                  sb           s0, -210(tp) #end riscv_load_store_rand_instr_stream_0
                  sra          sp, tp, a0
                  nop
                  xor          ra, s9, s11
                  srli         a1, t0, 29
                  srli         s6, s11, 24
                  add          t3, s3, s7
                  addi         zero, a5, -1882
                  bge          s10, s5, 15f
                  ori          a3, s11, 238
                  srai         s7, s9, 21
                  sub          s8, a4, t0
                  ori          t2, ra, 531
                  bltu         s11, t6, 25f
                  slt          gp, a5, s1
                  sra          s4, s3, a4
15:               ori          t4, t6, -1299
                  xori         t0, a2, 1664
                  auipc        s2, 352774
                  andi         s8, s4, 1673
                  andi         s5, a2, 1757
                  srl          s6, a3, a5
                  slt          s1, s4, a4
                  slti         s8, a2, -1512
                  sub          t5, s7, s0
                  bltu         s3, a3, 26f
25:               slli         t1, t2, 26
26:               sltu         a6, s7, t2
                  blt          t1, a1, 40f
                  andi         s1, t1, 1399
                  bltu         s11, tp, 49f
                  add          a3, a7, a1
                  srl          sp, t5, t4
                  srl          s11, zero, s5
                  bge          t4, ra, 51f
                  slli         s7, a3, 0
                  blt          s4, gp, 38f
                  sltu         gp, s4, t4
                  addi         s9, s11, -414
38:               addi         ra, t5, 1483
                  srai         s8, t6, 2
40:               xor          ra, a6, a5
                  sltu         s10, a6, t0
                  xor          s6, t4, s10
                  and          s5, a1, t4
                  or           s11, a0, a3
                  slti         gp, t5, 1695
                  lui          tp, 425100
                  sub          s2, t0, a3
                  lui          a5, 691563
49:               lui          a1, 660493
                  slt          s9, s10, s11
51:               xori         a3, t2, 202
                  bne          s5, t6, 53f
53:               add          a5, s6, a0
                  addi         s9, s9, 373
                  xori         s6, a7, 263
                  or           s2, s5, a0
                  bltu         tp, s3, 67f
                  or           s8, t6, s10
                  auipc        s11, 1013656
                  sltu         t1, t6, a4
                  bge          t6, s6, 73f
                  andi         t1, t0, -700
                  sltiu        t4, ra, -205
                  sltiu        s4, t1, 1556
                  sll          s8, s9, s1
                  srli         s10, s3, 4
67:               srl          s6, a1, a7
                  nop
                  bne          t2, a5, 82f
                  auipc        a3, 1048291
                  slti         a0, t2, 1342
                  sll          t3, t0, s6
73:               slli         s10, s0, 2
                  srai         a5, s11, 31
                  nop
                  blt          s9, sp, 89f
                  auipc        s9, 241091
                  srai         s8, s9, 4
                  xor          a6, a6, t5
                  slt          a2, t3, s5
                  lui          a2, 477062
82:               or           s6, a1, t1
                  sltu         ra, sp, s5
                  blt          t2, s3, 85f
85:               srl          s0, s4, s2
                  addi         s0, a7, -884
                  xori         s7, t6, -987
                  lui          s11, 333429
89:               beq          gp, t5, 99f
                  bgeu         t3, a2, 103f
                  slli         s10, t2, 0
                  srl          sp, gp, s4
                  bge          s1, t2, 98f
                  xori         s4, a5, 1505
                  or           t3, s8, zero
                  xor          a3, s11, gp
                  la           t0, sub_1
                  sltu         s5, t6, tp
                  sra          s7, a4, s2
                  or           t1, t6, t5
                  xori         a5, t2, -1164
                  addi         t0, t0, -1005
                  srl          s10, t4, s5
                  bne          s4, a3, main_j1 #branch to jump instr
                  or           a0, s6, s1
main_j1:          jalr         s7, t0, 1005 #jump main -> sub_1
                  sltiu        a2, s9, -1851
                  sra          s1, a7, t0
98:               or           s8, t6, s4
99:               sra          sp, t6, s8
                  sra          s7, t4, s3
                  add          s2, t5, s11
                  beq          tp, t3, 112f
103:              add          gp, t2, t5
                  sltiu        a3, a5, -1550
                  lui          s11, 109385
                  srli         s8, a5, 27
                  srli         s4, gp, 11
                  slti         t0, s10, -1153
                  bne          s1, a5, 127f
                  srai         t4, s10, 7
                  sltiu        s1, a5, 1049
112:              blt          sp, a4, 127f
                  sltiu        a1, ra, 921
                  andi         s9, s1, -95
                  or           sp, t5, t6
                  slt          t3, a4, s0
                  auipc        s11, 472647
                  auipc        t4, 1042206
                  slti         s11, s3, 1265
                  slti         s2, t3, 803
                  or           ra, a4, a0
                  slti         a3, s6, -198
                  xori         s6, t6, -950
                  and          t5, a7, t0
                  srl          s0, s10, s7
                  ori          s2, a3, 1003
127:              srai         s0, ra, 9
                  auipc        t1, 120572
                  bgeu         a0, s3, 147f
                  slti         s7, t4, -1540
                  bgeu         a3, s6, 139f
                  bltu         t1, a0, 149f
                  beq          gp, a7, 145f
                  lui          t0, 56476
                  add          s1, gp, s0
                  auipc        a2, 863680
                  and          tp, a6, sp
                  andi         s11, t2, -36
139:              slti         zero, t5, 1451
                  sltiu        s3, t6, -911
                  srai         a6, a6, 7
                  bge          t5, s5, 159f
                  slt          a5, ra, tp
                  andi         a2, s3, 516
145:              nop
                  srl          a0, s11, a2
147:              nop
                  srli         zero, s5, 31
149:              blt          zero, a0, 159f
                  ori          s6, t0, -1476
                  xori         t3, t0, -286
                  beq          s9, s7, 159f
                  bge          t6, s2, 159f
                  xori         a6, ra, -364
                  auipc        s8, 382614
                  sltiu        a0, gp, 1912
                  xor          s11, a3, s4
                  bge          s9, a0, 159f
159:              or           t5, a7, a0
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            lui          s4, 169329
                  auipc        zero, 130297
                  slli         sp, a1, 5
                  sltiu        gp, zero, -778
                  xor          s11, t2, a3
                  add          a0, s8, a3
                  blt          s2, s1, sub_1_stack_p
                  xor          sp, t6, tp
                  xor          s8, s11, a3
sub_1_stack_p:    addi         a7, a7, -20
                  sw           s7, 4(a7)
                  sub          t5, a5, s3
                  andi         tp, a6, 496
                  srli         s9, a1, 13
                  sra          s1, ra, t2
                  srli         a1, s0, 0
                  xori         s1, t0, -272
                  xor          s6, s2, a3
                  nop
                  la           s0, sub_3
                  nop
                  slti         ra, t1, 723
                  addi         s0, s0, 811
                  bgeu         a2, s1, sub_1_j3 #branch to jump instr
                  sll          a6, s2, a0
sub_1_j3:         jalr         s7, s0, -811 #jump sub_1 -> sub_3
                  sll          t2, s1, t5
                  bltu         a3, s4, sub_1_j4 #branch to jump instr
                  andi         a1, t5, -482
                  sltiu        sp, t2, -726
                  srli         s11, a1, 18
                  sltu         ra, t2, t3
                  nop
                  andi         tp, s9, -424
sub_1_j4:         jal          s7, sub_2 #jump sub_1 -> sub_2
                  slli         ra, s8, 13
                  slli         a1, s5, 1
                  auipc        s2, 360820
                  sub          t0, a2, s2
                  slti         a3, s7, 164
                  blt          a0, s5, sub_1_j5 #branch to jump instr
                  and          s3, s4, t6
sub_1_j5:         jal          s7, sub_3 #jump sub_1 -> sub_3
                  andi         a5, s2, -1783
                  srli         s10, t4, 26
                  bne          s0, t4, 5f
                  slli         s4, zero, 3
                  sub          s2, t5, a5
5:                and          gp, t2, t3
                  addi         s3, a1, -1633
                  xori         s8, s4, -854
                  srl          s9, t1, t0
                  bge          a4, t3, 11f
                  bge          a2, a0, 20f
11:               bgeu         t5, gp, 18f
                  beq          t0, s0, 18f
                  auipc        s6, 731206
                  and          s7, s11, s8
                  xori         s7, s8, -66
                  srl          s3, a7, s8
                  blt          s7, a3, 27f
18:               add          a6, s6, s2
                  slt          s9, t4, s7
20:               blt          a5, s4, 33f
                  sub          s10, gp, s3
                  bne          a6, s0, 25f
                  bltu         a2, a2, 43f
                  srl          a1, s1, t3
25:               add          s10, tp, s2
                  xori         a2, a0, 1440
27:               sltu         tp, s2, a3
                  xori         s1, s4, 488
                  bge          s10, s11, 34f
                  sub          t4, a1, s7
                  xor          t0, ra, s8
                  ori          s7, a6, -530
33:               bne          t1, s0, 35f
34:               slti         zero, sp, -1710
35:               add          s11, s8, sp
                  xor          s9, s3, s7
                  srli         gp, t3, 22
                  bltu         t0, s0, 48f
                  sll          t2, t3, t5
                  bgeu         tp, t2, 42f
                  lui          s7, 680657
42:               andi         t2, s7, 1481
43:               sll          s11, a0, s11
                  ori          tp, gp, -153
                  slli         gp, s6, 14
                  lui          s9, 31793
                  and          t5, t5, s9
48:               srli         t1, t1, 5
                  ori          t4, zero, -1528
                  ori          s7, ra, 806
                  add          s3, a0, t0
                  bne          s5, a5, 69f
                  beq          t6, tp, 56f
                  srai         t1, zero, 12
                  bge          s5, s2, 74f
56:               lui          t3, 1009945
                  bltu         t6, a4, 73f
                  bne          ra, a4, 60f
                  srai         s1, s11, 14
60:               slti         s0, s3, -233
                  slli         s8, s1, 20
                  sll          s8, s2, t6
                  auipc        a6, 780346
                  sltu         s0, s0, s5
                  blt          s0, gp, 67f
                  bge          s11, ra, 69f
67:               and          s7, t2, t1
                  lui          s7, 513994
69:               lui          a5, 767045
                  ori          t4, ra, -389
                  sub          a1, s1, t5
                  xori         tp, a4, -131
73:               sltu         a5, a3, s4
74:               xori         a2, a4, -1152
                  slt          s10, gp, t5
                  slli         t4, a6, 22
                  and          s6, s4, s1
                  sra          a2, a4, s9
                  lui          a0, 142542
                  auipc        gp, 113086
                  srli         t4, s5, 29
                  nop
                  lw           s7, 4(a7)
                  addi         a7, a7, 20
                  or           s8, s8, a5
129:              addi x20, x23, 1
129:              jalr x20, x20, 0
sub_9:            xori         s2, s2, 671
                  bgeu         a1, s7, sub_9_stack_p
                  ori          ra, zero, -1185
                  xor          ra, s5, t0
sub_9_stack_p:    addi         a7, a7, -8
                  sra          s10, a0, s10
                  sw           s7, 4(a7)
                  lui          a6, 314825
                  or           s8, a7, t6
                  la           sp, region_1+1491 #start riscv_load_store_rand_instr_stream_6
                  lbu          t0, 12(sp)
                  lui          a0, 146104
                  lb           s9, -26(sp)
                  add          s5, s4, t5
                  lb           s1, -33(sp)
                  sub          s3, t6, t1
                  lb           t1, 24(sp)
                  nop
                  sub          s0, a2, a3
                  nop
                  lbu          ra, 4(sp)
                  slli         s2, a4, 2
                  sh           a3, 55(sp)
                  srl          s10, sp, ra
                  sltu         t4, gp, s0
                  lbu          t4, -47(sp)
                  srli         s9, t1, 15
                  sltiu        a0, s1, 422
                  or           t0, a1, t6
                  add          ra, tp, t0
                  lb           t5, 46(sp)
                  lbu          a1, -58(sp)
                  lhu          s0, -25(sp)
                  lbu          gp, 42(sp)
                  slt          s3, t0, s2
                  sub          a5, sp, s4
                  lbu          s10, 12(sp)
                  sh           t4, -51(sp)
                  sra          a6, t5, ra
                  sh           s1, 47(sp)
                  sb           a5, 22(sp)
                  sb           s1, -27(sp)
                  slti         tp, s2, -960
                  xori         zero, s0, 1059
                  nop
                  sb           s5, 60(sp)
                  srli         gp, a7, 2
                  srli         gp, t0, 1
                  auipc        t3, 702786
                  sub          s2, a1, s3
                  sll          s2, s3, s9
                  xor          a0, tp, t1
                  and          a2, sp, s9
                  slti         a5, t4, 446
                  lhu          t2, -61(sp)
                  slti         a1, s2, -1833
                  sltiu        s1, t6, 297
                  lb           t5, 56(sp)
                  lb           gp, -48(sp)
                  lb           t2, -8(sp)
                  lbu          s11, -6(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s3, region_0+1937 #start riscv_load_store_rand_instr_stream_4
                  sh           a6, -3(s3)
                  sb           a6, 4(s3)
                  ori          t5, gp, -885
                  ori          s0, gp, -571
                  lw           t0, -13(s3)
                  addi         zero, a7, -629
                  sb           tp, -10(s3)
                  srli         gp, a5, 1
                  sltiu        a2, s11, -624
                  lui          s9, 973037
                  sb           s8, 6(s3)
                  sltu         a2, s7, t1
                  sra          t3, tp, s7
                  nop
                  sll          t5, s1, a0
                  lb           s0, -12(s3)
                  sub          t5, a2, s4
                  lbu          s1, 6(s3)
                  or           s1, s5, s6
                  lbu          t5, 5(s3)
                  lhu          s1, 1(s3)
                  sb           t6, 8(s3)
                  lh           s10, 7(s3)
                  slt          s11, t6, s1
                  sb           sp, -3(s3)
                  slt          a6, t0, a5
                  srl          t1, a0, s6
                  srl          a6, a5, sp
                  sltiu        tp, s6, 652
                  lui          t5, 536221
                  lhu          t2, -7(s3)
                  lb           t4, -3(s3)
                  sb           tp, -13(s3)
                  ori          zero, s9, -625
                  lhu          s0, -3(s3)
                  sh           t0, -11(s3)
                  lb           a5, -14(s3)
                  srai         zero, s9, 29
                  or           a5, s5, s5
                  sw           tp, 3(s3)
                  add          s7, t0, s7
                  slti         s2, t2, 1181
                  srl          t0, zero, sp
                  sb           s4, -16(s3)
                  lui          s6, 604709
                  lb           s0, 0(s3) #end riscv_load_store_rand_instr_stream_4
                  la           s0, region_0+956 #start riscv_load_store_rand_instr_stream_2
                  lh           t0, -40(s0)
                  sb           t6, 37(s0)
                  addi         gp, t0, 81
                  nop
                  sll          s5, t1, zero
                  sub          t4, t0, t0
                  slti         s10, s1, -16
                  sb           s2, -11(s0)
                  sub          s3, t2, t1
                  slti         s4, zero, 100
                  lb           a5, -57(s0)
                  lb           s1, 57(s0)
                  sltu         s8, s6, s2
                  sh           s7, 24(s0)
                  srai         a0, t5, 21
                  sll          s4, t1, s8
                  lh           ra, -48(s0)
                  sltu         a2, s9, s3
                  sw           s3, 20(s0)
                  sra          a6, t3, sp
                  sll          a2, s5, ra
                  lb           a0, 49(s0)
                  sb           t2, 26(s0)
                  lb           t0, 31(s0)
                  sh           t3, -18(s0)
                  nop
                  lb           t1, -2(s0)
                  xor          s6, t4, s4
                  auipc        a3, 915623
                  srl          a1, s6, a5
                  xori         t2, a0, -1169
                  sb           zero, -31(s0)
                  lbu          ra, 31(s0) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+1803 #start riscv_load_store_rand_instr_stream_7
                  lbu          s2, 12(a3)
                  sb           s8, 6(a3)
                  lb           t4, -12(a3)
                  xori         ra, a6, -1259
                  lbu          t5, -12(a3)
                  addi         a6, a4, -712
                  lbu          s3, 5(a3)
                  lb           t3, 10(a3)
                  sb           tp, -11(a3)
                  lb           a5, -6(a3)
                  slti         s0, gp, -912
                  xor          t3, a6, a7
                  slli         t5, t4, 8
                  sb           a2, -14(a3)
                  sra          s10, t1, s4
                  lh           t5, 5(a3)
                  lb           s6, 12(a3)
                  ori          a0, t5, -855
                  slli         sp, s1, 27
                  sh           s9, 13(a3)
                  xor          t1, s4, t0
                  sh           ra, 11(a3)
                  slti         tp, a3, 351
                  sh           ra, -5(a3)
                  lbu          s11, 12(a3)
                  nop
                  slti         sp, t3, -1676
                  sb           a4, -4(a3)
                  sltiu        zero, gp, -1600
                  lhu          s8, 1(a3)
                  lb           s10, 8(a3)
                  lbu          s6, 15(a3) #end riscv_load_store_rand_instr_stream_7
                  la           a3, region_1+202 #start riscv_load_store_rand_instr_stream_0
                  srl          a0, t1, s7
                  slti         a5, s10, -1106
                  lh           tp, 0(a3)
                  sb           a5, 43(a3)
                  lb           s0, 29(a3)
                  slt          s10, t6, s8
                  srai         t5, zero, 24
                  sub          t0, tp, s9
                  sb           s7, -17(a3)
                  lb           t0, 45(a3)
                  sb           s11, -46(a3)
                  lbu          s9, 33(a3)
                  lbu          a2, -46(a3)
                  sh           a5, -8(a3)
                  sll          ra, s7, zero
                  lb           t2, 55(a3)
                  sb           s11, -37(a3)
                  lh           s0, 34(a3)
                  sub          t3, s8, s4
                  slli         a5, s10, 9
                  lui          a2, 420541
                  srai         s10, a3, 11
                  lb           s5, 12(a3)
                  sll          gp, a0, t1
                  xori         a0, s5, -998
                  sra          ra, s4, gp
                  andi         a0, a5, 1046
                  sb           s4, 60(a3)
                  lb           a5, 59(a3)
                  lbu          s2, -6(a3)
                  srl          t5, a7, t2
                  lui          ra, 500089
                  srai         s1, t4, 11
                  add          s7, t4, a0
                  sh           t6, 44(a3)
                  slt          a0, t1, tp
                  srli         a0, s5, 13
                  lw           t0, -50(a3)
                  lbu          s0, 25(a3)
                  nop
                  slt          sp, a7, a1
                  andi         s7, s0, 1183
                  auipc        s10, 484481
                  andi         a0, a0, 736
                  lbu          s11, 5(a3)
                  lh           s4, -24(a3)
                  slli         t0, s10, 25
                  lb           s6, 19(a3)
                  sb           s10, 21(a3)
                  auipc        t1, 873998
                  andi         gp, t6, 731
                  sb           ra, 13(a3)
                  lbu          t4, 37(a3) #end riscv_load_store_rand_instr_stream_0
                  and          a3, a0, s7
                  bge          s10, a3, 9f
                  lui          s5, 330278
                  srai         gp, s1, 21
                  or           s6, t2, a2
                  srl          t5, tp, zero
                  blt          t1, a7, 10f
                  and          a0, s0, s8
                  blt          ra, s8, 25f
9:                bgeu         a0, a5, 25f
10:               sub          s10, a1, t2
                  slti         t1, s0, 1698
                  slli         tp, a0, 2
                  beq          s11, a2, 17f
                  ori          s9, t5, 1772
                  bge          t2, t3, 28f
                  sltu         s1, ra, sp
17:               xori         s0, ra, 1046
                  or           a2, s5, sp
                  ori          a6, t0, 1841
                  slli         s8, a1, 0
                  sub          s2, s6, s2
                  addi         a3, s11, 1907
                  andi         s0, ra, -1917
                  bgeu         a3, ra, 34f
25:               blt          t6, s9, 27f
                  auipc        s4, 894449
27:               xori         tp, a1, -136
28:               lui          s6, 990379
                  bge          s0, s3, 38f
                  bltu         t2, t3, 49f
                  slli         a3, sp, 24
                  nop
                  sll          a6, a5, t1
34:               and          t0, t3, s2
                  sra          sp, s4, s9
                  sub          s1, s9, a6
                  bgeu         a5, a2, 49f
38:               blt          a1, a1, 51f
                  lui          t5, 510618
                  blt          s3, s9, 45f
                  slli         s0, t3, 30
                  add          a2, s6, a0
                  blt          a1, s7, 53f
                  or           t3, s1, a5
45:               srli         s10, a4, 29
                  ori          s8, sp, -709
                  sltu         s6, a4, s3
                  srli         s11, s11, 19
49:               slt          t2, s7, a1
                  sub          zero, s4, s3
51:               xori         gp, a2, 1794
                  bge          gp, s7, 58f
53:               srl          s4, gp, s5
                  nop
                  sltu         s7, a2, t1
                  srl          t1, t5, s6
                  bltu         t2, a4, 64f
58:               andi         sp, a5, -647
                  blt          s7, s9, 72f
                  sll          t5, t0, a7
                  bltu         s1, s3, 78f
                  srai         a1, s8, 24
                  lui          s0, 882380
64:               xor          s3, s9, s10
                  beq          a7, s7, 85f
                  slt          t1, s5, a2
                  sltu         a2, s8, a7
                  sra          a2, s7, tp
                  sll          s9, s11, s7
                  add          a1, t6, s2
                  nop
72:               and          a6, s3, s3
                  slti         tp, s9, -1995
                  addi         tp, s8, 175
                  slti         t2, s6, -632
                  or           s9, s9, sp
                  bge          t0, zero, 81f
78:               slt          s3, s5, t6
                  auipc        t0, 453475
                  bne          s3, s7, 94f
81:               sub          zero, s9, s0
                  addi         a0, tp, -1508
                  bne          a3, t6, 96f
                  blt          gp, s6, 104f
85:               ori          s1, s3, 1624
                  addi         gp, t2, 579
                  srli         t5, tp, 27
                  xor          a1, tp, t5
                  slt          sp, t0, a0
                  slt          a1, s0, gp
                  bge          s0, s0, 103f
                  sra          t2, zero, a1
                  bge          a2, a4, 103f
94:               sll          a5, a5, gp
                  bne          s8, ra, 100f
96:               ori          a3, t1, -2047
                  and          tp, t5, a1
                  sra          a3, s7, s8
                  xori         s7, t0, -1424
100:              addi         s10, s11, -1390
                  blt          a0, t0, 120f
                  nop
103:              lui          sp, 458990
104:              sra          s4, s2, zero
                  add          s3, a3, s1
                  slt          t5, s2, t3
                  slli         a5, t6, 31
                  add          s7, a7, s5
                  blt          ra, a1, 122f
                  sltiu        s1, s9, -1482
                  bgeu         a4, s2, 112f
112:              xori         s2, a2, 1224
                  sltu         a6, s0, a0
                  beq          sp, a2, 133f
                  blt          a0, s0, 119f
                  addi         a0, a2, -722
                  add          s6, s7, gp
                  andi         a5, s8, 262
119:              and          a2, t0, s4
120:              sub          t0, s2, a3
                  lui          s5, 953776
122:              xor          gp, gp, t4
                  sltiu        s11, s3, 1201
                  slt          s10, s6, s1
                  sll          tp, s11, a1
                  or           s10, s10, sp
                  and          s5, t4, t1
                  ori          s4, t4, -1600
                  bltu         t1, t2, 149f
                  sra          s11, t2, t5
                  bltu         s6, s2, 137f
                  beq          a7, s10, 134f
133:              sub          a6, t1, gp
134:              and          s5, tp, zero
                  bgeu         t5, s4, 140f
                  slli         s2, t6, 27
137:              and          ra, t5, s4
                  srl          t3, a5, t3
                  addi         s9, a6, -462
140:              blt          tp, a5, 150f
                  xori         s8, a4, -1417
                  and          s10, a4, sp
                  srli         a6, a3, 10
                  and          a1, s0, a7
                  xori         a0, gp, -799
                  xori         a1, s9, -561
                  sll          s10, a7, s0
                  auipc        tp, 470132
149:              sll          tp, a5, t4
150:              srai         s3, t1, 18
                  auipc        t2, 285928
                  sltu         a6, a3, s7
                  lui          s3, 772821
                  auipc        s0, 267717
                  bgeu         a7, t6, 160f
                  beq          zero, a1, 169f
                  xor          s2, t3, s7
                  and          a6, s4, s4
                  andi         s2, sp, 1856
160:              bltu         t4, a5, 173f
                  bgeu         s8, s6, 170f
                  bne          t5, a5, 163f
163:              bgeu         s10, t5, 179f
                  slli         s6, s10, 31
                  addi         s8, a0, -802
                  nop
                  sra          t3, s3, t6
                  lui          t0, 757006
169:              bgeu         s7, a3, 182f
170:              beq          s7, ra, 189f
                  srli         s1, s9, 21
                  xor          ra, s5, s6
173:              and          t3, t4, t5
                  sub          zero, t0, s5
                  sub          s5, s6, sp
                  sll          a2, a6, t4
                  sltu         s11, a4, s10
                  beq          s7, a1, 188f
179:              ori          s5, a5, 1278
                  slt          tp, tp, t4
                  xor          ra, s2, a4
182:              sub          t5, gp, s10
                  slti         s8, gp, -1366
                  sra          s5, s7, a7
                  sll          gp, s0, s7
                  slli         t3, s5, 5
                  andi         sp, s9, 1550
188:              srli         t4, s6, 23
189:              srl          zero, s10, a3
                  srli         t3, s7, 30
                  srli         tp, ra, 27
                  sll          zero, t5, gp
                  srl          t5, s0, a3
                  bne          t0, a7, 207f
                  xori         t5, a7, 1454
                  or           s1, s2, a1
                  beq          s7, a6, 201f
                  slti         t0, s8, -1555
                  xor          s4, gp, t0
                  nop
201:              bge          a3, s8, 220f
                  and          a0, s6, gp
                  bne          t6, t0, 215f
                  or           s6, zero, sp
                  ori          a3, t5, 1972
                  srai         a1, t0, 0
207:              sltu         t2, a4, s4
                  la           sp, region_0+339 #start riscv_load_store_rand_instr_stream_3
                  lh           s2, -205(sp)
                  lb           s9, 27(sp)
                  lb           s9, -194(sp)
                  sb           t5, -156(sp)
                  ori          a0, s9, 276
                  lb           t0, -94(sp)
                  lb           s3, -31(sp)
                  lbu          s9, 99(sp)
                  sw           s6, 161(sp)
                  ori          a2, a0, 1742
                  lbu          t3, 178(sp)
                  xor          ra, s10, a1
                  and          s9, gp, s4
                  lbu          a2, -202(sp)
                  lbu          t0, -10(sp)
                  auipc        tp, 560980
                  slt          s10, ra, t0
                  sb           s6, -234(sp)
                  srai         a6, a4, 9
                  xori         a6, a6, -1611
                  srli         s8, zero, 1
                  slli         s3, t5, 5
                  andi         a0, s1, -1379
                  lbu          a6, 20(sp)
                  sll          s2, t6, a2
                  lb           a6, 225(sp)
                  lbu          t1, 52(sp)
                  slli         a2, a0, 2
                  andi         s2, s10, 1222
                  auipc        ra, 495559
                  addi         s9, a6, 1260
                  lb           zero, 183(sp)
                  sub          s5, t1, s1
                  lbu          s6, 228(sp)
                  slti         s10, t5, -590
                  lbu          a3, 43(sp)
                  auipc        t1, 772264
                  sltu         a1, tp, s3
                  sb           t5, -30(sp)
                  sra          s6, a1, t2
                  and          t5, s10, s7
                  lb           a3, 164(sp)
                  lb           a6, -242(sp)
                  sb           a0, -190(sp)
                  lui          s2, 34391
                  nop
                  lb           t4, -57(sp)
                  sltiu        a6, a2, 390
                  addi         a6, s4, -2012
                  sb           s9, -244(sp)
                  lhu          t2, 101(sp)
                  ori          t2, t4, 35
                  sb           zero, 168(sp)
                  sb           a4, -200(sp)
                  lw           s1, 209(sp) #end riscv_load_store_rand_instr_stream_3
                  and          t5, a5, s0
                  andi         s3, a4, 288
                  slt          gp, a3, s6
                  srli         s8, s11, 15
                  auipc        ra, 916517
                  slli         s8, t1, 11
                  bltu         s8, t3, 226f
215:              xori         s9, s4, -807
                  sll          a5, a3, t1
                  or           s3, t3, t1
                  bltu         a2, a3, 232f
                  andi         a5, s0, 1216
220:              xori         t0, a2, 658
                  slti         t2, a5, 1933
                  sltu         s5, t0, gp
                  sll          s8, t2, a3
                  bge          a6, s8, 237f
                  sltu         a5, a6, a4
226:              bge          s2, a2, 234f
                  srai         t4, t4, 8
                  and          s1, a6, a1
                  blt          s8, s4, 246f
                  sltu         s11, t4, s2
                  slli         t2, a1, 5
232:              bne          s9, t2, 249f
                  slt          s3, a5, a3
234:              sll          s8, s4, s9
                  srl          s5, t1, s2
                  bge          a2, ra, 243f
237:              lui          tp, 74250
                  addi         tp, t1, -1877
                  srl          s5, s1, s11
                  xori         a3, a4, 308
                  slti         t5, s6, 1258
                  xori         a5, a6, 1157
243:              bne          s9, t2, 263f
                  sra          a2, t3, s7
                  and          s7, s6, s2
246:              bne          s11, a0, 250f
                  bne          t6, s2, 266f
                  blt          t2, sp, 258f
249:              slt          t2, t2, t5
250:              lui          a1, 144169
                  srli         s3, sp, 22
                  beq          sp, t5, 265f
                  sltu         gp, tp, gp
                  slli         s4, a1, 18
                  slti         s8, a0, 1990
                  nop
                  beq          t5, sp, 259f
258:              auipc        a0, 137031
259:              slt          s3, zero, t4
                  sll          s2, t0, t3
                  bgeu         t1, s9, 271f
                  sub          s9, s3, t3
263:              sll          a1, t2, s4
                  addi         s8, t1, -276
265:              srl          s11, a1, a2
266:              srli         t1, a7, 5
                  bgeu         s0, a3, 272f
                  slti         a3, t3, 314
                  bne          s8, t5, 288f
                  sll          s11, s5, s3
271:              andi         s11, t1, 632
272:              srai         t5, s6, 9
                  srai         tp, s5, 24
                  ori          zero, t0, 1675
                  sra          s4, zero, t4
                  sll          s6, t1, s3
                  auipc        ra, 39938
                  lui          s5, 882055
                  sll          s4, t5, ra
                  sub          gp, sp, s10
                  or           a5, t1, a4
                  xori         s2, s9, 71
                  andi         s6, a5, 2019
                  sltu         t0, s10, a5
                  or           a6, t4, t0
                  slti         s11, t5, -204
                  blt          sp, t4, 307f
288:              ori          t2, s1, 14
                  bgeu         zero, t6, 293f
                  sll          t1, t0, s9
                  sll          s4, t4, t2
                  or           sp, t5, zero
293:              srai         s10, a2, 20
                  bge          s0, s0, 307f
                  sltiu        a1, gp, 698
                  or           s7, s7, t6
                  xori         s6, t4, -260
                  sltiu        zero, s11, -862
                  slt          s6, t6, a3
                  slt          s10, s1, s6
                  srai         t2, a2, 27
                  bne          sp, a7, 321f
                  ori          s4, s8, -1220
                  blt          s11, a5, 316f
                  lui          a5, 708092
                  bne          t2, s8, 311f
307:              xori         s0, gp, 727
                  auipc        s1, 1010516
                  sub          s0, t5, a2
                  bne          s7, s7, 330f
311:              beq          s4, s6, 321f
                  slti         s2, ra, 272
                  bltu         s8, s6, 320f
                  add          s0, t2, t1
                  bge          a6, sp, 319f
316:              bge          a6, t1, 330f
                  add          gp, s7, sp
                  sra          s1, s10, t2
319:              add          s5, s8, tp
320:              sltiu        t2, a0, 1022
321:              add          tp, a5, a4
                  sll          s8, s11, t4
                  bge          a1, zero, 340f
                  blt          s9, a0, 328f
                  beq          s11, s4, 326f
326:              sub          s6, t0, a7
                  sltiu        t2, a3, -388
328:              auipc        gp, 248776
                  srai         s8, ra, 21
330:              sltu         sp, t5, t4
                  auipc        a0, 945394
                  srli         gp, ra, 19
                  srai         ra, s8, 29
                  add          a6, zero, sp
                  lui          t0, 701921
                  lui          s2, 263844
                  srl          sp, s0, t2
                  addi         t5, t5, 437
                  srai         a3, s10, 23
340:              and          s4, s1, t5
                  sub          a6, tp, a0
                  add          tp, t0, s8
                  srl          s6, s10, t6
                  slt          s0, zero, gp
                  slti         a3, sp, -832
                  bltu         s11, s8, 362f
                  sra          a3, sp, t4
                  addi         gp, s7, -1025
                  add          s10, t5, a2
                  bltu         s2, a4, 359f
                  sltiu        t1, t3, 940
                  beq          sp, s9, 371f
                  bgeu         tp, a6, 359f
                  srai         gp, a1, 20
                  andi         s5, a1, 293
                  slt          a0, s3, s4
                  sltiu        s5, s0, 1038
                  xor          t0, a3, t6
359:              auipc        t4, 975992
                  sltiu        t4, t4, -1593
                  and          s3, zero, s7
362:              slli         s3, s0, 31
                  andi         s4, a5, 1394
                  bltu         a4, t3, 372f
                  xor          s3, a6, tp
                  xor          s2, ra, gp
                  bge          t0, tp, 377f
                  xori         s8, t4, 1920
                  bltu         a6, a1, 386f
                  sub          t0, zero, sp
371:              beq          s10, s9, 384f
372:              add          s11, s1, s7
                  ori          s9, t2, -1741
                  sltiu        s9, s8, -802
                  sltu         s3, s3, tp
                  srai         gp, s2, 5
377:              sltiu        s4, a1, 484
                  sll          a2, s6, a6
                  addi         s3, t4, 1544
                  auipc        tp, 198528
                  sub          s10, tp, s9
                  slt          t1, a2, s1
                  srai         t5, t1, 4
384:              sub          a1, a1, s6
                  slt          s8, a1, s2
386:              addi         t4, a4, -456
                  ori          t2, ra, 341
                  beq          s6, gp, 400f
                  srai         zero, a6, 23
                  slt          tp, a0, a3
                  bgeu         s1, t0, 404f
                  sltiu        t0, a7, 1169
                  slti         a1, a6, -1075
                  slti         zero, s2, -999
                  ori          sp, a1, 1752
                  srl          a3, t1, t6
                  srl          s3, s0, a0
                  bge          t4, zero, 411f
                  sra          t1, s1, t5
400:              beq          s1, s1, 419f
                  bltu         s8, s11, 420f
                  bgeu         t6, t2, 415f
                  bgeu         s4, s7, 405f
404:              and          sp, s0, s2
405:              auipc        a3, 869230
                  srai         s11, a4, 10
                  sltiu        a2, t1, -1639
                  xor          s11, a1, t6
                  sra          ra, a6, s11
                  bgeu         s3, s10, 430f
411:              blt          s1, a6, 431f
                  bge          ra, tp, 418f
                  bne          a7, t2, 425f
                  srl          tp, s0, s9
415:              sra          s0, ra, s5
                  slti         s0, s2, 1906
                  bge          a6, a2, 421f
418:              beq          t0, t3, 427f
                  la           sp, region_0+1769 #start riscv_load_store_rand_instr_stream_5
                  sb           t5, -33(sp)
                  lbu          ra, 22(sp)
                  or           t3, gp, a4
                  lb           t2, 12(sp)
                  and          a0, s5, s11
                  lhu          s11, -43(sp)
                  auipc        a5, 654964
                  sb           t5, 31(sp)
                  lbu          a3, -6(sp)
                  lui          t4, 564174
                  sb           t2, -50(sp)
                  lbu          t1, 41(sp)
                  srli         t4, zero, 17
                  sh           a4, 49(sp)
                  andi         ra, s4, -489
                  sub          ra, s4, t2
                  sh           s4, -17(sp)
                  lbu          s0, -48(sp)
                  sltu         s9, s2, a5
                  lbu          a3, 14(sp)
                  lhu          a6, -11(sp)
                  addi         t5, s8, -1046
                  lhu          t2, 21(sp)
                  lb           t4, 14(sp)
                  sh           t2, -15(sp)
                  sh           a4, -43(sp)
                  sltiu        s11, a4, 1749
                  sb           t3, -28(sp)
                  lbu          t5, 6(sp)
                  lbu          s5, -2(sp)
                  xor          s5, t5, zero
                  lhu          s2, -37(sp)
                  nop
                  lhu          a5, -47(sp) #end riscv_load_store_rand_instr_stream_5
419:              lui          t5, 668547
420:              beq          s2, a6, 424f
421:              bge          a2, s0, 434f
                  bne          gp, a5, 432f
                  auipc        s2, 670036
424:              xor          t2, s6, ra
425:              andi         ra, s0, -1401
                  nop
427:              ori          s7, t4, -1533
                  auipc        s5, 486679
                  bltu         s6, ra, 448f
430:              nop
431:              nop
432:              beq          gp, s7, 445f
                  sltiu        s5, s8, 219
434:              nop
                  nop
                  addi         s10, a3, -1305
                  sltu         t1, gp, t4
                  beq          a2, s8, 439f
439:              bltu         s6, a5, 443f
                  bge          s3, s4, 445f
                  bge          s9, s5, 455f
                  bltu         a0, s2, 459f
443:              xori         s4, a1, -1714
                  sltu         t2, a2, s4
445:              srli         s0, t2, 13
                  addi         tp, zero, -859
                  and          a5, tp, a1
448:              blt          a7, a3, 461f
                  xori         s1, t2, 1863
                  lui          a0, 275839
                  ori          a0, a1, -1800
                  addi         a6, s8, -1123
                  srl          s11, sp, zero
                  blt          s11, tp, 461f
455:              sltiu        s9, a6, -1901
                  add          s7, t2, t3
                  slt          s6, s11, t0
                  srai         s4, t0, 0
459:              and          s9, t3, t0
                  srl          zero, s11, s6
461:              and          a3, a1, s5
                  bltu         s3, a0, 472f
                  sra          s10, s10, a0
                  lui          s4, 285293
                  nop
                  xor          a0, gp, s4
                  addi         tp, a7, 1084
                  bne          tp, a4, 473f
                  bltu         a6, s4, 481f
                  slli         s2, s3, 19
                  addi         s0, a0, 1231
472:              addi         s4, t2, -806
473:              blt          zero, s11, 483f
                  lui          t4, 704980
                  or           a6, a3, s11
                  lui          s8, 212679
                  sltiu        zero, s4, 1102
                  sra          t4, t2, s2
                  or           ra, s7, s10
                  addi         tp, s1, 1800
481:              srli         s9, s4, 0
                  addi         t3, s8, -1250
483:              sll          t2, t4, s8
                  addi         a3, s1, -1369
                  ori          s8, a1, 1156
                  lui          s9, 299016
                  la           s7, region_0+217 #start riscv_load_store_rand_instr_stream_1
                  srli         t0, t3, 9
                  sra          tp, ra, s3
                  slti         s4, a3, 700
                  sra          s11, t0, s2
                  sb           s0, 12(s7)
                  lhu          a5, -9(s7)
                  addi         a0, t5, -1697
                  sll          s5, a1, s1
                  andi         s0, ra, 1842
                  sh           t1, 7(s7)
                  sltu         s2, s8, a4
                  addi         s10, t4, -1165
                  lbu          s1, -3(s7)
                  andi         s3, t6, -486
                  slt          s10, s5, a7
                  ori          s6, t4, -1840
                  lhu          s9, -15(s7)
                  andi         s5, s5, -51
                  sb           s8, 10(s7)
                  sltiu        a5, s2, 1617
                  lbu          a0, -10(s7)
                  lhu          s1, -7(s7)
                  sll          s1, s5, s4
                  sltu         t3, s8, a5
                  andi         s4, t4, 1367
                  lui          t3, 282680
                  lb           t5, 9(s7)
                  lbu          t5, 14(s7) #end riscv_load_store_rand_instr_stream_1
                  ori          t5, tp, 153
                  srai         a3, s2, 15
                  ori          t0, a7, 1895
                  sub          s7, t6, tp
                  xori         tp, s4, -1081
                  srl          a6, s2, t0
                  slt          s4, sp, s9
                  xori         a2, a3, 162
                  bge          s3, s2, 512f
                  srl          s5, a4, a0
                  xor          a1, s1, t4
                  and          a6, t4, a5
                  xori         s6, t0, -979
                  sltiu        s5, s2, 379
                  srai         a1, s4, 0
                  andi         a1, s7, 1738
                  nop
                  sltu         s2, t5, a2
                  srai         ra, t3, 27
                  sub          sp, a5, tp
                  bge          sp, t1, 523f
                  sltiu        a1, s5, -503
                  ori          s8, a3, -859
                  sltiu        a5, t6, -928
                  blt          s11, t6, 524f
512:              sll          a0, s8, ra
                  addi         sp, s2, -1805
                  or           t4, s6, a4
                  bge          t2, s7, 523f
                  sltiu        a5, s11, -919
                  addi         s8, s8, 1130
                  srai         t2, t2, 25
                  andi         a0, t2, -235
                  bgeu         s11, s1, 539f
                  or           s0, a6, s3
                  bltu         s4, s10, 534f
523:              bgeu         s4, tp, 524f
524:              bge          a2, a5, 538f
                  bltu         s4, a0, 538f
                  addi         s11, a2, -675
                  sra          t3, s8, a1
                  slt          s4, a6, s0
                  sltiu        gp, s11, -1387
                  sltu         t0, s11, s6
                  sltu         a6, a5, s1
                  sltiu        s2, s5, 88
                  and          t2, t4, sp
534:              add          s3, s4, a2
                  beq          s1, s11, 540f
                  bge          a2, ra, 540f
                  sltiu        a2, s9, -1741
538:              sub          s11, s4, a5
539:              srl          s2, s5, gp
540:              srl          a5, s10, gp
                  srli         zero, ra, 8
                  sra          a0, s9, s1
                  bltu         t1, a7, 563f
                  sltu         s9, s0, t1
                  lui          s9, 206170
                  slti         sp, ra, 1538
                  ori          s9, t6, -426
                  lui          a0, 150190
                  addi         s7, a7, 1675
                  bltu         t1, a1, 569f
                  and          a0, gp, s4
                  slti         s7, a6, 49
                  bne          zero, a1, 557f
                  slli         a1, s5, 18
                  or           a1, s5, s5
                  bne          a1, tp, 560f
557:              addi         a1, s9, 290
                  srli         s4, t2, 30
                  sll          sp, a6, a6
560:              and          t4, a6, s0
                  and          s0, s1, gp
                  sra          s1, s11, t5
563:              sll          a2, t6, a4
                  beq          tp, s3, 577f
                  lui          s7, 821463
                  lui          s2, 294796
                  sltiu        a3, s8, 1280
                  nop
569:              sub          s7, s7, sp
                  auipc        t3, 24776
                  lui          a1, 809557
                  srl          s10, s2, s6
                  sll          t5, a7, s4
                  beq          s2, s1, 576f
                  sra          a5, a0, t0
576:              bltu         zero, s9, 592f
577:              blt          s5, s0, 582f
                  sub          sp, t0, a1
                  auipc        s8, 560783
                  bgeu         a5, t4, 586f
                  sra          a2, sp, a0
582:              srl          t5, t5, a7
                  nop
                  beq          a5, t5, 592f
                  slt          t2, a1, a5
586:              bgeu         s1, t5, 596f
                  beq          t6, t2, 600f
                  lui          s11, 832608
                  srai         a1, s0, 1
                  and          ra, s10, s11
                  sltiu        a0, s10, -836
592:              srli         t1, sp, 7
                  and          a5, gp, s8
                  addi         t0, s4, 178
                  xori         a6, a5, 443
596:              ori          t1, t2, -46
                  sra          sp, s5, a6
                  sltiu        t5, s10, 769
                  bne          t6, sp, 608f
600:              nop
                  nop
                  bge          t3, t2, 612f
                  or           ra, a7, a5
                  addi         s10, sp, 1486
                  xori         a0, a5, -810
                  sra          zero, a3, s11
                  srli         s8, t1, 9
608:              slt          a6, s2, s10
                  srli         s1, a2, 26
                  xori         s3, s9, 1912
                  sltiu        t3, s7, -1165
612:              and          ra, s3, t4
                  sll          a1, t6, tp
                  or           a3, a2, ra
                  srai         a1, s11, 1
                  srli         t2, a6, 9
                  slt          t4, s2, ra
                  and          t1, s10, s11
                  addi         a3, t1, 1936
                  and          s3, t0, s3
                  bne          t0, tp, 634f
                  beq          gp, s0, 639f
                  bge          a7, s2, 643f
                  srl          s8, a4, t2
                  bne          t2, s1, 637f
                  sll          t1, s11, t5
                  and          ra, t0, s4
                  and          ra, s4, tp
                  add          tp, t6, a6
                  sll          s7, s0, zero
                  nop
                  xor          a6, t0, s4
                  sltiu        s3, a6, -447
634:              sltiu        gp, a0, 1360
                  sll          s11, t2, t3
                  addi         t3, a3, 1716
637:              lui          a3, 296145
                  andi         s11, a1, -360
639:              nop
                  srli         t4, s0, 13
                  srai         t0, s10, 17
                  and          t4, s1, t5
643:              addi         s6, t6, 863
                  ori          s7, a0, 882
                  sub          s4, a7, t6
                  lui          a6, 53758
                  slli         t2, a6, 25
                  srl          a2, s6, sp
                  lui          s0, 515906
                  sltu         a0, s8, a5
                  ori          s10, s9, 1818
                  bge          a3, ra, 665f
                  sra          ra, s2, s3
                  addi         t4, s3, -1409
                  slli         a1, sp, 16
                  sltu         sp, s9, t5
                  bge          ra, a0, 664f
                  sltiu        s6, s0, 1303
                  srl          a0, t5, s5
                  slti         t3, s5, 1654
                  and          s11, s4, s9
                  slti         a1, tp, -334
                  blt          a7, s10, 673f
664:              srai         s2, t5, 16
665:              auipc        s1, 455058
                  srli         s9, a2, 19
                  slli         s0, a1, 1
                  bltu         s8, gp, 687f
                  xor          s4, gp, ra
                  sra          t2, s5, t5
                  sll          tp, s5, s11
                  add          s4, a4, a7
673:              andi         s3, s2, 1699
                  slt          ra, a0, sp
                  slti         ra, t5, 688
                  xor          s6, tp, gp
                  bne          a6, t3, 694f
                  sltu         s2, t2, t2
                  srli         s0, s6, 0
                  bgeu         a3, t2, 693f
                  addi         s0, s4, -862
                  beq          s8, s11, 698f
                  nop
                  sub          a1, a0, s5
                  or           s8, a2, t2
                  and          s6, a4, s9
687:              auipc        s7, 418799
                  sub          s8, s11, gp
                  beq          t0, s1, 702f
                  lui          s0, 603480
                  or           a1, s5, s8
                  sll          s6, tp, s6
693:              andi         t1, s11, 505
694:              nop
                  and          s8, s4, a3
                  auipc        s6, 424283
                  sltu         tp, t6, s4
698:              addi         ra, a7, 1189
                  slti         s6, s6, -1228
                  srai         a1, a6, 18
                  auipc        tp, 53641
702:              srli         t3, s1, 4
                  xor          s5, s8, t5
                  beq          zero, t3, 723f
                  slti         a2, s1, -1637
                  srli         zero, a4, 9
                  and          a3, a1, t3
                  or           a3, a5, s1
                  or           s11, s9, t1
                  auipc        sp, 693464
                  blt          a4, s5, 724f
                  sltiu        a5, t2, 1832
                  auipc        a5, 699213
                  blt          a2, t0, 726f
                  add          t2, t3, ra
                  sub          s9, t6, t5
                  srai         t0, s1, 19
                  blt          s8, t3, 728f
                  sll          s8, s5, a2
                  sra          a2, a7, s10
                  andi         zero, s7, 918
                  addi         a6, t1, 776
723:              sub          tp, a7, t6
724:              bne          t2, s2, 733f
                  ori          t2, s6, -861
726:              sub          s3, a5, s7
                  slt          t4, a6, s4
728:              sra          a1, a5, t0
                  add          s1, a4, a5
                  bltu         a6, s7, 735f
                  bgeu         gp, t6, 735f
                  andi         sp, s1, 364
733:              sub          sp, t6, gp
                  bltu         t2, s9, 735f
735:              bge          s1, a7, 755f
                  slli         a6, t3, 23
                  add          a6, s1, a5
                  auipc        t3, 1031192
                  srai         ra, s4, 7
                  auipc        s10, 848805
                  blt          sp, a3, 751f
                  sltiu        t1, tp, -171
                  srli         t5, t5, 9
                  ori          s6, s3, -365
                  andi         s8, a0, -139
                  ori          a6, ra, 1237
                  srli         a0, s10, 22
                  sltu         s9, a2, s1
                  sll          s1, sp, a3
                  sra          a0, a2, s3
751:              sltu         t2, s2, s8
                  blt          t0, a6, 765f
                  srl          s8, a2, t2
                  add          s1, s3, s9
755:              sra          tp, t5, s6
                  slt          s3, s9, a7
                  srl          t4, t3, a2
                  or           s6, t0, s2
                  andi         s0, t4, 1159
                  bgeu         t0, s9, 777f
                  slli         s3, s4, 5
                  ori          gp, t6, -841
                  bgeu         zero, a4, 765f
                  andi         s1, s10, 657
765:              sra          a5, s7, s7
                  andi         s10, a7, -2010
                  addi         gp, tp, 1528
                  srli         t4, s0, 0
                  bge          t1, t0, 782f
                  bne          s10, sp, 789f
                  auipc        tp, 522839
                  or           t2, s4, zero
                  slt          s8, a0, s3
                  auipc        s5, 379728
                  sra          s10, a0, a4
                  addi         s5, a6, -1668
777:              bltu         zero, s5, 789f
                  xor          s11, s11, a2
                  srl          a2, s5, a5
                  lui          t2, 920095
                  srli         s9, ra, 5
782:              xori         t1, ra, -1267
                  slti         a6, a7, -227
                  bgeu         t6, s3, 798f
                  slli         zero, s2, 3
                  andi         t4, sp, -462
                  nop
                  or           s5, ra, a1
789:              srl          t5, a6, t4
                  and          s7, gp, a2
                  sra          s6, ra, ra
                  add          a2, t5, t3
                  blt          t0, t1, 812f
                  blt          a7, s6, 804f
                  sltu         s5, s5, s11
                  bge          s11, a5, 800f
                  beq          a3, t5, 803f
798:              sra          s4, gp, t0
                  and          s3, s6, sp
800:              xori         s4, a6, 740
                  and          tp, s4, a0
                  bltu         zero, a3, 822f
803:              blt          t1, s11, 808f
804:              bge          t3, s4, 821f
                  srli         a2, s9, 21
                  or           t1, gp, a0
                  ori          a0, s10, 350
808:              addi         s7, t5, 312
                  sltiu        s9, a1, 1341
                  xori         s10, t3, -227
                  blt          s3, a6, 815f
812:              blt          a5, a1, 819f
                  bltu         t0, a7, 821f
                  lui          t3, 375973
815:              sra          sp, s6, t5
                  xori         sp, t0, -60
                  bltu         t0, tp, 830f
                  bne          t1, a2, 819f
819:              blt          a0, a7, 829f
                  slti         t2, s8, -1578
821:              slti         sp, tp, 1893
822:              slt          t2, s10, zero
                  auipc        t2, 1034824
                  or           s4, s3, zero
                  blt          t6, s10, 832f
                  sll          s9, a7, t1
                  ori          t1, t2, 1285
                  andi         a1, s6, 1010
829:              slti         t5, a5, -909
830:              xor          t1, a3, t1
                  bgeu         s0, s0, 836f
832:              addi         a1, t4, -852
                  add          a0, a3, t2
                  ori          a1, s2, 1898
                  sltu         s9, s8, a2
836:              slli         t1, s2, 26
                  slti         t0, a2, -1912
                  addi         a5, a0, -189
                  bge          s5, t1, 856f
                  srl          t2, t4, t5
                  nop
                  bne          zero, s10, 846f
                  sub          s7, s0, a4
                  slt          sp, s7, s10
                  srl          t2, a2, s5
846:              slli         s5, a2, 27
                  auipc        gp, 1032690
                  beq          s7, sp, 854f
                  sub          a1, a0, s10
                  srai         t2, a0, 29
                  sltiu        zero, a6, -690
                  bne          a2, a1, 864f
                  and          s4, a7, gp
854:              slti         s1, t5, 1501
                  sub          a3, t3, gp
856:              sra          gp, s9, t4
                  xori         s10, t5, 1862
                  xori         t5, t3, -1895
                  ori          s6, s0, 974
                  sub          s5, s8, s11
                  andi         s6, gp, 1305
                  auipc        t1, 741853
                  nop
864:              slt          sp, a7, t3
                  or           s11, ra, sp
                  lui          s1, 768137
                  xori         s10, tp, -217
                  slti         a6, s11, 1321
                  nop
                  sltu         zero, s9, gp
                  slli         s0, s7, 30
                  beq          s11, s2, 885f
                  nop
                  and          s5, t3, s5
                  bltu         t4, a7, 879f
                  bltu         a4, sp, 896f
                  auipc        s2, 705298
                  xor          zero, a6, s0
879:              nop
                  blt          t2, zero, 890f
                  sltu         t1, s4, ra
                  blt          gp, a6, 902f
                  srai         zero, a7, 10
                  beq          a2, s8, 903f
885:              sll          t0, s4, a6
                  and          s6, s4, a6
                  lui          s7, 478379
                  blt          a7, t2, 892f
                  andi         s0, s3, 1484
890:              xor          gp, a5, a4
                  srl          s8, t3, s2
892:              bgeu         a7, t0, 909f
                  sll          a3, s11, s7
                  xori         zero, s6, 2018
                  ori          s5, a0, -734
896:              addi         gp, t6, -915
                  srai         zero, t3, 4
                  bltu         a2, a2, 900f
                  srli         t5, t0, 27
900:              bgeu         t5, a6, 919f
                  ori          t5, s2, 747
902:              sra          sp, t5, s0
903:              nop
                  srl          t3, ra, s11
                  bgeu         sp, t1, 917f
                  bge          t5, s6, 916f
                  ori          t1, t0, -205
                  addi         t2, t6, 564
909:              sll          t2, sp, s6
                  xori         t4, s2, -942
                  nop
                  and          a1, t6, t1
                  sll          s1, s1, a2
                  and          s10, a2, tp
                  srai         t4, t1, 9
916:              add          a2, s6, a3
917:              bne          t6, t3, 930f
                  beq          t6, t2, 937f
919:              srli         a3, t4, 8
                  lui          s4, 416392
                  or           sp, s5, s0
                  sll          t1, a2, s8
                  beq          a0, s9, 937f
                  and          tp, t2, s5
                  sra          a0, s7, gp
                  sub          s10, s4, t5
                  or           a2, s1, t3
                  sra          s1, s9, s11
                  srl          s10, a2, t3
930:              sll          a3, t2, gp
                  sll          a6, s0, t6
                  sra          a0, t0, t2
                  bltu         t1, t4, 938f
                  bgeu         s10, a0, 947f
                  blt          a0, t4, 944f
                  sra          a6, s5, s9
937:              srl          zero, t4, t6
938:              xori         s7, s1, 1134
                  sltiu        s0, a5, -1652
                  auipc        gp, 865335
                  bgeu         t4, s7, 957f
                  srli         a0, a7, 28
                  nop
944:              srai         gp, s2, 4
                  add          s0, t3, tp
                  or           a2, s10, s7
947:              slti         s9, t3, 679
                  ori          s5, s2, -1254
                  xor          a0, t2, gp
                  nop
                  auipc        t0, 332377
                  auipc        s1, 886095
                  nop
                  addi         s9, s10, 1493
                  bgeu         zero, s2, 968f
                  sltiu        sp, s7, -1949
957:              nop
                  beq          t1, a7, 966f
                  andi         s2, s3, 195
                  blt          t5, gp, 979f
                  bltu         gp, sp, 973f
                  sra          ra, s9, gp
                  sra          s9, s5, a2
                  beq          s10, s9, 981f
                  sltiu        s11, t6, -116
966:              auipc        t2, 222309
                  sltu         s2, t2, a0
968:              sltu         t0, t1, t5
                  srl          sp, t0, s1
                  srli         s1, s9, 27
                  add          a6, s11, a2
                  sltu         a3, s0, s1
973:              auipc        s10, 378950
                  beq          s3, a2, 994f
                  auipc        a1, 181935
                  add          ra, a1, s1
                  bgeu         s10, s10, 990f
                  bgeu         gp, s9, 982f
979:              sltu         t5, s5, t2
                  sltu         t2, s1, tp
981:              bge          gp, t0, 986f
982:              blt          t0, a4, 986f
                  nop
                  bgeu         a0, a4, 997f
                  sltu         s4, t5, a0
986:              xori         s8, a7, -194
                  sll          a3, zero, a0
                  bne          s2, a4, 995f
                  lui          t3, 473095
990:              srai         s4, t0, 16
                  srli         s1, s1, 16
                  xor          sp, tp, s3
                  slti         s2, t0, -895
994:              blt          a6, a2, 998f
995:              ori          s5, s2, 1888
                  sll          tp, a3, s11
997:              andi         a3, t4, -474
998:              bne          a7, s9, 1006f
                  or           t0, a6, s4
                  addi         t0, t1, 1375
                  srai         ra, s1, 20
                  sub          s2, a0, zero
                  slti         t3, sp, 499
                  and          s2, t5, s2
                  beq          t3, s7, 1024f
1006:             bgeu         zero, a2, 1007f
1007:             xor          s7, a4, a7
                  beq          t4, s7, 1017f
                  bne          ra, s11, 1026f
                  slt          s0, ra, t4
                  nop
                  bge          sp, a5, 1018f
                  xor          t4, s4, s1
                  bltu         s7, s0, 1034f
                  slli         s4, t3, 18
                  blt          s1, s10, 1018f
1017:             slli         t3, sp, 23
1018:             sub          a5, s8, s2
                  slli         t4, a0, 15
                  srai         a1, a7, 29
                  and          a5, t3, s9
                  bgeu         a1, s5, 1035f
                  srl          zero, ra, s0
1024:             lui          a2, 309586
                  bne          s10, ra, 1039f
1026:             or           a5, s4, s5
                  srai         s10, s6, 31
                  bltu         s8, sp, 1041f
                  bltu         t4, s2, 1034f
                  srli         s2, gp, 3
                  nop
                  and          s5, t2, tp
                  and          s6, a3, t1
1034:             bltu         s2, a5, 1047f
1035:             sll          s6, s4, a2
                  addi         t5, s0, -881
                  beq          sp, s6, 1049f
                  srai         a5, sp, 5
1039:             andi         t2, t0, 1160
                  bltu         s1, s7, 1050f
1041:             auipc        s6, 430384
                  bne          t0, s1, 1052f
                  nop
                  srli         a1, a4, 13
                  add          t5, t5, tp
                  addi         s4, s9, 1944
1047:             blt          s5, tp, 1066f
                  xor          zero, s3, a6
1049:             sll          s4, zero, s8
1050:             srli         s0, a5, 29
                  addi         s9, s6, -786
1052:             and          s3, t0, zero
                  srai         tp, ra, 5
                  ori          s7, t3, 1130
                  andi         s1, s9, -668
                  sltu         t0, s7, s8
                  nop
                  sltu         t4, t6, t2
                  ori          s3, t0, 839
                  bltu         gp, s4, 1076f
                  srl          s1, s2, s4
                  auipc        a6, 848564
                  xori         a0, s2, -1490
                  slt          a1, s8, a4
                  slti         s9, gp, 1350
1066:             srl          sp, a5, a7
                  beq          ra, s11, 1077f
                  lui          a3, 932911
                  addi         t2, s4, -1220
                  srai         ra, s3, 2
                  sub          s9, s6, a4
                  blt          s11, tp, 1083f
                  sltu         t0, t1, t5
                  xor          s11, a0, t3
                  bgeu         s9, t3, 1083f
1076:             sra          s5, t1, a6
1077:             sltiu        s3, s1, 1029
                  bne          a2, t4, 1083f
                  slli         a5, s4, 17
                  lui          s9, 28041
                  ori          a5, s2, 568
                  sltiu        t2, s8, 1253
1083:             addi         gp, tp, -48
                  lui          s5, 82280
                  lw           s7, 4(a7)
                  sltu         gp, s4, t4
                  addi         a7, a7, 8
                  addi         s8, ra, -1694
1438:             addi x7, x23, 0
1438:             jalr x7, x7, 0
sub_6:            lui          s6, 311873
                  xori         s9, s2, 487
                  sltiu        gp, s6, -288
                  addi         a7, a7, -12
                  xori         s1, tp, 1538
                  sltu         s11, s2, a4
                  lui          s9, 569100
                  srli         t5, a2, 31
                  srl          s3, tp, s0
                  slti         t4, t5, 1224
                  sw           s7, 4(a7)
                  and          ra, t5, zero
                  blt          a0, gp, 9f
                  ori          t1, t2, -134
                  srl          s5, a4, a2
                  xori         s1, s0, 682
                  slli         tp, t1, 14
                  and          a0, t5, tp
                  slti         a3, a3, 366
                  bge          t1, a2, 16f
                  addi         t1, a5, -1416
9:                srli         a6, t4, 30
                  xor          s4, t5, s10
                  sra          gp, zero, a1
                  sub          s9, a6, t1
                  auipc        s9, 977344
                  srli         s10, s6, 22
                  sltiu        s5, s7, 810
16:               bne          s3, s7, 35f
                  sltiu        sp, s1, -640
                  andi         t1, a1, 1907
                  srli         t4, t1, 7
                  blt          s5, t5, 40f
                  sltu         a0, t0, a4
                  addi         sp, zero, 1779
                  xor          s1, s10, t4
                  andi         a2, s9, -299
                  slt          sp, ra, s4
                  add          a3, s9, t2
                  and          s3, s10, sp
                  ori          a3, a7, -493
                  srai         s10, a1, 6
                  slli         sp, a3, 21
                  xori         s6, t5, 1098
                  bltu         s0, gp, 45f
                  addi         s10, s2, -791
                  beq          s6, tp, 37f
35:               srli         s4, s8, 20
                  srli         a5, ra, 0
37:               blt          s9, s8, 49f
                  andi         t0, a0, -708
                  srli         s8, t2, 17
40:               slti         s8, t6, 156
                  slti         t3, s4, -673
                  andi         t4, a5, -809
                  and          t2, a6, s2
                  lui          t1, 318468
45:               or           s0, t6, s7
                  bne          s1, t3, 56f
                  xori         s4, a1, -1981
                  lui          a0, 1014055
49:               auipc        s4, 821738
                  addi         a2, t0, -1891
                  srli         zero, t3, 7
                  bgeu         t5, zero, 66f
                  sub          s4, s2, s5
                  sll          a6, a4, a7
                  xor          gp, s10, s4
56:               xor          s4, a5, a2
                  or           s9, a3, t3
                  nop
                  bgeu         t1, s11, 73f
                  bltu         s3, s10, 69f
                  slti         s5, tp, -1818
                  srli         s4, s7, 26
                  addi         s7, s9, -583
                  bltu         t6, gp, 79f
                  addi         s1, t1, 440
66:               lui          s3, 431490
                  add          s2, s6, s3
                  xori         s9, a1, 894
69:               srai         a5, t3, 22
                  or           s5, t2, ra
                  xor          s9, a3, s1
                  bne          s0, t0, 80f
73:               srl          a1, s8, t5
                  srai         s7, t3, 28
                  sra          ra, s8, ra
                  srai         zero, t0, 1
                  bne          s7, t2, 78f
78:               auipc        tp, 643403
79:               slt          t2, t3, a7
80:               sub          s2, s8, gp
                  sll          t3, a0, a4
                  srai         a3, s1, 14
                  and          s1, a5, tp
                  lw           s7, 4(a7)
                  srai         t5, t0, 23
                  andi         t3, a1, 512
                  lui          s9, 544278
                  xor          a3, s11, s0
                  sra          t3, s5, t3
                  addi         a7, a7, 12
                  and          a3, t0, t4
104:              addi x6, x23, 0
104:              jalr x6, x6, 0
sub_5:            addi         a7, a7, -56
                  sw           s7, 4(a7)
                  srli         s1, t5, 23
                  nop
                  or           sp, a0, t0
                  sltu         s6, t0, tp
                  andi         a6, a7, 771
                  la           sp, region_0+1759 #start riscv_load_store_rand_instr_stream_0
                  lb           a3, -41(sp)
                  sb           zero, 20(sp)
                  sh           t4, 3(sp)
                  sltu         s6, t2, a4
                  lui          s3, 688925
                  lbu          t2, -61(sp)
                  sh           a4, 25(sp)
                  lbu          s0, -12(sp)
                  sll          tp, t4, s2
                  lw           s7, 17(sp)
                  srl          t1, a3, s1
                  sb           gp, 11(sp)
                  lb           s10, 4(sp)
                  add          s2, s7, s3
                  sh           t1, -45(sp)
                  sb           s8, -46(sp)
                  sb           t1, 60(sp)
                  xor          t3, ra, tp
                  lb           a5, -49(sp)
                  lbu          t1, -58(sp)
                  slli         s3, s3, 12
                  sh           a6, -1(sp)
                  lb           s4, 12(sp)
                  and          t3, s5, s7
                  lb           t5, 4(sp)
                  sh           s5, -33(sp)
                  sltiu        a3, t1, 1469
                  sb           a2, -61(sp)
                  sb           t0, 2(sp)
                  lb           a1, 18(sp)
                  andi         gp, s9, -906
                  sb           s1, 11(sp)
                  nop
                  sb           t3, 12(sp)
                  andi         s6, s6, 1012
                  sh           s11, -61(sp)
                  lh           s11, -57(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+215 #start riscv_load_store_rand_instr_stream_1
                  auipc        gp, 58638
                  sw           a5, -51(sp)
                  srli         s2, ra, 6
                  sh           s6, -63(sp)
                  and          s0, sp, a6
                  lb           t3, 150(sp)
                  lh           s4, 167(sp)
                  sb           s8, 12(sp)
                  lbu          s6, 122(sp)
                  slti         t4, a1, 773
                  slt          t1, t6, a3
                  lbu          s0, -172(sp)
                  auipc        s8, 116570
                  lbu          gp, -49(sp)
                  and          zero, a5, zero
                  sb           a7, 58(sp)
                  sh           a0, -11(sp)
                  sh           a6, -203(sp)
                  xor          s0, s7, a7
                  xor          s7, a4, ra
                  slt          a0, s9, t1
                  sltu         ra, s5, t4
                  lb           s3, -78(sp)
                  lbu          s3, -120(sp)
                  sb           s4, 106(sp)
                  slti         t5, s7, 303
                  lb           s3, 87(sp)
                  lhu          t5, -159(sp)
                  sw           ra, -163(sp)
                  lbu          a3, -177(sp)
                  sub          t0, t1, a0
                  and          s5, t2, a2
                  lbu          a5, -4(sp)
                  sb           a7, -9(sp)
                  xori         s3, s1, -1029
                  lui          s3, 531653
                  lb           t4, -129(sp)
                  lbu          s10, -75(sp)
                  sb           t4, -144(sp)
                  lb           s11, 171(sp)
                  andi         s6, a6, -604
                  lb           s4, 243(sp)
                  slli         s1, s2, 31
                  lhu          t3, -23(sp)
                  auipc        s6, 736848
                  lh           s9, -149(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_0+1884 #start riscv_load_store_rand_instr_stream_3
                  ori          zero, a6, -1445
                  lb           t2, 0(a6)
                  xori         s8, tp, -273
                  sltiu        t1, s11, -1641
                  sb           s0, -1(a6)
                  or           t1, a2, a4
                  lb           t0, 8(a6)
                  lb           a3, -13(a6)
                  xor          s1, t0, zero
                  lb           a2, 5(a6)
                  lh           a0, 12(a6)
                  lb           s6, 13(a6)
                  sltu         s9, a7, a0
                  lbu          gp, -15(a6)
                  ori          t4, a1, 149
                  add          s0, a4, t0
                  lb           s2, -15(a6)
                  nop
                  lb           s6, -13(a6)
                  sh           s7, -8(a6)
                  add          s3, ra, zero
                  xor          t4, a2, s2
                  or           a2, a3, a3
                  sb           t4, 0(a6)
                  sb           gp, 7(a6)
                  xori         a2, t3, -971
                  lb           s1, 16(a6)
                  lhu          s7, 16(a6)
                  lbu          a1, -15(a6)
                  lh           s8, -14(a6)
                  andi         t4, t6, -1475
                  sb           a4, -5(a6)
                  sb           a0, 15(a6)
                  sh           s5, -2(a6)
                  sh           s3, 2(a6)
                  xor          t3, t0, a5
                  sb           a7, -6(a6)
                  lbu          tp, -16(a6)
                  lb           s5, 9(a6)
                  lb           a5, 11(a6) #end riscv_load_store_rand_instr_stream_3
                  la           ra, region_0+213 #start riscv_load_store_rand_instr_stream_4
                  sub          a5, s10, t6
                  lh           s4, 1597(ra)
                  addi         t3, s4, -720
                  srl          s11, s10, s8
                  lb           s8, 148(ra)
                  sb           a7, 1512(ra)
                  sb           s4, 220(ra)
                  lhu          a6, 191(ra)
                  lh           t2, 1013(ra)
                  lh           a2, 419(ra)
                  lb           s8, -130(ra)
                  sb           ra, -70(ra)
                  xor          s2, a7, t6
                  lh           t4, 1739(ra)
                  lhu          s2, 1251(ra)
                  lh           s1, 1589(ra)
                  lh           s5, 653(ra)
                  ori          a1, t5, -1360
                  slti         a6, tp, -1964
                  sh           s4, 657(ra)
                  lbu          s2, 106(ra)
                  sb           tp, 600(ra)
                  ori          s10, gp, 521
                  slt          s8, a5, s4
                  slli         s9, tp, 12
                  ori          a3, t6, -1236
                  lb           s6, 1476(ra)
                  sra          t2, gp, t6
                  lbu          t3, 1478(ra)
                  lb           a2, 402(ra)
                  ori          s11, s9, 100
                  nop
                  lbu          s0, 288(ra)
                  lhu          sp, 145(ra)
                  sh           s11, 519(ra)
                  lbu          s4, 1558(ra)
                  lhu          t5, 419(ra)
                  slli         s0, a4, 10
                  sub          a6, s2, s4
                  xor          t2, a5, s2
                  lh           a6, 1785(ra)
                  ori          s4, t2, 1724
                  xor          t1, a3, ra
                  sb           a7, -64(ra)
                  or           s0, t3, sp
                  lbu          a3, 1422(ra)
                  nop
                  sh           a4, 1225(ra)
                  sb           a6, -121(ra)
                  srli         zero, t5, 4
                  sb           t2, -4(ra) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1163 #start riscv_load_store_rand_instr_stream_2
                  lb           s5, 248(sp)
                  addi         s3, s3, -1964
                  lw           s3, -235(sp)
                  sh           s4, -15(sp)
                  lbu          a6, -117(sp)
                  sb           a3, 46(sp)
                  sltiu        s4, t6, -1813
                  lb           t0, 46(sp)
                  nop
                  lhu          s8, -43(sp)
                  sb           t6, -188(sp)
                  sh           s11, -125(sp)
                  sltiu        t5, s2, 1942
                  lh           zero, 63(sp)
                  lbu          t4, -224(sp)
                  sw           ra, 197(sp)
                  xor          s0, s4, t6
                  lh           zero, -197(sp)
                  lbu          t2, -90(sp)
                  srli         s8, tp, 0
                  lh           t0, -169(sp)
                  sltiu        t0, s4, 1053
                  sltu         t4, ra, s0
                  sb           a4, -184(sp)
                  sb           s9, 141(sp)
                  lbu          s9, 20(sp)
                  lbu          s6, 94(sp)
                  lbu          s0, 188(sp)
                  srli         s6, a7, 3
                  sb           s11, 88(sp)
                  lbu          s4, -170(sp)
                  lbu          t1, 39(sp)
                  or           t4, ra, t1
                  srl          s11, s5, t4
                  srl          t3, t4, s9
                  nop
                  lbu          gp, -148(sp)
                  srai         s10, a2, 14
                  auipc        s9, 918869
                  lb           s11, -6(sp)
                  lbu          s0, -13(sp)
                  lh           a6, 219(sp)
                  sh           s4, -245(sp) #end riscv_load_store_rand_instr_stream_2
                  xori         s4, t6, 1823
                  sra          s6, t3, s8
                  bgeu         t3, a6, 10f
                  slti         s1, s3, -420
                  or           s9, t5, a1
                  xor          s0, a3, a1
                  ori          gp, s10, 595
                  blt          s6, t1, 23f
                  srai         s3, s11, 1
                  xor          sp, a0, t1
10:               sltu         s7, t1, a1
                  srl          s3, a5, s10
                  srli         s2, s6, 10
                  bgeu         s6, s8, 21f
                  xor          tp, tp, s7
                  srli         t3, a2, 27
                  xori         a1, tp, -433
                  beq          a2, t0, 26f
                  sltu         sp, a1, t1
                  srl          s8, a2, t0
                  slli         s0, a3, 13
21:               sll          a0, t6, s11
                  sll          s9, t1, t6
23:               blt          t2, s10, 36f
                  auipc        t0, 912686
                  lui          s1, 722919
26:               sra          s0, a0, a1
                  srai         a1, a0, 28
                  slti         zero, s7, 1553
                  slti         s3, s2, -1278
                  add          s9, a1, s1
                  xor          t5, sp, s3
                  or           ra, t6, s9
                  ori          a0, s8, 1417
                  slti         a0, a5, -1222
                  srli         a6, a6, 21
36:               or           s5, s8, s8
                  srli         a5, a7, 0
                  addi         sp, t0, 1991
                  bltu         t2, tp, 51f
                  srl          s1, s8, s0
                  andi         t5, a7, 1201
                  bge          s6, a3, 45f
                  auipc        s9, 33684
                  xor          s7, a5, a7
45:               sltiu        t0, t0, 1640
                  bltu         s7, t1, 66f
                  auipc        s0, 93977
                  lui          s5, 75886
                  bltu         t3, s8, 65f
                  xor          a2, s1, a3
51:               beq          s4, s0, 65f
                  sltiu        s9, s6, -264
                  nop
                  srl          a1, a7, s5
                  nop
                  bltu         gp, ra, 76f
                  bge          gp, a2, 76f
                  or           s3, s5, t6
                  and          s4, a7, a5
                  add          s2, t0, s6
                  sra          t2, a2, s4
                  slti         s3, tp, -1713
                  add          a1, a2, s10
                  blt          t3, a5, 69f
65:               bge          t6, s1, 77f
66:               beq          a7, t0, 73f
                  bne          s6, s8, 87f
                  and          t4, t3, sp
69:               sub          a3, a2, s6
                  sra          s3, s1, s0
                  slti         s6, t6, 616
                  auipc        zero, 447228
73:               add          t3, t5, a5
                  bne          tp, a2, 76f
                  xor          s11, s5, gp
76:               add          s4, t1, s6
77:               xor          s8, t0, s7
                  add          a5, s1, t4
                  auipc        t3, 296694
                  sll          zero, s1, t4
                  slti         s6, a4, 1721
                  xori         a1, a4, 507
                  slt          t0, t3, s0
                  or           s3, zero, a5
                  beq          t1, s0, 88f
                  and          t1, a0, a2
87:               slti         sp, a3, -626
88:               and          s4, t4, s10
                  srli         s2, t5, 29
                  lui          s7, 949825
                  bne          a3, a7, 96f
                  blt          t6, s10, 104f
                  blt          a3, sp, 97f
                  sltu         t5, s1, t2
                  add          s10, a6, t1
96:               xor          s7, gp, sp
97:               sll          s10, sp, a4
                  sltiu        a6, t3, -2011
                  addi         t1, a5, 76
                  andi         zero, sp, -49
                  bgeu         s9, gp, 117f
                  lui          sp, 232010
                  srli         a1, s10, 25
104:              slti         t3, s4, -1720
                  lui          a5, 787671
                  srli         t2, sp, 31
                  xori         s1, sp, 1075
                  bltu         zero, sp, 110f
                  add          t5, t5, a7
110:              or           s0, a7, a7
                  slti         s7, s2, -462
                  lui          t3, 12231
                  slti         s9, s11, 1523
                  slti         a3, tp, -672
                  auipc        s7, 13151
                  sll          s5, s3, a5
117:              beq          t4, s6, 135f
                  andi         s6, a6, 1815
                  bge          s7, sp, 134f
                  lui          s4, 535715
                  blt          t3, s6, 138f
                  bgeu         t0, s3, 135f
                  addi         a2, a6, 697
                  sltu         s1, a5, zero
                  bge          s6, t1, 136f
                  nop
                  slti         sp, t4, 1933
                  or           t1, s1, s11
                  or           s4, s1, a4
                  nop
                  bge          gp, a5, 141f
                  slli         s10, a4, 28
                  xori         s3, t3, -136
134:              sltu         a3, a1, s0
135:              slti         s1, a4, -671
136:              sub          a5, tp, a3
                  auipc        s8, 497549
138:              xor          a1, zero, s10
                  beq          gp, t5, 143f
                  slti         s3, a5, -1593
141:              bge          s1, s3, 156f
                  and          tp, gp, s1
143:              srli         s11, s7, 14
                  auipc        s6, 271056
                  xori         a0, s11, -1632
                  sltiu        tp, t0, -248
                  sub          s1, a4, s1
                  sltiu        s7, s4, 30
                  bltu         a7, gp, 153f
                  bgeu         s5, t0, 169f
                  add          s1, t4, gp
                  slt          a0, gp, t2
153:              bge          tp, sp, 156f
                  andi         s10, t5, 1741
                  xori         s8, s6, 1519
156:              beq          s8, s5, 176f
                  bge          tp, s4, 174f
                  auipc        s11, 407242
                  or           a2, ra, s5
                  lui          sp, 92472
                  nop
                  sltiu        t1, s3, -1638
                  srai         t4, s10, 1
                  bgeu         t4, tp, 182f
                  sll          a5, s11, t5
                  blt          s1, s10, 179f
                  sltu         a1, t6, s11
                  bltu         a4, a6, 170f
169:              or           a3, s1, s1
170:              srl          s2, a7, a6
                  bltu         s9, s1, 178f
                  blt          zero, s10, 175f
                  xori         t1, t5, -1745
174:              srai         s10, a5, 20
175:              sub          a2, a3, t0
176:              and          a6, s3, zero
                  and          s8, s5, t6
178:              or           s6, ra, t3
179:              lui          s6, 933661
                  sltiu        a0, s7, 480
                  sub          t0, t1, s7
182:              bgeu         t5, zero, 198f
                  addi         s6, a5, -523
                  xor          sp, t0, s10
                  ori          s6, a2, -461
                  addi         t4, t1, 532
                  addi         tp, t0, -915
                  sltu         s4, a7, t6
                  slti         s4, a6, -338
                  bge          a1, s3, 195f
                  bge          ra, a6, 207f
                  bgeu         s8, s6, 201f
                  bge          s7, s9, 204f
                  and          s2, s11, a7
195:              xori         t4, s3, 1086
                  sltu         a5, a0, a5
                  nop
198:              add          s5, s6, a7
                  blt          t6, a2, 212f
                  slti         t5, t0, 1108
201:              auipc        s6, 674152
                  sra          s7, t3, t4
                  sltu         s6, a2, s7
204:              sltiu        s11, a4, -188
                  sltiu        s4, s0, -1509
                  andi         s8, a0, 1020
207:              and          a5, a7, a6
                  srli         zero, s4, 21
                  sltu         a3, s5, a0
                  sltu         s1, s2, s0
                  auipc        gp, 40500
212:              or           sp, gp, s5
                  bgeu         a5, s5, 225f
                  bne          a7, t2, 228f
                  bge          a1, s0, 227f
                  slli         s6, gp, 13
                  slli         t5, s2, 29
                  andi         ra, ra, -1689
                  add          ra, a5, t6
                  srli         s5, s3, 30
                  andi         s4, a6, -704
                  slti         s6, t2, -1934
                  bgeu         tp, a6, 235f
                  bltu         a6, gp, 240f
225:              sra          a5, s0, a7
                  slli         s11, t2, 23
227:              slti         t2, s4, 1385
228:              sra          a6, s1, s9
                  or           zero, s4, s7
                  beq          a1, s11, 234f
                  andi         t0, s11, -113
                  srl          a0, a2, a4
                  and          s7, t4, t0
234:              bne          s11, tp, 244f
235:              bltu         s0, a3, 237f
                  sltu         s0, ra, a3
237:              srai         s6, a6, 24
                  slli         s5, t3, 25
                  andi         t4, a7, 1846
240:              auipc        ra, 854500
                  add          s7, sp, s0
                  bne          s2, sp, 250f
                  xor          t4, s11, tp
244:              auipc        s4, 539425
                  bltu         a4, s3, 265f
                  sltu         s7, a7, s11
                  bgeu         a4, s7, 252f
                  sltiu        s9, a2, -748
                  lui          s8, 209217
250:              beq          a4, s6, 270f
                  slli         zero, s11, 27
252:              bge          gp, a1, 260f
                  bltu         zero, t3, 271f
                  slt          a3, s7, s10
                  srai         s0, t4, 10
                  andi         s4, s5, 157
                  and          t1, a2, tp
                  beq          a3, t2, 278f
                  ori          zero, s0, -1071
260:              blt          s3, s9, 273f
                  sltiu        s4, a2, 840
                  bne          s5, s2, 275f
                  sra          tp, ra, t5
                  bltu         t1, zero, 266f
265:              slli         a2, gp, 1
266:              srli         a6, gp, 28
                  blt          s5, t1, 278f
                  sub          s2, a5, a1
                  sra          a6, a5, s7
270:              ori          ra, tp, -834
271:              sll          zero, s2, a5
                  and          a5, s7, s4
273:              slli         s5, t0, 1
                  auipc        s11, 951804
275:              addi         gp, a6, -1098
                  add          a3, a4, a4
                  andi         t5, s6, -1661
278:              srai         a3, a3, 2
                  add          t1, a7, t4
                  xori         t0, s4, 257
                  sll          t3, t3, s4
                  bge          a1, t3, 294f
                  srai         s4, a6, 29
                  andi         s7, s6, 1832
                  srli         s0, s4, 3
                  bgeu         s0, s8, 306f
                  bltu         a1, s4, 290f
                  lui          s4, 387191
                  slti         zero, t1, 538
290:              slli         t2, s2, 9
                  slli         a3, s2, 9
                  sltu         s3, s8, t2
                  bltu         t2, a5, 301f
294:              blt          ra, a1, 306f
                  or           t0, t0, a2
                  xor          s11, s11, s6
                  bge          s5, a7, 311f
                  sltu         s5, s11, sp
                  slti         t0, a7, -1023
                  beq          s6, t5, 302f
301:              bgeu         sp, s7, 305f
302:              sltu         t1, s3, gp
                  sltu         s2, t0, t6
                  blt          s1, tp, 323f
305:              sra          s9, t5, a2
306:              blt          a3, a2, 313f
                  srl          s7, t2, t6
                  sra          s11, a6, s3
                  or           t1, zero, a7
                  ori          a2, t2, -1165
311:              and          t4, s11, a5
                  slli         t0, s6, 17
313:              andi         a5, s1, 300
                  slti         gp, s7, 159
                  nop
                  sltiu        tp, sp, -620
                  xori         a1, s8, 1097
                  sll          s5, a6, a2
                  srai         a3, s1, 13
                  add          s0, t3, t3
                  add          s8, s7, s6
                  slti         s8, a1, -108
323:              slt          t3, t1, tp
                  sll          s10, s11, s2
                  sltu         s7, a1, ra
                  sub          a3, a5, a4
                  srli         a5, t1, 30
                  sll          gp, s1, t2
                  xori         t2, zero, -1592
                  slt          a3, a6, t1
                  bgeu         t4, s10, 346f
                  sra          gp, a3, t5
                  auipc        a1, 298290
                  srli         tp, s2, 13
                  lui          s5, 59047
                  bltu         s2, s8, 339f
                  blt          s5, s1, 347f
                  sltu         a6, t0, a2
339:              blt          a2, t2, 356f
                  and          t2, s7, a0
                  sra          s11, a6, t4
                  bltu         t0, tp, 351f
                  srli         t3, s8, 1
                  andi         s0, ra, -1852
                  lui          gp, 665288
346:              lui          a0, 89691
347:              bgeu         t5, a7, 363f
                  slt          t0, a6, s5
                  bgeu         a6, s7, 353f
                  auipc        s11, 942516
351:              nop
                  srai         zero, a5, 12
353:              lui          a1, 859575
                  add          s5, a6, s5
                  bne          s5, s2, 360f
356:              sra          s5, s5, s11
                  srli         s3, a1, 15
                  slli         s11, gp, 16
                  srai         s4, ra, 25
360:              bge          t1, t1, 376f
                  xor          gp, ra, s1
                  add          s0, s2, zero
363:              slli         s1, tp, 6
                  xori         zero, s2, -626
                  nop
                  or           a0, tp, a6
                  nop
                  andi         a6, s9, 1635
                  bne          s10, s11, 385f
                  sll          t0, a7, gp
                  andi         ra, zero, -1270
                  auipc        a3, 354995
                  sltiu        s11, zero, 473
                  beq          s3, sp, 394f
                  add          t1, a5, s6
376:              auipc        t1, 503047
                  sltu         t5, sp, s2
                  bne          a4, t3, 386f
                  slti         s7, s6, -1743
                  srai         ra, s6, 20
                  bge          s4, a0, 393f
                  slt          s7, t4, s9
                  xori         s10, t3, -1102
                  sub          s0, a3, t5
385:              slti         s1, a2, -1421
386:              xori         s3, s8, -1728
                  blt          s11, sp, 392f
                  sll          t4, s9, tp
                  sub          a6, ra, t2
                  slt          tp, zero, s7
                  srai         a6, s10, 22
392:              beq          a0, t2, 403f
393:              ori          t0, a5, 1629
394:              xor          s7, s10, t3
                  bge          tp, a7, 407f
                  or           s1, s11, a3
                  bge          t1, s0, 400f
                  sub          gp, t1, t2
                  addi         s3, s1, 887
400:              xor          t2, a3, s6
                  slti         t1, s8, -880
                  add          s1, s6, t4
403:              and          sp, ra, ra
                  sltiu        s5, a1, -562
                  lui          gp, 901692
                  bge          t5, t6, 409f
407:              bgeu         s4, t2, 427f
                  lui          sp, 602134
409:              auipc        tp, 892363
                  or           t3, a0, tp
                  nop
                  bltu         t3, s11, 424f
                  slt          sp, t0, zero
                  bne          s5, t3, 427f
                  nop
                  slt          tp, t0, s9
                  bltu         a4, s9, 435f
                  sltiu        a3, a6, 1206
                  nop
                  srai         a6, a1, 29
                  nop
                  bltu         t1, a0, 427f
                  lui          s9, 223983
424:              sra          t1, s8, a7
                  ori          s2, t5, 509
                  andi         a3, s3, 393
427:              sltu         t1, a1, t2
                  bltu         s6, t6, 438f
                  xori         a5, s0, 1671
                  slt          s3, s0, a3
                  xori         s0, s10, -278
                  add          s4, a1, zero
                  lui          s7, 802809
                  sltiu        t2, a3, -1736
435:              sub          a3, s9, sp
                  xor          t1, gp, sp
                  add          ra, a6, a1
438:              sll          t3, a5, a4
                  slti         s8, t0, -726
                  add          s5, s8, s1
                  lui          t5, 341551
                  ori          a3, t0, 1035
                  sll          t4, t6, zero
                  lui          s11, 193820
                  andi         s0, a6, -50
                  auipc        gp, 384612
                  addi         s1, a1, -1804
                  beq          a7, t0, 464f
                  slli         zero, s5, 14
                  bltu         t5, sp, 464f
                  slt          a2, ra, zero
                  sub          s7, s1, s6
                  bne          s8, a1, 473f
                  lui          a2, 180963
                  bgeu         s11, a6, 457f
                  auipc        s6, 478303
457:              lui          t0, 554055
                  srli         s2, t0, 1
                  sub          t3, t1, a3
                  xor          s3, ra, a1
                  andi         a0, s0, 1817
                  bgeu         a5, s2, 467f
                  ori          a5, s1, 731
464:              slt          s6, zero, gp
                  sll          tp, a7, a6
                  beq          gp, s6, 468f
467:              sltiu        a2, t0, 359
468:              bge          s2, a7, 481f
                  sltiu        tp, a7, 232
                  bne          s8, s10, 489f
                  slt          s3, s10, a7
                  andi         t3, s4, -1855
473:              slti         s1, s6, 808
                  beq          s1, s3, 490f
                  sub          a2, a6, s5
                  srl          s11, s2, a6
                  srli         a6, s2, 19
                  and          t5, s10, s11
                  sltiu        t0, gp, -122
                  or           a6, tp, s0
481:              sll          s5, a4, a7
                  sltu         t5, t3, gp
                  sltu         s6, s6, ra
                  auipc        s10, 432044
                  bgeu         t2, t6, 494f
                  addi         s10, a0, -1457
                  beq          a6, a4, 491f
                  sra          t3, a3, s11
489:              srl          t4, a0, t3
490:              srli         s2, t5, 5
491:              slli         t5, s6, 6
                  nop
                  auipc        s3, 886297
494:              lui          s0, 426767
                  nop
                  beq          t2, sp, 513f
                  or           t1, s7, s8
                  xori         s11, t2, -1449
                  sltiu        t2, s2, 1071
                  lui          s1, 695674
                  or           a2, a3, s1
                  srai         s0, a3, 20
                  nop
                  beq          a6, s8, 512f
                  addi         s7, s1, 1745
                  blt          t5, s6, 522f
                  slti         a0, t2, 192
                  addi         zero, s8, -1880
                  auipc        zero, 275250
                  bgeu         t5, s1, 514f
                  bgeu         a4, t1, 531f
512:              nop
513:              sll          s5, s0, s8
514:              and          t0, s0, a2
                  blt          ra, a3, 522f
                  xori         tp, s3, 466
                  sub          t1, t6, t6
                  sltu         s11, s11, a3
                  slti         t5, a5, 1756
                  and          zero, s3, s0
                  lui          s8, 231732
522:              slli         s4, sp, 7
                  srl          t3, s9, s2
                  or           t0, t5, a5
                  beq          t3, t2, 540f
                  sra          zero, s9, s7
                  auipc        s2, 578946
                  srli         s7, a7, 1
                  add          t1, s9, s6
                  auipc        sp, 177067
531:              xori         s6, s8, 820
                  ori          tp, s8, -223
                  srai         t1, s0, 5
                  beq          s2, s11, 546f
                  slt          s7, a5, s7
                  auipc        t5, 935675
                  sltiu        s7, a3, 847
                  sltiu        a2, s11, -1868
                  sra          t0, a5, gp
540:              bge          a3, ra, 548f
                  xor          s0, a3, s1
                  bne          a2, s8, 550f
                  blt          a1, gp, 559f
                  sll          t3, t2, t3
                  ori          s3, a1, 1139
546:              srli         s10, t0, 10
                  slt          zero, zero, ra
548:              slt          a0, a1, s3
                  srl          t1, ra, a1
550:              bne          a5, s8, 562f
                  srai         gp, t2, 13
                  blt          ra, s10, 565f
                  slt          s0, a3, a4
                  bne          t2, a0, 563f
                  andi         t3, t5, 1221
                  lui          t5, 289970
                  blt          a7, s2, 573f
                  xor          s8, t2, a5
559:              sltu         s0, a0, a2
                  srl          t2, s10, t2
                  srl          a5, s5, a2
562:              bgeu         s9, a6, 580f
563:              or           s11, a5, ra
                  and          t5, t3, s3
565:              srai         s1, a1, 29
                  blt          sp, a6, 574f
                  bge          t3, s11, 571f
                  bltu         s1, a7, 587f
                  nop
                  blt          s10, s3, 575f
571:              lui          t4, 624930
                  bgeu         s5, a0, 577f
573:              add          ra, a6, gp
574:              bne          gp, ra, 587f
575:              auipc        a5, 170899
                  slt          s6, s6, a7
577:              sltu         a6, s6, s0
                  srl          a2, t3, t1
                  bge          t5, t5, 593f
580:              bge          s4, a5, 600f
                  sltu         a6, t4, ra
                  lui          s10, 594347
                  or           s5, s10, s5
                  bltu         zero, s5, 601f
                  slli         t5, s8, 23
                  slt          a6, a0, a7
587:              and          s4, ra, s6
                  srli         s8, t0, 2
                  add          tp, s2, s11
                  slli         a0, a4, 27
                  ori          s10, s10, 798
                  slti         t2, s6, 1237
593:              slli         sp, s8, 15
                  xori         t4, a2, -353
                  xori         s0, s0, 843
                  xori         sp, a3, -808
                  sra          ra, a4, sp
                  la           s10, sub_7
                  ori          a6, s2, -1683
                  addi         s10, s10, -91
                  or           t5, zero, t4
                  and          s4, s10, s4
                  beq          ra, t4, sub_5_j9 #branch to jump instr
                  srl          t4, s2, a2
                  xori         s8, s1, 1900
                  xor          s3, t5, a4
sub_5_j9:         jalr         s7, s10, 92 #jump sub_5 -> sub_7
                  sltu         gp, s11, t3
                  sra          s10, a0, a4
                  nop
600:              bgeu         gp, s11, 602f
601:              xori         a2, a0, -1619
602:              bne          s2, s9, 605f
                  nop
                  bge          t6, ra, 615f
605:              srl          a1, t3, a7
                  srli         s11, s9, 11
                  bne          ra, s6, 609f
                  slti         s10, s5, 1926
609:              and          zero, t2, t1
                  sltu         s11, t0, s7
                  sra          s6, t4, a2
                  xor          zero, s0, s8
                  auipc        s6, 527396
                  beq          t3, s6, 634f
615:              slti         s1, s11, -1874
                  beq          s11, s9, 636f
                  blt          t5, a1, 629f
                  srli         a0, t3, 10
                  sra          s2, a5, a5
                  lui          s3, 6149
                  bge          s10, s8, 636f
                  lui          t1, 694479
                  sll          s4, a4, tp
                  slt          t0, a7, a3
                  bge          a4, a2, 641f
                  bgeu         s10, s11, 630f
                  auipc        a0, 47265
                  bltu         tp, t6, 638f
629:              beq          s6, t2, 636f
630:              sub          s0, t1, a1
                  xor          t1, t5, s8
                  srai         ra, s4, 8
                  auipc        s5, 480156
634:              srl          a1, s4, s8
                  ori          zero, s3, 707
636:              and          ra, s7, a7
                  srai         t5, s10, 18
638:              blt          t6, tp, 641f
                  srai         s10, zero, 14
                  blt          a7, s10, 652f
641:              andi         s5, gp, -1706
                  andi         t2, s3, 1797
                  addi         tp, t3, -1240
                  lui          t3, 534151
                  slt          t0, t2, s8
                  sltu         a2, a2, t5
                  auipc        s1, 308124
                  ori          s11, s7, 854
                  beq          t0, a6, 667f
                  nop
                  beq          a7, a5, 662f
652:              sll          s11, s10, s7
                  lui          s10, 507226
                  sra          a5, s4, s4
                  nop
                  blt          a4, t0, 659f
                  sltu         t5, a3, a2
                  addi         t2, s3, 1296
659:              srai         gp, t3, 3
                  bge          s8, s1, 676f
                  slti         t5, s11, -1225
662:              slti         zero, s3, 155
                  auipc        ra, 851982
                  auipc        s9, 506331
                  or           t0, t6, t4
                  srli         s8, t0, 19
667:              sub          s2, t4, s6
                  sltu         t4, tp, s6
                  slli         sp, s2, 6
                  add          t0, s4, a7
                  bgeu         t2, s10, 683f
                  xori         a3, s2, 928
                  sra          sp, s8, a5
                  slt          a2, s11, t1
                  sltiu        t0, t0, -1786
676:              slti         t5, a3, -1341
                  bgeu         t2, s5, 692f
                  srli         ra, a0, 31
                  srl          zero, a2, t0
                  auipc        s11, 905698
                  sra          ra, a5, s0
                  sltu         s8, t2, s10
683:              nop
                  blt          s3, zero, 696f
                  lui          t0, 297636
                  sra          s1, s2, s10
                  bne          a6, a4, 706f
                  slti         s0, a1, -1937
                  sltiu        t2, t3, 843
                  lui          s11, 425192
                  lui          s3, 386418
692:              bgeu         s6, t3, 700f
                  sltu         t5, s1, a0
                  lui          t5, 452223
                  srai         a5, zero, 26
696:              add          s10, ra, t2
                  xori         t1, t5, 2027
                  beq          zero, sp, 718f
                  bgeu         t3, t2, 709f
700:              slt          s11, a4, s5
                  blt          s9, s5, 718f
                  ori          s11, a0, -1836
                  lui          s2, 561673
                  addi         t4, s6, 636
                  sub          s11, tp, zero
706:              bgeu         a6, s9, 708f
                  slt          s1, s1, t2
708:              bgeu         tp, t5, 724f
709:              auipc        a0, 4760
                  slti         s2, s0, -1595
                  slt          a0, t6, s3
                  sltu         a1, s6, s8
                  slt          s2, s7, a1
                  bge          a2, s10, 719f
                  bgeu         s5, a4, 724f
                  lui          zero, 79262
                  xor          s2, s7, zero
718:              bge          t1, a1, 724f
719:              ori          s3, a6, -188
                  blt          t3, s6, 724f
                  ori          gp, s5, -858
                  slt          a6, a3, t5
                  sra          a2, s10, s1
724:              sra          s3, a6, a2
                  auipc        s0, 605133
                  nop
                  sll          gp, s11, s7
                  lw           s7, 4(a7)
                  addi         a7, a7, 56
                  and          s3, t5, t2
                  auipc        a3, 745060
972:              addi x27, x23, 1
972:              jalr x27, x27, 0
sub_4:            sltiu        t0, a7, -23
                  sltiu        a2, a1, 22
                  addi         a7, a7, -52
                  sub          t3, gp, t2
                  slt          ra, s3, ra
                  srai         a6, zero, 31
                  lui          s5, 966952
                  ori          t3, s4, 962
                  sw           s7, 4(a7)
                  sra          s0, a2, a5
                  xor          s8, t6, a7
                  bne          zero, a7, 7f
                  bltu         a2, zero, 5f
                  blt          t4, zero, 9f
                  sltiu        s0, t5, 106
5:                sra          a3, s6, a6
                  lui          a5, 886006
7:                slli         s4, s5, 17
                  srai         t5, a3, 18
9:                sub          s1, s4, s9
                  lui          a2, 500852
                  srli         t5, t1, 10
                  slti         s10, s0, 240
                  srli         s4, s11, 27
                  bltu         a7, s8, 25f
                  srli         s11, t0, 2
                  sra          a1, s5, a2
                  sltu         s0, a3, s7
                  srai         s0, s3, 30
                  andi         a5, t4, -1479
                  bne          t4, s8, 39f
                  lui          s8, 879920
                  bltu         s5, t2, 35f
                  bge          s0, t6, 28f
                  sltiu        a0, sp, 549
25:               sll          tp, s9, s6
                  auipc        a3, 418059
                  slt          s2, a1, s5
28:               xori         gp, s5, 1113
                  and          s2, a4, s5
                  srai         s9, s9, 5
                  blt          t2, tp, 42f
                  bgeu         s11, a5, 39f
                  sltiu        a3, s8, 1450
                  slti         a1, s3, -95
35:               slli         s6, ra, 21
                  or           s5, a6, t2
                  sra          a5, a1, a6
                  slli         s6, s9, 21
39:               sll          s4, a5, gp
                  or           s11, a7, zero
                  add          tp, a4, t5
42:               add          s7, s7, ra
                  slt          a1, s6, ra
                  auipc        a6, 385981
                  sltiu        a2, a1, 1676
                  sll          s8, zero, zero
                  sub          sp, s6, zero
                  lw           s7, 4(a7)
                  add          t2, a7, s9
                  srli         a3, s3, 6
                  addi         a7, a7, 52
                  srli         s9, a1, 17
                  sll          t1, s10, s10
64:               addi x7, x23, 0
64:               jalr x7, x7, 0
sub_2:            slli         s9, a7, 17
                  sub          s10, t5, s8
                  addi         a7, a7, -20
                  sra          s8, gp, t3
                  sw           s7, 4(a7)
                  slt          t0, s10, t6
                  sra          ra, s2, s0
                  xor          tp, s4, s4
                  lui          s5, 944113
                  xori         s5, tp, -1611
                  sltiu        a2, s6, 446
                  bge          gp, a0, sub_2_j6 #branch to jump instr
                  srl          s6, gp, ra
                  slti         s2, a3, 832
                  sra          s4, t6, s5
                  slti         t4, t4, -1443
                  slli         gp, a0, 4
                  add          s1, s6, s8
sub_2_j6:         jal          s7, sub_5 #jump sub_2 -> sub_5
                  la           t0, region_1+13 #start riscv_load_store_rand_instr_stream_0
                  slli         s3, a3, 11
                  lbu          s0, -8(t0)
                  lhu          a3, 1(t0)
                  lb           tp, 16(t0)
                  lbu          t4, 10(t0)
                  sb           a4, 16(t0)
                  or           t1, tp, s2
                  add          s3, t1, s11
                  lbu          s5, -10(t0)
                  lb           t3, 4(t0)
                  add          s5, a4, s7
                  xor          s8, gp, s9
                  lbu          s5, -2(t0)
                  sb           a0, -4(t0)
                  slt          t4, sp, a1
                  lhu          s8, 1(t0)
                  lb           a0, 14(t0)
                  lb           s3, -8(t0)
                  andi         zero, a7, -1483
                  lb           s6, 4(t0)
                  sh           s2, -13(t0)
                  lb           zero, 0(t0)
                  sb           s6, 10(t0)
                  lbu          a3, 8(t0)
                  lh           a5, -13(t0)
                  addi         a3, t2, 160
                  lbu          a0, -10(t0)
                  sb           t0, -4(t0)
                  sb           s8, -4(t0)
                  lb           a3, -6(t0)
                  srli         s2, a6, 12
                  sb           t3, -13(t0)
                  lbu          zero, -8(t0)
                  lui          s2, 628412
                  srai         sp, zero, 8
                  lbu          a5, 4(t0)
                  sll          s10, s7, s6
                  sw           t0, -13(t0)
                  sra          s10, t6, a7
                  lbu          t3, 1(t0)
                  lh           a1, 1(t0)
                  sb           t4, 7(t0)
                  lb           t5, 13(t0) #end riscv_load_store_rand_instr_stream_0
                  sra          t0, s5, ra
                  sub          s7, t0, s9
                  slti         s3, a6, 1201
                  and          s4, tp, zero
                  bne          a4, s6, 18f
                  lui          s7, 296199
                  lui          t2, 991172
                  sltu         s4, s8, s0
                  slti         t3, sp, -1387
                  blt          a1, s9, 14f
                  slti         s3, s5, -69
                  add          t4, a1, ra
                  srli         a5, t3, 29
                  slt          s7, a5, t5
14:               bgeu         s4, t0, 28f
                  addi         a1, t1, -1873
                  addi         t4, s4, -69
                  slt          s1, a0, s1
18:               srl          gp, a5, s2
                  add          gp, a6, a3
                  srai         s2, t4, 20
                  sub          tp, a7, t5
                  srai         s10, a3, 6
                  or           gp, zero, a6
                  auipc        a0, 338730
                  slti         s8, t3, 362
                  bgeu         t6, sp, 36f
                  sll          t1, a0, t3
28:               sra          a2, s10, a5
                  sll          s9, a3, t3
                  add          ra, s8, s6
                  sub          s6, t0, a4
                  bgeu         a4, t5, 48f
                  bgeu         s0, s2, 34f
34:               slli         t5, a6, 4
                  xor          tp, s8, t2
36:               or           s0, tp, s9
                  andi         t1, a3, -701
                  lui          s6, 518765
                  blt          a2, s11, 44f
                  lui          tp, 831683
                  beq          a6, s3, 43f
                  sub          s5, t4, a6
43:               addi         s5, s2, 2033
44:               auipc        s2, 72300
                  lui          s10, 247713
                  srli         ra, t2, 4
                  sll          t4, s0, zero
48:               bge          t5, s2, 58f
                  sub          s4, t4, s7
                  sltiu        t5, ra, -1009
                  or           s10, t6, s9
                  sll          sp, tp, s1
                  nop
                  bge          t4, t4, 70f
                  sll          gp, s2, s6
                  srl          s11, s3, t0
                  sltiu        zero, t2, -945
58:               and          s3, t2, a3
                  auipc        t5, 123903
                  ori          a3, s2, 885
                  xor          s8, a7, s4
                  srai         ra, s5, 7
                  ori          s2, ra, -340
                  xor          tp, s9, gp
                  add          s1, a2, zero
                  or           s0, a4, a6
                  srli         a1, t5, 1
                  and          sp, t4, gp
                  xor          a6, s5, s2
70:               srl          t2, ra, a1
                  sltiu        s7, sp, 1887
                  beq          t3, s2, 79f
                  srli         s6, t6, 19
                  lui          t0, 862952
                  auipc        a1, 759623
                  bne          a4, s7, 82f
                  slti         s4, s4, 1991
                  slli         a2, t0, 1
79:               and          ra, s3, t2
                  bge          a3, gp, 92f
                  beq          tp, t0, 91f
82:               xori         a0, a7, 1326
                  srai         tp, s1, 3
                  bne          s5, a1, 87f
                  add          s1, s0, s4
                  srli         t5, t5, 21
87:               auipc        s9, 295223
                  or           s9, tp, t1
                  addi         s11, a7, -973
                  bltu         a3, a3, 99f
91:               slli         t0, s9, 23
92:               srl          sp, ra, a5
                  bgeu         s5, a2, 99f
                  bne          a7, s7, 98f
                  and          a5, gp, ra
                  bgeu         a0, a5, 115f
                  sltiu        a3, tp, 884
98:               nop
99:               nop
                  or           s3, s4, s9
                  xor          t2, zero, s10
                  sub          s8, s7, zero
                  sltu         s4, a5, s7
                  beq          gp, t0, 109f
                  srai         s3, a5, 8
                  ori          gp, s10, 1565
                  lui          s10, 59820
                  srli         t4, s4, 22
109:              sltiu        s0, zero, 25
                  lui          sp, 796661
                  addi         s9, a0, -1640
                  sub          s4, a6, s1
                  srl          s0, s3, t5
                  blt          ra, s0, 122f
115:              bgeu         a3, s5, 127f
                  slti         a1, t2, -910
                  sltiu        ra, t1, -1544
                  bgeu         t6, s10, 134f
                  or           s8, a7, s1
                  slli         s9, t0, 22
                  srl          s4, s8, t3
122:              xori         s2, s0, 1299
                  bltu         s10, s4, 134f
                  auipc        s6, 654288
                  srai         t2, t5, 6
                  addi         a0, gp, -846
127:              andi         a2, a2, -470
                  bgeu         a6, t1, 133f
                  sltiu        tp, s0, -474
                  bne          t6, a6, 134f
                  blt          gp, a6, 134f
                  sltu         a0, s6, s9
133:              sll          s0, a0, a0
134:              sltu         s10, s9, sp
                  lw           s7, 4(a7)
                  slti         a3, s5, -1252
                  nop
                  or           a6, s6, tp
                  and          gp, t3, ra
                  addi         a7, a7, 20
                  or           s8, a7, t1
                  ori          t5, zero, 833
                  slti         sp, s10, -905
                  xori         t5, s1, 1037
                  and          gp, t4, s2
                  slt          s9, a4, ra
210:              addi x1, x23, 0
210:              jalr x1, x1, 0
sub_10:           nop
                  xor          a0, s4, zero
                  ori          t5, t2, 497
                  auipc        t3, 357639
                  lui          s10, 298183
                  addi         a7, a7, -32
                  slti         a5, t0, 425
                  sltu         t1, t5, zero
                  srli         s1, s5, 2
                  sw           s7, 4(a7)
                  slt          t5, s8, a7
                  srai         tp, a1, 28
                  srli         zero, a5, 16
                  add          t2, s3, t5
                  ori          s8, s6, 992
                  bltu         ra, s2, 9f
                  srai         s10, ra, 9
                  bltu         ra, s5, 6f
6:                ori          s5, tp, 209
                  beq          gp, s8, 20f
                  bgeu         a7, t1, 27f
9:                sub          gp, a2, s6
                  bge          s10, s9, 25f
                  sltiu        a0, a0, 150
                  srl          s6, zero, s0
                  bne          a5, a7, 15f
                  srl          s0, tp, s6
15:               sll          s6, t6, t6
                  bne          a0, s5, 32f
                  bne          t2, s10, 33f
                  beq          tp, t6, 36f
                  sra          t2, s5, s0
20:               bltu         t3, a2, 22f
                  ori          s10, a5, -1716
22:               srl          t3, s3, s10
                  slt          t5, t1, s9
                  add          s4, s5, s0
25:               lui          t3, 745228
                  srl          s11, t3, tp
27:               sltu         s1, s10, s11
                  srli         t1, t5, 8
                  auipc        t3, 683185
                  srli         ra, t5, 4
                  slli         a0, tp, 25
32:               bge          s5, t4, 34f
33:               sltiu        gp, a1, 558
34:               srl          ra, s4, t2
                  addi         zero, s10, 660
36:               bne          a4, a5, 42f
                  srai         s9, t1, 16
                  nop
                  blt          t4, a6, 54f
                  and          a0, s6, s10
                  ori          a2, s1, -91
42:               slt          t4, gp, s8
                  bgeu         t3, s8, 50f
                  blt          s9, s1, 54f
                  nop
                  xori         s1, a4, 957
                  slli         ra, s3, 20
                  add          s1, s10, a2
                  srl          a2, a7, s8
50:               or           s6, t3, t6
                  nop
                  beq          a1, s11, 54f
                  and          t0, s0, s10
54:               ori          a6, sp, -1472
                  auipc        a3, 699574
                  lw           s7, 4(a7)
                  slli         a1, s7, 14
                  auipc        a1, 118620
                  sltu         s0, s2, t2
                  sll          s9, s6, a7
                  addi         a7, a7, 32
                  nop
                  xor          t3, a1, s4
                  auipc        s0, 838535
                  sub          zero, gp, s1
                  srli         s2, t4, 20
79:               addi x20, x23, 1
79:               jalr x20, x20, 0
sub_8:            addi         s0, s1, 17
                  nop
                  slli         zero, a4, 25
                  sltu         t5, s7, a5
                  beq          a7, a3, sub_8_stack_p
                  srai         t1, a1, 13
                  slli         t1, a3, 25
                  srai         s11, a0, 21
                  nop
sub_8_stack_p:    addi         a7, a7, -20
                  add          t5, a7, s10
                  sw           s7, 4(a7)
                  xori         a3, a5, -889
                  srai         sp, a7, 1
                  srai         ra, a1, 0
                  slli         s6, t5, 18
                  add          tp, t2, s9
                  slti         s0, a7, 1573
                  la           a1, sub_10
                  or           zero, s10, gp
                  sltu         s1, t4, a7
                  addi         a1, a1, -998
                  and          a2, s1, tp
                  bltu         s7, a6, sub_8_j11 #branch to jump instr
                  xori         s7, s2, -345
sub_8_j11:        jalr         s7, a1, 999 #jump sub_8 -> sub_10
                  la           sp, region_1+1387 #start riscv_load_store_rand_instr_stream_0
                  andi         s11, sp, 1239
                  sb           ra, -58(sp)
                  add          s2, s6, a3
                  sltiu        s4, a4, -155
                  lhu          a1, -25(sp)
                  lbu          a5, 14(sp)
                  xori         s0, t0, 943
                  lbu          s10, -4(sp)
                  lb           s0, -19(sp)
                  lbu          ra, 20(sp)
                  sb           s6, -56(sp)
                  sltu         s8, s6, a3
                  sub          t2, s2, a7
                  sltu         s6, t5, t6
                  ori          s7, a6, 1154
                  srai         a2, sp, 2
                  sub          t2, a4, s4
                  lb           a0, 26(sp)
                  lb           t0, 32(sp)
                  nop
                  lbu          s4, 30(sp)
                  lbu          s10, -57(sp)
                  lbu          t4, -62(sp)
                  sltiu        a1, s0, -931
                  nop
                  sltiu        s4, a5, 1685
                  lw           s10, 57(sp)
                  srl          t2, s3, s3
                  sra          s9, s0, a5
                  sltu         s11, zero, s7
                  lbu          t4, -9(sp)
                  lh           s6, 61(sp)
                  srl          tp, t1, s5
                  lbu          zero, -40(sp)
                  sb           tp, -34(sp)
                  sra          s4, a1, zero
                  sra          s4, a7, a7
                  sb           gp, 32(sp)
                  sll          s10, s0, s11
                  xor          s3, a3, s1
                  srl          a3, s8, a1
                  lb           s1, 47(sp)
                  srai         s10, s11, 17
                  slt          s9, s8, s7
                  lbu          t5, 8(sp)
                  lbu          s3, -4(sp)
                  lbu          a6, 38(sp)
                  xori         a2, s7, 17
                  sb           a7, -56(sp)
                  lbu          s6, -41(sp)
                  sb           a4, -44(sp)
                  andi         s10, t2, 2022
                  add          gp, ra, a7
                  lb           t2, -50(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+885 #start riscv_load_store_rand_instr_stream_1
                  lhu          a0, 189(t5)
                  sub          a1, sp, sp
                  sh           s2, 57(t5)
                  sra          a5, gp, s10
                  lbu          t1, 54(t5)
                  sw           ra, -189(t5)
                  slli         a3, t5, 28
                  srai         gp, t3, 18
                  lhu          s11, 5(t5)
                  slt          s5, s9, a5
                  slli         tp, t3, 16
                  and          ra, s1, a0
                  lb           t0, 183(t5)
                  sltiu        s7, t4, -69
                  sb           a4, -34(t5)
                  lh           t3, 185(t5)
                  srli         t2, a0, 19
                  lb           zero, -160(t5)
                  auipc        a0, 51444
                  slli         t4, s2, 10
                  lbu          s7, 194(t5)
                  and          s6, t0, s9
                  xori         t3, a3, -541
                  auipc        s6, 510634
                  sh           a3, 141(t5)
                  sltu         s3, t1, zero
                  lbu          t1, -70(t5)
                  sub          a0, s9, a0
                  xor          s2, s9, zero
                  xori         a0, zero, -258
                  auipc        s11, 623209
                  slti         s10, s10, 1991
                  sb           s5, -148(t5)
                  sb           t5, -97(t5)
                  lhu          ra, -149(t5)
                  srl          s9, a3, t0
                  srai         a2, a5, 3
                  sb           sp, -206(t5)
                  lb           t1, 236(t5)
                  sb           s1, 43(t5)
                  lb           tp, 179(t5)
                  auipc        zero, 489641
                  sb           a7, -22(t5)
                  sb           t2, -53(t5)
                  lbu          a3, 130(t5)
                  srl          tp, a2, a2
                  andi         s8, s1, -1900
                  lui          s11, 71025
                  sb           s11, 175(t5)
                  lbu          t0, 18(t5)
                  sh           ra, 225(t5)
                  andi         gp, gp, 467
                  sb           t6, -59(t5)
                  sra          s4, s7, s8
                  or           t1, t4, s7
                  lh           t1, -77(t5)
                  sra          s11, a5, s2
                  lb           s6, -136(t5) #end riscv_load_store_rand_instr_stream_1
                  slli         s8, t6, 24
                  bne          s6, a0, 15f
                  addi         t1, a1, -118
                  bne          s4, zero, 5f
                  bltu         s2, t2, 10f
5:                blt          a1, t5, 6f
6:                lui          a1, 83215
                  sltu         s5, t3, s0
                  blt          s3, t1, 24f
                  srai         tp, t3, 12
10:               sltu         t0, s0, a6
                  sub          t3, s0, a5
                  srli         s5, s8, 18
                  add          t2, s4, a4
                  nop
15:               srli         s3, s8, 14
                  bge          s6, t3, 23f
                  bge          a7, zero, 29f
                  nop
                  nop
                  slti         a2, a3, 1966
                  nop
                  ori          s0, a1, 516
23:               add          t5, t6, s9
24:               bge          a0, s1, 41f
                  bge          s4, ra, 45f
                  sll          a5, t4, tp
                  addi         t4, t2, -186
                  and          a2, gp, a0
29:               blt          a2, t5, 44f
                  slli         s8, t1, 29
                  ori          a3, t5, -205
                  slt          a3, t0, s11
                  sll          t3, s5, s1
                  nop
                  beq          a7, t0, 40f
                  ori          s0, s1, -1854
                  slt          s11, a5, s4
                  sub          t1, s4, s3
                  lui          sp, 879872
40:               sub          a0, s11, t6
41:               slt          a2, ra, s2
                  addi         s11, a2, -1178
                  sll          t4, a0, a1
44:               blt          tp, s8, 62f
45:               sub          s1, s6, t2
                  xori         s6, t5, -862
                  slt          a1, s5, zero
                  bgeu         tp, gp, 68f
                  srl          s6, a7, tp
                  auipc        s8, 771206
                  auipc        tp, 856148
                  xori         s9, s11, 70
                  lui          a5, 827651
                  bltu         a5, t0, 61f
                  addi         sp, t5, -1611
                  xor          s6, zero, t0
                  slt          sp, ra, t6
                  sll          s9, a3, s1
                  srai         a6, s6, 6
                  sub          t4, a0, zero
61:               bge          zero, t6, 64f
62:               andi         zero, a2, -1625
                  addi         s4, s7, -628
64:               addi         t2, a1, 1581
                  sra          ra, s9, t6
                  slti         s9, sp, -1388
                  bge          ra, s2, 78f
68:               andi         s9, t3, -1503
                  slti         s11, t4, -246
                  sltiu        t0, t1, -697
                  slli         t1, s5, 18
                  slti         t1, s5, -1584
                  beq          s7, zero, 82f
                  sltiu        s7, a0, -1368
                  andi         s4, a6, -1087
                  srai         a5, a3, 14
                  sub          s0, zero, a2
78:               slti         a3, t2, -1381
                  sra          s1, s0, a7
                  lui          t2, 470910
                  sltiu        t4, s3, 725
82:               sltiu        s7, a7, -96
                  andi         a5, t1, 1523
                  bne          s7, s8, 97f
                  slli         tp, a2, 13
                  bgeu         a4, t3, 101f
                  srai         t0, zero, 1
                  slli         gp, t2, 18
                  ori          s6, a2, -307
                  sltiu        s6, s0, 232
                  slli         a0, sp, 13
                  nop
                  bgeu         zero, s2, 106f
                  slti         tp, tp, 1060
                  bne          s10, t2, 106f
                  addi         t4, a6, -642
97:               auipc        s8, 4490
                  blt          a3, s3, 105f
                  bltu         a0, a7, 106f
                  nop
101:              auipc        a0, 231263
                  sub          a1, s9, t3
                  srl          s8, a0, zero
                  bne          ra, s3, 108f
105:              sltiu        zero, a7, 1753
106:              andi         a2, a5, -572
                  bge          sp, t1, 117f
108:              sll          s1, s9, t6
                  and          a2, sp, t3
                  andi         s4, t6, -1401
                  auipc        ra, 959444
                  and          a0, a0, sp
                  slli         s7, sp, 19
                  bne          a0, a6, 117f
                  bne          t0, t5, 130f
                  srai         s10, s1, 18
117:              auipc        t4, 84497
                  sub          t3, s0, tp
                  srl          s8, t5, a4
                  nop
                  xor          a2, t1, t1
                  ori          s8, t0, -66
                  blt          t4, s0, 135f
                  beq          a4, a6, 144f
                  xori         gp, a4, 420
                  addi         s8, t4, -1188
                  srl          a0, s8, a5
                  xor          t3, t1, s6
                  andi         s8, gp, -1976
130:              srai         s4, s6, 20
                  lui          s8, 1028773
                  sll          s1, s8, s11
                  srl          s8, s3, t2
                  slt          s4, s6, s4
135:              xor          a2, s10, t3
                  or           s10, s7, ra
                  sra          ra, s11, t2
                  addi         s0, s11, 2046
                  srai         s1, t0, 9
                  sltu         t3, gp, t6
                  sltu         s6, s7, a6
                  bge          s4, s7, 159f
                  ori          s7, s11, 351
144:              auipc        s1, 973092
                  ori          a5, t1, 416
                  sra          a6, a0, s3
                  bltu         t5, t2, 159f
                  srli         s0, s6, 25
                  auipc        t1, 335823
                  bge          tp, a3, 163f
                  lui          s8, 119932
                  xori         zero, t6, 549
                  addi         a5, s11, -1472
                  slti         t0, gp, 1755
                  or           t3, tp, sp
                  addi         a6, s8, 44
                  or           t3, t6, a7
                  ori          t3, a7, 1888
159:              bne          sp, a1, 175f
                  sltu         s3, tp, sp
                  bne          gp, a5, 178f
                  or           s10, a7, a7
163:              bltu         t5, tp, 170f
                  lui          a1, 212842
                  and          t2, s3, s10
                  srli         sp, a0, 22
                  xor          a2, s11, s0
                  srli         s5, a5, 5
                  sub          t0, a1, s5
170:              slli         sp, s2, 5
                  bge          a0, s9, 172f
172:              add          t1, zero, s8
                  or           t2, s5, gp
                  srli         s5, t1, 18
175:              andi         a3, t1, -1529
                  lui          t5, 355221
                  bge          sp, a6, 184f
178:              add          s1, s5, t3
                  lui          a2, 246717
                  bne          a5, s11, 191f
                  auipc        s11, 142486
                  sltu         ra, zero, a7
                  and          a1, zero, t6
184:              sltu         s11, a0, s6
                  bge          s1, s4, 192f
                  bgeu         a3, s2, 201f
                  andi         t4, s0, -579
                  slli         s11, a3, 11
                  slt          s8, tp, s7
                  bge          t5, zero, 192f
191:              blt          s6, t1, 197f
192:              xori         s1, t5, -831
                  xori         s11, s2, 1301
                  addi         ra, t2, 1742
                  slti         s9, s11, 2040
                  andi         s3, ra, 1623
197:              bge          a3, s2, 212f
                  beq          a1, t1, 213f
                  srai         s2, s6, 0
                  addi         s9, s3, 1898
201:              slti         a1, a7, 1940
                  and          s3, a0, s11
                  or           s3, tp, s10
                  auipc        s2, 407657
                  srai         t3, s2, 11
                  sll          t0, s8, a3
                  xor          s7, a4, t5
                  auipc        s11, 881769
                  and          t5, s9, sp
                  srai         a6, tp, 14
                  slli         gp, s10, 18
212:              bltu         s8, a2, 222f
213:              bltu         s0, t5, 220f
                  bltu         t4, zero, 219f
                  srli         t2, a5, 27
                  sltiu        s7, a3, 1546
                  xori         s11, s5, -906
                  sltu         s8, s2, a6
219:              sll          s4, ra, sp
220:              blt          t6, s7, 231f
                  slti         a1, s1, 1980
222:              sltu         s5, t4, t2
                  srl          tp, a4, a3
                  slli         s0, a6, 18
                  blt          t2, t4, 242f
                  andi         a5, a3, 1878
                  slli         s1, s8, 1
                  sltu         t1, s3, a7
                  bne          tp, ra, 238f
                  nop
                  la           t5, region_0+1190 #start riscv_load_store_rand_instr_stream_2
                  lb           t3, 0(t5)
                  lbu          s0, -14(t5)
                  lbu          s10, 16(t5)
                  add          a2, s6, a2
                  sltiu        s0, tp, -1042
                  lb           t0, -10(t5)
                  and          t1, sp, s11
                  srli         a2, tp, 28
                  srl          s5, a3, sp
                  sw           s2, 2(t5)
                  lb           s9, -14(t5)
                  srli         s1, a1, 7
                  slt          s1, s0, s7
                  sub          s6, s2, s7
                  add          t0, a5, s2
                  sltiu        tp, s4, 1829
                  sb           s3, 1(t5)
                  lbu          t2, 9(t5)
                  lbu          t1, -16(t5)
                  lbu          sp, 3(t5)
                  add          a6, tp, a2
                  add          ra, s6, s4
                  sb           sp, 10(t5) #end riscv_load_store_rand_instr_stream_2
231:              lui          gp, 58164
                  bgeu         a1, s10, 246f
                  bge          s5, tp, 245f
                  and          t3, t6, t2
                  add          tp, s6, a3
                  slt          s6, a7, a3
                  xor          sp, s0, a0
238:              auipc        t5, 315747
                  ori          sp, s6, 1631
                  ori          zero, a6, 730
                  slli         s10, sp, 22
242:              bge          a2, a1, 260f
                  and          s5, a2, a5
                  sltu         a2, s3, s0
245:              slti         t2, s2, -1234
246:              slti         tp, t2, -275
                  slli         s9, s3, 20
                  srli         a6, a0, 19
                  or           a6, s10, s5
                  bltu         zero, s7, 270f
                  bltu         t0, s7, 254f
                  slt          s4, gp, t6
                  blt          s2, s2, 273f
254:              blt          a6, s4, 267f
                  slti         a0, a5, -1030
                  slli         gp, a4, 25
                  slt          t1, a2, s8
                  addi         tp, s2, 1327
                  addi         s11, a6, -644
260:              bgeu         gp, a1, 280f
                  slt          a1, sp, s1
                  xor          gp, s5, a7
                  xor          s10, sp, a7
                  bltu         a5, t0, 268f
                  slt          s9, s4, s11
                  xori         a2, t1, 874
267:              xori         t5, a2, -791
268:              bge          s6, s4, 271f
                  lui          sp, 417917
270:              beq          s2, t4, 285f
271:              lui          s3, 934542
                  sltu         a0, s11, s11
273:              sltiu        tp, gp, 1481
                  bge          a3, s7, 288f
                  sll          gp, a3, t5
                  auipc        s7, 155437
                  srli         sp, t6, 19
                  xor          s8, s4, t5
                  lui          s10, 415228
280:              slli         gp, a2, 6
                  or           a3, s10, t5
                  beq          t6, a1, 285f
                  sltu         a1, t0, s10
                  and          t5, gp, t1
285:              nop
                  andi         a5, sp, -323
                  lui          s6, 256085
288:              slli         s8, a5, 17
                  or           sp, t0, a7
                  sra          s3, a6, s11
                  andi         s2, gp, 275
                  ori          a0, t3, -565
                  and          gp, s0, sp
                  slt          s3, a0, s2
                  addi         a3, t0, 1360
sub_8_j13:        jal          s7, sub_10 #jump sub_8 -> sub_10
                  slti         s2, s0, 913
                  bne          tp, ra, 303f
                  blt          s7, s4, 296f
                  sub          s7, t6, s1
                  ori          s11, s2, -994
                  slli         a5, zero, 17
296:              nop
                  bge          s8, a7, 314f
                  bltu         t2, s5, 305f
                  sra          t1, a6, sp
                  sra          t0, s2, t3
                  slt          zero, sp, t3
                  add          s4, tp, s6
303:              bge          t5, t5, 314f
                  slt          s3, a4, s11
305:              xori         t3, t4, 367
                  slti         a3, t1, 431
                  ori          t2, a4, 1034
                  slt          s0, t3, s3
                  sub          t3, a4, a3
                  srli         t3, ra, 7
                  blt          t1, t6, 326f
                  xor          a2, gp, s8
                  bltu         gp, a0, 324f
314:              srl          s6, s6, s2
                  bgeu         s6, t4, 335f
                  lui          a5, 223840
                  xor          t1, a1, a2
                  bne          a6, s0, 325f
                  sub          t2, s6, s8
                  srli         s4, s4, 18
                  sltu         s9, a7, sp
                  bgeu         s11, s10, 335f
                  srl          tp, s9, tp
324:              lui          s0, 15789
325:              srl          t1, ra, a5
326:              sub          t2, zero, a0
                  add          s2, s6, t3
                  srai         t1, t3, 6
                  sltu         s8, a5, s0
                  srai         sp, s6, 15
                  srli         s7, s2, 16
                  srli         s4, s6, 17
                  srli         t4, ra, 5
                  bltu         a0, a1, 337f
335:              sra          s3, t6, t5
                  bne          s9, a3, 343f
337:              lui          a1, 770152
                  sra          t1, a5, a4
                  xori         zero, s8, 1847
                  slti         s4, s2, -570
                  sra          a6, s11, s4
                  andi         s9, ra, -508
343:              sll          s9, s1, s9
                  lui          s6, 848133
                  addi         zero, a7, 1313
                  srai         gp, s9, 20
                  andi         a0, s11, -667
                  blt          s8, t1, 366f
                  auipc        s10, 195467
                  slti         a6, a1, -1814
                  sra          ra, s8, s1
                  ori          a1, a0, -871
                  ori          a5, s11, 1354
                  blt          s4, s1, 355f
355:              addi         tp, s10, -1223
                  slli         t4, a4, 22
                  bge          a6, t5, 370f
                  srl          s6, tp, t2
                  bne          a7, zero, 366f
                  srai         t0, a4, 10
                  xori         ra, a1, -845
                  and          sp, s5, a1
                  sltiu        ra, a6, -1862
                  sll          a6, t2, t2
                  slt          s11, t2, s3
366:              or           s4, s3, s10
                  lui          t0, 115271
                  bne          gp, s6, 370f
                  sll          s9, gp, s3
370:              auipc        ra, 431031
                  slli         s11, t3, 16
                  sltiu        tp, s5, -761
                  sll          s3, s5, ra
                  nop
                  or           s10, s4, t5
                  bne          tp, s0, 382f
                  srai         s6, a4, 28
                  add          a6, a4, s11
                  sltiu        zero, s10, 940
                  bltu         s6, s3, 396f
                  sltiu        a3, s10, -925
382:              sltiu        s1, s8, 254
                  ori          s4, a6, 991
                  beq          s10, zero, 393f
                  srai         zero, s5, 3
                  blt          s10, a5, 406f
                  xori         gp, t0, -1076
                  bne          a6, t6, 405f
                  or           zero, sp, s11
                  addi         a1, a7, 1712
                  or           s0, ra, s11
                  slli         gp, s4, 0
                  la           s1, sub_9
                  add          tp, t3, s10
                  andi         s5, sp, -856
                  addi         s1, s1, 684
                  xori         t1, s9, -1372
sub_8_j12:        jalr         s7, s1, -683 #jump sub_8 -> sub_9
                  and          t4, ra, a3
                  sll          s5, s0, t2
                  slli         a1, t0, 9
                  ori          a1, a1, -250
393:              srl          s0, zero, t3
                  srli         s4, s9, 21
                  srl          t3, zero, t3
396:              bgeu         t1, s10, 416f
                  nop
                  bgeu         a2, t3, 413f
                  auipc        s9, 715724
                  blt          tp, s1, 412f
                  add          a1, a4, a7
                  lui          tp, 406217
                  bgeu         s8, t3, 408f
                  add          s7, s4, a7
405:              ori          gp, a5, -988
406:              sra          s2, t0, t4
                  addi         tp, t4, 978
408:              and          t5, zero, a4
                  bge          gp, s8, 419f
                  sll          tp, gp, t6
                  sra          s11, sp, tp
412:              bgeu         a5, t3, 421f
413:              srli         s8, s1, 13
                  sltu         s1, a2, s1
                  and          s7, s8, s6
416:              xor          t2, a4, zero
                  srai         gp, a1, 7
                  bge          s4, ra, 421f
419:              slti         t5, t3, 704
                  andi         s0, t6, -1770
421:              bgeu         a7, t1, 436f
                  auipc        s9, 738610
                  and          t4, s10, a5
                  sll          s5, s0, t1
                  addi         sp, a4, 836
                  sub          s3, a6, a1
                  slli         s1, s7, 1
                  bltu         s0, s10, 435f
                  nop
                  lui          gp, 192831
                  sltiu        tp, s9, -1592
                  or           a1, a7, a6
                  sra          s3, t4, zero
                  auipc        s2, 1018816
435:              slli         s4, a2, 31
436:              sll          t5, t1, a0
                  add          a1, a5, a7
                  add          s4, s3, a3
                  lw           s7, 4(a7)
                  addi         a7, a7, 20
                  nop
                  ori          s8, s1, -19
                  and          s0, t0, a6
                  sra          gp, s11, tp
                  auipc        ra, 128169
                  lui          sp, 902789
628:              addi x5, x23, 1
628:              jalr x5, x5, 0
sub_7:            bge          t6, a3, sub_7_stack_p
                  slli         a5, s3, 12
sub_7_stack_p:    addi         a7, a7, -32
                  sw           s7, 4(a7)
                  andi         a5, t2, -1627
                  xor          s11, s10, s8
                  sltu         s2, ra, s8
                  la           sp, region_0+1971 #start riscv_load_store_rand_instr_stream_0
                  lh           a6, -13(sp)
                  lw           s4, 5(sp)
                  sra          t2, s9, t0
                  sltiu        s7, gp, -57
                  lb           s9, 0(sp)
                  lbu          a0, 10(sp)
                  slt          zero, t1, t3
                  lbu          s6, -5(sp)
                  lhu          a3, -1(sp)
                  lb           s7, -9(sp)
                  sb           t5, -16(sp)
                  lhu          t3, 15(sp)
                  lh           t4, -9(sp)
                  srl          ra, a2, s0
                  sltiu        a5, s1, -494
                  lbu          s8, -14(sp)
                  xori         s9, s0, -543
                  lbu          s10, -14(sp)
                  slti         tp, a2, 379
                  sltu         a0, zero, s5
                  add          s6, a7, t4
                  slt          t4, s2, s5
                  lb           s4, 10(sp)
                  ori          s10, t3, 1402
                  auipc        s2, 59345
                  sra          a5, a2, s11
                  sb           t5, 15(sp)
                  srli         s2, zero, 28
                  sb           s11, 8(sp)
                  sb           s9, 5(sp)
                  lb           s9, -2(sp)
                  auipc        s3, 253265
                  andi         t5, a4, -1754
                  andi         s1, s4, 1319
                  lbu          t2, 4(sp)
                  sh           zero, 13(sp)
                  sub          s5, a6, s2
                  sb           a3, 5(sp)
                  lb           zero, -14(sp)
                  sltiu        s0, s4, -644
                  ori          s2, s3, -1986
                  sra          a0, a7, s10
                  srai         t3, a2, 15
                  lhu          t0, -7(sp)
                  sb           a1, 2(sp)
                  lbu          a6, -2(sp)
                  sll          t2, zero, s6
                  sb           a2, 2(sp)
                  auipc        ra, 663504
                  sh           ra, 13(sp) #end riscv_load_store_rand_instr_stream_0
                  sub          a3, s9, a3
                  blt          t1, s1, 6f
                  blt          ra, a1, 9f
                  srl          s10, a6, s1
                  ori          t4, s10, -1912
                  and          t2, ra, ra
6:                srai         ra, s8, 22
                  sra          s8, s0, a0
                  slt          a1, s10, a1
9:                xori         gp, t6, 523
                  bne          s4, s2, 15f
                  slti         gp, t1, -1234
                  nop
                  lui          s1, 646644
                  bgeu         t0, sp, 25f
15:               srli         s10, t5, 14
                  andi         t4, s6, 1924
                  sll          t5, a5, a4
                  and          t2, a6, a4
                  sltiu        s8, s10, 1560
                  sll          t5, s11, a4
                  add          s4, s5, a2
                  bltu         ra, s9, 36f
                  slli         t4, t1, 15
                  srli         s2, tp, 9
25:               srl          a5, s11, zero
                  slt          s6, a5, a1
                  sll          t4, s1, t1
                  sub          t2, s9, a4
                  or           s1, s2, s11
                  sra          a6, a7, s1
                  add          t5, s2, tp
                  sltiu        s4, t2, 92
                  sra          ra, s4, s11
                  lui          s2, 334074
                  lui          a5, 418530
36:               bge          a2, a4, 45f
                  bne          s11, s4, 48f
                  andi         s4, a1, 1816
                  sub          s6, s1, s8
                  and          zero, s0, s8
                  srli         s0, s6, 12
                  slti         t5, a1, 1853
                  xor          s0, s4, a2
                  and          a2, s11, s8
45:               srli         s6, t6, 24
                  slti         s6, t3, -562
                  sra          s8, a4, s5
48:               lui          s4, 960168
                  sltiu        a3, a6, -1464
                  xori         t2, s4, 701
                  bltu         a5, s6, 69f
                  xori         t3, a5, -1419
                  bltu         a5, a5, 71f
                  sltiu        a3, t0, -2046
                  blt          t5, s11, 65f
                  sll          s0, a1, s11
                  or           a0, t4, s8
                  beq          t2, s8, 75f
                  bgeu         t4, zero, 79f
                  xor          t4, zero, s7
                  srl          a1, s10, zero
                  slli         s3, s1, 11
                  xor          s8, a4, s6
                  or           s4, a6, s7
65:               slli         a2, gp, 10
                  srl          a5, t6, a4
                  sll          t4, gp, s7
                  slli         gp, t1, 15
69:               bgeu         s2, a3, 73f
                  sltiu        s8, s11, -217
71:               srl          s11, s11, a5
                  sltu         t3, s7, t4
73:               beq          a6, s6, 81f
                  sltiu        s9, a3, -2047
75:               and          t4, s7, a3
                  add          s11, s4, a1
                  lui          a2, 737805
                  add          t3, t5, s8
79:               xor          a0, s1, tp
                  or           s10, s4, t2
81:               srai         s4, a7, 26
                  auipc        t2, 276
                  auipc        t1, 228724
                  andi         s2, zero, -1669
                  bgeu         a7, s5, 92f
                  sra          s8, ra, a1
                  sltiu        t4, s10, 643
                  srai         s11, s1, 5
                  sra          zero, s8, s2
                  blt          a0, s6, 97f
                  lui          s3, 757908
92:               bgeu         s11, t4, 100f
                  srai         s1, s10, 21
                  sra          t2, s9, s6
                  lui          s2, 601298
                  bgeu         tp, s3, 105f
97:               srl          a0, t6, t5
                  sll          s5, a7, s8
                  sltu         a6, a1, s1
100:              bgeu         s10, s5, 103f
                  lui          s11, 434322
                  sll          tp, sp, t2
103:              ori          s5, tp, -536
                  blt          s0, tp, 119f
105:              slt          t5, s2, s8
                  lui          s6, 393319
                  xori         gp, a5, -1936
                  add          a3, s8, sp
                  bgeu         tp, gp, 112f
                  andi         t3, a6, -90
                  sltu         a0, s9, s4
112:              lui          a3, 480922
                  nop
                  xori         s1, a7, 56
                  la           t1, sub_8
                  sll          s2, s6, t6
                  and          a6, s2, s0
                  andi         a2, a4, -1181
                  srli         s0, s5, 0
                  addi         t1, t1, 318
                  auipc        t5, 869055
sub_7_j10:        jalr         s7, t1, -317 #jump sub_7 -> sub_8
                  slti         s8, s0, -893
                  and          a5, a0, s2
                  slli         s9, t4, 12
                  bgeu         t3, a5, 135f
119:              or           s8, a4, t0
                  bne          a1, s5, 133f
                  sltu         a5, s7, s5
                  slti         t4, a7, 1306
                  xor          s2, tp, gp
                  lui          s6, 317757
                  srl          t5, s10, s11
                  sltu         a6, s2, a6
                  beq          a7, t3, 130f
                  sltiu        s0, a7, -1737
                  auipc        s10, 363409
130:              sub          s2, t6, s4
                  srai         gp, t5, 3
                  and          s9, gp, tp
133:              xor          t4, s5, t0
                  sll          s10, s9, t3
135:              sltiu        s5, s11, -1665
                  sub          s0, a4, a2
                  ori          a5, a3, 1100
                  bge          zero, a6, 157f
                  srai         a2, s2, 6
                  sub          s11, s8, s5
                  ori          a2, a3, 1405
                  bne          s7, s8, 147f
                  andi         s4, t2, -329
                  andi         s5, gp, 402
                  srl          s3, s9, t0
                  slt          s6, ra, a2
147:              srli         s6, s0, 2
                  sll          t3, s0, t2
                  bgeu         t5, a6, 169f
                  auipc        t0, 115348
                  xor          gp, ra, s9
                  srli         t0, t0, 15
                  sltu         t3, a6, s5
                  lui          s6, 463908
                  sltiu        s2, t6, 1856
                  lui          s8, 200515
157:              xori         sp, t0, 1747
                  srli         s9, s4, 22
                  slt          t4, t0, s9
                  srli         zero, s9, 6
                  addi         s2, s8, 56
                  sub          a5, s5, sp
                  sub          t3, s2, a3
                  sltiu        zero, sp, 1092
                  xor          s3, s9, s6
                  xori         s8, a7, 156
                  srli         a3, t0, 4
                  blt          a1, zero, 181f
169:              bge          t2, a1, 181f
                  beq          tp, s7, 181f
                  and          a0, s1, t2
                  nop
                  srli         s9, t5, 19
                  beq          s9, s1, 179f
                  andi         a0, a5, 945
                  slt          s7, t1, s2
                  add          s6, a5, a0
                  bgeu         zero, a7, 181f
179:              srli         t0, a3, 29
                  srai         t3, a1, 12
181:              ori          zero, s0, -1538
                  nop
                  lw           s7, 4(a7)
                  lui          a6, 534905
                  srai         t2, tp, 20
                  addi         a7, a7, 32
                  sltiu        s8, t5, 335
254:              addi x5, x23, 1
254:              jalr x5, x5, 0
sub_3:            and          s2, s1, a0
                  bne          s11, a5, sub_3_stack_p
                  slt          a3, a1, s4
                  lui          t3, 618824
                  lui          s4, 464313
                  xor          a5, t0, t5
sub_3_stack_p:    addi         a7, a7, -16
                  xor          s8, a2, s9
                  add          s4, sp, a5
                  srai         s9, s8, 1
                  sub          a0, s11, t6
                  sw           s7, 4(a7)
                  auipc        s5, 842110
                  la           t0, region_0+954 #start riscv_load_store_rand_instr_stream_0
                  sll          s2, t3, zero
                  sub          s10, s7, t2
                  lui          a3, 874117
                  lb           a6, -27(t0)
                  sb           s7, -43(t0)
                  lb           s3, 68(t0)
                  slti         a5, s6, 874
                  sb           zero, -33(t0)
                  sltiu        tp, a6, -902
                  srai         a3, t6, 8
                  addi         s6, s11, 865
                  slti         a6, t3, -1595
                  lb           t5, 249(t0)
                  sub          s3, s10, a4
                  lbu          gp, 97(t0)
                  lh           a5, -172(t0)
                  sub          s6, s2, s3
                  and          a2, s2, s2
                  lbu          a1, -221(t0)
                  sll          t5, s9, t3
                  sb           a0, -145(t0)
                  sb           t1, -41(t0)
                  andi         zero, t0, -1749
                  add          s5, t5, t0
                  lb           s11, 192(t0)
                  sb           a0, 229(t0)
                  or           a2, s4, s5
                  xor          s4, a6, s11
                  lbu          a0, 116(t0)
                  lb           s7, -125(t0)
                  lui          t3, 400634
                  auipc        s5, 96827
                  sb           t4, -101(t0)
                  and          s11, tp, ra
                  lw           a2, 226(t0)
                  lbu          s9, 215(t0)
                  lb           gp, 201(t0)
                  xor          s6, s3, a0
                  sll          s5, s9, gp
                  lh           s7, 74(t0)
                  lbu          a6, -109(t0)
                  lbu          s8, -158(t0)
                  sltu         s5, s1, t3
                  slli         t3, t5, 17
                  lb           a2, -221(t0)
                  lb           t5, 61(t0)
                  ori          s6, t0, -637
                  lb           ra, -189(t0)
                  lbu          a6, 89(t0)
                  lb           s6, -126(t0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+327 #start riscv_load_store_rand_instr_stream_7
                  sh           a2, 93(sp)
                  sra          s11, a2, ra
                  lb           a0, 610(sp)
                  and          a5, s1, a1
                  lh           t1, 327(sp)
                  sltiu        a1, t5, 1308
                  sltu         a1, s11, s3
                  sll          t3, zero, zero
                  sub          a5, t3, a2
                  sll          t0, t6, s1
                  lbu          s7, 29(sp)
                  sb           zero, -231(sp)
                  slti         t0, a2, -1392
                  lb           t5, 996(sp)
                  sb           t5, -93(sp)
                  xor          gp, s0, s9
                  srl          ra, s1, s8
                  add          s3, s4, t2
                  sub          tp, t6, t6
                  sb           t4, 939(sp)
                  slli         a2, ra, 31
                  xor          ra, a3, s9
                  nop
                  sb           t4, -320(sp)
                  slt          s11, s9, s3
                  xor          a6, t5, s10
                  lhu          a0, 683(sp)
                  sltiu        s0, a1, -585
                  lh           s1, 1201(sp)
                  sub          s10, s11, t4
                  lb           s0, 578(sp)
                  lui          s9, 288773
                  lbu          s0, 64(sp)
                  lbu          tp, 343(sp)
                  addi         s10, a6, 570
                  nop
                  lb           a3, -117(sp)
                  lbu          a3, 1116(sp)
                  sb           gp, -243(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t2, region_1+542 #start riscv_load_store_rand_instr_stream_11
                  lbu          sp, 39(t2)
                  lb           a5, 32(t2)
                  lb           gp, 43(t2)
                  sltu         a5, a4, t3
                  lb           s2, -57(t2)
                  slti         a1, gp, -789
                  xori         zero, t6, -1792
                  lb           s10, 4(t2)
                  lbu          s5, 64(t2)
                  add          gp, s10, tp
                  lb           t5, 6(t2)
                  lb           gp, -1(t2)
                  lbu          a1, 62(t2)
                  sltu         s8, t6, t4
                  auipc        t4, 675323
                  lb           s11, -39(t2)
                  lhu          s5, 2(t2)
                  sb           s8, 17(t2)
                  lhu          s6, -26(t2)
                  lb           t3, 32(t2)
                  slt          s6, sp, s3
                  lb           ra, -45(t2)
                  sb           s6, 58(t2)
                  andi         s3, a0, -1829
                  nop
                  lb           s0, 21(t2)
                  lbu          s1, -35(t2)
                  lb           a3, 31(t2)
                  lbu          s9, -35(t2)
                  lbu          t4, -25(t2)
                  sb           s7, 17(t2)
                  srli         ra, a2, 2
                  lb           ra, -19(t2)
                  sh           tp, -22(t2)
                  sh           a7, -60(t2)
                  srli         t1, s4, 15
                  addi         gp, ra, -1597
                  sb           gp, 60(t2)
                  lhu          s2, 24(t2) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1861 #start riscv_load_store_rand_instr_stream_13
                  slli         s3, s3, 13
                  and          t0, a1, s11
                  lw           s9, -117(sp)
                  lb           s10, -148(sp)
                  lh           s8, -137(sp)
                  lb           s8, -223(sp)
                  and          t4, a4, sp
                  sub          gp, t3, t6
                  sb           a0, 38(sp)
                  sh           gp, -45(sp)
                  lb           t1, 66(sp)
                  andi         s3, s6, 1678
                  andi         s7, tp, -428
                  lbu          gp, 124(sp)
                  or           s2, t4, a0
                  sb           t1, -23(sp)
                  lbu          a6, 121(sp)
                  srai         t1, t1, 10
                  srai         s9, s7, 19
                  srai         t4, t3, 8
                  sltu         s6, t2, zero
                  nop
                  slti         s3, a7, 377
                  lbu          s3, -56(sp)
                  sb           t2, 116(sp)
                  lb           t2, -218(sp)
                  and          s8, s5, a0
                  sb           a1, -214(sp)
                  lh           a3, 79(sp)
                  lb           t4, -108(sp)
                  srai         s0, a7, 3
                  xor          a2, s3, t0
                  sh           a6, -213(sp)
                  sltiu        s3, gp, 1755
                  or           a5, a2, s1
                  or           s3, s9, s6
                  srl          a0, a0, gp
                  lhu          s4, 49(sp)
                  lbu          s7, -122(sp)
                  lb           s10, -182(sp)
                  sltiu        s9, t0, -1551
                  lui          s4, 70381
                  auipc        gp, 726353
                  addi         gp, sp, 123
                  or           s7, t4, s8
                  lbu          a2, -164(sp) #end riscv_load_store_rand_instr_stream_13
                  la           t5, region_1+1457 #start riscv_load_store_rand_instr_stream_14
                  xor          s2, t4, ra
                  lhu          a2, -9(t5)
                  srai         gp, s4, 20
                  sub          s11, t3, s7
                  lbu          s4, 0(t5)
                  slli         s4, t4, 27
                  lbu          ra, 9(t5)
                  auipc        s9, 577076
                  sltu         s2, t3, s2
                  lbu          s1, -6(t5)
                  lb           s11, 14(t5)
                  lb           a3, -14(t5)
                  srl          s1, s8, a0
                  lhu          t4, 7(t5)
                  lbu          a5, 16(t5)
                  lbu          t0, -1(t5)
                  lb           a5, -1(t5)
                  sb           s0, -14(t5)
                  add          a0, a6, gp
                  lb           sp, 5(t5)
                  addi         a0, s0, -1481
                  srl          s10, t0, s9
                  slli         s2, t4, 17
                  sb           t1, 14(t5)
                  sll          s1, s0, s8
                  sub          s11, t5, t3
                  srai         s5, s6, 23
                  srl          s7, t3, ra
                  slti         sp, t5, 1858
                  slli         zero, s7, 5
                  lbu          a6, -8(t5)
                  sb           a1, -16(t5)
                  auipc        gp, 695865
                  sh           a5, -3(t5)
                  nop
                  lb           a0, 16(t5)
                  nop
                  sb           s4, 6(t5)
                  slli         s11, a4, 13
                  sub          s0, t3, s9
                  sb           s11, 10(t5)
                  lbu          s7, -7(t5)
                  addi         s5, s9, 1243
                  sb           s3, 6(t5)
                  lhu          t4, 5(t5)
                  andi         s6, s3, -1010
                  lhu          zero, 7(t5)
                  sh           s1, 1(t5) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+1074 #start riscv_load_store_rand_instr_stream_10
                  sltiu        t0, ra, 1962
                  sb           s3, 62(sp)
                  addi         s4, s9, -1776
                  sh           tp, 4(sp)
                  sb           tp, 43(sp)
                  lb           s9, 63(sp)
                  lbu          s5, -44(sp)
                  lbu          s4, 39(sp)
                  nop
                  lh           t1, -2(sp)
                  sb           t3, 35(sp)
                  srai         s3, s7, 21
                  lbu          s0, 44(sp)
                  lbu          s11, 16(sp)
                  sb           a4, -41(sp)
                  lbu          a3, 27(sp)
                  sh           s1, -44(sp)
                  lhu          s2, 38(sp)
                  xori         t3, t6, -1224
                  lb           zero, 56(sp)
                  srli         s3, t1, 26
                  lbu          s0, 57(sp)
                  sltu         ra, a3, tp
                  sll          s3, tp, a4
                  lb           s2, 25(sp)
                  sb           t2, -27(sp)
                  lui          s10, 1034304
                  srai         gp, s4, 5
                  slti         s10, t3, 18
                  nop
                  lb           s10, -35(sp)
                  lbu          t5, 43(sp)
                  lw           ra, -42(sp) #end riscv_load_store_rand_instr_stream_10
                  la           t1, region_1+1255 #start riscv_load_store_rand_instr_stream_5
                  and          tp, t3, tp
                  slli         s5, a5, 20
                  lb           s6, -4(t1)
                  slti         s8, a6, -1362
                  nop
                  ori          sp, ra, 470
                  slti         s4, t3, 1787
                  auipc        t4, 661844
                  lb           a0, 9(t1)
                  and          s5, a6, t4
                  xor          s7, sp, t0
                  sb           sp, -8(t1)
                  ori          s1, a5, -1952
                  srli         gp, t2, 1
                  slti         s8, t1, -1826
                  or           s4, a1, s5
                  addi         t3, s4, 1387
                  lb           s3, -2(t1)
                  xori         s4, t0, -91
                  slt          gp, a7, s3
                  slli         a2, s10, 13
                  and          gp, s3, s7
                  sll          s3, a7, a6
                  sltiu        a5, t0, 181
                  lb           s8, -12(t1)
                  lui          s6, 127884
                  srl          a1, s2, a4
                  lhu          s7, -7(t1)
                  srai         s2, t5, 25
                  lbu          a5, 12(t1)
                  lb           s1, 4(t1)
                  sb           s2, -6(t1)
                  lbu          a1, 0(t1)
                  or           s8, s2, s3
                  andi         t0, t2, 138
                  auipc        a1, 868576
                  sltu         s0, s8, a0
                  sra          s8, t1, a6
                  lb           a5, 1(t1)
                  lb           t2, 15(t1)
                  sw           t6, 5(t1)
                  lhu          s0, -1(t1) #end riscv_load_store_rand_instr_stream_5
                  la           t3, region_0+1091 #start riscv_load_store_rand_instr_stream_2
                  auipc        sp, 296205
                  lbu          t0, -4(t3)
                  lbu          s6, 16(t3)
                  sra          tp, s4, t3
                  sh           ra, -9(t3)
                  xor          a1, a5, s4
                  sb           s6, 1(t3)
                  sb           a1, -1(t3)
                  srai         a3, gp, 4
                  lb           a3, -15(t3)
                  lb           a0, -14(t3)
                  lbu          s9, 8(t3)
                  srli         s6, s9, 9
                  ori          sp, a4, -1756
                  slli         a1, t5, 26
                  sltiu        a0, a5, -189
                  srai         s0, s9, 9
                  lw           s10, -11(t3)
                  lbu          s8, 5(t3)
                  lbu          tp, -6(t3)
                  lb           s1, 8(t3)
                  lbu          t1, 11(t3)
                  lh           s7, -3(t3)
                  addi         a1, s2, 1349
                  andi         gp, ra, 1629
                  lbu          s2, -14(t3)
                  slt          s1, s8, zero
                  sll          s0, s7, s3
                  lbu          t4, -14(t3)
                  lbu          t2, -6(t3)
                  lb           s10, -16(t3) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_1+25 #start riscv_load_store_rand_instr_stream_12
                  add          s3, t1, s0
                  srai         s10, a4, 16
                  lbu          t2, 141(a2)
                  sb           a1, 0(a2)
                  lb           s1, 112(a2)
                  lh           t3, 231(a2)
                  xori         a6, s11, 1798
                  lui          a6, 817911
                  lh           s9, 167(a2)
                  sb           s9, 9(a2)
                  lb           s7, 157(a2)
                  slt          s1, t3, s5
                  nop
                  auipc        s6, 688935
                  lb           s10, 153(a2)
                  lbu          s5, 46(a2)
                  and          s2, s1, t3
                  sh           s0, 17(a2)
                  sll          a5, t5, s0
                  addi         a1, s1, 370
                  sb           t2, 32(a2) #end riscv_load_store_rand_instr_stream_12
                  la           s7, region_0+126 #start riscv_load_store_rand_instr_stream_1
                  sll          s2, s11, s4
                  sb           a3, 51(s7)
                  sh           s11, 56(s7)
                  and          a1, s6, zero
                  nop
                  ori          sp, t3, -1291
                  lbu          s1, 36(s7)
                  sb           a1, -63(s7)
                  sb           tp, 25(s7)
                  slti         s5, a2, 1793
                  slti         a5, a1, -1466
                  xor          a3, s9, s1
                  sb           a6, 5(s7)
                  lhu          s10, 22(s7)
                  xor          zero, t6, zero
                  lhu          s1, 20(s7)
                  sb           a3, 55(s7)
                  lb           a2, 59(s7)
                  sb           t4, 35(s7)
                  xor          sp, s11, a6
                  xori         s4, ra, 488
                  sb           s7, -7(s7)
                  lbu          sp, 21(s7) #end riscv_load_store_rand_instr_stream_1
                  bgeu         a5, s8, 5f
                  sltiu        tp, tp, -174
                  slli         t3, s4, 8
                  sll          t2, a6, s3
                  srai         s4, ra, 22
5:                auipc        t3, 910507
                  xor          s8, a3, a2
                  slli         t3, t5, 18
                  blt          s9, s1, 11f
                  bne          s10, a4, 21f
                  andi         s1, a4, 1006
11:               sll          t4, s6, s7
                  sltiu        t4, a2, -952
                  bgeu         s1, tp, 29f
                  or           a0, t2, a5
                  srai         t1, s10, 7
                  srai         t3, s1, 29
                  or           t0, t1, s0
                  or           s5, a1, a1
                  nop
                  bne          s6, s7, 27f
21:               sll          s5, sp, s3
                  and          zero, a3, zero
                  ori          a0, t6, -1470
                  sub          s0, a1, s1
                  ori          a0, a3, -727
                  nop
27:               bltu         s6, a1, 46f
                  xor          a0, gp, ra
29:               beq          s0, gp, 30f
30:               lui          t3, 70059
                  srai         zero, a5, 28
                  ori          ra, ra, 1307
                  bgeu         zero, a2, 50f
                  beq          a1, a0, 42f
                  srl          t5, s7, a1
                  slli         t4, a3, 29
                  bge          s9, s11, 43f
                  sll          s10, a7, s1
                  add          t1, sp, a1
                  and          s8, t4, s3
                  bne          a1, s7, 47f
42:               bne          s10, sp, 47f
43:               sra          a5, t6, s7
                  slli         s3, s9, 6
                  or           s9, s9, s0
46:               andi         s2, tp, 1632
47:               add          a3, s5, a2
                  sub          s11, t2, ra
                  and          t4, zero, zero
50:               xor          a6, t1, s6
                  slt          s4, a3, ra
                  ori          s2, a3, -1031
                  sltu         t5, s1, zero
                  srai         t3, t1, 3
                  srli         ra, s3, 16
                  sll          a1, s2, s11
                  or           a1, a1, a4
                  bne          s3, t2, 71f
                  bne          a5, t6, 65f
                  sub          a2, s5, ra
                  auipc        t2, 83247
                  bgeu         tp, gp, 76f
                  sra          s8, s2, gp
                  blt          gp, t3, 67f
65:               xor          a1, t2, a2
                  beq          s6, s11, 78f
67:               srl          t4, s0, a2
                  bge          s2, t6, 78f
                  sltu         s0, s0, s0
                  sub          s10, tp, a7
71:               sra          ra, s0, s8
                  srl          s2, t1, s0
                  xori         sp, s9, 1271
                  and          ra, t0, s6
                  slt          a6, a2, a6
76:               srl          t3, s10, s10
                  xori         s9, s2, 1764
78:               auipc        sp, 432864
                  beq          s6, s6, 96f
                  bge          s2, s7, 99f
                  addi         t2, sp, -12
                  sltiu        s6, a7, -1003
                  lui          a0, 300324
                  add          s3, s7, s7
                  bge          s3, t2, 89f
                  xori         s7, s6, 978
                  lui          t5, 894449
                  srai         s2, a2, 21
89:               nop
                  bgeu         sp, ra, 106f
                  or           gp, s8, s3
                  beq          s7, s8, 100f
                  slli         a1, t5, 27
                  and          s11, s0, s2
                  sltiu        t5, a2, -1741
96:               beq          s2, t0, 113f
                  and          gp, s1, a0
                  and          s0, t0, a5
99:               sll          s4, ra, a4
100:              sll          t1, s8, a7
                  srai         s4, s4, 1
                  blt          s4, s4, 103f
103:              sub          a1, tp, s9
                  slti         s4, a7, -1616
                  bge          a4, t4, 107f
106:              bltu         a3, s5, 115f
107:              bgeu         zero, s3, 118f
                  sltu         t1, a4, s2
                  sra          a0, t4, s11
                  lui          s8, 835081
                  sub          a2, ra, a2
                  beq          t3, s8, 123f
113:              srai         gp, s9, 27
                  sltu         s2, t2, a2
115:              auipc        s5, 720298
                  andi         t3, s11, 174
                  bge          a6, s3, 122f
118:              nop
                  andi         ra, t2, -253
                  auipc        ra, 402550
                  sltiu        t5, s2, -1262
122:              auipc        s0, 150538
123:              bltu         s5, t1, 136f
                  sltiu        s7, sp, -677
                  xori         t4, t2, -18
                  auipc        s8, 24554
                  slt          s11, s9, s11
                  srai         ra, t3, 27
                  ori          tp, t6, -25
                  xor          s4, gp, gp
                  srai         t0, a0, 15
                  and          a5, s3, a2
                  xor          sp, t6, a2
                  addi         s7, t1, -168
                  xor          a5, s11, s5
136:              sltu         s1, s0, t4
                  bgeu         t4, a7, 156f
                  srli         s6, t3, 21
                  sll          s6, a5, a6
                  or           a6, ra, a1
                  lui          s9, 496199
                  srli         tp, a6, 7
                  slli         a1, a4, 11
                  slli         t3, s5, 14
                  slti         ra, s0, -891
                  beq          s3, a3, 157f
                  bge          a6, a1, 152f
                  add          t1, a4, s4
                  slti         s10, a3, -1015
                  or           t4, t3, ra
                  srai         s7, sp, 10
152:              sub          a2, tp, t6
                  lui          s4, 459844
                  bgeu         tp, s10, 155f
155:              srai         s9, a0, 29
156:              bgeu         t6, s10, 170f
157:              sltu         a3, a5, a7
                  add          s7, a2, s0
                  or           s0, t3, a5
                  srli         s6, a2, 20
                  srli         t1, t6, 5
                  slli         a0, sp, 30
                  sltiu        s10, a6, -197
                  sub          a3, zero, s1
                  bltu         s1, s1, 173f
                  srai         t1, a2, 7
                  bne          t3, t3, 174f
                  srai         s10, zero, 27
                  nop
170:              srli         t5, s3, 11
                  slti         a1, sp, -1038
                  or           a6, s6, ra
173:              lui          t1, 708539
174:              nop
                  andi         s10, s5, 1965
                  sra          a6, s9, s7
                  addi         t2, t6, -1242
                  addi         t0, s5, -81
                  slti         s0, t0, -1595
                  bge          s10, s6, 190f
                  or           s2, a3, s10
                  or           sp, a5, sp
                  and          s10, sp, s7
                  xori         a5, s10, 494
                  and          gp, zero, s6
                  lui          s6, 906372
                  sltiu        a3, a3, 1742
                  slti         s6, a2, 488
                  addi         s2, s11, -2033
190:              bge          s7, s5, 194f
                  sltu         s8, t0, sp
                  slt          s8, a4, s4
                  slli         zero, a6, 7
194:              srli         a5, s2, 10
                  xor          s11, sp, s10
                  addi         t4, s10, 421
                  andi         a0, t5, 719
                  addi         t2, s1, -1638
                  xori         a3, a6, 1449
                  srli         a2, zero, 9
                  ori          s8, a2, 480
                  bltu         a2, t6, 208f
                  bne          s3, s10, 205f
                  blt          a4, t1, 215f
205:              andi         zero, s7, -745
                  sub          a2, s10, t4
                  slti         a2, s9, -31
208:              bne          a2, s9, 213f
                  beq          a4, s5, 210f
210:              ori          zero, s8, -1083
                  slt          t3, s1, s6
                  auipc        gp, 682082
213:              bgeu         a3, a0, 230f
                  blt          t4, s7, 222f
215:              or           t3, a7, s5
                  srl          s0, zero, t4
                  sub          a0, zero, gp
                  andi         s6, t0, -407
                  sltiu        s1, ra, 574
                  bltu         tp, s11, 223f
                  xor          t1, a5, a6
222:              beq          s1, s4, 234f
223:              bne          s10, s9, 228f
                  sra          s1, a7, s0
                  xori         s3, t3, 1481
                  slt          tp, s2, zero
                  xor          a6, s9, s4
228:              sltu         sp, t6, t5
                  slt          s1, s10, s3
230:              andi         a5, a2, -1566
                  add          s4, s1, s9
                  srai         a0, a5, 18
                  slti         s3, t6, -1897
234:              bgeu         t2, s4, 237f
                  and          s1, t4, t6
                  slli         zero, s10, 15
237:              blt          s9, s1, 246f
                  xor          t2, t5, a5
                  sll          a1, t4, s3
                  nop
                  sub          s3, a5, t4
                  srli         ra, s1, 31
                  addi         s0, t6, 1944
                  srl          sp, a4, t0
                  add          a1, a2, a2
246:              or           s10, s3, t4
                  and          t3, t5, s6
                  sll          gp, s11, a2
                  xor          s7, a3, a0
                  auipc        s10, 441163
                  bltu         t1, t1, 257f
                  srai         s8, tp, 24
                  bne          t3, s9, 259f
                  ori          s6, a2, 1117
                  and          t5, t1, t2
                  srl          s9, gp, a3
257:              sltiu        t1, sp, 38
                  srl          s8, s7, s0
259:              and          s9, t6, sp
                  addi         a5, t4, 1385
                  xori         s4, t4, 1733
                  sra          a0, s5, s0
                  slt          s10, t2, s5
                  andi         gp, t6, -2014
                  srli         sp, t0, 27
                  blt          a5, a2, 278f
                  lui          a0, 126003
                  xori         s11, a3, 1603
                  bgeu         t0, a6, 285f
                  srai         t5, s6, 0
                  sltiu        ra, a3, -1113
                  addi         tp, a3, 74
                  slli         a5, s2, 17
                  bltu         t3, ra, 291f
                  sltu         s4, t5, gp
                  bge          a2, a3, 292f
                  or           s0, s8, s7
278:              sll          s3, ra, t6
                  andi         s9, s3, -946
                  nop
                  and          s8, ra, t1
                  and          a0, t0, s1
                  slli         t5, a2, 19
                  sltu         a3, t5, t0
285:              bltu         s9, s10, 304f
                  srli         ra, zero, 29
                  bne          s1, s11, 304f
                  srli         s11, ra, 30
                  beq          s9, a5, 301f
                  beq          s5, t5, 298f
291:              beq          s5, zero, 297f
292:              srai         a5, s11, 18
                  bne          s5, a7, 304f
                  andi         s10, a6, 501
                  ori          s5, gp, 901
                  blt          a2, a3, 304f
297:              or           s1, s7, s6
298:              srai         s3, t0, 0
                  xor          t2, t0, s0
                  bge          t3, s3, 301f
301:              sra          sp, s8, s0
                  addi         s0, s2, 601
                  sll          t0, s0, sp
304:              xor          t3, a4, s11
                  beq          s11, a5, 310f
                  xori         zero, t1, -170
                  slti         s6, t4, 473
                  sltiu        a3, s10, -326
                  srai         t0, a2, 14
310:              nop
                  addi         tp, a7, -591
                  lui          s10, 46792
                  bltu         ra, a6, 330f
                  bne          s0, zero, 325f
                  nop
                  addi         s10, a5, -1944
                  sltiu        a5, s11, -629
                  or           a5, a5, ra
                  xori         gp, a2, -214
                  or           a2, s4, a0
                  lui          a2, 1036566
                  srai         t0, s3, 27
                  sltu         s3, zero, a1
                  and          s6, a0, s10
325:              andi         s5, gp, 165
                  srli         s5, s8, 23
                  bge          t6, t6, 332f
                  xor          t5, s1, s2
                  ori          a5, a2, -2039
330:              srai         s6, s4, 11
                  sll          zero, s6, s3
332:              srli         t2, t1, 29
                  or           t4, t2, t1
                  blt          s8, s7, 346f
                  srli         ra, s4, 3
                  sltu         s0, sp, t2
                  slli         s11, a2, 30
                  sltu         a6, sp, tp
                  andi         zero, t2, -1800
                  and          sp, t1, s2
                  addi         ra, s10, -1519
                  beq          a0, t6, 359f
                  sltu         s11, s4, a0
                  blt          t6, a4, 354f
                  sra          s3, ra, s2
346:              srl          a2, s4, a1
                  srli         s5, s6, 17
                  add          s2, zero, t6
                  xor          t1, tp, a2
                  slli         a6, t0, 27
                  addi         a3, s9, 1573
                  sltu         s11, a1, a2
                  srli         t3, s1, 18
354:              andi         t4, s2, -1408
                  bne          s8, s4, 369f
                  nop
                  slti         a6, s5, 1016
                  lui          a6, 406987
359:              and          s8, t4, s2
                  or           s9, s7, a2
                  sll          a2, a6, a7
                  blt          s7, ra, 363f
363:              auipc        a2, 973878
                  andi         s5, s10, 1493
                  bne          t5, a0, 370f
                  xori         gp, s0, -1030
                  sltu         a0, a5, s8
                  bgeu         s11, s11, 371f
369:              or           t2, s7, a2
370:              blt          s4, s9, 376f
371:              bne          tp, s8, 387f
                  sra          s2, a3, s8
                  bge          s2, s8, 389f
                  addi         s9, a1, -125
                  add          a1, s7, s7
376:              or           t0, t0, s1
                  slti         s0, s10, -310
                  srli         a5, s9, 8
                  ori          zero, a5, 2018
                  srai         tp, t2, 6
                  sra          s7, a7, zero
                  slti         s1, s7, -263
                  xor          zero, zero, a5
                  or           s1, a5, s7
                  ori          s7, s5, 54
                  bge          s2, ra, 403f
387:              auipc        s1, 12857
                  bne          a4, a7, 390f
389:              beq          s7, a1, 392f
390:              addi         zero, s8, -1204
                  sll          a1, t4, s6
392:              sll          t4, t6, tp
                  la           sp, region_1+1800 #start riscv_load_store_rand_instr_stream_3
                  ori          s7, s9, -665
                  lb           tp, -135(sp)
                  addi         a3, s3, 756
                  addi         a2, s3, -157
                  lb           a6, 159(sp)
                  srai         a6, s4, 17
                  add          a3, ra, t1
                  sb           t2, 91(sp)
                  sll          gp, t0, s10
                  srl          ra, s11, t0
                  lui          s11, 668205
                  lb           s5, 165(sp)
                  auipc        s10, 165754
                  xor          a5, s6, s2
                  sh           t6, 176(sp)
                  addi         t3, a2, 104
                  addi         s1, s10, -1449
                  and          s6, s2, s0
                  addi         s8, t1, 1463
                  sb           s2, -144(sp)
                  sra          s6, s0, t4
                  sb           tp, -69(sp)
                  add          a1, s3, zero
                  xor          s4, s7, s6
                  lb           a1, -185(sp)
                  and          s1, t3, s6
                  lui          s9, 32587
                  sb           t0, -170(sp)
                  lhu          ra, 192(sp)
                  sb           s2, -83(sp)
                  nop
                  and          s11, t1, s4
                  lbu          zero, -64(sp)
                  nop
                  lb           s6, -1(sp)
                  lbu          a5, -7(sp) #end riscv_load_store_rand_instr_stream_3
                  sltiu        s2, t4, 296
                  srli         s5, a5, 23
                  sltiu        a5, a4, 248
                  ori          s2, tp, 277
                  bltu         s0, s4, 406f
                  blt          s7, s2, 411f
                  and          a1, t3, a5
                  beq          zero, t2, 407f
                  srai         gp, t4, 18
                  sra          s8, s7, a1
403:              sltiu        t3, a3, -93
                  sltu         s10, s5, s10
                  sub          s4, t2, s7
406:              bge          s3, t0, 425f
407:              xor          gp, t2, s11
                  andi         ra, a7, 2047
                  or           a6, s7, s9
                  sltu         s8, a7, a5
411:              auipc        s10, 533720
                  bgeu         s5, s7, 418f
                  nop
                  srai         s10, s10, 25
                  add          s1, a6, a7
                  sltu         s2, s8, s3
                  blt          t1, t3, 421f
418:              addi         a1, a0, -125
                  xori         a3, t5, -650
                  slt          t2, s4, a1
421:              sll          s10, s0, s9
                  blt          gp, t3, 441f
                  auipc        t1, 413626
                  sra          s5, a2, tp
425:              nop
                  srli         a5, t6, 31
                  beq          t1, a1, 438f
                  srai         s7, s6, 30
                  bne          t5, s4, 446f
                  and          s10, t6, t6
                  or           t2, a5, t5
                  ori          s8, a6, 1642
                  ori          a6, a7, 373
                  srai         a6, s6, 29
                  bgeu         s8, s5, 443f
                  sltu         tp, a7, s8
                  blt          a3, s5, 445f
438:              slli         gp, t4, 26
                  bge          a0, s0, 450f
                  bge          s0, s5, 443f
441:              beq          t0, t5, 443f
                  xori         a1, s1, 732
443:              bltu         a1, a3, 446f
                  sltiu        a5, tp, 378
445:              ori          s11, t4, -795
446:              xor          s9, a3, a6
                  xor          s7, t6, a3
                  sltiu        t4, s9, 1808
                  auipc        a3, 623837
450:              srli         s7, a0, 14
                  add          t5, t3, t4
                  bne          s3, s7, 458f
                  bgeu         t0, a0, 466f
                  sub          a1, gp, a4
                  sll          s1, a2, a3
                  slt          t2, gp, sp
                  addi         t2, a0, 1059
458:              slli         t3, a3, 21
                  andi         t5, t0, -1058
                  slli         a1, a5, 21
                  lui          s5, 221789
                  sub          t5, a4, sp
                  srai         a6, s8, 28
                  sll          s7, a2, s4
                  nop
466:              slli         a0, a2, 2
                  add          gp, s0, t2
                  slli         a1, zero, 16
                  xori         s7, a2, 1509
                  or           s7, gp, s7
                  andi         s9, t1, 1473
                  nop
                  sltu         a2, gp, s8
                  sll          s5, a2, t3
                  slli         s8, s5, 30
                  lui          s7, 523499
                  add          gp, s5, t3
                  bltu         a1, s9, 494f
                  bltu         t5, s5, 491f
                  slti         s4, gp, -34
                  or           s11, a1, s2
                  addi         a0, gp, -1601
                  bge          a2, s6, 493f
                  ori          a0, t1, 703
                  bge          a0, t3, 486f
486:              srli         gp, a4, 16
                  xor          t4, a1, sp
                  and          ra, tp, a3
                  xor          a1, a6, zero
                  beq          ra, s3, 495f
491:              xori         tp, gp, -1772
                  bltu         s2, s0, 509f
493:              auipc        ra, 310674
494:              srli         s1, s3, 1
495:              beq          a0, sp, 502f
                  xor          s2, s11, t5
                  andi         s8, s1, -821
                  add          ra, gp, tp
                  bgeu         a1, t6, 513f
                  xor          a5, s7, zero
                  srl          sp, sp, a7
502:              slli         gp, s7, 29
                  addi         sp, t5, -802
                  bne          s0, zero, 509f
                  add          t3, sp, a7
                  bge          t0, s11, 525f
                  and          a6, ra, sp
                  bge          sp, a1, 513f
509:              srai         s10, a2, 12
                  slli         t5, ra, 27
                  add          tp, ra, a5
                  lui          s2, 189596
513:              slt          s6, t2, t2
                  nop
                  add          ra, ra, t2
                  and          zero, s4, s1
                  add          s8, a6, t0
                  lui          s4, 928128
                  beq          t5, s11, 520f
520:              bge          t0, s11, 532f
                  srai         gp, a0, 7
                  xor          a2, s0, a1
                  bge          sp, sp, 529f
                  xor          a0, s2, s2
525:              addi         s11, sp, 658
                  sra          s7, sp, a6
                  lui          t3, 415674
                  or           s2, s4, t6
529:              bge          a7, s9, 535f
                  bgeu         s6, t0, 547f
                  sra          s4, t3, s2
532:              ori          t1, s2, 1032
                  xor          t2, s11, a4
                  bltu         sp, s1, 550f
535:              andi         sp, s4, -1709
                  bgeu         t1, t4, 540f
                  ori          a3, a6, -275
                  lui          t2, 156827
                  slli         tp, s10, 24
540:              add          a2, sp, t1
                  srai         s9, ra, 1
                  nop
                  addi         t3, s4, -488
                  nop
                  andi         zero, s3, -784
                  or           s2, a4, s0
547:              bltu         s5, sp, 556f
                  bltu         a5, tp, 567f
                  xori         t5, s7, 202
550:              andi         a1, s0, -1501
                  srl          s9, s3, a3
                  bgeu         t0, s6, 553f
553:              sltu         s7, a3, s10
                  and          ra, s6, zero
                  xori         tp, s6, 1259
556:              sra          a5, s5, t1
                  nop
                  srli         s7, s1, 18
                  sltiu        s6, t1, -1983
                  xori         t4, t3, 381
                  bge          s11, s9, 569f
                  auipc        tp, 923607
                  blt          s6, s8, 564f
564:              sltiu        gp, a4, -685
                  xori         s9, sp, 120
                  xor          s0, tp, s10
567:              bgeu         s11, a2, 572f
                  sub          s9, s1, a1
569:              bltu         ra, a3, 577f
                  bgeu         s7, t0, 584f
                  sub          t1, a5, t0
572:              beq          a7, s9, 584f
                  xor          a0, a7, a0
                  beq          a0, s4, 585f
                  ori          a5, s2, -813
                  bltu         s10, sp, 595f
577:              lui          ra, 528118
                  bltu         a3, tp, 594f
                  and          s10, sp, tp
                  nop
                  bgeu         a3, s1, 587f
                  bltu         s3, a1, 595f
                  andi         a1, ra, -98
584:              srai         t1, s11, 10
585:              slt          a1, s6, t5
                  ori          gp, a7, -1324
587:              addi         sp, s1, 1463
                  slti         s1, t4, 1358
                  xor          ra, t3, s4
                  lui          sp, 86822
                  and          a2, t5, sp
                  sll          a0, zero, sp
                  sltu         a5, t3, s11
594:              bltu         a4, zero, 600f
595:              beq          s2, t2, 606f
                  or           s2, a3, t5
                  lui          s10, 520154
                  sltu         s2, sp, s0
                  beq          t3, gp, 615f
600:              srai         s10, t0, 16
                  bgeu         s8, ra, 608f
                  auipc        s11, 1027687
                  srl          s0, gp, a5
                  slt          s2, s7, tp
                  and          sp, a7, s1
606:              blt          s11, s2, 609f
                  bgeu         s4, t6, 624f
608:              slli         s4, s2, 20
609:              srai         t3, s1, 2
                  addi         t3, a5, -275
                  addi         sp, s0, -1254
                  xori         t3, zero, 929
                  bgeu         a1, s6, 616f
                  xori         t5, s4, 1474
615:              sll          t3, a7, s2
616:              slti         a0, t2, 1826
                  xor          s2, s5, ra
                  slt          s0, s10, t6
                  bltu         tp, t6, 636f
                  srai         t4, a5, 21
                  auipc        s7, 442061
                  srl          sp, t2, a5
                  srl          s4, t6, s6
624:              sub          a0, sp, s3
                  bltu         sp, a4, 642f
                  sll          zero, a4, gp
                  srai         a3, a6, 3
                  sll          s11, sp, s7
                  ori          s2, s10, -1663
                  auipc        a0, 438370
                  sll          s1, s7, a1
                  slli         tp, s9, 29
                  nop
                  srai         t4, t3, 24
                  sll          t3, t2, sp
636:              slti         s9, s6, -24
                  bltu         s1, a0, 649f
                  lui          a6, 183186
                  sltiu        t4, a5, 106
                  slli         s9, ra, 17
                  bne          s0, t1, 645f
642:              srl          s1, s11, t3
                  andi         s8, zero, -1342
                  bge          s4, s6, 649f
645:              bne          ra, a4, 647f
                  add          s2, a2, t2
647:              sra          s9, a4, zero
                  bltu         a6, t1, 653f
649:              xori         a3, t1, -852
                  slt          t3, zero, a3
                  sub          s3, s1, s6
                  sub          s7, a3, s8
653:              blt          t3, t0, 672f
                  ori          s5, a5, 743
                  ori          s5, t0, 395
                  add          t5, a3, sp
                  slt          tp, tp, s6
                  slli         a0, zero, 24
                  bltu         a7, t2, 665f
                  slli         s8, a2, 30
                  sltiu        s6, t1, 845
                  srli         t2, ra, 19
                  nop
                  slli         s3, sp, 17
665:              lui          gp, 2866
                  bne          t5, a2, 675f
                  slti         s10, s5, 520
                  slli         tp, s4, 20
                  slli         tp, ra, 0
                  xori         s7, s3, -1057
                  sub          s1, s5, t1
672:              add          t2, a5, a1
                  sub          a2, t6, t2
                  bgeu         t3, t4, 684f
675:              bne          a6, gp, 684f
                  lui          zero, 236880
                  srai         a3, t0, 6
                  ori          s0, tp, -150
                  slli         a2, a1, 17
                  addi         s8, s3, 1249
                  slt          a3, t5, t4
                  andi         gp, a7, -1784
                  nop
684:              xori         sp, s10, -1311
                  srli         a5, ra, 8
                  lui          s2, 1824
                  lui          a2, 889315
                  beq          t6, t1, 699f
                  nop
                  xori         gp, t1, -1469
                  nop
                  ori          ra, s10, -1012
                  slli         zero, tp, 17
                  sub          t0, a7, a1
                  add          s5, s8, a7
                  sltiu        t2, s1, 1081
                  sub          s0, a5, a7
                  srli         a1, ra, 28
699:              sra          s7, s4, a7
                  add          t5, a6, s1
                  bne          t1, gp, 720f
                  or           s10, t5, t2
                  blt          ra, a4, 710f
                  and          s10, s9, s6
                  sltu         t0, t0, zero
                  ori          s3, ra, 1125
                  bge          s7, s5, 713f
                  xor          a3, s1, a1
                  slti         a6, s1, -668
710:              nop
                  xor          a6, s7, t0
                  xori         t2, t4, -1457
713:              beq          s9, t5, 730f
                  blt          t1, s5, 730f
                  and          s1, gp, s7
                  bne          t4, s9, 726f
                  blt          t5, a3, 730f
                  addi         a5, ra, 904
                  lui          s8, 309406
720:              nop
                  sll          s8, a6, t5
                  slt          a5, t0, s5
                  srli         tp, s9, 13
                  xor          s4, a2, s9
                  sub          tp, ra, s2
726:              blt          a3, s2, 732f
                  sltiu        gp, t2, -905
                  beq          s3, s9, 745f
                  andi         a0, a3, 1125
730:              lui          tp, 957627
                  sra          s5, a3, s7
732:              srai         s7, t3, 16
                  and          gp, ra, t4
                  srl          a2, s8, a2
                  sra          s0, a0, a0
                  andi         s7, s4, 831
                  bge          a2, t6, 745f
                  srai         s11, s7, 26
                  srli         s0, t4, 21
                  slli         a5, sp, 15
                  slti         s8, t3, -293
                  bgeu         a6, t2, 761f
                  srai         s7, s11, 10
                  andi         s7, tp, -2000
745:              bne          a7, ra, 762f
                  bge          a3, a2, 751f
                  slti         a0, s4, 1971
                  lui          a6, 514088
                  srl          sp, s1, t1
                  bne          t4, s4, 766f
751:              srai         s9, s1, 6
                  nop
                  srl          s11, s7, s0
                  auipc        t5, 88539
                  sltiu        s4, s3, 1916
                  ori          t1, a7, 1842
                  slt          a6, s3, s10
                  lui          a0, 751267
                  slti         s7, t0, 254
                  slti         sp, tp, 421
761:              ori          s8, s4, 967
762:              slli         s11, t0, 27
                  srai         a1, s8, 6
                  sra          t0, s9, a2
                  bltu         s7, s1, 767f
766:              blt          zero, t2, 772f
767:              auipc        t1, 324950
                  bltu         ra, s6, 769f
769:              sll          tp, a4, t4
                  slt          t1, a0, t2
                  lui          gp, 531960
772:              add          s7, s3, s1
                  sll          a1, a6, s3
                  bltu         a0, a1, 778f
                  bge          t1, t3, 778f
                  and          t3, sp, s5
                  srli         t3, zero, 27
778:              slt          t1, t4, s2
                  sltiu        t4, a2, 738
                  sltiu        a1, zero, 1620
                  sll          t1, t1, t6
                  xor          t1, a2, zero
                  sltu         t3, s5, a2
                  slli         a2, gp, 15
                  xori         t1, s1, 27
                  slli         a1, s0, 29
                  ori          t0, s8, -1921
                  and          t4, s1, a2
                  addi         tp, s1, -995
                  bne          a0, ra, 795f
                  slt          a6, a0, t6
                  bge          s4, s4, 797f
                  sub          s6, s1, s2
                  auipc        s8, 794157
795:              bge          s0, s3, 806f
                  srai         t5, ra, 10
797:              srai         a1, t4, 0
                  beq          t1, sp, 801f
                  lui          tp, 792923
                  nop
801:              slli         tp, a0, 20
                  srli         s10, t3, 4
                  addi         s11, s5, -515
                  srl          s6, a5, s10
                  auipc        s4, 1000124
806:              and          s10, s10, a3
                  sltu         a3, t3, s5
                  andi         s6, s8, -322
                  blt          s10, a7, 823f
                  sltu         s4, s3, s7
                  sub          s0, ra, s11
                  addi         t3, t3, -1788
                  sltiu        s7, a5, 408
                  xori         s6, t1, 1398
                  ori          a5, a7, 1954
                  slti         s6, t4, -150
                  slti         s10, t0, -783
                  bgeu         t4, t1, 830f
                  auipc        s6, 983715
                  beq          a0, s5, 828f
                  srai         ra, t6, 29
                  slli         s2, t2, 9
823:              sub          t2, a1, tp
                  slti         s11, s9, -667
                  srl          gp, t6, s6
                  bgeu         s9, a5, 827f
827:              bne          a0, ra, 839f
828:              and          t4, t0, t0
                  srai         s9, gp, 24
830:              bgeu         s7, gp, 843f
                  slli         s3, a6, 2
                  slti         s10, a6, -1573
                  ori          t3, t5, 652
                  sltiu        t2, t0, -1368
                  slt          s10, a2, a6
                  ori          t5, s8, -1564
                  srai         a1, tp, 28
                  ori          s10, a0, -635
839:              beq          tp, t2, 850f
                  blt          zero, t2, 851f
                  sltu         t3, s9, tp
                  lui          sp, 703984
843:              blt          t4, s3, 860f
                  nop
                  sltiu        s6, s6, -630
                  and          zero, a5, s1
                  lui          gp, 157860
                  slti         t0, a0, 196
                  sll          s7, s10, a7
850:              auipc        t5, 85957
851:              xor          gp, s3, s3
                  andi         a2, a4, -93
                  bge          gp, zero, 858f
                  add          gp, a6, s10
                  srai         s7, t3, 10
                  beq          ra, s2, 873f
                  sltiu        s5, t1, 1304
858:              or           t4, a3, s2
                  lui          t5, 223208
860:              bne          zero, t3, 868f
                  sll          a6, t0, t4
                  srl          s3, a5, t1
                  andi         s11, t2, 730
                  lui          a6, 445778
                  nop
                  andi         t2, t4, -5
                  addi         a6, ra, -1353
                  srl          s9, t1, s0
                  or           s1, t6, a5
sub_3_j8:         jal          s7, sub_4 #jump sub_3 -> sub_4
                  andi         a3, s1, -1696
                  blt          s0, ra, 877f
                  or           s4, t0, a5
                  bltu         s0, t6, 879f
868:              xor          s6, t5, a1
                  and          s2, s5, ra
                  sra          t1, s7, s3
                  and          s7, s2, ra
                  srl          a2, a0, t6
873:              bge          a6, t5, 882f
                  sra          s0, a0, a3
                  sltu         a0, a7, a2
                  blt          zero, s6, 895f
877:              ori          s10, a1, -899
                  and          t4, ra, a0
879:              and          s0, a3, t1
                  srl          a3, a2, s11
                  and          a6, t3, sp
882:              add          s0, s1, a7
                  xor          tp, s4, s11
                  auipc        t4, 940181
                  nop
                  blt          a4, a2, 891f
                  xori         s3, s2, 146
                  slli         sp, s8, 14
                  srl          gp, s11, zero
                  ori          a1, t6, 974
891:              ori          a3, t4, 1214
                  srli         a2, sp, 9
                  bgeu         s7, s9, 896f
                  slt          s6, s2, a1
895:              bge          gp, t6, 909f
896:              addi         s11, a1, -1657
                  sra          t3, a3, s2
                  addi         a0, t4, 599
                  ori          a3, a7, 1760
                  addi         a5, a1, 976
                  xori         a3, a1, -1297
                  xori         t2, sp, 1516
                  srli         a0, t6, 24
                  lui          t1, 760255
                  sub          s11, t2, a2
                  slt          s5, a7, a1
                  srai         a5, s1, 14
                  bne          s0, a4, 927f
909:              sltu         t5, a0, s11
                  srai         t5, t6, 8
                  xori         s0, a2, 1989
                  srli         t5, a6, 9
                  xori         tp, a6, -1509
                  sltiu        s9, sp, 1620
                  sltu         s7, t0, a5
                  lui          s8, 153981
                  bltu         t6, a5, 923f
                  sltu         a0, a5, s5
                  srli         ra, t0, 29
                  bltu         s1, t3, 928f
                  slli         s1, a1, 0
                  sltiu        a1, zero, 457
923:              nop
                  srl          s2, sp, a2
                  or           gp, t5, s11
                  srli         s11, s9, 1
927:              sra          s1, a3, t4
928:              andi         s4, t3, -1205
                  addi         a3, a6, -1631
                  srl          t1, a7, s6
                  lui          t3, 491701
                  add          t0, s1, s4
                  slli         s1, t6, 23
                  bge          s5, s11, 937f
                  auipc        t4, 780361
                  nop
937:              srl          s9, a5, s4
                  andi         s2, zero, 1816
                  sltu         t4, s0, t5
                  slli         t2, t3, 2
                  sll          t0, t1, t0
                  xor          t2, t0, s2
                  slt          s7, s3, s6
                  bgeu         a6, a5, 950f
                  add          t2, s8, a1
                  slli         s7, a6, 31
                  slti         gp, t5, 1879
                  srl          s7, s9, s2
                  bge          s10, t4, 966f
950:              lui          a2, 735099
                  srl          a6, s5, a2
                  auipc        s0, 242074
                  bgeu         gp, a1, 969f
                  addi         s2, t2, 1772
                  andi         s8, gp, -790
                  slt          a5, s9, t4
                  and          t0, a7, t1
                  srli         t0, a6, 25
                  andi         t2, t2, 1629
                  slt          s6, a6, a5
                  auipc        a3, 884485
                  beq          s3, sp, 964f
                  sra          s8, s7, t2
964:              sra          tp, a0, s1
                  slti         t1, s3, -831
966:              xori         sp, s9, 160
                  blt          s7, sp, 971f
                  lui          s0, 33439
969:              bltu         t3, a5, 975f
                  beq          s11, s11, 975f
971:              bne          t1, a4, 987f
                  or           t3, t3, t6
                  slli         a5, s8, 21
                  xori         s11, sp, -272
975:              slti         t2, s3, -577
                  bge          gp, s9, 977f
977:              or           t3, s5, s8
                  bne          s5, gp, 988f
                  xor          a6, a5, a4
                  slti         t3, sp, 1631
                  lui          s5, 1470
                  sltu         a0, a6, s11
                  bge          s3, t6, 984f
984:              slti         a1, a0, -1398
                  xor          a0, s10, a5
                  bne          sp, s11, 993f
987:              sll          s5, t0, s6
988:              srai         a6, s9, 15
                  nop
                  sltu         s10, a4, zero
                  slt          ra, a7, s11
                  sll          gp, s7, zero
993:              sltu         t1, s4, a0
                  nop
                  slti         s11, s1, -1089
                  sltiu        s11, zero, -1645
                  bne          t5, s9, 1005f
                  nop
                  bne          a6, t0, 1002f
                  ori          t3, t6, 1847
                  bge          tp, sp, 1005f
1002:             addi         t3, a1, 1881
                  slti         s8, sp, 1263
                  slli         t4, s2, 26
1005:             xori         s11, tp, 398
                  addi         s7, a2, 86
                  lui          t2, 331217
                  nop
                  sltu         s0, s1, zero
                  sll          sp, a5, a7
                  sltu         t2, t2, a6
                  bgeu         t4, sp, 1017f
                  sltiu        sp, a1, -1381
                  xor          a6, gp, a4
                  andi         s6, s5, 357
                  xori         s9, tp, -81
1017:             nop
                  add          s0, a5, a6
                  bltu         s11, a3, 1022f
                  blt          t0, a7, 1028f
                  sll          s6, a1, zero
1022:             auipc        t4, 725168
                  nop
                  xor          sp, s2, s11
                  bltu         a6, s3, 1044f
                  slti         t1, t4, -1060
                  sltu         gp, t0, ra
1028:             bgeu         s6, a5, 1034f
                  sltu         tp, t1, a5
                  blt          s7, s1, 1036f
                  addi         s6, a0, 272
                  bgeu         s10, s6, 1048f
                  lui          s10, 627363
1034:             bgeu         t5, a2, 1051f
                  bltu         s4, zero, 1047f
1036:             slti         s1, a0, 577
                  sll          s7, t4, a6
                  sltiu        s2, a1, -1104
                  sll          s3, s1, s3
                  sll          zero, s5, t0
                  bge          s2, t0, 1052f
                  srl          t1, t2, s7
                  sub          a1, s1, s2
1044:             xori         s2, zero, -97
                  and          s5, s5, t4
                  bgeu         a4, tp, 1051f
1047:             ori          zero, t0, -768
1048:             bgeu         s6, t4, 1067f
                  bne          s3, ra, 1050f
1050:             andi         s7, t6, 1550
1051:             ori          ra, s7, -977
1052:             add          a1, a3, s10
                  addi         t0, a6, -401
                  sub          s5, s3, a4
                  or           s6, s4, a0
                  or           ra, t1, t4
                  sll          s3, s3, t1
                  nop
                  sra          t0, s3, t2
                  auipc        t2, 270815
                  sll          s1, t6, t3
                  beq          s1, t1, 1078f
                  sll          s7, t5, s0
                  srl          tp, a7, t5
                  bgeu         s1, s11, 1066f
1066:             nop
1067:             and          s2, s7, s2
                  sltiu        s7, s1, -38
                  slt          s9, t1, ra
                  add          s7, s11, s9
                  ori          tp, tp, 2041
                  andi         t2, t1, -1213
                  or           tp, t5, zero
                  andi         s10, a0, 1136
                  andi         s6, s4, -46
                  xori         s10, s5, -1418
                  ori          zero, a0, -1030
1078:             srl          s10, s9, t1
                  addi         tp, a6, 1083
                  xor          t4, a2, s7
                  srai         s0, ra, 29
                  and          a2, s11, a5
                  sltiu        t2, s11, 1344
                  lui          a3, 855790
                  sltiu        tp, a0, 1579
                  slti         s11, ra, -1690
                  bgeu         s3, s1, 1093f
                  srl          s0, gp, s8
                  or           s1, a3, s10
                  slt          s3, ra, t4
                  srl          s5, a7, s4
                  sub          s6, t0, a3
1093:             blt          zero, a7, 1105f
                  bltu         t4, a0, 1099f
                  sltu         s1, a3, tp
                  sltu         s3, ra, zero
                  blt          t2, gp, 1111f
                  slli         gp, s9, 21
1099:             sll          s3, s0, a0
                  nop
                  bne          s6, ra, 1110f
                  blt          a6, s5, 1109f
                  and          a0, t3, a4
                  slti         gp, a2, -985
1105:             srl          a2, a3, s1
                  bne          a1, a2, 1119f
                  slti         s8, s3, -1482
                  slt          s5, t2, s3
1109:             slti         gp, s9, -1605
1110:             bne          t4, a5, 1112f
1111:             beq          t3, s7, 1128f
1112:             auipc        a6, 63410
                  addi         s10, a6, 1007
                  bge          tp, zero, 1131f
                  slli         ra, a7, 3
                  sub          ra, t6, t1
                  srli         s0, s2, 29
                  or           a3, s10, s3
1119:             xori         tp, a2, -730
                  ori          tp, s8, 794
                  bltu         a5, s0, 1131f
                  sltiu        s1, s11, 1164
                  lui          sp, 157043
                  blt          a0, t5, 1135f
                  bgeu         t1, t2, 1131f
                  bne          a7, s9, 1129f
                  and          a5, s7, t6
1128:             beq          t2, a7, 1141f
1129:             bltu         t4, ra, 1143f
                  lui          s11, 235204
1131:             slli         zero, s8, 4
                  andi         a5, s0, 1642
                  sltu         s9, s3, s0
                  sra          a3, sp, ra
1135:             add          t4, s2, a6
                  lui          s6, 863228
                  add          s6, s5, s6
                  slli         t4, t3, 15
                  bgeu         a1, a3, 1150f
                  la           t5, region_1+116 #start riscv_load_store_rand_instr_stream_6
                  slti         s7, t4, 1517
                  sw           t6, 1432(t5)
                  lb           a1, 1501(t5)
                  lb           s4, -8(t5)
                  andi         t0, s2, 1069
                  lbu          t3, 1579(t5)
                  lh           s2, 338(t5)
                  sltu         t3, s6, s6
                  sb           sp, 931(t5)
                  sh           zero, 1400(t5)
                  slt          a2, sp, t1
                  lbu          s9, 881(t5)
                  lb           t1, -95(t5)
                  nop
                  lb           t2, 1163(t5)
                  srl          s1, s10, s7
                  xori         zero, s0, -1618
                  sh           s3, 1180(t5)
                  sb           t4, 1213(t5)
                  sb           s5, 1160(t5)
                  sb           t0, 1160(t5)
                  sb           t4, 423(t5)
                  slli         a3, s3, 29
                  xor          zero, s3, a7
                  lbu          s0, 529(t5)
                  lhu          sp, 634(t5)
                  addi         s6, s3, 150
                  lb           s3, 1331(t5)
                  lbu          s5, 996(t5)
                  lhu          ra, 950(t5)
                  sh           tp, 1334(t5)
                  ori          s8, a6, 1806
                  sh           a7, 1544(t5)
                  nop
                  lb           sp, 15(t5)
                  sb           t3, 341(t5)
                  add          s11, t6, a1
                  lb           t0, -105(t5)
                  sb           a3, 195(t5)
                  ori          t2, a1, 141
                  sh           t1, 674(t5) #end riscv_load_store_rand_instr_stream_6
                  or           s10, t3, t5
1141:             auipc        tp, 663433
                  sub          a1, s3, s6
1143:             srli         s7, sp, 23
                  addi         t5, t6, -886
                  slti         gp, a2, 1619
                  or           s1, s9, s9
                  addi         a5, s7, -366
                  auipc        s2, 235962
                  srl          zero, t0, s0
1150:             auipc        t1, 856118
                  bne          t6, s7, 1156f
                  sltu         s6, sp, a6
                  srl          t3, a0, a2
                  blt          a5, s7, 1173f
                  xor          t1, ra, t1
1156:             sltiu        s0, t5, -129
                  sltiu        t4, sp, 19
                  sltu         tp, s0, tp
                  blt          a1, sp, 1171f
                  sltu         s2, a7, s5
                  auipc        s8, 188337
                  lui          s10, 980666
                  bltu         t6, s2, 1171f
                  sltiu        s4, zero, -1887
                  or           a6, a4, t5
                  or           s4, s8, t0
                  andi         s1, s10, -1681
                  srai         a1, t5, 1
                  andi         tp, tp, 881
                  bltu         s5, a3, 1180f
1171:             sra          a6, s1, s4
                  sra          s4, s4, sp
1173:             srl          s4, t2, a5
                  srai         gp, a2, 21
                  andi         a5, t4, -1793
                  xor          s1, s1, s10
                  sltiu        s5, tp, 365
                  sra          s7, t0, zero
                  bge          s1, zero, 1190f
1180:             sub          s11, a0, a6
                  srli         s3, s3, 13
                  srl          s8, s0, s1
                  sltu         a3, t4, a3
                  sltiu        t5, s10, -834
                  xor          s10, a2, s3
                  add          s11, t3, s1
                  xor          t3, t6, zero
                  andi         a5, t0, -1046
                  bne          t2, s10, 1190f
1190:             addi         sp, a0, -1573
                  sra          t1, t5, s6
                  ori          s9, sp, -1849
                  add          s10, zero, a1
                  auipc        s3, 483037
                  andi         s2, zero, 1854
                  srli         gp, t6, 3
                  slli         gp, t4, 11
                  sub          s7, s10, tp
                  nop
                  slli         s2, s7, 20
                  srai         sp, t4, 5
                  slt          s1, a3, gp
                  slti         s6, a6, 117
                  xor          s9, s9, s5
                  bne          t1, s10, 1222f
                  sltu         t4, t4, a6
                  xor          s11, s3, t0
                  sra          s6, a2, t1
                  srl          s3, t0, s1
                  beq          zero, s8, 1215f
                  xori         sp, s7, -181
                  add          a6, gp, a0
                  srl          sp, s10, gp
                  or           t1, s5, sp
1215:             add          s5, s6, t6
                  sub          s0, t5, s11
                  srli         zero, a7, 18
                  slli         t3, zero, 22
                  bgeu         t5, s10, 1224f
                  sltu         gp, s4, t2
                  and          t5, ra, s7
1222:             sltu         s3, a0, t6
                  nop
1224:             ori          zero, t1, 829
                  auipc        s0, 400290
                  addi         a0, s8, -485
                  sll          s4, a7, gp
                  slti         t3, s4, -909
                  bltu         s4, tp, 1246f
                  slt          a5, s5, s2
                  srl          a1, t5, s3
                  sub          s9, s9, s9
                  andi         t2, s0, -491
                  bge          a7, ra, 1235f
1235:             bge          s11, s2, 1238f
                  andi         a3, t1, 764
                  srai         sp, a1, 19
1238:             srl          s10, s2, s1
                  sll          s4, a0, sp
                  and          s7, s1, a0
                  sll          sp, s2, t1
                  slti         t0, a6, 1315
                  bgeu         s4, s9, 1259f
                  addi         a5, s6, -1506
                  la           sp, region_1+798 #start riscv_load_store_rand_instr_stream_15
                  lb           a0, -41(sp)
                  lhu          s0, 222(sp)
                  lhu          t1, -148(sp)
                  slt          a6, t3, s5
                  lw           s8, -90(sp)
                  sub          t4, a2, a7
                  srl          t3, s3, s3
                  lbu          a1, -230(sp)
                  lbu          tp, -61(sp)
                  add          s0, s6, zero
                  lhu          s2, 176(sp)
                  and          s3, t1, a3
                  lb           ra, -11(sp)
                  sll          s2, a7, s2
                  xor          tp, s8, s11
                  sh           s9, 80(sp)
                  srli         s2, s7, 22
                  and          a2, s6, s9
                  nop
                  slti         ra, t4, -341
                  auipc        s9, 865096
                  slt          t0, ra, s11
                  addi         a1, s11, 1228
                  sb           t6, 116(sp)
                  sub          a2, t2, s7
                  xori         gp, s8, 697
                  nop
                  lhu          t1, -174(sp)
                  lui          a5, 18300
                  sb           s5, -241(sp)
                  sh           s10, -46(sp)
                  andi         s11, s7, 421
                  ori          zero, a2, 564
                  lb           tp, 5(sp)
                  lui          s11, 757205
                  slli         s2, s5, 5
                  addi         s8, t5, 1894
                  lb           s3, 107(sp)
                  sb           t6, -251(sp)
                  sb           s8, -9(sp) #end riscv_load_store_rand_instr_stream_15
                  beq          a4, t2, 1253f
1246:             addi         s6, zero, 1296
                  bge          a2, a6, 1253f
                  blt          s10, t6, 1264f
                  slti         a6, t1, -1120
                  beq          a4, tp, 1267f
                  slli         s9, a3, 22
                  blt          s9, s8, 1271f
1253:             bge          s7, t0, 1257f
                  sll          zero, t3, a2
                  lui          s2, 861784
                  beq          s3, a0, 1265f
1257:             sltiu        s7, t1, -14
                  nop
1259:             srai         a0, t6, 3
                  slti         s4, s6, 704
                  slli         s10, ra, 14
                  bltu         gp, a6, 1274f
                  sltu         t1, s1, sp
1264:             xor          s0, a6, sp
1265:             bne          a6, a3, 1272f
                  andi         s9, s4, 242
1267:             slti         t2, s2, -1065
                  bltu         gp, s0, 1270f
                  lui          a1, 30431
1270:             sra          a1, s1, a3
1271:             srl          t5, t4, s1
1272:             bne          a5, s5, 1278f
                  slli         s5, tp, 6
1274:             bne          ra, s6, 1277f
                  srli         t1, t0, 2
                  slti         s0, a4, 1488
1277:             sltu         ra, s3, t1
1278:             slli         a5, s9, 5
                  andi         ra, s11, -1250
                  auipc        sp, 68843
                  lui          t5, 461288
                  xori         s1, s6, 1321
                  slt          s11, t0, s8
                  nop
                  bge          t3, sp, 1290f
                  bltu         a6, sp, 1299f
                  lui          a5, 648791
                  and          s0, s8, a2
                  bltu         a6, a2, 1298f
1290:             auipc        s9, 1034224
                  srl          s9, a0, s6
                  sub          a2, t6, tp
                  bge          t4, ra, 1310f
                  sra          s6, s3, t4
                  ori          zero, t6, 379
                  srai         a2, a4, 31
                  sltiu        t0, a2, 894
1298:             sll          t4, a3, t1
1299:             sra          s0, t3, t3
                  slt          a6, a5, ra
                  bltu         a3, a0, 1307f
                  sra          zero, a3, s5
                  lui          t5, 84505
                  la           sp, region_1+479 #start riscv_load_store_rand_instr_stream_8
                  slt          s5, s1, s4
                  sb           s6, 1480(sp)
                  sh           sp, 629(sp)
                  sb           ra, 678(sp)
                  lb           zero, 802(sp)
                  lbu          s2, 634(sp)
                  srli         s8, a6, 25
                  lhu          s8, 763(sp)
                  sub          a0, s10, a1
                  add          s3, s0, ra
                  srai         s0, t4, 31
                  lb           t1, 1448(sp)
                  lbu          t5, 1133(sp)
                  addi         a2, s8, -1268
                  sb           t3, -145(sp)
                  sb           t3, -272(sp)
                  sltiu        t2, a1, 1810
                  lb           s11, 281(sp)
                  lh           s8, -317(sp)
                  lb           gp, -47(sp)
                  slli         t1, s0, 9
                  slti         t1, a5, -1596
                  lb           a1, 916(sp)
                  ori          t5, s10, 551
                  srl          gp, s7, a2
                  sll          s7, zero, t1
                  slli         t0, t3, 20
                  auipc        s6, 275891
                  lbu          t3, -152(sp)
                  add          s7, a6, s9
                  andi         a2, gp, -1162
                  auipc        t1, 728967
                  lui          a3, 673886
                  sltiu        gp, t5, -528
                  lbu          t0, 796(sp)
                  add          s2, t4, sp
                  slli         s0, tp, 2
                  slt          a3, zero, s3
                  sll          s1, s3, a5
                  add          s8, ra, a1
                  srli         a5, s11, 27
                  sb           s11, -473(sp)
                  ori          gp, s6, 852
                  srl          s5, t3, s3
                  lb           s4, -346(sp)
                  sra          s5, a2, t5
                  lbu          zero, -334(sp)
                  lui          a5, 789162
                  sltiu        s1, s8, -1344
                  sb           sp, 1255(sp) #end riscv_load_store_rand_instr_stream_8
                  blt          t5, t4, 1312f
                  add          s10, gp, a4
                  xor          tp, s8, s4
1307:             sll          ra, a5, a3
                  sra          s10, t0, t6
                  auipc        s8, 913618
1310:             srai         a2, s6, 3
                  slt          a2, t0, zero
1312:             bltu         s2, tp, 1314f
                  sub          t4, gp, t3
1314:             and          a2, a0, s8
                  slt          tp, ra, t0
                  bltu         a5, t0, 1327f
                  andi         s5, a3, 58
                  ori          s8, s10, 581
                  bge          t3, a3, 1336f
                  slti         t1, s8, 207
                  sltu         a5, t5, a1
                  lui          a2, 576246
                  beq          a5, a4, 1331f
                  and          a2, t4, s11
                  bne          zero, t4, 1329f
                  sra          s8, a6, a7
1327:             sra          a3, a5, a4
                  ori          a2, s3, 1938
1329:             srai         a2, sp, 27
                  auipc        t1, 286954
1331:             beq          t3, t6, 1334f
                  sltu         zero, s5, t2
                  bltu         s7, a4, 1345f
1334:             andi         a6, a3, 52
                  lui          t0, 357155
1336:             xori         t1, a5, 1562
                  slti         s0, t0, 726
                  xori         t3, a3, -72
                  bge          t5, s11, 1358f
                  auipc        zero, 571080
                  bne          t4, t6, 1351f
                  bne          t6, a0, 1343f
1343:             or           a6, t1, a6
                  xori         a5, s11, 616
                  nop
                  la           gp, sub_6
                  ori          s3, sp, 100
                  add          s9, tp, a0
                  addi         gp, gp, -715
                  bge          a2, s4, sub_3_j7 #branch to jump instr
                  add          s4, a6, tp
                  or           a2, t3, t3
                  or           sp, tp, t3
sub_3_j7:         jalr         s7, gp, 716 #jump sub_3 -> sub_6
1345:             xori         s5, s4, 1057
                  xor          zero, s3, gp
                  slt          t2, s10, s4
                  sub          a0, tp, s8
                  auipc        t3, 126824
                  srl          s5, s2, a3
1351:             srli         a3, s2, 11
                  sll          a3, s3, t2
                  sltiu        t5, gp, 998
                  sltiu        s3, t3, 1761
                  bgeu         s6, a6, 1361f
                  sra          s5, s7, tp
                  srli         a1, a4, 2
1358:             sltiu        s7, t6, -1434
                  bne          s7, t3, 1371f
                  lui          gp, 620318
1361:             sll          s3, sp, s10
                  srai         gp, t1, 9
                  slti         s10, a0, -840
                  bne          a2, a0, 1365f
1365:             xor          t0, t6, t2
                  xori         s1, s0, 974
                  bgeu         s8, s3, 1373f
                  sra          s10, a3, a4
                  addi         ra, s3, -593
                  blt          gp, a1, 1389f
1371:             addi         a3, a4, 1460
                  add          a0, t0, s5
1373:             and          s6, t1, s0
                  blt          s0, t1, 1379f
                  bltu         s5, t6, 1386f
                  srai         t0, tp, 17
                  bne          a7, sp, 1393f
                  sll          tp, s8, sp
1379:             bgeu         s2, a6, 1396f
                  bltu         t3, gp, 1394f
                  bltu         a6, s4, 1388f
                  auipc        gp, 321712
                  sra          t1, gp, t6
                  or           s0, a7, s11
                  bge          a5, t0, 1390f
1386:             bne          t4, s8, 1402f
                  slli         t4, s4, 15
1388:             sll          a2, a3, t5
1389:             sltiu        sp, t1, 80
1390:             bgeu         t3, a5, 1400f
                  srl          s10, a3, s1
                  sll          t5, s9, s2
1393:             nop
1394:             slti         zero, s6, -599
                  beq          t3, s4, 1400f
1396:             auipc        a5, 858454
                  xori         s1, s1, 1777
                  srai         tp, s4, 21
                  sltu         a5, a2, s9
1400:             auipc        s11, 148848
                  and          t5, t5, s1
1402:             blt          s11, a2, 1408f
                  sltiu        t2, s10, -1367
                  srli         a1, gp, 13
                  srai         a3, a3, 11
                  srai         sp, t6, 20
                  auipc        s7, 514409
1408:             sub          s4, gp, s6
                  lui          zero, 752054
                  bgeu         t3, s7, 1412f
                  sltiu        t0, s9, 155
1412:             or           a5, zero, s0
                  slti         s7, tp, -1860
                  bgeu         a7, t0, 1426f
                  srl          s3, s7, sp
                  or           ra, t6, s5
                  sra          a1, s1, s2
                  sub          gp, sp, s9
                  srai         ra, t0, 3
                  sltu         t5, a3, s0
                  addi         a2, s8, 597
                  lui          s7, 140646
                  slti         s1, s9, 1321
                  srli         a6, t6, 7
                  bge          s1, tp, 1438f
1426:             sra          s10, sp, a1
                  srli         a6, s4, 20
                  addi         s2, a1, 1777
                  beq          ra, tp, 1435f
                  sub          t2, t3, t2
                  add          s7, t5, s0
                  bltu         a3, s10, 1451f
                  nop
                  sra          t0, s7, s0
1435:             lui          t2, 914502
                  nop
                  bne          t4, a3, 1454f
1438:             slt          s2, a7, s7
                  srli         tp, t3, 27
                  lui          s11, 703817
                  sub          a0, s8, t1
                  lui          t2, 893024
                  and          a3, s8, t5
                  bge          s10, a6, 1449f
                  srl          tp, a4, t0
                  beq          t3, zero, 1463f
                  lui          s0, 153939
                  sra          s3, a2, s3
1449:             srli         s8, a7, 28
                  ori          a2, s6, 720
1451:             srai         s1, a0, 16
                  xori         t4, t5, 1901
                  slt          tp, s9, a2
1454:             sra          tp, s2, s4
                  ori          zero, gp, -680
                  lui          s8, 941956
                  srl          a6, ra, s5
                  addi         t1, a4, 444
                  addi         s0, gp, -276
                  add          s11, t1, t5
                  srl          t2, s9, s4
                  lui          s11, 261238
1463:             bltu         a1, gp, 1468f
                  ori          t5, s4, -990
                  bne          a7, t5, 1476f
                  srli         t4, a7, 16
                  sub          gp, s5, a5
1468:             and          t5, s2, a2
                  andi         zero, s1, -1504
                  bge          s3, t0, 1486f
                  ori          s0, sp, 1753
                  bge          t0, a4, 1478f
                  blt          a5, a5, 1487f
                  slti         a1, ra, -1667
                  sra          s9, s10, s0
1476:             srli         s8, a0, 29
                  andi         s11, s7, 1575
1478:             sltu         t5, a2, t1
                  sub          t0, t3, t4
                  bltu         s4, tp, 1484f
                  sub          t0, t6, s3
                  xor          s0, tp, t1
                  slli         s6, s6, 3
1484:             bne          t1, gp, 1487f
                  andi         t5, a3, -878
1486:             addi         t4, a0, 1119
1487:             or           tp, s5, t3
                  srl          s1, sp, s1
                  xori         tp, a4, -1499
                  sltiu        s4, a7, 1291
                  srl          t4, t2, s5
                  lui          t4, 452640
                  la           s6, region_1+829 #start riscv_load_store_rand_instr_stream_4
                  sh           s4, -7(s6)
                  sb           a4, 10(s6)
                  lh           sp, 15(s6)
                  lb           t0, 2(s6)
                  auipc        a0, 936918
                  sltiu        tp, sp, 1760
                  andi         s4, a3, 1520
                  add          t3, t2, zero
                  srl          t0, t3, zero
                  addi         s8, s1, -292
                  or           s10, t3, s11
                  add          t1, t0, a1
                  sb           a6, 2(s6)
                  srai         t4, tp, 15
                  sra          a0, sp, s0
                  sb           ra, -13(s6)
                  sb           zero, 8(s6)
                  and          a2, s8, t1
                  and          t5, sp, t1
                  lb           t4, 2(s6)
                  lbu          s11, 2(s6)
                  lui          t1, 262344
                  xori         a5, s6, -1967
                  and          a3, a3, a7
                  addi         a5, a6, -1332
                  slt          s11, t6, s11
                  lb           t3, 10(s6)
                  slt          s3, a7, t6
                  sb           s2, -4(s6)
                  lb           a6, 12(s6)
                  lb           a1, 2(s6)
                  lh           s9, -5(s6)
                  srl          a5, s2, t5
                  nop
                  lb           s1, -16(s6)
                  xor          tp, a1, s2
                  lbu          ra, 12(s6)
                  addi         ra, gp, 228
                  sll          a0, s1, a6
                  sw           ra, 3(s6)
                  lui          s0, 171200
                  lb           gp, 6(s6)
                  sb           t4, -14(s6)
                  sb           a7, -8(s6)
                  srai         s2, t3, 16
                  lbu          zero, -8(s6) #end riscv_load_store_rand_instr_stream_4
                  or           t1, t6, s9
                  xori         s4, zero, 1723
                  slti         s4, s2, -1164
                  slti         s0, t3, -1898
                  sra          t4, s4, s3
                  auipc        s10, 206407
                  and          s10, s3, ra
                  or           s10, s6, t4
                  ori          sp, a3, -737
                  addi         t3, s6, 1995
                  xori         a5, s3, -310
                  auipc        a0, 1046377
                  bgeu         t0, sp, 1524f
                  or           a5, a7, t4
                  andi         a2, s0, -189
                  slt          gp, a3, s5
                  beq          s5, ra, 1518f
                  srai         t3, sp, 31
                  slli         s9, s11, 15
                  srli         s10, s1, 23
                  slt          tp, a6, s10
                  blt          s11, a7, 1526f
                  auipc        s0, 588015
                  ori          sp, a1, 1182
                  and          t5, s6, tp
1518:             srli         a3, sp, 7
                  sltu         t4, s0, a0
                  lui          t5, 529304
                  blt          s3, a3, 1537f
                  slti         a6, s7, 1459
                  slti         tp, t1, -1415
1524:             lui          a1, 216833
                  sll          a0, t2, tp
1526:             nop
                  or           t4, s5, s5
                  ori          s8, a0, 618
                  bltu         a1, s1, 1546f
                  sub          s11, a1, s6
                  sltu         sp, sp, t5
                  xori         a5, t5, -676
                  beq          s0, a1, 1540f
                  slti         tp, t0, -2048
                  blt          t1, s2, 1543f
                  sub          s6, a0, t6
1537:             auipc        t2, 646728
                  blt          a7, a1, 1539f
1539:             bltu         s5, s0, 1547f
1540:             srai         s2, s3, 18
                  andi         t3, ra, -215
                  srli         sp, s1, 30
1543:             xor          s3, s11, a4
                  sll          s4, s1, s8
                  sub          s3, a7, t1
1546:             andi         tp, t6, -1179
1547:             auipc        s10, 877343
                  srai         s5, s1, 15
                  slt          s7, s7, a4
                  blt          a0, s4, 1553f
                  blt          gp, s6, 1552f
1552:             xori         t3, s3, 1119
1553:             slti         s5, s8, -450
                  slti         a3, s5, -1431
                  andi         s10, a5, 2019
                  and          t0, tp, a2
                  srli         tp, a0, 10
                  lui          zero, 364814
                  srai         tp, t3, 23
                  blt          t0, s7, 1571f
                  lui          s8, 315819
                  srl          a5, t3, zero
                  add          s4, a1, s11
                  xor          sp, s11, a7
                  nop
                  add          a3, s4, a6
                  slt          a2, a0, sp
                  ori          s1, zero, 1962
                  and          sp, a2, s8
                  sltu         t5, zero, a1
1571:             slti         s6, t3, 1084
                  bne          a4, zero, 1579f
                  slt          s8, s0, s1
                  sub          t3, s7, gp
                  slti         gp, t1, 101
                  bltu         gp, zero, 1592f
                  xor          a6, a1, s7
                  blt          s3, a7, 1586f
1579:             bltu         a7, s11, 1584f
                  slti         t4, zero, 1247
                  bge          s7, t2, 1585f
                  and          a1, zero, a5
                  slti         a6, s1, -835
1584:             bltu         t3, ra, 1601f
1585:             bgeu         t5, a0, 1596f
1586:             sll          s1, a3, zero
                  andi         t0, s2, 182
                  sll          a3, zero, tp
                  slti         t1, t3, -1330
                  andi         s8, ra, 1125
                  srai         s9, s0, 27
1592:             bge          t5, a1, 1598f
                  sra          a2, a2, zero
                  sra          s10, a4, a7
                  sra          s2, s2, ra
1596:             sub          s5, zero, t3
                  srl          a6, ra, sp
1598:             or           a3, s3, t5
                  slli         s3, t4, 22
                  nop
1601:             nop
                  slti         t3, a4, 772
                  srl          a6, s6, s7
                  srli         t4, s3, 27
                  lui          sp, 51160
                  bgeu         a7, gp, 1611f
                  bgeu         sp, s8, 1624f
                  bgeu         a2, sp, 1609f
1609:             blt          ra, zero, 1611f
                  addi         s4, t0, -929
1611:             sra          tp, a3, s6
                  xor          tp, tp, s4
                  or           s7, zero, t4
                  addi         t2, s11, 1836
                  slti         s4, s6, -229
                  addi         t2, s8, -1689
                  sra          s6, s2, a3
                  auipc        a1, 10912
                  sub          s6, a2, s9
                  sub          t4, gp, a2
                  sltiu        t2, s7, 74
                  lui          a0, 117759
                  blt          a0, a0, 1633f
1624:             srl          a6, t5, t4
                  bgeu         ra, s0, 1644f
                  addi         s5, s2, -1031
                  sltiu        s3, t1, -558
                  blt          s4, s7, 1645f
                  bne          t3, t5, 1635f
                  srli         t0, s4, 19
                  sub          t5, tp, t1
                  sll          a1, t4, tp
1633:             bgeu         s10, s6, 1636f
                  srai         s11, s9, 17
1635:             and          s2, t6, tp
1636:             bltu         s6, gp, 1639f
                  sltiu        a0, a3, 1305
                  slti         t0, s1, 1192
1639:             auipc        a2, 638368
                  and          s8, zero, t3
                  ori          s7, s9, 1371
                  sll          s0, t2, ra
                  xori         s3, gp, 1679
1644:             sub          s4, ra, s2
1645:             beq          s10, s7, 1653f
                  bltu         t6, t2, 1659f
                  xori         a5, s7, 1849
                  auipc        s8, 618423
                  blt          a3, s1, 1663f
                  auipc        s1, 811205
                  slli         s7, t5, 26
                  blt          t3, t4, 1658f
1653:             slti         s9, s9, 34
                  sub          s1, tp, s4
                  sll          s3, t6, t0
                  sll          a3, s11, s1
                  sltiu        t4, s0, 1908
1658:             auipc        s10, 896232
1659:             addi         a5, zero, -286
                  sltu         zero, sp, s7
                  add          t3, a1, t6
                  add          tp, s9, t0
1663:             slti         a0, s1, 681
                  sll          a2, s5, t4
                  ori          s9, gp, 944
                  addi         t1, a2, -1754
                  xor          s0, t3, s5
                  slti         t1, t5, -1709
                  beq          s8, sp, 1688f
                  bge          s4, s10, 1682f
                  nop
                  bge          s11, a6, 1684f
                  sra          t0, a0, s4
                  add          t0, s1, t4
                  sub          a0, s1, a4
                  sltiu        a6, s9, -1430
                  blt          s1, zero, 1678f
1678:             nop
                  auipc        t2, 291249
                  sra          t4, s5, t4
                  andi         tp, t2, -2012
1682:             sra          ra, s1, t6
                  slt          s2, s9, t2
1684:             bge          t3, tp, 1693f
                  xori         s6, a6, 1783
                  auipc        s10, 632277
                  andi         t3, t2, -518
1688:             sra          a2, t2, t5
                  addi         t3, ra, -1248
                  sub          a0, ra, s1
                  sltiu        s0, gp, -795
                  blt          t4, s11, 1708f
1693:             sll          a0, a4, a0
                  sub          s11, s6, tp
                  sub          s9, s11, a4
                  or           t4, tp, s2
                  sltiu        s1, a1, 499
                  sra          s5, a4, s0
                  beq          s4, s6, 1704f
                  srl          a1, a1, t0
                  sll          t4, zero, s7
                  auipc        s6, 456223
                  add          s4, s2, t3
1704:             slli         s8, ra, 12
                  sra          s6, a1, s11
                  lui          s8, 116902
                  xori         s11, s8, 1040
1708:             add          a5, s5, t5
                  xor          s3, a5, s10
                  slli         s9, sp, 1
                  bge          s11, a4, 1722f
                  srli         t0, s9, 13
                  srl          s9, zero, s5
                  beq          a2, t1, 1719f
                  sub          a3, t4, s5
                  auipc        s8, 562880
                  srli         s0, s9, 24
                  srli         s11, a2, 11
1719:             blt          a0, t4, 1722f
                  slt          t4, zero, t5
                  bltu         a4, t6, 1740f
1722:             or           a0, a6, a6
                  srli         s7, s6, 21
                  srai         a1, s4, 28
                  slti         t5, s6, 1700
                  bne          t1, s10, 1736f
                  bne          s5, s7, 1732f
                  or           a1, a4, s0
                  beq          a3, t5, 1735f
                  sltu         s11, t6, a4
                  nop
1732:             srai         zero, s6, 4
                  beq          t2, t5, 1735f
                  addi         s6, s4, 1316
1735:             nop
1736:             srli         s11, a1, 30
                  xori         a5, s11, -901
                  xor          a1, s7, t5
                  srl          a1, s4, gp
1740:             bge          t0, s5, 1746f
                  slti         s8, s8, 268
                  sll          s6, a7, s10
                  sub          s7, s11, a3
                  slti         s1, tp, -954
                  sltiu        s9, gp, 745
1746:             nop
                  blt          s8, s9, 1764f
                  slt          zero, t5, t2
                  nop
                  sra          a6, sp, a0
                  sltiu        s6, a6, 2022
                  sltiu        s2, s9, -1404
                  sltiu        a5, t0, 1895
                  bltu         s5, t0, 1770f
                  xori         s10, t6, 752
                  bge          t5, s11, 1763f
                  or           s9, a7, gp
                  bgeu         s6, s1, 1764f
                  slli         t1, ra, 0
                  sltu         s7, s1, t4
                  sltu         s3, sp, t1
                  slt          s5, s1, s0
1763:             and          a0, t5, sp
1764:             srli         s7, s6, 20
                  addi         s5, t0, -1900
                  sltiu        t5, s0, 321
                  slli         s11, s6, 5
                  auipc        a3, 643945
                  sltiu        s4, t2, 241
1770:             sra          a0, a4, s5
                  sltiu        t1, s6, -1911
                  bgeu         s11, s5, 1773f
1773:             add          a2, t2, a6
                  slt          gp, s0, t3
                  slli         s1, s5, 14
                  blt          s8, a5, 1793f
                  nop
                  lui          t1, 297915
                  sub          s9, a6, s7
                  sra          gp, a2, a5
                  sra          s5, t2, s10
                  sra          t5, a6, s4
                  xor          a0, a2, zero
                  bltu         t1, a2, 1803f
                  xori         s7, ra, -808
                  bne          s2, a6, 1799f
                  xor          s5, a4, t4
                  blt          tp, t3, 1792f
                  auipc        s7, 641369
                  bltu         a6, gp, 1791f
1791:             bltu         tp, tp, 1805f
1792:             sltu         s0, ra, gp
1793:             addi         s5, s8, 1273
                  slli         t2, s7, 12
                  srai         a3, t2, 13
                  srli         a6, t6, 28
                  xor          s5, a7, s9
                  beq          t5, s8, 1814f
1799:             sra          s3, s3, t4
                  lui          t4, 1043560
                  srl          a6, s1, s7
                  bne          zero, a6, 1814f
1803:             bgeu         s2, a5, 1814f
                  slli         s9, s7, 8
1805:             add          s4, t0, s10
                  bge          s0, sp, 1817f
                  or           sp, s0, gp
                  sra          t5, a0, a6
                  andi         a6, ra, -1229
                  andi         t1, s0, 595
                  and          s0, s10, a7
                  sltu         s2, a2, t6
                  srai         t0, s2, 14
1814:             sra          a6, s11, a5
                  sltu         s10, ra, s6
                  and          sp, ra, t0
1817:             sll          s5, s4, s8
                  blt          a0, a6, 1830f
                  sltu         t1, a3, s1
                  sltiu        a0, a0, 39
                  sub          s7, a2, s10
                  add          s10, a6, a7
                  bge          t0, t5, 1840f
                  sll          a1, ra, zero
                  nop
                  srl          t4, s1, a4
                  srli         a6, s0, 23
                  blt          s8, s1, 1833f
                  lui          a2, 959043
1830:             sll          ra, a3, a0
                  slti         s9, a4, -322
                  addi         s8, s2, 771
1833:             sltiu        ra, s3, 1236
                  or           s4, s3, s11
                  add          s11, tp, ra
                  slt          s6, a2, t2
                  andi         sp, t5, -1814
                  andi         s10, s11, -274
                  xori         a1, a4, 714
1840:             slti         a0, t4, 26
                  xor          s11, t1, a0
                  xor          t3, t0, s2
                  bne          s6, a2, 1851f
                  bgeu         tp, zero, 1847f
                  sltu         a3, a4, s6
                  bgeu         s3, a6, 1855f
1847:             bgeu         a5, t5, 1855f
                  auipc        s3, 218295
                  slt          t3, t1, s11
                  or           s3, t4, s4
1851:             bltu         s4, t3, 1858f
                  slt          sp, sp, a3
                  nop
                  sra          gp, s10, a4
1855:             sll          s10, gp, t0
                  ori          t1, s3, 265
                  nop
1858:             sltu         t5, a6, s11
                  sra          s4, s0, t2
                  add          s1, zero, a6
                  xori         s1, s3, 844
                  srl          ra, s5, s11
                  sub          s7, s5, a0
                  sltiu        a3, t5, 45
                  nop
                  bgeu         s0, a2, 1880f
                  ori          t3, t2, -17
                  auipc        t0, 68275
                  bltu         t2, s0, 1877f
                  nop
                  nop
                  sub          s3, t6, s2
                  sltu         tp, a5, s8
                  ori          a6, sp, -1719
                  bgeu         s11, t6, 1881f
                  sub          s2, a1, a4
1877:             bltu         s11, a4, 1888f
                  srl          t5, s5, gp
                  srli         a0, tp, 1
1880:             blt          tp, s11, 1884f
1881:             bge          a6, s4, 1887f
                  sra          a0, t4, t6
                  sra          s11, s11, t1
1884:             srli         t5, a2, 12
                  xor          s4, tp, t4
                  srli         a1, a3, 17
1887:             sra          s10, gp, s10
1888:             sll          t2, s7, s8
                  xori         tp, s0, 1630
                  and          s9, t2, s9
                  blt          a6, t1, 1899f
                  andi         zero, t0, -1238
                  bne          s8, tp, 1899f
                  bge          a0, t1, 1911f
                  xori         s11, s10, -443
                  sll          tp, a3, tp
                  auipc        s5, 812537
                  addi         t5, zero, -657
1899:             sltu         s10, sp, s5
                  bgeu         t5, t2, 1905f
                  auipc        a6, 663547
                  srl          a5, a3, zero
                  bne          gp, t5, 1913f
                  sltiu        s9, tp, 91
1905:             xor          t4, a0, t0
                  srai         s2, tp, 21
                  srai         s4, s0, 0
                  sra          zero, a7, t2
                  srli         s4, a5, 17
                  srl          a2, s8, s9
1911:             slt          s5, s4, s1
                  bge          t1, s10, 1914f
1913:             bltu         t5, sp, 1914f
1914:             nop
                  add          sp, s1, t6
                  ori          s1, s2, 1274
                  nop
                  bltu         s10, ra, 1935f
                  bgeu         a5, a3, 1935f
                  add          s8, s2, a3
                  bge          s0, gp, 1933f
                  sltiu        s8, t2, 1721
                  nop
                  xori         zero, a3, 1864
                  bge          gp, s11, 1937f
                  srl          s1, a6, zero
                  and          t1, t0, ra
                  or           sp, a0, t2
                  addi         zero, t2, -222
                  and          s1, s10, a2
                  srl          t2, sp, a0
                  nop
1933:             srli         s4, s5, 25
                  bgeu         t2, t2, 1943f
1935:             or           t1, s4, a3
                  slti         a0, s11, -1966
1937:             slti         s4, s2, 419
                  sra          t5, a3, t0
                  bltu         s8, t3, 1952f
                  lui          s3, 143705
                  bne          a2, zero, 1944f
                  or           t5, t3, s10
1943:             bne          a2, gp, 1944f
1944:             nop
                  or           t2, a2, t3
                  ori          a6, t2, -1218
                  and          s7, sp, t2
                  srai         s4, a2, 26
                  sltu         s11, s7, s3
                  slti         s5, s10, 964
                  xori         s10, s10, 1538
1952:             bge          s8, s8, 1971f
                  sra          s7, zero, t1
                  and          zero, a7, t4
                  srai         s8, t5, 4
                  bne          a0, t4, 1973f
                  slli         ra, a4, 29
                  blt          a6, s0, 1963f
                  xori         a6, a1, 156
                  sll          tp, t2, s3
                  andi         a5, a2, 782
                  slli         s0, s1, 24
1963:             slti         s3, t0, -1068
                  sltu         s4, t1, gp
                  bgeu         t1, zero, 1968f
                  xori         s2, s2, -1803
                  nop
1968:             nop
                  bge          zero, s1, 1988f
                  auipc        s2, 830580
1971:             andi         gp, ra, 2
                  beq          s2, t1, 1977f
1973:             and          s1, a3, s3
                  bne          a3, s11, 1990f
                  bgeu         a0, t1, 1986f
                  slli         s3, s9, 5
1977:             slt          a0, s8, t6
                  slli         a3, a7, 26
                  and          s8, a3, t6
                  srl          a6, a7, s10
                  slti         s8, s3, 227
                  ori          s4, s9, -852
                  sltu         tp, sp, s4
                  sll          t0, s0, s6
                  bgeu         s11, a5, 1992f
1986:             slti         s5, a6, 1097
                  srl          s0, s3, s6
1988:             blt          zero, s2, 2004f
                  bltu         s6, s7, 2003f
1990:             srai         s11, a3, 6
                  xori         t5, s8, 1688
1992:             auipc        s10, 792684
                  srai         s4, s0, 28
                  xori         zero, t4, -1028
                  addi         ra, s0, 58
                  sltiu        s11, s10, 223
                  xori         s1, t1, 1771
                  beq          s3, a6, 2004f
                  bgeu         s4, zero, 2000f
2000:             and          s2, s11, s3
                  la           sp, region_0+34 #start riscv_load_store_rand_instr_stream_9
                  sh           a1, 184(sp)
                  lb           a2, -17(sp)
                  sb           s5, 88(sp)
                  srai         s11, s4, 7
                  andi         zero, t4, 1141
                  sltu         a6, tp, t6
                  sltiu        t1, s11, -1888
                  srli         s4, ra, 13
                  sub          s10, a3, a7
                  lbu          s10, 236(sp)
                  xori         s8, s1, -1660
                  lb           s0, 1(sp)
                  slti         a6, s8, -1910
                  sh           t1, 210(sp)
                  lbu          s1, 193(sp)
                  lbu          s4, 133(sp)
                  lui          s10, 1038866
                  sub          a1, a2, s1
                  slli         s9, t3, 22
                  lbu          s0, 214(sp)
                  lb           a5, 95(sp)
                  sra          gp, s1, gp
                  ori          s3, a2, -453
                  sll          s6, gp, a7
                  lbu          s1, 88(sp)
                  and          a2, t0, t1
                  sb           t4, 69(sp)
                  sh           gp, 2(sp)
                  slt          a1, a4, s7
                  lbu          s5, 159(sp)
                  sh           ra, 252(sp)
                  xori         gp, t0, -631
                  or           a3, s5, t1
                  srai         tp, a6, 25
                  sub          t0, s11, s9
                  sb           t5, 63(sp)
                  srai         s11, ra, 19
                  sub          s1, t2, s1
                  sub          t5, s10, tp
                  sub          t5, s0, a0
                  sb           s11, 7(sp)
                  xor          s9, a0, t3
                  lb           zero, 143(sp)
                  slti         s3, a1, 1997
                  ori          ra, s6, -575
                  lw           a2, 158(sp)
                  addi         a1, a5, -333
                  sh           s1, 6(sp) #end riscv_load_store_rand_instr_stream_9
                  addi         sp, s6, -398
                  sltiu        s10, s6, -840
2003:             srl          t1, t2, ra
2004:             sub          s10, t5, a5
                  bltu         s7, s9, 2011f
                  slli         t1, a7, 13
                  srl          gp, s5, a6
                  sltu         s8, s7, tp
                  bge          a6, t2, 2011f
                  sltiu        sp, a5, 644
2011:             xor          t3, a6, t0
                  lw           s7, 4(a7)
                  addi         a7, a7, 16
                  srli         s5, s0, 10
                  srl          ra, a7, t3
                  auipc        a3, 279957
2696:             addi x13, x23, 0
2696:             jalr x13, x13, 0
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
.word 0xe5a3c701, 0x482a194b, 0x69166f48, 0x0200f8bd, 0x251f2d25, 0x30729bca, 0x09ea8a82, 0xc6e8ce62
.word 0xa0ac87f3, 0x4a19a43e, 0xa5835b7b, 0x51263f82, 0xac2ed799, 0xafce2ece, 0xfc63f748, 0xf2f1f63c
.word 0x7aa42c9f, 0xc792aa76, 0x719adc63, 0x2623f906, 0x7988b2fe, 0x3ee79416, 0x83e74523, 0x098c5489
.word 0xad04971a, 0x54d7c501, 0x7e84f6aa, 0xf052b908, 0x16c407e1, 0x6f001cc7, 0x7e1c10bc, 0xf34b9755
.word 0xbbccd06b, 0x241a1a06, 0x67bd71a6, 0x115a7490, 0xe17ca874, 0x92487726, 0x63f2dd6d, 0xb0eb1dda
.word 0xf0d10b10, 0x5cb46a4b, 0x0d47178b, 0x789fc669, 0xa9336a05, 0x3290c107, 0x1f8d8aa9, 0x7112d0c7
.word 0x5af6093e, 0x8de71f5b, 0xf8eb9d7b, 0x971adb9b, 0x03d4f43f, 0xbd22e406, 0xbe13f6e1, 0x42bf4a9c
.word 0x743b66b0, 0x7f1505db, 0x592e3885, 0xc06a024c, 0x93efd150, 0x14853dcb, 0x51ca27d3, 0x29adece4
.word 0x9de739ad, 0xeadc10bf, 0x4cce015b, 0x2052277f, 0x5d11e42c, 0x9bd65dc5, 0xb7401530, 0x5976ff8c
.word 0xdab81dc9, 0x59b4ff60, 0x47b47544, 0x04b7ccf9, 0xfff0a280, 0x525631eb, 0x339e4d52, 0xf37d61bf
.word 0x7e63c970, 0x8d37bcb4, 0x851b98c3, 0xdbdc7bd0, 0x18e8df91, 0x4b8ed12b, 0x0e65c249, 0x075f19c6
.word 0x1b611e79, 0x1d48bd8c, 0x4b44cb64, 0xe2915418, 0xde47d507, 0x01d6f8ce, 0xf9ba405f, 0x045a1b7f
.word 0x8473d464, 0x906c7711, 0x7ca5b067, 0xa2d5b09e, 0x05a52e95, 0xe5008262, 0xf3eda1e3, 0xad764726
.word 0x9998e2c6, 0x3bc49ddc, 0xb4ecd238, 0x4f802362, 0x2300b1c2, 0x734c69a6, 0x2ebb649c, 0x17037395
.word 0x634f66b5, 0xb6d847cc, 0x7c22493e, 0x958869db, 0x521f5639, 0x28c567ea, 0x11e3b598, 0xe2df3c93
.word 0xc75de6a5, 0x7ad35c87, 0x8d67c12c, 0x4d88c935, 0x626202ca, 0x5ce3cf46, 0x37485173, 0x14dd460f
.word 0xde86d74b, 0xb5914c9e, 0x52745a85, 0xab980e0e, 0xe6b547ba, 0x849c2e6c, 0x3d137594, 0x5a9e0034
.word 0x1ce1ba3e, 0xf9ecbe7e, 0x30d76f95, 0xd6e4e6f0, 0x3adf9f5a, 0xa955f2bd, 0xebc0ef23, 0x40883a8d
.word 0x7a30a3ce, 0xe6598ddc, 0x195fa286, 0x588a5693, 0x10543637, 0x11da57c6, 0x7a0ef3f7, 0x197f9f73
.word 0x57739cf2, 0x98dbddfe, 0x6c07a53d, 0x3d0f4fcd, 0xb33cb032, 0x188562bf, 0x2accb06e, 0xb4abc91e
.word 0xdc39c2b8, 0x22813f03, 0xd003cb3d, 0xc27f73d8, 0x8b061aaa, 0x317d39e8, 0x82bb5d45, 0x5dd52a72
.word 0xe31ffeea, 0xd8f0f7f3, 0x88eef0de, 0x4065bd5b, 0xe4cdc2db, 0x6ace59c1, 0x6e9083cc, 0xc06bd472
.word 0x546a5f9d, 0x6aca3c59, 0x9b9ead1b, 0x41413cb3, 0x28e740e2, 0x0d61305c, 0xae1f7b50, 0xc9dd108b
.word 0x103a8da5, 0x2eb5bbe2, 0xeb646bab, 0xbbd7c67a, 0x5972bad4, 0x8e43c4fa, 0x23fa19fe, 0x8b3c61c5
.word 0x437148ba, 0x0d512af2, 0x88cd48e1, 0x7fae7d4c, 0x658f89c8, 0xc73fa7b4, 0x7dee85e4, 0xc1b76a87
.word 0x62ed537b, 0xbbb715f3, 0x1720a08b, 0xce0115f6, 0x666aba45, 0x169b2636, 0xb05b1868, 0xbefaad85
.word 0xc90e2cf5, 0x5d6665ff, 0x897f95e6, 0x71ab822a, 0x53b4f001, 0x4b189ae8, 0x847c52b6, 0x9446771c
.word 0x5ae0dbfe, 0x019d3174, 0xe614a4ae, 0x40180852, 0xf178c611, 0xadbb80cf, 0x78dd71b4, 0x04835f84
.word 0x55abe4d5, 0x1af3b2d5, 0x1ecd24f9, 0xc98bb42a, 0x0bea1e16, 0x85ca10f7, 0x9fdfc731, 0x94656379
.word 0x4fb06a51, 0x9d424118, 0xef15649c, 0x8f389299, 0x1e4c5ced, 0xd42bb23d, 0x2d1b2522, 0xee95fecc
.word 0x1ed9d4ac, 0x21f2de52, 0x347b9451, 0x182d1057, 0x4e11ccd5, 0x6f162fc0, 0x198bec2a, 0x92b2b976
.word 0x7892a478, 0x460259b3, 0x5de2d1f7, 0x77985096, 0xcccc6869, 0x1552b3bd, 0xb38dc938, 0x0d8c695b
.word 0x445be9c5, 0xe9c4eba4, 0xa48d07b9, 0x80e844cb, 0xbc38d543, 0xdaa7747b, 0x86616326, 0xc6034196
.word 0x5278838d, 0x3040028e, 0x32809b9f, 0xc4f3ac69, 0x47b9fb55, 0xdfffc001, 0x46cb7c8c, 0x29673b22
.word 0xa28a6597, 0xa0b06c2b, 0x307f72ca, 0xc6738e87, 0xdd949434, 0xd732e7ca, 0xaac24c01, 0x080d27fd
.word 0x7d2e6910, 0xc1396356, 0x5c68617e, 0xc374c273, 0x40be34be, 0x2b7fd02a, 0xd1045a4a, 0x4e12273f
.word 0x1f1933e6, 0x2bcead24, 0xd4449506, 0x1f7d9335, 0x6dbd37b3, 0x078b9a36, 0x7c14ef41, 0x8f810d4b
.word 0x1076ccec, 0xd85ad7c2, 0x3fb2323e, 0xde39a28f, 0x52f7ed99, 0xef1929a2, 0x90e9c6a3, 0x5c08975a
.word 0x9f682136, 0xa8e69742, 0xad7598b5, 0x5201ff2e, 0x04e66f63, 0x9fd5059d, 0x02f56df1, 0xa4d5f5a3
.word 0xb469379d, 0xd4b2edb1, 0x5b3eff2f, 0xf9c33c7c, 0xa8fe2b7a, 0x67e585f0, 0x52235448, 0x2f3e1247
.word 0xcc99c009, 0x7c3a39c0, 0xa32d38bf, 0x473dbd6e, 0x67de077e, 0xc81dee89, 0x31d42d13, 0xbaaecb68
.word 0xd4d23d93, 0xf20b3fa3, 0x51c69586, 0xdf7d3fc4, 0xb10bf4de, 0x9fc23890, 0xa74f6faa, 0x951eb374
.word 0x83edf20c, 0xfdf6d762, 0x21bc611e, 0xbe8d12cd, 0xcbc1758f, 0x589a6247, 0xf2dff103, 0x21cd7dc2
.word 0xc67dc368, 0xcf0448ac, 0x17d649bb, 0x70a7cd73, 0x5f910156, 0x3e02160e, 0x24cf71c1, 0xb5b8d2d1
.word 0x067f8f4a, 0xb6930d10, 0xbea72866, 0xe48a49da, 0xe0e8dc41, 0x64e968f6, 0x3e5abf91, 0x2fb83119
.word 0xe6d91b88, 0x828bc148, 0x02543bfc, 0x9a70a052, 0x18504910, 0xa93f6482, 0x1243cf20, 0x9383eb96
.word 0xbf534cd7, 0x1ce6fd77, 0x50a8e788, 0xc0f89cc6, 0x911abd36, 0xea09dd56, 0xc8963212, 0xb714f0a4
.word 0xc6a4ca32, 0x1873beaa, 0x68519fa8, 0xd2db8085, 0xa393f891, 0xf13e2064, 0xacb7874b, 0x4185678e
.word 0x1532c685, 0xa040c094, 0xfb839162, 0xf3e36f26, 0xe1c09f0a, 0x29e2fbde, 0x67c0a121, 0x6f15cd1b
.word 0x61ffed83, 0xd358e3db, 0x57cf89f1, 0x7e5f3862, 0x6a1fd04b, 0xf69d1a14, 0x61a89b6f, 0xfc17138b
.word 0x434e97a0, 0x3890ae53, 0x8e17f365, 0x7c4f2049, 0x244e147c, 0x6bfd0b63, 0xe838ca59, 0x9846a515
.word 0x2e304628, 0x84a69633, 0x05499923, 0x4bb52ddf, 0xf657bcee, 0x7fa7437c, 0x1bddecf6, 0xc6e7ff28
.word 0x2e3aa053, 0x38782488, 0xd2dfe410, 0x4567ec46, 0x36c18a66, 0x7925f3f7, 0x4399a772, 0x4eb38f52
.word 0xf9a98270, 0xd4d7d6d1, 0x3ff9ef5f, 0x47b5311f, 0x1e59a423, 0x58deb03b, 0x496f1463, 0x1f3dfa8a
.word 0xa0195c09, 0x39b4a38e, 0xafa20622, 0x5aec5eb1, 0x3d73c8f7, 0x2f88a0e2, 0x9e5367f2, 0x0e6f2924
.word 0x0be59995, 0x812537f3, 0x7758f5ae, 0x7cae2786, 0x25b2a173, 0x5070a376, 0xb4b75dbb, 0x4c187cfe
.word 0x8b94c551, 0x97719a7d, 0xa7f6dae2, 0x69bd3d61, 0xd88b6c4c, 0x23cf2b2b, 0x3a3aeeea, 0x5a4110a5
.word 0x43040b4a, 0x85d99e78, 0x857a362f, 0xfd92badd, 0x6fa47073, 0xa4257ac7, 0xb5ef94a7, 0xbf1b8950
.word 0xbee05b66, 0x69a5025a, 0x86faedf5, 0xb61c6e73, 0x8ab87b2a, 0xaaf5c445, 0xc049be45, 0xd3057d81
.word 0x5266df77, 0xd8a0d748, 0xa074bbfd, 0xcd1c2407, 0x21af270e, 0x29a0e59d, 0x24c39480, 0x27dd9e7b
.word 0x73f5ed28, 0xd82d8408, 0x848e7268, 0xa8585136, 0x17069667, 0x6d4793c3, 0x669fdf45, 0x34290893
.word 0x564f06d1, 0x749aee6f, 0xb2a8cf54, 0xedbb03f8, 0x73b37f21, 0x16b203d0, 0x97dbc3cc, 0x353a15c3
.word 0x2c8d0c81, 0x82d8483c, 0xd69a829f, 0xaced35d4
.section .region_1,"aw",@progbits;
region_1:
.word 0xaec04a47, 0x933e4f73, 0x25c33f47, 0x6799c4b7, 0x2d3c426c, 0x849b4ad8, 0x69447149, 0x825b3c05
.word 0xda5b2a06, 0xf4fe94ce, 0xb7bef961, 0xde3c8294, 0xd11b7785, 0x5839e052, 0x7fb7e6f6, 0x19e7e2d5
.word 0x3dc19dba, 0x0cc928fc, 0xf179bb88, 0xb9b3b79e, 0x716954a9, 0x90d2eb97, 0x9579b633, 0x8b985fac
.word 0x236786fb, 0x4b26d7c5, 0x842ab705, 0x99fcea98, 0x3508befe, 0xf60b0fea, 0x9fd22f7c, 0x05f16050
.word 0xbc0abb98, 0x088f1fd7, 0xb643d4ed, 0x42f4f83f, 0x17103d27, 0xfb78de0a, 0xa3cdfa68, 0x1c50ec4c
.word 0xdc702d22, 0xc8878523, 0x10409a46, 0x661f19c4, 0x4a4453a6, 0xef65cb4f, 0x27aa505e, 0xa8b95ad7
.word 0x3a001c78, 0x0a1f79a4, 0xe4b05344, 0xbe3f858a, 0x9a3e66db, 0x25c85b6e, 0x50e2a8cf, 0x2470985d
.word 0xc8fb61f6, 0x5d1f96b0, 0xd60a9275, 0x7bb7bb6f, 0x42a6ee7c, 0x07ef982d, 0xf7b9f518, 0x8bd10579
.word 0x88e6fc00, 0x32b28f3c, 0x2c09246f, 0x2340c216, 0x1a591537, 0x9aadc6f1, 0x35cd565c, 0x89e48af8
.word 0xd761aec1, 0xd1d5ec22, 0xc1f42b13, 0x3a8e330c, 0xcc06df97, 0x587b9aee, 0xc5e269ab, 0xcab19d99
.word 0xd0b5fd8a, 0xde0bd3f8, 0x50da774e, 0x5f0d5717, 0xa58e1860, 0x69ca366c, 0x1ce5fb61, 0xce8fb90c
.word 0x6742248e, 0x2bade415, 0x7376abc9, 0xd0bd97ab, 0x433dc1b3, 0x5e17d22c, 0xacd554ef, 0x0d629bd3
.word 0x576a6c44, 0x7179a62c, 0xc3b49c37, 0xebf57fd5, 0xf410bc85, 0x9f16ed4e, 0x3bc07925, 0x14052850
.word 0xb68b3dc9, 0x008a72d1, 0xa9d1f4dc, 0xdcf480cf, 0xe7dfeae0, 0xfb2511f6, 0x9a2a8d01, 0xd634537a
.word 0x5ea3cd84, 0x01f55b24, 0xade44d1a, 0x6ff12994, 0x9bdb1d08, 0xabbf5563, 0xc4ba24fa, 0x7d735d96
.word 0xbb765bf1, 0x07532b18, 0x5257b6a6, 0x1f021f54, 0x055b9662, 0x5aa3583e, 0xbf6c821c, 0x0641baaf
.word 0x26a271f8, 0xc38c5f99, 0x3a4e98f9, 0x51516c38, 0xbd2083ae, 0x2fc5aa16, 0x1ce5813b, 0xc3397a8d
.word 0x84ea7f61, 0x870956c9, 0x5cd75b64, 0xbb555aa4, 0x684af2b4, 0x8997795b, 0x6fbf7742, 0x93b22f63
.word 0xca586906, 0x20f1eda8, 0xc762b8da, 0xccf2f23b, 0x053a226b, 0xfaee0037, 0x41e41560, 0x8a3ebf22
.word 0x1709d214, 0x9148c6b9, 0xed532203, 0xefc674e5, 0x95ed4706, 0x54471574, 0x6e4bc9fc, 0x7d26ebb0
.word 0xaad60dc7, 0x77180a39, 0xa0081481, 0x064eeab5, 0xc27ce313, 0x1945425f, 0x1dc84baf, 0x8cde18c8
.word 0x81e4eb58, 0xbd77783f, 0x2d9001c1, 0x2ef28c63, 0x075f82d5, 0x00a57e53, 0x9c0a8547, 0x5b7267e5
.word 0x9200536f, 0xd18ef29c, 0xda5611f1, 0x1658d9bd, 0x36f0d468, 0x8c95fc76, 0x7f2938e9, 0x0c9343c3
.word 0xc00c6671, 0xd9235ce1, 0x7158171d, 0x65f9f618, 0xcaab8ad5, 0x2d2ee660, 0x2fcdfdf9, 0x2db85204
.word 0xbc1f4e4f, 0xb16f8a30, 0x91ac8074, 0x4a66e92b, 0x59f3d27c, 0x29a60bc2, 0x2db54435, 0xe5b008c7
.word 0x136925ad, 0xd8fc68f4, 0xb6583bb3, 0x65b0e765, 0xd8c262b4, 0x0526a990, 0xdbe94178, 0x860b8c1d
.word 0x9b6ef68a, 0xf446d184, 0x1d5900af, 0xa61b86ba, 0xbb22e03d, 0xa3399960, 0x90dbf353, 0x88253f11
.word 0xa166e07d, 0x1bf81764, 0x26bf0277, 0x5b2388e7, 0xdbc043e9, 0x6a6fef41, 0xddb0e122, 0x92a31787
.word 0x84e1875e, 0x705d41cc, 0xff787c8d, 0xe32b9c09, 0xb9afc482, 0xc9696ab0, 0x04cd2c46, 0xcbfd004d
.word 0x60090c33, 0x83f69fa0, 0xb0116072, 0xf2adb11b, 0x226247d0, 0xca3a0d81, 0x5f18bff5, 0xcc393e4d
.word 0xeb3ae88e, 0xef053d91, 0x83de3b9c, 0xdb839fcf, 0xff80be25, 0x89f8a17c, 0x2d4cc47d, 0x5b534694
.word 0x275bef78, 0x115386cc, 0xe145b5d1, 0x4c659ad8, 0x7aca0e91, 0x150f0e5d, 0x646393d4, 0xf9378f2b
.word 0xdcbd9cc5, 0x89bd1e89, 0x239f0472, 0x6ee220ac, 0x162cf8c5, 0x10820f39, 0x5d824d48, 0x5e384024
.word 0xf824dbc8, 0x93fd1a51, 0x1c68e56f, 0x10764121, 0x69cce385, 0xa58e5dca, 0x590cf668, 0x931b2ae8
.word 0xcd7c3cf2, 0xb2a6dbe2, 0x55831ae4, 0xa1f19704, 0x9c3ea7e6, 0x2244f7a5, 0xe7238a9d, 0x6deb86ea
.word 0x61f55744, 0xacdf8b90, 0x184989c8, 0x2093e5ba, 0x0225ea5f, 0xd8ed0659, 0xe848abd9, 0x07bc3c15
.word 0x2d5b0269, 0xd869e9fc, 0x2224b76b, 0x1a7cc9e4, 0xa97e5f90, 0x89679999, 0x345ca8ff, 0x041d5e55
.word 0x45bf8e58, 0x957a8bf0, 0x0035a32e, 0x70363b57, 0x852bf03f, 0x92fba2a9, 0x12ccfdb8, 0xa0a63844
.word 0x0790227e, 0x2b510a85, 0x45bbdf65, 0x1955786e, 0x01ff1f07, 0x8ec53d64, 0xebc00152, 0x70339a82
.word 0x3841c149, 0x65cdc33d, 0x0439ece5, 0xa621fe70, 0x13b00229, 0x77fb4a94, 0x123a028c, 0x810496dc
.word 0x4160bb0d, 0xf7f44280, 0x56d49629, 0xe4360845, 0x480e0262, 0xfd7b8185, 0xd8dd1aaa, 0x1087146a
.word 0x83c5d52b, 0x2b327d7b, 0xeedf6120, 0x427bf181, 0xcdf4cdec, 0xd1a25f87, 0x45a495ce, 0x8cb26305
.word 0x4788da74, 0x7e915177, 0x6442d32b, 0x1fc904a5, 0x000c2c4f, 0xc168820b, 0xabfc378f, 0xad54d18c
.word 0xe815dc39, 0xa3648fc0, 0x5eae7c69, 0xbbf04d81, 0xa4d20414, 0xedb37db4, 0xfe3f8b7b, 0x9df96c10
.word 0x01c1fc16, 0xb6917c5a, 0x46542696, 0xcb0524da, 0x39d9c506, 0x71954ed2, 0x99529f97, 0x0214c2ec
.word 0x2af3707a, 0x353756c3, 0xf9eaad1c, 0x960dc723, 0x398fb1a1, 0x6fe2b733, 0xf8b94b0f, 0x27a16a61
.word 0xf086cca8, 0xf1338f38, 0x4c047aec, 0xf4a06fdf, 0x3e4fbb1e, 0x34dfbc02, 0xc8223947, 0xc2fa8d1b
.word 0x05fe2421, 0xa1460f00, 0xb5aea253, 0x07882450, 0x0401fde0, 0x672fd39a, 0x8bb14687, 0x1005dc1b
.word 0x89f6b135, 0xf1573066, 0xaf270414, 0xd383cfcc, 0xf68709b3, 0xd7270e5f, 0xf453db0a, 0xa3d56e9f
.word 0x9ad37e5c, 0x2e994473, 0x3a4bac69, 0xcb7b44ed, 0x4384a4ac, 0xdbc55693, 0x5f876a67, 0x64c4870f
.word 0xdeb923d4, 0x446c67a8, 0x6c8dfa82, 0x3658c735, 0xf9c835e1, 0xba32f0aa, 0x30f75d9c, 0x3dffcb74
.word 0x47986d80, 0xad7f970f, 0x519e6a01, 0xe54fe9d2, 0x451653f4, 0x5a59e7ec, 0xaac65986, 0x4aa2a24d
.word 0xe2d73086, 0xc8dcd2fe, 0x304624d1, 0xd6600175, 0x14adafcd, 0x867c5317, 0x357376d4, 0x24a53fe4
.word 0xec3188bd, 0x022dfcfa, 0x53632353, 0x8c715c80, 0xd9308b29, 0x83f8b248, 0x2f660b2a, 0x2dd79ce8
.word 0x1c1e542a, 0xf3d5c3d3, 0xa4695b33, 0x4d2aeb47, 0xc558839f, 0x637b6e44, 0xb1c2afc4, 0xd720d243
.word 0x90031fec, 0x51674f8c, 0x64c295da, 0x6fdef09b, 0x1bdedfa2, 0x3cd25aa7, 0xbec25ccd, 0x410d841a
.word 0x808f577a, 0x1ffa4364, 0x0cd59a72, 0xf32185a9, 0xa4518a09, 0xf3e16642, 0xa944b7ff, 0xfb7fce81
.word 0xb86c4694, 0x6e4841ce, 0xf02b8b3d, 0x78061961, 0xee1e6d87, 0x5c098988, 0xe4d8ecd2, 0x66b7c6ed
.word 0x43fc6fa5, 0x5c7e3691, 0x084c42ae, 0x62a135cd, 0x96df4438, 0x648dd00b, 0x71356f2e, 0x593c6c3e
.word 0x84f85304, 0x1fad8407, 0xb7d7ec8e, 0xcc52dbce, 0xc237a012, 0x913c67f7, 0x6bfbf21c, 0xf4d41328
.word 0x27a683d4, 0xc3c81b4c, 0x8ba40363, 0x1cca8492, 0xc9ac1087, 0xfb2e443d, 0x0f8fe2d3, 0x4d0ef7d3
.word 0xa0d1c62f, 0x84d80e19, 0x2b2f10bd, 0xd7f8453a, 0x0de9c2c0, 0x5bac4ead, 0x84cfd4a0, 0x81fc07cd
.word 0xc28706fe, 0x295cdf2b, 0x46b58c8d, 0x3400ce09
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
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
                  add x31, x17, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x31, x17, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x25, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x25, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x25, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x25, x27, ecall_handler
                  li x27, 0x1
                  beq x25, x27, instr_fault_handler
                  li x27, 0x5
                  beq x25, x27, load_fault_handler
                  li x27, 0x7
                  beq x25, x27, store_fault_handler
                  li x27, 0xc
                  beq x25, x27, pt_fault_handler
                  li x27, 0xd
                  beq x25, x27, pt_fault_handler
                  li x27, 0xf
                  beq x25, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x17, x31, zero
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
                  add x17, x31, zero
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
                  add x17, x31, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x17, x31, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x17, x31, zero
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
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x17, x31, zero
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
