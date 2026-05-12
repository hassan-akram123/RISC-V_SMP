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
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0xa7253dfe
                  li x1, 0x80000000
                  li x2, 0x1
                  li x3, 0x0
                  li x4, 0x34a0fd99
                  li x5, 0xfef3792a
                  li x6, 0x2
                  li x7, 0x0
                  li x8, 0xbd0574b6
                  li x9, 0xe
                  li x10, 0xf447d8b7
                  li x11, 0x80000000
                  li x12, 0xf51a5880
                  li x13, 0x0
                  li x15, 0x1
                  li x16, 0x4
                  li x17, 0xa
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x8
                  li x22, 0x0
                  li x23, 0x2
                  li x24, 0x0
                  li x26, 0x7960712d
                  li x27, 0x80000000
                  li x28, 0xf8a77ac1
                  li x29, 0xfb241ae1
                  li x30, 0x80000000
                  li x31, 0xf0a780f5
                  la x25, user_stack_end
main:             li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           a7, 0x0
                  li           s0, 0x3734e035
                  li           s8, 0xffffffff
                  li           a5, 0xffffffff
                  li           gp, 0xffffffff
                  li           s3, 0xffffffff
                  li           t6, 0x0
                  li           s4, 0x0
                  li           tp, 0xd1babb2a
                  addi         t6, gp, 1166
                  add          a7, a7, gp
                  lui          tp, 493022
                  lui          s3, 534240
                  add          t6, s8, s3
                  auipc        gp, 201258
                  auipc        t6, 64529
                  addi         s4, s4, 1938
                  auipc        s4, 872391
                  nop
                  add          s3, t6, s0
                  auipc        s4, 338221
                  add          tp, s8, gp
                  addi         t6, s3, 1303
                  lui          s8, 834376
                  addi         t6, tp, -1877
                  sub          s4, tp, a7
                  add          s8, a5, s8 #end riscv_int_numeric_corner_stream_19
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s2, 0xeab11256
                  li           t6, 0xffffffff
                  li           s6, 0x0
                  li           t1, 0x80000000
                  li           a0, 0x0
                  li           a2, 0x4113072e
                  li           s7, 0x80000000
                  li           a6, 0x0
                  li           t2, 0xffffffff
                  add          a1, s2, s6
                  auipc        a2, 877534
                  nop
                  lui          t2, 124461
                  sub          s6, a6, s2
                  sub          s6, t6, t2
                  sub          t6, a6, a0
                  nop
                  auipc        a1, 957292
                  nop
                  add          t6, t2, t6
                  add          a6, a6, t6
                  lui          t6, 494709
                  sub          a1, a0, a6
                  lui          s2, 893112
                  lui          t2, 343114
                  lui          t6, 517233
                  add          s6, s2, a1
                  add          s7, s2, t1
                  auipc        a1, 787898
                  addi         t6, t2, 1750
                  auipc        t6, 169988
                  add          t6, s7, a2 #end riscv_int_numeric_corner_stream_5
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           t5, 0x80000000
                  li           s10, 0xffffffff
                  li           t2, 0x80000000
                  li           s6, 0x135346a8
                  li           tp, 0x14a9862f
                  li           a7, 0x61ce0d9e
                  li           s3, 0x80000000
                  li           s8, 0xffffffff
                  li           s7, 0xffffffff
                  sub          s8, s3, s0
                  add          s6, tp, s0
                  nop
                  addi         a7, tp, 891
                  add          s6, s7, s6
                  lui          s10, 409583
                  addi         s0, t2, 1039
                  auipc        s3, 442194
                  addi         s6, t5, 815
                  addi         t5, s0, 854
                  lui          s7, 143694
                  lui          s10, 747284
                  sub          t2, s0, s6
                  sub          tp, s6, s8
                  addi         a7, t2, -2026
                  auipc        s7, 677777
                  sub          s0, s10, s7
                  auipc        s6, 385594
                  add          tp, tp, s10
                  auipc        s0, 1012931
                  add          s3, t5, s8
                  add          s7, s6, s10
                  addi         t5, t5, 44
                  sub          s6, s8, s3
                  addi         s0, tp, -1618
                  sub          tp, s0, a7
                  lui          s8, 1030473 #end riscv_int_numeric_corner_stream_12
                  li           s5, 0x4991d1f9 #start riscv_int_numeric_corner_stream_6
                  li           a6, 0x0
                  li           a7, 0x109a9ff4
                  li           a2, 0x6ff8027b
                  li           s8, 0xc6f45090
                  li           gp, 0xffffffff
                  li           t1, 0x0
                  li           a1, 0x7559937a
                  li           s3, 0x80000000
                  li           t4, 0xffffffff
                  auipc        t1, 376710
                  nop
                  add          gp, s8, a6
                  addi         s3, s3, 1373
                  lui          s5, 418892
                  nop
                  addi         s8, a2, 873
                  auipc        s3, 786613
                  lui          t1, 203617
                  addi         a6, a1, -1983
                  add          gp, s3, s5
                  auipc        a7, 419320
                  lui          a7, 732676
                  nop
                  add          gp, s3, s3
                  nop
                  auipc        a6, 1019835
                  sub          t1, a7, s3
                  auipc        t4, 318953
                  addi         a7, a1, -988 #end riscv_int_numeric_corner_stream_6
                  li           a0, 0xa750f7dd #start riscv_int_numeric_corner_stream_0
                  li           t4, 0x80000000
                  li           s8, 0x0
                  li           s7, 0x6ec5f905
                  li           a5, 0x0
                  li           s0, 0x0
                  li           tp, 0x80000000
                  li           a6, 0x80000000
                  li           a3, 0x80000000
                  li           t0, 0x13497d3f
                  nop
                  lui          tp, 572574
                  add          a3, t4, tp
                  add          a5, t4, s7
                  lui          s0, 381960
                  add          a5, a3, a3
                  auipc        s7, 583791
                  auipc        a3, 31752
                  auipc        a3, 285657
                  nop
                  auipc        s0, 458732
                  auipc        s8, 489649
                  add          a3, t0, a0
                  auipc        a5, 430406
                  addi         tp, tp, 1727 #end riscv_int_numeric_corner_stream_0
                  li           a7, 0x310bafa0 #start riscv_int_numeric_corner_stream_11
                  li           t4, 0xffffffff
                  li           s7, 0x0
                  li           s2, 0x80000000
                  li           s8, 0x1f99c4ea
                  li           a0, 0x80000000
                  li           a3, 0x80000000
                  li           t2, 0x80000000
                  li           s11, 0x80000000
                  li           a6, 0x0
                  nop
                  sub          s2, t4, a3
                  sub          s2, t2, a7
                  nop
                  addi         t2, s2, 1488
                  sub          s7, s11, a7
                  lui          s2, 964070
                  addi         a0, t2, 1202
                  add          t2, s7, a0
                  auipc        a7, 732262
                  add          s8, a7, s8
                  sub          a3, t2, s8
                  auipc        s11, 490336
                  lui          s11, 576205
                  sub          s8, s7, t4 #end riscv_int_numeric_corner_stream_11
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           t2, 0x45314bcb
                  li           s0, 0x0
                  li           s11, 0x80000000
                  li           gp, 0xffffffff
                  li           s3, 0x80000000
                  li           a5, 0xffffffff
                  li           s7, 0x0
                  li           s2, 0xffffffff
                  li           t5, 0xffffffff
                  lui          s3, 313041
                  nop
                  add          s8, t2, gp
                  nop
                  sub          s0, a5, gp
                  nop
                  addi         t2, s0, -1540
                  lui          s8, 775026
                  nop
                  addi         s0, gp, 1818
                  nop
                  sub          s0, t2, t5
                  sub          s8, s2, s11
                  addi         a5, a5, 159
                  addi         s3, s7, -1158
                  addi         s2, gp, -1765
                  addi         s11, s3, 1627
                  auipc        s8, 160417
                  nop
                  add          s11, t2, t2
                  add          t5, s8, s3 #end riscv_int_numeric_corner_stream_17
                  li           a2, 0xd23fdcfb #start riscv_int_numeric_corner_stream_10
                  li           s7, 0xf96b5e75
                  li           gp, 0x19ed889a
                  li           t4, 0xffffffff
                  li           ra, 0x80000000
                  li           tp, 0xffffffff
                  li           t1, 0x0
                  li           s5, 0x80000000
                  li           s6, 0xffffffff
                  li           t6, 0xffffffff
                  sub          s6, s7, ra
                  sub          s5, t4, gp
                  nop
                  auipc        t1, 212478
                  add          s5, tp, t4
                  lui          ra, 753947
                  sub          s5, t6, gp
                  sub          t1, s5, t1
                  lui          s7, 819169
                  lui          gp, 861116
                  addi         s7, s5, -301
                  addi         tp, s6, 972
                  sub          t4, t4, t6
                  auipc        t6, 702634
                  add          a2, s7, t4
                  nop
                  lui          s6, 289843
                  auipc        ra, 982280
                  add          s5, s7, t6
                  add          s5, a2, s7
                  auipc        t4, 1039419
                  nop
                  nop
                  sub          s7, ra, gp
                  sub          s5, t1, t6
                  lui          tp, 668399
                  sub          s6, t4, a2
                  addi         s6, tp, 10 #end riscv_int_numeric_corner_stream_10
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           tp, 0xffffffff
                  li           s1, 0xc44c068b
                  li           t2, 0xf50c0460
                  li           t1, 0x80000000
                  li           a6, 0xfff5de13
                  li           s0, 0xb3f3f8bb
                  li           s5, 0xffffffff
                  li           t0, 0xa261b08f
                  li           a3, 0x7a030f2e
                  lui          a6, 274781
                  auipc        tp, 514205
                  add          t0, tp, s0
                  sub          t2, a1, t1
                  add          t1, tp, s1
                  addi         a6, tp, 654
                  nop
                  addi         t2, s5, 190
                  sub          t2, a3, a6
                  auipc        s5, 168673
                  addi         a3, a1, -1833
                  sub          s5, t2, a1
                  lui          s1, 733729
                  auipc        tp, 10511
                  add          s0, t1, a6
                  addi         s5, t2, 95
                  add          s1, t0, t2
                  auipc        t2, 926374
                  nop
                  lui          t2, 404124
                  nop
                  addi         s5, t2, -1331 #end riscv_int_numeric_corner_stream_9
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           ra, 0x80000000
                  li           t2, 0x80000000
                  li           a5, 0xcc7348f8
                  li           gp, 0xffffffff
                  li           a0, 0xffffffff
                  li           a1, 0xffffffff
                  li           a6, 0xffffffff
                  li           s3, 0x0
                  li           tp, 0x0
                  sub          s4, a1, a5
                  add          a1, a5, a1
                  nop
                  addi         s4, a5, 1867
                  auipc        a5, 848353
                  lui          tp, 651631
                  nop
                  sub          tp, ra, ra
                  nop
                  add          a0, tp, s4
                  addi         t2, gp, 1691
                  lui          s3, 153154
                  sub          s3, t2, a1
                  nop
                  nop
                  add          t2, a0, a0
                  add          t2, a1, t2
                  sub          a6, t2, gp
                  lui          tp, 979261
                  addi         a6, t2, 533
                  sub          s4, s4, a1
                  add          a1, a1, a1
                  lui          s3, 246569
                  lui          gp, 970270
                  auipc        tp, 176041
                  sub          s4, a5, s3
                  sub          gp, a6, tp
                  nop
                  addi         s4, a0, -1860
                  auipc        t2, 12576 #end riscv_int_numeric_corner_stream_2
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s7, 0x80000000
                  li           s4, 0x42737481
                  li           s2, 0xe45b4e2b
                  li           t5, 0xffffffff
                  li           s0, 0x2a59738a
                  li           s10, 0x98cac5de
                  li           t1, 0x80000000
                  li           tp, 0x80000000
                  li           sp, 0x80000000
                  addi         sp, a6, 494
                  lui          s7, 742515
                  add          s10, t5, sp
                  add          s10, s7, sp
                  nop
                  auipc        t1, 622315
                  add          s7, s2, t1
                  nop
                  nop
                  add          s7, sp, a6
                  sub          t5, t1, s10
                  addi         s4, s2, -865
                  addi         s7, tp, 938
                  auipc        t1, 708185
                  add          a6, tp, s2
                  add          s4, sp, s7
                  lui          s0, 53760 #end riscv_int_numeric_corner_stream_15
                  ori          a5, a1, 1921
                  sltiu        a0, t3, 225
                  add          s3, s11, a3
                  sra          s1, s6, s0
                  sltu         s4, s1, s4
                  sub          tp, s11, zero
                  and          s1, t1, a7
                  lui          t6, 604909
                  srai         a2, a0, 5
                  addi         gp, t6, 1997
                  ori          s1, sp, -1579
                  add          s2, t3, t2
                  xor          a5, t5, a1
                  and          a2, s1, s10
                  srli         tp, ra, 17
                  nop
                  slli         s2, s5, 31
                  sll          t0, t1, a2
                  add          a0, s2, gp
                  ori          a6, s7, 43
                  slli         a6, s5, 15
                  sub          s1, a4, s10
                  sub          s2, t0, s2
                  sra          gp, s6, t4
                  andi         a6, s1, -1234
                  and          s8, s3, s11
                  nop
                  lui          a6, 873032
                  add          ra, s6, zero
                  srl          s0, a5, a3
                  sll          s3, s5, s1
                  lui          gp, 888408
                  lui          a6, 168532
                  sltiu        s1, t3, 1240
                  srai         s11, s3, 30
                  srl          sp, zero, t5
                  ori          a2, t5, 1393
                  srli         a0, a2, 20
                  sll          s10, t3, sp
                  auipc        s11, 934739
                  sltiu        a2, t4, -1359
                  sub          t0, s3, s11
                  auipc        s5, 835155
                  srl          s5, ra, t2
                  srai         t5, t0, 29
                  xor          sp, a1, s2
                  slti         a5, s4, -418
                  ori          a2, t6, -230
                  sra          s6, t5, t1
                  srai         gp, s10, 20
                  slt          sp, s2, a1
                  srai         ra, t3, 5
                  slt          t0, s10, a2
                  andi         a2, t3, 700
                  auipc        t6, 1006128
                  srai         s1, a3, 14
                  or           s10, s7, s11
                  xor          a2, ra, t1
                  sltiu        s1, a1, -645
                  xor          a2, s3, s1
                  and          t0, a4, t4
                  slti         a1, a7, -243
                  and          a3, t6, s2
                  or           s10, sp, t2
                  auipc        ra, 881753
                  srli         s10, s0, 10
                  addi         zero, a1, 91
                  srli         s3, a2, 0
                  lui          a3, 387862
                  xori         s2, s0, -1335
                  addi         a7, s7, 244
                  sra          a2, a1, s4
                  addi         s4, a2, 742
                  nop
                  or           s5, t2, s8
                  addi         s4, s6, 496
                  srai         t0, s8, 13
                  srl          s2, a4, t1
                  lui          s11, 471481
                  sll          s3, s2, a4
                  xor          s2, s11, s2
                  xori         tp, a3, 868
                  or           s4, s3, ra
                  slt          t4, s3, a5
                  slli         s4, a4, 0
                  xor          a2, a2, s4
                  srai         a3, t4, 25
                  srai         tp, s11, 27
                  and          a0, a1, s9
                  lui          s2, 593382
                  srli         a0, t2, 30
                  and          sp, a5, t1
                  add          s5, s4, s8
                  add          a5, s11, s11
                  addi         t6, zero, 700
                  add          s2, s8, ra
                  or           t2, t6, a1
                  nop
                  sltu         s6, tp, t5
                  and          s6, t2, t5
                  addi         t4, s5, 1069
                  sub          t2, a1, s5
                  sltiu        s2, a5, -2006
                  slt          tp, a1, a0
                  srai         t0, s8, 19
                  sub          t4, zero, a6
                  or           s4, a6, s5
                  sll          zero, sp, s3
                  srl          s10, ra, s9
                  slti         sp, t5, 761
                  sltu         s5, zero, s2
                  xori         s10, s2, 1211
                  add          sp, s2, s9
                  slt          t0, sp, t0
                  xori         s1, s2, -126
                  auipc        a1, 11294
                  sll          a2, s0, a3
                  auipc        zero, 572635
                  or           t5, tp, s11
                  lui          ra, 509015
                  or           s7, s8, t3
                  addi         sp, s10, 728
                  and          a0, s6, a4
                  slli         a7, sp, 16
                  addi         t2, t0, -1261
                  slli         s3, s10, 31
                  or           t2, t3, ra
                  slti         a1, t0, 1925
                  slti         t0, s7, -239
                  or           t2, sp, s5
                  srl          s7, t1, s6
                  addi         a1, a3, -250
                  lui          s6, 77373
                  srai         a1, t2, 31
                  slli         a1, t6, 8
                  auipc        t4, 261258
                  srl          zero, s7, s5
                  slli         a2, s9, 16
                  addi         t2, t2, -565
                  xor          t1, t5, sp
                  xor          s11, t6, s8
                  and          a7, a3, t5
                  srai         t4, ra, 20
                  sub          t6, a1, s1
                  slli         s6, a6, 11
                  slt          s2, s7, s11
                  srli         zero, s10, 11
                  and          s3, a5, t2
                  or           a2, s7, s10
                  addi         s3, a4, 575
                  andi         a3, zero, 1017
                  nop
                  nop
                  auipc        zero, 525554
                  srai         s11, t5, 30
                  srai         s10, s2, 13
                  slt          sp, s6, t0
                  or           t1, t1, t0
                  slli         s3, a7, 16
                  slt          a3, t3, t0
                  auipc        a0, 829323
                  andi         a6, a4, -1374
                  xori         s10, s1, -1164
                  ori          t2, t4, 482
                  lui          s2, 686486
                  sra          s4, zero, a7
                  sra          tp, s1, s2
                  sll          ra, a0, t1
                  xori         t2, ra, -1526
                  srl          t4, a5, a1
                  or           s11, s6, t6
                  sltiu        s0, s1, 1124
                  nop
                  add          t1, s11, s2
                  sll          a1, s5, s11
                  xori         t2, s4, -1156
                  andi         tp, t0, -1037
                  sltiu        s2, s2, -665
                  sub          s4, a0, a4
                  sltu         a3, zero, gp
                  srai         t5, t2, 3
                  and          s11, a1, s11
                  auipc        s3, 912029
                  slti         ra, s7, 1390
                  slli         a3, sp, 3
                  addi         s8, a4, 115
                  and          s1, s2, s10
                  addi         a7, a0, 1880
                  add          t0, t3, ra
                  ori          s2, t3, 1148
                  nop
                  ori          a3, a5, -109
                  lui          s6, 1007281
                  add          s7, a6, zero
                  srai         s7, ra, 19
                  sub          t6, s0, s2
                  srai         gp, s0, 13
                  sra          t1, t3, s2
                  andi         a6, zero, -184
                  and          tp, s2, t0
                  sltu         sp, s9, a3
                  slli         sp, s0, 24
                  slti         gp, t4, -702
                  sll          a5, s0, t4
                  sltiu        s0, a5, -1617
                  xori         s0, t1, -507
                  slli         a5, a5, 9
                  or           t1, a4, s2
                  ori          s7, a0, 134
                  sll          s6, sp, a7
                  srli         s10, s10, 17
                  sltu         a0, gp, a3
                  sll          a1, t4, a4
                  sll          s2, a0, a5
                  nop
                  sra          gp, s1, sp
                  srai         s1, s10, 2
                  nop
                  sltu         s5, tp, s6
                  xori         t2, a1, -909
                  xori         a0, s11, 328
                  nop
                  or           a6, t1, a3
                  slli         s3, a4, 20
                  addi         gp, a6, -1525
                  srai         a6, s10, 7
                  nop
                  andi         t0, s2, -1720
                  sltu         t0, a7, a3
                  sltiu        ra, a2, -1078
                  slli         s1, t4, 28
                  addi         t4, t6, 1705
                  slt          t5, ra, tp
                  auipc        s7, 901126
                  addi         a2, s6, 1435
                  add          t0, tp, s10
                  add          t1, a6, s6
                  sltiu        a6, a5, -1880
                  srl          t5, s1, ra
                  add          a5, s1, a5
                  xor          a7, t1, s5
                  andi         t1, s8, -1221
                  sll          s1, a4, s4
                  srl          s5, t3, a4
                  nop
                  srai         a6, a7, 14
                  slt          a5, t3, sp
                  nop
                  sltiu        s0, t4, 249
                  slti         gp, s4, 1273
                  srai         s1, t4, 28
                  add          a3, s10, s9
                  andi         s10, tp, 799
                  srai         ra, s2, 22
                  sub          tp, t0, tp
                  add          t4, s5, t4
                  srai         a6, t2, 24
                  ori          a3, s1, 91
                  sltu         zero, s7, t1
                  sll          s5, ra, t0
                  nop
                  xor          s2, s2, a1
                  addi         t5, a1, 1070
                  slli         t5, gp, 25
                  srli         t5, s2, 6
                  srl          a6, a0, tp
                  slt          a7, a7, s8
                  auipc        s1, 274287
                  andi         s2, s11, 234
                  sub          t6, a5, s11
                  or           s10, t0, tp
                  auipc        s7, 271194
                  sub          a1, tp, s3
                  xori         s3, t1, 359
                  auipc        t4, 705830
                  xori         s10, a2, 1678
                  lui          a7, 941797
                  add          s8, tp, t6
                  sra          a5, t4, s4
                  andi         s2, a4, 629
                  slli         t0, s8, 4
                  or           tp, s8, t2
                  addi         s2, t5, 1289
                  nop
                  ori          s0, s5, 1165
                  sra          t6, a1, a5
                  lui          a6, 290365
                  xor          sp, a1, s4
                  lui          t1, 549965
                  sltu         a6, s7, a7
                  nop
                  xor          s0, s7, ra
                  xor          t2, tp, a5
                  lui          a1, 196906
                  xori         a2, s3, -1243
                  sll          s11, gp, t1
                  addi         t5, s9, 1870
                  nop
                  slti         s10, s0, -415
                  nop
                  ori          t4, s10, 214
                  auipc        ra, 388397
                  srli         s6, s8, 13
                  xori         sp, t4, -453
                  auipc        s5, 580832
                  slti         sp, ra, -612
                  sltiu        s4, ra, 1079
                  add          gp, t6, s10
                  lui          a5, 585747
                  or           t5, t4, sp
                  srai         a7, t2, 9
                  slt          zero, t0, s10
                  sra          t1, t3, s6
                  slt          s8, t6, s4
                  xori         t5, s3, 1321
                  nop
                  or           t1, s5, s1
                  sub          s11, s6, a4
                  sra          t6, s11, s0
                  add          s7, ra, s2
                  xori         t4, a6, 1776
                  ori          s8, a6, -1185
                  nop
                  xor          a7, a5, s3
                  and          s11, s1, t4
                  nop
                  and          s2, gp, a6
                  sra          s5, s10, s10
                  auipc        gp, 822166
                  ori          s5, s9, 816
                  slt          s10, s7, t4
                  srl          s6, t6, a5
                  xori         t6, a5, -269
                  andi         s7, s7, -372
                  slti         zero, t4, -600
                  sub          s0, t3, zero
                  sub          t2, s10, s4
                  add          a1, s5, tp
                  srli         s7, a4, 31
                  and          a2, t1, s10
                  nop
                  add          a3, s9, tp
                  srl          ra, s9, a0
                  slti         t2, s4, -851
                  sub          s4, s7, s4
                  andi         s0, s1, 569
                  lui          a5, 152612
                  addi         a7, a1, 1756
                  sltu         ra, zero, a0
                  slt          s2, a4, s0
                  andi         s10, gp, 1720
                  sub          zero, gp, t6
                  srli         s6, a4, 12
                  srai         t1, s11, 27
                  srai         s11, a6, 16
                  andi         t2, s0, -521
                  auipc        s3, 444328
                  xor          s6, a3, ra
                  slli         sp, a7, 21
                  srai         tp, t4, 17
                  or           s3, ra, s6
                  srl          t0, a7, t1
                  srli         s4, s8, 28
                  sll          a1, gp, gp
                  sltiu        t6, s10, 1785
                  auipc        s6, 157109
                  xori         a6, ra, 1819
                  and          s0, t5, s8
                  ori          a7, a6, -13
                  xori         a2, tp, 1088
                  lui          s0, 322402
                  and          a7, t2, a4
                  sltu         s0, s0, t1
                  add          a7, t3, a3
                  xori         s10, s5, -876
                  ori          s1, a4, -1944
                  sub          s1, a7, s2
                  lui          a3, 1043249
                  andi         a2, t4, -104
                  nop
                  sll          t1, s2, tp
                  xori         s11, s5, 1533
                  sltiu        ra, s11, 141
                  slti         s3, s10, 581
                  sltu         s2, a1, s0
                  srai         a6, s7, 17
                  andi         tp, s10, -1020
                  sltu         s11, t0, a1
                  lui          t6, 688539
                  srl          ra, s9, s0
                  slti         s7, t2, -61
                  slli         zero, a6, 19
                  sub          s10, t1, t4
                  add          s11, gp, gp
                  nop
                  sll          s4, t6, s10
                  nop
                  sub          a1, a7, t4
                  or           a3, s5, zero
                  sltu         t6, a1, s11
                  sltu         ra, s0, a3
                  lui          s11, 671328
                  sub          a0, s0, s7
                  sub          ra, t4, a2
                  sll          sp, t0, zero
                  sltu         a1, a6, s8
                  nop
                  sra          t1, a1, a3
                  srl          s3, s11, t1
                  xori         t6, t5, -1657
                  sub          t4, a4, ra
                  xori         gp, a0, -1286
                  sub          t6, a4, a6
                  srai         sp, a7, 5
                  auipc        t0, 336517
                  srl          s10, t0, gp
                  sra          s10, t1, sp
                  sra          a2, t1, s7
                  add          ra, t2, a2
                  slli         s4, t4, 5
                  lui          gp, 1032159
                  sub          t0, a3, s4
                  srli         a1, ra, 26
                  xor          a6, ra, s10
                  andi         s2, a1, -1153
                  xori         t4, s0, 682
                  slt          s6, s7, t6
                  srli         s10, s1, 21
                  sll          a3, a6, a2
                  or           a0, t3, a6
                  andi         s7, tp, -460
                  or           t6, a6, a3
                  auipc        s11, 334956
                  sltiu        t4, s10, 1036
                  srai         t1, t3, 29
                  slt          gp, t3, s8
                  xori         a6, s5, 1296
                  xori         t4, ra, -1329
                  srl          a0, tp, s5
                  slli         t1, s2, 18
                  slli         s8, s7, 16
                  andi         s7, s0, 1666
                  xori         tp, s1, 1940
                  slli         s7, s7, 29
                  or           s4, s7, tp
                  add          s1, s11, t4
                  add          t1, t4, s5
                  sra          s5, t4, a4
                  auipc        t2, 922085
                  srai         sp, s1, 3
                  andi         ra, ra, 1744
                  or           s11, a4, a3
                  slli         a1, s8, 11
                  sra          a3, s5, s10
                  slli         a2, a2, 19
                  nop
                  or           gp, a6, s11
                  slli         s4, a7, 23
                  sll          zero, a2, sp
                  auipc        a0, 180239
                  xori         s6, s1, 1616
                  xori         t4, t1, 1388
                  sra          s0, s4, a7
                  srli         t0, zero, 2
                  srai         t1, a4, 9
                  slli         zero, a4, 31
                  sltu         a6, t6, t2
                  sll          tp, a2, tp
                  add          s0, t3, a4
                  nop
                  lui          t1, 108767
                  andi         s4, t4, 1224
                  ori          t4, t3, -370
                  slti         a5, s1, -349
                  and          tp, a2, s1
                  slti         s6, a2, -17
                  nop
                  ori          t1, a6, 768
                  srli         ra, s1, 18
                  slt          gp, t6, ra
                  nop
                  addi         a6, s8, 1192
                  addi         s0, s9, -383
                  sra          s8, s9, a1
                  ori          t2, s11, 839
                  add          t5, sp, s3
                  sub          s10, a1, tp
                  slt          a2, t1, a4
                  sra          gp, gp, a1
                  auipc        s8, 945621
                  slli         a1, a7, 4
                  xor          s8, t6, s3
                  srai         s5, sp, 20
                  xori         s1, t1, 733
                  srai         s8, t3, 29
                  and          s11, t0, t5
                  xori         t0, gp, 466
                  slt          a0, t4, t3
                  srl          s5, t4, s10
                  xori         sp, a4, -275
                  srl          s2, t2, s6
                  slli         s4, t2, 10
                  srl          a1, t6, a3
                  addi         a5, a4, 1566
                  srl          s3, tp, ra
                  lui          s2, 727177
                  ori          a6, t1, -1844
                  or           t4, t1, s11
                  srai         s5, s0, 9
                  slli         a0, a6, 12
                  srl          a2, a5, t3
                  srai         ra, s4, 12
                  sra          a0, a3, a0
                  auipc        s4, 81535
                  and          s8, a5, tp
                  ori          t2, a0, 1756
                  xor          s2, zero, t6
                  sra          s0, t2, s10
                  srai         s1, ra, 11
                  xori         a3, s5, 1974
                  nop
                  slt          a0, ra, s1
                  sltu         a0, s9, sp
                  nop
                  sll          tp, s10, s3
                  sll          s0, t6, a1
                  sltu         a1, ra, s4
                  sll          gp, s0, a4
                  slt          a5, t6, s7
                  srl          s10, s0, t1
                  or           ra, t2, s2
                  auipc        a3, 293020
                  addi         a6, s5, -1902
                  sltu         a2, t5, a7
                  srli         a1, a4, 10
                  add          s6, a4, s3
                  slli         s5, a1, 21
                  srai         a5, a2, 26
                  xori         s10, s8, -1629
                  or           a2, a7, t5
                  srli         s4, tp, 20
                  srai         a1, t1, 15
                  slt          s8, a1, a2
                  lui          a3, 915123
                  add          t1, s10, a7
                  srli         a0, t2, 0
                  ori          t2, s2, -1907
                  xori         t5, zero, 453
                  sltiu        s4, s2, 541
                  auipc        gp, 86803
                  xor          a1, s0, zero
                  slti         a7, s6, 2008
                  srli         s10, t1, 18
                  andi         gp, t4, -1849
                  sra          t4, a6, a0
                  srl          a1, a5, t6
                  sltu         tp, s0, s1
                  lui          gp, 263403
                  slti         a1, s8, 1144
                  slt          a3, t6, t6
                  lui          zero, 927682
                  xor          s3, a0, t5
                  add          gp, s6, t3
                  andi         s8, a4, -1305
                  or           s4, s1, t6
                  add          s4, a4, s11
                  auipc        t0, 960612
                  srai         gp, t0, 5
                  lui          t5, 964567
                  slti         ra, s11, -1307
                  and          t0, t6, sp
                  sltu         gp, a1, t3
                  add          s3, s5, t3
                  nop
                  sub          s4, s4, a3
                  auipc        t0, 856728
                  slt          a5, s11, t5
                  sub          s3, s11, s0
                  add          a1, s3, a3
                  add          s1, s3, a1
                  srai         tp, s3, 8
                  sub          t2, s9, s8
                  sltu         s6, s7, t3
                  xor          tp, gp, s5
                  sll          zero, gp, s7
                  sub          a3, s1, t4
                  ori          s10, t3, -1616
                  sltu         s11, s8, s7
                  sll          t4, s3, s4
                  andi         s7, gp, 1835
                  srai         s3, s3, 1
                  sltiu        a6, gp, 349
                  sra          a7, a2, sp
                  and          s10, a5, s9
                  srli         a1, s11, 10
                  sltu         t4, s1, ra
                  auipc        gp, 95634
                  srli         zero, t5, 0
                  add          t5, a1, t0
                  sltiu        tp, s11, -90
                  sltiu        zero, sp, -1250
                  ori          s3, a7, 1143
                  slt          zero, t1, a0
                  add          s0, a5, a2
                  srli         t2, gp, 26
                  sltiu        s7, a6, -887
                  add          zero, a5, a1
                  nop
                  slli         s11, s8, 25
                  add          t4, a4, t3
                  andi         s4, s4, 1018
                  lui          s0, 1036932
                  or           a3, s4, ra
                  lui          t2, 255567
                  xor          a5, a3, t2
                  sltu         t1, s2, t2
                  sltiu        t4, s10, 1278
                  sra          s1, a4, zero
                  slt          t4, s3, t4
                  auipc        s1, 340993
                  srli         s8, s7, 24
                  slli         tp, a4, 4
                  auipc        s4, 240477
                  srli         a7, t4, 29
                  andi         s11, t6, 1446
                  xor          s7, t5, ra
                  xor          a7, sp, a2
                  auipc        a3, 34630
                  sll          s5, a5, t3
                  srli         t5, t5, 8
                  nop
                  add          s1, ra, t2
                  xor          s11, a4, a2
                  auipc        ra, 396969
                  srai         gp, t4, 9
                  nop
                  srai         a2, a1, 22
                  sub          t6, t5, s7
                  sltu         s6, s8, t2
                  auipc        s4, 1004736
                  lui          zero, 234010
                  andi         s8, zero, 987
                  srl          s7, t4, t6
                  sltiu        t4, s4, 1450
                  xor          s7, s3, s5
                  sltiu        a2, zero, -1208
                  li           s10, 0xeef8ca2 #start riscv_int_numeric_corner_stream_7
                  li           a3, 0x80000000
                  li           a0, 0x1addbfb0
                  li           a5, 0xffffffff
                  li           t4, 0x80000000
                  li           tp, 0x1441a028
                  li           t2, 0x0
                  li           t5, 0x11773e69
                  li           s8, 0xffffffff
                  li           ra, 0x0
                  sub          s8, a3, t5
                  add          ra, t2, tp
                  auipc        a5, 216641
                  auipc        t5, 158542
                  lui          t4, 232397
                  auipc        a0, 821015
                  auipc        a0, 325907
                  lui          tp, 935456
                  add          ra, t4, t5
                  auipc        a3, 499613
                  auipc        a0, 756226
                  addi         s10, a0, -1843
                  lui          s10, 11091
                  lui          s10, 436399
                  lui          t2, 765524
                  auipc        t4, 333002
                  addi         a0, t5, -1301
                  addi         t4, s10, 968 #end riscv_int_numeric_corner_stream_7
                  slt          s10, s2, s2
                  sra          zero, sp, s10
                  slt          gp, sp, s11
                  addi         s0, t1, -1708
                  srl          s4, a0, s2
                  addi         t6, a5, 1643
                  srli         s11, tp, 12
                  slti         s3, s8, 896
                  slt          s3, a6, a1
                  sub          t5, s0, s7
                  sra          t6, s2, t5
                  srl          s6, a5, s4
                  slti         s5, s5, -710
                  add          s5, s2, s4
                  sra          s8, a0, t6
                  sltiu        s6, s5, 1341
                  sra          s1, s7, gp
                  srl          t5, t4, gp
                  srai         s8, a3, 13
                  slti         a7, zero, -1892
                  slti         a0, s7, 406
                  lui          a0, 1040362
                  slt          s0, a0, a6
                  srl          s10, s8, s5
                  sltiu        zero, s6, 1819
                  andi         a6, tp, 1244
                  auipc        s1, 499387
                  xor          s6, a1, s9
                  and          t6, gp, a2
                  sll          t6, tp, gp
                  and          s2, gp, s7
                  ori          t0, tp, 1800
                  addi         s5, s4, 1434
                  srl          a1, a1, gp
                  srai         a6, a6, 29
                  slli         t0, a4, 12
                  sltu         sp, a5, t6
                  andi         gp, a7, 727
                  or           s6, a1, t5
                  slli         s5, sp, 2
                  sltiu        t0, s5, 1902
                  nop
                  sll          sp, a4, s4
                  lui          s0, 362994
                  auipc        a0, 269101
                  sub          gp, gp, s0
                  srli         t0, t1, 6
                  slti         s11, a6, 1608
                  slt          tp, s11, sp
                  or           ra, a2, ra
                  xor          t1, a7, t2
                  or           a1, a5, t6
                  or           t5, sp, s4
                  or           s0, s10, s1
                  slli         ra, t5, 12
                  srai         t0, s2, 30
                  xori         s2, a6, -1628
                  and          s4, a6, s9
                  sltu         a3, t1, s11
                  andi         zero, t5, -581
                  nop
                  sll          s0, a0, a0
                  sra          s6, t4, a5
                  xor          t6, a4, a0
                  sub          a3, s9, s3
                  auipc        ra, 403138
                  andi         gp, a7, -1290
                  xor          s7, t2, ra
                  xor          s8, s4, sp
                  auipc        a1, 533087
                  nop
                  and          gp, s4, s2
                  sltu         sp, a0, sp
                  or           s5, s11, t4
                  auipc        s1, 977870
                  slli         s10, s3, 7
                  slt          s8, a3, s10
                  ori          sp, t6, 1212
                  lui          t0, 1023319
                  xor          ra, s3, s0
                  slli         s4, s6, 31
                  or           t2, s6, zero
                  srl          gp, s9, t3
                  sll          t0, t6, a7
                  addi         a1, s10, 1087
                  sra          a6, a2, t6
                  slti         a6, ra, 916
                  and          a2, s4, a3
                  andi         s2, s0, 2037
                  xor          tp, tp, s0
                  lui          s10, 368472
                  slli         s6, s4, 5
                  slti         s6, s4, 1972
                  and          a0, t4, s3
                  auipc        zero, 232095
                  andi         sp, s7, -1230
                  sll          zero, a0, s2
                  slti         a7, zero, -1365
                  add          a0, gp, a0
                  sltiu        s2, t2, 989
                  nop
                  nop
                  auipc        t2, 286220
                  slti         a0, sp, 1294
                  srai         s2, s11, 29
                  sub          s8, s8, t3
                  sra          s8, s10, s9
                  sll          t4, t6, s9
                  andi         t5, t5, 1057
                  sub          a5, a4, t5
                  slti         s7, t0, -1262
                  sub          a2, a3, t2
                  srai         a0, t4, 0
                  sltu         s3, t4, a1
                  slti         a5, s0, -2036
                  andi         s4, a3, 173
                  slli         t2, s2, 21
                  slt          a7, t2, s9
                  or           s4, s11, t4
                  slli         gp, a7, 31
                  slt          s7, s7, s9
                  sltu         a2, a0, t4
                  srli         tp, a3, 15
                  sra          a6, s1, a4
                  sub          zero, a7, t2
                  andi         t5, t3, -629
                  sra          tp, a4, zero
                  addi         a5, s9, -36
                  sub          ra, tp, s10
                  or           a3, t4, t4
                  or           a2, s6, a5
                  sra          s0, t4, t3
                  lui          s7, 22210
                  xor          ra, t2, t3
                  sltiu        t1, gp, 1628
                  auipc        t0, 200423
                  and          t2, t2, s1
                  sub          s10, s1, s4
                  srl          t5, s5, a2
                  nop
                  xor          s7, s2, a7
                  lui          t1, 974001
                  sub          s0, a6, zero
                  and          zero, ra, a7
                  srli         a6, a0, 2
                  lui          s2, 267292
                  or           s0, s8, a3
                  slli         a7, a0, 28
                  sub          gp, s2, a2
                  srai         s5, t1, 7
                  sub          s3, a3, s10
                  ori          t2, s9, 847
                  and          gp, s6, s3
                  nop
                  ori          t6, t5, -58
                  auipc        a7, 75879
                  and          s6, t3, s9
                  ori          t5, s10, 1165
                  sltiu        s7, t4, -1418
                  srai         s2, s11, 14
                  sltu         a7, s2, s10
                  slt          s0, a3, a3
                  xor          tp, s9, s7
                  xori         s0, t6, 458
                  auipc        a3, 497533
                  nop
                  and          s3, s4, s11
                  sll          t1, s6, s5
                  auipc        a7, 846246
                  srli         a6, t0, 16
                  slt          t6, s6, a2
                  and          t1, s6, sp
                  sltu         sp, t5, s4
                  lui          s6, 98902
                  slt          s11, ra, a0
                  sub          ra, a7, t1
                  addi         t4, zero, 540
                  slt          s2, sp, t5
                  slti         a6, s10, 822
                  and          t6, sp, s3
                  slti         a3, t0, -989
                  sltiu        a7, t1, 1999
                  auipc        t2, 627542
                  ori          s3, s2, -642
                  addi         a7, t3, 276
                  ori          s5, a0, -463
                  addi         s5, ra, -1280
                  lui          sp, 266155
                  auipc        t6, 757873
                  sltiu        t1, a5, 63
                  srai         s3, t2, 29
                  and          s11, s6, t0
                  sub          t5, s0, s11
                  and          t0, a0, s11
                  andi         t1, tp, 107
                  srai         sp, s3, 1
                  srai         s7, ra, 11
                  auipc        t5, 360046
                  nop
                  slt          s5, s7, s8
                  slli         a1, t4, 6
                  srl          a2, s6, a0
                  srai         zero, s10, 17
                  sub          sp, s0, gp
                  slt          s1, a7, gp
                  lui          s10, 101679
                  xori         s6, a4, -679
                  sll          a7, s3, s6
                  andi         s5, t6, -486
                  sll          s3, a7, a4
                  slti         s4, a6, 309
                  sltiu        t1, a3, -570
                  sltu         s0, s0, t0
                  auipc        a6, 1003183
                  auipc        s4, 152394
                  xori         t4, t3, 906
                  sub          s5, a4, s6
                  srai         t6, s10, 0
                  ori          sp, t2, -1024
                  sub          s5, a6, s5
                  xori         s3, a3, -1306
                  slti         s1, t4, 370
                  auipc        a3, 105471
                  sub          t0, t6, sp
                  slti         t6, s8, -1406
                  slli         s7, s7, 7
                  nop
                  sra          s0, zero, s9
                  sltu         zero, gp, t6
                  sll          a0, a6, a1
                  srai         a1, gp, 21
                  and          s0, s11, t0
                  sltu         s5, s7, ra
                  and          a2, t2, s6
                  sltiu        ra, t1, 1093
                  sll          s10, s2, s3
                  srli         s6, s7, 16
                  nop
                  auipc        zero, 245963
                  sltu         ra, s10, a3
                  xor          t2, s11, t4
                  andi         a0, s8, 908
                  auipc        a6, 189738
                  ori          a0, t1, -70
                  sll          a7, t3, s6
                  srai         ra, a6, 22
                  sltu         t2, t2, a0
                  nop
                  ori          s1, a4, -800
                  nop
                  sub          zero, tp, zero
                  andi         gp, t2, 990
                  srli         t4, a6, 5
                  sltu         t1, s8, s5
                  sltiu        zero, a2, -1588
                  slti         s7, a4, 473
                  srli         s4, a4, 26
                  sltiu        a5, a6, -150
                  slt          a0, t3, a2
                  slt          zero, s7, zero
                  add          s4, t6, ra
                  slt          a3, t1, a7
                  and          s3, t3, s11
                  sra          t2, s11, ra
                  srl          t4, a5, gp
                  sub          s2, t4, sp
                  srl          t0, tp, s8
                  addi         tp, t0, 1195
                  srli         t6, s7, 2
                  sltiu        s5, tp, 710
                  srai         a0, a3, 12
                  srl          t1, a4, a6
                  sub          s10, s0, t2
                  auipc        a7, 801811
                  add          s0, a7, s9
                  xor          a7, s2, s8
                  sub          a6, gp, t5
                  sltu         t0, ra, t1
                  sltu         a0, t0, s3
                  sltu         ra, s8, s0
                  add          a0, s8, zero
                  ori          a2, s1, -1083
                  slt          a0, a7, a3
                  sltiu        t6, s5, -996
                  sra          zero, tp, s8
                  srai         a3, a5, 14
                  slti         s5, t3, -1706
                  srai         tp, s4, 16
                  slti         gp, gp, -1442
                  srl          a6, t2, zero
                  slt          t0, gp, a0
                  xor          s2, ra, a7
                  nop
                  sub          s1, s9, t5
                  andi         t1, t5, 807
                  srli         s11, a0, 26
                  slti         t0, t2, -672
                  addi         a2, t1, 1993
                  srai         tp, t3, 20
                  xor          s8, s5, sp
                  srli         a6, sp, 7
                  andi         t0, sp, -908
                  andi         s3, s0, 176
                  or           t6, s6, s3
                  sltu         s4, s3, a5
                  xori         gp, s8, 1978
                  slli         sp, t1, 27
                  and          a1, sp, s5
                  lui          tp, 309932
                  sub          s7, t6, s1
                  sll          t2, s10, t6
                  and          a1, zero, a0
                  srl          zero, a0, a2
                  sll          t1, a0, t0
                  xor          a1, a4, ra
                  sltu         s4, s7, ra
                  and          s4, a4, t6
                  sltiu        t0, zero, -466
                  add          t1, s7, t2
                  add          t5, t0, tp
                  srli         a5, s0, 15
                  slli         s3, a4, 5
                  slli         s11, s1, 9
                  auipc        a1, 152705
                  sltu         t6, t1, a4
                  andi         tp, a2, -1400
                  slli         s8, s11, 31
                  add          t6, a6, s4
                  sltu         t2, s6, sp
                  sltiu        t1, t3, -187
                  lui          t6, 409365
                  slt          s4, t4, t2
                  addi         s2, ra, 449
                  slt          s0, s9, sp
                  srai         t2, a4, 10
                  sltu         s2, a0, ra
                  lui          s4, 468988
                  slti         a1, s6, 648
                  ori          t0, gp, -856
                  slli         ra, s10, 23
                  andi         a5, s8, 1082
                  srai         s0, t2, 23
                  srl          s4, a1, s2
                  sub          t1, s7, a1
                  lui          tp, 634607
                  addi         a7, tp, 278
                  slli         tp, t0, 15
                  xori         a6, tp, 317
                  addi         s11, t6, -1070
                  srai         s0, ra, 3
                  sltu         s4, zero, s1
                  xor          t4, gp, sp
                  slli         t4, tp, 31
                  xor          s2, s11, a2
                  slti         s3, s0, -523
                  and          s11, t4, s3
                  addi         t4, s2, 832
                  add          s1, t4, t5
                  andi         tp, s6, -682
                  slt          s11, zero, sp
                  slti         a7, s8, 1263
                  slti         s5, a6, -1062
                  xori         s10, s8, 1351
                  srai         s10, s6, 27
                  auipc        a3, 825433
                  sll          s0, t6, s1
                  ori          a7, s4, 1230
                  ori          s7, s11, -1001
                  srai         t1, t1, 6
                  nop
                  srl          t0, s7, a5
                  andi         s4, s11, -143
                  and          s2, a7, s7
                  xori         s8, a0, -922
                  lui          t6, 1002376
                  nop
                  sll          s10, a7, a7
                  auipc        t4, 851389
                  add          t5, a6, t5
                  add          a6, s3, s3
                  srai         t1, sp, 0
                  sltu         s11, sp, s2
                  ori          s4, s8, -1430
                  sltiu        zero, a3, 1695
                  add          tp, t6, a5
                  and          a5, t0, s1
                  sll          t6, s9, t4
                  addi         s1, t0, 993
                  sub          a7, tp, a4
                  slti         s7, t1, 1708
                  or           sp, s0, s1
                  andi         a2, s9, -1498
                  xori         s1, t3, 1458
                  auipc        t6, 382351
                  slli         s0, a5, 16
                  auipc        tp, 454976
                  or           t4, s11, s8
                  slli         s5, a3, 26
                  sub          zero, s4, a5
                  sll          t5, s0, s11
                  lui          s10, 640543
                  slti         ra, t3, -1900
                  addi         a7, zero, 30
                  slt          a3, t4, tp
                  addi         t6, a1, 1481
                  sltiu        s5, s4, -1567
                  sra          a3, s7, s2
                  andi         s11, s8, 1997
                  sltu         a3, s7, tp
                  and          s8, a7, gp
                  sltu         s10, t1, tp
                  lui          s3, 749556
                  xori         a6, s8, 324
                  auipc        ra, 710322
                  srai         t0, s9, 10
                  sra          gp, s5, a3
                  xori         a5, s1, 661
                  srli         s2, a6, 26
                  slli         sp, t1, 31
                  sll          s1, a5, s8
                  srli         s6, t2, 7
                  slli         s0, gp, 19
                  srai         a7, zero, 24
                  slt          zero, s8, a6
                  andi         s10, a5, -667
                  andi         a7, s5, -45
                  sltiu        s8, s9, 1776
                  andi         a2, s7, 193
                  xor          gp, s1, t4
                  slt          s2, s8, a3
                  sub          s8, t4, t4
                  andi         s8, s11, 2000
                  xor          s7, t4, s6
                  xor          t1, s10, ra
                  addi         t0, s0, 1762
                  srai         s6, s4, 21
                  sra          a2, zero, gp
                  sub          s11, t1, s1
                  lui          t4, 411531
                  srli         s3, t6, 23
                  nop
                  sltu         a0, a6, s10
                  xor          s10, a6, a3
                  lui          s11, 406002
                  sub          s2, a6, a6
                  srli         a2, s6, 3
                  sub          s10, s7, t2
                  slt          sp, s4, tp
                  addi         s4, s3, 1242
                  auipc        ra, 765004
                  sub          a1, s10, a2
                  sra          s3, sp, a2
                  sub          t2, a5, ra
                  sll          a2, s7, t6
                  nop
                  andi         a5, a2, -1033
                  auipc        t6, 481196
                  sltiu        s3, s8, 591
                  add          a7, t0, tp
                  srai         t4, t1, 23
                  srli         s8, s5, 0
                  xori         s8, sp, -1467
                  sll          t1, s5, a0
                  addi         t6, t6, -811
                  addi         sp, t2, 314
                  xori         s8, t3, 1459
                  slli         t5, tp, 1
                  srli         a7, s5, 8
                  and          t5, sp, s6
                  sltiu        sp, a1, 991
                  lui          s8, 66595
                  sltu         a6, s9, s11
                  auipc        t2, 208220
                  sltiu        t4, ra, -683
                  andi         a1, s7, -1634
                  xor          t0, s2, sp
                  srli         s3, tp, 9
                  and          sp, t3, t6
                  and          a0, a6, a0
                  xori         s3, a0, -1520
                  or           a6, a5, a3
                  addi         gp, s4, -1180
                  sltu         zero, t1, a6
                  sra          s8, gp, t4
                  sltu         t4, s3, a5
                  sll          s1, a7, a4
                  slti         a1, t2, -1215
                  slti         s10, t2, -532
                  slli         t1, t0, 27
                  ori          s2, a0, 1597
                  nop
                  sltiu        ra, gp, -1059
                  srli         gp, s3, 7
                  xori         a1, s0, -404
                  add          a5, s9, s0
                  andi         s4, s7, 1315
                  sll          s6, s10, gp
                  andi         s7, t1, 1180
                  lui          a0, 790010
                  and          a1, tp, a5
                  auipc        s7, 1002270
                  xori         a1, s4, -1598
                  sll          zero, t5, a0
                  xor          s3, gp, s6
                  xor          s0, a0, s6
                  sltu         ra, s8, a4
                  xori         a7, s9, -567
                  auipc        a1, 841757
                  addi         t2, s3, 252
                  srai         s6, t3, 27
                  auipc        ra, 786309
                  sra          s2, sp, s10
                  sltu         t4, t0, s3
                  andi         zero, sp, -760
                  and          s10, t1, a0
                  slli         a0, ra, 2
                  and          gp, s10, s4
                  ori          t2, s2, -1730
                  slt          a6, s2, t1
                  or           s0, a3, zero
                  sltu         a5, t4, tp
                  slti         t5, a3, 234
                  auipc        t5, 508525
                  lui          a2, 891819
                  xor          a2, a7, s1
                  sltu         s5, s3, s2
                  sll          t2, ra, t0
                  slli         a7, a1, 3
                  lui          t5, 18900
                  addi         sp, s4, -966
                  and          a3, s0, sp
                  sub          s6, s5, ra
                  auipc        a2, 188028
                  xor          sp, a1, t2
                  srl          a7, s6, s1
                  sll          s4, s11, zero
                  addi         gp, t0, -2025
                  slti         sp, ra, 1562
                  slt          t0, a1, a1
                  andi         t5, ra, 1337
                  or           s6, t4, t1
                  xori         s7, t5, 68
                  xor          zero, ra, t2
                  sra          t2, gp, s1
                  andi         t5, s0, -1151
                  srl          t6, s2, t4
                  slli         s10, t4, 20
                  sltu         a1, t5, t4
                  srli         s6, t3, 8
                  srai         a7, s4, 10
                  or           s10, s7, t2
                  and          t6, a6, s0
                  auipc        t4, 782184
                  sltu         a3, s1, s8
                  or           a7, s11, s9
                  auipc        t4, 289069
                  sltu         s8, t3, t1
                  add          zero, a0, a0
                  sltu         t5, a3, a2
                  andi         s10, a5, 5
                  srli         zero, s7, 4
                  sltiu        s3, a4, -1187
                  andi         t4, a6, -717
                  sltiu        t6, gp, -1923
                  srl          s0, a5, zero
                  sra          s5, tp, a7
                  auipc        s7, 850462
                  lui          s4, 909903
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           t0, 0xffffffff
                  li           a7, 0xffffffff
                  li           s3, 0xdd264776
                  li           s11, 0x18903fdf
                  li           t2, 0x22966cf3
                  li           s2, 0x80000000
                  li           tp, 0xffffffff
                  li           a6, 0xa591db71
                  li           s4, 0x1680aac3
                  lui          a6, 164718
                  nop
                  lui          s4, 1025626
                  lui          s3, 127720
                  auipc        s5, 519452
                  add          t2, s5, s4
                  lui          s2, 735135
                  sub          s3, s11, t2
                  lui          t2, 352587
                  sub          a7, t0, s5
                  lui          a7, 6972
                  lui          s5, 14033
                  addi         t2, s11, -93
                  add          t2, s4, s2
                  nop #end riscv_int_numeric_corner_stream_8
                  srl          sp, s3, t0
                  sll          sp, a1, a2
                  sltiu        t4, tp, -677
                  andi         s6, s4, 1814
                  sll          s2, s7, gp
                  slti         t0, t3, 389
                  add          t1, ra, tp
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a2, 0x0
                  li           sp, 0xffffffff
                  li           t6, 0xffffffff
                  li           gp, 0xffffffff
                  li           s5, 0x0
                  li           t1, 0xffffffff
                  li           tp, 0xffffffff
                  li           s3, 0xffffffff
                  li           t4, 0xffffffff
                  lui          s5, 197470
                  auipc        s3, 425902
                  lui          s5, 390955
                  lui          t4, 458672
                  auipc        sp, 561763
                  sub          t4, t4, t6
                  nop
                  auipc        a2, 861367
                  lui          t4, 947458
                  add          tp, tp, tp
                  nop
                  add          gp, gp, sp
                  nop
                  auipc        sp, 290335
                  addi         a2, sp, 969
                  add          t6, tp, s5
                  addi         t6, t6, -365
                  add          t6, t6, gp
                  sub          s3, a2, gp
                  nop
                  auipc        s10, 1021503
                  lui          sp, 519355
                  lui          tp, 479273
                  add          gp, s3, s5
                  auipc        tp, 548154
                  lui          sp, 289704
                  lui          s3, 4942
                  sub          gp, t6, s10
                  sub          t6, t4, s5 #end riscv_int_numeric_corner_stream_14
                  srli         gp, a0, 18
                  ori          a5, t2, 290
                  slti         sp, t3, -556
                  or           s1, a2, t1
                  lui          t1, 237896
                  add          a6, s1, t3
                  srli         s2, a7, 25
                  auipc        sp, 890574
                  srai         a0, s8, 26
                  nop
                  add          t0, s6, t3
                  or           a1, a7, sp
                  lui          a7, 767995
                  srli         s1, s8, 17
                  addi         a6, t3, -481
                  lui          s0, 793798
                  lui          a2, 748401
                  nop
                  slti         a1, s1, -381
                  nop
                  sra          t1, zero, a6
                  andi         s8, t1, -283
                  sub          a5, s4, s11
                  andi         a2, s10, 184
                  slti         t4, s2, -1039
                  srl          t5, a0, s2
                  or           s7, ra, a0
                  srl          s10, ra, a3
                  srli         t6, s2, 14
                  sltiu        t0, a5, -1971
                  xor          zero, s10, sp
                  slli         zero, a1, 22
                  slt          a1, s3, ra
                  xor          t1, a7, gp
                  slti         s1, a0, -1589
                  add          s2, s1, s3
                  andi         sp, a6, 30
                  addi         gp, s5, 91
                  sub          ra, a3, t6
                  and          a6, a0, s9
                  slti         t5, s4, 686
                  add          a0, s5, s9
                  and          zero, s5, gp
                  slt          a0, s10, s0
                  andi         a6, a1, 2027
                  xori         s8, a4, 877
                  addi         t0, t6, -821
                  slli         ra, s8, 22
                  sub          t1, s11, a3
                  sll          a6, t1, t5
                  nop
                  nop
                  addi         s2, s0, -1527
                  or           t5, s6, t0
                  slt          t2, tp, t4
                  srai         ra, a3, 28
                  srli         s6, a6, 22
                  xor          s11, ra, s9
                  add          gp, a6, a3
                  slli         s8, t4, 8
                  and          a7, t3, a2
                  xor          s10, s6, t6
                  ori          t5, a4, -762
                  sra          a3, t6, s7
                  addi         s8, s0, 429
                  srl          a7, s11, zero
                  slt          s7, s0, a4
                  andi         zero, t2, 521
                  sltu         t0, s8, s11
                  xor          s8, sp, a3
                  slt          ra, a4, t3
                  ori          s11, ra, 1218
                  xor          a5, sp, a6
                  andi         a2, a0, -657
                  sra          gp, t1, a7
                  srl          t0, s10, s0
                  lui          s6, 688449
                  or           t2, a6, s9
                  xori         s3, s6, 1492
                  sra          a1, s10, s8
                  and          s7, s5, a5
                  sltu         a5, a7, t6
                  sra          s10, s1, zero
                  slti         t2, s7, -1398
                  slt          a7, s8, a6
                  or           s7, t6, s0
                  sll          a5, t3, ra
                  sra          s2, t5, zero
                  srai         a7, t3, 19
                  slli         gp, a4, 17
                  nop
                  slli         t4, a3, 21
                  lui          ra, 82381
                  sll          a2, t5, s5
                  sltiu        s1, s0, 1768
                  nop
                  xor          s1, tp, s6
                  xori         a2, gp, 1666
                  xori         a2, t6, -560
                  sltiu        ra, s0, 174
                  sub          a3, sp, a6
                  srai         a6, tp, 29
                  add          t2, s0, a3
                  srli         s11, a1, 20
                  sltu         tp, t4, t3
                  slti         tp, sp, -819
                  srli         gp, a3, 6
                  xori         s3, a0, 4
                  addi         t2, a7, -2023
                  srai         gp, s9, 26
                  srai         a6, ra, 2
                  sltiu        s8, a5, -706
                  add          s2, s9, t1
                  xor          a6, a1, s5
                  xori         s3, a1, 642
                  sub          a0, s8, t5
                  xor          s0, a6, a1
                  slli         t6, s6, 11
                  xor          s3, t5, zero
                  and          gp, tp, t6
                  xor          a6, a1, ra
                  srli         t5, t0, 7
                  slli         zero, sp, 13
                  addi         gp, a5, -192
                  srli         s1, t3, 14
                  slli         tp, t6, 5
                  slti         s11, t6, 476
                  slt          s8, a4, s4
                  sltu         t6, t3, s8
                  slli         a0, zero, 1
                  sll          t0, a5, a7
                  andi         s5, s5, 654
                  addi         s5, s9, 988
                  sub          sp, s3, a2
                  srli         a7, t5, 2
                  or           s7, t6, a1
                  and          t1, s11, s8
                  sub          t4, t1, s2
                  auipc        a3, 695013
                  srl          a0, t6, a7
                  nop
                  slt          s8, a2, s7
                  and          t4, ra, s11
                  andi         s4, s5, 173
                  add          s11, a2, tp
                  xori         s8, s3, 1625
                  srai         s0, sp, 17
                  sltiu        t4, zero, 492
                  ori          a7, sp, 554
                  srl          s10, t5, s11
                  sra          t1, t2, a5
                  sra          s8, s7, s5
                  lui          s6, 143734
                  slli         s5, t1, 6
                  srl          tp, a3, s4
                  and          a5, t4, a3
                  sltu         a2, s8, zero
                  xori         t6, t5, -13
                  slti         a0, t4, -2041
                  xor          a0, a5, s6
                  srl          s8, t1, a7
                  srli         s4, t2, 17
                  ori          a3, a7, 186
                  lui          a6, 355997
                  and          s8, a4, s8
                  lui          s5, 869686
                  xor          tp, s9, s0
                  lui          a7, 598839
                  and          s2, s11, a3
                  srai         gp, t6, 18
                  add          s1, s2, t1
                  sltu         sp, t4, t1
                  nop
                  andi         a7, s5, 888
                  xor          sp, ra, t4
                  and          a2, s0, t0
                  nop
                  andi         s7, a2, -766
                  add          sp, t0, t4
                  xor          t0, t1, a4
                  sltu         t0, s8, ra
                  sub          a1, s1, s0
                  slli         s3, a3, 30
                  sll          a3, sp, a5
                  ori          a2, zero, 1763
                  ori          t5, s9, 225
                  sltu         zero, s8, t6
                  and          tp, s9, t0
                  and          t5, s2, a2
                  slli         a3, t5, 16
                  slli         a1, s10, 7
                  slti         t1, t2, 418
                  and          t1, a1, a0
                  and          s2, a6, s8
                  nop
                  sra          t5, s2, ra
                  sltu         sp, t2, t6
                  sra          s4, t2, s10
                  add          t4, t1, s9
                  sra          t1, a2, t2
                  add          a3, a5, t6
                  xori         t6, t5, -452
                  addi         a1, t0, -1750
                  srli         a3, s2, 13
                  srli         gp, s5, 13
                  add          s7, a6, tp
                  sltiu        t5, t4, 1336
                  slt          a5, a6, s1
                  xor          t4, ra, t3
                  slli         a2, a3, 4
                  srl          sp, t4, s7
                  slt          t2, sp, t5
                  sub          t4, s4, s9
                  srli         a1, a1, 5
                  sltu         s11, t6, t4
                  sub          s11, t0, a7
                  ori          a1, s3, -1437
                  slt          ra, t5, t4
                  and          a0, t6, t3
                  srai         a3, s2, 26
                  sltiu        a2, t3, 1360
                  slli         s1, s4, 23
                  nop
                  and          s8, zero, t6
                  add          zero, t3, tp
                  sub          tp, tp, a6
                  xori         s11, t6, 770
                  slli         s10, tp, 29
                  srai         t4, t3, 24
                  andi         t5, s4, 867
                  slti         zero, t2, -1186
                  sll          tp, s0, zero
                  sll          a5, s6, s11
                  add          gp, s7, t1
                  auipc        s11, 185145
                  xori         s1, s8, -1597
                  or           s10, a5, s4
                  srli         a1, t6, 27
                  slli         a7, t3, 31
                  sub          t6, t0, s11
                  add          s0, ra, s5
                  sra          s5, t0, a2
                  xori         zero, zero, -642
                  addi         s8, t0, -1453
                  and          s6, s4, zero
                  andi         gp, s7, 1373
                  srl          t0, a5, ra
                  srl          s8, t0, s7
                  srai         a7, a7, 20
                  slli         t0, t4, 13
                  and          t0, ra, a2
                  and          s7, t5, s1
                  sltiu        s11, s1, -303
                  addi         a7, s10, 462
                  ori          s10, t2, -2036
                  lui          s5, 84895
                  slti         t5, a0, 1952
                  or           t1, a0, a3
                  or           sp, t0, s11
                  sltiu        s11, sp, -84
                  andi         a2, a3, 928
                  ori          a5, s9, -1694
                  xor          a6, s5, t3
                  srli         s8, s4, 12
                  sra          s8, t6, t5
                  srli         t6, a4, 24
                  add          s10, tp, s9
                  slti         s4, t3, -737
                  addi         s7, t5, -960
                  slt          s3, ra, a7
                  sll          a1, a7, s11
                  xori         a0, t3, 103
                  xori         ra, t5, 1892
                  and          s10, s11, s3
                  add          tp, s6, a0
                  lui          s3, 730963
                  sll          s5, a3, a5
                  nop
                  lui          t6, 350330
                  auipc        ra, 1001934
                  srai         t0, s6, 12
                  slli         t4, a2, 29
                  addi         sp, s2, 1963
                  xori         s7, t4, -1133
                  xori         t4, sp, 373
                  slti         s1, t5, -1886
                  or           a3, a5, s1
                  ori          s11, s5, -1923
                  slli         s2, a7, 3
                  sltiu        a0, s2, 723
                  sub          s8, s9, t1
                  auipc        s4, 879978
                  sra          a5, s8, t6
                  srl          t1, s9, s10
                  srl          a1, t0, s11
                  lui          t5, 889586
                  srl          s8, s0, t2
                  add          s4, sp, s7
                  andi         s4, s3, -240
                  andi         a2, t6, 1720
                  lui          s5, 592625
                  sll          t1, a2, sp
                  auipc        a7, 360077
                  addi         s0, t0, -961
                  slli         ra, s8, 7
                  lui          sp, 803025
                  srli         ra, a7, 8
                  slli         s4, s0, 5
                  sltiu        s3, s2, -814
                  sltiu        zero, t6, -1666
                  ori          t4, s10, -929
                  ori          sp, s1, -456
                  slti         a7, tp, -1891
                  xori         s3, s8, -1243
                  slli         s0, a7, 31
                  xor          a2, sp, a2
                  srli         gp, gp, 4
                  add          zero, s10, s7
                  andi         a2, a3, -1210
                  and          a2, zero, t1
                  add          a3, s10, s6
                  xor          s1, s4, gp
                  xori         t0, s8, 236
                  srli         a1, gp, 18
                  sub          s0, a2, s10
                  or           s4, s3, a2
                  nop
                  ori          s3, a7, -997
                  or           s5, s5, a4
                  sll          t6, a5, zero
                  add          s4, s10, s5
                  sub          t2, t6, a3
                  slti         t1, t6, -657
                  slti         t6, t3, 108
                  srl          ra, s5, s4
                  lui          t0, 435183
                  auipc        s10, 924692
                  auipc        a1, 523262
                  sll          a5, a7, a7
                  slli         t2, s5, 1
                  sltiu        t4, t3, -1842
                  sltu         tp, zero, s2
                  addi         s6, tp, 2038
                  nop
                  nop
                  xori         s4, a3, -491
                  addi         t2, a5, 1124
                  xori         a2, t3, -193
                  sra          t0, gp, a5
                  slli         s1, s10, 14
                  slt          t4, s8, a2
                  sra          a3, t4, gp
                  slt          t1, t5, s11
                  slti         a0, a1, 396
                  sra          zero, t1, zero
                  auipc        a3, 108362
                  srai         t2, s4, 14
                  auipc        s4, 8660
                  lui          sp, 626466
                  sltiu        a2, a0, -827
                  slti         tp, s0, 1289
                  andi         a7, t4, -943
                  sltu         ra, a3, a1
                  srl          s8, a6, a5
                  sltiu        t0, s5, -1061
                  sll          t6, s4, s11
                  srl          a1, gp, s1
                  lui          t0, 160578
                  xori         a0, a6, -410
                  nop
                  sltu         gp, a5, s1
                  slti         s6, a2, -1637
                  sll          a1, gp, t6
                  xori         s11, a4, 166
                  or           tp, a6, a5
                  xor          t6, zero, s1
                  add          t2, s1, s2
                  srl          t1, ra, a2
                  sub          t1, s3, t1
                  ori          s7, sp, 121
                  xori         s0, t3, -386
                  addi         a0, a1, 433
                  xor          a7, a6, tp
                  srl          sp, a4, a3
                  lui          s0, 497551
                  sll          a7, s9, a1
                  auipc        s7, 50466
                  slti         a2, s11, -389
                  nop
                  sra          tp, s6, a4
                  and          s1, s2, a2
                  or           t6, t3, s5
                  sltu         s8, s6, a4
                  sll          s2, s9, a2
                  sltu         s8, t6, s4
                  slti         s8, s0, 684
                  addi         s1, s1, 1443
                  sltiu        gp, sp, -1004
                  sll          a5, t3, s11
                  sll          s8, t4, tp
                  andi         s3, a1, -1256
                  sltu         gp, zero, a5
                  sltu         a7, t6, gp
                  and          a7, t0, a2
                  addi         s5, a0, 120
                  lui          a0, 489472
                  andi         tp, s0, 1930
                  srl          zero, t4, a3
                  sra          t5, s9, a1
                  slli         s8, a4, 22
                  sltu         s11, a6, sp
                  sub          t4, s3, sp
                  sub          a6, s4, t2
                  slli         t2, s7, 16
                  xor          t1, a0, s0
                  slt          t2, s2, t3
                  xor          t0, t3, a3
                  sltu         t1, a4, t6
                  slt          t4, s8, s9
                  slti         tp, a4, 312
                  and          gp, t6, a5
                  srli         sp, s5, 5
                  slli         s5, tp, 25
                  srli         s1, s1, 24
                  xor          a5, t2, s3
                  sub          t2, a5, t1
                  sll          t6, tp, tp
                  slti         t5, s11, -1480
                  sll          t2, s4, s5
                  addi         a5, a5, -190
                  srl          a0, s1, t1
                  or           t5, s4, t4
                  sra          gp, gp, ra
                  sll          t6, s7, s5
                  xori         t5, s1, -1984
                  xor          a1, s11, t5
                  lui          t5, 982698
                  and          s10, s2, t4
                  slli         s7, t3, 2
                  or           t4, t4, s4
                  sltiu        ra, ra, 1166
                  srli         gp, gp, 6
                  srli         s3, tp, 13
                  andi         zero, s3, 296
                  auipc        a5, 1017761
                  srl          s7, s2, s5
                  sltiu        s4, t3, 1546
                  srli         s1, s9, 27
                  addi         t0, t2, 340
                  sra          a2, t2, tp
                  slt          a7, t3, s6
                  auipc        gp, 146102
                  srai         a3, t0, 21
                  or           t6, t3, tp
                  xori         s3, t5, 397
                  andi         t1, a6, -1501
                  lui          s3, 234223
                  nop
                  addi         s10, tp, 1093
                  ori          t0, a6, -72
                  lui          s6, 817031
                  ori          t1, s7, 1682
                  slli         t4, a7, 20
                  srl          s4, s10, s11
                  or           a2, gp, t2
                  srli         s0, t1, 19
                  or           a5, t3, t1
                  srl          t0, a3, a7
                  sltu         gp, s3, t4
                  andi         a1, zero, 422
                  sltu         s11, sp, a2
                  lui          t4, 470378
                  sltiu        s2, s5, -839
                  auipc        a5, 293791
                  sltiu        s4, s6, 1735
                  sll          s10, gp, a5
                  sll          sp, a4, a7
                  or           a2, t4, s3
                  xori         a3, s1, 249
                  slti         a0, s11, 22
                  addi         s11, t6, -1650
                  sll          s4, s7, s0
                  xori         a6, s3, -1046
                  and          s4, t4, a2
                  add          t5, t5, a4
                  ori          zero, sp, -326
                  add          s4, gp, t0
                  nop
                  slt          s11, t4, s4
                  ori          a1, zero, -1585
                  sll          s7, t3, s7
                  srai         t0, tp, 17
                  sub          t5, ra, ra
                  sltiu        a5, s7, 794
                  slli         s10, t6, 11
                  ori          t5, t6, -1696
                  nop
                  add          s1, s0, zero
                  addi         sp, a1, 818
                  slli         s7, a1, 4
                  andi         s11, s1, -1583
                  or           s2, s7, t1
                  sltu         s0, t4, a5
                  auipc        zero, 351289
                  sltu         s2, ra, s11
                  addi         s7, t0, 97
                  slt          s0, s6, s7
                  or           a6, tp, a1
                  ori          s5, t1, 944
                  xor          s4, s6, s4
                  xor          t4, s8, s2
                  sra          s1, t6, ra
                  srli         t0, s8, 7
                  or           t5, s2, s0
                  andi         t4, s6, 1121
                  andi         t2, t4, -1660
                  xori         s1, s9, 630
                  sltiu        s7, t2, 518
                  nop
                  srai         sp, s5, 5
                  andi         s3, s4, -1169
                  add          tp, a3, a6
                  sltiu        s8, s9, -923
                  slli         a5, a6, 15
                  sub          t2, t0, t2
                  srl          s7, s0, ra
                  sra          a5, s3, t4
                  ori          a1, a0, 1214
                  lui          a2, 791352
                  srai         s1, t2, 20
                  auipc        s3, 761862
                  sltu         s8, a6, t1
                  lui          a7, 171146
                  srai         a2, t2, 18
                  ori          s5, t2, -1391
                  add          a1, s10, s2
                  andi         a3, gp, 1283
                  slli         zero, a1, 25
                  auipc        s6, 851305
                  andi         s1, tp, 1417
                  sltu         s0, ra, s9
                  lui          sp, 492731
                  addi         a2, s10, -663
                  auipc        a6, 875141
                  add          ra, a6, s4
                  andi         s10, s5, 1071
                  or           gp, s6, s1
                  xor          s6, s1, s5
                  srl          a2, s5, t4
                  xor          s4, s2, t5
                  slt          s0, s11, s4
                  ori          s5, s11, -1788
                  srl          a5, a0, s10
                  srl          s2, ra, s11
                  sra          s7, s8, gp
                  addi         s0, t3, 1560
                  ori          s10, s4, 913
                  srl          s10, tp, t2
                  sll          t1, t2, s4
                  srli         s5, zero, 4
                  xor          s1, s7, s6
                  slt          t5, t6, a3
                  slli         a0, sp, 16
                  nop
                  sra          a1, a2, a5
                  sltu         s8, s5, t0
                  srai         a0, s10, 16
                  slli         t4, t3, 14
                  xor          s0, s2, t0
                  nop
                  sltiu        gp, s2, -448
                  or           a1, s9, ra
                  srl          s8, s1, t4
                  sub          s5, s3, s10
                  add          zero, s2, zero
                  xori         a2, a6, 1012
                  sra          s6, a7, a1
                  slli         ra, ra, 31
                  sll          gp, t1, a7
                  nop
                  auipc        a2, 871500
                  srai         s6, t5, 24
                  srl          a3, a7, s8
                  add          s11, s11, a6
                  or           t1, a2, s10
                  auipc        ra, 564405
                  sll          gp, a2, s10
                  xori         t6, s6, -1384
                  srli         ra, s10, 28
                  slti         a0, ra, -231
                  add          s11, t5, t3
                  addi         a7, a7, -1887
                  slt          sp, tp, t2
                  srai         a2, a7, 21
                  sltiu        s0, a4, -1850
                  sltu         t1, a4, gp
                  andi         s4, s6, -946
                  auipc        a2, 710533
                  srli         s5, s2, 31
                  srl          s10, s7, t4
                  ori          a0, s6, -2033
                  or           tp, a0, gp
                  slt          s4, s7, a0
                  or           a6, tp, ra
                  sltu         t2, a7, s10
                  sll          a7, s10, a7
                  addi         t5, t3, -1946
                  ori          s0, sp, -1523
                  auipc        tp, 908008
                  add          sp, t4, s0
                  slti         a2, a7, -1279
                  sltiu        s4, s6, -1918
                  sltu         s0, t2, a6
                  sub          a5, s8, s1
                  sltu         s1, a6, a0
                  sub          s2, a3, s0
                  and          tp, a6, a0
                  or           s4, t4, s3
                  slt          a5, s2, zero
                  srli         s3, a0, 5
                  sub          s3, a7, tp
                  addi         a5, a4, -1258
                  auipc        s5, 17583
                  slt          s6, t0, t5
                  xor          zero, t1, s11
                  slt          s1, gp, sp
                  sra          a5, zero, zero
                  slti         s6, s4, -343
                  slt          a3, a0, s5
                  srl          s6, t0, t5
                  slt          t5, t1, s4
                  sltu         a6, s1, a0
                  xori         t5, s6, 1931
                  srai         t0, gp, 30
                  xori         a7, t2, 771
                  srl          s2, t2, s9
                  and          t5, s5, a0
                  sltiu        t4, t3, 1058
                  sll          t1, s9, t1
                  slti         s7, s9, -1680
                  sltu         t1, t1, t4
                  slt          t1, s11, s8
                  sltu         s6, s9, zero
                  sra          s6, zero, s0
                  slli         s4, a1, 24
                  xor          s7, s7, s2
                  xor          s4, a2, s10
                  slti         t1, s9, -1412
                  sra          tp, s10, a7
                  sra          t0, s11, a1
                  sll          s10, s4, s7
                  srl          zero, zero, t3
                  ori          t5, t6, 1293
                  auipc        a6, 622199
                  ori          a6, t1, -332
                  andi         t1, s2, -1199
                  sub          tp, a4, a4
                  sltiu        s2, s9, -767
                  srl          gp, t2, s8
                  slti         a2, zero, 580
                  xori         zero, a3, -959
                  srl          s3, s9, a5
                  sltiu        t6, zero, 1995
                  nop
                  srl          t2, ra, s9
                  add          s4, t4, a5
                  add          s4, s6, s3
                  xor          s6, t3, t3
                  srai         t2, t6, 25
                  addi         s3, a5, -1308
                  ori          zero, s3, -299
                  sltu         t1, s7, s7
                  srai         t5, s6, 29
                  addi         t4, a7, 711
                  nop
                  and          t5, a4, s9
                  sltu         s3, ra, t4
                  sll          s10, s6, a7
                  srli         t4, t4, 23
                  sltu         ra, t4, s1
                  slt          t6, t3, s9
                  auipc        s11, 44268
                  auipc        s0, 422431
                  nop
                  xor          tp, t6, t2
                  slli         a3, s2, 7
                  sltu         t0, t0, s2
                  xori         a0, a7, 2026
                  sltu         t0, gp, s11
                  nop
                  and          s7, a3, a2
                  sll          s10, a6, zero
                  xori         t1, a0, -1428
                  nop
                  srai         s5, gp, 25
                  srai         t2, s9, 21
                  andi         s3, t5, -1247
                  sub          t2, t3, s2
                  nop
                  ori          s1, s2, -491
                  sra          gp, a1, a1
                  srli         sp, s1, 7
                  xor          a1, tp, s0
                  sll          sp, a1, s10
                  sltu         t4, s11, t6
                  srl          t1, s7, sp
                  ori          t2, s0, 786
                  andi         s1, t0, -926
                  or           t0, s2, s2
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s0, 0x0
                  li           ra, 0xffffffff
                  li           a7, 0x80000000
                  li           sp, 0xffffffff
                  li           s6, 0x80000000
                  li           s1, 0xffffffff
                  li           s11, 0xae5cb565
                  li           t4, 0x21f01938
                  li           t5, 0xffffffff
                  auipc        sp, 182983
                  nop
                  nop
                  auipc        sp, 250205
                  add          s1, s11, t5
                  auipc        ra, 704052
                  lui          s6, 898119
                  addi         t5, s1, 1384
                  add          sp, t4, t4
                  sub          s0, s1, s11
                  addi         a7, ra, -324
                  nop
                  auipc        s11, 159004
                  auipc        s5, 881018
                  addi         s6, t5, -599
                  add          s5, t5, t4
                  lui          a7, 408420
                  addi         s5, s0, 1256
                  add          s6, t5, s5
                  add          t4, t5, s0
                  nop
                  lui          s11, 93496
                  lui          s5, 512267 #end riscv_int_numeric_corner_stream_3
                  sub          ra, tp, tp
                  sltu         s3, t1, s8
                  srli         a3, a4, 12
                  add          s4, t1, a1
                  sub          s2, s8, t3
                  xor          t4, a2, s0
                  srai         tp, a4, 30
                  and          a6, s10, s5
                  srai         s2, gp, 1
                  nop
                  sltiu        t5, t2, -426
                  slti         s0, t2, -1087
                  slt          s3, s7, sp
                  slli         t5, a1, 12
                  srl          s10, s9, t2
                  sub          t6, s8, t3
                  srai         sp, a3, 14
                  sltiu        s7, s1, 58
                  lui          t6, 449698
                  ori          s3, t6, -2017
                  xor          gp, t5, s7
                  sltiu        a6, s3, -1815
                  ori          a2, a4, -688
                  sll          t6, sp, a0
                  sra          a3, s6, t6
                  slti         s11, t0, -850
                  srli         t6, t2, 24
                  slli         zero, a3, 16
                  andi         zero, a0, 1317
                  srai         a6, s11, 26
                  srl          s2, gp, ra
                  xori         tp, s7, 1544
                  sra          s8, sp, t4
                  and          s1, a1, sp
                  sltu         zero, a0, gp
                  auipc        a1, 81458
                  add          t6, s7, a4
                  auipc        t6, 417047
                  xor          t4, ra, sp
                  ori          t5, t2, 633
                  ori          t0, s1, 1326
                  slt          a6, s2, a7
                  sll          s10, s1, t4
                  lui          t2, 129387
                  andi         a3, zero, -80
                  addi         s3, a4, 1608
                  ori          gp, t1, -1456
                  addi         s3, a4, 1433
                  srai         t5, t5, 10
                  auipc        s10, 390657
                  xori         s2, a1, -360
                  srli         a6, s1, 11
                  lui          t2, 252987
                  sra          ra, s9, a3
                  slli         s10, a5, 30
                  sll          t4, t6, t6
                  srl          s6, t6, a3
                  nop
                  nop
                  slli         s7, a3, 22
                  lui          a5, 330787
                  andi         a3, tp, 1319
                  slli         s2, s4, 0
                  slli         t4, s9, 5
                  sltu         a5, s1, tp
                  xori         a3, a4, -1908
                  andi         s6, s0, 386
                  sra          a6, a2, t3
                  xor          t5, ra, gp
                  xor          s8, sp, a5
                  slt          a3, t6, a2
                  sll          s8, zero, t6
                  sltiu        t6, s1, 420
                  xor          s10, a0, a7
                  lui          sp, 515952
                  sub          ra, tp, a2
                  sltiu        sp, a2, 2019
                  auipc        s11, 111032
                  sll          a2, a6, zero
                  slli         s8, t1, 2
                  ori          s0, a4, -2025
                  ori          sp, s7, 1927
                  ori          s6, s4, -1846
                  or           a7, s0, s11
                  sltu         t5, t3, a7
                  xor          s3, t0, a6
                  srai         sp, s0, 0
                  slti         a0, ra, 1468
                  sltu         a2, s4, s4
                  and          s7, t1, s1
                  slt          t0, s10, ra
                  sra          a3, s6, t3
                  xor          t2, s8, tp
                  xor          s3, a1, a7
                  xori         a1, s4, 195
                  sltiu        a3, s5, -542
                  auipc        s4, 785244
                  xor          s11, t4, s5
                  sra          t4, s3, s9
                  auipc        t4, 711184
                  nop
                  and          t4, a1, s11
                  and          s4, t1, a2
                  and          a0, s2, a3
                  sltiu        s8, ra, -1367
                  or           t5, a3, a7
                  sra          tp, a3, gp
                  add          s2, t4, s10
                  sll          t1, t1, s3
                  sub          s1, a4, t5
                  lui          zero, 67668
                  srl          s0, a7, a0
                  sltu         gp, gp, t2
                  nop
                  add          zero, ra, zero
                  and          t2, tp, t0
                  auipc        a5, 834725
                  ori          s10, a0, -1981
                  or           zero, s2, s8
                  srl          t2, t4, s6
                  nop
                  xor          t4, a0, a3
                  srli         s11, sp, 27
                  sltiu        s3, s5, 635
                  slti         s10, ra, 303
                  xor          s2, a4, s7
                  sltu         t2, t6, s10
                  add          a3, a6, s9
                  slt          a5, a7, s6
                  add          tp, t6, a7
                  add          s2, tp, s3
                  or           s10, s8, s11
                  lui          zero, 469387
                  slt          tp, s3, t0
                  sra          s8, s3, s7
                  or           tp, t5, a5
                  sub          a6, t6, s8
                  slt          a7, s4, a3
                  addi         t4, t4, -61
                  lui          s1, 469479
                  lui          s8, 736948
                  srli         t6, t2, 30
                  slt          t6, a1, t1
                  sll          s3, t6, sp
                  slti         t1, a1, -664
                  addi         s5, a4, 1827
                  sra          a5, tp, tp
                  sll          s3, t6, t6
                  auipc        a0, 890428
                  slti         a2, s2, 1287
                  nop
                  slt          t0, s8, zero
                  nop
                  sra          gp, s3, t6
                  srli         s5, a3, 29
                  ori          s3, a5, -1731
                  add          zero, a0, ra
                  sll          t4, s9, t6
                  lui          s5, 433859
                  sll          a6, gp, s0
                  nop
                  sltu         t1, s9, s2
                  addi         s3, s0, 757
                  sra          s7, a5, s5
                  sll          t1, s11, ra
                  srli         zero, a0, 9
                  sltu         s6, t2, tp
                  slt          t2, tp, a4
                  or           s1, gp, a0
                  xor          s6, s2, s7
                  sub          a6, a7, a2
                  sub          a1, s11, t0
                  srli         a1, s3, 17
                  xori         s6, a2, 126
                  srai         a5, s2, 27
                  srai         t4, ra, 13
                  lui          s2, 938858
                  lui          s3, 938304
                  nop
                  srai         a0, t3, 20
                  addi         t5, s4, 1460
                  add          s5, s4, t6
                  and          s0, a0, t6
                  sll          sp, s0, s7
                  add          t4, s6, tp
                  sltu         s0, s3, a5
                  sub          t0, a1, s6
                  srli         s3, s0, 9
                  slt          s2, a1, t5
                  addi         t0, t4, -1741
                  nop
                  add          t5, s3, a2
                  andi         tp, s3, -1359
                  srl          a0, t6, zero
                  or           sp, s7, s5
                  and          t5, s7, zero
                  or           s1, t0, s7
                  auipc        s6, 306473
                  slt          sp, t3, a7
                  lui          a7, 551637
                  auipc        t1, 681236
                  addi         t1, a3, -421
                  andi         s3, tp, -1886
                  sltu         s1, sp, t2
                  sltu         t1, s3, s2
                  slli         a7, sp, 0
                  slli         a7, t4, 25
                  sltu         a1, s1, s4
                  srli         a3, s3, 0
                  add          s2, s4, a1
                  sltu         s1, ra, a7
                  slti         s0, t6, -1584
                  addi         s7, s9, -475
                  sll          a1, s6, a3
                  sltiu        a7, s3, 495
                  nop
                  or           s2, s4, t3
                  sll          zero, s4, a3
                  sub          t2, s1, s11
                  slli         s1, zero, 2
                  nop
                  ori          a0, s11, -1992
                  ori          t1, t3, 499
                  sra          a6, a6, a5
                  xor          tp, tp, t4
                  slli         s6, a4, 25
                  slt          zero, a1, a3
                  lui          s3, 387740
                  sltiu        sp, ra, 136
                  auipc        s10, 288954
                  addi         t6, a7, -554
                  lui          s7, 795931
                  sub          sp, sp, t3
                  or           s7, s8, a2
                  srai         s11, s11, 1
                  srli         tp, a4, 28
                  xor          s4, a1, t3
                  sra          sp, t3, a1
                  add          zero, s4, s2
                  srai         a0, s3, 8
                  add          s5, ra, a3
                  srli         zero, a3, 25
                  sltu         s3, a2, a4
                  srli         s3, s3, 16
                  srl          ra, sp, s0
                  ori          t4, t2, 1883
                  srli         s1, a3, 6
                  srl          t2, sp, tp
                  sub          s0, t1, a0
                  auipc        t1, 425880
                  srl          t2, s11, ra
                  nop
                  sltiu        t4, s11, -1970
                  sltu         a1, s4, t3
                  srai         t5, s3, 9
                  srl          t6, t2, s3
                  auipc        a2, 759044
                  sra          s4, s4, a5
                  slti         s1, t0, -34
                  srli         sp, s7, 28
                  or           ra, s6, a1
                  sub          ra, sp, sp
                  xor          s2, zero, a7
                  sub          s1, s3, s6
                  nop
                  srl          s2, sp, a5
                  nop
                  addi         t0, s7, 1367
                  srai         ra, a1, 3
                  sub          a3, a0, s7
                  slli         t5, s5, 5
                  xori         t0, gp, 421
                  ori          tp, gp, -396
                  addi         ra, a3, -1114
                  sltiu        t4, s10, -905
                  slli         t4, a0, 7
                  xori         s2, sp, -1341
                  sra          zero, s0, s6
                  sll          sp, t5, s8
                  sll          t0, s1, t1
                  srl          s8, a5, s6
                  ori          s5, t4, -1104
                  slt          t0, s0, s1
                  slli         s10, t0, 21
                  srli         t0, s9, 13
                  lui          a7, 430135
                  addi         s0, sp, 471
                  sll          t1, a5, t1
                  xor          a6, sp, a1
                  and          tp, s9, a2
                  lui          ra, 26033
                  andi         t0, gp, -308
                  srl          a6, tp, s9
                  lui          s0, 927050
                  srl          t1, a4, a0
                  addi         a6, s5, 1645
                  xor          gp, sp, t3
                  slti         s8, t2, 295
                  sltiu        a3, s2, 485
                  add          s6, tp, s1
                  addi         a3, gp, -916
                  ori          t5, s0, 426
                  lui          t2, 578275
                  srli         sp, a7, 9
                  andi         ra, t1, -1313
                  srli         gp, a5, 6
                  ori          tp, a2, 625
                  sub          s3, a6, s3
                  ori          tp, t5, 1122
                  sub          a7, s8, a4
                  xor          a5, s11, gp
                  slli         s8, gp, 10
                  slli         s7, zero, 20
                  and          a5, s11, s5
                  andi         s8, s5, -419
                  lui          s10, 280735
                  sll          s5, s5, t0
                  andi         t0, s10, 506
                  xor          sp, s5, a7
                  slti         t2, t6, 708
                  slli         a1, t5, 8
                  sltiu        t4, zero, -881
                  sub          s7, t6, a7
                  or           t5, s11, t1
                  slli         t4, t2, 29
                  addi         s0, s0, 105
                  andi         s8, tp, -206
                  sll          sp, t0, tp
                  auipc        sp, 32442
                  sll          gp, t0, a0
                  addi         s5, a7, 270
                  srl          a6, ra, zero
                  xor          t5, a0, s9
                  srai         s0, a1, 6
                  or           a0, a7, t1
                  slli         t5, a4, 17
                  nop
                  slti         t2, t3, 1739
                  sltiu        s10, tp, -301
                  sltiu        s4, a6, -1314
                  add          a7, ra, s9
                  srai         t5, t1, 12
                  slt          a1, s6, s9
                  andi         s7, s0, -691
                  slt          gp, s3, s8
                  srai         s5, a0, 0
                  xori         s10, a7, 1176
                  and          s11, a0, s11
                  and          a1, s8, s2
                  sra          ra, s0, s2
                  and          t4, sp, ra
                  andi         s11, ra, -649
                  ori          t0, tp, 532
                  addi         a7, zero, -348
                  sltiu        ra, s0, 718
                  or           s5, s11, zero
                  xor          s8, a2, s9
                  and          t1, a3, s0
                  lui          s7, 156169
                  nop
                  and          a2, tp, a7
                  srl          tp, t2, s4
                  slli         t0, a7, 5
                  xor          a3, s4, t4
                  sltu         zero, a6, s1
                  slt          a5, t3, a1
                  slli         t5, a1, 23
                  sltu         a1, s7, s1
                  andi         t1, s11, -914
                  slti         a5, t4, -854
                  ori          s8, zero, -1684
                  slti         a7, s9, 449
                  sll          t6, s5, zero
                  sltu         s2, s4, s1
                  nop
                  slt          t4, s6, a4
                  auipc        t6, 465058
                  or           ra, a7, zero
                  addi         a6, s6, 407
                  or           gp, t4, t4
                  srli         s3, s6, 17
                  andi         s3, a5, -1127
                  nop
                  lui          sp, 704204
                  sltu         s8, a4, zero
                  slli         a5, s10, 15
                  and          s0, s1, s9
                  srai         s4, a0, 30
                  slli         a6, s8, 27
                  sll          t5, s9, s1
                  auipc        sp, 426866
                  andi         t5, a6, -672
                  slt          t1, t6, a3
                  sll          gp, t5, t5
                  sltu         t0, s2, zero
                  lui          a2, 351334
                  sltiu        tp, s0, -1504
                  sra          zero, t4, s7
                  add          t5, s5, t5
                  lui          s7, 622081
                  sltu         s1, sp, s6
                  addi         s1, s5, 1767
                  sll          a1, ra, t0
                  srli         s10, a0, 25
                  slti         zero, ra, 189
                  ori          t2, a6, -1253
                  slti         t1, gp, 1823
                  lui          s2, 202812
                  srl          tp, ra, t3
                  andi         s8, s5, -1847
                  andi         s8, a6, -1713
                  slli         s11, a5, 15
                  srli         s6, t0, 12
                  sra          a2, a1, s2
                  lui          s3, 803784
                  lui          a7, 561387
                  addi         a1, t1, -848
                  slli         a0, s4, 22
                  sll          s7, ra, t2
                  xor          s8, ra, a1
                  srl          s11, s7, s0
                  addi         ra, s6, -2012
                  srl          t2, sp, a0
                  srl          ra, s11, t6
                  or           t5, t1, s2
                  andi         s5, tp, -180
                  sub          a3, t3, s11
                  srai         a6, s1, 9
                  or           s10, s9, s4
                  xori         s7, zero, -809
                  sra          tp, ra, s4
                  srli         s3, zero, 10
                  slti         ra, s8, -420
                  sub          s7, s0, zero
                  or           s8, s2, s6
                  xori         t2, t6, 1857
                  andi         a7, tp, -1051
                  srl          s3, s2, a2
                  add          s7, t4, sp
                  nop
                  slt          a7, ra, t2
                  xori         a0, ra, 175
                  sltu         a7, s9, s10
                  srai         s5, sp, 9
                  slti         tp, t0, -865
                  slt          s8, zero, t3
                  add          t5, t6, sp
                  xor          t6, t6, s5
                  slt          a5, gp, a2
                  slli         s3, t4, 17
                  addi         s2, s7, -1824
                  addi         s0, t1, 1978
                  or           t6, s4, gp
                  auipc        s1, 933263
                  and          s2, tp, s10
                  slti         s3, t6, 1990
                  slti         s5, s8, 1189
                  lui          s8, 21516
                  xor          a6, s9, a0
                  add          t5, s11, a2
                  auipc        s1, 431500
                  srl          tp, zero, a6
                  or           s10, s6, s2
                  sltiu        ra, s1, -613
                  slti         a7, a1, 1827
                  lui          a5, 29219
                  and          t0, a1, a3
                  xor          s4, a4, s1
                  slti         t6, a6, 853
                  ori          s6, tp, -1215
                  sltu         t1, gp, t1
                  ori          t5, a4, -996
                  andi         s7, t4, -737
                  ori          t5, s0, 487
                  add          s11, t6, t1
                  sub          a0, a6, a4
                  xor          s4, a1, s11
                  slt          a7, s4, gp
                  xori         s3, s5, -1044
                  sltu         a6, s3, a6
                  srli         s8, s8, 22
                  nop
                  sub          t1, a7, a0
                  slti         t1, zero, -120
                  sltu         tp, s5, t1
                  addi         a5, ra, 522
                  andi         a6, s10, 1562
                  addi         s3, a1, -83
                  or           s1, a5, t2
                  ori          sp, s3, -761
                  auipc        tp, 529534
                  slti         t0, s8, -1817
                  addi         t5, a0, 524
                  and          a3, s4, t1
                  sra          s7, a5, s6
                  sltu         s1, s10, s9
                  xori         zero, a0, 1617
                  addi         a0, s1, -1699
                  sltu         sp, ra, t3
                  andi         s5, s10, -409
                  srai         ra, a1, 3
                  xor          t1, s0, s10
                  sltu         s4, s11, sp
                  add          a3, a0, a5
                  auipc        s1, 273233
                  or           s5, t2, a2
                  sll          t5, a7, s0
                  sra          a7, t1, a3
                  slt          a0, t1, a7
                  add          t1, s5, a0
                  ori          a6, s8, -1219
                  srl          tp, a3, s2
                  addi         s11, s8, 2016
                  or           a0, a2, t1
                  auipc        ra, 510315
                  ori          s4, s0, 1979
                  slli         s5, t1, 0
                  ori          s8, t5, -1132
                  nop
                  srl          t1, s2, t5
                  and          s5, s11, a4
                  xori         a5, ra, -1924
                  srli         t1, s1, 31
                  auipc        s6, 538933
                  srai         s0, s5, 9
                  sll          gp, t4, s11
                  andi         ra, s6, 1126
                  addi         a3, s10, -618
                  sll          t0, a0, gp
                  addi         s3, s5, 1171
                  add          t6, t4, t5
                  sltiu        a0, t0, 2007
                  and          s1, t6, sp
                  sra          s4, gp, s4
                  andi         zero, a4, 811
                  srl          t1, a7, s8
                  slti         t1, a6, -1035
                  xori         a6, gp, -224
                  srai         s6, s10, 26
                  nop
                  andi         a0, t3, -1569
                  srl          s2, a3, s1
                  sub          tp, gp, t1
                  or           s4, t4, a7
                  xor          t2, t5, a6
                  slt          a1, s10, s2
                  ori          t1, ra, 886
                  slli         s11, sp, 5
                  xori         a0, gp, 1529
                  slt          t5, s0, s11
                  sll          a1, gp, a6
                  auipc        s6, 1024002
                  and          t2, a4, s8
                  srai         t5, a7, 17
                  srli         t5, a1, 3
                  srli         t0, s6, 1
                  sll          s3, t6, tp
                  sra          s1, a1, tp
                  sltiu        ra, s7, -1389
                  nop
                  or           t6, zero, a5
                  sll          t4, s11, t4
                  srli         a2, a4, 31
                  nop
                  xor          a3, sp, s4
                  slli         a0, a0, 27
                  xor          s8, a7, s4
                  ori          s5, t3, -1528
                  lui          ra, 732200
                  auipc        s11, 484604
                  sub          a3, tp, s11
                  slli         a0, s7, 5
                  sltiu        ra, s11, 1283
                  sltu         a3, s7, sp
                  add          ra, a5, zero
                  add          tp, a3, t0
                  lui          ra, 339691
                  sltu         s1, a1, s1
                  ori          s5, t6, 1457
                  sub          t4, s8, a5
                  sub          s10, t2, s4
                  sltu         a1, ra, gp
                  slti         a5, a4, 983
                  add          zero, gp, a0
                  sll          a7, tp, t6
                  srl          s2, ra, s3
                  slt          s7, s7, s4
                  addi         a1, a1, 213
                  xor          t6, t1, tp
                  andi         s11, zero, 442
                  auipc        a5, 125203
                  slt          a6, s2, t3
                  srl          zero, s6, a4
                  sltiu        s0, t6, -1633
                  or           s8, ra, a3
                  and          s10, s0, gp
                  sll          t6, s0, s2
                  slli         a0, a0, 6
                  sra          s0, t4, s4
                  srli         gp, a5, 5
                  sub          a6, s1, s0
                  xori         s8, t5, 739
                  sub          ra, s4, s1
                  sra          t4, s9, sp
                  sltu         t2, s7, s11
                  sub          s2, sp, s10
                  andi         t0, tp, 1471
                  slt          t4, s6, s9
                  add          a3, s7, a1
                  srai         s11, s4, 9
                  addi         a1, s0, -106
                  addi         s4, s5, 652
                  xor          t6, s3, s10
                  slli         s3, a1, 6
                  srai         a5, a4, 3
                  ori          s6, s7, 1559
                  xor          t0, t5, s9
                  add          s10, gp, t2
                  srli         s10, a1, 25
                  srl          a6, s8, a7
                  add          sp, s10, a1
                  sltiu        s10, tp, -1952
                  slli         sp, t0, 20
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a7, 0xba103595
                  li           s3, 0x80000000
                  li           s0, 0x5845cc96
                  li           t5, 0x42a13833
                  li           a0, 0xffffffff
                  li           s1, 0xffffffff
                  li           a5, 0x80000000
                  li           s4, 0x0
                  li           a3, 0xffffffff
                  add          a3, s1, a7
                  sub          s1, a3, a3
                  addi         s3, s0, -1395
                  add          s0, a7, a7
                  sub          a7, a0, a0
                  auipc        t5, 711918
                  auipc        a5, 391464
                  sub          a5, s4, a5
                  auipc        a3, 854736
                  sub          s3, s4, a7
                  auipc        a0, 232241
                  auipc        a5, 945801
                  sub          s10, t5, s10
                  addi         a3, a5, 1779
                  addi         t5, s0, -972
                  add          s0, a3, s3
                  nop
                  addi         a5, s3, -1110
                  add          a0, s1, a0 #end riscv_int_numeric_corner_stream_18
                  sltiu        ra, s0, 826
                  xori         s4, t6, -638
                  srai         s11, t2, 17
                  sra          t2, gp, s2
                  ori          a5, s8, -1525
                  xori         s0, t1, -1632
                  nop
                  xor          s11, s7, a5
                  and          a2, ra, a6
                  slt          t6, s6, a0
                  srai         s0, gp, 15
                  addi         s0, s11, 1415
                  sub          s7, s5, tp
                  auipc        a5, 444672
                  slti         zero, a5, -1871
                  ori          s6, a1, -635
                  sltu         ra, s6, zero
                  slli         ra, t0, 31
                  andi         a3, s2, -1661
                  slti         s10, s2, -1682
                  ori          t6, t6, -1075
                  addi         t1, tp, 1615
                  srl          s2, a7, a2
                  srl          s11, tp, t5
                  or           s2, a6, s4
                  andi         t0, s10, -503
                  srai         sp, t6, 21
                  slli         s11, t1, 12
                  andi         s11, s11, 1092
                  and          s8, s11, a4
                  andi         a2, a2, -1041
                  srli         t1, s5, 15
                  nop
                  xor          s2, gp, s2
                  nop
                  ori          a0, t2, -209
                  slt          t2, t4, a4
                  andi         a5, t2, 570
                  sltiu        tp, s8, -381
                  srli         s7, t6, 27
                  slti         s2, t1, -1879
                  sltiu        s7, tp, 1550
                  or           s4, a5, zero
                  lui          a2, 382612
                  slti         a7, t6, -696
                  xori         a7, zero, -1953
                  lui          t5, 954178
                  sltiu        s5, s5, 1703
                  slli         a1, t3, 18
                  ori          s5, t2, -1252
                  andi         a2, a7, -1140
                  lui          s2, 215366
                  slt          a1, sp, t4
                  add          zero, s5, a3
                  sra          s8, a3, a5
                  addi         tp, a6, 1403
                  xor          a6, a7, s3
                  add          zero, s0, s1
                  lui          zero, 527489
                  sra          t2, s11, s3
                  xori         s4, t3, -1280
                  lui          a1, 373993
                  slti         s5, t4, 1022
                  slli         a5, a3, 18
                  srai         a5, a2, 23
                  and          s7, s5, zero
                  sub          t6, a0, t0
                  sub          s2, a6, t3
                  srl          s6, a5, zero
                  sra          a1, a7, a1
                  slt          t0, t0, gp
                  srli         t4, t3, 29
                  srl          t1, t5, a5
                  sub          t5, s7, t5
                  sll          a2, t3, a5
                  sltiu        a5, a2, -1375
                  ori          sp, a7, 191
                  sub          s7, t3, a2
                  sub          t4, s2, a4
                  xor          s2, s7, s1
                  or           t5, a6, s7
                  slti         t4, ra, -1916
                  sll          s7, a2, t1
                  andi         t4, s2, 1527
                  auipc        a0, 967444
                  srl          a5, a0, gp
                  srli         t0, a1, 26
                  srai         s11, s1, 17
                  xor          s0, sp, s9
                  or           s11, sp, a1
                  slt          zero, s4, t2
                  slti         s8, a1, 339
                  nop
                  sltu         s1, s11, tp
                  sltiu        sp, sp, 1736
                  slt          s8, t5, s6
                  slli         s4, a6, 28
                  addi         s5, t1, -222
                  and          a7, a4, s11
                  srl          ra, s10, ra
                  sub          a3, t6, t6
                  sltiu        s4, s0, 1679
                  sll          s3, t5, zero
                  sub          s10, s5, s7
                  sub          gp, s3, t0
                  lui          a3, 421176
                  sra          a5, zero, s3
                  xor          a6, s3, s7
                  slli         t6, sp, 9
                  ori          s1, a3, -1789
                  slti         s10, t4, -1633
                  xori         t2, a2, 1428
                  ori          a6, a3, 315
                  srli         a7, a3, 11
                  xori         zero, s3, 1407
                  andi         t5, s7, -104
                  slli         s10, s0, 17
                  lui          a2, 393508
                  sra          s3, t0, gp
                  sll          t0, s0, s6
                  ori          zero, t5, 509
                  auipc        s10, 401153
                  or           t2, a4, s8
                  slti         a7, t3, 282
                  addi         a2, a6, 507
                  sll          t4, t1, s11
                  addi         a5, t1, -1426
                  nop
                  ori          tp, a7, 719
                  auipc        a1, 63351
                  sra          t0, a1, gp
                  xor          gp, s7, t6
                  sub          s0, zero, sp
                  sltu         s11, t4, a7
                  add          a5, s8, s2
                  sltiu        s0, ra, 500
                  slli         a3, s6, 25
                  slt          s6, t6, s11
                  xor          s4, t2, t2
                  slt          t2, s9, a7
                  sltiu        zero, s6, -486
                  add          s1, a6, a3
                  ori          s5, a5, 817
                  sltiu        sp, s2, -437
                  xori         s1, gp, 1156
                  or           t6, s8, ra
                  slli         tp, s0, 1
                  andi         t2, s4, 1477
                  or           s2, t0, s3
                  srl          zero, a7, s5
                  auipc        s10, 921576
                  andi         a6, zero, 1893
                  addi         a7, a5, 1440
                  xor          t1, ra, t4
                  sltiu        s10, a4, 1306
                  ori          t5, s8, -1041
                  add          s2, s6, s10
                  andi         tp, s3, 288
                  sltiu        t5, a4, 497
                  sll          s2, s10, tp
                  and          a1, a5, s6
                  slli         t2, t2, 12
                  sra          t5, zero, a3
                  srai         s4, t0, 31
                  auipc        s6, 797821
                  slli         s11, s8, 0
                  srli         s7, s6, 0
                  xor          s11, a5, a3
                  xori         a0, a0, 1688
                  add          s10, s7, a3
                  slti         a0, t2, 1876
                  addi         s10, s1, -743
                  lui          s5, 393418
                  slt          a2, a4, t4
                  srai         s0, ra, 8
                  srli         a5, s4, 15
                  sll          s3, t5, a0
                  addi         sp, t6, 165
                  slli         t0, zero, 11
                  and          t6, s0, a2
                  xori         s10, a7, -1390
                  or           t2, a1, s4
                  andi         s7, s5, 1250
                  sll          t1, ra, s2
                  sub          s10, t2, s1
                  sra          s5, sp, s11
                  srl          a0, t6, s0
                  lui          s4, 889569
                  nop
                  sub          a0, gp, t2
                  addi         a0, t4, -1110
                  ori          s6, s7, 1453
                  srl          t5, a5, s11
                  sub          s3, t3, s6
                  lui          s6, 270471
                  srli         t1, a1, 28
                  srai         s11, s1, 18
                  sra          s10, t6, tp
                  and          s8, t5, t5
                  sltiu        s11, s3, 1234
                  lui          t0, 39771
                  sub          ra, s3, t0
                  srai         s3, sp, 10
                  lui          zero, 491508
                  lui          a2, 400920
                  sra          a2, sp, s1
                  slt          s3, a2, a1
                  srli         s4, a7, 27
                  sltu         t2, t4, s9
                  slti         a2, s7, -1401
                  srl          t5, t5, s1
                  slti         a0, ra, -1001
                  lui          sp, 527060
                  xor          a3, s9, t6
                  sll          s8, s11, s10
                  sltiu        a3, sp, 278
                  nop
                  sltu         t4, tp, ra
                  andi         t0, a6, 959
                  sra          s11, a2, a3
                  and          a1, t4, t0
                  sltu         a0, s5, t1
                  ori          s0, t2, 647
                  addi         a3, s5, -1391
                  srli         ra, s6, 4
                  sub          tp, t6, s3
                  auipc        s8, 454602
                  srli         t2, s6, 23
                  sra          t4, a2, sp
                  sra          t5, t5, a2
                  and          t1, a1, t2
                  andi         ra, a5, -1469
                  andi         a7, a4, 1707
                  lui          s7, 122853
                  addi         zero, t0, 9
                  srai         a1, a7, 15
                  andi         a5, a3, -2041
                  and          a2, a1, s3
                  xori         zero, tp, -1822
                  and          t5, t0, s3
                  xori         a0, t5, 758
                  ori          sp, s1, 52
                  and          s6, tp, s5
                  sltu         a0, t5, a7
                  and          tp, gp, s0
                  add          s1, s10, a4
                  srai         s8, sp, 21
                  xori         s1, s2, -1583
                  sltiu        s5, a0, 1852
                  xor          t0, a7, a1
                  sltu         tp, a4, a7
                  addi         a3, s3, -1946
                  slti         zero, s4, 1432
                  xori         a0, s7, -1178
                  nop
                  auipc        t1, 422606
                  xori         ra, s0, 2032
                  addi         a3, ra, 1785
                  srli         s7, s4, 5
                  and          t5, ra, s6
                  sltu         a1, a0, s6
                  or           t6, s7, t0
                  sra          t5, a3, a4
                  andi         t6, s11, -168
                  sub          a6, s0, s6
                  lui          t0, 23560
                  addi         a1, s11, -950
                  srl          t1, a2, s5
                  sra          s11, t1, s8
                  sub          sp, ra, t4
                  lui          a6, 375911
                  add          t5, a5, t1
                  slti         ra, a0, -1410
                  srai         t0, s4, 9
                  or           s0, s7, s11
                  srli         t5, s0, 6
                  srli         t4, s11, 5
                  lui          s2, 223545
                  and          s11, s11, a7
                  addi         s11, s5, 215
                  slt          t1, t0, a5
                  sra          t4, s4, s1
                  lui          a2, 477752
                  nop
                  ori          s4, t1, -979
                  srai         a2, gp, 25
                  andi         s2, s1, -397
                  sll          s7, a3, s6
                  srai         t0, a7, 3
                  xor          tp, a6, zero
                  slli         s5, t1, 30
                  srai         s11, tp, 28
                  or           s8, a5, t5
                  or           a7, t4, ra
                  sll          t0, sp, a7
                  srli         tp, a2, 22
                  xori         t2, a4, -392
                  sll          s11, s10, a1
                  lui          s4, 1014177
                  ori          s0, t6, -1759
                  sltu         t6, s10, t2
                  add          s0, t3, a0
                  srli         ra, gp, 2
                  sltiu        a7, t1, 1212
                  add          ra, a0, a1
                  and          s6, t0, gp
                  sub          s2, t6, a3
                  and          s10, tp, a0
                  lui          s7, 912794
                  srl          s5, a2, s10
                  sltiu        s4, s10, -1363
                  slt          a0, a6, ra
                  srl          s11, s5, a1
                  ori          tp, s2, -329
                  srai         s4, zero, 21
                  sll          tp, a6, a7
                  ori          s11, t2, 449
                  srl          a0, t3, tp
                  slti         a2, s0, 443
                  sra          t4, a1, t6
                  ori          s6, s3, 2006
                  auipc        t2, 578873
                  xor          tp, a7, t6
                  and          a6, a2, ra
                  srai         ra, a5, 13
                  slt          t2, s8, t4
                  srl          t1, a7, a7
                  slt          a7, s3, t6
                  andi         a6, t5, 1042
                  xor          s4, a7, s5
                  addi         t1, a5, -1902
                  andi         a7, s11, -35
                  auipc        a7, 898120
                  sra          a7, sp, a7
                  or           a6, tp, t5
                  xor          t2, a3, s1
                  sltu         s7, a1, s3
                  sltiu        s3, t6, -1944
                  addi         a3, t4, -239
                  sltiu        t0, a1, 1646
                  or           a1, s0, a3
                  sub          t2, s0, a2
                  auipc        ra, 20608
                  sll          s8, s1, s2
                  sltiu        s5, s7, 1350
                  and          ra, a5, s6
                  andi         s6, s6, -1711
                  sll          s8, a5, t1
                  and          s7, a3, s0
                  srai         t6, a0, 5
                  sltiu        s6, s0, -1964
                  sll          s11, t3, s4
                  andi         s3, s5, 1634
                  srl          a5, a3, t4
                  slt          zero, s4, s1
                  ori          t6, s9, 109
                  and          a6, a2, s1
                  xori         t1, s1, -1606
                  sltiu        a7, a2, 638
                  auipc        s2, 425067
                  slt          s2, a1, s3
                  xor          a7, a5, ra
                  xori         s3, s11, 1379
                  or           a3, s3, s11
                  slti         a5, a0, 1998
                  nop
                  srai         t4, a4, 12
                  sub          s11, s7, a3
                  sll          t1, a4, t6
                  srai         t5, s2, 13
                  ori          tp, a0, 1
                  slti         a0, s2, -1480
                  srl          s6, ra, tp
                  xor          t2, t1, a7
                  sltiu        s11, s1, 692
                  nop
                  xori         s4, s6, -1600
                  auipc        a7, 576249
                  ori          zero, a0, 97
                  andi         s4, t0, -1022
                  auipc        gp, 63303
                  ori          a1, s5, -914
                  andi         t0, sp, -2008
                  srai         s3, gp, 16
                  sll          s11, s8, t5
                  sra          t0, tp, tp
                  xor          a6, s11, t0
                  andi         gp, s5, 309
                  add          s10, a6, t0
                  or           sp, s6, t5
                  or           s6, t1, zero
                  slti         s5, s11, -1207
                  xor          s5, s8, t5
                  or           a7, a4, s0
                  srl          gp, a6, t1
                  sltiu        t1, s10, 2040
                  xori         a3, ra, 35
                  add          a3, t6, s3
                  sll          s4, t5, t3
                  nop
                  or           a3, a3, s8
                  xor          s6, s11, t1
                  sltiu        a1, s5, -1521
                  nop
                  or           s5, ra, s4
                  add          s3, s7, s7
                  srai         s10, ra, 29
                  srl          a0, t5, zero
                  srai         a7, s6, 26
                  or           a7, a1, t5
                  and          a7, s3, s9
                  srl          s6, a6, t3
                  ori          tp, s6, -1775
                  or           s8, a4, a6
                  slli         t1, a1, 9
                  addi         s0, s0, 1619
                  srai         tp, t4, 29
                  sra          a2, s4, s0
                  slti         t5, a7, 1596
                  addi         a7, tp, -815
                  or           a1, ra, t6
                  srl          t4, a2, t1
                  or           s7, a3, s1
                  or           a1, s8, a3
                  xor          s5, s5, tp
                  or           tp, s5, zero
                  addi         s6, t4, -1528
                  sll          a6, a5, t4
                  lui          sp, 612091
                  xor          s10, a6, s1
                  srai         s6, zero, 11
                  slti         s11, gp, 548
                  ori          a3, sp, 643
                  slti         tp, ra, 28
                  srli         gp, a4, 22
                  srai         t1, s0, 12
                  srli         t0, s10, 17
                  lui          s2, 524124
                  slt          ra, s6, s6
                  xor          ra, zero, s8
                  andi         a7, s11, 1856
                  or           t6, s4, s1
                  sltiu        s3, s10, 1469
                  xor          s4, s8, t5
                  slt          s8, t5, s5
                  addi         s11, t5, 1537
                  ori          t2, a2, 492
                  srai         t5, s7, 30
                  lui          a7, 831774
                  or           a2, ra, s6
                  srai         s0, s8, 7
                  sltu         s7, zero, s2
                  nop
                  sub          s6, s9, s1
                  slti         tp, s2, -232
                  nop
                  srl          s8, gp, a2
                  lui          ra, 170613
                  xor          s3, s6, ra
                  nop
                  auipc        a5, 543016
                  slli         a7, t1, 6
                  sra          s7, s2, s0
                  srl          s3, a6, t2
                  add          t6, zero, s8
                  or           tp, t4, a3
                  sra          a0, s0, ra
                  sltu         s6, s6, s10
                  sll          ra, s8, a7
                  addi         a7, t1, -180
                  xor          a6, ra, t3
                  slli         s11, a5, 28
                  srai         s10, t5, 14
                  srl          a5, s8, s7
                  slt          s1, s9, s0
                  sltiu        s7, sp, 1900
                  sll          a1, a2, s7
                  andi         t5, t4, 1175
                  sub          t1, t1, s6
                  srai         s7, a4, 2
                  andi         s1, s3, 1599
                  sll          zero, s2, t2
                  srai         s1, a3, 6
                  lui          t2, 835042
                  auipc        s4, 109785
                  sltiu        t0, zero, 26
                  srli         a1, ra, 8
                  srai         t0, gp, 1
                  slti         s0, t5, -821
                  srli         a3, a6, 26
                  and          t0, a2, s11
                  xor          ra, a7, gp
                  sub          a6, a2, a1
                  add          a7, s7, a2
                  add          a1, t2, s3
                  xor          a1, s5, s2
                  sll          t6, s11, s10
                  sll          s0, t3, t1
                  or           a3, s4, zero
                  slti         t4, a3, -557
                  slli         s4, t4, 13
                  sltiu        sp, s2, -8
                  addi         a2, a6, 1827
                  nop
                  xori         s0, s3, -2046
                  sra          t2, s0, a0
                  sltiu        a7, s3, 714
                  xor          s7, a4, s10
                  xori         a2, a6, 589
                  and          a0, a0, s2
                  srli         s7, zero, 29
                  nop
                  sub          s1, a0, a4
                  srli         a0, s6, 11
                  lui          t4, 391269
                  sll          s11, s4, s8
                  auipc        s4, 520142
                  ori          s7, a1, 1980
                  sltiu        tp, sp, 697
                  auipc        s5, 729740
                  slti         ra, t5, 806
                  and          s10, gp, a5
                  addi         s6, s2, -1487
                  slt          a1, a2, gp
                  andi         s1, s6, 1688
                  sra          s6, s0, a1
                  add          a1, t4, s0
                  or           ra, s5, s10
                  slti         a6, t3, -417
                  slti         t6, s0, -1763
                  sub          a3, s0, s8
                  addi         s6, a0, -1495
                  sub          s4, s3, a0
                  srli         gp, t1, 8
                  auipc        t4, 765762
                  slt          t1, sp, gp
                  sub          t1, t3, s10
                  or           t1, tp, t5
                  slti         a7, s7, -851
                  andi         s8, t6, 178
                  auipc        s4, 542340
                  slt          s7, s6, t6
                  sltu         s6, a7, a3
                  addi         t1, t1, 1885
                  xori         a2, s6, 1972
                  nop
                  nop
                  slt          a6, s0, zero
                  add          s10, t3, s0
                  sltiu        a6, a4, -692
                  or           a3, a6, t5
                  lui          s0, 86234
                  sltiu        t6, ra, -968
                  ori          s1, sp, 2009
                  slt          t4, t4, a1
                  ori          s7, t4, 695
                  sub          zero, zero, s8
                  slti         a5, s10, -277
                  srl          a2, s0, s11
                  srai         a2, t6, 19
                  slt          gp, a6, s10
                  or           s6, a6, a6
                  srai         s8, s9, 1
                  or           s2, a1, s9
                  and          zero, s4, s8
                  sub          a5, gp, sp
                  xori         zero, t1, 1249
                  slt          tp, s8, s8
                  xor          a7, sp, t4
                  nop
                  auipc        ra, 451194
                  srl          s8, s8, s0
                  add          t4, s1, s4
                  addi         t6, a4, -837
                  sll          s11, a6, t1
                  auipc        t1, 976332
                  add          s0, gp, a6
                  add          t0, a5, zero
                  and          s6, a6, t3
                  slli         t4, a7, 6
                  or           t6, t3, a3
                  or           t4, s11, s11
                  or           s7, s7, a1
                  xor          s7, s7, s5
                  nop
                  and          a2, s10, t4
                  andi         s6, a5, 1552
                  slt          a5, s5, s10
                  slti         s4, zero, 1816
                  xor          ra, a1, t2
                  lui          s4, 352186
                  sltu         a5, a3, s3
                  ori          tp, t6, 630
                  slti         s8, t0, 1751
                  xori         sp, t5, -247
                  lui          t6, 471100
                  sra          s1, gp, ra
                  sltu         sp, a3, zero
                  sltu         t4, t0, s11
                  andi         s2, a3, -2006
                  auipc        gp, 17510
                  sltiu        s11, s2, 732
                  sll          t1, a2, a2
                  sll          sp, t4, s3
                  srai         sp, s3, 6
                  sltu         s5, s10, s11
                  xori         t2, t1, -2015
                  slt          a7, a3, t1
                  or           ra, a0, t4
                  sltu         sp, a3, a2
                  sltu         s10, s3, t3
                  xori         s0, s1, -642
                  lui          sp, 393584
                  slt          zero, s6, a0
                  nop
                  sub          zero, t2, t4
                  sub          s11, a6, t2
                  sub          s1, gp, a5
                  slli         s0, tp, 8
                  slti         s11, t1, -397
                  and          a7, a2, s1
                  slt          a0, t1, a6
                  srai         s1, t0, 26
                  sltu         a7, s6, s5
                  andi         a7, a0, 184
                  slti         a7, s7, -937
                  ori          s5, t4, 893
                  srli         s7, a4, 19
                  and          a6, t2, s11
                  lui          a7, 223229
                  slti         a6, a5, 266
                  nop
                  sltiu        t2, s9, -363
                  slti         tp, a4, 1501
                  xor          zero, t6, a6
                  slti         a0, s10, -1086
                  auipc        ra, 177886
                  slli         t0, t0, 6
                  slti         t1, t0, 1886
                  and          t1, s4, a6
                  slt          a0, sp, s1
                  or           t2, sp, t6
                  sra          t0, s6, sp
                  slt          t0, a7, s0
                  xori         s1, t3, 1192
                  or           s1, ra, a0
                  srl          gp, t1, a6
                  srl          a2, s1, s11
                  sll          a5, a4, a7
                  or           s7, s2, t5
                  sltiu        t6, s2, -1879
                  sll          t0, zero, t3
                  and          a2, a0, s1
                  add          a6, gp, a1
                  sra          a7, s6, s11
                  srl          sp, t5, s3
                  auipc        s5, 889814
                  sra          s4, t5, s8
                  srli         s5, gp, 4
                  sra          t5, sp, tp
                  lui          ra, 421235
                  andi         t2, a3, 1434
                  sltiu        sp, a7, -811
                  slli         s10, tp, 13
                  sll          s5, t2, t1
                  sltiu        t5, s4, -93
                  srai         t2, a1, 4
                  sll          sp, zero, s6
                  and          t6, s9, t0
                  lui          s8, 882300
                  sub          s7, s7, s5
                  srai         s3, a3, 4
                  or           a7, s5, s6
                  srl          t4, t4, zero
                  xori         s8, a4, -175
                  xor          ra, a0, a7
                  add          s3, t6, a5
                  andi         s6, s1, 1567
                  xori         a3, a5, 1164
                  xori         a5, s0, -1300
                  ori          a0, t4, -454
                  sub          a5, s8, s8
                  lui          s3, 604399
                  srl          s11, t4, s9
                  sra          s1, t3, a4
                  sub          s3, sp, a3
                  addi         s11, sp, -937
                  srli         t1, ra, 7
                  auipc        tp, 66819
                  auipc        t6, 259394
                  ori          a3, gp, 591
                  nop
                  ori          a6, t6, -1682
                  or           s7, t3, a5
                  srai         s11, a3, 18
                  slti         s3, t2, 956
                  srl          t5, s6, t1
                  lui          gp, 823021
                  slti         t4, a6, -1899
                  sltiu        a3, t1, 1273
                  or           s4, s9, s9
                  or           a5, s7, s11
                  auipc        tp, 670406
                  lui          t1, 71350
                  sub          s11, a0, a5
                  add          s10, tp, s4
                  sll          a2, a6, gp
                  sra          s10, s5, a7
                  xori         tp, s0, 1681
                  sltiu        t4, t3, -41
                  nop
                  sra          a6, s7, s4
                  sltu         gp, s7, sp
                  sltu         sp, s5, s11
                  sub          s6, t6, tp
                  add          a5, tp, t6
                  sltiu        s1, s5, 1273
                  xor          a0, a4, s11
                  andi         s0, a3, -306
                  auipc        s3, 679240
                  srli         t1, t3, 18
                  srli         t5, s0, 23
                  addi         s8, t0, -432
                  and          a1, gp, zero
                  sra          a0, a2, a1
                  slt          zero, s6, t3
                  sltu         sp, s0, a6
                  slli         s3, t6, 27
                  addi         s8, a1, 108
                  ori          t5, s5, -718
                  sub          s11, t0, a6
                  sra          a3, gp, s9
                  sltiu        a3, s9, -1194
                  sra          a6, s1, s8
                  addi         t1, a6, 464
                  sub          t2, a7, t3
                  addi         t1, t3, 1599
                  and          a0, s9, t2
                  slt          a6, s8, gp
                  srai         a5, a7, 4
                  sra          s0, t3, a6
                  srai         s11, a5, 23
                  andi         s6, t4, 440
                  slti         s6, t6, -909
                  sll          s10, s6, s10
                  xori         s5, s6, 561
                  ori          a5, a4, -1275
                  xori         tp, t5, 88
                  xor          s10, a0, a5
                  and          s6, a4, a0
                  addi         t1, ra, -1289
                  lui          s10, 434408
                  srai         a1, s6, 19
                  slti         t2, a0, 1020
                  srai         t6, s9, 22
                  srl          a7, s5, s7
                  sltiu        a5, s5, 679
                  andi         a7, s3, 1169
                  sltiu        s6, a0, 864
                  srli         a1, t0, 5
                  ori          t5, t3, -196
                  add          s1, gp, a4
                  and          t4, gp, t1
                  auipc        t1, 166111
                  auipc        s5, 69654
                  add          s11, a1, s1
                  and          a3, s6, t1
                  auipc        a0, 301390
                  slti         a3, t2, -698
                  nop
                  srai         t2, zero, 13
                  add          s4, t6, zero
                  lui          s1, 823026
                  xori         a0, a2, -46
                  srl          sp, s5, zero
                  srli         t1, s1, 1
                  sll          zero, tp, sp
                  sltu         zero, t5, t2
                  add          s6, t0, ra
                  sltiu        s8, s7, 1524
                  slt          s1, a2, sp
                  xor          a7, a2, s0
                  slli         t0, ra, 1
                  nop
                  or           s3, t2, t2
                  nop
                  sltu         s7, t4, a3
                  auipc        s7, 187589
                  or           a1, s6, s4
                  srl          a3, a3, s11
                  sll          s6, t6, a6
                  sltiu        s8, ra, 675
                  ori          t5, a0, -87
                  srl          t1, a2, t0
                  srli         a6, sp, 6
                  srli         s5, a6, 12
                  sub          s8, ra, tp
                  xor          a1, a1, s4
                  slti         a7, t1, 629
                  sra          t0, t1, a3
                  sll          a1, zero, ra
                  srai         t6, s7, 19
                  add          s10, t0, s5
                  andi         ra, zero, -987
                  srai         t5, s10, 28
                  andi         a5, t4, -712
                  andi         s0, zero, 1861
                  xor          gp, s0, s7
                  and          s7, a2, a0
                  srli         t1, a4, 13
                  ori          t0, t2, 1417
                  sra          t0, a4, s6
                  slli         t4, s6, 3
                  srli         a3, a2, 26
                  andi         s8, t3, 1876
                  sub          a5, ra, t6
                  xor          a5, s10, s5
                  xor          t2, a6, s10
                  srai         a5, s1, 11
                  sub          a2, s0, s4
                  add          t0, s1, a7
                  srli         s5, t1, 25
                  srli         s8, s9, 14
                  lui          tp, 602028
                  slti         s2, tp, -227
                  or           s7, t2, t2
                  slti         a0, s7, -1481
                  srli         ra, gp, 6
                  lui          t1, 755346
                  slt          s2, t4, a6
                  nop
                  srai         t1, t6, 25
                  and          a5, s4, t6
                  andi         s6, s4, 1810
                  or           gp, s4, a7
                  sltu         s6, s0, a0
                  xor          a3, a0, s8
                  lui          a3, 623573
                  sra          s5, a7, gp
                  slt          tp, zero, zero
                  addi         s3, t0, 621
                  lui          gp, 52401
                  slti         s11, s10, 1894
                  nop
                  or           zero, a5, t3
                  or           t4, t6, a1
                  xori         a6, a0, -756
                  sltiu        s0, a1, 893
                  sltu         s6, a2, t5
                  sra          gp, s8, s1
                  xori         s2, s3, 485
                  add          a5, a0, zero
                  srl          t2, s5, a5
                  add          s0, a1, a5
                  srli         a3, tp, 19
                  sltu         gp, s9, t5
                  sltu         s10, t2, a3
                  sra          zero, s0, s5
                  andi         s1, t5, -794
                  addi         t1, s6, -1728
                  xor          sp, t1, a6
                  slli         a1, a3, 26
                  srli         s10, s2, 1
                  sltu         s6, s11, a4
                  and          s10, tp, s2
                  add          s8, s9, tp
                  sll          a0, gp, s8
                  andi         s6, s11, -1085
                  sll          s10, t5, t6
                  nop
                  sltiu        s2, t0, 1688
                  xor          tp, s9, a2
                  sltu         s1, t4, t4
                  sll          s3, s0, gp
                  srli         a1, t0, 30
                  sra          a2, gp, s7
                  addi         s8, s6, 429
                  add          t5, s5, t5
                  srli         t0, t5, 14
                  addi         a2, a0, -1109
                  srai         t1, s9, 18
                  lui          a2, 535043
                  sll          s1, a7, gp
                  or           s10, tp, s1
                  slti         zero, s10, 1956
                  srai         s11, t6, 5
                  srli         s3, a0, 31
                  slti         a2, s0, -1959
                  auipc        t5, 103328
                  andi         zero, s8, 430
                  andi         a1, s10, -528
                  sltu         ra, t3, tp
                  nop
                  sra          a2, s5, s3
                  srai         tp, tp, 29
                  xori         s4, s9, 266
                  slt          t4, s3, t6
                  addi         s2, s5, -1939
                  andi         s6, zero, -1644
                  srli         t1, s0, 26
                  and          a6, tp, s8
                  xor          s3, a6, t0
                  xor          a5, t1, s6
                  addi         s5, t1, 687
                  and          t0, t4, s7
                  or           a6, s3, t0
                  sltu         a6, t4, gp
                  andi         sp, sp, -1306
                  or           s8, t3, s6
                  lui          s10, 791567
                  xori         sp, t4, -1265
                  addi         s1, a6, -216
                  auipc        s8, 231487
                  andi         a3, t0, 1332
                  ori          a1, a6, 1725
                  sub          a5, ra, a3
                  slli         s10, t3, 22
                  nop
                  slt          gp, a6, a5
                  add          a0, s5, s6
                  auipc        a7, 307896
                  slt          s6, gp, s10
                  sltu         gp, a6, t3
                  or           s4, s5, s8
                  add          a6, s9, a2
                  andi         t4, s5, -607
                  slt          s6, sp, a4
                  auipc        s0, 470754
                  andi         sp, gp, 163
                  srli         t5, s0, 25
                  srl          s7, s11, a2
                  srli         sp, s1, 18
                  andi         a6, t4, -893
                  srl          a3, t2, t5
                  sltu         s7, s9, s9
                  ori          s8, s5, 1609
                  sltiu        s10, t6, 1358
                  or           tp, a7, a4
                  addi         a5, a4, 1792
                  lui          t2, 893084
                  sra          s5, s0, a2
                  sra          a5, s11, s11
                  addi         s5, t2, -1467
                  andi         s6, s9, 879
                  auipc        s2, 958673
                  xor          a2, t2, t4
                  slti         t1, s4, 1136
                  addi         zero, s3, -745
                  xori         sp, s2, -929
                  sltiu        s8, s5, -1587
                  sub          s3, s2, tp
                  srl          t5, s7, s0
                  nop
                  and          gp, sp, s4
                  auipc        s4, 833113
                  andi         a2, t5, 1567
                  lui          a5, 637508
                  sll          ra, s10, t3
                  ori          s0, ra, 1504
                  sll          t5, t0, s8
                  andi         s11, t3, -579
                  sltiu        t2, a0, -1704
                  slt          t5, a6, a2
                  add          t2, gp, s11
                  auipc        s8, 721114
                  slli         s3, t3, 6
                  addi         t6, s7, 1956
                  xor          t6, t4, zero
                  sub          s7, a1, s0
                  addi         tp, t2, -1639
                  slli         s2, t1, 20
                  srai         t2, s0, 2
                  nop
                  sltiu        a7, gp, -1208
                  xor          t6, s11, s4
                  srai         a3, s10, 14
                  xori         gp, s2, -570
                  srai         s0, ra, 12
                  sltu         t0, t6, t0
                  addi         t6, a0, 275
                  and          s11, t4, a0
                  sltiu        s11, s11, -1075
                  ori          gp, t6, -569
                  slti         s0, s3, -1179
                  or           a5, s7, t2
                  or           s3, t3, t6
                  slli         s8, t4, 0
                  add          sp, a0, s11
                  xor          a3, s4, a5
                  addi         s8, a7, 2018
                  srai         s3, t0, 10
                  ori          t6, s2, -1052
                  srli         t0, s0, 13
                  or           s11, s8, s0
                  slli         s8, s2, 15
                  sra          t4, a2, zero
                  addi         a2, s6, -661
                  srai         a2, a1, 2
                  addi         t6, t4, 1735
                  srl          s5, s4, s10
                  slli         s2, a4, 1
                  srai         s4, s3, 11
                  sltu         a6, t6, s1
                  add          s8, zero, s0
                  auipc        a7, 1018955
                  xori         s3, zero, -1691
                  srli         t1, s6, 19
                  nop
                  addi         s2, a0, 805
                  srai         t0, ra, 18
                  ori          a1, s8, -1848
                  lui          ra, 404958
                  lui          s3, 963142
                  srli         gp, s6, 20
                  slt          s1, t1, gp
                  slti         t0, ra, -1682
                  sll          t2, s6, a6
                  nop
                  sra          a0, a7, s7
                  and          ra, a2, s11
                  xor          zero, t3, gp
                  sll          tp, zero, s3
                  sltu         s2, a3, a2
                  or           s4, a1, a3
                  slti         s0, s6, 1002
                  add          a5, gp, sp
                  srli         t1, t1, 8
                  auipc        zero, 770001
                  slti         tp, s2, 712
                  slli         s6, s6, 15
                  nop
                  auipc        a7, 788401
                  srli         t2, t0, 12
                  xori         s8, a1, 31
                  sub          a6, s11, tp
                  slti         gp, s7, -461
                  andi         a7, t2, 468
                  or           s0, a7, s3
                  srl          s4, sp, a2
                  lui          s5, 148922
                  slli         s3, s10, 24
                  srai         s2, sp, 7
                  xori         a1, a0, -1247
                  srli         a3, a7, 13
                  srl          s4, t4, s0
                  slli         t4, gp, 26
                  xori         s2, a7, -1569
                  and          s3, ra, tp
                  sltu         s7, s5, tp
                  slt          s3, sp, a3
                  sll          t2, s3, s6
                  or           a3, ra, a5
                  sub          s1, s0, t5
                  slti         s0, a5, -1903
                  slt          a0, t5, s4
                  sub          sp, a3, s8
                  sltiu        t5, a0, -1329
                  and          a3, a0, s2
                  sltiu        s11, a5, 284
                  slli         t0, t5, 19
                  sltiu        a5, t5, -1322
                  ori          a3, t6, 1698
                  slti         sp, a4, -1658
                  slli         t0, a7, 16
                  andi         s11, t1, -181
                  srl          s6, s7, a0
                  nop
                  lui          s10, 267195
                  addi         a1, a4, 1009
                  addi         gp, tp, 1886
                  xor          a3, t2, s2
                  andi         a0, s9, -152
                  srli         s2, s4, 14
                  andi         s5, t6, -1904
                  add          a2, s10, t1
                  or           ra, s1, s6
                  sra          a5, sp, s7
                  sll          s3, t2, t3
                  or           a5, a0, t6
                  slt          t6, ra, sp
                  xor          gp, zero, s4
                  srai         a7, zero, 5
                  slli         sp, a6, 27
                  sll          t1, t6, t6
                  srli         s5, t6, 8
                  sltiu        s8, s7, -81
                  srli         t1, s6, 26
                  xori         t6, s5, -683
                  sltu         sp, a2, a2
                  addi         s11, s0, 1679
                  sltiu        t2, t1, -1022
                  slt          a0, tp, s4
                  or           a1, t1, a1
                  srl          a1, s5, ra
                  nop
                  srl          t0, s10, t6
                  srai         s0, a1, 13
                  slt          zero, sp, s8
                  andi         tp, t3, -1380
                  ori          s0, t1, 584
                  addi         sp, s0, -226
                  sltiu        zero, s0, -414
                  andi         s6, t1, -1063
                  andi         s0, zero, -1300
                  nop
                  srl          ra, a2, s4
                  srl          a0, zero, s5
                  or           gp, s7, s11
                  sub          a2, t6, t5
                  slt          a3, a7, t6
                  sra          t1, s4, a6
                  xor          zero, a5, a0
                  nop
                  or           a2, s7, a2
                  srl          a5, ra, sp
                  xori         t0, s11, -980
                  xori         s6, s2, 1363
                  slti         t4, s0, 471
                  ori          s0, a3, 164
                  slli         s3, a5, 6
                  addi         s5, s0, -460
                  xori         a1, s7, -1702
                  sll          s11, t6, tp
                  sll          a6, sp, a5
                  xor          a3, s8, s10
                  sltiu        s4, a0, -390
                  lui          t0, 557915
                  sll          s4, a0, sp
                  slli         a6, s3, 19
                  sltu         t2, t3, t4
                  auipc        t0, 736194
                  lui          t2, 590646
                  or           a7, s1, a2
                  xor          s2, s4, t3
                  andi         s4, s6, 335
                  slt          s5, tp, t0
                  nop
                  sltu         a6, a4, zero
                  sra          t0, s6, s4
                  sltiu        a2, gp, -512
                  or           a3, a2, a5
                  ori          a5, s8, -1283
                  ori          s11, s8, -1413
                  xori         zero, a3, 295
                  addi         gp, a2, 2021
                  sra          a7, sp, s10
                  andi         s10, a3, 1114
                  addi         t2, ra, -380
                  nop
                  or           gp, t3, s5
                  sra          a2, a7, t5
                  andi         t1, t5, -183
                  auipc        s11, 462225
                  sltiu        t6, s0, -911
                  xor          ra, t2, sp
                  xor          s4, s0, a6
                  sltu         s0, s8, t3
                  xor          t2, a7, a5
                  slti         s10, t2, -1974
                  xori         t6, s1, 1917
                  sll          tp, s10, s7
                  sub          s11, a3, s1
                  srl          a7, t6, s0
                  slli         ra, s11, 17
                  slt          t5, t0, gp
                  srai         s1, a6, 22
                  sra          a6, s10, s7
                  add          t0, gp, s6
                  addi         t1, a5, -199
                  srai         s1, a4, 21
                  or           a2, a3, t1
                  or           s6, a1, s2
                  ori          s0, zero, 82
                  lui          s5, 737175
                  lui          sp, 117063
                  srl          a7, a6, a7
                  lui          sp, 838973
                  slti         a6, gp, -446
                  sltu         a0, t2, tp
                  addi         a7, a7, -1638
                  auipc        a6, 6143
                  slli         a5, s3, 25
                  or           s8, s2, s7
                  add          a0, gp, s10
                  slti         ra, a3, -589
                  xori         t2, s3, 1963
                  add          a2, t0, a5
                  addi         s2, t0, -1966
                  sltu         a2, t5, s3
                  srli         a2, a3, 0
                  or           s10, a2, gp
                  nop
                  sltiu        ra, s1, 689
                  srl          zero, ra, a7
                  sltiu        ra, a1, -859
                  sltiu        tp, tp, 541
                  xor          t4, s5, a2
                  lui          a0, 642104
                  sltu         s2, s9, a2
                  slti         a7, a1, 1696
                  slti         s7, s11, 1081
                  srli         s0, sp, 7
                  sra          s7, a5, a1
                  sra          s4, t0, s7
                  and          a3, s11, s6
                  sra          a2, s11, a4
                  srai         a0, a6, 29
                  srai         t2, tp, 22
                  sra          a0, ra, s3
                  auipc        a2, 80226
                  slti         a1, ra, -1754
                  slli         s4, t3, 29
                  srli         s10, a7, 6
                  slti         gp, zero, -1876
                  sub          t2, a3, a7
                  srl          a5, zero, a7
                  andi         a2, s2, 1957
                  sra          s10, t5, s5
                  and          zero, t3, s6
                  or           zero, a3, a0
                  addi         a5, a6, 1325
                  sub          a2, t5, zero
                  lui          tp, 995793
                  sll          s8, s11, s7
                  ori          zero, a4, -1507
                  sra          s7, t2, t4
                  lui          zero, 606948
                  ori          s4, a1, -1712
                  addi         s10, a0, -60
                  auipc        t0, 148637
                  sub          t4, t2, t4
                  addi         s6, sp, -591
                  sltiu        a3, t5, -333
                  add          a7, t6, s0
                  xor          s6, a1, a7
                  nop
                  lui          s5, 191230
                  slli         t1, a5, 5
                  sltiu        t1, s2, 164
                  sub          s2, t6, sp
                  lui          s8, 917520
                  sltiu        tp, ra, 4
                  auipc        ra, 419244
                  andi         t1, a4, -358
                  lui          gp, 1044485
                  nop
                  lui          s4, 1032369
                  slti         a3, a4, 658
                  sltu         a0, s0, s9
                  or           s0, a2, a2
                  add          a2, t5, t5
                  srli         ra, sp, 24
                  xor          s6, a0, a0
                  xori         sp, a6, -1001
                  auipc        s1, 679728
                  slti         t2, t4, 1381
                  andi         s10, s5, 1983
                  or           t0, t5, a6
                  sll          gp, t3, s2
                  add          tp, a6, a6
                  lui          a7, 310902
                  sltu         s0, a6, t1
                  xori         s3, s11, 736
                  srl          s5, a3, t5
                  sll          s7, s1, a7
                  sll          s4, s5, t4
                  or           a5, s9, gp
                  xor          t5, a2, s4
                  xori         a3, a7, -2041
                  nop
                  add          s5, a3, t5
                  srli         a5, t0, 26
                  xori         a0, s8, 168
                  slti         s10, s5, 1964
                  andi         s2, t3, 1647
                  slli         s3, tp, 22
                  srli         s0, a7, 29
                  lui          ra, 1016410
                  nop
                  srli         s0, t6, 6
                  slti         s10, t0, -1530
                  slli         s7, s9, 31
                  sltu         s8, s8, tp
                  lui          a1, 940228
                  sra          t6, t4, a1
                  srli         t6, t1, 10
                  sltu         s2, s10, a6
                  andi         a2, a7, 324
                  nop
                  andi         zero, s6, 683
                  auipc        t1, 187408
                  nop
                  srl          s7, s2, ra
                  srli         zero, a3, 13
                  or           tp, a0, s1
                  auipc        t6, 713224
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a5, 0xffffffff
                  li           a1, 0x80000000
                  li           s2, 0x3abc087f
                  li           s4, 0xffffffff
                  li           a2, 0x80000000
                  li           ra, 0x80000000
                  li           s1, 0x135786c2
                  li           s11, 0x264749e4
                  li           a3, 0x80000000
                  add          s2, a2, a1
                  auipc        s2, 330194
                  lui          a2, 738356
                  addi         a2, a2, 903
                  add          a2, a3, a5
                  lui          a5, 162756
                  lui          s0, 437685
                  auipc        s4, 977748
                  lui          a1, 555567
                  auipc        a1, 274175
                  auipc        a2, 925559
                  sub          ra, s2, a1
                  lui          s11, 589002
                  add          s0, ra, s1
                  sub          a2, s0, s0
                  nop
                  auipc        a1, 440105
                  lui          s11, 343503
                  add          s4, a5, s0
                  lui          s0, 694874
                  nop
                  nop
                  add          s2, s4, s0
                  nop
                  add          s4, a1, ra
                  sub          a1, s2, s4
                  lui          s0, 996789
                  auipc        s4, 638480
                  sub          ra, ra, s11 #end riscv_int_numeric_corner_stream_13
                  sll          s7, t0, t5
                  slt          tp, tp, t5
                  slti         s8, tp, 1581
                  add          s11, s8, s0
                  xor          s10, s9, s6
                  slli         s8, s3, 11
                  nop
                  or           zero, s6, s6
                  add          s2, s10, s2
                  sll          ra, s10, a1
                  auipc        a6, 207768
                  sll          a5, s5, a1
                  sltiu        a5, s8, 1019
                  addi         s5, s11, 1170
                  sll          s5, tp, t3
                  auipc        a1, 1030099
                  or           s4, a1, s3
                  slti         s6, a2, 1573
                  add          a6, a7, a5
                  andi         s11, s7, 919
                  sra          s0, t6, a6
                  sll          a3, a0, t5
                  ori          s4, s9, 355
                  addi         s3, a6, 629
                  lui          ra, 75559
                  srl          s8, t5, t6
                  auipc        t0, 221417
                  or           s4, t6, t5
                  or           s7, t2, a1
                  srl          t4, s1, t6
                  sra          s8, s5, a2
                  andi         s0, a6, -194
                  lui          s0, 360226
                  sra          t4, a5, s8
                  sub          a5, s11, a5
                  slt          a7, s2, a3
                  ori          s10, sp, -533
                  auipc        a0, 588373
                  sub          sp, s2, t4
                  sltiu        a7, a6, 1154
                  sltiu        s1, gp, 282
                  srli         tp, tp, 23
                  sra          s7, tp, s5
                  srl          s0, s11, t3
                  and          a3, s9, a2
                  addi         tp, s4, -1311
                  auipc        ra, 12541
                  slti         t2, s8, 20
                  and          a7, s5, tp
                  nop
                  and          s6, sp, zero
                  ori          zero, t2, 951
                  sub          a3, a3, t3
                  xor          sp, t1, a3
                  xor          tp, s10, a3
                  xor          t5, s5, zero
                  ori          a6, gp, -911
                  nop
                  srl          s0, gp, ra
                  or           a0, a7, a5
                  auipc        a0, 370306
                  xor          s8, a4, s2
                  srai         a3, s11, 5
                  srli         a7, s5, 28
                  sra          a1, sp, a0
                  auipc        a5, 2166
                  sub          a6, s6, t3
                  srli         gp, s5, 12
                  add          t6, a7, t1
                  sll          s1, sp, s9
                  sll          a7, s4, zero
                  srl          s10, a3, gp
                  slli         t6, t1, 0
                  sltiu        s2, t1, -1251
                  slt          a5, t1, gp
                  srli         a7, s0, 25
                  addi         s2, tp, 800
                  srli         a2, a4, 20
                  nop
                  xori         a6, tp, -716
                  ori          a2, s7, -67
                  xori         a6, a1, -527
                  sltiu        a7, s1, -1581
                  slt          a3, a4, ra
                  or           s4, a6, a2
                  lui          s8, 980045
                  sltu         s2, s10, s9
                  sltu         s2, s5, s3
                  lui          a2, 563155
                  xor          s1, a2, zero
                  auipc        t6, 643360
                  srl          a6, a7, zero
                  sll          t5, a3, s7
                  srli         a5, s10, 10
                  sltu         s1, sp, sp
                  addi         s8, s6, 1187
                  lui          s11, 942670
                  srl          s3, a3, a2
                  srli         s10, t0, 17
                  slti         s6, a7, 1010
                  sltu         s10, a5, s1
                  andi         t1, a7, -893
                  ori          s5, s0, 1036
                  srli         s2, s6, 27
                  sll          a7, t2, s5
                  lui          s5, 581897
                  andi         s5, a7, 993
                  srli         a7, a1, 25
                  xor          s1, sp, t5
                  slti         a6, s4, -117
                  sltu         a5, a7, a1
                  add          ra, s8, a0
                  slli         gp, s5, 7
                  addi         a5, a1, -1991
                  slti         a1, s5, 502
                  ori          a1, zero, 51
                  sra          t5, s0, s11
                  sltiu        a2, s2, 915
                  nop
                  andi         a2, s3, 1797
                  addi         s6, t2, 1739
                  or           s0, t2, s9
                  xor          ra, a2, t6
                  srli         a1, t3, 27
                  sub          sp, s7, t5
                  slli         t6, t4, 27
                  add          sp, s1, tp
                  sll          s1, t4, gp
                  srli         a7, a2, 9
                  or           s1, a2, t0
                  sll          s6, s10, t3
                  add          s8, a2, s9
                  slt          s7, s4, a5
                  ori          s1, t1, -827
                  xori         s2, s9, -798
                  sub          s5, t2, a1
                  xori         t4, a7, -103
                  nop
                  ori          t1, a1, 1123
                  lui          s10, 660554
                  sll          s3, s10, a1
                  or           t6, s10, t5
                  nop
                  xor          a6, a2, t3
                  sltiu        t4, s10, 1005
                  nop
                  srl          s4, s7, t0
                  srl          s7, s4, tp
                  slti         s3, s8, 4
                  srai         t5, tp, 14
                  xori         sp, s5, 858
                  slli         tp, ra, 21
                  sltiu        a6, s11, -416
                  and          gp, t4, ra
                  sra          s2, s3, s11
                  andi         t1, sp, 1331
                  sltu         s2, s1, a4
                  slli         t1, s11, 19
                  srl          a1, gp, s8
                  sltu         ra, s5, s2
                  xor          s0, t0, a1
                  sll          a2, s11, s3
                  sra          s2, a1, a1
                  add          a0, s6, s9
                  sub          t1, a1, s2
                  slti         s5, t1, -999
                  or           s5, s7, s5
                  sltu         a1, s8, s6
                  srl          s10, a7, t2
                  auipc        gp, 1023024
                  srl          t1, s9, t1
                  add          ra, a2, s9
                  srai         s3, t4, 1
                  addi         s11, a6, 1149
                  slli         s3, zero, 17
                  nop
                  sltiu        s7, a4, 1709
                  andi         s5, s1, 1526
                  xori         s7, ra, -890
                  slti         s11, s9, -1218
                  sltiu        ra, a0, 1289
                  add          tp, a6, s1
                  sra          t0, s3, s3
                  and          a3, t5, t6
                  sub          s0, s0, a1
                  nop
                  add          t2, tp, zero
                  srai         s8, t6, 30
                  slli         t5, tp, 31
                  srai         s1, t1, 5
                  add          s6, s10, s8
                  and          a0, s4, a3
                  or           tp, sp, s0
                  and          sp, a2, s3
                  xor          s0, s3, t3
                  srli         t6, s11, 4
                  or           s7, s7, a4
                  auipc        a6, 830714
                  slli         s10, a7, 12
                  sra          s10, t1, s0
                  slt          tp, s2, s1
                  slli         a6, a1, 18
                  auipc        a0, 379538
                  slli         t2, a2, 4
                  xori         a6, s8, -1171
                  slli         tp, a1, 0
                  add          t1, a0, t3
                  lui          s11, 907215
                  srli         t5, sp, 5
                  slti         a7, a2, 1715
                  sub          s0, t3, a2
                  slti         s11, a4, -1885
                  and          s7, a1, a4
                  sltiu        gp, t5, -1474
                  nop
                  addi         sp, s6, -19
                  ori          s0, t6, 90
                  sltu         a7, a6, a7
                  ori          a2, tp, 1312
                  sub          zero, a4, s2
                  srli         a5, s10, 13
                  sra          a3, t6, ra
                  sub          s8, a6, s0
                  slt          s11, sp, a1
                  sll          t4, zero, t6
                  ori          s7, tp, -1639
                  sll          a1, t4, a7
                  sub          s2, s8, t0
                  nop
                  sll          t0, s8, a2
                  srl          a5, a3, t3
                  sltiu        t0, a5, -1714
                  xori         s2, a7, 507
                  nop
                  srl          t6, t2, a7
                  lui          a1, 90920
                  srli         s7, a1, 27
                  addi         a1, t5, 1992
                  and          a3, t5, s11
                  srl          t1, a2, s2
                  xor          ra, a1, zero
                  sltiu        ra, a7, -107
                  sra          a0, a1, a3
                  slti         tp, a4, -99
                  srai         s5, s6, 15
                  and          a2, s1, a4
                  nop
                  sll          gp, s2, a2
                  slli         s5, t3, 20
                  addi         t1, a4, 1328
                  andi         t5, s4, 1242
                  or           a7, a2, ra
                  srai         a2, t0, 27
                  xor          s5, a0, tp
                  ori          s11, s6, -1497
                  ori          gp, t3, -1666
                  srli         a5, s10, 22
                  sra          t0, a1, s8
                  srli         s7, s1, 13
                  andi         t5, a7, 1357
                  sltiu        a5, s6, -455
                  sltiu        tp, t2, 74
                  srai         t5, s4, 18
                  sltiu        a0, sp, -619
                  nop
                  srli         s1, gp, 15
                  or           tp, s5, zero
                  add          t2, a7, t1
                  andi         a1, t2, -926
                  xor          a5, a1, a2
                  andi         t4, t1, -448
                  sltu         a0, t0, s4
                  auipc        a0, 331847
                  sltiu        s2, sp, 999
                  addi         tp, s7, 62
                  nop
                  slli         ra, s4, 14
                  or           s7, ra, a1
                  xor          tp, s7, t4
                  sltiu        a5, s2, -343
                  sll          a3, a0, a3
                  addi         s10, zero, 1587
                  slti         s0, a3, 1178
                  sll          s0, s0, a0
                  xor          s11, t4, s8
                  srli         gp, t0, 17
                  auipc        a7, 948417
                  xor          t0, a3, a1
                  srai         s6, sp, 31
                  sra          s3, zero, a5
                  sra          tp, s2, tp
                  auipc        s0, 219330
                  slti         a7, a4, 1611
                  xori         t0, s9, -1024
                  sltiu        a1, t2, -1776
                  srl          t4, ra, t6
                  srli         t0, s4, 9
                  sltu         gp, s7, s9
                  nop
                  xori         a1, s10, 1694
                  addi         t6, tp, 1782
                  sltu         s0, a0, a1
                  lui          s5, 763633
                  sll          a2, s2, s4
                  sltu         ra, s8, s1
                  srli         s7, a7, 16
                  sltu         t0, s10, a7
                  sll          a2, t3, s2
                  lui          t5, 597003
                  auipc        t4, 31500
                  sltiu        s8, a4, -1997
                  sra          t1, t3, zero
                  srai         s4, t0, 31
                  sub          a3, a6, a5
                  andi         s10, s11, -1199
                  sll          t5, s1, t4
                  sub          a1, t6, s8
                  nop
                  auipc        zero, 648012
                  and          a1, s6, s5
                  addi         s8, s8, -1354
                  add          s4, a3, t4
                  add          t5, s11, t3
                  sll          s7, s10, s11
                  andi         t4, zero, 345
                  and          t2, s11, a4
                  ori          s7, a6, -171
                  and          s2, a1, s3
                  sub          ra, t4, a5
                  xori         t1, a0, -1743
                  andi         t6, a2, -69
                  sltiu        s10, s7, 200
                  srai         s1, s11, 16
                  sltiu        a3, t3, 1137
                  add          a2, s11, ra
                  and          a6, t5, a1
                  auipc        s4, 672921
                  addi         s1, zero, -1128
                  srli         ra, a2, 13
                  sub          sp, t4, ra
                  sltu         s7, sp, t2
                  and          tp, s8, s3
                  slti         s1, a2, 919
                  sltu         s11, s4, s6
                  and          t0, s7, tp
                  sub          sp, t2, t6
                  slti         t6, s2, -1976
                  slli         s4, a5, 21
                  add          s1, s4, s8
                  xor          zero, t3, a7
                  lui          t2, 694322
                  sltiu        a6, s5, -1065
                  lui          a1, 210224
                  add          a1, sp, a3
                  xor          s8, s0, s2
                  slt          t0, t5, t2
                  slli         s1, s11, 11
                  ori          a5, a5, 84
                  srl          s0, t6, ra
                  slli         s5, a7, 25
                  srl          a6, t4, s6
                  srl          s5, s11, a5
                  slti         a0, s1, 64
                  sltiu        s7, t4, 1415
                  srai         s3, sp, 15
                  and          s1, a0, s5
                  sra          gp, t4, s7
                  sra          s7, a6, s0
                  or           tp, sp, ra
                  add          a5, sp, s2
                  xori         s6, zero, -681
                  lui          tp, 753699
                  sub          s6, a7, s5
                  ori          s10, s10, -64
                  nop
                  xor          a3, a0, a3
                  sltiu        a5, zero, 1221
                  sltu         t0, s3, t3
                  srl          a5, ra, tp
                  andi         t6, gp, -155
                  xori         t1, s9, 729
                  nop
                  sll          t5, s6, t5
                  lui          t0, 130497
                  srli         s3, s7, 25
                  xor          s0, a2, sp
                  andi         s10, s11, 1180
                  nop
                  srli         sp, tp, 7
                  srai         a0, a5, 12
                  auipc        a3, 668899
                  auipc        s2, 1024164
                  srli         sp, s4, 19
                  addi         s4, s1, 386
                  srli         tp, gp, 3
                  lui          t5, 403987
                  xori         s8, s7, -278
                  srl          s1, t5, a5
                  sub          s6, s5, a0
                  srli         s0, a6, 14
                  add          s8, zero, a0
                  xori         t1, t6, -1992
                  srli         gp, s8, 31
                  xor          s11, s11, a4
                  sub          a1, s5, tp
                  ori          s11, a6, -551
                  sltu         a7, t2, a7
                  nop
                  add          sp, s9, s9
                  or           s2, s5, ra
                  xor          t6, s5, a1
                  sltu         ra, a0, gp
                  add          s8, t2, s5
                  srli         a2, a0, 28
                  srli         s5, a6, 20
                  nop
                  addi         s11, ra, -673
                  xor          a6, t4, a2
                  slli         a0, t2, 14
                  sltu         s3, a3, a6
                  slti         t5, a3, -926
                  andi         s11, s2, 1206
                  and          t5, s8, gp
                  add          s0, s11, s4
                  ori          t2, a0, -919
                  or           a0, t2, gp
                  xori         a0, s7, -979
                  slli         s4, a7, 16
                  and          s11, a5, tp
                  auipc        zero, 785094
                  sltu         gp, t0, s8
                  slti         t4, t4, -459
                  or           s5, a6, a3
                  sra          s5, gp, s8
                  srli         t1, a2, 24
                  ori          s6, zero, -2006
                  srai         a2, s2, 16
                  addi         t1, a5, -901
                  xor          a6, a2, s11
                  sltiu        sp, s1, -448
                  xori         a6, s9, -155
                  or           s0, t5, a7
                  and          sp, tp, a7
                  andi         a7, a0, 496
                  slti         t2, sp, 1196
                  slti         s7, a3, -494
                  xori         zero, t1, 249
                  add          ra, s4, sp
                  xor          a2, s5, t2
                  sra          s0, t6, t6
                  and          tp, a2, s1
                  srl          s7, tp, s11
                  or           s6, s9, t5
                  lui          tp, 330025
                  srl          t4, a4, t1
                  addi         tp, sp, 456
                  slt          t4, a7, s0
                  slli         a7, t5, 4
                  srl          s1, t5, s11
                  or           s4, t6, ra
                  or           s7, t0, t0
                  add          sp, t4, s5
                  xori         t2, s3, 1672
                  and          ra, s11, s2
                  auipc        a5, 153882
                  sll          gp, s10, t5
                  srl          s8, t5, s2
                  xor          t4, a0, s7
                  sra          a1, s3, t3
                  srli         ra, a2, 31
                  xor          t2, s5, a4
                  slti         t0, a4, 1536
                  srai         zero, s0, 5
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0x0
                  li           s1, 0x0
                  li           s2, 0x0
                  li           a2, 0x85c9d10c
                  li           t1, 0x8802689a
                  li           t0, 0xfe850277
                  li           a7, 0x0
                  li           a0, 0x80000000
                  li           t4, 0x0
                  add          s2, t4, a6
                  auipc        a6, 842400
                  addi         t1, t0, -365
                  sub          s1, t4, t4
                  auipc        a0, 258429
                  lui          a6, 704579
                  sub          a6, t1, t1
                  add          t1, s8, s1
                  lui          t0, 896440
                  nop
                  nop
                  nop
                  lui          t0, 873128
                  auipc        a7, 239305
                  sub          t1, a7, s2
                  addi         s8, t1, 273
                  auipc        s8, 297336
                  auipc        s2, 142348
                  lui          a6, 107344
                  auipc        a0, 790443
                  nop #end riscv_int_numeric_corner_stream_1
                  xori         s1, s2, -1278
                  add          s5, a7, a1
                  srl          s7, s10, a1
                  sra          a5, s4, zero
                  xor          zero, s9, t0
                  add          ra, a3, s9
                  sll          t0, t4, s11
                  sra          s4, zero, s0
                  nop
                  sltu         sp, a3, a0
                  srli         s10, a0, 0
                  slti         zero, t2, 1234
                  ori          a2, a7, 924
                  auipc        s11, 490208
                  slti         s4, a3, -269
                  sub          t0, s2, s10
                  sub          s0, s10, s1
                  add          s0, t5, s2
                  ori          s0, s2, 1170
                  sltu         t0, t2, s3
                  or           s11, s11, t4
                  xor          s4, gp, ra
                  lui          t5, 932219
                  addi         a0, s11, 1100
                  nop
                  or           t6, s4, s3
                  xori         s10, t3, -1314
                  xor          gp, s2, t0
                  xor          t0, a0, zero
                  andi         s11, s2, -256
                  xor          s6, s4, s11
                  slt          zero, t1, tp
                  sra          s0, a3, a4
                  ori          a0, s4, -883
                  xor          zero, t1, s8
                  srl          s6, s8, s0
                  slt          zero, s7, t3
                  nop
                  slti         s7, t4, -1919
                  and          s5, s2, s10
                  nop
                  andi         s8, t4, 674
                  xor          tp, gp, s7
                  sra          a2, t5, a0
                  auipc        ra, 513616
                  auipc        s5, 215823
                  addi         a5, a7, -1749
                  slt          a2, t6, a1
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s1, 0xc511b161
                  li           s6, 0x0
                  li           t1, 0xffffffff
                  li           s5, 0x0
                  li           a1, 0x80000000
                  li           a7, 0xffffffff
                  li           tp, 0x0
                  li           a5, 0x0
                  li           s10, 0xffffffff
                  addi         s7, a7, -1724
                  addi         a5, t1, 1343
                  auipc        s10, 337188
                  add          tp, a7, tp
                  addi         t1, s5, 567
                  nop
                  addi         s7, s6, 1765
                  lui          a7, 1000668
                  add          tp, a7, s6
                  add          s7, tp, a7
                  nop
                  add          s5, s6, s1
                  sub          s1, s6, tp
                  add          s7, s6, t1
                  lui          a5, 467216
                  auipc        s6, 814614
                  lui          s7, 8728
                  addi         a5, s6, 1219
                  lui          s1, 907311
                  add          a7, s6, t1
                  addi         s7, a5, -1351
                  nop
                  lui          s1, 58637
                  addi         a7, tp, -186
                  auipc        a7, 994518
                  auipc        s1, 1038109 #end riscv_int_numeric_corner_stream_16
                  srl          s8, zero, a2
                  sltu         s5, ra, a0
                  sltu         t6, a3, s1
                  nop
                  slli         tp, s2, 3
                  slti         s3, s6, -46
                  srai         t2, ra, 14
                  nop
                  and          s5, a5, gp
                  sub          t0, t0, s1
                  lui          t2, 868782
                  slti         s11, s2, -716
                  slli         s3, s4, 23
                  xor          s2, s1, tp
                  srli         a3, s7, 8
                  or           s8, s6, a0
                  sltu         t6, t3, t1
                  nop
                  or           s7, s5, s7
                  sra          s10, a2, s8
                  or           a2, t0, t0
                  sll          a0, s5, sp
                  addi         t1, t2, 1177
                  slt          a5, s3, s10
                  addi         a3, t2, 1018
                  slt          s10, s2, t6
                  ori          t1, s8, -261
                  xor          s7, s7, s6
                  srai         a3, a7, 24
                  nop
                  addi         s3, a0, -1260
                  sltiu        s10, a7, -554
                  xor          a0, s0, t4
                  sltu         a5, a3, tp
                  slt          s3, sp, s10
                  srai         t5, s7, 27
                  xori         gp, s8, -597
                  and          s8, s10, a7
                  sra          a7, s3, s5
                  lui          s3, 981975
                  nop
                  srli         s6, s7, 22
                  srl          s3, a6, s10
                  srl          a1, t0, zero
                  andi         a0, s1, -1627
                  add          a0, t4, a3
                  auipc        tp, 571030
                  sub          t0, s3, s4
                  or           s2, t0, s1
                  srl          a0, a7, t3
                  slli         a7, s7, 17
                  or           t1, s3, s9
                  slti         t2, t1, 503
                  andi         a5, s11, -499
                  srli         s1, s9, 0
                  andi         zero, s6, 872
                  slt          ra, a7, s9
                  addi         s1, s8, -222
                  or           s7, s6, s2
                  sra          sp, s3, sp
                  sltu         s4, tp, s0
                  xori         tp, a6, -981
                  sra          s11, a5, s1
                  ori          a1, s7, -1787
                  addi         t5, t1, -414
                  ori          s11, gp, 737
                  xor          t6, s8, a2
                  sra          a5, t5, t6
                  ori          a2, s2, 1151
                  srai         s5, s6, 15
                  sra          s1, s2, s9
                  slt          s5, tp, t3
                  slti         t0, s7, -1463
                  ori          s5, s2, 123
                  srai         a1, a5, 17
                  slt          s8, gp, a3
                  srai         s4, sp, 28
                  xor          ra, zero, ra
                  slli         a5, ra, 18
                  add          s3, sp, t2
                  xor          tp, a3, s8
                  slli         t4, gp, 12
                  srai         a3, a4, 14
                  srli         t4, a4, 9
                  sra          a2, s4, s3
                  sll          a7, s2, a0
                  sub          t1, tp, t5
                  ori          t1, a0, 376
                  slli         t1, s1, 10
                  sltu         gp, t1, s0
                  sra          s0, s0, s1
                  ori          a6, a7, -1138
                  sub          s1, t3, a5
                  xor          s7, a2, s6
                  srai         gp, s7, 28
                  sltu         t0, s2, s8
                  sra          s5, zero, tp
                  ori          s2, s7, -1650
                  sll          t5, s4, a0
                  addi         a7, a7, 790
                  sltiu        s2, s11, -1693
                  or           s7, s3, s7
                  addi         s5, t3, 308
                  ori          a1, s7, -401
                  and          s7, s7, s7
                  slti         s0, sp, -1800
                  srai         t6, s6, 5
                  or           a3, s11, s6
                  slti         a0, t4, -941
                  add          a7, s0, s3
                  sub          a7, s3, t2
                  and          s2, zero, tp
                  srli         t0, a7, 13
                  xor          s0, a6, zero
                  addi         s5, s7, -1251
                  sltiu        s10, a7, 1061
                  xori         s7, s3, 1790
                  nop
                  xor          a5, a6, t3
                  ori          t2, a0, -1954
                  slt          s11, t1, a4
                  xor          a5, a7, zero
                  srli         a0, gp, 12
                  nop
                  sltu         a6, a7, tp
                  addi         t2, s9, -659
                  sub          a3, s10, s2
                  srli         ra, s11, 23
                  or           a3, t6, zero
                  auipc        t2, 240769
                  xor          s2, t1, ra
                  slti         s3, a7, 1997
                  ori          t5, tp, 1597
                  and          t5, s10, tp
                  slli         a6, a2, 19
                  lui          t6, 537095
                  sra          s4, s0, a2
                  slt          s2, s5, t6
                  andi         a3, s11, 1884
                  add          t4, a1, tp
                  or           zero, s6, t3
                  add          s8, s4, s3
                  slti         a7, a7, 1307
                  add          t6, t4, s4
                  sub          s7, t1, a4
                  and          gp, s4, s10
                  srai         a2, t6, 24
                  addi         t6, s10, 1969
                  sub          t0, t6, a2
                  auipc        tp, 980805
                  sra          tp, a0, s10
                  ori          s5, a6, 1880
                  andi         a5, ra, -889
                  lui          tp, 928273
                  slt          t1, a0, a1
                  slt          s8, s10, t3
                  or           ra, t2, t3
                  add          t6, a4, ra
                  slti         a2, t5, -1812
                  sll          t2, t5, gp
                  srli         tp, t6, 7
                  srli         s6, ra, 6
                  sra          a1, t0, ra
                  sll          tp, s7, s10
                  sll          s5, s9, t2
                  xor          s1, t3, a2
                  andi         ra, a3, -893
                  andi         s1, s9, 250
                  nop
                  nop
                  srai         a3, a6, 25
                  sltiu        t2, t1, -1385
                  slti         a3, a1, 212
                  add          gp, s10, t1
                  sll          s11, s6, t6
                  or           a3, s7, a5
                  nop
                  sra          s1, s7, a0
                  sltu         t0, t5, s10
                  auipc        a2, 449859
                  sra          s1, s5, t4
                  nop
                  sub          t4, a5, gp
                  xori         s10, s2, -112
                  slt          t6, s3, t3
                  sra          a5, s11, s1
                  auipc        t5, 963584
                  sltu         a0, s3, s2
                  sltiu        s4, s7, 169
                  slti         s7, a4, -1875
                  auipc        a2, 761713
                  and          s0, s8, t3
                  srli         gp, s6, 12
                  addi         s10, s3, -261
                  srai         s1, gp, 18
                  li           t6, 0x5e55a3de #start riscv_int_numeric_corner_stream_4
                  li           a6, 0x80000000
                  li           a5, 0xffffffff
                  li           a0, 0x6a2f5614
                  li           s10, 0xf5e909c9
                  li           a1, 0xfda5672c
                  li           t2, 0x80000000
                  li           ra, 0x80000000
                  li           s0, 0xc8a48848
                  li           s1, 0x80000000
                  auipc        a5, 1042672
                  sub          s10, a6, ra
                  sub          t6, t6, s10
                  addi         s1, s1, 1937
                  sub          s1, ra, a1
                  add          s10, a1, a1
                  addi         s0, a5, 170
                  sub          ra, t6, s1
                  nop
                  addi         ra, a6, -1067
                  add          ra, s10, s0
                  lui          s10, 1018258
                  add          a1, s10, s1
                  sub          s0, s0, t2
                  lui          ra, 623077
                  auipc        a6, 642015 #end riscv_int_numeric_corner_stream_4
                  addi         s10, a6, -503
                  addi         a0, t3, -27
                  addi         gp, s10, -1163
                  or           s3, s2, a5
                  add          s1, t6, tp
                  xori         s1, t5, 1538
                  sub          s10, t6, s2
                  sra          s7, t4, tp
                  sra          t1, gp, zero
                  add          s11, a6, a2
                  sub          t5, a6, a1
                  xori         t1, s7, 124
                  ori          ra, a6, -152
                  and          s3, s10, t5
                  addi         t4, s0, 424
                  srai         s1, a3, 29
                  sub          gp, t2, tp
                  and          t6, s3, s2
                  ori          a6, a2, -1705
                  ori          sp, s4, -733
                  sll          s6, s5, s10
                  andi         t4, s6, 1711
                  and          s3, a2, t0
                  lui          s1, 733241
                  sltu         a0, t1, zero
                  ori          s1, s2, 1763
                  srl          a3, s2, a4
                  and          s11, gp, a4
                  and          ra, s2, t4
                  srai         zero, s10, 4
                  add          zero, s8, s6
                  lui          zero, 337997
                  or           a2, a0, s8
                  or           a7, s7, a1
                  sltu         ra, t6, s5
                  add          a7, a1, s4
                  ori          tp, s9, -1785
                  ori          t2, s0, 405
                  slli         s4, t6, 9
                  lui          s11, 482281
                  add          sp, s4, s9
                  srai         a1, t2, 27
                  sltiu        gp, t5, 1423
                  or           s0, t4, a0
                  ori          tp, t0, -1922
                  auipc        sp, 339372
                  lui          zero, 466789
                  xori         s1, s9, -1547
                  and          s1, zero, ra
                  sra          t1, s10, s4
                  slt          t0, s9, s5
                  or           t0, a3, a3
                  andi         s11, s10, 509
                  srai         s5, s0, 12
                  sltiu        s8, a6, 691
                  auipc        s11, 268952
                  xor          s6, a4, s5
                  addi         a0, a1, 168
                  srli         t2, a2, 3
                  addi         t2, a0, -406
                  sll          s4, a0, a4
                  andi         t5, s1, -1337
                  and          a5, a3, a3
                  auipc        sp, 25595
                  and          a0, t4, s10
                  or           s4, t6, t3
                  sub          s2, a1, s8
                  auipc        a6, 107887
                  and          ra, s5, a0
                  and          t1, sp, a3
                  sltiu        gp, tp, -532
                  srai         s5, t3, 18
                  xori         s6, s9, 1028
                  add          t2, s10, a5
                  srai         a2, t2, 28
                  xor          s0, a7, a7
                  srl          s8, t3, ra
                  lui          s2, 83639
                  and          s4, gp, a0
                  slt          t2, t6, s1
                  sra          t5, s1, a1
                  and          a1, s3, a4
                  ori          s4, a2, 768
                  addi         t0, sp, -1460
                  lui          s8, 149524
                  slt          t5, a1, a1
                  slti         s7, a6, 1026
                  or           s10, a0, tp
                  xori         t1, a6, 567
                  sll          ra, a2, t1
                  slti         s4, t3, -1353
                  slti         a7, s5, -431
                  sll          t2, s9, s9
                  slti         s4, s1, 903
                  sra          s2, a5, s9
                  auipc        s11, 274502
                  xori         s0, a2, 1570
                  slti         s8, a3, 825
                  lui          a2, 678041
                  sll          a1, s1, a2
                  xori         t5, t4, -1301
                  sub          a3, a6, s3
                  xori         s5, a3, -1127
                  auipc        s3, 767832
                  nop
                  sra          t6, zero, t2
                  sll          s3, a3, zero
                  nop
                  xori         t1, t4, 1779
                  ori          a5, a7, -1502
                  lui          s11, 619786
                  srl          t0, a7, s4
                  slli         s5, s7, 31
                  slt          s7, t2, t4
                  and          t5, gp, a7
                  slt          t4, t2, s8
                  srli         t4, s2, 26
                  nop
                  auipc        s8, 785925
                  lui          s11, 194303
                  sll          a0, t4, t3
                  sll          s0, t6, tp
                  auipc        tp, 413099
                  sltu         t1, s8, a3
                  nop
                  sub          a2, t2, t0
                  or           zero, tp, s10
                  slti         a5, tp, -399
                  sra          s11, s11, t4
                  slli         ra, a5, 1
                  add          s5, s7, t1
                  xor          zero, zero, tp
                  and          t0, s9, a1
                  sub          a0, s5, t0
                  sub          ra, t5, a2
                  srli         s0, s10, 9
                  addi         s1, s11, 1576
                  sra          s7, s9, s11
                  ori          s11, s2, -564
                  and          t2, a4, s6
                  srai         s5, s11, 28
                  and          a0, ra, tp
                  xor          s5, a1, s0
                  ori          a3, a5, 1732
                  or           t4, t6, t1
                  ori          zero, ra, 747
                  nop
                  sll          t2, t4, s8
                  sltiu        ra, s3, -1496
                  srli         s7, a7, 4
                  srl          a1, s1, a6
                  lui          s10, 239135
                  and          s3, s6, a3
                  sub          s2, a7, s7
                  sltiu        s10, a0, -476
                  xori         sp, ra, 775
                  srli         ra, s0, 3
                  sra          a7, t1, t0
                  xori         s4, t1, 374
                  add          s10, t2, zero
                  or           tp, a7, zero
                  sll          s5, t2, s6
                  auipc        tp, 790682
                  xor          s6, a4, s4
                  srli         t4, s9, 31
                  and          sp, a0, a0
                  auipc        t5, 144206
                  slti         t1, a6, 1538
                  sltiu        a6, a0, -984
                  nop
                  sub          s7, t2, t2
                  add          t1, s7, s4
                  slt          t1, t5, tp
                  slti         a1, sp, 1565
                  auipc        s1, 432897
                  auipc        a1, 820707
                  slt          s10, s9, s5
                  srai         s5, gp, 10
                  and          s3, a5, t0
                  addi         sp, s10, 1083
                  srl          t0, s0, a0
                  srl          s8, gp, t6
                  slli         s4, s9, 7
                  srai         s5, ra, 16
                  andi         s2, a0, 117
                  srl          s3, s8, ra
                  add          a5, a0, s5
                  ori          s2, zero, 971
                  sltiu        s4, gp, 1076
                  andi         a0, a7, 1735
                  srl          a0, a0, s3
                  sra          t1, t6, s2
                  ori          a7, s11, 671
                  sub          a7, s2, a0
                  auipc        zero, 30828
                  sra          gp, s4, s5
                  or           s2, t4, s8
                  xori         a6, s4, -1699
                  slt          s4, t0, a4
                  sub          s0, s2, s0
                  sub          zero, s7, a1
                  xor          s11, t0, ra
                  sub          s10, s9, s10
                  nop
                  auipc        s2, 688966
                  lui          t5, 215816
                  xor          tp, zero, t2
                  slt          t4, t1, s8
                  nop
                  auipc        a2, 953906
                  sltiu        s2, zero, -1394
                  slt          a7, s7, s5
                  sra          s4, s1, s10
                  srai         tp, s8, 11
                  srai         s11, a2, 13
                  slli         s10, s3, 15
                  lui          s11, 21849
                  xor          s3, a1, a7
                  sltiu        s0, s4, -407
                  sll          a3, s10, a7
                  srli         zero, t0, 29
                  xori         t0, s4, -233
                  sll          a3, t2, s2
                  lui          t6, 260065
                  xori         zero, tp, -1889
                  sltiu        a3, s9, -593
                  and          a2, s2, s6
                  xori         a7, a1, 540
                  auipc        a2, 493031
                  sub          sp, t0, s11
                  xori         zero, s4, -1663
                  sltiu        s5, s3, -1394
                  sltiu        s0, s10, -1330
                  sltu         a7, s2, t4
                  srli         t6, s3, 7
                  sltiu        s10, a5, -871
                  auipc        ra, 403652
                  srli         zero, a6, 11
                  sltiu        t0, a5, 1559
                  xori         a6, t4, 1282
                  add          t1, s6, ra
                  slli         a6, s2, 23
                  ori          s6, s11, 289
                  lui          t5, 263788
                  sltu         s0, a0, s5
                  ori          s10, ra, 533
                  or           t4, a0, t2
                  xori         s7, s9, 909
                  sltu         s2, a7, sp
                  xori         t6, s5, 861
                  xor          a0, s1, s10
                  slti         s0, a0, 1824
                  sra          gp, s4, a7
                  and          t1, a3, s2
                  addi         t0, t0, 859
                  or           s2, s7, t3
                  slti         s8, s3, 139
                  addi         s11, s3, -980
                  and          s8, s4, s3
                  addi         a0, a2, -95
                  xori         s5, a3, 550
                  ori          t2, a2, 1933
                  slt          gp, t4, s10
                  sll          s5, tp, s10
                  sll          t0, t5, zero
                  sll          s10, t3, a1
                  andi         a5, a6, -1985
                  or           s7, a1, sp
                  xori         s7, s7, -132
                  slli         a7, s7, 1
                  slti         s5, t5, -249
                  auipc        zero, 864360
                  srli         t5, t5, 19
                  slt          a7, a0, s8
                  slt          a2, t6, s10
                  and          a0, t5, a7
                  srai         a7, s5, 31
                  srli         t6, a2, 0
                  sra          ra, s0, a0
                  auipc        s0, 557329
                  srli         s8, s0, 25
                  addi         t5, s10, 2022
                  sltu         t2, tp, s10
                  slt          tp, a2, ra
                  lui          t1, 165043
                  xori         t4, s10, 2046
                  addi         a7, s3, -117
                  slt          s11, a3, t0
                  and          tp, s11, s9
                  sltiu        gp, a0, -1113
                  sll          s11, s1, a3
                  slti         s7, s9, 1261
                  sltu         t1, t3, s5
                  srai         s4, s11, 30
                  srl          t0, s0, s8
                  or           a7, tp, a3
                  xori         s6, s9, 872
                  sltu         s6, t5, a0
                  xori         t0, s5, 1989
                  slli         s6, s0, 20
                  sltiu        t6, t5, -1389
                  srli         s0, t0, 11
                  srai         gp, s1, 19
                  srai         s4, s10, 21
                  slli         s1, s7, 26
                  slli         tp, t3, 11
                  add          t0, s0, sp
                  xor          t0, s9, s9
                  addi         gp, a1, -488
                  sll          t4, a7, a4
                  auipc        t6, 418925
                  or           t0, sp, a6
                  auipc        s8, 392443
                  lui          s11, 433587
                  andi         t5, t6, 1791
                  nop
                  addi         s11, sp, 815
                  sltiu        a3, ra, -810
                  slt          s4, s2, a2
                  sub          ra, s11, s11
                  addi         tp, s2, -634
                  auipc        t5, 837898
                  or           tp, s7, s3
                  sub          s11, s0, gp
                  sub          t1, s1, a6
                  nop
                  or           a5, a7, zero
                  sltu         s7, sp, t1
                  andi         a3, a3, 650
                  srl          a5, t3, s1
                  sra          a1, t4, t1
                  or           s2, s9, tp
                  nop
                  or           a2, sp, a4
                  addi         s10, a1, -2046
                  or           zero, s1, tp
                  and          zero, s6, s9
                  nop
                  xori         s2, s3, -815
                  sltiu        s1, t3, 977
                  lui          s10, 694633
                  addi         s6, a1, -201
                  sra          s2, ra, t1
                  or           s8, s11, a7
                  and          s10, a5, a4
                  lui          s5, 495859
                  slli         s5, a2, 22
                  xori         a3, t0, 889
                  sltu         s11, a2, zero
                  sra          t5, t1, s8
                  slti         s3, a6, 1250
                  nop
                  and          s3, s4, s3
                  sub          tp, s3, a2
                  sltu         s11, s7, s6
                  add          s1, t3, s2
                  sltiu        s7, gp, 105
                  xori         s5, zero, 710
                  slt          s4, a7, sp
                  sll          a0, a0, s10
                  slt          s8, s11, tp
                  add          s2, t4, a6
                  sltu         a7, s3, a5
                  auipc        a2, 888306
                  sub          s6, ra, s8
                  srli         gp, a5, 31
                  andi         gp, s0, 843
                  srl          gp, zero, a7
                  srai         s2, s7, 18
                  slti         a0, ra, 1170
                  slti         s5, s11, 1949
                  or           s4, s6, a2
                  xor          s3, t0, s11
                  slt          s8, t2, gp
                  andi         s7, tp, 815
                  xori         s0, a7, 975
                  or           s0, s9, s1
                  slti         a7, s4, -284
                  lui          s4, 880057
                  or           gp, a2, sp
                  ori          s3, tp, -864
                  lui          s6, 478230
                  or           s2, s3, t3
                  slt          a1, a7, tp
                  slti         s1, s3, 554
                  andi         s1, s2, 815
                  ori          s8, s4, -952
                  srli         s5, ra, 11
                  sub          a1, t2, t6
                  slt          gp, s6, s3
                  sltiu        t5, gp, -1488
                  xor          t6, ra, s0
                  slli         s11, s1, 1
                  sll          t4, s6, s8
                  sll          zero, t6, s4
                  sra          s6, t3, s5
                  sll          a0, a7, gp
                  sll          t0, s10, a5
                  srli         a2, a7, 4
                  slt          gp, a6, a2
                  lui          t5, 971679
                  ori          s11, t3, 282
                  srai         s7, a3, 13
                  srl          t6, s11, gp
                  slli         t1, a4, 2
                  lui          a7, 872537
                  slli         s7, s1, 3
                  sltu         s5, s5, a0
                  xori         s1, a1, 1784
                  srai         t2, gp, 8
                  sub          s4, a0, sp
                  and          ra, s6, a7
                  andi         ra, a1, -1497
                  xor          a1, a1, t5
                  or           a3, t3, s9
                  srl          s11, s1, t0
                  sltu         s2, s8, t1
                  sub          a7, a7, s4
                  nop
                  and          sp, tp, s7
                  lui          sp, 788530
                  sll          a6, t4, a1
                  nop
                  sltu         s5, tp, t5
                  slt          a7, t3, s5
                  sltiu        a7, s9, 880
                  andi         a6, zero, 88
                  ori          a3, s11, 1863
                  nop
                  srai         t4, s8, 15
                  sltu         s4, a6, s10
                  srl          s2, t2, a6
                  addi         a3, s2, 947
                  sltiu        s3, s2, -196
                  add          a3, t0, s3
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x31, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x31, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x31, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x31, x10, ecall_handler
                  li x10, 0x1
                  beq x31, x10, instr_fault_handler
                  li x10, 0x5
                  beq x31, x10, load_fault_handler
                  li x10, 0x7
                  beq x31, x10, store_fault_handler
                  li x10, 0xc
                  beq x31, x10, pt_fault_handler
                  li x10, 0xd
                  beq x31, x10, pt_fault_handler
                  li x10, 0xf
                  beq x31, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
