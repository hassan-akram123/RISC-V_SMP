.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
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
                  li x0, 0x0
                  li x1, 0x35a2431
                  li x2, 0x0
                  li x3, 0xf0a5b44f
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x882156d9
                  li x7, 0x6b3e155e
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xa12f2f37
                  li x11, 0xf36be97a
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0xfd51bd25
                  li x15, 0x259dc381
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x6d82f0cc
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x7c8bc2f3
                  li x24, 0x80000000
                  li x25, 0x11324f1c
                  li x26, 0xf2ed3aa8
                  li x27, 0x64ec626
                  li x28, 0xf11c3e71
                  li x29, 0x8
                  li x31, 0xb
                  la x30, user_stack_end
main:             sltu         s1, s3, a2
                  lui          t4, 348122
                  slli         s8, s9, 13
                  la           a0, sub_1
                  srl          ra, t0, t2
                  addi         a0, a0, -274
                  auipc        t0, 105707
                  lui          zero, 18454
                  add          t3, t2, a7
                  bgeu         s10, gp, main_j2 #branch to jump instr
                  xor          a5, a7, tp
main_j2:          jalr         s2, a0, 275 #jump main -> sub_1
                  la           a6, region_0+1179 #start riscv_load_store_rand_instr_stream_0
                  sltiu        a7, a2, 985
                  and          s6, ra, t6
                  xori         s0, s4, 1507
                  sb           t3, -18(a6)
                  sh           t6, -43(a6)
                  lui          a4, 66360
                  lb           s2, -62(a6)
                  srai         a1, t5, 21
                  add          t2, s3, s10
                  slli         s8, t3, 5
                  sh           a2, -49(a6)
                  andi         a0, t4, 1087
                  xor          sp, s4, s4
                  sw           s11, -39(a6)
                  slti         sp, t5, -779
                  lh           s1, -9(a6)
                  xor          s8, t2, s10
                  sra          t2, s9, s0
                  srli         a7, s7, 23
                  sub          sp, a0, a0
                  lbu          a5, -57(a6)
                  slli         a1, ra, 6
                  sb           a7, 28(a6)
                  sb           s1, 22(a6)
                  sll          tp, a4, t1
                  lb           a0, -60(a6)
                  auipc        t3, 980405
                  nop
                  lbu          sp, -13(a6)
                  srli         s11, t0, 16
                  srai         a5, a7, 7
                  lhu          t0, 13(a6)
                  sll          a0, s7, a1
                  sll          s0, a1, zero
                  add          s9, s6, gp
                  lb           s6, 58(a6)
                  sb           ra, 2(a6)
                  srai         s0, tp, 8
                  lbu          a2, 6(a6) #end riscv_load_store_rand_instr_stream_0
                  and          a6, s10, a1
                  srl          a3, s6, a4
                  lui          s8, 405067
                  or           a0, zero, tp
                  srli         t6, a6, 13
                  srli         t4, t5, 18
                  srl          s1, a3, gp
                  andi         t3, a0, -377
                  andi         s8, s0, -2000
                  bge          t4, a3, 10f
10:               ori          gp, a1, 1949
                  bne          s10, t1, 24f
                  blt          t0, a4, 30f
                  bltu         s11, sp, 29f
                  or           t3, s1, t2
                  beq          s8, s0, 33f
                  slti         ra, s0, 87
                  srl          s2, t1, s1
                  addi         sp, s6, 19
                  srli         gp, s10, 8
                  andi         s5, s5, 491
                  sub          a4, tp, s0
                  sltu         s0, s11, a5
                  auipc        tp, 394042
24:               xori         a4, a6, -153
                  auipc        gp, 640920
                  srli         zero, s9, 30
                  slli         s11, s10, 22
                  sub          a0, s10, ra
29:               sltu         zero, tp, s1
30:               bne          s11, t1, 48f
                  andi         s1, tp, -1550
                  and          s1, s8, s0
33:               bne          t3, s4, 35f
                  add          s1, a0, a7
35:               addi         sp, t4, 1258
                  sub          s6, s4, a1
                  sra          s11, t5, t3
                  xor          zero, s2, a6
                  xor          s2, t2, s5
                  bne          a7, s9, 56f
                  sltu         a7, s1, t2
                  slt          s10, sp, a4
                  beq          tp, ra, 59f
                  or           a2, s6, a1
                  lui          t3, 636100
                  lui          a6, 151468
                  bge          a0, a5, 56f
48:               srl          s11, s9, sp
                  add          t3, t0, t4
                  slti         t4, s0, 476
                  bne          a2, t1, 65f
                  sra          s9, t4, a1
                  sub          t4, gp, t0
                  slti         sp, sp, 206
                  srl          t2, s11, t1
                  la           s5, sub_1
                  sll          t0, a6, t1
                  srai         s3, s9, 5
                  addi         s5, s5, 983
                  nop
                  slti         s2, s6, 113
main_j1:          jalr         s2, s5, -983 #jump main -> sub_1
                  srai         s11, t5, 26
                  xori         a7, a3, 595
56:               slti         t6, t6, -145
                  addi         s11, t2, -1481
                  bne          t5, gp, 69f
59:               add          t4, s8, tp
                  ori          t2, a7, 528
                  or           s6, s10, t1
                  bgeu         a3, t6, 74f
                  ori          a2, t0, -1917
                  andi         gp, sp, 201
65:               bne          s11, s5, 69f
                  slti         s9, t6, -1595
                  andi         s2, s7, 1155
                  xor          s5, sp, t2
69:               slli         zero, zero, 7
                  srl          gp, a3, gp
                  slti         a2, s5, -1571
                  srai         s8, s2, 20
                  nop
74:               xori         a4, zero, 127
                  auipc        t0, 334318
                  slli         t0, a4, 12
                  beq          s2, a2, 78f
78:               beq          s5, tp, 89f
                  bgeu         t2, sp, 88f
                  sltiu        s1, s1, 1766
                  andi         s6, t2, 196
                  and          t1, s10, zero
                  and          a5, s2, ra
                  slti         a4, s9, -716
                  bltu         a1, a6, 101f
                  xor          a5, s2, s7
                  sltu         s11, t0, s11
88:               beq          a0, zero, 93f
89:               sub          a0, t3, zero
                  srai         t0, a3, 25
                  slli         a2, s0, 29
                  slt          a6, t3, zero
93:               srl          s5, t5, s6
                  sub          t6, t2, a3
                  andi         s1, s1, 1047
                  ori          t0, s4, -115
                  sra          t6, s8, s5
                  xori         s2, s1, -1814
                  sll          a3, t1, s11
                  andi         s2, s0, -93
101:              sll          a6, sp, s1
                  sll          a0, s7, s4
                  auipc        s0, 719698
                  slti         a0, t0, 1603
                  srai         a5, t1, 15
                  sra          s6, t6, a4
                  and          s0, a5, gp
                  bne          a2, s6, 123f
                  sub          s0, sp, t4
                  srai         s1, t5, 20
                  bltu         t4, s11, 124f
                  bge          s10, s9, 128f
                  sub          sp, t2, a5
                  ori          t4, s9, -1408
                  addi         a7, s0, 2045
                  slli         a2, s1, 22
                  sll          s0, s10, t5
                  bltu         s6, s3, 132f
                  bgeu         t5, a5, 126f
                  bne          s6, ra, 135f
                  srai         s3, zero, 9
                  blt          s8, s1, 129f
123:              sltu         s10, s4, s4
124:              slti         s10, s0, 1947
                  or           tp, s9, s4
126:              sll          a1, s4, s1
                  auipc        a0, 134263
128:              blt          a3, zero, 134f
129:              addi         a0, s0, -1220
                  andi         gp, t1, -1955
                  srli         s11, a5, 26
132:              addi         a4, s10, -1621
                  nop
134:              sub          s6, gp, gp
135:              sub          s2, a4, zero
                  auipc        s6, 851129
                  bltu         t4, t0, 146f
                  xori         s9, s3, 1172
                  beq          t0, t3, 141f
                  xor          a4, a5, a2
141:              slti         t4, t1, 72
                  sll          a3, a2, a4
                  andi         t2, t3, -253
                  and          a6, s8, t4
                  xori         t2, t0, 1447
146:              andi         t2, s4, 386
                  andi         s10, a7, 1536
                  lui          a2, 741537
                  addi         s11, s4, 1086
                  auipc        t6, 607502
                  ori          a2, tp, -648
                  bltu         s1, a2, 157f
                  lui          a2, 451058
                  xor          ra, a6, s1
                  sub          ra, a2, zero
                  lui          s3, 891471
157:              beq          t1, t5, 161f
                  bltu         t6, t6, 171f
                  bne          s1, s1, 173f
                  srai         s6, a5, 4
161:              add          a4, tp, t3
                  slli         a1, s10, 18
                  sltiu        t4, s8, -1588
                  sub          t0, s10, s0
                  auipc        s10, 647194
                  or           ra, a0, s7
                  slti         a4, s3, 777
                  and          t1, t1, t4
                  andi         s8, t6, 1716
                  xor          t3, t4, t3
171:              sltiu        zero, s3, 797
                  addi         t6, s1, 125
173:              slli         s0, sp, 25
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            auipc        s10, 565312
                  blt          t1, a5, sub_8_stack_p
sub_8_stack_p:    addi         t5, t5, -60
                  sub          zero, a3, t5
                  sw           s2, 4(t5)
                  ori          a2, t1, 328
                  sll          a3, gp, t6
                  srl          s0, t6, s5
                  xor          s6, s2, s0
                  bne          a5, a0, sub_8_j12 #branch to jump instr
                  lui          s3, 316956
                  xor          s3, tp, a1
                  lui          zero, 641968
                  ori          t1, s3, 479
                  and          a7, a4, s4
                  sltiu        t1, s7, 682
                  slti         s10, tp, 1058
sub_8_j12:        jal          s2, sub_9 #jump sub_8 -> sub_9
                  srl          t1, t3, s2
                  blt          sp, a3, 17f
                  xori         a2, t0, 1902
                  ori          t0, gp, 1801
                  bltu         t3, s2, 17f
                  sra          t1, a0, t2
                  andi         a3, s7, 696
                  slt          sp, t0, a1
                  bgeu         t4, s4, 11f
                  or           s0, s11, s3
                  add          a7, zero, t0
11:               nop
                  ori          t4, t3, -1433
                  slt          a6, t5, sp
                  slli         s9, s11, 19
                  bge          a7, s11, 17f
                  bge          sp, a2, 17f
17:               or           s6, s4, a4
                  sll          a4, s10, s1
                  lw           s2, 4(t5)
                  ori          a6, a0, -1738
                  addi         t5, t5, 60
                  sltu         s8, t0, tp
41:               addi x19, x18, 0
41:               jalr x19, x19, 0
sub_10:           or           a5, a7, a5
                  xori         sp, s10, -1870
                  sltiu        t1, t3, 1917
                  srli         sp, t0, 20
                  nop
                  blt          t3, t0, sub_10_stack_p
                  srai         s9, a7, 1
sub_10_stack_p:   addi         t5, t5, -40
                  addi         t0, t4, 430
                  srli         s6, a4, 8
                  slt          a7, a0, zero
                  sw           s2, 4(t5)
                  auipc        a0, 750728
                  la           gp, region_0+944 #start riscv_load_store_rand_instr_stream_0
                  or           s11, tp, s2
                  sb           t0, -609(gp)
                  srai         a7, a6, 30
                  srai         t2, a4, 15
                  andi         a5, s1, 1182
                  lh           s0, 426(gp)
                  srai         t0, tp, 4
                  add          a0, s8, s1
                  lb           a2, 1055(gp)
                  lb           tp, 1055(gp)
                  sltu         zero, a2, a5
                  nop
                  lh           zero, 512(gp)
                  auipc        a2, 277883
                  or           s1, tp, zero
                  srli         s8, a1, 20
                  lb           zero, 642(gp)
                  sb           s6, 349(gp)
                  lbu          a2, -143(gp)
                  sltiu        t4, sp, -563
                  ori          tp, t0, 2011
                  sra          s8, tp, a3
                  sra          t3, t0, a2
                  lh           s8, 86(gp)
                  xori         a6, a0, -866
                  ori          a7, a6, 933
                  andi         a5, a4, -1306
                  sltiu        t3, s10, 728
                  lbu          s11, 319(gp)
                  ori          sp, s6, -1218
                  lh           s9, -288(gp)
                  xori         t1, t3, -1430
                  srai         a2, s5, 20
                  sb           tp, 145(gp) #end riscv_load_store_rand_instr_stream_0
                  srli         s8, a3, 26
                  auipc        s5, 968802
                  nop
                  bltu         s5, a5, 6f
                  beq          s7, s9, 7f
                  xori         a1, s3, -972
6:                and          t4, t4, a7
7:                xori         t1, s11, -193
                  bltu         s3, s9, 20f
                  slt          a5, sp, s7
                  add          s8, t1, s4
                  sra          t0, s0, a0
                  sra          t1, s9, a0
                  andi         t2, sp, 628
                  bne          t2, a0, 15f
15:               bgeu         s0, a2, 17f
                  xori         s0, t0, 47
17:               bltu         a6, s4, 22f
                  andi         t4, a0, 1792
                  add          s5, a7, zero
20:               srai         t0, ra, 7
                  blt          s6, t0, 31f
22:               beq          a0, a6, 41f
                  bgeu         tp, tp, 36f
                  addi         s0, a0, -18
                  sra          s6, s4, t2
                  srli         a3, a4, 24
                  srli         s1, t4, 3
                  addi         tp, sp, -1835
                  add          s2, ra, s3
                  sub          a6, s0, ra
31:               slt          t0, s2, s6
                  xori         s3, a1, -1323
                  add          ra, s7, s7
                  srl          s11, a4, s6
                  bgeu         t5, gp, 48f
36:               srli         a1, t6, 5
                  sll          a5, a4, t5
                  xor          a0, s10, sp
                  addi         a2, s10, -2014
                  srli         sp, ra, 18
41:               srai         a6, s8, 26
                  bge          t6, s5, 49f
                  sra          a1, zero, a5
                  srli         s8, s6, 29
                  srai         s10, gp, 23
                  and          a3, ra, t5
                  blt          s11, t3, 50f
48:               sltiu        t3, s5, 1441
49:               bgeu         s9, s5, 68f
50:               andi         tp, s1, 1227
                  slti         s8, s4, -301
                  bge          tp, a5, 57f
                  or           sp, s3, t0
                  bne          t2, a6, 67f
                  sra          a0, sp, ra
                  xor          ra, s4, zero
57:               slt          s8, zero, s0
                  slt          a3, s5, t6
                  bgeu         t0, s10, 62f
                  xori         sp, gp, 447
                  andi         sp, s6, 516
62:               nop
                  sub          tp, a7, gp
                  beq          t6, t0, 84f
                  slli         s1, t3, 17
                  add          t4, a6, s5
67:               sra          t6, a7, a1
68:               sltu         a5, s4, t6
                  lui          t6, 972641
                  addi         ra, s4, 1946
                  blt          tp, s6, 75f
                  srl          s1, a5, s10
                  auipc        t3, 897850
                  xor          a3, t1, a7
75:               lui          a7, 268682
                  srai         s6, zero, 6
                  auipc        zero, 160628
                  sltu         zero, a7, a3
                  sra          t2, a1, t1
                  bne          a7, a0, 82f
                  slli         t3, a0, 24
82:               srl          ra, s5, s7
                  srli         a3, a4, 8
84:               sltiu        tp, s10, -544
                  nop
                  xori         zero, t3, -1400
                  auipc        tp, 864478
                  srli         tp, t1, 28
                  ori          a7, s10, 1355
                  srl          t6, a0, a5
                  and          s2, s2, s1
                  srli         a6, t3, 20
                  auipc        s0, 121778
                  andi         a4, t5, 219
                  slli         t6, t4, 20
                  srli         s11, a1, 20
                  sltu         s9, a5, s11
                  bgeu         s2, a7, 117f
                  andi         a1, t1, -504
                  slt          gp, s0, t1
                  xori         s8, t2, -1582
                  bltu         gp, s0, 121f
                  xor          a0, s5, s1
                  bltu         a5, s4, 105f
105:              sltu         s1, s1, s3
                  add          t1, t5, t5
                  bgeu         s9, a6, 118f
                  xor          t4, s4, zero
                  ori          zero, a3, 1308
                  slt          t2, s4, a2
                  beq          s3, a0, 113f
                  bgeu         t0, sp, 113f
113:              beq          a4, s4, 131f
                  bne          s8, a2, 126f
                  sub          s1, s3, a6
                  bge          s0, s11, 130f
117:              ori          ra, a1, -1923
118:              sub          sp, a0, a6
                  sltu         a4, t3, t6
                  andi         s5, tp, 55
121:              bgeu         a3, sp, 122f
122:              addi         zero, zero, -2008
                  and          zero, zero, s1
                  nop
                  bgeu         ra, s6, 143f
126:              slli         s1, t2, 1
                  sltiu        gp, s11, -305
                  sll          zero, s4, s3
                  bltu         s1, s5, 139f
130:              auipc        s6, 933653
131:              bgeu         sp, ra, 134f
                  xor          t2, a4, s8
                  or           s3, s1, a1
134:              addi         s3, s1, 268
                  andi         s2, t3, 758
                  and          s10, a4, s4
                  addi         t3, a0, 1536
                  xor          a2, t4, s4
139:              bge          a5, a7, 145f
                  and          t2, zero, s2
                  slt          ra, t3, a4
                  srl          s10, t3, s3
143:              or           a6, sp, t3
                  add          a3, s6, t0
145:              nop
                  slli         a5, s2, 4
                  addi         ra, a7, 1840
                  lw           s2, 4(t5)
                  srai         a7, t4, 8
                  xor          s1, t3, a1
                  srl          a4, t6, a3
                  xori         t1, a7, -1991
                  sltiu        t0, a3, -447
                  addi         t5, t5, 40
                  andi         t0, s8, -837
                  slti         a0, s10, -1913
                  slt          s9, tp, s4
206:              addi x1, x18, 1
206:              jalr x1, x1, 0
sub_7:            srl          t6, a6, s4
                  bltu         s7, s9, sub_7_stack_p
sub_7_stack_p:    addi         t5, t5, -64
                  andi         t0, t6, -794
                  sw           s2, 4(t5)
                  and          sp, a6, s0
                  slt          a4, sp, t2
                  la           sp, region_0+789 #start riscv_load_store_rand_instr_stream_3
                  auipc        t1, 592312
                  sb           s5, 32(sp)
                  sb           a6, 1177(sp)
                  srl          t0, zero, a7
                  sb           a7, 747(sp)
                  sw           t3, 487(sp)
                  lb           a4, -276(sp)
                  ori          t4, s8, -1169
                  lh           s8, 1061(sp)
                  or           a3, a7, s5
                  add          s6, s8, t1
                  sh           s5, 207(sp)
                  lbu          s1, -453(sp)
                  srai         a2, a7, 28
                  sltu         ra, a7, t1
                  sh           gp, 1009(sp)
                  sb           a0, -612(sp)
                  sb           s2, 33(sp)
                  sra          s6, gp, t2
                  lbu          s9, 322(sp)
                  lbu          t2, 866(sp)
                  lh           t1, -529(sp)
                  xor          zero, s4, s11
                  sb           s8, 1199(sp)
                  sb           a5, 901(sp)
                  lbu          t0, -291(sp)
                  sll          s3, gp, ra
                  lui          s6, 201326
                  lbu          t6, 384(sp)
                  lb           ra, -396(sp)
                  addi         s5, t3, -1824
                  slt          tp, a3, ra
                  lh           t3, -303(sp)
                  xori         s5, t0, 1256
                  sh           zero, 1065(sp)
                  sub          t6, s10, t3
                  lbu          a5, 124(sp)
                  sltu         s8, s11, a6
                  sb           a4, 272(sp)
                  lb           a4, 326(sp)
                  lb           s0, 602(sp)
                  slti         s2, a4, 454
                  lbu          zero, 222(sp)
                  addi         s0, tp, -93
                  sra          s10, s6, s8
                  sltiu        s1, zero, 1730
                  lbu          s0, 671(sp)
                  lbu          s3, -700(sp)
                  add          a0, s3, t0
                  sb           t1, -287(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_0+1840 #start riscv_load_store_rand_instr_stream_6
                  lui          s8, 321527
                  lbu          s0, 2(a0)
                  or           s6, s9, ra
                  lw           s8, 4(a0)
                  lb           t4, 1(a0)
                  sltu         s0, s0, a4
                  sb           gp, 6(a0)
                  slli         s2, a2, 9
                  lb           s10, -9(a0)
                  add          s0, s7, t0
                  lh           a2, 2(a0)
                  nop
                  sra          gp, a3, a2
                  sw           s3, -12(a0)
                  lb           s8, -15(a0)
                  slti         gp, a0, 1576
                  sw           a6, -12(a0)
                  nop
                  srli         s9, gp, 1
                  or           tp, s4, gp
                  xori         t4, zero, 1498
                  sll          s8, t6, t6
                  lbu          s1, -15(a0)
                  sll          s10, a2, t4
                  lhu          s11, 14(a0)
                  lb           gp, 1(a0)
                  sh           t5, -6(a0)
                  lb           t3, 3(a0)
                  sltiu        s6, sp, -813
                  andi         t2, a1, -1282
                  sb           s7, 15(a0)
                  lbu          s11, -14(a0)
                  slt          tp, s10, ra
                  nop
                  lb           t3, 9(a0)
                  andi         t0, s4, -1822
                  srl          tp, s3, sp
                  ori          ra, a1, -269
                  lbu          s0, 9(a0)
                  srli         a6, s11, 3
                  ori          zero, s11, -1895
                  lbu          a1, 5(a0)
                  ori          a4, s7, 1763
                  lui          s11, 958909
                  sb           a0, -5(a0)
                  sra          s8, t5, tp
                  sll          t0, t3, s1
                  slti         t4, s1, 222
                  slt          gp, t1, t4
                  lh           sp, -2(a0) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1152 #start riscv_load_store_rand_instr_stream_2
                  andi         t4, a2, -529
                  sh           gp, -16(sp)
                  lhu          s5, 14(sp)
                  lh           a7, -8(sp)
                  sb           t6, 14(sp)
                  sw           s3, -4(sp)
                  sltu         a3, t4, a7
                  srli         s1, t5, 14
                  sub          a6, a3, zero
                  lw           t1, 8(sp)
                  sra          a1, a0, t3
                  sb           s0, -13(sp)
                  sb           sp, 5(sp)
                  slli         a5, sp, 31
                  addi         a0, s5, -1259
                  xori         a7, a4, -2035
                  srl          t2, s8, s1
                  lb           a7, -13(sp)
                  sll          s1, s5, s9
                  lh           t3, -2(sp)
                  lb           gp, 13(sp)
                  lw           s2, -4(sp)
                  lh           t6, -12(sp)
                  lb           s5, -11(sp)
                  srl          t2, s2, s11
                  sll          t3, gp, a3
                  srl          t6, t2, gp
                  slli         t2, sp, 18
                  slt          a3, zero, t1
                  sb           s2, -11(sp) #end riscv_load_store_rand_instr_stream_2
                  blt          s5, t5, 6f
                  bltu         a2, a1, 5f
                  ori          s10, s1, -1652
                  add          a2, s8, gp
                  slt          s11, t5, a4
5:                beq          a1, s8, 18f
6:                srai         a6, s2, 7
                  bltu         t0, s6, 8f
8:                srl          a2, a0, s8
                  sub          s11, a1, s5
                  andi         a6, sp, -1084
                  sltu         a2, a1, s3
                  sra          zero, t3, ra
                  slli         s2, s0, 26
                  and          s10, a3, s8
                  srl          t6, a0, gp
                  bltu         s6, gp, 23f
                  bgeu         s6, tp, 26f
18:               srai         s6, s5, 31
                  sra          a1, s9, t2
                  bgeu         t4, a7, 24f
                  blt          t3, a3, 36f
                  blt          a2, s6, 31f
23:               bltu         t5, s2, 31f
24:               slt          s3, zero, ra
                  xor          t3, a2, s8
26:               lui          s9, 976656
                  sltu         t4, a0, s10
                  srli         s3, ra, 1
                  ori          t6, sp, -1486
                  sltu         t0, s10, t1
31:               sltiu        s11, a4, 1394
                  slt          a4, t2, s6
                  bge          a5, a1, 40f
                  sra          a5, t2, s8
                  lui          gp, 807892
36:               sltu         ra, t2, s3
                  or           s9, s3, a7
                  slli         a6, a2, 17
                  xori         a2, t0, 1348
40:               bgeu         t1, s3, 53f
                  blt          t0, sp, 58f
                  bge          s6, t2, 45f
                  sll          s6, a6, a4
                  or           zero, gp, t6
45:               slli         s3, t0, 19
                  slti         s8, t0, -2030
                  sra          t0, a7, t5
                  xor          a2, s1, s2
                  nop
                  add          s0, s9, sp
                  add          s6, s1, s0
                  srli         s11, s4, 18
53:               bge          s10, s8, 68f
                  and          gp, s7, s9
                  slt          s10, t6, a3
                  nop
                  beq          sp, s10, 69f
58:               nop
                  nop
                  blt          tp, s1, 64f
                  srli         t1, s3, 0
                  slli         a2, s9, 22
                  or           t1, gp, s10
64:               addi         sp, a5, 310
                  slti         s8, s11, 1272
                  blt          a7, s11, 73f
                  andi         zero, t3, -721
68:               slli         t2, t0, 18
69:               slt          a3, t2, s4
                  beq          t3, t2, 74f
                  sra          a1, a7, ra
                  sra          s2, s3, sp
73:               bgeu         s5, s10, 80f
74:               lui          s10, 781933
                  nop
                  lui          s8, 1012938
                  andi         a5, t6, -1145
                  ori          a4, s1, 1235
                  nop
80:               bne          ra, t6, 100f
                  lui          a4, 954082
                  srai         a6, a2, 24
                  xori         s3, a0, 387
                  and          t3, t0, a1
                  sll          a0, t2, s2
                  ori          s1, t6, -1817
                  xori         a6, a2, -1921
                  srli         t2, s0, 1
                  bgeu         s4, a0, 103f
                  bgeu         s0, s6, 99f
                  bltu         t1, s1, 93f
                  sltu         ra, t6, s1
93:               bgeu         a2, a1, 113f
                  slti         t1, s6, -432
                  sll          t1, a6, t4
                  xor          a7, s9, t3
                  xori         a4, s1, 197
                  xori         t2, s5, 1400
99:               srai         gp, t4, 2
100:              bltu         s0, a0, 117f
                  bgeu         s5, s7, 120f
                  xori         s1, a3, -1976
103:              sltiu        a7, t6, 183
                  sub          t1, a5, t2
                  or           s2, t3, t6
                  beq          s5, tp, 119f
                  slti         a3, a0, -537
                  auipc        s1, 798479
                  sltiu        a1, gp, 1552
                  nop
                  sltiu        t6, s2, 1681
                  slti         t1, sp, 1499
113:              bne          s10, a6, 126f
                  and          s1, zero, a1
                  sltiu        a2, s9, 858
                  beq          t5, a7, 127f
117:              slli         gp, t5, 0
                  sltu         s1, tp, t6
119:              sll          tp, gp, sp
120:              xor          zero, s3, s7
                  sltu         gp, s10, a1
                  srl          a0, a0, a2
                  xor          a2, s9, s9
                  bgeu         ra, t0, 128f
                  sub          s5, s9, gp
126:              sltu         s11, a7, s8
127:              slli         ra, a5, 20
128:              addi         a2, a4, -1564
                  bge          a5, sp, 149f
                  srli         s9, a7, 20
                  beq          s5, tp, 132f
132:              sll          s1, t1, s1
                  sll          a1, s1, t5
                  lui          a5, 264118
                  sltu         t6, tp, a5
                  slt          t3, t2, t4
                  bgeu         a3, s0, 143f
                  slt          a6, s10, ra
                  xori         zero, s7, 1445
                  xori         s6, s11, -1253
                  bltu         s1, t1, 149f
                  sltiu        ra, sp, -97
143:              slli         a1, ra, 1
                  slti         sp, ra, 1078
                  bltu         gp, s1, 152f
                  sltu         s3, s7, s8
                  srli         s3, t2, 6
                  srl          t2, a1, t3
149:              bltu         ra, sp, 162f
                  beq          zero, gp, 165f
                  la           t1, region_1+34 #start riscv_load_store_rand_instr_stream_0
                  lb           s10, -15(t1)
                  srli         a0, s1, 15
                  sb           s1, 7(t1)
                  sb           s11, -9(t1)
                  sub          a0, s0, a3
                  srl          a1, sp, a0
                  auipc        s2, 164886
                  sltiu        s8, s1, -1436
                  lhu          a4, 10(t1)
                  sh           s3, 0(t1)
                  sltiu        s9, t3, -1426
                  lhu          ra, -6(t1)
                  xor          s8, a1, a0
                  slti         t4, t5, -1698
                  lh           a5, -16(t1)
                  sub          tp, s4, a6
                  slti         zero, s4, 557
                  lbu          t0, -3(t1)
                  addi         a1, a6, -1340
                  srl          s6, s2, s1
                  sh           a7, 6(t1)
                  sb           t2, -5(t1)
                  lb           s8, -7(t1) #end riscv_load_store_rand_instr_stream_0
                  sub          s1, t5, tp
152:              srli         t0, t2, 11
                  slt          a2, s8, ra
                  srli         a5, a1, 21
                  srli         a2, s9, 6
                  srli         s6, s1, 1
                  sll          a6, s4, s5
                  sll          sp, a4, t2
                  srli         s3, s11, 19
                  auipc        zero, 523178
                  andi         t4, s4, 848
162:              slt          zero, s5, ra
                  sub          t4, s2, t1
                  bgeu         zero, t3, 175f
165:              or           tp, a4, t1
                  slli         t6, a2, 22
                  andi         s8, s4, -1319
                  slt          tp, a7, s8
                  nop
                  lui          s0, 380700
                  beq          a3, s4, 180f
                  srli         a2, a3, 10
                  srl          t6, s10, s6
                  slti         t2, s0, 1429
175:              addi         t1, a5, 665
                  addi         s3, s5, -675
                  sltu         s9, s4, t6
                  beq          s9, t3, 187f
                  add          t6, a5, a7
180:              srli         a3, s11, 26
                  sltiu        s0, t2, 939
                  addi         zero, t5, -399
                  add          zero, s0, s4
                  bltu         s11, s4, 197f
                  sra          sp, t4, s0
                  slli         a5, t4, 19
187:              slt          s5, s0, t0
                  slt          t6, a0, t6
                  slt          ra, a0, zero
                  add          zero, t5, a6
                  sll          s5, s2, t2
                  nop
                  bltu         a5, tp, 210f
                  slt          t4, s7, s1
                  andi         gp, s2, 1396
                  bltu         sp, s0, 203f
197:              or           a4, s3, sp
                  bge          sp, s6, 211f
                  sltiu        a3, s6, -160
                  sltiu        s3, s3, -1769
                  sub          a7, a1, s7
                  srli         gp, s3, 8
203:              xor          tp, s3, s10
                  slt          a0, t6, ra
                  slt          tp, a2, a7
                  bne          s6, t1, 210f
                  slti         a2, a5, -1154
                  ori          s9, s1, -1095
                  srai         a0, s5, 5
210:              add          a7, s0, s3
211:              slti         s9, t2, 1184
                  and          s10, a1, t1
                  add          a1, a0, t5
                  addi         zero, a0, -776
                  and          t4, s3, zero
                  bne          gp, s8, 229f
                  sll          sp, t4, s11
                  nop
                  ori          sp, s2, 1346
                  xori         s2, t2, 285
                  sra          s6, a2, s9
                  xori         sp, s11, 1981
                  lui          t1, 698947
                  addi         a7, t6, 520
                  sltu         s2, a3, s9
                  bge          s6, a7, 245f
                  slt          t2, t5, t0
                  slti         s0, a6, -657
229:              and          t4, tp, s2
                  bge          a3, a7, 239f
                  blt          a2, a4, 238f
                  bne          ra, s3, 236f
                  slli         a2, gp, 20
                  or           t2, t2, s6
                  andi         sp, a6, 276
236:              add          t3, s9, t4
                  srai         ra, t4, 29
238:              sltiu        a5, t6, -501
239:              bltu         a5, sp, 253f
                  sltiu        s3, a7, 183
                  ori          t2, t1, -719
                  andi         ra, t5, -744
                  and          tp, a4, t2
                  sltu         zero, t2, s6
245:              auipc        a0, 602228
                  slti         s1, s0, 733
                  slti         gp, a5, -750
                  nop
                  xori         s1, a2, -801
                  xori         gp, gp, -1489
                  or           a4, a2, s9
                  srl          s1, s9, s10
253:              add          a0, s2, s6
                  nop
                  srl          s6, s3, s7
                  or           ra, a4, t6
                  srli         gp, tp, 28
                  sltu         a1, a7, s9
                  and          s6, s1, t0
                  nop
                  sra          a1, t5, s1
                  add          sp, tp, s6
                  blt          t0, t6, 265f
                  srl          gp, s1, t0
265:              add          s8, t0, s3
                  xor          a6, s8, a4
                  xori         s1, t6, -47
                  slt          a0, t5, s11
                  srai         tp, t2, 8
                  beq          s3, s8, 290f
                  srli         zero, t2, 30
                  blt          t4, a2, 276f
                  or           s6, s3, a3
                  andi         s0, s6, -1505
                  slli         s11, a3, 27
276:              beq          gp, s7, 291f
                  srli         gp, a6, 12
                  sub          a6, t2, s8
                  slti         t0, t1, -162
                  sltu         t0, t0, s6
                  srli         a0, t1, 28
                  andi         s5, t6, 360
                  bge          tp, a0, 295f
                  or           s11, a7, s3
                  slli         a2, t5, 3
                  addi         a0, s6, -446
                  sub          s5, a2, s8
                  bgeu         a3, s0, 291f
                  beq          s10, t4, 296f
290:              bge          s3, ra, 307f
291:              xori         t3, s9, 1008
                  bltu         s3, gp, 295f
                  addi         s3, a3, -1219
                  ori          zero, gp, -973
295:              bgeu         s1, a5, 308f
296:              bne          s7, s6, 313f
                  add          s9, s9, t6
                  addi         s5, a7, -1653
                  srli         gp, a6, 6
                  ori          s3, t5, 1320
                  sltiu        a1, zero, 524
                  sltu         a2, s3, sp
                  sltiu        s5, s0, 1743
                  sltu         t2, s6, s11
                  sra          t4, s7, s7
                  bltu         t4, s3, 313f
307:              add          gp, s8, s1
308:              bne          s9, a7, 320f
                  xor          s9, t5, sp
                  bne          s9, a7, 325f
                  add          s1, a0, s3
                  sll          t0, zero, s4
313:              beq          s7, s2, 317f
                  bgeu         t1, s3, 327f
                  srli         a2, t3, 29
                  xor          ra, tp, a6
317:              lui          t3, 814263
                  slti         tp, a4, -1184
                  beq          sp, a1, 334f
320:              lui          a3, 221636
                  ori          s8, s9, -761
                  nop
                  bge          zero, s6, 334f
                  la           sp, region_0+346 #start riscv_load_store_rand_instr_stream_4
                  xori         a0, t0, -36
                  lb           t0, -27(sp)
                  add          zero, t2, gp
                  xor          t3, t3, s2
                  lbu          gp, 24(sp)
                  sltu         t6, a1, zero
                  and          s2, s3, a1
                  xori         a5, s11, -1455
                  sltiu        s2, s1, -282
                  slli         t4, gp, 11
                  lhu          gp, -64(sp)
                  sltu         s9, s5, zero
                  sll          a4, a0, a3
                  sh           s3, 58(sp)
                  sub          a4, a7, a6
                  lui          t6, 21472
                  sw           tp, 22(sp)
                  lbu          s5, 31(sp)
                  lhu          s5, 0(sp)
                  sra          s9, s10, t0
                  sra          s0, s9, t4
                  sub          a2, s2, t5
                  xor          t1, s6, s3
                  lb           s9, 11(sp)
                  sb           s10, 15(sp)
                  auipc        ra, 286353
                  lb           s10, -23(sp)
                  sltu         s6, a6, sp
                  lw           gp, 46(sp)
                  add          t2, sp, t0
                  srli         s1, s10, 24
                  lb           s10, 0(sp)
                  or           a1, a5, s10
                  slli         a5, s11, 9
                  lbu          ra, 17(sp)
                  sltiu        t6, tp, 960
                  lb           s10, -21(sp)
                  lbu          s6, 59(sp) #end riscv_load_store_rand_instr_stream_4
                  srli         t1, t6, 10
325:              nop
                  slt          s10, s2, s0
327:              srl          a2, s11, gp
                  xori         a6, s4, 54
                  bge          s3, s3, 349f
                  beq          t3, t6, 334f
                  sra          t4, s4, s5
                  auipc        s5, 90921
                  sra          t0, s1, s11
334:              bne          a4, sp, 343f
                  slt          s10, ra, s3
                  slli         t4, s0, 5
                  xori         t6, a5, 1922
                  lui          s6, 148939
                  bltu         s11, t5, 353f
                  sra          a5, t4, ra
                  or           s1, s7, a6
                  blt          s11, t5, 349f
343:              sub          tp, t2, s10
                  bgeu         gp, s1, 361f
                  nop
                  and          s0, a6, t2
                  bne          sp, t6, 360f
                  nop
349:              beq          s2, sp, 350f
350:              sltiu        s3, t1, 16
                  nop
                  nop
353:              sra          t4, s6, s8
                  sll          t2, ra, s10
                  bgeu         s2, t3, 375f
                  sub          a6, gp, t1
                  srl          s0, a2, gp
                  ori          t2, s5, 439
                  srl          a4, s4, a5
360:              or           a4, s9, zero
361:              lui          a4, 700364
                  sltu         a1, s5, s0
                  xori         a2, a7, -102
                  slti         a7, a7, -1587
                  sub          s9, t2, zero
                  srli         a2, zero, 14
                  srli         a2, s10, 21
                  srai         sp, s3, 19
                  beq          s3, s4, 375f
                  and          ra, s7, s1
                  addi         a5, a4, 1622
                  ori          zero, a6, -886
                  and          t3, a0, t2
                  and          t4, s7, s6
375:              blt          gp, zero, 388f
                  bltu         s5, sp, 383f
                  sll          s3, a3, t0
                  sltu         t3, zero, a5
                  sub          t3, t0, s3
                  lui          ra, 1045032
                  sltu         s11, a5, t4
                  sll          t3, a3, t5
383:              bne          t4, t5, 387f
                  bltu         tp, s7, 393f
                  lui          gp, 687178
                  beq          t3, gp, 388f
387:              beq          s10, zero, 406f
388:              bge          t6, t3, 397f
                  xor          t0, t6, s11
                  srli         s11, a5, 18
                  auipc        a4, 850422
                  bne          t3, a1, 400f
393:              beq          t0, a1, 400f
                  sll          gp, s11, s7
                  sltiu        t1, a0, 1450
                  bne          a7, s3, 400f
397:              srl          s3, s9, s7
                  slli         a7, s4, 3
                  bne          a7, a7, 406f
400:              blt          s11, t2, 402f
                  or           t2, s2, s9
402:              sra          zero, s10, s2
                  lui          zero, 492705
                  sltiu        sp, t5, -15
                  bne          s4, t6, 414f
406:              slti         s5, a0, -1483
                  sltu         t0, sp, a6
                  srli         tp, a5, 6
                  sll          s8, s2, zero
                  sltu         t3, sp, sp
                  addi         s5, a5, 698
                  srli         s5, s10, 5
                  sltiu        a3, s4, -1550
414:              sll          tp, t5, a3
                  andi         a7, t5, -33
                  sll          tp, a7, zero
                  bgeu         t1, a2, 430f
                  bltu         t3, a6, 424f
                  or           s10, s11, a0
                  sltiu        a2, a3, 149
                  auipc        s8, 176130
                  slti         gp, t4, 1284
                  sltiu        a4, a4, 1531
424:              xor          a2, a2, ra
                  srli         a5, s7, 22
                  sll          a5, t6, t3
                  blt          a6, s8, 439f
                  sub          s6, t1, s9
                  blt          a7, t4, 442f
430:              addi         s1, t2, -1198
                  srl          a5, t3, gp
                  srli         t2, a5, 13
                  slti         a2, a5, -178
                  blt          s5, a1, 445f
                  bge          s7, t3, 448f
                  or           s2, t4, s4
                  bltu         s7, a2, 452f
                  slti         gp, s2, -215
439:              xor          s3, zero, s3
                  sub          t6, s0, s7
                  add          ra, s3, s9
442:              or           s9, t4, a1
                  xori         a4, zero, -1985
                  sltu         tp, s3, sp
445:              xori         a6, s4, -1805
                  bge          s9, s7, 466f
                  xori         s3, t4, -39
448:              sltiu        a1, t4, 1698
                  add          a1, s2, a3
                  xor          a5, t3, a3
                  sra          t1, s5, t0
452:              srl          s0, t6, s2
                  slli         t0, s6, 9
                  bgeu         t6, a7, 458f
                  bgeu         ra, t3, 462f
                  andi         s10, s4, -1499
                  blt          gp, s2, 458f
458:              xori         s11, gp, 1286
                  slli         t1, s11, 27
                  bltu         s1, a1, 464f
                  srl          s8, sp, a2
462:              ori          s11, zero, -833
                  beq          t2, gp, 472f
464:              xor          gp, s0, t0
                  slt          t2, gp, t2
466:              or           s2, a6, a4
                  add          a6, a0, t5
                  and          s1, s4, ra
                  beq          s11, a2, 489f
                  add          gp, gp, a1
                  and          a1, t6, s0
472:              blt          a1, t1, 476f
                  sltiu        a3, t5, 1333
                  slli         s8, t1, 13
                  sltiu        s11, t6, -1749
476:              bgeu         s10, a6, 495f
                  slti         ra, a1, 1783
                  beq          s3, s9, 487f
                  ori          t2, t1, -1828
                  ori          zero, s2, -1354
                  beq          sp, sp, 494f
                  nop
                  sltu         a3, t4, s2
                  slti         t1, t5, 1060
                  and          s0, t6, ra
                  slt          t3, s10, t5
487:              srli         t3, s4, 6
                  add          s1, t4, gp
489:              addi         s0, a4, 1285
                  sltiu        t3, tp, 1373
                  xori         sp, t2, -1059
                  sra          s11, s3, s8
                  sub          a1, t4, t3
494:              bgeu         s5, t0, 511f
495:              beq          s5, s6, 498f
                  sltu         a2, s5, sp
                  bgeu         t4, sp, 505f
498:              sll          a5, gp, t3
                  ori          s10, s5, 1824
                  sll          t1, a5, s8
                  sra          zero, s11, s3
                  bne          s0, a2, 517f
                  bne          t4, t3, 510f
                  la           tp, region_0+1973 #start riscv_load_store_rand_instr_stream_5
                  and          a5, t1, t1
                  auipc        sp, 331688
                  andi         t6, s7, 761
                  addi         ra, a6, -1680
                  lbu          a2, -117(tp)
                  sb           t4, -108(tp)
                  sltu         s10, t5, a2
                  xori         a1, s5, -2005
                  srl          s11, s0, a0
                  lbu          s0, -236(tp)
                  srli         t2, s11, 14
                  lb           t3, -214(tp)
                  sb           s10, -166(tp)
                  ori          s8, t0, -2016
                  slli         s5, a4, 16
                  lw           t3, -101(tp)
                  lb           s1, 19(tp)
                  lbu          a4, -143(tp)
                  lhu          a3, -151(tp)
                  sub          t6, t4, s5
                  sb           s8, -58(tp)
                  lbu          t1, 18(tp)
                  lhu          s0, -69(tp)
                  sra          t4, s4, t5
                  addi         a0, s5, 1977
                  sb           a6, -245(tp)
                  sh           a2, -247(tp)
                  lb           t6, -183(tp)
                  xor          s8, s7, a6
                  lh           a0, -3(tp)
                  lh           s9, -199(tp)
                  slt          t1, s1, sp
                  lbu          s6, -190(tp)
                  lhu          s3, -87(tp) #end riscv_load_store_rand_instr_stream_5
                  addi         s8, ra, -703
505:              srl          t1, gp, a1
                  lui          s11, 734365
                  sltu         tp, s8, t4
                  and          gp, ra, gp
                  nop
510:              and          a1, tp, s10
511:              nop
                  slti         a3, gp, 127
                  nop
                  sub          s5, ra, a7
                  andi         s6, s8, -586
                  andi         a3, s8, 1619
517:              xor          s11, a5, zero
                  blt          zero, a4, 532f
                  andi         a0, sp, -1217
                  xor          zero, a3, a0
                  or           gp, t6, ra
                  srl          s8, ra, s0
                  andi         s2, s1, -916
                  sll          s2, t0, s5
                  srl          s9, s3, ra
                  bgeu         a3, s0, 543f
                  slli         gp, t5, 8
                  lui          a3, 603835
                  bge          s8, t6, 536f
                  srl          t0, t5, s5
                  sltiu        s3, gp, 1452
532:              srai         ra, a3, 22
                  auipc        a5, 634582
                  bge          a2, t4, 538f
                  and          a1, gp, s4
536:              bgeu         sp, a7, 545f
                  srai         zero, zero, 10
538:              slli         a5, t4, 4
                  beq          s7, s11, 543f
                  bltu         s8, ra, 553f
                  sltu         s8, a2, s7
                  slt          a5, s0, a2
543:              lui          a3, 3376
                  bltu         s8, a3, 548f
545:              srl          s1, a4, s2
                  bltu         t5, s7, 563f
                  sra          t6, t4, s10
548:              or           t6, t2, s3
                  sltu         t0, ra, s4
                  bltu         t0, s11, 557f
                  xori         tp, zero, -1704
                  auipc        s1, 304491
553:              blt          a5, a4, 562f
                  add          s2, t1, s11
                  ori          s5, t4, 914
                  ori          t3, s5, -1862
557:              bge          s10, s10, 570f
                  bge          s3, s5, 567f
                  and          gp, s7, s7
                  auipc        a2, 53580
                  addi         s3, t1, 1202
562:              sltu         s5, s7, s11
563:              bne          a1, t6, 583f
                  auipc        sp, 132728
                  ori          t4, a0, -176
                  slli         s2, a5, 25
567:              sltiu        a0, t5, -681
                  nop
                  blt          t4, t2, 588f
570:              srai         a0, a0, 18
                  srli         gp, a2, 13
                  xori         a6, gp, 526
                  sra          zero, s9, s6
                  or           a4, t6, s4
                  nop
                  nop
                  beq          s10, a2, 584f
                  sll          s0, s10, t1
                  xori         sp, a0, -225
                  addi         s6, s6, -2028
                  slti         a0, a6, -1518
                  srli         s8, s10, 9
583:              or           s8, s5, t1
584:              lui          t1, 589082
                  bge          s6, sp, 591f
                  bne          gp, s8, 606f
                  xori         a5, t2, -569
588:              sra          a6, t4, s10
                  bltu         t6, t0, 606f
                  beq          s3, s1, 592f
591:              srai         t1, t0, 15
592:              srl          t1, a4, s4
                  sltu         a5, t6, zero
                  ori          ra, sp, -518
                  and          s8, s11, s8
                  sub          a4, sp, a2
                  xori         s11, sp, 1022
                  auipc        tp, 203109
                  addi         zero, s5, -1608
                  add          a3, a3, ra
                  slti         t2, t6, -924
                  sll          s3, s7, ra
                  andi         s11, tp, -334
                  blt          a7, t6, 617f
                  bgeu         s9, s3, 606f
606:              slt          tp, a4, s7
                  sltiu        s9, t2, -1859
                  sltu         a5, a1, s5
                  srl          t4, t0, s10
                  or           s9, t5, a3
                  xor          t3, s0, sp
                  and          t4, s11, s1
                  bgeu         a4, s3, 616f
                  addi         s9, s8, 765
                  blt          s11, s5, sub_7_j11 #branch to jump instr
                  addi         s9, a6, 1587
                  sltu         s8, t4, a6
                  lui          t3, 598165
                  and          a5, a3, a0
                  add          a4, s11, sp
                  srai         a1, a7, 6
                  or           s6, t5, t3
                  auipc        a3, 434409
                  sltiu        zero, s7, 1003
sub_7_j11:        jal          s2, sub_8 #jump sub_7 -> sub_8
                  andi         t3, gp, -1433
                  sra          s11, s9, sp
616:              sub          t1, tp, sp
617:              blt          a6, s11, 624f
                  lui          s11, 260933
                  lui          gp, 384334
                  sltiu        s11, sp, -1308
                  slt          t1, s4, zero
                  srl          s9, s11, a4
                  sll          t6, s3, s5
624:              sltu         a6, s7, t2
                  sll          t3, s7, t2
                  sll          gp, t6, zero
                  bne          s5, s10, 631f
                  srl          gp, s1, a1
                  slt          zero, s3, a6
                  bgeu         a0, s4, 643f
631:              or           a7, t4, s8
                  ori          a2, t3, -1094
                  srl          t6, s2, tp
                  srli         s8, s10, 0
                  slli         tp, zero, 29
                  sll          s6, s10, a0
                  blt          a7, gp, 649f
                  slti         s3, tp, 497
                  sub          s0, tp, t2
                  slli         s9, t4, 8
                  lui          s1, 620476
                  addi         s2, t3, -512
643:              bge          ra, t4, 650f
                  add          gp, gp, s9
                  andi         t4, s7, -1020
                  srli         sp, t1, 17
                  bge          tp, s6, 655f
                  ori          a2, sp, -499
649:              beq          s5, zero, 664f
650:              add          sp, a4, ra
                  srl          a3, a1, s0
                  bne          t3, s3, 666f
                  sll          s11, s5, s8
                  srl          a1, s6, t1
655:              xor          t2, a1, a5
                  andi         t4, s6, 278
                  xori         a6, a1, 1413
                  bne          t6, tp, 662f
                  and          tp, ra, t4
                  auipc        a3, 1028526
                  ori          a6, s4, 704
662:              ori          s1, t1, 620
                  beq          a4, s0, 678f
664:              ori          s2, a0, 47
                  blt          a5, t4, 676f
666:              lui          s10, 582614
                  bne          ra, t0, 668f
668:              bge          s9, ra, 671f
                  andi         s3, s9, -1216
                  ori          tp, s6, 323
671:              ori          t6, s11, -1576
                  bge          s9, s1, 692f
                  addi         tp, s10, 1031
                  ori          s1, a1, -94
                  sltiu        a3, s3, 637
676:              bgeu         s6, a4, 683f
                  slli         s6, s7, 14
678:              nop
                  xori         a3, sp, 359
                  blt          t1, a3, 693f
                  sltiu        a7, gp, -499
                  sltu         s8, s0, gp
683:              sltu         s0, t6, s10
                  sra          s9, t1, s3
                  beq          s1, t3, 689f
                  slli         zero, a6, 23
                  sra          s5, a3, s10
                  srai         a6, s3, 19
689:              andi         zero, t0, 1229
                  add          s10, t5, s4
                  bge          s6, s1, 705f
692:              or           a3, s6, t0
693:              bne          t1, t0, 702f
                  bltu         a2, a2, 711f
                  slli         sp, sp, 25
                  srai         t4, a0, 8
                  beq          s2, s0, 704f
                  nop
                  bltu         s11, t0, 714f
                  or           tp, s3, s10
                  ori          gp, gp, 1194
702:              and          s11, s5, s6
                  sltu         zero, a5, tp
704:              or           t1, s0, s5
705:              nop
                  blt          s10, ra, 721f
                  addi         s8, ra, -106
                  srai         s8, a4, 1
                  sll          a0, gp, s11
                  or           zero, gp, t5
711:              slli         s9, tp, 12
                  add          zero, a3, s8
                  xori         a2, s0, -1968
714:              sll          t1, s6, t2
                  sltiu        t6, s10, -561
                  and          s5, sp, t4
                  bgeu         a1, a1, 725f
                  auipc        a2, 865167
                  add          s3, zero, s4
                  and          s11, t4, a1
721:              xor          s10, t0, a1
                  bne          s8, s5, 726f
                  sub          t6, t0, s8
                  nop
725:              srai         sp, a5, 18
726:              sra          t4, s7, t1
                  srai         t4, a0, 10
                  and          s8, s6, a4
                  srl          s0, s3, a2
                  srl          s9, a7, a5
                  slti         a6, gp, -554
                  andi         zero, zero, -437
                  sltu         t3, s0, a2
                  sub          t4, a6, a6
                  sra          a4, t0, a6
                  lui          a3, 239353
                  bne          s5, t3, 750f
                  sltiu        s9, s7, 1153
                  sltiu        a4, s0, 1963
                  bgeu         t5, zero, 746f
                  and          sp, s8, ra
                  bltu         ra, t0, 753f
                  blt          s10, sp, 756f
                  srl          a7, a3, s0
                  slt          t0, s10, a5
746:              bge          a5, s1, 763f
                  bltu         zero, a0, 749f
                  beq          s7, t5, 752f
749:              sra          t2, s2, t3
750:              sltu         a2, a1, a4
                  bltu         s7, s3, 755f
752:              slti         a5, s8, 1595
753:              bltu         t2, a2, 760f
                  sltu         t0, t5, s5
755:              sll          s0, ra, zero
756:              sra          t2, s7, sp
                  and          a3, s6, s10
                  xori         sp, t0, -804
                  srli         a3, s4, 2
760:              slt          s11, t2, a0
                  add          s10, a7, a6
                  srli         zero, t3, 24
763:              bgeu         a0, s4, 772f
                  sra          sp, zero, t6
                  and          s2, s2, s1
                  bltu         s7, s6, 773f
                  sltiu        sp, s7, -1068
                  bltu         tp, gp, 777f
                  or           t2, s4, t6
                  and          s10, s5, a7
                  srl          a6, s5, s8
772:              bgeu         s7, s2, 785f
773:              srai         a1, s7, 3
                  bne          s0, a4, 786f
                  ori          s11, s2, -461
                  addi         a6, zero, 1825
777:              add          sp, sp, a5
                  blt          sp, s9, 798f
                  xori         sp, ra, 826
                  srli         a5, s11, 25
                  slti         s6, a4, -1984
                  ori          a1, s5, 1104
                  sll          s11, s10, a6
                  xori         a3, a2, -1209
785:              ori          t6, t1, 1541
786:              srai         a3, a1, 24
                  sltiu        s3, ra, -2025
                  bgeu         t3, a3, 807f
                  xor          tp, s3, tp
                  ori          a3, s0, 1415
                  sll          a4, a4, ra
                  beq          a2, t1, 809f
                  bltu         s8, s0, 800f
                  bgeu         t6, s0, 796f
                  slti         s3, s7, -1663
796:              or           gp, s2, a2
                  slli         a6, s3, 1
798:              sltiu        a2, s2, 1962
                  sltiu        a4, a7, -409
800:              sub          zero, gp, a6
                  srai         t0, s2, 24
                  nop
                  sltu         a2, t2, a6
                  or           tp, t0, tp
                  and          sp, t1, t5
                  srl          s2, gp, tp
807:              slli         t4, a3, 13
                  xor          s9, a6, s2
809:              sub          sp, t6, s6
                  slt          s10, a4, t1
                  slli         sp, s7, 26
                  andi         s10, s0, -1494
                  addi         s2, s4, -1377
                  slt          tp, t2, a3
                  srli         s8, a2, 25
                  auipc        s11, 562143
                  add          a2, a5, a5
                  and          t0, a6, t3
                  blt          t4, a2, 826f
                  beq          zero, s9, 840f
                  ori          a3, t5, -1123
                  bne          s11, s8, 841f
                  and          s3, t6, s9
                  and          a3, s5, t5
                  blt          t6, a2, 828f
826:              bgeu         s6, s7, 835f
                  andi         t6, s9, -1584
828:              sltu         s10, a5, t0
                  srli         t1, gp, 17
                  bge          gp, a7, 834f
                  sra          a6, t6, s7
                  ori          s6, a5, 1510
                  and          gp, s11, a6
834:              andi         s9, t0, -33
                  la           t6, region_1+1712 #start riscv_load_store_rand_instr_stream_1
                  sb           gp, -11(t6)
                  add          t0, a5, t3
                  sh           a0, -12(t6)
                  sltu         s6, s5, tp
                  lbu          gp, -1(t6)
                  lb           sp, -3(t6)
                  sb           a2, 7(t6)
                  lhu          a1, 14(t6)
                  xori         ra, ra, -277
                  sh           s1, -16(t6)
                  lbu          ra, -9(t6)
                  or           a1, a0, a3
                  nop
                  slli         t2, a1, 16
                  xor          a6, t6, a0
                  or           t2, s11, a2
                  sb           s3, -13(t6)
                  lb           a6, 3(t6)
                  slt          s10, s10, t0
                  sb           a0, -11(t6)
                  lh           t3, 0(t6)
                  auipc        a7, 907026
                  lui          s0, 823288
                  sb           t4, -7(t6)
                  or           s8, zero, sp
                  sb           gp, 6(t6)
                  and          s10, ra, s6
                  slt          a6, s6, a6
                  xori         s10, s10, -1449
                  sltu         s1, t0, s5
                  slti         t2, s6, 991
                  sltiu        s11, s2, 1591
                  and          a4, t3, t5
                  lh           s11, -2(t6)
                  sb           sp, -14(t6)
                  sb           t2, -2(t6)
                  nop
                  slli         t4, tp, 22
                  lbu          gp, -1(t6)
                  lbu          a5, -13(t6)
                  sh           t6, 10(t6)
                  lb           s8, 12(t6)
                  lh           a4, -10(t6)
                  sb           a6, 14(t6)
                  srl          a6, t0, a5
                  xori         s2, t3, -1019
                  lw           s0, 16(t6)
                  nop
                  sltu         ra, a2, a0
                  sll          gp, a0, s7
                  lbu          a6, -11(t6)
                  lb           zero, 3(t6)
                  lbu          s9, 0(t6)
                  lbu          a0, -13(t6) #end riscv_load_store_rand_instr_stream_1
835:              srli         zero, s8, 2
                  sltu         t3, t5, a7
                  sra          a3, a4, t5
                  bltu         t4, a5, 851f
                  srai         a6, a4, 31
840:              sra          s6, t0, s4
841:              sltu         t0, s5, s1
                  add          gp, a0, s2
                  sra          t2, ra, s5
                  sra          ra, a5, t5
                  bgeu         t0, tp, 851f
                  sltu         a3, a4, t2
                  addi         s3, t5, 866
                  slli         gp, a7, 7
                  lui          a0, 519454
                  ori          a1, a2, 977
851:              lui          t3, 449903
                  bge          s2, gp, 856f
                  slt          tp, s5, a7
                  bne          s5, sp, 869f
                  bltu         t2, a5, 859f
856:              blt          a5, a4, 857f
857:              sltiu        a4, zero, -415
                  beq          s7, a6, 866f
859:              sra          tp, a0, a2
                  sub          gp, zero, t0
                  lui          ra, 476443
                  slti         s3, gp, 281
                  bne          s5, s8, 870f
                  xori         s3, t4, 1625
                  lui          s9, 171098
866:              srli         a3, a4, 14
                  slli         a1, t0, 12
                  and          gp, a5, s11
869:              andi         s3, t0, 943
870:              slli         s0, s4, 20
                  sll          s1, s8, a5
                  xori         ra, s0, -1369
                  slt          a2, t3, t3
                  andi         a4, a4, 1392
                  sltu         s3, t4, s5
                  ori          tp, t1, -612
                  add          a5, t6, a6
                  bge          s5, s5, 879f
879:              slti         a3, ra, 1482
                  andi         s8, a6, -2022
                  srl          sp, gp, a1
                  addi         a1, a3, -1102
                  lw           s2, 4(t5)
                  slti         t0, a3, -1538
                  and          a4, a7, t0
                  add          t0, s0, s2
                  addi         t5, t5, 64
                  nop
1194:             addi x25, x18, 0
1194:             jalr x25, x25, 0
sub_2:            beq          s3, a4, sub_2_stack_p
                  sub          zero, t5, t3
                  srl          s8, s3, sp
                  xor          zero, a2, gp
                  auipc        s1, 548728
sub_2_stack_p:    addi         t5, t5, -52
                  add          gp, t1, s4
                  sw           s2, 4(t5)
                  slt          t2, s0, a5
                  la           sp, region_0+1432 #start riscv_load_store_rand_instr_stream_0
                  srli         t0, a1, 16
                  sb           t6, 0(sp)
                  lbu          a0, 6(sp)
                  xori         t2, a2, 943
                  slt          tp, s5, s11
                  srai         a4, a5, 9
                  sh           s1, 12(sp)
                  lh           a5, 4(sp)
                  sra          s0, s5, s3
                  nop
                  xori         a3, s8, 1809
                  lb           zero, -8(sp)
                  lh           t1, 12(sp)
                  srai         a0, sp, 25
                  lh           t1, 16(sp)
                  and          a3, s0, zero
                  sb           t3, 11(sp)
                  sub          a0, a3, s2
                  lb           a6, 4(sp)
                  sb           a6, -6(sp)
                  sltiu        gp, s10, 394
                  lhu          s6, 14(sp)
                  lbu          gp, 14(sp)
                  sltu         a0, t4, t0
                  lhu          t3, 12(sp)
                  sh           s10, 12(sp)
                  sh           s8, 8(sp)
                  sb           t4, 15(sp)
                  lb           s2, -15(sp)
                  add          a3, s1, s4
                  lb           t4, 3(sp)
                  lbu          t2, -13(sp) #end riscv_load_store_rand_instr_stream_0
                  sra          a1, gp, s7
                  bltu         a3, t5, 19f
                  blt          s4, t6, 5f
                  beq          a2, t6, 12f
                  bne          s1, a6, 24f
5:                bltu         s4, s9, 25f
                  xor          t0, a7, s6
                  sltiu        s0, a6, -1653
                  beq          gp, a0, 15f
                  sltu         s8, a1, s3
                  andi         a0, s4, -1663
                  or           t0, s11, t2
12:               xori         t1, s0, -1366
                  xor          a7, s9, gp
                  andi         s11, zero, -99
15:               andi         a6, t1, -673
                  bgeu         a3, zero, 30f
                  andi         a4, t5, 752
                  bne          s6, tp, 22f
19:               sltu         ra, t5, s3
                  xor          t1, s4, t2
                  or           s11, t1, s9
22:               slli         a0, s2, 17
                  bltu         t3, t3, 32f
24:               bgeu         s1, s3, 30f
25:               sltiu        s5, s3, 170
                  bne          a3, s2, 43f
                  addi         s3, a6, 847
                  bge          t3, s0, 46f
                  sub          tp, t3, t3
30:               srai         s11, s4, 24
                  lui          s6, 974241
32:               srl          s6, t0, gp
                  sll          s2, t1, ra
                  or           a4, a6, s9
                  sltu         zero, ra, s5
                  xori         s1, t4, 655
                  bne          t3, t4, 57f
                  bge          a3, t3, 48f
                  bge          t0, ra, 57f
                  xor          t4, s8, a0
                  nop
                  sll          t3, ra, t6
43:               xor          t3, s9, a7
                  srl          s6, tp, s1
                  ori          ra, a6, 1891
46:               sub          s6, s3, a2
                  ori          a3, a5, -1676
48:               sltiu        s9, s0, 250
                  slti         zero, ra, -1729
                  nop
                  beq          a2, s8, 66f
                  sll          a6, a5, s6
                  nop
                  slli         s9, s1, 12
                  nop
                  srai         ra, s0, 5
57:               or           a5, s11, s9
                  xor          t0, t5, a5
                  bne          t5, s7, 63f
                  sra          a0, s1, a7
                  and          a1, t3, a6
                  srli         sp, s5, 1
63:               sltiu        s10, s5, -1674
                  add          tp, a2, s7
                  and          gp, s2, s11
66:               slli         a0, s4, 31
                  or           t2, t4, s8
                  srai         a3, t2, 17
                  auipc        s8, 700874
                  or           a7, s6, s7
                  addi         s2, t4, 336
                  ori          s8, a1, -1706
                  srli         t2, s1, 14
                  srli         s9, zero, 22
                  srai         s0, t6, 13
                  and          a2, s10, s1
                  xori         tp, a0, 1272
                  sub          s8, ra, a4
                  sra          a4, s3, a3
                  sra          t3, a6, s5
                  beq          a6, t2, 97f
                  ori          zero, sp, 486
                  auipc        a4, 202070
                  bne          a7, a0, 92f
                  sll          s3, t6, gp
                  beq          a5, a2, 103f
                  slt          t6, a1, s3
                  auipc        sp, 143580
                  bltu         a4, zero, 108f
                  lui          s0, 140811
                  xori         s5, s7, -1233
92:               or           s1, s3, s6
                  bne          s7, tp, 103f
                  srai         s1, a5, 14
                  slli         s1, t6, 10
                  or           t2, s6, s10
97:               addi         s8, t0, -48
                  slti         a4, s6, 515
                  lui          a3, 135323
                  and          gp, zero, a7
                  addi         s6, t6, 2011
                  beq          a4, s3, 114f
103:              and          a2, zero, a5
                  andi         s0, s7, 968
                  sltu         a2, tp, s9
                  bgeu         s1, a5, 109f
                  bge          a6, a4, 126f
108:              bge          t6, s11, 125f
109:              srl          s3, tp, s8
                  add          ra, s5, t6
                  beq          s10, zero, 114f
                  sltu         a4, s3, a1
                  add          s10, a0, s8
114:              addi         a7, s4, 150
                  bne          s11, s9, 117f
                  slt          s1, s10, a3
117:              nop
                  srli         tp, s7, 15
                  ori          t3, s9, -356
                  and          a1, a0, s5
                  srl          a5, s7, s6
                  bgeu         s5, s3, 127f
                  add          a6, s7, s2
                  blt          s7, s1, 131f
125:              sra          s6, a6, s10
126:              sra          ra, t1, ra
127:              beq          t5, tp, 146f
                  nop
                  bge          s11, sp, 133f
                  srai         t0, s9, 7
131:              sra          a4, a0, a2
                  addi         s10, s1, 1537
133:              bgeu         t6, t2, 140f
                  sltu         s9, t6, t2
                  nop
                  xori         a4, tp, 542
                  or           s3, a7, t0
                  bne          s7, t6, 158f
                  add          s11, a7, ra
140:              xori         a3, t4, -150
                  blt          a4, s11, 157f
                  sub          zero, s5, tp
                  bge          s3, s4, 160f
                  slt          gp, s6, a1
                  bne          s10, t5, 163f
146:              xori         t1, s4, -1980
                  la           sp, region_0+1569 #start riscv_load_store_rand_instr_stream_1
                  sw           gp, -249(sp)
                  or           a4, t3, a5
                  sb           a1, -94(sp)
                  lbu          a5, 96(sp)
                  lbu          t3, -81(sp)
                  lh           a2, -51(sp)
                  srli         t3, s7, 28
                  sb           s8, 87(sp)
                  slt          a0, a3, s6
                  lbu          s11, 170(sp)
                  lbu          a6, -64(sp)
                  srl          a0, t2, sp
                  slt          s9, t5, ra
                  addi         s1, a4, -1629
                  add          s1, t0, t5
                  lb           s11, 94(sp)
                  addi         s1, a7, -419
                  lb           a4, 105(sp)
                  lb           a6, 198(sp)
                  srl          s5, t6, s1
                  xori         tp, s11, -954
                  addi         t2, s9, 1082
                  sh           t2, -143(sp)
                  lb           s11, 147(sp)
                  lbu          s2, 118(sp)
                  lb           t3, 76(sp)
                  srli         ra, t6, 13
                  or           t0, s0, s0
                  sb           a2, -143(sp)
                  slti         t4, s7, 1678
                  sltiu        s2, a2, 1844
                  lb           a7, -214(sp)
                  lb           tp, 241(sp)
                  lbu          t6, -114(sp)
                  auipc        s5, 584822
                  sw           a7, -73(sp)
                  srli         a6, a6, 17
                  slti         ra, t2, 1292
                  addi         s5, a0, 1759
                  and          s8, s3, s7
                  lui          t2, 115809
                  slt          a4, a2, t0
                  lb           a5, -235(sp)
                  sb           s6, -220(sp) #end riscv_load_store_rand_instr_stream_1
                  sub          s0, t5, s11
                  sra          a0, sp, t1
                  beq          s0, a0, 151f
                  add          s1, t0, a7
151:              bge          s7, t6, 168f
                  srl          t3, a5, zero
                  sra          t0, t1, s7
                  sltu         s11, s6, t6
                  auipc        s3, 801090
                  sra          a2, t5, a6
157:              bgeu         s7, t0, 171f
158:              blt          a0, a5, 165f
                  nop
160:              add          a4, t1, t5
                  and          sp, s0, t6
                  and          s8, s9, s3
163:              slti         a1, s10, 863
                  beq          a0, a7, 167f
165:              srli         s3, sp, 5
                  and          t6, t1, s1
167:              beq          s11, a5, 185f
168:              sll          t6, t3, a2
                  sltu         a0, s2, t5
                  or           s11, t1, a5
171:              or           a0, sp, t4
                  slti         s5, t2, -313
                  blt          s1, zero, 179f
                  add          a3, t3, t1
                  sra          a3, s4, s6
                  sra          s10, t1, s8
                  blt          t5, tp, 197f
                  nop
179:              addi         tp, s0, -1339
                  sltu         tp, s2, a5
                  sltu         tp, a5, t2
                  blt          s0, t3, 191f
                  sub          t0, t3, a3
                  srli         zero, t2, 0
185:              blt          a4, s0, 205f
                  nop
                  bge          s10, t4, 202f
                  lui          s8, 383034
                  srl          s6, a3, s11
                  beq          s4, t3, 198f
191:              srai         t0, s4, 7
                  beq          t6, a3, 204f
                  or           s11, s9, s3
                  ori          s3, s9, -1526
                  lui          a4, 614157
                  bltu         t3, t4, 215f
197:              sltiu        s6, t4, 1018
198:              bge          ra, s4, 208f
                  lui          a5, 775894
                  srai         tp, gp, 14
                  srli         a2, t0, 25
202:              srli         a5, s3, 4
                  sltiu        s1, s3, -732
204:              andi         s1, s8, -1263
205:              ori          a0, t6, 903
                  slti         a5, ra, 1006
                  blt          a3, a6, 216f
208:              auipc        s1, 480012
                  sltiu        tp, t1, -967
                  and          sp, a3, a2
                  bltu         tp, t5, 214f
                  srli         a2, t0, 17
                  srl          s2, t4, s0
214:              auipc        s10, 562105
215:              beq          t0, t2, 233f
216:              srl          tp, s1, t6
                  sra          t1, s8, a0
                  andi         s11, a5, -889
                  and          t4, a4, zero
                  srai         ra, tp, 30
                  andi         tp, a6, 1705
                  srli         s10, a2, 17
                  sltu         s1, s10, a5
                  bne          a6, s11, 234f
                  srl          a0, t1, s7
                  bge          s4, a7, 229f
                  srl          t0, s5, s11
                  sltiu        zero, s8, -1089
229:              sra          t1, a7, s10
                  add          s10, sp, s1
                  add          t1, s9, a3
                  sra          a2, s6, s10
233:              sltu         t1, a5, a5
234:              blt          t3, s5, 239f
                  xor          a1, t1, a7
                  slli         t0, s6, 25
                  auipc        a7, 665184
                  sltu         t2, a0, s8
239:              beq          a7, t6, 243f
                  bltu         s1, s1, 257f
                  addi         a5, ra, 577
                  sra          a6, s0, a2
243:              add          s0, t6, s8
                  ori          t2, s0, 1619
                  sll          tp, s10, t0
                  slli         a6, s1, 26
                  andi         a7, gp, 1045
                  bgeu         s1, s10, 251f
                  srl          t1, tp, a7
                  addi         tp, t2, -1776
251:              auipc        t4, 799123
                  srli         tp, s2, 31
                  addi         a4, s8, -37
                  slti         a7, s3, 1401
                  bltu         gp, ra, 261f
                  nop
257:              ori          tp, s6, -1677
                  xor          a3, a0, gp
                  srl          a3, a2, t0
                  sltiu        t3, s5, -175
261:              add          t1, s7, gp
                  blt          a4, a1, 281f
                  addi         tp, a1, -1738
                  xor          a7, s3, sp
                  or           s8, a0, sp
                  slli         s9, t3, 14
                  bge          s11, t6, 276f
                  auipc        s5, 586373
                  bgeu         t3, a5, 277f
                  slti         a5, a1, -1613
                  ori          s6, s8, -494
                  bne          s3, t3, 286f
                  nop
                  lui          t4, 436653
                  xori         s1, gp, -1056
276:              slt          s3, t0, s1
277:              srai         t3, s7, 5
                  andi         s5, a1, 1568
                  lui          t4, 545740
                  sltiu        s6, t2, -62
281:              bge          s6, t5, 286f
                  srai         gp, s4, 14
                  auipc        tp, 560055
                  blt          a2, s4, 286f
                  bgeu         a3, a7, 286f
286:              xor          t2, sp, sp
                  lw           s2, 4(t5)
                  lui          a3, 286413
                  slti         s0, tp, 12
                  slt          s10, t1, a4
                  addi         t5, t5, 52
                  add          sp, t1, s11
                  ori          a5, s11, -1117
                  sra          s10, s2, s4
                  ori          ra, s9, 1572
383:              addi x24, x18, 1
383:              jalr x24, x24, 0
sub_3:            sltiu        a0, t0, 1737
                  addi         t5, t5, -8
                  srl          gp, gp, s8
                  sub          a7, t4, t0
                  sw           s2, 4(t5)
                  srai         t1, s8, 5
                  sll          s9, s9, s2
                  sll          t4, gp, gp
                  auipc        a7, 788382
                  xori         tp, sp, -1961
                  addi         s6, a6, -655
                  la           s1, sub_6
                  addi         s1, s1, -798
                  sub          s0, s11, s7
                  or           ra, s11, s2
                  auipc        t1, 637586
                  add          a0, s2, gp
sub_3_j7:         jalr         s2, s1, 799 #jump sub_3 -> sub_6
                  la           gp, region_0+621 #start riscv_load_store_rand_instr_stream_0
                  slti         s1, a1, -910
                  sb           a4, -281(gp)
                  nop
                  lb           s9, 128(gp)
                  sb           t0, 960(gp)
                  lbu          a6, -283(gp)
                  sb           s0, 34(gp)
                  add          s8, s8, t0
                  add          t0, t3, s0
                  srai         t3, a2, 12
                  lbu          s11, 1098(gp)
                  sb           t6, -288(gp)
                  lh           a5, -567(gp)
                  sub          zero, s11, s2
                  sra          a6, s11, a2
                  sb           sp, -254(gp)
                  srl          t4, tp, a6
                  srli         t2, sp, 24
                  andi         s10, s6, -935
                  or           a4, ra, s3
                  sub          a3, t6, t3
                  lhu          s8, -203(gp)
                  lh           t2, 131(gp)
                  sub          tp, s4, sp
                  sb           a3, 696(gp)
                  sb           gp, 300(gp)
                  lbu          t3, 208(gp)
                  lh           zero, 235(gp)
                  lb           a1, 1053(gp) #end riscv_load_store_rand_instr_stream_0
                  bne          t4, s1, 12f
                  slli         t1, s6, 14
                  blt          a0, t1, 19f
                  or           s8, a4, s7
                  slti         ra, s1, 327
                  ori          tp, s8, 1130
                  blt          s7, ra, 21f
                  addi         s5, t0, 1797
                  sltu         a6, a2, s5
                  bge          a6, a3, 21f
                  slli         s11, tp, 17
                  srl          s9, t0, t6
12:               ori          t4, s8, -554
                  srai         t1, s8, 8
                  bne          s5, s0, 22f
                  slti         s5, s3, -1619
                  sra          a4, s10, s1
                  bge          t1, a5, 32f
                  sra          s3, zero, a1
19:               blt          s7, a4, 32f
                  or           t3, s7, t3
21:               addi         a2, a0, -1382
22:               sra          s6, a7, s1
                  slt          a6, a6, a7
                  ori          a7, a4, 545
                  srli         t3, a3, 18
                  sub          s3, s2, a1
                  srai         s0, a3, 1
                  sra          s10, a7, s7
                  sub          s9, s4, t0
                  nop
                  beq          s11, s9, 46f
32:               sltu         s11, a5, a1
                  slli         s5, gp, 13
                  sltiu        a2, s2, 83
                  nop
                  addi         a6, a5, -1486
                  bgeu         a6, t4, 42f
                  sltiu        t0, tp, 1191
                  sltiu        a6, s2, -1142
                  lui          t2, 285080
                  blt          s7, t1, 55f
42:               and          gp, a6, s1
                  beq          s11, sp, 49f
                  srl          s9, a7, s11
                  sltiu        t3, s2, -2026
46:               sra          sp, a4, s0
                  sltiu        s11, a4, 283
                  auipc        a2, 569656
49:               bgeu         s5, t5, 51f
                  add          s5, tp, a1
51:               srl          s0, a6, a5
                  srl          a7, s11, tp
                  sra          t1, gp, t5
                  blt          ra, t4, 59f
55:               slt          s10, s7, t0
                  and          t2, a0, t6
                  nop
                  and          t2, t6, a5
59:               bltu         s8, t0, 62f
                  blt          a4, s9, 76f
                  addi         t6, ra, -963
62:               slti         a7, s10, 726
                  slti         t3, gp, -918
                  srli         s0, s5, 26
                  xor          s0, t3, a4
                  nop
                  blt          a0, ra, 70f
                  lui          ra, 329280
                  srli         a5, gp, 28
70:               addi         s8, ra, -245
                  slti         s3, s4, -247
                  srl          a1, s8, a6
                  slli         a5, s9, 28
                  bne          ra, s1, 82f
                  srl          a6, s7, t2
76:               slti         s3, s1, -254
                  andi         s5, s9, -1856
                  srl          t3, s1, s3
                  sra          s0, s4, t3
                  bne          s1, a0, 86f
                  sub          a3, s0, a4
82:               beq          s6, s6, 88f
                  slti         a7, a0, -312
                  slt          a2, a6, s5
                  and          t1, gp, a4
86:               srl          a7, tp, tp
                  bltu         a0, a2, 103f
88:               blt          zero, t1, 90f
                  addi         a4, s7, -943
90:               sll          a3, a2, zero
                  bgeu         t6, t6, 104f
                  srli         sp, sp, 23
                  srl          a3, s8, s8
                  sltiu        t4, a4, 56
                  blt          t4, a0, 112f
                  srai         s9, a0, 5
                  xori         a0, a3, -386
                  slli         sp, a1, 21
                  andi         s2, s8, 1362
                  sll          s0, a2, t0
                  nop
                  slti         a6, s3, -121
103:              andi         t6, a7, 1974
104:              sltu         s2, s9, a5
                  addi         s0, a2, -1687
                  bgeu         zero, t6, 109f
                  bgeu         a7, sp, 109f
                  addi         a4, a7, 1785
109:              nop
                  blt          s5, a6, 124f
                  xor          gp, sp, a3
112:              bne          s11, a3, 119f
                  and          a1, a7, tp
                  bltu         a1, t3, 123f
                  slti         a7, a0, 1253
                  xori         s11, a1, -60
                  bne          t4, t2, 130f
                  addi         s2, t3, -463
119:              srli         s10, t5, 11
                  and          s9, a5, s9
                  andi         a7, s9, 269
                  sra          t2, s8, t4
123:              and          a2, s7, s10
124:              xor          s2, a2, s0
                  bltu         gp, sp, 135f
                  or           t0, s2, s0
                  srai         t6, s2, 9
                  slli         a0, s5, 8
                  srl          s3, t0, tp
                  sra          s3, tp, a0
                  or           t1, a3, s8
sub_3_j8:         jal          s2, sub_5 #jump sub_3 -> sub_5
                  xori         a3, zero, -118
                  andi         a0, t1, 409
                  slt          a6, s8, zero
                  bltu         tp, a7, 135f
130:              xor          a0, s2, s2
                  slli         s5, s9, 10
                  beq          s7, s11, 138f
                  slti         a0, t4, 1681
                  nop
135:              blt          t5, t3, 148f
                  slli         ra, ra, 31
                  srli         a1, s10, 30
138:              andi         t2, s2, -1379
                  srai         s2, t3, 23
                  sltiu        s6, t0, 926
                  srli         t2, t5, 15
                  beq          sp, s10, 144f
                  auipc        zero, 857341
144:              sll          a0, s10, a0
                  srl          s2, t0, a3
                  slti         s2, s11, 1864
                  srli         sp, s0, 29
148:              bge          s7, t6, 156f
                  slli         a6, s11, 1
                  bne          t4, zero, 157f
                  sltiu        a1, s2, 126
                  xori         t1, s2, -1037
                  sll          s9, s9, s8
                  bltu         s5, t2, 157f
                  slli         s1, s6, 1
156:              nop
157:              ori          gp, a1, -399
                  lw           s2, 4(t5)
                  ori          t6, s8, -100
                  add          zero, a6, a0
                  addi         t5, t5, 8
                  andi         a4, a4, 1301
                  srli         t0, gp, 2
                  sltiu        t3, t6, -1866
                  sub          s1, s10, a2
                  sll          t6, t2, s1
222:              addi x10, x18, 1
222:              jalr x10, x10, 0
sub_4:            slli         t6, t0, 25
                  sub          a0, s1, t6
                  sll          a2, s0, s2
                  ori          t1, gp, 1760
                  addi         t5, t5, -60
                  add          t6, s4, s10
                  srli         gp, s2, 21
                  sub          a1, s3, s6
                  sw           s2, 4(t5)
                  sub          ra, a5, ra
                  sltiu        t6, a4, 839
                  or           t0, a0, t1
                  lui          t2, 470215
                  sltiu        a1, s5, -1071
                  lui          s11, 96464
                  auipc        t1, 633507
                  xori         a5, s11, 1814
                  addi         a5, zero, 1442
sub_4_j9:         jal          s2, sub_5 #jump sub_4 -> sub_5
                  bge          s2, s8, 10f
                  bne          t3, a5, 10f
                  srli         sp, s0, 4
                  and          a4, s4, t3
                  sltu         t3, s6, t4
                  srli         s2, s4, 1
                  beq          t4, s8, 8f
                  xor          s2, gp, a1
8:                slti         tp, gp, -1260
                  slli         a2, s9, 17
10:               or           s8, zero, a3
                  srl          a3, a5, ra
                  nop
                  add          s5, s0, zero
                  addi         t6, a3, 750
                  lui          a1, 462716
                  lw           s2, 4(t5)
                  and          a0, s10, t5
                  addi         t5, t5, 60
                  add          a5, s11, s2
39:               addi x22, x18, 1
39:               jalr x22, x22, 0
sub_9:            ori          t6, s9, -1847
                  slli         sp, ra, 10
                  addi         t5, t5, -36
                  xori         t3, s0, -570
                  sw           s2, 4(t5)
                  srl          a4, a4, s10
                  auipc        s9, 707715
                  and          t2, s1, s4
                  sll          t2, t0, s8
                  add          gp, s10, t1
                  bge          tp, a1, sub_9_j13 #branch to jump instr
                  srai         t0, t0, 24
                  sra          s3, s6, sp
                  sll          zero, s1, s2
                  auipc        a7, 1034122
                  slli         a1, s8, 31
                  lui          a7, 300521
                  slti         s0, t3, -1605
sub_9_j13:        jal          s2, sub_10 #jump sub_9 -> sub_10
                  slti         a5, a5, 1725
                  or           ra, s2, s10
                  ori          t6, a0, 1210
                  srai         ra, t6, 19
                  bge          t1, s4, 14f
                  addi         t4, s2, -655
                  sra          a6, s10, s9
                  addi         s3, s10, 663
                  slti         t2, a1, 1975
                  slli         sp, ra, 7
                  slti         a7, t0, -1966
                  blt          a0, gp, 21f
                  ori          t0, a7, 1403
                  slt          s10, s8, a5
14:               bltu         s1, ra, 17f
                  bgeu         s7, s4, 21f
                  bgeu         a2, s7, 21f
17:               add          a4, s9, s9
                  sll          a7, s8, s8
                  slti         a5, sp, 935
                  blt          zero, a7, 21f
21:               slli         s3, s10, 11
                  lw           s2, 4(t5)
                  sll          t6, s0, a2
                  addi         t5, t5, 36
                  sltu         s5, a4, a4
                  srl          a2, a0, sp
46:               addi x6, x18, 1
46:               jalr x6, x6, 0
sub_6:            andi         s11, t3, -1610
                  nop
                  xori         a4, s11, -1546
                  xori         s6, s3, 172
                  bgeu         s9, s10, sub_6_stack_p
                  sll          t6, a5, s8
sub_6_stack_p:    addi         t5, t5, -40
                  slli         a2, s1, 20
                  andi         a0, a4, 2040
                  sw           s2, 4(t5)
                  add          t1, sp, zero
                  addi         t3, s9, 410
                  nop
                  la           gp, region_0+1609 #start riscv_load_store_rand_instr_stream_4
                  sh           t3, -177(gp)
                  lb           a0, 138(gp)
                  lw           s9, 119(gp)
                  lbu          a1, 26(gp)
                  sltiu        s3, ra, -1088
                  lbu          a2, 239(gp)
                  lb           sp, -70(gp)
                  lb           t6, 64(gp)
                  sub          zero, a7, sp
                  sltu         a5, s9, gp
                  sll          t4, t0, s0
                  lui          a5, 677881
                  sub          s1, s4, a5
                  sb           tp, 196(gp)
                  xor          zero, a2, s3
                  sb           s0, -52(gp)
                  srai         t1, a7, 22
                  srli         a5, s4, 24
                  and          s8, t6, ra
                  sll          sp, a1, t2
                  sh           t2, 33(gp)
                  sltu         ra, t0, s6
                  lbu          s1, 250(gp) #end riscv_load_store_rand_instr_stream_4
                  la           a5, region_1+1310 #start riscv_load_store_rand_instr_stream_0
                  sll          s3, s0, s9
                  addi         a3, t6, 1540
                  sltu         sp, t3, a1
                  srl          a4, a4, a7
                  sb           s2, -1085(a5)
                  xor          t3, s10, a5
                  or           zero, s8, s2
                  ori          t1, a2, -1704
                  sub          s5, s5, t5
                  sra          ra, a2, s5
                  sb           zero, 264(a5)
                  addi         a1, t5, 1926
                  srai         t1, a3, 25
                  lui          t6, 492364
                  sb           sp, 509(a5)
                  or           t6, ra, s4
                  sb           s10, -685(a5)
                  sra          a6, a1, a6
                  sltiu        t4, s2, 230
                  andi         a3, s3, 1566
                  sh           a4, -974(a5)
                  lb           a6, -329(a5)
                  slt          tp, s1, t2
                  lbu          s5, 513(a5)
                  and          t1, s2, sp
                  sub          zero, s6, tp
                  sub          sp, tp, a3
                  sb           t4, 551(a5)
                  sb           t4, 636(a5)
                  lbu          s10, -763(a5)
                  srai         a7, s5, 18
                  lb           t1, -1145(a5)
                  sb           tp, 223(a5) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+1000 #start riscv_load_store_rand_instr_stream_1
                  sltu         zero, s6, zero
                  lb           s8, 55(a6)
                  slt          t4, s2, s2
                  srai         gp, zero, 12
                  sb           t6, -57(a6)
                  sb           a4, 48(a6)
                  lb           sp, 44(a6)
                  ori          s9, t0, -998
                  lb           a0, -55(a6)
                  lw           t3, 8(a6)
                  sll          t6, t5, s9
                  lhu          s11, 26(a6)
                  sltu         s9, s1, t4
                  lbu          s0, 23(a6)
                  lb           tp, 54(a6)
                  lui          s5, 316320
                  sh           s5, -40(a6)
                  and          s1, s5, a4
                  andi         t1, ra, -824
                  sltu         a2, s3, a0
                  xor          s5, t4, ra
                  sh           s8, 46(a6) #end riscv_load_store_rand_instr_stream_1
                  nop
                  sub          a5, a6, sp
                  srai         s5, t0, 31
                  bge          a3, s11, 6f
                  lui          t6, 460877
                  sub          s8, t3, ra
6:                blt          t6, t6, 7f
7:                sltiu        a7, s7, -833
                  ori          a6, s9, -69
                  andi         s0, t0, -976
                  lui          s6, 463354
                  andi         s5, s10, 1123
                  slli         s2, sp, 1
                  bne          t1, a5, 14f
14:               slt          s5, s4, s5
                  lui          s8, 739995
                  bgeu         t1, s1, 31f
                  blt          s3, t2, 37f
                  addi         a2, s5, 773
                  lui          s0, 224045
                  bltu         s7, t1, 34f
                  addi         a7, t2, -354
                  sub          sp, s9, a2
                  srli         a7, s3, 31
                  auipc        s10, 719575
                  srai         t4, s1, 23
                  srai         a1, ra, 19
                  srai         a0, s7, 6
                  srl          gp, s0, s9
                  xor          zero, ra, t1
                  sub          a4, s2, ra
31:               lui          t6, 561556
                  bltu         s11, a6, 39f
                  slli         a0, a3, 5
34:               xori         s11, a3, -578
                  sltiu        a6, s3, -1976
                  sub          t4, tp, s1
37:               sltu         a6, s3, a1
                  bne          s0, sp, 53f
39:               beq          tp, ra, 55f
                  lui          s5, 861920
                  slt          t6, sp, s5
                  slti         s10, gp, -1317
                  slt          t1, a1, a1
                  add          a0, s3, s1
                  sltiu        a4, a1, 1315
                  addi         a1, a3, 479
                  slt          a4, t5, t0
                  addi         s8, t3, -159
                  xor          s5, s11, t1
                  nop
                  and          a7, a1, t1
                  sltiu        t4, sp, 437
53:               auipc        a7, 967891
                  bge          t0, s7, 59f
55:               xori         sp, t2, 369
                  bltu         ra, gp, 75f
                  beq          s10, a2, 73f
                  nop
59:               auipc        s1, 855068
                  and          zero, a7, t3
                  auipc        a4, 1011854
                  bge          t1, t4, 66f
                  and          s1, t0, s9
                  sub          ra, s6, t3
                  or           s11, zero, s6
66:               sll          s9, s8, zero
                  nop
                  sltiu        s10, s0, -307
                  sll          s10, t1, a6
                  xor          a7, t3, gp
                  addi         s9, a1, 1443
                  blt          a0, s3, 88f
73:               bne          tp, s11, 81f
                  blt          zero, ra, 84f
75:               sra          sp, t0, a4
                  srl          a1, t2, s0
                  srl          tp, t5, s9
                  xori         a6, s9, 795
                  xori         s0, a6, 1883
                  bge          a0, s8, 92f
81:               addi         s0, t2, -471
                  lui          a7, 80437
                  slti         t3, t5, 2021
84:               srl          a4, s9, t1
                  bne          s11, a1, 100f
                  srl          s1, t3, ra
                  addi         tp, s8, 933
88:               beq          s5, s0, 89f
89:               beq          a5, t6, 94f
                  andi         a7, a7, 1413
                  bge          s5, s8, 99f
92:               bgeu         gp, t3, 94f
                  beq          a5, s11, 98f
94:               slt          a2, s2, s7
                  ori          zero, s1, -570
                  sub          t0, s9, s10
                  sltiu        s3, a3, -2016
98:               addi         t1, s1, -638
99:               sra          a6, a5, sp
100:              bgeu         t1, a2, 105f
                  nop
                  andi         s6, a7, 1394
                  bltu         a0, s8, 112f
                  sltu         a1, a1, gp
105:              xor          t4, s4, s4
                  ori          t0, s6, 1940
                  and          s2, s11, s7
                  or           t6, a6, s4
                  la           a4, region_1+441 #start riscv_load_store_rand_instr_stream_3
                  lhu          t0, 7(a4)
                  sb           t3, 48(a4)
                  lbu          t4, 20(a4)
                  sltiu        s0, a7, 1638
                  sll          t1, a3, t0
                  srli         s5, a5, 23
                  nop
                  srli         t3, t5, 17
                  lbu          tp, 42(a4)
                  xor          s6, t4, t4
                  sb           t0, -46(a4)
                  sb           t4, 10(a4)
                  sb           t2, 48(a4)
                  addi         a5, s10, 1972
                  lb           s10, 5(a4)
                  slti         a5, s2, 1381
                  sb           s11, -6(a4)
                  sh           a7, -61(a4)
                  addi         a1, t6, -576
                  srai         t3, a7, 31
                  lbu          s0, -6(a4)
                  sb           a6, 32(a4)
                  lui          s1, 167259
                  lbu          t4, -54(a4)
                  lb           sp, -59(a4)
                  sb           a2, -18(a4)
                  lb           t4, 21(a4)
                  lh           s1, -59(a4) #end riscv_load_store_rand_instr_stream_3
                  sll          t0, s11, gp
                  xori         s11, zero, 1360
                  andi         t4, s4, -366
112:              sltiu        s2, a7, 506
                  slli         s10, t5, 29
                  bltu         a0, a2, 126f
                  sub          t4, a0, t3
                  blt          a3, s10, 118f
                  and          s6, a7, a5
118:              sltu         a5, a7, tp
                  bne          s9, s1, 124f
                  bltu         a7, gp, 124f
                  bge          s0, gp, 134f
                  xor          s3, t5, a7
                  nop
124:              sltu         s0, t3, ra
                  bgeu         t5, t0, 130f
126:              and          a5, s1, a3
                  addi         a2, a4, -899
                  blt          a2, a6, 131f
                  lui          ra, 268163
130:              xor          a1, t0, s11
131:              sltu         a4, ra, s2
                  bltu         a4, ra, 152f
                  nop
134:              bne          s5, s0, 139f
                  or           t2, tp, zero
                  slti         s3, t1, 134
                  slt          t3, t4, a1
                  bltu         t4, a0, 139f
139:              srl          a0, a0, a0
                  sltu         s10, a1, s11
                  bltu         t4, tp, 154f
                  sra          s6, s9, t0
                  and          t3, a2, s2
                  slt          a3, a1, s11
                  and          s3, s3, t4
                  xor          s5, zero, t1
                  slt          s1, a1, t6
                  add          t1, ra, a6
                  srai         t1, t6, 2
                  add          a6, t6, a4
                  andi         a0, a6, -1217
152:              srl          t0, s1, t2
                  andi         t4, s10, 507
154:              addi         a7, s4, 1006
                  xor          a4, s11, s8
                  lui          s1, 284203
                  xori         sp, s2, -1717
                  srai         t2, a0, 4
                  sll          a7, s9, s2
                  bge          gp, t6, 175f
                  sub          tp, s8, t1
                  slli         s8, a3, 2
                  addi         s3, a5, 532
                  srl          a6, t2, a0
                  srl          s10, s5, a4
                  xori         s5, s3, 3
                  srai         s0, t6, 15
                  srli         s11, t2, 5
                  and          s2, zero, t1
                  ori          ra, a6, -2013
                  srai         s8, s10, 4
                  beq          s3, t3, 173f
173:              slt          s3, a4, t5
                  auipc        s10, 180059
175:              blt          gp, s6, 177f
                  xor          s6, s10, s1
177:              bge          a0, a5, 192f
                  lui          t1, 789632
                  beq          t6, t6, 191f
                  sltu         t6, t6, ra
                  blt          a5, s2, 200f
                  add          s3, t4, ra
                  xor          a0, a5, s0
                  addi         s5, sp, 747
                  or           a0, ra, s11
                  srai         s10, s2, 23
                  sra          s9, s11, a4
                  sub          s0, a3, s3
                  nop
                  slli         a1, gp, 20
191:              srli         s8, t1, 6
192:              and          s3, a6, s11
                  sra          zero, s3, t0
                  sll          sp, s10, s8
                  or           t4, s5, a6
                  sub          s8, a3, s0
                  and          s0, s0, s9
                  auipc        a6, 332231
                  and          sp, t0, t3
200:              auipc        a6, 82093
                  bne          s5, s4, 203f
                  or           a6, ra, a3
203:              sltiu        a7, a1, 1209
                  lui          s9, 304536
                  la           t1, region_1+3 #start riscv_load_store_rand_instr_stream_2
                  ori          s8, t4, 626
                  slti         s9, a6, -283
                  lhu          t0, 1577(t1)
                  sb           t3, 1896(t1)
                  sb           s7, 959(t1)
                  auipc        s10, 542715
                  sb           sp, 1292(t1)
                  or           a5, tp, tp
                  add          sp, t2, s1
                  lb           s2, 714(t1)
                  sub          t4, s11, t6
                  srli         a0, t5, 24
                  sb           t2, 1853(t1)
                  lbu          ra, 910(t1)
                  sb           sp, 974(t1)
                  sb           s6, 1088(t1)
                  sb           t1, 1194(t1)
                  sltiu        s11, s8, 223
                  sb           a1, 1538(t1)
                  lui          a6, 757104
                  lbu          a2, 92(t1)
                  lh           a5, 73(t1)
                  srl          a1, ra, s10
                  lbu          s0, 1044(t1)
                  and          a3, tp, sp
                  nop
                  srli         a1, s9, 8
                  lbu          zero, 1562(t1)
                  lhu          a4, 1427(t1)
                  lbu          s8, 156(t1)
                  ori          a4, t0, 1881
                  andi         t2, a7, 1416
                  lb           s10, 1888(t1)
                  srai         s2, a2, 25
                  lb           a5, 430(t1)
                  andi         s5, zero, -821
                  sll          zero, a7, a5
                  lb           sp, 214(t1)
                  lbu          s10, 50(t1)
                  lbu          t2, 936(t1)
                  lb           zero, 1480(t1)
                  andi         t3, ra, -1525
                  lhu          a5, 1439(t1)
                  srl          t6, a4, s10
                  lb           t4, 511(t1)
                  lbu          a7, 98(t1)
                  sb           s9, 1705(t1)
                  sb           s2, 1766(t1)
                  lb           s9, 832(t1) #end riscv_load_store_rand_instr_stream_2
                  addi         zero, s4, -137
                  bgeu         a5, a7, 220f
                  beq          s10, a6, 215f
                  srai         s10, t6, 31
                  and          zero, s8, t1
                  srai         t3, s4, 5
                  auipc        sp, 643865
                  blt          t4, ra, 220f
                  xori         s5, t1, -1736
                  bltu         a2, s10, 230f
215:              and          s1, s1, s5
                  sub          t4, s7, gp
                  bltu         a0, s1, 222f
                  srl          s2, ra, gp
                  nop
220:              bgeu         a0, s2, 225f
                  sub          sp, a2, s2
222:              srai         s2, s11, 2
                  bne          t4, t4, 238f
                  sltiu        zero, ra, -1222
225:              slli         s3, s1, 31
                  lui          s6, 1003873
                  nop
                  sltu         sp, t3, a7
                  slti         s3, t2, 1421
230:              slli         t0, a2, 7
                  addi         t2, a2, 943
                  srli         a0, sp, 28
                  bltu         sp, tp, 240f
                  sll          s5, tp, zero
                  sra          tp, s7, a7
                  nop
                  sll          a5, gp, s6
238:              sltu         a2, a0, t2
                  bgeu         a4, t0, 255f
240:              ori          t6, a1, 99
                  blt          tp, t2, 250f
                  srai         s1, s7, 10
                  sltu         a2, t0, s5
                  slti         tp, s8, 112
                  srli         s1, t3, 23
                  srl          gp, s0, s11
                  bgeu         s3, a4, 257f
                  ori          t1, s11, 1960
                  beq          a7, s1, 254f
250:              srli         s2, t1, 23
                  srli         t0, t0, 0
                  bltu         ra, a7, 253f
253:              slt          s8, s4, s7
254:              or           s11, t1, t2
255:              andi         a0, s9, 1795
                  bltu         s9, s10, 272f
257:              andi         s3, tp, 427
                  bge          a2, a7, 262f
                  bne          zero, t6, 263f
                  ori          tp, a7, -283
                  or           a6, ra, t3
262:              bne          a4, s0, 274f
263:              bne          t4, t1, 270f
                  blt          s9, s11, 266f
                  sra          a0, s9, s11
266:              add          s10, s9, s7
                  srai         a6, t1, 12
                  sltu         s10, s0, s3
                  bgeu         s9, t5, 278f
270:              bltu         s4, a2, 290f
                  slt          sp, s7, s4
272:              lui          a3, 1032796
                  sltu         ra, t3, s0
274:              sub          t4, s4, a0
                  or           t2, a5, t6
                  srli         s9, a0, 25
                  sra          a2, s8, t1
278:              xori         t2, t0, 108
                  sltiu        t0, t1, -1160
                  srai         s1, s7, 16
                  slli         t4, a6, 23
                  slti         a3, t5, 162
                  srli         s1, a2, 20
                  sltiu        a6, t2, -1322
                  srli         a0, s0, 22
                  slli         t2, s5, 14
                  sltiu        s3, s10, 254
                  ori          a7, t1, 1292
                  add          s10, s9, a5
290:              and          t0, t4, s10
                  bltu         gp, a5, 306f
                  slti         t4, s3, 1920
                  sll          s6, zero, s5
                  srai         a2, s8, 25
                  andi         s3, t6, 1806
                  andi         gp, s8, -1303
                  sll          tp, s10, a6
                  bne          s2, s10, 311f
                  beq          ra, a5, 314f
                  sltiu        s1, a6, 141
                  bltu         a2, s3, 305f
                  slt          sp, sp, s9
                  srai         t1, s9, 22
                  andi         t4, t3, -831
305:              xor          ra, s11, t0
306:              sub          a0, t3, a5
                  nop
                  beq          a4, s4, 309f
309:              bltu         s6, t1, 312f
                  bge          t2, t1, 326f
311:              auipc        s8, 728308
312:              bgeu         a5, a1, 328f
                  srai         a3, s10, 29
314:              bgeu         s1, s0, 322f
                  xori         a1, s11, 1417
                  sltiu        t6, t0, -36
                  sra          a6, a1, s5
                  xori         sp, zero, -288
                  srl          a6, t1, s4
                  srli         a5, a7, 11
                  sll          a2, s1, s4
322:              or           t0, s0, s1
                  xori         tp, t1, 1667
                  sltiu        s1, s7, -1094
                  bltu         s5, t5, 330f
326:              xor          zero, s1, t5
                  or           s5, s10, s5
328:              srli         a0, a1, 16
                  or           s0, s11, a5
330:              bne          s9, tp, 340f
                  or           s9, s5, s10
                  slli         s6, s0, 12
                  sub          s6, s4, tp
                  srl          s9, t1, t0
                  add          gp, s8, a3
                  slti         t3, t4, 449
                  srai         s10, s6, 12
                  lui          s2, 561197
                  sll          t1, s4, a1
340:              srl          s6, s11, t0
                  bne          t1, s0, 346f
                  bgeu         t6, sp, 343f
343:              blt          s8, t2, 351f
                  or           t3, a0, a6
                  auipc        a3, 295675
346:              sll          a7, s3, tp
                  or           a2, tp, t2
                  bgeu         tp, gp, 352f
                  addi         gp, s11, -1576
                  srai         a0, s6, 1
351:              slti         s1, zero, 1837
352:              sra          a1, s10, s8
                  srai         s3, s11, 6
                  beq          sp, s1, 359f
                  slli         s2, t2, 22
                  bltu         t4, s6, 361f
                  nop
                  srl          a1, a6, a5
359:              srai         a6, s4, 5
                  beq          s6, s3, 375f
361:              srai         a4, zero, 5
                  nop
                  beq          a1, a2, 379f
                  sll          s0, tp, t4
                  slti         ra, a2, -1846
                  blt          s11, a1, 380f
                  beq          a7, tp, 379f
                  sub          s2, s10, a5
                  and          s0, s6, a5
                  or           s10, s5, t4
                  andi         s2, s3, -808
                  bne          t6, s9, 391f
                  lui          t6, 152883
                  bgeu         t4, s11, 386f
375:              auipc        gp, 748671
                  and          t4, a6, t4
                  slti         t0, s5, -1589
                  bne          s10, sp, 383f
379:              addi         t2, s5, 680
380:              blt          a3, s11, 381f
381:              bgeu         a3, a3, 383f
                  sll          sp, t2, ra
383:              srli         ra, t4, 3
                  auipc        t3, 918470
                  beq          a1, t3, 400f
386:              xori         t4, a6, -775
                  bge          a7, a5, 394f
                  srai         a2, s11, 2
                  sltu         s6, zero, a7
                  srai         s8, s11, 1
391:              beq          s11, zero, 396f
                  bge          a7, ra, 394f
                  bltu         sp, s9, 394f
394:              bne          a5, s2, 404f
                  srl          a6, sp, ra
396:              bne          gp, t0, 401f
                  srai         zero, a6, 6
                  slt          a3, s2, t4
                  lui          a2, 495322
400:              bge          t2, sp, 415f
401:              add          t6, t3, s9
                  or           t4, a7, tp
                  slt          s11, s0, s0
404:              beq          s4, sp, 419f
                  bge          s1, a6, 408f
                  slt          a7, zero, zero
                  add          a2, s1, s4
408:              sub          s9, a6, s7
                  auipc        a7, 318922
                  srl          s11, s9, s10
                  slti         s2, s6, 1596
                  bgeu         t6, gp, 417f
                  sra          zero, t0, t4
                  slti         s11, s10, 1957
415:              andi         a0, t4, 822
                  bltu         s4, s8, 421f
417:              srl          a3, sp, s4
                  sra          a4, s9, s6
419:              ori          t4, s6, 740
                  auipc        ra, 782275
421:              bltu         t3, s2, 433f
                  auipc        s10, 143006
                  srai         s10, a2, 19
                  bltu         t3, s10, 440f
                  addi         gp, sp, 79
                  sltu         s5, s11, s5
                  slt          a4, s0, s3
                  addi         sp, s7, -502
                  bgeu         t1, sp, 445f
                  blt          a0, s11, 438f
                  beq          t6, s7, 439f
                  slli         s8, s9, 15
433:              auipc        tp, 170987
                  bne          gp, tp, 446f
                  slti         a4, s6, -126
                  srli         a1, zero, 29
                  srli         t2, ra, 9
438:              beq          t1, s4, 443f
439:              slli         s9, a3, 9
440:              or           s11, s3, s10
                  sll          s0, sp, s4
                  xor          a0, s6, zero
443:              sltiu        s5, a2, 1268
                  addi         sp, a2, -535
445:              srli         sp, s2, 12
446:              bne          sp, t1, 450f
                  beq          s11, s4, 461f
                  bltu         t3, a7, 457f
                  and          t3, a0, s4
450:              sub          t2, s8, s3
                  bltu         s7, t1, 470f
                  bltu         s4, s9, 454f
                  srli         a7, tp, 24
454:              addi         a7, a5, -426
                  bge          a6, t0, 475f
                  xor          a0, tp, gp
457:              nop
                  srli         s3, s3, 12
                  nop
                  blt          s1, t3, 461f
461:              bge          t3, a6, 474f
                  xori         s5, s2, -290
                  slti         tp, s9, 622
                  lui          s10, 895667
                  beq          s11, s10, 481f
                  sra          t1, t3, a3
                  xor          gp, a5, a4
                  bltu         s9, s7, 469f
469:              srl          s3, t2, t2
470:              sra          s8, s8, gp
                  sltiu        t0, a6, 618
                  bgeu         s9, gp, 476f
                  srli         s1, a1, 13
474:              bltu         t2, a2, 475f
475:              slt          ra, s8, t5
476:              bne          a4, s0, 491f
                  auipc        a6, 393760
                  slt          a2, gp, s11
                  sub          a3, a5, t6
                  bne          s5, s1, 500f
481:              add          a4, zero, a6
                  ori          a6, a6, -463
                  bge          a5, s0, 493f
                  sub          t6, s8, t2
                  bge          tp, t5, 501f
                  add          a7, s2, s2
                  slt          sp, s0, s11
                  or           a6, zero, t4
                  andi         a2, t2, 2028
                  nop
491:              slt          t1, s1, t6
                  sltu         ra, s0, ra
493:              slli         ra, s10, 0
                  beq          t4, t3, 503f
                  slti         t6, a1, -1108
                  sltiu        s0, s5, 997
                  slli         t4, gp, 20
                  sltu         a6, t6, s4
                  xor          gp, t2, sp
500:              addi         s2, t1, 72
501:              slt          s5, a7, a4
                  slli         s0, s3, 31
503:              beq          s4, a1, 508f
                  and          t1, a0, s5
                  sra          tp, t6, s11
                  srl          s1, a4, a7
                  srai         t1, t4, 4
508:              add          gp, s10, t3
                  srl          s8, t3, a0
                  ori          a7, a5, -277
                  and          t3, s6, s0
                  sll          t4, s2, sp
                  srli         t0, s0, 9
                  auipc        ra, 641653
                  slli         a6, tp, 31
                  slt          ra, ra, t0
                  xori         s6, t0, -72
                  sltiu        s11, t4, -1922
                  xor          s8, a1, s6
                  bgeu         s7, a1, 536f
                  slt          a2, a5, t4
                  nop
                  auipc        s6, 664596
                  sltiu        s5, t2, 686
                  sltiu        zero, tp, -120
                  andi         s10, s1, 1960
                  srl          a1, s4, a0
                  srai         s6, zero, 9
                  sll          t2, s3, zero
                  slti         t0, s3, -726
                  and          t2, s10, a7
                  sltiu        s2, t1, -1288
                  lui          a4, 921331
                  sltu         t3, s2, t1
                  srai         a3, sp, 15
536:              lui          s10, 614741
                  addi         a2, ra, 1017
                  and          a3, a5, s1
                  nop
                  ori          a5, s4, 965
                  slli         a6, zero, 0
                  srl          t1, s1, a2
                  bltu         s9, t4, 548f
                  sra          a0, s4, t6
                  sltu         s3, s0, a3
                  bge          s10, t1, 550f
                  andi         s3, s10, 1110
548:              sub          a6, sp, a1
                  bgeu         s10, a5, 557f
550:              and          tp, zero, t0
                  auipc        s11, 550462
                  slti         t2, t1, -1323
                  lui          s10, 547380
                  srl          gp, s8, s2
                  sll          s2, s7, s6
                  auipc        a1, 955186
557:              sltiu        s5, a5, 1798
                  sll          a3, s9, sp
                  and          a5, s7, s1
                  addi         t6, s3, 1406
                  nop
                  xori         t2, s3, 808
                  xor          s10, s1, a3
                  auipc        t4, 233441
                  andi         s0, zero, 1488
                  srl          t4, s5, t3
                  srl          t0, s1, a2
                  srl          a6, s6, s4
                  auipc        zero, 766907
                  xor          zero, a5, s0
                  srai         a6, s4, 23
                  srai         sp, s5, 30
                  srl          s6, t0, s2
                  bltu         s0, t1, 578f
                  lui          t2, 36982
                  lui          s3, 244074
                  bne          s9, t4, 578f
578:              beq          s8, s8, 593f
                  sra          s0, s7, tp
                  blt          s3, s3, 585f
                  ori          s10, s1, 1724
                  srli         ra, a6, 31
                  sra          a6, s6, s7
                  blt          s2, s10, 600f
585:              slti         s0, t2, 1400
                  or           sp, tp, t5
                  lui          a3, 589006
                  srli         s6, s9, 26
                  srli         s0, a0, 28
                  srai         tp, s0, 6
                  add          sp, s3, a3
                  andi         a4, s9, -1787
593:              slt          s9, tp, a6
                  add          a2, a4, sp
                  sra          sp, s0, s0
                  sltiu        t1, a7, 1198
                  slti         sp, a7, -963
                  sltu         a3, a3, t0
                  or           s10, t3, t2
600:              addi         t4, a2, -999
                  beq          s9, t0, 609f
                  bne          a0, ra, 603f
603:              auipc        a2, 242945
                  sll          s8, s2, t5
                  add          t2, s11, t2
                  xori         a2, s9, 1227
                  xor          s5, t5, s11
                  srai         a4, sp, 8
609:              sra          a4, a1, s7
                  bgeu         t0, s5, 617f
                  sltu         s6, s2, t1
                  or           s3, a1, a1
                  bgeu         t1, a6, 625f
                  xori         s10, a5, -790
                  blt          s9, t2, 620f
                  and          t0, sp, a6
617:              beq          s2, a2, 619f
                  sll          gp, t5, t0
619:              srl          zero, t5, a6
620:              bne          s1, t4, 639f
                  bgeu         t0, t2, 626f
                  srl          s10, s9, t0
                  slti         a2, s5, 405
                  srli         s5, t6, 27
625:              xori         s3, a2, -596
626:              ori          s11, s4, -665
                  lui          s1, 112512
                  sub          a2, ra, s8
                  bge          a5, a6, 644f
                  srl          t6, t0, a1
                  xori         s3, a1, -152
                  bltu         s2, t5, 635f
                  slli         sp, t1, 15
                  slti         a4, s11, 782
635:              sub          gp, a1, a7
                  sub          a5, sp, a1
                  andi         s0, a3, 1753
                  sltu         a3, a3, a2
639:              sra          a5, t5, s0
                  add          s1, s10, sp
                  slti         s9, t5, -1487
                  xori         a2, a5, -1846
                  xori         s3, s11, 638
644:              srl          s5, s10, t0
                  bgeu         sp, s7, 647f
                  bge          t3, s3, 660f
647:              and          a0, a7, a2
                  bge          s6, s0, 660f
                  ori          a3, s0, 1192
                  xori         a4, a7, -1399
                  bge          s11, a6, 664f
                  auipc        t3, 205045
                  sltu         a1, a2, t6
                  bltu         tp, s6, 667f
                  nop
                  sra          zero, s5, s11
                  nop
                  slti         s11, a4, 354
                  add          sp, a1, a7
660:              beq          s4, gp, 661f
661:              auipc        s8, 983383
                  beq          s10, s1, 669f
                  ori          s8, a5, -1580
664:              blt          s1, s1, 668f
                  sll          a1, t2, s6
                  add          a5, s2, s5
667:              blt          t5, zero, 679f
668:              bgeu         a3, t6, 683f
669:              slli         s6, a3, 22
                  nop
                  add          t2, s5, a6
                  srai         a6, a4, 3
                  slti         a1, t4, 378
                  beq          ra, sp, 682f
                  andi         t3, s10, -241
                  srli         a7, t0, 29
                  nop
                  add          s2, t0, t0
679:              beq          s1, t4, 684f
                  sltu         a0, ra, a2
                  sltiu        s1, t4, 850
682:              slli         a7, s0, 6
683:              slt          a7, a0, a7
684:              addi         sp, ra, -2028
                  andi         s5, s8, -1368
                  srli         sp, s5, 25
                  srli         ra, sp, 27
                  lui          t0, 757185
                  slli         gp, s7, 24
                  bgeu         s1, t6, 692f
                  blt          s2, a0, 696f
692:              auipc        a0, 86320
                  srli         a5, sp, 5
                  ori          zero, t5, -338
                  blt          a5, s1, 711f
696:              sll          a5, t1, a0
                  sltiu        tp, s9, 1843
                  addi         a3, ra, 502
                  sll          s1, s0, s8
                  beq          s11, tp, 705f
                  bne          s10, s6, 702f
702:              addi         s8, ra, -1018
                  sltu         t6, s2, a1
                  or           t1, a7, s7
705:              slli         a7, t0, 18
                  sub          ra, t4, zero
                  sra          s6, s6, a7
                  srl          a6, a0, s7
                  addi         a7, t3, -574
                  bne          zero, sp, 720f
711:              blt          s1, s11, 712f
712:              srl          s3, a1, s1
                  bne          s0, t1, 721f
                  slt          s6, t2, gp
                  andi         t4, s4, -1207
                  add          s3, s10, s1
                  xori         ra, s7, -955
                  xori         zero, s10, 434
                  srli         a4, a0, 9
720:              xori         a0, s8, -1359
721:              xor          s11, zero, s4
                  bgeu         s1, a3, 727f
                  beq          s10, t0, 725f
                  srli         a0, gp, 9
725:              blt          a5, a2, 730f
                  and          a2, s6, a3
727:              auipc        s6, 1025616
                  xor          s11, t6, gp
                  bltu         a1, t5, 730f
730:              nop
                  slt          t2, a5, t1
                  slti         t2, t2, -1575
                  lw           s2, 4(t5)
                  xor          a6, gp, t0
                  xor          a0, a4, a4
                  addi         t5, t5, 40
                  auipc        a4, 242544
                  slli         ra, a2, 14
                  andi         t1, s7, -29
                  slli         tp, tp, 14
914:              addi x19, x18, 1
914:              jalr x19, x19, 0
sub_1:            bgeu         s7, s0, sub_1_stack_p
                  auipc        t1, 476246
                  sra          ra, s9, s8
                  sll          a6, s5, t2
                  sltu         s3, s0, s3
                  addi         a1, a4, 1904
                  addi         t1, t6, -1951
sub_1_stack_p:    addi         t5, t5, -56
                  srl          s6, t6, ra
                  andi         a7, a0, 197
                  sw           s2, 4(t5)
                  srli         t1, s4, 2
                  srli         s6, s10, 25
                  srl          zero, s4, s11
                  bltu         s1, t5, sub_1_j3 #branch to jump instr
                  sltiu        s5, t1, -1081
                  lui          s9, 412329
                  addi         s9, t2, 948
                  nop
                  sltiu        t2, a5, 1468
                  xor          s10, t6, a3
sub_1_j3:         jal          s2, sub_2 #jump sub_1 -> sub_2
                  slti         zero, s2, 0
                  or           a5, sp, s11
                  srli         s10, t0, 31
                  sltu         gp, a5, s9
                  slt          a6, t3, sp
                  la           a1, sub_4
                  ori          a3, s6, -629
                  addi         a1, a1, -990
                  slli         gp, ra, 24
sub_1_j4:         jalr         s2, a1, 991 #jump sub_1 -> sub_4
                  la           sp, region_1+773 #start riscv_load_store_rand_instr_stream_1
                  slli         s9, a2, 17
                  lbu          a3, 121(sp)
                  sb           a4, 128(sp)
                  slli         t0, s10, 3
                  sb           t4, -228(sp)
                  ori          t3, t0, -884
                  srai         t4, s5, 5
                  addi         a3, s7, -1215
                  lhu          a3, 91(sp)
                  sub          t1, a7, s11
                  lhu          t1, -35(sp)
                  sb           s10, 162(sp)
                  lbu          s1, -108(sp)
                  and          ra, t2, s6
                  lhu          a7, -245(sp)
                  srai         s3, s6, 29
                  lbu          t2, 242(sp)
                  srl          a0, s1, t5
                  srli         s0, a1, 9
                  sll          s9, s11, a7
                  xor          s1, s4, t4
                  lbu          a7, -59(sp)
                  srli         a3, a4, 10
                  slt          t4, s3, a4
                  lbu          a1, 220(sp)
                  xor          a2, s5, s6
                  ori          t1, sp, -289
                  lhu          ra, -19(sp)
                  lhu          tp, 253(sp)
                  sb           s2, 62(sp)
                  srl          s2, a0, a4
                  or           t0, a4, s8
                  sltu         a5, a0, t4
                  sb           s3, 168(sp)
                  slti         s1, gp, 912
                  sb           tp, 199(sp)
                  sltu         t1, sp, a0
                  lh           t1, -183(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_0+846 #start riscv_load_store_rand_instr_stream_0
                  sw           s0, -14(a4)
                  andi         s10, a1, -1271
                  sb           s2, -5(a4)
                  sh           a1, 14(a4)
                  slti         t6, s0, 1558
                  lbu          s10, -4(a4)
                  addi         ra, ra, 1478
                  sltu         t4, a0, s1
                  lbu          a1, 1(a4)
                  sb           ra, -12(a4)
                  lhu          t3, -4(a4)
                  sb           a6, -3(a4)
                  slti         gp, gp, -633
                  sub          a3, s7, s7
                  lbu          a0, -9(a4)
                  lbu          sp, -4(a4)
                  addi         s1, a4, -990
                  sb           s9, 11(a4)
                  sb           s0, 15(a4)
                  lui          a7, 170125
                  nop
                  lb           t4, -1(a4)
                  lb           s5, 7(a4)
                  sb           s2, 15(a4)
                  slti         s10, t6, -1126
                  lbu          a0, -16(a4)
                  lbu          zero, -9(a4)
                  srai         s0, s1, 14
                  lbu          s5, -4(a4)
                  sb           s4, -9(a4) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+545 #start riscv_load_store_rand_instr_stream_2
                  sltu         gp, t5, s11
                  sh           s7, 49(ra)
                  sb           s6, -55(ra)
                  lui          sp, 770967
                  and          s3, s5, s11
                  srai         s8, t3, 26
                  sra          s1, sp, t1
                  lbu          a0, -53(ra)
                  lbu          gp, -52(ra)
                  xor          t0, s4, s4
                  xori         s1, a4, 1857
                  slti         t6, zero, -211
                  and          s8, s1, a3
                  auipc        s8, 599265
                  lb           tp, -58(ra)
                  sltiu        s3, t1, -1226
                  lb           a3, -43(ra)
                  lbu          t3, -28(ra)
                  srli         t2, s4, 2
                  sub          t6, s3, a7
                  lb           t4, -53(ra)
                  nop
                  nop
                  sra          a1, a5, a6
                  lui          a5, 921453
                  lw           a2, -41(ra)
                  srli         a5, t5, 18
                  sltu         a3, zero, s4
                  nop
                  lb           a7, -4(ra)
                  xor          s10, tp, s4
                  srai         s0, s6, 22
                  slti         s3, s10, 968
                  sltu         a0, zero, a4
                  addi         tp, a2, -1439
                  sll          a1, tp, a3
                  lhu          s8, 21(ra)
                  lh           s0, -15(ra) #end riscv_load_store_rand_instr_stream_2
                  slti         sp, a1, 513
                  addi         t2, s8, -511
                  xor          s3, a6, s3
                  nop
                  beq          a6, a0, 20f
                  srli         s11, a7, 7
                  slt          t4, s1, t4
                  or           s5, s1, gp
                  srli         sp, t6, 6
                  srl          ra, ra, s2
                  blt          zero, sp, 18f
                  slti         s5, zero, -610
                  sub          s0, t6, ra
                  add          a0, tp, a7
                  xor          t1, s6, s7
                  bne          a3, t4, 26f
                  sra          ra, a2, s3
                  bltu         a0, t1, 34f
18:               blt          t1, t4, 19f
19:               slli         t0, t3, 1
20:               andi         s5, gp, 1795
                  sll          a2, s6, a2
                  blt          s10, t1, 37f
                  slli         t4, s6, 8
                  and          a2, s11, gp
                  srl          s1, t1, s7
26:               sub          s11, s5, a2
                  bne          s7, t1, 34f
                  xori         s9, t1, -397
                  srai         a3, tp, 2
                  blt          t4, s0, 36f
                  ori          t2, s9, -297
                  sll          sp, s7, t2
                  ori          t2, s4, -1293
34:               xor          zero, t3, t3
                  nop
36:               sltu         a3, s4, zero
37:               bltu         t5, s1, 53f
                  blt          s11, s0, 43f
                  lui          tp, 337019
                  slti         s2, s7, -678
                  bge          t0, s1, 55f
                  and          a6, a4, t2
43:               auipc        a5, 658658
                  sub          gp, s4, s10
                  beq          t1, s0, 48f
                  slli         sp, t3, 30
                  add          t0, s1, s8
48:               slli         tp, t2, 31
                  auipc        sp, 580958
                  andi         ra, s6, -1131
                  bgeu         sp, s2, 63f
                  slt          a0, zero, t0
53:               bgeu         s8, s2, 59f
                  slt          a2, a4, t5
55:               add          a4, t5, s9
                  or           a0, a2, t6
                  or           ra, s9, s7
                  sltiu        tp, s0, 1711
59:               slt          a2, a0, a6
                  xor          t3, s6, gp
                  xor          t4, s1, s10
                  bgeu         a4, s0, 64f
63:               sltu         s0, s10, sp
64:               srli         sp, s1, 8
                  addi         a0, a3, -1152
                  sltiu        tp, a5, -1532
                  bge          a1, a3, 79f
                  and          s5, a1, s9
                  slli         a1, s1, 5
                  xor          a2, s1, a3
                  or           a4, zero, a1
                  sub          s1, a3, s8
                  slli         tp, s3, 14
                  srai         t6, zero, 28
                  slli         s0, a4, 22
                  slli         a0, t1, 14
                  addi         t1, t0, -1772
                  bge          gp, a5, 87f
79:               sll          sp, t2, s2
                  sll          gp, t0, t2
                  auipc        t1, 117088
                  sra          s8, sp, a6
                  srli         a5, s3, 1
                  srai         a5, tp, 10
                  ori          s3, a0, 1597
                  bge          gp, s5, 103f
87:               andi         t6, t4, 1151
                  or           a4, t6, a5
                  auipc        t0, 501916
                  auipc        t3, 555110
                  auipc        t6, 122082
                  and          ra, gp, a1
                  and          a5, a5, s9
                  slt          s1, ra, a7
                  ori          a2, t4, 315
                  slti         a2, s8, 19
                  xor          a3, a2, t5
                  xor          s11, a6, a4
                  or           s5, t3, a6
                  sll          t3, gp, s10
                  srl          ra, a1, t4
                  blt          t5, sp, 116f
103:              srl          s1, s9, a6
                  beq          a6, a3, 107f
                  srai         s5, s5, 13
                  or           s6, a5, zero
107:              and          tp, s11, a0
                  or           a3, s8, s0
                  srai         tp, s5, 21
                  bge          s1, s1, 124f
                  andi         t4, s9, 313
                  slli         t4, a5, 13
                  blt          zero, t1, 123f
                  sltu         gp, s1, t0
                  addi         a6, t6, -1008
                  xori         t1, t4, 748
                  sll          a3, s9, a1
                  ori          s9, s8, -953
                  beq          s0, a1, sub_1_j5 #branch to jump instr
                  slt          a6, t0, t1
                  sub          a3, t1, s4
sub_1_j5:         jal          s2, sub_3 #jump sub_1 -> sub_3
                  sltiu        a6, a3, -1882
                  auipc        t0, 476439
116:              slli         s3, a2, 17
                  xor          t4, t1, t5
                  lui          zero, 462271
                  blt          a0, ra, 121f
                  auipc        a2, 633845
121:              sub          tp, t6, s10
                  nop
123:              srl          a4, zero, s11
124:              bne          gp, s10, 141f
                  bge          tp, t3, 143f
                  srl          s3, a4, s6
                  bne          a2, s9, 145f
                  xori         a2, s10, -258
                  auipc        t1, 286207
                  nop
                  xori         s11, s11, -1830
                  xor          t1, s3, a5
                  sltu         ra, s6, s0
                  srl          a3, s9, s4
                  bgeu         s0, a0, 149f
                  srl          a5, t4, s5
                  ori          a7, a5, 84
                  or           a5, t0, a0
                  sll          s3, ra, t1
                  sltiu        s11, a7, -943
141:              sltu         a2, s8, a5
                  lui          s10, 954721
143:              ori          t0, tp, -1897
                  srl          s5, t2, s6
145:              srl          s3, s7, t5
                  ori          sp, t3, 542
                  slli         tp, s3, 12
                  bltu         s11, s10, 156f
149:              bne          s1, a0, 153f
                  srai         gp, a0, 19
                  add          t6, s10, s0
                  slti         t3, gp, 1938
153:              addi         zero, t3, -1979
                  addi         t1, s4, 2011
                  slli         t6, s9, 4
156:              xor          s6, s0, s8
                  lui          s3, 1030874
                  auipc        a5, 609196
                  and          tp, s11, tp
                  addi         a6, a3, 1611
                  sra          a7, tp, sp
                  la           t2, sub_3
                  nop
                  add          s3, a4, a6
                  srl          s5, s3, s4
                  lui          a3, 930706
                  addi         t2, t2, -53
                  sltiu        a4, ra, 1188
sub_1_j6:         jalr         s2, t2, 53 #jump sub_1 -> sub_3
                  lui          gp, 602539
                  bge          t6, s8, 164f
                  sltiu        zero, s1, -939
                  blt          zero, a6, 170f
                  and          s11, a4, t0
                  slti         s9, tp, -345
164:              srl          a0, t3, a6
                  bgeu         a1, a2, 166f
166:              xor          tp, s9, s1
                  srai         s2, a5, 23
                  sltu         gp, a7, t6
                  blt          t2, s2, 183f
170:              xori         s0, s6, 1927
                  srl          a6, s11, a4
                  srl          t1, t2, a1
                  auipc        a2, 23471
                  auipc        a6, 459676
                  srl          s6, s5, t4
                  bgeu         a3, a0, 179f
                  srli         gp, t6, 2
                  andi         a1, t1, 258
179:              srl          s0, tp, s9
                  addi         s3, ra, -1737
                  lui          a1, 965076
                  ori          t0, tp, 1868
183:              srli         t3, s11, 1
                  xor          a6, t4, t6
                  add          s1, s10, s6
                  srli         ra, t2, 13
                  bltu         s7, s2, 205f
                  add          a0, s1, s8
                  or           a1, s10, s5
                  sra          s6, t6, ra
                  bgeu         a3, s10, 199f
                  andi         zero, sp, -1165
                  srl          sp, t4, s6
                  xor          sp, s5, t3
                  xor          ra, a2, a2
                  xor          s0, s1, a7
                  sra          t1, a6, s11
                  sltu         t4, s7, sp
199:              slli         s1, t0, 14
                  nop
                  slt          s10, s11, gp
                  add          tp, a0, sp
                  slli         s3, a1, 18
                  slt          t0, t4, t5
205:              bltu         a3, a3, 208f
                  srli         gp, s2, 3
                  srai         s11, gp, 26
208:              lui          t0, 813382
                  beq          a3, t6, 214f
                  nop
                  xor          s3, s3, s11
                  slli         gp, s11, 17
                  srl          s11, s10, s0
214:              srai         s8, s1, 21
                  slti         s10, t1, 1729
                  srl          s1, s4, ra
                  andi         sp, ra, 1160
                  and          a1, s5, a1
                  sltiu        t0, t6, -1606
                  auipc        t2, 310991
                  and          a0, s11, s2
                  sltu         a3, a2, s3
                  srli         s3, s6, 30
                  xor          t3, a3, t6
                  auipc        a0, 234233
                  xori         ra, s9, 315
                  beq          t6, gp, 241f
                  xor          s6, t3, t6
                  and          s9, s11, ra
                  and          t3, s3, zero
                  xor          s10, sp, a5
                  add          s1, s11, s5
                  bltu         gp, s1, 245f
                  auipc        a7, 781090
                  sltu         a7, a5, a3
                  srli         s11, s8, 13
                  lui          a2, 942823
                  srli         tp, a2, 5
                  sra          a0, s11, s10
                  sltiu        s5, ra, -237
241:              sll          s11, s4, t5
                  and          s10, s9, sp
                  slt          s5, s10, gp
                  ori          a5, s10, -1728
245:              ori          s10, s2, 1923
                  sub          a5, a2, zero
                  xor          s11, a5, a6
                  beq          t1, s11, 253f
                  and          gp, s2, s8
                  sll          a2, t2, s10
                  slti         s3, s2, -58
                  auipc        s11, 1018424
253:              slt          s9, zero, a0
                  auipc        s6, 756681
                  andi         s6, s0, 6
                  nop
                  xor          a3, a3, a7
                  sra          a3, s10, t2
                  bltu         s5, gp, 275f
                  sltu         s11, zero, s0
                  bge          s10, a7, 279f
                  bne          s6, s6, 276f
                  srli         s5, t5, 1
                  addi         t2, a4, 769
                  ori          gp, s4, 351
                  andi         s5, s10, -930
                  srl          s2, s5, zero
                  blt          s0, t3, 270f
                  xori         tp, t3, 1433
270:              srl          a2, s2, s5
                  bge          a3, a3, 273f
                  sltu         a4, s3, tp
273:              slti         s6, sp, 2019
                  auipc        t1, 790416
275:              xori         t1, t2, -728
276:              srli         a6, t0, 16
                  xori         t2, s3, -986
                  srli         t6, s5, 21
279:              or           t1, a1, s7
                  bltu         zero, ra, 286f
                  sll          t0, s10, t4
                  srli         t0, a4, 10
                  slti         a5, s8, -1105
                  sub          a3, s3, s1
                  bge          s2, s2, 301f
286:              bltu         a4, s6, 303f
                  addi         tp, s2, 1378
                  lui          t3, 28966
                  slt          t4, s4, s11
                  ori          t2, a1, -104
                  xor          a5, s0, a6
                  srli         a6, a0, 6
                  addi         tp, s3, 254
                  nop
                  bltu         s0, s4, 309f
                  or           a5, s9, s6
                  srli         s6, t2, 8
                  ori          a3, s6, -2023
                  sra          s11, a0, t4
                  sltu         a7, t5, s11
301:              and          sp, t2, s3
                  sltiu        a4, s7, -1058
303:              bltu         gp, t0, 307f
                  sltu         a0, a5, gp
                  srli         t1, s4, 10
                  beq          s5, a6, 321f
307:              or           s10, t5, a0
                  sltu         t0, s3, sp
309:              sub          tp, t3, s5
                  sll          s11, t3, t0
                  srli         s0, a3, 13
                  srai         zero, sp, 3
                  xor          a2, t6, a3
                  addi         s0, s8, -64
                  slti         t1, a2, -619
                  srai         s0, a6, 11
                  add          ra, zero, a3
                  and          t4, t6, zero
                  srl          s8, s4, s5
                  ori          ra, a0, 1875
321:              sub          a1, s0, s3
                  blt          sp, s3, 330f
                  beq          ra, a6, 330f
                  bne          t0, s3, 341f
                  beq          s11, tp, 336f
                  bgeu         s8, a1, 338f
                  xor          s3, s6, s11
                  sll          s11, a6, a4
                  slli         s11, sp, 18
330:              nop
                  bne          a0, s9, 341f
                  bgeu         a3, a3, 349f
                  ori          s9, a2, 733
                  slli         s10, a1, 20
                  beq          s4, tp, 341f
336:              beq          gp, s2, 348f
                  nop
338:              and          zero, s3, a4
                  lui          ra, 526023
                  srai         ra, t1, 8
341:              slti         s1, zero, 1581
                  slli         t6, t0, 21
                  ori          a0, a3, 1392
                  xor          s1, t3, a5
                  add          s11, a0, t6
                  nop
                  and          t2, s3, a5
348:              srl          tp, t2, s2
349:              and          a6, t0, s5
                  add          t2, t3, a6
                  sltiu        t1, t6, 185
                  lui          s8, 681437
                  sra          s2, a7, a2
                  andi         a0, a5, 235
                  beq          t6, a2, 366f
                  ori          t6, s11, 272
                  ori          ra, a5, 143
                  addi         t1, a1, 601
                  bge          a4, gp, 361f
                  auipc        a3, 611994
361:              addi         s8, zero, 1485
                  add          tp, s6, a3
                  sltiu        s3, s4, 469
                  srl          s6, a6, ra
                  xori         t6, a4, 1204
366:              lui          s9, 17366
                  sub          a6, t5, a5
                  bgeu         s3, a4, 378f
                  nop
                  bne          tp, s0, 377f
                  nop
                  and          a6, t3, t1
                  bgeu         ra, s4, 379f
                  lui          s11, 815555
                  slti         s5, s3, 91
                  xor          s3, t0, s0
377:              sll          tp, t1, s1
378:              addi         t6, tp, -413
379:              xori         zero, a5, -51
                  sltu         s6, ra, s8
                  sra          zero, a3, zero
                  xori         t3, s8, 513
                  bne          t6, s7, 397f
                  sltu         tp, tp, s5
                  lui          s9, 191177
                  bltu         t3, a5, 389f
                  and          s5, t3, a4
                  bltu         a6, t4, 392f
389:              bgeu         a6, t3, 398f
                  addi         a3, s4, -1907
                  slt          a5, s2, a0
392:              sub          s8, a3, s4
                  bne          t0, t4, 399f
                  sub          s8, s9, t6
                  xor          t1, s4, s5
                  bne          t2, t6, 410f
397:              sltu         t4, t1, t5
398:              xor          s2, a5, gp
399:              blt          s10, t1, 410f
                  or           s2, s7, a7
                  srai         a0, s1, 18
                  xori         s2, s3, -1542
                  sra          a2, a0, gp
                  slt          t3, s0, gp
                  ori          a5, a2, 1884
                  nop
                  nop
                  or           sp, s3, s2
                  bge          a7, s7, 410f
410:              xori         a0, a5, 493
                  srli         a1, s0, 8
                  slli         s6, s3, 9
                  lw           s2, 4(t5)
                  srai         s9, s5, 13
                  addi         t5, t5, 56
                  slli         s5, a5, 4
579:              addi x26, x18, 0
579:              jalr x26, x26, 0
sub_5:            slli         a6, s2, 4
                  srl          s11, s7, a3
                  addi         t5, t5, -8
                  auipc        ra, 405878
                  srli         s3, t5, 21
                  sw           s2, 4(t5)
                  srai         a7, s8, 13
                  slti         a3, a6, 1860
                  srai         a3, gp, 5
                  la           a0, region_1+226 #start riscv_load_store_rand_instr_stream_0
                  nop
                  sh           ra, 1382(a0)
                  lb           a4, 1065(a0)
                  lb           ra, 1759(a0)
                  sltiu        a5, s4, -928
                  sltu         t4, t3, t1
                  slti         a3, s0, -1098
                  srai         s6, a1, 21
                  lbu          s11, 573(a0)
                  srli         zero, s7, 3
                  slt          t4, s0, a5
                  lb           t1, 957(a0)
                  addi         ra, a4, -140
                  sw           a6, 890(a0)
                  lbu          s0, 963(a0)
                  sb           t1, 79(a0)
                  sb           s6, 1585(a0)
                  lb           s8, 399(a0)
                  sb           t0, 1078(a0)
                  sll          s8, a1, s4
                  lb           sp, 571(a0)
                  add          a5, a5, s2
                  ori          t0, gp, -1918
                  sra          t4, a2, a1
                  lbu          t6, 519(a0)
                  srai         s2, s10, 8
                  sb           a4, -53(a0)
                  andi         ra, s5, 620
                  add          a7, s4, t5
                  xori         a1, a1, -1405
                  lbu          sp, 1000(a0)
                  sb           t3, 1343(a0)
                  lui          s6, 584553
                  sltiu        tp, a0, 174
                  lh           s3, 1260(a0)
                  xor          a2, s9, a3
                  lb           s9, 1053(a0) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_0+1700 #start riscv_load_store_rand_instr_stream_15
                  sra          a6, ra, gp
                  lbu          a4, -730(gp)
                  addi         t0, zero, -562
                  slt          t1, s8, s7
                  lb           a1, -1371(gp)
                  sb           a7, -476(gp)
                  lbu          t0, -1040(gp)
                  lb           a5, 179(gp)
                  lh           a2, -146(gp)
                  slli         a6, zero, 1
                  lb           sp, -1391(gp)
                  slti         s1, s3, 1089
                  lh           s9, -1340(gp)
                  sb           t2, -897(gp)
                  lb           s5, -429(gp)
                  sb           s11, 138(gp)
                  lbu          s6, -1533(gp)
                  lbu          t3, -137(gp)
                  sra          s8, a2, ra
                  lb           t3, -475(gp)
                  lb           s3, -545(gp)
                  or           t0, t0, s0
                  sll          s8, t2, s5
                  sb           a6, 259(gp)
                  lbu          a3, 91(gp)
                  lbu          a7, -521(gp)
                  sra          t2, a0, t4
                  sh           t6, -1364(gp)
                  lui          t2, 212109
                  lbu          t2, -784(gp)
                  xor          t6, t4, s11
                  sra          a3, sp, t1
                  lhu          s2, 284(gp)
                  auipc        s1, 248295
                  lh           a7, -640(gp)
                  lb           a2, -881(gp)
                  lbu          a4, -1685(gp) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_1+1031 #start riscv_load_store_rand_instr_stream_10
                  lbu          zero, 78(sp)
                  lb           t3, 115(sp)
                  andi         t2, t5, -911
                  sb           a5, -132(sp)
                  lh           a7, -173(sp)
                  sub          t3, s11, t0
                  sb           t4, 62(sp)
                  xor          gp, a6, a6
                  lhu          a1, -193(sp)
                  sltiu        a7, a5, 1839
                  srli         s2, a2, 29
                  sltu         ra, t0, s0
                  ori          a3, a0, 363
                  lb           s1, -174(sp)
                  lb           t1, -17(sp)
                  sltiu        tp, a6, 70
                  sh           sp, 77(sp)
                  lbu          tp, -192(sp)
                  and          a4, t5, gp
                  ori          a2, t1, 1823
                  lui          gp, 618944
                  sra          a6, a2, s2
                  sltu         a1, t6, a7
                  lbu          a0, 82(sp)
                  addi         s1, s1, -561
                  lb           a6, -161(sp)
                  slt          a2, s11, ra
                  lh           t4, 143(sp)
                  lb           t2, 10(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1763 #start riscv_load_store_rand_instr_stream_7
                  slli         s6, s4, 3
                  sb           s7, 6(sp)
                  andi         a0, ra, -1945
                  lw           t3, -11(sp)
                  sra          tp, tp, s3
                  lb           t6, -14(sp)
                  lb           a4, -3(sp)
                  xor          s1, sp, ra
                  xori         s2, s4, 1556
                  auipc        zero, 500641
                  slti         s10, gp, 839
                  sh           t6, 13(sp)
                  sub          s0, a2, s11
                  sb           s2, 12(sp)
                  slt          t1, t5, s10
                  sb           a2, -8(sp)
                  nop
                  sb           zero, 10(sp)
                  srl          t6, s5, ra
                  sb           a6, -11(sp)
                  sb           a2, 6(sp)
                  sltiu        t2, s11, -918
                  lbu          a0, 14(sp)
                  lbu          t0, 6(sp)
                  sb           a4, -15(sp)
                  lw           s0, 5(sp)
                  sb           gp, -7(sp)
                  lbu          t1, -2(sp)
                  sb           s8, 15(sp)
                  sb           a1, -10(sp)
                  lui          a7, 107648
                  lbu          t4, -7(sp) #end riscv_load_store_rand_instr_stream_7
                  la           s9, region_1+1781 #start riscv_load_store_rand_instr_stream_13
                  addi         a2, s3, 295
                  lbu          t6, 0(s9)
                  lb           a4, -8(s9)
                  sb           t3, -12(s9)
                  srl          t2, s4, s0
                  lui          t6, 892102
                  lbu          a3, 0(s9)
                  slt          t4, a3, s7
                  xori         t6, a0, -1475
                  ori          t2, a7, -359
                  and          s5, s2, a3
                  sh           sp, -3(s9)
                  sh           s9, -15(s9)
                  lui          t1, 909300
                  srl          t2, gp, s10
                  sll          s11, ra, a4
                  sb           s3, 8(s9)
                  xori         t0, a2, 1628
                  srai         a1, a1, 7
                  lbu          a6, -16(s9)
                  lb           s11, 12(s9)
                  auipc        sp, 993352
                  sra          a7, s9, a2
                  xor          gp, a6, a7
                  xori         a7, s1, 41
                  sra          zero, s4, s5
                  sra          zero, s9, t0
                  xor          s3, s9, t6
                  xori         t1, t4, -466
                  andi         a2, s7, 1803
                  xori         sp, t3, -820
                  lb           a5, -7(s9)
                  xori         a5, a0, -798
                  auipc        t1, 516657
                  lb           a5, -9(s9)
                  slli         a0, s4, 2
                  sw           a1, 7(s9)
                  sh           s11, -15(s9)
                  lw           gp, 3(s9)
                  lh           a1, 5(s9)
                  lb           gp, 10(s9) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+1415 #start riscv_load_store_rand_instr_stream_12
                  lb           a2, 432(sp)
                  slti         a2, a3, 1468
                  lbu          a7, -1314(sp)
                  lh           s6, -417(sp)
                  slli         a6, gp, 30
                  lbu          s9, -775(sp)
                  slt          s5, a3, s3
                  slti         s6, t4, -630
                  sb           zero, -48(sp)
                  sltu         a6, s0, t3
                  and          t4, zero, a6
                  sb           a5, 155(sp)
                  lhu          s11, 71(sp)
                  slt          t1, s3, s7
                  sb           a4, -1012(sp)
                  lb           a5, 427(sp)
                  sll          t1, gp, s3
                  sub          t1, ra, ra
                  lb           a6, -1233(sp)
                  srai         a0, a0, 28
                  lh           s2, 539(sp)
                  lb           ra, -237(sp)
                  sb           a7, 458(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+491 #start riscv_load_store_rand_instr_stream_3
                  sb           s5, 8(sp)
                  nop
                  lbu          tp, 1(sp)
                  andi         a1, s7, 1517
                  sb           s2, 8(sp)
                  sb           s1, 12(sp)
                  addi         s3, s10, -1686
                  lbu          gp, -16(sp)
                  ori          s9, ra, 36
                  sb           t2, 1(sp)
                  nop
                  lb           t0, -10(sp)
                  sb           s11, 2(sp)
                  sb           t2, -3(sp)
                  sb           s1, 14(sp)
                  sb           zero, 4(sp)
                  sltu         a2, t1, s6
                  andi         s3, t0, -1662
                  lb           s8, -11(sp)
                  lhu          s0, -15(sp)
                  sll          a1, t6, s2
                  sub          a6, t3, zero
                  lbu          t2, 14(sp)
                  lb           t4, -12(sp)
                  sb           ra, 2(sp)
                  ori          t4, ra, 823
                  lbu          a7, 8(sp)
                  lbu          t0, 4(sp)
                  andi         t6, s3, 1574
                  lhu          a6, 11(sp)
                  sra          s6, a6, t6
                  sw           a6, -15(sp)
                  add          t1, s6, s0
                  lb           s9, -4(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1799 #start riscv_load_store_rand_instr_stream_14
                  or           s0, a5, tp
                  sll          t4, s4, a1
                  ori          s11, t3, 144
                  sll          s11, t3, t1
                  lb           s3, -1654(sp)
                  srli         t6, zero, 1
                  addi         t3, a1, 1532
                  lb           ra, -897(sp)
                  srli         t6, gp, 25
                  or           a7, s10, t1
                  sb           zero, -1360(sp)
                  srli         t4, zero, 27
                  xor          t0, s7, a3
                  sw           t6, -1459(sp)
                  lbu          s2, -1322(sp)
                  sb           t3, -1777(sp)
                  add          zero, t4, t1
                  sb           t4, -426(sp)
                  sb           gp, 195(sp)
                  add          s5, s11, a4
                  srl          s8, s10, a6
                  lui          t1, 630958
                  sra          s5, t0, s5
                  lb           a5, -1574(sp)
                  lbu          a4, 150(sp)
                  xor          s11, a6, s2
                  sb           s2, -1311(sp)
                  lb           s5, 106(sp)
                  sb           s0, -253(sp)
                  sb           s0, -1113(sp)
                  lhu          s10, -1507(sp)
                  and          zero, s10, s8
                  lbu          t4, -1150(sp) #end riscv_load_store_rand_instr_stream_14
                  la           s0, region_0+572 #start riscv_load_store_rand_instr_stream_5
                  lb           s2, -105(s0)
                  and          a6, a7, s3
                  lb           s11, -50(s0)
                  sb           a0, -125(s0)
                  sb           s11, -164(s0)
                  lb           s9, -129(s0)
                  addi         a7, s4, -239
                  sb           s11, -117(s0)
                  sub          t0, a6, s11
                  addi         s5, a5, 1991
                  ori          s9, s4, -44
                  lhu          s6, 30(s0)
                  lbu          s3, -169(s0)
                  lw           tp, -156(s0)
                  auipc        t4, 474960
                  lb           a5, -194(s0)
                  ori          a7, gp, -816
                  sltiu        a4, t0, -1566
                  slli         a0, s2, 23
                  slti         a7, a4, -1861
                  sltu         s11, s0, a7
                  lui          a6, 896279
                  sltiu        t6, a7, -2041
                  srli         a0, a1, 18
                  sb           a1, 130(s0)
                  add          gp, a6, s7
                  lbu          s9, 91(s0)
                  lh           a4, 128(s0)
                  lb           zero, 29(s0)
                  slti         t2, a0, 365
                  sb           a0, -18(s0)
                  sb           s8, 227(s0)
                  lbu          s8, -99(s0)
                  sra          s9, t3, t1
                  sltiu        tp, a1, 1144
                  sltu         a5, s0, zero
                  lhu          s1, 166(s0) #end riscv_load_store_rand_instr_stream_5
                  la           s8, region_0+816 #start riscv_load_store_rand_instr_stream_9
                  lbu          s5, 16(s8)
                  lbu          s10, 6(s8)
                  andi         s10, tp, 1248
                  sb           s8, 16(s8)
                  sb           gp, 9(s8)
                  sub          a6, ra, a4
                  lbu          s3, 4(s8)
                  lhu          ra, -2(s8)
                  nop
                  lui          a6, 811506
                  sb           t3, 11(s8)
                  sb           tp, -15(s8)
                  slti         s10, s10, 1870
                  lbu          s5, 14(s8)
                  lb           a7, -3(s8)
                  lb           t1, 5(s8)
                  lhu          t1, -4(s8)
                  sw           s2, -8(s8)
                  slli         s6, s3, 12
                  lb           a0, 2(s8)
                  sb           t1, 13(s8)
                  lh           tp, -10(s8)
                  sb           a4, 0(s8)
                  sb           t4, 1(s8)
                  xor          gp, s3, s9
                  sw           s11, -4(s8)
                  slti         t0, t5, 67
                  lbu          a6, 5(s8)
                  xor          a1, s8, s11
                  or           ra, s9, sp
                  lhu          t3, -12(s8)
                  sb           s6, 7(s8)
                  sh           s5, 16(s8) #end riscv_load_store_rand_instr_stream_9
                  la           a7, region_1+1881 #start riscv_load_store_rand_instr_stream_1
                  sub          s9, a4, t0
                  srli         s10, t6, 13
                  slli         a1, t3, 15
                  sra          a4, sp, t0
                  lbu          a2, -186(a7)
                  and          a0, ra, a6
                  and          s6, a4, a3
                  lbu          a1, -168(a7)
                  sb           a0, 118(a7)
                  lhu          t3, -1697(a7)
                  sll          s9, t5, t1
                  lbu          s8, -955(a7)
                  lb           zero, -92(a7)
                  xor          s8, a4, s2
                  lb           s5, -1172(a7)
                  lb           a0, -1120(a7)
                  sub          s10, t4, t0
                  auipc        a6, 407621
                  sll          s1, t1, s11
                  and          t0, sp, s1
                  auipc        t6, 163332
                  lhu          t3, -103(a7)
                  addi         a6, a3, -1404
                  add          tp, a1, gp
                  sb           s9, -1040(a7)
                  sh           s6, 91(a7)
                  lh           s3, -65(a7)
                  lb           a5, -1772(a7)
                  sll          s5, t6, s3
                  sb           t6, -1414(a7) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+401 #start riscv_load_store_rand_instr_stream_11
                  nop
                  sb           s10, 1294(sp)
                  sb           t4, 1374(sp)
                  sw           ra, 875(sp)
                  sub          t6, zero, s6
                  lbu          ra, 290(sp)
                  sll          a3, sp, s2
                  nop
                  lbu          s6, 1162(sp)
                  sw           a6, 7(sp)
                  sb           s8, 592(sp)
                  lb           gp, -249(sp)
                  lbu          t6, 758(sp)
                  sub          t2, a7, tp
                  slli         t2, tp, 25
                  lh           t1, 535(sp)
                  srai         t1, t0, 6
                  sltiu        s5, s8, -1004
                  lbu          t0, 678(sp)
                  lb           a6, 564(sp)
                  lui          s5, 520490
                  sra          t1, a7, t6
                  sb           a2, 1280(sp)
                  sb           a0, 1124(sp)
                  sll          gp, s3, s11
                  lb           a2, 827(sp)
                  srai         a7, s4, 24
                  sltu         s0, s8, t0
                  xor          t6, a2, t0
                  sb           a4, -111(sp)
                  srl          a2, s7, s9
                  lhu          s2, 841(sp)
                  auipc        s6, 706598
                  sb           s1, 964(sp)
                  and          t1, t1, s10
                  andi         t0, s7, 943
                  sb           t5, 864(sp)
                  addi         s5, a3, -233
                  lbu          s8, 1215(sp)
                  sll          a5, t1, s2
                  sb           t4, 1424(sp)
                  and          ra, s11, s3
                  andi         s9, s11, 1437
                  lh           gp, 13(sp)
                  lb           a2, -42(sp)
                  srai         s6, tp, 25
                  lbu          s1, 1284(sp)
                  lb           s8, 1172(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+1033 #start riscv_load_store_rand_instr_stream_4
                  slli         gp, s4, 12
                  srli         t2, s9, 4
                  lb           t3, -62(sp)
                  lh           a7, -5(sp)
                  lb           a7, -6(sp)
                  sb           t1, -63(sp)
                  srai         tp, t0, 1
                  lw           tp, -61(sp)
                  or           a1, s8, s5
                  sb           a5, -28(sp)
                  or           t2, t2, s8
                  lbu          t6, -4(sp)
                  nop
                  lbu          s9, -37(sp)
                  lhu          a1, 11(sp)
                  lb           t1, -20(sp)
                  lb           s1, 46(sp)
                  or           t4, t4, tp
                  lbu          s0, 47(sp)
                  nop
                  sb           t3, 19(sp)
                  lb           a4, -55(sp)
                  sb           t2, -31(sp)
                  lb           a1, -56(sp)
                  sb           s7, -1(sp)
                  andi         t0, a0, 227
                  lhu          a5, 61(sp)
                  ori          a6, gp, 1487
                  lbu          a7, 13(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_1+1034 #start riscv_load_store_rand_instr_stream_2
                  lbu          s10, -1(a0)
                  lbu          a6, -11(a0)
                  lh           s10, 16(a0)
                  lbu          a7, -9(a0)
                  sb           s4, -4(a0)
                  or           zero, sp, s7
                  sb           a7, -7(a0)
                  slt          s2, gp, a0
                  sb           a6, -15(a0)
                  sb           a4, -13(a0)
                  sb           s7, 3(a0)
                  sll          t0, s9, s1
                  lw           s5, -10(a0)
                  sb           s8, 12(a0)
                  add          t3, s11, s11
                  lb           t4, 13(a0)
                  srli         s11, a1, 2
                  lw           t4, -6(a0)
                  sb           t4, -1(a0)
                  and          zero, s9, zero
                  lb           s10, -11(a0)
                  lb           s1, -12(a0)
                  lui          sp, 951223
                  sb           s7, 7(a0)
                  sb           s4, -7(a0)
                  lb           t1, -9(a0)
                  sltiu        a2, tp, -1642
                  lb           s5, -8(a0)
                  sb           sp, 0(a0)
                  sb           s2, 9(a0)
                  sh           s5, -12(a0)
                  lhu          t0, -2(a0)
                  lb           sp, 5(a0)
                  lb           s0, 11(a0)
                  sh           s5, -16(a0)
                  sb           t2, 12(a0)
                  lw           a1, -10(a0)
                  and          t2, zero, t4
                  xor          s6, s10, t0
                  xor          t1, sp, a7
                  sw           a2, 14(a0) #end riscv_load_store_rand_instr_stream_2
                  andi         s10, t0, 374
                  sltiu        gp, a1, 105
                  lui          a1, 870369
                  bge          s6, t0, 22f
                  srai         a0, s2, 25
                  srli         a4, s9, 17
                  bltu         a0, t5, 24f
                  bge          tp, s6, 11f
                  sra          zero, s5, a4
                  srai         t0, a6, 19
                  or           s1, s2, s0
11:               sra          s6, t0, ra
                  andi         ra, t4, -353
                  slti         s6, s0, 75
                  or           gp, t6, s8
                  nop
                  addi         a5, s8, -1474
                  xor          a5, t2, t5
                  blt          s1, gp, 30f
                  bltu         s0, s4, 26f
                  sra          sp, a7, s5
                  and          t3, a0, s3
                  la           s6, region_0+614 #start riscv_load_store_rand_instr_stream_16
                  lb           t0, -51(s6)
                  sb           tp, 19(s6)
                  ori          s0, a2, 1041
                  sw           a5, -14(s6)
                  slti         s2, t3, 691
                  slti         s2, a0, 903
                  nop
                  sb           a6, -48(s6)
                  lbu          a7, -2(s6)
                  ori          s5, t1, -1734
                  lbu          t4, 31(s6)
                  lb           a5, 26(s6)
                  sh           ra, 64(s6)
                  lbu          s3, -33(s6)
                  lbu          s11, -3(s6)
                  sll          a7, s1, s0
                  sb           t4, 17(s6)
                  slli         t1, s8, 2
                  sub          s5, ra, a1
                  sra          s5, a7, t1
                  lb           sp, -57(s6)
                  lb           t1, 28(s6)
                  sb           s5, -17(s6)
                  sb           a5, -33(s6)
                  lb           s5, -57(s6)
                  sll          s0, a2, t6
                  srli         a1, a6, 3
                  lb           t1, -5(s6)
                  sb           a0, 47(s6)
                  lui          s2, 468484
                  sb           t0, 13(s6)
                  or           t2, s9, t4
                  lui          t0, 951464
                  lb           a6, -15(s6)
                  addi         a1, ra, 267
                  sll          t2, s3, gp
                  nop
                  lbu          a3, 32(s6)
                  lb           a3, 7(s6)
                  lb           a0, 61(s6)
                  lh           gp, 40(s6)
                  lh           a6, 14(s6)
                  xori         a2, a6, 1226
                  sll          t0, t2, a3
                  andi         s2, t0, 1820
                  lh           zero, -34(s6)
                  srli         a5, a4, 9
                  lb           a6, 3(s6)
                  lhu          sp, -36(s6) #end riscv_load_store_rand_instr_stream_16
22:               bltu         tp, tp, 42f
                  srli         zero, s6, 25
24:               slli         s6, a6, 12
                  slt          s0, a2, t5
26:               bgeu         s6, a2, 40f
                  slti         s9, s9, 1293
                  sub          s10, s9, a7
                  ori          a6, a7, 1745
30:               add          a5, s4, t0
                  lui          a4, 623026
                  add          zero, t4, sp
                  blt          t0, s3, 40f
                  sub          a4, s10, tp
                  slt          s10, t1, a5
                  sub          s2, a5, s6
                  bne          s6, s0, 41f
                  bge          s10, s6, 56f
                  bgeu         s1, s7, 55f
40:               slli         zero, a6, 5
41:               bge          a4, a2, 54f
42:               srai         t4, a1, 30
                  and          a3, s8, gp
                  slti         t2, a6, -143
                  slt          t0, a4, s2
                  sll          s0, s10, t3
                  add          t2, s11, a2
                  slti         s9, ra, 570
                  xori         gp, s10, -658
                  or           s3, a2, a4
                  blt          a5, zero, 64f
                  bltu         a2, gp, 60f
                  andi         t3, a3, 1068
54:               add          sp, a5, a7
55:               andi         t0, s7, 175
56:               slli         a3, s10, 31
                  sltiu        s8, t3, -1067
                  slt          sp, s8, a0
                  or           a6, s10, s0
60:               bne          t0, a4, 77f
                  ori          s6, a1, 853
                  or           t3, t2, s11
                  sub          s5, s3, s6
64:               add          sp, a7, a7
                  srl          a7, tp, a4
                  andi         s6, s1, -85
                  blt          s2, t0, 68f
68:               bge          gp, tp, 75f
                  srli         t1, t6, 9
                  slti         s0, t5, 230
                  andi         t1, s5, -1718
                  slli         s3, t1, 10
                  sra          s3, a0, zero
                  bltu         t6, s1, 94f
75:               addi         a2, s4, -108
                  and          s10, t6, t0
77:               lui          s6, 608314
                  nop
                  lui          gp, 496580
                  sll          a4, ra, t5
                  xori         sp, t2, 1379
                  srl          s6, s3, t4
                  sltu         zero, t1, s8
                  blt          gp, t1, 88f
                  lui          t4, 141156
                  andi         a3, a5, 1952
                  srl          s2, s7, s7
88:               slli         s0, s0, 19
                  beq          t4, s9, 106f
                  bge          t5, a2, 96f
                  lui          ra, 526564
                  sltiu        t0, s11, -976
                  bgeu         s6, s0, 101f
94:               beq          s5, s4, 110f
                  auipc        gp, 530148
96:               bltu         t4, s6, 99f
                  slt          sp, s7, a7
                  xor          a4, gp, t4
99:               bltu         ra, s2, 111f
                  auipc        a0, 1031978
101:              sltu         s11, zero, a7
                  beq          s9, t6, 116f
                  sltiu        a5, tp, -1819
                  and          a0, t2, s6
                  nop
106:              nop
                  slli         a2, a7, 5
                  addi         tp, a1, 102
                  slli         s10, s0, 10
110:              bge          a1, ra, 114f
111:              and          a4, s3, t4
                  bgeu         t5, a2, 131f
                  lui          gp, 449496
114:              andi         s10, sp, -1501
                  bge          s10, s8, 123f
116:              slt          s10, a0, t3
                  bltu         s2, a2, 128f
                  bne          s10, a3, 119f
119:              xor          s10, a3, a3
                  sra          a7, s6, s2
                  add          s5, sp, a0
                  slti         t1, t4, 536
123:              beq          t5, s1, 130f
                  srl          s2, s6, a5
                  xor          s9, a0, a2
                  xori         a7, ra, -1660
                  bltu         a2, s3, 139f
128:              beq          s7, zero, 135f
                  bltu         s4, a7, 137f
130:              slli         s10, s9, 2
131:              xor          t4, t6, sp
                  blt          t5, s10, 148f
                  sll          tp, a5, s4
                  and          s3, t1, s4
135:              addi         a1, s8, -1031
                  sltu         t3, a3, a3
137:              andi         s1, s6, -1658
                  addi         s0, ra, -1601
139:              bgeu         t6, s4, 152f
                  ori          s2, a2, -240
                  auipc        a1, 397389
                  sltu         s5, s7, zero
                  sltiu        s10, zero, -3
                  bge          a5, a6, 158f
                  srli         gp, s6, 19
                  add          a4, s2, s7
                  bne          s2, s10, 160f
148:              nop
                  or           t3, zero, t5
                  nop
                  sltu         sp, a2, a6
152:              lui          s1, 756589
                  nop
                  nop
                  blt          s11, a0, 159f
                  bgeu         t4, a6, 160f
                  nop
158:              nop
159:              srai         s5, s5, 19
160:              srl          a5, a1, s2
                  slti         s10, t5, 1957
                  xor          t0, a3, a2
                  add          s8, s2, s3
                  bltu         ra, s5, 184f
                  srai         a5, s11, 1
                  bltu         s3, a1, 170f
                  slti         a7, s5, 396
                  bgeu         t1, s7, 176f
                  sub          a5, s4, s3
170:              auipc        s6, 669821
                  bgeu         s6, s9, 178f
                  slli         s8, s9, 12
                  addi         a4, a2, -1781
                  srl          a2, t4, a7
                  bgeu         s5, s0, 192f
176:              sltiu        tp, s9, 622
                  srli         a6, s7, 26
178:              addi         a3, a6, 792
                  nop
                  srai         a2, s1, 6
                  sll          tp, s9, a3
                  add          a6, zero, s2
                  bge          s0, t1, 202f
184:              slli         s5, s8, 7
                  srli         t3, gp, 21
                  sltu         s2, s4, t6
                  beq          s8, a4, 203f
                  bgeu         ra, gp, 196f
                  ori          sp, s6, 217
                  auipc        a7, 978470
                  addi         s2, s11, -1531
192:              bge          gp, a5, 203f
                  sub          t4, t1, a3
                  sll          s6, s11, tp
                  srai         s3, s10, 5
196:              beq          ra, a7, 214f
                  ori          tp, a1, 862
                  sra          t3, s9, s5
                  or           a2, s8, t0
                  add          s11, s5, a6
                  auipc        tp, 235153
202:              and          s3, a2, s2
203:              auipc        a3, 771830
                  bne          s7, a7, 208f
                  xori         s9, a0, 960
                  slt          s0, t1, s9
                  sltu         s6, s8, s0
208:              bgeu         t4, tp, 227f
                  addi         s5, a4, -1785
                  bltu         t3, t2, 228f
                  sra          s8, s0, a2
                  andi         a2, t1, -448
                  slli         t4, a4, 16
214:              addi         a2, t1, -1182
                  auipc        s11, 904687
                  bge          t6, gp, 230f
                  andi         t3, s10, 2046
                  slli         a0, s3, 18
                  bne          t0, s3, 231f
                  sll          gp, t5, s11
                  xori         a3, s5, 1428
                  sll          t4, sp, s3
                  slt          t2, s3, t0
                  slli         a1, s3, 15
                  srai         gp, s4, 2
                  xor          t3, s3, tp
227:              add          tp, a7, sp
228:              bne          s6, s6, 234f
                  add          s10, gp, a6
230:              sltu         a1, t3, s1
231:              beq          t5, gp, 248f
                  sub          s1, a4, zero
                  sltiu        a2, t4, 610
234:              bgeu         a7, t4, 254f
                  srli         t3, s6, 1
                  bgeu         s1, zero, 239f
                  sltiu        t2, a1, 531
                  and          s3, s4, tp
239:              nop
                  xori         s2, s10, -1117
                  auipc        a4, 820938
                  slti         t0, s10, 1628
                  sub          sp, s3, zero
                  bgeu         s0, s9, 256f
                  beq          s11, s11, 265f
                  ori          s1, s2, 1191
                  lui          gp, 637959
248:              srli         a5, s4, 14
                  sub          zero, s5, s6
                  blt          sp, t0, 258f
                  xori         sp, gp, 1813
                  bgeu         t3, s8, 268f
                  or           t2, t2, a2
254:              andi         a2, a0, -434
                  or           t3, s5, s10
256:              add          a3, ra, a2
                  srai         t2, s11, 29
258:              beq          s5, a1, 271f
                  and          t2, s2, tp
                  xor          a2, a5, s10
                  xor          t6, s7, ra
                  bge          s6, t2, 279f
                  sltiu        tp, t4, 66
                  ori          t2, t3, 1849
265:              xori         t4, a5, 1507
                  sll          s6, a1, t0
                  sra          t3, t0, t1
268:              slt          s1, a6, s7
                  xor          a5, s2, t2
                  lui          sp, 420462
271:              slt          s0, s6, a5
                  addi         gp, sp, 1621
                  slli         t2, s2, 15
                  sltu         zero, sp, a6
                  srli         ra, s6, 7
                  and          s3, s10, s6
                  andi         sp, t0, 1735
                  slti         a2, s8, -1597
279:              slli         s9, s11, 11
                  sra          t0, s10, s11
                  sll          t3, t5, t3
                  bge          s6, s8, 300f
                  sll          a6, s0, s6
                  lui          a2, 132476
                  slt          s11, s6, t5
                  sltu         a4, a6, s4
                  bgeu         ra, zero, 290f
                  nop
                  add          s10, s6, s7
290:              beq          t6, t4, 310f
                  xori         a6, s5, -755
                  slli         zero, s2, 11
                  beq          s10, s7, 312f
                  bne          a3, a7, 305f
                  bltu         a1, a6, 302f
                  and          zero, t2, a0
                  sub          t1, s10, s4
                  slt          ra, a5, a2
                  xor          a1, t5, a2
300:              sltu         a6, a3, s2
                  bltu         s9, t5, 305f
302:              bgeu         tp, s1, 319f
                  sltu         s1, ra, t3
                  addi         a7, t1, -252
                  la           a3, region_1+650 #start riscv_load_store_rand_instr_stream_8
                  sb           a3, -5(a3)
                  lhu          a2, -8(a3)
                  lbu          s2, 5(a3)
                  sb           t3, -7(a3)
                  lh           t0, 6(a3)
                  and          s11, s7, zero
                  andi         s3, s1, 869
                  sub          t2, a7, ra
                  nop
                  nop
                  add          t4, a4, s1
                  lbu          zero, 4(a3)
                  lb           a6, -3(a3)
                  slli         t4, s8, 19
                  sb           t5, -5(a3)
                  auipc        gp, 467494
                  lbu          s2, -5(a3)
                  addi         s11, s1, 351
                  sh           a0, -10(a3)
                  lh           a5, -14(a3)
                  sra          s11, sp, s10
                  sra          s2, t1, s8
                  slt          t0, a2, t4
                  sltu         a6, gp, s9
                  srli         t3, a6, 22
                  sub          a0, t2, s0
                  lb           a6, 5(a3)
                  sb           t4, -7(a3)
                  sb           s2, -15(a3)
                  or           t3, a1, s7
                  lb           s8, 6(a3)
                  xori         s11, s0, 205
                  lb           t3, 3(a3)
                  lb           s8, -14(a3)
                  sb           s7, 11(a3)
                  sb           s6, -13(a3)
                  sub          s5, a3, s10
                  lb           s2, -2(a3)
                  srli         s8, zero, 30
                  sb           a7, -4(a3)
                  sub          s1, a4, a5
                  sh           tp, -8(a3)
                  lbu          t3, 7(a3)
                  sub          s10, a5, t6
                  lb           a6, 15(a3)
                  and          s0, t1, s9
                  slti         t4, s8, -343
                  slt          a6, a4, s1
                  sub          s10, s1, s0
                  lb           s11, 5(a3)
                  lb           t6, 12(a3) #end riscv_load_store_rand_instr_stream_8
305:              bgeu         s8, s2, 319f
                  addi         t0, s9, 681
                  bgeu         s8, a4, 314f
                  slti         a4, s3, 779
                  slti         a0, a0, 1035
310:              add          s10, s2, a0
                  sub          s1, s7, s6
312:              sub          t4, a4, s4
                  srli         ra, s6, 17
314:              srli         s2, a5, 10
                  and          a1, t3, s5
                  sltu         a0, a7, a0
                  slt          s10, s0, a2
                  xori         zero, a6, -819
319:              or           s5, s0, t0
                  srai         s9, t5, 23
                  bne          s9, tp, 337f
                  sll          t4, gp, s5
                  sub          a6, zero, s10
                  slli         s0, a5, 10
                  blt          a1, s3, 333f
                  slli         a0, t3, 8
                  sltu         tp, s6, zero
                  nop
                  sltu         a2, s10, s1
                  ori          a7, s3, 1211
                  sra          a3, a5, s8
                  xori         t2, a5, 1343
333:              srli         s6, s0, 15
                  sltu         s8, s10, a6
                  slli         zero, s10, 11
                  slti         t3, a7, 1356
337:              blt          s5, s4, 338f
338:              nop
                  nop
                  srai         t2, a4, 10
                  slli         s6, s1, 0
                  beq          s1, t4, 354f
                  add          t3, s0, s0
                  sra          t0, s3, a6
                  addi         t1, t0, -1614
                  beq          gp, t6, 354f
                  addi         a7, s0, -1689
                  ori          t1, a5, 250
                  xori         t3, t3, -1887
                  xor          s6, a4, t4
                  sltu         s11, ra, s4
                  srli         a2, t3, 8
                  slt          gp, s0, a4
354:              bge          s8, a3, 367f
                  lui          t4, 361091
                  sra          s1, s9, s10
                  sub          a5, t0, s2
                  xor          a1, zero, tp
                  auipc        a2, 572235
                  bne          s1, a3, 378f
                  srli         s9, s3, 12
                  srli         a6, ra, 8
                  auipc        t1, 141389
                  beq          t1, s4, 378f
                  bne          s11, t0, 371f
                  srai         a2, s6, 6
367:              slli         t3, a2, 17
                  and          t6, tp, s4
                  bne          s9, t4, 373f
                  slli         tp, t5, 9
371:              srli         zero, gp, 15
                  sltiu        t6, t4, 767
373:              slli         t3, s6, 17
                  blt          t1, a2, 393f
                  sub          s10, t0, s11
                  bltu         s2, t1, 380f
                  auipc        a5, 595730
378:              bge          ra, s6, 382f
                  ori          s8, sp, -988
380:              xor          a1, ra, t1
                  bge          a6, s7, 388f
382:              blt          t6, zero, 398f
                  xor          gp, t3, t1
                  sltiu        a6, a6, -2035
                  sltu         a3, ra, s8
                  and          s10, s6, t2
                  bne          ra, t3, 391f
388:              sub          s1, s6, t5
                  nop
                  blt          s0, s11, 393f
391:              sub          s3, t4, a0
                  bge          t4, a7, 406f
393:              bge          a6, a6, 407f
                  nop
                  sltu         sp, s10, zero
                  blt          t4, s1, 414f
                  andi         a6, ra, -1267
398:              andi         s3, tp, 1450
                  xor          s5, s5, ra
                  bltu         a5, s4, 404f
                  sltiu        t1, s7, -1673
                  slti         t0, tp, -2038
                  srli         t3, s6, 12
404:              add          s10, zero, s3
                  sltu         s5, a3, a3
406:              ori          s8, s10, 301
407:              bltu         a4, s10, 414f
                  addi         zero, s9, -461
                  slti         ra, tp, 632
                  slti         s6, s11, 670
                  or           t1, tp, t3
                  andi         s0, ra, -960
                  bltu         s8, a3, 431f
414:              slti         a5, t6, -1602
                  ori          t0, ra, 1571
                  srli         s2, s7, 27
                  sub          gp, ra, s4
                  add          s5, t3, t0
                  xor          ra, a4, t1
                  sltiu        tp, s0, -1546
                  xor          a1, t4, sp
                  bge          sp, s4, 430f
                  xor          t2, t1, a6
                  srli         s8, s9, 15
                  beq          a0, s9, 429f
                  ori          t0, a6, 1908
                  blt          zero, a4, 428f
428:              sra          a6, s3, tp
429:              xor          t3, s3, a3
430:              bne          s11, a3, 447f
431:              slt          gp, a4, a6
                  ori          a6, s3, 1129
                  addi         t4, t5, 1752
                  slti         t0, s10, -187
                  nop
                  srli         s6, sp, 14
                  and          a1, a7, a7
                  xori         a2, t0, 1109
                  srai         a2, a7, 12
                  srai         s2, t6, 19
                  ori          t1, t4, -928
                  ori          a4, t5, -1609
                  srli         s11, a0, 26
                  xori         s3, s11, 403
                  sll          tp, ra, s5
                  auipc        s8, 437382
447:              sra          t3, sp, s8
                  xori         zero, a7, -1180
                  nop
                  addi         t1, s3, 888
                  beq          t4, s9, 458f
                  add          t2, gp, a7
                  srl          ra, s3, a2
                  nop
                  sltu         a1, a3, t6
                  srl          zero, a5, t4
                  beq          t3, sp, 473f
458:              slt          t1, s8, t0
                  srai         a1, a6, 1
                  sra          s8, a4, t1
                  sltu         t0, sp, a6
                  auipc        a5, 996285
                  auipc        a6, 816993
                  sra          s1, t0, s11
                  nop
                  srli         s9, a1, 9
                  lui          t3, 726268
                  bne          t2, t4, 488f
                  andi         t1, s1, -1549
                  sra          t2, sp, s0
                  srli         a1, gp, 4
                  bge          a3, s7, 491f
473:              nop
                  sltiu        s11, s9, -1137
                  sltu         tp, gp, s8
                  xor          a7, sp, s3
                  slli         s8, zero, 4
                  lui          a4, 358122
                  bltu         tp, sp, 487f
                  xor          s2, s6, a5
                  sltu         a3, a6, a5
                  sub          t6, a4, s8
                  beq          a6, t4, 487f
                  ori          t2, s5, -1775
                  auipc        gp, 541426
                  sltiu        tp, s1, 1931
487:              ori          s10, s4, 1817
488:              xori         ra, s5, -1449
                  slt          zero, s2, s3
                  blt          a6, t1, 503f
491:              srl          s6, s9, s6
                  bge          s10, s9, 503f
                  bgeu         a2, s0, 506f
                  slli         t1, t5, 21
                  andi         s2, t1, 2034
                  sltu         s0, a7, s8
                  slti         a6, tp, 747
                  srai         s9, a7, 19
                  srli         zero, a1, 3
                  xori         a2, a3, -941
                  or           s11, s0, s6
                  srl          t2, s5, a7
503:              bgeu         s6, a7, 522f
                  bge          a5, t6, 510f
                  srai         tp, sp, 28
506:              auipc        a7, 185454
                  blt          t4, a1, 519f
                  ori          ra, s5, 1919
                  xori         t1, a1, 1779
510:              sub          a2, s8, a2
                  bltu         t2, t3, 519f
                  add          a0, ra, t6
                  sra          s1, zero, s3
                  ori          s10, tp, 1806
                  add          s6, s10, s3
                  slti         ra, s4, -1799
                  sra          a6, t1, s4
                  srl          a7, s9, ra
519:              and          sp, ra, s10
                  srli         t3, t6, 21
                  bge          s11, a4, 541f
522:              add          s10, t6, a3
                  srli         s6, ra, 3
                  sltu         s0, a0, a0
                  or           s0, s6, ra
                  blt          s4, a7, 533f
                  sltu         s3, t4, gp
                  bltu         s8, t6, 545f
                  slti         a6, s9, -1061
                  sra          s9, a6, s5
                  ori          a3, t5, 1696
                  nop
533:              srli         a3, s9, 30
                  sltiu        t4, s0, 229
                  bge          gp, a1, 547f
                  auipc        sp, 379329
                  srli         t4, gp, 14
                  and          a4, s8, s4
                  slt          s11, s11, t4
                  nop
541:              sra          tp, t1, s7
                  andi         s8, a3, -396
                  slti         s3, s8, -1016
                  bne          t3, s2, 551f
545:              bne          s2, a6, 549f
                  slli         s10, s8, 8
547:              slt          a0, a6, t3
                  xori         s1, t0, 755
549:              beq          t6, a5, 556f
                  beq          sp, s6, 566f
551:              sltiu        t6, s4, 634
                  bltu         a4, t0, 569f
                  lui          t0, 1023544
                  sll          t4, zero, t3
                  nop
556:              sll          a0, s8, s11
                  bgeu         t3, t1, 575f
                  add          a6, s6, t6
                  sra          a3, a3, a0
                  bgeu         a7, sp, 572f
                  sub          ra, t4, s8
                  blt          s8, a6, 565f
                  slt          s9, s9, s3
                  bgeu         sp, a2, 572f
565:              srai         a4, a2, 8
566:              sltiu        a2, zero, -290
                  bne          s4, t6, 585f
                  sra          sp, s7, a4
569:              lui          t2, 841787
                  add          zero, s11, s10
                  nop
572:              add          a3, a3, tp
                  sub          a0, a7, sp
                  or           s5, a1, t4
575:              sra          a3, s11, s6
                  srl          t6, s11, s4
                  bgeu         t1, t3, 591f
                  auipc        a2, 212482
                  sub          s0, a2, s6
                  sltu         a0, s5, t3
                  auipc        s11, 350661
                  srli         a7, a2, 8
                  addi         a2, a2, 1507
                  slt          zero, t3, t2
585:              srli         s0, t2, 15
                  xori         a5, ra, 530
                  sltu         s5, s2, t3
                  sltu         t0, s5, s5
                  bgeu         a6, tp, 590f
590:              sll          zero, s4, s6
591:              bge          s11, s3, 603f
                  blt          a0, gp, 603f
                  srai         t2, s4, 31
                  bge          t1, t6, 600f
                  sra          a7, t2, t4
                  sltiu        s9, s10, -1198
                  andi         a7, t3, -890
                  srl          a7, t0, tp
                  lui          a6, 428369
600:              slt          t0, s6, gp
                  auipc        s3, 131770
                  blt          t0, t5, 621f
603:              slt          ra, t5, a5
                  sub          s8, a5, s3
                  sra          s10, a6, t5
                  xor          s6, sp, a7
                  or           a7, s0, t4
                  sub          tp, s6, a3
                  or           a6, a2, t3
                  addi         t3, a6, 1817
                  sra          tp, a1, s0
                  and          t6, s4, s2
                  bne          s5, s6, 617f
                  nop
                  sub          t2, zero, t5
                  addi         a2, s4, -634
617:              auipc        a3, 814530
                  add          s1, t1, t0
                  ori          ra, s2, -1203
                  nop
621:              srai         a4, a3, 10
                  lui          ra, 884566
                  sub          s6, a7, a4
                  sltu         a3, t2, s6
                  auipc        sp, 54685
                  addi         t0, s10, -165
                  bne          gp, t3, 646f
                  ori          s10, s10, 2018
                  slt          t0, a6, s5
                  slti         a1, a5, 1412
                  sltiu        t2, s6, -784
                  bge          s10, t0, 636f
                  sltiu        s9, t0, 559
                  sltiu        tp, t4, 705
                  beq          t0, a7, 648f
636:              sltu         s0, s9, s4
                  or           t0, t5, s11
                  lui          s3, 727457
                  bltu         s11, gp, 643f
                  sltu         s10, s3, a3
                  xor          a4, s0, a1
                  sltiu        sp, tp, -614
643:              sltu         t0, a1, t3
                  bltu         sp, tp, 657f
                  blt          a5, t1, 661f
646:              bge          s1, a3, 660f
                  slti         s5, s9, 1396
648:              srai         ra, s6, 17
                  srl          t2, t4, t6
                  and          s10, t2, s10
                  bge          t3, a4, 659f
                  slti         t6, gp, -1806
                  beq          s2, a6, 673f
                  add          s10, t2, a3
                  beq          zero, t1, 662f
                  andi         t1, a4, -722
657:              nop
                  lui          a4, 305595
659:              sra          a6, s9, s0
660:              xori         a7, t5, -1385
661:              srl          s0, ra, s2
662:              slli         s10, gp, 23
                  beq          zero, t5, 680f
                  slti         s1, t6, -1697
                  sra          a6, s2, s8
                  addi         s11, s8, 664
                  slt          s10, a4, zero
                  sltu         a1, t0, s2
                  bge          sp, s8, 689f
                  xor          a7, s8, s8
                  srai         sp, s9, 20
                  and          s2, t0, s9
673:              bge          t3, a5, 681f
                  auipc        a7, 665373
                  sub          s10, s10, s2
                  slti         t2, s11, 1123
                  and          t3, s5, s7
                  ori          t4, t4, 663
                  sra          a3, a7, s4
680:              lui          zero, 667648
681:              beq          s6, s5, 692f
                  sub          t1, zero, s9
                  ori          a6, s11, 1093
                  sll          t3, s4, s2
                  add          sp, a0, s4
                  or           t2, s2, s1
                  bne          t2, t2, 699f
                  andi         t0, s11, -2044
689:              bgeu         s2, a1, 707f
                  srai         tp, s7, 21
                  sltiu        s6, s11, -1914
692:              blt          s11, s1, 708f
                  sub          a4, s5, s1
                  srl          sp, zero, tp
                  bge          sp, a6, 712f
                  srai         gp, t2, 3
                  slti         a1, s10, 1655
                  blt          a0, t4, 705f
699:              add          t1, t0, s11
                  sltu         s11, s1, s10
                  ori          a1, s10, -1828
                  bgeu         a4, s4, 715f
                  srai         tp, s5, 6
                  sll          t4, t4, t6
705:              auipc        a4, 983197
                  sra          t2, t5, t6
707:              and          t2, gp, a2
708:              xori         t6, t6, 19
                  addi         t1, s6, 721
                  sll          t4, t1, s6
                  sra          s0, t3, a4
712:              srli         t3, s7, 15
                  slt          s5, a0, t5
                  bgeu         a4, s6, 728f
715:              xor          ra, t6, tp
                  slt          s3, tp, s7
                  add          a2, s11, t6
                  and          t0, a2, a0
                  slli         t4, a7, 26
                  addi         a3, tp, -982
                  slt          s9, t6, t2
                  xori         a4, t0, -695
                  slt          a2, t5, ra
                  bltu         t6, s10, 732f
                  addi         s8, sp, -875
                  xori         s1, zero, -1137
                  sltiu        t3, a1, 1666
728:              slti         t3, t4, 537
                  srai         s8, a4, 9
                  srli         s8, ra, 24
                  auipc        s1, 522294
732:              xor          t3, s5, a4
                  beq          s8, s2, 741f
                  andi         t0, a4, 1541
                  bltu         s4, s7, 755f
                  srl          ra, t1, sp
                  sltu         a6, s11, s2
                  add          ra, a2, t2
                  srli         a7, t5, 8
                  sltiu        s0, a3, 237
741:              sra          t6, t2, a7
                  sra          s11, ra, a1
                  srli         s1, t5, 4
                  srl          a1, s10, s1
                  sltu         s9, a6, ra
                  beq          s8, t4, 754f
                  bge          s3, s4, 750f
                  xori         a6, ra, 137
                  or           t0, a7, gp
750:              auipc        s9, 782883
                  sub          s1, t2, ra
                  sll          t2, a1, t0
                  sra          a5, s3, t0
754:              slli         s11, t2, 3
755:              andi         t6, s6, -667
                  add          t1, t6, t6
                  bne          s10, tp, 764f
                  bltu         t3, t1, 778f
                  srai         s1, s10, 7
                  lui          s5, 162656
                  srl          t4, s7, a4
                  or           sp, gp, s2
                  sra          t1, a1, s4
764:              andi         ra, t1, 42
                  addi         t0, t3, -858
                  bge          gp, a2, 785f
                  srai         a5, zero, 11
                  srai         a7, a5, 10
                  nop
                  nop
                  beq          t5, t6, 783f
                  ori          a2, s9, 593
                  or           s6, t4, sp
                  auipc        t1, 687311
                  bgeu         s9, s3, 779f
                  ori          a4, zero, -1386
                  addi         s11, s10, 708
778:              sll          t6, tp, s1
779:              sub          t4, s5, t5
                  sll          t3, s7, ra
                  sll          t1, s2, zero
                  slt          s11, ra, s10
783:              bne          s6, a7, 787f
                  slti         zero, zero, 1039
785:              xori         s11, t5, -1779
                  bne          t1, s8, 800f
787:              bge          zero, gp, 806f
                  slti         gp, t2, 228
                  xori         a4, gp, 1497
                  bne          zero, t0, 806f
                  lui          a3, 15516
                  bltu         t2, t5, 805f
                  srli         a4, t4, 0
                  bgeu         s0, s10, 795f
795:              lui          a1, 280669
                  srli         s6, zero, 31
                  and          s6, s10, s5
                  ori          s3, s5, 867
                  srai         t4, t1, 24
800:              and          a4, s10, s5
                  bltu         gp, s9, 808f
                  xori         s6, s5, -918
                  beq          s5, s10, 821f
                  and          s1, s0, s6
805:              sub          a4, sp, s4
806:              andi         t2, s7, 779
                  srli         ra, a0, 3
                  sll          s2, s10, t3
                  sub          a3, a4, t5
                  nop
                  srai         t3, sp, 24
                  add          t1, a1, t3
                  slt          sp, ra, s1
                  bne          s1, t6, sub_5_j10 #branch to jump instr
                  or           s11, s11, t6
                  sub          gp, s7, s9
                  auipc        a2, 672165
sub_5_j10:        jal          s2, sub_7 #jump sub_5 -> sub_7
808:              bgeu         s1, t0, 825f
                  andi         t0, s0, -306
                  sll          sp, gp, a7
                  sub          sp, ra, s8
                  sltiu        s1, s1, 1417
                  or           sp, a3, tp
                  addi         t1, s5, 832
                  add          a3, s4, t3
                  andi         t2, s6, 511
                  sltiu        a1, s3, -1972
                  auipc        a5, 583441
                  sltiu        zero, t3, -1234
                  srl          sp, s5, a1
821:              auipc        a7, 821610
                  or           a4, t1, s10
                  auipc        a7, 188183
                  sltu         zero, tp, tp
825:              xor          a1, t5, s4
                  or           sp, a3, s7
                  ori          a7, tp, 210
                  nop
                  addi         a1, a7, -1521
                  bltu         a7, t1, 834f
                  beq          s0, s5, 837f
                  xori         s3, a2, -2024
                  xori         a1, a7, 879
834:              bge          s8, t1, 838f
                  sll          s3, zero, s11
                  bne          t5, t4, 849f
837:              sra          t3, ra, s11
838:              and          tp, sp, a0
                  lui          s2, 217431
                  add          s1, a5, a4
                  sra          a3, zero, t1
                  nop
                  lui          gp, 367485
                  sltiu        s3, zero, -641
                  srl          s5, s1, s7
                  sub          a0, a6, ra
                  sltu         gp, a4, t6
                  xori         s6, s4, -2015
849:              addi         t6, s6, -906
                  bne          sp, s0, 857f
                  bgeu         ra, s10, 862f
                  sub          s6, t5, a7
                  xori         s9, t4, -306
                  nop
                  and          t2, s4, a5
                  slt          s11, gp, s1
857:              srai         a1, t4, 12
                  add          s8, s10, s8
                  sltu         s0, t4, s10
                  beq          t3, a5, 868f
                  addi         a0, t3, -180
862:              addi         ra, s10, -1566
                  blt          s0, zero, 882f
                  srli         t6, gp, 12
                  bltu         sp, t1, 879f
                  auipc        zero, 513676
                  nop
868:              srl          s5, s8, a7
                  bgeu         s1, a3, 875f
                  nop
                  xor          t4, a3, t0
                  slti         s8, t4, -255
                  xor          t3, s5, s4
                  lui          zero, 164301
875:              bgeu         zero, s10, 887f
                  ori          t6, s9, 882
                  auipc        t6, 408079
                  srli         zero, s8, 12
879:              beq          t1, a3, 893f
                  xor          gp, s10, gp
                  bgeu         s6, a5, 894f
882:              lui          a1, 642291
                  sltu         s9, a3, s10
                  auipc        a0, 285688
                  srai         t4, t6, 18
                  sra          a2, a2, t0
887:              srli         tp, s11, 11
                  slli         a5, s0, 26
                  srl          s8, t1, sp
                  and          a6, a5, s5
                  beq          t3, s4, 909f
                  bne          s5, a5, 904f
893:              add          a4, a5, s2
894:              srl          a2, s11, t1
                  slt          t1, a3, s1
                  andi         t1, t6, 1904
                  sll          a3, a5, a0
                  srl          t1, s0, s8
                  and          zero, s0, s2
                  add          s10, a2, s1
                  sub          s10, a5, a0
                  srli         t6, t3, 4
                  srai         s3, a7, 27
904:              sra          t6, s5, t1
                  sltiu        t0, a1, 1315
                  srli         ra, a2, 17
                  nop
                  srai         s9, t3, 10
909:              slli         t3, sp, 19
                  sub          a3, a4, a3
                  and          s1, a4, a5
                  bltu         s4, a7, 915f
                  sub          a3, s5, a1
                  bge          s3, tp, 922f
915:              xor          a6, a5, s0
                  slli         a7, gp, 5
                  bge          s0, s6, 921f
                  addi         s11, t2, -1528
                  sltu         ra, a7, gp
                  sll          gp, a5, s7
921:              srl          gp, s0, t6
922:              srl          s6, a6, t6
                  bgeu         s9, a1, 924f
924:              srai         t1, s3, 15
                  slti         t1, s9, -262
                  nop
                  slli         t1, s9, 5
                  sltu         a7, a3, s6
                  srai         a0, t1, 2
                  xori         s0, s3, -1930
                  blt          a3, t5, 935f
                  bgeu         t6, t2, 951f
                  slt          s2, tp, s9
                  bne          s5, s4, 954f
935:              sll          t1, t0, t3
                  sub          a2, s8, a0
                  sub          t0, zero, s7
                  srai         ra, t1, 29
                  xori         t3, t5, -1561
                  sltiu        a6, s8, 1191
                  sltiu        s6, s10, -1639
                  or           sp, s3, ra
                  nop
                  blt          s0, gp, 962f
                  bne          s1, s2, 962f
                  or           tp, s10, s2
                  xor          ra, a4, t6
                  and          t6, a1, s7
                  nop
                  sltu         s3, tp, a5
951:              ori          a4, s2, -1032
                  bge          sp, s11, 972f
                  or           t4, t2, t5
954:              ori          a7, a1, -1637
                  add          s9, s2, s3
                  xori         s8, s4, 1561
                  or           s3, t1, zero
                  srai         t3, t6, 6
                  or           a1, a4, a3
                  or           sp, ra, a6
                  srli         s5, s9, 16
962:              srl          a1, a0, gp
                  auipc        a7, 142872
                  slli         s6, a5, 17
                  srli         s11, s6, 12
                  srai         s3, a0, 1
                  add          a0, t1, s2
                  srl          s2, t5, a4
                  sll          t2, a6, sp
                  sub          s3, t2, s8
                  nop
972:              or           t3, t0, s9
                  sub          gp, a7, t2
                  ori          zero, s1, 1122
                  srl          s10, a0, s1
                  sll          t0, a4, sp
                  ori          a4, a3, 127
                  sltu         s11, s3, s4
                  bne          a7, s5, 995f
                  blt          s3, sp, 988f
                  and          s2, t1, s6
                  sub          t4, t0, t4
                  srl          s2, a1, a3
                  srl          gp, s9, sp
                  auipc        a7, 945305
                  bgeu         a3, s8, 993f
                  bgeu         s11, gp, 994f
988:              beq          t0, s4, 992f
                  slt          s11, s8, a4
                  slti         gp, s11, -1929
                  nop
992:              add          s11, a6, t0
993:              bltu         sp, s9, 1009f
994:              lui          t3, 355350
995:              add          s5, s0, tp
                  slt          s0, s10, s0
                  auipc        s11, 1001508
                  slli         ra, t5, 12
                  sll          a7, t2, t2
                  sra          ra, s9, a4
                  bge          s3, s9, 1018f
                  srli         s5, a6, 13
                  bltu         s9, s8, 1007f
                  xor          s0, a1, tp
                  bge          a0, t3, 1023f
                  sub          t4, s1, t1
1007:             lui          t4, 566176
                  sub          a0, a2, s4
1009:             srl          t3, s1, t3
                  slt          a0, t3, s7
                  andi         t1, zero, -1545
                  xori         s10, t5, 1917
                  xori         s11, ra, 310
                  add          s9, a6, s6
                  xor          gp, s7, t1
                  auipc        s5, 38074
                  slt          a5, t6, t3
1018:             bltu         s7, t2, 1029f
                  bge          t2, s11, 1022f
                  lui          s0, 677454
                  slli         t1, a4, 14
1022:             sltiu        a1, s11, -1257
1023:             add          s9, s11, s11
                  lui          t2, 568996
                  bgeu         s11, t5, 1043f
                  bne          s4, s2, 1033f
                  or           s11, a7, t6
                  xor          t4, s0, s2
1029:             srl          a7, s11, t0
                  bltu         s5, t3, 1047f
                  xori         t3, s7, -833
                  lui          tp, 787208
1033:             auipc        a3, 1047961
                  addi         s6, a4, -407
                  bne          s4, t0, 1041f
                  sltiu        t6, ra, 1228
                  ori          t0, t4, -2008
                  xori         ra, ra, 458
                  sra          t0, s1, t4
                  nop
1041:             sll          s8, a7, t1
                  blt          sp, t1, 1058f
1043:             srli         s1, a0, 26
                  ori          a4, a4, 897
                  slli         gp, s5, 26
                  and          gp, ra, a4
1047:             sltiu        t6, zero, -1829
                  auipc        s11, 619407
                  xor          sp, tp, a6
                  or           s1, a4, s0
                  lui          s5, 196093
                  auipc        t3, 274587
                  srl          s10, s0, a7
                  and          a1, gp, a2
                  add          t1, s7, s2
                  and          s11, s10, s6
                  slli         t2, zero, 23
1058:             addi         zero, zero, 359
                  bgeu         s11, s9, 1071f
                  andi         s9, s4, 212
                  sub          sp, s7, zero
                  slt          a1, s7, a3
                  ori          t1, a7, -1434
                  sub          t0, a4, s5
                  xor          sp, s7, s5
                  and          a6, a1, s6
                  xori         t0, t4, -28
                  bltu         sp, s1, 1075f
                  srli         s6, s11, 9
                  bge          a4, ra, 1074f
1071:             beq          s10, a2, 1079f
                  bgeu         gp, tp, 1080f
                  slli         t1, s0, 12
1074:             or           ra, s11, a4
1075:             sub          s11, t6, s7
                  addi         t1, tp, 407
                  slti         s0, t3, 963
                  bgeu         s6, a2, 1091f
1079:             srli         t6, a7, 6
1080:             srli         s3, t2, 1
                  srl          a3, s4, gp
                  sub          s3, s6, s3
                  sll          s1, s5, zero
                  blt          s8, t2, 1101f
                  bgeu         t4, s6, 1089f
                  bgeu         t6, t6, 1105f
                  sub          tp, s11, s6
                  xor          s10, s5, s7
1089:             auipc        t6, 608977
                  blt          t6, s6, 1110f
1091:             add          s8, a5, s5
                  sra          t0, gp, t1
                  sub          t1, t1, t4
                  andi         a5, t6, 1250
                  sltu         s0, a7, t6
                  bgeu         s11, ra, 1108f
                  slli         a3, sp, 13
                  addi         a0, tp, -2020
                  blt          zero, a6, 1103f
                  bne          s3, gp, 1119f
1101:             srai         a3, t6, 5
                  bge          a5, s10, 1118f
1103:             auipc        s0, 833570
                  xori         ra, s10, -835
1105:             srli         t6, s6, 14
                  beq          a1, gp, 1113f
                  bltu         s11, t1, 1121f
1108:             srai         t4, s2, 29
                  lui          t0, 196966
1110:             xori         t6, t4, -1093
                  addi         s10, s1, 1608
                  sra          t4, s7, s0
1113:             slt          s5, a4, s3
                  addi         s9, s6, -2044
                  and          s8, s9, s3
                  sub          ra, a5, ra
                  nop
1118:             auipc        a2, 879108
1119:             sltiu        t2, t2, 387
                  add          t2, s1, a2
1121:             sub          s3, a6, t0
                  srli         a1, s4, 6
                  ori          s3, s10, -1883
                  sltiu        t1, s7, -605
                  bltu         a6, a1, 1126f
1126:             bne          s6, s4, 1146f
                  xori         zero, s6, -350
                  blt          s2, a6, 1141f
                  sltiu        s2, t4, -339
                  or           t2, t2, s11
                  sub          ra, sp, s6
                  nop
                  lui          ra, 145479
                  srl          s9, s0, t2
                  and          s11, t6, a4
                  xor          s9, s2, s4
                  sub          a1, a4, s0
                  srl          a4, a5, t6
                  sltiu        t0, t1, 1200
                  sub          s0, t6, s9
1141:             srai         t3, s0, 19
                  srai         a5, a3, 19
                  slt          a2, s9, s8
                  blt          t5, a6, 1158f
                  slli         s10, tp, 10
1146:             sra          s10, t6, t3
                  xor          t2, s1, t6
                  bltu         t5, s7, 1156f
                  bne          ra, sp, 1153f
                  auipc        s0, 45196
                  auipc        a5, 75057
                  ori          ra, sp, 624
1153:             sltu         s8, zero, a7
                  xori         s1, s11, -158
                  bne          t6, a0, 1174f
1156:             bltu         ra, a5, 1169f
                  slt          ra, s8, t5
1158:             lui          a0, 558585
                  or           s8, t3, t5
                  add          gp, t3, s4
                  slli         zero, a5, 20
                  slli         sp, a4, 27
                  sra          a4, s7, gp
                  xori         gp, t0, 113
                  bne          a6, a6, 1168f
                  sltiu        a6, s11, 1531
                  sra          s10, s1, s10
1168:             sll          t2, s11, ra
1169:             bgeu         t3, t5, 1188f
                  lui          a4, 623522
                  srai         a7, s2, 15
                  and          a2, s5, s1
                  ori          t1, s9, -5
1174:             srl          t2, a2, s6
                  auipc        a7, 664422
                  sll          tp, a6, s3
                  andi         a5, gp, 1117
                  sltiu        s10, s0, 649
                  bge          t0, s1, 1195f
                  slti         s10, zero, -482
                  srli         t1, a0, 21
                  bgeu         a3, a5, 1200f
                  sltu         sp, t0, a2
                  bge          sp, s8, 1191f
                  slli         a7, t4, 13
                  sltiu        ra, s7, 162
                  andi         a1, ra, -1566
1188:             srli         s0, t5, 26
                  slti         a4, a4, -1233
                  srli         t1, sp, 7
1191:             slti         s2, s4, 238
                  sll          tp, a0, t2
                  slt          a5, s0, t4
                  lui          s9, 977721
1195:             and          s9, gp, t5
                  ori          a6, s4, 867
                  sub          sp, a3, tp
                  lui          a0, 894650
                  nop
1200:             srai         t6, sp, 3
                  sub          a3, s11, gp
                  andi         t0, s2, -623
                  andi         t2, a0, 924
                  blt          a7, a7, 1211f
                  sltu         s11, a3, t4
                  bgeu         zero, a3, 1214f
                  bge          s10, s11, 1227f
                  bne          sp, a6, 1215f
                  xor          s6, t1, t0
                  lui          a5, 208566
1211:             sub          a3, a0, s3
                  nop
                  add          t3, s10, zero
1214:             auipc        s1, 388752
1215:             or           ra, s2, s9
                  or           a3, s3, s3
                  lui          t1, 209233
                  add          a3, s0, s11
                  blt          ra, s5, 1231f
                  nop
                  ori          a6, s6, -848
                  andi         s0, t5, -1270
                  nop
                  or           t0, s7, s8
                  lui          t6, 428217
                  srai         a5, s8, 27
1227:             addi         s9, gp, -489
                  blt          s9, a1, 1245f
                  add          a3, s8, s2
                  xor          a4, s1, s10
1231:             slti         s8, a5, 1085
                  add          s6, tp, t4
                  bgeu         ra, s3, 1249f
                  add          s10, sp, s7
                  sltiu        t6, zero, 342
                  sltu         s2, t3, t5
                  slli         zero, t5, 13
                  bgeu         s7, a4, 1249f
                  slti         tp, s10, -1314
                  slli         a2, s6, 18
                  bne          a6, s11, 1247f
                  slt          t0, t6, a4
                  addi         zero, s2, 1879
                  sll          s2, t1, a1
1245:             bltu         a0, a2, 1259f
                  blt          a6, zero, 1266f
1247:             slli         t0, s4, 15
                  xor          t6, tp, a2
1249:             xor          s0, a4, a0
                  addi         sp, s2, 704
                  blt          a5, s0, 1263f
                  auipc        a5, 361473
                  slti         s11, s11, -603
                  lui          s3, 408854
                  srli         s3, a6, 11
                  bgeu         a4, a4, 1264f
                  auipc        t1, 883579
                  ori          s0, a2, -1112
1259:             and          a2, a5, t4
                  auipc        a0, 32491
                  bltu         a6, ra, 1262f
1262:             srai         s10, s10, 3
1263:             auipc        t2, 900312
1264:             sltiu        t3, a4, 880
                  or           s1, t5, s5
1266:             beq          a0, s8, 1270f
                  sltu         s8, t3, s9
                  sltiu        sp, s9, 1598
                  sltiu        t0, sp, -1193
1270:             slt          a0, t6, s4
                  slli         s10, t5, 24
                  nop
                  or           tp, a5, t6
                  sra          a2, s5, s10
                  nop
                  bgeu         ra, s5, 1280f
                  xori         gp, t2, -409
                  beq          a7, s0, 1282f
                  slli         a4, s8, 15
1280:             slt          t4, a2, s3
                  andi         ra, a7, -818
1282:             sltiu        t1, sp, -1134
                  srai         ra, zero, 30
                  sll          a3, a6, a1
                  blt          a0, a3, 1303f
                  slt          a7, a5, a0
                  ori          s1, t3, -433
                  srl          s1, a3, t1
                  sltiu        t6, s0, 408
                  add          a1, t1, s3
                  sll          s8, ra, t2
                  xor          s11, t1, a5
                  bge          s3, a6, 1307f
                  sll          a1, s5, s9
                  add          a2, s6, ra
                  slt          a7, t0, a1
                  ori          t1, t6, -1448
                  auipc        t1, 127875
                  sra          t6, s8, s8
                  xori         s8, s5, -1830
                  slt          t0, zero, s7
                  bge          s8, t2, 1315f
1303:             sll          s0, a3, a5
                  sltiu        t6, t3, 2007
                  slt          s8, a3, sp
                  xor          s3, t1, t5
1307:             bgeu         s2, tp, 1315f
                  bgeu         a0, t2, 1325f
                  bne          t5, a2, 1313f
                  auipc        a0, 898909
                  auipc        ra, 310179
                  blt          zero, a4, 1326f
1313:             slli         s11, s6, 10
                  srai         t6, a5, 6
1315:             xori         t6, sp, -194
                  bne          t0, a5, 1336f
                  addi         t4, tp, -1063
                  xor          s5, s7, t3
                  beq          a7, t5, 1320f
1320:             srai         gp, a1, 25
                  sra          s9, s1, t6
                  beq          t5, s6, 1334f
                  xor          gp, t6, sp
                  slli         a3, sp, 10
1325:             beq          s2, s6, 1344f
1326:             addi         a0, a1, -1307
                  srli         a7, a2, 14
                  sltu         s10, t4, a4
                  srl          ra, a6, a1
                  srai         s2, ra, 22
                  beq          ra, t0, 1338f
                  sra          sp, s7, s4
                  bne          t2, s11, 1351f
1334:             auipc        s6, 917018
                  srl          sp, t2, t0
1336:             slt          t6, s7, a6
                  nop
1338:             slti         tp, s8, -1752
                  srl          s5, tp, t2
                  sra          a5, a7, s1
                  srli         a4, a5, 8
                  nop
                  bne          t0, s2, 1347f
1344:             sra          ra, gp, t2
                  sll          tp, sp, a2
                  addi         s10, gp, 745
1347:             ori          a2, a3, 397
                  blt          s6, s1, 1366f
                  lui          gp, 1000364
                  sltu         a1, t1, s5
1351:             slli         s3, s9, 19
                  slli         zero, s5, 29
                  beq          gp, t1, 1361f
                  add          ra, t0, t1
                  slti         s2, t2, 1428
                  andi         t3, s7, 1677
                  bne          a7, a0, 1370f
                  or           a6, gp, ra
                  lui          s1, 176066
                  sra          t6, a6, t4
1361:             xor          gp, gp, s4
                  bltu         s1, a4, 1375f
                  nop
                  lui          t6, 954654
                  auipc        s10, 845441
1366:             add          t3, s5, a5
                  slti         s1, s8, 1189
                  srl          s8, t5, t4
                  srli         t3, a0, 24
1370:             bne          a1, gp, 1386f
                  sltiu        a0, gp, 606
                  srai         a5, sp, 2
                  sra          t0, sp, t1
                  bne          a5, s11, 1380f
1375:             lui          s3, 575300
                  lui          a2, 317752
                  blt          a6, s7, 1388f
                  beq          t3, ra, 1382f
                  auipc        t2, 216154
1380:             srli         t6, sp, 2
                  nop
1382:             xor          s0, s4, s2
                  slli         s0, ra, 18
                  lui          a6, 568105
                  and          t6, t5, s5
1386:             srai         t4, s1, 7
                  bne          t3, tp, 1391f
1388:             beq          sp, a0, 1391f
                  add          a2, s1, a7
                  or           t3, t0, a5
1391:             blt          s5, s5, 1399f
                  sltiu        s6, t4, 2001
                  blt          a4, ra, 1410f
                  auipc        s10, 955887
                  slti         tp, s5, 1679
                  srl          sp, s6, s2
                  blt          s4, s1, 1409f
                  slti         t4, s0, 1880
1399:             bgeu         s4, t4, 1407f
                  srai         t0, t1, 28
                  sll          t0, t3, s5
                  nop
                  bne          s5, a4, 1419f
                  sll          s5, gp, t0
                  srli         s1, s1, 20
                  xor          s0, t3, t6
1407:             sltu         a4, t4, s3
                  addi         s8, a0, 942
1409:             slt          t4, gp, gp
1410:             slti         a3, a7, 58
                  sltu         a7, gp, t3
                  nop
                  andi         s10, gp, 1100
                  sub          a5, zero, a7
                  lui          a0, 399527
                  andi         t0, s8, -661
                  add          s1, s0, ra
                  beq          s8, s8, 1425f
1419:             add          tp, s5, t2
                  bne          a4, a5, 1440f
                  srl          s0, s8, tp
                  srai         s6, a3, 23
                  nop
                  bltu         tp, s6, 1431f
1425:             lui          ra, 809123
                  and          t0, a5, a4
                  bgeu         s0, s2, 1446f
                  srai         s0, s1, 29
                  addi         tp, a7, 699
                  beq          t5, t1, 1447f
1431:             auipc        a7, 140829
                  andi         s8, t6, 1648
                  srai         a3, a5, 24
                  slli         a5, sp, 16
                  sll          t6, sp, s3
                  auipc        sp, 682144
                  srl          a3, a4, zero
                  sll          s8, tp, t6
                  nop
1440:             add          s0, a2, s1
                  lui          t6, 705744
                  add          a6, a2, t3
                  sra          s9, t1, t4
                  bgeu         a6, a2, 1448f
                  beq          gp, a2, 1459f
1446:             sltiu        t3, a4, -500
1447:             nop
1448:             nop
                  sra          a5, a5, sp
                  ori          s6, a4, 1484
                  sra          tp, s0, s8
                  nop
                  xor          a0, s3, s8
                  and          a6, s8, s7
                  add          s10, s8, a3
                  bgeu         s7, s9, 1474f
                  slti         ra, s9, 1369
                  addi         a5, a2, -463
1459:             blt          s1, a1, 1467f
                  slt          s0, a7, s10
                  bge          ra, t3, 1481f
                  sltiu        a6, a5, -1472
                  sra          a5, zero, t3
                  xor          s2, t2, t6
                  slli         a5, a1, 20
                  auipc        ra, 880205
1467:             or           a2, a3, s3
                  slti         s1, a7, -1242
                  addi         a2, t2, 1057
                  sltu         a2, s0, s4
                  xor          s5, s3, a5
                  xor          a7, a1, s0
                  andi         t2, gp, 1013
1474:             sll          t0, s3, t0
                  srli         t3, a2, 11
                  ori          t1, s10, 567
                  slli         tp, a0, 4
                  srl          a5, t1, s5
                  sll          a6, a0, t3
                  xor          s9, t5, s11
1481:             sltu         s6, s1, s8
                  sra          t4, t6, a4
                  ori          t2, s10, -1657
                  bge          t2, s7, 1491f
                  bge          a1, gp, 1489f
                  slti         t1, t3, 2024
                  slt          t0, s0, s5
                  sltu         t3, a4, a7
1489:             lui          s5, 20173
                  andi         a1, t4, -598
1491:             bne          s6, t6, 1504f
                  or           t0, s10, zero
                  bgeu         a3, s3, 1513f
                  andi         a6, s0, 527
                  sra          t2, s6, s10
                  srli         tp, zero, 28
                  srl          a7, t5, a0
                  sll          s2, sp, a2
                  xori         t2, sp, 94
                  sub          t2, ra, s9
                  sub          s5, s1, s10
                  nop
                  lui          ra, 909933
1504:             addi         s5, s6, -42
                  blt          a3, a2, 1524f
                  srai         ra, s0, 27
                  slli         t3, s1, 5
                  slt          gp, a7, a0
                  blt          a2, s7, 1522f
                  sub          s10, s8, s9
                  sll          s2, s1, s5
                  srl          s2, a6, a2
1513:             bgeu         tp, t3, 1521f
                  auipc        a0, 1033746
                  sltiu        s8, s3, 1880
                  srli         t1, sp, 16
                  slti         s0, s9, -810
                  srli         a3, s5, 25
                  auipc        a3, 11808
                  sltu         zero, t0, s8
1521:             blt          s8, t3, 1525f
1522:             and          s1, s6, s11
                  bltu         s0, s3, 1526f
1524:             sll          a2, s0, s3
1525:             blt          t1, s7, 1537f
1526:             srai         s10, zero, 11
                  bge          t4, s10, 1544f
                  bne          tp, tp, 1535f
                  sltu         a7, gp, tp
                  nop
                  or           t0, a7, a1
                  srli         sp, sp, 17
                  xor          a3, t4, s9
                  sll          s9, t1, a6
1535:             sra          sp, a0, s5
                  sub          t2, sp, t1
1537:             addi         a5, s9, 918
                  blt          t2, s5, 1542f
                  bltu         zero, t6, 1547f
                  lui          t4, 212218
                  blt          a0, s6, 1555f
1542:             slti         s3, s3, 1329
                  slt          t4, s8, t3
1544:             bltu         s1, t6, 1556f
                  or           zero, sp, tp
                  sltiu        a4, s3, -1989
1547:             blt          sp, zero, 1548f
1548:             bltu         a0, a5, 1567f
                  sll          s8, t1, a3
                  bne          t3, s10, 1561f
                  bne          a5, s5, 1565f
                  auipc        a0, 654495
                  lui          a0, 1008764
                  lui          gp, 41396
1555:             slt          s11, zero, s4
1556:             blt          t5, a7, 1572f
                  slli         t6, s8, 10
                  nop
                  xor          tp, t4, s9
                  auipc        a1, 613665
1561:             andi         t1, s1, 164
                  ori          a4, a0, 616
                  lui          s9, 770822
                  sltiu        a0, t1, -955
1565:             srai         s1, sp, 14
                  slt          t3, t6, t0
1567:             srai         s1, a5, 6
                  slti         a1, s7, -582
                  xori         t1, sp, 1151
                  srai         t0, s5, 23
                  srli         s0, s10, 9
1572:             slli         a5, a1, 25
                  addi         s5, t2, -1956
                  slli         a4, t3, 26
                  ori          a2, s7, 461
                  slli         t0, s6, 14
                  xor          sp, s3, s5
                  beq          a4, a4, 1594f
                  beq          t1, a3, 1597f
                  auipc        gp, 395970
                  srl          a7, s8, s7
                  nop
                  sub          s0, s4, s9
                  ori          t1, t2, 1154
                  auipc        sp, 751208
                  xori         a6, a0, 713
                  slt          s0, a3, a4
                  srl          zero, s1, a5
                  sra          a7, ra, s4
                  or           a0, s8, s0
                  xori         t4, t4, 1623
                  sltu         s11, tp, a2
                  lui          a0, 89507
1594:             or           s10, ra, tp
                  or           s11, s9, t5
                  ori          t2, s6, 1532
1597:             srli         s8, a1, 7
                  bltu         s7, sp, 1602f
                  slli         s6, t1, 14
                  xor          t6, s0, t6
                  sll          s10, t6, s9
1602:             lui          s9, 655576
                  andi         s11, a5, 1883
                  srli         a7, s3, 31
                  andi         t4, a7, 7
                  sltu         a1, a0, tp
                  sltiu        a2, t3, -161
                  add          s9, a3, s9
                  ori          a2, s8, 213
                  addi         a0, a3, 676
                  srli         t0, s1, 4
                  blt          gp, s5, 1618f
                  lui          a7, 832754
                  srli         s2, sp, 11
                  beq          s10, s2, 1622f
                  bne          s4, tp, 1633f
                  auipc        s5, 562000
1618:             bgeu         a2, tp, 1632f
                  slt          tp, a1, t1
                  lui          t3, 495337
                  sltiu        s8, a1, 1675
1622:             srl          s9, s3, s11
                  xori         s6, s2, -1077
                  sll          t0, s8, s2
                  sltu         a7, s3, tp
                  srl          s9, a7, s1
                  srl          gp, zero, sp
                  bgeu         t1, s0, 1632f
                  srl          zero, a4, s8
                  bge          a7, s4, 1634f
                  slli         a4, t0, 18
1632:             srai         tp, a7, 16
1633:             lui          s5, 116911
1634:             addi         a5, t6, -1876
                  srli         tp, a7, 12
                  and          gp, a0, a6
                  bge          s1, tp, 1655f
                  addi         s5, s5, -1927
                  slt          tp, t6, s1
                  xori         s8, a2, 943
                  bltu         zero, s9, 1652f
                  bge          zero, s0, 1654f
                  or           a7, s0, a7
                  bgeu         s0, s0, 1648f
                  slti         s11, t6, -447
                  beq          s2, sp, 1665f
                  beq          s8, a1, 1667f
1648:             lui          s10, 103475
                  nop
                  or           t3, a1, s4
                  sltiu        a3, t3, 669
1652:             srli         t4, s5, 23
                  andi         s0, t4, -825
1654:             sra          t4, sp, a4
1655:             sltu         s9, gp, a5
                  sltiu        tp, t3, -346
                  sltu         s9, s11, s6
                  bne          s5, s5, 1665f
                  nop
                  sltu         s8, sp, t5
                  srai         a3, s0, 27
                  add          gp, a6, a2
                  or           tp, a1, s2
                  xor          a4, tp, a5
1665:             srai         s10, tp, 31
                  srli         s9, s9, 18
1667:             slti         t1, a2, -1873
                  ori          s11, t2, -1658
                  sltiu        zero, a5, -865
                  bge          s3, sp, 1686f
                  andi         zero, t4, -1327
                  sra          a1, s7, zero
                  addi         s1, s7, -585
                  sra          a1, gp, s6
                  bge          s0, a5, 1683f
                  srl          zero, a1, a7
                  xori         s6, tp, 1346
                  srai         a3, s8, 27
                  sll          s2, a6, a3
                  slt          a3, a6, gp
                  slti         a6, s3, 863
                  slli         zero, sp, 1
1683:             blt          ra, t4, 1699f
                  xor          a4, s1, s1
                  slli         tp, t1, 19
1686:             add          a6, t0, a6
                  bne          s10, s0, 1694f
                  xor          tp, t0, gp
                  add          a2, tp, a4
                  srli         a5, s2, 10
                  slli         s10, s9, 27
                  and          s1, t4, a3
                  andi         s0, s5, -1932
1694:             bge          sp, s6, 1695f
1695:             or           a7, t5, s5
                  beq          tp, t5, 1704f
                  or           t3, s4, s8
                  beq          tp, a2, 1701f
1699:             srl          sp, t4, t5
                  bge          s7, t3, 1706f
1701:             sltu         t1, a4, sp
                  addi         a6, s10, -1896
                  bge          s5, s8, 1715f
1704:             lui          s0, 736374
                  xori         ra, s4, -491
1706:             sltu         ra, sp, a4
                  auipc        a1, 588552
                  andi         gp, s10, -744
                  sltu         a2, s11, zero
                  slti         t6, gp, 1790
                  sra          s0, s1, t6
                  add          t1, s3, s5
                  sltu         t2, s2, t5
                  slt          t6, s1, t6
1715:             addi         a5, s5, 1860
                  bltu         a3, zero, 1723f
                  and          t6, s9, s5
                  and          a2, s9, s6
                  or           s3, a0, a5
                  srai         a5, t0, 29
                  bgeu         a1, a0, 1725f
                  and          t3, tp, t5
1723:             or           s6, t3, s9
                  sra          a0, a2, s4
1725:             xori         a2, a0, -506
                  srli         t1, t1, 16
                  srli         s9, zero, 20
                  sll          tp, ra, a6
                  srli         t4, t6, 1
                  blt          a0, a0, 1743f
                  slt          s11, t6, s7
                  srl          t6, s0, s3
                  srai         s3, t3, 1
                  xori         t6, s2, -1999
                  sra          a0, a7, t6
                  sra          t4, t3, s6
                  blt          a2, s9, 1751f
                  slli         t6, s1, 6
                  bltu         s8, a2, 1757f
                  add          s6, t5, sp
                  ori          a6, s7, 879
                  xor          a5, gp, a0
1743:             srl          a4, gp, s4
                  sltu         s3, ra, t0
                  ori          t3, s4, -300
                  slt          s1, s9, t0
                  xori         t6, s1, -1248
                  beq          s6, s2, 1765f
                  and          s0, a4, t3
                  sltu         a3, tp, s11
1751:             srl          t6, a3, a2
                  andi         gp, s6, -1407
                  sra          t6, s11, zero
                  bltu         a4, s0, 1767f
                  lui          t6, 1020657
                  srli         ra, s9, 9
1757:             or           a5, a6, t5
                  lui          a0, 117995
                  and          s8, s10, s7
                  bge          t4, s11, 1768f
                  nop
                  slti         t0, t0, 1051
                  lui          s0, 777127
                  lui          t0, 37939
1765:             blt          sp, zero, 1782f
                  slli         t1, t5, 20
1767:             sltiu        t6, a7, -1719
1768:             srli         zero, t1, 26
                  srli         s0, t5, 26
                  slti         s1, ra, -699
                  srai         a6, s1, 23
                  addi         s5, s6, 1099
                  add          tp, s10, t1
                  bgeu         s0, a3, 1794f
                  blt          t5, s10, 1794f
                  nop
                  bgeu         zero, s1, 1785f
                  beq          a0, t5, 1785f
                  ori          s11, t1, -955
                  add          sp, a2, a4
                  addi         a5, sp, 311
1782:             bltu         t3, s7, 1794f
                  srl          s8, a0, s4
                  sra          s1, t3, s8
1785:             andi         t6, s6, -1840
                  bne          s8, s6, 1802f
                  slti         t2, s4, -396
                  andi         a6, a4, 1109
                  sra          t2, t3, a7
                  slti         s9, a5, 1508
                  sll          a0, s3, ra
                  beq          t3, s2, 1796f
                  beq          s4, zero, 1804f
1794:             bgeu         zero, sp, 1813f
                  srli         s0, t2, 9
1796:             add          t4, t4, s4
                  sra          s2, s4, tp
                  bltu         s5, t1, 1806f
                  xor          a7, s10, t2
                  srai         a4, s7, 26
                  and          t4, a7, a1
1802:             or           s1, a0, t5
                  sltiu        zero, tp, 1256
1804:             sltiu        s8, a0, -1196
                  blt          s8, s3, 1825f
1806:             bne          s7, a4, 1824f
                  addi         s2, a3, -2027
                  ori          ra, s2, 803
                  sltu         s8, s1, a0
                  srai         a3, sp, 17
                  xor          t1, a3, s6
                  slt          ra, s2, tp
1813:             sltu         t2, a2, s4
                  and          s3, s7, s8
                  slt          gp, s11, s4
                  auipc        a2, 198930
                  blt          a0, s8, 1818f
1818:             or           a5, s5, a6
                  sra          s11, s8, t2
                  sll          t2, a5, s4
                  sltu         gp, s5, tp
                  bne          s8, s1, 1836f
                  srl          sp, s9, s2
1824:             sra          ra, t4, s7
1825:             blt          t1, ra, 1829f
                  bge          gp, t0, 1830f
                  bne          sp, t3, 1833f
                  sub          s8, s11, t2
1829:             andi         s10, s2, 84
1830:             srli         sp, s11, 30
                  blt          t4, ra, 1851f
                  bgeu         s7, t4, 1844f
1833:             blt          gp, a1, 1850f
                  add          a7, t3, tp
                  auipc        a1, 291523
1836:             sltiu        s2, s7, -1469
                  slli         t0, s5, 28
                  slli         s10, s5, 30
                  slli         s6, a4, 19
                  and          a4, sp, s3
                  and          a5, gp, a0
                  slti         t2, tp, -1471
                  nop
1844:             or           s8, a7, t1
                  srli         sp, t4, 17
                  bgeu         s8, t2, 1853f
                  sll          s1, t2, s11
                  slti         a1, zero, -723
                  or           a2, a1, zero
1850:             blt          a3, a7, 1866f
1851:             bltu         s6, s5, 1870f
                  lui          s1, 594174
1853:             ori          a1, s3, 260
                  auipc        s5, 830830
                  bgeu         s2, s10, 1859f
                  or           t4, s11, s7
                  sltiu        ra, s10, 1618
                  sll          s1, zero, t4
1859:             slli         t0, s0, 31
                  srli         t6, sp, 8
                  bltu         sp, s5, 1874f
                  bge          t5, s1, 1869f
                  srai         t1, s10, 16
                  sltiu        s10, s6, -1116
                  or           s5, a4, s6
1866:             and          a0, a2, ra
                  xori         s0, t2, -1707
                  sll          a4, a7, ra
1869:             add          t0, gp, t0
1870:             slli         s10, s7, 2
                  ori          zero, ra, -1111
                  blt          t3, s11, 1886f
                  bgeu         ra, s9, 1876f
1874:             andi         a6, t5, -150
                  bgeu         s4, a1, 1883f
1876:             slti         s9, sp, -1055
                  addi         t0, s11, -1969
                  sll          s11, a3, t0
                  slt          gp, t5, t3
                  srl          s1, s0, s9
                  and          sp, s11, a1
                  ori          zero, zero, 244
1883:             or           s9, a6, s4
                  srl          s2, t4, a3
                  nop
1886:             xor          a1, a0, s5
                  srli         s10, gp, 10
                  lui          s3, 172001
                  add          s1, s11, s10
                  bne          a5, t3, 1903f
                  nop
                  slt          a5, s7, a6
                  slli         gp, s11, 14
                  add          gp, a2, s8
                  slt          s1, a7, s3
                  add          a0, a3, a3
                  slli         s8, s7, 27
                  sltiu        a4, s9, -1546
                  add          s0, t1, t1
                  ori          s1, s7, 1407
                  sltiu        t0, s9, 544
                  sll          s11, a7, a2
1903:             bgeu         s7, sp, 1921f
                  srl          s3, t4, t5
                  bne          sp, a3, 1922f
                  xori         t3, a3, -1218
                  addi         s11, a1, -1561
                  sltu         s2, a1, s7
                  srli         gp, a0, 23
                  addi         s1, s6, 26
                  beq          ra, s9, 1927f
                  srai         a4, zero, 21
                  auipc        ra, 924918
                  xor          a7, a2, a1
                  beq          a3, t1, 1916f
1916:             srl          s2, s10, t1
                  slt          a7, s11, s10
                  srli         sp, s0, 24
                  srl          zero, s0, s0
                  bge          s5, s10, 1934f
1921:             sra          s0, a3, tp
1922:             bgeu         t3, s9, 1941f
                  addi         s6, a7, -1904
                  beq          t6, a6, 1928f
                  sltiu        sp, gp, -52
                  sub          a5, a1, ra
1927:             sll          s10, s0, t3
1928:             lui          t4, 1006761
                  sub          a7, s4, s2
                  addi         a1, t6, -1965
                  bne          a4, t3, 1935f
                  sltiu        s3, zero, 1464
                  addi         a2, tp, -1569
1934:             srai         t1, s0, 16
1935:             addi         a3, ra, -1661
                  sll          s10, s9, tp
                  lui          s3, 70788
                  srl          a4, ra, t6
                  srl          a5, s5, gp
                  andi         s10, a0, -796
1941:             add          s11, a5, a1
                  ori          tp, s10, 1892
                  bge          s11, a5, 1954f
                  andi         t4, t6, 1414
                  srl          a5, s3, ra
                  ori          s2, s9, -246
                  blt          t3, s5, 1955f
                  xor          s2, ra, s5
                  andi         a2, t6, 943
                  srli         ra, t6, 10
                  srl          a3, s11, s5
                  slt          s3, ra, s11
                  andi         s5, s6, -186
1954:             bgeu         a7, s8, 1961f
1955:             add          a0, a4, gp
                  sub          gp, s11, s7
                  sltiu        s2, s10, -1979
                  auipc        a0, 578179
                  sll          sp, s11, s9
                  xori         sp, a4, -1183
1961:             add          t1, s0, t6
                  andi         zero, t2, -1787
                  blt          s0, a6, 1970f
                  bgeu         gp, t4, 1981f
                  ori          ra, a4, 1415
                  beq          t3, t3, 1982f
                  srl          t4, a0, a6
                  xor          a3, a6, a4
                  xor          a4, s8, s10
1970:             sltu         a1, t6, t0
                  srli         a4, a2, 12
                  ori          zero, a0, 72
                  nop
                  lui          t1, 391739
                  bge          s0, s0, 1982f
                  srli         tp, a0, 4
                  sltiu        t1, s4, -61
                  sltiu        s1, zero, -1202
                  ori          a5, s7, 311
                  addi         a1, a0, -1850
1981:             srl          s10, t0, sp
1982:             slt          s2, s7, t2
                  add          s5, s2, gp
                  sltiu        t1, s0, -1198
                  and          s3, s10, a2
                  and          a6, t4, s9
                  beq          a4, t1, 1999f
                  sltu         t1, s10, a6
                  addi         a2, s6, 318
                  add          s11, s10, a5
                  and          s11, s1, s3
                  xori         t2, t2, -670
                  xor          s10, s8, s9
                  addi         a7, s11, 876
                  ori          a3, a0, -473
                  nop
                  and          zero, t4, s3
                  andi         s10, s0, -582
1999:             sltiu        sp, s4, -1081
                  bltu         s8, s8, 2017f
                  and          s6, a2, tp
                  and          a4, a1, t0
                  slti         s5, t3, 121
                  xor          s11, t4, a1
                  ori          s2, t4, 1499
                  bge          a0, s8, 2010f
                  sltiu        t0, t4, -1932
                  andi         t4, ra, -433
                  slt          gp, a0, a6
2010:             xor          a0, sp, s2
                  and          a0, a2, s3
                  bltu         sp, a7, 2032f
                  sub          zero, a4, a3
                  add          a5, ra, t3
                  bgeu         zero, t5, 2029f
                  andi         t3, t0, -312
2017:             srai         s3, zero, 10
                  beq          s8, t4, 2036f
                  lui          t2, 258548
                  and          s9, a3, t6
                  blt          s5, ra, 2033f
                  bgeu         s3, s5, 2025f
                  sll          t6, tp, a2
                  lui          a4, 634598
2025:             nop
                  addi         zero, a4, -854
                  xor          a4, a5, a3
                  slti         sp, gp, -992
2029:             nop
                  addi         s9, a6, -1954
                  slti         s6, tp, 569
2032:             srl          s5, tp, s0
2033:             xor          t3, s6, a7
                  lui          s1, 47972
                  lui          s0, 654883
2036:             or           a1, t0, zero
                  srli         s11, zero, 4
                  auipc        a2, 704133
                  srli         t3, s7, 2
                  auipc        a3, 676508
                  bgeu         t6, sp, 2049f
                  sltiu        a3, a5, 203
                  sub          s2, a7, s1
                  bne          s5, s5, 2052f
                  sub          a3, zero, s7
                  bge          a0, a6, 2065f
                  sub          t4, s5, a7
                  auipc        a5, 1001499
2049:             addi         s6, s1, 729
                  add          a0, sp, t2
                  sub          t3, s1, t2
2052:             nop
                  andi         t2, s10, -611
                  xori         a4, t6, 1891
                  ori          a3, t4, -793
                  srli         t2, s9, 4
                  sll          s1, t3, s7
                  sub          s11, a2, s11
                  srai         a4, a2, 19
                  sll          a7, s9, ra
                  bltu         t0, a7, 2074f
                  slti         sp, s8, 1784
                  addi         s9, a2, 854
                  slli         s6, zero, 23
2065:             xori         a7, s7, 669
                  add          a0, s10, a5
                  bgeu         sp, t4, 2080f
                  sll          t4, t5, s11
                  blt          s7, t5, 2075f
                  beq          t4, a5, 2090f
                  slli         t2, s10, 15
                  auipc        t0, 208740
                  lui          a7, 284983
2074:             xori         s9, s9, -1459
2075:             xori         t6, a3, -1912
                  sltu         s0, a2, s4
                  auipc        a1, 326519
                  add          s6, s9, t1
                  bge          tp, a3, 2097f
2080:             bltu         s0, t6, 2084f
                  srl          s2, t0, ra
                  auipc        s6, 962466
                  auipc        t2, 923047
2084:             andi         s11, t1, -547
                  auipc        s1, 898786
                  nop
                  sltiu        t4, a6, -956
                  nop
                  andi         s9, zero, 752
2090:             sltu         s3, s2, a0
                  sra          s9, s9, s10
                  la           gp, region_1+1759 #start riscv_load_store_rand_instr_stream_6
                  slt          s0, t4, a0
                  lbu          s6, -833(gp)
                  sb           ra, -1478(gp)
                  sltu         a0, s1, s8
                  sra          ra, s11, s5
                  lb           t6, -1720(gp)
                  lhu          s5, -1631(gp)
                  sltiu        t6, sp, -1438
                  srai         s2, s5, 19
                  andi         s8, a0, -360
                  lb           t1, -853(gp)
                  sb           t5, -614(gp)
                  addi         a4, s1, 1182
                  sll          sp, t0, ra
                  lh           a1, -297(gp)
                  sub          a7, s3, a4
                  nop
                  lb           a7, -1176(gp)
                  lh           s11, -1175(gp)
                  lb           a1, -1712(gp)
                  sw           t3, -1479(gp)
                  sh           a6, -977(gp)
                  lhu          s6, -387(gp)
                  lbu          a5, -1759(gp)
                  xor          s3, s5, s9
                  lhu          a0, -725(gp)
                  lh           a7, -389(gp)
                  add          s0, a7, gp
                  lb           t6, -910(gp)
                  lb           a7, -194(gp)
                  srl          sp, s1, s3
                  lbu          t1, -373(gp)
                  lb           ra, -1513(gp) #end riscv_load_store_rand_instr_stream_6
                  or           a1, s1, s5
                  xori         t2, a7, -865
                  sltu         gp, s1, s0
                  lui          s5, 681811
                  srli         t1, gp, 13
2097:             blt          t5, s4, 2109f
                  slli         t3, a3, 17
                  srl          a0, a3, t5
                  sll          t1, a3, zero
                  nop
                  ori          s0, t3, -367
                  slt          t1, a0, a2
                  beq          t4, s5, 2118f
                  addi         s8, s8, 766
                  slt          a4, t5, t1
                  slti         s5, t1, -1073
                  xor          s2, a1, t5
2109:             or           s10, s3, a2
                  addi         ra, t6, -1990
                  sltu         t4, s4, s11
                  blt          t6, s5, 2129f
                  blt          t5, a6, 2131f
                  auipc        a0, 367182
                  and          a0, s1, s1
                  srai         s3, a0, 14
                  bge          s0, t2, 2125f
2118:             sltu         s6, tp, s0
                  bgeu         s6, s6, 2139f
                  xori         ra, s8, 910
                  beq          ra, s5, 2132f
                  sra          gp, a2, s5
                  srai         s1, a1, 0
                  and          t0, s3, ra
2125:             sltu         s0, t3, s8
                  sll          a7, a7, s8
                  ori          a3, t2, 1474
                  nop
2129:             sltiu        s0, ra, 151
                  xor          zero, a4, t4
2131:             addi         t3, zero, 1347
2132:             add          t2, t2, a7
                  lui          gp, 501783
                  blt          ra, t6, 2141f
                  bgeu         t6, a2, 2154f
                  sub          sp, s6, s3
                  bne          t2, t3, 2144f
                  bltu         t6, gp, 2155f
2139:             auipc        s1, 325902
                  sra          t1, s6, t6
2141:             slli         s8, a7, 13
                  add          s10, s9, t5
                  auipc        s3, 903068
2144:             beq          a1, t2, 2158f
                  addi         t2, t3, 961
                  beq          t1, s7, 2150f
                  lui          a1, 565279
                  nop
                  lui          t1, 814257
2150:             bne          a5, t4, 2156f
                  sub          ra, a1, s7
                  srli         a3, s2, 14
                  sra          s1, tp, s2
2154:             bne          a2, a5, 2158f
2155:             auipc        sp, 914712
2156:             nop
                  and          t4, tp, tp
2158:             srai         a4, sp, 11
                  lw           s2, 4(t5)
                  sltiu        t2, s4, -1821
                  auipc        a0, 611801
                  slti         a0, s10, 1485
                  addi         t5, t5, 8
                  srli         gp, s6, 10
                  slt          a5, s9, s10
2820:             addi x25, x18, 0
2820:             jalr x25, x25, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x20, x30, zero
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x29, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x29, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x29, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x29, x5, ecall_handler
                  li x5, 0x1
                  beq x29, x5, instr_fault_handler
                  li x5, 0x5
                  beq x29, x5, load_fault_handler
                  li x5, 0x7
                  beq x29, x5, store_fault_handler
                  li x5, 0xc
                  beq x29, x5, pt_fault_handler
                  li x5, 0xd
                  beq x29, x5, pt_fault_handler
                  li x5, 0xf
                  beq x29, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

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
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x30, x20, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
