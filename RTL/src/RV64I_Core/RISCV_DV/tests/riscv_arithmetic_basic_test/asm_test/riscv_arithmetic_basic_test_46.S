.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x8bc54f74
                  li x3, 0xfb6e0448
                  li x4, 0xfa3af106
                  li x5, 0x80000000
                  li x6, 0x5
                  li x7, 0x80000000
                  li x8, 0xfd6ddca5
                  li x9, 0xb
                  li x10, 0xf22389f1
                  li x11, 0x80000000
                  li x12, 0x8
                  li x13, 0x0
                  li x14, 0xe179bdd3
                  li x15, 0xfefd5a4d
                  li x16, 0x9
                  li x17, 0xe6e3e5bc
                  li x18, 0x0
                  li x20, 0x80000000
                  li x21, 0xfa942e40
                  li x22, 0xf158da83
                  li x23, 0xf3950797
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xf
                  li x28, 0x80000000
                  li x30, 0xf05aa35c
                  li x31, 0xb0bef098
                  la x29, user_stack_end
main:             li           s9, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s8, 0x80000000
                  li           t0, 0x0
                  li           a4, 0xffffffff
                  li           s7, 0xb4c3e281
                  li           sp, 0x80000000
                  li           s0, 0x80000000
                  li           t1, 0x80000000
                  li           a6, 0xab0bc127
                  li           s10, 0x80000000
                  add          s8, t1, a4
                  add          s10, s10, s0
                  addi         s0, sp, 1295
                  auipc        a6, 308621
                  addi         s8, s7, -1205
                  add          a6, a6, a4
                  add          s7, a6, a4
                  lui          a6, 253551
                  sub          t0, s7, s8
                  sub          sp, t1, s8
                  sub          s8, s9, s10
                  nop
                  addi         a6, s9, 1006
                  add          sp, sp, t1
                  add          a6, a4, a6
                  add          a6, t0, a6
                  auipc        t0, 760191
                  addi         s8, s10, -20
                  add          a6, s10, s8
                  addi         a4, sp, -120
                  auipc        s9, 960443
                  lui          sp, 221061
                  add          s10, a4, t0
                  nop
                  lui          s10, 1029569
                  addi         s8, sp, 11
                  add          s10, a6, t1
                  sub          t1, s0, s8 #end riscv_int_numeric_corner_stream_12
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a1, 0xc9f53500
                  li           a3, 0x8e0e70a1
                  li           s7, 0x0
                  li           a7, 0x80000000
                  li           t5, 0x4bc64fd5
                  li           a5, 0x0
                  li           gp, 0x7daec845
                  li           ra, 0xffffffff
                  li           s8, 0xffffffff
                  nop
                  lui          s7, 815754
                  add          ra, s7, ra
                  add          a5, t5, a1
                  nop
                  lui          a1, 178271
                  sub          a7, a1, s8
                  addi         s7, a7, -487
                  auipc        a1, 104322
                  sub          a3, t5, a3
                  lui          s8, 300834
                  addi         gp, t5, -566
                  auipc        a7, 485215
                  nop
                  nop
                  addi         a1, a5, 1882
                  add          ra, a7, a0
                  lui          a3, 1013713
                  sub          s7, a7, a0
                  sub          s7, s7, s7
                  auipc        s8, 820644
                  nop
                  addi         a1, a0, 1219
                  nop
                  auipc        s7, 297775
                  lui          ra, 79599
                  sub          s8, a1, s8
                  nop
                  add          t5, a1, a7 #end riscv_int_numeric_corner_stream_8
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           gp, 0x0
                  li           sp, 0x80000000
                  li           s5, 0x2a287c68
                  li           a2, 0xd71995c0
                  li           t5, 0xffffffff
                  li           s9, 0x0
                  li           s0, 0x356a61c5
                  li           t6, 0x0
                  li           tp, 0x60064971
                  add          s9, t5, sp
                  nop
                  sub          gp, t5, t5
                  addi         t5, a2, 713
                  sub          sp, s9, s0
                  lui          tp, 387492
                  addi         t5, s5, -1639
                  addi         sp, t5, -16
                  add          s0, a2, s0
                  addi         t6, gp, -253
                  add          gp, s8, s0
                  addi         gp, tp, 524
                  nop
                  sub          t6, a2, s5
                  auipc        gp, 99654
                  auipc        s5, 434973
                  auipc        t6, 864499
                  lui          s9, 22537
                  sub          gp, a2, s5
                  nop #end riscv_int_numeric_corner_stream_17
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           t0, 0x18f9b620
                  li           s8, 0x0
                  li           s1, 0x0
                  li           s9, 0x0
                  li           s2, 0xa6098143
                  li           a2, 0x80000000
                  li           gp, 0x80000000
                  li           sp, 0xffffffff
                  li           s7, 0x80000000
                  nop
                  lui          a2, 167062
                  addi         s10, s7, -1965
                  nop
                  add          a2, s8, sp
                  sub          s10, gp, s10
                  add          a2, s9, a2
                  addi         gp, t0, -1785
                  lui          s7, 753751
                  addi         s1, sp, -1801
                  nop
                  lui          s7, 345704
                  auipc        sp, 198004
                  nop
                  auipc        t0, 800468
                  auipc        sp, 933730
                  add          s9, s2, s7
                  auipc        s7, 744114
                  lui          sp, 1024296
                  addi         gp, s1, 834
                  nop
                  add          gp, s10, s1
                  lui          s7, 495669
                  sub          s8, t0, s10 #end riscv_int_numeric_corner_stream_14
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           a3, 0xffffffff
                  li           s10, 0x80000000
                  li           a6, 0xffffffff
                  li           a0, 0x0
                  li           s8, 0xc5fff2b8
                  li           a5, 0xeea9c750
                  li           s9, 0xde003e0e
                  li           s0, 0x0
                  li           a4, 0x0
                  lui          a6, 91220
                  add          a5, a0, s10
                  add          a4, a6, a5
                  nop
                  add          a5, a3, s10
                  lui          t0, 154322
                  lui          a6, 350150
                  nop
                  addi         a0, s8, -1253
                  auipc        a5, 819014
                  nop
                  sub          a6, s9, t0
                  nop
                  add          a3, t0, a4
                  nop
                  nop
                  addi         a5, s0, 921
                  sub          s10, a4, a6
                  sub          a6, a4, s10
                  add          a0, t0, a4
                  sub          a4, a0, a0
                  add          s9, s8, a3 #end riscv_int_numeric_corner_stream_6
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s7, 0x0
                  li           sp, 0xffffffff
                  li           s9, 0x0
                  li           t0, 0x0
                  li           a6, 0x592d41d1
                  li           s4, 0x31fde42f
                  li           t1, 0x80000000
                  li           a3, 0xffffffff
                  li           a0, 0x6fec196e
                  nop
                  addi         t1, t0, -1691
                  auipc        s7, 1045445
                  auipc        sp, 488030
                  addi         a6, t1, 221
                  nop
                  nop
                  sub          a0, s7, a0
                  add          a3, t0, s5
                  auipc        s9, 690277
                  addi         sp, s4, -88
                  add          sp, a6, s9
                  nop
                  addi         a3, sp, 576
                  sub          s7, a3, a3
                  add          s5, t0, s4
                  auipc        t1, 754715
                  lui          a0, 457078
                  sub          t0, s9, a3
                  addi         a0, a0, -1727 #end riscv_int_numeric_corner_stream_10
                  li           s10, 0x1a585ed6 #start riscv_int_numeric_corner_stream_0
                  li           t5, 0x80000000
                  li           sp, 0xffffffff
                  li           a7, 0x80000000
                  li           s2, 0x0
                  li           a0, 0x80000000
                  li           s9, 0x80000000
                  li           a2, 0x0
                  li           s0, 0x80000000
                  li           a5, 0xffffffff
                  add          a2, s9, a0
                  addi         a7, s9, -1418
                  lui          sp, 621093
                  lui          s9, 316263
                  add          s2, s10, a7
                  sub          t5, s0, sp
                  add          s9, s2, a0
                  sub          s9, a0, s2
                  addi         a2, s10, 1263
                  add          s2, sp, a2
                  sub          s0, s10, s9
                  auipc        a2, 639419
                  auipc        s10, 76627
                  nop
                  auipc        s10, 536667
                  add          a2, s9, s9
                  nop
                  lui          a5, 372702
                  nop
                  nop
                  lui          a2, 667441
                  sub          s10, a0, s0 #end riscv_int_numeric_corner_stream_0
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           sp, 0xcc60683a
                  li           s7, 0xffffffff
                  li           a5, 0xffffffff
                  li           a1, 0x80a94116
                  li           s1, 0x0
                  li           t6, 0xffffffff
                  li           t2, 0x0
                  li           t3, 0x80000000
                  li           t0, 0xf0a4b1d9
                  add          s1, a5, t6
                  lui          t2, 173252
                  add          t6, s1, a5
                  sub          a1, t2, a5
                  sub          a1, s1, a5
                  addi         a5, t6, -1307
                  lui          s1, 417230
                  addi         a5, t0, -2018
                  auipc        s7, 206443
                  add          gp, t2, t0
                  addi         sp, s1, 1439
                  addi         t6, gp, 659
                  lui          t0, 866451
                  sub          sp, t6, a5
                  nop
                  addi         a5, a1, 69
                  lui          t6, 239753
                  sub          s7, gp, t3
                  add          t6, gp, t3
                  addi         sp, s7, 990
                  auipc        t6, 845356
                  addi         a5, sp, -1310
                  nop #end riscv_int_numeric_corner_stream_18
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a5, 0x8f57cff5
                  li           s6, 0x641b9a82
                  li           s5, 0x80000000
                  li           a7, 0xffffffff
                  li           s4, 0xffffffff
                  li           t0, 0x0
                  li           tp, 0xe2e41a7f
                  li           t6, 0xffffffff
                  li           a2, 0x5f8dd69e
                  addi         a7, tp, 1351
                  nop
                  addi         a7, a2, 81
                  addi         s10, s4, -1546
                  auipc        t0, 586545
                  auipc        s6, 43613
                  add          a2, s4, t0
                  addi         a2, t6, 871
                  addi         a2, s4, -1728
                  add          s10, a7, s4
                  sub          a2, s10, s4
                  lui          a5, 18628
                  add          tp, t6, s6
                  add          a5, a5, a2
                  sub          a7, a7, t0
                  auipc        tp, 164586
                  nop
                  lui          t0, 973398
                  lui          t6, 807158
                  sub          t0, t6, t0
                  lui          t0, 76227
                  nop
                  lui          s4, 924205
                  sub          a7, t0, s5
                  add          a2, s6, a2 #end riscv_int_numeric_corner_stream_13
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s7, 0xb559338f
                  li           t1, 0x0
                  li           a0, 0xffffffff
                  li           a3, 0xffffffff
                  li           t6, 0x0
                  li           t3, 0xffffffff
                  li           s10, 0x8436bf49
                  li           t5, 0x804dc9dc
                  li           s5, 0x424e2ffb
                  auipc        a3, 144139
                  sub          a0, s10, a0
                  sub          s7, s10, a0
                  lui          s7, 293053
                  nop
                  add          s8, t3, s8
                  addi         t3, s7, 1302
                  auipc        a3, 119257
                  lui          a3, 430296
                  nop
                  nop
                  add          s10, t3, a3
                  auipc        s10, 575326
                  addi         s8, t5, 294
                  add          s5, s7, t6
                  add          t3, s7, t1
                  nop
                  lui          s7, 502033
                  add          a0, a0, s10
                  sub          t1, s7, t3 #end riscv_int_numeric_corner_stream_7
                  srl          t3, a7, a4
                  xori         s5, s7, 211
                  xor          tp, s10, s5
                  slli         tp, s10, 19
                  add          zero, t5, a0
                  slli         t2, s2, 6
                  ori          gp, sp, 1075
                  lui          tp, 878100
                  addi         sp, ra, -458
                  lui          s0, 910475
                  srl          a6, t5, s4
                  ori          s10, t6, 348
                  srl          t0, a3, s2
                  sll          s1, a3, t5
                  sub          s4, t1, a3
                  or           s9, a1, s11
                  add          s1, sp, s1
                  or           s9, t4, s9
                  addi         a3, s2, -1308
                  xor          s1, t5, s3
                  auipc        t5, 1006547
                  andi         t6, a7, -1488
                  slt          tp, s8, a1
                  sltu         s2, a7, a2
                  slti         a1, s6, 1438
                  sll          s10, s2, a7
                  sll          a5, s7, s6
                  addi         t6, a7, 1203
                  sll          a7, s2, t4
                  xori         a5, s1, 1665
                  slt          a6, zero, a0
                  sra          a2, sp, s5
                  andi         a2, t0, -1509
                  xor          s0, a3, a5
                  auipc        a1, 32187
                  ori          a4, s9, 631
                  sll          s10, a0, t1
                  addi         s10, t2, 181
                  andi         s6, ra, 525
                  and          sp, a0, a6
                  srai         a7, t1, 17
                  or           t5, s10, s7
                  or           s0, a3, tp
                  slli         a2, a6, 9
                  srai         a7, t1, 24
                  xori         s9, t3, 735
                  andi         s4, s7, -1142
                  srl          t2, gp, t4
                  slti         a5, a6, 958
                  add          gp, s7, zero
                  xori         a0, sp, -2024
                  slli         s0, ra, 18
                  sub          s0, a6, s10
                  sll          s8, a5, a6
                  nop
                  sra          t6, s1, t5
                  xor          s0, t5, s1
                  add          a4, sp, a7
                  ori          a5, ra, 1035
                  add          s2, s3, a1
                  xor          t2, s11, a2
                  slt          sp, tp, s8
                  srl          tp, ra, t1
                  srl          s8, t6, s6
                  add          s0, t2, t0
                  sub          t0, s4, a0
                  srai         t0, a0, 10
                  sra          t3, tp, s11
                  andi         t5, sp, 1277
                  auipc        ra, 776802
                  srai         t6, s4, 29
                  slti         a3, t2, -1720
                  auipc        a7, 84002
                  slli         s0, s3, 31
                  add          a6, t3, s6
                  srai         t0, t4, 21
                  slli         a6, zero, 21
                  sra          a0, t0, s1
                  sub          s6, t1, zero
                  slli         a0, s0, 20
                  add          s1, a0, tp
                  ori          a4, s6, 1253
                  srli         s2, a6, 9
                  xor          a3, t2, t2
                  slt          s6, a4, s0
                  add          s1, a5, s3
                  slli         a6, a1, 1
                  slti         t0, a4, -142
                  auipc        s7, 173251
                  xori         a7, a0, 125
                  sltu         s7, a0, tp
                  slt          t1, s4, t3
                  sub          zero, ra, a4
                  slli         a1, a4, 21
                  srli         a0, s2, 13
                  sub          s0, s1, s1
                  and          sp, s10, tp
                  slli         tp, ra, 1
                  srli         s4, s1, 2
                  xori         s6, s5, -677
                  sltu         zero, s6, a0
                  sltiu        s5, a5, 573
                  andi         t2, s7, -1719
                  srl          tp, a4, a4
                  nop
                  sll          s10, gp, t3
                  sltiu        a0, s1, 1041
                  add          a6, s9, s4
                  sll          s9, s0, s10
                  addi         s9, s4, -1115
                  sub          ra, s0, s2
                  sub          t2, s1, s5
                  nop
                  add          s1, a1, t5
                  andi         t6, s4, 838
                  slti         t2, t4, 1349
                  slt          s9, a3, t2
                  sltu         a3, s6, t5
                  xori         s4, a7, 860
                  nop
                  srl          s4, a4, a3
                  srl          t3, gp, s10
                  ori          t1, s0, -880
                  or           s9, s0, t5
                  slli         tp, s5, 13
                  add          a6, a0, a0
                  slli         t2, s1, 30
                  slli         t6, a0, 12
                  slli         a6, s9, 21
                  addi         a4, s1, -1687
                  andi         t2, s8, -125
                  auipc        t1, 921253
                  sll          t1, sp, sp
                  lui          s5, 1009957
                  slti         a5, s3, -1758
                  or           s2, s5, t1
                  sltiu        a7, t0, -1515
                  andi         gp, s1, -937
                  lui          a7, 31962
                  srl          s8, a0, s0
                  sltu         a3, s2, s11
                  sub          zero, s0, t0
                  auipc        s6, 360434
                  and          s9, a0, a7
                  sll          s1, s4, t3
                  and          s2, s6, a4
                  xori         t0, s4, 115
                  addi         s2, a4, 622
                  lui          t5, 627931
                  srai         s10, s5, 10
                  srl          s7, s4, a6
                  addi         gp, s8, -1499
                  andi         sp, a6, -450
                  sll          a2, a2, t3
                  sra          a0, t4, gp
                  xor          tp, tp, s6
                  nop
                  add          gp, gp, tp
                  srli         t5, s10, 10
                  sra          s1, s9, s9
                  slt          s5, s10, t6
                  xori         sp, s2, 247
                  slli         s5, t5, 19
                  andi         t6, a0, -740
                  nop
                  and          s9, s0, s4
                  and          a5, ra, t3
                  slti         a3, t3, -2006
                  sltu         tp, s1, sp
                  ori          s2, s7, 902
                  auipc        s0, 512725
                  ori          s0, s3, -1534
                  sltu         zero, a6, zero
                  and          a3, s2, s4
                  addi         t6, s8, 748
                  ori          s2, t6, 1344
                  sltiu        a5, ra, 550
                  srai         s6, s11, 8
                  or           a2, s7, a4
                  slli         t5, s8, 12
                  srli         gp, t6, 20
                  srl          s7, s8, t2
                  sub          a5, a1, s1
                  addi         zero, a1, -569
                  slt          tp, tp, a1
                  addi         s4, ra, -354
                  srli         s0, sp, 8
                  srli         s0, a5, 13
                  nop
                  auipc        t0, 385694
                  addi         a0, tp, 1445
                  slt          tp, tp, a2
                  xor          s2, s6, s2
                  sll          t3, s7, sp
                  auipc        a7, 395441
                  add          sp, t5, s11
                  xor          zero, a3, t3
                  or           s6, s1, a4
                  xor          s10, s6, a4
                  lui          s7, 853606
                  auipc        a7, 536549
                  slli         s0, t4, 27
                  srl          tp, t2, s11
                  xori         ra, a0, 1374
                  srli         s8, gp, 16
                  ori          a2, tp, 1043
                  nop
                  nop
                  sltu         tp, s5, t4
                  xor          s0, a4, s7
                  srli         a3, s8, 3
                  and          s2, s3, sp
                  lui          a3, 1002200
                  srl          sp, a1, a6
                  xor          a3, tp, a7
                  xor          s1, a0, s1
                  nop
                  srl          a2, s7, s11
                  lui          t0, 160719
                  srli         gp, a4, 5
                  sra          t5, zero, t0
                  xori         tp, t2, 934
                  xori         s1, t1, 1887
                  xor          gp, s9, a6
                  srli         tp, s10, 12
                  slti         zero, zero, 1441
                  sltu         s0, t4, s2
                  auipc        a0, 77590
                  lui          t5, 592509
                  sltu         a5, a4, s7
                  auipc        t2, 211172
                  sub          a3, t0, s0
                  slti         a3, s10, 1020
                  auipc        a1, 518812
                  xori         s8, t6, -1225
                  sltiu        t0, t5, 393
                  add          a0, a4, s11
                  srli         s7, t3, 26
                  srai         t0, a6, 12
                  or           s6, s11, a3
                  lui          t2, 406909
                  srai         s9, tp, 13
                  sub          a0, s2, t0
                  slli         t1, sp, 0
                  sra          t6, t3, a2
                  addi         s8, t6, 55
                  slli         s10, a6, 0
                  srli         t5, s6, 21
                  sub          s4, a5, s5
                  sltiu        s7, a6, 1033
                  add          s1, s3, t0
                  srli         a5, a0, 12
                  ori          s2, a1, 1525
                  ori          a5, t2, -140
                  andi         s1, s11, 1484
                  slt          s9, zero, t1
                  lui          s4, 958495
                  slti         a2, s0, -2005
                  addi         s2, s4, -588
                  sltiu        a7, s4, 1087
                  sltu         a3, s9, a5
                  xor          s6, s9, s2
                  xori         s9, a3, -614
                  addi         a1, s11, -806
                  sra          s2, s10, a3
                  xori         a5, t3, -1627
                  lui          t6, 537580
                  sltu         t5, s0, a4
                  slli         a3, t0, 1
                  srai         s10, t1, 2
                  slti         t6, a2, -1462
                  sltu         s4, s11, a5
                  srli         s1, t4, 31
                  addi         sp, s10, -730
                  add          a3, ra, s10
                  xor          s4, tp, zero
                  auipc        a6, 855661
                  sub          t5, s9, s0
                  auipc        s2, 204927
                  addi         t5, a3, -351
                  sltiu        s5, s9, 550
                  slti         a6, zero, -1863
                  sltiu        sp, t1, 1009
                  srai         t6, s11, 24
                  srai         t5, tp, 4
                  andi         a3, tp, -858
                  sltu         a5, a1, tp
                  or           s6, s6, a7
                  and          a0, zero, t0
                  auipc        a5, 78202
                  srli         a2, s11, 24
                  add          s7, t2, t3
                  slli         a1, a6, 9
                  or           zero, gp, s10
                  sltu         s4, s1, sp
                  nop
                  sll          s9, t2, a0
                  srai         s9, gp, 24
                  slt          t3, a5, t5
                  sll          s6, s3, t3
                  slli         a3, s8, 23
                  slli         ra, s11, 6
                  andi         s8, a2, 285
                  sll          a5, zero, t1
                  slti         a5, a0, -1114
                  slli         gp, s4, 5
                  add          s0, t3, gp
                  slti         s0, s0, -646
                  slti         s5, t4, -596
                  andi         a7, s3, -643
                  auipc        s7, 715554
                  andi         s4, s11, -1683
                  nop
                  and          s7, s0, s9
                  auipc        zero, 526059
                  ori          s4, s3, -1237
                  slti         t3, s10, -1474
                  srli         ra, s8, 11
                  sub          a6, a6, s9
                  add          s10, s0, a5
                  sub          t3, a6, a1
                  slti         t2, s9, 941
                  auipc        t3, 573978
                  add          t3, a3, tp
                  add          t0, t1, s9
                  and          t1, s4, t4
                  andi         s9, a5, 2041
                  auipc        ra, 388900
                  slli         gp, s2, 9
                  lui          s5, 821066
                  addi         s0, tp, 938
                  lui          s5, 270651
                  auipc        s7, 192444
                  sll          t3, gp, s6
                  nop
                  or           s2, s2, s11
                  auipc        s6, 1026511
                  slt          s8, s10, s11
                  slti         s5, s0, -1901
                  xori         s9, s2, 1749
                  srai         a6, s6, 1
                  andi         s10, zero, -850
                  addi         s10, a7, 442
                  srli         t6, s4, 23
                  addi         s8, tp, -140
                  nop
                  slti         a2, sp, 144
                  xor          gp, s10, s11
                  and          s5, s1, sp
                  slti         t5, s11, 347
                  slt          gp, sp, a7
                  auipc        s2, 37519
                  slti         t5, a5, 20
                  nop
                  slli         gp, t4, 28
                  ori          tp, a7, -56
                  lui          s4, 401323
                  ori          t6, s1, -541
                  lui          s10, 20145
                  nop
                  nop
                  or           s5, sp, a2
                  xori         a5, s0, -1672
                  sll          s0, a4, s0
                  ori          ra, t5, -762
                  srai         t2, t2, 25
                  srai         tp, a4, 16
                  xori         s1, a3, 1648
                  slt          a5, a7, sp
                  add          a2, t0, a7
                  andi         a1, s10, 1601
                  srai         gp, s1, 19
                  andi         t1, s2, 1359
                  sub          zero, t0, t5
                  andi         s0, a7, -629
                  auipc        t3, 540324
                  add          s6, a4, s6
                  xor          t3, sp, sp
                  slli         sp, s5, 24
                  sltu         tp, s0, s3
                  slli         t6, ra, 20
                  sub          a3, sp, t1
                  sltiu        s0, tp, 545
                  sub          s1, s2, a2
                  nop
                  and          s2, s0, a7
                  or           a5, t6, s10
                  ori          s8, s3, -383
                  auipc        a3, 537460
                  sltu         tp, t6, a6
                  nop
                  srai         t5, s8, 28
                  sll          t3, s7, a6
                  sra          s1, t6, s0
                  andi         sp, s10, 1001
                  sra          ra, t1, zero
                  add          s2, a7, a3
                  srli         a7, t0, 22
                  sra          a2, t2, t0
                  sra          sp, s5, s1
                  andi         s2, s1, -487
                  srl          t1, ra, s9
                  andi         s2, s4, -1233
                  add          a7, a6, t5
                  xor          s1, s3, a5
                  srai         a0, s0, 3
                  sra          t1, a2, s1
                  xori         s6, s3, 859
                  ori          s1, ra, 1236
                  srai         s0, s6, 1
                  slli         sp, tp, 2
                  add          a5, t1, t0
                  sra          a7, s9, tp
                  slli         s6, s10, 0
                  add          s9, t1, a4
                  srli         gp, s8, 13
                  srai         s5, tp, 14
                  srl          a2, a4, t4
                  sll          gp, s4, zero
                  sltiu        s7, s7, -870
                  sll          zero, s5, a5
                  slli         a0, t6, 26
                  slli         s0, t2, 8
                  srai         gp, t4, 2
                  srli         t2, s11, 23
                  slli         t0, sp, 7
                  and          a5, a1, s6
                  srli         s7, t2, 6
                  xori         a6, zero, -1782
                  nop
                  xor          s5, s4, a3
                  add          s7, sp, a7
                  auipc        t2, 743733
                  slti         a5, gp, -219
                  nop
                  nop
                  slli         a5, a3, 21
                  nop
                  sra          gp, s6, ra
                  slti         t2, s0, -894
                  slli         t5, a5, 20
                  slli         a0, t3, 19
                  ori          a7, s8, -1190
                  addi         sp, t1, -2
                  and          a2, t6, t5
                  sll          s8, s0, s2
                  sll          s7, a0, t5
                  xori         s7, s0, -910
                  add          s1, sp, t1
                  xori         t3, zero, 273
                  lui          t2, 307346
                  xori         t2, ra, 1082
                  slti         s5, a4, 18
                  srli         s4, a0, 30
                  lui          sp, 842788
                  lui          s2, 165734
                  lui          s9, 936199
                  slli         a2, s5, 14
                  srli         a1, s4, 31
                  xor          s9, s2, s4
                  or           t3, a0, t3
                  slli         t0, s2, 4
                  sra          a5, tp, t0
                  auipc        a5, 148865
                  auipc        tp, 150449
                  andi         a3, a0, 1419
                  xori         gp, s8, -896
                  srai         a2, s1, 24
                  srl          s4, s4, sp
                  slli         t3, s2, 2
                  addi         s2, tp, -200
                  srli         s4, s9, 26
                  srl          a1, s2, s9
                  ori          ra, s10, -521
                  auipc        s6, 536748
                  sll          a1, a3, s2
                  srai         a2, t5, 23
                  slli         a0, a2, 7
                  andi         s1, s4, 1021
                  andi         s9, s4, -1355
                  or           gp, sp, a2
                  sub          s2, s3, s2
                  xor          a3, s1, a3
                  lui          s8, 824351
                  ori          s0, s9, 1889
                  slti         s7, s9, 862
                  nop
                  srai         s8, a3, 13
                  nop
                  addi         sp, s1, 1108
                  slli         s8, tp, 20
                  slt          a5, t6, t3
                  lui          s0, 938326
                  andi         s1, t4, -719
                  or           t1, s1, a7
                  ori          s0, s2, -1441
                  ori          a2, s10, -1201
                  srl          s5, a6, zero
                  srli         s5, tp, 19
                  slt          s5, gp, s8
                  srai         sp, s8, 24
                  and          a5, t1, s0
                  and          zero, s6, s9
                  and          gp, a5, a0
                  srl          s6, s11, zero
                  slt          s2, a6, gp
                  xori         t5, a3, 323
                  sltiu        a0, a5, -969
                  xor          sp, t2, s10
                  andi         t6, s6, 1618
                  auipc        a4, 647489
                  sltiu        s1, t5, -1956
                  xor          s4, s11, s6
                  lui          s8, 195395
                  xori         sp, s3, 2039
                  nop
                  sra          t5, t6, t4
                  srai         t1, t0, 20
                  or           zero, a1, a6
                  slt          a0, a3, t2
                  addi         s1, s9, -34
                  ori          sp, zero, -1975
                  slti         a1, t1, 1249
                  slti         s8, s10, 270
                  lui          s6, 875473
                  auipc        ra, 623162
                  ori          s1, t2, -1031
                  addi         s4, s11, -933
                  sub          a1, s8, s3
                  slt          t2, a7, a1
                  sra          s5, s1, s5
                  auipc        a3, 41409
                  andi         a7, s2, 1546
                  srai         a2, t6, 27
                  sub          t3, a1, t1
                  slt          a2, sp, a6
                  sub          t3, s1, t5
                  sub          s4, s3, s4
                  lui          t6, 67289
                  sra          gp, tp, s5
                  lui          t1, 365214
                  srl          ra, a4, sp
                  sra          s7, t3, a6
                  auipc        t0, 836315
                  xori         t3, s11, 39
                  xor          t1, a7, a2
                  slti         ra, a5, -21
                  or           a6, a0, t4
                  sltiu        s2, s1, 1271
                  add          s1, zero, gp
                  sltiu        s9, a4, -703
                  ori          a2, sp, 863
                  and          ra, a3, t6
                  lui          a3, 406239
                  srl          t1, s8, t0
                  slli         s8, a1, 15
                  auipc        s0, 1005011
                  srli         a2, s10, 10
                  sltiu        a4, t6, -660
                  sll          s4, zero, s3
                  and          t5, s0, s0
                  lui          a6, 80782
                  xori         tp, s6, 1120
                  slli         s1, t5, 3
                  lui          tp, 383303
                  srl          a3, s5, a1
                  sub          sp, s9, a7
                  andi         t3, s10, 1372
                  sll          zero, s5, s10
                  xori         s2, t3, 1525
                  nop
                  srai         t0, a2, 11
                  sra          s1, t2, s4
                  sll          t2, s3, a2
                  xori         s0, s11, -1821
                  sra          gp, a7, a5
                  sltiu        a4, s3, 1899
                  add          gp, a0, t1
                  addi         s8, t4, -1720
                  and          s9, s8, s7
                  and          a6, s10, t6
                  slti         s8, a0, 85
                  nop
                  srli         s7, s10, 22
                  nop
                  srai         a3, s0, 29
                  lui          t3, 747523
                  lui          s2, 729735
                  addi         t2, ra, -572
                  lui          ra, 943998
                  or           t1, sp, a7
                  srai         a4, a7, 8
                  slt          a4, s10, t4
                  and          a6, a3, s6
                  slli         s6, s0, 2
                  sra          t6, zero, s3
                  sltu         s4, zero, s1
                  sltiu        s1, s5, -361
                  or           s5, a5, s0
                  andi         a4, t1, -1172
                  srl          s0, s2, tp
                  lui          a3, 779249
                  slti         a1, a7, 1756
                  sub          s8, a3, gp
                  xor          t6, a6, tp
                  slt          gp, ra, t1
                  lui          a4, 148206
                  slli         s9, a6, 29
                  srli         a1, t0, 15
                  sltu         s10, s1, s5
                  and          t1, s0, gp
                  andi         t0, a0, 393
                  nop
                  srl          a2, a4, s9
                  srl          t5, a4, t1
                  sltiu        s2, t0, 1611
                  sltiu        a3, a0, 1719
                  nop
                  sra          a5, s3, t6
                  sra          a4, s2, s2
                  sra          s4, t0, gp
                  auipc        zero, 695019
                  and          a0, s2, t2
                  srl          t0, sp, s9
                  nop
                  addi         gp, t2, 214
                  sltiu        t5, a2, -1939
                  auipc        s1, 437323
                  xor          ra, s4, s2
                  add          ra, a5, zero
                  srai         s5, a1, 31
                  slli         s4, zero, 23
                  ori          t1, a3, 856
                  and          s9, a2, s6
                  srai         t0, s5, 17
                  auipc        s5, 1003142
                  sltu         a5, a2, t5
                  or           s6, t5, s10
                  lui          a4, 557288
                  sll          a0, t3, t4
                  andi         a3, t3, 1392
                  sll          t2, t5, a3
                  sub          s5, a1, a2
                  and          ra, t3, t6
                  auipc        t5, 173168
                  sltu         s6, t3, a0
                  lui          t3, 903550
                  sltiu        s0, sp, -1677
                  sltu         a2, t5, tp
                  sra          s7, t4, s6
                  xor          t5, a3, s3
                  xor          tp, a4, s2
                  sub          a3, t3, zero
                  add          a0, s5, a6
                  sltu         t3, t1, a5
                  slt          t3, t2, a1
                  sltiu        a3, t1, -1046
                  sub          t0, t3, a1
                  or           a3, gp, s6
                  slli         a4, tp, 25
                  addi         a3, t5, 1104
                  and          t1, s9, t3
                  sra          s6, s5, s4
                  xori         t3, ra, 303
                  add          s2, t1, t0
                  andi         s7, s11, 876
                  add          s4, t0, t2
                  sra          s0, sp, s8
                  and          ra, a6, s0
                  sub          a1, sp, s0
                  srl          a6, t0, a2
                  and          a1, t5, s1
                  sll          sp, t5, s9
                  slti         s10, t5, -987
                  slti         t6, t1, 347
                  sub          s8, sp, a3
                  slti         s8, a1, -1983
                  sltu         a7, t5, a5
                  xor          t5, a6, tp
                  and          a0, s7, s4
                  slli         s9, a6, 20
                  lui          sp, 372587
                  slli         a4, s4, 11
                  slt          gp, sp, ra
                  nop
                  auipc        s0, 848891
                  addi         t0, t0, -147
                  srli         a4, t1, 28
                  slli         s4, s11, 29
                  lui          s10, 363823
                  slti         a0, t5, -1084
                  sll          a1, a6, s3
                  addi         s9, s0, 22
                  ori          t5, t4, -1578
                  andi         t6, t2, 1274
                  sltu         t0, a2, a0
                  srl          ra, t6, a5
                  slt          a3, t3, a1
                  srli         a2, t0, 7
                  sltu         a5, tp, s9
                  sll          s2, s11, a7
                  srli         s0, a2, 10
                  nop
                  lui          sp, 876565
                  sltiu        s1, t2, 1486
                  add          s7, a1, a3
                  srl          s7, a0, s10
                  slli         t0, s8, 11
                  sltiu        s4, t5, 438
                  xori         tp, s7, 211
                  srli         s6, t2, 3
                  sra          s4, s3, a1
                  lui          gp, 534194
                  sra          a3, t2, ra
                  and          s7, s9, t3
                  sltiu        t6, t0, 498
                  srai         s9, s2, 10
                  and          t1, gp, a1
                  and          gp, a4, ra
                  addi         a5, s9, -1134
                  lui          s7, 276824
                  slli         a4, t4, 31
                  sra          t2, s11, ra
                  lui          tp, 87573
                  sltiu        s10, a3, 419
                  slti         s10, t4, -1779
                  xor          t0, a0, t5
                  srai         s7, sp, 14
                  addi         t2, s7, 1492
                  srl          s9, s11, s10
                  sltu         a0, a4, a2
                  or           tp, t3, t3
                  slt          s8, tp, t0
                  srli         s8, t5, 20
                  srl          a1, s2, a6
                  auipc        a1, 579819
                  sra          a0, tp, t1
                  and          s4, a5, s6
                  srli         s6, a0, 7
                  lui          t6, 213290
                  sltiu        zero, zero, 1675
                  or           t3, a7, gp
                  lui          a0, 116310
                  srli         a2, a0, 31
                  and          ra, a0, gp
                  srl          a6, s2, sp
                  andi         a0, s6, -886
                  srli         s0, t0, 4
                  sll          t5, s4, a7
                  lui          s4, 323374
                  srai         s4, gp, 12
                  nop
                  ori          zero, gp, -664
                  sra          t6, s1, zero
                  xori         s5, t4, -1131
                  slli         t3, s6, 0
                  auipc        a1, 323296
                  sltiu        s0, s6, -20
                  ori          s10, a5, 1459
                  lui          s1, 934357
                  andi         s2, t6, 1561
                  sltu         a1, a7, a3
                  srli         s1, s11, 2
                  slli         tp, s10, 12
                  nop
                  sltu         a5, s1, t2
                  lui          a5, 1030300
                  slli         t3, s10, 31
                  nop
                  slti         t6, s5, -1934
                  xor          s5, a6, a1
                  sltu         s4, t1, s3
                  andi         s4, s9, 1175
                  srl          a3, a0, t2
                  and          gp, s9, s9
                  srl          gp, a7, a7
                  srai         s7, a3, 12
                  andi         s7, t5, 1851
                  auipc        a0, 340231
                  sltu         t3, zero, t3
                  slli         t3, s1, 6
                  slt          a3, a6, s4
                  srl          s7, s2, a1
                  slt          s4, a6, t2
                  add          s8, sp, a7
                  sub          s8, t3, a2
                  sltiu        gp, a4, 98
                  sltiu        gp, s10, 1996
                  slt          s0, s2, ra
                  sltiu        a5, a2, 538
                  xor          t5, s3, a7
                  auipc        gp, 936724
                  nop
                  slt          s2, s4, a7
                  lui          t5, 724836
                  sll          gp, a4, a6
                  or           s8, s5, tp
                  srai         a0, ra, 12
                  auipc        a2, 695453
                  sltiu        t1, a3, -708
                  xor          a3, zero, s3
                  andi         t3, s2, -719
                  add          s0, s0, a5
                  add          zero, zero, gp
                  sra          a6, s10, a0
                  nop
                  sra          a4, tp, t1
                  slti         a7, a4, -1139
                  srl          t1, t5, a3
                  addi         t2, a1, -2031
                  srl          a7, s0, a7
                  sltu         a3, t1, zero
                  add          t6, a4, s4
                  sub          s5, s7, a7
                  auipc        t2, 661921
                  srl          s9, s7, s4
                  srai         ra, s7, 28
                  addi         gp, t2, -224
                  lui          a1, 812988
                  slli         t3, t4, 13
                  slti         a6, s0, -21
                  slti         a2, s1, 807
                  andi         gp, a5, -1883
                  andi         t6, s5, 422
                  slt          a2, a1, a6
                  slt          s6, a4, s4
                  sra          s10, s3, s7
                  ori          a3, s5, -137
                  srai         a0, t6, 4
                  andi         a1, s9, -1186
                  ori          a3, t1, -618
                  srai         s4, a5, 15
                  addi         s6, s0, -328
                  andi         a6, t4, -1256
                  andi         t3, s10, 1199
                  sub          sp, ra, s3
                  sll          s4, s6, a4
                  sltu         s5, s2, a0
                  sra          a4, t4, ra
                  srl          t0, s8, t0
                  or           t2, s9, s5
                  srl          a7, a1, s7
                  sra          t0, t5, t3
                  xor          t2, zero, a7
                  andi         s0, zero, -1477
                  or           ra, t1, t3
                  lui          s5, 1008888
                  slti         a2, t3, -193
                  ori          sp, ra, 1313
                  and          a0, s6, a4
                  xori         s1, a3, -1368
                  andi         gp, t5, -1045
                  or           a7, s0, s0
                  slli         tp, s6, 15
                  sltu         sp, s8, t3
                  add          t0, gp, t3
                  slti         a1, tp, 1274
                  add          s1, a0, a5
                  xor          s2, a4, t4
                  or           s2, a4, t6
                  slti         ra, t4, -1409
                  xori         a2, s8, 232
                  srli         s10, s9, 9
                  ori          tp, a7, 635
                  sltu         a6, s6, s2
                  add          s9, a2, s0
                  sll          ra, a3, a0
                  sltiu        s9, a5, -1156
                  srai         ra, s6, 30
                  srli         t3, a6, 21
                  slti         s7, a7, 883
                  lui          t3, 819220
                  sll          a6, t6, s7
                  srl          zero, sp, s1
                  srl          a6, zero, s2
                  xor          t0, s5, t0
                  srli         t0, a6, 10
                  and          a0, s5, a5
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           t2, 0x0
                  li           a4, 0x80000000
                  li           s7, 0x0
                  li           t3, 0xb0a0abb6
                  li           s8, 0x744c211b
                  li           gp, 0x0
                  li           t5, 0x80000000
                  li           s0, 0xffffffff
                  li           sp, 0x0
                  sub          sp, s0, a1
                  nop
                  lui          a4, 402210
                  add          s7, a4, s8
                  auipc        gp, 104143
                  auipc        s0, 703828
                  nop
                  lui          s7, 106939
                  nop
                  nop
                  lui          s7, 661034
                  addi         t5, t5, -335
                  add          s8, s0, s7
                  sub          t5, a1, s0
                  auipc        s8, 868207
                  auipc        gp, 787387
                  addi         sp, sp, -19
                  auipc        sp, 352747
                  sub          a4, t5, sp
                  addi         t2, s7, -441 #end riscv_int_numeric_corner_stream_19
                  sltiu        sp, t1, -1771
                  nop
                  sra          a2, a6, s1
                  srai         s2, s1, 30
                  nop
                  xori         t0, a5, 302
                  sll          a5, s2, t3
                  srl          s5, sp, gp
                  slti         s7, t5, 172
                  sltu         s7, s2, s5
                  add          s4, t4, a4
                  sub          t5, a7, s10
                  sltu         a4, t2, a1
                  sll          t5, t4, s6
                  or           s8, s8, s8
                  andi         a2, tp, -479
                  or           a7, s0, s6
                  sltiu        t1, s5, -131
                  andi         s7, t0, 1164
                  andi         s8, sp, -650
                  slti         s4, t1, 714
                  andi         gp, s5, 1291
                  auipc        a1, 996742
                  slt          t0, s1, a6
                  sub          t1, s3, t1
                  slt          s8, a1, s1
                  slti         s7, a4, -1888
                  ori          ra, zero, -715
                  auipc        a1, 508597
                  xori         s2, s0, 1607
                  slti         s0, a4, -486
                  slli         t0, s1, 6
                  or           a1, t0, a2
                  xori         a5, t3, -1881
                  ori          t3, ra, 2005
                  srai         ra, s6, 22
                  nop
                  slt          sp, a2, a1
                  and          t1, s2, s4
                  add          s0, s1, a4
                  sub          t1, t0, ra
                  andi         t0, s9, -2006
                  xori         a1, ra, 183
                  sltu         sp, t6, a7
                  srli         s5, a3, 24
                  sltu         s0, a4, a3
                  sltiu        s10, s9, 884
                  ori          zero, s8, -397
                  xori         s0, a5, -1732
                  xor          t2, s9, t3
                  andi         a1, a2, -2
                  srl          a6, a4, s6
                  and          sp, s1, ra
                  sltiu        s9, a6, -319
                  auipc        s4, 383324
                  lui          a1, 269059
                  or           s6, s7, a0
                  slti         t5, a4, -650
                  auipc        t6, 679532
                  sltiu        s10, sp, 901
                  srai         ra, t6, 2
                  sra          a0, t2, t6
                  sra          s8, t0, a3
                  add          a1, s2, t4
                  ori          s8, tp, -1616
                  srli         t1, t1, 0
                  slt          ra, s11, s11
                  and          s2, a1, t0
                  sll          s2, s8, s5
                  nop
                  add          s0, t3, t6
                  slli         s6, s4, 6
                  nop
                  xori         a0, t6, 1431
                  andi         a3, t3, -1568
                  ori          a3, gp, -2016
                  and          s5, tp, a0
                  srai         s9, s9, 23
                  lui          s2, 346060
                  lui          s9, 408045
                  srl          zero, t3, tp
                  srai         s4, a2, 25
                  srli         a3, s2, 7
                  andi         gp, zero, 217
                  xor          a5, t0, t4
                  ori          sp, t6, 1523
                  sll          tp, s1, s4
                  auipc        gp, 957269
                  slli         sp, gp, 0
                  andi         t5, zero, 775
                  slt          s0, gp, a0
                  sll          a1, zero, t4
                  auipc        t3, 284490
                  sltu         s6, s8, a5
                  add          a3, t2, a2
                  addi         s10, a7, 1748
                  add          a2, a0, s1
                  andi         t3, s2, -539
                  nop
                  sltu         s1, a4, a2
                  lui          a4, 534088
                  lui          ra, 432362
                  xori         a7, t2, 1312
                  and          t6, t0, a2
                  ori          s4, ra, 1326
                  and          s1, ra, a3
                  slti         a6, t0, 340
                  lui          s8, 395454
                  sll          s4, s9, t3
                  srl          a3, s1, s4
                  nop
                  srai         a2, t2, 5
                  sll          s2, a2, a5
                  addi         gp, a2, 160
                  sltiu        s10, gp, -1718
                  sra          a6, a3, a5
                  srl          t0, a7, s9
                  sra          t3, t2, s8
                  lui          s5, 547918
                  srl          a5, a3, s9
                  slli         s7, s7, 16
                  andi         s6, s8, 514
                  sub          s4, ra, a6
                  add          s6, a6, s8
                  sltu         t2, s5, a2
                  or           a5, s3, s4
                  or           s9, gp, sp
                  srai         a0, s4, 16
                  sub          s5, s0, t0
                  or           s1, gp, a1
                  add          s9, s0, s5
                  sub          s5, s11, t3
                  nop
                  sltu         a1, a6, s2
                  srl          s5, s5, t6
                  ori          a4, t2, -952
                  slti         t5, t5, -499
                  slt          t3, s5, tp
                  sra          zero, a4, a4
                  sltiu        t3, a3, -1010
                  srai         t5, t1, 22
                  addi         s9, a2, -1566
                  srli         a1, zero, 3
                  sll          a4, a3, s2
                  slt          t6, a1, t5
                  nop
                  sll          a7, a2, ra
                  and          t6, t6, gp
                  srl          ra, a1, t0
                  or           gp, a6, a1
                  nop
                  or           t1, s9, ra
                  srl          a6, ra, a2
                  andi         t6, t3, -1598
                  slt          zero, a2, t0
                  auipc        t6, 657325
                  xori         a2, a4, 1945
                  slli         t2, s4, 28
                  ori          s4, a2, -1134
                  nop
                  sub          s8, ra, s10
                  xori         s9, s5, -2033
                  srl          a2, s6, a2
                  and          a1, tp, ra
                  andi         s4, a2, 187
                  sltu         t1, t5, s3
                  sltu         a6, s1, s5
                  slt          ra, s2, ra
                  nop
                  ori          a2, s1, 718
                  ori          t5, t1, -652
                  srai         s2, t2, 1
                  sll          s5, a0, tp
                  sll          s0, a4, t3
                  sltiu        a6, s3, -1840
                  sll          t6, tp, s0
                  add          gp, s1, s4
                  slti         t0, s3, -298
                  or           a7, t5, t2
                  addi         sp, s3, -1947
                  andi         a1, s2, 397
                  lui          s7, 312634
                  sub          ra, a7, s6
                  xori         zero, s6, 1967
                  ori          a3, tp, 937
                  and          s9, ra, a3
                  xori         s0, t1, 690
                  sra          s6, t6, t1
                  srli         t1, s9, 17
                  andi         a5, s9, -1788
                  xori         t1, tp, 1113
                  xori         s5, a5, -860
                  xori         s4, s2, 1343
                  sltiu        s7, s9, -726
                  xor          t5, a1, t0
                  xor          s4, s1, t3
                  lui          s7, 470791
                  sub          a7, t0, s4
                  auipc        zero, 122069
                  nop
                  srl          s7, a4, s4
                  sra          ra, a4, s6
                  or           s4, s3, s4
                  srl          zero, s10, sp
                  lui          a2, 133395
                  sub          zero, a1, s4
                  srl          s6, s11, a3
                  srl          ra, s7, s8
                  add          s6, t5, s5
                  slt          tp, t0, a4
                  addi         zero, s2, -1782
                  sra          s6, t5, s2
                  slti         s10, s2, 75
                  slli         zero, s8, 17
                  sltu         s4, s6, s4
                  sub          a7, t2, s6
                  ori          s7, tp, 183
                  sltu         t0, s9, a7
                  sll          s5, s11, s0
                  andi         s0, a4, -310
                  andi         s5, a0, 305
                  srai         a7, ra, 12
                  or           s9, a6, a0
                  addi         a0, t6, 805
                  sll          sp, s2, t3
                  srli         s2, gp, 18
                  sltiu        s0, a2, 1980
                  addi         a5, a7, -150
                  nop
                  nop
                  sub          s4, gp, a4
                  andi         t6, s11, 901
                  or           s7, s5, a0
                  xor          t1, t5, s7
                  sra          t5, s10, s1
                  slt          gp, ra, s10
                  andi         t6, s6, -1095
                  sltu         sp, s0, t3
                  xor          s5, t3, t5
                  addi         t2, tp, -108
                  and          s8, a5, t4
                  lui          t6, 1021983
                  auipc        a0, 978943
                  add          s10, t4, s1
                  sra          t3, t0, t2
                  sltu         s10, a0, s4
                  srl          a6, s1, s11
                  nop
                  slti         gp, a5, -994
                  sltu         a1, ra, s11
                  lui          sp, 455555
                  addi         s7, a7, -54
                  slti         sp, t1, 1097
                  sltu         s9, s5, s8
                  slt          a5, sp, s5
                  sltu         s9, a7, a7
                  xori         a3, gp, -927
                  sll          t2, a3, s11
                  xori         sp, a7, -1287
                  sll          t1, gp, t4
                  xori         s7, tp, 1938
                  sub          ra, t3, t0
                  slli         s9, s9, 25
                  and          t3, s7, a1
                  ori          a2, s0, 2039
                  sltiu        a3, s4, -789
                  srai         t1, s5, 8
                  addi         s1, s2, 358
                  auipc        a6, 724253
                  addi         t2, s1, -249
                  ori          a0, zero, 1741
                  slti         sp, t1, 615
                  andi         s0, a3, -1308
                  addi         s4, t1, 1182
                  lui          s6, 148375
                  ori          zero, ra, -204
                  ori          a1, s6, -429
                  auipc        t3, 1041320
                  srl          a6, t2, t1
                  sub          a1, s6, a5
                  srai         gp, s6, 4
                  ori          t5, t6, 773
                  srli         s7, t6, 4
                  xor          a6, a2, sp
                  sltiu        a1, s1, 1161
                  slt          s10, a5, a6
                  sltiu        a2, s4, 1812
                  srl          s7, t2, a7
                  auipc        a6, 547548
                  srli         s6, a5, 11
                  sra          sp, a4, s2
                  sltiu        s9, t6, 1861
                  sltu         a0, t5, t6
                  xor          a0, ra, sp
                  sra          zero, s10, a3
                  slti         s7, s10, 1237
                  sub          a1, s1, a3
                  add          gp, s7, t5
                  xor          a1, t6, gp
                  sll          s5, s8, s1
                  add          gp, zero, s7
                  ori          s4, zero, -923
                  xor          tp, a7, s6
                  xori         s6, s1, -438
                  lui          a1, 57847
                  srai         tp, s4, 8
                  sll          a6, t3, a4
                  sltu         s2, s9, a6
                  nop
                  lui          t3, 672115
                  and          s10, t1, a0
                  xor          sp, a4, ra
                  sltiu        s0, s3, -1147
                  slt          zero, t2, a4
                  sub          a2, s5, tp
                  or           s6, t0, s2
                  or           s6, a0, a5
                  slt          ra, t0, a7
                  auipc        gp, 955222
                  sltu         t0, sp, s11
                  or           zero, gp, tp
                  sltu         s0, a6, a5
                  slti         s10, t4, -673
                  sltiu        a0, s6, 1029
                  or           s9, t4, gp
                  lui          sp, 542025
                  auipc        s9, 599068
                  slt          t1, s9, t3
                  slli         t3, t6, 9
                  andi         t3, s3, 1658
                  ori          s5, s2, -1990
                  sll          a5, t0, s2
                  slti         ra, a4, -1964
                  sub          a7, s6, a3
                  nop
                  srl          s8, a2, s0
                  xori         t0, t4, 748
                  or           a0, s9, s3
                  srli         a7, s0, 17
                  lui          a1, 503314
                  lui          a4, 460242
                  sltiu        a2, tp, -1955
                  xori         gp, a7, -1432
                  add          t3, s5, s8
                  srli         s7, tp, 12
                  sll          s7, s0, a0
                  xori         a0, t6, 1194
                  and          s0, s8, t1
                  addi         t6, s1, -168
                  addi         a2, t1, -1771
                  sltu         s7, t1, s6
                  auipc        a2, 716051
                  srai         s10, s10, 30
                  xori         s7, s4, 1253
                  ori          a4, s9, -1183
                  addi         a0, s5, -347
                  sltu         t6, ra, s4
                  sll          s0, s7, a2
                  xor          a3, s5, a1
                  sltu         a7, t2, s8
                  xor          ra, t6, a1
                  xor          t2, zero, t6
                  ori          s1, sp, -678
                  add          a3, a4, s7
                  sll          zero, tp, ra
                  andi         s2, s5, 1032
                  ori          s8, s4, 1565
                  sll          a1, s8, s2
                  sltiu        a7, t3, -190
                  ori          t2, sp, 1994
                  srl          t3, a6, s7
                  add          tp, t4, s5
                  addi         t5, s11, -1077
                  sltu         t6, a2, s10
                  xor          sp, s11, tp
                  andi         a5, a5, -77
                  slti         t1, a4, 1126
                  andi         a2, a0, 1622
                  slt          s8, t1, a6
                  or           s7, s4, a0
                  addi         a2, t2, -14
                  sltu         a2, ra, s7
                  srl          s9, sp, a2
                  nop
                  slli         s8, s9, 29
                  nop
                  lui          tp, 991387
                  srli         a5, ra, 31
                  auipc        zero, 507146
                  nop
                  nop
                  xori         s10, t6, 1053
                  slt          t0, t5, a3
                  or           a4, a2, s8
                  sra          s7, a5, zero
                  or           s1, s8, a4
                  srl          s8, a3, gp
                  sll          a2, s10, s2
                  sra          s7, a3, s1
                  sub          a7, t5, t1
                  xor          a5, a0, a7
                  sll          a5, a6, t5
                  xori         s0, zero, -1410
                  slli         s10, t2, 11
                  auipc        t2, 813242
                  sll          a5, gp, a4
                  slti         sp, a1, -840
                  sll          a2, s7, a6
                  lui          a4, 650570
                  add          s5, t0, s0
                  sll          s0, a3, s2
                  or           s4, t3, s1
                  add          s1, s0, s10
                  andi         a7, s10, -1955
                  sltu         s9, sp, t2
                  slt          zero, t0, tp
                  srai         t6, s3, 20
                  sra          s6, s10, t1
                  lui          a3, 422565
                  sll          s2, s9, a7
                  sltiu        tp, s6, 1693
                  xor          t1, t1, ra
                  nop
                  xori         s8, t1, 279
                  nop
                  srl          s4, t1, s4
                  andi         t0, t1, -1339
                  lui          a1, 164220
                  srai         s8, zero, 19
                  sll          s6, a3, t3
                  sub          s8, a7, s0
                  slt          a5, sp, a0
                  auipc        a0, 855007
                  auipc        a5, 132267
                  srai         a2, s2, 8
                  addi         s1, s1, 1884
                  lui          s6, 608313
                  sll          s2, s0, sp
                  sub          s9, t0, s11
                  slti         t2, s1, 1571
                  slli         tp, t1, 24
                  lui          s6, 613212
                  slli         ra, s1, 31
                  xor          s6, tp, s8
                  slti         t2, sp, 1110
                  sll          s10, t0, s6
                  add          a1, s1, t5
                  xor          zero, s3, s10
                  sltu         s6, zero, s8
                  sll          a2, s4, t0
                  srli         s8, s5, 0
                  sltiu        t1, s3, 1570
                  sltu         s5, s6, s7
                  addi         a7, a4, 607
                  and          zero, t5, a5
                  slli         s8, ra, 18
                  sltu         a4, s9, s2
                  sltiu        a2, s8, 864
                  addi         t6, a3, -1276
                  sll          s6, a5, a6
                  nop
                  srl          tp, a2, t4
                  nop
                  add          t6, s1, s1
                  or           gp, t3, s3
                  slli         t2, t2, 30
                  sra          a4, s6, a1
                  or           s5, a7, t1
                  add          s2, t6, s0
                  and          tp, s0, a6
                  xori         t2, s10, 1937
                  sltiu        t1, t5, -153
                  sltu         t1, a4, t0
                  sltiu        a3, a2, 820
                  sltu         a1, t1, s6
                  xor          s10, a3, s8
                  srli         s1, s5, 4
                  slti         t1, a6, -1818
                  addi         sp, t0, 1216
                  xori         tp, s10, 1876
                  srl          s1, s2, t3
                  lui          a7, 141784
                  srl          s2, t3, t5
                  xori         a4, a4, -70
                  sltiu        tp, gp, 1794
                  srli         a0, s11, 24
                  slt          a0, t2, ra
                  srl          ra, zero, a3
                  and          s9, s5, zero
                  xor          s0, a0, t6
                  sltu         a3, a0, a0
                  xor          a7, t1, t5
                  nop
                  addi         a1, ra, -1296
                  srli         a2, t5, 23
                  and          s8, zero, s8
                  srli         a4, t2, 18
                  sltiu        s7, zero, -1478
                  sub          t6, a7, s4
                  nop
                  slti         s9, t5, 1675
                  srli         s10, t0, 31
                  srai         t3, t3, 13
                  slti         t0, a0, -497
                  slli         t2, a4, 24
                  nop
                  sll          t5, ra, t5
                  nop
                  or           t2, s7, a6
                  xor          a2, t3, a5
                  sltiu        s10, s2, -1753
                  auipc        sp, 984290
                  auipc        s6, 387059
                  slt          s1, a2, t3
                  nop
                  sltu         t5, t1, s8
                  srl          s9, t2, t3
                  srai         s4, s11, 19
                  srl          t3, tp, s6
                  addi         a1, s7, 240
                  ori          sp, gp, 891
                  sltiu        s8, zero, -345
                  sra          a5, gp, s0
                  sltiu        a2, tp, 1497
                  add          s0, gp, t1
                  addi         sp, t4, 1094
                  slti         tp, s1, -1986
                  add          a0, t3, s9
                  sra          s2, t6, tp
                  slt          s7, t5, s1
                  slt          sp, t3, s10
                  slti         tp, ra, -483
                  sltiu        s10, s1, 522
                  ori          sp, t4, -158
                  sub          a7, gp, s3
                  srai         ra, t4, 17
                  sub          a1, tp, gp
                  sll          a4, s11, ra
                  sltiu        gp, a6, -1541
                  xori         a4, s7, 1464
                  srli         s2, tp, 10
                  sltu         s0, zero, s11
                  xor          zero, t4, s11
                  sub          s9, t6, a4
                  addi         s6, t1, -1245
                  xori         t1, t0, -1873
                  sltu         ra, a5, a2
                  add          t3, a0, s3
                  sll          sp, ra, s5
                  lui          t3, 895282
                  sub          s8, tp, s8
                  nop
                  andi         gp, t6, -994
                  srli         a1, t3, 28
                  srli         s0, a5, 23
                  slli         s8, t5, 16
                  nop
                  nop
                  add          zero, t5, s10
                  lui          t2, 840247
                  srai         s1, a1, 13
                  nop
                  sltiu        a4, s2, 1289
                  sltiu        zero, s2, -646
                  slli         t2, tp, 15
                  srai         gp, t5, 27
                  add          t0, s0, t1
                  sra          s8, s6, s3
                  xori         s9, a5, -1207
                  srai         ra, a1, 11
                  and          a3, a7, s1
                  sltu         t0, a1, s4
                  xor          t5, a4, gp
                  xori         a6, s6, -755
                  slli         s10, s0, 25
                  slli         t6, gp, 29
                  srl          s0, s10, t0
                  slti         tp, a7, 218
                  srli         a2, a1, 4
                  slti         t1, a7, -400
                  sltiu        t2, s1, -486
                  sub          t6, a6, s5
                  or           t1, a0, s11
                  xor          tp, t6, s10
                  sub          s2, s7, a3
                  lui          t2, 170787
                  auipc        t0, 405790
                  slt          t0, s1, s11
                  slli         s8, a7, 19
                  and          a6, s4, a1
                  andi         sp, a3, 1295
                  addi         t0, s9, 1185
                  nop
                  srli         s8, a2, 2
                  sll          a0, t1, s1
                  auipc        a6, 541556
                  xori         a7, t4, 1041
                  add          t2, s8, t0
                  sltu         ra, s3, a7
                  sll          s6, t0, s10
                  ori          ra, t5, -903
                  xori         s1, s9, 536
                  sltiu        t6, sp, 1878
                  srli         t5, ra, 8
                  addi         sp, a5, 1520
                  addi         s10, s2, 442
                  add          s1, t1, t4
                  xori         s1, t3, -203
                  auipc        a2, 425515
                  and          t3, s10, s3
                  sll          sp, sp, s8
                  sra          gp, s2, sp
                  and          a3, t4, a3
                  slt          t0, a1, s10
                  srl          a2, gp, s11
                  srai         s6, t0, 23
                  srli         s6, t4, 26
                  auipc        s8, 265202
                  nop
                  sub          t1, s11, t1
                  sltu         a5, s3, a2
                  xor          t1, s9, s1
                  xor          t3, a5, a7
                  slt          s6, t2, s10
                  nop
                  nop
                  addi         zero, a2, -981
                  xori         t5, a3, 1054
                  and          t5, a1, t4
                  and          t5, zero, t2
                  srai         a4, s6, 6
                  add          sp, a4, s7
                  slli         t5, s8, 0
                  add          a4, gp, sp
                  and          a2, a6, s11
                  and          s0, s10, a1
                  ori          s6, t1, -1506
                  sltu         s9, ra, a4
                  nop
                  sltu         zero, a2, s2
                  ori          t3, s9, 366
                  slt          zero, s3, s9
                  slli         s9, t2, 1
                  or           a2, tp, s10
                  slt          a0, tp, t1
                  lui          t2, 970131
                  xor          a6, t6, s0
                  sub          s10, s0, s7
                  add          t6, s5, s3
                  add          a2, s9, t2
                  slti         t3, a1, -1080
                  addi         zero, t0, 2029
                  slli         s0, s0, 18
                  srli         s0, s1, 28
                  slt          s5, t2, t4
                  xori         s0, s1, 1557
                  auipc        s5, 143948
                  and          s2, t5, s3
                  sltu         a0, s1, s0
                  and          s5, a5, ra
                  xor          t1, t1, sp
                  lui          a3, 994604
                  andi         tp, a7, -144
                  srli         s9, sp, 12
                  slt          s0, t0, s6
                  sll          s2, s5, s5
                  lui          s1, 195692
                  srl          s7, t2, zero
                  auipc        a7, 821872
                  sltiu        s6, s9, -504
                  or           s2, t0, s6
                  xori         tp, a3, -1138
                  sub          a5, gp, s6
                  or           t3, s3, s2
                  slli         a0, a1, 21
                  or           t1, sp, a1
                  srl          s6, a1, t3
                  slli         s4, s11, 21
                  add          s1, t4, s4
                  sub          a3, a1, t1
                  add          a1, s6, t0
                  and          gp, t2, ra
                  slli         s2, a4, 18
                  auipc        a3, 429476
                  srl          t6, a4, t4
                  sltu         t0, a6, t3
                  add          t2, s5, s6
                  sltiu        tp, ra, -1589
                  sltiu        a6, t5, 1201
                  nop
                  ori          t3, s3, -837
                  srai         s8, a3, 4
                  andi         t2, zero, -1882
                  andi         a0, a5, -364
                  nop
                  sra          a2, s6, s11
                  andi         sp, t0, 1787
                  slt          s10, s9, a7
                  auipc        s9, 666221
                  slti         a1, t4, 1723
                  sltu         a4, t1, s2
                  or           t1, t3, s2
                  ori          t1, a0, -65
                  xor          s8, s3, s0
                  auipc        a4, 891697
                  add          t0, a4, a4
                  sub          a6, a1, s5
                  slli         a1, ra, 16
                  sltu         s8, sp, a6
                  sltiu        a2, a4, -1421
                  nop
                  sub          s10, t3, a4
                  sltu         ra, t3, s11
                  and          a6, s10, a3
                  xor          s0, s8, s4
                  slti         tp, s10, -458
                  xor          s1, sp, s6
                  or           a7, t4, tp
                  and          s4, t1, t6
                  xor          s2, s0, s7
                  sll          s2, a1, a1
                  add          s6, s11, t3
                  addi         zero, s1, 462
                  or           gp, sp, t0
                  srai         s2, s7, 29
                  sltu         s5, t0, a5
                  slli         a1, s6, 11
                  srli         t0, sp, 4
                  ori          s2, s4, 225
                  or           tp, ra, s1
                  or           t5, t0, gp
                  sra          a4, a1, a7
                  lui          gp, 635248
                  slt          s4, a5, sp
                  slt          t6, tp, zero
                  or           t5, s7, s1
                  ori          t5, zero, 2023
                  slli         s10, t2, 3
                  lui          s9, 615767
                  srai         t3, s7, 4
                  and          a0, s7, tp
                  addi         t1, t0, 1491
                  srai         a4, tp, 13
                  slt          sp, s2, a7
                  srl          s4, zero, tp
                  sltiu        a6, t5, 1798
                  slli         a2, a2, 2
                  sll          s7, s2, s10
                  auipc        zero, 90996
                  sll          a6, gp, zero
                  sltu         s0, a5, s5
                  or           s1, gp, s0
                  andi         a1, a7, -325
                  slti         t3, t2, -1533
                  xori         a7, a6, -1897
                  ori          a6, a3, -509
                  lui          s6, 148803
                  sll          a2, s10, zero
                  add          t2, a7, s11
                  sll          s10, ra, ra
                  ori          s0, s3, 112
                  slti         a0, a7, 1978
                  srli         s0, a6, 18
                  srai         s8, a2, 0
                  or           a5, s4, t4
                  add          sp, t6, s11
                  sltiu        a5, s9, 1912
                  sub          a3, t2, t1
                  srli         ra, t1, 23
                  lui          s1, 604579
                  xori         s5, t2, -1878
                  addi         s2, s5, 1479
                  sltu         t5, t5, s9
                  srl          a7, a3, s10
                  srli         a2, a4, 17
                  srli         gp, s6, 9
                  sub          t5, zero, a1
                  or           a1, a6, t3
                  xor          s8, zero, a4
                  sltiu        s2, s4, 1226
                  add          a6, a5, s1
                  lui          sp, 796660
                  sub          s10, t4, t4
                  srai         a0, s7, 19
                  xori         s6, s11, -109
                  srli         s4, a0, 17
                  add          t6, a1, a2
                  sub          s5, t3, gp
                  ori          zero, a6, 1578
                  nop
                  srl          a7, t0, t2
                  sltu         a7, a5, a0
                  auipc        t5, 247119
                  andi         a0, a4, 1909
                  xori         a0, s9, -1704
                  andi         s8, s2, 95
                  and          s10, s2, s9
                  and          zero, a1, s3
                  slt          s2, s8, s11
                  slti         s4, s1, -591
                  lui          a2, 417697
                  lui          zero, 948495
                  sltu         t2, t6, s0
                  sltu         s5, a0, t2
                  sltu         gp, sp, gp
                  andi         t5, gp, -716
                  slti         s1, gp, 1679
                  nop
                  slli         a1, a1, 7
                  srai         zero, t6, 10
                  slti         t2, zero, 1435
                  addi         a0, t4, -1924
                  srl          t5, s5, a3
                  sltu         s6, a1, a6
                  xori         s10, a5, 1461
                  srl          t5, a6, a1
                  sltu         t1, s4, t4
                  auipc        s7, 827593
                  nop
                  sra          ra, s10, a3
                  or           a6, a0, a4
                  or           s0, t1, s11
                  slli         s6, a1, 27
                  slli         s10, a1, 25
                  andi         gp, a0, -1179
                  lui          tp, 715635
                  or           s0, zero, tp
                  sra          s6, a7, t1
                  ori          s4, s8, -561
                  sltu         t2, a1, a0
                  srl          sp, zero, zero
                  auipc        s1, 1025915
                  add          ra, s2, s9
                  sra          t6, s11, t6
                  nop
                  addi         s10, s10, -1640
                  andi         a4, a7, -730
                  add          tp, s0, s9
                  slt          t1, gp, zero
                  auipc        a1, 937043
                  xori         s2, s9, -512
                  srai         t1, t1, 3
                  slli         a2, s11, 3
                  lui          t2, 206426
                  sltiu        s10, gp, -1959
                  srl          a7, a2, a4
                  andi         a0, a7, 1521
                  sltiu        s8, s0, 1682
                  andi         ra, gp, -1716
                  srai         a3, s2, 29
                  sltiu        a0, gp, -330
                  slt          s8, s0, s6
                  xor          a4, a7, s11
                  sra          s0, sp, sp
                  srl          gp, a7, t2
                  xor          t6, t4, s9
                  slti         t0, a7, 703
                  sll          gp, s7, s0
                  slli         a3, a2, 16
                  slli         a3, tp, 19
                  and          a3, ra, s9
                  ori          a3, gp, -1778
                  or           zero, a6, s11
                  slli         gp, s0, 12
                  slt          gp, t4, a5
                  srai         s10, s8, 12
                  srli         s7, a2, 29
                  slli         s1, t6, 0
                  sll          t1, a5, a3
                  srli         a5, a5, 16
                  lui          t3, 423881
                  sltu         t3, s10, gp
                  srli         zero, s7, 9
                  li           a7, 0xd1329ca9 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x4085b541
                  li           gp, 0x4684a05d
                  li           a3, 0xffffffff
                  li           t3, 0xffffffff
                  li           a1, 0x80000000
                  li           a5, 0x80000000
                  li           s4, 0x789868d9
                  li           a4, 0x0
                  li           s0, 0x8855f332
                  sub          a4, a1, s0
                  add          s9, a3, a7
                  auipc        a7, 342649
                  nop
                  add          a7, gp, a7
                  lui          a3, 638860
                  sub          t3, s9, a4
                  auipc        a4, 1029430
                  add          a3, a7, a3
                  addi         gp, s4, -954
                  sub          s4, a1, s4
                  auipc        a4, 780529
                  lui          a5, 1023163
                  auipc        s4, 776221
                  auipc        s9, 1497
                  lui          s0, 644051
                  add          s9, t3, a3
                  auipc        a4, 691292
                  sub          gp, s9, gp
                  add          a4, s0, s0
                  add          s9, gp, a7
                  add          a1, s9, a5
                  addi         a1, a7, 1089
                  nop #end riscv_int_numeric_corner_stream_9
                  xori         a3, s1, -1935
                  xori         s1, t0, -1983
                  sra          t1, a5, sp
                  andi         s5, s9, 1824
                  addi         t6, s9, 264
                  slti         t2, s3, 841
                  addi         a0, t4, 157
                  xor          s0, s6, t3
                  sltu         a3, a1, a2
                  nop
                  sltiu        a0, s10, 1570
                  sra          s7, a3, a6
                  add          s4, a4, t3
                  xor          a6, a6, s8
                  addi         a7, s11, 807
                  srl          ra, a3, a4
                  ori          s10, t5, 880
                  srli         sp, a5, 19
                  sltiu        a1, gp, -1372
                  sub          s7, t0, a1
                  or           s10, s1, a3
                  nop
                  sra          s0, a4, t3
                  lui          zero, 186935
                  nop
                  srai         ra, s8, 28
                  sra          s0, a2, t6
                  andi         t2, t0, -171
                  ori          t0, s10, -1049
                  lui          t0, 596937
                  srl          a1, t6, s4
                  or           sp, t2, t5
                  auipc        ra, 515271
                  xor          s8, s6, sp
                  xor          a5, ra, s4
                  nop
                  addi         t2, s1, -1723
                  sll          s8, a0, s0
                  sltiu        sp, t0, 1213
                  srl          a5, ra, t0
                  add          ra, s4, t5
                  ori          ra, s1, 562
                  srli         s6, t3, 4
                  slti         a0, t1, -1371
                  ori          t3, a0, -97
                  slt          a5, t0, gp
                  nop
                  srai         s5, a3, 22
                  slli         tp, zero, 30
                  auipc        s2, 917814
                  srl          t6, t2, s4
                  and          a4, t4, a0
                  add          t3, s10, s1
                  slti         s9, ra, 1118
                  andi         sp, a3, -1729
                  and          s0, t6, s6
                  nop
                  lui          t3, 162552
                  srl          gp, zero, t0
                  or           s9, s0, sp
                  srli         a6, s0, 19
                  nop
                  sub          a2, s1, s8
                  slti         s6, a5, 65
                  andi         t2, t0, 237
                  sltu         tp, t1, s8
                  sltiu        s7, t3, -1413
                  sub          s9, t3, t4
                  srai         s5, t5, 10
                  addi         t2, a0, -1154
                  add          s9, s3, a4
                  xor          ra, s9, s3
                  srai         t5, a0, 20
                  ori          tp, s10, 1426
                  sra          gp, s7, a2
                  addi         a0, t3, 1165
                  sll          sp, zero, a5
                  slti         t5, s0, 1158
                  andi         t6, s11, -1068
                  slli         t6, a1, 2
                  lui          tp, 550031
                  auipc        s10, 670539
                  ori          a1, a1, -1348
                  sltu         s2, zero, a6
                  or           s6, a7, a0
                  add          s1, s6, t6
                  slti         a7, a6, -1155
                  lui          s6, 708819
                  lui          ra, 282455
                  xori         a6, t4, -944
                  sra          zero, a1, s11
                  ori          t6, s11, -231
                  ori          s7, s10, 642
                  srai         t6, s1, 25
                  sltu         s1, zero, a0
                  xori         a5, a5, -444
                  sll          s6, t2, t3
                  sub          ra, a2, s7
                  srai         s4, gp, 27
                  auipc        t6, 535256
                  srai         t3, s11, 20
                  andi         s6, s11, 1200
                  slt          a3, a5, t2
                  addi         sp, a3, 1184
                  addi         t2, a7, 514
                  ori          s0, s11, 645
                  andi         s6, s8, 1257
                  nop
                  srli         t5, s4, 26
                  slli         a5, s8, 26
                  addi         a7, ra, 757
                  sltiu        t3, a6, 39
                  addi         a2, s4, 1577
                  slt          a1, ra, s6
                  xori         t2, s2, -290
                  srai         t0, a6, 31
                  sltu         s5, t3, a7
                  slli         sp, tp, 23
                  sltiu        s1, tp, 486
                  nop
                  slti         t3, t6, -1272
                  sll          tp, s2, t4
                  or           s9, t2, sp
                  nop
                  lui          t5, 944425
                  nop
                  add          sp, a6, s2
                  sll          s8, a3, a7
                  or           tp, t5, t1
                  xor          s5, a0, gp
                  slli         t2, s7, 25
                  sltiu        t6, s3, -1877
                  sltiu        a7, a0, 1155
                  andi         gp, s10, 172
                  and          s1, s10, gp
                  sra          sp, a7, t6
                  sra          a2, t5, t6
                  andi         gp, s1, 1930
                  lui          sp, 371161
                  and          a5, a3, s10
                  and          t2, s6, t1
                  sub          t1, s7, t5
                  or           a0, s5, a4
                  andi         gp, s7, -1794
                  sltiu        s10, s7, 971
                  slt          s2, s8, s11
                  sll          a7, a1, sp
                  ori          s7, s11, 454
                  sltiu        t3, s0, -1533
                  srl          t1, s4, s6
                  or           tp, sp, t6
                  srai         s2, t0, 24
                  sltu         t0, a5, a4
                  or           a3, s4, s3
                  sltu         s0, s3, t2
                  xor          t1, a7, s1
                  sll          t1, s5, a7
                  addi         a0, gp, -47
                  auipc        s10, 806099
                  add          s8, t1, s10
                  xor          s4, gp, s9
                  nop
                  ori          s6, gp, 1413
                  sll          a7, s2, gp
                  lui          a4, 942497
                  srl          a7, s5, sp
                  sltiu        sp, t3, 1481
                  slli         t3, s0, 10
                  srli         a3, a2, 15
                  srli         s8, zero, 4
                  srli         s9, t0, 19
                  xori         s10, sp, 733
                  or           t0, s0, s9
                  andi         gp, s3, -1303
                  srai         s6, t2, 24
                  addi         a6, t4, -1592
                  auipc        s2, 387969
                  or           t3, s6, t0
                  slt          t0, s4, a2
                  slt          a4, a5, a6
                  slti         gp, a5, -97
                  slli         t0, t4, 31
                  sll          s5, s5, t1
                  slti         t1, t2, -1078
                  slt          s9, t0, a4
                  and          tp, s8, t2
                  srai         t6, sp, 23
                  auipc        t3, 490405
                  sub          a4, t2, s10
                  slt          a0, zero, a5
                  sltu         s2, t2, a4
                  xori         s2, t2, 1981
                  lui          s7, 383354
                  add          s6, s8, tp
                  srl          a3, s0, ra
                  addi         a5, s3, -882
                  nop
                  srai         t1, t0, 27
                  nop
                  srli         zero, ra, 12
                  srai         s8, s10, 12
                  add          t5, s4, sp
                  or           a7, a7, s9
                  xori         s6, a2, 1768
                  sll          s5, sp, s2
                  add          a0, s2, s5
                  xor          t1, s2, a7
                  srai         a2, sp, 31
                  sll          s8, s0, s0
                  nop
                  slt          tp, s0, s5
                  xor          s8, t1, a2
                  sra          s7, zero, t4
                  auipc        gp, 207984
                  sra          sp, gp, tp
                  xori         tp, t6, 505
                  add          t2, a1, a2
                  lui          a2, 798184
                  nop
                  srl          s10, t4, s1
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t0, 0x80000000
                  li           gp, 0x80000000
                  li           t2, 0x80000000
                  li           a5, 0x80000000
                  li           s2, 0x80000000
                  li           ra, 0xffffffff
                  li           a6, 0x80000000
                  li           t5, 0x80000000
                  li           a0, 0x80000000
                  sub          t5, a0, t0
                  auipc        ra, 936974
                  add          gp, t0, t0
                  addi         a6, s2, 1036
                  auipc        t5, 504711
                  auipc        gp, 863168
                  nop
                  lui          sp, 258410
                  nop
                  add          a6, t0, a6
                  sub          ra, t0, a5
                  sub          a6, a0, t0
                  auipc        t0, 845063
                  add          a6, a5, sp
                  addi         t0, t0, -1993
                  add          a0, a6, sp
                  add          t2, s2, t2
                  nop
                  lui          s2, 16290
                  sub          sp, t0, s2
                  auipc        a6, 272336
                  sub          sp, gp, a6
                  lui          a6, 318812
                  sub          sp, t0, a5 #end riscv_int_numeric_corner_stream_1
                  ori          s4, a2, 1260
                  and          a4, s7, a4
                  auipc        ra, 623227
                  add          s10, s1, tp
                  srli         tp, t3, 30
                  sltiu        t6, t0, 1238
                  xori         a6, s5, 534
                  sltu         a3, s3, s11
                  sltiu        ra, a2, -944
                  sll          a3, t4, s2
                  add          s6, s4, s2
                  sltu         s6, s2, a6
                  sub          a7, t1, a4
                  slli         t1, a1, 15
                  andi         s5, sp, 272
                  ori          ra, s11, -1319
                  andi         a4, zero, 526
                  add          a7, t6, s3
                  sub          sp, s3, t0
                  addi         s10, s8, 170
                  lui          a6, 540662
                  slli         gp, gp, 0
                  xori         s9, s7, 222
                  sra          s10, gp, sp
                  srl          a6, sp, t4
                  slti         s5, s1, 1006
                  andi         t3, s11, 371
                  and          s10, s0, s4
                  sra          t2, a0, a4
                  nop
                  ori          t6, s8, 1384
                  srli         a6, s5, 27
                  srli         gp, s2, 28
                  sltiu        t5, t5, 1280
                  auipc        s10, 213148
                  srli         t3, t1, 16
                  sub          t0, sp, ra
                  and          s5, a5, a4
                  sll          s6, t3, t1
                  sll          a0, s7, a1
                  or           a2, s0, s11
                  srl          s7, a0, s2
                  ori          ra, a4, 1322
                  nop
                  slt          s8, s8, t5
                  nop
                  sll          a5, a7, ra
                  sub          s9, a3, s8
                  sub          s7, s10, s5
                  and          s1, t6, s2
                  sub          s10, a2, ra
                  and          ra, t6, a7
                  sltu         a0, tp, sp
                  ori          a3, s6, -258
                  sub          tp, s11, s11
                  nop
                  srai         a0, t2, 0
                  auipc        a5, 513487
                  sll          a3, t5, t5
                  lui          t0, 509741
                  sub          a7, zero, t5
                  add          a7, a4, gp
                  sll          gp, s2, zero
                  add          s0, a0, t4
                  slli         a5, a0, 18
                  nop
                  slti         a4, s4, -1511
                  xori         zero, ra, -28
                  sltu         gp, t3, s8
                  ori          tp, a5, -808
                  sra          s2, s8, a1
                  auipc        a6, 691429
                  and          s1, tp, t5
                  xori         s2, s6, -1927
                  sltiu        s5, sp, 436
                  xori         tp, gp, -1228
                  addi         a3, s9, 588
                  auipc        s10, 567853
                  srli         s6, s1, 31
                  slti         s8, s8, -2018
                  xor          s1, a4, t4
                  and          a5, a1, zero
                  slli         s5, tp, 21
                  sra          zero, a2, s1
                  slti         s10, t5, 1002
                  sltu         t0, s4, t3
                  sra          t3, s0, t3
                  slt          a3, t2, t5
                  xor          s7, a3, s6
                  or           a7, t5, a7
                  srai         a7, s10, 19
                  auipc        t5, 797175
                  addi         s4, a7, -1983
                  and          t2, ra, t6
                  lui          s9, 384563
                  add          s2, s7, a7
                  addi         t5, ra, -751
                  srai         t6, tp, 31
                  sub          s0, s9, a5
                  ori          a3, t1, -32
                  slti         zero, s8, -1578
                  srai         s4, s3, 23
                  sltu         sp, a7, s7
                  sltu         zero, s6, sp
                  sltiu        s6, s4, -1153
                  slli         t2, s1, 16
                  sub          s1, s9, t6
                  andi         s7, t5, 440
                  ori          sp, a5, -192
                  add          t6, s1, zero
                  andi         a5, t0, -594
                  sll          a6, ra, s6
                  xor          tp, s11, t0
                  nop
                  addi         a2, t0, 1411
                  xori         a3, tp, -1690
                  sll          gp, s4, zero
                  xori         t2, s7, 2028
                  addi         s1, s7, 1402
                  sltiu        s10, t1, 1894
                  slli         t0, s0, 29
                  srli         zero, s10, 7
                  xor          s2, s7, s6
                  srl          s2, a7, s3
                  xor          a0, s9, a1
                  lui          a1, 761247
                  andi         a7, s8, 869
                  sub          s9, gp, ra
                  or           s9, s4, t4
                  sll          a3, t3, gp
                  or           s0, s8, s2
                  slt          t3, s3, a5
                  srl          a4, s0, ra
                  srai         s2, a1, 2
                  srai         t3, a6, 27
                  andi         s8, t3, -86
                  sltiu        tp, s4, -693
                  xor          tp, a3, s5
                  srli         t6, a3, 9
                  xori         s7, a2, -1036
                  sra          a7, a1, a3
                  sltiu        t1, a3, 315
                  slt          s8, s3, s10
                  xori         s2, ra, 814
                  sltiu        t3, s9, 808
                  xori         t3, s11, 578
                  sub          zero, s0, a4
                  add          t1, s4, a4
                  xori         s7, a4, -123
                  li           ra, 0xa5b73f44 #start riscv_int_numeric_corner_stream_2
                  li           s1, 0x2cf078b7
                  li           a2, 0xafe1e1ee
                  li           s7, 0x0
                  li           s6, 0xe3f24f7d
                  li           s9, 0x0
                  li           a7, 0x4cd3792
                  li           sp, 0x80000000
                  li           a0, 0xffffffff
                  li           s0, 0xffffffff
                  nop
                  nop
                  sub          s6, s9, sp
                  add          a0, s6, a7
                  lui          s0, 40563
                  addi         s7, sp, -192
                  auipc        a7, 355899
                  add          a0, a2, s9
                  nop
                  sub          s1, s7, sp
                  lui          a0, 648936
                  auipc        a7, 700293
                  lui          s1, 846623
                  add          s9, s7, a7
                  lui          a0, 378783
                  sub          s7, a7, s1
                  nop
                  sub          a2, a2, s9
                  addi         s1, a2, -2027
                  addi         sp, s0, -1964
                  sub          s1, a7, s6
                  lui          sp, 271076
                  nop
                  auipc        s6, 751004
                  auipc        a7, 1002792
                  add          a0, a7, s0
                  addi         s0, s0, -609
                  addi         a0, s0, 1302
                  auipc        s6, 263516 #end riscv_int_numeric_corner_stream_2
                  slli         t3, s11, 30
                  nop
                  addi         s8, ra, 1192
                  srl          s2, a3, a0
                  add          s0, gp, s0
                  sll          a5, a7, a4
                  nop
                  add          t1, ra, t0
                  add          s4, ra, zero
                  xor          s9, t1, s7
                  sll          s10, t4, t0
                  sltiu        t6, t3, 1782
                  srli         a1, sp, 18
                  auipc        a7, 789607
                  sltu         s1, a5, s1
                  srli         t1, sp, 7
                  or           s8, tp, a6
                  lui          t0, 819101
                  srli         s0, sp, 4
                  sltu         zero, a7, s6
                  sltiu        ra, s5, 1265
                  ori          s1, s10, -793
                  srli         gp, s2, 11
                  srl          t1, t6, t6
                  addi         a6, t1, -583
                  and          s8, s6, t1
                  nop
                  sltiu        t0, a2, -1916
                  sll          t1, t1, a2
                  andi         a3, t6, -753
                  sltiu        s6, s0, 1641
                  sll          t5, t4, s6
                  add          s7, s11, t6
                  lui          a2, 623320
                  srai         a1, a6, 28
                  srl          t2, t4, t4
                  slli         t5, sp, 9
                  xori         s7, s5, 1304
                  sltu         sp, s8, tp
                  sub          ra, s5, a3
                  xori         a0, s8, -703
                  and          s1, s7, s10
                  ori          a1, s10, 751
                  add          a7, s6, s5
                  auipc        a4, 409000
                  or           s9, t0, a7
                  xor          s0, a2, t1
                  sra          s1, a4, s7
                  slti         s10, a4, 1602
                  or           gp, s8, tp
                  lui          sp, 863680
                  slt          tp, s0, t6
                  sra          tp, s0, a5
                  add          sp, s5, a7
                  and          s8, a0, s11
                  auipc        t3, 706117
                  andi         a7, s10, -1814
                  andi         t2, t1, -333
                  andi         tp, s5, -1229
                  sra          a0, a3, zero
                  xor          t2, s3, s6
                  addi         t0, s2, -717
                  slti         s2, s8, -2011
                  and          a3, s5, t6
                  addi         t1, t2, -335
                  sltiu        gp, t5, 691
                  xor          s9, s0, t4
                  sll          zero, a5, gp
                  auipc        t2, 337862
                  xori         a4, s1, -905
                  slt          a3, s4, t4
                  auipc        a5, 885773
                  sltiu        s5, t3, 1909
                  and          s2, a5, a4
                  sll          a0, gp, t6
                  srai         a2, a4, 18
                  sra          t5, sp, s8
                  sltu         ra, ra, a0
                  xor          s0, a6, a3
                  and          a3, s10, t3
                  lui          zero, 699829
                  nop
                  srai         s7, a2, 3
                  lui          s7, 488044
                  xor          a1, t4, t5
                  nop
                  sltiu        s7, s10, -569
                  xori         gp, a4, 607
                  sltiu        a1, t3, 351
                  xor          sp, a6, zero
                  sltiu        t3, t4, 86
                  addi         a2, t6, 1971
                  ori          s6, a4, 1602
                  auipc        s6, 329454
                  sra          sp, s5, t4
                  sltu         sp, s8, zero
                  andi         gp, a7, 79
                  nop
                  srl          t5, s8, t3
                  lui          t6, 233894
                  lui          t3, 420666
                  sltu         a4, s1, a5
                  sll          t0, ra, s1
                  sltu         s4, gp, t6
                  or           sp, s2, s7
                  and          zero, t5, t1
                  xor          s7, s7, a6
                  nop
                  sra          tp, s6, a5
                  slt          t1, zero, t3
                  and          s4, s7, t1
                  srl          a3, a2, sp
                  ori          a4, s3, -365
                  xor          t6, a1, s6
                  ori          a2, a1, 863
                  or           s5, t0, ra
                  andi         a0, s0, 214
                  lui          s4, 401025
                  srl          a0, s3, t0
                  add          zero, ra, s1
                  nop
                  nop
                  and          s5, s7, s5
                  add          s1, t2, s1
                  sll          a0, sp, t0
                  andi         ra, a1, 850
                  sltiu        a5, ra, -773
                  xor          t3, a6, s9
                  slt          a6, zero, s9
                  slt          zero, s8, t5
                  srl          t3, t4, a2
                  xor          s9, tp, a6
                  sub          s1, ra, t3
                  sltiu        a6, s9, 1359
                  sltu         a0, t6, t0
                  ori          a6, gp, 1072
                  and          a2, t0, s8
                  sltu         s7, s9, a1
                  xor          a3, t5, s10
                  slti         a3, a4, -1962
                  auipc        s5, 615626
                  sra          a7, sp, s9
                  lui          t0, 625730
                  nop
                  lui          s7, 565019
                  nop
                  add          s10, s7, a7
                  xori         s7, s6, -1784
                  slli         t2, s8, 0
                  xori         s2, t3, -263
                  andi         tp, s6, -72
                  srli         a6, a5, 4
                  xori         a7, s3, 1834
                  slti         s6, a2, 1134
                  slti         s5, s0, 965
                  addi         a4, s4, 683
                  slli         s2, a2, 18
                  sll          s0, zero, s7
                  slti         s10, gp, 811
                  ori          tp, s2, 1133
                  add          s7, t4, s4
                  srai         s9, zero, 19
                  sll          s8, a2, s0
                  slt          s9, t2, t3
                  auipc        t3, 148681
                  ori          sp, s2, -1290
                  slt          tp, a4, ra
                  slt          tp, ra, a5
                  sltiu        a0, t2, -1788
                  slli         a7, s8, 27
                  add          t5, t1, t6
                  srai         s4, t1, 7
                  or           s8, s5, s8
                  slt          s1, s6, s4
                  xori         s5, t2, 499
                  sub          s9, a2, gp
                  sltiu        s0, s8, 1685
                  slli         tp, t0, 7
                  nop
                  andi         a0, s3, -755
                  slt          a1, s2, s0
                  auipc        t6, 951044
                  or           t5, t1, t1
                  addi         t3, s2, -1181
                  slt          t6, s3, s10
                  sub          zero, a7, s2
                  nop
                  srl          s1, s11, a2
                  slt          s1, s9, s0
                  sub          t3, zero, a4
                  add          s6, a6, a1
                  nop
                  srl          s9, t5, t1
                  xori         zero, t5, 762
                  srl          s6, s3, gp
                  slti         s8, s3, -1158
                  and          a3, tp, s6
                  sltiu        s9, s4, -1492
                  sltu         zero, s11, s3
                  nop
                  sll          s7, a4, tp
                  andi         s6, s9, -1961
                  add          a3, a1, s9
                  and          s2, t5, t1
                  sub          s2, t2, a4
                  nop
                  add          zero, s1, t6
                  lui          t0, 815963
                  or           s0, a2, a5
                  add          sp, t3, s7
                  addi         a4, a2, 269
                  ori          a4, s0, -135
                  xori         s10, s10, -209
                  xor          s2, t4, s8
                  sra          a0, t1, s11
                  sub          a5, s5, s4
                  xori         s1, s10, 1146
                  sra          s10, s4, s7
                  add          a3, sp, s4
                  srli         zero, t0, 4
                  slti         zero, a0, 1886
                  andi         a4, s11, -1875
                  sra          t1, s3, t6
                  srai         t3, a4, 3
                  auipc        a6, 873264
                  auipc        a1, 927878
                  sltu         s10, s3, s10
                  slti         s7, s0, -892
                  srli         s0, s8, 3
                  nop
                  sll          a3, s3, s3
                  add          s8, zero, s11
                  add          s7, tp, gp
                  sltiu        ra, s2, -731
                  srl          s1, s1, gp
                  sltiu        a5, s0, 730
                  slt          t2, t0, gp
                  sltu         ra, a6, s4
                  nop
                  sra          sp, ra, ra
                  slt          s4, s7, tp
                  nop
                  sub          a2, ra, a1
                  ori          s0, s4, -1891
                  srli         a4, ra, 19
                  sll          t1, t1, s3
                  or           gp, a5, a2
                  or           a1, s5, s0
                  lui          a5, 638395
                  slt          a6, a5, tp
                  auipc        ra, 454058
                  sltu         s6, s9, gp
                  auipc        t6, 519515
                  li           t3, 0x4fbccfa2 #start riscv_int_numeric_corner_stream_16
                  li           t6, 0x480f99ea
                  li           s10, 0x80000000
                  li           s4, 0x0
                  li           s2, 0x0
                  li           t0, 0x0
                  li           s7, 0x80000000
                  li           tp, 0x0
                  li           t1, 0xffffffff
                  li           s5, 0x19bc8f96
                  nop
                  sub          s10, s2, t6
                  sub          s7, s10, s4
                  nop
                  auipc        s5, 357527
                  add          tp, t3, s5
                  addi         s4, t3, -860
                  lui          s10, 601766
                  sub          tp, t0, s10
                  sub          s4, s7, t6
                  auipc        tp, 679863
                  auipc        s2, 166494
                  auipc        tp, 964432
                  auipc        t0, 319333
                  nop
                  addi         t0, s4, -331
                  lui          t1, 30572
                  addi         t0, s2, -1830 #end riscv_int_numeric_corner_stream_16
                  slt          s6, s11, s10
                  srai         s4, a2, 1
                  andi         s6, s3, 511
                  or           a2, sp, s10
                  nop
                  srli         t1, t6, 25
                  sltu         a2, s4, s9
                  sll          gp, a0, t5
                  sra          a2, s1, s6
                  srl          gp, t6, s4
                  add          t1, s6, a0
                  slti         t5, a5, -606
                  slt          t0, s7, t4
                  slt          a6, zero, t2
                  srli         gp, t1, 3
                  srl          tp, gp, t4
                  srli         s0, s11, 4
                  sll          s1, zero, s0
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s2, 0xffffffff
                  li           a2, 0x0
                  li           s7, 0x80000000
                  li           t1, 0x0
                  li           s1, 0x80000000
                  li           s9, 0x80000000
                  li           s6, 0xffffffff
                  li           s4, 0x80000000
                  li           a1, 0x0
                  sub          a2, s2, s7
                  lui          s4, 799501
                  lui          s9, 614891
                  add          s5, a2, s6
                  sub          s1, s2, s4
                  lui          s1, 734680
                  nop
                  lui          s9, 568324
                  sub          s7, t1, s6
                  add          s5, s7, t1
                  nop
                  lui          s1, 717588
                  sub          s7, s1, s1
                  sub          a2, s4, s5
                  add          s6, t1, s9
                  add          s1, a1, s1
                  sub          s7, s1, s7
                  addi         a1, s5, -1692
                  sub          t1, s9, s1
                  nop
                  nop
                  addi         s4, s4, -1542
                  add          s2, s1, t1 #end riscv_int_numeric_corner_stream_5
                  ori          t0, t1, 1399
                  andi         a7, s2, 1254
                  andi         tp, s4, -1117
                  sra          a7, sp, t3
                  xori         a7, a3, -1950
                  srli         t1, s10, 29
                  slli         sp, t2, 10
                  add          t0, a4, a1
                  srl          gp, t5, a0
                  or           t6, s4, t3
                  slli         s5, t6, 19
                  and          a6, s8, a1
                  slt          gp, ra, s0
                  andi         sp, s7, 2038
                  addi         t5, s10, 731
                  slt          a0, a1, t3
                  sra          t6, tp, t4
                  srli         a5, a1, 13
                  or           a2, t6, sp
                  ori          a4, a4, 1109
                  add          t1, s7, t5
                  or           s9, t3, a4
                  ori          s7, s11, 520
                  addi         a5, tp, 677
                  sra          t3, a1, s0
                  and          a2, sp, s10
                  slti         zero, s7, 1952
                  srai         a2, t4, 26
                  nop
                  lui          a5, 446554
                  addi         a0, a5, 1481
                  sltu         a0, sp, zero
                  srai         s9, s5, 17
                  sub          t2, a7, tp
                  slli         t1, s5, 25
                  lui          a3, 999888
                  addi         s10, t6, -922
                  auipc        zero, 226713
                  sltu         ra, s11, a0
                  slti         s9, s6, 506
                  addi         ra, a5, 10
                  sltiu        s1, s7, 995
                  slt          a6, a3, s1
                  slt          t2, tp, a4
                  sub          a2, sp, a3
                  and          s0, s0, ra
                  slt          t5, a4, t6
                  srl          s9, s2, t4
                  sub          a5, a4, s7
                  srai         s9, a2, 22
                  addi         s1, a7, -1234
                  auipc        s1, 326288
                  slt          s9, a1, s0
                  andi         ra, s10, -299
                  xori         s4, a5, 522
                  slt          a2, s6, s4
                  srai         s4, a1, 11
                  auipc        t2, 772755
                  ori          a7, s0, -1588
                  auipc        t0, 978355
                  or           a6, a5, t0
                  xor          s0, a2, s8
                  slt          a5, t5, s6
                  sra          s10, s8, s8
                  nop
                  slt          s1, s8, a4
                  srl          s5, s0, sp
                  lui          a3, 448714
                  srai         t2, a6, 25
                  sltiu        s4, s7, 1090
                  srli         a0, t3, 12
                  andi         t5, t1, 1104
                  sltiu        a5, t2, -834
                  and          a4, ra, s8
                  xor          t6, s0, sp
                  slt          ra, t2, s4
                  slli         a4, s0, 30
                  sub          a7, t4, s5
                  srai         ra, s0, 2
                  sra          zero, s7, ra
                  xori         t1, a7, -651
                  add          a1, gp, a1
                  ori          a5, s11, 10
                  xor          t5, t4, a2
                  and          t1, t1, s8
                  srli         t6, s6, 29
                  srli         s1, s3, 18
                  andi         t5, t2, -580
                  srl          ra, a2, t6
                  sub          a5, a3, s6
                  nop
                  xor          t6, t4, s1
                  srli         t5, s3, 21
                  xor          zero, s1, s11
                  auipc        t3, 207607
                  lui          t3, 776914
                  srli         s1, a1, 15
                  or           s0, tp, s3
                  nop
                  slti         s10, s7, 1832
                  srai         s8, a2, 26
                  ori          t0, s2, -962
                  srli         a7, ra, 7
                  sll          a2, s5, s11
                  sltiu        s7, a4, 1847
                  sll          s1, tp, s9
                  slti         t6, t0, 1354
                  add          sp, sp, t2
                  slli         gp, t3, 13
                  srl          a5, zero, s4
                  add          t3, sp, s11
                  or           t3, gp, a3
                  srl          t1, a7, s7
                  sltu         a1, s7, gp
                  add          tp, s2, t0
                  sub          s6, a5, a3
                  slti         a3, s9, -997
                  sltiu        s0, s6, 1263
                  lui          s9, 726962
                  ori          ra, s9, -1434
                  addi         ra, tp, 622
                  ori          t0, t0, 147
                  slt          a7, s9, a5
                  srai         s10, a3, 16
                  or           a5, t0, s8
                  slti         s5, t5, -1146
                  or           s4, s6, a3
                  slt          gp, t2, gp
                  add          s8, t2, s1
                  sltu         a7, tp, s2
                  lui          a2, 777578
                  xor          a4, s0, t6
                  andi         tp, s3, -385
                  ori          t1, s1, 1773
                  ori          a7, a3, 1835
                  srl          t2, s11, a5
                  add          tp, gp, a5
                  auipc        s6, 496009
                  andi         s6, t3, 884
                  lui          ra, 317195
                  sra          s7, s10, s9
                  nop
                  sra          a2, s0, s10
                  and          t6, sp, s11
                  sltu         sp, a5, t1
                  srl          t1, s10, a2
                  addi         s7, s8, -1561
                  sub          t3, a0, a3
                  slli         s8, s5, 20
                  xor          gp, a4, s6
                  slti         tp, a0, 141
                  add          s0, zero, t4
                  srai         a4, a1, 0
                  and          t5, s9, ra
                  addi         tp, s11, -40
                  slli         t6, a2, 0
                  andi         a3, t3, -78
                  sll          tp, a5, s11
                  slli         tp, tp, 31
                  slti         s7, s7, -48
                  lui          a5, 79981
                  sll          s1, a6, t6
                  andi         a3, ra, 1910
                  auipc        t5, 431785
                  srli         t2, s7, 11
                  and          gp, t5, s9
                  auipc        a5, 627570
                  auipc        s6, 620207
                  sra          s1, a4, tp
                  slli         s10, s2, 31
                  add          zero, s3, t0
                  slti         s8, s0, 1359
                  sltiu        s9, gp, 1667
                  or           a3, t2, s0
                  sll          s5, t4, s2
                  xori         t2, t5, -1657
                  sll          tp, a7, a3
                  sra          s6, t5, t0
                  andi         zero, s9, 1176
                  xori         a2, t2, -796
                  xor          sp, s10, s7
                  srl          s7, s7, a4
                  addi         s2, s9, 1766
                  ori          s9, t2, -877
                  andi         s8, t4, -426
                  xori         t5, a2, -315
                  andi         a6, s9, -150
                  slli         s1, a2, 25
                  srl          a6, s2, s0
                  andi         s0, t6, 1095
                  srl          a0, t2, s0
                  ori          s8, sp, -597
                  and          s5, t5, s6
                  auipc        a3, 1047300
                  srl          gp, a4, s8
                  srl          a6, gp, tp
                  sra          gp, t6, s9
                  xori         ra, a4, -77
                  slti         gp, s0, 656
                  or           t1, a3, tp
                  xor          a0, a2, t4
                  add          a0, t3, s7
                  sra          a0, s3, t3
                  sltiu        t5, t0, 1195
                  slli         zero, a6, 3
                  xori         s6, a3, -1993
                  xori         a4, s6, -1353
                  srai         a6, t4, 23
                  sra          t1, s9, a6
                  auipc        a4, 311781
                  addi         s4, a4, -973
                  lui          zero, 836961
                  srli         ra, tp, 23
                  lui          zero, 462907
                  sub          tp, s9, s1
                  sltu         s6, zero, s6
                  sltiu        s8, a1, -868
                  addi         t2, s9, -1951
                  xori         a6, gp, 29
                  srai         s0, a6, 26
                  srai         s5, t2, 21
                  slt          gp, t5, t4
                  xori         a1, s11, -519
                  lui          a1, 835775
                  sub          t5, tp, t6
                  lui          a1, 384566
                  sll          a1, a7, ra
                  or           ra, s1, t0
                  add          sp, t3, t1
                  or           s9, s5, s0
                  xori         s5, s2, -755
                  lui          a6, 1009131
                  or           s5, t1, s8
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s5, 0xffffffff
                  li           a0, 0xffffffff
                  li           sp, 0x4edc851
                  li           ra, 0xee97ebca
                  li           s9, 0x80000000
                  li           t3, 0xffffffff
                  li           t1, 0xffffffff
                  li           s10, 0x8e0ad084
                  li           gp, 0x0
                  lui          s10, 177881
                  addi         s5, t1, -2033
                  auipc        s9, 561384
                  addi         a0, t1, 952
                  nop
                  auipc        t3, 955128
                  add          s0, gp, ra
                  auipc        s10, 166480
                  nop
                  addi         s9, s0, 1797
                  auipc        t3, 429248
                  add          a0, t1, t1
                  nop
                  auipc        t3, 666941
                  addi         t3, sp, 1406
                  nop
                  addi         sp, s10, -1080
                  nop
                  sub          s10, s10, gp
                  nop
                  add          s9, t1, ra
                  nop
                  lui          s5, 373237
                  auipc        s0, 651845
                  nop
                  lui          ra, 249087
                  addi         s0, sp, 85
                  addi         sp, sp, -1412
                  auipc        s0, 357783 #end riscv_int_numeric_corner_stream_3
                  xor          s5, t4, t4
                  lui          t3, 464647
                  sltiu        s2, t5, -692
                  and          s5, s8, t1
                  slti         t2, a1, 1840
                  addi         t3, a4, -1233
                  add          t0, s1, a3
                  slli         s1, a0, 21
                  srai         zero, s0, 2
                  xori         zero, ra, -977
                  sltu         t6, t1, s6
                  sra          s9, t6, a3
                  sra          zero, s0, s9
                  ori          a2, s4, -611
                  sub          s9, a3, s9
                  srl          a6, t5, a4
                  sub          s7, t5, a4
                  nop
                  ori          a7, sp, 1135
                  sub          t0, a6, tp
                  sltu         t5, t0, a5
                  ori          a6, s0, 35
                  lui          zero, 1018568
                  add          a5, gp, t2
                  nop
                  and          a7, a0, s4
                  xori         t3, s11, -960
                  nop
                  sltiu        t3, s9, 1439
                  xori         s5, s2, -712
                  srl          t1, gp, a0
                  addi         s5, t0, 1030
                  ori          s10, a6, -738
                  xor          a0, s11, a6
                  xori         ra, t0, 1894
                  sra          s0, a0, s1
                  srli         t6, a5, 5
                  slt          s0, s6, s2
                  sltiu        t6, gp, -1751
                  xor          s6, a6, ra
                  add          t3, s11, s0
                  sub          sp, a2, t2
                  srl          a1, s0, a7
                  andi         a4, s10, -1273
                  sltu         s8, zero, t0
                  and          a7, t5, s11
                  slt          s6, s10, gp
                  lui          a6, 417963
                  sll          t6, s1, t0
                  slli         a1, a3, 3
                  sra          t1, zero, s0
                  slti         gp, t3, 875
                  slti         s4, a1, -736
                  slt          s0, s3, zero
                  slli         a0, sp, 20
                  lui          s0, 459276
                  xor          a7, s4, a2
                  xori         s7, s8, -44
                  xor          s1, s9, t4
                  xor          a4, s10, s2
                  slli         t6, a0, 22
                  lui          tp, 745433
                  slli         a7, s6, 29
                  sltu         s1, t6, gp
                  ori          gp, gp, 1130
                  slt          a4, ra, s1
                  slt          s1, s10, a7
                  sll          a6, a4, tp
                  nop
                  sra          tp, s9, ra
                  andi         a2, t4, -1197
                  sll          a4, t0, sp
                  srai         a0, gp, 22
                  or           s6, s0, gp
                  andi         gp, a6, -1887
                  sra          s2, t2, t3
                  slt          a3, s11, s6
                  slli         zero, s11, 7
                  sra          ra, t6, s4
                  slti         a7, t3, -1294
                  nop
                  sltu         t5, s8, a2
                  xori         s5, a6, 1822
                  lui          t5, 106901
                  xori         t1, ra, -433
                  srai         a0, a4, 26
                  slt          s1, s10, s1
                  andi         ra, gp, -520
                  or           a5, t3, s7
                  srli         a0, a6, 23
                  ori          a7, a6, 1454
                  srl          a4, s11, ra
                  slti         s9, t0, -747
                  xori         t3, s2, 1416
                  xor          a3, a1, s4
                  sra          t6, a6, a4
                  srai         t3, t3, 26
                  sltiu        a3, a0, 648
                  ori          ra, t5, -1490
                  lui          s8, 926541
                  lui          a7, 548439
                  ori          t2, a4, -1780
                  sltiu        a0, t5, -811
                  and          a1, a2, a7
                  slli         t2, s11, 28
                  addi         t1, a7, -1631
                  auipc        t3, 582005
                  slt          s5, t2, t1
                  lui          tp, 749739
                  add          s2, s0, s8
                  and          ra, s5, t4
                  or           zero, s3, t3
                  nop
                  and          a0, s2, t1
                  sra          t2, t5, t3
                  or           s0, t0, s11
                  slti         gp, t5, -602
                  auipc        a0, 541065
                  auipc        zero, 741520
                  andi         s8, s7, -1905
                  xori         s2, s0, 1945
                  nop
                  slli         a6, a3, 25
                  xor          sp, t5, t2
                  srli         a1, t3, 28
                  xori         a5, a6, -717
                  srl          s6, a3, s4
                  andi         s2, s3, -1752
                  xori         a4, a1, 469
                  or           t1, s3, s11
                  ori          a4, tp, -251
                  nop
                  lui          s9, 862523
                  or           s5, a5, s10
                  slli         ra, t4, 30
                  sltiu        ra, t3, 446
                  sltiu        s9, t5, -1942
                  sra          t3, a6, sp
                  sra          a7, s11, s7
                  sltu         a7, t6, t1
                  slti         a7, s5, -960
                  nop
                  slli         a5, gp, 26
                  and          zero, a1, a7
                  lui          a0, 666651
                  slt          t6, a7, s10
                  auipc        t3, 22571
                  sll          t5, s7, s0
                  ori          t6, t4, -1602
                  or           t2, s2, tp
                  sub          ra, s7, t0
                  slt          s2, t2, t3
                  auipc        a3, 466209
                  sub          t2, ra, t5
                  sltu         a4, t3, a6
                  ori          s2, a3, 688
                  srai         s10, t6, 13
                  srli         s5, a7, 14
                  srai         t2, a4, 29
                  srai         a7, a5, 3
                  slt          a5, s1, a6
                  xor          s2, s3, sp
                  slti         a7, t6, -966
                  srai         t5, a5, 21
                  sll          a7, t5, s9
                  slti         ra, t1, 1474
                  addi         a5, s11, -1894
                  sub          s2, a5, s0
                  slt          s6, s2, ra
                  slt          t1, a2, zero
                  nop
                  addi         t3, a3, 445
                  xor          s1, s6, s6
                  sub          t5, a6, s5
                  sub          t6, a5, s8
                  addi         s9, s4, -1559
                  sub          a7, t2, t3
                  srli         s8, t4, 8
                  auipc        t1, 810710
                  sltiu        t6, s9, 776
                  slti         s1, t0, 1217
                  addi         a3, s0, -865
                  addi         a6, t5, -292
                  slli         zero, a4, 17
                  sltiu        tp, a1, -1734
                  sub          a2, a7, a6
                  sltu         t6, s1, s6
                  xori         a6, s10, 782
                  srl          s6, a7, s4
                  sra          a4, s11, a5
                  sub          t0, a3, t1
                  sll          s7, tp, s0
                  add          a3, s10, t3
                  nop
                  slli         a4, s9, 12
                  addi         s0, s11, -1584
                  xor          a0, s3, t3
                  srli         s5, zero, 25
                  ori          ra, a6, -1322
                  srl          tp, s4, s11
                  sra          t2, a2, a5
                  ori          s6, a5, -1435
                  srl          a3, t2, a4
                  srl          s6, s11, a0
                  auipc        s9, 931949
                  slt          s8, tp, sp
                  andi         ra, s5, 495
                  and          s0, t5, a6
                  slt          t6, s1, a0
                  srl          a1, a5, s10
                  sltu         s8, s1, tp
                  auipc        tp, 516649
                  sltu         tp, a0, t0
                  srai         a3, s2, 5
                  slti         s7, t6, 861
                  addi         s4, a6, -1089
                  andi         ra, zero, 485
                  slt          t0, t5, a5
                  slti         s7, t5, 893
                  sub          s4, s6, s10
                  addi         a7, a1, -1405
                  sra          t5, t1, s8
                  slli         t0, a0, 11
                  andi         s8, s11, 1843
                  srl          zero, sp, s4
                  slt          tp, t6, a3
                  sll          s9, s8, a0
                  sltiu        s7, t6, 1421
                  lui          a1, 315378
                  sll          a0, tp, t4
                  srli         t0, s4, 24
                  andi         s1, zero, -1338
                  srl          a5, s1, gp
                  andi         t2, t5, 427
                  ori          t2, ra, -1852
                  ori          a5, s9, 250
                  lui          t0, 826628
                  srai         a3, t6, 9
                  srl          t3, t3, a2
                  or           zero, s6, zero
                  add          s1, t1, s9
                  auipc        tp, 420609
                  add          s5, s6, s9
                  srl          zero, s6, s2
                  or           tp, t6, t4
                  add          s4, t6, t6
                  srai         s6, t1, 28
                  and          a3, t4, t2
                  slli         tp, tp, 26
                  nop
                  srl          sp, a4, sp
                  andi         s4, sp, -1706
                  srl          s7, a0, s2
                  add          a1, s9, a5
                  slt          a0, gp, s11
                  srli         a5, a5, 6
                  andi         a7, a5, -828
                  xori         s0, sp, 1095
                  sltu         t6, t4, t6
                  slti         s6, a2, -1739
                  sub          a1, gp, a4
                  xori         sp, s6, 2
                  sltiu        s6, s1, -649
                  add          a1, t5, gp
                  lui          zero, 426041
                  and          t1, a4, a4
                  sra          tp, t1, s3
                  sra          s9, t4, t1
                  sub          a3, gp, t4
                  andi         a2, s5, 131
                  xor          t3, s3, t5
                  sra          t0, a2, a6
                  lui          t2, 19077
                  xor          t3, s5, a0
                  srai         s9, s5, 26
                  sltu         a2, tp, s8
                  srl          s6, s5, gp
                  slt          a1, t5, t5
                  sll          zero, s6, s7
                  and          a5, a0, t4
                  ori          s6, s6, -1541
                  xori         t2, a5, -1484
                  addi         a7, s1, 1842
                  add          a1, s8, s4
                  srl          s8, tp, t3
                  add          a0, s9, s2
                  sltiu        t2, s10, -661
                  slt          t2, s8, s8
                  sll          tp, t2, t5
                  or           a4, s11, s7
                  sltu         t2, s6, t5
                  nop
                  xor          a3, a1, t1
                  slti         t1, a6, -1329
                  lui          s2, 992539
                  sltu         a2, a6, ra
                  lui          a3, 613695
                  srli         s6, a5, 18
                  srli         s0, t3, 8
                  ori          s1, t5, 196
                  nop
                  sra          a1, s1, a1
                  add          t6, t4, s6
                  srai         a6, s5, 2
                  addi         t1, a1, -511
                  or           s6, a7, s1
                  slti         t5, zero, -1382
                  xori         zero, s3, -784
                  add          t1, gp, s1
                  auipc        t0, 824128
                  addi         a4, t6, -1713
                  add          s10, s7, t0
                  xori         s0, s7, -677
                  and          sp, s10, s3
                  nop
                  srai         t2, sp, 8
                  srl          t0, a3, t5
                  lui          s9, 792734
                  nop
                  srli         s7, tp, 15
                  slt          s5, t0, s2
                  slli         t6, a3, 23
                  ori          s8, s11, -794
                  sra          s1, t0, s9
                  addi         a3, s11, 841
                  sltiu        a1, s5, -1451
                  sll          a3, a7, s5
                  addi         t5, sp, 137
                  or           s8, s10, sp
                  sltiu        ra, s2, 1564
                  srai         s7, sp, 24
                  lui          s9, 811319
                  addi         t5, a0, 599
                  srai         a4, t5, 3
                  addi         s0, s2, -1802
                  slt          a7, a4, sp
                  srli         sp, t4, 5
                  xori         tp, s2, 1573
                  addi         a2, t1, -1905
                  sub          s8, s2, t5
                  auipc        s10, 626015
                  ori          s9, s3, 583
                  lui          a6, 996097
                  slli         t0, t3, 30
                  slt          t6, ra, s3
                  auipc        t6, 939573
                  lui          a0, 401619
                  add          s5, s10, a3
                  xori         gp, s11, 569
                  sltiu        s10, t1, 241
                  slt          t3, s3, tp
                  slli         sp, s0, 4
                  xori         t5, s8, -1190
                  slti         t5, a2, 137
                  or           s10, s3, a7
                  auipc        t5, 643558
                  sub          s0, s6, s11
                  slli         a6, t4, 18
                  nop
                  nop
                  and          t3, s2, zero
                  slti         a1, t3, -1631
                  slti         zero, s6, -445
                  nop
                  srli         s6, s6, 31
                  xor          t3, t2, s6
                  sltiu        zero, ra, 1146
                  addi         s2, s10, 1819
                  sra          s7, t5, a5
                  add          a1, t3, s7
                  srai         zero, s2, 28
                  sra          ra, t1, a0
                  srai         t0, a6, 1
                  add          t2, s6, s8
                  slli         t2, a0, 23
                  sltiu        s2, zero, 1543
                  auipc        a1, 828910
                  auipc        a4, 615337
                  srl          a2, s8, s8
                  sll          t3, s9, s4
                  lui          s6, 622737
                  or           t0, gp, t6
                  slli         s4, s11, 2
                  xori         t0, a7, -140
                  sltiu        s5, t2, -1153
                  nop
                  ori          a0, s0, 336
                  xor          a2, t2, t4
                  sra          tp, gp, tp
                  xori         s4, s3, 1151
                  andi         s7, s7, 1457
                  srli         s0, s6, 1
                  slti         s9, s0, -1341
                  srl          s5, t0, s2
                  ori          s5, t0, -1247
                  add          a3, s3, tp
                  ori          t2, s0, -1621
                  andi         s9, s1, -2001
                  and          a2, s4, a3
                  auipc        sp, 950559
                  lui          s8, 16485
                  xor          a6, s7, a4
                  nop
                  addi         t2, a5, -480
                  and          a2, tp, a5
                  srl          a7, a6, a3
                  auipc        s10, 507760
                  sub          s10, gp, s5
                  lui          s8, 488327
                  or           a7, t3, gp
                  slti         t2, zero, -575
                  slti         a4, s5, 1029
                  slli         t6, s4, 30
                  srli         t3, s8, 7
                  slti         s10, ra, -1433
                  sltu         a4, t1, s4
                  sll          zero, s6, a3
                  sll          ra, a2, t5
                  nop
                  sltu         t0, t3, a2
                  sltiu        a4, s2, -937
                  slti         t6, s4, -1592
                  sra          t1, t4, a1
                  sltiu        s8, s7, 1191
                  lui          a7, 801037
                  and          s7, s9, a4
                  xor          t6, s3, ra
                  srli         a6, t3, 28
                  addi         tp, zero, -935
                  sltiu        s6, s8, -444
                  srli         s2, a2, 16
                  sra          s7, gp, gp
                  auipc        t5, 424666
                  and          s6, tp, s11
                  andi         a7, s7, 1828
                  slli         s9, a4, 29
                  ori          tp, s5, -447
                  srl          t2, t5, s4
                  srli         s8, s1, 10
                  ori          ra, a0, 1372
                  sll          tp, a7, s8
                  add          a0, zero, t5
                  sltiu        t3, s4, -1476
                  or           s1, tp, gp
                  add          ra, t5, t1
                  xori         zero, s4, -836
                  srl          t0, t4, t3
                  andi         t5, s3, 1248
                  srai         a6, a3, 17
                  srli         t0, a0, 0
                  srai         s2, gp, 7
                  addi         s9, t4, 702
                  auipc        a6, 679685
                  srai         a1, s9, 9
                  andi         zero, s10, -2036
                  sll          s9, sp, t4
                  auipc        t0, 445183
                  and          s2, s4, tp
                  srl          t0, a7, ra
                  and          a3, s9, s1
                  or           a4, zero, ra
                  auipc        s0, 69014
                  addi         sp, t1, -27
                  xori         a1, tp, 1182
                  srli         zero, a6, 4
                  srli         s5, t6, 5
                  xor          zero, a7, t6
                  lui          a5, 167413
                  sltu         s6, t1, s8
                  auipc        gp, 741340
                  slti         t6, t1, -377
                  srl          a6, zero, a1
                  sra          s10, s4, s9
                  ori          s6, tp, -205
                  addi         a0, zero, 865
                  slt          zero, sp, tp
                  sll          ra, s10, a7
                  add          t1, a0, s3
                  andi         sp, tp, 181
                  sub          s0, s5, gp
                  srli         a5, s2, 19
                  ori          a2, s9, -2046
                  srl          s2, a4, s11
                  nop
                  addi         a1, s3, 955
                  srl          s6, s2, t4
                  srli         tp, t3, 22
                  auipc        sp, 485014
                  srai         s5, a6, 24
                  lui          s2, 718022
                  srli         tp, s5, 14
                  slt          zero, a1, zero
                  slli         sp, t5, 2
                  lui          s1, 533797
                  nop
                  andi         ra, s3, -587
                  lui          tp, 738154
                  srl          a7, sp, t6
                  sltiu        a3, s0, -357
                  nop
                  ori          a3, tp, 576
                  sltu         s9, s1, sp
                  slti         a2, a2, -691
                  slt          a7, tp, t3
                  sll          t3, a2, zero
                  xor          a0, t2, a0
                  add          s4, zero, a3
                  sra          a4, t1, a3
                  xor          a4, s5, t6
                  srai         t6, s10, 3
                  ori          t5, s5, 286
                  sll          t3, ra, ra
                  nop
                  or           s7, s8, t6
                  lui          a4, 585019
                  add          tp, s0, t5
                  andi         s6, a0, 844
                  sll          gp, s6, s6
                  srl          ra, s8, tp
                  addi         a5, s10, -1839
                  sra          a4, t1, a4
                  add          t6, s8, ra
                  auipc        t0, 404541
                  andi         s9, s2, 1763
                  nop
                  andi         s4, a0, 1653
                  srli         s4, gp, 15
                  sub          gp, a7, a7
                  auipc        t1, 420512
                  srl          sp, s8, t1
                  slti         t6, t0, 243
                  and          a3, a4, s6
                  slli         t6, a4, 11
                  andi         a6, t2, 1042
                  sra          s8, s4, s7
                  sltiu        a6, a5, -1489
                  sll          s6, s6, a4
                  slti         sp, a2, -1827
                  srai         a3, tp, 17
                  addi         s5, sp, -1590
                  slli         s1, s3, 5
                  slt          s5, a7, t2
                  sltiu        s1, s3, 818
                  xori         s0, s9, 1516
                  lui          ra, 270997
                  sra          gp, t2, s7
                  andi         s6, tp, -1886
                  srli         s10, t6, 14
                  nop
                  srli         s8, t0, 1
                  sltu         s10, s10, zero
                  srli         a4, a2, 31
                  nop
                  srai         a5, a3, 9
                  addi         a7, sp, 1789
                  slt          t3, t0, s9
                  sra          ra, zero, s11
                  and          a1, a3, sp
                  slt          ra, a7, s3
                  lui          tp, 770211
                  add          gp, s10, s1
                  addi         a4, t0, 390
                  lui          s9, 96847
                  lui          a3, 735325
                  sub          t3, s3, t1
                  srl          t6, a3, zero
                  sltu         ra, s6, t2
                  ori          s9, a1, 1824
                  xori         s9, gp, 208
                  sltu         t3, s10, t6
                  ori          ra, a6, 139
                  and          t3, a1, a1
                  or           s1, t5, a7
                  and          s9, tp, a5
                  xor          s4, s10, s2
                  slli         a2, t5, 11
                  addi         a0, ra, 162
                  slti         a4, s2, -1180
                  sltiu        a6, s8, -1590
                  srli         a2, s7, 0
                  srai         tp, a4, 4
                  slli         s10, t4, 13
                  sltu         t0, a1, a4
                  sub          t6, sp, tp
                  ori          s1, s2, 382
                  and          a1, s9, s9
                  auipc        s4, 197243
                  and          a7, a1, t5
                  sll          a0, a7, t2
                  sll          s8, s10, s5
                  and          s4, s4, s10
                  add          s7, s4, tp
                  slli         t3, a2, 0
                  nop
                  slli         s7, a7, 5
                  xori         ra, ra, -792
                  srl          t0, s9, t2
                  xori         a4, a0, 857
                  lui          s10, 72959
                  addi         a2, s10, -469
                  and          s7, s5, t2
                  sub          a0, t4, a5
                  srai         ra, gp, 18
                  slli         s5, zero, 23
                  sra          sp, s9, a5
                  slt          a5, s5, a4
                  slti         sp, gp, -218
                  or           s6, sp, t1
                  addi         t6, s5, -1822
                  lui          a5, 37240
                  or           s1, s1, s8
                  addi         s10, a7, 233
                  nop
                  ori          a1, t5, -2022
                  xor          a1, s7, s11
                  sll          s2, s3, tp
                  sltu         a5, s7, s2
                  sll          t3, zero, t6
                  xor          a7, a0, s8
                  xori         a4, a2, -614
                  sll          a5, s7, tp
                  sub          a3, s10, ra
                  sll          s2, a6, a6
                  sub          a6, a4, s2
                  addi         t5, s6, -1344
                  nop
                  srli         t2, t5, 31
                  andi         a7, a2, -1659
                  add          a1, s0, s9
                  nop
                  sub          s0, a5, a0
                  sltiu        a3, s11, 819
                  sll          a1, a4, a5
                  sll          a4, s7, a6
                  nop
                  addi         a3, gp, 2040
                  add          s0, a1, t3
                  sub          s2, a2, tp
                  andi         s4, s6, 1938
                  srl          a1, s5, s2
                  slti         s6, s8, -223
                  slli         t6, a4, 11
                  slt          s9, tp, s6
                  nop
                  xori         sp, s6, -1750
                  slti         a1, a7, 390
                  add          s0, t5, a4
                  sub          s2, a5, s0
                  or           zero, s1, s8
                  andi         a5, t1, 1632
                  slt          a6, s5, s5
                  slli         s6, t4, 0
                  andi         s7, s11, -623
                  xori         s0, s5, -1913
                  or           ra, sp, t2
                  sltiu        a4, gp, -1720
                  add          s10, s8, t6
                  slti         tp, t5, -1760
                  lui          s9, 641225
                  sll          a6, s7, sp
                  sra          s5, a1, s11
                  xori         s4, s6, -396
                  slti         sp, t6, -1240
                  sub          s9, a1, t4
                  slti         a1, gp, -1728
                  srai         a0, s8, 28
                  or           a1, s6, a6
                  ori          t6, t6, -1569
                  slt          t1, s0, s11
                  xor          s1, s10, t0
                  add          t3, ra, t2
                  xor          t6, a1, s0
                  slli         a4, t2, 23
                  or           a6, s2, t2
                  srai         s5, tp, 14
                  sltiu        s10, s3, -191
                  add          tp, s0, s1
                  srai         s4, t6, 3
                  lui          t1, 526783
                  and          a6, a4, s11
                  srai         t1, t4, 30
                  slti         tp, s9, -1331
                  sltu         s2, sp, t3
                  nop
                  sltiu        s4, s11, -1744
                  add          a4, t4, t6
                  or           zero, s4, gp
                  or           s5, t5, s0
                  or           s7, s0, s6
                  add          s8, s5, t3
                  or           tp, s3, s10
                  slli         t6, a0, 9
                  lui          ra, 255481
                  slti         s0, t6, -669
                  xor          sp, a1, a6
                  sltu         t2, s2, s0
                  sll          t2, s7, t1
                  addi         s7, ra, 742
                  add          a0, s4, s2
                  slt          s6, t3, zero
                  slli         s5, t6, 4
                  srai         a0, a7, 3
                  sra          sp, ra, tp
                  lui          s8, 429158
                  sub          s7, t6, t1
                  nop
                  srli         a4, s6, 10
                  xori         tp, s6, 1144
                  andi         t3, s0, 743
                  srai         t2, tp, 9
                  sll          t6, t6, s6
                  auipc        s4, 507911
                  xori         a2, tp, 970
                  addi         ra, zero, 1989
                  addi         s10, t4, -1169
                  sll          t2, t4, s8
                  slti         s10, s9, -1833
                  sra          a5, s8, a4
                  auipc        s6, 227224
                  sltiu        t5, a4, 1799
                  or           sp, s6, s11
                  slt          s8, s1, a7
                  sltiu        zero, a0, 1654
                  sub          s4, t0, s4
                  andi         a4, s2, -102
                  add          s2, tp, a1
                  or           a6, s2, t6
                  nop
                  srl          t1, s8, t1
                  ori          t5, s7, 1477
                  andi         gp, a7, 489
                  sltiu        s5, gp, 126
                  and          t5, zero, t4
                  srai         a3, t4, 31
                  sra          a1, s7, t1
                  sll          s0, a2, s6
                  sub          t5, t5, s8
                  slli         a2, gp, 30
                  xori         s9, s8, 1590
                  or           a3, s3, t4
                  ori          t5, a4, 309
                  nop
                  or           t0, s3, a7
                  andi         t3, a5, 165
                  xori         a5, a1, 1806
                  sll          t2, t2, ra
                  slli         a7, t2, 5
                  or           s2, s9, s11
                  sra          t6, s0, sp
                  slt          a4, t1, t0
                  auipc        s2, 465747
                  xori         a1, sp, -1292
                  auipc        zero, 908241
                  auipc        t2, 311511
                  srli         tp, a0, 31
                  slti         t5, s6, 1858
                  slli         s8, s11, 26
                  xor          t6, s8, s11
                  sub          zero, s11, s0
                  sll          s1, t0, s1
                  lui          ra, 815348
                  srli         a6, a3, 22
                  add          a0, s1, a6
                  sltiu        s7, s7, -65
                  sltu         s7, t0, a2
                  sltiu        t6, s10, 1429
                  slti         a1, t1, -867
                  sltiu        a1, sp, 1874
                  addi         zero, a3, -1882
                  xor          t6, t6, sp
                  xor          sp, s3, t0
                  sra          a3, a5, s1
                  lui          tp, 315071
                  and          a6, s1, s10
                  lui          s7, 435782
                  slt          t3, ra, s4
                  sltiu        a4, a7, 334
                  sub          s10, t4, t1
                  slti         a6, t6, -1428
                  sll          a7, a0, t6
                  and          s8, ra, t3
                  or           s0, t3, t0
                  or           t0, s8, s3
                  add          s8, s10, t4
                  slli         s9, a4, 5
                  sltiu        t0, s10, 858
                  xori         sp, a4, -158
                  add          s9, a0, t0
                  sll          t6, t6, s1
                  sltiu        s10, s7, -1415
                  xor          a3, zero, s3
                  sub          s2, a2, t4
                  and          s4, a6, ra
                  sra          a3, tp, t4
                  addi         s5, t1, -1903
                  sra          s1, sp, t6
                  sltu         s9, a1, a1
                  sltiu        t6, s9, 943
                  sub          a2, s10, t3
                  xori         ra, a0, 1187
                  sltu         a4, s0, t3
                  lui          s9, 326993
                  add          a7, s0, t5
                  nop
                  sll          t1, t3, t0
                  or           a7, zero, a5
                  andi         t3, a0, 612
                  addi         a5, a6, -1276
                  sub          a2, s0, s11
                  addi         sp, a7, -1608
                  sltu         t3, a5, a2
                  srli         a1, zero, 23
                  sra          sp, s6, a2
                  xori         t2, s5, 782
                  sltu         s9, t1, sp
                  slt          sp, a4, sp
                  srai         t3, s4, 2
                  xor          s2, s10, s10
                  slti         tp, s8, 1932
                  slt          a7, t2, a4
                  or           s4, s5, a0
                  ori          t1, s0, 1239
                  sra          s2, s5, a1
                  nop
                  slti         sp, tp, -1608
                  xor          t0, ra, t6
                  addi         a6, t6, -1543
                  sra          s7, t0, ra
                  addi         t1, a7, 991
                  andi         a5, a1, -1464
                  or           s6, s9, a2
                  ori          t5, a4, -14
                  nop
                  or           s4, a6, s5
                  or           s1, s8, s7
                  andi         a1, t5, 310
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           ra, 0x80000000
                  li           a7, 0x854f74f3
                  li           t3, 0x80000000
                  li           s1, 0xffffffff
                  li           s2, 0xffffffff
                  li           gp, 0xb036965e
                  li           s5, 0x80000000
                  li           s4, 0x0
                  li           t6, 0x80000000
                  addi         t5, t5, -1831
                  nop
                  lui          t3, 929564
                  nop
                  auipc        t5, 587604
                  sub          s1, t3, a7
                  lui          gp, 69976
                  lui          t5, 943344
                  lui          s2, 146437
                  auipc        t3, 894383
                  addi         s2, gp, -1941
                  lui          s2, 1043366
                  auipc        s1, 302069
                  nop
                  addi         ra, gp, 557
                  lui          s1, 1004523
                  sub          ra, t5, t6
                  sub          ra, t5, t3
                  lui          a7, 679993
                  addi         t6, t3, -981
                  lui          s5, 954800
                  auipc        t3, 805596
                  sub          s4, s1, t6
                  lui          ra, 202953
                  auipc        s5, 162748
                  add          gp, t5, s4
                  add          s4, t3, gp
                  lui          t5, 136104 #end riscv_int_numeric_corner_stream_11
                  addi         s6, a0, -1350
                  sub          t5, s9, gp
                  srai         a7, t6, 9
                  addi         a2, s0, 1019
                  slt          s4, s9, a6
                  slt          s4, a0, a5
                  sll          t3, a1, t2
                  slti         s5, a0, 28
                  add          t1, a4, s2
                  add          t2, a6, t1
                  add          t5, t2, t4
                  lui          t1, 81060
                  nop
                  lui          t5, 977223
                  srl          s7, s3, t1
                  lui          a6, 774811
                  nop
                  slt          s9, a2, t3
                  addi         t3, a2, 1412
                  slti         sp, a4, 1941
                  nop
                  nop
                  slti         s9, s1, 500
                  sll          s6, zero, t6
                  andi         s8, s7, 1008
                  sll          s2, s3, t5
                  xor          sp, t6, a7
                  xor          a1, a5, ra
                  sltiu        s10, zero, -886
                  xori         t1, tp, 302
                  ori          a4, tp, 702
                  sltu         t3, a1, a6
                  addi         a6, t6, -1516
                  add          s9, t0, s6
                  auipc        t2, 171722
                  add          sp, t1, s9
                  slli         zero, a3, 8
                  add          s4, a0, s11
                  xor          s4, s8, a7
                  sltiu        sp, s1, 1592
                  sub          zero, t1, s2
                  slli         a5, s0, 10
                  srai         tp, tp, 12
                  srl          s10, a7, s11
                  sltu         s8, t2, a3
                  and          t0, s8, a6
                  slli         a3, gp, 6
                  slti         s10, a0, 939
                  auipc        a1, 922677
                  add          s10, zero, a6
                  xor          t6, tp, s5
                  sltu         s0, s11, a0
                  srl          s5, s1, s3
                  addi         a4, s9, 440
                  sltu         a2, s0, a3
                  sltiu        s0, a6, -1986
                  lui          a6, 14636
                  andi         s2, a3, -1613
                  addi         s8, t2, 360
                  sltiu        s9, s7, 1218
                  xor          a1, s4, a6
                  and          t1, ra, s10
                  sll          a4, s5, s2
                  nop
                  slti         s8, a6, -1166
                  srai         s6, tp, 28
                  slt          t3, s5, s5
                  sra          t3, s0, s4
                  add          ra, a6, t5
                  sub          zero, s1, a7
                  sub          tp, t6, t0
                  lui          a7, 772302
                  slti         t6, s1, 536
                  addi         gp, s8, -1742
                  srli         s10, a0, 8
                  srl          t0, a7, s4
                  sll          s6, t0, zero
                  sltiu        s9, a4, 1521
                  lui          t0, 19740
                  slt          t2, sp, t3
                  add          t0, zero, t2
                  slli         gp, s10, 31
                  sra          s4, s8, s5
                  ori          a2, t2, 1298
                  xor          t3, a2, t0
                  add          t2, a7, gp
                  sltiu        a6, s6, 1073
                  srai         a4, s2, 23
                  srai         s4, a1, 23
                  addi         a5, t1, 866
                  ori          tp, t5, -1972
                  sra          t5, s8, s0
                  slti         a0, a0, 394
                  sra          s5, a2, t1
                  srai         a7, gp, 31
                  slti         a5, tp, -244
                  xor          a1, gp, a7
                  srl          sp, a3, t5
                  slti         s6, s1, 2024
                  addi         a6, s6, -323
                  sra          s9, t3, a6
                  sltu         tp, gp, a4
                  addi         s6, a6, -30
                  srl          s8, a4, t1
                  lui          s4, 472217
                  addi         s0, a6, -545
                  and          s4, zero, a3
                  auipc        s4, 10156
                  srai         s9, t6, 5
                  xori         s6, a6, 1440
                  sll          t6, t1, t0
                  srli         t5, ra, 15
                  lui          tp, 411459
                  slli         s8, s0, 8
                  and          a3, t3, ra
                  sra          gp, a7, tp
                  xor          a4, s10, sp
                  andi         s0, a5, -717
                  xori         sp, a7, 424
                  sra          s2, a6, s1
                  sub          a5, s3, s6
                  andi         a3, s11, 863
                  ori          ra, s3, 1248
                  sll          s6, s9, ra
                  srl          s6, a6, s10
                  xori         s2, s10, 889
                  ori          t3, a5, 1651
                  nop
                  slli         s6, t4, 30
                  slti         t5, t5, -1803
                  ori          s9, t6, -439
                  addi         t2, sp, 1242
                  sub          s10, a4, t5
                  sltu         gp, a5, t1
                  lui          s7, 397119
                  add          ra, t2, s4
                  andi         ra, s9, -245
                  ori          sp, zero, -791
                  sra          s0, tp, a0
                  xor          t1, s1, s4
                  xor          t0, tp, sp
                  or           a5, t5, s8
                  lui          a2, 216252
                  slti         ra, zero, 1659
                  xor          a4, a0, t1
                  nop
                  srl          a7, t6, t5
                  srai         t2, a3, 12
                  add          s6, s3, t5
                  ori          a1, s3, 1993
                  sub          s10, s5, t2
                  slli         tp, a6, 19
                  xori         t5, s7, -348
                  sub          a7, s10, s10
                  srl          gp, s6, t3
                  xor          tp, t6, a6
                  and          t3, s0, a6
                  sltu         a3, s5, a5
                  sll          t2, a1, s2
                  auipc        a5, 377912
                  slti         zero, a4, -884
                  slli         s7, s1, 25
                  sltiu        a7, a0, -1631
                  add          s6, a0, s4
                  lui          s8, 280916
                  srl          a0, t1, s6
                  sll          a0, s0, s7
                  xor          s10, s1, a5
                  lui          t0, 374326
                  lui          s0, 432467
                  ori          t6, gp, 550
                  sltu         a5, a3, t3
                  sltu         sp, t0, a1
                  sra          a5, ra, a3
                  or           s4, s1, s11
                  lui          s9, 761320
                  auipc        t0, 343447
                  xori         zero, t3, 253
                  nop
                  srl          s7, a6, a4
                  ori          s8, a4, -1692
                  auipc        ra, 655693
                  addi         ra, s3, -211
                  addi         a5, s7, -1955
                  or           tp, t4, zero
                  srai         t2, zero, 30
                  slli         ra, t1, 9
                  xori         a0, t3, -1461
                  slt          a0, a0, s4
                  sll          t0, a0, a1
                  ori          s7, t0, -823
                  slti         a0, a7, 762
                  sra          s1, a3, a0
                  xor          a0, t5, t5
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a2, 0xffffffff
                  li           a6, 0xffffffff
                  li           a7, 0xffffffff
                  li           a1, 0x80000000
                  li           t6, 0x80000000
                  li           a3, 0xffffffff
                  li           s2, 0x0
                  li           t1, 0x45fb03c9
                  li           s8, 0xffffffff
                  sub          s8, a1, s2
                  auipc        t1, 672309
                  lui          a1, 305527
                  sub          t6, a2, a3
                  add          t1, a6, s8
                  lui          a3, 828562
                  auipc        a1, 850743
                  addi         a3, s2, -416
                  lui          t6, 547831
                  addi         s2, a1, 1165
                  add          s8, s8, s8
                  addi         t6, t1, -1082
                  lui          t1, 502119
                  add          a1, tp, a7
                  auipc        s8, 550060
                  auipc        tp, 1039214
                  addi         t1, a3, 971
                  sub          a6, a6, a1
                  lui          a6, 629649
                  nop #end riscv_int_numeric_corner_stream_4
                  slt          t3, s8, t6
                  srl          s2, zero, s7
                  nop
                  srai         tp, t3, 20
                  xor          s8, a2, a7
                  slti         t3, t1, 354
                  or           a1, gp, s0
                  srli         a3, t3, 20
                  lui          zero, 566881
                  srai         t0, s7, 16
                  slti         a2, a6, -952
                  ori          sp, s2, -1774
                  xor          t3, s11, s5
                  slti         tp, a6, -1390
                  addi         zero, s10, 200
                  srai         s9, s9, 3
                  slt          t2, s3, sp
                  sll          a3, t4, s5
                  srli         t2, gp, 28
                  nop
                  slt          a7, s6, s11
                  andi         s7, s0, 334
                  addi         a2, s8, 1475
                  sltiu        t3, a7, -511
                  sltiu        tp, s10, 256
                  andi         t5, t6, 640
                  sra          s0, ra, s10
                  and          s4, a1, s11
                  srl          t5, ra, t4
                  auipc        s6, 715043
                  lui          s9, 979612
                  and          a4, t0, s11
                  andi         ra, s9, 761
                  slli         a3, gp, 24
                  ori          sp, t2, 768
                  srl          s6, a3, s11
                  sltiu        ra, gp, 907
                  lui          a7, 245817
                  or           gp, gp, a1
                  sub          sp, a4, t2
                  andi         s9, t5, 80
                  lui          a2, 175414
                  sltu         a4, s1, a2
                  lui          a3, 993457
                  srai         a0, s0, 20
                  slt          s7, s5, s6
                  sltu         a4, a7, tp
                  ori          s8, a1, -158
                  sub          s5, t5, s11
                  nop
                  sll          gp, t4, t2
                  sra          t2, s3, s1
                  andi         s8, t2, 1582
                  srai         t2, t3, 25
                  sra          s1, a1, gp
                  xori         s6, a0, 634
                  or           a5, s11, t6
                  slt          sp, a4, t5
                  sltu         s4, gp, s8
                  sub          t0, a3, s11
                  sltu         s6, a4, s5
                  sltiu        a5, a1, -1231
                  srli         s7, a1, 15
                  srl          a1, sp, s2
                  slti         a7, a3, -897
                  nop
                  lui          t6, 410259
                  ori          t5, s0, 1941
                  xori         a3, s3, -109
                  slli         s4, a6, 12
                  ori          s0, t1, -1221
                  sub          s0, s8, a0
                  sltu         s10, t5, t6
                  and          zero, a4, s7
                  or           s5, s10, t0
                  sra          t6, s1, a5
                  addi         s8, a2, -1983
                  addi         a2, s2, -366
                  slli         s10, s5, 29
                  sub          t5, a1, ra
                  sltu         t6, s0, s0
                  addi         tp, a3, 1372
                  slt          sp, tp, s6
                  lui          s4, 158247
                  lui          a0, 232377
                  lui          t0, 716563
                  and          s4, t3, ra
                  xor          a3, s9, a2
                  add          a6, s0, zero
                  ori          t6, sp, 723
                  sub          s1, a3, s2
                  sltu         a1, t4, a4
                  andi         s2, a3, -1160
                  srl          t6, s5, t0
                  xori         a7, sp, 1466
                  sll          a3, s3, t1
                  andi         zero, t2, -1780
                  sll          s9, s1, a6
                  nop
                  sub          a0, t6, s9
                  srl          a4, tp, s7
                  andi         sp, s2, -1977
                  sll          s2, t3, t4
                  andi         a1, s5, -621
                  slli         t5, t0, 29
                  add          ra, a6, a2
                  srai         a7, s0, 29
                  slli         a3, a3, 6
                  and          a0, s8, s8
                  add          s2, t3, t3
                  andi         a1, tp, -745
                  nop
                  srai         a4, s8, 8
                  sra          s8, a5, a0
                  sltu         t5, t3, s8
                  addi         t1, s8, -1493
                  xor          s5, tp, a6
                  slt          t1, t6, a4
                  sll          gp, t3, s11
                  or           s6, zero, t2
                  and          s2, s4, s4
                  auipc        s4, 342307
                  andi         s10, t1, 261
                  addi         a7, s2, 1654
                  auipc        a2, 778272
                  srai         t2, s5, 25
                  srai         a3, tp, 6
                  lui          s10, 16827
                  sltiu        s8, s6, -785
                  xor          s0, s2, t5
                  slti         a2, t4, 1014
                  sra          t3, zero, t0
                  or           s6, ra, a1
                  xor          a5, t1, t0
                  xori         ra, a7, 206
                  sub          s10, s7, s6
                  sltu         a3, a0, t3
                  addi         s7, s5, 553
                  sltiu        zero, s1, 261
                  and          tp, t0, t3
                  sll          zero, s8, sp
                  and          t6, a6, s4
                  sltu         s9, a2, zero
                  sub          t2, s3, a1
                  auipc        sp, 461368
                  auipc        a1, 193789
                  ori          t1, a7, 1023
                  add          ra, t4, s2
                  xor          sp, t5, s10
                  sltiu        a0, s0, 533
                  nop
                  srai         tp, a2, 31
                  andi         s5, a0, 400
                  nop
                  srai         s4, a0, 24
                  nop
                  srl          tp, s1, a5
                  srl          gp, zero, ra
                  slli         s2, sp, 12
                  sltiu        s10, a5, 695
                  xor          s4, a1, t1
                  add          s9, a5, s7
                  sll          t0, a4, a5
                  srai         t2, gp, 25
                  srli         t2, s0, 21
                  sltu         sp, t5, s10
                  auipc        s7, 661373
                  xori         t2, s8, -504
                  add          t2, s3, s0
                  slti         a5, gp, -1007
                  auipc        a5, 415489
                  slli         t2, s0, 12
                  and          t1, s4, a0
                  auipc        a1, 671886
                  and          a6, s6, t5
                  slti         t6, a2, 958
                  and          ra, a7, a5
                  slli         s9, s7, 30
                  ori          s0, s6, -133
                  auipc        a3, 921967
                  slti         s7, s5, 1900
                  xori         gp, s10, -27
                  sltu         sp, sp, s6
                  sub          s9, t5, s7
                  auipc        s8, 999644
                  nop
                  sll          t0, a2, a0
                  xori         tp, t3, 1728
                  sltiu        a4, tp, -523
                  and          tp, s4, a7
                  sra          s0, s5, t0
                  nop
                  sra          a6, sp, s3
                  slt          a7, t6, a2
                  srl          t6, s9, t1
                  add          t3, s8, s9
                  xor          t0, s0, s10
                  andi         a1, zero, 744
                  auipc        s6, 1016941
                  slti         s9, t5, 448
                  or           s5, s8, t3
                  add          s1, s0, t3
                  srl          sp, s9, s0
                  sub          sp, a3, s2
                  srai         s6, s1, 5
                  sra          s5, s4, s10
                  lui          s8, 68220
                  slli         s1, s3, 13
                  sub          t3, t4, t0
                  slli         a6, t3, 21
                  and          a1, s11, s10
                  srai         s10, s9, 15
                  slt          s4, s5, t6
                  nop
                  xor          a3, s7, t6
                  srai         zero, sp, 31
                  slli         gp, s6, 15
                  add          s10, a0, s1
                  sll          a7, s5, s2
                  or           s10, gp, s1
                  xori         t3, a7, 1617
                  xor          a3, t0, s10
                  srai         s6, s6, 0
                  auipc        ra, 784737
                  slt          s8, s2, s0
                  ori          a6, t6, -1791
                  sltiu        s5, ra, -966
                  sll          t0, t2, s0
                  sltu         s7, s5, a5
                  auipc        s2, 3860
                  nop
                  xori         t6, a3, 1364
                  nop
                  sll          s1, a2, s0
                  and          s2, a2, sp
                  addi         a2, s2, 1383
                  or           t1, tp, t3
                  sltiu        gp, s6, 1018
                  add          t1, a3, a5
                  xori         s4, gp, 1622
                  slt          s5, s4, s10
                  sub          s6, zero, t2
                  srli         a4, t1, 30
                  or           ra, s6, t3
                  or           s4, tp, s7
                  nop
                  sll          a0, zero, s2
                  sra          s9, sp, a2
                  slt          a6, a3, zero
                  sub          a4, t2, s4
                  srl          a4, gp, a5
                  xori         s5, a0, -543
                  and          zero, a2, sp
                  sra          ra, s1, tp
                  xor          s6, t3, s0
                  srl          s5, t6, a7
                  slt          zero, s5, t5
                  xor          s10, t6, t1
                  slti         s2, t5, 1069
                  andi         s4, t3, -348
                  xori         s4, t5, 1843
                  lui          t0, 249938
                  xor          a3, t5, a5
                  xor          s1, s0, s3
                  nop
                  sub          t2, a1, s1
                  add          a3, s6, gp
                  srai         zero, tp, 21
                  slti         a3, t2, 1301
                  sltiu        s6, a3, 1970
                  ori          a6, sp, 25
                  nop
                  and          gp, t2, a3
                  srl          t5, zero, s2
                  addi         t2, s6, -1461
                  slti         a2, a4, -1969
                  or           s2, s2, t4
                  srli         s5, s9, 20
                  slli         t3, t1, 25
                  xori         t1, a6, 1863
                  lui          t0, 726075
                  and          t5, a6, t3
                  addi         t2, t3, -741
                  xori         s8, s5, 1057
                  srli         t3, s5, 0
                  add          s10, a2, t0
                  sub          s6, t5, sp
                  and          t6, a4, tp
                  xori         t0, s5, -1945
                  sltu         t0, t1, t1
                  sltu         s1, s2, s3
                  sub          t5, gp, t5
                  sra          s9, s4, ra
                  addi         s0, t6, -1989
                  or           s9, tp, s6
                  sltu         ra, t0, s4
                  slt          gp, s0, a2
                  sll          gp, s4, a7
                  srli         sp, a6, 30
                  ori          tp, a3, -38
                  nop
                  auipc        a2, 1012723
                  srai         t0, s7, 3
                  sub          s6, t3, t1
                  srl          s8, a6, s7
                  andi         a3, t0, -1421
                  nop
                  lui          ra, 909805
                  addi         a5, tp, 801
                  srl          sp, s6, sp
                  sltiu        t3, s3, 204
                  andi         s4, t3, 1702
                  nop
                  srai         s10, s4, 4
                  sra          a0, a7, s1
                  add          a6, zero, a1
                  ori          a5, t0, -71
                  xori         ra, t4, -681
                  sra          t1, s8, s3
                  ori          s1, s6, 35
                  nop
                  or           s7, s0, s2
                  add          t6, s2, t1
                  slti         s0, a5, 536
                  auipc        s6, 460504
                  lui          s0, 603078
                  sub          tp, s7, a5
                  sub          sp, s1, s1
                  and          a4, t1, t3
                  sltu         s1, a4, s9
                  slli         s6, s8, 19
                  sra          s4, s0, s1
                  ori          t3, s9, 1651
                  ori          a1, s2, -1221
                  srl          s6, s10, s6
                  and          a6, s0, s9
                  srl          t5, ra, a5
                  sll          t5, s7, t2
                  xori         s1, s11, 580
                  srli         tp, t1, 5
                  xori         gp, s9, 210
                  add          s10, s1, tp
                  auipc        s10, 597411
                  auipc        s5, 761316
                  xor          t1, t0, a7
                  and          tp, t6, a2
                  nop
                  lui          t3, 852638
                  srl          gp, t6, t6
                  sra          a2, ra, ra
                  srai         t2, s4, 8
                  addi         a0, s9, -723
                  slli         s4, a2, 25
                  slti         t3, a1, -93
                  auipc        ra, 609596
                  ori          ra, sp, -99
                  ori          a1, a3, 1084
                  ori          a5, t3, 1567
                  nop
                  and          t0, a3, t6
                  slt          a5, ra, s3
                  xori         sp, s4, 269
                  srli         zero, ra, 7
                  slt          s0, t6, s0
                  srli         s1, s2, 9
                  sra          tp, a0, t4
                  andi         zero, a7, 974
                  add          gp, t5, t0
                  or           tp, t6, a0
                  slt          a5, s6, s3
                  andi         sp, a1, -1259
                  slt          a6, s4, s5
                  xor          s5, zero, s8
                  srai         a7, s10, 31
                  srli         s6, s0, 28
                  nop
                  slti         s2, a7, -344
                  ori          s4, a2, -1137
                  sub          s6, s10, t5
                  sub          t5, a5, s8
                  sltiu        s0, s11, -1036
                  andi         t1, s11, -843
                  ori          zero, zero, -1500
                  sub          t2, a1, s4
                  xor          s0, tp, s1
                  sll          a1, zero, s9
                  or           t6, t2, ra
                  nop
                  srli         s8, a3, 0
                  auipc        s6, 249670
                  andi         t5, a3, 388
                  ori          s6, s8, -751
                  lui          t1, 339838
                  nop
                  sra          s4, a6, a6
                  sub          s5, a7, s7
                  add          ra, t3, s4
                  xori         a7, t3, 3
                  xor          zero, s1, s8
                  sltiu        a1, t1, 1688
                  sub          a4, t4, a2
                  ori          s1, a7, 1652
                  add          t6, a1, s1
                  or           sp, a1, a4
                  sub          t2, sp, s0
                  andi         s6, s6, 976
                  slti         t1, tp, 831
                  or           a2, a2, s7
                  sll          gp, zero, s10
                  slt          tp, gp, t6
                  sll          ra, a1, s8
                  xori         gp, s10, -1077
                  srai         a4, s10, 22
                  andi         s9, s6, 42
                  slt          s4, t4, a4
                  and          a3, a6, s1
                  lui          gp, 296604
                  ori          a7, t1, -524
                  ori          zero, a7, -237
                  sltu         zero, s10, t3
                  slt          a7, s9, s2
                  nop
                  nop
                  addi         ra, a6, 723
                  srai         ra, zero, 10
                  lui          a2, 611970
                  addi         sp, s4, -516
                  or           t3, s1, s4
                  sltiu        sp, a3, -136
                  slti         t5, s10, -2000
                  sltu         a6, s9, t3
                  add          gp, a4, tp
                  nop
                  and          s0, t5, a0
                  lui          s2, 381910
                  auipc        s7, 295927
                  srli         a4, s2, 2
                  ori          ra, zero, -109
                  xori         t6, s8, -397
                  addi         t3, t4, -397
                  srl          s0, a1, s7
                  srl          s10, a3, s5
                  srl          ra, zero, t5
                  sll          t1, t6, t5
                  andi         ra, t3, -658
                  lui          s9, 579438
                  nop
                  addi         t2, s3, -1453
                  sub          t0, s5, s3
                  andi         sp, s3, 203
                  slt          s7, gp, s11
                  add          s2, a2, t3
                  slli         s0, a1, 16
                  sltu         t5, s7, s2
                  addi         a5, s7, 1584
                  sltu         t2, s8, s3
                  add          t2, s4, a2
                  xori         s5, a1, 547
                  nop
                  sltu         a5, s1, s1
                  or           s2, t6, t2
                  sltiu        s5, s7, -1713
                  sub          tp, zero, gp
                  lui          t6, 1009826
                  add          t3, sp, s4
                  or           t6, t1, s4
                  slt          a2, t2, s9
                  srl          s8, s8, a5
                  srai         s0, s10, 1
                  slli         zero, s7, 12
                  slt          t0, t4, a7
                  slt          s1, s9, a3
                  sltiu        t2, tp, 989
                  add          tp, a2, a4
                  slli         zero, a2, 19
                  lui          s6, 331041
                  lui          s1, 1031629
                  and          a1, a7, s8
                  slli         gp, s3, 31
                  auipc        t3, 244783
                  nop
                  or           a1, s3, s1
                  xor          t5, a5, a4
                  sltiu        gp, a0, -317
                  sltiu        s7, s4, -924
                  ori          s1, s1, -1376
                  sra          a2, s3, gp
                  or           t1, s7, t1
                  xori         gp, sp, -1685
                  slt          s5, t4, s7
                  slt          t3, s6, s7
                  sltu         s5, s1, a7
                  xori         t2, s0, 1677
                  sll          a7, s9, s3
                  or           s4, t1, s3
                  xori         a7, a6, -298
                  srl          s9, a0, t6
                  xor          s4, s11, s1
                  auipc        t3, 367816
                  sra          t2, s1, s10
                  xor          a7, s6, a6
                  sra          s0, zero, s10
                  sra          s4, t3, ra
                  andi         ra, sp, 1636
                  sltu         a1, a6, a1
                  sra          gp, s0, a3
                  xori         s10, a6, 1387
                  addi         s8, s2, 1618
                  ori          s5, s0, -1451
                  sll          ra, s3, sp
                  xori         t2, t4, -734
                  or           a4, a2, gp
                  addi         gp, a6, -9
                  lui          s0, 966987
                  slti         t1, s4, -1214
                  xor          ra, s10, s0
                  add          zero, zero, s5
                  lui          t3, 827417
                  srl          s5, t5, s5
                  xori         t1, a4, -592
                  xor          a4, s1, ra
                  srli         s10, tp, 6
                  ori          a0, ra, 334
                  slti         s5, gp, -4
                  addi         a4, a4, -955
                  addi         s2, ra, 1328
                  addi         a6, a0, 152
                  sltiu        a2, a4, -244
                  srli         a4, s2, 22
                  srl          a6, a2, ra
                  slt          sp, s4, s3
                  srli         a3, s8, 7
                  add          a6, t3, a7
                  or           zero, t0, s10
                  sltu         a0, t6, a1
                  sltu         gp, zero, t3
                  add          a5, t0, s9
                  sra          s1, tp, s1
                  srl          a3, t4, t0
                  sra          s7, s3, s9
                  sltu         zero, t0, a3
                  slti         a5, t5, -675
                  xor          t3, gp, t5
                  xori         s1, t2, 370
                  or           s4, t2, tp
                  sll          s4, t2, tp
                  slli         s1, a3, 17
                  lui          a1, 294047
                  srl          s0, a2, t6
                  srai         gp, s11, 5
                  slti         s10, s2, -215
                  srli         t6, s0, 26
                  andi         t6, s3, -2045
                  nop
                  and          t2, a0, s7
                  auipc        tp, 697453
                  slti         s7, a5, 1621
                  add          a7, a2, s6
                  and          a2, ra, gp
                  add          sp, t1, t2
                  xor          s9, s0, s8
                  xor          s6, a3, t1
                  andi         t5, s11, 39
                  srl          s1, s5, zero
                  nop
                  ori          t5, a0, 1636
                  auipc        gp, 755039
                  srai         t2, zero, 17
                  sra          s10, s9, t6
                  slt          sp, t3, s6
                  ori          sp, a3, 1298
                  auipc        s7, 858039
                  srai         a6, s7, 25
                  nop
                  add          a3, t2, s7
                  add          a0, a7, ra
                  nop
                  slt          s9, a4, a4
                  andi         tp, a6, 530
                  or           t3, a0, s3
                  slt          ra, t2, a0
                  auipc        a4, 279540
                  sltiu        s0, s3, 423
                  srli         s2, ra, 14
                  sub          zero, a7, a0
                  slti         t0, t5, 1664
                  andi         t3, s8, 1232
                  slti         zero, t3, 953
                  xori         t5, s5, 700
                  xori         t2, a3, 1010
                  srli         a6, a4, 26
                  slti         s9, a4, -630
                  xori         a4, a3, -848
                  srai         t6, t2, 23
                  xor          t1, t5, t2
                  sltu         s4, s3, s5
                  sltu         ra, ra, t6
                  sltu         sp, t4, a6
                  xor          s7, gp, s1
                  srai         s1, ra, 26
                  addi         s1, s2, -1263
                  nop
                  or           s10, a1, a2
                  sll          t2, t6, t6
                  slti         s7, s7, -97
                  xor          t5, s7, s9
                  slli         t3, s3, 10
                  and          s2, sp, a5
                  auipc        a5, 333600
                  srli         zero, a1, 28
                  or           a7, a2, zero
                  sub          a7, s3, zero
                  sub          s10, ra, ra
                  lui          t3, 1005009
                  addi         t1, a5, 519
                  slli         t3, t1, 13
                  xori         t2, s3, -997
                  slt          s1, gp, t3
                  ori          s9, t0, 1605
                  srai         t5, s7, 30
                  sra          t0, s11, s10
                  sll          tp, t0, t1
                  xori         zero, a0, -828
                  lui          s5, 655359
                  slli         a7, sp, 25
                  add          t2, s4, s3
                  add          s2, s11, tp
                  srli         t5, s8, 7
                  addi         s9, a1, 607
                  add          t6, sp, gp
                  srl          s5, s1, t6
                  xor          s9, a1, a6
                  addi         s1, s9, 1684
                  xor          a2, t3, s0
                  add          a5, a7, s4
                  ori          s4, a1, -1005
                  xori         s6, t0, 8
                  slli         s6, s4, 9
                  andi         s0, tp, 1607
                  auipc        gp, 672038
                  auipc        a4, 796252
                  andi         a6, s2, 362
                  addi         a7, t3, 1132
                  auipc        t0, 817808
                  sltiu        a2, s8, 1833
                  or           s6, t4, s8
                  sltiu        a7, s8, -1154
                  nop
                  slti         s5, s8, 1444
                  xor          t5, ra, t5
                  srli         t0, a2, 16
                  sub          ra, t4, a4
                  or           s5, a6, a5
                  sltiu        s6, t2, 327
                  srl          t6, s10, a0
                  andi         ra, s4, 84
                  sll          a1, gp, s2
                  slti         a7, a4, 872
                  slli         s5, s2, 4
                  slli         a5, ra, 13
                  slt          s4, s11, s0
                  slt          zero, s8, a0
                  sub          s0, s1, s1
                  srl          s4, t2, sp
                  slli         a0, s5, 1
                  slli         s7, sp, 15
                  and          a0, tp, a2
                  slt          s9, t2, a0
                  ori          s4, a0, -1794
                  srl          s0, a1, t5
                  sra          s7, s8, s6
                  andi         a6, a7, -925
                  or           sp, t0, ra
                  srai         gp, s6, 3
                  andi         tp, ra, -1376
                  add          a6, s1, a0
                  slli         s8, s9, 20
                  sltiu        t6, s0, 134
                  srl          a0, t3, t1
                  xori         t0, a1, 1222
                  or           a6, zero, t1
                  sltiu        t2, t0, 1786
                  ori          a2, s7, -1574
                  sll          a0, s2, a6
                  add          a1, s3, a3
                  or           t0, s3, sp
                  sll          t6, a6, a3
                  slli         s6, s0, 21
                  andi         s7, a2, 1757
                  lui          s7, 253665
                  srai         s6, s10, 14
                  xor          t3, t2, s8
                  xor          s0, s11, a5
                  andi         a2, a1, -1763
                  srl          t6, s0, s8
                  ori          s2, s11, 77
                  sll          t5, s3, t4
                  nop
                  slli         t3, s9, 0
                  sll          a5, a7, a1
                  sltu         s4, s9, t0
                  sltiu        s9, t1, 772
                  addi         s5, s9, 1572
                  sltu         a1, a5, a7
                  srli         t6, tp, 4
                  or           t3, t3, tp
                  sra          a2, t5, s8
                  lui          t5, 769872
                  srli         t3, s1, 20
                  sub          a3, ra, t4
                  and          s0, a6, a0
                  slti         s4, a2, -1568
                  slli         ra, s2, 6
                  srl          a4, t4, s6
                  addi         t6, s7, -1142
                  lui          tp, 133121
                  sra          tp, ra, a6
                  slt          a4, a6, ra
                  xor          s8, gp, s10
                  srli         s7, ra, 4
                  sll          t2, gp, a0
                  sra          a5, t6, t2
                  sra          a5, s10, s2
                  sra          s1, t3, t1
                  sll          a2, s11, t3
                  sra          s0, tp, s6
                  slli         t5, t5, 21
                  sltu         a5, s1, s7
                  addi         s7, s6, -832
                  slt          gp, ra, a2
                  sra          s5, a1, s11
                  slli         tp, s11, 20
                  and          sp, s9, gp
                  sll          s10, t5, s2
                  sltiu        t5, a4, -274
                  lui          s2, 665548
                  srai         s0, a6, 11
                  slti         s8, s6, -1554
                  lui          t2, 167508
                  auipc        s8, 369086
                  sub          a6, t4, s10
                  slt          tp, t3, gp
                  ori          t3, t4, 1952
                  sltu         gp, s10, s4
                  ori          sp, t0, -640
                  srl          a4, t2, ra
                  sra          sp, s1, sp
                  addi         t3, zero, -1618
                  addi         s5, zero, -670
                  and          ra, sp, t2
                  xori         a2, s11, 305
                  srl          t0, a3, a6
                  sra          tp, s2, s1
                  nop
                  slt          s2, s9, t2
                  add          a6, a5, zero
                  slti         a1, t3, -1813
                  nop
                  add          s7, t6, tp
                  slli         gp, t2, 12
                  add          s1, ra, a2
                  sub          s9, s3, s9
                  lui          t5, 850637
                  nop
                  add          s1, t1, a6
                  addi         ra, s0, 1542
                  sltu         a3, t5, a6
                  andi         a0, s0, 566
                  sub          t0, s9, gp
                  sltiu        tp, s6, 1047
                  srl          tp, s9, ra
                  xor          s4, s5, gp
                  sra          s2, a2, gp
                  sltu         t2, a3, t0
                  auipc        t6, 254217
                  nop
                  slti         s5, t4, -446
                  srl          a0, s0, s6
                  sltiu        s5, s0, -10
                  srai         s0, t6, 7
                  lui          a1, 937136
                  and          s8, s9, tp
                  sub          t3, a0, gp
                  srli         s8, s2, 28
                  auipc        t2, 494220
                  sra          sp, t1, zero
                  sub          a5, a5, gp
                  nop
                  andi         a5, a6, -1634
                  sltiu        a7, sp, -54
                  srli         s9, s0, 31
                  xor          t0, t6, t0
                  xor          a2, t1, a2
                  ori          t6, s9, 1743
                  sra          s8, s2, a4
                  xori         s0, s5, 845
                  xor          t5, s2, s0
                  add          sp, t6, ra
                  nop
                  xor          s10, t4, a1
                  sub          s2, s7, s2
                  srai         s7, a6, 19
                  ori          s10, a2, -273
                  srai         t6, t1, 28
                  srai         zero, t4, 16
                  nop
                  auipc        s5, 700856
                  sltu         a4, t6, a2
                  nop
                  add          a3, a6, a7
                  xori         s6, s3, 1389
                  lui          ra, 790039
                  sltiu        s10, t3, -1196
                  add          s7, s5, t1
                  sub          ra, ra, zero
                  sub          a1, t6, a5
                  srli         s9, a0, 9
                  srai         s6, t4, 3
                  andi         t0, a3, -777
                  lui          a5, 338921
                  xor          s9, s9, tp
                  sra          s4, s6, s4
                  xori         t6, tp, -1081
                  slt          a6, a5, s10
                  addi         s9, t5, -1048
                  add          a6, a3, s5
                  srai         a4, s7, 14
                  or           s9, a0, a1
                  srai         a6, t2, 30
                  slti         zero, s8, -1706
                  andi         s4, s5, 1056
                  nop
                  slt          t6, a5, s5
                  andi         s8, s3, -1702
                  xor          t3, s9, t6
                  sub          a6, s0, s7
                  or           s10, gp, a0
                  srai         a0, s11, 16
                  lui          s9, 637200
                  xori         t0, ra, 430
                  slt          t5, t1, s7
                  srai         t5, a6, 3
                  slli         s0, t2, 23
                  lui          a5, 743244
                  auipc        s1, 469437
                  or           tp, s9, s10
                  add          a0, s3, a7
                  ori          a5, a1, -2024
                  or           a7, s11, t4
                  and          t6, s7, s4
                  addi         a0, a2, 383
                  nop
                  sll          a7, sp, s7
                  srai         zero, s1, 27
                  sub          a5, s7, s10
                  add          a4, t4, s6
                  slli         sp, a7, 1
                  xor          t3, s4, s6
                  and          t2, s10, t1
                  lui          s5, 730591
                  sra          a6, s11, gp
                  andi         t2, gp, -151
                  addi         s9, a3, 2004
                  add          a1, a0, a0
                  addi         s10, zero, -1520
                  sll          s7, s0, t2
                  sub          s10, s11, s2
                  sltiu        a3, s1, -193
                  or           s9, zero, s6
                  sra          ra, s7, t6
                  add          a4, a4, a5
                  or           t2, a6, a3
                  srl          t5, a5, t1
                  add          gp, t0, s1
                  addi         gp, s5, -951
                  sll          s9, t3, t5
                  srli         s2, t3, 1
                  sub          s6, t5, t1
                  sltiu        s9, s9, 1233
                  lui          tp, 21027
                  andi         t0, s7, -253
                  sltu         a2, t6, tp
                  sra          t6, t1, a5
                  srl          a5, s11, s1
                  add          a7, a3, t0
                  add          a6, ra, s1
                  auipc        sp, 265856
                  xori         t2, s11, -62
                  andi         s9, t5, -751
                  sra          a1, t6, ra
                  sra          t1, t4, s5
                  auipc        a1, 646140
                  add          s8, t4, ra
                  slli         a6, s2, 11
                  slli         t2, sp, 10
                  add          a3, t6, t0
                  sub          tp, s3, tp
                  srl          s0, s4, gp
                  lui          a5, 87439
                  lui          t1, 483837
                  srl          ra, s1, s2
                  auipc        s8, 600628
                  addi         t2, s2, -998
                  nop
                  nop
                  xor          a6, ra, a5
                  ori          t6, a0, -329
                  nop
                  slli         a2, a1, 21
                  sltiu        a5, t1, 1030
                  and          a1, s1, a5
                  nop
                  sub          t6, tp, a6
                  add          a6, ra, s10
                  or           a4, s7, s10
                  nop
                  auipc        t5, 1000658
                  sub          t3, a3, ra
                  and          s5, s10, t0
                  srl          sp, t4, s0
                  auipc        t2, 845954
                  srli         s0, s0, 14
                  srl          s7, gp, t1
                  or           a6, t3, s11
                  and          s10, a6, a6
                  slti         t1, t1, 493
                  and          a2, s7, t5
                  add          t5, s1, s0
                  andi         sp, s1, 927
                  srli         t0, t6, 2
                  add          t6, a6, sp
                  or           t2, s6, t5
                  slti         t3, s4, 783
                  nop
                  sltiu        t1, t4, -1007
                  slti         ra, s9, 1023
                  sra          s9, a5, t2
                  add          a6, t4, zero
                  auipc        sp, 783049
                  slli         s6, a4, 25
                  srai         t6, a0, 28
                  srai         gp, s5, 21
                  sub          s4, sp, t3
                  xori         s0, a2, -344
                  auipc        a1, 125944
                  auipc        a4, 934530
                  sltu         t1, a2, s3
                  slti         s4, s2, 1416
                  sra          s4, sp, t5
                  or           s1, ra, s4
                  lui          a1, 599247
                  sra          a7, s4, zero
                  slt          a3, s11, a1
                  srai         a0, t4, 1
                  or           t0, s7, a2
                  sra          sp, a3, t1
                  srli         s4, s3, 26
                  srai         s10, t0, 3
                  addi         t3, ra, 1653
                  slti         s5, a5, 940
                  addi         t1, t0, -850
                  sltu         a6, s4, a6
                  addi         t3, zero, 1107
                  slti         a4, s5, 149
                  srli         t3, a5, 16
                  and          s0, t2, s5
                  srli         t2, t5, 18
                  xor          a3, t6, a5
                  ori          ra, t0, 901
                  lui          s4, 874242
                  xor          t1, t4, t3
                  lui          a1, 33456
                  lui          t6, 137785
                  sll          a1, s1, a6
                  slti         a1, s9, 617
                  sltiu        t0, s6, -1181
                  add          s1, a7, s1
                  slt          a0, t4, t5
                  or           t6, a0, s4
                  sra          a7, t5, s1
                  sll          a7, s6, s8
                  sra          t6, tp, a7
                  addi         s0, a2, -1261
                  or           sp, s9, t4
                  sub          s7, t3, gp
                  ori          a3, s1, -1826
                  srai         a0, zero, 21
                  nop
                  sra          t5, t1, t4
                  addi         s8, ra, -309
                  or           tp, s6, gp
                  sltiu        a3, s10, 86
                  sltiu        zero, a7, -216
                  srl          a4, t2, s7
                  srl          t2, s11, s11
                  ori          a0, t0, -1197
                  xori         t6, a0, -113
                  or           s1, a3, t1
                  slt          s5, t5, t6
                  or           a0, t3, a7
                  xor          tp, a2, s4
                  xori         ra, t4, 1808
                  srai         s4, a6, 18
                  lui          t3, 1036044
                  sub          a5, sp, t4
                  sll          gp, s3, s5
                  sltu         a1, s3, s7
                  sltu         t6, s0, s4
                  sltiu        t5, t0, 262
                  srl          t6, s10, t6
                  sra          t3, a4, t2
                  nop
                  and          t6, tp, s5
                  slt          gp, a4, t2
                  sll          s0, a7, s0
                  auipc        s1, 39885
                  and          t3, ra, s9
                  srli         s1, s4, 27
                  andi         s9, s8, -1180
                  auipc        zero, 525000
                  sub          a3, zero, zero
                  and          a5, t5, sp
                  srl          tp, ra, a1
                  slt          s0, gp, s6
                  sra          s5, s5, zero
                  srl          gp, sp, s10
                  nop
                  nop
                  slti         s9, s8, -1745
                  sll          a4, a1, zero
                  sltiu        a7, s1, -1293
                  andi         t1, a5, -1584
                  ori          a6, s8, -1962
                  sltu         s6, s3, s3
                  srl          s9, t6, a3
                  srai         s1, s4, 9
                  slt          tp, s7, gp
                  slti         s2, a4, 1774
                  add          s5, s7, s5
                  and          s7, a6, tp
                  or           a2, s10, a4
                  sub          zero, a7, s10
                  xori         sp, t6, -1879
                  slli         a3, zero, 14
                  andi         s6, ra, 985
                  sltu         ra, s5, s7
                  srl          s5, s2, t2
                  srli         a3, a7, 21
                  sub          t0, t0, t4
                  addi         t2, s10, 1622
                  andi         tp, a4, -405
                  srli         a7, a2, 10
                  lui          a6, 137558
                  srl          s2, a1, sp
                  andi         s7, s8, -1042
                  ori          s7, a1, -1502
                  slli         s10, s3, 2
                  xor          s7, sp, a1
                  xori         s5, s4, -1598
                  lui          a3, 587859
                  nop
                  xor          t5, s5, zero
                  andi         a4, s0, 1252
                  andi         s10, s7, -15
                  add          t6, t3, a2
                  auipc        a2, 227949
                  xor          t3, t5, s2
                  auipc        s7, 469105
                  and          s6, a0, tp
                  sra          s7, a7, ra
                  or           s0, a1, s9
                  auipc        t0, 384703
                  ori          t2, s1, 1447
                  auipc        a2, 443090
                  sub          tp, s2, s2
                  sra          s2, s5, a5
                  addi         ra, s5, 86
                  nop
                  srai         a6, t0, 15
                  sll          t6, a6, ra
                  slti         t2, s8, -1430
                  sra          t6, t6, s3
                  srai         s5, s2, 1
                  and          sp, a5, a5
                  xori         gp, t1, -647
                  sub          a5, ra, a2
                  xor          a7, t1, s10
                  or           ra, s8, t4
                  sra          tp, t2, tp
                  slti         s9, a6, -965
                  sub          sp, s2, gp
                  sll          t6, s10, t5
                  add          s9, t3, sp
                  slli         a1, s5, 11
                  addi         t5, s4, -1019
                  srl          zero, t2, t2
                  addi         t6, t6, -1128
                  or           t5, s9, a6
                  srai         s2, s11, 7
                  srli         t1, s6, 2
                  xori         a0, s10, 61
                  xori         t0, s1, 298
                  andi         a4, tp, -221
                  srli         a0, t2, 9
                  sub          t1, ra, a5
                  srli         s6, s11, 25
                  srl          s8, t5, a4
                  add          zero, s7, t3
                  sltu         s4, s2, ra
                  addi         tp, t3, -1567
                  lui          a5, 285963
                  xor          t0, a7, a3
                  and          zero, t6, ra
                  slti         s8, t6, -137
                  srai         s10, t1, 23
                  nop
                  auipc        t3, 810010
                  sub          s8, s11, s0
                  xori         gp, sp, 1622
                  srai         ra, t6, 28
                  srli         gp, a6, 13
                  add          a1, t2, t0
                  andi         zero, tp, -831
                  srli         s4, t2, 6
                  sltu         s10, s1, s7
                  add          tp, t6, gp
                  srai         t2, a0, 3
                  srl          s9, a1, t6
                  and          t2, s10, gp
                  nop
                  slli         a2, s9, 15
                  addi         s5, s5, -1517
                  lui          ra, 760004
                  sra          s0, s3, zero
                  srl          t3, a0, ra
                  addi         s5, a2, 650
                  srli         t6, a0, 24
                  sltu         sp, s4, s11
                  sra          a1, s1, zero
                  ori          s2, s1, -1101
                  slt          a1, a5, s11
                  sltiu        sp, s11, 1797
                  sltiu        t2, s6, 1051
                  slti         t6, ra, -1389
                  slt          a4, t0, t1
                  xori         zero, a7, 1021
                  ori          a4, zero, -850
                  or           a3, sp, a0
                  sltu         s2, s7, s1
                  srli         gp, t3, 16
                  slli         t5, a3, 30
                  ori          s0, s2, 396
                  xor          s2, a3, t2
                  srai         s8, a7, 8
                  ori          a5, s8, -413
                  sub          s6, s7, t6
                  sra          s9, tp, t2
                  slt          t6, a5, s4
                  srl          s2, t1, s0
                  sltiu        s7, t3, -149
                  xor          s7, sp, s11
                  lui          a0, 452778
                  auipc        a6, 437360
                  andi         s8, s6, -130
                  sltu         sp, s1, t4
                  srai         zero, s2, 5
                  sltiu        t5, s1, 1957
                  sltiu        a1, tp, -343
                  srai         zero, a4, 28
                  xori         s1, s11, 288
                  add          a7, ra, s5
                  xori         zero, t4, 1833
                  ori          s2, gp, 1106
                  sll          a5, t1, s10
                  andi         a3, a3, -1642
                  nop
                  and          a5, s5, ra
                  sltu         s0, s1, t3
                  auipc        s0, 960334
                  sltiu        a4, zero, -44
                  srli         zero, t4, 3
                  sltiu        a2, t0, -1106
                  sll          t5, s5, s2
                  srli         s0, a6, 25
                  sub          ra, a5, gp
                  nop
                  and          t6, a1, s5
                  andi         s1, s4, 32
                  andi         t5, t5, 1330
                  lui          a6, 101478
                  slti         s0, a4, 1106
                  nop
                  sltu         gp, s7, zero
                  nop
                  addi         t0, t3, -835
                  slli         a2, ra, 10
                  lui          a0, 467319
                  ori          s1, t5, 1138
                  srli         s0, tp, 2
                  sll          t5, a7, a4
                  slt          a5, s7, a6
                  xor          a6, a3, s0
                  sub          a4, t4, a4
                  and          s7, tp, s10
                  xor          t2, a1, s5
                  addi         s2, s3, -476
                  sra          t6, a7, a2
                  srli         a2, t0, 28
                  nop
                  add          t0, a5, tp
                  xori         s8, s3, 1440
                  and          s6, s11, s1
                  sub          s6, gp, a3
                  slli         a3, t0, 31
                  sltiu        s2, s1, 2041
                  srl          a1, a5, a0
                  sub          s0, s8, ra
                  slli         s2, t6, 29
                  sltiu        a2, s1, 1870
                  sll          s4, t4, a2
                  srli         t3, t4, 31
                  slti         t5, s5, 928
                  sub          a2, a5, s7
                  srl          s6, s7, s9
                  or           t5, tp, a2
                  addi         t6, a7, -1857
                  or           a2, tp, a4
                  sll          s7, s9, s10
                  slt          t6, s3, a2
                  auipc        zero, 412378
                  add          s0, s7, a3
                  and          a4, s1, s1
                  auipc        t5, 1028216
                  srli         t6, a3, 27
                  srai         s5, s4, 7
                  slti         sp, a0, -998
                  slti         a2, s1, -120
                  slt          a2, s8, gp
                  add          a6, s3, s2
                  sll          s8, s5, a2
                  slti         a6, ra, -1374
                  sltu         t3, s5, t3
                  sra          t2, s5, a3
                  andi         a3, s9, 1888
                  slli         s4, ra, 10
                  auipc        t3, 302055
                  slt          s9, s2, s5
                  sltiu        a7, zero, 67
                  or           a2, s9, t4
                  srl          zero, s9, sp
                  xor          tp, a4, sp
                  xori         tp, zero, -366
                  nop
                  add          a1, a4, a5
                  lui          a6, 650001
                  slli         a5, t5, 28
                  srl          s4, t6, a4
                  xor          sp, t3, t0
                  sll          s9, s0, a5
                  and          a4, s5, s11
                  nop
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t3, 0xffffffff
                  li           s6, 0xffffffff
                  li           a3, 0xffffffff
                  li           ra, 0x0
                  li           s10, 0x0
                  li           s8, 0x0
                  li           s7, 0x80000000
                  li           sp, 0xffffffff
                  li           a1, 0x80000000
                  auipc        sp, 528449
                  sub          t6, s7, sp
                  lui          s7, 47650
                  add          s8, t3, ra
                  auipc        s6, 535942
                  lui          sp, 720402
                  lui          s8, 759471
                  nop
                  sub          s8, s8, sp
                  nop
                  nop
                  nop
                  auipc        sp, 864378
                  auipc        s10, 572679
                  sub          a1, sp, a1
                  add          t6, a3, s7
                  add          t6, s10, t3
                  lui          ra, 879337 #end riscv_int_numeric_corner_stream_15
                  srl          s8, s3, a2
                  xori         s4, s1, 442
                  auipc        ra, 258712
                  addi         zero, t3, 1692
                  or           a3, s0, a6
                  add          s7, gp, gp
                  lui          t5, 10214
                  add          s4, s4, s11
                  lui          s8, 644804
                  auipc        a5, 322813
                  xor          t3, s8, t4
                  xori         t1, s9, -1429
                  lui          s1, 660767
                  sltu         s8, s3, t0
                  sub          s4, t6, s0
                  srl          s4, ra, t1
                  xor          s2, gp, a5
                  slt          s1, s9, t6
                  srli         s7, s8, 20
                  srli         t1, s3, 28
                  srai         sp, t2, 0
                  srl          t6, a4, s3
                  sub          sp, a4, s2
                  sltu         s9, t0, a6
                  xori         s5, s4, 308
                  sltu         a1, s9, t2
                  andi         a6, tp, 2007
                  lui          a4, 322071
                  sra          a2, t5, a4
                  srai         s1, a2, 14
                  sltu         a7, a1, s7
                  and          a5, a0, s6
                  xor          s10, t0, a0
                  nop
                  addi         s5, zero, -1864
                  addi         s1, gp, -1929
                  sltiu        a5, s0, -968
                  xor          s0, ra, a4
                  andi         s7, gp, 1756
                  andi         s1, s3, -331
                  and          a7, s2, s7
                  sltiu        t0, sp, 826
                  addi         ra, t6, 659
                  lui          s1, 1011694
                  add          gp, s0, s11
                  auipc        t5, 736739
                  andi         a5, s9, -350
                  lui          s5, 478126
                  sll          a5, a5, s0
                  and          gp, a1, t3
                  addi         ra, a7, 1341
                  xor          sp, s0, t4
                  addi         a6, t3, -72
                  srl          s4, a2, a7
                  sltiu        t6, ra, 868
                  sltiu        t3, t6, 1352
                  sub          a2, s10, a0
                  andi         a6, t5, -1236
                  slli         t0, ra, 4
                  slti         s9, a7, -1057
                  ori          s5, tp, 745
                  sub          s6, a2, t3
                  srai         t3, s1, 8
                  ori          t3, s5, 1387
                  add          tp, t3, s6
                  lui          a5, 405076
                  add          s1, s2, s8
                  xori         a0, s5, 179
                  ori          s4, a5, -73
                  slt          a4, s0, s9
                  ori          s4, t5, -1169
                  xori         a3, a2, -521
                  or           s0, a5, s8
                  sll          zero, s8, t5
                  sll          ra, s9, t1
                  andi         ra, t1, -1530
                  srli         s6, gp, 3
                  nop
                  lui          s1, 420087
                  sltu         s4, t2, a2
                  add          t3, t5, t3
                  sub          s1, t1, s9
                  sltu         a3, s9, a3
                  sltu         s4, t0, s0
                  srli         gp, s3, 4
                  la x27, test_done
                  jalr x0, x27, 0
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
.align           2
mtvec_handler:    
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x19, x29, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x17, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x17, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x17, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x17, x18, ecall_handler
                  li x18, 0x1
                  beq x17, x18, instr_fault_handler
                  li x18, 0x5
                  beq x17, x18, load_fault_handler
                  li x18, 0x7
                  beq x17, x18, store_fault_handler
                  li x18, 0xc
                  beq x17, x18, pt_fault_handler
                  li x18, 0xd
                  beq x17, x18, pt_fault_handler
                  li x18, 0xf
                  beq x17, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x29, x19, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
