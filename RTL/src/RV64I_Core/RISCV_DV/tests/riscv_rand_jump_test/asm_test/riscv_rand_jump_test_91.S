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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0xf
                  li x1, 0x80000000
                  li x2, 0xc
                  li x3, 0xfd7c3dfd
                  li x4, 0xfc1defeb
                  li x5, 0x5faf8690
                  li x6, 0xd
                  li x7, 0x3
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xfe431f55
                  li x12, 0x80000000
                  li x13, 0x50bff533
                  li x14, 0xfc2f4604
                  li x15, 0x7
                  li x16, 0x466e965
                  li x17, 0x2
                  li x19, 0x3
                  li x20, 0xa0bcdf4c
                  li x21, 0xf2d70644
                  li x22, 0xfd398def
                  li x23, 0xf97d9254
                  li x25, 0x9
                  li x26, 0x3
                  li x27, 0xf
                  li x28, 0xa51f4cda
                  li x29, 0xf2c47fd4
                  li x30, 0xf9381a31
                  li x31, 0xd5e53db3
                  la x18, user_stack_end
main:             la           s7, sub_2
                  sll          t4, s3, s2
                  addi         s7, s7, 845
                  sll          t0, a7, a7
                  add          s10, s5, s4
                  addi         t3, a4, -1276
                  andi         s5, s6, 264
                  sltu         gp, t4, s10
                  slti         sp, s10, -51
                  sltiu        zero, s8, -846
                  blt          sp, t3, main_j2 #branch to jump instr
                  and          sp, s5, tp
main_j2:          jalr         a3, s7, -845 #jump main -> sub_2
                  andi         t5, a2, 126
                  add          s10, a7, a6
                  or           a5, t3, s4
                  la           t0, sub_4
                  xor          s7, a0, s11
                  addi         t0, t0, -628
                  or           s10, gp, t4
                  ori          a4, a7, 61
                  nop
                  srl          s10, t5, tp
                  sltiu        s9, t3, 492
main_j3:          jalr         a3, t0, 629 #jump main -> sub_4
                  la           s6, sub_3
                  slli         a2, a4, 14
                  sra          s5, t0, s3
                  addi         s6, s6, -138
                  sltiu        tp, t1, 562
                  or           a1, gp, s7
                  slli         t2, a1, 12
                  slti         s3, s5, -1092
                  or           sp, a0, t5
                  xori         a3, s3, -455
main_j4:          jalr         a3, s6, 139 #jump main -> sub_3
                  la           a6, region_0+901 #start riscv_load_store_rand_instr_stream_0
                  lw           t3, -165(a6)
                  lb           zero, 394(a6)
                  slli         s9, s11, 31
                  sltiu        t5, s8, 1593
                  lhu          t0, -447(a6)
                  add          t3, a7, s3
                  and          s6, s8, a2
                  srli         t2, t2, 16
                  lh           sp, -553(a6)
                  lb           a3, -312(a6)
                  andi         t6, t0, -41
                  addi         a5, zero, -1803
                  addi         a7, s7, -891
                  lui          a4, 888344
                  sh           t0, -681(a6)
                  lh           s1, 351(a6)
                  lui          t3, 733976
                  addi         s3, a2, 1092
                  sltiu        s5, ra, 634
                  and          a5, s1, t6
                  lb           s0, 497(a6)
                  lbu          s5, 723(a6)
                  lb           s5, 53(a6)
                  andi         s10, t2, 404
                  and          t0, zero, a5
                  sb           t0, -84(a6)
                  lb           t3, 30(a6)
                  srai         s1, a1, 2
                  andi         t4, s11, 562
                  lb           a7, 714(a6)
                  lh           zero, -403(a6)
                  lb           t2, 222(a6)
                  lb           s7, -204(a6)
                  sb           a2, 32(a6)
                  sub          t1, s3, s9
                  lui          t5, 306363
                  nop
                  sh           ra, -373(a6)
                  nop
                  lh           s11, 535(a6)
                  lbu          s6, 800(a6)
                  slti         a3, a3, -1852
                  sltiu        a7, sp, -869
                  lbu          a4, -2(a6)
                  add          s7, tp, s10
                  slli         t4, s8, 11
                  sll          a2, a4, a1
                  sb           t3, 67(a6) #end riscv_load_store_rand_instr_stream_0
                  ori          ra, s11, 1473
                  beq          s7, s11, 3f
                  lui          a3, 373305
3:                srai         a6, ra, 7
                  or           a3, a2, s2
                  sll          s11, s2, s11
                  slt          a1, a1, s3
                  la           s5, sub_1
                  nop
                  xor          t2, sp, t4
                  xor          t3, s0, s4
                  slti         t1, s8, 983
                  sltu         t0, gp, a0
                  sra          s4, s10, zero
                  srl          a2, s7, zero
                  sll          s4, gp, a2
                  addi         s5, s5, -201
                  slli         a1, s3, 24
                  blt          s8, zero, main_j1 #branch to jump instr
                  sltiu        s9, s0, 1492
main_j1:          jalr         a3, s5, 202 #jump main -> sub_1
                  addi         s3, s4, 569
                  blt          a1, s3, 9f
9:                srl          t0, s11, t4
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            andi         a1, s9, 907
                  bne          t3, t0, sub_9_stack_p
                  andi         ra, s11, 1925
sub_9_stack_p:    addi         s2, s2, -48
                  sw           a3, 4(s2)
                  or           s5, t6, s8
                  sll          t3, t6, s5
                  slli         a1, s7, 14
                  xor          s3, s5, s4
                  bne          a3, t6, 13f
                  xor          a5, s7, a2
                  sub          s6, s2, s11
                  ori          s6, s4, -1862
                  slt          t6, s9, s1
                  sltu         s9, s0, s11
                  slt          a6, s4, s8
                  xor          s10, s7, s8
                  or           zero, tp, a0
                  nop
                  xori         a6, ra, 49
13:               srl          t4, s5, gp
                  add          a1, s2, s11
                  lw           a3, 4(s2)
                  xori         a4, s9, 529
                  srai         s4, a6, 26
                  addi         s2, s2, 48
                  srl          s1, a5, t6
                  auipc        s1, 352150
                  sll          s9, ra, a2
                  slt          s1, t4, a4
                  and          s6, s4, s4
31:               addi x22, x13, 0
31:               jalr x22, x22, 0
sub_6:            bne          a1, s2, sub_6_stack_p
sub_6_stack_p:    addi         s2, s2, -36
                  sra          s6, a1, s4
                  sub          t4, s5, a3
                  xori         t6, a1, 107
                  sw           a3, 4(s2)
                  or           s10, a1, ra
                  la           t5, region_1+1235 #start riscv_load_store_rand_instr_stream_0
                  sw           s5, -31(t5)
                  sll          t1, s11, t1
                  lh           t0, 23(t5)
                  lbu          t6, 8(t5)
                  auipc        s5, 352515
                  nop
                  sub          s0, s0, a7
                  sb           s4, -49(t5)
                  srai         zero, t1, 11
                  slli         s11, tp, 22
                  sub          a4, s6, ra
                  srl          t4, t0, zero
                  sh           a1, 15(t5)
                  sltu         t1, s7, sp
                  sub          s7, s3, s0
                  auipc        a4, 702749
                  lb           ra, 36(t5)
                  lhu          a3, 53(t5)
                  lh           ra, 39(t5)
                  sra          a3, t1, t4
                  srl          a3, a1, s4
                  sra          zero, s8, t4
                  sub          a6, t4, a1
                  lbu          a3, 36(t5)
                  sltiu        a7, ra, -21
                  sb           t2, 21(t5)
                  sra          t6, t2, s10
                  lh           s7, -51(t5)
                  and          a6, s6, gp
                  srl          a4, s3, s11
                  slt          a5, s9, a1
                  sltu         sp, s6, t0
                  auipc        gp, 642757
                  sltiu        a5, t3, -1049
                  lhu          s6, 11(t5)
                  lbu          ra, 13(t5) #end riscv_load_store_rand_instr_stream_0
                  bltu         s4, s7, 12f
                  bgeu         s4, a0, 21f
                  bgeu         a7, s0, 16f
                  slti         ra, t0, -1321
                  xor          a7, s11, s1
                  sll          t3, s5, a4
                  bgeu         s3, s9, 26f
                  add          a5, a7, s8
                  sub          gp, s3, s4
                  nop
                  xori         t4, t1, 582
                  slt          a5, t4, t3
12:               srl          a4, s1, a5
                  auipc        a5, 89221
                  bge          s0, a2, 27f
                  srai         a1, s5, 15
16:               bgeu         a3, a5, 19f
                  lui          sp, 845825
                  sll          s6, s3, s0
19:               srai         a6, t0, 21
                  slti         s3, a3, 1930
21:               sll          s5, s5, a2
                  bge          tp, ra, 41f
                  sll          t1, s6, s10
                  srli         s5, s7, 3
                  srai         s7, s7, 3
26:               ori          s4, a7, 728
27:               sltu         tp, t1, a6
                  srl          t0, s10, s1
                  srai         a7, a7, 6
                  bne          s5, t5, 43f
                  srli         s4, s4, 6
                  bgeu         s9, s6, 35f
                  bne          a5, s9, 47f
                  slli         zero, s2, 23
35:               slli         gp, s10, 15
                  bgeu         sp, s6, 37f
37:               andi         zero, a1, 1946
                  srl          sp, gp, t5
                  slli         t3, s2, 31
                  slt          s7, ra, t0
41:               beq          a5, a2, 51f
                  add          s10, s3, s7
43:               bge          a6, zero, 63f
                  and          a1, ra, s11
                  sra          s4, tp, t5
                  bgeu         s2, a0, 64f
47:               bltu         t1, s9, 59f
                  srl          t1, s2, s11
                  slli         t2, t4, 17
                  srl          s11, a4, t5
51:               ori          t2, a1, -1419
                  nop
                  srai         a5, t2, 20
                  sll          s5, s8, t4
                  and          t3, t4, tp
                  xor          t4, t2, t5
                  sltu         a7, sp, t4
                  andi         s9, s4, -1057
                  sltu         a3, a6, s9
                  addi         s3, t1, 1069
                  addi         s1, t6, -1062
                  slt          t6, s8, t1
                  add          s11, t0, a0
                  sll          t5, s2, t5
sub_6_j10:        jal          a3, sub_10 #jump sub_6 -> sub_10
                  bne          t4, s11, 63f
                  xor          s1, t2, s2
59:               bgeu         ra, ra, 74f
                  sltiu        a4, s10, 415
                  slti         s0, t3, -1395
                  slt          s11, ra, a7
63:               srli         a1, s0, 27
64:               slti         t3, s5, 863
                  srai         s5, t4, 14
                  bltu         t2, a4, 75f
                  add          s6, a0, a7
                  nop
                  srli         sp, s10, 18
                  xor          a3, tp, ra
                  bge          t2, a2, 77f
                  xori         ra, s11, 1597
                  slli         t6, a1, 22
74:               sll          s11, s0, s5
75:               lui          s5, 648198
                  and          t5, tp, t5
77:               srai         ra, zero, 24
                  or           gp, s3, tp
                  auipc        t4, 784875
                  bltu         t2, s11, 95f
                  bge          t0, s3, 89f
                  srl          t4, s5, a2
                  srli         a1, s2, 25
                  blt          t3, t5, 98f
                  slt          s3, t3, gp
                  nop
                  addi         s5, s0, -353
                  and          tp, s10, a4
89:               bge          a6, t1, 100f
                  slt          a1, a2, s7
                  sltu         a7, s9, t0
                  lui          s7, 295846
                  lui          a1, 338955
                  lui          s10, 599662
95:               xor          a1, s1, t0
                  sll          t6, t4, s11
                  srl          a5, t2, a2
98:               sra          t1, t1, t3
                  srl          a3, t6, s8
100:              addi         t5, a1, -990
                  auipc        s9, 51763
                  srl          s10, s10, ra
                  sra          a1, a1, s0
                  sll          gp, s10, s0
                  sll          s1, t6, t0
                  ori          a4, s5, -1976
                  slt          t1, ra, t6
                  nop
                  auipc        a2, 335544
                  srli         t5, a7, 25
                  bne          a1, t6, 123f
                  lui          t2, 919031
                  slli         s7, s7, 23
                  blt          t1, s3, 133f
                  sltu         s6, s4, sp
                  nop
                  bltu         t6, t2, 119f
                  bge          a5, s9, 137f
119:              sltu         a3, s2, t1
                  andi         a1, t1, 1733
                  slti         t3, a7, -339
                  addi         t2, s4, 1491
123:              slti         t2, t2, -295
                  sra          t6, s3, s5
                  sltiu        tp, a6, -1597
                  srli         a5, s1, 19
                  sll          t0, s5, t1
                  bgeu         a3, s8, 142f
                  xor          s4, s2, a6
                  srai         s10, a2, 3
                  slt          t1, s3, s7
                  ori          a5, s11, -1638
133:              andi         t5, t4, 1234
                  bltu         s1, t6, 152f
                  addi         a3, t3, 762
                  bge          s9, tp, 153f
137:              bltu         zero, a7, 143f
                  andi         t3, a4, 203
                  bltu         s4, a4, 158f
                  or           sp, s10, s11
                  auipc        s11, 249510
142:              sra          tp, a0, s3
143:              auipc        sp, 847328
                  bge          sp, a0, 158f
                  sltu         t3, t6, tp
                  bne          s9, s10, 164f
                  nop
                  auipc        s4, 10307
                  lui          s4, 481902
                  slli         a4, s5, 18
                  bge          s0, s4, 163f
152:              slli         a7, a7, 6
153:              lui          a2, 509163
                  srai         zero, s8, 3
                  addi         s10, s2, 2045
                  beq          s1, s1, 167f
                  blt          t1, s9, 175f
158:              bgeu         t1, t4, 172f
                  or           tp, tp, s2
                  srl          a1, t2, t3
                  slli         s3, s11, 26
                  or           tp, t2, s2
163:              lui          s3, 432005
164:              bltu         a4, s6, 173f
                  lui          tp, 338094
                  sltiu        t3, s9, 769
167:              sub          a6, s4, a1
                  lui          s11, 839569
                  slt          a7, a5, s0
                  add          a1, s8, s6
                  bne          t0, a2, 190f
172:              slt          t3, s9, t3
173:              slt          s6, a6, t0
                  bge          a6, s10, 177f
175:              srl          s1, a7, s3
                  addi         a3, a7, -585
177:              add          a5, t3, t2
                  xori         t0, sp, -1722
                  sltu         tp, t1, s2
                  beq          a4, s9, 199f
                  bne          a2, a0, 195f
                  beq          t0, a2, 202f
                  beq          a1, t1, 195f
                  sll          s5, s1, ra
                  ori          t1, t6, -566
                  or           a5, s0, s3
                  srl          t1, s6, a7
                  auipc        a7, 464875
                  srl          t6, t1, s10
190:              bne          a0, zero, 191f
191:              slli         s9, a0, 14
                  srli         ra, s2, 6
                  sll          s10, gp, t5
                  andi         zero, t1, -411
195:              addi         s6, t5, 384
                  xor          s6, sp, a5
                  sra          s6, s6, a0
                  lui          s5, 438819
199:              srai         a5, s2, 13
                  sltu         s5, a7, a3
                  sltu         s6, s6, t4
202:              sub          t2, a0, a1
                  lui          t6, 726212
                  xor          t5, s10, ra
                  xor          a6, s2, t5
                  bge          t3, a2, 221f
                  slli         a2, sp, 1
                  sub          gp, tp, s1
                  srli         s7, s7, 18
                  srai         t1, s5, 5
                  bne          s4, a5, 213f
                  slli         s1, a5, 18
213:              xori         t3, a3, 844
                  lui          s4, 24118
                  sub          t0, tp, a0
                  addi         zero, t0, -1586
                  srli         t2, s6, 4
                  auipc        a2, 703191
                  andi         a6, t6, 1184
                  xor          ra, a2, a6
221:              ori          zero, s1, -1576
                  or           s10, a1, t6
                  sll          t2, a3, s8
                  sra          t0, a2, a2
                  blt          s0, sp, 229f
                  ori          sp, gp, -522
                  sltu         t4, t5, a4
                  srli         t3, s11, 16
229:              andi         a3, s1, 742
                  sll          s10, a5, s11
                  lw           a3, 4(s2)
                  nop
                  addi         s2, s2, 36
                  slti         sp, s11, -672
                  slt          s7, a1, s10
                  or           s3, sp, s5
290:              addi x13, x13, 0
290:              jalr x13, x13, 0
sub_2:            xori         t1, a4, 1544
                  bne          t4, t2, sub_2_stack_p
sub_2_stack_p:    addi         s2, s2, -56
                  addi         t2, s11, 1187
                  sw           a3, 4(s2)
                  and          a6, s11, t2
                  lui          a1, 218047
                  sra          a4, t6, s0
                  sub          a7, s3, a1
                  ori          gp, ra, 1009
                  xor          a5, s9, s2
                  sll          a5, s1, t5
                  auipc        a4, 467931
                  xor          a4, s3, a2
                  srai         a7, s2, 12
                  beq          t2, s4, 24f
                  nop
                  and          s5, s9, a1
                  add          s4, s10, a5
                  slli         s9, sp, 6
                  addi         zero, a6, -763
                  srai         a6, s0, 7
                  beq          a3, a6, 32f
                  nop
                  slti         a3, s10, 393
                  bltu         a5, s4, 23f
                  bge          s10, zero, 36f
                  sltu         t0, ra, s10
                  srl          t1, t1, a4
23:               sra          s11, ra, gp
24:               nop
                  sll          a4, t4, a3
                  addi         s6, sp, 121
                  sll          t1, s2, a1
                  beq          sp, s1, 31f
                  slti         s5, s10, 125
                  sub          a2, s0, s7
31:               xori         s0, t0, -987
32:               blt          a4, zero, 50f
                  blt          a2, gp, 43f
                  bge          tp, a2, 47f
                  beq          t6, s11, 49f
36:               slti         s1, s11, -1485
                  auipc        t2, 439651
                  slti         s7, a1, -467
                  ori          t0, t5, -954
                  blt          s4, t0, 48f
                  lui          s3, 1025910
                  and          t0, s2, t6
43:               add          s3, tp, sp
                  sltu         gp, a4, t5
                  slli         s7, s4, 3
                  auipc        t5, 316553
47:               srl          s0, a5, t5
48:               bltu         t1, a7, 55f
49:               bgeu         s4, s4, 53f
50:               and          t5, t2, s6
                  and          s0, t1, t6
                  sub          s3, a2, t1
53:               and          s9, zero, s0
                  andi         zero, s10, 870
55:               and          a1, t5, t2
                  sltiu        ra, s9, 1677
                  sltiu        gp, t3, 1266
                  bne          a5, gp, 60f
                  sll          t4, a3, a1
60:               slli         s5, s0, 31
                  andi         a2, s3, -176
                  lui          gp, 973063
                  blt          t5, s0, 73f
                  auipc        s9, 290284
                  blt          tp, sp, 74f
                  and          s4, a2, s6
                  sra          t5, ra, sp
                  srai         t0, ra, 4
                  bge          gp, sp, 74f
                  sltu         t4, s2, a4
                  slli         s4, zero, 22
                  bgeu         s11, t3, 77f
73:               bgeu         t1, zero, 75f
74:               srai         ra, t1, 11
75:               sub          a6, a4, tp
                  blt          s10, s2, 91f
77:               sltiu        t1, t5, -260
                  slt          t5, t0, s9
                  bltu         a6, ra, 91f
                  xori         a5, gp, 1841
                  sub          s9, s0, sp
                  sltu         zero, a0, s2
                  slti         s10, t6, 529
                  blt          t4, a7, 104f
                  slli         t5, t2, 26
                  bltu         gp, a5, 106f
                  xori         t0, a4, -1676
                  andi         s4, s2, -131
                  bge          a4, s5, 95f
                  slti         a7, s9, -1381
91:               slli         tp, tp, 15
                  srai         gp, t4, 2
                  addi         t6, t1, -1970
                  xori         t4, tp, 899
95:               sra          ra, s6, a5
                  slli         s5, t4, 13
                  beq          s7, s4, 115f
                  lui          a2, 387369
                  slli         t3, a3, 13
                  ori          a1, s9, -1670
                  add          ra, s9, ra
                  beq          a6, t3, 104f
                  bgeu         s10, ra, 109f
104:              sll          a5, sp, t4
                  sltiu        s6, a6, 286
106:              and          t1, a0, gp
                  xor          s1, t0, t2
                  bltu         a3, s1, 122f
109:              and          a2, s0, s9
                  nop
                  bgeu         s7, t3, 121f
                  add          s11, gp, a6
                  slti         tp, a3, -1745
                  ori          s6, s9, -1699
115:              srl          a4, s1, sp
                  beq          gp, s4, 122f
                  beq          s0, t2, 122f
                  blt          s0, zero, 122f
                  sltiu        s0, sp, -389
                  bne          tp, tp, 122f
121:              bltu         t6, zero, 122f
122:              srl          s11, a5, s3
                  lw           a3, 4(s2)
                  sub          a6, s0, a4
                  addi         s4, s4, -1889
                  addi         s2, s2, 56
                  ori          t2, t0, -1713
134:              addi x17, x13, 1
134:              jalr x17, x17, 0
sub_5:            xor          s10, tp, t6
                  bgeu         sp, gp, sub_5_stack_p
                  srl          ra, a5, t5
                  lui          s7, 761296
                  srai         t0, s6, 10
                  addi         a6, s11, -444
sub_5_stack_p:    addi         s2, s2, -56
                  sw           a3, 4(s2)
                  ori          s10, tp, -164
                  sltiu        t0, s4, -745
                  la           a2, sub_7
                  slti         s10, a6, 1150
                  sltiu        t6, s0, 2030
                  and          t4, a1, s0
                  sltu         t2, s3, s2
                  addi         a2, a2, 362
                  and          s5, s10, t3
sub_5_j6:         jalr         a3, a2, -362 #jump sub_5 -> sub_7
                  sltu         s11, tp, a0
                  slt          s9, a5, t1
                  lui          t5, 577437
                  sub          s1, t4, s1
                  srai         t6, sp, 28
                  sub          a5, a7, t0
sub_5_j7:         jal          a3, sub_6 #jump sub_5 -> sub_6
                  la           a2, sub_8
                  sll          t5, a2, s0
                  sub          s9, s0, t4
                  nop
                  xor          s5, s11, s3
                  srai         s11, gp, 12
                  add          s10, a7, t4
                  addi         a2, a2, -364
                  sll          a3, t5, s4
                  srai         t3, t3, 26
                  nop
sub_5_j8:         jalr         a3, a2, 365 #jump sub_5 -> sub_8
                  slti         ra, t1, -1774
                  xor          t0, a7, zero
                  or           a6, ra, t2
                  nop
                  or           a4, s3, a7
                  srli         zero, tp, 9
sub_5_j9:         jal          a3, sub_8 #jump sub_5 -> sub_8
                  nop
                  srli         a7, t6, 25
                  bne          s5, t2, 9f
                  andi         s11, zero, 1887
                  xor          t1, s0, a5
                  srai         ra, t0, 5
                  nop
                  bne          s6, a0, 21f
                  srai         a6, s2, 28
9:                lui          t5, 272564
                  or           a3, a6, s4
                  beq          a5, a2, 21f
                  and          gp, a2, s0
                  ori          s10, s6, 209
                  and          t5, a2, s6
                  srl          s1, t4, a3
                  bgeu         t4, s6, 32f
                  sltiu        t6, t2, -1896
                  auipc        s4, 753375
                  addi         zero, s9, -727
                  and          a6, s0, a6
21:               addi         gp, t2, 839
                  sll          gp, t4, s1
                  auipc        tp, 5396
                  sltu         t6, s6, s7
                  andi         a6, a6, 664
                  slt          ra, s1, s10
                  slti         a3, a6, -223
                  sltu         t2, s11, s8
                  slli         t6, a2, 17
                  sra          a3, s6, t1
                  bge          s4, a7, 38f
32:               andi         s5, s6, -495
                  and          a7, t0, tp
                  and          s7, tp, t2
                  slli         t3, sp, 15
                  bltu         a4, t6, 47f
                  nop
38:               or           t3, gp, s0
                  sra          t5, s5, tp
                  xori         zero, a7, -572
                  bge          t2, a3, 42f
42:               bne          s11, s1, 47f
                  and          a2, t0, s9
                  sub          t3, t6, s2
                  andi         gp, s1, 667
                  srli         s10, s9, 12
47:               srl          s3, s3, t0
                  sll          a1, s6, a3
                  and          s11, tp, zero
                  lw           a3, 4(s2)
                  nop
                  addi         s2, s2, 56
                  sltiu        s0, a7, 845
                  srai         t3, a0, 17
                  sll          a5, s0, t5
100:              addi x21, x13, 1
100:              jalr x21, x21, 0
sub_8:            bge          a6, a1, sub_8_stack_p
                  srl          a6, a2, tp
sub_8_stack_p:    addi         s2, s2, -36
                  sw           a3, 4(s2)
                  srli         ra, a4, 16
                  srl          s9, gp, t0
                  sra          s7, ra, t2
                  xor          s3, s11, s11
                  xori         s7, s0, -1716
                  la           a1, sub_9
                  andi         a3, t6, 1596
                  addi         s1, s6, -636
                  addi         a1, a1, -936
                  addi         s5, s1, -59
                  andi         t3, s6, 2001
sub_8_j12:        jalr         a3, a1, 937 #jump sub_8 -> sub_9
                  slli         s7, t2, 17
                  slli         s5, gp, 18
                  bgeu         a1, s3, 12f
                  sub          s9, t3, a7
                  beq          s4, s6, 6f
                  bne          t4, t3, 14f
6:                blt          zero, a5, 14f
                  slli         t4, s4, 20
                  lui          s4, 553042
                  add          a4, sp, s1
                  xor          t5, a5, t4
                  sltiu        a3, a2, -1074
12:               srli         a7, a3, 15
                  addi         t0, a6, -1146
14:               nop
                  lw           a3, 4(s2)
                  addi         s2, s2, 36
                  sltiu        zero, s4, -833
                  andi         a1, a3, -2012
                  srli         s7, s2, 12
                  srl          gp, a7, gp
                  and          s0, s3, t4
38:               addi x15, x13, 1
38:               jalr x15, x15, 0
sub_7:            andi         sp, s7, -1015
                  addi         s2, s2, -64
                  sltiu        a6, s0, -1442
                  sll          s10, s4, s3
                  sw           a3, 4(s2)
                  sub          a5, s2, a5
                  sltu         s6, sp, a5
                  sll          s11, t2, t0
                  srl          s1, t6, s5
                  lui          a3, 476262
                  la           a7, sub_9
                  srl          t4, s9, a6
                  slt          t6, t2, tp
                  srai         t0, t4, 26
                  sub          t3, t0, a2
                  ori          s11, s6, 1101
                  add          sp, a6, zero
                  addi         a7, a7, -754
                  andi         s4, a2, 129
sub_7_j11:        jalr         a3, a7, 754 #jump sub_7 -> sub_9
                  sltu         zero, a3, s8
                  xor          t6, t2, t2
                  ori          s10, t2, 1955
                  ori          s1, a4, -1281
                  srli         a4, a0, 26
                  beq          s6, s2, 16f
                  auipc        a5, 447944
                  andi         gp, a2, -133
                  bltu         a0, a6, 9f
9:                xori         sp, s10, 860
                  or           t2, a5, s6
                  srl          t0, s8, ra
                  xor          s6, a0, s6
                  slli         s9, s11, 7
                  bge          t4, t4, 16f
                  or           t5, t6, t6
16:               or           t3, s10, a3
                  lw           a3, 4(s2)
                  slt          a2, a3, s3
                  sltu         zero, sp, t1
                  sll          sp, s8, t3
                  sra          s5, a6, a6
                  or           t0, zero, t0
                  lui          gp, 172186
                  or           s11, a4, s0
                  addi         s2, s2, 64
                  srl          a2, s2, zero
47:               addi x1, x13, 1
47:               jalr x1, x1, 0
sub_3:            ori          a4, s3, -603
                  sll          s9, a6, t2
                  addi         s2, s2, -32
                  xori         s7, s11, -2000
                  slti         a6, t4, -1617
                  sltu         s0, t0, a7
                  sltiu        gp, gp, -1409
                  slli         sp, s2, 24
                  sltu         s0, t3, a1
                  sw           a3, 4(s2)
                  addi         sp, t6, 1691
                  sll          zero, s6, tp
                  la           a3, sub_5
                  nop
                  sra          a6, s2, t3
                  auipc        t0, 393974
                  addi         a3, a3, -471
                  beq          tp, s5, sub_3_j5 #branch to jump instr
                  add          s3, t6, s5
                  slli         a1, sp, 15
sub_3_j5:         jalr         a3, a3, 471 #jump sub_3 -> sub_5
                  bgeu         s1, s4, 3f
                  sll          gp, s2, t1
                  sra          a3, s2, t3
3:                beq          a4, a7, 9f
                  andi         t5, a0, -1626
                  andi         s0, gp, 1413
                  beq          s5, a4, 9f
                  ori          t5, t1, -965
                  lui          s7, 254581
9:                srl          s3, t6, s4
                  add          s11, t1, s5
                  nop
                  srli         a5, t5, 9
                  srl          zero, a6, a3
                  slti         s9, zero, 252
                  lw           a3, 4(s2)
                  addi         s2, s2, 32
                  slt          a6, t0, a6
                  sltu         sp, a5, a0
                  nop
                  srli         s11, t1, 30
42:               addi x2, x13, 0
42:               jalr x2, x2, 0
sub_4:            sub          a2, s5, a7
                  auipc        t1, 324801
                  blt          s2, a7, sub_4_stack_p
                  ori          a7, t3, 1493
                  slt          gp, s9, s7
                  sll          a2, s4, a0
sub_4_stack_p:    addi         s2, s2, -40
                  srli         s9, s8, 25
                  sw           a3, 4(s2)
                  sub          ra, s11, zero
                  la           sp, region_1+415 #start riscv_load_store_rand_instr_stream_0
                  sra          a2, sp, a5
                  lhu          a3, 55(sp)
                  andi         t1, t0, -984
                  sub          s5, s7, s4
                  sh           t6, -61(sp)
                  sra          s3, a2, a0
                  slli         s7, s6, 24
                  lb           s11, -39(sp)
                  add          a2, t2, s1
                  andi         s6, s4, -1146
                  xor          t1, a6, s1
                  sra          t4, s1, a1
                  xor          a6, t5, sp
                  xor          a5, gp, t0
                  sltu         a3, a4, zero
                  lbu          t3, -64(sp)
                  lb           a5, 0(sp)
                  andi         s10, t1, -941
                  lb           t6, 26(sp)
                  lbu          s4, -9(sp)
                  srli         t1, a3, 29
                  lb           s10, -32(sp)
                  xor          s9, s7, s10
                  or           a7, s2, s4
                  ori          s1, a6, -930
                  sltu         t5, s7, zero
                  lb           t5, -40(sp)
                  lh           t3, -9(sp)
                  sw           t2, -3(sp)
                  sltiu        t6, s9, 1486
                  slli         gp, s10, 0
                  lbu          a2, 39(sp)
                  sh           t1, -49(sp)
                  sb           a0, -62(sp)
                  lbu          s9, -49(sp)
                  slti         s0, s4, -1539
                  sh           gp, 35(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_0+1873 #start riscv_load_store_rand_instr_stream_1
                  lbu          t4, -20(s10)
                  nop
                  lb           s11, 70(s10)
                  addi         t5, s5, -1629
                  xori         s6, ra, 1678
                  lbu          a6, 102(s10)
                  srai         ra, t5, 8
                  srl          tp, a3, s6
                  sub          t2, s4, a6
                  lhu          s11, 41(s10)
                  lbu          a6, 34(s10)
                  lb           a3, -246(s10)
                  slti         t0, s3, -527
                  lbu          t5, -108(s10)
                  slli         s5, s0, 21
                  ori          s4, s2, -1691
                  lh           a5, 53(s10)
                  or           a6, s3, t3
                  lbu          a6, -14(s10)
                  sltu         s11, a2, a5
                  lb           a3, -62(s10)
                  lh           s4, -73(s10)
                  slti         gp, t4, -1651
                  sh           s2, 25(s10)
                  lbu          s9, -42(s10)
                  add          t1, a2, t4
                  add          s5, t5, s1
                  slt          s5, s8, t1
                  lw           s4, -189(s10) #end riscv_load_store_rand_instr_stream_1
                  lui          t2, 716198
                  slti         a5, a0, 325
                  blt          s6, sp, 4f
                  or           t5, s10, t3
4:                bltu         ra, s9, 20f
                  srl          t1, s0, s11
                  sll          t0, a3, ra
                  slt          s5, t1, t1
                  sra          t6, t4, t2
                  bne          s11, t0, 16f
                  addi         s9, s7, 366
                  srli         a4, s8, 15
                  beq          t5, a2, 20f
                  andi         t6, s7, -921
                  slli         a7, s11, 22
                  andi         s4, sp, 1983
16:               andi         s5, t0, -1407
                  bltu         t0, a1, 33f
                  sltiu        s6, t4, 1153
                  ori          s5, s0, 1882
20:               auipc        sp, 429548
                  lui          s10, 388195
                  sltiu        a7, a5, -570
                  sltiu        tp, s10, 53
                  and          zero, s7, a7
                  or           t5, a3, a2
                  or           t0, t6, s2
                  bgeu         s4, t1, 28f
28:               bge          sp, s11, 37f
                  sll          s1, s8, a2
                  srli         s5, a4, 15
                  beq          a5, t2, 33f
                  slti         s10, s7, -1533
33:               sub          a3, a5, s1
                  nop
                  add          s9, t2, sp
                  srli         ra, a2, 4
37:               bgeu         a2, s6, 57f
                  sra          t0, sp, a7
                  srai         s9, a5, 13
                  bge          s7, gp, 41f
41:               andi         s0, s1, 207
                  auipc        t6, 878480
                  bgeu         a2, s0, 49f
                  sub          t1, s7, s6
                  sra          s5, a0, s0
                  bgeu         zero, a0, 49f
                  add          t1, a6, s9
                  sll          a3, sp, s0
49:               srl          s9, s9, t1
                  bltu         t6, ra, 54f
                  xor          gp, s10, a7
                  bltu         s9, s9, 63f
                  sltu         t5, t4, t3
54:               srli         s7, tp, 26
                  auipc        ra, 289677
                  addi         t6, s4, 2027
57:               auipc        a6, 549319
                  srai         a5, t6, 29
                  bge          ra, s10, 70f
                  sll          a6, a4, a3
                  beq          sp, t2, 65f
                  bge          t0, sp, 77f
63:               sltu         t3, a6, a0
                  bne          zero, a1, 67f
65:               srli         s4, a3, 9
                  add          sp, a5, t6
67:               sra          a2, s3, zero
                  slt          t0, s7, a2
                  blt          t2, a1, 71f
70:               and          a2, s3, s4
71:               xori         a1, t2, 1140
                  srli         a5, s7, 9
                  bgeu         t4, a5, 82f
                  andi         a5, s8, 472
                  ori          sp, a5, -765
                  beq          t2, s5, 80f
77:               sltiu        t0, gp, -2037
                  slti         t0, a1, 1803
                  xori         t0, s0, 1189
80:               srl          s6, s4, t6
                  and          sp, s9, s2
82:               beq          t2, s1, 92f
                  sra          t2, t1, a6
                  ori          t2, s9, -29
                  srli         a6, s2, 31
                  sll          s3, a7, s6
                  bgeu         t3, t4, 100f
                  or           a5, a4, s8
                  bne          gp, a7, 103f
                  srl          s1, sp, t1
                  slli         a1, s7, 31
92:               bltu         s5, s5, 102f
                  srai         tp, a1, 11
                  ori          s3, a0, 798
                  srl          s1, a2, a0
                  or           s1, t2, t1
                  slli         s0, s10, 16
                  bne          s10, s6, 99f
99:               bgeu         t2, s9, 112f
100:              xori         t4, sp, -1012
                  blt          a5, t3, 106f
102:              bne          a6, s2, 108f
103:              sra          zero, zero, zero
                  ori          a5, t2, 480
                  slli         ra, a1, 6
106:              or           a7, s7, s10
                  bge          s11, a5, 111f
108:              bne          a2, a5, 122f
                  xori         t3, s2, 2018
                  nop
111:              and          gp, a7, a2
112:              lui          s9, 196577
                  xor          s1, s4, sp
                  xori         s9, s9, 1064
                  andi         s9, t3, -1082
                  bltu         ra, t0, 120f
                  or           sp, a4, t5
                  nop
                  sll          s3, s11, s1
120:              srai         a3, t0, 26
                  bgeu         t1, s8, 125f
122:              auipc        s11, 235761
                  srli         a3, s3, 28
                  auipc        a7, 874920
125:              auipc        s3, 825104
                  sltu         s10, a1, s6
                  bltu         s5, a4, 140f
                  auipc        s1, 920726
                  srl          gp, t5, tp
                  beq          a2, s1, 133f
                  xor          zero, t6, t0
                  addi         t1, t5, 1823
133:              sra          zero, tp, s5
                  lui          s6, 707781
                  slt          a4, s7, a0
                  sra          s6, s10, zero
                  ori          s5, a0, -316
                  xori         sp, tp, -1235
                  auipc        sp, 490830
140:              auipc        zero, 87169
                  or           a4, a1, sp
                  andi         s4, gp, -1213
                  xor          t5, a4, a6
                  sub          a4, s11, s9
                  sltiu        ra, ra, 923
                  andi         gp, s5, 1979
                  beq          t0, t4, 151f
                  sltiu        s11, s10, 1192
                  andi         s7, tp, -717
                  sltiu        t3, s0, -1857
151:              bgeu         t6, a3, 154f
                  srl          s0, t4, a0
                  nop
154:              srai         s6, s3, 28
                  sltu         t5, s11, s6
                  xor          t6, t2, t3
                  sub          tp, sp, s6
                  srli         a3, s3, 2
                  srai         a7, s8, 8
                  slt          t3, t6, a2
                  beq          a6, t1, 163f
                  beq          s9, t2, 170f
163:              or           t5, s0, s1
                  bge          s8, s0, 171f
                  and          s7, s1, s8
                  add          s7, a6, a0
                  addi         s7, s0, 233
                  sra          ra, a7, s7
                  xori         s3, s0, 1098
170:              slti         a3, a5, 1234
171:              nop
                  bgeu         s9, s9, 185f
                  sltu         a3, s11, a4
                  srl          s10, a7, s0
                  slt          s1, s0, t4
                  bge          s11, s3, 191f
                  slti         ra, t5, 1574
                  srli         s1, t3, 16
                  bge          a6, s9, 183f
                  beq          t0, s7, 191f
                  xori         ra, a7, -1229
                  slli         a3, s4, 1
183:              sra          t3, s0, t6
                  bgeu         s10, t0, 185f
185:              ori          a6, s8, -997
                  slli         a1, s1, 17
                  add          s11, s11, s9
                  nop
                  beq          a3, t5, 195f
                  auipc        a6, 464757
191:              beq          ra, s0, 200f
                  ori          a6, t6, -60
                  xori         t5, gp, 1958
                  sltiu        t3, s5, 1056
195:              sra          zero, s8, a2
                  slt          t6, t2, a3
                  sltu         s3, a7, s10
                  add          s3, a6, s0
                  andi         t1, t2, 1628
200:              slli         t6, t1, 22
                  andi         t2, s9, -908
                  xor          zero, tp, s1
                  bne          a4, s0, 204f
204:              or           gp, t6, a0
                  xor          s6, t3, s1
                  srl          t4, sp, s4
                  blt          t3, a0, 223f
                  lui          t4, 405398
                  auipc        a4, 203695
                  srli         a7, a4, 15
                  srl          t6, t6, t1
                  sltu         t4, s8, s10
                  srai         a1, s8, 2
                  srli         t0, t5, 4
                  srli         s11, t6, 13
                  sltiu        t5, s9, -560
                  beq          zero, t3, 219f
                  sll          a1, t4, s0
219:              sltu         t1, tp, s8
                  bne          s2, t1, 230f
                  slti         s4, a7, -1311
                  bne          t5, t3, 223f
223:              lui          gp, 932451
                  auipc        s5, 991549
                  slt          t4, s4, t5
                  beq          t2, t0, 235f
                  sltu         t2, s1, s9
                  auipc        s0, 289801
                  slti         a4, gp, 1990
230:              sll          a7, s11, a4
                  or           gp, t4, a0
                  slt          s5, a0, a3
                  ori          s11, s0, -736
                  and          t1, s11, a6
235:              sll          gp, gp, a2
                  sub          s11, tp, t0
                  lui          a5, 879586
                  sub          t5, t4, a4
                  andi         a1, s11, -692
                  sltiu        ra, t4, 852
                  lui          s11, 64096
                  srli         a2, s1, 1
                  bltu         t3, a4, 263f
                  and          s10, t6, a5
                  or           t2, s0, s7
                  and          a7, t6, s11
                  andi         s11, s1, -232
                  andi         s1, s4, 2008
                  or           gp, t0, zero
                  bltu         s1, s1, 256f
                  bltu         s1, a7, 261f
                  srli         a1, a4, 12
                  bltu         s7, t6, 269f
                  lui          s6, 166382
                  sltiu        a6, a3, 1923
256:              bge          s5, s8, 267f
                  or           a7, s10, s0
                  xor          a1, a6, s3
                  sltu         a5, t3, s5
                  beq          s0, t5, 262f
261:              ori          t4, a5, 265
262:              srl          s7, s6, s0
263:              blt          sp, a2, 268f
                  auipc        a6, 290837
                  auipc        gp, 383986
                  andi         t3, t3, 461
267:              xori         a2, a2, -80
268:              srai         a2, s6, 5
269:              add          s11, s4, s2
                  add          tp, t6, s10
                  sub          s9, gp, t6
                  or           t6, s10, a7
                  bne          s2, gp, 293f
                  slli         s10, s0, 6
                  srli         a6, a4, 17
                  slli         s6, t2, 5
                  slt          gp, t4, s4
                  slt          ra, a6, s3
                  sra          s11, a6, a3
                  bltu         a1, a7, 290f
                  lui          ra, 222452
                  slli         a2, a2, 25
                  lui          s7, 70368
                  ori          s4, t0, -1143
                  add          a6, a7, s1
                  bgeu         a5, t2, 293f
                  or           s6, t4, s6
                  bne          a7, a4, 304f
                  srai         s6, ra, 6
290:              srli         ra, t4, 10
                  nop
                  sub          s10, s1, t3
293:              srl          s3, s5, a6
                  addi         t6, s5, 537
                  bge          t4, t4, 296f
296:              andi         a6, s11, -922
                  sltu         t5, tp, s11
                  srli         t2, s8, 20
                  lui          gp, 373450
                  blt          a3, gp, 308f
                  auipc        a4, 969742
                  and          a6, sp, t1
                  nop
304:              bgeu         s3, a0, 318f
                  andi         s4, s11, -1963
                  blt          t2, s3, 308f
                  xori         s6, a4, 1565
308:              bne          s10, t4, 319f
                  bgeu         s2, a4, 313f
                  nop
                  slt          t2, a5, s3
                  bge          a1, sp, 325f
313:              sra          a6, ra, ra
                  nop
                  sltu         s3, ra, a5
                  sra          a4, tp, t2
                  blt          sp, a6, 321f
318:              blt          t6, t1, 322f
319:              auipc        s5, 767639
                  andi         s11, a0, -1576
321:              lui          sp, 981559
322:              sub          s11, a5, s5
                  sltu         t4, s5, s9
                  sra          a5, a0, a1
325:              ori          t0, s8, 1484
                  sltiu        s5, s5, 1869
                  auipc        a4, 512284
                  auipc        a2, 726241
                  ori          s3, ra, -368
                  slt          s9, a7, t2
                  blt          t1, t4, 333f
                  auipc        s1, 294685
333:              and          t3, t2, s7
                  srl          s6, s11, tp
                  bgeu         t4, s1, 340f
                  sltu         t3, s11, t1
                  sra          zero, s4, a2
                  srl          s4, a2, ra
                  xor          s6, ra, t4
340:              add          gp, s4, t5
                  addi         gp, s1, 1183
                  or           t3, a4, sp
                  slti         a7, zero, -630
                  srl          ra, t3, t1
                  andi         a1, s6, 714
                  lw           a3, 4(s2)
                  nop
                  add          t1, t1, s1
                  ori          t3, s1, 1267
                  addi         s2, s2, 40
                  srl          a2, s6, t6
                  slli         s6, gp, 5
431:              addi x23, x13, 0
431:              jalr x23, x23, 0
sub_1:            and          s11, t4, t2
                  nop
                  bge          t2, t2, sub_1_stack_p
sub_1_stack_p:    addi         s2, s2, -16
                  auipc        s11, 215382
                  sw           a3, 4(s2)
                  srl          s5, tp, t2
                  la           sp, region_1+190 #start riscv_load_store_rand_instr_stream_7
                  sll          s4, t2, s8
                  lb           a7, 24(sp)
                  sb           s8, 35(sp)
                  slti         tp, t4, -849
                  lbu          gp, -35(sp)
                  lbu          s6, 47(sp)
                  lb           t0, -21(sp)
                  lb           t3, -15(sp)
                  auipc        gp, 587929
                  sub          s3, a6, s0
                  or           ra, t5, s7
                  sltu         t2, gp, a5
                  addi         t4, a3, 278
                  addi         t0, s8, 93
                  sll          s10, t6, s4
                  lw           a2, 50(sp)
                  lbu          a4, 51(sp)
                  or           t6, tp, gp
                  sb           t3, 39(sp)
                  sll          t5, a0, a7
                  sra          t3, s1, a6
                  lb           t0, 21(sp)
                  slli         a2, sp, 27
                  slli         a6, t4, 23
                  add          t3, zero, t2
                  lb           s1, 4(sp)
                  and          s5, t3, t5
                  sh           zero, -6(sp)
                  sub          s5, zero, s0
                  slt          s5, t5, sp
                  addi         t4, sp, 37
                  lhu          s1, -36(sp)
                  slti         gp, s0, 41
                  lbu          tp, -31(sp)
                  and          t6, zero, a5
                  lhu          s10, 60(sp)
                  sub          a1, s3, s0
                  xori         t3, s10, -1041
                  srai         t4, s5, 7
                  sll          s7, a4, s6
                  sltiu        ra, a2, 1067
                  slli         s10, s9, 6
                  srai         tp, t1, 8
                  lhu          gp, 28(sp)
                  slli         a5, s9, 16
                  lw           s3, -42(sp)
                  sb           s5, -59(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t1, region_0+155 #start riscv_load_store_rand_instr_stream_4
                  srai         zero, s3, 14
                  srl          t6, s2, t2
                  lui          s0, 43029
                  sb           a4, 14(t1)
                  sll          sp, tp, s4
                  add          tp, t0, zero
                  srl          s9, a0, t0
                  srli         tp, a1, 11
                  lhu          s1, -9(t1)
                  xor          t5, s1, gp
                  nop
                  sw           a0, -11(t1)
                  srai         t5, a3, 1
                  lbu          s10, -7(t1)
                  sltiu        s3, t6, -1784
                  lb           sp, -3(t1)
                  lb           s0, 8(t1)
                  lbu          t6, 7(t1)
                  lui          s9, 13346
                  srai         s10, a5, 28
                  slti         a1, a3, -767
                  slt          a2, a7, tp
                  add          s3, a5, a1
                  sh           t1, -5(t1)
                  sra          s7, s0, s2
                  lbu          s7, 10(t1)
                  lb           s9, -2(t1)
                  slt          a6, s4, s10
                  lui          t3, 675886
                  slti         tp, s1, -1915
                  slli         t3, a6, 12
                  slli         t4, s4, 28
                  auipc        s9, 107061
                  srli         ra, tp, 1
                  sltu         t6, sp, s11
                  sb           s5, -16(t1) #end riscv_load_store_rand_instr_stream_4
                  la           a7, region_0+1057 #start riscv_load_store_rand_instr_stream_32
                  lh           ra, 9(a7)
                  xor          ra, t1, s1
                  lhu          s1, 5(a7)
                  srai         sp, zero, 0
                  sb           zero, -4(a7)
                  sb           a5, -12(a7)
                  slti         a5, s4, 1466
                  lui          a6, 234459
                  lbu          a3, 6(a7)
                  sb           a1, -11(a7)
                  xori         s1, s0, -1745
                  lh           a5, -9(a7)
                  lbu          s0, -14(a7)
                  sb           ra, 8(a7)
                  sb           s6, 3(a7)
                  lb           a1, 1(a7)
                  lbu          gp, 10(a7)
                  lbu          s7, 2(a7)
                  addi         t3, s5, -1849
                  lw           s4, 7(a7)
                  andi         tp, t0, -1424
                  lb           a1, 4(a7)
                  xor          t2, s6, t3
                  sb           a2, -5(a7)
                  sra          s3, t4, s5
                  sb           s0, -8(a7)
                  sb           s3, 13(a7)
                  sh           a7, -1(a7)
                  sra          a2, s11, t6
                  lbu          ra, -2(a7)
                  sb           s5, 2(a7)
                  lbu          t6, -10(a7) #end riscv_load_store_rand_instr_stream_32
                  la           sp, region_0+1937 #start riscv_load_store_rand_instr_stream_19
                  sh           t4, -249(sp)
                  srl          s11, s5, t3
                  auipc        ra, 123079
                  srl          s9, s5, a2
                  srli         a4, t2, 22
                  slli         t5, s9, 17
                  srl          a5, t3, gp
                  sb           a5, -152(sp)
                  slti         a7, s10, 1232
                  xor          t0, s8, a2
                  sb           gp, 27(sp)
                  lbu          a4, 44(sp)
                  sltiu        s9, s11, 4
                  lbu          s5, -69(sp)
                  lui          a7, 206460
                  srl          a6, s9, s11
                  lb           s9, -23(sp)
                  addi         gp, tp, -713
                  sh           ra, -121(sp)
                  lw           s5, -93(sp)
                  sb           s10, -16(sp)
                  slt          s6, s7, t6
                  andi         gp, s5, -826
                  sra          t2, t5, s6
                  sb           s11, 18(sp)
                  xori         a6, t1, 887
                  lbu          s9, -34(sp)
                  srli         zero, a7, 5
                  lbu          t6, -196(sp)
                  lb           s9, -150(sp)
                  sb           s8, 16(sp) #end riscv_load_store_rand_instr_stream_19
                  la           sp, region_0+1427 #start riscv_load_store_rand_instr_stream_13
                  lh           gp, -55(sp)
                  srai         a2, s9, 20
                  lui          s11, 271479
                  sb           gp, 14(sp)
                  or           t4, s5, a4
                  lb           ra, -13(sp)
                  addi         a3, a6, 1625
                  sra          s6, t1, t3
                  lb           s4, 64(sp)
                  sltu         ra, a3, a4
                  lbu          t4, 45(sp)
                  ori          s7, a1, -825
                  sltiu        a6, a2, -241
                  srli         tp, s6, 0
                  ori          s6, t3, -98
                  or           a5, s2, s11
                  srli         s0, a5, 8
                  slli         s9, tp, 8
                  sltu         t6, s11, tp
                  lb           a6, 62(sp)
                  lhu          t4, -43(sp)
                  srli         a3, s8, 0
                  auipc        s3, 105525
                  sh           zero, -9(sp)
                  lb           a7, 46(sp)
                  addi         s4, t2, 1955
                  sll          t1, a2, a6
                  lb           t2, -42(sp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_0+131 #start riscv_load_store_rand_instr_stream_8
                  xor          s5, s7, t3
                  sltiu        s1, s8, -457
                  add          a5, a3, a7
                  sw           t0, 161(sp)
                  and          t4, s7, zero
                  lb           t4, -122(sp)
                  sltiu        a4, a1, -385
                  andi         a7, sp, -402
                  xori         s7, s5, 1460
                  lui          s11, 969256
                  lb           zero, 180(sp)
                  lbu          s5, 132(sp)
                  and          a2, a1, t6
                  srl          s4, s5, a6
                  lb           ra, 120(sp)
                  sub          s11, a1, t1
                  xori         a1, a7, 1286
                  nop
                  sltiu        s3, a5, -1780
                  sw           t0, 189(sp)
                  lb           a3, 124(sp)
                  sb           t6, -19(sp)
                  lh           t0, -13(sp)
                  lbu          tp, 88(sp)
                  addi         a1, ra, 680
                  or           ra, s4, s8
                  sb           t6, 189(sp)
                  lbu          a6, 88(sp)
                  add          gp, s3, a3
                  andi         ra, s3, -1336
                  lb           a1, -128(sp)
                  lb           s9, -39(sp)
                  slt          s5, sp, s1
                  sll          s0, s4, gp
                  sltiu        zero, a1, 1928
                  sb           s5, -38(sp)
                  slli         t3, ra, 8
                  lb           a4, 146(sp)
                  lb           zero, -101(sp)
                  lb           t1, 126(sp)
                  lb           tp, -93(sp)
                  auipc        a1, 569564
                  sw           s1, 253(sp)
                  sw           s9, -91(sp)
                  sltiu        a4, a1, 1408
                  lbu          t5, 88(sp)
                  sltu         t1, gp, t3
                  sh           ra, -29(sp)
                  lb           t6, 128(sp)
                  srai         t6, t4, 25
                  sub          t6, t5, s6
                  and          s10, s6, gp
                  sb           s9, -30(sp)
                  slti         s4, a3, -311
                  srli         s0, t0, 23
                  lh           s5, -7(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s7, region_0+1531 #start riscv_load_store_rand_instr_stream_14
                  lh           s6, 25(s7)
                  sb           s2, 20(s7)
                  sb           s2, -35(s7)
                  lb           a2, 59(s7)
                  sb           s6, 59(s7)
                  andi         ra, t2, -413
                  auipc        s3, 549294
                  sb           gp, 22(s7)
                  sb           a6, -24(s7)
                  lbu          t6, 36(s7)
                  lb           a3, 24(s7)
                  sra          sp, t0, a1
                  sb           s6, -20(s7)
                  sb           a1, 43(s7)
                  slli         t3, s0, 22
                  add          t0, gp, s1
                  lb           a1, 15(s7)
                  sb           gp, -28(s7)
                  or           ra, s4, s2
                  sh           gp, 51(s7)
                  sub          t3, s2, tp
                  nop
                  slt          s0, s1, s2
                  sb           a2, -41(s7)
                  lbu          a5, -35(s7)
                  andi         t1, t3, -1738
                  or           t6, t1, s1
                  nop
                  lb           a2, 30(s7)
                  add          a7, s8, a7
                  lbu          a1, -36(s7)
                  lh           t1, 21(s7)
                  lb           s9, 44(s7)
                  lb           a3, -52(s7)
                  lb           t5, -16(s7)
                  lw           s5, -47(s7)
                  lh           a5, -19(s7)
                  lh           gp, 31(s7)
                  lbu          s3, -8(s7)
                  addi         s10, s3, 1563
                  sll          sp, s9, ra
                  lbu          a7, -50(s7)
                  sra          t2, s9, a0
                  srl          t3, s8, s1
                  lh           t3, 19(s7)
                  sb           s3, 14(s7) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+1614 #start riscv_load_store_rand_instr_stream_27
                  lb           s7, -15(sp)
                  lbu          ra, -9(sp)
                  or           a1, a5, t1
                  srai         a2, sp, 0
                  auipc        s7, 178785
                  slli         a7, a7, 31
                  nop
                  sw           s2, -10(sp)
                  sb           a3, 5(sp)
                  sh           t2, 2(sp)
                  srli         s9, a7, 19
                  add          gp, s4, t4
                  srai         a3, s4, 16
                  lb           s10, 5(sp)
                  srli         a6, t5, 8
                  lbu          s9, -14(sp)
                  add          gp, t5, s0
                  sltiu        t3, s3, -1896
                  lw           zero, -6(sp)
                  lb           s11, 15(sp)
                  sb           a1, 9(sp)
                  lh           s0, 14(sp)
                  lui          s1, 787791
                  sb           s7, -4(sp)
                  lb           a7, -9(sp)
                  lbu          s1, 15(sp)
                  sltiu        s11, s9, -1978
                  lb           ra, -13(sp)
                  lbu          s7, 11(sp)
                  lbu          t4, -9(sp)
                  sll          s6, a2, s11
                  sltiu        s5, t6, 474
                  addi         a5, s8, -1091
                  ori          t0, a3, 1580
                  lb           a5, -11(sp)
                  auipc        s7, 565431
                  sw           t0, 14(sp)
                  lw           a7, -14(sp)
                  lbu          a6, 1(sp)
                  lui          a7, 868419
                  add          s5, s6, a6
                  lui          s1, 119942
                  xor          s0, a7, sp
                  lhu          s1, 14(sp)
                  lb           a7, -11(sp)
                  slt          s6, a4, t4
                  lbu          a4, -9(sp)
                  srli         a1, s9, 31
                  sltiu        s3, s7, -738
                  sh           a7, -2(sp)
                  sltiu        gp, a0, -1321
                  lb           t3, -2(sp)
                  lbu          s4, 8(sp)
                  lb           s0, 0(sp)
                  lb           ra, 7(sp)
                  srl          s10, t6, t1
                  lb           s3, -9(sp) #end riscv_load_store_rand_instr_stream_27
                  la           s10, region_0+1200 #start riscv_load_store_rand_instr_stream_15
                  lhu          s3, 6(s10)
                  sh           s1, 10(s10)
                  sra          a6, s5, a2
                  lbu          a1, -9(s10)
                  slt          a4, s5, a4
                  sb           tp, 0(s10)
                  lbu          tp, -3(s10)
                  sb           a7, -5(s10)
                  lbu          s4, 10(s10)
                  sb           a6, -6(s10)
                  add          t3, a5, t2
                  addi         a2, t4, 323
                  lui          sp, 165369
                  lbu          s3, 8(s10)
                  and          ra, s5, a3
                  sw           zero, -16(s10)
                  addi         a5, zero, 211
                  ori          a2, a1, 151
                  and          sp, s6, s8
                  lb           s5, -1(s10)
                  sra          t0, s11, gp
                  lw           ra, 16(s10)
                  andi         t5, s2, 1561
                  lb           s9, -11(s10)
                  sb           gp, -1(s10)
                  slti         a7, s11, -9
                  lbu          tp, 4(s10)
                  addi         tp, ra, 1329
                  slti         s5, s4, 1241
                  lw           sp, -4(s10)
                  xor          tp, s2, s6
                  sh           tp, -2(s10)
                  sll          t0, a1, zero
                  lhu          a1, 14(s10)
                  xori         t6, a4, 1027
                  sb           s4, 13(s10)
                  sb           a4, 10(s10) #end riscv_load_store_rand_instr_stream_15
                  la           s1, region_0+931 #start riscv_load_store_rand_instr_stream_23
                  lw           ra, 241(s1)
                  lbu          t3, -148(s1)
                  lbu          a3, 30(s1)
                  addi         t5, a0, -1116
                  sltu         a6, a6, a4
                  slli         a3, t3, 27
                  sh           s6, 199(s1)
                  auipc        t0, 980659
                  slt          t6, a7, s5
                  addi         a7, t5, 612
                  and          a1, zero, t2
                  sb           gp, 174(s1)
                  lbu          s5, -173(s1)
                  sb           sp, -68(s1)
                  ori          t1, a5, -215
                  lui          a4, 449935
                  sltu         sp, a0, t5
                  lh           a4, 219(s1)
                  sll          tp, s2, s5
                  lb           s9, -30(s1)
                  auipc        a3, 529854
                  slt          s3, s9, s7
                  nop
                  lbu          t6, 26(s1)
                  lb           s11, 189(s1)
                  slli         t4, s6, 22
                  lui          a4, 643438
                  addi         s0, s5, 106
                  andi         ra, a1, 643
                  srai         s11, s2, 5
                  auipc        s4, 501758
                  srli         t3, gp, 25
                  lui          ra, 424476
                  srai         s11, t0, 3
                  xori         a1, a0, 1309
                  auipc        t1, 1010583
                  lb           t0, 159(s1)
                  addi         t0, tp, -1522
                  sb           a7, -250(s1)
                  andi         a6, sp, -635
                  sb           zero, -82(s1)
                  sra          s9, s10, a6
                  lbu          a3, 244(s1)
                  lb           a2, -86(s1)
                  lhu          a7, 187(s1)
                  sb           s0, -190(s1) #end riscv_load_store_rand_instr_stream_23
                  la           ra, region_0+1810 #start riscv_load_store_rand_instr_stream_25
                  srli         a2, a0, 24
                  lbu          tp, -699(ra)
                  ori          a2, t3, -1596
                  auipc        t2, 953726
                  lb           t5, 85(ra)
                  sltu         a4, s2, t3
                  lh           a6, -22(ra)
                  lbu          t1, -866(ra)
                  lb           a4, -657(ra)
                  lb           gp, -724(ra)
                  lb           s10, -447(ra)
                  or           a3, t5, t5
                  sb           a7, -1128(ra)
                  srl          s0, s0, t3
                  lbu          s11, -961(ra)
                  srl          t1, a0, ra
                  lhu          s3, -756(ra)
                  lb           a4, -1669(ra)
                  lbu          t2, -1759(ra)
                  sb           s1, -1711(ra)
                  lb           a4, 37(ra)
                  sh           s1, -928(ra)
                  lbu          zero, -1810(ra)
                  lbu          s11, -1758(ra)
                  lbu          a5, -213(ra)
                  lhu          zero, -702(ra)
                  lhu          gp, -1206(ra)
                  lbu          t3, -1399(ra)
                  sltu         t4, s9, s9
                  slli         t5, tp, 9
                  or           a4, ra, s7
                  sub          t1, s4, t5
                  lbu          s4, -1669(ra)
                  lbu          a2, 176(ra)
                  sb           s9, -873(ra) #end riscv_load_store_rand_instr_stream_25
                  la           t4, region_0+1510 #start riscv_load_store_rand_instr_stream_16
                  sub          s11, a1, a6
                  andi         s5, s4, -861
                  add          a1, a5, t1
                  sltiu        s5, tp, -827
                  srl          t5, t4, s3
                  sh           t5, 56(t4)
                  slli         gp, s7, 14
                  lhu          s4, 46(t4)
                  lbu          t1, -7(t4)
                  lb           s1, 4(t4)
                  sb           s5, -3(t4)
                  sb           t2, 54(t4)
                  sub          zero, s10, s8
                  lb           gp, -11(t4)
                  lb           gp, 54(t4)
                  slt          a5, sp, t6
                  lhu          s5, -50(t4)
                  slt          a2, a6, s9
                  sub          ra, t6, s1
                  auipc        a1, 80334
                  lbu          s0, -16(t4)
                  xori         a6, t2, 2002
                  srai         zero, s4, 16
                  sub          ra, a5, s8
                  slt          tp, a4, a0
                  andi         a1, t4, 1839
                  lui          t2, 898131
                  auipc        s11, 256797
                  ori          a6, tp, 1296
                  slt          s7, ra, a1
                  lh           a5, -18(t4) #end riscv_load_store_rand_instr_stream_16
                  la           s3, region_0+1530 #start riscv_load_store_rand_instr_stream_2
                  sra          s11, a1, a1
                  xor          t4, s0, s0
                  lhu          s11, 6(s3)
                  or           t1, t6, t4
                  addi         t2, a2, -172
                  andi         sp, t6, 1818
                  addi         t5, s7, 1402
                  sltu         a5, t1, a0
                  ori          a3, a3, 819
                  sb           zero, -14(s3)
                  sra          t6, s10, t3
                  xori         tp, s3, -650
                  lb           s1, -47(s3)
                  sll          s0, s6, s8
                  lb           t1, -44(s3)
                  lb           tp, 25(s3)
                  srli         s9, a3, 22
                  add          sp, a0, zero
                  slt          s4, a5, t3
                  slt          gp, a4, t0
                  lb           t6, 63(s3)
                  lbu          a3, 26(s3)
                  sh           s11, -12(s3)
                  xor          a5, s6, s10
                  lbu          sp, -5(s3)
                  andi         s6, s3, 1487
                  srai         t6, t1, 5
                  sw           t1, -50(s3)
                  sra          zero, s11, s4
                  lui          a7, 917814
                  sltu         gp, a2, s7
                  sb           t6, -15(s3)
                  ori          s4, t0, -602
                  srl          s7, a6, ra
                  slt          s6, s10, tp
                  lbu          s10, 3(s3)
                  slti         t2, a2, -1274
                  andi         s6, s1, -1001
                  sb           t6, -63(s3)
                  slt          t3, t3, s1
                  sb           t4, -27(s3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1018 #start riscv_load_store_rand_instr_stream_21
                  sra          t0, s1, a1
                  lbu          s10, -58(sp)
                  xori         s7, t4, 1578
                  ori          t0, s10, -50
                  sb           s3, -27(sp)
                  sb           a4, 11(sp)
                  srli         t0, a1, 13
                  lb           s11, 60(sp)
                  sra          s6, s4, s5
                  sh           s9, -60(sp)
                  sltu         a3, s8, s6
                  slti         zero, sp, -552
                  slli         s0, s4, 26
                  add          a4, a0, tp
                  xori         a3, s11, 498
                  lbu          s11, -13(sp)
                  nop
                  sb           gp, -45(sp)
                  slt          s0, a6, t1
                  and          s1, s10, a5
                  and          a6, t0, t1
                  sltu         tp, t0, a7
                  lui          t0, 522663
                  sb           t0, -56(sp)
                  slt          t2, t1, a4
                  lui          a4, 947731
                  lbu          t5, -61(sp)
                  lui          s5, 325396
                  sb           tp, -52(sp)
                  sb           t6, 13(sp) #end riscv_load_store_rand_instr_stream_21
                  la           t4, region_0+439 #start riscv_load_store_rand_instr_stream_12
                  slti         zero, t1, -263
                  sw           t4, -303(t4)
                  srl          tp, tp, a7
                  lbu          a5, 1200(t4)
                  lb           s9, 503(t4)
                  lb           t0, 1180(t4)
                  lbu          s6, 808(t4)
                  lui          t5, 348481
                  lbu          s10, 80(t4)
                  sb           a3, 980(t4)
                  lbu          s11, 934(t4)
                  srli         ra, s6, 27
                  sb           s4, 970(t4)
                  srl          s1, s3, t5
                  sb           a4, 354(t4)
                  slt          tp, s10, zero
                  sb           s1, 447(t4)
                  lbu          a6, 403(t4)
                  lh           a1, 577(t4)
                  lw           ra, 1029(t4)
                  sh           zero, 641(t4)
                  lb           t1, 15(t4)
                  sb           s0, -427(t4)
                  lb           t6, 1440(t4)
                  nop
                  sltu         t6, tp, t2
                  sb           s9, 1309(t4)
                  sb           s4, -358(t4)
                  lb           s0, 594(t4)
                  sb           s0, -37(t4)
                  lb           zero, 540(t4)
                  nop
                  andi         t2, t2, 291
                  sb           t1, 438(t4)
                  lb           t1, -362(t4)
                  lbu          t2, -420(t4)
                  lb           s9, 688(t4)
                  sb           a6, 494(t4)
                  sb           s0, 141(t4) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1954 #start riscv_load_store_rand_instr_stream_22
                  lb           s4, 9(sp)
                  lbu          tp, 14(sp)
                  lhu          tp, -10(sp)
                  lh           s7, -12(sp)
                  srl          a6, s10, s4
                  addi         t3, a3, -271
                  srai         a3, a2, 29
                  add          t0, a5, s8
                  sb           t5, 3(sp)
                  lhu          s9, 2(sp)
                  nop
                  lbu          a5, -5(sp)
                  addi         s1, s5, 1058
                  sra          a7, t1, t6
                  or           tp, a7, zero
                  slti         s6, a2, -1952
                  sb           t6, 0(sp)
                  xori         ra, a3, 1788
                  addi         zero, t3, 215
                  add          gp, s4, t0
                  xori         s0, s8, -843
                  sb           s4, -3(sp)
                  sb           t3, 10(sp)
                  srai         s5, s11, 19
                  lh           t5, 0(sp)
                  lbu          s1, -3(sp)
                  lh           a6, 10(sp)
                  lbu          a5, 8(sp)
                  sltiu        s0, t1, -1433
                  lhu          s9, 14(sp)
                  lh           s11, 10(sp)
                  lb           t4, 7(sp)
                  lbu          s11, 15(sp)
                  lb           s3, -9(sp)
                  sltiu        s4, s11, -1622
                  lh           s9, -6(sp)
                  lb           ra, 1(sp)
                  sb           s3, -4(sp)
                  lb           a5, -16(sp)
                  lb           a5, 14(sp)
                  slt          ra, a4, t6
                  sll          t4, t5, s10
                  sll          t3, s3, a7
                  lbu          a2, -9(sp)
                  sb           t2, 1(sp)
                  xor          s1, a4, s3
                  sb           t2, 13(sp) #end riscv_load_store_rand_instr_stream_22
                  la           a5, region_0+558 #start riscv_load_store_rand_instr_stream_17
                  sltu         t3, t6, s2
                  slti         ra, t5, 433
                  srl          tp, sp, s2
                  lui          sp, 1031684
                  sll          s3, s0, t4
                  lb           a1, 69(a5)
                  sb           a0, 191(a5)
                  lbu          t4, 91(a5)
                  lhu          t6, -112(a5)
                  add          t0, s1, s3
                  and          t4, t6, s3
                  sb           t6, 201(a5)
                  nop
                  lb           s3, 148(a5)
                  sb           a0, 137(a5)
                  sw           s8, 46(a5)
                  lb           t1, -133(a5)
                  sb           t0, -217(a5)
                  nop
                  sltiu        gp, zero, -928
                  lb           s0, 216(a5)
                  lbu          gp, 173(a5)
                  nop
                  sb           a4, -227(a5)
                  lb           s5, -251(a5)
                  lbu          s9, 184(a5)
                  lbu          a2, -226(a5)
                  andi         a4, t0, -1667
                  lh           gp, -228(a5)
                  sltu         s11, t1, ra
                  sb           s3, -251(a5)
                  and          a4, s9, t5
                  lw           s0, -2(a5)
                  add          gp, a7, zero
                  lbu          a3, 93(a5)
                  srl          sp, s3, a0
                  ori          ra, a2, -2024
                  sb           s10, -124(a5) #end riscv_load_store_rand_instr_stream_17
                  la           s4, region_0+728 #start riscv_load_store_rand_instr_stream_11
                  srl          t2, ra, s6
                  srl          t4, tp, s5
                  lbu          s3, 69(s4)
                  sra          a1, t2, t4
                  lbu          a3, 989(s4)
                  sb           a7, 1261(s4)
                  sltiu        t6, s8, -321
                  lbu          s1, 460(s4)
                  lb           a4, -703(s4)
                  lh           s3, 454(s4)
                  or           gp, s6, s3
                  andi         zero, t5, 1476
                  srl          t1, a7, ra
                  lb           s1, 163(s4)
                  sb           sp, 1228(s4)
                  srli         t3, a0, 24
                  lbu          tp, 186(s4)
                  sub          a3, s0, t1
                  lbu          a1, 589(s4)
                  sll          s5, s1, s0
                  lbu          t2, 907(s4)
                  lhu          ra, 1264(s4)
                  and          s0, s7, s5
                  xor          s7, a2, t3
                  and          t5, a5, a4
                  lhu          a4, 1218(s4)
                  sub          t5, s1, t3
                  sltiu        s6, a1, -2005
                  xor          s9, s2, t0
                  slti         a2, t2, 1611
                  lbu          t4, -613(s4) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1667 #start riscv_load_store_rand_instr_stream_3
                  lui          s7, 137583
                  sh           a5, 245(sp)
                  lb           s5, -123(sp)
                  sb           s5, -78(sp)
                  lb           a2, 156(sp)
                  srai         s9, s3, 12
                  sra          a1, t1, t2
                  lhu          a4, -173(sp)
                  slt          a3, a7, t6
                  sb           t1, 15(sp)
                  lbu          zero, -212(sp)
                  lbu          s0, 34(sp)
                  lb           a6, 250(sp)
                  lbu          t2, -174(sp)
                  lb           zero, 12(sp)
                  add          a1, sp, s2
                  sb           tp, -59(sp)
                  slti         s11, sp, -1026
                  lb           tp, 178(sp)
                  sb           t4, 192(sp)
                  lbu          s11, 245(sp)
                  sw           t2, -55(sp)
                  lbu          t2, -158(sp)
                  lbu          s3, -207(sp)
                  srli         a7, s5, 10
                  add          t0, s4, t1
                  sll          s10, t2, a4
                  sb           s3, 194(sp)
                  xor          t6, a7, a4
                  lbu          s0, 115(sp)
                  lbu          s9, -108(sp)
                  and          tp, a4, a0
                  srl          t5, a1, s7
                  sh           a7, -75(sp)
                  andi         t3, t3, 11
                  lb           a7, 212(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t6, region_1+1716 #start riscv_load_store_rand_instr_stream_20
                  lbu          t5, -33(t6)
                  addi         s6, sp, 716
                  add          ra, tp, a0
                  sb           s9, -59(t6)
                  addi         t3, t1, -537
                  lui          t4, 752876
                  or           ra, s11, tp
                  addi         a2, a7, -1207
                  srl          s5, s7, a7
                  sb           s9, 39(t6)
                  lbu          t4, -13(t6)
                  lbu          t0, -57(t6)
                  lhu          t2, 10(t6)
                  sb           s9, -43(t6)
                  sb           s4, -45(t6)
                  sll          t4, s0, t1
                  sb           a6, 37(t6)
                  xori         s9, a3, 1496
                  add          gp, s7, t5
                  sub          s9, s6, s11
                  sh           a2, 54(t6) #end riscv_load_store_rand_instr_stream_20
                  la           sp, region_0+1908 #start riscv_load_store_rand_instr_stream_10
                  ori          a7, a0, -394
                  lui          a4, 165675
                  sb           s6, -46(sp)
                  sltiu        a7, t0, -1548
                  slt          s6, s4, gp
                  xori         s9, s11, 1601
                  sh           s11, -2(sp)
                  lb           tp, -14(sp)
                  lb           a4, 23(sp)
                  sb           s7, -15(sp)
                  and          t1, t1, t0
                  lbu          t2, -3(sp)
                  lhu          gp, -22(sp)
                  sub          s11, a0, a4
                  sub          a7, s8, t2
                  srl          tp, s0, a4
                  lbu          s3, 46(sp)
                  sb           tp, -3(sp)
                  sb           tp, -56(sp)
                  sb           s4, 56(sp)
                  andi         t4, s11, 650
                  sb           t1, -2(sp)
                  sltiu        s4, gp, -1870
                  lb           t1, -31(sp)
                  sub          gp, s6, t1
                  lbu          t5, -1(sp)
                  srl          t1, s8, sp
                  sltiu        t2, s8, -1262
                  lb           ra, -51(sp)
                  srl          t2, a1, ra
                  lhu          t1, 30(sp)
                  sub          a5, a1, a0
                  slt          s9, t3, s7
                  xor          t6, s1, s10
                  ori          s7, a2, 9
                  lb           s9, 29(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+309 #start riscv_load_store_rand_instr_stream_31
                  ori          t5, s2, 791
                  lbu          ra, 12(sp)
                  sb           s2, -3(sp)
                  nop
                  slti         tp, a5, 1591
                  lb           s4, 10(sp)
                  lb           t1, -16(sp)
                  slti         t4, t0, -1673
                  slti         s10, s8, -481
                  lbu          s4, -4(sp)
                  sh           t0, 13(sp)
                  srli         s1, a0, 26
                  xor          s1, t4, t1
                  lbu          a3, 5(sp)
                  andi         t2, sp, 731
                  lb           a1, 8(sp)
                  sra          tp, ra, a4
                  lh           t3, 13(sp)
                  sb           ra, -12(sp)
                  ori          t2, t5, 1346
                  slt          a2, sp, s9
                  lb           s6, 6(sp)
                  lbu          ra, 0(sp)
                  srli         t3, s2, 8
                  slli         s1, s5, 29
                  or           s4, t1, s5
                  sub          s0, sp, s10
                  xori         t0, a2, -1242
                  sh           tp, 11(sp)
                  srl          t1, s3, t6
                  lbu          s9, -16(sp)
                  lbu          a7, -9(sp)
                  sub          a1, s9, t4
                  ori          s6, gp, -463
                  lbu          ra, 2(sp)
                  ori          t3, sp, 1060
                  xor          s0, s10, s7
                  srli         s9, a6, 7
                  nop
                  ori          t0, t3, 321
                  sll          s4, a1, ra
                  auipc        s4, 459949
                  lb           s4, 12(sp)
                  lb           s0, 16(sp) #end riscv_load_store_rand_instr_stream_31
                  la           s6, region_1+1731 #start riscv_load_store_rand_instr_stream_29
                  sb           sp, 1(s6)
                  sh           a7, -1(s6)
                  add          s11, sp, s0
                  sltu         s0, s5, s10
                  sh           gp, -11(s6)
                  slli         s10, t2, 27
                  lb           s4, -15(s6)
                  sb           t4, -14(s6)
                  srl          a3, t1, s6
                  sb           a4, -2(s6)
                  xor          gp, a3, tp
                  addi         zero, a2, -491
                  slti         t4, t5, 213
                  sltu         a5, a0, s9
                  sb           t1, -12(s6)
                  sll          a2, s6, t2
                  sb           s7, -8(s6)
                  lb           s3, 4(s6)
                  or           t3, s0, a1
                  sb           t2, -1(s6) #end riscv_load_store_rand_instr_stream_29
                  la           s10, region_1+1244 #start riscv_load_store_rand_instr_stream_28
                  sb           s5, 231(s10)
                  lb           a1, 109(s10)
                  xori         s3, s10, 761
                  srli         t4, sp, 28
                  sh           s5, -254(s10)
                  slt          a7, s8, a0
                  slti         t3, t6, -1432
                  sb           a6, 211(s10)
                  sra          t3, a5, s10
                  sra          t4, sp, s0
                  lbu          s6, -81(s10)
                  sw           s11, -172(s10)
                  sra          gp, t0, a6
                  nop
                  lbu          sp, -125(s10)
                  lb           s3, -36(s10)
                  add          a5, a6, s10
                  lb           gp, 156(s10)
                  sh           t4, 86(s10)
                  lhu          t6, 18(s10)
                  lh           s6, 202(s10)
                  sb           s1, -121(s10)
                  sub          s5, t1, t5
                  auipc        t2, 142481
                  sub          a6, sp, s3
                  lb           tp, -203(s10)
                  and          s3, s6, s9
                  lbu          t0, -181(s10)
                  sll          s0, s2, a2
                  lb           t6, 30(s10)
                  or           s7, tp, ra
                  lb           tp, 248(s10)
                  slt          a6, t4, t5
                  xor          a4, s0, t1
                  sub          t2, t6, t1
                  srl          a7, t0, s8
                  sra          t2, s4, t3
                  addi         a1, s11, 1796
                  lh           ra, 14(s10)
                  sll          a3, t0, s4
                  add          t2, t3, a1
                  sb           s7, 155(s10)
                  lb           t1, -73(s10)
                  lb           t1, 109(s10)
                  lh           a2, -182(s10)
                  lb           s7, -5(s10)
                  sub          a1, a4, tp
                  slli         t3, ra, 10
                  sltu         s6, s4, s7
                  slli         t6, a7, 4
                  lui          s0, 722871
                  lb           a2, -249(s10)
                  sltiu        a5, t3, 1549
                  sb           a0, 247(s10)
                  sltu         s7, s8, s8
                  lb           t0, 109(s10)
                  sb           s4, -86(s10) #end riscv_load_store_rand_instr_stream_28
                  lui          sp, 1011474
                  blt          a6, a1, 5f
                  nop
                  srl          t4, s1, t4
                  blt          s10, t3, 7f
5:                ori          t2, ra, 253
                  bgeu         a1, a0, 7f
7:                addi         s3, a0, 68
                  slli         t2, s4, 11
                  sltu         s7, t3, a2
                  slli         tp, s6, 8
                  sll          zero, ra, a4
                  add          zero, t2, s11
                  bge          a3, sp, 14f
14:               sltu         t5, t0, t2
                  bltu         a3, s4, 21f
                  bltu         t3, s10, 22f
                  sltu         t1, gp, s0
                  sll          t0, s6, t3
                  bgeu         s11, a6, 27f
                  xor          gp, s4, gp
21:               sll          a2, a0, a5
22:               andi         t6, ra, -429
                  xor          s7, s2, a6
                  bltu         a2, s7, 38f
                  sll          t2, s2, s4
                  sltiu        a2, s7, 1901
27:               xori         s10, s8, -1398
                  add          t5, s8, ra
                  slli         s1, s0, 20
                  auipc        a3, 22611
                  xor          sp, a5, s0
                  xor          s10, a7, ra
                  slli         a2, s11, 16
                  bne          s8, gp, 51f
                  add          a6, t0, a5
                  slt          s3, t1, a5
                  sltu         a1, s9, s9
38:               srai         s5, s3, 20
                  xor          sp, a2, t1
                  slli         t6, a2, 0
                  xori         s4, zero, 540
                  sll          a5, s11, zero
                  auipc        a5, 795738
                  srai         tp, s1, 31
                  srai         zero, t3, 19
                  lui          s11, 163246
                  srl          sp, t5, a4
                  sltiu        a6, t0, 1657
                  andi         a5, a7, -201
                  and          a6, t0, s9
51:               bgeu         tp, s9, 71f
                  lui          a2, 832135
                  xori         s5, a1, -627
                  andi         sp, s1, 1524
                  or           s7, s9, t0
                  xori         s5, a2, 1377
                  slt          s9, tp, a5
                  xori         s7, a0, -1916
                  blt          s1, s4, 66f
                  addi         s7, t4, 1980
                  andi         s3, ra, 1021
                  blt          a6, s4, 77f
                  beq          a4, s4, 70f
                  la           gp, region_1+1328 #start riscv_load_store_rand_instr_stream_0
                  sra          a7, a0, s2
                  lh           s10, -102(gp)
                  nop
                  add          ra, tp, a7
                  srl          t2, a0, t6
                  and          t0, t3, t2
                  slt          ra, s9, a0
                  nop
                  lui          s6, 50599
                  lbu          ra, -193(gp)
                  lb           a5, -129(gp)
                  sb           a3, 247(gp)
                  nop
                  andi         ra, a1, -1359
                  nop
                  or           s10, zero, a2
                  sb           a0, -80(gp)
                  nop
                  sb           a4, -245(gp)
                  ori          s4, ra, -939
                  sb           zero, -170(gp)
                  sltu         s7, s0, s11
                  addi         s1, s10, -1719
                  lb           t2, 153(gp)
                  srl          s9, s5, t4
                  sra          s11, s1, s10
                  sb           a1, 49(gp)
                  lb           a2, 123(gp)
                  xor          sp, a4, s5
                  lb           s0, -253(gp)
                  sb           t5, -57(gp)
                  srli         t4, t3, 6
                  sltu         s11, a0, s9
                  lb           a4, -97(gp)
                  srl          a2, t2, t4
                  lui          s0, 95341
                  lb           t0, -102(gp)
                  lbu          s3, -114(gp)
                  sb           s8, 134(gp)
                  andi         s5, a3, -1867
                  lh           a2, 212(gp)
                  or           s4, a0, a3
                  lui          a7, 310699
                  slt          ra, s11, s8
                  srai         t5, a2, 7
                  sb           s7, 11(gp)
                  srai         a2, s8, 26
                  andi         a7, s1, 1560
                  lbu          t4, 71(gp) #end riscv_load_store_rand_instr_stream_0
                  beq          s11, t1, 80f
                  xori         a6, ra, -1882
66:               srl          t4, a6, s4
                  lui          tp, 296959
                  sll          a3, a4, s4
                  add          a2, t5, a0
70:               andi         s1, a0, -1613
71:               or           s0, t2, zero
                  bgeu         s3, a3, 79f
                  sub          ra, zero, s9
                  sra          a6, sp, t2
                  auipc        t3, 1004639
                  nop
77:               or           t4, a4, a0
                  srli         s5, t4, 27
79:               blt          s0, ra, 95f
80:               bne          s3, s1, 99f
                  nop
                  or           s7, t0, t2
                  bge          s7, s9, 101f
                  bne          s8, s2, 85f
85:               beq          zero, s9, 90f
                  srl          t2, a2, s8
                  sra          s11, sp, tp
                  srai         a1, s9, 20
                  blt          t6, s7, 103f
90:               addi         tp, ra, -738
                  srl          a3, t6, gp
                  and          s11, gp, s6
                  and          zero, s6, tp
                  and          t4, s5, s8
95:               bge          s1, t0, 99f
                  beq          s8, s4, 104f
                  bgeu         t5, t2, 105f
                  bltu         s1, t1, 110f
99:               slt          s1, a0, s5
                  slli         a1, t4, 12
101:              srli         a6, s6, 14
                  xor          sp, s3, a0
103:              sltiu        ra, s7, 622
104:              sra          t2, s1, s0
105:              and          tp, zero, s11
                  andi         t6, s8, 1969
                  bltu         a7, gp, 119f
                  slli         t5, s4, 20
                  slt          t2, t0, t2
110:              andi         a3, s7, -1169
                  srai         a1, a1, 0
                  slti         s1, s9, 325
                  add          a1, zero, a0
                  bne          s7, a6, 130f
                  blt          s4, s1, 133f
                  andi         a4, s7, -1908
                  or           a4, t6, s0
                  xor          s6, s10, s10
119:              and          a7, s4, s6
                  bne          s11, s1, 131f
                  blt          t2, t4, 139f
                  sra          t3, s4, zero
                  sltu         t1, s9, a2
                  sltiu        s1, s6, -1655
                  andi         sp, s10, -616
                  sltu         ra, a7, t2
                  ori          t1, t4, 775
                  xor          s6, s0, s4
                  bgeu         a1, zero, 133f
130:              srli         a5, a2, 19
131:              slli         s5, t1, 24
                  slti         zero, s11, 1149
133:              xor          t6, a0, s11
                  srl          s11, a2, t3
                  blt          ra, ra, 136f
136:              beq          t1, a3, 147f
                  srai         ra, s11, 9
                  slli         t0, t1, 6
139:              bgeu         a1, s1, 158f
                  nop
                  bne          a2, s6, 157f
                  addi         s6, t1, 1611
                  blt          gp, t2, 150f
                  or           a7, s7, s2
                  auipc        s9, 972199
                  nop
147:              sll          t0, a7, tp
                  srl          t3, s3, s1
                  add          s10, a4, t1
150:              srai         s11, t0, 17
                  slt          t3, t4, s9
                  addi         s1, s3, -69
                  and          t3, t2, zero
                  sltu         a3, s10, a5
                  ori          t3, s6, -317
                  or           a3, s9, s5
157:              bgeu         gp, s1, 171f
158:              slli         t5, a7, 20
                  bne          s3, s11, 162f
                  bltu         a5, s10, 161f
161:              or           t2, a4, a1
162:              srl          s0, s3, a7
                  slli         gp, a7, 21
                  addi         s10, s2, 673
                  slli         s3, t1, 22
                  addi         s6, s7, 502
                  xor          zero, s11, ra
                  xor          a6, ra, a5
                  sub          tp, tp, a5
                  sll          s11, sp, t5
171:              lui          a7, 148411
                  lui          a3, 171870
                  srai         gp, t2, 2
                  and          zero, t6, tp
                  bne          a1, ra, 182f
                  srli         s5, t6, 14
                  or           a1, s6, t6
                  slti         a3, s8, 563
                  sra          s11, s8, t2
                  auipc        a6, 173165
                  sll          gp, t4, s10
182:              bge          s6, s11, 190f
                  sub          sp, a1, t5
                  bgeu         tp, t1, 190f
                  and          t0, t6, a4
                  bgeu         ra, gp, 198f
                  sltiu        s6, s0, 1633
                  auipc        s11, 212369
                  srli         s6, gp, 31
190:              sltu         t5, s10, tp
                  srli         a6, t0, 14
                  bne          zero, a5, 193f
193:              slli         tp, a4, 27
                  sra          s11, a6, s7
                  slli         a5, t4, 16
                  auipc        ra, 365059
                  auipc        a6, 531100
198:              srli         s1, s9, 26
                  sub          a3, s11, a7
                  srl          a1, ra, t4
                  slt          s9, gp, s6
                  lui          tp, 743952
                  sltiu        s4, tp, 1990
                  and          s10, s1, tp
                  auipc        s9, 821611
                  xori         a1, a6, -1166
                  la           sp, region_0+1208 #start riscv_load_store_rand_instr_stream_1
                  slt          s9, a4, s9
                  lbu          zero, -121(sp)
                  sb           t6, -182(sp)
                  lbu          a7, 158(sp)
                  sra          s3, s4, s9
                  srl          s11, tp, t3
                  sb           t5, -6(sp)
                  lb           s11, 226(sp)
                  srai         gp, ra, 10
                  lbu          s3, -29(sp)
                  ori          a2, t2, -382
                  or           t5, t2, s2
                  lb           s10, 47(sp)
                  srl          a4, t6, s11
                  lb           t3, 244(sp)
                  xori         s6, a2, -205
                  sra          a7, zero, a0
                  lbu          a6, 33(sp)
                  lw           a2, -60(sp)
                  andi         t2, s10, -328
                  sh           s11, 230(sp)
                  sltiu        t2, t1, 1990
                  nop
                  xor          s1, s7, ra
                  lw           a5, -96(sp)
                  sub          s11, s6, s9
                  slti         zero, a0, -1052
                  lh           s4, -170(sp)
                  lb           a1, 25(sp)
                  or           s7, tp, s3
                  add          s1, t4, a4
                  lui          a5, 391484
                  lb           s5, 17(sp)
                  sltu         t1, s0, t4
                  lhu          a2, -124(sp)
                  auipc        a3, 773639
                  sb           a5, 162(sp)
                  auipc        tp, 377619
                  or           s11, s7, s6
                  sw           a2, 40(sp)
                  sltiu        zero, t2, 1154
                  lh           s6, 130(sp) #end riscv_load_store_rand_instr_stream_1
                  slt          a1, a7, a0
                  bgeu         s9, a1, 213f
                  slt          s7, t3, t4
                  srl          t0, s3, s5
                  and          s1, s8, t4
                  sra          t4, t1, t0
213:              add          a7, zero, a2
                  and          t3, a0, s10
                  sra          t0, a6, a1
                  ori          a7, sp, 741
                  beq          tp, s0, 232f
                  slti         t4, s0, -1535
                  bne          a1, a4, 225f
                  or           t0, t0, s4
                  nop
                  andi         s11, tp, 980
                  srli         s1, t1, 27
                  slt          sp, tp, zero
225:              andi         t0, t6, 730
                  bge          s0, s7, 230f
                  slti         s9, s3, -672
                  sll          s5, s11, s6
                  xori         s0, t0, -1765
230:              srl          s5, t2, s5
                  xor          sp, s11, gp
232:              srai         s11, s8, 15
                  beq          s3, a0, 245f
                  nop
                  slli         a3, a3, 0
                  srai         s3, t6, 23
                  beq          t4, s11, 251f
                  bgeu         s7, s5, 256f
                  slt          zero, a4, s6
                  nop
                  xor          s1, zero, t4
                  sll          s4, s5, t0
                  bltu         s9, t3, 259f
                  srl          tp, s0, s9
245:              nop
                  sltiu        tp, t3, 1741
                  add          a1, s9, zero
                  lui          ra, 818076
                  nop
                  sll          t0, s11, zero
251:              bge          s1, a0, 259f
                  sub          s7, tp, t3
                  blt          s4, a3, 271f
                  ori          t6, s2, -641
                  xor          t6, t5, s9
256:              add          s0, s8, t5
                  sll          t2, sp, s10
                  sra          t6, t3, a7
259:              sra          a7, s10, t2
                  sltiu        s7, t5, -1708
                  and          t0, t3, s4
                  bge          a2, s11, 279f
                  xori         s9, t3, 1506
                  sub          s5, s3, t3
                  srai         a4, s4, 6
                  andi         t5, ra, -1355
                  slli         s9, tp, 20
                  bge          a0, a5, 276f
                  xor          a3, a1, s9
                  slli         t0, s5, 1
271:              or           t0, s11, s9
                  srl          s3, s4, tp
                  and          t2, a2, t1
                  sub          t6, s5, a0
                  and          a5, s1, s5
276:              andi         t3, ra, 595
                  srl          s6, s8, zero
                  slli         t4, s3, 6
279:              srl          zero, t0, s6
                  lui          a7, 273931
                  slt          a1, a3, s8
                  bge          t1, t0, 300f
                  sub          s11, s4, a3
                  sltiu        a5, gp, -1563
                  xor          s9, s2, t6
                  bgeu         a6, ra, 306f
                  sltu         a6, a7, sp
                  or           s9, s11, s11
                  sub          a3, t2, zero
                  bltu         a3, sp, 297f
                  auipc        s7, 738111
                  srai         s7, t5, 31
                  xor          s11, a7, s11
                  bne          s8, a4, 310f
                  srai         zero, t5, 11
                  sll          t1, s0, zero
297:              auipc        t2, 522315
                  xori         t0, a1, -649
                  srai         s0, s0, 18
300:              auipc        a4, 811516
                  blt          t2, t3, 307f
                  andi         a5, a2, 1076
                  bltu         s8, t2, 319f
                  or           s9, s6, s10
                  srli         a4, a3, 24
306:              beq          t5, t4, 312f
307:              and          t6, a7, s11
                  sltu         s3, s6, t1
                  andi         s11, t4, -1950
310:              sll          s0, sp, s6
                  and          s6, a0, s1
312:              blt          s0, s3, 320f
                  srai         a1, s10, 16
                  xor          gp, s5, t2
                  sub          t3, s1, a0
                  slti         tp, s4, 1644
                  sltiu        t2, t1, -1532
                  srl          t5, t5, s9
319:              ori          t0, a4, 110
320:              and          s0, s1, a2
                  sub          t2, t5, a6
                  add          gp, a7, tp
                  srai         a5, s1, 20
                  bltu         s2, s3, 328f
                  xor          t3, zero, t4
                  auipc        ra, 213869
                  lui          t4, 327754
328:              ori          tp, sp, -1542
                  beq          gp, s1, 347f
                  andi         s1, s8, 1220
                  sll          s6, s0, t5
                  lui          t2, 859064
                  lui          a6, 140851
                  add          s6, a7, a0
                  or           s1, s0, t2
                  or           s9, s4, tp
                  beq          a7, a3, 356f
                  lui          t1, 933068
                  slt          t5, a3, zero
                  slli         a3, gp, 8
                  bltu         a2, s1, 349f
                  addi         s6, a5, 878
                  add          s3, t1, s7
                  add          a3, tp, a6
                  ori          s11, s0, -531
                  andi         s11, a6, 1927
347:              lui          t3, 399233
                  bne          a4, a7, 364f
349:              sll          zero, a0, t0
                  xor          gp, t1, tp
                  slt          s10, a3, a0
                  xori         a3, t3, 1030
                  bgeu         s8, a6, 358f
                  andi         s7, s7, -907
                  sltu         s1, sp, t1
356:              addi         s6, a1, 7
                  sll          s7, zero, s8
358:              add          s0, t4, sp
                  sltiu        t1, tp, -1234
                  sub          s3, ra, t2
                  sub          s5, t3, sp
                  xor          t0, sp, zero
                  sub          a6, gp, ra
364:              addi         t2, a5, -98
                  addi         s1, s8, 1453
                  xori         a2, s3, -2010
                  ori          s1, a3, 481
                  bne          t5, s2, 376f
                  slli         a6, t1, 20
                  beq          s2, t1, 381f
                  sub          s7, s11, s2
                  xor          s10, a3, a6
                  ori          s5, a5, 1919
                  lui          a1, 1011359
                  auipc        s1, 963407
376:              slt          t1, s11, gp
                  ori          tp, s11, -1168
                  bne          t2, t4, 396f
                  xor          zero, a0, ra
                  sll          t6, t6, t5
381:              andi         s11, t2, 517
                  bne          s3, s2, 402f
                  sub          s7, zero, ra
                  auipc        a7, 103919
                  srai         sp, t5, 27
                  auipc        s4, 50205
                  sub          s3, s2, t1
                  or           s4, s4, ra
                  bgeu         s5, t0, 401f
                  slti         zero, t1, -1467
                  srai         a5, sp, 27
                  ori          t4, sp, 1125
                  nop
                  nop
                  add          t2, a1, a2
396:              andi         t5, a7, 81
                  blt          a0, tp, 404f
                  bltu         s9, t3, 413f
                  bge          a7, s8, 413f
                  blt          t1, t6, 412f
401:              bge          t3, s4, 417f
402:              slt          t0, s5, s8
                  add          s0, ra, sp
404:              bge          s8, zero, 411f
                  add          s3, zero, gp
                  xori         gp, s5, -922
                  bgeu         s10, s9, 411f
                  bltu         s11, a1, 426f
                  lui          s5, 218070
                  srl          a7, t2, s10
411:              nop
412:              slt          a5, t0, t3
413:              xor          s10, tp, a7
                  sll          tp, a6, s10
                  slti         s6, t0, 329
                  andi         s10, t6, -1706
417:              sltiu        a6, t5, -1113
                  lui          s11, 598846
                  bge          a5, a0, 436f
                  sra          s0, t5, a5
                  srai         t6, a6, 12
                  xori         gp, a1, -1371
                  sltu         s4, s5, s8
                  srli         s1, ra, 21
                  bne          s4, a4, 428f
426:              blt          t6, t5, 433f
                  slt          s3, s1, t5
428:              nop
                  sltu         a2, gp, s10
                  bltu         s5, a1, 431f
431:              slt          s6, tp, sp
                  slti         s0, s9, 413
433:              sra          s1, s1, t4
                  sltu         s9, s6, t2
                  srl          a2, s9, ra
436:              ori          a5, s10, -1694
                  ori          t6, a4, 1498
                  slt          a4, s5, t3
                  ori          s0, a1, -1537
                  bne          s10, a6, 441f
441:              beq          a7, t4, 455f
                  add          t5, a3, a6
                  slti         t6, s8, 1272
                  xor          s10, s6, sp
                  blt          s8, t3, 446f
446:              add          s7, gp, s6
                  blt          a7, a4, 451f
                  slti         ra, a5, 1275
                  bne          s0, t5, 452f
                  beq          s10, a1, 465f
451:              srai         s4, s11, 29
452:              srli         t6, s7, 2
                  add          s0, s3, a5
                  bltu         a7, t0, 472f
455:              beq          a1, s8, 474f
                  and          t4, a3, t5
                  srl          tp, s10, a4
                  slti         zero, s0, 45
                  srl          s5, s11, s11
                  xor          gp, zero, s3
                  blt          s1, s3, 479f
                  bgeu         t1, ra, 470f
                  and          s6, a6, s2
                  sll          s6, a3, s2
465:              sub          gp, t5, a5
                  lui          s1, 667321
                  xor          zero, t4, t6
                  xori         a1, a3, 343
                  xor          s11, a1, s5
470:              sra          s0, a4, a6
                  andi         ra, zero, -1774
472:              srli         s9, s7, 21
                  bgeu         t5, a2, 480f
474:              auipc        s5, 881973
                  nop
                  sra          zero, gp, t1
                  blt          t4, s8, 485f
                  bne          ra, t0, 482f
479:              blt          s9, s6, 480f
480:              and          s5, s4, t5
                  addi         s1, a2, 14
482:              slt          s5, zero, s1
                  lui          a1, 896509
                  add          gp, t2, t1
485:              bge          t2, a6, 502f
                  sra          s0, a4, tp
                  srai         a6, t1, 15
                  slt          s11, zero, s3
                  and          s1, a0, s5
                  nop
                  bne          a0, s9, 492f
492:              bne          a6, a4, 508f
                  bgeu         s2, s11, 513f
                  xori         sp, t1, 848
                  sra          s4, a6, t4
                  auipc        a1, 885106
                  ori          a6, s8, -1130
                  xor          a6, s5, zero
                  sub          s4, s10, t1
                  auipc        t2, 523768
                  ori          a6, s9, -627
502:              ori          a6, a4, 996
                  xori         t2, a1, 1312
                  beq          t5, t0, 520f
                  add          s3, a0, a5
                  ori          s9, a0, 71
                  sltiu        sp, s6, -42
508:              bltu         gp, t4, 522f
                  bltu         s6, s11, 515f
                  slti         s0, ra, 521
                  beq          t1, t4, 519f
                  slti         a3, zero, -1744
513:              bltu         t2, a4, 525f
                  slt          s11, a0, s10
515:              auipc        a6, 847238
                  sll          gp, t4, t2
                  slli         s0, s11, 4
                  bne          a2, sp, 525f
519:              sra          tp, s4, s2
520:              addi         s4, t5, 942
                  and          a1, a5, s6
522:              beq          ra, s9, 536f
                  or           s10, t0, s2
                  sra          s6, t3, s7
525:              slt          s3, a6, t2
                  add          s1, t1, a6
                  srli         t2, t5, 16
                  srai         ra, s6, 3
                  sltu         s10, s0, a5
                  srli         s4, a5, 12
                  or           a6, s2, s8
                  srl          s1, gp, s3
                  sll          zero, s7, a0
                  slli         t5, s2, 6
                  bne          zero, t0, 536f
536:              slti         a1, a4, 60
                  sltiu        ra, tp, -1229
                  sub          s3, sp, t1
                  srl          a2, s2, t1
                  srli         a1, t1, 14
                  sltiu        s10, a3, -1979
                  srl          t4, t4, t0
                  sltiu        s5, s0, -626
                  bltu         s1, t6, 549f
                  ori          s3, sp, 1065
                  srai         s7, s2, 26
                  ori          s5, s0, 724
                  lui          t4, 267282
549:              slt          sp, a1, a2
                  nop
                  bltu         s0, gp, 567f
                  slti         tp, t6, 1495
                  nop
                  srli         s1, a4, 8
                  beq          t5, s1, 567f
                  slti         t1, a6, -1959
                  bne          a6, a6, 575f
                  sltu         ra, a2, gp
                  sltiu        s9, s4, -605
                  or           a5, s3, a2
                  auipc        s0, 487243
                  auipc        s3, 618521
                  add          s1, gp, s0
                  beq          t0, a3, 570f
                  blt          a0, sp, 576f
                  srl          s1, a7, s2
567:              sra          tp, t6, s7
                  sltu         t2, s2, s6
                  sub          s9, s3, a5
570:              auipc        s1, 481188
                  nop
                  sltu         t3, t3, t3
                  add          a2, a5, s11
                  xori         s10, a0, -550
575:              and          s9, s6, s3
576:              auipc        tp, 208549
                  sltiu        s6, t4, 196
                  add          s0, a2, s3
                  add          t5, tp, t2
                  sltiu        t0, a6, 962
                  blt          a7, t6, 588f
                  bgeu         s2, t4, 590f
                  bgeu         s8, sp, 599f
                  srai         sp, s1, 26
                  lui          tp, 406239
                  slt          s6, t6, a3
                  sra          s0, s1, s6
588:              sub          a2, a2, t6
                  slt          s5, s10, s3
590:              or           t1, a4, t2
                  bne          s10, a2, 596f
                  nop
                  slti         a1, s0, -415
                  slli         tp, s10, 14
                  auipc        s1, 298247
596:              slli         gp, ra, 23
                  sll          tp, t5, t3
                  addi         s11, tp, -1144
599:              addi         zero, s5, 1612
                  add          a4, t4, a7
                  auipc        a4, 1005755
                  beq          s6, s2, 617f
                  slli         t5, s1, 18
                  beq          s1, tp, 624f
                  bge          s5, ra, 617f
                  bgeu         sp, a3, 612f
                  srli         gp, s11, 24
                  ori          t4, s2, 81
                  xori         t3, t6, 1990
                  sra          t2, t0, s2
                  srai         gp, s7, 5
612:              beq          s10, s2, 630f
                  sltu         tp, a0, t1
                  nop
                  srl          t3, s5, sp
                  andi         s0, a4, 519
617:              bne          s6, s0, 624f
                  nop
                  lui          s6, 257554
                  and          sp, t2, s8
                  xor          t3, t2, t1
                  slt          s5, a6, s5
                  bltu         s0, s7, 641f
624:              bgeu         s0, gp, 630f
                  slli         s3, s4, 7
                  slti         t5, a3, 1608
                  ori          gp, s4, 1970
                  addi         s5, t6, -1488
                  bge          s4, a1, 637f
630:              slt          s10, t5, t6
                  srli         a2, tp, 4
                  bge          a2, a5, 639f
                  sub          ra, s1, zero
                  blt          tp, t2, 653f
                  slti         s3, tp, 2018
                  slti         t2, gp, 1028
637:              bne          t4, s5, 644f
                  bltu         s0, a6, 646f
639:              auipc        a6, 339089
                  srli         s9, s11, 15
641:              sll          zero, t1, s5
                  sub          a7, a5, s6
                  andi         t1, zero, 193
644:              bgeu         t1, ra, 662f
                  xori         ra, s5, -130
646:              lui          a7, 354910
                  slti         a3, s6, 964
                  sll          t4, s3, s4
                  slli         zero, s9, 13
                  nop
                  andi         a6, a5, 104
                  slti         t2, s0, 1111
653:              srli         s3, s0, 29
                  slli         t6, t6, 19
                  bgeu         zero, s7, 658f
                  bltu         a0, s4, 657f
657:              sra          a5, s9, t3
658:              bge          s10, s3, 659f
659:              srl          a2, a0, s3
                  srl          s1, a5, s6
                  slt          s4, s3, a5
662:              bne          s11, a7, 673f
                  bne          t6, t3, 679f
                  and          t1, s1, a6
                  ori          s1, a0, -891
                  slt          t1, t3, ra
                  srai         a3, s5, 3
                  add          s0, t4, a6
                  xor          zero, s6, t3
                  nop
                  sltiu        zero, s6, 1541
                  slli         s3, s6, 20
673:              addi         t2, t2, -1123
                  sra          gp, tp, a2
                  bge          ra, s8, 691f
                  sub          ra, t1, s8
                  xori         zero, t0, -166
                  add          t0, ra, a0
679:              xori         s3, s6, 1973
                  or           s11, a4, s9
                  sra          s6, sp, t3
                  srai         s0, t0, 10
                  beq          ra, s8, 687f
                  bltu         a4, s11, 698f
                  srli         a7, a3, 23
                  sll          s10, s9, a7
687:              andi         sp, a0, -898
                  blt          a1, t2, 689f
689:              slt          t0, ra, t3
                  srl          t2, s5, t2
691:              xor          a3, a0, t5
                  add          s4, a2, zero
                  add          ra, s1, s1
                  sltiu        s11, s9, 1369
                  sltu         s0, a6, s0
                  xor          a7, a6, t0
                  bge          t2, t2, 701f
698:              slli         a6, s7, 24
                  beq          a4, s1, 716f
                  bltu         sp, a5, 714f
701:              or           a1, ra, t3
                  or           s10, t6, s9
                  lui          s5, 472869
                  beq          a2, gp, 716f
                  sra          s1, tp, s7
                  auipc        a2, 811438
                  bge          s9, t3, 725f
                  srli         tp, a5, 24
                  sltiu        s9, gp, 751
                  blt          a4, a4, 717f
                  blt          a2, t0, 712f
712:              beq          t2, t0, 729f
                  or           s7, t2, s10
714:              slti         a7, s9, -1366
                  addi         zero, a7, 166
716:              blt          s10, s8, 732f
717:              bne          a7, a5, 733f
                  and          t3, t0, s7
                  lui          ra, 721317
                  and          s11, s6, s5
                  addi         t1, tp, 753
                  bne          s6, ra, 740f
                  or           a4, t4, a7
                  slli         a2, sp, 24
725:              andi         s9, zero, -1133
                  andi         a2, s11, -782
                  xori         s11, t6, 279
                  srai         ra, t4, 25
729:              bge          a6, a3, 734f
                  ori          s5, gp, 794
                  add          t3, a2, s10
732:              bge          zero, s0, 746f
733:              andi         sp, a6, -2
734:              srl          a7, t6, a1
                  ori          s6, s1, -654
                  sub          a5, a1, tp
                  auipc        t4, 41712
                  andi         a4, s5, 1186
                  addi         t5, s0, 1386
740:              xor          s7, ra, t0
                  bltu         a6, s0, 745f
                  xor          s5, t2, a7
                  auipc        zero, 822400
                  andi         a5, t5, -480
745:              auipc        a2, 535089
746:              ori          t5, ra, 1455
                  addi         t2, t2, 1311
                  blt          zero, t1, 749f
749:              lui          gp, 951932
                  xor          t4, s7, a4
                  slli         a2, s8, 28
                  ori          s9, a4, -15
                  xori         t3, s9, 1507
                  bgeu         s9, s6, 760f
                  and          s9, t4, t6
                  bgeu         s4, s1, 760f
                  lui          t2, 802979
                  srai         s9, sp, 10
                  srai         s0, a0, 0
760:              blt          t5, tp, 768f
                  addi         t4, s0, -1650
                  ori          s4, s7, 122
                  slt          s10, zero, a4
                  beq          a1, s9, 778f
                  andi         zero, t2, -1406
                  bne          a0, s3, 769f
                  sltiu        gp, s3, -863
768:              auipc        gp, 738796
769:              bge          a3, t3, 788f
                  slt          gp, tp, s6
                  bgeu         t0, a1, 778f
                  xori         s0, s10, 545
                  srli         s4, s10, 0
                  sub          a2, s5, s1
                  sltu         gp, t5, t5
                  bne          s10, s8, 794f
                  auipc        s6, 472328
778:              add          s1, a6, s2
                  srai         t4, s2, 24
                  slti         sp, gp, 811
                  xori         a2, sp, 335
                  bne          t4, s8, 790f
                  srli         a4, s3, 12
                  sltu         t2, a4, s8
                  beq          a1, t1, 801f
                  ori          a4, zero, 223
                  sltu         a5, t2, t0
788:              sll          a5, ra, s6
                  and          s6, s11, tp
790:              ori          t2, s1, -807
                  slti         sp, t0, 1814
                  andi         t5, s3, 644
                  addi         t5, t0, -1966
794:              xori         t2, s6, -3
                  slt          ra, t1, s1
                  andi         a6, a2, -365
                  ori          s4, a2, 823
                  xor          zero, s0, s2
                  bltu         a4, gp, 819f
                  lui          s10, 188350
801:              or           t6, s3, t1
                  sra          ra, t3, s1
                  slli         a4, t5, 30
                  srl          s9, zero, t3
                  andi         a2, s4, 127
                  and          t6, tp, s11
                  xori         t2, a1, 1242
                  bgeu         t3, s7, 816f
                  sll          a1, t0, s8
                  srai         s3, s2, 19
                  sra          sp, t6, t4
                  or           a1, a6, a0
                  blt          s3, s9, 820f
                  slli         a3, s11, 0
                  andi         a1, t6, 669
816:              ori          gp, a2, -1820
                  blt          s3, zero, 829f
                  xor          a6, s8, a2
819:              srl          gp, s0, s4
820:              sltiu        t3, a1, -936
                  bltu         zero, t3, 836f
                  auipc        s9, 595532
                  nop
                  xori         t4, gp, 232
                  sra          a7, a6, a0
                  beq          s2, ra, 832f
                  blt          t6, ra, 839f
                  add          t1, s4, a4
829:              sll          zero, s8, s10
                  sll          a1, s10, t4
                  bltu         sp, s11, 842f
832:              xori         s11, gp, -1337
                  bgeu         s1, t6, 834f
834:              ori          s9, s8, 397
                  lui          s10, 266081
836:              slti         s0, t3, 994
                  bge          a6, a2, 851f
                  xor          s6, a6, a5
839:              slti         s4, s7, 349
                  add          tp, s10, a2
                  bgeu         t2, t4, 857f
842:              andi         t1, sp, -814
                  slli         tp, tp, 10
                  sub          a2, t0, s11
                  srli         s7, a7, 9
                  or           s6, s4, a1
                  sra          s5, a6, a5
                  xori         a4, ra, 836
                  lui          zero, 368498
                  ori          s11, s8, 1385
851:              andi         a4, t3, 949
                  ori          s11, t5, 1904
                  sll          a2, t5, s6
                  xor          ra, ra, s8
                  or           t1, a0, t6
                  auipc        a6, 201939
857:              srl          s5, a3, a7
                  nop
                  bge          s9, s8, 863f
                  slti         a3, s10, -1410
                  bne          s9, s9, 869f
                  srl          t3, a2, s2
863:              bltu         t2, a4, 875f
                  srli         t2, s9, 10
                  slt          a4, s2, a5
                  srl          t2, t4, gp
                  ori          a4, t0, -13
                  bltu         sp, t3, 875f
869:              sub          t2, a1, s0
                  srli         gp, s0, 7
                  add          a1, sp, s4
                  srli         a7, t4, 23
                  slti         t2, t3, -1
                  sub          s10, zero, s1
875:              nop
                  sll          t6, a3, s5
                  beq          s5, t3, 895f
                  srl          zero, s11, a4
                  sra          s1, t5, s6
                  or           a7, t3, a3
                  bltu         t6, s4, 889f
                  nop
                  blt          sp, s8, 886f
                  sltiu        ra, ra, -1117
                  auipc        s5, 297119
886:              sra          s4, s6, s2
                  and          t4, gp, a5
                  bgeu         t4, a7, 905f
889:              xori         ra, s1, 732
                  srl          t5, s4, a6
                  addi         a6, s8, 669
                  bltu         t1, t5, 893f
893:              sra          s10, s5, a3
                  sra          a1, a5, s4
895:              sltiu        t3, t4, 1266
                  srli         a6, s5, 19
                  nop
                  bltu         t2, t2, 903f
                  bne          s3, s7, 905f
                  lui          s9, 751057
                  andi         a3, t0, -160
                  nop
903:              sll          sp, a4, tp
                  addi         a7, t5, 1953
905:              or           tp, zero, t5
                  ori          sp, s4, -613
                  ori          zero, t3, 1871
                  lui          sp, 1007308
                  nop
                  or           s3, a5, s7
                  xori         t6, a3, 1019
                  slli         s3, a1, 3
                  sll          a4, sp, s7
                  ori          gp, t1, 684
                  bgeu         t2, a0, 927f
                  bne          a1, s10, 922f
                  slli         t2, t2, 20
                  ori          a4, s7, -303
                  and          s1, a4, s7
                  ori          tp, s1, 1460
                  slli         s0, a7, 20
922:              xori         a2, tp, -678
                  srai         a5, s0, 28
                  ori          sp, a3, -1360
                  xor          a1, a3, t3
                  bge          s8, s1, 944f
927:              bltu         a0, s10, 945f
                  bgeu         s0, t4, 944f
                  auipc        t4, 895880
                  slti         a5, s7, 1545
                  sra          a5, t3, a7
                  bne          t6, t4, 933f
933:              srli         a3, a0, 27
                  sll          t3, a3, a4
                  addi         a7, a1, -1289
                  nop
                  auipc        s3, 508669
                  sub          t2, ra, a3
                  slt          s0, t2, zero
                  sra          a2, t4, t5
                  srai         s9, s5, 19
                  sll          tp, a7, s9
                  or           t5, s4, s10
944:              add          sp, s2, s7
945:              and          a7, sp, a0
                  addi         a6, a0, 333
                  bne          t5, s6, 954f
                  sll          t5, t0, s2
                  slt          t1, t3, sp
                  ori          tp, t3, 1049
                  blt          zero, gp, 965f
                  bgeu         t4, a6, 972f
                  sll          s5, t0, s9
954:              sll          s3, s3, sp
                  bne          a4, t0, 963f
                  xor          s1, s7, sp
                  bltu         a0, s10, 958f
958:              lui          t4, 1000782
                  or           t5, sp, a7
                  addi         t4, a2, -1818
                  andi         s5, a5, 169
                  sltiu        s0, s11, -1874
963:              xori         a1, a1, -834
                  srl          t4, t6, a7
965:              auipc        s6, 773225
                  slt          a1, a6, s11
                  srl          a5, t0, s2
                  sra          t2, ra, s10
                  bgeu         s1, s3, 980f
                  add          t6, s3, t5
                  srl          s4, a6, a7
972:              or           t3, zero, s6
                  srli         gp, s5, 9
                  add          s10, s2, a0
                  sll          t5, t1, t4
                  beq          a7, t4, 991f
                  slti         gp, s7, 1561
                  or           s3, zero, a3
                  sltu         sp, ra, a0
980:              srl          t4, s2, s3
                  sra          t4, s10, a6
                  sub          a4, s5, a4
                  srai         ra, a7, 30
                  bge          s4, s2, 988f
                  or           s1, a4, ra
                  bne          s1, gp, 1005f
                  bltu         s9, t2, 994f
988:              addi         gp, s1, -1685
                  beq          s6, s11, 1005f
                  ori          zero, gp, -1782
991:              nop
                  nop
                  or           a1, t6, t5
994:              blt          s11, a4, 1014f
                  beq          s8, zero, 999f
                  nop
                  bne          a5, s5, 1009f
                  bltu         s1, a4, 1016f
999:              or           t2, sp, s8
                  srl          ra, t2, t3
                  andi         t3, a1, -228
                  beq          s11, s5, 1005f
                  sltiu        s4, s8, 690
                  sltu         gp, s1, t3
1005:             slti         s7, zero, -1592
                  auipc        a5, 367650
                  srl          t1, s1, t0
                  bne          a5, s10, 1015f
1009:             and          s6, gp, t2
                  slti         s11, s6, -1761
                  add          gp, t0, sp
                  srl          gp, t0, a6
                  sltiu        s4, t6, -752
1014:             auipc        s4, 360894
1015:             auipc        s4, 198050
1016:             andi         a6, gp, -439
                  bne          t0, s0, 1029f
                  sra          a7, s11, s9
                  xori         s3, t3, 719
                  nop
                  slt          a1, sp, s2
                  or           a3, s0, t1
                  beq          tp, s2, 1037f
                  bgeu         tp, s9, 1031f
                  bltu         a5, gp, 1033f
                  bltu         sp, a4, 1034f
                  slti         s5, s6, 944
                  blt          t1, s8, 1036f
1029:             beq          s7, t1, 1036f
                  bgeu         a0, a5, 1036f
1031:             sra          s9, a2, tp
                  sra          a5, s7, s1
1033:             and          a7, t1, s10
1034:             nop
                  sub          zero, a7, s3
1036:             sll          t6, t4, a1
1037:             srli         t1, s11, 25
                  xor          s7, a0, a1
                  beq          s0, s5, 1043f
                  slli         a1, gp, 30
                  lui          s10, 1024333
                  bne          a3, t4, 1048f
1043:             andi         ra, s11, 295
                  srai         s9, a1, 1
                  nop
                  xor          t4, a0, s0
                  auipc        a4, 1019673
1048:             slt          s10, t6, s10
                  xor          s7, a4, s11
                  xor          a2, t4, t2
                  nop
                  slt          s11, zero, t6
                  bltu         a0, a3, 1054f
1054:             slli         s0, t4, 0
                  slt          gp, tp, sp
                  slt          a1, s5, a3
                  and          s4, s6, a5
                  slt          t4, t5, s2
                  srli         a5, s2, 1
                  add          tp, s2, s4
                  lui          zero, 467587
                  srl          gp, a7, t2
                  add          a6, a0, a4
                  and          t2, zero, t2
                  nop
                  lui          a6, 499385
                  sra          s1, t5, tp
                  addi         a5, a7, 1013
                  andi         s1, tp, -1627
                  sub          s6, ra, t3
                  blt          a3, t6, 1089f
                  slli         s3, s7, 8
                  xor          a3, s4, s3
                  and          s1, a7, a4
                  bltu         a5, a6, 1091f
                  srl          s5, zero, sp
                  nop
                  or           t2, a7, t6
                  addi         a2, s5, 259
                  srl          s6, tp, t6
                  auipc        s5, 534476
                  srai         t2, t4, 11
                  sltu         a2, s1, ra
                  slti         zero, s0, -1663
                  auipc        t2, 892860
                  auipc        s10, 560110
                  sltu         t1, s7, sp
                  slti         a5, s3, -1783
1089:             bltu         s7, s0, 1090f
1090:             andi         s11, t3, 590
1091:             bgeu         s1, zero, 1109f
                  andi         s0, a1, 1055
                  sll          s11, a5, a2
                  srl          s0, t3, t3
                  bgeu         s6, s0, 1096f
1096:             slti         gp, s5, -313
                  sub          t4, t5, a0
                  auipc        t2, 127954
                  nop
                  xor          a1, t5, s10
                  sra          s4, a0, s4
                  sll          s5, zero, a3
                  sltiu        t0, a6, 329
                  ori          s1, tp, -1411
                  or           a7, a3, s3
                  bgeu         t6, a5, 1125f
                  srli         t6, ra, 26
                  srl          ra, s7, t2
1109:             xor          s5, s5, s6
                  lui          s0, 1026547
                  slt          s7, a3, t6
                  andi         s5, s5, -1164
                  sra          t3, a5, a2
                  bgeu         t0, s2, 1130f
                  bltu         s1, tp, 1126f
                  auipc        t0, 509204
                  slli         t2, s4, 29
                  bgeu         tp, a4, 1134f
                  add          tp, s2, s3
                  slli         t5, gp, 24
                  add          a5, t2, gp
                  slt          s4, t5, t0
                  sltiu        zero, t6, -1027
                  ori          s3, a0, 1700
1125:             beq          t0, sp, 1140f
1126:             xori         t1, s0, 1532
                  beq          a6, t1, 1132f
                  sub          s9, a4, s11
                  auipc        s10, 259022
1130:             or           s9, s2, s7
                  beq          s7, a6, 1148f
1132:             lui          s7, 1021303
                  blt          t5, a7, 1147f
1134:             srl          a4, a4, s10
                  srli         s10, s4, 18
                  sra          s6, sp, a3
                  bltu         t1, a3, 1138f
1138:             srl          t5, tp, s6
                  sll          t6, sp, t3
1140:             or           s0, tp, s7
                  slli         a1, ra, 30
                  addi         s7, sp, -917
                  or           s4, a2, s1
                  blt          t0, s8, 1159f
                  or           t2, s3, s4
                  xor          s10, a3, s3
1147:             srai         ra, gp, 11
1148:             or           t2, a7, a0
                  sltiu        s10, t1, 1581
                  xor          s4, a1, s0
                  sub          s11, tp, a0
                  sltu         t5, t5, s10
                  slli         s3, t2, 1
                  slti         ra, s8, 1815
                  xor          a6, t5, a0
                  or           t4, s3, s0
                  bltu         tp, s10, 1163f
                  srai         t0, s10, 2
1159:             slt          s6, s6, a3
                  or           gp, s2, a4
                  slli         s6, ra, 18
                  ori          s0, t0, 720
1163:             sub          ra, s1, s9
                  andi         gp, t2, 1714
                  slt          a6, s0, s7
                  slti         s6, tp, -151
                  xor          s11, gp, a1
                  andi         t4, s2, 1689
                  bgeu         s5, s1, 1188f
                  sltiu        sp, s2, 409
                  ori          s9, a1, 988
                  addi         s5, s11, 1953
                  sra          s11, s1, t1
                  srai         s1, s9, 25
                  slti         a4, zero, -461
                  slti         a4, t3, -72
                  slti         a2, s1, -22
                  xor          a3, a5, s4
                  slti         s6, s6, -470
                  sub          a7, t3, s3
                  bne          a0, s6, 1189f
                  srl          s4, t6, s8
                  srai         s0, a7, 10
                  srli         t6, t4, 13
                  slti         t0, t5, -149
                  srai         a5, s9, 30
                  slli         a1, t2, 2
1188:             sub          a4, a3, ra
1189:             sll          a2, t3, s3
                  add          t4, s2, a0
                  add          gp, gp, t2
                  sltiu        tp, a7, -184
                  bltu         t4, t6, 1211f
                  slli         s10, t2, 21
                  sltu         s3, gp, a6
                  slt          s10, t3, t4
                  srli         t3, t5, 21
                  slti         a3, a1, 140
                  andi         t1, s2, 2022
                  ori          s3, t2, 2006
                  bge          t4, s4, 1213f
                  slti         zero, ra, -804
                  xor          t5, gp, a1
                  sltu         s11, s2, t5
                  bge          gp, t1, 1216f
                  xor          gp, a1, t2
                  andi         s11, a2, -1158
                  and          s1, zero, a0
                  srli         s11, a2, 2
                  xor          t1, s11, t5
1211:             add          t5, a2, t3
                  sll          a1, a7, t3
1213:             slti         t4, s1, 188
                  nop
                  slt          t0, ra, a5
1216:             blt          a3, a6, 1220f
                  lui          t3, 532516
                  and          a3, t3, s1
                  add          a2, a6, t0
1220:             bge          t1, s9, 1240f
                  slli         s11, t2, 13
                  slt          s9, a5, a4
                  andi         a1, s8, 1922
                  sub          s7, gp, a0
                  lui          s4, 362419
                  andi         a5, t0, 360
                  bltu         gp, s1, 1244f
                  xor          zero, a1, t5
                  auipc        s4, 1041160
                  slli         t6, s3, 3
                  xori         s0, t1, 124
                  sll          t6, a0, a0
                  slti         t5, zero, -745
                  sltiu        ra, s11, -1425
                  addi         t4, t5, 206
                  sltiu        a6, a7, -554
                  lui          a1, 485323
                  lui          sp, 366845
                  andi         s4, a4, 765
1240:             sub          ra, a1, a0
                  slli         t4, a1, 22
                  ori          zero, a0, 519
                  sltiu        sp, s4, -924
1244:             or           a3, t0, t5
                  or           t4, a6, s11
                  sll          a7, a0, ra
                  sub          s9, t6, s8
                  xor          gp, t0, t4
                  srl          s5, t3, s10
                  auipc        s7, 558581
                  sltu         s11, gp, t6
                  sltiu        s5, s11, -1215
                  add          s6, s7, ra
                  sltiu        a5, ra, -1766
                  slti         a3, s11, -279
                  sll          s6, s11, zero
                  xor          a2, s4, s8
                  and          sp, a7, s0
                  sltu         t5, a1, t4
                  nop
                  slli         a5, s10, 20
                  andi         s7, t5, -1980
                  blt          t4, t6, 1281f
                  ori          a6, a5, 1629
                  sltiu        s10, a1, 964
                  lui          s4, 546958
                  auipc        a6, 957190
                  sra          t3, s10, a4
                  and          zero, s7, tp
                  ori          t5, s10, 717
                  addi         a1, s0, -1677
                  sltu         a4, s6, s2
                  sltiu        t6, s6, -434
                  sll          tp, t1, a4
                  lui          t0, 375745
                  xor          t4, s10, s8
                  blt          s3, a1, 1293f
                  bne          s7, sp, 1294f
                  sub          s4, a1, s3
                  beq          s4, a2, 1283f
1281:             slti         ra, ra, -202
                  beq          t5, t1, 1286f
1283:             nop
                  xor          s4, a0, gp
                  srl          a3, s4, s3
1286:             sltu         ra, a5, t0
                  auipc        s0, 150177
                  sltiu        s1, s1, 1350
                  bgeu         a4, s11, 1295f
                  blt          s9, t4, 1308f
                  slt          s0, t6, t0
                  and          s1, s8, a0
1293:             add          s0, t5, s6
1294:             xori         a2, tp, -814
1295:             addi         s6, tp, 874
                  or           ra, t5, tp
                  bge          s3, s0, 1298f
1298:             nop
                  slti         a3, s3, -408
                  srl          gp, s0, sp
                  beq          a1, s7, 1309f
                  sltu         a4, s9, s0
                  xor          s11, a3, a3
                  slti         s9, a2, 939
                  ori          t3, s5, -267
                  bge          s10, s3, 1313f
                  sra          t0, t2, s10
1308:             sltiu        t2, s0, 946
1309:             sra          a4, a2, zero
                  beq          t5, ra, 1322f
                  ori          s10, t6, -2032
                  sub          a1, a4, s0
1313:             andi         ra, t5, -447
                  srli         ra, s10, 17
                  sra          s10, t4, a1
                  add          sp, a3, t1
                  beq          s11, a2, 1325f
                  nop
                  or           s1, zero, s0
                  ori          t4, ra, -1335
                  slt          s0, s3, a5
1322:             xori         s5, a0, -1346
                  srai         s3, s3, 22
                  bge          sp, a5, 1338f
1325:             or           a4, a2, a2
                  andi         a5, s7, 1913
                  sub          t6, tp, t5
                  ori          t1, t1, -1477
                  slt          s5, t6, a1
                  sra          s5, a2, s5
                  sra          s4, a2, s9
                  addi         zero, gp, -1306
                  lui          t2, 192785
                  sub          s3, s6, a3
                  xor          a5, s4, s7
                  blt          a5, s8, 1350f
                  ori          t0, a2, 287
1338:             slli         tp, t1, 9
                  and          s11, t5, a3
                  srai         s4, t2, 17
                  bltu         zero, a6, 1346f
                  srai         s5, s8, 2
                  sltiu        t0, a0, 1140
                  blt          t3, gp, 1351f
                  srl          s10, s0, s4
1346:             add          s0, s4, s7
                  srli         t4, a2, 16
                  addi         s6, a7, -1237
                  sltiu        sp, a0, -1898
1350:             slti         s5, a0, -1939
1351:             slli         s6, s5, 20
                  auipc        t0, 125786
                  sltiu        a2, s10, -582
                  nop
                  bgeu         ra, s5, 1362f
                  bgeu         sp, s0, 1357f
1357:             bgeu         s4, zero, 1373f
                  and          t2, t3, t6
                  srai         s6, s9, 28
                  sltu         t6, s5, tp
                  bgeu         s5, a7, 1364f
1362:             nop
                  slli         zero, t2, 1
1364:             sll          t1, sp, t4
                  bne          a7, t1, 1366f
1366:             or           t4, gp, a4
                  xori         t4, s0, -381
                  sll          s11, s10, s0
                  sltiu        t2, t4, 257
                  srl          a4, a4, t0
                  ori          t6, s1, -1904
                  slti         ra, a1, -1533
1373:             srl          gp, t0, zero
                  xori         t0, a1, -599
                  srl          zero, tp, s4
                  xor          s3, a3, gp
                  blt          s4, s3, 1384f
                  slt          s7, s11, a4
                  ori          t1, t2, 499
                  bge          s7, s10, 1387f
                  sub          ra, a5, t6
                  addi         a5, zero, -1674
                  bne          a0, s1, 1395f
1384:             addi         a5, s3, 1679
                  xor          zero, s3, s8
                  sltiu        a1, s9, -289
1387:             slt          s0, zero, a5
                  sltu         t3, a2, ra
                  srai         a7, s9, 7
                  sra          ra, a7, s8
                  sra          s4, s1, a5
                  sll          s9, t0, sp
                  srai         s11, sp, 21
                  bne          s5, t2, 1399f
1395:             auipc        ra, 55088
                  xori         a3, s3, 386
                  auipc        sp, 259210
                  slt          t2, a3, a6
1399:             or           a6, t2, s4
                  bne          s7, t6, 1419f
                  andi         t0, s2, 2007
                  andi         s0, tp, 18
                  slti         a1, t6, 148
                  sltu         sp, s8, s10
                  add          s7, s1, a3
                  ori          a7, s7, -973
                  bne          s10, s1, 1408f
1408:             beq          a5, t0, 1416f
                  slt          t5, zero, s1
                  xor          a3, t5, tp
                  bltu         t4, sp, 1426f
                  sra          s6, t6, s5
                  sub          s0, s9, t6
                  nop
                  ori          tp, a4, 1391
1416:             sltu         t4, t5, t3
                  bgeu         s5, tp, 1425f
                  sub          a2, t4, s8
1419:             sltu         t4, zero, s5
                  xor          t6, s11, s3
                  bge          t5, t1, 1437f
                  nop
                  bge          s3, t2, 1435f
                  xor          gp, a5, a1
1425:             beq          a5, s8, 1436f
1426:             lui          a2, 696622
                  slt          t1, s7, a6
                  slti         t6, a4, -863
                  sub          s11, gp, s8
                  bne          a2, s5, 1446f
                  ori          t2, a0, 555
                  and          t3, t5, s9
                  xori         a5, s1, -205
                  lui          a7, 309381
1435:             sra          a2, s2, s10
1436:             bge          ra, a1, 1440f
1437:             srai         a6, t3, 22
                  sll          s10, t1, sp
                  bltu         s9, s0, 1445f
1440:             srai         a5, s8, 2
                  sltiu        t5, a2, 1811
                  blt          s1, sp, 1460f
                  sltu         ra, a2, s8
                  add          s0, s4, t6
1445:             blt          zero, s3, 1446f
1446:             sra          t5, a6, t0
                  blt          s4, t5, 1451f
                  slli         t1, s7, 6
                  nop
                  nop
1451:             nop
                  lui          t6, 547142
                  blt          tp, s6, 1460f
                  bgeu         t1, zero, 1471f
                  sra          s11, a3, a6
                  auipc        zero, 86289
                  xori         s7, a4, 739
                  blt          s7, t1, 1472f
                  sll          s11, gp, s8
1460:             sltiu        ra, t2, 1539
                  xori         s5, a1, -1979
                  bne          s2, a1, 1480f
                  sub          s6, a4, a6
                  and          a1, a4, t3
                  xor          sp, s5, s6
                  add          a2, a7, s1
                  beq          a5, tp, 1483f
                  srai         a6, s5, 13
                  bltu         ra, t1, 1489f
                  or           ra, a7, gp
1471:             andi         a6, a1, -1632
1472:             sll          s7, s11, a7
                  sltu         s9, t4, s4
                  blt          ra, t4, 1480f
                  bgeu         s8, s4, 1493f
                  lui          t5, 492410
                  srl          gp, a6, s6
                  auipc        s5, 113397
                  srl          a6, t3, s1
1480:             srl          ra, tp, s3
                  bltu         s5, s7, 1495f
                  andi         t1, a4, -1306
1483:             blt          s3, s6, 1491f
                  sltu         t3, s8, zero
                  bgeu         a2, gp, 1491f
                  slti         zero, a3, -1045
                  slt          a3, s1, s2
                  slti         a1, s7, 1235
1489:             slt          s4, a6, t1
                  bge          s11, t6, 1497f
1491:             blt          a3, s6, 1499f
                  srli         a2, s7, 18
1493:             xori         s9, ra, -297
                  slli         t4, ra, 24
1495:             andi         s9, s1, -1253
                  slti         a5, a2, -651
1497:             bne          a6, s8, 1498f
1498:             bgeu         s8, t5, 1506f
1499:             nop
                  and          a2, s4, t5
                  sltu         a5, s1, s2
                  srai         t4, zero, 0
                  sub          t2, s3, a3
                  nop
                  srai         ra, t5, 22
1506:             nop
                  or           t5, t0, a0
                  bne          s0, zero, 1522f
                  xor          tp, a0, s7
                  beq          a1, t6, 1526f
                  nop
                  and          a7, tp, t5
                  sltu         t3, s7, s2
                  srli         s3, tp, 3
                  sub          t1, gp, a2
                  add          s0, a2, t0
                  sll          sp, a4, s4
                  xori         a3, t0, -381
                  ori          a5, a6, -1618
                  and          ra, s5, s5
                  or           t5, a5, s7
1522:             addi         s11, t3, 1890
                  sltiu        a5, t1, 238
                  blt          s8, s1, 1535f
                  sll          sp, s8, s2
1526:             slli         t5, s4, 18
                  srl          t5, a7, s5
                  blt          ra, s5, 1529f
1529:             bgeu         s1, s0, 1547f
                  bne          s6, s1, 1548f
                  xor          sp, s11, s3
                  nop
                  beq          ra, s2, 1537f
                  and          t4, ra, t0
1535:             sub          s4, t5, s10
                  lui          t3, 303791
1537:             bge          tp, a4, 1549f
                  slli         t0, s4, 23
                  or           s5, a3, sp
                  bltu         t0, sp, 1559f
                  bltu         s7, s5, 1561f
                  addi         s4, a3, 903
                  sltiu        t2, s8, -1282
                  lui          s1, 943903
                  blt          s2, s3, 1562f
                  addi         s10, s1, 1411
1547:             beq          sp, t2, 1552f
1548:             slli         t2, s1, 13
1549:             blt          s0, s9, 1550f
1550:             slti         s3, s11, -181
                  slti         a7, s7, -1240
1552:             sltiu        s0, a6, 1651
                  sra          s7, a3, tp
                  sltu         s5, s5, tp
                  ori          a2, t0, 635
                  sra          t0, s8, t0
                  sub          s0, a6, a1
                  bltu         s8, t6, 1562f
1559:             xor          a6, t0, t5
                  and          t6, sp, s1
1561:             or           sp, s7, tp
1562:             srai         zero, gp, 31
                  slli         t6, s9, 31
                  xori         t0, t5, -131
                  and          t6, s1, s7
                  blt          a3, t2, 1584f
                  bgeu         s4, s1, 1570f
                  srl          tp, s9, t0
                  sub          s0, ra, t3
1570:             or           t0, t6, t2
                  andi         a3, a5, 1025
                  add          t4, t1, a7
                  bge          s8, sp, 1579f
                  slti         s10, s4, -1908
                  srl          a2, t5, a1
                  bgeu         s8, sp, 1590f
                  andi         a7, s11, -327
                  xori         a4, a7, 947
1579:             blt          s5, s8, 1586f
                  and          s11, a4, s5
                  sll          a7, zero, a7
                  nop
                  xori         a3, s9, 589
1584:             bne          a3, sp, 1600f
                  srl          s1, t3, zero
1586:             blt          s10, a2, 1601f
                  lui          s6, 12187
                  xori         t6, t0, -378
                  srai         a2, a1, 10
1590:             sltu         tp, a3, a5
                  bge          t6, s6, 1607f
                  sub          gp, a1, sp
                  bgeu         s10, s8, 1600f
                  sra          s11, s4, a2
                  sub          gp, t1, gp
                  slt          s1, gp, s4
                  bltu         s6, s7, 1609f
                  srl          s11, s7, a0
                  slli         gp, s0, 15
1600:             slt          t5, s0, a0
1601:             sltiu        sp, s1, -1720
                  bge          t2, s0, 1610f
                  or           s7, t3, s11
                  xori         t5, s6, -5
                  add          s1, sp, s5
                  add          a1, s2, t2
1607:             sub          t6, a0, a4
                  srai         zero, t1, 27
1609:             xor          t4, t2, s4
1610:             xori         tp, t1, 1990
                  sll          t6, ra, t4
                  srl          t3, t1, a3
                  bge          gp, t4, 1630f
                  sltu         gp, t0, s4
                  ori          t6, a7, -1046
                  andi         s7, tp, -18
                  and          s0, s7, a1
                  sltu         t5, a3, s11
                  and          s7, a2, s6
                  blt          s9, a3, 1624f
                  sub          s1, t3, s7
                  srai         t2, s6, 17
                  srli         t3, t4, 4
1624:             slt          t4, s1, s0
                  xor          ra, a7, a1
                  sll          s4, s10, s0
                  or           gp, zero, a3
                  sll          s1, a5, a5
                  blt          a3, a0, 1645f
1630:             sra          sp, sp, a1
                  bgeu         s4, s3, 1650f
                  or           t6, a4, s11
                  slti         s3, a1, -828
                  auipc        s11, 501944
                  andi         t0, s3, -684
                  bge          s5, t4, 1643f
                  or           t2, s4, a5
                  srl          s10, t4, t3
                  bne          a2, a6, 1655f
                  bltu         gp, ra, 1658f
                  auipc        s5, 19508
                  nop
1643:             sltiu        t2, a1, 687
                  beq          a1, a0, 1662f
1645:             sra          t1, tp, s9
                  xor          s11, a0, s5
                  ori          a1, a3, -43
                  slt          tp, s11, s7
                  sub          a3, tp, gp
1650:             sub          t1, zero, a0
                  blt          t0, s3, 1663f
                  beq          s11, t2, 1657f
                  addi         s7, t5, -1212
                  andi         t6, sp, 1275
1655:             addi         s5, t1, 161
                  xori         s6, a2, -672
1657:             bgeu         a4, t1, 1658f
1658:             blt          tp, s9, 1672f
                  srai         tp, s3, 20
                  sltu         zero, gp, a4
                  ori          a3, s11, 178
1662:             slt          t2, t5, a2
1663:             blt          a5, a1, 1670f
                  srli         a4, ra, 24
                  srli         a7, tp, 1
                  bltu         t6, a1, 1667f
1667:             sltu         sp, a0, s2
                  sra          t1, s1, a4
                  addi         a6, s8, -1821
1670:             add          a1, tp, s2
                  add          t4, a3, ra
1672:             sll          ra, a3, s7
                  and          a5, zero, t6
                  nop
                  andi         a3, s0, -1429
                  bltu         a0, t0, 1694f
                  or           ra, s2, s7
                  srai         a7, a7, 15
                  sll          t2, s3, a7
                  xor          t6, t5, s10
                  and          s0, s3, t6
                  sra          a4, s11, t3
                  sub          s5, t4, t6
                  beq          tp, a4, 1688f
                  slt          s7, t0, zero
                  xor          a6, sp, a2
                  nop
1688:             lui          ra, 849754
                  slt          tp, t2, s10
                  nop
                  and          zero, t3, t2
                  bgeu         t5, s6, 1698f
                  blt          t3, s5, 1705f
1694:             sll          a2, s9, t5
                  sra          t4, s3, t5
                  slt          t3, a2, t6
                  and          s1, a5, a0
1698:             sltiu        s3, t3, 1363
                  blt          s8, zero, 1700f
1700:             beq          ra, tp, 1716f
                  lui          s4, 237571
                  lui          gp, 453846
                  beq          t1, tp, 1710f
                  or           t6, t5, t5
1705:             xor          t1, t1, t6
                  bltu         t6, s9, 1712f
                  bne          a5, a3, 1721f
                  sltu         s3, tp, ra
                  sub          gp, a2, s9
1710:             lui          a5, 420064
                  sub          s0, a7, s4
1712:             slt          s1, gp, gp
                  bgeu         t6, t1, 1733f
                  srai         a3, a5, 6
                  add          s11, a2, t1
1716:             and          a4, s6, t4
                  srl          ra, s1, a7
                  bge          s5, s11, 1733f
                  ori          t2, s10, -624
                  sub          a2, a5, s2
1721:             xori         s7, s2, -139
                  andi         gp, s2, -353
                  xor          s6, t2, s1
                  lui          t2, 808979
                  andi         s1, t0, 127
                  beq          a0, s8, 1729f
                  xor          t4, s7, s6
                  sra          t3, s1, t6
1729:             andi         tp, zero, 1427
                  beq          t5, a2, 1741f
                  srli         gp, s9, 25
                  slli         a6, a4, 17
1733:             bge          ra, a5, 1741f
                  bgeu         a2, s5, 1742f
                  xori         ra, a1, -1172
                  add          s9, a0, s0
                  add          t5, tp, a7
                  sltiu        gp, a4, -68
                  sltiu        t0, s2, 219
                  ori          a1, s6, 441
1741:             or           t4, s2, sp
1742:             bge          gp, t2, 1750f
                  slt          a1, a7, s2
                  bgeu         s5, t4, 1745f
1745:             or           s11, s2, s6
                  slli         a1, zero, 31
                  srli         ra, a4, 23
                  andi         zero, s11, -1828
                  slli         s11, a7, 4
1750:             blt          s1, s5, 1762f
                  andi         a5, a5, -1301
                  slt          s1, t5, s4
                  auipc        s11, 875953
                  addi         s0, a7, -1679
                  sra          a7, a4, s2
                  sub          a5, a5, s9
                  slt          t3, s9, t0
                  sltiu        s10, s2, -1550
                  and          a6, s1, t6
                  srli         s6, t6, 19
                  sra          t5, tp, a0
1762:             ori          s5, t2, -658
                  sll          s3, s5, t4
                  slli         t2, a7, 19
                  nop
                  or           t6, t5, t1
                  srli         s10, a0, 25
                  nop
                  sltu         t6, t6, s4
                  sub          zero, ra, s7
                  sub          a1, ra, s9
                  sltiu        t6, tp, -561
                  sltu         t6, sp, t5
                  sub          a3, a7, s1
                  ori          a5, s3, -229
                  and          ra, s8, a0
                  la           sp, region_1+497 #start riscv_load_store_rand_instr_stream_18
                  sll          a2, t2, t6
                  or           a6, t5, t4
                  sb           a6, -20(sp)
                  lb           ra, 4(sp)
                  sub          a4, s8, gp
                  sh           s0, -11(sp)
                  add          a1, s4, t2
                  xori         a4, gp, 1241
                  sltiu        t5, t0, 393
                  add          t1, s8, s4
                  lb           t2, 44(sp)
                  srai         zero, gp, 11
                  lbu          s7, 64(sp)
                  sltiu        s9, a1, 485
                  addi         t4, s5, -1101
                  or           a1, s10, t0
                  lh           ra, 13(sp)
                  sll          a2, s3, t2
                  slt          s10, a6, s2
                  nop
                  auipc        a3, 877356
                  lb           t1, 9(sp)
                  auipc        a6, 49386
                  xori         a3, s4, -887
                  addi         s3, s6, 372
                  addi         t6, t1, -337
                  lb           a2, 42(sp)
                  srai         t5, ra, 14
                  sltiu        tp, tp, 1379
                  lw           a7, -45(sp)
                  sb           t6, 58(sp) #end riscv_load_store_rand_instr_stream_18
                  bne          s8, sp, 1789f
                  ori          a1, s7, -1660
                  xori         s3, a0, 564
                  sub          a1, a4, ra
                  slti         zero, s3, -231
                  slli         a1, a6, 11
                  ori          sp, zero, 1987
                  bgeu         a4, s7, 1798f
                  sub          s6, a0, s4
                  xori         a1, sp, -1486
                  add          s11, t4, s5
                  or           t5, a0, s11
1789:             or           t3, a2, t6
                  sra          a7, a7, s8
                  srl          zero, a7, t4
                  or           s1, s5, s3
                  slt          a4, a4, gp
                  or           s9, s10, s0
                  add          s4, zero, s1
                  addi         tp, t6, 1169
                  blt          t5, s0, 1813f
1798:             srai         a2, s0, 5
                  sub          s7, t2, s0
                  sra          s1, t4, t6
                  srli         t2, a6, 28
                  ori          s5, s5, -999
                  sll          t2, s5, s0
                  xori         a2, tp, 314
                  srai         t2, a6, 7
                  srli         t5, a0, 26
                  sltiu        s3, s8, 1688
                  auipc        t5, 792253
                  sltiu        s3, s8, -457
                  sltiu        tp, t3, 750
                  slli         t5, a6, 5
                  srli         a2, ra, 28
1813:             xori         t0, s0, -1999
                  addi         s6, tp, 1292
                  addi         t4, s0, 170
                  auipc        t2, 822937
                  srai         s11, s7, 24
                  xor          s11, s5, t0
                  andi         t1, s1, 1894
                  bge          s0, s4, 1826f
                  xor          t4, s7, t6
                  slli         s1, a4, 22
                  ori          s0, s6, 1400
                  bltu         s10, s3, 1838f
                  lui          a6, 801414
1826:             slt          t1, zero, s11
                  sltiu        s0, s11, -1120
                  slti         tp, sp, -75
                  beq          a0, s0, 1845f
                  nop
                  slti         sp, t1, -740
                  auipc        a6, 821096
                  sll          a5, s10, zero
                  srai         t0, a1, 13
                  sll          s1, s2, t1
                  andi         a2, ra, 1454
                  and          s5, sp, t3
1838:             lui          t3, 513052
                  bge          s1, tp, 1858f
                  add          s4, t3, s9
                  srai         a6, t5, 9
                  srl          s1, s1, gp
                  xor          ra, t1, t5
                  sra          a5, t0, zero
1845:             nop
                  bge          s2, t6, 1857f
                  sra          a2, t5, s2
                  srl          ra, a3, zero
                  sltiu        t4, s3, -920
                  bgeu         a2, a2, 1854f
                  and          s11, gp, s11
                  bge          zero, s3, 1860f
                  srai         a5, s3, 12
1854:             andi         s11, a1, 1184
                  sltu         t2, a3, s3
                  sltu         s7, a6, s7
1857:             sltiu        a2, sp, -1227
1858:             add          t2, a5, t3
                  andi         s1, gp, 1610
1860:             addi         t1, t4, 2029
                  sltu         a7, a2, s3
                  xor          tp, t2, s11
                  srli         t0, s4, 3
                  srai         s5, s10, 3
                  slt          gp, s7, t1
                  slt          a6, t3, s8
                  andi         s3, s6, 151
                  sltiu        a7, s4, 910
                  srl          t2, t4, a7
                  ori          s3, ra, -1746
                  lui          s0, 286972
                  andi         s10, sp, 716
                  xor          s7, a1, a6
                  nop
                  bne          t4, s11, 1883f
                  addi         t5, t5, 1903
                  sll          t5, s8, s2
                  or           a4, s6, a1
                  srai         zero, a5, 15
                  blt          s5, t0, 1883f
                  sub          t2, a3, s2
                  bne          a5, s8, 1899f
1883:             bltu         t3, ra, 1890f
                  sltiu        s5, ra, -967
                  beq          a5, s10, 1892f
                  sll          gp, sp, gp
                  xori         t4, t3, -898
                  sll          s0, t6, t0
                  sub          t5, a4, s5
1890:             srai         a7, a7, 16
                  and          t5, s1, s8
1892:             slti         a3, gp, -1124
                  slli         t0, zero, 16
                  andi         gp, s3, 1409
                  xor          s9, s11, a4
                  slt          t1, zero, s1
                  add          t1, s9, gp
                  lui          zero, 955247
1899:             andi         a5, a7, 191
                  or           a3, s0, a4
                  slti         s0, zero, 1016
                  xor          s4, tp, t6
                  and          s9, a0, tp
                  lui          t1, 138160
                  bne          t5, s9, 1923f
                  slti         s10, a2, 600
                  beq          s3, s11, 1914f
                  sra          a6, s1, s4
                  slt          gp, a7, s10
                  blt          s7, s0, 1914f
                  slt          s0, s2, a3
                  bge          s4, zero, 1913f
1913:             slt          a7, a2, s7
1914:             slli         a5, s1, 25
                  blt          s10, t2, 1920f
                  slli         t3, t2, 4
                  add          tp, t0, a5
                  ori          a1, t3, 740
                  or           s7, s0, a7
1920:             nop
                  addi         s5, a0, -1887
                  or           sp, gp, zero
1923:             xor          s1, a7, s7
                  sll          a6, s9, a0
                  lui          a6, 607643
                  beq          s8, tp, 1934f
                  sll          a5, s9, sp
                  sra          a1, s4, s1
                  xori         a1, t0, -1976
                  sll          sp, s3, zero
                  srl          a4, a3, t4
                  nop
                  and          ra, a4, t6
1934:             bge          t3, s3, 1952f
                  and          t2, tp, s1
                  sub          t5, s0, t2
                  slt          a7, s10, t0
                  sltiu        s10, a4, -1089
                  bltu         gp, s3, 1940f
1940:             sub          a3, sp, t0
                  andi         ra, t3, 1369
                  sltu         s10, a5, s5
                  add          a5, s7, gp
                  sltiu        a1, s11, 2009
                  sub          a4, zero, s0
                  slli         ra, t4, 11
                  slti         s6, a1, 648
                  slt          s9, s9, t1
                  srli         t1, s2, 22
                  sll          a7, s3, s6
                  andi         a2, a0, 1156
1952:             and          s4, t4, s2
                  srai         a1, gp, 28
                  bltu         s0, t6, 1972f
                  bltu         tp, s4, 1975f
                  add          a7, s10, s2
                  and          zero, s7, t2
                  srli         sp, s3, 29
                  auipc        t1, 822192
                  sll          tp, s5, zero
                  ori          t3, s6, -1629
                  blt          a6, s3, 1978f
                  or           a1, s10, a0
                  slti         a7, a7, -887
                  addi         a4, s8, -93
                  andi         s10, t3, 546
                  slt          a2, s2, ra
                  bge          ra, s4, 1983f
                  slti         gp, zero, -1670
                  xor          t3, t4, ra
                  slli         s1, a3, 19
1972:             add          a5, sp, s5
                  andi         a4, t4, 802
                  bgeu         s2, s0, 1980f
1975:             slli         t5, gp, 27
                  sub          s5, a2, s0
                  sra          t1, t6, a6
1978:             slti         s5, s1, 1039
                  sltiu        a4, s6, -1335
1980:             xor          t6, t5, gp
                  nop
                  slt          s11, a7, s0
1983:             slt          a3, s2, s2
                  andi         a3, zero, -946
                  sltiu        s0, t2, 355
                  blt          t4, a3, 2000f
                  sltu         t0, a3, s8
                  sra          a4, s3, s7
                  sll          t3, a0, t0
                  xor          s10, a4, t0
                  la           s9, region_1+736 #start riscv_load_store_rand_instr_stream_9
                  srai         a3, t6, 10
                  sltiu        s10, a7, -1919
                  lb           s1, 2(s9)
                  sra          tp, t3, t1
                  sltu         t5, t3, s3
                  sra          zero, s4, a0
                  lb           s3, 8(s9)
                  lbu          sp, 9(s9)
                  lh           a2, 2(s9)
                  lb           t2, 2(s9)
                  sh           a2, 16(s9)
                  or           a6, t0, t0
                  lh           sp, 0(s9)
                  sb           a0, -2(s9)
                  xor          s10, s10, s0
                  sb           t2, -11(s9)
                  lbu          t6, -5(s9)
                  sra          s6, t5, a6
                  add          gp, a2, t5
                  and          t2, t4, a7
                  srai         s3, a1, 12
                  sltu         a5, s5, s11
                  sb           gp, -12(s9)
                  and          a5, t2, s10
                  sub          s7, s1, t1
                  auipc        s1, 276309
                  sb           t4, -11(s9)
                  sra          t1, sp, a0
                  lb           t3, -6(s9)
                  slli         s11, a4, 9
                  lb           s0, -9(s9)
                  lbu          a6, 15(s9)
                  lh           a4, 2(s9)
                  slt          s3, t6, t4
                  lb           s0, -11(s9)
                  lb           a1, -10(s9)
                  sltu         s5, sp, s11
                  lbu          s11, -13(s9)
                  lb           s1, 2(s9)
                  lbu          t0, -5(s9)
                  lbu          ra, -2(s9)
                  lb           t1, -10(s9)
                  lbu          s6, -16(s9)
                  srl          t6, s8, gp
                  sltu         s7, s8, a7
                  lb           s4, -6(s9)
                  sb           gp, 5(s9)
                  or           a1, tp, gp
                  lb           a5, 8(s9) #end riscv_load_store_rand_instr_stream_9
                  nop
                  auipc        t3, 590769
                  lui          a4, 821092
                  slti         a1, t5, -1952
                  slti         s6, tp, 910
                  srl          s11, a0, ra
                  blt          a4, a0, 2016f
                  nop
                  or           s3, t5, t2
2000:             or           a7, s0, a1
                  slli         t2, tp, 1
                  sub          gp, a6, t0
                  bgeu         ra, t1, 2004f
2004:             or           s0, s0, s5
                  blt          t2, s11, 2017f
                  andi         t5, s3, -1043
                  bne          s10, s7, 2011f
                  and          s10, s7, s6
                  auipc        a6, 923451
                  beq          s3, a0, 2028f
2011:             blt          s8, s8, 2028f
                  beq          s5, gp, 2015f
                  add          s3, s10, a3
                  blt          s5, t5, 2032f
2015:             add          tp, t3, t6
2016:             nop
2017:             sra          s11, a2, a1
                  nop
                  xori         s5, a7, -1031
                  srl          s9, s0, a4
                  sltu         s7, s4, t3
                  bltu         a5, a2, 2042f
                  srl          a1, sp, a0
                  sltu         s0, gp, t1
                  ori          s11, s8, 248
                  bltu         s5, s6, 2027f
2027:             beq          s0, a0, 2035f
2028:             sra          s9, a4, a2
                  sll          a1, gp, s5
                  slt          t1, ra, gp
                  sll          s7, a0, s8
2032:             beq          a7, a5, 2048f
                  xor          t6, sp, t3
                  slt          a7, s10, t2
2035:             andi         a1, a3, 161
                  srli         zero, t6, 8
                  lui          s3, 815181
                  bgeu         a0, t3, 2053f
                  bge          s10, t1, 2057f
                  blt          s5, t4, 2046f
                  beq          s4, s6, 2045f
2042:             xor          t3, a1, gp
                  xor          s3, t6, t4
                  ori          t2, s8, -960
2045:             slli         s7, a2, 7
2046:             sll          t4, s2, zero
                  sltiu        a4, s10, -814
2048:             or           s11, t5, t1
                  slli         s0, s7, 25
                  bgeu         zero, s5, 2058f
                  slli         a3, t1, 16
                  xor          gp, s10, s2
2053:             ori          s6, t5, -48
                  andi         a3, s9, 1355
                  bge          s4, a1, 2062f
                  and          t3, a6, a3
2057:             srli         t1, s0, 2
2058:             andi         a6, tp, 609
                  sra          a2, s1, s11
                  bge          sp, s9, 2074f
                  xor          a4, a7, gp
2062:             slti         s11, s9, -709
                  add          s11, t6, s3
                  add          ra, t2, s6
                  slti         a3, tp, -594
                  xori         a2, t3, -114
                  bge          s3, s6, 2068f
2068:             srl          s9, a0, t5
                  lui          ra, 383407
                  srl          a1, s4, a4
                  la           sp, region_1+1905 #start riscv_load_store_rand_instr_stream_6
                  or           t2, s0, a2
                  sb           s2, -48(sp)
                  sltu         s0, tp, t1
                  add          s9, t2, a3
                  nop
                  sltiu        t6, tp, -1852
                  lb           zero, -34(sp)
                  or           t1, a0, t5
                  lb           a6, -6(sp)
                  slt          t1, s3, a7
                  lw           s4, 3(sp)
                  auipc        s9, 548941
                  lhu          t6, -51(sp)
                  ori          s11, sp, -790
                  or           s0, t1, a7
                  lhu          a2, -45(sp)
                  andi         a7, s6, 1433
                  slli         t3, t4, 0
                  xori         a2, a4, -651
                  srl          a7, t2, t0
                  add          t2, t4, ra
                  sb           a2, -34(sp)
                  or           a7, s3, a4
                  slt          s6, s6, s10
                  lb           ra, 21(sp)
                  sw           t4, 31(sp)
                  sb           a7, -63(sp)
                  sw           a1, 51(sp) #end riscv_load_store_rand_instr_stream_6
                  bne          s8, a7, 2083f
                  bne          t2, s6, 2080f
                  ori          s11, a7, -2048
2074:             ori          a7, a1, -1277
                  slli         s0, s5, 3
                  andi         t1, s7, 1446
                  beq          s11, t4, 2082f
                  bne          s8, a7, 2094f
                  sltu         t6, s8, sp
2080:             sll          a4, s6, a5
                  addi         t4, s10, 724
2082:             slt          s4, sp, s4
2083:             bge          t4, s3, 2090f
                  slli         t5, s1, 29
                  nop
                  or           s4, ra, t5
                  xor          s11, t3, a7
                  sub          a5, s7, s4
                  bltu         t5, a5, 2100f
2090:             nop
                  srli         tp, a2, 18
                  sll          zero, s4, s9
                  sltiu        s1, s5, 588
2094:             blt          a6, zero, 2101f
                  sll          s5, s5, ra
                  xor          t2, s6, t5
                  blt          gp, s3, 2113f
                  srl          s5, s2, t5
                  add          a5, s9, s3
2100:             slti         a5, a3, 332
2101:             sub          gp, t6, zero
                  slti         tp, t6, 1237
                  xori         s7, a0, -1656
                  auipc        a4, 456632
                  bltu         s10, ra, 2111f
                  slli         a7, a4, 7
                  add          s11, gp, t6
                  xori         a4, a2, -216
                  add          s5, a6, s1
                  xor          sp, s2, s4
2111:             bne          s0, ra, 2112f
2112:             sub          t5, t0, s3
2113:             bgeu         s5, ra, 2120f
                  beq          tp, t0, 2120f
                  slli         s11, s5, 21
                  slti         zero, tp, 739
                  sub          zero, t1, s2
                  slt          s0, t2, t5
                  srli         t1, a7, 16
2120:             slti         a3, t1, -85
                  auipc        s0, 562020
                  addi         t2, a3, 40
                  sra          gp, t4, s2
                  xori         s4, s7, 1206
                  sub          s10, gp, s6
                  add          t0, zero, s10
                  or           a2, a1, s1
                  nop
                  srl          s3, s6, tp
                  srai         t6, tp, 0
                  bne          tp, gp, 2149f
                  bgeu         a5, zero, 2140f
                  srai         a4, a2, 3
                  addi         a5, s2, 124
                  lui          t0, 1022544
                  slli         zero, a7, 4
                  and          t5, s3, a6
                  and          a3, a5, a0
                  andi         sp, a1, -1939
2140:             bgeu         s6, s5, 2147f
                  bne          t5, ra, 2155f
                  and          a3, s3, a2
                  lui          t2, 996204
                  andi         a5, s4, 1236
                  bne          s1, s8, 2156f
                  and          tp, zero, s11
2147:             sub          a4, gp, tp
                  sll          a5, s7, t0
2149:             addi         ra, a1, 1172
                  bltu         a0, a4, 2166f
                  and          gp, a6, tp
                  or           s10, t4, t2
                  blt          t0, a1, 2168f
                  or           t2, a2, t3
2155:             andi         a6, t0, -1657
2156:             srai         t1, gp, 9
                  add          s7, sp, sp
                  nop
                  srai         t1, s5, 16
                  slli         a5, s9, 19
                  slli         s0, t6, 31
                  ori          zero, s1, 1194
                  blt          s3, t6, 2167f
                  sll          sp, s9, gp
                  sltiu        s6, a7, 1722
2166:             slt          s10, s11, s9
2167:             andi         s11, a2, 422
2168:             bgeu         zero, a7, 2184f
                  nop
                  la           sp, region_1+1003 #start riscv_load_store_rand_instr_stream_30
                  lbu          s1, -24(sp)
                  sb           a1, -27(sp)
                  srai         s10, t5, 21
                  add          s0, t0, s8
                  and          t6, t6, s4
                  sll          t0, zero, a0
                  xori         t6, t4, -1940
                  lb           a3, -12(sp)
                  lb           a6, -39(sp)
                  xor          a6, t2, s0
                  sh           tp, -53(sp)
                  sb           a6, -46(sp)
                  lui          t2, 1031245
                  xori         s5, t6, -1539
                  slt          s1, a0, s1
                  sb           sp, -52(sp)
                  sh           s3, -57(sp)
                  sub          s1, a6, gp
                  lbu          a2, 40(sp)
                  srl          t6, s0, zero
                  sb           a7, 46(sp)
                  sb           a3, -61(sp)
                  lbu          s4, -34(sp)
                  sb           t5, 39(sp)
                  slti         s11, t0, -1132
                  lui          a5, 144885
                  lb           a6, -22(sp)
                  lh           t5, 53(sp)
                  lb           a6, -50(sp)
                  lhu          a7, -57(sp)
                  sb           gp, 20(sp)
                  auipc        a4, 110669
                  lbu          s5, -4(sp)
                  add          a7, a3, t5
                  slli         t3, s0, 18
                  srl          a2, a2, s11
                  and          s3, a3, a4
                  addi         a5, t3, 1274
                  or           s10, a1, tp
                  add          s11, ra, a2
                  auipc        s1, 153768
                  lhu          ra, -31(sp)
                  sltiu        s4, t6, -1153
                  sub          a4, s7, t3
                  auipc        a6, 105199
                  srai         zero, zero, 14
                  srl          a6, s2, t2
                  lbu          gp, -61(sp) #end riscv_load_store_rand_instr_stream_30
                  and          a3, a6, sp
                  lui          s5, 186583
                  srai         s1, t2, 28
                  add          zero, s3, t5
                  sra          t2, s8, t5
                  slt          a3, s11, t3
                  andi         t3, t2, 607
                  nop
                  xor          t5, a4, t5
                  sll          a5, s10, s7
                  beq          t1, t3, 2194f
                  sltu         a2, a6, zero
                  sltu         s5, s5, s11
                  add          s10, s2, t2
2184:             add          t1, s9, t2
                  slt          t1, t0, s1
                  bltu         s9, ra, 2191f
                  and          ra, s6, a3
                  slt          t6, tp, t3
                  addi         a6, gp, 281
                  bltu         t4, s11, 2193f
2191:             auipc        s7, 628489
                  sltu         a6, zero, t6
2193:             slti         s4, a6, 573
2194:             add          zero, s8, a4
                  srli         t6, gp, 22
                  nop
                  xor          t0, t3, tp
                  andi         s5, gp, 526
                  slt          t2, s2, a3
                  nop
                  slti         t4, s9, 1566
                  sra          a5, t2, a3
                  bne          ra, s8, 2222f
                  srli         s3, s1, 25
                  ori          s3, ra, 1092
                  nop
                  nop
                  sra          t1, a5, ra
                  beq          tp, s4, 2221f
                  lui          t4, 476773
                  xori         a6, s3, -1426
                  sltiu        sp, s8, -1456
                  add          a1, s8, t4
                  srli         tp, t1, 1
                  auipc        s11, 905096
                  beq          t4, s9, 2232f
                  sll          sp, a4, s6
                  and          tp, s5, s10
                  lui          ra, 920878
                  and          a6, s1, s7
2221:             bne          a2, a6, 2239f
2222:             bgeu         t6, s3, 2230f
                  xori         s4, t2, -1484
                  addi         a2, t3, -1549
                  add          t6, sp, sp
                  bge          t2, a7, 2234f
                  la           sp, region_1+721 #start riscv_load_store_rand_instr_stream_26
                  lw           ra, 59(sp)
                  sh           s1, 173(sp)
                  lhu          t4, -163(sp)
                  srli         a1, s10, 17
                  ori          a4, s6, 93
                  sb           a3, -88(sp)
                  lbu          s6, -150(sp)
                  sltiu        s10, t0, -343
                  lbu          a5, -236(sp)
                  lui          t1, 863561
                  lhu          zero, -109(sp)
                  slt          a5, s4, s3
                  add          a6, s0, s11
                  andi         t5, tp, 1703
                  andi         a7, s0, 1349
                  slli         t2, sp, 6
                  srl          s7, t6, s10
                  sb           a5, -96(sp)
                  addi         s4, s9, -585
                  xor          a6, t4, s8
                  lb           s3, -86(sp)
                  andi         t5, t3, -1090
                  sb           s6, -160(sp)
                  sb           s4, 127(sp)
                  sh           t3, -99(sp)
                  srl          t1, t5, t0
                  sb           zero, -181(sp)
                  sub          tp, sp, a0
                  and          a4, a5, t2
                  lhu          s11, 121(sp) #end riscv_load_store_rand_instr_stream_26
                  srl          s3, zero, s10
                  andi         a2, a1, -1337
                  lui          t0, 300269
2230:             andi         ra, a3, -1557
                  slli         zero, s5, 20
2232:             slti         t3, s5, 880
                  slti         t0, s0, -313
2234:             addi         gp, t1, -371
                  srai         t5, a0, 1
                  bge          s1, t6, 2237f
2237:             add          s9, tp, s0
                  slli         s4, ra, 7
2239:             slli         ra, a0, 27
                  bgeu         gp, t0, 2244f
                  slti         a7, s0, -213
                  sltu         ra, s2, s2
                  beq          s3, t5, 2261f
2244:             slt          a4, s0, t6
                  slli         a7, a4, 27
                  blt          t6, t2, 2253f
                  nop
                  sra          s7, t2, t4
                  slt          t2, s9, t2
                  slli         s4, a0, 6
                  slt          sp, sp, s3
                  bltu         s4, s6, 2269f
2253:             xori         s0, sp, -221
                  sltu         s11, t5, t6
                  bge          s0, s11, 2275f
                  bne          a7, a1, 2262f
                  ori          t3, ra, -1144
                  auipc        s10, 775484
                  andi         t5, s4, 487
                  addi         t2, t6, 1082
2261:             slli         s9, s6, 1
2262:             auipc        a1, 98196
                  or           t3, s10, t2
                  sra          a1, a5, s3
                  xor          a5, zero, a3
                  bltu         a4, t4, 2278f
                  sub          a7, s2, s8
                  slt          zero, s5, s10
2269:             srl          s5, tp, s2
                  slt          t2, zero, a4
                  bge          s0, s11, 2272f
2272:             slli         a4, t0, 0
                  sra          s0, s5, tp
                  sra          sp, s5, s9
2275:             sra          a5, s10, ra
                  sltu         s6, t2, ra
                  sll          tp, sp, a2
2278:             sub          a5, gp, a6
                  srli         a3, a6, 9
                  slti         zero, a7, -185
                  nop
                  bltu         t3, ra, 2286f
                  auipc        s4, 195939
                  blt          a2, ra, 2300f
                  srli         a4, a2, 3
2286:             slli         t0, zero, 20
                  sltu         gp, s5, t0
                  sub          s5, gp, s4
                  auipc        s10, 923024
                  srai         s7, s5, 26
                  sll          tp, t3, s8
                  blt          s11, a2, 2300f
                  addi         t1, gp, 1053
                  auipc        t5, 67112
                  sltiu        tp, s10, 435
                  sltiu        t4, a7, -1857
                  and          ra, a0, a5
                  nop
                  addi         a2, s1, 1278
2300:             srl          zero, t4, a5
                  xor          ra, s6, t6
                  blt          s3, s10, 2309f
                  lui          a1, 122055
                  srli         t1, a7, 25
                  ori          s11, a5, 1900
                  slt          s11, a3, s4
                  blt          sp, a2, 2325f
                  sltiu        t3, s7, 945
2309:             blt          s8, t1, 2326f
                  sll          a6, s6, tp
                  bne          s10, t3, 2317f
                  slt          sp, ra, a7
                  sll          zero, s6, s4
                  sll          s0, s3, s4
                  beq          ra, a5, 2321f
                  bgeu         s11, sp, 2335f
2317:             bne          a7, s10, 2324f
                  srai         tp, s4, 10
                  beq          t6, t5, 2334f
                  addi         s1, t0, 1202
2321:             slli         s0, gp, 23
                  sltu         s11, t5, t1
                  slti         s6, zero, -1837
2324:             sltiu        zero, a1, -1951
2325:             slti         s9, s4, -45
2326:             slti         t4, s9, 1695
                  sub          t3, s2, s1
                  xori         s5, s2, -713
                  sra          t0, t0, a6
                  sra          s5, s8, s9
                  xori         t2, s2, -1991
                  slli         sp, s1, 31
                  srli         a2, ra, 4
2334:             beq          s4, s5, 2337f
2335:             andi         tp, a2, -1303
                  srai         t2, s5, 31
2337:             srai         a5, a7, 25
                  nop
                  sltiu        t5, zero, 1983
                  auipc        ra, 408488
                  add          s11, t5, t5
                  srl          a2, s9, s9
                  sltu         t0, s4, ra
                  or           a7, t3, t2
                  lui          s10, 1023283
                  and          s11, s9, s2
                  xori         t3, t2, 576
                  slli         a2, gp, 8
                  add          t3, a3, t4
                  beq          s4, s10, 2351f
2351:             sltiu        t5, a7, -291
                  sltu         s5, a1, s1
                  andi         gp, s6, -207
                  slli         t1, t5, 24
                  slti         zero, a6, 2006
                  sltiu        sp, s8, 1651
                  bgeu         t0, s8, 2362f
                  ori          s10, s9, 1721
                  sra          a4, t3, s4
                  slti         t3, a5, 407
                  bgeu         ra, s3, 2372f
2362:             slt          t5, a5, s5
                  srl          gp, t0, a4
                  sltu         a1, sp, s7
                  sltiu        t3, s10, 1656
                  ori          t1, s5, -402
                  srai         s6, s4, 30
                  bne          s2, t1, 2369f
2369:             andi         sp, sp, -170
                  xor          s5, s5, a1
                  xor          t6, a4, t1
2372:             slli         t3, ra, 9
                  slli         s10, a4, 24
                  andi         zero, t1, 638
                  blt          gp, s11, 2389f
                  bne          t0, s10, 2388f
                  srai         a1, t1, 19
                  bge          s6, s10, 2394f
                  sra          ra, zero, ra
                  slti         t1, s10, -1798
                  srai         s5, sp, 1
                  bne          s4, s7, 2390f
                  nop
                  slli         s5, s0, 7
                  and          s7, t2, a3
                  sltiu        a3, t3, -1653
                  addi         a5, s4, 1926
2388:             slli         ra, s7, 6
2389:             sltu         a1, s3, t3
2390:             xor          t6, s11, a2
                  srai         a1, tp, 18
                  slt          a6, t3, t5
                  srl          zero, s11, s7
2394:             xori         tp, s9, 758
                  ori          s3, t0, -605
                  srai         gp, s10, 21
                  add          t6, s5, ra
                  srl          s3, zero, zero
                  sltu         s6, t3, zero
                  bne          s10, s10, 2418f
                  auipc        s7, 990860
                  addi         t1, s7, -276
                  sub          ra, s7, s8
                  srai         t0, a2, 18
                  ori          t3, a6, -2001
                  andi         a6, t6, -1715
                  sll          s7, s8, a6
                  srli         s11, s9, 21
                  bne          tp, zero, 2425f
                  nop
                  ori          s4, zero, 97
                  sll          t0, a0, a6
                  blt          a4, s2, 2427f
                  auipc        a3, 855562
                  bgeu         t0, s8, 2419f
                  beq          sp, t5, 2424f
                  srai         tp, sp, 1
2418:             sltu         s11, t3, a0
2419:             sll          s10, s8, a5
                  sltiu        ra, sp, -1738
                  bltu         s10, s8, 2439f
                  ori          t6, t1, 1463
                  nop
2424:             sltu         t3, s8, ra
2425:             srl          tp, s10, zero
                  and          s9, s7, sp
2427:             srai         gp, a4, 12
                  add          s10, t2, a1
                  andi         s3, s4, 171
                  bgeu         t4, t0, 2437f
                  xori         s4, s1, -51
                  auipc        s3, 561123
                  addi         a1, s0, 1303
                  bltu         t3, a4, 2454f
                  slli         s1, a5, 31
                  slti         t5, a4, 166
2437:             bgeu         a4, a2, 2449f
                  srl          sp, s6, gp
2439:             xor          s11, a3, s0
                  addi         s1, gp, 1656
                  add          a4, ra, a7
                  and          s10, s9, s3
                  sltiu        gp, s1, -589
                  blt          ra, t6, 2445f
2445:             sltiu        s3, s8, 986
                  andi         a6, s5, 922
                  slli         s11, t1, 14
                  sltu         tp, s6, s10
2449:             bge          s8, ra, 2450f
2450:             srli         s0, a1, 20
                  sltu         t2, s9, t1
                  and          t4, a3, t5
                  and          s0, t0, t1
2454:             blt          s4, s1, 2461f
                  srl          s1, a6, t0
                  lui          s9, 202437
                  slt          s5, s2, t4
                  auipc        a5, 237166
                  sltiu        t3, s9, 1946
                  and          s7, s0, a3
2461:             add          t0, t3, s7
                  and          ra, a4, a1
                  and          s11, a1, a1
                  slli         t1, s5, 13
                  sub          t5, s1, s1
                  add          a1, s8, zero
                  bltu         t3, s11, 2475f
                  bgeu         s3, s8, 2475f
                  slli         s10, s4, 15
                  xori         t2, a6, -1951
                  srl          gp, s5, t1
                  bltu         s1, s2, 2476f
                  sub          a1, s4, a5
                  and          s0, a0, ra
2475:             sltiu        a7, zero, 89
2476:             or           t2, s6, t5
                  sub          a5, a4, sp
                  srli         t6, gp, 18
                  srai         a1, s9, 0
                  add          zero, t1, a4
                  srli         s5, zero, 26
                  and          sp, sp, a7
                  beq          gp, t6, 2501f
                  bltu         s5, s3, 2500f
                  auipc        a2, 562661
                  slti         a1, s9, -1390
                  nop
                  srli         s0, t1, 7
                  add          s0, sp, s1
                  slli         a3, a0, 2
                  beq          a6, t6, 2508f
                  beq          zero, a1, 2500f
                  addi         a1, s2, -705
                  bge          s9, t4, 2495f
2495:             and          s7, s1, t2
                  sra          t6, s4, s0
                  addi         s5, t1, 2046
                  xor          s9, tp, t6
                  auipc        s0, 854772
2500:             andi         t5, ra, 1002
2501:             sltiu        a2, s8, 1644
                  srl          zero, tp, s8
                  nop
                  or           a4, s3, a2
                  xor          tp, ra, s5
                  xor          t5, a4, s7
                  sltiu        a3, a5, -1697
2508:             or           s3, ra, s5
                  slt          t0, s11, zero
                  andi         a7, s11, -1724
                  slti         a1, s6, 746
                  bge          s1, s0, 2531f
                  add          s6, a3, ra
                  bgeu         a2, s3, 2529f
                  sltu         s3, a4, a2
                  srl          s11, s11, s8
                  xor          a1, s11, s10
                  srl          a2, t3, a6
                  sra          gp, tp, t0
                  addi         a3, s3, 40
                  andi         a7, s6, 838
                  slti         s10, a0, -823
                  nop
                  beq          s8, s11, 2540f
                  srli         a2, s0, 2
                  sltu         s6, s0, zero
                  lui          s0, 751728
                  or           s6, tp, ra
2529:             nop
                  xori         s10, s6, -560
2531:             blt          s5, t0, 2549f
                  bltu         s6, a0, 2546f
                  sltu         a4, t0, s8
                  sub          t4, tp, a4
                  lui          zero, 258495
                  blt          s6, a7, 2541f
                  auipc        a3, 947965
                  xor          s11, s8, a1
                  slt          s11, t1, gp
2540:             slli         s0, t0, 19
2541:             ori          gp, s4, -535
                  ori          s5, zero, -1953
                  sltiu        t1, s10, -1260
                  and          a2, s4, t2
                  srli         a1, a7, 14
2546:             bne          t6, gp, 2554f
                  bge          t5, a4, 2558f
                  blt          a6, sp, 2551f
2549:             srli         s4, t0, 4
                  srl          s4, tp, a4
2551:             andi         t6, t6, 1858
                  bltu         s11, a6, 2572f
                  srl          t4, t5, s6
2554:             or           s4, s5, ra
                  slli         a4, t5, 22
                  sltu         s9, s7, zero
                  srai         s10, tp, 6
2558:             sltiu        s6, s9, 712
                  addi         a2, s1, 903
                  or           s0, a0, ra
                  bltu         s2, t0, 2565f
                  blt          a0, a7, 2580f
                  slli         s5, sp, 6
                  sub          t5, t5, a3
2565:             bne          s9, sp, 2581f
                  bne          a3, s0, 2578f
                  srl          t5, a0, a1
                  and          a3, s0, sp
                  sub          t0, s8, t2
                  or           t4, a6, a5
                  srli         t2, t2, 12
2572:             auipc        a7, 858694
                  xori         tp, a3, 530
                  ori          a7, s7, 332
                  beq          s3, t6, 2581f
                  srai         s0, ra, 9
                  sub          a3, s1, s1
2578:             add          s1, s2, sp
                  sra          s6, s10, t5
2580:             blt          t6, a7, 2581f
2581:             sltiu        a2, s0, -635
                  and          a5, t5, s5
                  and          s4, a5, s2
                  slt          a2, a4, s0
                  slt          a3, s4, t3
                  and          t1, s9, a7
                  sll          sp, t6, s1
                  or           t1, a4, a1
                  nop
                  beq          a3, t5, 2602f
                  blt          t2, s8, 2597f
                  bge          s1, t1, 2606f
                  slli         gp, a6, 26
                  srli         zero, t5, 27
                  beq          s0, s9, 2602f
                  bltu         s8, zero, 2610f
2597:             bge          sp, s10, 2603f
                  bgeu         s0, t2, 2605f
                  lui          s4, 368796
                  xori         a6, a4, 178
                  and          t2, ra, a5
2602:             beq          s6, s8, 2613f
2603:             and          zero, sp, tp
                  xori         s0, t4, -1281
                  la           sp, region_0+1695 #start riscv_load_store_rand_instr_stream_5
                  sltu         t6, t4, s5
                  lbu          gp, -164(sp)
                  lb           s3, 199(sp)
                  sb           a5, 183(sp)
                  lui          t4, 278412
                  lui          s11, 318703
                  lw           a6, 49(sp)
                  lbu          a1, -38(sp)
                  auipc        t1, 630917
                  lb           s5, 206(sp)
                  xor          a7, t4, s11
                  sltiu        t5, ra, -631
                  lb           s0, 176(sp)
                  sb           t0, 82(sp)
                  lb           gp, -196(sp)
                  lhu          s9, 107(sp)
                  sb           t0, -114(sp)
                  sltu         a5, s10, t3
                  slli         s11, s8, 17
                  sb           a4, -143(sp)
                  lbu          a4, 80(sp)
                  and          t2, a7, s9
                  sb           a1, -116(sp)
                  add          zero, s10, s1
                  sra          s5, s6, t3
                  lb           s7, -171(sp)
                  sll          s10, s1, tp
                  ori          t2, ra, -721
                  sh           s11, -31(sp)
                  sw           s0, 141(sp)
                  sltiu        s7, sp, -564
                  slli         a1, ra, 9
                  sw           t0, -67(sp)
                  and          ra, a2, a5
                  slti         s4, s8, -1409
                  addi         a7, a6, -633
                  ori          s11, t3, -121
                  sb           t4, 220(sp)
                  lb           s3, -59(sp)
                  sltiu        a5, tp, 843
                  lhu          tp, -59(sp)
                  sh           s3, 119(sp)
                  nop
                  sub          t4, a5, a6
                  sb           a5, -222(sp)
                  sw           ra, -131(sp)
                  lbu          a3, -57(sp)
                  lh           a6, 107(sp)
                  slti         s10, s10, 1092
                  lui          ra, 72369
                  xori         tp, t4, 1809
                  lbu          a3, -18(sp)
                  srli         t3, s0, 1
                  lhu          tp, -145(sp)
                  slti         gp, gp, 1433
                  lb           gp, 26(sp) #end riscv_load_store_rand_instr_stream_5
2605:             sltiu        s7, a0, 1230
2606:             bgeu         s10, s9, 2622f
                  sub          a2, s8, s11
                  bltu         tp, s6, 2625f
                  srai         s4, t6, 30
2610:             bne          a4, zero, 2625f
                  blt          a1, sp, 2618f
                  srli         s6, a4, 14
2613:             addi         t1, s9, -1520
                  auipc        s1, 920130
                  auipc        t2, 247003
                  bne          t1, s8, 2632f
                  sll          s4, a7, sp
2618:             srli         s3, tp, 20
                  blt          a3, s9, 2631f
                  xori         s10, tp, -849
                  sltu         a2, a0, s9
2622:             slti         s6, t1, -622
                  ori          s1, s11, -1398
                  blt          gp, sp, 2630f
2625:             sll          t6, t3, s8
                  slli         s1, t2, 11
                  xori         t5, s3, 686
                  and          a4, a6, zero
                  addi         tp, a5, -448
2630:             ori          sp, s3, 1776
2631:             or           a4, s10, s9
2632:             andi         a5, a6, -729
                  srl          s4, s0, a0
                  slt          s4, s4, s0
                  add          a4, t2, s11
                  slli         gp, a1, 6
                  blt          s10, s9, 2651f
                  srli         s5, t4, 17
                  srai         s11, a5, 22
                  slli         t5, t5, 12
                  nop
                  bge          zero, s6, 2660f
                  add          gp, ra, t2
                  xori         a7, a5, -1831
                  bltu         a5, a5, 2652f
                  addi         s7, sp, 2009
                  bne          s4, gp, 2665f
                  slt          s7, a5, s9
                  sll          s5, t4, ra
                  beq          gp, tp, 2653f
2651:             sub          t5, t4, t2
2652:             sll          s3, tp, s3
2653:             bgeu         t1, a7, 2654f
2654:             ori          t4, s2, -1157
                  lui          sp, 779185
                  sub          zero, t5, ra
                  xori         s10, gp, 1400
                  srl          t4, zero, sp
                  andi         s1, a7, 1322
2660:             slti         t4, t5, -668
                  xori         s5, gp, -1688
                  slt          a3, a2, s9
                  auipc        t4, 976761
                  nop
2665:             bge          a7, t6, 2666f
2666:             or           zero, t4, a4
                  sll          ra, a5, a2
                  ori          s3, a0, -382
                  xori         s11, t6, -1260
                  addi         s1, s0, 658
                  bgeu         t4, a2, 2690f
                  blt          tp, s4, 2690f
                  xor          sp, a4, s2
                  andi         s4, s4, 1273
                  nop
                  xori         ra, t1, -1964
                  slt          sp, tp, a0
                  sub          ra, tp, s9
                  srai         s4, s8, 21
                  auipc        a5, 679876
                  or           s4, ra, s5
                  and          a1, s7, a4
                  blt          tp, ra, 2691f
                  bne          s4, t1, 2688f
                  xor          t5, t0, t6
                  slti         t2, s9, 805
                  nop
2688:             ori          a6, t5, 1822
                  slli         ra, s6, 21
2690:             blt          gp, ra, 2706f
2691:             add          a6, s8, t3
                  bge          a1, a1, 2704f
                  add          s6, ra, s2
                  andi         sp, a0, 664
                  xori         tp, t3, -1989
                  or           s11, t4, t2
                  and          s10, s3, s8
                  and          t6, s8, t2
                  srli         a5, zero, 1
                  sltiu        s10, a0, 1685
                  sub          t6, s9, s11
                  srai         a1, zero, 2
                  slli         a3, s8, 8
2704:             bltu         a3, s0, 2712f
                  beq          s9, t3, 2709f
2706:             bgeu         t6, a5, 2726f
                  ori          s6, s10, 94
                  sub          t6, s8, a7
2709:             lui          s6, 16829
                  xor          s5, s8, t0
                  bge          sp, a0, 2719f
2712:             add          t5, s6, t0
                  and          t0, gp, s5
                  nop
                  xori         s9, t4, 1936
                  blt          gp, t4, 2721f
                  bltu         s8, a0, 2718f
2718:             slti         t3, s0, -749
2719:             bltu         a5, s9, 2737f
                  bge          s7, s11, 2736f
2721:             addi         a5, s1, 1327
                  xori         t4, t3, -1998
                  beq          t5, s8, 2731f
                  srl          s10, s0, s2
                  sra          t5, tp, t4
2726:             beq          a7, gp, 2744f
                  sra          a6, t4, s11
                  nop
                  bne          t0, s5, 2748f
                  beq          a0, s1, 2741f
2731:             add          t0, a2, a7
                  sltiu        a6, s6, 1678
                  bne          t0, tp, 2747f
                  sltiu        t3, zero, -1841
                  bge          t1, s0, 2751f
2736:             slt          t4, s3, a7
2737:             lui          sp, 995998
                  add          a2, s11, a6
                  auipc        a6, 48931
                  nop
2741:             lui          t2, 844794
                  and          s1, a0, s6
                  lui          t0, 608433
2744:             lui          gp, 913822
                  sra          a7, t0, s11
                  xori         a4, s1, -1864
2747:             bgeu         s9, a4, 2759f
2748:             beq          s10, t0, 2760f
                  andi         t4, t4, 1893
                  sub          s6, sp, t3
2751:             slt          s9, s11, a4
                  bgeu         t4, a1, 2753f
2753:             sub          a1, s6, t4
                  nop
                  auipc        sp, 808988
                  sra          a3, s6, s10
                  auipc        a7, 725387
                  blt          a4, a7, 2773f
2759:             beq          t5, s8, 2763f
2760:             srl          s7, s5, gp
                  srl          t3, a4, gp
                  ori          s7, a3, -1617
2763:             lui          s4, 687780
                  bltu         s11, a4, 2771f
                  andi         tp, s1, 1563
                  bne          sp, s8, 2774f
                  auipc        a1, 275033
                  bne          a7, a1, 2775f
                  andi         zero, ra, -305
                  bgeu         s3, a7, 2773f
2771:             bne          gp, gp, 2777f
                  slti         a1, a2, -492
2773:             slt          gp, s10, a3
2774:             srai         a2, t0, 8
2775:             bgeu         s10, s2, 2792f
                  xor          t2, s1, s11
2777:             addi         s10, t4, -429
                  lui          a2, 984671
                  bne          t1, s3, 2787f
                  addi         a1, s11, -1061
                  beq          a2, t4, 2801f
                  nop
                  bgeu         a0, s3, 2799f
                  sltu         s10, s2, s4
                  auipc        t3, 244790
                  bge          a7, t1, 2791f
2787:             slt          s5, a6, tp
                  add          s9, t1, a5
                  andi         s6, s8, -1470
                  ori          a4, s0, -1548
2791:             bltu         ra, s8, 2795f
2792:             xori         a3, a1, -507
                  beq          s8, s1, 2800f
                  sltiu        a6, s6, -1281
2795:             xor          a4, s0, t0
                  sltiu        a5, s7, -1575
                  andi         s9, sp, 1545
                  and          t0, s3, a4
2799:             bge          tp, a2, 2817f
2800:             add          zero, a0, a4
2801:             nop
                  add          s7, t3, s1
                  srai         t6, s4, 0
                  lui          s5, 141576
                  addi         s10, s6, -1969
                  addi         t0, t1, -1580
                  andi         a5, gp, -1014
                  sub          s7, a0, a7
                  sra          t6, a4, a6
                  sra          s5, t3, s4
                  srli         a3, s3, 27
                  blt          s10, zero, 2813f
2813:             sra          s4, s7, s9
                  blt          a0, a5, 2820f
                  srl          s7, tp, ra
                  ori          s5, s7, -1008
2817:             blt          t6, s10, 2831f
                  sll          s11, gp, a3
                  addi         t3, s8, 1159
2820:             bltu         s7, a2, 2821f
2821:             xor          sp, a5, tp
                  slli         s6, zero, 17
                  srl          t0, ra, tp
                  slli         gp, s11, 31
                  add          a2, t6, s0
                  add          a4, a2, a4
                  sltiu        a2, s4, 1230
                  srl          t3, t2, a2
                  ori          t5, ra, -134
                  add          tp, a0, t0
2831:             blt          s5, s6, 2845f
                  sll          t4, tp, gp
                  slti         t5, t5, 161
                  beq          t3, t2, 2850f
                  slt          sp, a1, s7
                  auipc        s6, 177623
                  xori         s6, s8, -1554
                  xor          t6, s1, t2
                  sll          t0, a5, t6
                  addi         s11, a3, -1162
                  add          s0, t4, a5
                  slli         t5, s11, 8
                  bne          sp, t5, 2844f
2844:             nop
2845:             ori          zero, t5, -1499
                  bgeu         t1, s5, 2853f
                  add          s4, a2, s11
                  srli         t1, a4, 26
                  slt          zero, tp, a6
2850:             slt          t1, sp, s7
                  blt          s7, s5, 2855f
                  xori         t1, s0, -231
2853:             xor          t1, a7, s9
                  slti         s5, a2, -683
2855:             xori         s1, t4, -1536
                  blt          a2, a3, 2862f
                  bgeu         t5, s1, 2865f
                  bne          t6, s4, 2866f
                  add          a4, gp, a0
                  srl          s5, s9, s5
                  sltu         a1, a7, a3
2862:             bge          s8, s6, 2881f
                  bge          tp, a2, 2874f
                  sra          a5, gp, a0
2865:             slli         s11, s0, 8
2866:             bne          s1, a1, 2871f
                  xor          s0, s10, ra
                  srai         s4, a1, 25
                  sltiu        t1, s4, -1377
                  srli         s9, tp, 15
2871:             bge          t6, tp, 2889f
                  blt          s9, s6, 2873f
2873:             slli         gp, s9, 12
2874:             slti         t0, t3, -585
                  and          a1, s0, t0
                  sltiu        s1, s6, 1481
                  bltu         zero, t0, 2893f
                  bne          s7, s9, 2885f
                  andi         s0, sp, -1225
                  srli         s4, a2, 1
2881:             ori          s6, a3, 1455
                  sltiu        s5, gp, 313
                  srl          zero, s0, s6
                  bge          a1, zero, 2900f
2885:             xori         a6, t5, 1646
                  add          a7, a5, t2
                  auipc        s4, 662377
                  srl          s6, s6, a4
2889:             nop
                  nop
                  addi         zero, sp, 1373
                  slti         s6, s8, -175
2893:             blt          t0, t2, 2913f
                  auipc        s4, 553954
                  nop
                  auipc        t5, 926987
                  xor          t5, a4, a1
                  sltu         a5, s5, s9
                  sra          t4, s6, s8
2900:             ori          ra, s3, 1859
                  ori          t2, t2, 1519
                  sra          s5, a6, s10
                  sll          zero, a0, s11
                  andi         a4, a6, 34
                  slli         t0, t5, 1
                  bgeu         a3, zero, 2924f
                  nop
                  beq          a4, s3, 2926f
                  sltu         ra, t3, t6
                  sll          t0, s6, a6
                  bne          s7, a7, 2925f
                  sll          sp, s0, a3
2913:             add          s6, a4, s6
                  add          t3, t3, t2
                  sra          s7, t5, s8
                  addi         t1, a6, -1669
                  xori         s9, s1, 1365
                  srli         a7, s0, 26
                  sub          s7, a0, s0
                  and          s5, sp, gp
                  srli         ra, tp, 2
                  sltu         s0, s9, a4
                  bgeu         a2, a4, 2938f
2924:             srai         a4, a1, 25
2925:             auipc        t2, 533419
2926:             srli         s1, s2, 24
                  bltu         a4, tp, 2935f
                  auipc        a2, 812436
                  ori          t2, s4, 1978
                  ori          t2, gp, -190
                  xor          s0, t1, a2
                  and          s6, s0, s5
                  xori         s1, s2, -668
                  beq          t4, s6, 2938f
2935:             beq          zero, t6, 2947f
                  ori          t2, a0, -1025
                  bge          tp, t5, 2944f
2938:             slt          s6, a1, t4
                  sll          s3, sp, gp
                  andi         a1, gp, 809
                  srl          s9, t3, s8
                  andi         s0, gp, -440
                  xori         s10, s8, 186
2944:             bne          zero, a6, 2961f
                  and          a1, s3, s0
                  srl          t3, sp, t2
2947:             bgeu         t5, sp, 2948f
2948:             add          a4, t2, s8
                  slt          s3, t3, a2
                  sltu         a2, s4, a2
                  lui          a4, 845446
                  srli         sp, a4, 6
                  sub          s10, s3, a3
                  sltiu        t2, a3, -543
                  sltiu        t2, t1, 321
                  srai         sp, a5, 24
                  bgeu         s6, s3, 2960f
                  addi         ra, t5, -1958
                  blt          tp, a4, 2965f
2960:             slli         s0, a6, 12
2961:             sltu         t5, ra, s4
                  beq          zero, gp, 2974f
                  bge          t6, t1, 2964f
2964:             sra          s1, gp, a1
2965:             beq          t3, a1, 2982f
                  sltiu        a4, t1, 1439
                  or           s10, s7, sp
                  auipc        s9, 554903
                  auipc        ra, 178322
                  andi         a6, t2, -1931
                  la           s5, region_0+418 #start riscv_load_store_rand_instr_stream_24
                  lhu          a6, -138(s5)
                  sltiu        a1, t0, -1771
                  slti         t1, a5, 795
                  and          tp, zero, a5
                  sb           s2, 991(s5)
                  lb           gp, 650(s5)
                  lbu          tp, -172(s5)
                  slti         s7, s8, 1788
                  lb           t5, 884(s5)
                  lbu          tp, 334(s5)
                  sh           sp, 1018(s5)
                  slt          a6, a3, tp
                  lb           s4, 129(s5)
                  slt          s9, s5, a7
                  sb           a7, 333(s5)
                  ori          t1, s2, -156
                  lb           a6, 595(s5)
                  srl          s4, a3, t0
                  lh           t4, -374(s5)
                  lb           a3, -48(s5)
                  lb           a6, 535(s5)
                  sltu         s1, s11, s7
                  lbu          sp, 132(s5)
                  auipc        s9, 318752
                  lb           a3, -362(s5)
                  sh           t5, 332(s5)
                  addi         a6, tp, 11
                  lb           s6, 1243(s5)
                  sh           zero, 1112(s5)
                  sw           s6, 442(s5)
                  slt          a2, a7, s1
                  addi         s11, a3, 800
                  ori          gp, t6, 1369
                  sb           a1, 1189(s5)
                  lbu          t3, 195(s5)
                  sb           s2, 1535(s5)
                  lb           t5, 285(s5)
                  slt          s11, s4, s3
                  sh           a3, 1510(s5)
                  sb           a6, 745(s5)
                  sltu         gp, zero, a4
                  sltu         t2, ra, s9
                  add          a5, t2, s7
                  lh           a2, 106(s5)
                  xor          zero, s5, s6
                  auipc        t4, 304348
                  lbu          a7, -151(s5)
                  nop
                  xor          t4, s3, s9
                  lb           a1, -289(s5)
                  xori         sp, t2, -1160
                  lb           a3, 1103(s5) #end riscv_load_store_rand_instr_stream_24
                  sltiu        s6, t3, -934
                  lui          a2, 552482
                  slli         a7, s11, 29
2974:             beq          s7, t2, 2978f
                  bne          a4, s4, 2989f
                  bge          ra, s5, 2988f
                  or           t6, t2, s3
2978:             bgeu         a1, zero, 2984f
                  lui          t5, 158444
                  slt          s1, t2, sp
                  bltu         t2, t4, 2982f
2982:             beq          t5, s3, 2996f
                  xori         a5, s9, 779
2984:             xori         a4, a4, -384
                  auipc        s4, 494383
                  sll          t0, a5, s0
                  beq          a7, t5, 3006f
2988:             srai         zero, a0, 12
2989:             ori          a7, s10, -1559
                  bgeu         tp, s5, 3002f
                  bge          t6, a4, 2992f
2992:             lui          s7, 517942
                  slt          a5, gp, a4
                  srai         a5, tp, 20
                  sltu         tp, t3, ra
2996:             slt          gp, sp, t3
                  andi         zero, s8, 110
                  bltu         s8, t4, 3002f
                  andi         t5, t4, -32
                  sltiu        a7, s5, 180
                  or           tp, s1, s4
3002:             ori          a5, t2, 48
                  bltu         t1, tp, 3006f
                  xori         s10, a1, -545
                  beq          s0, s1, 3010f
3006:             nop
                  sra          a2, s0, t4
                  xor          s7, s4, s4
                  bne          a6, s3, 3027f
3010:             blt          s1, t5, 3026f
                  or           tp, s8, s4
                  bgeu         ra, t1, 3019f
                  or           a4, a3, t0
                  or           s11, zero, sp
                  srli         s3, a5, 12
                  nop
                  srl          t4, sp, a1
                  beq          s2, t3, 3026f
3019:             sll          s5, s4, a0
                  srli         t6, t6, 5
                  slti         s5, s4, 1317
                  beq          tp, s7, 3030f
                  nop
                  sra          a1, s10, s9
                  bltu         s4, s3, 3043f
3026:             sltiu        sp, a0, 794
3027:             add          t6, s9, t6
                  auipc        a4, 121523
                  srai         a4, t0, 14
3030:             srli         a4, a3, 25
                  sra          a3, t1, s2
                  auipc        a4, 593880
                  bgeu         gp, s5, 3051f
                  bne          sp, s0, 3045f
                  blt          s0, gp, 3043f
                  srli         s1, s3, 21
                  addi         s1, t6, 965
                  add          gp, s6, s9
                  xor          a4, s6, a1
                  sltiu        s5, a3, 1477
                  bltu         s0, t1, 3061f
                  srli         t3, t3, 30
3043:             sub          t2, s11, t6
                  sltu         s6, t4, s9
3045:             bgeu         s6, t6, 3061f
                  bge          a7, s6, 3061f
                  sltiu        tp, sp, -979
                  bgeu         s8, a5, 3055f
                  xor          t0, a7, sp
                  sll          a7, s5, a4
3051:             srli         a7, ra, 21
                  bltu         s4, t5, 3059f
                  bgeu         s2, a5, 3069f
                  lui          a5, 447124
3055:             slt          a4, s9, t1
                  bne          a4, a1, 3062f
                  ori          a1, s2, 991
                  sltiu        s4, a5, -1994
3059:             sltu         a2, ra, a4
                  sra          s7, s0, zero
3061:             addi         a6, ra, 135
3062:             or           t3, s6, s0
                  slli         ra, ra, 10
                  sltiu        s1, s7, -1634
                  bge          a0, t1, 3071f
                  srl          a6, a3, a4
                  sub          a2, a2, s10
                  bltu         t2, s10, 3084f
3069:             ori          s9, tp, -441
                  and          t4, ra, s3
3071:             sra          t6, s11, s3
                  sltiu        zero, s1, 667
                  srai         t3, zero, 30
                  bge          s2, t2, 3090f
                  bne          s8, gp, 3083f
                  xor          a2, s2, s9
                  bgeu         s2, s6, 3082f
                  srl          a7, s6, a2
                  lui          s0, 296731
                  sra          s7, sp, s11
                  xor          t4, s8, a6
3082:             sub          t0, s3, t0
3083:             and          gp, zero, a6
3084:             ori          zero, t2, -426
                  lui          a1, 490231
                  and          t5, t2, a5
                  addi         zero, sp, -1193
                  srai         t3, t3, 20
                  srai         sp, t0, 2
3090:             slli         zero, s8, 0
                  add          t0, s6, t6
                  auipc        s4, 46766
                  sra          a6, tp, a3
                  sub          sp, a0, tp
                  add          zero, t0, t5
                  blt          t1, s4, 3116f
                  sltiu        a4, gp, -1833
                  srl          a5, ra, t1
                  andi         s6, s5, 1671
                  slt          tp, t3, s8
                  xor          gp, s10, a7
                  or           s0, s6, a3
                  sub          a3, a0, a2
                  srl          s9, a6, t1
                  ori          s5, a6, -365
                  beq          t1, a0, 3114f
                  srai         a2, t2, 19
                  sltiu        t5, s7, -51
                  slti         sp, s6, 900
                  xor          s7, s4, a5
                  lui          a7, 737324
                  auipc        s7, 217661
                  ori          a1, t0, 1666
3114:             or           sp, a1, a0
                  bgeu         s9, t3, 3127f
3116:             bge          t2, t4, 3123f
                  bne          a0, t0, 3124f
                  beq          a2, a6, 3122f
                  srai         s7, s5, 29
                  slli         zero, ra, 12
                  bltu         s1, s4, 3138f
3122:             andi         s0, s1, 118
3123:             sra          a6, s11, s2
3124:             xori         t6, s8, -694
                  srai         t6, s1, 12
                  or           sp, s5, s5
3127:             and          s9, s5, a0
                  bgeu         zero, t2, 3129f
3129:             slti         t5, a0, 892
                  bltu         sp, a2, 3144f
                  xori         sp, s10, 1400
                  slt          t0, t0, s11
                  sra          a4, gp, s9
                  bltu         a1, s0, 3137f
                  bge          a6, a3, 3153f
                  and          gp, gp, a5
3137:             nop
3138:             add          zero, s2, t2
                  nop
                  nop
                  beq          s1, t0, 3156f
                  srai         a2, t5, 6
                  xori         sp, s1, -1570
3144:             and          s10, a3, t1
                  sltiu        t6, a7, 1392
                  sub          tp, gp, zero
                  xor          t3, t4, s10
                  srli         s9, s7, 11
                  blt          a6, s10, 3168f
                  blt          a4, sp, 3161f
                  auipc        a4, 217335
                  and          s6, a6, a3
3153:             nop
                  and          sp, s4, s8
                  sltu         t1, sp, s9
3156:             add          t5, gp, tp
                  slti         a7, a7, -1019
                  auipc        s7, 745277
                  sra          s3, s5, s1
                  nop
3161:             sltiu        s6, t0, -346
                  or           s3, t5, gp
                  slli         zero, ra, 0
                  auipc        a2, 218039
                  xor          tp, s10, a4
                  or           t1, zero, zero
                  bgeu         s2, s10, 3175f
3168:             sltu         t2, a1, s6
                  bltu         s0, a1, 3183f
                  andi         a2, t2, -22
                  add          a5, a2, s2
                  nop
                  bge          t2, t5, 3174f
3174:             slti         t3, s4, -1427
3175:             beq          s7, t6, 3182f
                  and          t5, s10, s0
                  slli         s9, t6, 5
                  srai         s3, s6, 4
                  lui          t6, 191563
                  xori         s6, zero, 641
                  beq          t5, a1, 3199f
3182:             and          t0, t4, zero
3183:             sub          a3, ra, s11
                  sub          s0, a0, s7
                  srl          a1, ra, s1
                  sra          a6, t3, t5
                  beq          t3, t0, 3193f
                  lui          s10, 773343
                  slt          s10, t1, s9
                  slti         a4, t2, -522
                  lui          s9, 920281
                  srl          gp, s8, a7
3193:             andi         t6, sp, 1081
                  and          ra, t3, tp
                  bgeu         s0, s5, 3196f
3196:             lui          a1, 975991
                  srl          s3, ra, t6
                  lui          t1, 358727
3199:             slti         t0, tp, -1915
                  andi         s0, zero, -901
                  srli         s4, s9, 7
                  sltu         a5, a5, s9
                  sra          s6, s1, s10
                  slli         gp, a2, 16
                  ori          s4, a6, -1510
                  sltiu        s4, t0, 392
                  or           s6, a0, t2
                  lui          s1, 151375
                  slt          zero, s7, t2
                  nop
                  auipc        s4, 767928
                  sltu         a7, sp, a3
                  sra          sp, ra, t5
                  slti         a5, gp, -446
                  slli         t0, s11, 19
                  bge          s6, t3, 3228f
                  nop
                  auipc        a5, 606584
                  sra          s7, s7, zero
                  sub          t6, t2, a3
                  lui          s1, 181431
                  bge          s10, a1, 3240f
                  and          zero, tp, a0
                  blt          a3, ra, 3228f
                  xori         s6, s7, 874
                  ori          s3, a0, 516
                  xor          s6, ra, s0
3228:             slli         sp, a7, 28
                  slt          t6, s8, t2
                  blt          t4, s7, 3246f
                  sltiu        s9, s9, -1002
                  bne          s11, sp, 3238f
                  sra          s10, a3, s7
                  bge          s7, s11, 3242f
                  slti         a3, a5, -1671
                  lui          tp, 633781
                  auipc        a5, 143969
3238:             add          s4, a1, s11
                  bne          a1, sp, 3253f
3240:             auipc        tp, 845030
                  sltiu        a6, t5, 205
3242:             bge          t3, s10, 3253f
                  nop
                  ori          tp, tp, 170
                  sltiu        zero, a1, -70
3246:             srl          a6, s10, a4
                  xor          zero, s6, s11
                  sll          t0, sp, t3
                  lui          sp, 425369
                  sll          s5, s11, a6
                  bltu         sp, a7, 3267f
                  sltiu        t6, t1, 325
3253:             sltu         a3, a0, t4
                  andi         a3, t1, -250
                  blt          a4, s11, 3273f
                  xor          tp, t0, s5
                  andi         s7, s7, -805
                  auipc        s6, 212355
                  nop
                  sub          a3, s11, a6
                  sra          t3, ra, s3
                  srai         a3, a1, 22
                  slt          a5, a4, s9
                  bgeu         s9, s2, 3280f
                  xori         a7, s5, 1297
                  xor          t0, a7, t1
3267:             addi         s6, a3, 1452
                  bgeu         tp, t0, 3280f
                  or           t5, t4, s6
                  or           s3, s2, zero
                  bgeu         gp, a1, 3287f
                  bge          zero, gp, 3292f
3273:             sltu         s5, s0, s9
                  srl          t5, zero, a3
                  blt          a2, a7, 3292f
                  srli         a7, s10, 21
                  srai         s9, t3, 24
                  add          s7, sp, s0
                  auipc        s7, 256995
3280:             srli         s9, t2, 15
                  xori         a6, s10, 1969
                  slti         ra, a2, 599
                  beq          a3, t3, 3291f
                  srli         ra, tp, 1
                  srl          s3, s11, s8
                  addi         t6, sp, -479
3287:             ori          t2, s11, 639
                  slli         s9, a2, 2
                  blt          t6, s11, 3297f
                  blt          s7, t2, 3295f
3291:             srai         a7, s11, 3
3292:             nop
                  sltu         t0, s6, t6
                  sra          s5, t2, zero
3295:             srl          a2, s9, s7
                  xori         gp, t3, -1959
3297:             sub          a4, a4, t4
                  auipc        s1, 985961
                  bltu         gp, s3, 3303f
                  bltu         t0, t6, 3301f
3301:             blt          a5, s10, 3316f
                  addi         a6, t3, 482
3303:             or           s7, t4, s4
                  lui          t0, 719464
                  bltu         a3, a4, 3309f
                  slti         tp, a2, 1427
                  add          a2, a0, s2
                  xor          t1, a7, s1
3309:             and          a4, t5, t3
                  srl          s9, s8, gp
                  xor          s7, s3, t6
                  sltu         a7, s10, s7
                  slti         s0, s1, -1801
                  slli         s6, a3, 26
                  addi         t4, s3, -587
3316:             bge          a6, s5, 3323f
                  srli         t1, s7, 14
                  sltiu        tp, a4, -262
                  blt          a4, a6, 3322f
                  xori         a5, s1, -643
                  xor          s4, s4, tp
3322:             auipc        gp, 109083
3323:             sra          t1, ra, s0
                  slli         s10, s0, 8
                  addi         t4, a3, -85
                  srl          a3, a2, sp
                  slli         s7, sp, 12
                  slli         gp, a7, 25
                  sll          zero, s6, s8
                  bgeu         t1, s7, 3344f
                  and          s11, s11, s4
                  slt          s6, t2, t5
                  andi         s0, s6, -1991
                  srli         s4, zero, 4
                  add          tp, s7, a2
                  bgeu         a4, t3, 3348f
                  bge          t6, s11, 3356f
                  xori         t5, s4, 241
                  and          s1, s3, zero
                  bne          s10, a2, 3347f
                  sltu         gp, s11, a1
                  lui          s5, 964242
                  xor          t6, s10, a7
3344:             sra          ra, t1, t0
                  add          t6, a7, ra
                  beq          s5, t6, 3364f
3347:             bgeu         t1, zero, 3353f
3348:             or           sp, t3, s10
                  auipc        a6, 520734
                  lui          s0, 85529
                  and          tp, zero, s2
                  slli         s1, a6, 7
3353:             bgeu         sp, s0, 3371f
                  slt          s5, t4, s2
                  ori          s10, a7, 1908
3356:             xor          t3, a7, ra
                  bge          s2, s11, 3358f
3358:             srl          t6, t4, t1
                  xor          s6, ra, s11
                  srl          t5, a7, a3
                  or           gp, t0, s8
                  bltu         s0, t0, 3363f
3363:             ori          a7, t2, -760
3364:             sub          sp, t6, s9
                  or           t2, tp, s6
                  auipc        a2, 13960
                  beq          t0, t3, 3374f
                  xor          a3, t1, t4
                  srli         tp, s5, 26
                  add          gp, ra, zero
3371:             add          s0, s11, gp
                  slt          s11, t3, a0
                  slli         zero, s0, 31
3374:             addi         a5, a1, -772
                  xori         s3, s3, 1909
                  slli         s1, a0, 14
                  srl          t6, sp, a6
                  slt          s5, s11, ra
                  or           a3, sp, t6
                  addi         s5, s4, 1909
                  sltu         s3, gp, a1
                  ori          s10, s4, 1983
                  bgeu         s6, s0, 3390f
                  auipc        s9, 597313
                  slli         t4, s6, 29
                  slti         ra, s0, 1846
                  slli         t4, t1, 23
                  blt          s10, a4, 3404f
                  auipc        zero, 947300
3390:             lui          s5, 283336
                  sltiu        s1, sp, 1782
                  ori          t4, s11, 1837
                  ori          t1, t2, 1738
                  srl          s5, s6, s3
                  auipc        zero, 624911
                  xori         ra, t3, -1962
                  sltu         a4, a6, s2
                  slt          a1, s0, zero
                  blt          a5, gp, 3413f
                  lui          a6, 265092
                  srl          s4, a6, s1
                  srli         s0, zero, 1
                  sltu         a4, s11, a3
3404:             add          s10, gp, zero
                  srl          a5, a6, s4
                  sub          t2, s9, a1
                  slli         s1, s10, 3
                  sltiu        a5, s7, -1270
                  bltu         s11, a1, 3427f
                  srli         s3, a0, 11
                  sra          ra, a6, t0
                  or           t4, ra, a3
3413:             nop
                  sltu         a7, a5, a5
                  blt          tp, a4, 3422f
                  bltu         s5, t2, 3427f
                  addi         ra, s2, 1268
                  nop
                  xor          t3, t2, a2
                  sub          s3, s4, a6
                  bne          t6, s4, 3428f
3422:             slti         s11, a4, 1905
                  slli         t3, t5, 17
                  slti         s0, t2, -264
                  slti         s6, a6, -229
                  auipc        s9, 35764
3427:             nop
3428:             nop
                  sra          s10, s11, a1
                  add          a2, a7, t2
                  sub          s0, s8, t2
                  addi         s0, t3, -1021
                  srai         s4, a3, 26
                  auipc        ra, 834784
                  slt          a2, t4, s10
                  beq          s6, a3, 3451f
                  srai         s11, s6, 7
                  srl          sp, s9, s3
                  srai         a1, a4, 11
                  bgeu         s6, t1, 3448f
                  slti         gp, s4, 915
                  bne          tp, ra, 3447f
                  sltu         a5, zero, a3
                  slli         s6, s10, 28
                  xori         s4, s10, -746
                  xori         t0, s4, 533
3447:             andi         t3, s8, -1559
3448:             sub          t6, a1, sp
                  or           s11, ra, a4
                  bgeu         a2, a7, 3454f
3451:             sra          s7, s4, a2
                  or           s6, a3, t4
                  sltiu        a7, a7, -1600
3454:             or           s10, s1, t6
                  xor          a4, s4, s9
                  and          a1, t0, s11
                  lui          a4, 390836
                  nop
                  sltiu        sp, t5, 545
                  bgeu         t0, s3, 3464f
                  sltu         ra, a5, s7
                  slli         t2, s0, 11
                  srai         sp, gp, 18
3464:             add          t2, s8, t1
                  srai         s1, t6, 3
                  bge          t6, s6, 3480f
                  ori          s9, t5, 1155
                  xori         s9, a7, 1500
                  xori         a1, t5, -387
                  nop
                  blt          a2, tp, 3483f
                  beq          t6, s2, 3488f
                  sll          t1, s5, ra
                  slli         zero, s1, 29
                  slli         t5, t1, 13
                  bne          s6, t0, 3488f
                  nop
                  sltu         s10, a5, s5
                  sra          t4, t6, t1
3480:             sll          t0, s2, s3
                  or           a1, a1, t4
                  ori          s4, tp, -1021
3483:             xori         t2, s9, -952
                  and          s4, t5, a5
                  slt          t4, s2, t6
                  beq          a4, t2, 3487f
3487:             xor          ra, a4, zero
3488:             add          s5, s8, s8
                  slli         sp, t1, 23
                  sub          s5, s10, s0
                  bne          s11, s11, 3494f
                  add          sp, s2, s4
                  and          s4, a2, a3
3494:             or           a1, t0, ra
                  xor          t4, a2, s1
                  beq          t3, s5, 3497f
3497:             bltu         t3, gp, 3503f
                  sll          sp, a7, s2
                  sltu         s10, a0, t5
                  bltu         s11, gp, 3516f
                  ori          s4, s4, -1851
                  bltu         zero, s2, 3510f
3503:             bne          zero, a4, 3521f
                  bne          s3, t6, 3523f
                  srai         a6, s4, 23
                  srli         t5, gp, 14
                  ori          zero, s9, 579
                  auipc        t5, 944346
                  srai         s5, a6, 30
3510:             ori          gp, s6, 1515
                  sub          s11, a3, t6
                  slli         s11, ra, 20
                  slli         s6, t4, 11
                  and          a3, a1, s7
                  bge          sp, t0, 3532f
3516:             sltu         s3, s1, zero
                  bltu         s6, s0, 3535f
                  slti         s3, s1, 382
                  bgeu         t3, t5, 3527f
                  andi         s10, s6, 1717
3521:             blt          a2, t2, 3527f
                  sltiu        t3, s9, -1682
3523:             sra          s7, a2, zero
                  sra          s7, s5, s6
                  slli         t1, s5, 16
                  slti         t1, ra, -104
3527:             sub          t2, tp, s0
                  xor          a3, s10, s11
                  slti         a1, s3, -539
                  ori          a6, tp, -764
                  bge          a6, a1, 3551f
3532:             sub          s4, a7, a2
                  xori         ra, a7, -1973
                  sltu         s9, a5, s9
3535:             addi         t2, gp, 1420
                  lui          a6, 657253
                  xor          s9, a7, s4
                  ori          a7, s4, -1595
                  ori          t5, s6, 513
                  andi         s4, s11, 1449
                  bltu         s2, t3, 3542f
3542:             xori         a4, t2, 2003
                  srl          s0, a3, zero
                  addi         t1, a3, -1910
                  sub          a2, ra, t0
                  xor          s0, s6, a4
                  srli         a7, t0, 4
                  xori         a2, tp, -1499
                  andi         a4, s8, -1414
                  slti         s4, a6, 273
3551:             lui          s3, 165600
                  addi         ra, t5, -1864
                  blt          a6, s7, 3554f
3554:             auipc        a3, 904669
                  xori         s11, zero, -53
                  ori          s3, a6, 315
                  addi         a7, s8, -1195
                  nop
                  auipc        a7, 120043
                  lui          s0, 707268
                  and          a7, t3, zero
                  sub          tp, s3, t2
                  sub          gp, t5, s3
                  ori          a7, a3, 1214
                  andi         s10, t6, 138
                  sltu         s0, s5, t5
                  srli         s7, s10, 10
                  sltiu        s4, s5, -907
                  slti         a3, gp, -253
                  xor          s4, s2, t6
                  add          s3, a4, sp
                  srli         gp, s0, 13
                  sub          t1, t3, s2
                  and          t1, t5, t0
                  andi         t3, s9, -1308
                  auipc        a1, 535041
                  bgeu         s3, sp, 3589f
                  srli         t5, tp, 5
                  andi         t5, s7, -1524
                  slti         s9, s7, -1268
                  srli         s1, s8, 17
                  slli         ra, t0, 18
                  auipc        s6, 789969
                  sra          s6, t1, a0
                  bltu         a6, s9, 3591f
                  xori         a4, zero, -1086
                  bltu         s10, t5, 3595f
                  auipc        s1, 565786
3589:             andi         a7, s9, 1795
                  srli         s10, a7, 19
3591:             srli         s9, a7, 27
                  beq          s0, s6, 3593f
3593:             slt          a6, t2, a6
                  ori          a4, s10, 1776
3595:             nop
                  or           s3, s8, a6
                  bgeu         zero, t1, 3602f
                  bgeu         s7, t0, 3606f
                  add          t4, s3, t5
                  sll          t5, s4, zero
                  addi         tp, sp, -2043
3602:             addi         t2, t5, 1010
                  srl          t2, a6, s9
                  beq          a4, s0, 3619f
                  sra          s0, t6, a4
3606:             sub          s5, s0, a5
                  or           s6, s9, sp
                  bltu         s3, s8, 3625f
                  beq          a0, t4, 3610f
3610:             add          t2, a0, t3
                  beq          zero, t3, 3618f
                  lui          a2, 711516
                  beq          a2, sp, 3617f
                  srli         s3, s7, 2
                  nop
                  sltiu        s11, s0, 1042
3617:             slt          a7, t5, gp
3618:             srai         tp, t1, 23
3619:             srli         s6, t2, 19
                  andi         s11, a2, -1729
                  bge          ra, s11, 3635f
                  lui          s10, 828231
                  nop
                  sub          t2, t0, t1
3625:             sra          t2, t3, s2
                  sub          a3, t1, t1
                  sltu         s7, t1, zero
                  bne          s4, s11, 3635f
                  sll          s4, tp, t1
                  slti         a7, s10, -1979
                  bge          a5, a5, 3647f
                  andi         s9, t2, 15
                  lui          a7, 1000230
                  slli         s11, s6, 18
3635:             srli         s7, ra, 19
                  xori         t0, tp, -1990
                  slt          a6, t4, s0
                  sltiu        zero, a1, 1385
                  slt          s7, s11, s2
                  sra          s1, t3, tp
                  slt          t6, zero, a5
                  bne          s2, a2, 3650f
                  srl          a6, s11, zero
                  xor          s0, t6, sp
                  slli         t5, s7, 14
                  bge          s3, t0, 3650f
3647:             lui          s6, 60899
                  andi         s4, t0, -563
                  auipc        zero, 77048
3650:             sltiu        a4, s8, -1657
                  sltiu        s1, tp, 608
                  slli         t0, s3, 14
                  beq          s8, a6, 3673f
                  addi         a3, s7, -1153
                  bne          s9, a1, 3673f
                  or           t4, s11, s11
                  xori         s4, s5, 670
                  sltu         s4, a2, t2
                  addi         s4, a5, 631
                  bgeu         s3, a2, 3678f
                  ori          a4, t1, 606
                  xori         t6, t0, 1288
                  bge          tp, s2, 3682f
                  add          t3, s1, t1
                  bne          s8, a6, 3681f
                  xor          t1, a1, t5
                  lui          s11, 82345
                  slti         s7, gp, 1670
                  bge          t3, s4, 3681f
                  bne          t4, t5, 3684f
                  bne          tp, a0, 3674f
                  auipc        t3, 795203
3673:             lui          t6, 200018
3674:             bgeu         t2, s7, 3681f
                  xor          t3, a0, a1
                  or           t1, s11, t2
                  xor          a4, t6, a2
3678:             slti         s3, gp, -676
                  auipc        s4, 129654
                  srli         s10, a3, 28
3681:             sltiu        s0, zero, 1243
3682:             bge          t1, s8, 3700f
                  and          a5, t1, gp
3684:             srai         a7, a4, 28
                  sub          a7, s1, a2
                  and          a7, s8, s6
                  andi         t0, s11, 287
                  srai         s5, ra, 2
                  sltiu        sp, zero, 1086
                  bgeu         tp, s3, 3701f
                  srl          a7, a1, s9
                  slt          s9, s6, s1
                  sub          t1, ra, s5
                  srai         s7, s11, 4
                  sub          a1, s1, t1
                  xori         s4, s2, 1991
                  xor          s7, ra, t3
                  sra          s0, t0, a3
                  slli         s7, t0, 7
3700:             slli         zero, t5, 0
3701:             blt          t0, s5, 3707f
                  srli         t5, ra, 11
                  auipc        gp, 609546
                  srai         s5, a0, 28
                  andi         s9, a7, 658
                  xori         a5, tp, -490
3707:             srai         a5, t1, 8
                  sltiu        gp, a6, -921
                  nop
                  or           s11, s11, s3
                  and          t0, t1, t6
                  sltu         gp, t0, a4
                  xori         a2, t5, 565
                  bgeu         a5, a0, 3730f
                  sltiu        t1, s9, -1846
                  ori          s9, s1, -825
                  srli         t3, s7, 7
                  bne          s2, a5, 3721f
                  auipc        s4, 118804
                  bltu         tp, a3, 3728f
3721:             blt          t2, a6, 3739f
                  slt          t3, s6, s7
                  add          s9, t0, tp
                  sra          s10, s7, ra
                  sra          a1, a2, s8
                  bltu         s8, s5, 3732f
                  bne          gp, t2, 3742f
3728:             bge          t0, t6, 3742f
                  sltu         s3, ra, s3
3730:             lui          sp, 1015115
                  bgeu         t4, t1, 3739f
3732:             blt          t2, t0, 3739f
                  addi         s11, s11, 505
                  addi         t5, sp, -553
                  ori          zero, s4, -1200
                  sltu         a4, a7, s11
                  slli         s0, t3, 3
                  auipc        s4, 60427
3739:             or           zero, a1, a2
                  addi         t4, s7, -60
                  sltiu        t5, t0, -558
3742:             srli         a6, s1, 15
                  sltu         a5, a7, a7
                  beq          s1, a4, 3748f
                  lui          s5, 62315
                  slti         s11, s3, -771
                  bgeu         s4, a7, 3759f
3748:             xor          s1, s3, s0
                  add          s5, a6, a7
                  xori         a7, s2, -1037
                  srl          s10, a0, s5
                  sra          zero, gp, s1
                  bne          t1, s1, 3769f
                  srai         s11, s3, 21
                  bne          s3, t3, 3763f
                  slti         zero, s8, -2039
                  nop
                  srl          s7, a0, a6
3759:             andi         t1, s8, 1291
                  ori          a1, ra, 489
                  sll          a6, tp, a4
                  beq          t1, a2, 3763f
3763:             sltiu        a4, s11, 871
                  slli         a4, t5, 23
                  or           t1, t6, t6
                  nop
                  srl          gp, s5, t1
                  bne          t1, a1, 3769f
3769:             bltu         sp, zero, 3770f
3770:             addi         a2, a1, -587
                  blt          s9, a6, 3778f
                  sub          a4, a7, t0
                  add          t1, a4, s9
                  bgeu         t0, zero, 3786f
                  srai         s0, t6, 15
                  xor          t1, t1, s2
                  lui          a3, 862148
3778:             bne          zero, a3, 3785f
                  lui          a3, 441492
                  bge          s11, t1, 3797f
                  nop
                  srli         s10, sp, 22
                  bgeu         ra, a1, 3799f
                  slti         t0, a4, 55
3785:             sub          s11, t5, s9
3786:             bgeu         t6, tp, 3802f
                  slt          tp, sp, gp
                  add          s10, ra, ra
                  bne          s9, ra, 3809f
                  slti         t5, s5, 702
                  auipc        a3, 59022
                  beq          s1, s7, 3797f
                  sub          a6, t4, t4
                  addi         gp, a2, 1729
                  bge          a5, s2, 3813f
                  andi         a1, t1, 661
3797:             slli         s10, tp, 13
                  slli         s3, a3, 11
3799:             sltiu        s10, t5, 498
                  nop
                  ori          s10, t0, -13
3802:             bltu         zero, gp, 3820f
                  slti         s3, t4, 864
                  and          t2, a4, a3
                  xori         tp, t2, 1242
                  beq          ra, s3, 3817f
                  srli         t2, s6, 9
                  xor          t0, s6, t5
3809:             sra          s3, t1, s7
                  sltu         zero, t0, s11
                  add          s10, s6, s3
                  add          a1, gp, s3
3813:             or           s9, t5, t4
                  bgeu         a7, ra, 3828f
                  auipc        a6, 808305
                  lui          s4, 681913
3817:             sra          t5, s4, t2
                  sltu         a2, t6, t0
                  xori         a4, s6, 2012
3820:             bge          t2, tp, 3839f
                  slli         t1, s4, 15
                  sll          a5, a6, tp
                  sltu         a4, a0, a4
                  srai         t1, t2, 11
                  nop
                  bltu         tp, t2, 3830f
                  addi         gp, s10, -384
3828:             sll          a2, s7, s2
                  slti         a1, s9, -831
3830:             bne          a5, a4, 3836f
                  xor          t6, s11, a0
                  xori         a2, s8, -1713
                  srai         s5, s2, 18
                  nop
                  bge          s6, t6, 3846f
3836:             nop
                  sltiu        gp, t6, -1429
                  bgeu         s10, t1, 3839f
3839:             srai         s7, s4, 3
                  xori         a3, t3, 984
                  andi         sp, t3, 860
                  nop
                  ori          a5, zero, 421
                  srl          t3, a2, t0
                  ori          zero, t6, -1655
3846:             slli         s4, t0, 13
                  and          a2, sp, a3
                  blt          tp, sp, 3863f
                  srli         t1, a1, 17
                  nop
                  srai         s10, a0, 10
                  bne          s0, a4, 3856f
                  srai         t2, t0, 11
                  ori          zero, a0, 182
                  ori          gp, zero, -735
3856:             slli         s1, s0, 24
                  sltiu        a7, t3, -509
                  nop
                  lui          zero, 202979
                  lui          s3, 906771
                  auipc        s7, 287990
                  xori         s7, a4, 44
3863:             srai         s9, s3, 21
                  bne          ra, a6, 3871f
                  sra          a1, sp, s4
                  slt          tp, s7, zero
                  andi         t0, s8, 22
                  bgeu         s7, sp, 3869f
3869:             sltiu        s4, gp, 1699
                  addi         s5, t2, 696
3871:             andi         s10, t2, 247
                  auipc        gp, 372366
                  sub          s4, s0, s3
                  bne          zero, s0, 3888f
                  xor          s10, zero, tp
                  blt          a1, s2, 3896f
                  slti         t0, t3, -538
                  nop
                  or           a6, a7, a4
                  ori          s7, s7, 1600
                  auipc        t0, 548639
                  and          tp, s2, s11
                  beq          a2, s2, 3897f
                  sra          s10, s3, s6
                  sra          s6, t4, a2
                  xori         s3, tp, -1319
                  bgeu         a7, s7, 3895f
3888:             sltiu        s6, s11, 594
                  slli         s0, tp, 5
                  or           s9, s6, tp
                  bne          s10, s11, 3910f
                  bne          a7, a2, 3910f
                  beq          t5, s2, 3911f
                  srai         a6, t3, 24
3895:             nop
3896:             and          a6, tp, s10
3897:             srl          t5, a0, s4
                  sub          s6, a3, t3
                  srli         t0, zero, 27
                  srai         t4, a5, 26
                  addi         s9, tp, -313
                  blt          s2, zero, 3918f
                  add          s11, s5, a5
                  nop
                  slt          s4, s9, t3
                  nop
                  addi         t5, gp, -1321
                  srli         s1, s9, 11
                  srl          t0, s3, t6
3910:             and          a2, s10, a2
3911:             auipc        s11, 101839
                  auipc        a2, 864406
                  bge          s6, a0, 3920f
                  sub          a6, t4, t3
                  sra          s0, s2, t5
                  bne          s9, a6, 3922f
                  bgeu         t0, ra, 3920f
3918:             nop
                  beq          s11, t0, 3931f
3920:             slti         gp, s6, 825
                  sub          s3, t2, s1
3922:             bge          zero, t4, 3930f
                  sra          a3, s9, t5
                  andi         tp, s10, -192
                  and          a3, a4, t1
                  and          s6, sp, ra
                  or           s4, a4, s4
                  nop
                  andi         s0, a6, -501
3930:             sll          s4, ra, sp
3931:             slli         a2, a3, 30
                  bgeu         a3, s7, 3948f
                  srli         t6, s2, 21
                  sra          s4, s9, t1
                  auipc        t1, 935092
                  slti         a1, s2, 422
                  bge          t6, a5, 3944f
                  or           s1, tp, a4
                  srl          s9, t4, t4
                  slt          t5, a1, t5
                  sll          a1, gp, s1
                  slt          s0, s5, t4
                  srl          s6, t2, gp
3944:             bge          s11, a5, 3962f
                  slti         sp, s0, 1130
                  sll          sp, tp, t5
                  sub          a6, s6, t5
3948:             sra          s10, s2, s11
                  sltu         gp, a6, s11
                  slt          a5, s1, s2
                  sub          t1, s2, t0
                  sltu         a6, s7, ra
                  bge          s6, a2, 3965f
                  slt          tp, a5, t3
                  nop
                  srl          t1, s6, s8
                  add          t4, a6, s10
                  sra          t1, t1, t6
                  srai         s5, sp, 5
                  addi         a3, a2, -434
                  add          s11, tp, s2
3962:             sltiu        sp, a2, 947
                  add          s1, t6, a5
                  xor          t3, t0, s10
3965:             beq          t5, s2, 3970f
                  sub          s0, s2, zero
                  andi         t5, s6, -1341
                  or           s6, s3, gp
                  or           t4, a6, s4
3970:             sltu         s10, t3, a0
                  slti         t5, ra, 3
                  andi         t1, s10, 1825
                  sub          s6, t3, gp
                  nop
                  beq          a7, s6, 3976f
3976:             srli         t2, s0, 27
                  bgeu         t1, a4, 3993f
                  sub          s9, a4, s7
                  add          s3, gp, a5
                  auipc        a5, 826221
                  slti         a4, t5, -1167
                  xori         s1, t5, -192
                  sltu         t5, zero, t2
                  sub          gp, t2, t0
                  bge          t6, s10, 4002f
                  sltu         t4, t1, s8
                  sltu         zero, s9, sp
                  lui          s9, 901774
                  xor          zero, s3, s4
                  sltu         t3, tp, sp
                  sub          s10, t1, gp
                  blt          a2, s6, 3998f
3993:             nop
                  srai         s4, t6, 24
                  bltu         a6, sp, 3999f
                  sltiu        s9, ra, 245
                  srl          s11, s11, a5
3998:             bge          t0, a2, 4006f
3999:             bltu         s0, s10, 4011f
                  and          t4, t3, s10
                  beq          a2, a0, 4017f
4002:             sltiu        s11, s3, 1638
                  auipc        s10, 705034
                  sll          t3, s8, s6
                  addi         ra, s4, 1716
4006:             ori          t1, s0, -317
                  blt          s0, a1, 4013f
                  srai         s9, a3, 10
                  blt          s9, gp, 4016f
                  srl          s0, s4, tp
4011:             xori         a7, s1, 1720
                  sll          s4, a2, a2
4013:             andi         sp, a2, -938
                  sltu         s11, s5, t2
                  bge          t0, s3, 4033f
4016:             xor          t6, s4, sp
4017:             blt          a0, a1, 4020f
                  sra          a4, sp, t4
                  sltu         s5, s8, s4
4020:             sub          gp, s9, t4
                  slli         zero, ra, 8
                  blt          s1, s11, 4041f
                  xor          t2, t0, a6
                  bge          a6, a0, 4042f
                  ori          s4, a6, 978
                  xori         a6, a1, 1260
                  sltiu        tp, s1, 793
                  slti         s5, s11, -1710
                  addi         s11, t3, -973
                  auipc        ra, 1031693
                  srl          s5, tp, t0
                  ori          s10, t3, 1262
4033:             blt          sp, s6, 4034f
4034:             addi         gp, s1, 685
                  slli         t1, s0, 9
                  blt          s0, s0, 4056f
                  sltiu        sp, t0, 1410
                  nop
                  ori          t2, s1, -484
                  bltu         s2, t0, 4041f
4041:             lui          t2, 676685
4042:             nop
                  add          t2, t2, t2
                  lui          s3, 1010750
                  add          s3, t5, a6
                  xor          t2, t3, a5
                  andi         t4, t3, 1013
                  and          a7, s9, t2
                  xori         s7, s6, 2042
                  slti         t1, s1, 615
                  blt          a4, s5, 4068f
                  add          s4, a2, s2
                  bge          s6, s1, 4069f
                  bne          a2, t4, 4059f
                  sub          t0, a1, s4
4056:             and          zero, tp, a0
                  auipc        s5, 661407
                  or           t4, a0, s1
4059:             srai         a4, t2, 25
                  bge          s0, s5, 4078f
                  sll          s4, gp, s3
                  sltiu        a1, t2, -1385
                  srai         t5, s3, 26
                  sltiu        a3, s10, -246
                  or           s9, s7, s5
                  blt          t2, t6, 4072f
                  andi         t0, s8, 1107
4068:             sub          a7, s5, a1
4069:             addi         t1, s2, 640
                  ori          s3, t0, 1727
                  bgeu         a3, t6, 4087f
4072:             beq          a4, a5, 4076f
                  sltu         gp, a6, a4
                  xor          t2, s3, t5
                  or           t6, s10, s7
4076:             srl          gp, tp, t3
                  slt          ra, s7, s11
4078:             auipc        gp, 928675
                  addi         t1, s5, -1279
                  bltu         a3, s6, 4088f
                  beq          s1, s4, 4093f
                  nop
                  sra          s10, s9, t5
                  add          a2, sp, s8
                  sub          t4, zero, s6
                  xori         s0, t2, -815
4087:             bne          a1, t2, 4094f
4088:             andi         t4, s2, 1680
                  sltiu        t5, sp, -1045
                  srl          tp, s5, t2
                  ori          t2, s0, -1071
                  bne          a0, s7, 4106f
4093:             bge          a4, t1, 4101f
4094:             srl          t5, s10, s6
                  slt          s1, s8, t0
                  lui          t5, 150846
                  ori          t6, a5, -1141
                  sll          s5, s11, ra
                  nop
                  nop
4101:             and          s9, ra, s11
                  xori         a1, s0, -480
                  slli         s6, a3, 20
                  srai         zero, a0, 11
                  slti         t4, s9, 1705
4106:             auipc        a4, 476020
                  beq          a6, a4, 4108f
4108:             add          s7, s7, a2
                  slli         t4, a3, 6
                  add          s9, s10, t1
                  addi         t0, zero, 706
                  sll          s7, gp, sp
                  srai         s9, t1, 13
                  sll          tp, a4, s11
                  bne          t3, s4, 4123f
                  add          t4, a7, t2
                  sll          t6, ra, s11
                  nop
                  addi         zero, a6, 1346
                  srai         a5, a5, 9
                  addi         s9, sp, -804
                  srli         t6, s1, 25
4123:             bge          gp, a4, 4137f
                  nop
                  nop
                  srai         t2, a1, 14
                  sra          a1, s2, sp
                  blt          a6, ra, 4132f
                  andi         s5, s9, 1205
                  bge          t4, gp, 4137f
                  srai         t2, zero, 14
4132:             nop
                  beq          s8, s7, 4144f
                  bgeu         sp, a4, 4149f
                  sll          a6, a1, s4
                  auipc        s7, 994445
4137:             sltiu        a4, s9, -1712
                  bge          s3, s7, 4146f
                  or           t2, s10, a5
                  sra          t1, t5, a7
                  srli         t4, t1, 18
                  srl          t1, t5, s6
                  bgeu         sp, s10, 4144f
4144:             bgeu         s3, t0, 4161f
                  bne          s7, t4, 4161f
4146:             slti         s10, s4, 851
                  bne          s10, t6, 4154f
                  and          t2, a2, s2
4149:             bgeu         a6, t0, 4167f
                  nop
                  xori         t0, t5, -2025
                  sltu         s0, a0, t0
                  ori          s11, s11, 1237
4154:             slti         ra, s0, 1673
                  or           ra, s1, s4
                  srli         ra, a1, 13
                  srli         t5, sp, 5
                  srli         a2, s6, 27
                  sll          t2, sp, s1
                  sltiu        s4, a4, 1247
4161:             andi         s4, s7, -239
                  bge          a6, t0, 4177f
                  slt          t6, a6, t6
                  addi         zero, s10, -1186
                  sra          s5, s0, tp
                  bgeu         s1, sp, 4170f
4167:             andi         a7, a1, 907
                  bltu         a0, s5, 4177f
                  bne          a3, tp, 4176f
4170:             srl          t4, sp, a5
                  andi         sp, a1, -1826
                  sltu         a6, a5, t2
                  srl          a4, s6, s1
                  srl          a4, a3, a3
                  bltu         t0, t0, 4177f
4176:             srli         a3, t1, 10
4177:             xor          s5, t5, a7
                  lw           a3, 4(s2)
                  slt          s0, s11, a5
                  ori          s10, s3, 1538
                  srli         s6, t3, 13
                  auipc        s10, 771991
                  sra          a6, t4, s0
                  addi         s2, s2, 16
                  nop
                  or           zero, zero, t6
5534:             addi x1, x13, 1
5534:             jalr x1, x1, 0
sub_10:           srl          s6, a7, a6
                  xori         a2, a3, 661
                  addi         s2, s2, -16
                  sll          s1, s6, t2
                  and          ra, t5, sp
                  or           t1, zero, a3
                  sub          t1, a0, a6
                  sub          a4, s8, t4
                  sw           a3, 4(s2)
                  sra          s1, a5, t1
                  sltu         a6, t5, a4
                  slli         t5, a5, 24
                  lui          a5, 981581
                  bgeu         s5, a4, 10f
                  slti         t1, s8, -133
                  xor          tp, t0, s10
                  andi         s0, s4, -1524
                  addi         s5, s2, -1105
                  addi         t3, a0, 135
                  lui          s7, 84649
                  addi         s7, a3, 527
                  sub          a6, s10, s6
10:               auipc        s3, 976710
                  nop
                  srli         tp, t3, 14
                  sub          t4, s2, t6
                  lw           a3, 4(s2)
                  addi         t2, a3, 1025
                  addi         s2, s2, 16
                  or           ra, t1, s0
                  sll          s3, t4, zero
31:               addi x5, x13, 1
31:               jalr x5, x5, 0
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
.word 0xc68ffd8c, 0xa27b3749, 0x3dbd72ea, 0x2d59a021, 0x9a8f2140, 0xd1f55f20, 0x86ff16dd, 0x9a4e2c9e
.word 0xa6461745, 0x69e12cc7, 0x7b8d6117, 0x51820e4d, 0x023664c0, 0x52c38480, 0x8530198d, 0xfcab1e1f
.word 0xc5cb0f01, 0xff245b7d, 0x3206c667, 0xaf156122, 0x5deda5bb, 0x53837286, 0x4602346c, 0x87b1b675
.word 0xfbda5b67, 0x14f2fa51, 0xc24a1b11, 0x1003ede8, 0xecf1ee12, 0xd33acc8e, 0x0dbd49e6, 0xb1a8ca5a
.word 0xe3a42348, 0x7a37a8b6, 0xcb27ef17, 0xd067ffb5, 0xda8affbb, 0x26d0c829, 0xf3160a47, 0xb48d9cc2
.word 0xfa2d28fd, 0x407c21b7, 0x893b8f4b, 0x313f0ef0, 0x6f7e2dcc, 0xd6d1c8aa, 0x7e5b8d2a, 0x0540c6e7
.word 0xd11ffc25, 0xe83633e2, 0x286d2383, 0x36cc51a3, 0xe8e8a4ed, 0x076b7436, 0xffeefa1a, 0x2b1776a1
.word 0x768514c9, 0x4d6c6012, 0xff1573fe, 0x1fd39c70, 0x4943e429, 0xbe8b535a, 0x7d2bbb54, 0xda485437
.word 0x72adbb22, 0xfbdfa989, 0x16e6dc3c, 0xc332ed51, 0x5551868a, 0xd44b2396, 0x30d7111f, 0x7394d7bc
.word 0x4f4299c0, 0x1c6bc653, 0xf6dae518, 0xe3dcef7e, 0x4823a839, 0x20abbf97, 0xb2a32db3, 0x8686a53f
.word 0xfb3556bf, 0x6992d923, 0x80544e05, 0x90d592e1, 0xf5b45a91, 0x54a0e39d, 0x2229ce4e, 0x57369ff1
.word 0x3cde8337, 0x51de6aab, 0x5bd95e66, 0xafef94d6, 0xeb452a2f, 0x933b0478, 0xd16c9b7d, 0x620d8e7d
.word 0x7fd22575, 0xc71e79b2, 0x996c777b, 0x15cb5a09, 0x83c0a1c7, 0xae211e94, 0x1aadc9a8, 0x668d5cce
.word 0xdd9a2993, 0xe531cbb9, 0x8f3308a5, 0xecc5be55, 0x54505159, 0x60c71637, 0x677f8c3d, 0xe0e9c138
.word 0xbf491f82, 0xe1c4e6bb, 0x575fff34, 0x47030048, 0xc5126d77, 0xb2ecebf1, 0xb7e17130, 0x8bfec49a
.word 0xbcc6be5f, 0x47d46155, 0x410dc083, 0x00d158ba, 0xed4a29cc, 0x6ce64fa7, 0x32ba9c10, 0xc42afe5c
.word 0x87d2a43e, 0x99f410ca, 0xe3021e74, 0x49899866, 0xd133be72, 0xcbb6c493, 0x021706c8, 0x15e25694
.word 0xf9e1d978, 0x4be1290c, 0x1fdc6037, 0x875e6e54, 0xb87f4836, 0x37e1c5f2, 0x4531f751, 0x27396df3
.word 0x47af0ce0, 0x5b0b625d, 0x6cc25489, 0x13f6b36e, 0x5935ce62, 0xcb74e148, 0x0b22f0fe, 0xe47315f1
.word 0x551214bc, 0x712a29d4, 0x02bb7eba, 0x837b734e, 0x27d1c69c, 0x26087225, 0x6d72f2be, 0xf03139ca
.word 0x3e5511f3, 0x3b8aef55, 0x695cf6c6, 0x65f6387d, 0x21cb97d6, 0xbee114bf, 0xfc2762ff, 0x9277c8e0
.word 0xfded36b8, 0x76d0cc92, 0x48ecfab7, 0x4a0fd859, 0x38ed998f, 0x257426ab, 0xcc57f483, 0x67fde813
.word 0x2dbdfcb2, 0x97b2dcbf, 0x39ebf4cb, 0xde18482c, 0x5fc1f28c, 0xc388e8f6, 0x71ae38f8, 0x2760ebbd
.word 0x65549896, 0xed8ce354, 0x7666f9f1, 0xf975ddf0, 0x95e61aa5, 0x855db763, 0x804420a4, 0x82532ebb
.word 0x459a0f49, 0xd1679314, 0x4879464d, 0x0c48560c, 0x0d6dc627, 0x47cd73d4, 0x16d0d928, 0x725bf714
.word 0xf532bf87, 0x7658ca97, 0x7173b16e, 0x2449e6bd, 0xffe12eef, 0x12d143ed, 0x983243f9, 0xd718d0fc
.word 0x4971dc5f, 0x47556d77, 0x88e82640, 0x8693ab94, 0x19b7fb0f, 0x95603f76, 0x89227654, 0x34a18dab
.word 0x658a63bd, 0x67dfb0e9, 0xaa7ba2e9, 0x0c1f625b, 0x41109797, 0x16870f4d, 0x2a3b4698, 0x78c1ecf8
.word 0xacbf8ea0, 0x9f76bc44, 0xfbb05ff7, 0x18221e97, 0x81961d61, 0x97301d5a, 0x70c88207, 0xe4cd83dd
.word 0x09e807c9, 0x2b6b50f2, 0xe81628d9, 0xf1242e77, 0x2bc0dc00, 0xddffb810, 0x45d750a8, 0xc66541df
.word 0x0b2a02a6, 0x395f6278, 0x009eb436, 0x349db1fa, 0x65d17da2, 0x69f1c01d, 0xc846ce9a, 0xd74e7b4b
.word 0x3f1bd525, 0x131fe0f4, 0xf6a41693, 0x34c5c6c5, 0xf36c30ca, 0x5f66ccd9, 0x0453ef59, 0xae66cd66
.word 0x7d6511a1, 0xd15ed80e, 0x17455c96, 0x9e68408d, 0xb5d9ba3c, 0xb277a9b4, 0x3efb328e, 0x3d69e02f
.word 0x8bf7ec85, 0xa4cfa2d3, 0x071083fd, 0x9ea6c306, 0x8ec16604, 0xb7fde1fb, 0x22d88c73, 0x7e42b902
.word 0x7051e784, 0x700d1d4d, 0x7ac8b163, 0xe8908ea5, 0x94e22835, 0xac6f7ae4, 0x836e1d2f, 0x0620725d
.word 0x43d8edb8, 0x3c8e8381, 0x12a6359d, 0x92f4b455, 0x84aadf44, 0xbb938a5b, 0x6a0d386f, 0x83a57168
.word 0x287ad2cd, 0xdfe06cc8, 0x96192c63, 0xd0c3eb5a, 0xad927c03, 0x3e2fffdf, 0x8a1bd4bd, 0xc0db2b2f
.word 0xd3f83d37, 0xf6807a02, 0xd8d62975, 0x24104630, 0xe93bf751, 0x06051e1b, 0x19a8e1cd, 0x3bd8edf3
.word 0x50178fae, 0x951c3000, 0xdf562b7b, 0xe088bd73, 0x25fda093, 0x55ce4eab, 0x69562b18, 0xea5f5752
.word 0x7ec9302d, 0x98640644, 0xbed3feac, 0x94902ab0, 0x752acdef, 0x444d7f42, 0xbc38bad8, 0x32fae236
.word 0xccafc8f3, 0xf257785c, 0xeab22e2f, 0x12e1d7a1, 0x5d86bf1e, 0x19cb644d, 0xcdcfb679, 0xc26a18ce
.word 0x6f074c82, 0xd18c8d86, 0x4e122645, 0xb6305642, 0x49f60564, 0x09db5f12, 0x277335fa, 0x21acecc2
.word 0xac75e9a8, 0x1915f3dc, 0x98a04f9a, 0x7ec07029, 0x5c98acc5, 0xd00b2cb9, 0x98bab1d8, 0x03f87936
.word 0xf155ef67, 0x7ca99a60, 0x14ced092, 0x9322fbc6, 0x2915a1f6, 0x7718153d, 0x7452ace9, 0xfe45de9c
.word 0x75c50fd0, 0x82bcdfef, 0xb933993b, 0x37fcb6e9, 0x9f35bffd, 0x71404129, 0xe42cb7f7, 0xbecc61b6
.word 0x7372fe48, 0x10608844, 0x5b87cf6d, 0x2e96d3d8, 0xa6efa4c2, 0xfe8a876e, 0xda2c9e3f, 0x2dab2199
.word 0xda554097, 0xa9100076, 0xda3b98a2, 0xc195c93c, 0x0a500d44, 0x43bb04ee, 0xc81d8799, 0xbf0983ee
.word 0xab313a28, 0x106fecdb, 0xa834fbab, 0x2beb19a7, 0x11535188, 0x47587b2e, 0x5ed8cc92, 0x6bf0f28b
.word 0x44a8c39d, 0xfa114089, 0x37b05746, 0x188f7c6d, 0xe1d6155f, 0x1673ac80, 0xd02c431c, 0x77c579d7
.word 0x65c46c3d, 0xa739c306, 0x24565958, 0x937d54a3, 0x2b2a0aca, 0xdc0b8ba3, 0x2fb499db, 0x22c69931
.word 0x4e6a09da, 0xf53df77e, 0x2e7b08e4, 0x828084cb, 0xda0aa771, 0x3c922315, 0xc061ad37, 0x44a6368c
.word 0xb2329b87, 0xd80d9c11, 0xe7db1d39, 0x143f187b, 0xad15bc39, 0xf25f4f70, 0x867d2c5a, 0x64f63ca1
.word 0xb6b146fe, 0x514abd05, 0x7606ae16, 0xe626b7c7, 0x40cd4b6e, 0x251cc990, 0x0c8d3334, 0x8dc64af0
.word 0xa9d052bc, 0xea331a4d, 0xab343c37, 0x06992657, 0x5d778eae, 0x7885a2e2, 0xd34b2e9f, 0xe09db9d0
.word 0x8843a283, 0x41ae3a5b, 0xffc65ecc, 0x90003cdd, 0xdfb74ebe, 0x1a31e4f5, 0xb061dadd, 0xdd82fe02
.word 0x854dc834, 0xb16263cc, 0xfd7c5b79, 0xac1edb40, 0xca79e84a, 0x2fcf173c, 0x5a7318a4, 0x99572423
.word 0xb4f033c4, 0x1764db89, 0xb9244fd1, 0xaafa0eae, 0x6bc761f7, 0xd932e4ca, 0x5fc0d505, 0xc6992a97
.word 0x26cce4c6, 0x51b1c88d, 0x35488890, 0x97d5be17, 0x8866d0ff, 0x925172b2, 0xfc9e92fb, 0xafdf585e
.word 0x796ef1a9, 0xb01912d8, 0x521ba2ad, 0x3d8fe5d8, 0xfdd2501d, 0xcb7d93de, 0x25e676dd, 0x949b5604
.word 0x6e5885ad, 0x7499bcab, 0x766d117a, 0xc5479d90, 0x3fd3c4bb, 0xc74c8a25, 0xeb3c0eab, 0xdee16bd2
.word 0xa19ef17b, 0x525a24d5, 0xa5756c23, 0x7a9cdb87, 0x603b1a20, 0x8b423dec, 0x4c9c523d, 0x90767f09
.word 0xd46108d3, 0x5a0a62ee, 0xfcc9c70b, 0x267e1256, 0x72e976e3, 0xe3aecbfa, 0x50bf3ee3, 0x524c1527
.word 0xdbd4d0ae, 0x24b8167b, 0x41cad220, 0x8c3f154c
.section .region_1,"aw",@progbits;
region_1:
.word 0x9e3138d7, 0xf08e1376, 0x060adc71, 0x273efbd8, 0x5f1c6891, 0x535f5f28, 0xfc2972eb, 0xd04af5a4
.word 0xca4f1df1, 0x140e9d62, 0x96f353c4, 0x809098e4, 0x067ddcbe, 0xf35f4653, 0x5d68e4e3, 0xe631cd61
.word 0xa1016c3d, 0xbfe457ce, 0x815226b1, 0x09dc1634, 0xd0944ba4, 0x7dbf5f99, 0x0b2fec26, 0x6c4c0068
.word 0x56da2d9e, 0x55e9ce43, 0xe569ad92, 0xbd7802b0, 0x6c9d296f, 0x34fee7cc, 0x6be8f9fb, 0xdba2e1ea
.word 0xe0148ecf, 0x7afc88fa, 0xb2345c18, 0x2b9370a4, 0x8f01a489, 0xa511a11c, 0x737419ca, 0x36dd3adc
.word 0x6966a4e3, 0x143583f7, 0x05fa2bfa, 0x9f1ed188, 0x789b3f8c, 0x91ec902f, 0x57704b3c, 0x73a50069
.word 0x8a246666, 0xf30c61de, 0xe376a61f, 0x9086efae, 0x8a359049, 0x4da51c7b, 0x3f3ae467, 0xc08155e1
.word 0x9ae24ace, 0xbd4505bb, 0x21c894f8, 0x6be7a796, 0x1a4a40af, 0x75e7329f, 0x6563b690, 0x2aafa842
.word 0x492306a3, 0xc12de4e9, 0x6c288c08, 0x00aaa2a0, 0xa132d027, 0x472476fe, 0x9132ecf4, 0x72e14a4a
.word 0xdeb498fc, 0x0195ebeb, 0xc014cbca, 0xaed1f5a6, 0xdc882c58, 0x4631012c, 0xc402cdee, 0x1c57faef
.word 0xc59cdcd8, 0x8413b05b, 0x87afdf65, 0x5a2daaac, 0x8fb8abba, 0xfc0fdbf2, 0x7c316ab3, 0x4dfbe796
.word 0xa21293a5, 0xde39b526, 0xc5e4dcb0, 0x61d22e38, 0xbc29e362, 0x237bcd0d, 0xe5a52450, 0x723b5a4b
.word 0x9b52fb1c, 0x9747cfa7, 0x1da0e940, 0x71d8f56e, 0x169a83ce, 0x084dacfe, 0x4c6d3232, 0x1f2160a4
.word 0x6e0ac643, 0x8daeb0dd, 0x26b5b72c, 0xeb8ebb09, 0x0874a663, 0x09c0ba52, 0x4b97f1a8, 0x8fe69f08
.word 0x05323872, 0xe6b642d5, 0x02f7a995, 0x9a6ad7a0, 0x8396dbf6, 0x6d9da2b5, 0x3d8081b2, 0x56683f6f
.word 0x9a35ed12, 0xcbbd9ed5, 0x11dec49d, 0xba4c7efd, 0x7d10c75a, 0x69dbb378, 0x7e1d57e9, 0xe4899552
.word 0xa171547e, 0x554717bf, 0x1606597f, 0xb41d57e5, 0x92f43fc1, 0x6dd68683, 0x7de6168e, 0xaedaa42a
.word 0x4942fa97, 0x429b2b86, 0x26bf8dc3, 0x3025100e, 0x7704bb86, 0x983eb01d, 0xf5d276b3, 0x04aac732
.word 0x4c315f54, 0xcd90fa1a, 0xbe9dbeaf, 0x9d12ccb7, 0x4625645b, 0x265a65b5, 0x288f3a8f, 0xb213755f
.word 0x88fbc5c5, 0x93b60662, 0x3b13d825, 0x51a9e4b0, 0x022c1101, 0x31046675, 0xa09c2a01, 0xd627e440
.word 0xb1db70a1, 0x8a00ec1c, 0xfbb789e7, 0x207b0648, 0x4a7363b8, 0x35f8a4b8, 0xbcb8877c, 0x9c3c3577
.word 0x50b3ed89, 0x86709186, 0x0bc6be8f, 0x76239545, 0xe782590f, 0x13bd32ba, 0x3cf158f1, 0xbe0c5711
.word 0xe660fbc0, 0x6574e47e, 0x85eefb47, 0x252e225f, 0x2efaa37b, 0xee5cbc26, 0x204f9750, 0x1cba9013
.word 0xc61d6922, 0xc6df86f8, 0xb1051f41, 0xa9438e6b, 0xd192842c, 0xd04eb6f5, 0x723fd51e, 0x38849364
.word 0xfa37bb83, 0x9f018103, 0x81788bb6, 0x4b14343e, 0x9d5957fa, 0xa309390a, 0x634b4806, 0xcb7536a0
.word 0x3ca589c7, 0xcc520a12, 0x1f4cc45d, 0x0d927b13, 0xb94f5def, 0x0b329c89, 0x9ef29753, 0x49f30ace
.word 0x05d7953f, 0x59503475, 0x9f8261f8, 0x4819c29d, 0x3378c235, 0xd3eedf72, 0xd8452f04, 0xd8f6d3bb
.word 0xcc5d029b, 0xd13430c1, 0xfb3968e4, 0xbc85e171, 0xeebafbd8, 0x215cda6d, 0x28cc89e1, 0xa066cdab
.word 0xbd783c24, 0x807ebfc1, 0x4f627907, 0xcad12c72, 0xc475f7bf, 0xb8764a24, 0x08e90c82, 0x883ab1d8
.word 0xc4075256, 0xe5bcb5e5, 0xe4222f1b, 0xee6a6e16, 0xaf2319fe, 0x9672e179, 0xdd716653, 0xf057d204
.word 0x05459f80, 0xc7445522, 0xf8c4a259, 0x48e5c231, 0xe2b14ff5, 0x83f09b3b, 0xeabf169f, 0x387ac7fa
.word 0x573da787, 0xf081cdf1, 0x4ddc0b8b, 0xb334435b, 0xb8fd212a, 0xe910bfca, 0x217785a6, 0x6cd34153
.word 0x4233181d, 0x701cbd7f, 0xc40c7a3e, 0x32e34dee, 0xeb47c4f8, 0xf631f850, 0xbf59f4f3, 0x506d77e6
.word 0x7941265f, 0x715f2b47, 0x3aa456be, 0x88507a0d, 0x9f8506f0, 0xc40f3f49, 0xc73e568c, 0x21bd48b1
.word 0xf3e7bdb8, 0x1750f5b8, 0x079b7b7a, 0x34416372, 0xd01cdc9d, 0x31990ccd, 0x8291da12, 0x7ddc9aea
.word 0xb3ba6dd0, 0x9c99bfbf, 0x21984e0a, 0xe19ff82c, 0xc8880a4e, 0x7b9094f6, 0xaa16ca64, 0xc22fd486
.word 0xfb3dbe35, 0x86f4096d, 0xf7a98727, 0xe003be72, 0xc11d8386, 0x1a969b6b, 0x3f3b176e, 0x5dd030d8
.word 0x213ec20c, 0x0a3eebdc, 0xd5f6a29a, 0x2bf3a49f, 0x3409abe3, 0x6155fed6, 0xeab26996, 0x12b2a3c3
.word 0x3b0b0de5, 0x17cdeeec, 0x71de8c48, 0xc91c56b5, 0xefaf758c, 0xb295b49e, 0x7f99ea6d, 0xb37b5b59
.word 0x8a0eabc9, 0xcf038c25, 0xbebb0f3a, 0xe393ccdf, 0xe701f038, 0x536f2299, 0x0b299749, 0x3cabdc61
.word 0x849e6045, 0x589a9466, 0xd6ffe9a7, 0x9825abb8, 0x7f8214a9, 0x9a62c292, 0x51ef62ed, 0x24d1f802
.word 0x5b786592, 0x705eb1ad, 0xef2d867b, 0x097d84ed, 0xdd5ce60b, 0x223ff080, 0xc81c74d7, 0xd0a66947
.word 0x222291ab, 0x97ca34da, 0x2a5e073f, 0xede63859, 0x4b9b895e, 0xd4888565, 0x3a0f49f7, 0xf78dbe7f
.word 0x04024226, 0x64374488, 0xdd830880, 0x4515e5a9, 0xc24e8b17, 0x14340907, 0xc3550554, 0xb44f001f
.word 0x4ce14e5d, 0x4795fd47, 0xe8b77469, 0xf59cb96d, 0x8f70be30, 0x6eaba20c, 0x2ed4ccc8, 0xd92c9269
.word 0x5d8d4bef, 0x63f13e44, 0xf03f95e6, 0x077665d1, 0xe681ecc4, 0xc3cd87d4, 0x500e39ae, 0xb8c2afba
.word 0x9762d9a6, 0x0330e6d6, 0xbbe57b72, 0x290dcd55, 0xb17f62cd, 0xa3572dc1, 0xc8f054fd, 0x0ddd863a
.word 0xa0bf000a, 0xed173d94, 0x17ed1a58, 0xd19a9979, 0x3644d039, 0xedd9e9b5, 0x9d313470, 0xe73d6d47
.word 0x62cd58de, 0x1b49bbc5, 0x64dcb0a1, 0x837f0a15, 0x3debcd6c, 0xc2accd34, 0xfd809111, 0x888931f4
.word 0xf877f1c7, 0xd82cf15d, 0x05ed3de2, 0x3e61acd7, 0xf7dfd094, 0xc2b203b4, 0xbfc4b61e, 0x87d53aaa
.word 0x8ab97ed5, 0x5efcaad6, 0xc5ea920f, 0x97328073, 0xeaacee92, 0x085d1747, 0xd6d96cf3, 0x7a5b6573
.word 0xa499ff2b, 0xe8ec895d, 0x6c172977, 0x6a7dca42, 0x66f1990c, 0x73706cf3, 0x2d21c80b, 0x2513d48b
.word 0xbde6f2e5, 0x8c525c32, 0x210760e8, 0x172263f5, 0x5d22c229, 0x4271eabf, 0xff43c02f, 0xcd795c91
.word 0x4fd29236, 0x6b69bd54, 0x04bbf548, 0x770286c0, 0xce205242, 0xa72309ab, 0xd5278391, 0xe348b950
.word 0x2d5295c3, 0x92731f33, 0xa1cf3ddf, 0x22a363c2, 0x0d8aeef0, 0x465a86e7, 0x0d9b3669, 0x9d36fedf
.word 0x1198f52a, 0xe2d4fb8c, 0x49b95aa3, 0x57b2bf06, 0x327c3e04, 0x1b95e4e4, 0xaa51006d, 0x610bd391
.word 0xd3780671, 0xcff59e6b, 0x1b28a0e8, 0xb2e31503, 0x64b5a58d, 0x841a465f, 0xfabaadf9, 0x845e66ae
.word 0xe720b351, 0x81be334e, 0x32d44557, 0xd416f296, 0xbdf8f5d5, 0x4b9b5078, 0x95b74a96, 0xf949da9a
.word 0x339e2f46, 0xf15f2513, 0x1016c196, 0x20c7a204, 0x663004fd, 0x94c47db6, 0x65da8aef, 0x83a24eaf
.word 0xe14eac56, 0x35a62570, 0x609e75e5, 0x9c964f59, 0x2caa9a61, 0x095b81a2, 0x7a840921, 0x50576773
.word 0xd251b513, 0x157c42a2, 0xf100dcb0, 0x41472d4c, 0xc027bd87, 0x077e308e, 0x42361d4d, 0xca1e7f9a
.word 0xb2c95d07, 0xf818763f, 0x3b2c121a, 0xe8d6fc6a, 0x1f0b3cf7, 0xba6efaed, 0x93458c11, 0x2f53c051
.word 0x3ebcd4ff, 0xf2644828, 0x1acc10e4, 0x40bff22b
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x24, x18, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x2, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x2, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x2, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x2, x19, ecall_handler
                  li x19, 0x1
                  beq x2, x19, instr_fault_handler
                  li x19, 0x5
                  beq x2, x19, load_fault_handler
                  li x19, 0x7
                  beq x2, x19, store_fault_handler
                  li x19, 0xc
                  beq x2, x19, pt_fault_handler
                  li x19, 0xd
                  beq x2, x19, pt_fault_handler
                  li x19, 0xf
                  beq x2, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x18, x24, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x24, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x24, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x18, x24, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x18, x24, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x18, x24, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
