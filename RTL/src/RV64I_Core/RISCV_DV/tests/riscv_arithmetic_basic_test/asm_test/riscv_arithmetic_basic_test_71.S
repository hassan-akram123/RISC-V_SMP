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
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x8, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0xfa12d5d6
                  li x2, 0x7
                  li x3, 0x0
                  li x4, 0xf2d94ea0
                  li x5, 0xf75c83b7
                  li x6, 0xfb57b8fe
                  li x7, 0x2fa8cf40
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xfc113b12
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0xf0ef2485
                  li x17, 0x80000000
                  li x18, 0x3
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xa
                  li x23, 0x0
                  li x24, 0x5
                  li x25, 0x80000000
                  li x26, 0xf2097ce4
                  li x27, 0xfe4f16aa
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf8710f10
                  li x31, 0x6
                  la x19, user_stack_end
main:             li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           t2, 0xe1e8384c
                  li           a6, 0xffffffff
                  li           s10, 0xffffffff
                  li           s11, 0xffffffff
                  li           s5, 0x0
                  li           a0, 0x0
                  li           t1, 0x0
                  li           a2, 0xffffffff
                  li           t3, 0xffffffff
                  nop
                  sub          s11, a0, a4
                  auipc        t3, 94571
                  addi         t1, s5, -1876
                  addi         a4, a6, -1181
                  lui          a0, 427413
                  lui          s5, 374776
                  sub          t2, s5, a0
                  add          a0, a0, s11
                  addi         a2, t2, -982
                  add          t2, a0, s11
                  auipc        a4, 63258
                  add          a2, a2, a4
                  auipc        a4, 901376
                  nop
                  auipc        t2, 497777
                  auipc        a2, 86876 #end riscv_int_numeric_corner_stream_19
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a6, 0xffffffff
                  li           t0, 0x4dc6f382
                  li           a0, 0x0
                  li           s2, 0x80000000
                  li           sp, 0x0
                  li           gp, 0x0
                  li           t4, 0xf094f991
                  li           ra, 0xa17b56cb
                  li           t3, 0xad0f4416
                  lui          gp, 653418
                  lui          ra, 1031348
                  lui          t0, 718953
                  nop
                  add          a0, s2, t0
                  addi         a7, s2, -1716
                  lui          gp, 465032
                  addi         a6, sp, -2011
                  auipc        gp, 815278
                  auipc        s2, 37693
                  sub          a0, t3, t3
                  add          s2, t0, a6
                  sub          a0, t3, t4
                  addi         t3, t4, -959
                  auipc        t0, 313797
                  lui          ra, 710597
                  addi         a6, t0, -140
                  sub          t4, sp, t3
                  nop
                  nop
                  nop
                  nop
                  auipc        a7, 392396
                  auipc        t0, 29426
                  add          ra, sp, gp #end riscv_int_numeric_corner_stream_15
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s8, 0x0
                  li           t2, 0xffffffff
                  li           sp, 0x80000000
                  li           s9, 0xffffffff
                  li           a0, 0x0
                  li           s11, 0x0
                  li           t1, 0xffffffff
                  li           s1, 0x80000000
                  li           a6, 0xffffffff
                  lui          t2, 677065
                  addi         t2, a0, 1047
                  lui          s1, 1000624
                  addi         t3, s11, 183
                  auipc        a0, 844826
                  auipc        sp, 463655
                  auipc        s8, 361968
                  sub          a0, t2, s9
                  add          s9, t2, s8
                  nop
                  nop
                  sub          s8, s1, t3
                  addi         a0, t3, 1519
                  addi         t3, s8, 1603
                  nop
                  sub          t2, s8, a6
                  sub          s1, sp, s11
                  nop
                  add          t1, s8, a0 #end riscv_int_numeric_corner_stream_18
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s2, 0x0
                  li           t3, 0xae16e61f
                  li           a4, 0x80000000
                  li           t6, 0xffffffff
                  li           a7, 0xffffffff
                  li           s9, 0x0
                  li           a0, 0x9d3f64f3
                  li           a5, 0x0
                  li           sp, 0x80000000
                  nop
                  add          t6, s10, a7
                  lui          a0, 746168
                  addi         s10, a0, 724
                  auipc        a5, 930363
                  lui          a7, 398899
                  lui          a4, 76723
                  addi         a7, t3, 192
                  addi         t6, t6, 1058
                  nop
                  nop
                  auipc        a4, 740399
                  sub          t6, a4, s10
                  addi         a0, a4, -1118
                  add          s10, sp, a7
                  sub          s9, s10, s2
                  auipc        a0, 167948
                  auipc        t3, 634102
                  addi         t3, s9, 1026
                  addi         a7, t3, -2038
                  sub          t3, s10, s9
                  auipc        s9, 397403
                  sub          sp, t3, t6
                  auipc        a4, 987739
                  lui          s9, 610656 #end riscv_int_numeric_corner_stream_7
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s6, 0x80000000
                  li           t2, 0xffffffff
                  li           a3, 0xffffffff
                  li           sp, 0x1c263fb6
                  li           t6, 0x0
                  li           s5, 0x80000000
                  li           s8, 0x80000000
                  li           s7, 0x80000000
                  li           a2, 0xffffffff
                  auipc        sp, 343456
                  nop
                  nop
                  addi         s5, s11, -1730
                  auipc        t2, 4007
                  addi         s5, s5, -568
                  nop
                  add          t2, a2, s8
                  nop
                  auipc        s7, 133540
                  add          s6, s8, t2
                  add          s11, s7, a3
                  add          s6, s11, a3
                  lui          s5, 35327
                  add          a2, s7, s6
                  nop
                  addi         t2, a2, -508 #end riscv_int_numeric_corner_stream_3
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           t2, 0x0
                  li           ra, 0xffffffff
                  li           t0, 0x80000000
                  li           s5, 0xffffffff
                  li           s2, 0xffffffff
                  li           t1, 0x80000000
                  li           a4, 0x80000000
                  li           a5, 0x80000000
                  li           s8, 0xac46e938
                  auipc        a4, 708231
                  sub          a4, t2, s5
                  add          s2, s2, s5
                  addi         s2, s2, 1674
                  nop
                  addi         a5, a4, 646
                  lui          t0, 406703
                  auipc        t2, 33564
                  auipc        ra, 597782
                  sub          a4, a5, s8
                  add          a4, t1, t2
                  lui          a4, 1016624
                  nop
                  addi         t0, ra, -1277
                  auipc        a5, 816150
                  sub          t1, t1, t1
                  nop
                  sub          t2, gp, t1 #end riscv_int_numeric_corner_stream_17
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           t3, 0xffffffff
                  li           t6, 0x80000000
                  li           s5, 0x1448a45d
                  li           s9, 0x0
                  li           s10, 0xffffffff
                  li           a4, 0x0
                  li           a2, 0xffffffff
                  li           s4, 0xe9cc5c3a
                  li           t0, 0xb2171383
                  addi         s4, s9, 977
                  add          s9, s10, s11
                  lui          a4, 312128
                  lui          a4, 38178
                  sub          s4, s4, s4
                  sub          a2, s9, s5
                  nop
                  sub          s4, s9, s11
                  auipc        s11, 677218
                  lui          a2, 301993
                  add          s5, s10, t0
                  lui          s11, 58774
                  auipc        a2, 541140
                  addi         s4, t0, 1649
                  add          t6, s11, a2
                  sub          s9, s9, s10
                  nop
                  lui          s4, 409925
                  addi         a2, a4, 2000
                  sub          s11, s4, s5 #end riscv_int_numeric_corner_stream_13
                  li           s8, 0x8c85620b #start riscv_int_numeric_corner_stream_2
                  li           t4, 0xf3d0ad5b
                  li           s9, 0x80000000
                  li           a5, 0x1eb0bc9
                  li           s5, 0x80000000
                  li           a7, 0xffffffff
                  li           tp, 0x0
                  li           a2, 0x0
                  li           s6, 0x0
                  li           a0, 0x0
                  addi         s9, s6, -643
                  addi         a5, s6, 2007
                  add          a7, a7, a0
                  auipc        a7, 457678
                  sub          a5, a2, s6
                  nop
                  lui          a5, 1034740
                  sub          a2, a7, a2
                  add          a5, t4, t4
                  lui          s9, 375387
                  add          s8, a5, s5
                  auipc        s8, 519088
                  addi         a5, s9, -1153
                  addi         s9, a7, -1919
                  addi         a0, a7, -1685
                  addi         tp, a7, -297 #end riscv_int_numeric_corner_stream_2
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x0
                  li           a0, 0xffffffff
                  li           a3, 0x0
                  li           ra, 0xda20a1db
                  li           gp, 0xb36dc13e
                  li           s10, 0xa374ed3e
                  li           s8, 0x80000000
                  li           s1, 0xe953d0d0
                  li           t4, 0x80000000
                  sub          a3, a4, ra
                  lui          t4, 26636
                  lui          s8, 219113
                  add          ra, a0, a4
                  sub          a4, a3, ra
                  addi         gp, s10, -1203
                  lui          a5, 335644
                  auipc        s10, 16593
                  nop
                  nop
                  auipc        s8, 505253
                  nop
                  nop
                  lui          a5, 975436
                  add          s10, a0, a0
                  nop
                  addi         t4, a3, 1052
                  add          gp, t4, a0
                  auipc        a0, 122174
                  sub          a0, t4, s1
                  sub          ra, a0, a5
                  add          a0, a4, a5
                  add          a3, a5, a5
                  add          t4, a3, ra
                  add          a0, a4, a3
                  addi         gp, gp, -1440
                  addi         a5, a5, -1183 #end riscv_int_numeric_corner_stream_8
                  slt          s6, t0, a3
                  ori          s9, s11, -1137
                  andi         s1, s7, 8
                  lui          s10, 599160
                  addi         a2, s4, 1143
                  xori         t3, s7, -1956
                  sltiu        s1, a1, 243
                  srl          tp, t5, s1
                  and          a7, tp, s1
                  sra          s8, a3, s3
                  srli         a6, t2, 15
                  auipc        a6, 328838
                  andi         a0, t1, -1898
                  sub          a7, s11, t2
                  lui          a6, 985345
                  lui          a5, 996575
                  andi         sp, a4, 1077
                  sub          t3, s5, t2
                  xor          t1, s11, a1
                  addi         t2, zero, 388
                  auipc        ra, 675421
                  andi         sp, s6, -1304
                  srl          s9, a0, a6
                  and          a2, zero, t4
                  and          sp, a5, s10
                  xor          t1, t2, a6
                  sra          s2, s8, s5
                  ori          tp, s0, -1641
                  add          a6, s0, gp
                  or           s2, t4, t1
                  srai         t4, ra, 4
                  andi         s2, s1, 937
                  srai         s10, a7, 11
                  add          s9, s7, a2
                  sra          t1, t1, t0
                  sub          s7, s7, a2
                  xor          s8, s1, sp
                  srli         s7, s10, 29
                  slti         a2, s4, -743
                  slli         gp, sp, 13
                  or           a5, a6, a4
                  and          s10, zero, a2
                  add          t6, t5, t3
                  srl          ra, s9, s10
                  lui          ra, 824651
                  add          s4, a6, a5
                  sltiu        s8, s2, -478
                  xor          a4, sp, gp
                  xori         a3, t2, -1368
                  lui          tp, 85529
                  srai         a6, t0, 1
                  ori          t4, s5, -1006
                  sltu         t2, t0, t3
                  lui          s10, 1037661
                  add          s4, t6, s5
                  auipc        sp, 320300
                  slt          t0, ra, s4
                  add          s2, t3, t5
                  srl          s11, t2, t2
                  slt          t4, ra, sp
                  slti         t0, s6, -308
                  sltu         a4, gp, s5
                  or           a6, gp, t1
                  slli         t3, t6, 25
                  sub          a7, s11, s11
                  sub          t3, s2, zero
                  or           a3, s8, a3
                  srli         ra, t0, 9
                  nop
                  srai         ra, t1, 19
                  sll          t2, s0, s8
                  slli         s10, a0, 19
                  sub          a0, gp, a3
                  srai         s1, t0, 24
                  add          gp, s4, s11
                  auipc        zero, 559179
                  ori          ra, s2, 895
                  srl          s5, a3, s9
                  nop
                  nop
                  srl          zero, s9, t0
                  srai         sp, t3, 27
                  add          s4, t5, t4
                  nop
                  or           a2, s9, t0
                  xori         sp, sp, -618
                  xori         a2, a5, -1847
                  sltiu        s6, t6, 576
                  xor          s5, gp, sp
                  slli         t4, a2, 25
                  xor          ra, t3, s4
                  addi         s6, s2, 1425
                  sll          s7, zero, t6
                  sll          s7, t2, s2
                  ori          a2, s2, 1783
                  nop
                  lui          s4, 676718
                  ori          sp, s2, 1683
                  or           s9, s2, a2
                  add          sp, a0, s11
                  srli         t1, zero, 10
                  add          a6, gp, t0
                  slti         sp, s10, -959
                  lui          t0, 211302
                  sub          a0, t1, t2
                  or           tp, s0, s1
                  or           t3, a7, t2
                  lui          a4, 656229
                  and          s5, s11, zero
                  or           t4, t3, a7
                  nop
                  xori         s10, s0, -1046
                  sltiu        s4, s10, 540
                  nop
                  srli         ra, t6, 18
                  srai         s7, s10, 29
                  srli         a5, t4, 6
                  or           s7, a7, a0
                  sltiu        a7, s11, 599
                  sltiu        a4, s11, 650
                  andi         a2, t4, -156
                  slt          s1, a5, s2
                  xori         a3, s11, -1188
                  add          t6, s2, s7
                  xori         s5, t6, 812
                  ori          t6, t3, 724
                  xori         ra, s10, 1639
                  and          t3, t3, a6
                  andi         ra, s1, 209
                  nop
                  sltiu        s6, zero, 100
                  or           s9, zero, a4
                  sll          t4, s9, t3
                  slli         s7, a2, 29
                  sll          s4, s5, s4
                  slt          t0, s7, a3
                  sra          t6, s6, s10
                  sltiu        t0, ra, 1768
                  slt          s1, t6, s10
                  slt          a5, t1, t3
                  add          s6, s3, a0
                  srai         a2, s11, 31
                  andi         a4, s4, 1008
                  xor          tp, a4, a4
                  srai         t6, gp, 30
                  and          t2, s5, a1
                  auipc        s8, 915561
                  ori          ra, t0, -850
                  lui          t2, 499999
                  or           gp, a5, a7
                  add          a1, s4, t5
                  slli         s1, a1, 31
                  srai         s8, s11, 20
                  xori         s2, t2, -124
                  xor          a0, a7, s9
                  slli         gp, a2, 0
                  slti         t0, t0, 2009
                  slti         zero, s7, 1900
                  sra          s1, a5, a2
                  xor          s9, a0, s9
                  lui          a7, 80572
                  srai         s11, s7, 1
                  and          a3, s2, a1
                  xor          s5, a2, a6
                  andi         a7, s0, 1582
                  sltiu        a6, t3, 941
                  slti         s2, a2, -505
                  sra          tp, s3, s7
                  sll          a1, gp, s11
                  lui          s1, 713239
                  slti         zero, a0, -1699
                  sltu         t3, s0, a1
                  ori          tp, s3, -200
                  slti         t1, a2, -1609
                  srl          t0, a5, s10
                  srli         t0, s5, 1
                  srl          t2, t3, a1
                  addi         s4, a4, -1508
                  slti         a7, s3, -915
                  slti         s2, a2, -981
                  srl          a3, a5, t1
                  slt          s5, a7, s0
                  sra          s4, ra, s0
                  srai         ra, t2, 8
                  sub          s1, gp, s8
                  sra          t4, s8, a2
                  sub          gp, t6, ra
                  srai         a1, a5, 13
                  srai         s1, t3, 31
                  nop
                  andi         t4, sp, 214
                  andi         a6, a3, -1329
                  srli         s7, t5, 18
                  addi         s2, t3, 561
                  slti         t1, a7, -455
                  and          s7, gp, zero
                  sll          a7, s4, ra
                  sltiu        sp, gp, 1802
                  sra          a3, s6, a7
                  auipc        s10, 356158
                  slti         zero, gp, -1930
                  srai         a2, a5, 16
                  addi         zero, sp, 695
                  sll          tp, a4, s5
                  slti         s4, a3, 219
                  srl          zero, a0, ra
                  srli         s10, s8, 10
                  auipc        sp, 387201
                  slt          a5, s10, t6
                  slli         t6, a0, 12
                  xori         a6, s11, -466
                  srai         gp, sp, 1
                  sll          a5, zero, t2
                  sltu         s9, s4, t0
                  sra          t0, s11, s11
                  auipc        ra, 395477
                  sub          a5, a5, gp
                  addi         t4, a2, 1769
                  xori         s1, a4, -850
                  or           s4, a6, tp
                  srai         t1, s5, 19
                  auipc        tp, 999996
                  sub          t3, s4, s1
                  nop
                  andi         zero, s11, -583
                  slti         t0, s5, -1363
                  xor          sp, t4, a3
                  lui          s2, 379567
                  sltu         zero, sp, s2
                  slli         a6, s10, 5
                  sra          s6, s6, s6
                  srai         a6, s0, 3
                  srli         s9, zero, 31
                  sub          t3, a7, t1
                  sltiu        a2, tp, -38
                  lui          s10, 792970
                  ori          a0, s9, -215
                  srl          s6, t6, tp
                  or           gp, a6, a2
                  srl          sp, t5, s11
                  addi         s10, s10, -387
                  slli         tp, a6, 16
                  lui          sp, 382625
                  xor          a4, s7, s3
                  slli         s11, t2, 0
                  srl          t4, t0, s2
                  sltu         a6, ra, s4
                  and          t3, t4, ra
                  nop
                  and          s11, t0, a2
                  add          a5, s1, ra
                  sltiu        a7, t1, 569
                  sltiu        s9, t4, 1453
                  or           s4, a6, a6
                  nop
                  add          s6, s11, s9
                  add          sp, t4, s4
                  slti         s5, t6, -1942
                  srai         s2, a6, 3
                  sltiu        s9, a0, -952
                  sll          tp, s1, sp
                  sltu         s9, tp, t3
                  andi         a0, a4, -881
                  xor          t3, ra, a2
                  ori          a3, s6, -248
                  sra          s10, ra, t5
                  ori          t0, s6, 529
                  addi         tp, a6, -2001
                  slt          s1, a1, t4
                  slt          t0, s3, t1
                  ori          s2, s7, -2004
                  sltiu        s2, t6, 803
                  nop
                  slli         s9, t3, 31
                  sub          s9, t3, t4
                  add          s9, t6, s11
                  and          zero, t3, t4
                  slti         t0, a4, -387
                  sltiu        a7, gp, -789
                  addi         a7, ra, 1537
                  sltiu        a1, s5, 495
                  srl          ra, s0, a2
                  nop
                  lui          t4, 806042
                  slli         a4, t0, 27
                  auipc        a2, 487389
                  sll          a5, ra, s4
                  add          s2, t6, t1
                  srl          s2, s11, s5
                  nop
                  and          s9, s5, t2
                  slli         s1, zero, 0
                  slt          gp, t0, s1
                  xor          a4, ra, ra
                  andi         s10, t5, 60
                  srl          s4, s2, t1
                  srl          a5, s9, t5
                  sub          t4, sp, s2
                  andi         gp, ra, -1931
                  srli         s6, t3, 5
                  sll          ra, s1, t3
                  xori         t6, a5, -1483
                  ori          gp, s0, -1877
                  nop
                  sll          t2, gp, t1
                  srli         a5, gp, 15
                  sra          tp, a3, t4
                  auipc        a5, 994973
                  slti         s10, s4, 1815
                  sra          t4, t0, s2
                  srai         a6, t4, 13
                  sra          s4, a5, s6
                  addi         t3, t6, 800
                  slt          tp, s4, s10
                  ori          ra, s10, -1231
                  addi         sp, s0, 1465
                  sll          t3, tp, a4
                  auipc        s9, 296654
                  add          ra, s5, s10
                  addi         a3, t4, -1428
                  sub          ra, zero, s9
                  sltiu        a2, a4, -218
                  srl          t3, s2, s10
                  sub          a1, tp, s7
                  or           a2, zero, t2
                  lui          t1, 157835
                  sra          s1, s11, s1
                  xori         a1, a6, 1028
                  srai         a5, t3, 28
                  sub          s4, s11, a7
                  slli         s4, a2, 16
                  xori         s6, s4, 1242
                  and          s4, gp, s9
                  nop
                  auipc        s9, 599419
                  add          s11, t5, t1
                  sltiu        s9, a2, -299
                  lui          s8, 855288
                  andi         a5, a0, 324
                  srli         a2, s2, 7
                  ori          a3, t5, 223
                  sra          s11, s9, t0
                  sltu         a1, t0, t6
                  slti         t6, s7, 516
                  srli         t4, t0, 17
                  slt          t2, s2, s8
                  sra          a2, a2, s10
                  sub          t4, tp, a2
                  slli         a6, sp, 19
                  or           tp, s3, ra
                  sltiu        a4, a4, 292
                  slti         a0, s7, 858
                  or           s4, a1, zero
                  sub          a7, a4, zero
                  and          s8, s9, sp
                  add          tp, s6, t3
                  sll          a1, t3, a3
                  nop
                  nop
                  xor          t1, s6, t3
                  add          a3, a7, s1
                  sltiu        t0, s3, 285
                  srai         s8, s2, 24
                  srli         gp, s2, 12
                  sll          t2, a5, a5
                  andi         s4, t0, 377
                  auipc        t4, 228615
                  add          s6, a6, s3
                  sltu         t2, s0, t6
                  addi         s6, a3, 1091
                  sll          t1, zero, s3
                  sll          s8, a1, a4
                  slt          s9, a6, zero
                  add          a1, a6, a0
                  ori          t3, s9, 2021
                  sra          zero, t1, t1
                  sltu         t0, t1, s1
                  sra          s8, t4, s9
                  sub          s6, s7, t1
                  lui          t2, 246637
                  slt          s7, t6, s2
                  sll          s11, s6, zero
                  addi         s1, a6, 1875
                  srai         s4, t1, 5
                  xori         ra, ra, 673
                  srl          t0, s11, a3
                  srl          s6, gp, s10
                  ori          a2, s1, 392
                  slli         a2, s11, 24
                  srai         a0, s6, 24
                  sltu         s9, ra, s0
                  sub          a4, s8, s0
                  sltu         a0, s5, a0
                  xor          a6, t4, s0
                  sltiu        s5, sp, -1105
                  ori          gp, sp, 1257
                  srli         sp, a5, 19
                  sub          t0, a6, s3
                  sltu         a7, s11, s9
                  andi         ra, a2, -808
                  slti         t3, a5, -2028
                  sub          t6, a0, s1
                  andi         t6, t6, 1587
                  andi         t6, s8, 1958
                  sll          t6, s3, s4
                  srai         s7, a5, 8
                  xor          s8, s10, a4
                  srai         t1, t5, 26
                  nop
                  sra          t4, gp, s5
                  sra          s11, t5, a3
                  srl          a6, s2, sp
                  srli         s2, zero, 6
                  sra          a1, sp, s1
                  srai         s2, s2, 11
                  sltiu        a6, tp, 1747
                  xori         a4, a7, 1965
                  andi         s5, a6, 1218
                  sll          a3, t6, s0
                  slti         s10, t6, -1423
                  sra          t1, s0, a6
                  slti         ra, a6, 725
                  srai         t4, a5, 7
                  addi         a2, a1, -1796
                  and          gp, a0, a3
                  sll          t4, t6, gp
                  slt          s11, t0, s7
                  srli         t0, t4, 30
                  slti         s8, t3, 1762
                  add          a0, a2, a7
                  slti         t3, s4, -1866
                  ori          s1, s10, -1953
                  slti         s4, s11, -1577
                  srai         s10, a6, 19
                  sub          zero, s5, s7
                  lui          s1, 1011931
                  sltu         s2, s5, a2
                  sra          a3, t1, a1
                  addi         a0, s10, 1552
                  srl          a1, s7, s5
                  addi         s4, t6, 1360
                  or           zero, ra, gp
                  slli         s2, sp, 30
                  slli         t6, s7, 3
                  add          t6, s6, s7
                  andi         zero, t0, 804
                  slli         s7, t6, 19
                  add          gp, a5, zero
                  addi         t6, s2, -1453
                  srai         a6, s1, 28
                  slti         zero, s10, -122
                  srl          a6, s9, t6
                  xori         t2, t1, -1687
                  srli         tp, s6, 3
                  andi         t6, s7, 708
                  srai         t3, s8, 25
                  ori          t4, a3, 1631
                  srai         s6, s0, 27
                  and          s9, a0, s11
                  slli         s1, t6, 1
                  slt          t4, tp, gp
                  sub          gp, a4, a1
                  ori          ra, t1, 1341
                  or           s4, s1, s5
                  srai         t1, sp, 0
                  slt          s1, t5, a0
                  sub          s8, t3, a7
                  or           s5, s5, a7
                  add          t4, t1, a6
                  slli         s7, s1, 9
                  ori          a7, a1, -165
                  srai         t2, zero, 26
                  srl          t4, a6, s5
                  sltiu        a1, t0, -195
                  sra          a6, a3, s3
                  sub          s10, s4, s7
                  slli         a4, t5, 12
                  sub          s11, gp, zero
                  ori          tp, a2, -1140
                  auipc        s9, 906279
                  xori         s4, a7, -217
                  andi         a1, s8, 1193
                  auipc        t6, 510545
                  slli         a6, t5, 29
                  xori         t6, t6, 43
                  slt          a0, s7, a5
                  sub          ra, tp, s4
                  slli         sp, t6, 28
                  xor          s8, a3, s2
                  xori         s10, s10, 1412
                  sll          s10, s11, a5
                  ori          s7, s5, -113
                  slli         s5, s3, 26
                  nop
                  slli         t0, t3, 16
                  srl          s9, s7, a2
                  slt          s5, a2, a6
                  srai         tp, t5, 28
                  or           t6, a1, t1
                  srai         sp, s9, 21
                  ori          a6, s3, 663
                  andi         s1, s3, -1394
                  srai         ra, s9, 29
                  xori         a3, a0, 25
                  srli         t1, s10, 25
                  srai         s8, t4, 22
                  xor          ra, s11, t4
                  sll          s9, s2, t0
                  sra          s4, a1, sp
                  add          a1, ra, a1
                  slt          ra, a4, s4
                  addi         zero, t5, 10
                  auipc        s5, 585679
                  auipc        a0, 455139
                  auipc        s11, 22801
                  srl          gp, s5, t4
                  sll          s2, a1, s3
                  or           a6, s5, s10
                  auipc        ra, 45634
                  slli         a7, s5, 25
                  addi         a5, a4, 596
                  sltu         tp, a5, a5
                  auipc        t1, 169940
                  or           t4, t3, s6
                  andi         s1, t0, -951
                  slli         s6, s10, 28
                  or           a4, a1, s6
                  addi         s9, t4, -1292
                  or           s8, t0, s1
                  and          sp, a1, s2
                  slt          s9, a0, t2
                  srli         s6, t5, 27
                  xor          s7, t6, a7
                  andi         gp, t0, 989
                  srli         sp, tp, 5
                  xor          t6, t5, sp
                  or           t4, s9, t6
                  auipc        a6, 94345
                  nop
                  addi         sp, t6, -1335
                  ori          tp, s1, -2047
                  andi         s11, s7, -821
                  or           t2, t1, s1
                  and          t1, zero, s8
                  xori         a1, sp, 1308
                  slt          a5, tp, tp
                  addi         s4, a3, 953
                  or           t6, a4, s4
                  xor          a2, s2, a0
                  sltiu        s5, t3, 1838
                  srai         t6, t0, 4
                  addi         t1, tp, 1771
                  slti         t2, sp, 614
                  srai         a3, a1, 4
                  sltiu        t3, s3, 1024
                  and          a2, ra, s6
                  slli         s8, s3, 28
                  ori          gp, zero, -1331
                  andi         s9, t5, 1523
                  add          a6, ra, s4
                  ori          s8, a0, 84
                  nop
                  srl          t3, t3, s11
                  or           a4, a3, t0
                  slti         a1, t2, -2039
                  slt          s2, a3, t6
                  xor          a4, zero, a2
                  auipc        a3, 406495
                  ori          s7, t5, 755
                  ori          t2, a1, 1168
                  andi         a0, s4, -1254
                  xori         s7, a6, -206
                  sra          t3, s7, s6
                  lui          gp, 535190
                  sltu         t1, s7, s8
                  srai         s6, t3, 14
                  slti         a3, s6, -1412
                  sll          a4, s0, ra
                  addi         t3, s8, 1201
                  srai         t6, ra, 15
                  ori          t1, t5, 1755
                  lui          s1, 70947
                  sra          a6, s1, s2
                  sra          t6, t6, t5
                  slli         a0, a5, 3
                  nop
                  andi         s1, t1, 1040
                  sltu         s2, a0, a3
                  slti         s11, a5, -313
                  addi         t3, a4, -585
                  auipc        s8, 690117
                  ori          ra, a3, -447
                  slli         a5, s0, 5
                  sll          a3, s7, a5
                  auipc        s5, 997220
                  slli         s10, a7, 14
                  sll          t3, a4, zero
                  and          tp, a7, s6
                  sltiu        s6, a1, 579
                  srl          s1, t4, s3
                  or           a7, s11, s6
                  add          zero, s2, s10
                  or           s1, t5, t5
                  slti         s8, t4, -593
                  sub          sp, s7, s5
                  nop
                  lui          s2, 622135
                  addi         s2, a0, 1539
                  or           zero, a4, t0
                  nop
                  srli         t2, s3, 16
                  sll          a1, a0, s4
                  srl          a5, t5, t4
                  srai         t4, s5, 12
                  slt          s5, t6, s7
                  addi         zero, s3, 1828
                  and          a2, a1, s4
                  sltu         tp, t2, ra
                  and          t1, s8, a1
                  sll          a0, s4, a7
                  sll          a7, a7, s1
                  xori         tp, a4, -230
                  addi         sp, s0, 1306
                  slti         s7, t3, 0
                  slli         s4, t5, 9
                  slti         a4, a5, -2004
                  sll          t1, s5, t5
                  slli         s4, t2, 18
                  ori          tp, s6, 215
                  ori          ra, s6, -46
                  or           s6, t5, t3
                  srl          a2, gp, s2
                  sub          s11, s2, s10
                  addi         s4, s11, -1128
                  sltiu        a5, s7, 653
                  sra          ra, s9, s4
                  auipc        ra, 407777
                  sltu         s5, a5, sp
                  xori         ra, t1, 354
                  and          a6, a1, t5
                  xor          s6, s0, s10
                  andi         sp, t2, -167
                  srai         t4, s3, 22
                  srl          a3, s9, tp
                  andi         gp, t5, -728
                  srai         s2, zero, 2
                  and          a1, s3, t1
                  addi         gp, s0, 1697
                  slli         a7, s3, 26
                  xori         t1, t0, -403
                  sltu         zero, t2, a7
                  lui          s6, 537315
                  ori          ra, a2, 1574
                  lui          s2, 251480
                  srl          s6, a2, t3
                  and          t3, tp, tp
                  andi         t0, sp, 538
                  ori          ra, tp, -525
                  slli         a6, s8, 3
                  srai         tp, t0, 26
                  srai         s11, sp, 31
                  lui          s4, 376165
                  slti         ra, s10, -162
                  andi         a4, t6, 253
                  addi         a2, t4, -1543
                  add          a2, tp, a1
                  lui          gp, 568328
                  and          a3, s2, s1
                  srl          s11, s4, t2
                  sub          zero, ra, a5
                  slli         t6, t4, 18
                  srli         s5, a3, 14
                  lui          a7, 852880
                  slti         s1, t3, 1714
                  srai         a3, a0, 22
                  slti         s7, a3, -1311
                  sll          gp, a7, t3
                  sra          s5, zero, t4
                  and          s2, tp, s1
                  and          a7, s8, s6
                  sll          a1, s8, a0
                  srai         zero, t5, 8
                  add          a6, s1, t3
                  srai         zero, s8, 26
                  srai         a6, t6, 28
                  add          s11, sp, s1
                  slt          t0, gp, sp
                  sltiu        ra, t6, -1709
                  sra          a5, s3, s7
                  sll          sp, s7, s10
                  add          s10, s7, s11
                  add          t4, a5, t5
                  srai         s9, a3, 24
                  slt          s6, a6, s0
                  slli         zero, s10, 23
                  add          t0, s5, s6
                  addi         s9, a0, -1613
                  sltiu        ra, t4, -464
                  andi         tp, s0, -1274
                  sub          t2, s7, s5
                  slli         a0, t0, 24
                  lui          a4, 541360
                  addi         s6, a7, 458
                  sra          t1, s9, t6
                  sltu         s9, a6, zero
                  nop
                  xori         t3, s0, -371
                  sll          tp, sp, sp
                  add          a1, a2, a1
                  slti         a7, s8, -773
                  slt          s7, a6, s9
                  sltu         s2, s5, a1
                  or           a4, gp, a7
                  srl          s4, sp, t1
                  slti         ra, a0, -1591
                  addi         s1, s4, 617
                  ori          t0, zero, 230
                  auipc        s10, 783440
                  sub          s7, a6, s1
                  sra          s7, a4, s11
                  slt          a0, s1, zero
                  xor          s11, sp, t6
                  andi         s9, a5, 1810
                  srl          t1, s1, a6
                  and          sp, t4, s9
                  sltiu        t6, ra, 1643
                  auipc        s11, 944846
                  sltu         t2, s8, s0
                  add          t0, a4, t4
                  sra          t3, a7, s3
                  srli         s10, t3, 22
                  lui          t2, 994838
                  addi         a2, a3, -1736
                  and          t4, s9, t3
                  ori          gp, s11, -60
                  sltu         s7, s4, t2
                  and          s6, a7, t5
                  xor          a6, t3, s9
                  nop
                  and          a4, t0, sp
                  srl          a0, a2, s4
                  xori         s10, s0, 1484
                  sra          ra, a2, a3
                  slli         a7, s7, 28
                  slli         s8, s7, 27
                  xori         s6, s10, 1956
                  and          s8, s1, a6
                  auipc        t3, 430958
                  sll          s7, sp, a1
                  sll          t3, a6, a7
                  xori         sp, t0, -1672
                  sra          a7, sp, s2
                  srli         a3, s8, 8
                  sub          a6, a5, a4
                  andi         zero, a5, -1985
                  sra          t4, t2, t2
                  sub          s1, s1, sp
                  sltiu        s11, s0, -1958
                  add          t1, s11, s11
                  xori         s9, t4, 570
                  xori         s2, sp, -1987
                  sll          a1, s8, s0
                  andi         t2, a2, -1848
                  andi         t0, t4, 934
                  lui          t3, 982839
                  slt          tp, s8, s4
                  slt          s6, s9, t5
                  sra          t1, a2, t4
                  ori          t6, t5, 1247
                  or           a4, s11, s3
                  sltu         s7, a4, a7
                  lui          t2, 873051
                  andi         a6, t4, -1131
                  nop
                  srai         t4, s8, 15
                  slli         a5, s3, 13
                  addi         s6, a1, -1861
                  sltiu        t3, zero, -1378
                  srai         t1, a7, 14
                  slt          a0, a3, a1
                  slli         a5, s0, 4
                  ori          zero, s8, 1717
                  srl          a2, s4, a3
                  srl          s5, t3, gp
                  slli         a6, gp, 28
                  xor          t1, s11, a3
                  slti         t1, s1, -760
                  andi         s9, s0, -1154
                  sll          s9, a1, s7
                  xor          ra, a4, a4
                  srai         t4, s5, 3
                  srl          a7, s11, a6
                  add          a0, ra, s6
                  srl          a2, s6, t4
                  or           a0, gp, s10
                  sra          a0, t3, s11
                  xori         ra, s6, 1425
                  xor          t2, a4, t4
                  srl          gp, t2, a5
                  srli         a5, s2, 19
                  addi         a6, a1, 1721
                  sltiu        s10, t2, 571
                  sra          a2, s1, ra
                  or           a2, s6, t1
                  sltiu        a5, a4, 711
                  sltu         ra, s4, t4
                  auipc        s4, 685734
                  lui          sp, 885665
                  sltiu        zero, a5, -1983
                  add          s8, s7, sp
                  srli         a6, s11, 10
                  sltu         t6, s3, a2
                  or           a4, zero, a2
                  addi         s9, t2, -1940
                  or           t4, a3, a7
                  sll          s7, a6, zero
                  ori          gp, a4, 445
                  lui          a1, 757133
                  sub          s5, a7, a0
                  srai         zero, zero, 30
                  srl          ra, s0, s2
                  or           s1, s5, s2
                  andi         a0, a5, -1833
                  sltiu        s4, a2, 2035
                  slt          a1, ra, gp
                  auipc        s4, 796678
                  ori          tp, tp, 637
                  sra          s6, t6, a7
                  slt          t4, zero, t0
                  sltu         a0, ra, t2
                  ori          s1, t1, 1471
                  slti         s2, s7, 1529
                  xori         s9, ra, -1026
                  sll          s5, gp, a3
                  xori         a3, s3, -412
                  add          gp, s4, s0
                  slli         s9, a3, 1
                  lui          a3, 938825
                  ori          a3, t5, -447
                  xori         a1, s2, -493
                  slli         s7, s2, 5
                  sll          s8, t0, sp
                  or           s6, s4, ra
                  xor          a5, tp, t6
                  addi         zero, t6, 262
                  ori          sp, t3, 669
                  and          ra, sp, t2
                  or           a0, a2, s9
                  andi         s10, s5, -366
                  sub          t2, s10, t5
                  andi         t3, a5, -256
                  slli         a1, a4, 13
                  nop
                  addi         gp, zero, -1704
                  andi         a7, s2, -675
                  sll          s10, s8, a0
                  or           a6, s11, sp
                  srl          a2, t1, s8
                  slti         t2, s11, 613
                  and          s10, a7, a1
                  addi         a0, a6, -750
                  slt          gp, s11, s8
                  lui          s9, 47078
                  sub          a4, s10, s5
                  srli         zero, t3, 13
                  auipc        t4, 868311
                  slti         s7, a4, 1698
                  sll          gp, zero, t0
                  lui          s5, 275118
                  srai         s5, s4, 20
                  xor          tp, s3, sp
                  xor          a7, s3, s1
                  ori          s2, t0, -120
                  sra          a4, s5, t0
                  lui          a6, 393955
                  slli         s1, t0, 30
                  nop
                  xori         s11, a3, -340
                  sltu         tp, s6, t1
                  add          a1, gp, gp
                  ori          t3, s3, 502
                  slti         zero, s8, 1676
                  nop
                  xor          a1, s0, t3
                  lui          t6, 429757
                  slti         t4, a1, -379
                  add          a7, t3, gp
                  slt          t2, a7, t5
                  nop
                  addi         s7, t1, 1855
                  xor          t6, a5, a3
                  auipc        s9, 262520
                  srl          t1, gp, s0
                  xor          a2, s6, gp
                  auipc        s5, 980171
                  slt          s6, zero, s3
                  sra          s10, t5, t0
                  addi         t3, zero, -908
                  slt          t0, t3, t6
                  and          tp, a5, t3
                  slti         a1, a5, -510
                  and          zero, s3, a7
                  srai         s8, t5, 7
                  xor          a6, s4, a1
                  nop
                  sub          s7, a7, t6
                  add          t3, s6, zero
                  ori          t4, t5, 520
                  srli         s10, s0, 24
                  xori         a5, s3, 1967
                  slli         t4, s1, 23
                  slli         a4, s8, 16
                  sltu         s5, s11, s5
                  srli         tp, s11, 17
                  ori          a7, s11, 1790
                  srli         s10, s8, 30
                  xori         gp, gp, 290
                  srai         s10, s2, 21
                  srai         ra, a1, 8
                  srai         a6, s5, 4
                  xori         s6, s7, -1249
                  slt          t0, a1, tp
                  srli         t3, a3, 22
                  slt          a2, s5, t2
                  xor          t2, sp, t1
                  srli         s10, s1, 31
                  ori          a2, t1, -326
                  or           a2, s1, s10
                  sub          tp, sp, t1
                  lui          sp, 73308
                  and          s5, s0, s5
                  slli         a0, t6, 14
                  sll          s8, a0, a4
                  sra          a1, s4, s5
                  or           s1, s11, s5
                  and          tp, zero, sp
                  or           a7, a4, t5
                  or           a2, s0, t3
                  andi         s10, t3, 1430
                  xori         t6, a6, -932
                  sll          s7, s4, t1
                  slli         a6, a6, 1
                  srai         s6, t2, 20
                  sltiu        t3, s8, 715
                  slt          s1, s4, s4
                  sltiu        a5, s5, 1177
                  sll          zero, t6, s6
                  auipc        t6, 382817
                  nop
                  ori          s11, t3, -36
                  srl          sp, s0, t5
                  sltu         s8, s2, a0
                  xor          s4, a5, s7
                  sll          s2, a6, sp
                  nop
                  srl          t3, t5, t5
                  ori          s2, s5, 1839
                  xor          s6, a5, a2
                  sub          a0, s5, t0
                  xori         t2, s2, -65
                  srl          a0, a3, s10
                  lui          a0, 52746
                  sltiu        zero, t3, -1992
                  auipc        sp, 160850
                  addi         sp, s4, 2003
                  sll          a1, s7, ra
                  andi         s6, a0, 965
                  sll          a6, t6, s1
                  sltiu        t0, tp, -194
                  ori          gp, s6, -1698
                  slli         s2, t1, 16
                  or           s4, s7, sp
                  srli         s6, t5, 30
                  srai         a5, a1, 5
                  srli         zero, a7, 3
                  nop
                  ori          a6, t3, 1160
                  slti         a1, a6, -415
                  lui          s10, 1047435
                  add          s6, a7, s7
                  ori          gp, a3, -1356
                  xori         s5, s1, 1728
                  srl          a7, a3, t4
                  ori          s7, sp, -1517
                  sltiu        s6, a6, -1273
                  and          s2, s7, a5
                  and          t0, zero, s11
                  addi         s9, a3, -1766
                  nop
                  slt          tp, a3, a0
                  auipc        s1, 133377
                  lui          t4, 480190
                  add          ra, a0, s1
                  sltu         s2, a5, s6
                  xor          sp, sp, a1
                  slti         s5, a5, -1848
                  sltu         zero, s5, a1
                  xori         t2, t1, -538
                  sll          t4, tp, sp
                  sub          s4, t1, s3
                  xori         a5, a0, -1492
                  sra          gp, t2, s5
                  slt          a4, s10, t0
                  and          ra, s10, a6
                  and          s6, a7, s2
                  slti         t4, a1, -645
                  ori          s4, s9, 1959
                  addi         s4, t3, 1114
                  sra          t2, a3, s8
                  auipc        t4, 983034
                  sub          a7, t0, s0
                  lui          a5, 596521
                  ori          t6, t2, 1974
                  or           s11, s0, sp
                  srl          a1, s9, a1
                  srai         tp, zero, 11
                  srli         a6, a3, 4
                  sltiu        a7, s3, -1353
                  srai         tp, a4, 5
                  srli         s10, s2, 8
                  nop
                  sll          s11, s2, s0
                  lui          s7, 678652
                  slti         t3, t3, -184
                  ori          t2, s5, 614
                  sub          s7, a4, a1
                  auipc        ra, 55736
                  sltu         t4, s0, s4
                  add          a1, s11, t5
                  auipc        t6, 344840
                  lui          s1, 751680
                  slti         s4, t3, 543
                  slti         s4, a4, 141
                  nop
                  nop
                  srl          a3, s9, a7
                  srli         t4, a6, 23
                  sll          ra, a0, t3
                  sltu         sp, a5, t4
                  andi         a6, t4, -736
                  addi         t4, s11, 1294
                  lui          sp, 399450
                  or           s1, t5, a3
                  addi         s4, a4, -1316
                  srai         a2, a5, 6
                  auipc        s6, 782564
                  li           a5, 0x6d0eb52 #start riscv_int_numeric_corner_stream_14
                  li           a0, 0xffffffff
                  li           t1, 0x0
                  li           s11, 0x80000000
                  li           t0, 0x80000000
                  li           ra, 0x80000000
                  li           s10, 0x80000000
                  li           s9, 0x80000000
                  li           a6, 0x0
                  li           a4, 0xffffffff
                  nop
                  add          t1, s11, t1
                  add          t0, t0, a6
                  sub          ra, a0, s9
                  add          s11, s11, a6
                  addi         a0, s11, 508
                  sub          s10, t1, a6
                  sub          t0, a0, a6
                  sub          ra, a6, t0
                  addi         a6, a6, -1655
                  add          a6, ra, ra
                  sub          a6, a5, s9
                  add          s10, a5, s10
                  addi         a0, t1, 296
                  add          s9, s11, a5
                  add          s11, a4, t1
                  nop
                  add          a0, s11, a5
                  addi         a5, a4, 859
                  lui          a5, 673491
                  addi         a0, s10, -1956
                  add          s10, ra, a4
                  auipc        s11, 375655
                  auipc        t0, 893940
                  add          ra, a6, t0
                  sub          a6, s9, s11 #end riscv_int_numeric_corner_stream_14
                  sltu         ra, t0, a7
                  and          s8, s4, s0
                  and          ra, a2, s1
                  srli         t1, a2, 10
                  slt          t2, sp, t3
                  slti         s2, s7, -838
                  xor          s8, gp, s8
                  srl          s9, a5, s9
                  sll          t4, t3, a5
                  addi         s8, a2, 856
                  sltu         t3, s4, a0
                  nop
                  nop
                  add          s5, a6, a2
                  slti         s8, s6, -1859
                  and          s4, t0, gp
                  auipc        s1, 968762
                  andi         a3, zero, 918
                  sltu         t2, t4, t3
                  srli         gp, a1, 11
                  auipc        a0, 513933
                  srl          t4, t6, a6
                  slli         zero, t6, 7
                  srl          s8, s9, t2
                  andi         a6, s7, 266
                  sra          s8, a6, s9
                  sra          s6, a5, a1
                  nop
                  sra          t2, a1, a5
                  addi         s4, s7, 1652
                  slti         t0, sp, 1603
                  xor          t1, a7, a6
                  sll          s10, a1, a1
                  ori          s8, s2, -623
                  sll          s11, gp, s2
                  slt          s10, t0, s8
                  sltu         a3, s3, s3
                  xor          t1, s7, s4
                  auipc        s1, 338375
                  ori          a1, t4, 449
                  sra          t3, a3, s5
                  xor          s7, s1, a3
                  xor          ra, a4, t6
                  sub          t3, s5, s4
                  srli         a2, a2, 28
                  srai         s2, s10, 1
                  srai         s6, s9, 15
                  srai         gp, t3, 16
                  xor          s2, s7, ra
                  ori          s11, t6, 2000
                  xor          zero, s0, t4
                  auipc        s11, 623404
                  srai         a7, tp, 9
                  add          t2, tp, s6
                  xor          s8, a6, t0
                  srli         s9, s11, 28
                  srli         tp, a6, 7
                  sltu         a6, gp, a4
                  sub          a3, a5, s3
                  nop
                  srl          s4, tp, a6
                  ori          ra, a0, 774
                  andi         a6, t6, 2009
                  sra          a2, s2, s3
                  sll          s8, t0, sp
                  ori          s1, sp, -188
                  and          tp, s9, t0
                  srli         a2, ra, 19
                  and          s10, zero, a0
                  sltu         a1, t2, s0
                  lui          s7, 334089
                  sll          t6, ra, a1
                  lui          s2, 260405
                  and          a4, a0, s2
                  ori          a6, s8, 443
                  slti         s9, a1, -610
                  srai         s6, t5, 20
                  sltiu        zero, t2, 403
                  and          ra, a1, s5
                  sltiu        s9, a2, -101
                  andi         t6, a3, -976
                  sra          zero, gp, t3
                  auipc        tp, 948646
                  xori         s5, s7, 1910
                  add          a5, s8, a5
                  srli         t3, t6, 27
                  slt          zero, s5, gp
                  lui          a2, 915874
                  andi         s8, t1, -1643
                  srai         tp, s7, 10
                  xor          t6, t5, a0
                  xor          s7, ra, t2
                  sltiu        s11, s5, 211
                  andi         t6, s10, -435
                  add          t6, s10, gp
                  sub          t2, s11, a5
                  ori          t1, t0, -655
                  srl          gp, a7, s6
                  nop
                  add          sp, a6, ra
                  srli         s10, sp, 29
                  srli         s5, a5, 26
                  sltu         tp, s5, s10
                  srli         s7, a4, 17
                  srai         s6, s6, 7
                  slli         t2, s8, 26
                  sltiu        s5, s4, 1223
                  sll          s2, s7, s9
                  nop
                  addi         s2, s4, -1921
                  andi         t0, gp, 1020
                  nop
                  li           s8, 0x3f26d47f #start riscv_int_numeric_corner_stream_0
                  li           t0, 0x0
                  li           a1, 0x20837efe
                  li           a2, 0x0
                  li           a4, 0x0
                  li           s11, 0xffffffff
                  li           a3, 0x7f7bca3a
                  li           t2, 0x0
                  li           a6, 0xffffffff
                  li           s2, 0x80000000
                  auipc        s11, 735859
                  sub          a6, a2, s8
                  nop
                  add          a2, a1, t0
                  add          a4, s2, a4
                  sub          s8, s11, s8
                  auipc        s8, 957687
                  addi         s11, a3, -1287
                  add          a1, a2, a2
                  sub          a2, s8, a3
                  add          s8, t2, a4
                  addi         a6, a1, -219
                  addi         a6, a1, -367
                  lui          a3, 74355
                  add          s8, s8, a4
                  nop
                  add          a2, a2, t0
                  auipc        a3, 976499
                  addi         s8, s8, -1102
                  auipc        a4, 313348 #end riscv_int_numeric_corner_stream_0
                  add          t0, gp, t1
                  nop
                  sra          a5, s1, a5
                  xori         s5, a5, 887
                  auipc        t2, 105510
                  slti         s2, a0, 1426
                  sra          zero, s10, s11
                  srli         a2, s4, 25
                  sub          t1, a7, s3
                  andi         a2, a3, -948
                  sub          t6, a5, t6
                  sra          a7, a1, s3
                  lui          a1, 1048529
                  sltiu        sp, s1, -1667
                  srai         t0, sp, 22
                  add          s2, t0, a7
                  xori         t2, s0, -1218
                  sltiu        s11, s6, -733
                  nop
                  ori          sp, s8, -880
                  add          gp, s0, t1
                  andi         s4, a4, -1197
                  or           a0, zero, t3
                  or           s4, s10, s1
                  add          s8, t5, t3
                  slt          t3, zero, t5
                  andi         a0, t6, -1495
                  srai         s2, t2, 6
                  srai         tp, s0, 2
                  slti         s4, s1, 1201
                  addi         s4, s11, -1383
                  andi         a0, t4, 1648
                  slti         zero, t3, -1238
                  addi         s4, ra, 1509
                  slli         s2, a2, 4
                  lui          gp, 992993
                  nop
                  slti         t2, t3, 104
                  lui          tp, 992900
                  xor          s9, t1, s2
                  xori         a7, s11, 731
                  slt          a6, t4, s10
                  sltiu        gp, a3, -1331
                  addi         s9, gp, 1417
                  addi         s7, t5, 836
                  srli         a4, t5, 0
                  srli         tp, t2, 18
                  add          s7, a6, gp
                  or           t4, s8, s11
                  lui          s10, 166192
                  nop
                  and          zero, t2, t2
                  ori          s5, t4, -1628
                  sll          s7, t6, a7
                  srl          s5, tp, s1
                  lui          zero, 65364
                  xor          t0, t6, s7
                  andi         a7, a4, -1151
                  sra          a6, s4, zero
                  xor          a2, a7, s0
                  addi         sp, s4, -56
                  slti         t4, s10, -1537
                  nop
                  or           a3, s1, a1
                  srai         t6, a5, 25
                  sub          t3, t6, a7
                  sub          a5, a5, t0
                  srl          s9, t4, t3
                  srl          t3, gp, zero
                  auipc        a6, 284360
                  lui          zero, 1008528
                  addi         t1, t1, 1096
                  nop
                  nop
                  nop
                  or           t6, a1, s9
                  sra          tp, s0, s7
                  srli         tp, a0, 27
                  nop
                  xor          a2, s4, tp
                  or           t4, a6, a0
                  auipc        gp, 213851
                  srai         s5, s1, 25
                  auipc        s1, 690537
                  ori          sp, a7, 581
                  add          s2, a3, ra
                  sltu         a5, a3, t5
                  sltiu        t0, s5, -1866
                  slti         a4, t6, -563
                  addi         s1, s6, -1335
                  or           tp, s5, t5
                  nop
                  and          a5, s4, a6
                  auipc        ra, 673128
                  slli         s7, s7, 0
                  sltiu        t2, gp, 1565
                  srai         ra, s2, 10
                  and          s8, a3, s1
                  sra          t3, gp, t5
                  srl          s9, s11, a7
                  srl          sp, s2, s7
                  xor          a0, a7, t3
                  xor          a1, s10, t5
                  xori         s9, s3, -161
                  sra          t0, t5, s0
                  sub          a1, s8, gp
                  add          s6, s10, s2
                  srl          gp, sp, s9
                  or           ra, t5, s1
                  sub          t3, t0, zero
                  and          ra, ra, s5
                  ori          s7, a0, -1933
                  auipc        a4, 74052
                  add          s7, s0, t0
                  add          a3, t1, s10
                  auipc        t3, 177303
                  xori         t6, t3, -1040
                  sra          s1, t1, s11
                  add          gp, t3, tp
                  sub          a6, s10, a3
                  slt          s11, s1, a1
                  sll          a6, a1, a6
                  slt          tp, tp, a6
                  and          s9, t0, a7
                  srl          a4, a6, s10
                  xori         s4, t5, 702
                  ori          t4, a6, 940
                  auipc        s6, 1015282
                  addi         a3, s4, -286
                  sltu         t3, s3, a2
                  add          s5, s6, t0
                  srai         tp, s8, 14
                  xori         s11, gp, 1588
                  sll          s4, s8, a6
                  sltu         s4, s10, a5
                  sltu         ra, a7, s4
                  sra          sp, a7, s2
                  slti         a7, s7, 935
                  and          sp, s3, t5
                  slti         a0, a7, -1620
                  sra          a0, a4, t1
                  slt          a3, s1, t2
                  addi         tp, a4, -1266
                  andi         s5, s0, 914
                  ori          s10, a2, 1193
                  sub          a5, s6, a5
                  and          s1, t3, a2
                  or           a5, t0, a6
                  ori          s2, t4, -522
                  addi         s9, t4, -631
                  srl          a3, zero, a7
                  xor          zero, s11, s10
                  add          tp, s9, t4
                  sltiu        a4, a6, -852
                  sll          a2, a3, s10
                  and          s4, a4, a3
                  sltiu        s8, a0, -777
                  srli         s5, s2, 4
                  or           ra, a1, s7
                  slt          t2, a2, t1
                  auipc        zero, 100939
                  ori          s10, s2, 1472
                  sltiu        a1, a7, -72
                  xori         s8, s10, -1396
                  sub          a1, a2, t3
                  addi         a2, a0, -8
                  nop
                  xor          t2, ra, gp
                  xor          t0, a1, s8
                  lui          s7, 742749
                  andi         a4, t4, 532
                  sltu         a4, s4, s4
                  addi         t4, a6, 1795
                  add          a5, a7, a2
                  slt          s8, t4, a0
                  slli         s4, t1, 4
                  sltiu        zero, a4, -161
                  slli         a0, a4, 3
                  sub          t6, t2, s2
                  srli         s8, a5, 18
                  sra          s10, s8, t2
                  ori          t1, t0, -1956
                  xor          s4, s2, t1
                  lui          t3, 312727
                  sub          s7, tp, t3
                  sltu         s2, t4, s0
                  nop
                  sra          s7, a6, s6
                  and          a4, a3, s3
                  srl          s8, s7, a3
                  and          a5, t4, s9
                  addi         s9, tp, 338
                  sub          s11, t0, s1
                  add          a1, zero, s6
                  or           t4, s3, t4
                  or           s6, s11, s9
                  srli         s7, s5, 8
                  srai         a1, a0, 18
                  or           a2, a4, s9
                  xori         t2, a6, 1318
                  andi         sp, a5, 1796
                  or           sp, s8, s1
                  srl          t3, s7, s10
                  srl          a4, a3, s6
                  xor          s10, a3, a0
                  auipc        sp, 141908
                  sltiu        a7, t1, 332
                  sll          a2, a7, a4
                  xor          t6, s0, a4
                  auipc        zero, 938969
                  auipc        a2, 283324
                  slli         a1, t5, 7
                  srl          s11, tp, s10
                  lui          t2, 58933
                  add          s1, gp, a4
                  srl          ra, s9, a1
                  nop
                  and          s10, t6, s3
                  addi         a4, t5, 101
                  srl          s2, s3, s10
                  srl          t0, gp, a6
                  xori         gp, s6, 1911
                  add          t0, t6, s2
                  xor          a7, zero, s4
                  srai         s11, s9, 23
                  srl          a4, t3, a4
                  slli         s4, tp, 28
                  sltiu        tp, a2, 1135
                  xori         a2, s3, -562
                  srli         zero, s11, 23
                  add          ra, s0, t3
                  addi         s4, s9, 499
                  sltu         s10, s0, a1
                  or           a0, s8, s7
                  add          s5, a0, zero
                  add          s6, s5, t2
                  slli         a2, s4, 12
                  ori          t1, s8, -1105
                  nop
                  srai         s6, s9, 4
                  slti         s4, t3, -606
                  sll          zero, s8, t1
                  addi         s4, t3, 1657
                  xori         s1, s8, 1128
                  srl          s1, s2, s5
                  ori          ra, t0, 800
                  sltiu        a4, a3, 817
                  xori         s9, sp, 1256
                  xori         t0, t1, 1931
                  sub          a7, sp, a2
                  slti         s4, a5, 1042
                  and          t4, t4, t6
                  sltiu        s10, ra, 567
                  addi         a2, a6, -926
                  and          s6, a5, ra
                  add          gp, t0, zero
                  addi         a7, t2, -1756
                  sub          a0, sp, t2
                  sltiu        t6, a1, -64
                  srai         a5, s3, 2
                  nop
                  auipc        t2, 728301
                  nop
                  addi         t2, s3, -1994
                  addi         t4, a3, 709
                  sll          s8, s9, a3
                  srl          t1, gp, tp
                  xor          s1, s5, a7
                  slt          a0, ra, a3
                  srai         s8, s1, 5
                  addi         a0, t4, -577
                  andi         gp, a6, 1482
                  and          t6, t3, s8
                  slt          s11, s1, s11
                  sra          ra, a1, s6
                  sltu         t4, s9, s6
                  nop
                  auipc        s7, 654762
                  sltiu        s11, s8, -1522
                  andi         a3, tp, -1737
                  slti         s8, sp, -1781
                  addi         s11, s10, 2032
                  sltiu        s10, a1, 1916
                  andi         s8, zero, 1134
                  srl          tp, s5, s0
                  sltiu        s11, s11, -893
                  addi         s8, s7, -429
                  auipc        a2, 239802
                  sra          a7, s7, ra
                  or           s11, a4, s10
                  sltu         zero, s10, a4
                  lui          a3, 214871
                  auipc        s10, 29316
                  slli         a4, t3, 17
                  andi         s8, s2, -2
                  sub          a1, s9, a3
                  srli         a7, t0, 1
                  sltiu        s4, t5, 943
                  xori         t2, s2, -655
                  ori          s11, s10, 531
                  sltu         t4, s2, a7
                  and          a3, s1, a2
                  srl          s5, t2, s0
                  sra          s5, sp, t2
                  xori         a4, t3, 5
                  sub          s9, t2, s8
                  srli         t1, s7, 22
                  slli         s1, s7, 8
                  add          a5, gp, s5
                  lui          t6, 34819
                  nop
                  andi         t6, a3, -2010
                  and          s1, s10, t3
                  srai         a3, a1, 30
                  xor          a1, gp, a4
                  srl          sp, s5, s10
                  or           s9, s2, a7
                  srl          s10, s5, s10
                  xori         a1, s11, 304
                  xori         s6, t4, -1003
                  xor          s4, a0, sp
                  nop
                  slt          a4, a7, s10
                  slli         t0, a3, 10
                  sll          s7, s4, a0
                  slli         s9, s1, 25
                  or           s10, s0, s0
                  sra          zero, s0, gp
                  or           a6, s2, s7
                  sltiu        t6, ra, -189
                  srai         gp, a6, 10
                  slt          t0, s8, s4
                  srai         a5, a5, 25
                  xori         a0, s9, 1343
                  sub          sp, a0, s7
                  ori          s9, s3, -694
                  ori          zero, t6, 1347
                  sltu         t6, sp, a5
                  xori         a0, a1, 1143
                  andi         s6, t0, 1539
                  addi         a0, zero, 1638
                  sll          t4, t4, ra
                  or           t1, t3, t0
                  slti         s8, a7, 1968
                  srl          t2, s1, a4
                  xori         t4, s11, 606
                  addi         t2, t4, 2018
                  andi         s10, s6, 77
                  sub          tp, t0, a1
                  xor          s4, t0, a5
                  slt          t2, a3, s6
                  add          gp, s2, zero
                  slt          a4, a7, a4
                  sra          s7, s4, t1
                  slli         s9, a1, 20
                  add          a1, zero, s7
                  and          a3, tp, s7
                  addi         a1, s2, -846
                  slt          t2, a1, tp
                  slt          s1, s4, a6
                  and          ra, s3, a2
                  and          a3, s1, s3
                  sll          t2, ra, s0
                  sltu         s7, a3, ra
                  sltiu        t3, s6, -217
                  and          s4, s7, s6
                  sub          a5, s1, s11
                  and          a6, s0, gp
                  or           s2, t1, s10
                  sltiu        a1, a0, 930
                  sll          a5, t1, s5
                  sll          t2, gp, a6
                  slti         s11, s3, 1549
                  srai         s6, a4, 22
                  slt          s4, a2, t3
                  slti         s2, a5, -1138
                  lui          t1, 118346
                  addi         s1, t4, 824
                  lui          t1, 148287
                  srl          s6, s5, t2
                  sltu         s8, tp, s9
                  or           s1, t1, a2
                  srl          s2, a1, s5
                  xor          t4, a7, sp
                  srl          a3, a5, a4
                  ori          ra, a1, -1716
                  slt          s4, t2, s1
                  nop
                  addi         t0, s1, 302
                  slli         tp, t0, 26
                  and          s5, s2, t0
                  xor          tp, t1, a0
                  and          a0, t6, s6
                  slt          a4, t4, s6
                  or           gp, tp, a5
                  sll          gp, s10, zero
                  slti         a5, s5, -253
                  sub          s10, s0, t2
                  and          t4, s0, s11
                  xori         sp, s10, 1418
                  sub          s11, a5, t0
                  ori          t0, s1, -226
                  sra          ra, sp, s3
                  xori         gp, a2, 1114
                  srli         sp, sp, 27
                  or           s7, s5, t6
                  srli         gp, sp, 12
                  sll          a5, t2, s5
                  andi         s11, t5, 1601
                  sra          t3, sp, a6
                  sll          t1, a3, a6
                  xor          t3, s10, t1
                  lui          s9, 1042498
                  xori         t1, ra, 805
                  nop
                  andi         t2, s6, 1664
                  lui          t6, 926758
                  xor          sp, a7, s1
                  sra          t2, a6, s1
                  or           ra, a7, a0
                  sll          gp, a1, s7
                  sltiu        a2, zero, 44
                  sltu         a7, t0, a2
                  srl          t0, s2, a0
                  ori          tp, s2, -1427
                  sub          t2, a4, t4
                  sub          t2, a7, t6
                  sltu         zero, s3, zero
                  addi         s5, s8, 1874
                  srai         t6, t5, 14
                  srl          s5, t4, t1
                  srl          a5, s6, a2
                  sltiu        s9, s7, -1299
                  xor          s9, ra, s9
                  add          t0, ra, a0
                  xori         s7, gp, -1736
                  nop
                  andi         t1, t6, -1747
                  sll          ra, t0, t5
                  andi         t1, s10, -677
                  xori         s4, t3, -775
                  addi         tp, ra, 269
                  srli         s4, a6, 12
                  or           s5, s3, a7
                  srai         t4, a7, 21
                  add          s2, ra, t3
                  sll          s9, ra, s3
                  slti         a4, a2, -1883
                  xor          s2, s3, t6
                  srli         t6, a7, 23
                  or           ra, s10, s5
                  slti         t1, s11, -521
                  add          a4, ra, t3
                  add          t3, s0, a6
                  and          sp, gp, s7
                  srai         a0, s9, 20
                  andi         s8, a2, -1990
                  andi         a2, zero, -1663
                  nop
                  or           t1, s3, t0
                  or           a2, s2, s1
                  lui          t2, 105036
                  auipc        s7, 649801
                  sltiu        sp, sp, -524
                  addi         t4, a5, 498
                  srai         s2, s3, 2
                  nop
                  srai         t3, s10, 21
                  sll          s2, s3, tp
                  srli         a3, a6, 16
                  sra          s9, s0, s2
                  nop
                  sra          tp, s11, s11
                  sltiu        t1, a6, -1070
                  add          t1, t6, s4
                  ori          s6, s7, 868
                  sll          a4, a1, s3
                  xor          t3, a1, a6
                  ori          t1, a1, -496
                  xor          s5, s10, a0
                  auipc        a2, 217563
                  add          t0, a4, s7
                  lui          s1, 305993
                  sltiu        gp, t1, -113
                  nop
                  srl          t2, s7, s7
                  and          s10, s1, s9
                  and          a2, a3, a7
                  srl          t1, tp, s10
                  xor          t4, tp, t6
                  auipc        a5, 191343
                  auipc        s6, 641189
                  andi         t4, a5, -1082
                  slti         s4, s1, -1977
                  sltu         a5, t3, s1
                  slt          ra, sp, s6
                  auipc        t6, 398876
                  sll          t0, ra, s7
                  xori         s10, s2, -977
                  add          s7, s4, ra
                  add          a3, t6, a2
                  andi         a7, s6, 1892
                  sltiu        gp, s0, 907
                  ori          t4, s0, -293
                  andi         t0, s2, 667
                  lui          a2, 22852
                  ori          zero, s2, -1361
                  and          a7, a2, s8
                  xor          s4, a1, a2
                  sub          a6, s11, sp
                  sltiu        s11, t0, 1547
                  andi         s8, a4, 1619
                  add          a3, s10, s4
                  lui          a3, 534558
                  and          a2, s7, a0
                  add          a3, s8, a7
                  srai         s4, s9, 20
                  srli         s9, s1, 7
                  srli         t1, a5, 9
                  slt          a6, t1, t2
                  xori         t1, a7, -554
                  slt          s1, a2, t4
                  xor          ra, tp, ra
                  auipc        a5, 753966
                  nop
                  xori         s2, t5, -539
                  srai         s6, s4, 3
                  slti         tp, a4, -853
                  and          a3, sp, t6
                  srl          t3, t3, a2
                  sltiu        ra, s2, 412
                  or           a4, ra, ra
                  srli         a1, s0, 9
                  lui          gp, 903131
                  slti         s10, t4, 153
                  xor          sp, t2, a0
                  addi         a5, gp, -1250
                  slt          tp, a4, s6
                  sub          gp, zero, s7
                  lui          s11, 585337
                  sra          s10, t0, t2
                  srai         s1, gp, 11
                  srl          s9, s3, a3
                  slti         t4, s0, 782
                  xor          s10, zero, t1
                  srli         s2, zero, 16
                  slti         s11, t0, 93
                  addi         a5, s2, 1916
                  xori         s9, a5, 1514
                  slt          a0, sp, tp
                  sll          a3, gp, s11
                  sub          ra, t0, t0
                  srai         s10, s0, 20
                  addi         a6, a0, 974
                  xor          a4, s6, s6
                  add          s5, s3, t6
                  sra          s8, s1, t2
                  add          a6, gp, a2
                  nop
                  sll          t2, s1, sp
                  sltiu        a1, s7, 506
                  sltu         s11, a4, s1
                  andi         s1, s8, 935
                  sltiu        s2, a2, -794
                  and          t4, a5, t1
                  add          tp, s11, s7
                  or           zero, a3, tp
                  srli         t3, gp, 26
                  sltu         s8, s0, s10
                  xor          s7, t6, t3
                  srli         s7, s2, 1
                  auipc        a2, 176409
                  slt          a5, a0, s5
                  sra          a1, gp, s3
                  sra          a1, a7, a0
                  nop
                  addi         tp, a6, -1591
                  or           a5, s10, a7
                  sll          gp, a5, t1
                  and          t0, t2, s4
                  sltiu        t0, t4, -638
                  addi         a2, a2, 744
                  andi         t1, s10, -200
                  andi         t4, gp, 566
                  srai         ra, t6, 7
                  sra          sp, s10, a5
                  srai         a4, s11, 30
                  xor          s10, ra, a2
                  slli         a4, a2, 26
                  srli         a5, ra, 11
                  nop
                  addi         s1, t5, -823
                  sll          zero, s9, zero
                  srl          t0, a5, t2
                  add          zero, s7, a1
                  sltu         a4, s4, tp
                  slti         t1, s10, -1990
                  sltiu        a1, tp, 1819
                  nop
                  srai         t4, a4, 7
                  sub          sp, a6, t2
                  auipc        s1, 67463
                  andi         sp, ra, -567
                  auipc        a7, 706491
                  srl          s9, a3, s1
                  add          s9, s4, s3
                  xor          s4, s6, gp
                  addi         a3, gp, -921
                  sll          a4, t5, a5
                  lui          t2, 461983
                  slli         t1, t4, 4
                  sra          s2, s10, s11
                  srli         ra, a1, 6
                  addi         t4, zero, -318
                  slt          t3, t6, s0
                  slt          a0, s1, t2
                  slt          a5, t0, s4
                  ori          s10, a2, 774
                  sltiu        sp, s4, 155
                  andi         ra, sp, -82
                  srl          s10, a1, t4
                  sra          a5, s7, t2
                  andi         zero, a5, 1693
                  add          s9, s9, s3
                  slti         s4, ra, 957
                  auipc        t0, 986215
                  auipc        s1, 786476
                  sll          a2, s3, s5
                  sltiu        s8, a2, 645
                  or           zero, s6, a7
                  auipc        tp, 149077
                  addi         t2, s11, 1965
                  nop
                  add          t6, a2, s9
                  and          a6, s6, s0
                  auipc        t3, 319961
                  or           t0, a0, tp
                  sub          ra, a1, s4
                  srai         zero, a6, 28
                  slt          s10, t4, t4
                  auipc        a0, 17974
                  sltiu        s6, s7, -994
                  sltu         a5, a5, s2
                  slli         s11, t6, 7
                  sltu         ra, a0, s7
                  srli         s9, s1, 7
                  srl          a0, s10, s3
                  ori          sp, s8, -1060
                  sll          a3, s2, t5
                  slti         tp, s10, -1498
                  slt          ra, zero, s9
                  slti         a3, ra, 704
                  sub          s2, s0, s10
                  sltiu        a5, t2, 179
                  or           zero, s1, a4
                  ori          t6, t3, -357
                  addi         a0, a6, -491
                  sltu         gp, t2, a1
                  srli         a3, t2, 3
                  auipc        a4, 927951
                  lui          s11, 420198
                  sll          t4, s9, s8
                  slti         t3, a0, -2004
                  nop
                  ori          ra, s4, 635
                  ori          t0, s0, 179
                  srli         t6, s8, 0
                  xori         tp, ra, -1660
                  sll          t2, a5, s8
                  lui          gp, 961659
                  sltu         ra, t5, s9
                  xor          s7, sp, ra
                  sub          ra, a7, t3
                  sltu         s11, s9, s3
                  slli         t0, s2, 18
                  addi         gp, s0, -1046
                  and          tp, s8, s1
                  sll          sp, t2, sp
                  xori         a4, t1, 1804
                  slt          a5, t4, tp
                  xor          a5, a3, a2
                  sll          t4, a6, s0
                  srai         s5, t0, 0
                  srli         s11, a5, 25
                  srai         s7, s1, 23
                  and          s5, s8, s2
                  srl          s11, s4, gp
                  sub          s2, zero, s2
                  add          s6, s7, t6
                  sub          a3, gp, t1
                  srai         a0, zero, 2
                  lui          a7, 982856
                  sll          s2, s10, t1
                  xor          s2, s1, s2
                  add          s4, t1, t0
                  xor          s1, s11, sp
                  lui          a4, 306855
                  and          t1, a3, t3
                  and          s8, s10, a0
                  and          a3, t0, s7
                  sll          t2, a7, t5
                  andi         t2, s0, -266
                  add          t4, tp, a0
                  sltu         a7, s7, a3
                  add          t4, s1, t5
                  srai         s8, s1, 30
                  sub          a6, s8, ra
                  slli         s10, a3, 18
                  xor          a7, s11, a5
                  xor          s4, t1, s9
                  sub          s4, a2, a3
                  sltu         a4, t1, s6
                  ori          a1, t2, -1172
                  sltu         ra, a2, t6
                  ori          zero, s10, 1714
                  lui          a1, 517977
                  auipc        s1, 78047
                  sub          a6, a4, s8
                  addi         s5, tp, 387
                  sltu         s10, t1, s3
                  lui          s5, 825368
                  xor          t1, a6, t2
                  slt          t6, t3, s9
                  sltiu        t0, t5, -1680
                  andi         zero, a6, -66
                  or           t3, a7, ra
                  and          tp, t1, s7
                  ori          a0, sp, 1689
                  srai         t2, sp, 27
                  nop
                  xor          ra, t4, s2
                  sltu         a4, s0, s3
                  sltu         a7, s5, s9
                  srl          t2, a5, t4
                  xori         zero, sp, 1107
                  sub          a3, s10, t6
                  sltiu        s11, a0, 584
                  xor          s2, s11, zero
                  slli         sp, s4, 18
                  xor          a0, s7, s1
                  slt          t3, s8, t1
                  auipc        s9, 789423
                  lui          s8, 943147
                  or           tp, zero, a7
                  or           s1, a0, a3
                  slti         s10, a7, 1484
                  lui          zero, 130492
                  sll          a4, s11, t6
                  lui          ra, 874346
                  sub          a7, t6, t3
                  slli         s8, t6, 4
                  srl          s1, s11, a4
                  slti         s1, s0, -1493
                  sltu         s9, s6, a5
                  auipc        s11, 512062
                  srai         a4, s4, 8
                  ori          a3, a4, -649
                  ori          a3, t5, 323
                  and          s6, tp, sp
                  slli         t6, sp, 20
                  lui          sp, 246732
                  sra          a5, t2, t5
                  slli         s1, zero, 18
                  auipc        s4, 344490
                  lui          t3, 761373
                  ori          a7, t1, 1734
                  nop
                  slt          a5, gp, s5
                  slli         t3, t2, 2
                  nop
                  slli         tp, sp, 13
                  xori         t4, s3, 1648
                  add          a4, t0, s0
                  lui          zero, 646654
                  sub          a4, s3, a2
                  andi         s8, s5, 1374
                  slli         a3, a1, 31
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a7, 0x0
                  li           t6, 0xffffffff
                  li           s5, 0x4503b8f2
                  li           ra, 0xffffffff
                  li           s6, 0x0
                  li           s10, 0x80000000
                  li           t1, 0xffffffff
                  li           a2, 0x80000000
                  li           s1, 0xffffffff
                  sub          s10, s10, t6
                  lui          t6, 125578
                  nop
                  addi         s5, s6, 461
                  sub          a2, ra, t6
                  auipc        t6, 458131
                  sub          s1, a7, a2
                  nop
                  lui          a2, 883079
                  sub          t1, s5, s5
                  lui          t1, 874977
                  lui          s6, 17490
                  sub          a2, t1, a7
                  add          s5, t1, s6
                  addi         s5, t6, -269
                  nop
                  addi         s5, gp, 466
                  sub          ra, t6, s1
                  nop #end riscv_int_numeric_corner_stream_9
                  sltiu        s9, t3, -1980
                  slti         s9, s10, -1930
                  slli         s2, s7, 20
                  ori          a4, s8, 1466
                  srli         s7, t1, 31
                  lui          a5, 496681
                  and          t6, zero, s1
                  slli         s7, s10, 18
                  srli         s11, s2, 0
                  srai         t3, a6, 2
                  slli         s8, s0, 14
                  xori         a4, s8, 511
                  sltiu        a7, s1, 1606
                  addi         t1, s4, -830
                  and          s5, t3, s11
                  xor          t4, a6, t6
                  slti         s9, a4, 904
                  and          s7, ra, s11
                  sra          a7, a0, t0
                  lui          s8, 572190
                  sltiu        t3, gp, 2022
                  xor          a0, gp, sp
                  ori          a4, t3, -9
                  srl          s1, s4, s4
                  xori         zero, a5, -1141
                  andi         a6, t6, -376
                  sltu         a3, t2, t5
                  lui          t6, 566475
                  slti         sp, s4, 224
                  srli         a1, zero, 17
                  xor          s5, zero, sp
                  xori         a0, a7, -1328
                  addi         sp, s0, -1924
                  add          s4, ra, a2
                  xor          gp, a7, t5
                  xor          sp, a4, a3
                  nop
                  xori         s7, s8, -1676
                  ori          s10, a2, 783
                  ori          zero, a4, -1943
                  sltiu        s4, a2, 1493
                  slt          s8, tp, s7
                  and          tp, sp, sp
                  sltiu        s8, s6, -1131
                  nop
                  andi         s11, t1, 817
                  nop
                  sltiu        a1, s10, -150
                  srli         t0, a4, 26
                  slt          s1, t3, a0
                  sll          gp, sp, a5
                  srli         a5, t1, 24
                  sll          s5, t1, t6
                  sll          t4, zero, s8
                  srl          s6, zero, s0
                  srli         t6, ra, 1
                  auipc        s1, 667865
                  auipc        sp, 310641
                  add          t1, a5, t5
                  addi         s7, a4, 127
                  srl          t1, t6, t6
                  addi         sp, s11, -979
                  sltiu        s7, s5, -832
                  srai         a6, a4, 19
                  sll          s9, t0, s6
                  and          s4, t4, a6
                  addi         tp, t3, -1467
                  xori         a1, sp, -528
                  nop
                  slt          s2, s0, s5
                  slli         s1, t1, 4
                  xori         a5, s11, -918
                  and          t3, a2, a7
                  slti         s7, a7, 766
                  or           t1, a3, a4
                  slt          t1, a5, sp
                  sll          ra, s3, a5
                  sltiu        t0, s8, 1522
                  sltiu        t6, s3, -1714
                  add          a4, s9, ra
                  slli         ra, a7, 26
                  sll          a7, s10, s10
                  lui          gp, 1039338
                  slt          t2, a3, a2
                  add          s1, a1, t2
                  addi         tp, a4, 1570
                  addi         t1, sp, -1191
                  ori          t2, a2, 1333
                  sub          a2, a1, s11
                  addi         t2, a0, -141
                  slli         s5, s8, 7
                  and          a0, a6, s9
                  sltiu        s10, a0, 605
                  auipc        t4, 581387
                  slli         ra, s6, 25
                  lui          a6, 600880
                  add          t1, tp, t5
                  or           a1, a1, a1
                  slti         t2, a5, 871
                  xor          a5, s2, t5
                  andi         tp, s11, 1234
                  sltiu        t6, s10, -159
                  addi         s6, t5, -1126
                  srli         t2, s6, 31
                  or           a0, a2, t0
                  auipc        a7, 868789
                  sub          a1, ra, t5
                  and          s7, a1, t1
                  nop
                  addi         s1, a3, 1685
                  sltiu        s8, a3, -1188
                  sltu         gp, gp, a2
                  addi         s4, t5, -1293
                  lui          a4, 690036
                  andi         a7, t4, 951
                  nop
                  lui          s4, 665045
                  xor          a1, s7, sp
                  sra          a3, s0, a4
                  auipc        s5, 863865
                  srli         zero, a4, 23
                  slt          t3, a3, s5
                  srai         s1, t0, 26
                  and          a5, a7, gp
                  srli         s6, t1, 9
                  ori          s4, t4, -1912
                  srai         s9, a4, 31
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t6, 0x0
                  li           s8, 0xffffffff
                  li           a4, 0x80000000
                  li           s6, 0xffffffff
                  li           gp, 0xf0cfb23c
                  li           ra, 0xffffffff
                  li           s4, 0xe4ad5c4b
                  li           t0, 0x0
                  li           a6, 0xd5bd402b
                  lui          gp, 699992
                  lui          gp, 144345
                  auipc        ra, 321382
                  add          s8, s4, s11
                  auipc        ra, 720810
                  addi         t0, a4, -104
                  nop
                  lui          a6, 289391
                  sub          s8, s11, a4
                  add          s4, s4, s8
                  auipc        s4, 798118
                  sub          s11, s11, gp
                  lui          a4, 427045
                  add          ra, a6, s6
                  sub          s4, a6, t0
                  nop
                  lui          ra, 193772
                  nop
                  lui          s4, 515611 #end riscv_int_numeric_corner_stream_12
                  ori          s2, a7, 1743
                  or           ra, s9, a2
                  slt          a3, t2, s0
                  sltu         a7, tp, s10
                  lui          s4, 1034693
                  add          a4, t4, gp
                  xor          sp, a6, t5
                  sll          zero, a3, a5
                  srl          t4, s9, t1
                  or           s4, s11, gp
                  auipc        a7, 145112
                  or           a5, a2, s1
                  sltiu        zero, a1, 1358
                  srli         tp, s3, 10
                  andi         a2, a7, -1857
                  andi         gp, gp, -1305
                  srai         t6, s1, 30
                  slt          s1, t1, s9
                  srli         a4, s5, 17
                  lui          gp, 37098
                  auipc        zero, 603594
                  xori         s9, t0, 1920
                  lui          s10, 8017
                  srli         tp, s7, 21
                  nop
                  sltu         t3, s2, s1
                  nop
                  ori          t0, zero, 1860
                  xor          s2, s11, s3
                  addi         s8, s10, -634
                  slt          sp, s6, ra
                  srl          a0, s8, s7
                  lui          a2, 831886
                  add          s1, s7, tp
                  sltu         a3, a3, s11
                  sll          s5, t3, zero
                  slli         gp, s0, 11
                  addi         gp, s9, -257
                  slli         s8, s1, 29
                  sub          s5, s0, a0
                  auipc        t2, 183751
                  add          s1, a4, t3
                  slti         s2, zero, 749
                  lui          a3, 1007470
                  srli         s5, s7, 22
                  srli         t3, zero, 14
                  nop
                  xori         a6, gp, -1414
                  addi         a6, gp, -1590
                  xori         s5, t4, -1160
                  addi         a2, t6, 430
                  srli         sp, t2, 9
                  auipc        t4, 550473
                  slli         gp, t2, 1
                  slt          a3, s10, t4
                  sra          s6, t0, t5
                  or           a2, s0, a2
                  srl          a5, t6, s6
                  slti         a7, t1, -1786
                  srai         a3, a4, 30
                  srli         a6, t3, 3
                  auipc        a1, 657193
                  addi         zero, a6, 801
                  and          s8, s11, s4
                  slti         a5, gp, 25
                  addi         a3, s2, 984
                  xor          a0, a1, s6
                  and          s8, tp, t4
                  srli         t3, a1, 29
                  srl          s4, a7, zero
                  sltiu        s10, a6, 373
                  sra          t6, s4, s11
                  sll          s10, s5, a2
                  sltiu        tp, s2, 1176
                  slti         a4, s4, 916
                  xori         sp, t1, -1002
                  ori          a5, t2, -723
                  srli         a4, t2, 7
                  nop
                  srl          s2, gp, s4
                  nop
                  xori         t1, t4, 770
                  slli         gp, t1, 23
                  andi         gp, s6, 1332
                  xor          s5, s6, t4
                  sll          a5, s8, gp
                  and          t6, a3, s5
                  slt          t4, s5, tp
                  nop
                  xor          a5, a0, a4
                  auipc        t2, 77703
                  sra          a2, a6, t3
                  or           t2, t6, tp
                  and          t2, s8, s4
                  auipc        s6, 576091
                  srli         a4, s7, 13
                  lui          s5, 885940
                  slt          t4, s3, t3
                  sub          s11, a7, a1
                  srai         s9, s1, 5
                  add          s1, gp, a2
                  slli         a6, s2, 19
                  xori         ra, t5, 616
                  sltiu        a1, a6, -1244
                  or           t2, s0, s9
                  slli         s6, a4, 8
                  andi         s9, t0, 645
                  add          s7, t4, s5
                  lui          tp, 199205
                  lui          s4, 676350
                  and          a4, a0, t6
                  srl          s1, a7, a0
                  addi         a2, s2, -1512
                  sra          s4, a5, t1
                  add          ra, t4, t1
                  slli         t4, t2, 15
                  xori         t3, gp, 343
                  auipc        ra, 193781
                  addi         t1, s7, -1552
                  sll          a2, s1, t4
                  slti         s6, s3, -915
                  xori         t6, a1, 1418
                  srai         t1, s0, 17
                  ori          gp, ra, 637
                  ori          t2, a0, 1319
                  slli         t4, a4, 26
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           a7, 0xffffffff
                  li           s5, 0x80000000
                  li           s11, 0x0
                  li           a6, 0x0
                  li           t3, 0xa485c0c4
                  li           ra, 0x80000000
                  li           s7, 0x582f86d6
                  li           s4, 0x80000000
                  li           a1, 0x0
                  auipc        a6, 818136
                  sub          ra, tp, ra
                  sub          s5, a6, a1
                  nop
                  addi         s5, s5, 1531
                  nop
                  add          s5, t3, t3
                  nop
                  lui          a6, 393073
                  sub          tp, s11, s7
                  addi         a1, tp, -1909
                  nop
                  nop
                  lui          s7, 1036503
                  auipc        a6, 182749
                  addi         s7, s5, 1477 #end riscv_int_numeric_corner_stream_1
                  sll          t3, sp, s3
                  andi         sp, s2, 448
                  xor          a4, s3, s6
                  andi         tp, s4, -1004
                  srli         t0, s10, 26
                  srli         a1, t5, 14
                  sll          zero, s9, a6
                  srai         a2, sp, 1
                  nop
                  slt          sp, s0, t1
                  or           s1, sp, t1
                  sll          t4, t1, t3
                  or           s11, a6, t4
                  and          s9, s1, s8
                  sra          s9, s0, s4
                  slt          a4, t1, s7
                  addi         s8, s4, -2044
                  sll          s8, a7, s11
                  slt          gp, t3, a0
                  addi         s6, s8, -1544
                  xori         s11, t6, -1036
                  slli         s10, tp, 21
                  srl          t4, t6, s0
                  sltiu        s11, t0, -375
                  or           s4, t0, s8
                  slt          gp, a4, a3
                  slli         s9, s8, 7
                  lui          t6, 699261
                  sltu         t3, tp, s8
                  slti         sp, a2, -854
                  sltiu        s9, s2, 238
                  or           t0, a1, a7
                  xori         s2, t2, -1001
                  lui          s4, 806558
                  sltu         gp, s0, sp
                  xori         s5, s6, -571
                  lui          s5, 357094
                  sra          s11, t3, t6
                  xor          t3, sp, s4
                  addi         s5, s7, 1017
                  slt          t6, s3, t3
                  addi         s7, s9, 1138
                  srai         s9, t2, 27
                  slli         tp, t6, 14
                  ori          s6, a2, 1750
                  addi         t1, a1, 304
                  andi         s2, a7, 191
                  slt          a0, s10, a0
                  srl          a3, a5, t0
                  or           a3, t3, s7
                  slt          s1, tp, t2
                  sltu         ra, a3, t4
                  add          t0, tp, s4
                  sub          t0, zero, ra
                  sltu         zero, a0, a6
                  sltu         s6, sp, t1
                  nop
                  slti         t0, s3, 1212
                  sra          a2, a5, s4
                  srai         t3, sp, 24
                  srai         t4, s6, 9
                  auipc        gp, 610209
                  slti         s2, a3, -51
                  slli         a6, a2, 4
                  addi         t6, s7, 991
                  or           t0, a6, gp
                  srli         zero, a1, 25
                  xor          s9, a7, a6
                  xor          a2, t4, t3
                  add          a6, s7, s10
                  sll          s11, s6, a2
                  or           gp, s10, a5
                  lui          t6, 944158
                  slli         t6, a1, 23
                  xor          t1, t5, tp
                  andi         s6, a3, -1739
                  xori         tp, a4, 1420
                  xori         t1, s10, -1843
                  slti         a1, a3, -688
                  sltiu        t6, sp, 1146
                  nop
                  sub          a7, t0, a3
                  add          a5, s1, s10
                  srli         a0, ra, 11
                  slt          t2, tp, a1
                  sltu         t6, t6, t4
                  srl          a3, t1, a5
                  ori          s4, t1, 1436
                  andi         s5, s9, 1191
                  xori         a1, s9, 1771
                  andi         s9, gp, 1753
                  sltu         a4, a5, s11
                  nop
                  slti         a0, s4, 791
                  addi         a6, gp, 571
                  auipc        s8, 632777
                  slli         s1, t0, 30
                  sra          a1, t1, t1
                  slti         a6, s8, 1368
                  sll          t6, s3, t5
                  sll          s10, s9, zero
                  sll          a7, a6, gp
                  ori          zero, a4, 247
                  sub          a0, a4, s11
                  xori         t1, a5, 2040
                  nop
                  auipc        a0, 812905
                  slti         t1, sp, -283
                  xor          t4, a6, t0
                  ori          a5, a5, -1709
                  sra          a2, s7, gp
                  auipc        t1, 817784
                  slli         s6, s0, 29
                  addi         t6, s7, -1178
                  auipc        t4, 767666
                  sll          zero, t4, a4
                  sub          a5, zero, a7
                  slt          t1, t5, s2
                  sltu         ra, t6, t2
                  sll          t3, t3, t0
                  srl          s7, tp, s8
                  sltiu        s1, t0, 486
                  sltu         ra, s10, zero
                  sltu         t3, s1, t4
                  sra          s2, s9, tp
                  nop
                  ori          sp, a0, -1232
                  nop
                  ori          s11, a0, 576
                  nop
                  sltu         s9, a3, tp
                  xori         t6, a3, -694
                  slt          s1, s0, s5
                  sub          t2, sp, a5
                  sra          a3, s3, s1
                  srai         s1, s11, 25
                  and          sp, s11, a4
                  sltiu        s7, t6, 1813
                  or           t4, a2, t4
                  slti         s11, s4, -31
                  slti         a0, a5, 999
                  slli         t0, s4, 24
                  nop
                  lui          tp, 1024055
                  nop
                  srl          t3, a4, a2
                  srli         s5, gp, 6
                  srli         s2, a0, 4
                  srl          s5, s6, s7
                  sltiu        s10, t0, -498
                  ori          s8, s0, -1513
                  slli         s2, tp, 18
                  andi         t6, s0, 265
                  xori         s11, s9, 1727
                  slti         ra, a4, 320
                  sltu         s11, t6, s11
                  and          zero, s7, zero
                  srl          t1, tp, s5
                  sltiu        a7, s0, 547
                  and          s11, a3, t2
                  add          s5, s0, a1
                  sll          s6, a6, a6
                  lui          s4, 1678
                  slti         a4, a2, -1854
                  auipc        t6, 693857
                  sll          gp, s8, t4
                  sub          ra, s6, s9
                  srli         sp, s10, 23
                  add          t0, s0, s6
                  sltu         a5, s2, a3
                  or           a4, s4, gp
                  srl          a7, s7, a3
                  srl          s10, s2, s7
                  xor          s11, t5, s4
                  slt          s4, s5, a2
                  nop
                  and          zero, s2, t3
                  or           t3, zero, zero
                  addi         s5, ra, -991
                  and          a7, a0, t6
                  sra          tp, s1, t3
                  srli         a1, t1, 11
                  addi         tp, a4, -898
                  sub          a4, t2, t3
                  slli         a0, tp, 12
                  lui          a3, 857847
                  sltiu        a0, s2, -1118
                  or           t1, s10, a0
                  sll          a2, zero, s11
                  sra          zero, a6, a1
                  and          s1, a3, s9
                  srai         a1, t0, 1
                  auipc        t6, 953829
                  sltu         tp, s6, a0
                  srl          gp, s4, s4
                  auipc        a6, 593756
                  auipc        s9, 941693
                  auipc        a2, 374741
                  and          s6, s8, zero
                  andi         s7, s4, 721
                  xori         sp, a6, 992
                  sltiu        s1, s6, 2036
                  sra          a2, t3, s6
                  sltu         a5, tp, t0
                  xor          s11, t4, s11
                  srl          s10, a4, s9
                  slli         s7, a4, 13
                  sra          s8, a3, s5
                  addi         s2, s2, 1144
                  nop
                  xor          a0, s4, a0
                  add          s7, ra, a5
                  slti         s9, s7, -1638
                  or           t0, a5, s4
                  sub          gp, zero, ra
                  sll          a0, ra, t2
                  and          tp, s2, zero
                  xori         a5, t2, -1520
                  xori         t1, t3, -837
                  or           s4, a2, a1
                  ori          t4, t5, -1885
                  sltu         s9, a5, s9
                  srli         t3, a0, 30
                  nop
                  auipc        t2, 275273
                  sll          a7, s9, a6
                  xor          s2, t0, a2
                  slt          s4, t0, gp
                  sra          s6, s10, t5
                  sltu         a5, t4, a1
                  slli         a5, a4, 0
                  addi         a7, a3, -159
                  sltu         s10, s8, zero
                  slti         s9, t2, 1097
                  slli         a0, s2, 21
                  sub          s4, s7, a0
                  srai         s11, a7, 18
                  sub          t4, a3, a1
                  sltu         s9, tp, sp
                  srai         s10, zero, 0
                  sll          tp, tp, a3
                  slt          a3, a3, s7
                  or           s6, s5, s9
                  lui          a7, 370817
                  xori         a6, a7, -299
                  sltiu        ra, t1, 1998
                  slt          a1, t2, t3
                  or           s6, s0, t6
                  add          ra, t4, a5
                  sltiu        s11, t3, 1299
                  sltu         t4, s4, t3
                  sltiu        a0, t5, -1982
                  add          zero, a1, s9
                  nop
                  srai         s1, a6, 11
                  auipc        s2, 914309
                  nop
                  sll          t4, gp, s1
                  sltu         a0, a2, s4
                  ori          s4, a1, 1365
                  sltu         a0, t4, s11
                  srli         s8, s6, 17
                  ori          a1, s11, -604
                  sra          s7, s4, s8
                  nop
                  srl          t2, s4, a4
                  sra          s2, s0, s4
                  add          s10, t3, a0
                  sll          t2, sp, t3
                  auipc        t6, 862422
                  lui          s1, 239233
                  auipc        s11, 783820
                  sub          tp, t0, s10
                  sltiu        t0, s11, 1093
                  slti         t6, s5, 1116
                  sll          a5, s0, a6
                  slli         s5, s9, 7
                  slli         s8, t5, 28
                  auipc        s9, 546809
                  nop
                  nop
                  slti         s9, a5, -35
                  and          s2, ra, s0
                  add          t1, gp, t4
                  and          tp, s0, a6
                  sub          s1, s4, a6
                  sltu         ra, a6, a5
                  add          a2, s11, t4
                  ori          s7, t6, 1512
                  add          s1, s6, s7
                  ori          s8, s2, -1684
                  sll          a1, a4, a0
                  xor          zero, t0, t0
                  auipc        a6, 540796
                  and          s1, s9, s1
                  sra          s6, t0, t5
                  addi         gp, a2, 1178
                  slli         s5, a1, 1
                  add          t2, t3, s4
                  slli         t0, gp, 10
                  add          t2, s11, s11
                  addi         s1, s11, -1047
                  sra          ra, t2, t5
                  slli         s7, s9, 11
                  sub          s2, tp, s1
                  slt          a2, s8, t6
                  nop
                  srli         s1, s5, 1
                  sll          sp, s11, a2
                  sll          a3, a2, t0
                  and          a1, zero, sp
                  or           t6, gp, tp
                  andi         a2, sp, 630
                  slti         a4, a4, -1989
                  xori         tp, s2, 348
                  sll          t3, t1, t3
                  srai         s7, a1, 14
                  slti         s2, t5, 1603
                  auipc        t3, 122018
                  nop
                  andi         s6, s11, 1153
                  and          s9, t0, a5
                  sltiu        a6, a6, 237
                  ori          a4, sp, 1799
                  xori         tp, s11, -973
                  slt          s8, zero, t1
                  sub          zero, s6, t3
                  ori          ra, s1, 1541
                  slt          a5, t1, s7
                  slli         a1, s7, 22
                  srli         s4, s3, 25
                  addi         a0, a3, -646
                  lui          t0, 87242
                  srl          gp, tp, s3
                  sltu         ra, a5, a1
                  sub          tp, a4, t2
                  addi         ra, tp, 893
                  srl          t1, ra, a4
                  sub          t3, t3, s4
                  lui          t3, 598912
                  sltu         s11, s7, a1
                  slt          a1, t6, s4
                  slt          t6, t5, t1
                  sub          a2, s0, a4
                  andi         a1, s4, 245
                  srl          t3, a2, t4
                  and          tp, zero, s2
                  slti         s7, t1, 335
                  sra          s5, a3, s3
                  ori          t0, a1, -917
                  sltiu        t4, t3, 403
                  srai         sp, a0, 26
                  add          s4, s2, s11
                  slli         s8, t3, 21
                  sll          a1, s6, s4
                  ori          zero, s2, 1822
                  add          t4, s10, ra
                  slt          sp, a6, s6
                  and          tp, a7, t3
                  or           zero, gp, s0
                  sra          s10, s10, zero
                  sll          zero, s9, t6
                  srl          s6, s11, a5
                  ori          a4, t3, -559
                  sltiu        gp, a0, -1843
                  slti         a0, s6, -867
                  srai         zero, sp, 15
                  xor          a6, t5, t1
                  slt          sp, zero, s3
                  srai         a6, s2, 20
                  andi         tp, s4, -864
                  sltiu        s5, s7, -605
                  xor          tp, a5, tp
                  xor          s6, t0, s3
                  xori         t1, t2, 394
                  srai         t4, t5, 2
                  xori         t1, t5, 1301
                  slt          a6, s5, ra
                  slt          t3, t0, a4
                  ori          a0, s11, -1445
                  andi         tp, a3, -212
                  srli         t6, gp, 7
                  sltu         s4, ra, s0
                  xor          a6, s7, a3
                  sra          s1, gp, s1
                  or           t1, a6, a4
                  andi         s8, s4, 1690
                  sra          s4, s4, t1
                  srai         sp, s2, 4
                  addi         t6, s1, -1634
                  srli         s7, s0, 30
                  add          s7, t5, s10
                  ori          s9, a3, 194
                  or           s1, t6, t5
                  slt          t6, a0, s8
                  sltu         a6, s7, s0
                  srai         t0, gp, 14
                  xor          s1, s0, t2
                  slti         s2, t3, 1558
                  andi         t6, s5, 1475
                  srai         t4, t3, 14
                  srl          zero, t4, t2
                  nop
                  or           a0, t1, t5
                  slti         a1, t6, -1074
                  slt          t6, s0, a1
                  srai         a5, a1, 31
                  xori         s2, ra, 1447
                  slli         t4, t2, 27
                  addi         zero, s1, -1914
                  xor          sp, s0, t3
                  slli         a6, s4, 23
                  ori          a7, t1, 1948
                  and          s6, t2, s9
                  sll          a4, ra, t3
                  and          t0, t2, s7
                  nop
                  addi         s7, s1, 436
                  addi         a7, t3, 1609
                  xori         s5, t1, -838
                  slt          gp, s3, s2
                  slli         s8, s11, 18
                  and          t6, a7, s0
                  sltu         ra, t0, zero
                  slti         t6, s7, 1950
                  srli         a0, s8, 13
                  srli         s10, a5, 0
                  slli         t6, a4, 11
                  nop
                  lui          s7, 115219
                  srai         ra, a5, 20
                  ori          tp, a1, -629
                  and          zero, a3, t1
                  slt          s8, a5, a5
                  slli         t3, s0, 14
                  xor          a5, t5, s2
                  nop
                  addi         s7, a6, -730
                  andi         s6, a7, -1754
                  xori         s5, t4, 720
                  or           s1, a1, sp
                  nop
                  xor          sp, gp, a1
                  slti         a7, s8, -392
                  xor          t4, t2, gp
                  nop
                  srli         a6, t1, 12
                  srli         a2, t1, 20
                  slt          a2, a5, s3
                  lui          a7, 962069
                  sra          t3, t2, a4
                  xor          s8, s7, s0
                  sra          s2, s11, s11
                  lui          zero, 145136
                  sltiu        tp, s5, -961
                  slti         t2, s6, -1243
                  addi         a4, gp, 690
                  andi         a4, tp, -253
                  auipc        s7, 278629
                  sltu         a3, s8, t1
                  sltu         a7, gp, s4
                  nop
                  auipc        s8, 949219
                  srli         s4, a0, 31
                  sra          s7, a1, t2
                  sub          s6, s8, s0
                  srai         a1, a3, 25
                  slli         t1, s1, 2
                  sra          ra, t4, s5
                  sltiu        a7, t3, -1421
                  srai         s1, gp, 13
                  nop
                  xori         a5, a6, -1079
                  sltu         s4, a5, a1
                  xor          s5, t2, a2
                  sub          s4, t3, t4
                  slt          a6, gp, sp
                  slli         s6, t3, 4
                  ori          s2, t3, 775
                  sltiu        s7, s7, 1370
                  lui          t4, 1031338
                  add          t6, s1, sp
                  slt          s11, s10, s4
                  slti         s8, a7, -1261
                  xor          s7, s10, s11
                  sltiu        s5, a5, -1727
                  slt          t6, s0, a1
                  slli         s9, s9, 10
                  slti         a5, t2, -1105
                  ori          s10, s6, -1907
                  xori         a2, sp, -605
                  srl          a6, a5, tp
                  sltu         s7, zero, t0
                  auipc        s11, 958950
                  xor          a0, tp, zero
                  sll          s4, s3, s11
                  lui          t0, 807140
                  andi         a5, a3, -304
                  sltu         zero, s5, a0
                  addi         s1, a0, 700
                  lui          a2, 145305
                  ori          s5, s4, 888
                  auipc        gp, 1044951
                  slli         t0, t6, 14
                  srli         tp, a4, 7
                  xori         t3, s3, -879
                  auipc        s2, 756893
                  srli         a6, a7, 11
                  auipc        a2, 628758
                  sltu         s1, zero, tp
                  sltu         s7, s9, s7
                  andi         sp, a7, 818
                  srl          tp, a2, gp
                  sltiu        a4, a5, -1091
                  or           s4, a3, ra
                  sll          s8, gp, ra
                  xori         t6, t0, 1113
                  sra          s11, a3, a4
                  addi         a6, a0, -773
                  xori         gp, zero, -1269
                  srai         sp, s5, 2
                  srai         tp, t4, 11
                  slt          s1, t6, s5
                  xor          s1, t0, tp
                  sltu         s2, s5, s6
                  sub          a0, s9, t3
                  or           a7, a1, t0
                  nop
                  sra          zero, t5, a6
                  lui          gp, 674594
                  srai         t6, s5, 13
                  srl          s2, a6, t1
                  srai         t4, t5, 10
                  srl          a5, gp, a6
                  srai         t3, ra, 12
                  andi         a2, gp, 1804
                  xor          s2, zero, s3
                  or           a2, ra, t4
                  auipc        s2, 203667
                  xori         a2, t0, -1414
                  slt          sp, s3, s10
                  srl          t2, sp, sp
                  and          ra, zero, a3
                  ori          a3, a6, -1617
                  xor          a5, s2, s6
                  srl          zero, zero, s8
                  sra          s4, s9, ra
                  sra          a5, s11, s10
                  lui          t6, 687187
                  nop
                  ori          a3, a5, -1902
                  auipc        sp, 478040
                  sltiu        s11, s2, -1489
                  sra          a5, a0, ra
                  srai         s7, s6, 12
                  slti         a2, t0, -1358
                  srl          s6, t1, t3
                  and          t2, s11, t6
                  addi         t3, tp, 282
                  auipc        t6, 332073
                  or           s5, s2, s10
                  nop
                  sra          a4, s3, t3
                  sltu         a1, ra, gp
                  slt          a4, a5, tp
                  srl          s6, a4, t6
                  addi         a3, s10, -493
                  slli         s7, a7, 5
                  srli         s9, t2, 12
                  slti         tp, sp, 463
                  nop
                  sll          a6, s7, t4
                  ori          t1, t5, 1770
                  srl          t4, s9, t0
                  or           a4, s2, t3
                  xor          tp, s11, a3
                  sub          s8, t6, a3
                  ori          a0, s5, 1583
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a2, 0xd049a60d
                  li           t2, 0x2bdca79f
                  li           s11, 0x0
                  li           t3, 0x0
                  li           s8, 0x1830add9
                  li           ra, 0x80000000
                  li           a6, 0xb8c934f8
                  li           s4, 0xffffffff
                  li           a5, 0xffffffff
                  add          t3, s11, s4
                  sub          a2, a5, a6
                  addi         a2, t3, -300
                  auipc        a2, 318851
                  addi         t2, sp, 110
                  sub          a6, a6, ra
                  add          s4, s8, t3
                  addi         a6, t3, -1188
                  lui          sp, 201086
                  nop
                  add          a5, s11, a5
                  nop
                  sub          a6, s11, a6
                  sub          t3, a2, a6
                  lui          s8, 478405
                  add          s11, a5, t2
                  auipc        s11, 70160 #end riscv_int_numeric_corner_stream_16
                  sltiu        a0, tp, 299
                  xor          gp, a7, a0
                  nop
                  addi         ra, a5, 451
                  nop
                  sltiu        t0, s10, 941
                  sll          tp, a7, zero
                  slli         tp, s1, 29
                  or           a3, s4, t2
                  slt          s1, sp, s10
                  ori          a5, gp, -1788
                  sltiu        t4, s6, -1884
                  and          a3, a5, a6
                  or           s8, sp, a5
                  srli         ra, s7, 27
                  andi         a4, sp, 1696
                  srai         a3, sp, 22
                  sub          s5, s7, zero
                  xori         zero, a4, -1152
                  slli         s10, s9, 19
                  slt          a4, tp, zero
                  slti         a2, s5, -1406
                  slli         tp, s8, 3
                  add          a4, a5, s2
                  or           a4, s11, s5
                  sra          s6, a5, t5
                  srai         t3, s8, 29
                  auipc        t1, 996310
                  nop
                  auipc        a4, 1006615
                  sltiu        s9, s6, 1071
                  auipc        t2, 592984
                  nop
                  xor          sp, a3, t0
                  slt          s11, a7, a1
                  add          t1, a2, s9
                  nop
                  slt          s5, t4, a1
                  sll          t2, a2, s11
                  addi         s9, a0, 250
                  slli         a5, a3, 4
                  andi         sp, t1, 1841
                  slti         gp, a6, -2012
                  auipc        zero, 490002
                  lui          sp, 930562
                  addi         t6, a7, -301
                  auipc        tp, 771142
                  srai         a0, s4, 12
                  and          a3, s3, tp
                  slti         s10, a0, 1122
                  slt          tp, t3, tp
                  sub          t6, a2, t0
                  xor          s7, s1, a5
                  addi         zero, s3, -828
                  sub          a0, a3, s6
                  slti         s9, ra, -264
                  slti         a3, s9, 36
                  add          a6, sp, a7
                  or           t0, s3, gp
                  slti         t4, a5, 52
                  lui          tp, 325481
                  sub          s11, s9, t1
                  sub          t1, s8, t5
                  lui          gp, 76668
                  and          s5, a5, s2
                  slt          s7, s5, t3
                  sltu         t2, s9, s0
                  sltu         a3, tp, t3
                  or           a3, s2, sp
                  sll          t0, a1, zero
                  add          zero, t1, t0
                  lui          a3, 861814
                  xori         t1, ra, 533
                  srai         s7, t4, 9
                  sub          t2, s4, a1
                  sub          t3, t2, a2
                  ori          s8, s10, 478
                  sra          zero, a7, s0
                  ori          s11, a5, -733
                  ori          t0, a3, -437
                  sltiu        sp, s9, 1293
                  lui          s9, 39409
                  slt          a1, s3, s6
                  lui          s1, 793107
                  add          sp, t2, s5
                  add          s1, zero, t1
                  slt          tp, s11, a2
                  sll          tp, a4, t0
                  srl          a5, s4, s1
                  or           s6, s5, sp
                  slt          a1, s0, t5
                  auipc        t1, 566789
                  slt          t6, s2, s4
                  sra          gp, s7, a5
                  slt          gp, a0, a2
                  ori          t0, s4, -261
                  slti         s2, t3, -678
                  sltu         a4, s10, t4
                  andi         s7, t6, -1874
                  lui          s10, 832372
                  slt          a0, s3, a0
                  or           ra, s9, s10
                  sltiu        t4, a2, 279
                  or           ra, a5, s0
                  addi         s1, s5, 1043
                  sltiu        a5, tp, 1982
                  srli         s5, t5, 12
                  slti         t4, a3, -181
                  slt          sp, s3, s5
                  slti         a2, s2, 511
                  auipc        a2, 787703
                  lui          t1, 437026
                  auipc        s5, 842893
                  srli         s1, a7, 11
                  srai         s9, s9, 1
                  add          s7, a1, a5
                  and          s8, s9, a5
                  sra          a0, a3, s10
                  srl          a0, t1, sp
                  xor          s8, ra, a6
                  and          s4, a3, a1
                  xori         s2, ra, -1339
                  xori         a5, t1, 1974
                  srai         a1, s8, 11
                  srai         tp, ra, 20
                  add          s1, tp, a4
                  sub          t4, tp, ra
                  sltiu        s10, t1, 263
                  auipc        s1, 355705
                  xor          s4, s5, a0
                  nop
                  srli         s2, zero, 28
                  or           s2, s10, s8
                  and          t4, s4, s7
                  lui          sp, 649849
                  xor          a6, t3, a2
                  srli         t6, t4, 6
                  auipc        a6, 807219
                  xor          s11, s9, s5
                  auipc        s7, 62239
                  sltiu        sp, t4, 1577
                  srli         a2, s3, 23
                  xori         a1, t4, 953
                  lui          t6, 434725
                  xor          s4, t5, ra
                  slli         t1, sp, 11
                  sltiu        sp, a4, 606
                  slti         t6, t2, -369
                  xori         tp, zero, -228
                  srai         a5, s9, 28
                  srai         a3, s5, 23
                  or           a7, s8, s6
                  andi         t0, t6, -1362
                  nop
                  auipc        s2, 795249
                  nop
                  sra          t1, s5, a2
                  or           gp, a4, s2
                  srl          s10, zero, a7
                  srai         a0, a1, 19
                  andi         s2, zero, 666
                  addi         s8, s8, -654
                  and          a0, a3, t4
                  addi         a1, a4, -1086
                  xor          s1, s9, t0
                  xori         zero, a4, -613
                  sltiu        s11, t3, 1144
                  and          a5, t2, t3
                  srli         a4, s11, 8
                  srli         t1, tp, 26
                  sltu         t3, t3, tp
                  and          s9, a4, s1
                  addi         a1, a2, -400
                  slt          a1, s6, t4
                  sub          s1, t5, t4
                  srli         t1, s10, 29
                  add          a6, s3, s0
                  srai         s5, zero, 8
                  sub          s5, tp, s3
                  add          a2, s5, s10
                  sra          t1, s11, t3
                  ori          sp, a5, 1409
                  slt          sp, t2, t5
                  sll          a4, t3, a2
                  add          a2, s3, s2
                  addi         a5, t0, 860
                  addi         a6, t4, 420
                  andi         t6, zero, -308
                  slt          tp, s0, t6
                  andi         s4, t1, 275
                  or           s2, s10, a7
                  or           t6, a4, s5
                  lui          zero, 1009983
                  slti         ra, s11, -949
                  and          t3, sp, t5
                  sll          s10, s4, s6
                  nop
                  andi         t6, s1, -892
                  addi         t3, s6, 401
                  ori          s6, s11, -864
                  slt          ra, a7, t5
                  slti         gp, sp, 483
                  srli         s8, s4, 24
                  srl          s2, a2, t5
                  sll          t0, s7, t1
                  sltu         t2, a5, t4
                  xor          a4, s4, t3
                  or           sp, s3, s1
                  slt          a1, a1, a5
                  sll          s7, s10, s8
                  srli         a2, tp, 18
                  lui          a2, 91128
                  sltu         s7, s4, t5
                  auipc        a1, 1014127
                  or           sp, s7, s2
                  add          a6, a1, zero
                  auipc        a2, 850138
                  srl          t4, ra, a6
                  xori         s1, s8, 260
                  lui          s1, 100712
                  ori          a0, zero, -102
                  srai         t4, ra, 21
                  slli         a7, t3, 5
                  auipc        s11, 37193
                  sltiu        t2, a0, -709
                  sra          s1, s6, s8
                  or           t6, gp, s9
                  sra          s5, a3, s7
                  sll          t4, s7, s2
                  and          a4, a6, s8
                  xori         gp, s4, 838
                  sra          s9, a6, t0
                  andi         a6, t3, -1735
                  lui          s5, 654914
                  nop
                  slli         ra, t0, 23
                  sltiu        a2, s0, 601
                  andi         s11, s5, -1664
                  slti         a3, s3, -1235
                  sll          a2, a2, s10
                  sltu         t6, s7, t4
                  or           a4, s2, s3
                  srl          t3, t1, s6
                  add          a4, tp, tp
                  slti         a3, t5, 1786
                  add          ra, a0, t1
                  sltiu        s7, s7, 360
                  srai         a7, zero, 9
                  srli         s4, t5, 19
                  lui          s4, 481977
                  auipc        s5, 767883
                  sltiu        s8, gp, -380
                  sltiu        t1, a2, -375
                  sltiu        a5, a6, 1586
                  and          s5, a1, s3
                  sra          ra, s11, a4
                  sltiu        s8, s1, 1496
                  or           s7, a7, s1
                  sll          t4, zero, s5
                  xori         gp, a3, -429
                  slli         a6, t4, 16
                  sltiu        s7, zero, 1132
                  addi         a3, t6, -749
                  slt          t0, s10, sp
                  slti         s11, s0, 1808
                  sra          s9, s10, t3
                  and          a1, sp, s11
                  add          s2, a5, s0
                  sra          s9, a0, a4
                  nop
                  auipc        a3, 578490
                  srli         tp, s8, 17
                  lui          a4, 171651
                  ori          s8, tp, -297
                  slli         t3, s5, 3
                  srli         t0, t5, 25
                  or           s9, gp, tp
                  sltu         t6, s11, gp
                  and          s4, sp, s4
                  sra          a2, ra, s6
                  auipc        s2, 373368
                  lui          s1, 376116
                  slti         gp, t6, -902
                  slli         t4, sp, 29
                  nop
                  xor          s9, sp, t3
                  ori          sp, s0, 1505
                  srli         s2, s8, 3
                  xor          s9, s7, t1
                  auipc        a1, 598384
                  nop
                  srli         a1, a5, 30
                  add          t3, t6, t1
                  sra          s2, a5, a1
                  nop
                  slti         t3, s0, 1937
                  addi         s2, s2, -2002
                  xori         t1, a1, 1999
                  xor          a0, a2, t0
                  addi         sp, ra, -1135
                  auipc        t6, 473399
                  slt          sp, a0, s0
                  sra          t0, s11, s0
                  slli         s7, t5, 22
                  srli         s10, t5, 19
                  srai         s2, a1, 13
                  addi         s7, sp, 69
                  auipc        t4, 1025343
                  slti         s8, s3, 1028
                  sltiu        zero, a7, 770
                  sra          s11, a6, t6
                  sltu         s4, gp, a4
                  ori          s11, s1, 715
                  srl          a3, a4, s2
                  and          tp, t6, t0
                  slti         s6, tp, 1155
                  sub          a3, ra, s7
                  slti         t6, t5, 1557
                  sltiu        gp, s1, -642
                  nop
                  ori          s11, s7, -796
                  and          s1, s4, a0
                  lui          s2, 175671
                  sltiu        s7, a6, -1530
                  xori         s1, a3, -409
                  add          a6, a2, a6
                  ori          a0, a2, -1241
                  lui          s9, 550909
                  slli         s4, t3, 31
                  nop
                  auipc        a0, 888480
                  xor          s8, t5, sp
                  or           s9, sp, s5
                  addi         a3, a2, -1728
                  slli         t0, gp, 10
                  sub          t1, s4, s3
                  sll          t1, a6, s0
                  xori         a4, a6, -576
                  add          a0, ra, t2
                  sra          t1, t4, t1
                  slt          s7, s5, t0
                  or           s7, s8, s0
                  or           t2, s6, t1
                  slli         a3, s0, 10
                  slti         s5, s1, -25
                  sll          a2, s1, gp
                  srai         s4, a4, 26
                  and          a5, a1, a0
                  lui          s5, 378547
                  nop
                  or           ra, s5, a2
                  add          ra, t2, s2
                  xori         s6, zero, -1946
                  sltu         ra, a4, s10
                  xor          s6, s6, s2
                  slti         s4, a1, -908
                  xori         s8, t6, 934
                  nop
                  sll          t1, a5, s6
                  srai         sp, t5, 30
                  sll          a4, s11, s7
                  xor          t2, a7, s2
                  slti         t6, t4, -1192
                  nop
                  and          t2, a6, s11
                  sll          a2, a7, a6
                  addi         a3, a6, -237
                  sltiu        a3, a7, -956
                  andi         a2, s0, 579
                  ori          gp, s11, 894
                  srli         a6, t3, 18
                  slt          s4, s2, a3
                  auipc        s1, 328704
                  sra          s4, s6, s4
                  sltiu        s1, s3, -309
                  ori          a5, sp, -308
                  sra          a2, s8, s8
                  slli         tp, t5, 22
                  nop
                  slti         s5, zero, -1768
                  srl          a3, s9, t1
                  sltiu        s9, t0, 1857
                  and          t3, t5, s7
                  srl          a7, s7, a3
                  xor          a1, a5, gp
                  nop
                  sltiu        s8, t6, 546
                  auipc        a1, 529290
                  add          a6, s4, s2
                  add          tp, a4, a7
                  xor          gp, gp, a2
                  sll          t6, s0, s4
                  lui          s9, 810987
                  sub          tp, a4, a6
                  srl          a0, s7, a7
                  and          a1, ra, s0
                  nop
                  lui          s4, 318800
                  slti         t4, s10, -727
                  addi         t6, s11, 517
                  auipc        a0, 631426
                  auipc        a7, 880654
                  add          tp, s5, t1
                  srl          a2, s0, a3
                  xori         sp, gp, 1406
                  nop
                  srai         s11, s4, 6
                  add          s4, a6, s10
                  xori         a1, t3, -300
                  xori         a4, sp, 995
                  nop
                  lui          a1, 601246
                  srl          s10, a4, s6
                  lui          s4, 387017
                  sub          s4, sp, s5
                  auipc        a3, 186946
                  or           s2, t3, a7
                  slti         a0, t4, 437
                  sra          a2, t6, a0
                  slt          a0, ra, a0
                  nop
                  or           ra, s11, t3
                  slt          t1, ra, zero
                  xor          s2, s8, s4
                  sltu         s2, gp, s1
                  sltiu        s1, a4, 448
                  nop
                  andi         s7, s11, -1671
                  sll          a3, ra, s9
                  and          a0, t1, a6
                  srl          s8, a3, s8
                  andi         a0, s2, -1610
                  srai         s9, a7, 15
                  lui          a1, 1038075
                  add          s6, s5, a0
                  add          s7, s9, t1
                  sra          a1, s6, a0
                  srai         s4, s9, 11
                  andi         a0, s6, 1029
                  auipc        s2, 783915
                  srl          t4, tp, t2
                  xori         a5, a6, -1778
                  auipc        a4, 672641
                  andi         t2, zero, 1482
                  sltiu        a1, s9, 990
                  or           ra, a0, s0
                  or           a6, t4, t4
                  ori          s6, s4, -356
                  sub          s4, a1, s7
                  nop
                  xor          gp, s6, a4
                  xori         t6, ra, 674
                  ori          sp, tp, 1639
                  ori          a0, a1, 1600
                  auipc        t0, 765550
                  xor          a5, t2, a0
                  sub          zero, a7, s10
                  sltiu        t2, s3, 485
                  xori         t6, a6, 1702
                  and          t1, s9, zero
                  slt          a5, tp, s3
                  sub          s7, s2, a7
                  xor          s2, s11, a6
                  srli         s7, s10, 4
                  ori          a5, gp, 405
                  addi         gp, t0, -459
                  and          a1, gp, s5
                  srl          a1, sp, a3
                  slli         gp, tp, 5
                  slti         a4, a6, 1854
                  xor          ra, t2, s2
                  nop
                  xor          a1, s6, s11
                  addi         s10, s10, 1310
                  slt          tp, a7, s7
                  slti         a3, a2, -690
                  srl          s4, s4, s7
                  slt          a1, tp, s8
                  sll          a4, s2, s5
                  nop
                  and          s11, a3, a7
                  nop
                  sra          s2, t6, ra
                  sub          ra, a1, t2
                  ori          a7, s9, 981
                  xori         tp, s3, 1903
                  slt          a6, t1, s11
                  sra          t6, t5, tp
                  xor          a1, a1, tp
                  sra          sp, t0, s10
                  and          s1, s2, t1
                  ori          a7, s0, -141
                  and          s11, s10, a4
                  slti         ra, a7, 95
                  srli         tp, sp, 18
                  and          s8, a0, t1
                  srai         gp, a2, 13
                  srai         s6, s10, 12
                  sltiu        t4, t3, 449
                  sub          tp, s3, s8
                  slt          s7, s1, a6
                  srai         a6, a6, 31
                  slti         sp, s10, 646
                  addi         s4, tp, 1823
                  srl          ra, sp, s0
                  srl          t1, s1, a3
                  srl          s11, t3, a3
                  sltu         a3, a1, s2
                  nop
                  addi         s11, s8, 1208
                  nop
                  xor          s4, t0, a4
                  srli         s9, s6, 17
                  or           s1, a3, t1
                  sll          s6, a7, s7
                  xor          t2, t4, s6
                  sra          tp, s1, t0
                  addi         t6, t1, 1310
                  andi         s5, s1, -953
                  add          s9, a3, s6
                  and          a1, t5, t4
                  lui          s1, 395472
                  srl          t0, s9, a7
                  srl          s1, s11, s4
                  and          s2, s9, a5
                  addi         a3, t2, 348
                  and          ra, ra, t5
                  sltu         a1, t3, s11
                  xori         t2, t6, 3
                  sra          s1, s8, s4
                  lui          a5, 845681
                  ori          s8, zero, 1923
                  slti         sp, t4, 1544
                  sltiu        t6, s4, -1602
                  sub          zero, a7, a3
                  sltu         t1, sp, t0
                  sll          s1, a3, t1
                  slli         a5, t3, 7
                  xor          sp, s11, a2
                  andi         s1, s2, 1210
                  xor          a7, a3, s8
                  srai         a0, t0, 7
                  auipc        s6, 324417
                  srai         t0, s10, 21
                  auipc        a6, 767858
                  xori         sp, ra, -113
                  sltu         zero, s0, s1
                  slti         gp, zero, 507
                  sll          s2, gp, t6
                  nop
                  lui          t1, 952954
                  lui          zero, 549415
                  srai         zero, t6, 0
                  slli         a4, t4, 22
                  lui          s4, 260859
                  slt          s5, gp, s7
                  and          a1, s0, ra
                  slti         t0, a6, -1528
                  add          s11, s6, a3
                  srl          s7, t4, s2
                  nop
                  slt          gp, s3, a3
                  addi         a6, zero, -1376
                  srli         a5, t6, 5
                  slti         t4, s1, 245
                  add          a1, t5, t1
                  slli         a6, a7, 10
                  slt          s1, s8, t5
                  or           a5, s10, s10
                  srai         a1, s1, 7
                  ori          s2, t0, 1929
                  lui          a3, 412664
                  auipc        s9, 755740
                  slt          a2, s10, s8
                  srl          a7, a1, s8
                  sltu         t0, t3, t3
                  slt          s5, a3, s11
                  auipc        a1, 402518
                  slt          s8, t6, s10
                  add          a4, a6, a1
                  andi         t3, s6, 2039
                  slt          s4, t2, t4
                  sub          a1, t0, a1
                  sub          a6, s0, s2
                  srli         s8, s3, 23
                  auipc        t1, 740978
                  sltu         a4, t6, a7
                  srai         s1, a1, 30
                  xor          s9, t6, t6
                  andi         sp, zero, 1642
                  sll          a5, t4, a5
                  slli         s11, s3, 30
                  sra          a1, s3, a2
                  sra          zero, t3, s5
                  and          s7, ra, s6
                  ori          s6, a6, 882
                  slt          s4, a1, s1
                  xori         s8, a4, -1829
                  slti         t1, a2, -710
                  or           t3, a2, a5
                  xori         t3, t0, 167
                  sltiu        sp, zero, 1838
                  slli         a0, s4, 10
                  srai         s4, s10, 12
                  ori          t1, s9, 423
                  xori         s5, a5, 581
                  xori         s8, s5, -147
                  lui          s8, 497526
                  ori          a2, s2, 1027
                  sll          a7, s10, s11
                  or           s2, a1, gp
                  nop
                  sra          sp, s3, s7
                  slli         a5, s4, 4
                  slti         a5, s3, -1967
                  sll          s11, tp, a7
                  srl          t4, a2, a5
                  srai         a7, s8, 17
                  lui          s7, 15565
                  sll          s2, a6, a3
                  nop
                  ori          sp, t1, 666
                  andi         t0, s8, 501
                  slti         gp, gp, 1937
                  slt          a2, zero, s3
                  add          gp, s7, a2
                  srli         gp, t2, 12
                  nop
                  slti         t0, tp, 1320
                  srl          s10, s8, s0
                  and          a1, s2, a5
                  sltiu        t6, a5, 625
                  and          t4, s8, t5
                  sltu         t6, s8, s11
                  or           t1, s4, s5
                  slt          ra, a0, s5
                  srai         a5, a7, 6
                  slti         t1, s4, -1668
                  slt          t2, t2, a6
                  slt          zero, s3, a4
                  slti         s9, t5, 1148
                  lui          t4, 884127
                  sll          t0, ra, ra
                  xor          a3, s8, a6
                  addi         s9, a0, -1051
                  auipc        s10, 1035514
                  andi         a3, a2, 1979
                  sltu         s11, a3, t0
                  xori         a3, s4, -81
                  nop
                  ori          a0, a0, -105
                  ori          t3, gp, -1398
                  xori         sp, a3, -1047
                  srai         a4, t2, 26
                  sra          s6, sp, tp
                  addi         s8, a0, 1568
                  addi         t4, a6, 1840
                  nop
                  srl          a0, a1, s7
                  or           ra, s4, s8
                  sltiu        s4, a3, 611
                  srl          a2, s5, a6
                  and          a2, t2, t5
                  or           t0, s0, s11
                  sub          tp, a6, s0
                  sltiu        t2, a2, 1265
                  srl          s11, a2, s0
                  slt          t6, s5, a0
                  sub          s11, t0, gp
                  srl          s10, s8, t2
                  sub          s5, a7, zero
                  nop
                  and          ra, s3, s9
                  add          a3, s2, s9
                  srl          t3, s5, a7
                  lui          s4, 141697
                  srl          s10, s9, sp
                  sltiu        t1, t6, 164
                  sub          zero, t4, s7
                  xori         s1, a3, -1765
                  sll          a5, t0, a1
                  andi         s10, ra, 924
                  xor          t0, tp, s5
                  nop
                  ori          a7, a5, 1546
                  sra          a4, s2, a7
                  lui          ra, 745284
                  add          a7, t3, t5
                  add          s2, zero, s5
                  xor          zero, s11, a2
                  sll          a4, a7, t0
                  ori          s4, s0, -580
                  xor          gp, t0, a6
                  srl          a7, a3, gp
                  srli         a5, a4, 5
                  slti         ra, sp, 490
                  xori         a7, s0, 1455
                  ori          sp, a0, -976
                  and          s10, a7, a1
                  sltiu        a6, a3, -602
                  srli         sp, tp, 6
                  sll          s7, s3, s9
                  xori         s8, a7, -1779
                  sll          s7, t1, s0
                  slt          s11, s2, s6
                  lui          t1, 958230
                  ori          a0, s10, 291
                  ori          t6, a4, 1069
                  andi         s7, s1, 819
                  andi         s6, t4, 1165
                  and          a5, a6, a6
                  srl          s9, zero, s5
                  lui          zero, 882511
                  sub          a6, s1, s2
                  slti         tp, s4, -792
                  sltiu        s1, s11, 1150
                  nop
                  slli         s5, s6, 10
                  srli         t0, zero, 31
                  addi         s4, gp, 35
                  xori         t2, s4, 529
                  sra          a2, a7, gp
                  srl          t4, a3, t0
                  xor          a2, t5, gp
                  srai         sp, t4, 19
                  sltiu        s5, tp, 931
                  lui          a3, 345486
                  slli         ra, tp, 6
                  add          a5, tp, s10
                  srli         a1, s9, 6
                  ori          s1, s7, -2004
                  and          s4, ra, a7
                  or           t2, a5, a7
                  nop
                  sltiu        a2, a6, -1182
                  sra          a0, s0, t1
                  sra          zero, t4, s11
                  slli         t4, t6, 7
                  andi         t0, t3, 1365
                  addi         t0, s9, -1405
                  sub          s11, s11, s7
                  add          t4, s4, a1
                  slti         s7, t2, -1186
                  lui          t2, 338964
                  sll          a5, s11, t3
                  xori         a6, s10, 1755
                  sltiu        t0, s11, 856
                  sltu         a5, a5, s4
                  xor          zero, s5, a6
                  xor          t6, a2, a2
                  lui          t4, 731280
                  addi         s7, s4, -385
                  slt          a4, s2, sp
                  sub          s7, s2, ra
                  andi         a7, a1, -1199
                  addi         a6, s7, 440
                  ori          s8, t6, -713
                  and          s8, t2, s2
                  or           gp, sp, s9
                  srli         sp, s5, 22
                  slti         a3, sp, 1293
                  sltu         a4, t6, t1
                  sub          s8, a6, s2
                  sub          a5, s4, sp
                  sub          a6, s7, t1
                  srli         a7, s2, 21
                  srli         a6, s9, 13
                  sltiu        a2, s7, -153
                  ori          a2, s6, -823
                  sub          t6, s11, a1
                  and          zero, a3, s1
                  ori          s7, s1, -800
                  slli         a3, t4, 27
                  addi         s2, s9, -1867
                  srli         a6, a7, 2
                  add          a5, a0, s4
                  or           tp, s0, s1
                  and          s6, s7, s5
                  sub          a6, a4, a3
                  auipc        s4, 122281
                  addi         a7, s5, 1927
                  sll          gp, t5, a7
                  and          tp, a3, ra
                  auipc        s1, 351977
                  addi         s4, t1, -372
                  slt          a3, s11, t2
                  sltiu        s7, t3, -1697
                  slli         t1, t4, 1
                  lui          s10, 854001
                  sra          s8, a5, t5
                  sltiu        a7, t3, 528
                  xor          s11, a2, s7
                  lui          zero, 381969
                  sra          t6, a6, ra
                  ori          s11, s1, 911
                  srli         a0, gp, 23
                  sltu         s8, a1, s8
                  sltu         s7, s6, s1
                  add          a4, s11, t6
                  sltu         sp, gp, s3
                  ori          s7, t5, -395
                  sltiu        s5, a4, 1799
                  nop
                  auipc        s8, 595511
                  xor          a3, sp, a5
                  or           gp, s5, ra
                  srl          t2, a0, a3
                  xori         sp, a1, 2027
                  xori         s6, s10, 695
                  sltiu        a3, s2, 141
                  slti         a1, s2, -797
                  slti         s9, a2, -1330
                  srai         t6, s2, 28
                  auipc        s11, 496216
                  addi         t3, ra, 1386
                  sll          a6, s11, s7
                  xori         s9, s0, 248
                  andi         s10, t6, 928
                  addi         a0, s2, -799
                  srai         t2, s10, 17
                  addi         a6, s10, 1988
                  slt          t2, a3, s6
                  and          zero, s9, ra
                  srl          a1, t3, tp
                  xor          s1, s1, s9
                  auipc        gp, 825794
                  or           a7, t1, zero
                  srai         a1, s0, 22
                  andi         sp, a2, 648
                  sub          t1, s8, a4
                  slt          s9, s8, a5
                  sub          a4, s5, a6
                  addi         t0, a0, 184
                  li           s4, 0xf976bb3d #start riscv_int_numeric_corner_stream_6
                  li           t6, 0x0
                  li           a2, 0xffffffff
                  li           a7, 0xda087597
                  li           a6, 0x1e14a165
                  li           a5, 0x21f3436c
                  li           s1, 0x0
                  li           s10, 0x0
                  li           s5, 0x0
                  li           t3, 0xffffffff
                  nop
                  add          a5, s4, a7
                  sub          s1, a5, a7
                  add          t6, s10, a5
                  lui          s1, 289526
                  sub          s10, a7, a2
                  auipc        s5, 1048128
                  sub          a5, a6, t3
                  addi         a7, a2, -449
                  sub          a7, a2, a5
                  addi         s5, t6, 232
                  nop
                  nop
                  lui          s5, 82474
                  addi         a5, a7, 1961
                  sub          a6, t3, a2
                  add          a2, s10, a2
                  lui          t3, 896927
                  sub          s1, a2, s5
                  lui          s10, 776513
                  nop
                  sub          s4, s10, a7
                  lui          a5, 270153
                  auipc        s1, 676899 #end riscv_int_numeric_corner_stream_6
                  sub          s5, t6, a0
                  lui          a1, 320577
                  lui          t3, 139678
                  andi         s7, tp, -1913
                  sub          gp, a0, a6
                  slt          t4, t2, a3
                  sltiu        tp, s1, -1216
                  ori          s1, t5, 1673
                  nop
                  addi         a3, s11, -1041
                  srli         t1, s7, 26
                  auipc        tp, 708405
                  xori         a5, zero, -1514
                  slt          ra, a1, s11
                  sll          a3, a1, s10
                  srai         t0, a1, 0
                  xori         s2, t3, 414
                  addi         s7, s10, -1781
                  xor          a5, gp, s7
                  auipc        s5, 523146
                  sra          t2, s5, s2
                  xor          a6, s5, t2
                  sll          s2, a3, s7
                  ori          a6, t2, -1369
                  slti         s7, a2, 1060
                  sltiu        ra, t0, -1819
                  srl          t6, a4, s10
                  lui          a1, 793533
                  xor          tp, a3, s8
                  slt          a0, s1, a2
                  slli         s2, a3, 13
                  lui          a5, 639885
                  or           t0, ra, s9
                  srl          a7, a5, t0
                  add          a4, t5, a4
                  ori          zero, sp, 1741
                  auipc        t6, 699458
                  slti         s6, zero, -2038
                  nop
                  lui          a6, 378560
                  slti         t3, t2, -249
                  auipc        s8, 598623
                  xor          s10, s11, t0
                  ori          t4, s5, -1831
                  sltu         a3, s4, a6
                  ori          tp, t3, -96
                  sll          ra, zero, s8
                  slt          gp, a1, s5
                  slt          s8, s3, s8
                  lui          t4, 1022922
                  ori          tp, a7, 1364
                  ori          a5, s11, -1923
                  addi         a0, gp, 862
                  xori         a7, a6, -423
                  srai         tp, s5, 9
                  add          s2, s11, s9
                  auipc        a2, 198012
                  sll          s5, s11, zero
                  srai         gp, s10, 0
                  addi         t2, t1, 634
                  ori          t3, t4, -1609
                  andi         a0, s6, 5
                  auipc        s11, 710142
                  slli         t6, a2, 30
                  slt          zero, s1, s5
                  auipc        sp, 540613
                  xori         s11, t3, -1218
                  and          s9, ra, s9
                  slt          tp, t3, s10
                  srai         s5, t3, 21
                  slli         a0, s9, 1
                  srl          a1, s4, a1
                  srl          a5, s4, s2
                  srai         t2, s3, 2
                  slli         t3, t5, 16
                  sll          t1, s4, s3
                  xori         t0, t5, 236
                  sll          s11, t1, t1
                  sra          t6, a3, s10
                  and          ra, s9, t3
                  and          s10, a2, t0
                  srl          s6, s9, s2
                  lui          t2, 483281
                  sra          s7, s7, t6
                  slli         s4, a3, 7
                  srl          gp, s9, s8
                  xori         tp, a4, -428
                  add          s5, s1, s7
                  srai         t1, s6, 31
                  srai         zero, a0, 3
                  nop
                  sll          a5, zero, a4
                  auipc        a3, 313313
                  sltu         a4, s2, t3
                  lui          sp, 184828
                  ori          s7, a1, 973
                  sra          s4, a1, s0
                  auipc        a4, 547980
                  srl          s2, ra, s11
                  ori          s11, s4, -1089
                  addi         gp, t2, 1105
                  ori          t2, s1, 1091
                  slti         gp, s9, 785
                  sll          s5, a1, s1
                  slti         tp, a7, 623
                  xor          a6, t4, a0
                  auipc        t3, 212005
                  xor          ra, a3, s3
                  srli         t2, s2, 12
                  srli         gp, a4, 14
                  andi         a7, gp, -1120
                  slti         t3, gp, -773
                  ori          s6, s5, -1742
                  slt          ra, s3, a3
                  add          s9, zero, s2
                  slli         s2, s5, 7
                  xori         s6, s7, -971
                  srli         t1, s11, 21
                  xor          s1, ra, t2
                  slt          a6, s10, s9
                  nop
                  andi         a1, t4, -850
                  srai         gp, a2, 9
                  andi         sp, s7, -1263
                  auipc        a0, 679785
                  lui          s7, 498648
                  sub          zero, t4, a2
                  srl          t2, s10, tp
                  xori         t4, t4, -1873
                  slli         tp, s2, 29
                  sub          a3, tp, s7
                  add          gp, s9, gp
                  sra          s4, s5, a3
                  sub          t4, t5, t3
                  nop
                  andi         s1, a4, -435
                  slt          gp, s2, a0
                  sltu         sp, s6, a1
                  sll          t0, t6, t4
                  lui          a3, 1017209
                  lui          tp, 242040
                  srl          s2, t5, gp
                  addi         a2, a4, -544
                  auipc        s4, 603548
                  srai         tp, s8, 30
                  slti         sp, a1, -1151
                  ori          s9, s11, 1795
                  xori         a6, t1, -1338
                  srl          tp, s7, s6
                  auipc        a0, 838535
                  sltu         a3, a3, s3
                  ori          a5, t3, -1481
                  or           s1, s6, s8
                  or           a0, s4, a2
                  srl          a7, a3, s11
                  sra          a2, s5, s11
                  slli         a2, s7, 18
                  sra          s5, s5, a5
                  slti         a5, s1, 1511
                  sra          a5, a4, a2
                  or           s11, t4, a6
                  slti         a3, zero, -805
                  nop
                  sub          t4, s6, t4
                  auipc        s7, 963507
                  sltiu        t2, a5, -830
                  xori         a5, zero, -1553
                  ori          s2, t4, 400
                  slti         zero, s8, -280
                  or           tp, sp, t3
                  xori         t2, s0, 1919
                  auipc        t2, 624030
                  sltiu        a7, s7, -1633
                  xor          s6, t3, s0
                  add          t6, t1, a4
                  sra          t1, s2, t6
                  srai         a0, a0, 0
                  slli         s5, s11, 19
                  ori          t4, t0, -1805
                  addi         a4, s6, -443
                  or           s2, t4, s2
                  slti         t2, t6, 1105
                  lui          sp, 488112
                  addi         tp, s0, -607
                  srai         zero, t5, 16
                  and          s6, s5, s10
                  andi         s9, s11, 795
                  sra          s6, zero, t2
                  sll          a4, sp, s6
                  srai         s5, s5, 3
                  andi         t6, a3, -1255
                  and          s6, s6, t3
                  or           s1, s10, s2
                  xori         s2, s2, 1709
                  sltiu        a2, s5, 842
                  srl          a5, s9, t0
                  auipc        tp, 58888
                  xori         a7, ra, 421
                  auipc        s11, 319570
                  or           t2, s9, s9
                  addi         s6, t0, 511
                  auipc        a1, 881931
                  lui          s10, 563212
                  sll          t0, a2, a0
                  sltu         s10, s7, t2
                  srl          s10, t3, a6
                  sltu         s11, s1, a6
                  and          a7, s11, zero
                  slti         s4, t1, -674
                  and          t0, t3, a4
                  nop
                  sltiu        a2, a2, -1409
                  sltu         s4, s3, s9
                  ori          t6, s2, -540
                  srli         a3, t5, 28
                  xor          a1, s7, a7
                  srl          s1, s3, s6
                  srai         t6, s2, 15
                  srl          a4, a3, a6
                  or           s8, a3, t3
                  slti         ra, sp, -523
                  nop
                  slti         s8, a7, -1412
                  addi         a4, ra, -379
                  xor          s11, t2, s1
                  srai         s4, ra, 9
                  sra          a2, zero, a6
                  srl          s1, t5, gp
                  lui          s6, 438341
                  srli         a2, a7, 7
                  sub          a1, t1, s9
                  andi         s7, t2, 1603
                  slli         a1, t5, 29
                  slli         t4, t6, 7
                  srli         t6, s1, 7
                  sltiu        s5, zero, 1365
                  slti         t4, s11, -181
                  srl          s8, a6, s7
                  or           gp, s9, t6
                  srai         s4, s0, 6
                  sltu         gp, s5, t5
                  sub          t6, sp, ra
                  add          gp, s8, s5
                  srl          ra, a7, s0
                  srli         s10, a3, 13
                  srli         t3, a5, 15
                  andi         a0, s11, -1904
                  ori          a4, s5, 1911
                  nop
                  slli         a7, a7, 12
                  sll          tp, ra, s5
                  srli         gp, s2, 17
                  srli         a4, t4, 2
                  sltiu        s7, gp, -1713
                  or           tp, a7, s4
                  andi         t2, s1, -1432
                  nop
                  slt          a3, ra, t0
                  sll          s2, ra, tp
                  sub          s10, a5, s9
                  xori         s9, s2, -1504
                  srl          s2, a7, a7
                  srai         s7, s10, 26
                  slli         zero, t2, 15
                  srai         a5, t0, 14
                  sub          s10, t3, t2
                  add          s5, s11, t1
                  sub          tp, t0, a1
                  add          s8, s11, s1
                  sll          gp, t0, a0
                  auipc        s1, 362503
                  sra          t2, t3, s9
                  ori          a0, t0, -1066
                  auipc        a0, 971018
                  srli         s2, a1, 2
                  xori         a6, a6, -609
                  and          a2, s7, t0
                  srai         a3, s9, 27
                  sra          t0, a4, a5
                  ori          t2, t6, 751
                  xor          a1, a3, a1
                  sra          s1, s5, s7
                  sltiu        s2, s7, -1347
                  sra          a4, t1, s7
                  sltu         t1, s8, gp
                  add          tp, s2, t6
                  and          a3, t0, a6
                  slti         s10, a0, -1007
                  sll          s5, a2, s4
                  slti         a5, a3, -73
                  slt          a0, s7, s11
                  andi         a7, s1, 1475
                  and          ra, s1, a6
                  nop
                  slti         gp, t6, 1885
                  sub          sp, a0, s3
                  sll          a4, tp, t2
                  sltu         s7, a2, a3
                  slti         t6, a1, 936
                  sra          t4, s11, s6
                  srai         t2, t3, 11
                  addi         a3, tp, -797
                  xori         a0, s5, 627
                  addi         s9, s7, 1474
                  nop
                  slli         a3, s3, 14
                  srli         a1, a6, 28
                  sltiu        t0, a5, 1731
                  srli         s8, s2, 16
                  sltiu        s4, s3, 448
                  srai         s4, s4, 17
                  sltu         sp, ra, a5
                  slt          a1, s1, t3
                  xori         t3, t3, -377
                  srli         sp, a6, 9
                  and          s10, a3, a6
                  and          s2, s1, a6
                  ori          ra, s1, -1733
                  xor          t0, a0, s7
                  srai         s11, s5, 29
                  slt          s5, s2, s6
                  or           a6, s8, t3
                  sltiu        t2, t5, 1033
                  and          t6, t0, s7
                  sltu         a2, t1, s5
                  sub          gp, s10, a4
                  andi         ra, s9, -1991
                  xori         s9, s7, 101
                  nop
                  sra          s9, t1, s7
                  slli         a7, a7, 24
                  xori         a0, a6, -1027
                  srl          t2, t5, t1
                  xori         t0, t6, -1816
                  sll          s2, a2, a4
                  add          t4, s0, s2
                  sra          tp, a4, s0
                  ori          s6, t1, -1872
                  srl          t1, zero, s6
                  srl          a2, ra, a3
                  srl          s11, s8, t3
                  sltiu        gp, t3, -1469
                  sll          t3, ra, zero
                  auipc        s5, 947176
                  srli         s10, gp, 7
                  andi         tp, a6, -276
                  ori          s7, a1, 42
                  srai         t0, a7, 17
                  or           a4, sp, s8
                  lui          tp, 682542
                  ori          a7, t4, 2014
                  sltu         ra, a4, s8
                  and          t2, a5, a6
                  or           a5, s6, sp
                  sra          t4, s11, a2
                  xor          ra, t3, s5
                  srl          t1, sp, s9
                  add          a5, t0, ra
                  andi         a7, t0, 696
                  nop
                  sltiu        s6, t4, 831
                  add          a0, zero, s9
                  srl          t0, t2, sp
                  sltu         ra, sp, t3
                  addi         t0, a6, 926
                  and          s6, a1, a0
                  slti         a7, s5, -1251
                  sll          gp, t3, s11
                  xori         a6, a1, 1984
                  srli         s11, a2, 17
                  srli         s1, tp, 16
                  slti         zero, sp, 247
                  slt          ra, t4, a7
                  slli         a3, a5, 22
                  srli         s11, t3, 2
                  sub          t3, a4, s6
                  nop
                  sll          t6, s9, s11
                  or           ra, s9, s3
                  sub          sp, t1, s11
                  sltiu        s5, sp, -94
                  sub          a0, s8, a1
                  lui          a1, 962358
                  addi         t4, s10, 330
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s11, 0x80000000
                  li           a1, 0x304778b9
                  li           tp, 0xffffffff
                  li           s8, 0xffffffff
                  li           a0, 0xffffffff
                  li           t4, 0x0
                  li           a4, 0x8786a3e3
                  li           sp, 0xffffffff
                  li           a3, 0x9a6405fa
                  addi         a4, s11, -1075
                  add          s11, s8, s11
                  nop
                  sub          a4, tp, s8
                  auipc        a2, 360676
                  addi         a0, s11, -632
                  nop
                  addi         a1, a1, 1277
                  addi         a4, a2, -1299
                  auipc        a1, 398024
                  auipc        a1, 113243
                  lui          s11, 401332
                  add          a1, a1, a4
                  nop
                  sub          s8, s11, tp
                  addi         s11, a4, 1156
                  sub          a2, sp, tp
                  addi         tp, a3, -683
                  sub          a3, sp, a2
                  add          a2, a1, s8
                  auipc        a0, 921884
                  addi         s11, a3, 1687
                  auipc        tp, 152740
                  add          s8, s8, t4
                  nop
                  auipc        tp, 403524
                  addi         s8, a1, -1291
                  sub          tp, tp, a1 #end riscv_int_numeric_corner_stream_5
                  auipc        ra, 716766
                  xori         s2, a7, -541
                  addi         s9, a0, -1844
                  or           a2, a6, s7
                  sra          t0, s1, t3
                  slli         a0, a2, 6
                  sll          s4, a7, s1
                  andi         s7, a1, 1109
                  andi         s10, s1, -1266
                  auipc        s7, 17043
                  sltu         a2, a2, s9
                  lui          a1, 527819
                  sltu         t0, a0, a3
                  addi         tp, a3, -1426
                  sub          zero, t3, s1
                  xor          a3, s8, s2
                  srli         s9, zero, 3
                  sltu         t4, sp, s1
                  sll          ra, s8, t0
                  or           a1, s7, s9
                  andi         t2, a6, -632
                  srai         s2, s8, 21
                  auipc        a6, 970971
                  srai         t3, t4, 4
                  addi         t0, ra, 577
                  srli         gp, a5, 4
                  andi         tp, s9, 100
                  and          s11, a0, a3
                  slli         a1, a7, 30
                  sltu         a1, a3, tp
                  srai         s10, s9, 5
                  xori         a0, gp, -1486
                  srl          a1, s9, a1
                  lui          a6, 916562
                  sll          a5, t4, a5
                  and          s10, a5, sp
                  or           a4, s2, zero
                  and          zero, a5, t2
                  and          s4, a6, s2
                  auipc        a5, 808600
                  srl          a5, s6, a1
                  addi         t6, a4, -525
                  addi         zero, a2, 1968
                  and          ra, s2, t5
                  nop
                  addi         tp, s9, 210
                  srai         a2, ra, 5
                  slt          t2, a5, a5
                  srai         s8, s7, 4
                  sub          t3, gp, s7
                  sltu         s9, a7, a1
                  slti         s11, a1, 826
                  sub          t6, s2, s3
                  xor          zero, s11, zero
                  xor          s4, s6, t2
                  srli         s10, a3, 26
                  and          s6, s2, s5
                  sll          zero, zero, t4
                  lui          s7, 302913
                  srli         a2, a3, 22
                  nop
                  sltu         s2, s2, s7
                  lui          s7, 109216
                  xor          t2, a2, a7
                  srli         a7, sp, 4
                  srli         s10, a4, 17
                  slti         zero, a3, -952
                  xori         s1, s3, -467
                  srli         s4, zero, 20
                  or           gp, a2, s9
                  srl          s10, gp, a4
                  addi         a4, s0, -1886
                  auipc        sp, 771337
                  sub          a7, a1, t3
                  addi         s4, s8, 155
                  sra          s10, s8, t3
                  sltiu        a1, t2, -1266
                  sra          t0, a5, a6
                  auipc        a5, 183783
                  sub          s4, a3, a5
                  xori         s6, s9, -202
                  addi         t1, t4, 407
                  or           a0, s1, s3
                  xori         a7, a3, -853
                  ori          s8, s9, 1263
                  andi         a5, s7, 288
                  sltiu        t1, a6, -70
                  addi         a6, s4, 594
                  xor          a6, a5, s2
                  slli         s1, s11, 23
                  sra          a6, gp, a6
                  auipc        t2, 938499
                  sll          a4, a6, a0
                  xori         a2, s1, 1930
                  add          a0, a6, s6
                  ori          a0, a1, 288
                  srl          sp, ra, gp
                  nop
                  sra          s8, s0, a4
                  andi         t2, a5, -1870
                  sltu         t4, t6, a0
                  addi         a5, t3, -32
                  nop
                  sub          a3, s4, gp
                  lui          sp, 1015699
                  srl          a3, s11, a5
                  add          a3, a0, t5
                  andi         a2, s1, -1878
                  sltu         ra, a5, t1
                  sub          a2, t1, s1
                  srli         a3, t3, 21
                  or           s10, s11, s6
                  srli         t6, s7, 5
                  slli         a2, s7, 9
                  and          ra, ra, s1
                  slt          s4, t0, t4
                  ori          t2, tp, 287
                  sub          a6, ra, tp
                  srai         s2, zero, 17
                  xori         zero, t5, -1083
                  sltu         a4, tp, s5
                  nop
                  lui          t3, 310258
                  sltu         s1, s0, zero
                  xor          a7, a0, a5
                  auipc        s6, 249844
                  lui          t2, 213483
                  slli         s7, s5, 17
                  auipc        t1, 52350
                  slti         ra, s0, -1756
                  addi         t6, a5, -692
                  slt          a3, t5, s8
                  xori         a1, t1, -1739
                  srli         a3, s9, 14
                  slti         t4, a5, 355
                  auipc        s2, 197
                  slli         a2, s5, 16
                  lui          a3, 979568
                  xori         zero, t6, -1739
                  sltiu        s4, gp, 269
                  auipc        s6, 883954
                  sub          t6, s4, s10
                  sltu         a4, t1, t5
                  lui          a4, 560453
                  slli         zero, a2, 16
                  addi         a1, s7, 1075
                  sra          zero, s8, ra
                  nop
                  sub          ra, t5, s3
                  xori         s8, a5, -1433
                  and          s2, gp, zero
                  slli         t0, a6, 3
                  slti         a1, t0, -620
                  nop
                  srl          zero, s3, a4
                  sltu         s8, s11, s4
                  slli         t1, s1, 23
                  or           s11, a6, sp
                  auipc        a3, 703500
                  add          s2, t0, t4
                  sltu         a2, t5, s6
                  or           t0, s11, a1
                  and          s7, a7, a1
                  nop
                  xor          s10, s4, s4
                  srli         s7, zero, 5
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s9, 0x9bf55774
                  li           t6, 0x164f4a6c
                  li           t1, 0x7cf700c2
                  li           s11, 0x3e3ba1a0
                  li           tp, 0x0
                  li           a0, 0xffffffff
                  li           a3, 0x0
                  li           t4, 0xffffffff
                  li           a7, 0xad7b2449
                  addi         a6, a3, -1832
                  nop
                  add          a6, t4, tp
                  sub          t1, s9, a7
                  sub          s11, a6, s11
                  auipc        a3, 958148
                  auipc        a3, 496594
                  addi         a6, a7, 245
                  sub          t6, t4, a3
                  add          tp, a7, a6
                  addi         a3, t1, 821
                  lui          a7, 643113
                  addi         s11, a3, 434
                  auipc        a6, 548626
                  lui          t4, 76929
                  auipc        a3, 21239
                  addi         tp, a3, 11
                  add          s11, a7, s11 #end riscv_int_numeric_corner_stream_11
                  and          a1, s4, s8
                  nop
                  or           s8, s2, s8
                  lui          sp, 277250
                  slt          s2, zero, a2
                  srl          s9, a5, a5
                  xori         a0, a2, -1400
                  andi         s9, t0, -166
                  slli         s5, a4, 18
                  andi         s6, zero, -1556
                  slti         s6, a1, 130
                  slli         sp, a4, 9
                  slti         a5, a2, -543
                  nop
                  nop
                  slt          sp, tp, gp
                  sltiu        a2, s9, -784
                  andi         a4, t2, 940
                  lui          s2, 726083
                  xor          tp, a2, a2
                  sltu         t3, gp, gp
                  andi         s1, a0, 841
                  sll          a4, s3, s9
                  slti         a2, a5, -1063
                  slt          a5, t6, t6
                  lui          s7, 767314
                  srl          a2, s10, sp
                  srli         t1, t1, 17
                  xori         t2, t1, 1016
                  sltiu        t3, s5, 1085
                  slti         a2, sp, 1374
                  ori          a2, s2, 1141
                  srai         s6, s6, 26
                  xor          t4, a3, s1
                  or           tp, s6, s9
                  slt          s11, t2, t4
                  sll          a6, a7, a3
                  sltu         a1, s0, s10
                  xori         a5, sp, 1424
                  slli         t1, a3, 19
                  slti         a3, zero, -764
                  or           s7, gp, s6
                  sltu         s4, sp, a4
                  or           a4, s4, a1
                  lui          s10, 460841
                  srai         a4, s3, 12
                  xor          s7, s9, t2
                  sub          a2, a0, a6
                  xor          t6, s11, t1
                  lui          t6, 727157
                  and          t2, a6, a5
                  sltiu        ra, s7, 1682
                  andi         a7, a6, 235
                  or           t4, t3, s9
                  sra          gp, a0, s4
                  srl          a0, t4, t2
                  sltu         a3, s2, t3
                  xor          s9, s3, s6
                  xor          s1, s0, ra
                  sltu         a4, s5, t5
                  andi         s1, t1, -778
                  andi         s8, t5, -666
                  xor          s10, s2, s9
                  slt          a7, tp, t1
                  xor          t3, s1, s2
                  add          a1, a2, tp
                  sub          t0, s6, a4
                  slt          s6, a5, s7
                  addi         a1, s10, -514
                  xor          a7, t6, sp
                  sltu         t3, t3, t6
                  srai         a5, t1, 24
                  auipc        s5, 497097
                  andi         a5, sp, 1380
                  srl          s1, a2, s4
                  sltiu        s10, t4, -768
                  andi         a6, gp, -655
                  auipc        t0, 435587
                  nop
                  slti         a3, gp, -861
                  xor          s2, s11, ra
                  andi         s2, a3, -1900
                  lui          a0, 879878
                  srl          a1, ra, s4
                  or           a2, gp, t2
                  addi         t2, t3, 871
                  lui          t4, 623245
                  slli         a4, ra, 29
                  srl          a5, s3, a1
                  slti         zero, a7, 1998
                  auipc        s9, 410123
                  and          t3, a7, s0
                  addi         t6, s11, 1856
                  srai         s8, s7, 22
                  xor          t3, t6, s0
                  sltiu        a1, tp, -1806
                  and          s5, t5, zero
                  sra          s4, s11, s3
                  and          a6, s4, t4
                  srl          s11, a2, t3
                  sra          t6, s7, s3
                  add          gp, s6, t3
                  sra          s1, t0, t0
                  srai         zero, s0, 31
                  and          a2, t5, s9
                  sltiu        s9, a5, 1746
                  srli         t4, a0, 25
                  xori         zero, t2, 223
                  xori         t6, t6, -1566
                  sltu         t0, s8, s0
                  andi         gp, t6, -1662
                  nop
                  auipc        t2, 655613
                  slt          s7, a0, s7
                  and          t6, t3, t1
                  sltu         s1, zero, t6
                  slli         a0, a1, 7
                  slti         t6, a4, -117
                  xori         s2, a4, 1894
                  xor          a4, s5, a7
                  slti         a4, t2, 1179
                  ori          a0, t0, 517
                  and          s4, sp, a3
                  srai         t1, a1, 23
                  srl          s2, s2, a3
                  nop
                  slli         a0, ra, 6
                  sra          t6, s9, a2
                  and          s5, s0, s0
                  slt          s6, gp, t4
                  xor          s7, a5, s1
                  slli         sp, s0, 3
                  addi         tp, t4, -364
                  srai         s2, s3, 1
                  sltu         s1, zero, a1
                  sltiu        t0, s10, 68
                  slti         t4, sp, 2024
                  add          gp, s8, tp
                  sltu         s2, a6, s3
                  slt          t4, s4, zero
                  add          sp, a2, s6
                  slt          s1, t0, s6
                  sll          zero, t2, s9
                  xor          t0, s1, t1
                  slli         s2, s4, 30
                  xori         s5, a0, 803
                  slt          t0, s6, s9
                  srl          sp, s4, ra
                  slti         a6, s3, 83
                  and          s7, s0, s6
                  xori         a0, s2, -1347
                  ori          s5, a3, 726
                  srai         a0, t2, 22
                  auipc        t0, 647925
                  and          tp, s8, s11
                  addi         a7, s2, -1481
                  sra          a6, s11, s9
                  slli         t6, t6, 12
                  addi         sp, s11, -1085
                  srai         a7, s3, 4
                  and          t1, a5, a5
                  srli         t0, s8, 12
                  xori         a5, a4, 1421
                  sll          t1, t2, ra
                  auipc        s5, 445348
                  slt          s8, tp, s9
                  srl          s7, s8, s9
                  srl          a2, t0, t6
                  or           a1, a2, s0
                  add          a7, gp, tp
                  lui          s4, 536856
                  srli         a1, s0, 5
                  sub          a0, t1, t0
                  xori         sp, a1, 40
                  xori         t4, a0, 1025
                  xori         sp, s6, 883
                  or           s1, a3, t0
                  addi         a6, a2, -1237
                  auipc        s4, 535022
                  srai         a1, s9, 24
                  lui          s6, 930381
                  slt          a7, tp, ra
                  and          gp, s7, ra
                  or           t1, s7, t1
                  xor          a6, ra, s4
                  srli         tp, zero, 28
                  sltu         s9, s2, s3
                  slli         a2, t3, 10
                  xor          sp, sp, t6
                  add          s8, gp, s5
                  or           tp, a4, s8
                  addi         a7, s4, 449
                  sub          zero, sp, tp
                  srai         gp, a3, 0
                  slt          s8, a2, t4
                  sll          a4, a4, s1
                  and          s4, s0, s3
                  xori         s7, tp, -2025
                  sltiu        s11, a3, -1391
                  andi         s4, a6, -890
                  ori          s7, a2, 1571
                  srai         a1, s11, 4
                  slli         tp, a3, 3
                  sub          tp, zero, s4
                  sll          s8, s1, s11
                  or           t4, s6, s7
                  sltiu        s5, t3, 1331
                  ori          a1, s3, -1658
                  auipc        zero, 1027143
                  srli         t3, a5, 24
                  xor          t1, ra, gp
                  sub          a3, s9, s2
                  sra          a0, s6, t6
                  nop
                  andi         gp, s7, -1532
                  slti         t1, ra, -1436
                  sltu         s6, s6, s1
                  lui          a4, 38199
                  slti         t3, t5, 1447
                  lui          ra, 798814
                  srli         s5, s11, 30
                  ori          s4, t5, -1433
                  sll          a5, a4, s2
                  srl          s8, zero, s1
                  slli         a5, t6, 14
                  addi         a2, t3, 1184
                  add          a5, s3, a1
                  or           a0, t2, s7
                  auipc        s1, 305568
                  auipc        gp, 802279
                  sub          s5, s2, a4
                  and          t0, s1, s10
                  slt          a6, t0, a2
                  xori         s11, t1, 1856
                  srli         s1, t6, 27
                  andi         tp, s9, 1064
                  sltu         s1, s5, s1
                  xori         t3, tp, -737
                  lui          s7, 996429
                  nop
                  xori         a2, sp, 1145
                  xor          a0, a7, s6
                  sltu         ra, s1, a6
                  srl          s2, t5, t2
                  and          t6, sp, a2
                  auipc        s1, 62219
                  addi         a0, s5, -459
                  slti         a1, s7, -116
                  and          s1, s0, t6
                  srai         s5, t1, 31
                  slti         a1, a0, -838
                  sub          t0, a1, sp
                  ori          s10, s5, -1705
                  andi         t0, tp, -1186
                  lui          a5, 243662
                  lui          s10, 897880
                  sltiu        s6, a6, 547
                  sra          a5, s6, s11
                  nop
                  srai         s6, a0, 27
                  nop
                  lui          s9, 58447
                  and          gp, a6, a3
                  or           sp, a0, a6
                  srli         t1, gp, 17
                  nop
                  sltiu        s8, a7, -1132
                  sltiu        a1, a3, -195
                  xori         s8, a5, 279
                  slli         tp, s7, 8
                  slti         a2, t1, 1061
                  and          t1, t6, s2
                  sra          s11, a5, t6
                  srli         t2, s8, 0
                  or           t1, t2, tp
                  andi         s6, s4, -1440
                  slti         t6, t1, 1725
                  srl          s5, ra, a6
                  slt          a6, s8, t5
                  srl          a7, t2, t6
                  lui          sp, 815939
                  srai         a4, zero, 17
                  slli         t6, t1, 13
                  slt          gp, a3, t5
                  xori         t3, a2, -746
                  sub          t2, s5, a7
                  ori          s6, s8, 820
                  sltu         ra, sp, s2
                  addi         t6, tp, -537
                  xori         s11, s3, 1126
                  sub          a6, a0, s8
                  srli         a7, s4, 5
                  sub          s8, s2, s8
                  addi         ra, sp, -1418
                  sub          s11, a3, s6
                  ori          s8, s0, -1062
                  srai         a0, s7, 7
                  andi         a1, s6, 573
                  sra          s2, zero, t5
                  or           t0, t4, gp
                  xor          s2, s9, a6
                  sra          a2, t5, t0
                  xori         s2, a6, -1091
                  sra          zero, a1, a6
                  sll          a5, s4, a4
                  sra          s7, t1, a1
                  xor          zero, ra, ra
                  slli         t4, s8, 23
                  lui          t0, 783093
                  srl          gp, s2, zero
                  sltu         t3, a4, t4
                  xor          t4, s7, tp
                  slti         a1, s10, 1791
                  and          s8, a0, t6
                  srli         s11, s11, 3
                  ori          ra, sp, 903
                  and          a5, t0, a4
                  srl          sp, s8, s0
                  slti         sp, t0, 1465
                  lui          t4, 912682
                  and          t0, a4, s8
                  srli         s10, a3, 16
                  srli         s7, ra, 3
                  xori         a7, a6, 737
                  lui          s5, 687057
                  lui          s11, 159890
                  lui          zero, 1013543
                  slli         sp, a2, 4
                  slli         a1, t1, 4
                  addi         a3, a1, 82
                  slli         s11, t1, 1
                  addi         s10, t2, -29
                  auipc        t0, 446446
                  auipc        s4, 764884
                  srai         t3, s9, 20
                  sub          s8, sp, a2
                  slt          a1, a5, t5
                  and          a4, a0, s7
                  auipc        s7, 107738
                  sll          t0, s10, a1
                  srl          t3, a2, s0
                  ori          a4, s10, 826
                  srai         tp, t1, 2
                  sll          a2, s3, s8
                  srai         s1, s3, 26
                  slti         a4, s6, -775
                  sltiu        gp, s9, 1582
                  or           s2, a4, s9
                  and          t6, s1, sp
                  lui          a1, 457397
                  sltiu        ra, s5, -874
                  add          s6, zero, t6
                  srl          t6, t0, t2
                  srli         a1, a2, 1
                  srl          t4, a1, a4
                  or           s2, tp, s5
                  srai         s1, a1, 21
                  add          s7, a1, ra
                  and          gp, s11, s11
                  or           t2, s10, t4
                  srl          t6, s0, a6
                  and          s6, t0, ra
                  or           gp, zero, t5
                  srl          t6, s4, t3
                  andi         a6, a7, -137
                  sll          sp, a1, s1
                  srli         tp, s10, 13
                  ori          a5, t0, -1649
                  sltiu        s8, s4, 1862
                  sub          a3, s6, s7
                  sub          t6, a4, a4
                  sll          s8, t5, sp
                  add          s6, s1, s1
                  auipc        a7, 1022962
                  slli         a1, a5, 28
                  auipc        s2, 488580
                  addi         a6, ra, 1877
                  srl          a1, s8, s7
                  add          s2, ra, a0
                  sub          t1, ra, s0
                  slli         gp, s5, 24
                  ori          gp, t2, 1964
                  slli         zero, t5, 13
                  sltiu        a0, a2, 318
                  sltu         t6, sp, t2
                  add          a0, a1, a3
                  srli         s7, t4, 23
                  ori          ra, t0, 1578
                  sra          ra, a6, s2
                  andi         s8, a2, 1881
                  nop
                  addi         s7, t3, -1848
                  or           ra, t2, t2
                  xori         ra, s10, -1128
                  ori          ra, s4, -855
                  ori          zero, t0, 1410
                  auipc        a4, 346654
                  srai         t4, sp, 25
                  xor          a2, s0, s0
                  sll          gp, s0, t0
                  lui          s1, 996416
                  xori         t6, a2, 1913
                  and          zero, s2, t4
                  and          t1, t2, s3
                  sltu         t4, s2, s8
                  sltiu        a7, s4, 687
                  sltiu        a6, t4, 1262
                  sll          ra, s6, t6
                  add          a0, a5, gp
                  auipc        sp, 112956
                  nop
                  srai         s2, t3, 31
                  sra          s9, a3, a3
                  slli         ra, t1, 3
                  sltu         zero, t0, a1
                  or           t6, s9, s3
                  and          a1, s10, t4
                  slti         s5, s6, -986
                  andi         s1, s2, 1529
                  ori          gp, a2, -1602
                  slli         a6, t2, 14
                  auipc        t4, 688532
                  srai         s6, s5, 5
                  sra          zero, a5, a1
                  add          a1, a6, s6
                  ori          gp, a5, 1214
                  addi         t3, s2, 437
                  andi         s10, s2, -1434
                  ori          sp, t4, -979
                  addi         s10, s1, 855
                  ori          s6, s2, -24
                  ori          a1, s10, 7
                  add          tp, t3, a5
                  slt          a3, s0, s8
                  sltiu        t4, s10, -851
                  slt          s4, s10, ra
                  lui          s11, 536116
                  xor          s10, t0, a5
                  sltu         a6, s3, a3
                  sll          gp, t6, s2
                  sub          t6, t5, sp
                  slt          t4, t6, s11
                  sub          a1, zero, s3
                  andi         s2, t2, 1912
                  add          a0, s10, s5
                  slli         gp, t1, 9
                  slli         a7, t2, 15
                  sub          s7, a1, s7
                  xor          s5, a7, ra
                  xor          a6, s7, s6
                  xor          t0, t5, sp
                  srl          s6, a2, s1
                  sll          s5, s4, zero
                  or           t2, s0, s10
                  auipc        a6, 784169
                  nop
                  sltiu        t2, s10, -1880
                  sra          zero, t1, s2
                  slti         s5, a7, -374
                  nop
                  xori         zero, s5, -441
                  addi         t0, s0, -376
                  srli         a7, s3, 30
                  slt          s10, a0, s3
                  slti         a6, a4, 893
                  xor          s10, a7, s6
                  ori          t4, a6, -100
                  ori          a6, s3, 413
                  and          s2, a4, s6
                  slti         s2, zero, -832
                  slli         s5, s8, 21
                  addi         a5, t6, -86
                  auipc        s1, 377503
                  addi         a3, s4, -575
                  srai         tp, a7, 20
                  srl          s9, s3, s8
                  slli         s9, s2, 21
                  ori          s8, gp, -694
                  sub          a3, s6, s4
                  slt          a5, s7, t2
                  sltu         zero, a6, s9
                  srli         gp, a1, 6
                  auipc        a5, 148039
                  auipc        t1, 79044
                  or           t2, s0, s11
                  sll          s2, ra, a6
                  xori         s2, t1, -1637
                  sll          s9, gp, t3
                  sra          zero, t1, s0
                  andi         s1, a7, -478
                  slli         a7, t1, 17
                  sub          a3, s3, tp
                  slti         a5, a0, 369
                  or           a1, gp, a4
                  slti         s8, ra, 1081
                  xor          sp, sp, s2
                  slti         a3, tp, 871
                  ori          a4, s0, -1550
                  xor          gp, s5, s10
                  xori         tp, a5, -1831
                  slt          sp, a7, gp
                  addi         s6, t1, -23
                  sub          s7, s0, s7
                  srai         s7, s5, 26
                  sltu         a5, s9, t1
                  srl          s10, t3, t5
                  add          sp, a0, a0
                  add          t4, a1, a7
                  addi         t2, gp, -59
                  lui          a6, 9373
                  srl          t3, t6, a5
                  ori          a5, s0, 78
                  sltiu        gp, gp, -1726
                  lui          a6, 322043
                  slti         s4, sp, 1383
                  or           t4, t1, s6
                  srl          ra, t3, s4
                  sub          s4, s0, t2
                  and          s10, t1, a3
                  sll          t0, s9, a7
                  auipc        s1, 481249
                  addi         a7, t4, -1673
                  ori          a5, s7, -1598
                  xori         s1, a6, 443
                  and          s5, t3, a3
                  xor          a5, s10, t6
                  sub          tp, s8, a3
                  or           t2, ra, t0
                  and          s2, a6, s3
                  slti         a5, t5, -1079
                  lui          s5, 967315
                  slli         s7, s3, 11
                  auipc        a6, 339287
                  auipc        s5, 180809
                  and          t6, sp, s4
                  or           s2, a7, a3
                  xor          a6, s3, s11
                  xori         s1, s10, 1239
                  and          t4, s8, sp
                  srli         a3, t2, 4
                  srl          gp, s11, tp
                  sltiu        t4, a0, -840
                  srl          t4, ra, a2
                  slti         a7, a3, -39
                  xori         a2, a5, -1212
                  srli         t2, s4, 22
                  addi         a0, t4, -1346
                  and          s9, a0, s2
                  slli         gp, t1, 9
                  auipc        a5, 220894
                  sra          s8, a5, tp
                  li           s11, 0xbb39847b #start riscv_int_numeric_corner_stream_10
                  li           ra, 0xffffffff
                  li           a0, 0x34601bbf
                  li           a4, 0x80000000
                  li           s1, 0x0
                  li           s7, 0xffffffff
                  li           t2, 0x5889752a
                  li           s9, 0x80000000
                  li           a6, 0xffffffff
                  li           a2, 0x80000000
                  add          a2, a0, t2
                  add          a4, a6, s1
                  auipc        a6, 910313
                  lui          s7, 487151
                  addi         t2, a6, -838
                  sub          a4, a2, t2
                  sub          s7, t2, s11
                  add          s11, a0, a6
                  add          a2, t2, s9
                  lui          a6, 395717
                  lui          s9, 160884
                  add          ra, s7, a0
                  addi         t2, a6, 621
                  sub          s9, t2, s7
                  auipc        ra, 189728
                  addi         s9, s11, 9
                  auipc        s9, 973255
                  sub          a2, s11, a2
                  auipc        s9, 1046978
                  auipc        a4, 669631
                  sub          a2, ra, t2
                  add          a6, t2, a6
                  add          a6, s1, a0
                  sub          a0, a6, a0
                  auipc        s7, 951443
                  sub          s1, s1, a4
                  sub          t2, a2, a4
                  addi         a0, a0, 1386
                  nop
                  nop #end riscv_int_numeric_corner_stream_10
                  slt          a2, s9, gp
                  srl          ra, s5, a3
                  slti         t4, tp, -861
                  ori          sp, s2, 754
                  addi         t0, s0, -1996
                  sll          s1, t5, ra
                  sltu         t2, t6, s4
                  and          t3, a3, s9
                  and          ra, zero, s4
                  slli         tp, t3, 20
                  slt          tp, s9, s4
                  andi         a5, a3, 546
                  xori         s10, t6, -350
                  auipc        a2, 276853
                  slti         a5, s9, 1888
                  auipc        gp, 680567
                  srli         a0, a6, 5
                  slti         t2, t5, 144
                  ori          zero, s5, 1747
                  slli         s10, s0, 27
                  add          s1, a4, ra
                  sll          s7, s6, s4
                  andi         s6, s1, 277
                  auipc        s10, 845884
                  slli         s4, s4, 31
                  add          a7, ra, s1
                  xori         a4, gp, -822
                  and          s5, s7, s2
                  ori          t1, t5, 1907
                  auipc        s10, 450846
                  xor          sp, t2, s11
                  sra          a0, t0, t1
                  addi         a3, s0, -1192
                  slli         gp, a0, 18
                  nop
                  srli         ra, s7, 30
                  xori         a6, tp, -766
                  ori          zero, a2, 82
                  andi         sp, s7, -1665
                  srai         t3, gp, 9
                  ori          tp, s4, 1203
                  srai         gp, a7, 5
                  add          t1, ra, s2
                  and          s9, t3, tp
                  slti         t6, s0, -211
                  and          sp, t5, ra
                  sll          s7, s1, s4
                  auipc        s10, 727805
                  xor          a5, s2, t2
                  slti         t1, a7, -1507
                  sltu         a7, t2, a0
                  srli         s5, tp, 22
                  auipc        s5, 889677
                  xor          t4, s7, s6
                  sub          s9, s6, gp
                  sltiu        s10, s0, -661
                  sltu         gp, t5, a4
                  andi         s9, ra, 716
                  slli         t0, s8, 10
                  ori          t4, a1, -928
                  ori          s10, a0, -888
                  addi         s11, s0, 1331
                  ori          a1, t6, 291
                  and          s11, t2, a3
                  sltu         zero, a4, gp
                  slt          ra, t5, a6
                  addi         ra, t0, 1658
                  and          sp, s7, gp
                  andi         s5, t2, -1923
                  xori         gp, s7, -1036
                  sltu         a4, gp, zero
                  srai         gp, sp, 15
                  ori          a1, tp, -2039
                  add          sp, t0, a4
                  or           s10, t0, a2
                  andi         a0, a6, -613
                  sra          tp, s7, t0
                  xor          gp, a1, t2
                  andi         t0, a4, -1023
                  addi         sp, sp, -502
                  slli         a5, a3, 24
                  lui          s10, 752443
                  sltu         s9, t3, t2
                  sub          s8, t1, s10
                  or           a2, t2, a1
                  slti         s4, gp, -1121
                  and          a5, s6, a3
                  xori         a3, s4, 1786
                  sltu         t0, s2, s1
                  xor          a3, t0, s6
                  nop
                  and          s4, t0, a6
                  sltiu        ra, s1, -1424
                  nop
                  srl          t6, s3, a5
                  xor          s5, t3, a0
                  slt          t3, t6, a0
                  sltiu        a2, s0, -509
                  auipc        t4, 1032840
                  srai         s9, gp, 1
                  auipc        s2, 177295
                  add          s7, sp, a0
                  sub          a2, s3, t5
                  sll          t0, s1, zero
                  ori          a5, s8, -1631
                  xori         t1, s9, 547
                  auipc        s7, 788925
                  auipc        s1, 865881
                  addi         sp, t4, -1706
                  li           sp, 0xa3ea2917 #start riscv_int_numeric_corner_stream_4
                  li           t0, 0xffffffff
                  li           s11, 0x202b4c74
                  li           s2, 0xffffffff
                  li           a5, 0xa492459e
                  li           s8, 0x4e8b96b5
                  li           a0, 0x0
                  li           t1, 0x80000000
                  li           t3, 0xffffffff
                  li           ra, 0xffffffff
                  add          ra, sp, sp
                  add          s11, t0, s2
                  auipc        s2, 613579
                  sub          s8, s11, t1
                  nop
                  lui          t3, 81210
                  add          s8, t0, t1
                  auipc        a5, 406261
                  lui          s11, 636409
                  addi         s11, a5, -1313
                  addi         ra, ra, 261
                  lui          t0, 350765
                  add          t3, t0, ra
                  addi         t1, ra, 670
                  auipc        s11, 1027042
                  add          s11, s11, s11
                  addi         s8, a0, 932
                  auipc        s11, 53119
                  add          t3, s2, t1
                  auipc        t0, 282685 #end riscv_int_numeric_corner_stream_4
                  ori          a7, tp, 1820
                  srai         a4, s2, 12
                  slti         s7, s6, 1562
                  sll          t6, a1, s8
                  auipc        s11, 833742
                  slti         a7, t1, -808
                  slt          a3, t5, t5
                  srl          ra, s9, a4
                  sra          a1, a1, gp
                  sub          a7, a0, t0
                  srai         s6, s0, 6
                  lui          a4, 654295
                  and          a2, a1, a2
                  sub          a7, s10, s8
                  andi         tp, a1, 900
                  srl          s6, s3, s11
                  ori          a5, s11, -589
                  nop
                  xori         a4, a2, -335
                  andi         t4, t3, -1206
                  ori          a7, s5, -127
                  srai         a7, a5, 21
                  lui          t3, 195490
                  xori         t4, t6, 1972
                  srli         a3, zero, 27
                  srl          zero, t0, ra
                  addi         zero, zero, -624
                  slti         t2, ra, -1333
                  slti         s1, zero, -1465
                  sll          sp, t2, t0
                  nop
                  sltu         t6, t4, a7
                  add          tp, s4, s4
                  srai         gp, a1, 0
                  ori          a7, t5, 488
                  lui          t6, 877246
                  slt          gp, s0, t4
                  sltu         a6, t2, s7
                  slt          t1, s5, s6
                  addi         a2, s0, 1270
                  sltiu        s10, s0, -311
                  andi         ra, a0, 1974
                  lui          a0, 412753
                  or           a1, s1, s4
                  andi         s4, t3, 876
                  addi         s2, gp, 1042
                  sll          a4, s9, s4
                  andi         zero, a0, 1262
                  srli         sp, a2, 14
                  sll          t6, t1, sp
                  or           t4, gp, a5
                  andi         tp, t2, 988
                  sltu         zero, t6, s1
                  andi         s5, t0, -475
                  add          sp, gp, s8
                  and          s10, s10, a7
                  lui          ra, 159973
                  addi         zero, s2, -1270
                  add          gp, t6, t3
                  srai         t0, a1, 26
                  sub          s11, t2, a0
                  xori         t0, tp, -635
                  sltiu        sp, t5, -1629
                  slli         t3, t5, 31
                  nop
                  sltiu        a4, t1, -1135
                  srli         t4, tp, 20
                  srl          s2, s2, tp
                  ori          a6, t4, 1372
                  and          t6, s7, t4
                  srli         t0, t5, 13
                  auipc        a1, 408292
                  andi         a6, t0, -922
                  andi         gp, t0, 1269
                  slli         s10, s11, 11
                  xor          sp, t3, s7
                  and          s7, a2, s11
                  and          t0, a6, t3
                  xori         s5, s8, 848
                  srl          t1, s10, s10
                  slti         t4, t3, -1498
                  or           a0, a4, s8
                  slt          tp, tp, t5
                  srl          a6, s6, s9
                  xori         s10, s8, 1399
                  xori         s11, tp, -293
                  sll          s4, a4, a2
                  or           t1, a2, a0
                  ori          sp, s4, 2031
                  ori          t2, a6, 242
                  srai         s7, s6, 31
                  slti         s4, zero, -1860
                  srli         a0, a4, 18
                  lui          s10, 901745
                  sltu         a4, s6, gp
                  addi         a1, s7, -803
                  addi         ra, s0, -1272
                  lui          gp, 622674
                  srl          s1, s10, tp
                  srli         s9, ra, 6
                  lui          t4, 938780
                  add          s4, s5, t1
                  addi         s6, zero, 1068
                  addi         a4, a2, -66
                  slli         t1, a4, 24
                  sltu         a4, gp, s7
                  slt          a2, s5, s5
                  xor          s2, a7, a0
                  sltiu        tp, a0, -87
                  and          s5, s4, s3
                  slli         a2, t4, 5
                  and          t3, s4, s11
                  sra          sp, s7, a6
                  srai         a3, s1, 7
                  and          a2, t6, s10
                  addi         sp, s6, 652
                  lui          t0, 625948
                  ori          s9, s2, -599
                  srai         s10, s10, 25
                  slti         s10, a2, 1603
                  xori         a1, s2, -32
                  xor          a2, a2, a1
                  sll          gp, s7, s5
                  srl          s11, s5, s8
                  srli         zero, s10, 30
                  srai         ra, a7, 13
                  sll          t4, sp, sp
                  lui          t6, 587986
                  or           s6, a1, zero
                  xori         s7, s9, 924
                  and          a2, a0, a3
                  xor          a6, a1, t1
                  sra          a4, a4, s1
                  sll          a2, a4, s9
                  slli         a0, a2, 0
                  or           t1, s5, a5
                  ori          s6, s4, -664
                  add          s1, a4, s5
                  sub          s5, t3, t2
                  or           a3, a7, tp
                  xori         t1, sp, -777
                  and          s8, t6, s6
                  slti         s2, s7, -835
                  nop
                  sll          t6, s1, s11
                  lui          zero, 738330
                  add          a1, t3, zero
                  nop
                  and          s5, t6, gp
                  or           s7, a5, s6
                  ori          a0, t2, -536
                  sra          t4, ra, s0
                  slt          s9, t5, s11
                  sltiu        s4, s7, -563
                  auipc        a5, 833329
                  slti         s2, s11, 365
                  andi         s9, s3, 1247
                  andi         a7, s5, 1064
                  andi         zero, t4, -1814
                  slt          t0, t6, s4
                  slti         s11, s8, 1236
                  nop
                  or           a1, t1, zero
                  xor          s11, s8, t4
                  srai         t1, ra, 12
                  slti         zero, a1, 1012
                  nop
                  xori         a0, a5, -971
                  sltu         s8, s2, a6
                  or           a0, s0, s4
                  srli         t3, s10, 4
                  ori          s9, a0, -1047
                  xori         s1, t1, -72
                  sltiu        s2, gp, 1811
                  xori         s10, t4, -1429
                  srl          t2, s0, t6
                  andi         a4, a0, -1913
                  sltu         s10, s10, s6
                  or           s2, a4, a5
                  sra          t4, a0, zero
                  auipc        s5, 170410
                  slt          a1, a4, t3
                  srl          t0, s9, s8
                  and          t0, tp, s2
                  slli         s10, t0, 4
                  ori          t2, s11, -1890
                  srli         s6, s7, 15
                  slt          s10, s2, t1
                  slli         t0, a7, 2
                  slti         s5, tp, 1132
                  lui          t3, 439285
                  la x30, test_done
                  jalr x0, x30, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x8, x19, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x25, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x25, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x25, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x25, x2, ecall_handler
                  li x2, 0x1
                  beq x25, x2, instr_fault_handler
                  li x2, 0x5
                  beq x25, x2, load_fault_handler
                  li x2, 0x7
                  beq x25, x2, store_fault_handler
                  li x2, 0xc
                  beq x25, x2, pt_fault_handler
                  li x2, 0xd
                  beq x25, x2, pt_fault_handler
                  li x2, 0xf
                  beq x25, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

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
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x19, x8, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
