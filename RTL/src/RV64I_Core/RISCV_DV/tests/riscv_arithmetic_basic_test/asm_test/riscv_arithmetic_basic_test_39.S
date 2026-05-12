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
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x9, kernel_stack_end

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
                  li x0, 0xc
                  li x1, 0xcff28514
                  li x2, 0x80000000
                  li x3, 0xa01f434d
                  li x4, 0xf8a85bf3
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xf6567802
                  li x10, 0x7699fb80
                  li x11, 0x8
                  li x12, 0x8b2cb3e8
                  li x13, 0x80000000
                  li x14, 0xff24d6f8
                  li x15, 0xf045eca5
                  li x16, 0x80000000
                  li x17, 0x2
                  li x18, 0x0
                  li x19, 0xa
                  li x20, 0xe
                  li x21, 0xd
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x5
                  li x25, 0xf2b14f0c
                  li x26, 0x3039377a
                  li x27, 0x80000000
                  li x29, 0x0
                  li x30, 0xf8b8bf46
                  li x31, 0xf1321c80
                  la x28, user_stack_end
main:             li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a6, 0x3b26b51c
                  li           s4, 0x80000000
                  li           s8, 0xffffffff
                  li           s7, 0xffffffff
                  li           t2, 0x80000000
                  li           a2, 0x80000000
                  li           s9, 0x70ba0c9f
                  li           s3, 0xffffffff
                  li           t6, 0x9a3edd5c
                  addi         s8, s8, 620
                  add          s9, a6, t6
                  auipc        s8, 972967
                  add          s7, s4, s3
                  add          t2, a2, s4
                  nop
                  auipc        s9, 157787
                  nop
                  add          a6, a1, a6
                  lui          t6, 355512
                  sub          s8, a2, t6
                  sub          s7, s4, t6
                  lui          a1, 1003327
                  auipc        t2, 803652
                  nop
                  sub          s3, s8, t2 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s7, 0xffffffff
                  li           a1, 0x80000000
                  li           ra, 0x0
                  li           s4, 0x7bd63372
                  li           s6, 0x0
                  li           s5, 0x0
                  li           s2, 0x0
                  li           t1, 0x0
                  li           a6, 0x69815211
                  auipc        s7, 12429
                  sub          t1, t0, a1
                  auipc        s2, 463797
                  nop
                  nop
                  lui          a1, 154768
                  sub          s4, s7, t0
                  add          s7, a1, s4
                  addi         ra, a1, -1765
                  add          a6, s4, a1
                  add          s6, a6, s4
                  auipc        a6, 125173
                  addi         ra, ra, -40
                  lui          t0, 237861
                  add          s4, s5, t0
                  auipc        a1, 8229
                  add          a6, s4, s5
                  nop
                  lui          s5, 787733
                  addi         a1, s7, 638
                  nop #end riscv_int_numeric_corner_stream_0
                  li           a7, 0xe38cf8f8 #start riscv_int_numeric_corner_stream_16
                  li           s6, 0x0
                  li           a3, 0x0
                  li           s4, 0xffffffff
                  li           sp, 0xffffffff
                  li           a1, 0xffffffff
                  li           s11, 0xffffffff
                  li           a5, 0x0
                  li           t0, 0x914e6645
                  li           gp, 0xffd730f2
                  lui          a7, 345624
                  sub          a7, a5, sp
                  add          a3, a5, a1
                  addi         sp, a1, -1436
                  auipc        a3, 366901
                  addi         s4, s4, -281
                  auipc        s6, 980906
                  auipc        sp, 331666
                  addi         gp, gp, 1118
                  sub          s11, a7, a5
                  add          a5, a7, t0
                  lui          s11, 121897
                  lui          s4, 732753
                  nop
                  add          a3, gp, s6
                  lui          gp, 94812
                  nop
                  nop
                  lui          a3, 241454
                  add          a3, a3, gp
                  addi         a1, a5, -934
                  auipc        t0, 1042950
                  auipc        s6, 275034
                  sub          s6, a5, a3 #end riscv_int_numeric_corner_stream_16
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           s9, 0x0
                  li           t2, 0xffffffff
                  li           s4, 0xf800c31a
                  li           a0, 0xffffffff
                  li           s10, 0xffffffff
                  li           s3, 0x0
                  li           gp, 0xffffffff
                  li           s5, 0x80000000
                  li           tp, 0xffffffff
                  nop
                  auipc        s3, 589831
                  add          s10, t2, s5
                  sub          tp, s10, s5
                  sub          gp, t2, s3
                  auipc        s10, 467033
                  nop
                  auipc        s9, 563809
                  lui          gp, 249023
                  add          tp, s5, s4
                  addi         s10, a2, -1738
                  auipc        t2, 557048
                  add          s3, s10, tp
                  sub          a0, s3, s9
                  sub          a0, a0, s4
                  addi         gp, s4, -530
                  addi         s4, tp, 859
                  add          a0, s3, gp
                  sub          t2, a2, s4
                  lui          s4, 115208
                  sub          tp, s5, t2
                  add          tp, gp, tp
                  lui          s5, 27694
                  nop #end riscv_int_numeric_corner_stream_15
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           t0, 0xffffffff
                  li           t1, 0xffffffff
                  li           t6, 0x0
                  li           tp, 0xe71c7346
                  li           t2, 0xffffffff
                  li           a2, 0x80000000
                  li           a1, 0x0
                  li           a7, 0xbb33b91
                  li           s10, 0xbb3f03ed
                  auipc        t6, 674200
                  lui          s10, 266301
                  sub          a1, t2, t2
                  addi         a7, t6, 1159
                  lui          a2, 545240
                  nop
                  lui          a1, 23030
                  auipc        s5, 197969
                  nop
                  nop
                  auipc        t0, 4059
                  add          a2, s10, a2
                  lui          t0, 725267
                  lui          a2, 758946
                  add          t6, s10, t6
                  add          a7, a2, t2
                  lui          s10, 707398
                  auipc        tp, 411716
                  add          a1, t6, t0 #end riscv_int_numeric_corner_stream_3
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s4, 0xffffffff
                  li           s7, 0x80000000
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           s10, 0xffffffff
                  li           s8, 0x80000000
                  li           t1, 0x80000000
                  auipc        s7, 527550
                  auipc        a5, 813654
                  lui          s5, 283647
                  sub          s10, s8, s7
                  add          s10, s4, gp
                  sub          a2, gp, s7
                  add          s8, s10, s7
                  sub          s7, s2, s8
                  nop
                  lui          t1, 514551
                  lui          a2, 862969
                  addi         s5, a5, -1914
                  add          gp, s4, s7
                  addi         s5, s10, 1182
                  add          a2, s2, a5
                  auipc        t1, 1029224
                  sub          a2, s10, gp
                  addi         s5, s7, 136
                  lui          t1, 140361
                  auipc        s7, 149442
                  add          s4, a2, s2
                  nop
                  nop
                  auipc        s8, 579196
                  auipc        t1, 1016782
                  auipc        s8, 757592
                  add          a5, gp, s7 #end riscv_int_numeric_corner_stream_14
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s9, 0x80000000
                  li           t1, 0xf5fbc537
                  li           s8, 0xffffffff
                  li           s7, 0x0
                  li           ra, 0xc443a534
                  li           a5, 0x80000000
                  li           gp, 0x54dbea3b
                  li           t6, 0x0
                  li           a2, 0x80000000
                  nop
                  sub          s7, s9, s5
                  nop
                  sub          t6, s8, s9
                  add          s9, t6, t6
                  sub          ra, ra, t6
                  nop
                  add          s7, gp, t1
                  nop
                  lui          t1, 208375
                  addi         t1, a5, 1840
                  auipc        s9, 705256
                  sub          ra, s5, s5
                  sub          ra, s8, s5
                  addi         a2, a5, -134
                  addi         a5, s5, 482
                  sub          ra, s7, t6
                  addi         s9, s8, -578
                  add          s9, s8, s8
                  nop
                  nop
                  sub          s5, t1, s7
                  lui          gp, 999241
                  addi         t1, a5, 408
                  sub          s5, a5, t6
                  addi         s8, gp, 1342
                  sub          t1, s7, s5
                  nop
                  addi         t1, ra, -392 #end riscv_int_numeric_corner_stream_5
                  or           s9, s11, t6
                  auipc        a1, 245947
                  sll          a2, t6, s11
                  slti         gp, a6, 165
                  lui          a2, 549592
                  sra          ra, a6, a0
                  sub          a1, s5, ra
                  ori          t0, a0, 822
                  slli         a5, a5, 22
                  xor          a0, t2, sp
                  nop
                  lui          s4, 822323
                  srl          a3, zero, t0
                  slti         a6, a1, -1416
                  sra          a4, s8, a7
                  and          sp, s2, s5
                  srli         a5, t1, 12
                  lui          a3, 1026399
                  auipc        t6, 985933
                  sub          a1, a5, a0
                  andi         zero, a0, -11
                  or           t4, tp, s0
                  or           a3, s10, a5
                  slti         s7, s5, -427
                  sll          a4, t6, sp
                  sll          s9, a1, a6
                  ori          ra, s3, 409
                  nop
                  slt          s7, s3, s10
                  auipc        s2, 111107
                  andi         s4, t0, -1397
                  and          t4, s9, s11
                  srai         a1, t2, 3
                  and          s7, t2, a5
                  sltu         a6, s0, s3
                  sltiu        s2, tp, -724
                  auipc        a6, 349581
                  lui          s10, 937329
                  andi         a7, s3, 1
                  auipc        s10, 798527
                  and          zero, s4, a5
                  sll          t1, t1, s8
                  and          s9, t1, s6
                  srl          a1, a0, t0
                  auipc        a6, 641673
                  nop
                  lui          t0, 368910
                  sra          s3, t3, s4
                  sll          s9, a6, gp
                  and          gp, a3, a2
                  sltiu        s2, s2, 555
                  add          zero, s7, tp
                  sra          s5, a4, s10
                  srai         a5, s5, 7
                  add          s4, a0, s10
                  xori         sp, s2, 1511
                  srl          a6, t6, a1
                  sltiu        a5, s0, 1016
                  sltiu        a2, zero, 173
                  srai         t2, a6, 11
                  and          ra, s1, t4
                  srl          a2, a4, s5
                  ori          s7, s10, 1632
                  ori          t6, a6, 1310
                  slt          s10, t2, a1
                  andi         a6, a7, 1208
                  or           a6, zero, t6
                  xor          t1, ra, t1
                  and          s7, s5, tp
                  slt          s6, t0, s0
                  addi         a3, t4, 988
                  or           s8, s7, a6
                  sub          a4, a2, s9
                  xor          s2, a0, a4
                  sll          s4, a5, a2
                  srai         a3, s1, 30
                  and          t1, t6, s2
                  srli         a5, zero, 20
                  auipc        s9, 976285
                  xori         s11, t1, -1485
                  andi         s10, t0, -1698
                  and          s5, s8, s10
                  ori          a1, a0, -1789
                  srli         t2, s11, 27
                  auipc        t6, 990237
                  sltu         ra, a3, s1
                  srai         a3, a0, 5
                  auipc        s11, 297191
                  slt          t1, t4, t6
                  sltu         a0, a6, t6
                  andi         s2, t0, -1148
                  sltu         a5, zero, s4
                  and          s0, sp, s11
                  sltu         s4, s7, s3
                  xori         s6, s8, 379
                  lui          a4, 520927
                  slli         zero, gp, 2
                  srai         s10, s9, 2
                  srai         s9, a1, 11
                  ori          tp, s3, 53
                  andi         a6, s11, -1176
                  xor          a5, a5, a5
                  sub          s2, gp, t3
                  and          s6, ra, a3
                  addi         s9, t6, -1514
                  sub          zero, s1, gp
                  nop
                  lui          a4, 886635
                  sll          s10, zero, t0
                  xori         ra, s11, -822
                  sll          ra, t0, tp
                  srli         gp, s10, 22
                  sub          s5, t5, a4
                  auipc        s5, 491000
                  andi         t2, a5, 457
                  sra          gp, s7, s10
                  sltiu        s8, s5, -1412
                  sra          s10, a5, t0
                  and          a4, s9, t3
                  lui          a2, 810116
                  ori          ra, a0, -980
                  sra          s0, s5, a7
                  srl          s7, a7, a6
                  slt          s4, sp, s8
                  slli         a5, a7, 16
                  srai         a2, t1, 7
                  slti         a4, zero, 173
                  or           a6, a7, t4
                  slt          a7, t2, s10
                  auipc        s3, 669966
                  andi         a2, s3, -1384
                  xor          a7, s6, a1
                  xori         gp, a2, -1083
                  sub          sp, tp, a5
                  sll          s11, a0, a1
                  and          s5, t1, a3
                  slli         s10, s1, 20
                  srl          s0, t6, ra
                  srl          ra, s8, a6
                  xori         t2, a5, 1362
                  addi         zero, t5, -846
                  andi         t4, t6, -946
                  slli         gp, t0, 0
                  add          s2, t0, tp
                  addi         s3, s0, -1073
                  slt          ra, s11, s11
                  addi         a4, s6, -1342
                  nop
                  lui          a4, 506041
                  xori         sp, s9, 133
                  sll          a6, s0, t5
                  srai         a6, a4, 11
                  addi         s3, s4, 1208
                  sltiu        a7, s11, 1617
                  sltiu        s9, a2, -347
                  auipc        a4, 479872
                  auipc        sp, 550551
                  auipc        s6, 1032240
                  slt          t0, s1, tp
                  sra          s6, ra, s2
                  and          t4, t0, a5
                  srli         a5, a1, 26
                  auipc        tp, 815753
                  sub          s5, s1, t6
                  slt          s6, s10, t0
                  and          a6, a6, s11
                  srl          t6, s10, s6
                  sll          a3, s2, s4
                  sll          t6, s5, t1
                  sub          a2, s0, a2
                  and          s10, a2, a5
                  auipc        s5, 685612
                  sll          zero, a1, s6
                  srl          a2, s9, s2
                  sra          a7, t1, a1
                  srl          s9, a3, s8
                  lui          gp, 727150
                  sltu         s11, s6, s6
                  nop
                  and          a2, t1, s10
                  sltu         s7, s0, a2
                  sltu         s11, gp, sp
                  sll          tp, t4, s1
                  xor          zero, t4, a0
                  xor          s0, tp, s0
                  or           s0, t4, a3
                  xori         t1, gp, 476
                  xori         t6, a3, -416
                  srli         s3, a3, 28
                  sltu         t1, a7, a5
                  srl          a6, zero, a0
                  and          ra, s5, zero
                  sltiu        t4, tp, -864
                  lui          a6, 280516
                  xor          a0, t0, t0
                  lui          a4, 96073
                  or           t4, a3, gp
                  srl          s10, s7, s7
                  andi         s9, s6, 1060
                  slti         s3, sp, -692
                  srl          t4, sp, s10
                  srl          s2, s5, a3
                  sll          s11, s2, a1
                  sll          s6, s7, tp
                  and          s0, a3, a7
                  srl          s0, tp, s6
                  sll          t0, s4, s5
                  and          s6, s3, s4
                  addi         a0, a5, -1978
                  sra          a4, a3, s7
                  addi         t0, tp, -1580
                  slt          gp, a6, s9
                  add          a0, a7, sp
                  sltiu        s10, s5, -99
                  sltu         t1, t4, a5
                  ori          s11, a6, 1700
                  andi         s7, s9, 229
                  slti         t6, s4, -1508
                  srli         t4, t0, 7
                  xori         s0, s0, -349
                  and          s7, s3, a7
                  andi         s0, tp, 681
                  sll          ra, sp, s7
                  add          ra, s6, s4
                  slt          ra, t1, a1
                  xor          gp, s5, ra
                  slt          sp, t4, t3
                  xor          t6, s4, t1
                  or           zero, t6, s3
                  sll          a0, t5, t1
                  ori          t0, t2, -65
                  li           ra, 0xbece9a41 #start riscv_int_numeric_corner_stream_11
                  li           t1, 0x80000000
                  li           s10, 0x80000000
                  li           s8, 0x0
                  li           s4, 0xffffffff
                  li           a5, 0xffffffff
                  li           a1, 0x80000000
                  li           t4, 0xffffffff
                  li           gp, 0xffffffff
                  li           s11, 0x0
                  sub          ra, a1, t4
                  auipc        s4, 878069
                  addi         a5, a5, -214
                  sub          s11, gp, t4
                  sub          gp, gp, s10
                  sub          s4, s8, s11
                  lui          a1, 271120
                  addi         s10, s10, 1254
                  addi         a5, s4, -153
                  addi         t4, t1, -447
                  nop
                  lui          t4, 37918
                  add          a1, gp, t1
                  add          ra, a1, s4
                  sub          t1, gp, t4
                  sub          s8, t4, s8
                  addi         a5, s8, 696
                  nop
                  nop
                  addi         t1, s8, 502
                  auipc        s10, 477598
                  lui          s11, 54761
                  lui          a5, 808528
                  add          s10, s8, s8
                  addi         a5, t1, -961
                  nop
                  sub          t4, s8, a5
                  addi         s8, gp, -1366
                  nop #end riscv_int_numeric_corner_stream_11
                  sub          a1, a7, s4
                  ori          s11, t3, -1808
                  sltu         sp, t0, a1
                  srai         a4, a1, 3
                  xori         a2, t5, 916
                  srai         s5, s2, 5
                  xori         s10, s9, -314
                  slli         s11, tp, 26
                  srl          s9, t6, t1
                  sll          a5, s2, s7
                  srl          s8, s8, a7
                  slti         s6, s3, 608
                  sll          t2, s9, ra
                  xori         s6, t1, -21
                  or           s2, a6, a1
                  addi         a3, s1, -1980
                  lui          s8, 973007
                  srli         t1, s7, 30
                  slt          t2, gp, s0
                  lui          s11, 1204
                  lui          a7, 771188
                  sll          zero, s7, s2
                  add          s2, s11, s7
                  sltiu        a1, s9, -1120
                  add          tp, t1, t5
                  xor          a7, a7, ra
                  slti         s9, a7, -1330
                  sltu         s3, s0, s10
                  sltu         a4, t0, a4
                  slli         s2, s7, 27
                  sll          zero, s1, t5
                  and          s10, gp, s4
                  slti         gp, s7, -1248
                  slti         s9, s7, -1029
                  addi         s11, s11, -592
                  addi         a2, t2, 1658
                  and          s8, a5, sp
                  slt          a2, ra, zero
                  sub          a2, a1, a2
                  nop
                  add          a5, t4, s10
                  srl          s10, s1, s10
                  sltiu        ra, t1, 1620
                  auipc        s2, 1040632
                  add          a5, s7, s10
                  srl          s8, s9, zero
                  sra          s5, s1, s10
                  sltiu        t0, s9, -1870
                  sltu         t2, a6, s10
                  andi         t2, gp, -1766
                  ori          ra, a5, -492
                  slli         s9, t5, 30
                  lui          s9, 317480
                  lui          s11, 767188
                  nop
                  add          a5, a6, a3
                  sra          a3, t2, t0
                  sll          s7, a5, t2
                  or           t0, a1, a5
                  sltu         t1, zero, t3
                  slt          zero, t4, a3
                  lui          t1, 79786
                  slli         a1, s9, 24
                  lui          a7, 832933
                  slli         s11, s4, 20
                  and          a3, s6, t5
                  and          a1, a6, t5
                  slti         s9, s11, 1974
                  add          ra, a7, a3
                  srai         s7, a4, 22
                  sub          a7, s3, s6
                  or           s11, a7, s8
                  slt          a3, t1, s6
                  addi         t6, a4, -1074
                  auipc        s4, 306968
                  andi         t4, s1, -1700
                  addi         tp, sp, -937
                  addi         ra, s8, 1434
                  or           zero, ra, gp
                  sra          s2, a1, ra
                  sll          s0, a5, t2
                  srai         t4, a6, 30
                  and          gp, s10, s0
                  srai         ra, a7, 26
                  slt          t0, tp, a6
                  auipc        gp, 442774
                  add          s9, s3, s7
                  srl          s4, a6, ra
                  slt          a6, tp, s7
                  sub          s7, t4, s9
                  slti         t1, s1, -310
                  sltiu        ra, s1, 419
                  sll          ra, s4, sp
                  sltiu        s3, s1, 1905
                  srl          t1, t4, a5
                  sll          a7, a1, s2
                  srai         s9, s8, 17
                  srai         s0, tp, 10
                  or           a3, a6, s2
                  lui          gp, 627422
                  srai         s6, s5, 27
                  srl          a4, a2, ra
                  xori         s9, a3, -1876
                  and          zero, a2, s10
                  lui          a1, 854855
                  andi         t4, a6, -32
                  add          t1, a6, sp
                  slt          tp, s3, s1
                  srai         a1, t3, 31
                  sra          s2, a5, zero
                  srl          a6, a4, s10
                  sltiu        s9, gp, 804
                  slt          a4, t3, s7
                  sra          s5, zero, s1
                  auipc        a6, 850243
                  or           s5, t6, s11
                  nop
                  lui          s0, 353624
                  sll          a3, s1, a7
                  nop
                  xor          s10, s9, s5
                  sltiu        t0, zero, 1500
                  srl          t1, tp, s1
                  srli         t0, gp, 15
                  auipc        t6, 386120
                  sll          t2, tp, zero
                  slti         s0, s2, 1850
                  slt          s8, t4, s11
                  srl          t2, a2, a3
                  sll          a2, s11, s1
                  sltu         a0, s11, t6
                  srli         s5, t0, 23
                  sll          a4, ra, a3
                  slli         s11, a3, 10
                  sra          a2, s7, a7
                  slti         a0, s6, 1171
                  nop
                  ori          ra, s8, -1921
                  xori         a5, a7, -438
                  slti         sp, tp, -1488
                  sub          s3, s9, s1
                  lui          t4, 322554
                  sltu         a4, ra, a4
                  sra          t4, t3, s1
                  srli         t4, ra, 9
                  slti         a0, t4, -619
                  sltiu        s10, a6, -846
                  sub          s0, s10, s8
                  sll          ra, a5, t6
                  addi         a7, s6, 419
                  slti         t0, t4, -310
                  slli         gp, t6, 7
                  ori          a2, t5, 1959
                  slt          s10, s3, s10
                  sub          a6, s8, t5
                  or           t4, a5, gp
                  xori         t2, s3, 954
                  ori          a2, t1, 1316
                  nop
                  add          s2, s4, a5
                  slli         s7, a1, 12
                  slli         s10, zero, 29
                  ori          s6, a0, -1877
                  xori         ra, ra, 2004
                  sltu         a4, s0, s5
                  slt          s10, s8, s4
                  andi         a0, a1, 609
                  srai         a3, s5, 28
                  or           t1, t2, s10
                  lui          t0, 372022
                  lui          s6, 957377
                  slt          s3, s11, gp
                  xori         ra, t4, -571
                  sra          s5, s3, s5
                  slt          s4, a6, t5
                  srli         tp, a1, 12
                  lui          a5, 435239
                  and          s11, tp, a1
                  nop
                  slti         a1, s3, 1748
                  lui          a0, 600784
                  and          s7, t3, s0
                  srl          s8, a6, s3
                  add          a6, s10, s3
                  srli         s8, s7, 6
                  or           a4, s1, a5
                  slti         s0, s5, 519
                  srai         s8, s10, 11
                  sltu         a7, a3, s0
                  ori          sp, tp, -377
                  add          s5, s0, ra
                  nop
                  nop
                  addi         s9, t3, 119
                  addi         a7, s4, -1594
                  slt          tp, a7, s6
                  lui          tp, 436208
                  auipc        gp, 814332
                  srai         a0, s6, 3
                  sub          s2, sp, a6
                  xori         sp, zero, -265
                  or           s9, t4, s9
                  sltu         t1, a7, t6
                  lui          t0, 851943
                  sltu         s9, a4, s2
                  sltiu        t0, t3, -1306
                  xori         a5, s6, -420
                  lui          s6, 539085
                  lui          a4, 842546
                  ori          sp, s0, -990
                  srai         s0, a0, 28
                  slti         s6, a2, -432
                  ori          sp, s11, 596
                  lui          a4, 379315
                  sub          s7, s10, s9
                  slti         a5, s10, -1157
                  srli         tp, s11, 17
                  ori          t4, t0, 1667
                  srai         ra, t6, 30
                  sltiu        s8, s2, -1529
                  sra          s5, t3, sp
                  sub          a5, t3, t4
                  sltiu        s6, a1, -411
                  srai         a1, s7, 4
                  add          a2, s6, s11
                  srai         s10, t6, 22
                  or           a0, a1, s9
                  ori          s4, zero, 859
                  andi         s5, s8, 592
                  andi         a6, a6, 2046
                  nop
                  andi         sp, s10, -1228
                  nop
                  xor          s10, t6, s3
                  lui          s6, 559766
                  slti         a4, gp, 861
                  lui          a0, 196561
                  lui          t0, 839185
                  srl          s9, a3, t0
                  or           t4, s4, s7
                  sra          s10, a6, a1
                  sll          s7, a0, t4
                  lui          s0, 543990
                  andi         s10, a6, -1272
                  auipc        s5, 790260
                  addi         t2, s10, -59
                  xor          s5, s4, a6
                  add          s4, t4, s4
                  srl          a0, gp, t1
                  addi         t2, ra, 1559
                  slli         s2, zero, 28
                  sra          t6, a3, t0
                  srli         s0, s7, 20
                  auipc        a7, 779921
                  lui          s6, 956952
                  ori          a4, ra, -1107
                  xori         a7, s7, 532
                  slli         s3, gp, 0
                  sltu         s10, a3, a7
                  sub          s2, t6, t0
                  and          s8, t0, s1
                  xor          a4, a4, ra
                  or           s6, t2, a3
                  xor          t2, t6, ra
                  srli         s10, a6, 27
                  nop
                  srli         s6, s6, 0
                  sll          a2, a5, a5
                  lui          t2, 812589
                  sub          s11, gp, sp
                  sll          a2, a2, s4
                  xor          tp, t1, s3
                  srai         a1, s10, 2
                  sltiu        t6, t4, -1801
                  or           a3, zero, s10
                  add          s9, gp, s7
                  and          ra, a4, s1
                  sltiu        ra, t4, 328
                  slli         s9, t2, 15
                  andi         s11, t6, -880
                  add          s4, t4, tp
                  sltu         s6, s10, t0
                  slli         t6, a4, 19
                  sltiu        s2, gp, -952
                  xori         sp, zero, -1019
                  slli         t1, t2, 15
                  srl          t0, s10, s8
                  srl          s9, t6, s1
                  add          s9, s8, ra
                  lui          t6, 223170
                  sltiu        s0, t2, 181
                  slt          s10, t2, sp
                  and          t1, a5, sp
                  slti         s8, zero, -1805
                  sra          a1, s3, zero
                  or           zero, t2, a7
                  xor          t4, t5, t5
                  slt          s10, s9, t3
                  srai         s11, s3, 22
                  slt          a7, t5, t1
                  lui          a7, 378785
                  sll          t6, a0, s7
                  add          tp, s10, gp
                  srai         s0, a5, 13
                  sltiu        t1, t6, -1975
                  addi         a4, a2, 323
                  sll          t2, t6, s0
                  srai         s7, t4, 27
                  add          s6, s6, a4
                  xor          a6, tp, t0
                  srl          a7, a2, gp
                  sub          zero, t2, a3
                  slti         a3, s8, -375
                  addi         a1, gp, 960
                  xor          a6, s4, a1
                  sltiu        a3, zero, -392
                  sltiu        s5, t6, 1395
                  slti         t6, t5, 1215
                  sltu         s4, s1, s2
                  slli         t1, s3, 5
                  sub          ra, s0, gp
                  sra          a6, s7, s5
                  srl          s0, t6, a5
                  and          s3, a0, a5
                  srai         s4, a1, 22
                  srli         t0, ra, 16
                  slli         a0, a4, 2
                  slt          a4, s1, s6
                  sub          s5, t6, gp
                  sra          s8, t6, a4
                  slti         s6, zero, -1126
                  sll          s3, t5, s9
                  xori         gp, s2, 1459
                  or           gp, a7, t2
                  add          t6, gp, sp
                  lui          a1, 700788
                  and          gp, t5, t6
                  auipc        a1, 611183
                  srli         a6, s3, 22
                  sub          s11, t6, gp
                  auipc        s9, 129535
                  sub          s5, s0, a6
                  sltiu        a1, a2, 624
                  srai         a7, a2, 29
                  sltiu        a3, s7, -144
                  add          s6, s5, t1
                  ori          s2, gp, -1185
                  sltiu        sp, t6, 449
                  add          zero, s4, a4
                  and          s2, a6, gp
                  slt          t0, a1, s3
                  srli         tp, s8, 15
                  slt          t2, s4, s3
                  slt          a4, gp, t0
                  slli         a1, t3, 7
                  xori         a2, s0, -1901
                  slt          s4, a6, s3
                  add          s11, t1, s2
                  auipc        t1, 982025
                  sll          s6, t4, a4
                  sltiu        tp, a3, 996
                  slli         a3, s5, 9
                  and          t0, s1, s10
                  sra          t0, s2, a4
                  sltu         a6, s2, s6
                  srl          t4, a1, s9
                  srai         a1, t0, 21
                  sra          sp, a0, s8
                  and          s0, a7, a6
                  sub          a5, s3, s7
                  lui          gp, 246700
                  sll          a0, a4, a0
                  slt          s6, t0, s8
                  slti         t2, s3, -534
                  xor          s9, a5, a2
                  sub          s8, a0, a2
                  xor          a6, s9, a6
                  addi         t4, s4, -1548
                  sltiu        t2, t1, -694
                  sltu         sp, s1, zero
                  sll          ra, a7, a1
                  sll          s0, t3, s7
                  sra          ra, t3, a0
                  and          gp, tp, s7
                  sra          a6, s10, s2
                  sltiu        a0, s3, -1167
                  slli         s11, a4, 17
                  srai         s8, s3, 28
                  sub          a1, t6, gp
                  auipc        a5, 669871
                  xor          s11, s7, s4
                  slt          s6, a1, t5
                  xor          s2, s8, t0
                  xori         s6, a5, -1617
                  sub          a3, t3, s6
                  nop
                  slt          a0, s9, s7
                  add          sp, s6, a1
                  xori         s9, s9, 1723
                  nop
                  srai         gp, a5, 15
                  sltu         s8, a4, zero
                  sltu         a0, ra, t0
                  sltiu        s5, t1, 968
                  xori         a5, s11, -1610
                  slli         tp, s11, 17
                  xori         tp, t4, 294
                  xor          zero, s3, s7
                  ori          zero, t0, -1799
                  xor          s9, t1, zero
                  add          s4, t1, s6
                  sltiu        s8, t0, 1454
                  sra          a7, s3, t4
                  slti         a7, s6, -195
                  sra          s10, t6, zero
                  srli         t6, zero, 2
                  slt          s8, t5, t5
                  sra          a5, a4, t5
                  ori          s9, t2, -1181
                  sra          a5, a0, s1
                  nop
                  xori         s8, s10, 1434
                  srai         gp, sp, 20
                  auipc        t4, 105039
                  ori          a4, tp, 296
                  sltu         t0, a3, a0
                  auipc        a0, 65270
                  sltu         t1, s8, a7
                  slli         s0, gp, 17
                  nop
                  sltu         s6, t6, a2
                  srai         t4, s10, 6
                  slt          ra, t6, gp
                  sra          a1, s6, s2
                  andi         s8, s2, 823
                  xori         s4, a5, -1679
                  sra          s7, s4, s5
                  addi         t2, a3, 1818
                  sll          s3, zero, s9
                  andi         gp, s1, 772
                  xor          tp, a7, tp
                  srai         a2, sp, 30
                  ori          gp, s4, -1556
                  xori         a6, s2, -1442
                  sub          s0, sp, s8
                  slt          t2, a4, s0
                  sltu         s9, s8, a6
                  xor          s6, s1, t1
                  sltiu        a5, s9, -310
                  or           t2, t4, t6
                  ori          s10, a1, -1791
                  or           tp, s2, s0
                  slli         s2, a1, 19
                  xori         a1, s10, -920
                  add          t1, s0, t2
                  xori         s7, sp, -789
                  sll          s4, t4, s7
                  slli         t1, s4, 19
                  or           a6, t1, ra
                  sra          t1, s9, tp
                  addi         t0, s2, -1328
                  lui          t4, 513193
                  srli         gp, a5, 16
                  sltu         gp, s5, a6
                  and          t4, a2, s3
                  auipc        s10, 12859
                  auipc        a2, 868176
                  sra          a0, t2, a4
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           a3, 0x80000000
                  li           a4, 0xad675fc8
                  li           t0, 0xffffffff
                  li           a1, 0x0
                  li           sp, 0xabe6fa02
                  li           s5, 0x0
                  li           s4, 0x80000000
                  li           s8, 0x80000000
                  li           s6, 0x0
                  addi         s5, s8, -1754
                  add          sp, sp, s6
                  add          s8, s6, s6
                  add          a1, s8, s8
                  addi         t0, s9, 1449
                  add          a1, s6, a3
                  addi         s6, s6, -24
                  add          t0, s4, s4
                  nop
                  auipc        s9, 271656
                  sub          s8, t0, sp
                  sub          s8, a4, s5
                  add          t0, s4, a3
                  nop
                  nop
                  auipc        s6, 699889
                  add          a3, s8, s8
                  nop
                  nop
                  nop
                  addi         t0, a3, 112
                  sub          a1, a3, a1
                  nop
                  sub          a1, a3, s9
                  sub          s9, s9, sp
                  sub          s6, s8, sp #end riscv_int_numeric_corner_stream_19
                  ori          a3, s11, 1630
                  sll          a2, tp, sp
                  add          t2, s4, s7
                  auipc        a6, 620397
                  lui          s2, 824248
                  xor          zero, s8, tp
                  sltu         tp, gp, a5
                  slti         a5, a3, 857
                  nop
                  xor          s0, s2, ra
                  slt          s2, s8, sp
                  sltiu        s5, t3, -977
                  xori         a1, a4, 706
                  xor          s0, s8, a4
                  or           s7, t1, a5
                  srli         zero, t5, 30
                  sll          t1, s10, zero
                  sub          t6, a5, s7
                  auipc        t1, 161074
                  or           t0, s3, s7
                  srl          s7, s5, a3
                  srl          s6, s0, s6
                  srli         t0, a2, 11
                  xor          s5, a1, a3
                  srli         ra, s9, 4
                  sltiu        t0, s9, -708
                  srli         gp, a7, 13
                  and          t2, s4, s3
                  or           sp, s9, a7
                  and          a5, t4, a2
                  add          tp, a6, a5
                  sltiu        ra, s1, 1393
                  slli         t4, s7, 4
                  slti         tp, s0, 1525
                  lui          s4, 737641
                  ori          a6, a0, 703
                  ori          a3, s7, -574
                  srai         a0, t4, 2
                  and          ra, t3, a0
                  xori         s3, a5, 1965
                  or           t0, s8, s8
                  andi         s0, a3, 935
                  sra          s8, t1, a1
                  srai         s8, a1, 9
                  auipc        s2, 56138
                  add          gp, t3, t1
                  sra          s7, s9, a6
                  srli         gp, a0, 2
                  slli         zero, s7, 19
                  xor          s10, t4, a5
                  slti         a7, s1, 1890
                  srai         gp, s4, 24
                  sltu         s7, s0, a1
                  lui          s2, 681766
                  sub          a1, a5, a1
                  ori          zero, a1, -1146
                  xori         s8, t6, 1953
                  srli         a4, a0, 6
                  or           sp, s9, s1
                  auipc        t4, 941679
                  addi         s5, t2, -10
                  sub          t1, t1, t5
                  slti         t6, t4, -26
                  sll          zero, t2, a6
                  srli         s5, s0, 24
                  nop
                  nop
                  srli         a7, ra, 9
                  ori          t4, s7, -1773
                  ori          a0, s3, 2032
                  andi         tp, s7, 997
                  add          a5, sp, sp
                  lui          s4, 991169
                  sub          a0, a1, s9
                  sra          s6, gp, a3
                  nop
                  ori          a4, t2, 536
                  auipc        t4, 366466
                  srai         s5, t2, 6
                  auipc        ra, 512894
                  slti         tp, a7, -1544
                  slt          a0, s2, t1
                  add          a7, a5, t3
                  srai         s6, zero, 5
                  add          s3, sp, a2
                  srli         t2, s5, 31
                  slti         sp, a4, -1384
                  lui          s9, 323111
                  srai         s0, a7, 25
                  auipc        s11, 29075
                  xori         s2, t1, -509
                  and          t6, zero, a7
                  slt          t0, s2, a6
                  srl          a7, s11, a0
                  srl          s0, ra, s2
                  lui          zero, 45754
                  ori          a1, s6, -645
                  nop
                  srli         s11, gp, 30
                  srli         t0, a3, 10
                  slti         a3, s3, 111
                  addi         t2, ra, -822
                  nop
                  xori         t4, s7, -404
                  srai         a4, t6, 5
                  and          a3, zero, s0
                  sra          s10, s9, s6
                  xori         a1, a7, -367
                  ori          a2, t3, 752
                  sltiu        a2, tp, 1551
                  srli         sp, a3, 19
                  lui          s2, 269574
                  lui          s10, 537328
                  sltu         ra, s4, s3
                  add          s5, t3, t2
                  xor          s6, a1, s11
                  sub          s0, a2, s4
                  xor          gp, zero, a1
                  ori          t0, s2, -401
                  slt          t6, ra, t3
                  and          a4, s0, tp
                  srli         t2, s1, 11
                  sltiu        s10, t5, 166
                  lui          s3, 749841
                  or           a4, a6, s9
                  and          a7, t1, t6
                  srl          sp, s0, s3
                  sltiu        t4, s5, -1681
                  sll          s5, a7, sp
                  slli         s8, tp, 17
                  ori          s6, tp, -1031
                  slti         a0, a6, -1911
                  nop
                  srl          a3, s4, a6
                  slli         s0, tp, 0
                  sltiu        tp, a2, -2001
                  auipc        a4, 605233
                  slli         s5, a6, 29
                  sll          s9, s8, s10
                  nop
                  sltu         a6, s7, s6
                  sra          t6, t1, s9
                  lui          t2, 403543
                  and          s5, a1, a4
                  sltiu        a2, s8, -1795
                  sltu         s0, a6, s1
                  slli         ra, a1, 6
                  slli         sp, t5, 7
                  add          s6, a1, t5
                  slli         s4, a2, 27
                  sltiu        s11, a0, 668
                  lui          tp, 997882
                  or           tp, s3, a4
                  ori          s3, t0, -1355
                  slli         sp, tp, 10
                  srl          zero, ra, s5
                  or           sp, t5, t0
                  add          a5, t5, t2
                  xori         s4, s5, -520
                  sltu         tp, s1, s2
                  addi         t0, s3, 1624
                  srli         sp, t3, 20
                  add          zero, t3, t6
                  and          a1, a7, sp
                  xor          t0, s9, t5
                  sub          t2, t0, a1
                  srl          s10, t6, t1
                  slli         a5, s6, 9
                  andi         s0, t6, -1085
                  sub          s9, a3, s1
                  sll          s5, sp, s4
                  sll          s10, s11, ra
                  lui          zero, 450480
                  auipc        s3, 148763
                  sra          t1, gp, a4
                  add          a0, a7, a4
                  sra          t2, s9, t4
                  lui          s5, 550252
                  srai         s3, a4, 21
                  srl          s3, a5, t0
                  srli         a2, s3, 28
                  sll          s10, s11, a4
                  sub          t1, s2, a3
                  addi         t6, s10, 902
                  sra          t0, s10, a1
                  auipc        s10, 89563
                  srl          t0, t4, a7
                  slti         ra, t0, -1250
                  slli         s10, sp, 1
                  andi         a4, t4, 1174
                  sll          t2, a4, t4
                  lui          tp, 374237
                  srl          a3, a2, s5
                  xori         gp, s5, 429
                  slli         gp, s2, 10
                  sra          zero, a1, s11
                  lui          s10, 321746
                  ori          s7, s4, -1968
                  sub          a7, gp, t2
                  sub          a1, gp, tp
                  srl          s9, zero, s9
                  ori          a1, a6, 286
                  sltu         ra, zero, s6
                  slt          zero, a0, s3
                  andi         zero, s7, 1132
                  or           s8, a7, t1
                  xori         a4, a5, -797
                  and          sp, s9, sp
                  add          t6, sp, s8
                  slti         a6, tp, 253
                  and          ra, ra, t4
                  sra          s10, s4, a7
                  nop
                  auipc        a3, 491215
                  auipc        a7, 279514
                  xor          s7, gp, a6
                  sub          tp, s8, t0
                  ori          s7, t3, 1901
                  sltiu        a1, a6, -1023
                  auipc        a4, 404465
                  slt          zero, zero, t0
                  srli         s6, gp, 14
                  sra          s5, s10, t1
                  xor          zero, a6, s4
                  sltu         t0, a3, s4
                  ori          t0, s9, 1244
                  srai         s11, t2, 0
                  srai         s11, a5, 20
                  slli         s5, s0, 3
                  slli         s10, a2, 30
                  xor          s0, a6, a5
                  ori          a3, a2, 1166
                  sll          s0, a1, s9
                  xori         s6, ra, 1596
                  auipc        a4, 362442
                  srl          a6, sp, s8
                  andi         s3, zero, -815
                  lui          s3, 755866
                  andi         gp, t1, -1473
                  sltu         s10, a7, s8
                  xor          t6, a7, a0
                  srli         s9, s7, 24
                  slt          a3, a5, tp
                  srl          a5, zero, s8
                  sub          tp, a4, a7
                  sll          t4, a5, s0
                  lui          s4, 986069
                  and          a3, a1, a2
                  nop
                  sltiu        a7, a0, 1887
                  sra          zero, s2, s2
                  sltiu        s4, a1, -686
                  sub          s6, a6, a3
                  sltu         s5, a7, t0
                  nop
                  xor          tp, ra, t0
                  addi         a4, a0, -131
                  xori         tp, a7, 1895
                  sltu         a1, zero, a4
                  srai         t6, t4, 16
                  srl          a7, s9, tp
                  or           a0, s0, s4
                  sltu         a7, s7, a2
                  ori          ra, s3, -417
                  sltu         s8, t5, s5
                  sltiu        s10, s11, -1614
                  xori         tp, gp, -788
                  nop
                  addi         tp, ra, 56
                  sltu         s3, t6, a0
                  sltu         t1, t5, tp
                  slti         s8, s5, -1910
                  srai         s10, a6, 23
                  xori         tp, s4, 474
                  or           t4, a3, a5
                  ori          s11, a3, 1143
                  slli         t0, tp, 10
                  ori          gp, a6, 1137
                  srl          a3, s6, s11
                  xor          a5, t4, s0
                  sltiu        a7, s2, 1129
                  nop
                  srai         tp, t5, 31
                  lui          s10, 461240
                  add          a0, a0, a6
                  sub          s7, s5, s0
                  sltu         s8, a7, a7
                  ori          s8, s3, -1407
                  ori          s7, s2, -1946
                  xor          s4, gp, t5
                  slti         a6, gp, 134
                  sltiu        s10, s3, -150
                  or           sp, s0, t0
                  slt          s9, a7, a0
                  or           s10, sp, t5
                  lui          a2, 518869
                  ori          s4, a5, -1551
                  lui          a5, 519981
                  or           a0, s8, ra
                  xor          zero, zero, tp
                  or           s11, t1, s1
                  xori         t4, a3, -1492
                  sll          s11, t5, ra
                  xor          s0, t2, gp
                  sub          a0, t2, s2
                  xor          t1, a5, gp
                  andi         a0, a3, 1027
                  sll          tp, t4, s11
                  ori          t0, t2, -2042
                  lui          s10, 895165
                  sll          s4, s6, a5
                  xor          zero, s8, tp
                  sltiu        a0, s3, -1604
                  or           a1, s2, s3
                  srl          s3, t3, t3
                  addi         s0, s4, -1923
                  lui          a0, 617293
                  add          t1, tp, s10
                  sltu         s7, s5, s8
                  srl          t4, s2, tp
                  srli         t0, a0, 12
                  sltu         s5, a4, ra
                  nop
                  sltiu        t2, a3, 479
                  add          a2, zero, s4
                  ori          a6, s3, 166
                  xor          s4, s3, a6
                  add          a4, t6, t6
                  ori          s8, s0, -170
                  sltiu        a0, a1, -650
                  sub          t2, s11, a3
                  sra          tp, ra, s2
                  srli         a0, t0, 3
                  lui          a0, 965492
                  nop
                  slli         a4, t4, 2
                  xori         tp, a7, -1530
                  andi         t2, ra, 214
                  ori          a4, a0, -257
                  slti         a7, zero, -582
                  srli         s8, s7, 9
                  ori          s0, s5, -889
                  sub          a0, s7, a1
                  add          s2, t2, s10
                  slli         t6, s11, 11
                  auipc        ra, 870237
                  ori          a7, a4, 1178
                  or           a3, t0, ra
                  srai         ra, tp, 1
                  lui          s3, 317024
                  or           s5, a6, t1
                  sll          t1, s11, a0
                  and          s3, ra, s11
                  sll          t4, s2, s11
                  auipc        s5, 819841
                  srli         t6, s8, 10
                  andi         s7, a7, 1906
                  auipc        a0, 1010467
                  sltiu        ra, a6, -951
                  addi         t0, a5, 463
                  sltu         a3, t2, a4
                  sub          tp, tp, ra
                  lui          tp, 820513
                  srl          t1, t5, s10
                  addi         a7, a2, -1873
                  slti         s5, t3, 991
                  lui          t4, 622185
                  srl          s3, s3, tp
                  andi         t4, s8, -1967
                  slli         s6, gp, 10
                  sll          t1, s9, t0
                  nop
                  slti         s6, s5, -1371
                  sltiu        s5, s0, 675
                  sltu         s4, s9, s9
                  xor          a6, s7, a1
                  xor          s5, s3, s1
                  addi         s11, s6, 1343
                  sltu         s0, t2, gp
                  srai         s7, tp, 2
                  ori          a4, s9, -1196
                  add          s0, a2, s0
                  slt          s7, s5, s5
                  srl          s7, s5, tp
                  sra          a2, a0, s1
                  sra          s9, a4, t4
                  slti         s11, a6, -235
                  slti         t1, t5, 321
                  slt          ra, s9, sp
                  xor          t1, s4, sp
                  sll          t1, s1, t1
                  srai         s6, t6, 18
                  xor          s9, sp, s8
                  or           ra, zero, s7
                  lui          ra, 415456
                  lui          a0, 858944
                  sll          tp, t4, ra
                  srli         a3, a7, 16
                  add          gp, a2, s11
                  add          a5, tp, a5
                  addi         s7, s2, -1808
                  or           a6, a6, s5
                  sll          s6, s6, s9
                  ori          s5, sp, 1318
                  andi         a6, t3, 1538
                  sub          s3, a4, a5
                  lui          t1, 90204
                  slt          a1, gp, t5
                  slti         s7, t2, 647
                  srai         s2, a2, 10
                  slt          a2, gp, s11
                  srli         sp, ra, 20
                  sltu         s9, a6, t2
                  sltu         t4, s3, a1
                  add          tp, s8, s5
                  sltiu        s9, t4, 100
                  add          zero, ra, t5
                  srli         a5, gp, 28
                  add          s2, a7, s9
                  ori          s0, a3, 1815
                  sra          zero, a6, t1
                  ori          s10, t4, 1582
                  xor          t0, s0, a5
                  srli         s10, t6, 29
                  ori          t6, zero, 2040
                  sll          a2, s4, s7
                  slli         s6, t6, 18
                  lui          a7, 1033694
                  sltu         s10, t1, s5
                  srl          gp, sp, tp
                  and          t0, s5, s3
                  ori          ra, s8, -1521
                  sll          t1, s4, t2
                  slli         a5, s3, 21
                  slti         a5, a1, 517
                  sltu         s8, s10, t6
                  slli         s11, s0, 8
                  or           gp, s8, s5
                  lui          a6, 997222
                  slli         s2, a3, 17
                  sltu         a4, s8, gp
                  srli         a0, s1, 28
                  slti         s5, s11, -1306
                  sub          s7, t6, a6
                  andi         ra, a7, -211
                  ori          t2, ra, -83
                  srli         a5, s7, 1
                  auipc        zero, 463434
                  and          t1, s11, t1
                  srl          s2, t1, a1
                  andi         a6, a2, 858
                  nop
                  slt          t0, zero, zero
                  srai         t2, gp, 9
                  sltiu        t4, s0, 379
                  srli         s2, tp, 6
                  srl          s11, t3, a5
                  auipc        s5, 710651
                  sll          s11, a6, s0
                  srl          s2, s7, s7
                  slt          s9, s7, s8
                  or           sp, t0, a7
                  slli         s5, a7, 16
                  slli         a7, a4, 4
                  auipc        t6, 666096
                  srl          gp, s8, s2
                  ori          s6, a7, 1608
                  or           ra, s7, s6
                  addi         t6, a7, -496
                  lui          gp, 970995
                  and          t2, s10, t2
                  sll          gp, a6, ra
                  srai         a1, a6, 16
                  slti         a0, s7, -1392
                  slli         gp, s0, 16
                  xor          tp, t4, a5
                  sub          t2, sp, s3
                  auipc        t1, 284311
                  sra          s0, t0, t0
                  sub          a7, s10, t5
                  sltu         s2, s7, s5
                  sll          a0, sp, ra
                  lui          t2, 589288
                  sltiu        t4, s9, -1691
                  and          s4, a1, t3
                  sub          t0, a7, t5
                  xori         a7, s4, 579
                  or           t4, a0, s9
                  or           a2, ra, t0
                  sltu         t1, t2, a2
                  slt          s2, t6, a7
                  sltiu        ra, gp, 1866
                  ori          zero, a2, -630
                  srai         t2, a6, 23
                  slli         s9, t1, 16
                  xor          sp, s3, a3
                  slli         s3, s3, 7
                  sub          a4, a7, s0
                  xori         zero, s9, -54
                  slt          a7, t0, a1
                  srli         zero, s5, 28
                  or           tp, tp, a4
                  sltu         s3, s6, gp
                  slli         s4, s1, 9
                  or           s2, t3, sp
                  sll          a2, sp, s10
                  sub          a1, a6, s10
                  nop
                  slli         s2, a0, 19
                  srl          s2, t4, t6
                  ori          t0, zero, 781
                  sltu         s0, tp, s7
                  slli         s4, s5, 29
                  or           s11, a6, a0
                  addi         a0, s1, -1936
                  slli         gp, a6, 10
                  sub          a6, s4, t0
                  sltu         a3, a2, s9
                  xor          t6, t2, s9
                  ori          a0, s6, 85
                  sltiu        t2, s2, -1859
                  and          gp, s10, t6
                  nop
                  sltiu        ra, a7, 694
                  sltiu        s6, s2, 992
                  xor          zero, a5, a4
                  addi         tp, ra, -750
                  sll          t4, a1, t1
                  ori          s9, s4, 985
                  sll          a0, s5, a3
                  srl          t2, a1, s4
                  xor          a5, tp, s9
                  slt          t4, t5, s3
                  sll          s10, s10, t4
                  lui          s10, 893792
                  xor          s8, s4, sp
                  sll          t1, s11, s11
                  sltiu        sp, t1, 1755
                  auipc        s3, 704205
                  lui          a7, 406622
                  or           s10, a0, a1
                  xor          a3, s5, s8
                  slli         s0, t6, 9
                  addi         s3, tp, -824
                  sll          s9, a5, s3
                  xori         s10, a3, 1576
                  sltu         s8, s3, a3
                  sltiu        a6, s2, 1991
                  sltiu        s7, s10, -1866
                  sll          a2, a0, a6
                  slti         ra, s0, 1298
                  slti         s11, s8, -683
                  or           a6, t4, s10
                  sltu         ra, zero, a2
                  nop
                  xori         s9, s0, -1206
                  xori         t2, a4, -1363
                  slti         t2, a1, 1995
                  and          s10, a2, s4
                  sltu         t6, a3, a0
                  slti         s8, s8, 913
                  or           zero, a1, t2
                  srl          gp, t3, s9
                  or           s11, s5, s9
                  or           s9, a0, s11
                  sra          tp, s1, s10
                  andi         s0, tp, -1172
                  auipc        s9, 850093
                  ori          s11, a0, 726
                  or           a2, s5, t0
                  auipc        t1, 406432
                  srli         a4, s9, 1
                  sra          t4, a3, s6
                  slti         gp, sp, -1973
                  sub          a7, s2, s2
                  add          tp, s9, s5
                  sll          s4, s8, s0
                  lui          a3, 674576
                  and          a2, s7, a6
                  and          a6, t0, s6
                  srai         zero, t5, 18
                  xor          t1, t1, s4
                  xor          s5, s10, s2
                  sra          a5, t1, a1
                  sltu         a3, a0, t1
                  sltu         sp, a2, t3
                  srli         a6, tp, 7
                  slt          sp, s6, t2
                  add          gp, tp, tp
                  auipc        a5, 469443
                  auipc        s5, 195380
                  srai         zero, s3, 30
                  xor          s8, a0, a1
                  xori         s9, a5, 641
                  srli         s11, s4, 8
                  sra          t1, s11, t1
                  sltiu        a0, s3, 1272
                  xori         gp, s5, 621
                  addi         a5, t1, 1168
                  xor          t4, t2, a0
                  xori         s0, a5, -313
                  xor          t1, s8, a3
                  sra          a7, s7, t2
                  srli         s11, s11, 28
                  sll          a3, s6, s1
                  xori         a3, t2, -1612
                  sra          a6, s4, t6
                  add          s7, a7, a7
                  add          s10, t5, t6
                  or           a7, s11, s10
                  srli         a3, t5, 9
                  slli         t0, t0, 21
                  sra          a6, t2, t6
                  slli         a6, s4, 19
                  xori         a0, s1, 1682
                  auipc        gp, 975784
                  and          t1, s7, zero
                  srai         s0, s9, 27
                  srli         t0, s3, 17
                  srl          t2, s2, a0
                  sltiu        tp, s8, -323
                  slt          a2, a4, s10
                  andi         a0, a6, 123
                  srai         s3, s10, 14
                  and          a5, a3, tp
                  lui          a2, 500928
                  sltu         s4, gp, gp
                  srl          s9, t3, ra
                  and          s6, s9, a4
                  lui          s6, 203671
                  sub          a0, s5, s9
                  ori          s11, a4, -1554
                  sltiu        a0, a5, -1540
                  xor          ra, a0, t0
                  slli         t6, a0, 13
                  xori         a4, s7, 634
                  andi         a7, sp, 1052
                  slti         s9, t5, 312
                  sltu         s0, t2, s7
                  srl          s2, t3, s10
                  slt          sp, tp, a3
                  nop
                  and          tp, tp, s11
                  nop
                  andi         a5, s7, 1358
                  and          a0, s4, a7
                  andi         t6, gp, 1184
                  xori         a5, s6, 1335
                  sltu         a4, t0, t1
                  xori         a3, t6, 763
                  andi         t0, s0, -2036
                  sub          s0, s11, t6
                  sra          s5, a5, s9
                  and          s6, ra, ra
                  ori          a4, a5, 1535
                  xor          gp, s8, s10
                  sltu         sp, t0, t0
                  slti         s4, t2, -591
                  sra          s5, t2, a4
                  andi         s11, s5, 1758
                  srli         t1, s9, 16
                  addi         s2, s2, 1018
                  slti         a2, a7, -151
                  srl          a2, s8, s11
                  nop
                  ori          s4, a1, 735
                  slti         a2, gp, 1422
                  sra          s2, zero, sp
                  slli         a4, a3, 4
                  sra          t2, a6, s10
                  sltiu        a2, tp, 944
                  add          t2, t1, t0
                  xori         a5, s10, 1567
                  srli         s6, a3, 22
                  srai         s0, t3, 1
                  sra          s9, a7, t4
                  nop
                  andi         s7, t2, 1787
                  sll          a7, s11, sp
                  lui          ra, 5996
                  andi         a6, a6, -1040
                  sub          a1, s6, s6
                  xor          t6, ra, a2
                  add          a4, s7, a5
                  ori          s6, s5, 1113
                  addi         t0, s8, -1010
                  xor          ra, t2, s3
                  sltu         gp, t6, t4
                  sltu         a1, a3, a0
                  xor          s5, s6, s10
                  and          s3, t0, a2
                  sltiu        s8, a1, 1408
                  xor          s6, a1, s11
                  sra          a7, s11, s5
                  srl          gp, s4, s10
                  srl          s4, t6, s11
                  srai         s0, sp, 21
                  add          s8, a0, a5
                  slti         gp, a2, 144
                  auipc        s2, 278847
                  srai         a1, sp, 12
                  or           zero, s8, zero
                  auipc        ra, 71018
                  lui          s3, 123645
                  auipc        gp, 313519
                  sll          t2, s7, sp
                  srli         s4, s1, 20
                  auipc        s5, 677263
                  sub          t1, a7, sp
                  and          a5, s9, s11
                  or           sp, s5, t0
                  sll          a1, s8, t0
                  srai         ra, s8, 3
                  sra          a7, a0, s6
                  sll          s5, a2, a3
                  sltu         a0, gp, t0
                  andi         a3, s3, 501
                  srai         s2, ra, 16
                  slt          tp, s11, s5
                  slli         s9, a2, 18
                  xor          t0, s2, a3
                  add          s4, a4, s6
                  sll          a2, s1, t1
                  xor          s5, s6, t4
                  andi         s8, t4, 1363
                  ori          a2, a3, 1363
                  and          sp, s11, s0
                  addi         t2, t0, -1573
                  addi         a6, t4, -1515
                  xori         s6, t0, 1617
                  slti         t6, s4, 378
                  srl          t1, s6, gp
                  sub          s9, t4, zero
                  sub          s11, a4, s8
                  lui          s8, 225156
                  sltu         a3, s3, s0
                  sltu         sp, ra, s7
                  slti         a5, a1, -1568
                  srl          a6, sp, s10
                  sra          gp, sp, tp
                  sltu         s7, s7, ra
                  sra          s10, s7, t2
                  add          a1, s10, gp
                  sltiu        ra, t4, -1421
                  sltu         a1, s4, s3
                  andi         a3, t1, -1859
                  andi         t1, t0, -882
                  and          gp, sp, t1
                  sub          a1, t6, s7
                  lui          s6, 511705
                  srl          s0, t2, a7
                  addi         s0, s4, -533
                  and          s11, gp, t0
                  sltu         s2, s11, s2
                  slt          t1, a4, t6
                  addi         s9, s6, 620
                  or           s10, a2, t4
                  sra          a0, a4, tp
                  slti         t1, t5, -481
                  auipc        gp, 801763
                  lui          s10, 896997
                  add          a4, gp, a5
                  sub          s5, t1, a4
                  srli         s7, s5, 21
                  sll          s5, s0, sp
                  srl          s6, a0, a6
                  li           s6, 0x84887e1d #start riscv_int_numeric_corner_stream_12
                  li           ra, 0xd221cd78
                  li           t6, 0xf1a0dc40
                  li           s7, 0xffffffff
                  li           s3, 0xffffffff
                  li           t0, 0xffffffff
                  li           s0, 0xffffffff
                  li           s10, 0x701009e0
                  li           a1, 0xffffffff
                  li           sp, 0x80000000
                  sub          s10, t0, s6
                  add          s6, s6, s0
                  addi         t6, ra, -1665
                  addi         s7, s6, 1774
                  auipc        s10, 415237
                  nop
                  sub          s3, a1, a1
                  auipc        ra, 1013246
                  lui          s10, 247028
                  auipc        s0, 525692
                  auipc        s0, 184706
                  addi         ra, ra, 890
                  nop
                  addi         s10, s7, -312
                  nop
                  add          sp, s7, ra
                  lui          s6, 316080
                  auipc        t6, 783308
                  sub          ra, t6, s0
                  auipc        s0, 1014125
                  lui          ra, 220802
                  lui          s10, 567251
                  lui          sp, 269726
                  auipc        t0, 1027596
                  nop #end riscv_int_numeric_corner_stream_12
                  and          s10, ra, s2
                  add          a6, t3, s7
                  nop
                  sltiu        s4, t1, -107
                  nop
                  slli         s6, a5, 8
                  lui          s10, 477266
                  addi         s4, s3, 977
                  sll          t6, s10, gp
                  andi         gp, s8, 459
                  sub          s2, ra, t0
                  addi         zero, s5, 1460
                  xor          sp, ra, s11
                  xor          a6, s1, zero
                  slli         a0, zero, 23
                  sltiu        a0, s10, 1714
                  sra          s3, a6, a1
                  sra          s11, s7, s0
                  sub          zero, s2, s2
                  slli         a1, s1, 21
                  xori         sp, s4, 1708
                  nop
                  sltiu        t0, s5, 1780
                  andi         s3, a3, -1879
                  or           zero, s9, a3
                  srl          a3, s2, gp
                  sra          t6, t2, a3
                  sll          t1, s6, s6
                  srl          s0, s1, a7
                  xor          a1, a2, s10
                  srl          a2, s6, sp
                  addi         t1, t5, -569
                  add          t1, sp, a2
                  srli         gp, s6, 20
                  nop
                  addi         a3, s10, -1293
                  sltiu        a2, t1, 1219
                  auipc        a6, 7005
                  sltu         ra, s5, t6
                  xori         a5, t2, 618
                  sll          ra, a3, s9
                  srli         s6, zero, 23
                  nop
                  srl          a0, a1, a7
                  sltiu        a2, gp, 1195
                  sltiu        s9, a5, -1267
                  sll          s10, a7, s7
                  srai         sp, a1, 10
                  sub          s3, zero, s9
                  add          s8, t5, a5
                  sra          s8, s5, t3
                  sltiu        s5, s7, -950
                  sra          s3, s0, a7
                  auipc        s9, 1005007
                  sltiu        t1, a6, -1977
                  sltu         gp, t4, t2
                  srl          a3, t6, t6
                  sub          gp, s2, s7
                  or           s7, t2, a5
                  auipc        s9, 416040
                  andi         zero, t6, -1077
                  and          s0, t5, t4
                  srai         a5, s3, 23
                  lui          s3, 733194
                  slti         s4, s9, 1192
                  nop
                  lui          a1, 530459
                  slti         s6, a2, 551
                  add          s6, zero, t6
                  slli         ra, s9, 24
                  sra          a2, s8, t6
                  sub          s11, a5, t4
                  sra          s7, s3, gp
                  slt          a0, gp, a2
                  ori          t0, s4, -126
                  lui          a2, 982902
                  srl          a1, s9, ra
                  lui          s4, 390485
                  xor          a5, t5, a0
                  andi         a2, s4, 1343
                  add          zero, a2, a3
                  sra          a0, s10, a6
                  srai         ra, s5, 4
                  auipc        s7, 915547
                  nop
                  sra          s6, gp, a3
                  sltu         s11, a1, a5
                  slti         s4, s0, -246
                  auipc        a6, 625586
                  slli         s4, s5, 8
                  sub          a5, s0, t2
                  srai         a3, s9, 23
                  auipc        s9, 281724
                  xor          s8, s5, a5
                  lui          a2, 685662
                  xor          a7, s4, t2
                  xori         s5, s2, -1093
                  srli         s5, s5, 17
                  srli         s9, a4, 12
                  addi         t1, s10, 195
                  srli         sp, a2, 3
                  lui          s8, 717567
                  slti         t2, s8, 1888
                  addi         a1, a0, 1194
                  srai         t6, a4, 26
                  auipc        t1, 601730
                  slli         s4, t3, 18
                  slli         a4, a7, 14
                  slti         s6, s2, -303
                  xor          a0, sp, s4
                  xor          ra, s3, t0
                  andi         s10, ra, 297
                  slt          s4, s4, t0
                  lui          a3, 234562
                  lui          s7, 417740
                  sll          t6, tp, t1
                  sra          s11, s8, ra
                  slli         ra, a6, 2
                  andi         s6, s3, -1785
                  xor          s8, t6, a0
                  or           s10, tp, t1
                  srai         sp, s7, 22
                  auipc        t6, 112935
                  ori          t2, a3, -1843
                  sll          s10, s10, t3
                  and          sp, t1, t5
                  lui          t6, 268806
                  or           s11, t4, a6
                  xor          s5, s4, t6
                  xor          s7, s5, s6
                  and          a7, tp, s9
                  srli         ra, s1, 4
                  andi         zero, s10, 1435
                  nop
                  slli         s9, a4, 23
                  sltiu        a1, s8, 119
                  addi         s2, s5, -465
                  addi         s7, a0, -574
                  auipc        s8, 458904
                  or           a7, s11, gp
                  auipc        s3, 945574
                  nop
                  xor          s10, a2, a6
                  auipc        zero, 794215
                  slt          s2, t1, sp
                  xor          s9, s3, tp
                  andi         a4, a1, -195
                  sltu         a6, t3, t0
                  addi         s5, a3, 595
                  lui          ra, 642618
                  sub          sp, a4, t6
                  sll          a4, t3, s6
                  add          t4, s1, sp
                  and          a3, a3, a1
                  sltiu        s3, sp, -161
                  nop
                  auipc        s6, 634115
                  srl          tp, zero, gp
                  auipc        s2, 790979
                  slti         a7, zero, -223
                  sltiu        s10, a1, -718
                  and          s9, s9, tp
                  sra          s6, s3, t1
                  addi         a6, s7, 340
                  sll          s11, a2, s2
                  sub          t2, a1, t1
                  xor          zero, a0, s11
                  slti         a6, tp, 1388
                  slli         a4, s6, 1
                  slt          ra, s5, ra
                  slti         s7, s1, 519
                  auipc        zero, 56277
                  slli         s5, t2, 3
                  add          t4, a5, ra
                  or           s11, tp, s7
                  slt          s8, a0, s2
                  srli         a0, s1, 11
                  slti         s3, t5, -493
                  sub          s5, s1, s1
                  andi         s5, t5, -1464
                  sltiu        t0, tp, -1279
                  slli         gp, a4, 15
                  sra          a0, a6, a7
                  sll          s9, s7, a7
                  auipc        s10, 46503
                  addi         s5, s10, -397
                  sll          a5, s2, s11
                  add          s6, s6, s7
                  xor          s9, s10, s3
                  srl          t0, a4, t2
                  sub          s8, t6, s1
                  lui          a3, 375141
                  nop
                  sra          gp, s3, t0
                  sub          a4, t3, gp
                  sltu         s5, t4, s11
                  and          s10, s7, s8
                  sub          a2, s1, ra
                  sub          t6, t3, a6
                  auipc        zero, 832060
                  xor          a1, t0, t6
                  or           t1, a4, t0
                  sra          a1, t4, s7
                  srai         tp, a5, 6
                  sra          a5, tp, s0
                  srl          t2, a5, t5
                  srli         a4, gp, 29
                  srli         s0, a3, 15
                  srai         s2, a3, 11
                  srl          gp, s0, s10
                  auipc        s6, 687325
                  sll          a3, a7, t0
                  sltiu        a5, t6, -1048
                  andi         a0, s1, 363
                  xor          s2, t6, s4
                  sltiu        ra, s6, -1286
                  sub          s4, s7, s0
                  slt          s9, s1, s5
                  sltiu        s11, t1, -936
                  ori          s2, t3, 680
                  or           s6, s10, s0
                  sltiu        a7, s3, -1863
                  sub          s9, s4, a6
                  sltiu        a1, tp, 1834
                  or           zero, s10, ra
                  nop
                  addi         t2, a1, 809
                  add          t1, gp, t4
                  sub          s7, ra, a5
                  add          s9, s0, s10
                  addi         s8, a1, -1762
                  lui          s0, 709100
                  slli         s11, t3, 31
                  xor          s6, t3, t2
                  andi         sp, zero, 1892
                  addi         a4, ra, -878
                  xor          s4, t5, t2
                  nop
                  srl          t2, t0, t1
                  xori         t0, zero, -807
                  srl          tp, t5, s8
                  nop
                  sll          sp, s10, s4
                  or           t4, t6, a4
                  nop
                  ori          t2, t6, 1045
                  srl          sp, s3, s1
                  srai         a2, s2, 7
                  auipc        a4, 168753
                  add          zero, a4, t3
                  slt          s5, s6, s6
                  addi         s2, t6, -701
                  add          t6, t1, s11
                  sra          a7, s11, s11
                  xor          s7, s4, t1
                  slli         s2, t5, 14
                  sll          a2, s6, t4
                  slt          t1, t0, s1
                  slli         a0, a7, 1
                  xor          zero, s0, gp
                  sltu         s10, t5, s5
                  addi         t2, a3, -1529
                  slti         t6, t4, -548
                  addi         s6, a1, 92
                  andi         ra, gp, -731
                  srai         s3, s8, 13
                  add          t1, s9, ra
                  sll          s3, s11, s8
                  xori         a4, a6, -1082
                  sra          s4, a0, t5
                  add          a0, t4, gp
                  ori          s8, s9, 970
                  slti         t0, t4, 1464
                  add          s6, s10, t2
                  and          s10, s2, zero
                  lui          zero, 136340
                  sub          gp, s7, gp
                  srli         tp, s10, 27
                  slt          s2, t3, a1
                  xor          s9, s4, sp
                  srai         a5, s5, 25
                  slli         a1, t0, 6
                  slti         s3, ra, 2038
                  sub          a5, a3, sp
                  nop
                  sra          s2, sp, s9
                  sltu         s5, a2, t0
                  nop
                  sll          t2, a4, a7
                  lui          zero, 320457
                  lui          a7, 280322
                  srl          s6, t0, a4
                  auipc        s7, 459118
                  sltu         s6, t1, ra
                  sltiu        s8, a2, -665
                  sub          t6, s2, s3
                  or           s9, s11, a4
                  sra          sp, a5, s9
                  slt          s11, s2, s10
                  xori         a1, s11, -769
                  sll          a1, t2, s1
                  andi         t6, a2, -691
                  sll          a7, tp, a5
                  andi         a3, gp, -481
                  xori         a6, a7, -1593
                  andi         sp, a2, 1791
                  slli         zero, a4, 14
                  auipc        s11, 10491
                  sub          tp, gp, gp
                  and          a4, a6, t6
                  andi         t1, s11, -127
                  andi         s4, a6, 1532
                  lui          sp, 636151
                  add          s6, a2, t6
                  sltiu        a3, t6, 1656
                  slt          zero, ra, a0
                  lui          s5, 321224
                  slt          s3, s6, s6
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t6, 0x0
                  li           s8, 0x80000000
                  li           s9, 0x0
                  li           s3, 0xffffffff
                  li           a6, 0xffffffff
                  li           t4, 0x1e63776f
                  li           t2, 0xffffffff
                  li           a2, 0x80000000
                  li           s7, 0xffffffff
                  add          s7, a2, s8
                  nop
                  sub          a6, a6, t6
                  lui          a2, 309326
                  addi         t4, a6, -1277
                  sub          a6, s9, a2
                  lui          t4, 278604
                  addi         a6, t6, -845
                  addi         s7, s8, -1037
                  addi         t6, s9, -1214
                  sub          a6, s7, t4
                  sub          s8, a2, s9
                  auipc        a2, 329656
                  nop
                  lui          s3, 885317
                  addi         t2, t2, 998
                  sub          s9, a6, s0
                  nop #end riscv_int_numeric_corner_stream_7
                  sub          t1, a1, s8
                  sra          t4, a4, tp
                  slti         s0, s9, -455
                  sltu         s10, sp, s2
                  slti         a7, a2, 1464
                  addi         tp, s4, 1832
                  nop
                  auipc        a0, 6781
                  add          sp, a5, t6
                  addi         s8, a5, 892
                  sltiu        s7, zero, 415
                  lui          s9, 509188
                  sltu         s6, s3, a6
                  lui          a5, 39588
                  srai         sp, gp, 29
                  add          a5, s6, a6
                  and          s3, s9, a2
                  nop
                  xor          s10, a1, t3
                  addi         s4, s1, 18
                  srli         a1, s10, 9
                  sub          t1, gp, t3
                  lui          s10, 229848
                  sltiu        zero, t0, -1827
                  andi         t2, s6, -1849
                  lui          a0, 540185
                  andi         a5, a7, -1168
                  and          a6, s3, s11
                  sra          s6, s6, s5
                  xor          t6, t6, s11
                  srl          t6, a3, a4
                  sltiu        s4, ra, -785
                  lui          a5, 84962
                  sll          a2, a5, s8
                  xori         ra, s1, -1247
                  sll          s4, a4, a4
                  nop
                  sll          s3, s8, s0
                  auipc        t6, 981762
                  srl          s10, s9, s6
                  andi         s4, t1, -2048
                  lui          zero, 648413
                  xori         zero, s0, -1006
                  andi         zero, t0, 1639
                  xori         a1, ra, 1472
                  slt          s6, s10, t6
                  ori          sp, tp, 124
                  sltu         a1, s11, zero
                  sra          s2, s3, t1
                  add          t1, sp, t0
                  xori         a0, t5, -630
                  auipc        a0, 335672
                  or           t4, s2, a3
                  nop
                  sra          s8, t6, a5
                  slli         a2, tp, 8
                  or           s6, a4, s4
                  xori         s10, t1, 129
                  auipc        a3, 110940
                  sll          a4, s7, a3
                  sra          gp, tp, t0
                  addi         a7, s2, -1440
                  and          s5, s3, s4
                  srl          t6, s0, s6
                  add          a5, s11, a5
                  auipc        a1, 648569
                  sltu         s6, s7, s8
                  addi         t4, s10, -325
                  andi         s9, s4, 1184
                  and          a0, a7, a5
                  srai         s6, a3, 7
                  or           a5, t4, t2
                  andi         s11, sp, -73
                  srli         tp, a3, 8
                  andi         tp, s6, 1815
                  slti         t0, a5, 21
                  sltiu        a2, a3, 1430
                  and          s11, s11, t1
                  nop
                  sra          a3, t3, s0
                  lui          s10, 594351
                  srai         a4, ra, 2
                  add          sp, s11, s7
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a3, 0x40397085
                  li           ra, 0xa081e01
                  li           s4, 0x80000000
                  li           a5, 0x31efc8c4
                  li           s11, 0x7528bdf
                  li           s7, 0xffffffff
                  li           a1, 0x0
                  li           s6, 0xffffffff
                  li           a0, 0xffffffff
                  lui          ra, 108436
                  auipc        s7, 247867
                  auipc        s6, 200521
                  add          a3, s7, a3
                  auipc        a1, 928727
                  addi         a5, a3, 1124
                  sub          ra, s6, s7
                  sub          t6, s7, a0
                  add          s6, s4, ra
                  sub          s6, a5, a5
                  add          a5, a1, ra
                  addi         a1, t6, -471
                  auipc        s11, 153466
                  addi         t6, a0, -739
                  lui          a3, 85373
                  lui          s7, 16246
                  nop
                  addi         s4, a0, -1910
                  add          s4, s7, a0
                  auipc        a5, 43022
                  lui          a5, 195076
                  nop #end riscv_int_numeric_corner_stream_18
                  nop
                  sll          a4, t3, zero
                  and          s10, t1, s3
                  andi         t4, ra, -1201
                  slt          s4, a6, tp
                  xori         t4, a1, 2031
                  auipc        t2, 279051
                  or           s7, t6, s9
                  srai         a7, ra, 27
                  or           s5, s5, s3
                  srai         t0, s8, 30
                  slli         a1, t4, 20
                  sltu         s0, s10, s7
                  sltiu        s5, s1, -1509
                  srai         t6, a7, 11
                  and          s6, a7, s11
                  add          t1, a3, ra
                  slti         ra, t1, 1569
                  slt          t6, t1, t4
                  srli         a0, a0, 9
                  sltu         gp, a0, s8
                  xori         t0, a2, 1638
                  srli         t0, t4, 7
                  sltu         a0, a5, t0
                  ori          a7, t3, -313
                  xor          ra, a3, t2
                  and          a0, s0, s2
                  or           s10, t5, s9
                  sll          s8, s4, tp
                  or           zero, s10, a7
                  addi         s8, s5, -1372
                  sra          sp, sp, s8
                  srli         s5, t6, 21
                  xor          a6, s10, sp
                  srl          t0, sp, s6
                  srai         s11, s1, 11
                  srai         a4, s8, 2
                  or           a1, s5, s4
                  or           t6, a4, a2
                  sltiu        s3, s3, -156
                  xori         tp, t4, -1170
                  or           t2, s3, ra
                  sll          s11, s0, s0
                  auipc        zero, 386734
                  sltu         t4, s3, sp
                  add          tp, t3, s8
                  or           a3, sp, zero
                  or           a6, a7, gp
                  sltiu        gp, a5, -1400
                  slt          s3, t2, s5
                  addi         ra, t3, -178
                  sra          s4, s5, t6
                  srl          a1, s0, t3
                  srai         ra, a4, 28
                  sltiu        t0, s9, 316
                  nop
                  sltiu        t6, s0, -721
                  srl          a1, s8, s0
                  lui          a2, 551623
                  srl          a5, s7, s6
                  srli         a2, s11, 30
                  srai         a6, gp, 14
                  andi         s8, t5, 1589
                  sll          s2, gp, s4
                  sra          s8, t3, a4
                  or           s8, t5, ra
                  srl          s7, s7, s6
                  ori          s10, s1, -1523
                  add          a5, a2, tp
                  ori          t4, t6, -584
                  xor          a7, a1, s2
                  sltu         s7, a0, t4
                  andi         a5, s8, 1376
                  ori          zero, s5, -584
                  srli         t2, ra, 4
                  lui          t0, 12913
                  ori          s10, s9, -1165
                  xori         s2, s11, 1381
                  sltu         t1, a4, t4
                  addi         a7, s4, 1927
                  slti         a0, s5, 29
                  and          tp, a2, a3
                  nop
                  sltu         s3, a4, a3
                  srl          t2, s0, t3
                  sra          s11, zero, sp
                  slt          s6, t2, ra
                  lui          s0, 715847
                  nop
                  xor          ra, a0, t0
                  or           sp, s4, s6
                  lui          s5, 876503
                  slli         s2, a2, 22
                  sltu         t6, a4, a4
                  sub          s4, ra, s3
                  sltiu        a3, t4, 575
                  slti         s3, t1, 1670
                  sltu         s3, s8, s11
                  nop
                  slti         s0, t2, -725
                  sltu         a2, s4, s3
                  lui          a3, 668261
                  srai         s6, s5, 31
                  slti         a3, s5, 1016
                  sll          gp, s4, s1
                  sltu         s6, t0, t1
                  srl          s10, zero, tp
                  slt          sp, ra, s10
                  auipc        s10, 236660
                  ori          a5, s6, -646
                  slli         a2, ra, 27
                  slt          s9, a4, a1
                  lui          gp, 842682
                  srl          t4, a1, t0
                  andi         t1, zero, 1834
                  srai         sp, a6, 19
                  and          s6, a5, s9
                  addi         t0, t3, 1235
                  sltiu        s0, t3, 1875
                  sll          s2, s11, t5
                  sub          sp, sp, t0
                  srl          s4, t1, s4
                  sltiu        ra, t0, -74
                  sll          s6, s9, s5
                  and          s5, a2, a4
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           sp, 0x80000000
                  li           s0, 0x47862a0d
                  li           a6, 0x80000000
                  li           t0, 0x0
                  li           s6, 0xffffffff
                  li           a0, 0xffffffff
                  li           s3, 0x0
                  li           tp, 0x39fc6bb1
                  li           s8, 0xffffffff
                  lui          gp, 990252
                  lui          s3, 172558
                  addi         s3, sp, -482
                  lui          sp, 743949
                  auipc        gp, 953000
                  nop
                  sub          a6, s6, tp
                  sub          tp, sp, t0
                  lui          s8, 69621
                  sub          s8, gp, a6
                  lui          s8, 928202
                  lui          sp, 3677
                  add          s0, s3, a0
                  lui          sp, 216170
                  addi         gp, gp, -1754
                  nop
                  auipc        t0, 261668
                  nop
                  lui          s8, 852620
                  add          s8, t0, s3
                  auipc        tp, 778346
                  lui          s3, 123099
                  auipc        t0, 235890
                  sub          gp, tp, a6
                  addi         a6, s8, 985 #end riscv_int_numeric_corner_stream_1
                  addi         t2, s2, -1960
                  xor          s9, s4, a4
                  srli         t4, s9, 7
                  xor          t6, a7, a4
                  srai         t1, a1, 19
                  xor          sp, a0, s7
                  nop
                  xor          a0, t5, t4
                  add          s3, a1, s0
                  sra          s6, a4, a0
                  auipc        a2, 144149
                  addi         t4, t1, 773
                  slt          a0, a2, a1
                  addi         t2, s0, -37
                  slt          t0, t0, zero
                  ori          a6, s11, -152
                  srli         s4, tp, 23
                  andi         s10, a4, -1607
                  slti         s8, s8, -578
                  slt          s0, s0, sp
                  ori          s4, t0, 88
                  sltiu        a3, s2, 1453
                  andi         zero, a0, -822
                  addi         a2, t2, -668
                  slt          tp, t1, t4
                  slti         s6, t1, 743
                  sra          tp, s0, s6
                  sra          s8, a4, t2
                  ori          s0, t4, 521
                  andi         s3, s9, -1970
                  slti         s6, s11, -1526
                  xor          s10, t2, s5
                  srai         a3, s11, 6
                  slti         t1, s4, 312
                  andi         a2, a3, 1618
                  lui          sp, 331874
                  addi         s11, a6, 39
                  srai         s6, t0, 9
                  add          a1, t3, s5
                  sub          t6, t6, s1
                  ori          s11, s10, 1680
                  slti         t0, s1, 1511
                  sll          gp, a5, s8
                  xor          s10, t2, zero
                  nop
                  srli         ra, a2, 9
                  srai         a3, t5, 31
                  slli         s2, s9, 12
                  lui          a6, 292011
                  or           s0, t3, s10
                  sltiu        a7, gp, 525
                  nop
                  srl          ra, ra, s1
                  andi         zero, tp, -1671
                  auipc        ra, 1041050
                  xori         t6, s0, -355
                  or           s2, t3, t2
                  sub          tp, zero, a4
                  andi         s11, s2, 1166
                  srai         s10, s11, 10
                  sra          s11, s9, s11
                  addi         t0, s8, 1359
                  sltiu        zero, s3, 736
                  add          a4, a4, s4
                  auipc        s6, 869807
                  sltu         s5, sp, s2
                  or           t6, tp, t0
                  add          s11, ra, a2
                  sltiu        a1, s9, 131
                  slti         tp, sp, -1903
                  slli         t6, a3, 29
                  slli         s7, a2, 26
                  sltu         ra, t4, a1
                  xor          s3, s9, s5
                  ori          zero, s4, -594
                  slli         a2, s4, 15
                  xor          s4, t4, s7
                  slt          s8, tp, tp
                  slt          a5, sp, ra
                  sltu         sp, a7, t4
                  sub          a0, gp, gp
                  sltu         s7, s10, sp
                  sltu         tp, t4, s0
                  sltiu        a1, s6, -364
                  andi         a5, tp, 540
                  auipc        a2, 56767
                  ori          s9, s3, 1502
                  auipc        s2, 941042
                  and          s9, a0, s2
                  slt          s4, s4, s1
                  xori         ra, a5, 733
                  auipc        a5, 699579
                  sll          s8, zero, s11
                  xor          s5, s0, s3
                  slli         s7, a3, 26
                  and          s2, t5, s11
                  sub          s6, t6, t4
                  addi         sp, s9, -784
                  sltiu        zero, ra, -1879
                  ori          t1, s3, 990
                  xori         a5, s8, 683
                  srai         sp, t0, 23
                  auipc        a3, 115474
                  auipc        a1, 647115
                  ori          zero, a1, -1687
                  or           sp, a5, t3
                  sll          s7, s6, s11
                  add          a5, t4, t6
                  ori          s0, s2, -491
                  slt          t1, s11, s6
                  or           s9, sp, ra
                  andi         gp, a5, 11
                  andi         s7, s4, -534
                  addi         s3, zero, 1365
                  nop
                  and          a4, a4, a3
                  sra          s3, s8, s7
                  lui          a5, 720213
                  sltu         a5, zero, a3
                  sub          a4, s3, t4
                  xori         s2, s2, 1137
                  srli         s9, s0, 6
                  andi         a7, s6, -1608
                  xor          s6, t3, s9
                  slt          a3, a2, s10
                  add          s11, t5, s5
                  srli         gp, s0, 28
                  sltiu        sp, t1, 763
                  sltu         a0, t2, t5
                  srl          a3, t1, s7
                  slli         ra, a6, 5
                  or           t1, t3, t2
                  nop
                  srai         sp, tp, 30
                  nop
                  sub          sp, t5, zero
                  ori          s2, s6, 1348
                  srli         zero, t0, 15
                  lui          ra, 526807
                  sll          s9, s5, t2
                  sra          a3, s3, a0
                  slti         s9, s8, 1755
                  slt          t6, a6, a1
                  srai         s4, a7, 13
                  slli         s9, a5, 20
                  sltiu        ra, s11, -930
                  sltu         s5, s4, a6
                  addi         s5, s8, 473
                  addi         ra, s11, -616
                  srl          s2, t4, t1
                  andi         s6, t1, -1510
                  add          a4, a6, t5
                  srl          s9, t4, a3
                  and          s8, t3, a2
                  nop
                  lui          a3, 997783
                  sub          a7, s10, a2
                  addi         s4, t5, 559
                  sra          a6, s6, zero
                  sll          s7, t6, s1
                  sll          t1, a1, tp
                  sra          a7, tp, a6
                  sub          ra, gp, a3
                  xor          t2, t0, a0
                  srl          t2, sp, s4
                  lui          s6, 43007
                  addi         s11, s6, -1962
                  ori          s9, sp, 1003
                  sub          a6, a5, gp
                  and          tp, t4, s2
                  slti         s3, a5, 624
                  slti         s3, t6, 1596
                  slt          sp, a4, s4
                  srli         a7, s4, 23
                  lui          a2, 403983
                  sltiu        zero, ra, 1352
                  or           a4, a3, s11
                  srai         s7, s2, 11
                  nop
                  sltiu        t4, s7, -1464
                  slli         s2, s11, 3
                  xori         a7, sp, -750
                  xori         gp, ra, 1014
                  slli         t0, s7, 16
                  or           s6, s0, a0
                  srli         s8, s2, 18
                  sra          t4, s10, t4
                  addi         gp, a7, 449
                  sll          zero, a7, s10
                  srli         s7, tp, 26
                  nop
                  slti         t0, s1, -1296
                  sll          s10, s7, t5
                  sltu         a4, s1, s5
                  xor          s9, a0, t0
                  srli         a0, s0, 6
                  sltu         s11, t3, t6
                  srai         t4, t1, 16
                  xor          s9, a5, a7
                  and          s9, s1, t2
                  auipc        s3, 334657
                  xori         s11, s8, -1539
                  sltiu        s7, ra, 66
                  slt          s4, s10, s2
                  slt          s8, t6, s2
                  sra          a3, s3, a1
                  sra          a3, a2, s7
                  srl          zero, s9, t4
                  sll          a5, a7, ra
                  srai         s10, s3, 24
                  srai         a1, s7, 29
                  auipc        ra, 418025
                  sltiu        a6, s3, -1833
                  lui          sp, 130063
                  slli         a1, s3, 15
                  andi         t4, t4, 254
                  srl          t0, a2, s1
                  or           s5, t0, t5
                  sra          t6, a0, tp
                  sltiu        s0, s0, -777
                  nop
                  addi         s8, t2, 1480
                  add          s0, t5, t2
                  ori          a4, s4, -800
                  srai         s11, t0, 24
                  slt          gp, ra, s2
                  sltiu        s6, zero, -1346
                  srli         t6, s4, 21
                  lui          s8, 935584
                  and          a7, s11, gp
                  addi         s9, s8, 568
                  srli         a0, s3, 0
                  ori          s3, t3, 1054
                  sra          sp, a0, s4
                  srli         t0, a3, 8
                  srl          ra, zero, t3
                  andi         a4, s1, 1202
                  sltu         s5, zero, a5
                  and          s9, s9, s2
                  xor          gp, gp, s9
                  slli         a1, s9, 3
                  sltu         a5, a6, s9
                  add          s11, s6, t6
                  slli         t6, a4, 18
                  auipc        s2, 644145
                  andi         s8, a0, 1661
                  ori          a1, a4, 375
                  xor          zero, t6, s5
                  xori         t6, s11, 297
                  slli         s3, s0, 18
                  and          s8, s8, s9
                  add          s11, a7, s8
                  xori         s8, s3, -322
                  lui          a3, 818876
                  sll          s11, s11, s9
                  sra          a2, t6, s11
                  andi         a2, ra, -588
                  ori          s2, s7, 1884
                  lui          s10, 885635
                  slt          a0, s4, zero
                  slli         a4, sp, 18
                  nop
                  addi         gp, a1, -855
                  slti         s9, s7, -1155
                  nop
                  addi         s6, t3, -1173
                  srli         a0, a2, 5
                  sub          a7, a7, tp
                  addi         s10, t6, 579
                  or           s5, t4, s2
                  auipc        a2, 160094
                  srl          a7, t3, t0
                  sltu         s8, s8, s9
                  add          a5, t5, s4
                  sltu         a3, s11, ra
                  sub          s3, t1, s10
                  slli         s3, s1, 7
                  sll          s0, t1, sp
                  srai         a5, ra, 18
                  sltiu        s10, s0, -569
                  srl          s0, t3, a3
                  lui          gp, 169168
                  srli         s10, s3, 28
                  slli         zero, a3, 5
                  nop
                  srli         s11, tp, 19
                  andi         a0, s8, -220
                  srl          a5, a2, a0
                  sra          s4, s1, gp
                  andi         s9, a0, -1737
                  sra          s8, s1, a4
                  addi         a4, s1, 217
                  srli         tp, s6, 30
                  srli         a6, t3, 14
                  srai         a5, s11, 6
                  addi         t0, a2, 1504
                  auipc        t0, 441837
                  sltiu        zero, s9, -1765
                  xori         t6, s6, -502
                  auipc        a3, 5718
                  srl          a6, t2, tp
                  or           s7, tp, t6
                  sra          s9, t5, a1
                  andi         t2, a4, 1223
                  slti         a3, t5, -1113
                  xori         s11, a2, 1910
                  andi         s3, s0, 1347
                  and          a2, s9, a0
                  slt          t4, a2, s9
                  srai         gp, a4, 12
                  sll          s0, s5, t3
                  slti         a2, a6, 1944
                  sub          t6, s1, sp
                  addi         s7, s7, -373
                  sltu         sp, gp, t0
                  sltu         t1, a3, tp
                  and          s4, t5, t4
                  xor          a5, a2, s10
                  srli         t1, s7, 31
                  sll          s3, s1, s1
                  addi         a0, s0, 840
                  or           sp, a2, a2
                  lui          s5, 685802
                  auipc        ra, 868993
                  srl          s2, s3, s11
                  and          s3, a4, t0
                  slli         gp, t3, 0
                  sub          a0, s0, s7
                  slti         a6, sp, 1454
                  ori          s2, t2, -305
                  or           a7, ra, a0
                  sltu         t4, ra, t2
                  addi         ra, a2, -1481
                  and          a2, a1, s2
                  sub          s7, s2, a4
                  xori         tp, a4, 548
                  and          sp, s2, a4
                  auipc        a2, 19141
                  sub          zero, s3, tp
                  addi         a4, a3, 1230
                  slti         s6, t4, -1047
                  slti         a3, s7, -1902
                  sub          gp, tp, sp
                  srai         a2, s3, 8
                  slli         s4, t4, 17
                  sltiu        zero, a2, -1042
                  auipc        t1, 686349
                  sltiu        s10, a4, -18
                  srl          s6, tp, s10
                  slli         a2, s4, 11
                  slti         t0, a3, -989
                  auipc        t4, 646932
                  sll          s11, s1, s6
                  slli         a2, a3, 27
                  xori         ra, s6, -1040
                  slt          s4, a4, a4
                  xori         sp, s5, 649
                  ori          s5, s5, -875
                  add          a1, t0, t0
                  srli         a0, s5, 8
                  sltu         s8, a3, s7
                  addi         s9, s10, -1697
                  srai         a1, s1, 3
                  sll          s4, s7, a3
                  xori         t0, s11, -1899
                  srl          s11, t0, s9
                  add          a2, gp, s7
                  sub          t4, t5, s1
                  auipc        a7, 536265
                  andi         s10, a3, -40
                  srl          s8, t5, t6
                  andi         a3, t6, -1339
                  ori          gp, s10, 545
                  srl          s10, s0, s4
                  addi         zero, s11, -154
                  lui          gp, 718318
                  srai         s9, a6, 7
                  auipc        ra, 163861
                  nop
                  srl          t1, t2, ra
                  and          s0, s6, a0
                  sltu         a1, t1, t5
                  sll          s7, sp, tp
                  srl          s10, s6, t2
                  auipc        t1, 960902
                  slt          s0, s11, t6
                  sltiu        a2, gp, 654
                  sltu         a5, t2, s4
                  andi         s9, tp, 683
                  srl          a0, s10, s5
                  ori          a6, a2, -289
                  lui          s2, 170915
                  sll          t2, a7, t1
                  sltu         s7, t2, s4
                  addi         a2, t6, -2028
                  nop
                  sltiu        gp, s7, -1458
                  nop
                  sub          s4, a7, sp
                  nop
                  ori          s11, s4, -230
                  sra          t0, s1, sp
                  lui          ra, 281753
                  sll          a7, a4, s9
                  slti         t2, a5, 1354
                  and          s3, a4, t3
                  slli         a1, t3, 18
                  ori          s5, gp, -1848
                  sltu         a1, a5, t5
                  srli         a1, s5, 31
                  andi         a1, s0, -1195
                  srl          ra, t0, a4
                  sltu         s8, zero, t3
                  srli         s8, a4, 30
                  auipc        t1, 358078
                  xor          a0, s0, a2
                  srl          zero, ra, a7
                  sra          a4, gp, t4
                  sltiu        s5, ra, 797
                  andi         gp, t1, 398
                  xori         zero, gp, 413
                  lui          a3, 57134
                  srai         s7, gp, 28
                  srl          t6, t1, s6
                  sltu         s11, t5, a6
                  slti         a3, t4, 1458
                  slt          t6, a4, s4
                  srai         a1, t5, 31
                  ori          s5, t6, 1664
                  slti         a7, t3, -1865
                  or           a7, s6, a7
                  andi         a4, sp, 963
                  sra          sp, s4, a5
                  sub          a0, s11, a2
                  add          a3, s8, gp
                  sltiu        a0, s7, 1860
                  add          s2, t6, s6
                  lui          a2, 465746
                  xor          t4, s5, s1
                  srl          tp, t6, a6
                  sltiu        t4, gp, 417
                  srli         t2, t4, 14
                  ori          a1, a4, -540
                  ori          t6, s0, 1163
                  sll          s9, a0, s5
                  sltu         s3, s3, s9
                  or           tp, zero, s3
                  lui          s11, 862166
                  srai         zero, s8, 27
                  addi         s4, s1, -1519
                  and          t2, a5, s8
                  slti         t1, t1, -1780
                  slt          a7, t1, t2
                  sub          a6, s4, s9
                  andi         s0, a4, -1087
                  andi         s10, t5, 786
                  slt          a1, s5, zero
                  or           a6, a1, tp
                  add          t4, a7, zero
                  and          s4, s6, t0
                  sub          zero, t3, gp
                  ori          a0, s8, 1979
                  sltu         s5, gp, s8
                  and          tp, sp, s11
                  add          a3, t2, s2
                  slti         s3, ra, 1659
                  slli         s5, s8, 2
                  slt          a1, s3, a6
                  srl          s2, sp, ra
                  addi         a6, s1, -581
                  srl          s10, t4, sp
                  xor          s3, s4, a2
                  xor          gp, a2, s7
                  slt          a3, t2, a2
                  srai         a7, a2, 11
                  lui          s8, 926055
                  nop
                  nop
                  add          ra, t3, s9
                  lui          a1, 362856
                  slti         t0, s6, -936
                  or           t6, s10, sp
                  or           zero, s7, zero
                  srli         s10, a0, 20
                  srai         s3, ra, 9
                  nop
                  ori          t6, a7, -748
                  addi         t1, t1, 163
                  addi         a0, t5, 2028
                  srai         t2, a7, 18
                  ori          t2, s9, -1318
                  sltiu        s0, t4, 886
                  add          zero, s6, t0
                  srli         a7, t4, 28
                  xori         s10, sp, 1702
                  sub          gp, t2, s1
                  xor          t1, t2, t1
                  xor          ra, t5, t6
                  slti         s10, s2, 1775
                  ori          s11, t6, -573
                  sltiu        s0, t6, 117
                  or           s6, a6, sp
                  lui          t0, 356243
                  srli         gp, t6, 17
                  slt          gp, t5, s10
                  nop
                  sll          s3, s7, s9
                  sltiu        a7, t1, -704
                  sltu         ra, s8, s4
                  sub          a6, a5, s9
                  and          t0, a3, s6
                  ori          t2, a7, 1658
                  slt          s8, s8, a4
                  slti         s6, t2, -725
                  auipc        tp, 15007
                  slt          s11, t0, ra
                  slli         ra, s9, 19
                  or           s3, a6, s11
                  slli         a0, s10, 28
                  xori         a1, t6, 273
                  slti         s9, s8, -1417
                  andi         s11, s2, 695
                  and          a3, a4, t3
                  slti         s11, t5, -1285
                  and          s11, s10, gp
                  slti         a1, tp, -1800
                  lui          s9, 721344
                  and          s9, t2, a3
                  sub          s8, s2, tp
                  ori          a4, s4, -1216
                  srai         s9, t5, 14
                  sltu         a5, a7, a2
                  addi         a7, a1, -1086
                  add          zero, a5, ra
                  lui          s10, 270005
                  sra          s3, t2, gp
                  srl          a7, t6, sp
                  sll          s0, s5, t3
                  ori          s2, t3, 412
                  sll          tp, t1, s3
                  ori          tp, s3, -1732
                  andi         a5, s11, 990
                  sltu         s10, a5, t6
                  or           t2, s10, a4
                  sll          t6, t3, s8
                  slt          a7, s1, a7
                  srli         a6, s8, 17
                  or           s6, t5, t3
                  addi         t0, a6, 1383
                  sub          t1, s5, t6
                  add          s5, t1, t0
                  addi         t4, t1, 1994
                  nop
                  lui          a2, 60256
                  add          s8, s5, a7
                  srai         t1, s7, 18
                  ori          a1, s8, -1018
                  srli         s7, s9, 30
                  sltu         t2, s7, a7
                  sub          tp, a4, a3
                  srai         s10, t5, 1
                  slti         ra, s8, -1826
                  auipc        t6, 934876
                  sll          s11, t6, t6
                  slt          t6, t0, zero
                  lui          s9, 956061
                  slt          s9, a1, zero
                  srai         gp, tp, 29
                  slt          s10, a5, t1
                  srli         a7, sp, 2
                  srl          sp, a3, s10
                  sub          a2, t3, t4
                  sltu         s0, gp, s10
                  add          a2, s0, s4
                  srai         sp, t3, 25
                  sltiu        s7, s9, -1748
                  and          s10, a3, zero
                  slt          s7, s4, s3
                  srli         a0, a0, 23
                  sll          s6, t0, s1
                  add          zero, a3, a6
                  add          s8, t3, a5
                  or           a3, ra, s8
                  ori          a0, t2, 1134
                  slt          s10, a1, a7
                  xor          s0, s9, zero
                  auipc        sp, 844912
                  andi         s10, s4, 1784
                  srai         a3, s10, 4
                  andi         sp, a7, 1018
                  lui          a0, 279163
                  nop
                  xori         a6, s3, 1832
                  srli         a0, s4, 21
                  or           a1, s4, t4
                  slli         tp, s9, 14
                  sll          s2, s4, s5
                  auipc        a1, 114763
                  addi         s11, s10, -668
                  andi         ra, s8, 1675
                  slt          a5, t2, s6
                  sltu         s11, s9, t3
                  andi         s8, s1, -1456
                  sub          s0, a0, s5
                  ori          ra, s2, 2019
                  slt          s10, s4, t0
                  xori         tp, s1, -130
                  sra          t6, a6, t3
                  srl          a1, a6, t6
                  srl          a0, tp, a5
                  sltu         t6, s11, s0
                  ori          s4, t6, -271
                  slt          s6, s6, t0
                  sub          zero, s9, t5
                  auipc        a6, 413124
                  ori          s8, a1, -112
                  nop
                  srl          t1, s4, zero
                  srl          sp, a5, t2
                  xori         gp, a2, -723
                  srl          a5, t4, ra
                  andi         t6, t4, 52
                  auipc        s11, 583437
                  add          sp, a5, a7
                  lui          gp, 1028233
                  andi         ra, a7, 351
                  srli         a3, a4, 31
                  sub          t6, s10, t3
                  or           s4, t1, t3
                  and          tp, t2, a4
                  srai         s6, t5, 21
                  lui          a0, 865548
                  addi         s9, a6, 1888
                  srl          t1, a7, s2
                  auipc        a4, 934568
                  srl          tp, s7, tp
                  sltu         s4, t6, a0
                  ori          s0, s9, -816
                  srli         tp, s1, 1
                  srl          a0, s3, a4
                  nop
                  ori          t2, a4, -561
                  xori         a4, a2, 1595
                  srli         s0, t1, 12
                  slti         s5, a7, -218
                  sra          s11, a2, t4
                  lui          a4, 784338
                  slti         tp, s5, -552
                  ori          a1, t6, -163
                  andi         s7, s6, 292
                  slt          s2, ra, t4
                  sra          s4, a0, s1
                  addi         gp, gp, -402
                  srai         gp, s0, 20
                  srli         s3, t1, 16
                  ori          a6, sp, 258
                  auipc        s9, 57656
                  ori          s2, t0, 654
                  slt          sp, s5, t5
                  nop
                  srli         t4, a0, 27
                  slt          zero, a3, zero
                  sra          s4, s5, gp
                  or           s9, s3, sp
                  and          sp, ra, sp
                  xor          tp, s1, s8
                  slli         s10, t0, 24
                  lui          a6, 299443
                  sra          t2, t6, ra
                  sra          a2, ra, s10
                  srl          t4, tp, a7
                  srli         s5, a7, 29
                  sltiu        s2, s9, 571
                  xori         sp, gp, 369
                  and          t1, s11, a3
                  auipc        s0, 391797
                  srli         s8, tp, 28
                  srl          ra, a3, gp
                  or           sp, a2, ra
                  srli         ra, s1, 5
                  sra          s5, a2, t1
                  srl          ra, a7, zero
                  add          s3, s1, a5
                  xor          t0, gp, a4
                  srai         a3, a0, 23
                  slti         s8, a0, -2047
                  xori         tp, s11, -1432
                  and          t2, ra, s6
                  nop
                  sub          s4, a3, s2
                  or           a6, gp, gp
                  and          s9, s11, a1
                  srai         s11, a2, 7
                  srli         s5, s9, 13
                  srli         a6, sp, 23
                  or           ra, a2, s0
                  nop
                  sltiu        s10, s5, 632
                  sub          tp, s5, t6
                  ori          s8, gp, -598
                  sra          a1, t6, a3
                  sltiu        s8, a1, 585
                  andi         s6, s1, -1164
                  srl          s3, s5, s0
                  ori          a6, a4, -1142
                  and          s0, ra, ra
                  sub          sp, tp, s6
                  srli         sp, t6, 12
                  xori         t1, s1, 130
                  sra          gp, s2, s9
                  add          tp, a2, t0
                  slti         s8, tp, 1679
                  ori          tp, a0, -1004
                  addi         s5, t6, 167
                  slt          a7, s4, s11
                  srai         sp, t6, 26
                  sll          s8, s1, tp
                  add          t1, t0, gp
                  xor          t6, a2, a7
                  sll          gp, a0, a3
                  and          sp, a2, t5
                  sll          s9, t5, s9
                  addi         t1, s10, 28
                  sltiu        s8, s2, -1408
                  slli         gp, t3, 16
                  slt          s5, t2, t1
                  auipc        a3, 478906
                  slli         s11, t6, 9
                  slli         t6, t1, 4
                  slli         s8, a7, 19
                  sll          a1, t2, t4
                  nop
                  srli         sp, a4, 24
                  xor          t1, s0, a4
                  andi         s9, a1, -1831
                  lui          s2, 64744
                  or           t2, a5, a4
                  srai         t4, a2, 18
                  srai         sp, s3, 16
                  sltiu        s7, a6, 127
                  sra          a3, s0, s9
                  sltiu        s0, s9, -89
                  sub          gp, sp, t3
                  ori          zero, gp, 1806
                  xor          a3, t6, ra
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           t6, 0x0
                  li           a5, 0xffffffff
                  li           s5, 0x80000000
                  li           sp, 0x0
                  li           a6, 0x833596e5
                  li           a1, 0x80000000
                  li           a2, 0xffffffff
                  li           s7, 0x0
                  li           t0, 0x0
                  lui          s7, 140342
                  add          a6, a6, sp
                  auipc        a2, 842444
                  nop
                  add          a2, s11, s11
                  add          a6, s5, s11
                  add          t0, a5, a2
                  auipc        a2, 757028
                  addi         a2, s11, -20
                  lui          s11, 111243
                  nop
                  auipc        sp, 151717
                  addi         s11, a1, -647
                  auipc        a1, 697386
                  lui          s11, 235927 #end riscv_int_numeric_corner_stream_13
                  srl          s11, t4, a7
                  nop
                  nop
                  or           ra, s0, s1
                  nop
                  andi         s6, s3, 195
                  xori         zero, a6, -1627
                  lui          s0, 671448
                  lui          s7, 169591
                  lui          t2, 639949
                  srl          s5, zero, tp
                  add          a5, t0, t6
                  lui          s10, 716297
                  nop
                  auipc        t1, 829126
                  lui          s8, 456260
                  srl          t1, s10, s11
                  srli         s2, s5, 6
                  auipc        s3, 296082
                  slt          t0, t6, zero
                  lui          s5, 726497
                  lui          s4, 27404
                  xori         s0, a5, 1683
                  srli         t6, s2, 10
                  andi         a1, t4, -1214
                  srai         s5, s9, 17
                  slli         a5, s0, 23
                  nop
                  sll          tp, a2, s1
                  srai         a1, t0, 2
                  sll          s9, s2, a0
                  srli         s9, tp, 12
                  ori          t1, a5, 340
                  and          s10, a3, a1
                  lui          s8, 979486
                  sltu         sp, s0, t2
                  slli         a0, t2, 0
                  sra          t2, s7, t6
                  add          zero, a6, t5
                  srli         s11, ra, 25
                  and          ra, ra, t3
                  srai         zero, s5, 13
                  slti         t2, t4, 715
                  sll          s10, a1, s6
                  xori         s3, s0, -1746
                  andi         zero, gp, 759
                  srl          s3, t6, tp
                  lui          s5, 266501
                  ori          s11, t5, 306
                  add          s3, a7, gp
                  srai         s9, t2, 9
                  xor          s0, t6, a0
                  or           a3, t3, s7
                  slt          s7, a4, a0
                  addi         a0, tp, 934
                  slli         sp, a2, 27
                  slli         t2, t5, 0
                  andi         s7, s8, 1623
                  lui          s7, 31179
                  andi         gp, t5, -1412
                  srl          s0, t0, t6
                  nop
                  slli         t0, t2, 3
                  addi         t1, s0, 873
                  srai         s0, ra, 5
                  sll          s2, s6, s2
                  sltu         t6, ra, a0
                  sra          zero, ra, s4
                  slti         a0, a0, -407
                  xori         s11, t6, 1814
                  addi         a7, a1, 1612
                  xori         s0, t0, -1811
                  sub          t2, a6, t5
                  and          s10, zero, s0
                  slli         s6, ra, 17
                  srai         zero, s6, 0
                  sll          a1, a3, s6
                  sltiu        a3, t3, 1251
                  and          zero, s7, t5
                  addi         s4, a0, 389
                  srli         t1, t4, 29
                  slli         tp, a2, 7
                  xor          s10, s7, gp
                  andi         s5, s5, -1982
                  srli         sp, s6, 30
                  nop
                  sll          s2, t0, t3
                  xori         t1, s10, 1015
                  nop
                  srl          ra, gp, gp
                  sltiu        tp, tp, -449
                  sltiu        a6, a5, 1477
                  auipc        a4, 412368
                  xor          s10, a6, s4
                  srai         a1, s9, 29
                  nop
                  srl          sp, s4, s5
                  srli         s11, t6, 28
                  auipc        s3, 434661
                  slti         a6, s3, 1365
                  lui          ra, 655603
                  srli         s5, s5, 19
                  or           s8, t3, a1
                  xor          s6, s7, s2
                  slti         t0, s8, -1044
                  ori          t4, t3, 1155
                  and          gp, t5, a6
                  slti         a3, a1, -230
                  auipc        a5, 773064
                  srl          gp, a6, s2
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s3, 0xffffffff
                  li           t0, 0x51d88fa4
                  li           ra, 0x80000000
                  li           s4, 0x0
                  li           s9, 0xbfb0fce7
                  li           s11, 0xffffffff
                  li           t1, 0xf7adcaf4
                  li           s8, 0x0
                  li           s10, 0x9a24394d
                  auipc        s0, 416640
                  sub          s3, t0, s4
                  auipc        s4, 686980
                  auipc        s8, 1041454
                  sub          s11, s9, s8
                  lui          t0, 204105
                  auipc        s11, 159074
                  sub          t1, s3, t0
                  add          s4, s9, ra
                  add          s4, s10, s3
                  auipc        s3, 687552
                  sub          s3, s0, s4
                  addi         s11, s8, -1030
                  auipc        s11, 158428
                  addi         ra, s0, -187
                  lui          s3, 1015680
                  addi         s8, s0, 1189
                  sub          ra, s0, t1
                  auipc        s4, 360303
                  add          ra, s3, s8
                  addi         s8, s10, -1268
                  sub          s8, s8, s8
                  lui          s8, 589057
                  nop
                  lui          s11, 1017265
                  nop
                  lui          t0, 39201 #end riscv_int_numeric_corner_stream_8
                  ori          s7, s11, -924
                  sub          t4, a1, t6
                  sltu         s3, s2, t3
                  xori         s11, tp, -798
                  xor          s3, tp, a2
                  add          a4, s3, s6
                  srl          s10, s4, t6
                  xor          s11, s3, s2
                  addi         t1, a7, 1735
                  xori         t1, s10, -669
                  srli         t4, a2, 23
                  sub          a5, s2, s4
                  srai         a6, a7, 30
                  sltu         a6, t5, s11
                  add          t6, a6, s5
                  slli         a3, a2, 28
                  lui          gp, 153589
                  sll          a7, s0, a1
                  ori          a3, t2, -1602
                  srl          s5, s11, t0
                  slt          a7, ra, s8
                  slti         a3, gp, 1469
                  slt          a7, zero, zero
                  sll          s6, a1, zero
                  slt          zero, t5, t2
                  and          t1, s5, s9
                  slli         t1, a5, 31
                  srli         s8, s9, 27
                  slli         zero, tp, 29
                  slti         t0, t4, -1397
                  sll          a2, a1, s10
                  li           a0, 0x2698899e #start riscv_int_numeric_corner_stream_4
                  li           a3, 0x0
                  li           s7, 0x0
                  li           s4, 0xffffffff
                  li           t0, 0x0
                  li           s11, 0x0
                  li           a7, 0x80000000
                  li           s3, 0x0
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  lui          a7, 119877
                  sub          s11, a0, s4
                  auipc        t0, 485531
                  lui          s3, 879159
                  auipc        a3, 722760
                  nop
                  lui          a7, 166820
                  sub          s4, t0, a7
                  nop
                  sub          t0, t0, a7
                  sub          a7, s3, t0
                  addi         a4, t0, -1939
                  add          s3, s4, t0
                  nop
                  lui          t0, 28563 #end riscv_int_numeric_corner_stream_4
                  sltiu        t1, a3, -1996
                  sll          tp, gp, t6
                  or           tp, s2, s10
                  add          tp, t3, s1
                  andi         s6, a4, 1127
                  sub          zero, s6, a7
                  add          s6, t4, a5
                  sltu         s11, a1, s8
                  sltiu        t1, a6, 1980
                  xor          s9, s9, s10
                  andi         a0, s0, 1265
                  add          s2, t0, s6
                  srai         s8, s6, 29
                  xori         s6, a5, -1447
                  addi         t6, t5, 905
                  sra          a7, a1, s6
                  sltiu        a2, a6, -1565
                  slti         s5, a1, -1853
                  add          a2, s11, t1
                  sll          s5, t1, s7
                  slli         t6, s8, 31
                  sll          t6, s3, gp
                  xor          a3, sp, t0
                  sub          t0, s2, s8
                  sra          t6, s8, t4
                  sll          s4, t0, s7
                  xor          t2, t2, gp
                  auipc        s0, 281037
                  srli         a1, t3, 20
                  sra          s9, sp, tp
                  sll          t1, a2, s8
                  xor          t1, a5, a0
                  and          tp, a3, s4
                  xori         s6, ra, -568
                  and          s3, t1, gp
                  nop
                  andi         tp, s3, -1068
                  addi         gp, a4, 1942
                  lui          s7, 316690
                  andi         s11, t2, -548
                  slli         s11, a1, 28
                  nop
                  srli         s8, t1, 12
                  and          a6, a4, a5
                  sra          s2, a2, sp
                  and          tp, s6, t1
                  ori          t2, t3, -1622
                  addi         t1, a6, -187
                  nop
                  slti         gp, a6, -4
                  sra          t6, t2, s5
                  or           t4, t5, a7
                  sub          a2, s10, s3
                  sub          a7, a5, sp
                  sltu         a7, s7, a0
                  andi         gp, s5, 993
                  srai         a6, a6, 25
                  and          a5, s4, s1
                  andi         a1, t2, -408
                  and          a0, t4, s3
                  slti         t4, s10, 219
                  xori         tp, t3, -613
                  xor          s7, zero, a2
                  or           a0, gp, a3
                  xor          a3, s4, t2
                  srl          s11, a1, s11
                  sltiu        s9, s4, -1687
                  add          s6, a2, a6
                  add          a1, a6, t4
                  lui          t6, 643428
                  andi         s8, s2, 62
                  slti         s6, a5, 200
                  sltu         s11, a3, ra
                  xori         t4, a1, 1606
                  sll          s3, a0, s7
                  slti         t6, s0, -676
                  lui          s3, 446424
                  xor          s9, t1, s3
                  nop
                  slli         s0, t6, 15
                  srli         s9, t5, 28
                  or           s7, tp, a0
                  sltu         a5, s1, s11
                  lui          zero, 795917
                  or           s0, s4, a5
                  sltiu        zero, tp, 990
                  and          s8, t4, a2
                  slli         a4, a2, 25
                  lui          s7, 432839
                  andi         a5, s3, -867
                  ori          ra, a0, -2025
                  auipc        t6, 776590
                  sltu         s5, gp, sp
                  slli         s11, s1, 2
                  sltu         s3, zero, a1
                  ori          t6, gp, 1926
                  andi         s7, a1, 1339
                  sub          s11, a6, t4
                  nop
                  andi         ra, s7, -117
                  slt          s5, s4, t1
                  sll          t4, a1, t6
                  xori         s5, t3, 674
                  sltiu        s9, a0, 147
                  sll          t1, s10, t4
                  slti         zero, s3, -558
                  sll          a3, s8, s2
                  sra          s3, s7, a7
                  ori          t4, s10, -1060
                  sltiu        a5, t4, -1724
                  sltu         t0, s3, a6
                  addi         gp, s2, 1292
                  andi         t4, gp, -1958
                  add          s4, s7, a6
                  xor          tp, s6, t3
                  add          tp, a5, tp
                  srli         t2, s9, 19
                  and          s2, t3, t4
                  or           a5, s10, a7
                  nop
                  add          s4, a2, t0
                  sra          zero, t6, zero
                  srl          zero, s6, t3
                  sltiu        s8, a0, 625
                  add          a6, ra, a0
                  andi         s2, s10, 833
                  andi         sp, s1, 1797
                  srai         a6, s4, 11
                  xor          s0, t6, a3
                  auipc        s9, 726073
                  srai         a7, s10, 23
                  addi         a7, t1, 891
                  add          ra, ra, t5
                  add          a6, t4, zero
                  nop
                  sltiu        s3, t6, 923
                  nop
                  slt          t1, s11, s8
                  srl          s11, ra, sp
                  slt          s2, ra, ra
                  xor          ra, s11, gp
                  slli         s11, a1, 22
                  srl          s9, t6, ra
                  or           s7, t2, s0
                  xor          s0, t5, t5
                  ori          s6, sp, -673
                  sll          t4, s0, s6
                  xor          s11, s1, a2
                  and          t0, sp, a3
                  ori          gp, s0, -903
                  xor          t0, s7, a7
                  auipc        gp, 135364
                  slt          s3, tp, a5
                  or           t2, s2, s10
                  auipc        ra, 789118
                  andi         a6, t5, 1105
                  sll          a7, s2, s6
                  xor          ra, t3, ra
                  sltiu        t1, s3, 1113
                  add          a0, t6, s9
                  add          a7, a7, s9
                  lui          s10, 861538
                  and          t4, s0, a3
                  slt          a3, a4, a2
                  lui          s0, 757898
                  xor          s11, a3, a7
                  and          s2, t3, zero
                  sltu         t6, t0, s11
                  srl          s11, zero, s6
                  ori          a3, a2, 1573
                  and          t6, t6, t0
                  sltu         a1, t6, s0
                  nop
                  srl          s9, sp, s9
                  sltiu        t1, s11, 557
                  slti         t0, s8, -1369
                  and          s0, s10, a0
                  srli         t2, sp, 8
                  xor          tp, ra, s1
                  srli         sp, s8, 4
                  ori          t2, a2, -574
                  addi         s5, gp, 911
                  nop
                  srl          zero, t6, s8
                  lui          s10, 751425
                  xor          a3, t0, t3
                  xor          t1, s9, s8
                  sll          a4, s4, a5
                  srli         gp, s3, 20
                  srai         a1, s3, 15
                  srli         s6, s10, 13
                  srli         a5, s11, 18
                  srl          t0, t6, a5
                  nop
                  sra          gp, tp, t3
                  andi         tp, s8, -134
                  slt          a5, s2, s2
                  slti         s5, s7, 1358
                  sub          t1, s10, t2
                  xor          t2, s8, gp
                  ori          s2, s6, -1157
                  nop
                  slt          a0, s11, s9
                  srl          a7, a6, s1
                  xor          s4, gp, s5
                  srli         a1, s3, 27
                  nop
                  add          t0, sp, t1
                  srl          a0, a6, ra
                  slli         s8, t0, 15
                  xori         t4, t4, 269
                  srai         tp, t0, 28
                  auipc        a4, 531300
                  andi         s10, s3, -1509
                  add          t6, t1, a0
                  sub          ra, a7, sp
                  lui          s3, 474099
                  slli         s3, t4, 29
                  and          s4, s5, a2
                  sll          s9, t2, s8
                  srai         a1, t4, 3
                  sltiu        s6, t3, -643
                  ori          a3, a5, -95
                  sltu         tp, sp, t3
                  sltu         a0, t5, ra
                  slli         t0, a6, 25
                  auipc        ra, 221347
                  xor          gp, sp, s10
                  slli         sp, gp, 10
                  slli         t1, a3, 27
                  nop
                  slli         s2, t0, 7
                  sra          t0, t5, ra
                  srli         s7, a4, 12
                  addi         gp, t4, -901
                  slli         a1, ra, 22
                  xori         s4, a7, 715
                  lui          a3, 674519
                  auipc        s6, 91887
                  ori          a7, t4, 236
                  slt          gp, zero, a7
                  ori          t4, s4, 1311
                  sub          ra, s11, a1
                  sltu         tp, t6, s8
                  addi         zero, t5, -796
                  ori          s10, tp, -1965
                  sll          s5, t4, t6
                  add          a7, a3, s8
                  or           s4, s7, zero
                  ori          sp, a2, 1250
                  srl          a2, tp, t6
                  srl          sp, a4, t2
                  nop
                  srl          ra, a5, t1
                  slt          a0, ra, a4
                  srai         zero, a0, 31
                  slt          s5, a0, t2
                  or           t6, s6, t1
                  sltu         a2, gp, s9
                  lui          a6, 142117
                  ori          s4, t6, -585
                  sltiu        s8, s11, 1101
                  nop
                  xor          s11, s0, s2
                  sltu         gp, a7, s4
                  xori         a4, a0, 26
                  srl          a0, s6, s8
                  srli         s10, t2, 10
                  srai         s3, sp, 28
                  sra          a4, s1, gp
                  sra          t6, s8, a2
                  srai         s4, ra, 26
                  xori         s10, s7, 1219
                  xor          t4, s10, tp
                  sra          s10, a3, s5
                  xor          a6, a1, s9
                  srl          s6, a3, a4
                  xor          a1, a5, tp
                  slti         s9, a3, 184
                  sltiu        a1, a6, 210
                  and          ra, t1, a3
                  add          a4, t5, a5
                  or           s4, s6, ra
                  andi         t1, s0, -141
                  slt          t1, zero, s3
                  srai         s5, t2, 4
                  add          s5, s0, t3
                  sub          a1, t1, sp
                  lui          s6, 340521
                  or           a4, a1, a3
                  and          t1, a1, t2
                  andi         t1, t4, -1154
                  srli         a4, s1, 7
                  and          s6, s7, ra
                  sra          t6, a1, s6
                  andi         s3, tp, -934
                  xori         t6, s2, -344
                  srli         s0, t0, 19
                  nop
                  slti         a0, tp, -1865
                  andi         a5, s11, 254
                  sra          a0, s10, s3
                  sll          s10, s11, t6
                  andi         gp, t5, 853
                  and          s7, a0, t3
                  andi         s9, s3, -892
                  xor          s6, t0, t4
                  andi         a7, s0, -163
                  or           s5, sp, gp
                  andi         s4, zero, -1884
                  andi         s9, s11, -293
                  sltu         s0, s11, s5
                  slt          a5, s10, t4
                  add          a1, s1, gp
                  sra          s11, ra, sp
                  andi         t6, s9, 1828
                  addi         s10, s5, -1179
                  sltu         s6, t3, t6
                  sltiu        s2, a6, -1025
                  srl          s5, t2, s5
                  srli         s10, a2, 16
                  and          s10, s1, s4
                  srai         t4, ra, 20
                  auipc        tp, 440998
                  ori          a4, a1, 965
                  slt          a3, a3, t0
                  or           s8, s4, s0
                  sltiu        a4, s10, 115
                  xor          s8, t2, t1
                  srli         a5, a3, 14
                  or           s6, s7, gp
                  add          t1, t5, t4
                  or           a2, gp, s1
                  srl          a6, a3, a5
                  sub          a5, a3, t1
                  auipc        a4, 203574
                  sltu         t6, s4, t1
                  slli         s4, ra, 30
                  auipc        s8, 845421
                  lui          s4, 423820
                  slli         s6, sp, 0
                  add          s9, a1, s7
                  srli         s2, s1, 28
                  andi         s11, tp, 1596
                  or           s9, s6, gp
                  andi         s9, a6, -261
                  sltiu        s11, s5, 750
                  slt          a6, t2, s8
                  xor          s10, s5, t1
                  srli         a7, a5, 10
                  nop
                  andi         t6, t0, 1556
                  and          a1, t1, a6
                  slli         s2, s11, 19
                  slli         a4, a0, 28
                  ori          s2, s6, -966
                  srl          s10, gp, s9
                  sra          s7, t5, s6
                  slt          gp, t1, sp
                  slti         s3, a6, 1276
                  and          gp, a7, s10
                  lui          t1, 556332
                  sltiu        s6, a6, -1412
                  sltiu        s3, a6, -977
                  slt          s5, s11, t0
                  slli         a2, s7, 6
                  srl          s2, s3, s8
                  srli         tp, s3, 26
                  xori         s3, s3, 845
                  sub          zero, t6, a7
                  lui          s0, 263207
                  sltu         s11, s1, a4
                  nop
                  sltiu        s4, s1, 888
                  srli         s10, tp, 1
                  auipc        t2, 565267
                  andi         t0, tp, -1932
                  xori         a4, ra, -1921
                  nop
                  xori         a7, gp, -1377
                  xor          t0, a0, a1
                  add          s7, t2, t2
                  xori         s4, tp, -119
                  xori         zero, s5, -1800
                  slli         s6, t5, 19
                  xori         a2, s4, -1790
                  and          a7, t5, s10
                  xori         a7, t4, 1906
                  sltu         a4, t3, t0
                  xor          s5, s6, a6
                  sub          tp, t0, t1
                  srl          ra, a4, s11
                  or           a7, t6, s5
                  slt          a1, s3, t2
                  sltiu        a6, a6, 1095
                  sltu         a4, t6, t6
                  nop
                  sub          s4, t6, t6
                  sltu         t0, a1, sp
                  sltiu        t2, s6, 720
                  slli         a6, a1, 16
                  sll          s5, a6, s4
                  xor          a7, s11, s11
                  sll          s7, s2, s0
                  ori          s4, a3, 965
                  or           t2, a4, t1
                  xor          a3, s11, s1
                  lui          s9, 777821
                  slti         t4, s3, 1391
                  sltu         ra, t6, s0
                  lui          s10, 591462
                  slti         s6, gp, -1697
                  slli         s6, s7, 4
                  xori         t6, a2, -279
                  sltiu        gp, t3, 1634
                  sll          a7, t4, sp
                  sll          a2, t3, s4
                  xor          a6, s3, s6
                  slt          s5, s0, s9
                  slti         s11, a3, -863
                  xori         gp, s10, 1117
                  ori          s5, a1, 788
                  xor          gp, s8, a2
                  auipc        s10, 237027
                  slt          tp, zero, a5
                  srai         a5, s1, 29
                  sra          s4, s10, gp
                  add          a1, t3, t1
                  or           sp, a1, t6
                  xor          a6, gp, ra
                  xori         ra, s4, -1804
                  xor          s11, a0, a5
                  slti         a3, s4, 1956
                  sub          a1, t4, t0
                  srli         a4, tp, 18
                  srai         a2, sp, 20
                  or           ra, tp, a4
                  and          gp, s4, tp
                  sll          a1, s7, ra
                  sltiu        s9, t0, 930
                  nop
                  andi         t6, a0, 370
                  andi         s3, t5, -247
                  srl          s11, a2, t6
                  andi         ra, t4, 644
                  sll          s8, s2, a1
                  slt          a6, s4, a4
                  sra          t2, t5, s7
                  slt          t2, s2, t0
                  slti         a5, sp, 1948
                  or           s8, s10, s11
                  lui          t0, 213213
                  xori         zero, a7, 1454
                  slli         tp, s3, 13
                  sra          a7, tp, t6
                  lui          s2, 482500
                  addi         s5, s1, 192
                  nop
                  ori          a3, a6, 766
                  sra          t1, a5, t1
                  slt          tp, t1, t1
                  auipc        sp, 203226
                  sltiu        sp, s5, 191
                  xor          s0, s10, t3
                  addi         t6, t5, 1562
                  add          ra, a2, tp
                  sub          a1, t4, a3
                  sub          t6, t1, s7
                  xori         s3, s11, 1930
                  xor          s0, sp, s2
                  sll          t6, zero, t0
                  addi         a1, t6, -650
                  or           a6, s8, a2
                  and          gp, s1, a4
                  sub          s2, sp, s6
                  sltiu        a6, zero, 1081
                  or           gp, sp, a6
                  srl          a3, a2, s4
                  srl          s9, s4, t0
                  sub          a3, s1, a5
                  xor          a4, s6, s3
                  or           a5, a4, t5
                  xori         s3, a0, 1211
                  sltiu        s7, s1, 1031
                  slti         s2, s7, -1405
                  sltiu        s9, t5, -1777
                  slli         s9, a7, 12
                  andi         s11, s6, -744
                  xor          t1, t6, s2
                  srl          t6, s4, sp
                  add          s8, s9, zero
                  sltu         a3, t0, a5
                  sll          s0, s7, a2
                  sub          s5, a6, t0
                  lui          tp, 237730
                  auipc        t4, 337196
                  slli         ra, s7, 12
                  sltu         s5, a7, s6
                  slli         a3, s8, 14
                  sra          s8, s1, a7
                  sub          t1, sp, s11
                  and          a2, a3, s9
                  andi         s6, s11, 1794
                  sub          s8, s0, t2
                  sll          t6, t5, a5
                  sra          s2, s8, a3
                  add          a4, s5, a1
                  sll          zero, t5, ra
                  srai         s7, s8, 20
                  sra          a5, t4, s6
                  sub          s3, s0, a3
                  sub          a6, t1, a0
                  xori         s9, a2, 128
                  andi         s4, s4, 370
                  ori          t1, a7, -760
                  slti         s9, s7, -563
                  nop
                  nop
                  slti         t4, s11, -1602
                  sltiu        t4, zero, 601
                  srl          s3, ra, t1
                  slt          s5, t0, a6
                  ori          a2, t1, -434
                  sltiu        t4, s10, 1103
                  srli         a0, t1, 11
                  ori          a2, ra, 1530
                  sra          s10, s7, t1
                  xor          zero, a4, s9
                  slli         s10, sp, 23
                  andi         s0, a1, -1494
                  auipc        ra, 829991
                  lui          s11, 816103
                  andi         a0, gp, -187
                  xori         t1, s1, 2005
                  sltiu        s8, a3, -1271
                  addi         s9, s10, -204
                  srai         t6, s3, 28
                  sra          s5, s5, gp
                  slt          s4, gp, s10
                  sll          a6, a0, t2
                  and          s5, a5, a6
                  srl          a2, s8, s10
                  addi         a0, s4, -625
                  sltiu        s6, t5, -1018
                  add          sp, t1, s9
                  and          t2, s11, a0
                  andi         s4, a2, -233
                  xori         a4, s3, -707
                  slti         a6, zero, 2000
                  srai         gp, t0, 1
                  slti         t0, t5, 500
                  xor          gp, a3, t1
                  srl          a6, t3, a1
                  andi         t0, a5, -1543
                  ori          a7, tp, -1357
                  xor          s4, s2, s10
                  and          a4, s1, s6
                  xor          t4, t5, s5
                  srai         a2, tp, 15
                  xor          a7, s6, s0
                  add          s2, a0, ra
                  or           sp, a1, s7
                  sltu         s6, tp, s11
                  add          s6, t4, s4
                  slti         t6, a2, 1312
                  nop
                  andi         sp, t6, -1102
                  addi         tp, s5, -836
                  andi         t0, tp, -726
                  andi         t1, a0, 730
                  sra          a1, a0, s7
                  srli         a4, a3, 29
                  sra          sp, s11, a0
                  srl          s11, t5, a0
                  auipc        s6, 960964
                  lui          zero, 106789
                  andi         a6, a1, -1032
                  addi         a4, gp, 1714
                  xori         t0, ra, 717
                  or           s2, a4, t6
                  sra          a1, s9, s0
                  auipc        t0, 371722
                  xori         t0, s10, -994
                  srl          a3, a3, s8
                  srli         a5, s9, 7
                  or           ra, t6, s0
                  sll          a1, t2, s4
                  nop
                  slt          a7, zero, t2
                  sub          s10, s5, s8
                  and          a0, ra, a0
                  srli         a5, s6, 6
                  srl          gp, a0, t3
                  andi         s9, a4, 1094
                  lui          a3, 195069
                  auipc        s6, 685965
                  sltu         a4, s6, s9
                  srli         sp, s6, 9
                  ori          a3, a5, 290
                  srli         a3, sp, 14
                  sltu         t2, ra, s2
                  slli         a6, t2, 1
                  sll          s8, s0, s8
                  sub          a3, s5, t4
                  nop
                  xori         s5, s0, 221
                  auipc        s3, 976332
                  sub          a6, a1, s3
                  slli         sp, a0, 27
                  xor          a2, s7, sp
                  xori         s5, t3, -670
                  auipc        s9, 1028076
                  or           a0, s5, a1
                  nop
                  sra          s8, a4, ra
                  xori         a1, a7, 982
                  auipc        t2, 271869
                  and          t0, a4, s11
                  add          zero, t5, s5
                  sll          gp, t5, a3
                  slti         a3, a5, -433
                  and          s11, t1, a5
                  srli         a0, t0, 25
                  ori          s4, t1, 616
                  nop
                  srli         tp, t4, 16
                  sra          t4, s0, a2
                  sra          a4, s0, a2
                  sltu         a1, s8, s4
                  sltu         a3, s2, t0
                  slti         s11, a5, -1076
                  sll          s10, gp, a3
                  sltiu        s11, s11, 1495
                  and          a5, ra, a3
                  srli         a7, s3, 24
                  xor          s2, a4, a1
                  slti         zero, t4, 1352
                  ori          t4, t2, 686
                  sll          s9, t1, s9
                  sub          tp, ra, sp
                  or           s0, t0, a0
                  srl          s9, zero, gp
                  ori          a5, a1, -762
                  add          a7, t4, a0
                  slti         a5, s11, -298
                  nop
                  sltu         t4, s9, t5
                  add          s2, s10, s2
                  andi         s6, a4, 593
                  lui          s8, 456447
                  or           a5, t2, s10
                  xor          s2, zero, a2
                  or           s8, a7, s4
                  nop
                  sub          s10, t0, a4
                  xori         a2, a0, 1660
                  add          s4, s0, s2
                  xori         s9, sp, -401
                  slti         s11, t0, -1105
                  xor          s8, s2, s9
                  and          a3, t4, s10
                  andi         t2, tp, 695
                  sra          s9, a5, t5
                  sll          a7, s0, t6
                  srai         a5, zero, 8
                  andi         s9, t2, 578
                  add          a6, t4, t5
                  slti         t2, a4, -512
                  andi         zero, s2, 731
                  lui          ra, 360218
                  sltiu        s10, t5, -1489
                  sll          s9, s5, ra
                  or           s5, tp, a6
                  srl          s3, zero, s4
                  xor          a3, t6, s4
                  andi         gp, s10, -60
                  xor          t0, t6, s2
                  nop
                  srai         t4, t2, 5
                  add          a6, s10, a5
                  or           s10, a6, s6
                  sra          s3, zero, s2
                  nop
                  slt          t1, s1, s11
                  and          s11, s8, t2
                  xori         s7, gp, -1270
                  srai         t4, t4, 17
                  sll          s10, t2, a3
                  auipc        t0, 913679
                  add          s2, t2, s8
                  slt          a2, a7, t6
                  nop
                  or           s9, a0, gp
                  slt          s4, t5, s8
                  auipc        s4, 596760
                  xori         zero, s2, -20
                  srai         zero, s6, 1
                  slt          sp, ra, s6
                  sra          sp, s11, t6
                  xor          s9, zero, ra
                  sltu         tp, a3, a3
                  andi         a5, t1, 1441
                  srli         a0, a1, 2
                  sra          t6, s1, zero
                  sltiu        s4, t2, -1282
                  ori          s4, ra, 1219
                  sltiu        t2, s2, -522
                  srli         s2, t1, 23
                  slt          a6, s4, t0
                  srai         a6, a5, 5
                  addi         a2, a1, 884
                  nop
                  xor          t6, a0, a7
                  ori          ra, a3, 314
                  sltu         t0, t6, t2
                  xor          s11, gp, t4
                  sltu         s9, s11, s1
                  slli         a2, a0, 6
                  srl          t4, t2, t1
                  nop
                  nop
                  auipc        s4, 472607
                  srl          a0, t1, a7
                  srli         a4, s9, 15
                  sltu         a0, t4, t2
                  sll          a0, gp, a1
                  srli         s4, zero, 2
                  nop
                  or           s10, a3, a4
                  sra          t6, t1, s6
                  sll          s3, s6, a5
                  slti         gp, t0, 2002
                  xor          a3, a5, t4
                  and          t2, a2, a5
                  ori          a5, s0, 1866
                  add          a7, s2, s8
                  slti         t1, s11, -173
                  srai         s10, t2, 2
                  slli         gp, s10, 18
                  auipc        s4, 487371
                  sltiu        tp, s6, -1863
                  srl          a7, t3, a2
                  slt          sp, zero, s9
                  sub          t1, a5, s7
                  lui          ra, 858444
                  lui          a4, 664775
                  sub          a0, s4, a5
                  or           s0, s11, ra
                  slli         a3, t6, 20
                  add          a1, s1, t6
                  xor          t1, a3, t2
                  xori         gp, t1, -1597
                  ori          s10, sp, 1503
                  nop
                  sra          s10, t1, sp
                  xori         a4, a3, 639
                  addi         a4, s2, 1106
                  lui          s6, 279751
                  slt          t6, s9, zero
                  slli         zero, sp, 24
                  add          a3, t2, t0
                  srl          s2, s4, ra
                  lui          t2, 736476
                  andi         a3, t6, 1743
                  lui          a6, 754044
                  andi         t4, a2, 333
                  srli         s0, s9, 8
                  sltu         s11, a7, s6
                  add          a0, sp, s7
                  ori          t2, s3, -1181
                  sra          s5, s4, s1
                  add          t0, tp, tp
                  auipc        gp, 816080
                  sll          s2, a7, t2
                  slt          s5, s3, t0
                  xori         a7, t4, 1808
                  slli         s9, s4, 5
                  srl          s7, a7, s5
                  addi         a3, s5, -1847
                  slli         a0, t4, 16
                  ori          a2, s5, -1835
                  addi         s5, t0, -1965
                  srli         t2, s9, 18
                  lui          a1, 926770
                  and          gp, a7, a0
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0x80000000
                  li           t0, 0x80000000
                  li           s9, 0x6fb9c2e6
                  li           a0, 0x80000000
                  li           a6, 0x80000000
                  li           s8, 0x44f2910c
                  li           t2, 0x0
                  li           tp, 0x4ce3bff6
                  li           s7, 0xffffffff
                  addi         s7, s9, 619
                  add          s7, t4, s7
                  lui          t0, 899693
                  addi         t0, tp, 943
                  nop
                  addi         a0, s7, 1682
                  auipc        t2, 592472
                  addi         s7, a7, -1134
                  add          s7, t4, a6
                  auipc        t4, 272584
                  addi         s8, a0, 903
                  addi         a7, s7, 351
                  nop
                  lui          s7, 71746
                  add          t4, a7, s8
                  nop
                  add          s9, a6, t2
                  sub          a6, a7, t0
                  nop #end riscv_int_numeric_corner_stream_17
                  slti         s3, s1, -2032
                  ori          ra, gp, -385
                  slti         t2, a2, 1767
                  lui          s10, 272754
                  nop
                  andi         a3, t0, -202
                  add          s0, s7, t3
                  slti         s11, t0, 1747
                  lui          s2, 780330
                  andi         s10, a1, -1306
                  slti         s0, t4, 1449
                  xori         s10, a7, -785
                  auipc        t0, 155299
                  sltu         s5, t5, s1
                  slt          s5, t2, s7
                  srai         ra, a1, 20
                  nop
                  sltu         zero, s3, s10
                  sll          ra, a6, s6
                  sltu         s11, a4, t1
                  add          a5, s9, a2
                  slti         s8, s4, 1924
                  slli         a5, s11, 1
                  sltu         a3, s5, a7
                  sub          s10, a1, a0
                  slt          s11, s4, ra
                  sltiu        a3, s4, 492
                  slt          s2, s11, t3
                  sltu         s5, a7, s3
                  srli         s6, s1, 14
                  sll          s6, t6, a2
                  ori          zero, tp, -1055
                  sub          a3, t6, s0
                  sltiu        s5, a2, 1198
                  or           s4, t1, t3
                  srli         zero, sp, 5
                  and          a3, a1, t3
                  auipc        gp, 780935
                  lui          t1, 375178
                  andi         a4, s11, 1829
                  sll          a2, s6, s1
                  xori         t1, a1, 1217
                  andi         a5, a0, -297
                  ori          a5, sp, -41
                  slt          a6, a1, zero
                  add          a5, ra, s7
                  or           t4, a3, a5
                  slti         a4, t1, 1235
                  sub          s6, sp, sp
                  slti         a7, s8, 254
                  srli         s9, a5, 28
                  auipc        gp, 890404
                  srl          a1, s2, s6
                  addi         ra, sp, -544
                  sll          ra, s4, s8
                  addi         s2, a7, 1866
                  slti         s0, tp, 1804
                  xori         s6, s3, -1894
                  srai         t4, a1, 30
                  slli         a7, s8, 16
                  sltu         t1, a7, t4
                  srl          s2, a6, a4
                  sub          sp, s3, s6
                  or           s6, s5, s6
                  slt          s7, a5, a7
                  lui          t0, 740626
                  xor          s9, a1, a3
                  and          s8, s9, a5
                  slti         t6, a2, -1991
                  slli         ra, sp, 1
                  lui          a6, 842071
                  and          s8, s1, t3
                  srai         tp, a1, 2
                  auipc        s3, 71785
                  add          a3, t6, t0
                  slli         a7, a0, 9
                  or           a0, t4, t6
                  andi         gp, a0, -837
                  nop
                  sltiu        zero, a6, -1235
                  or           s2, a4, t5
                  srli         a6, s6, 23
                  srli         s11, s6, 2
                  sll          a1, t5, s3
                  or           t0, s3, ra
                  srai         zero, t0, 31
                  and          s11, s10, t6
                  xori         s6, s5, -1422
                  nop
                  srl          s3, s9, s0
                  sltiu        t2, s7, 1929
                  srl          a1, s6, a1
                  nop
                  slt          ra, ra, s1
                  auipc        s9, 373852
                  and          tp, t6, s7
                  sltu         t2, a5, s5
                  and          s0, a7, a2
                  andi         sp, zero, 1472
                  slti         t1, s11, -949
                  srai         a6, s0, 11
                  srai         a1, gp, 9
                  xori         sp, a3, 794
                  or           s0, s1, t6
                  srai         s10, a4, 7
                  slt          s9, ra, t2
                  slli         tp, s5, 23
                  andi         a0, t0, -652
                  and          a3, s11, t6
                  lui          tp, 483299
                  xori         s10, s1, 58
                  sltiu        t1, s3, -1834
                  slt          a3, s9, s2
                  srai         sp, s9, 10
                  sll          t0, s8, t5
                  srli         s6, t6, 11
                  add          s10, tp, s1
                  sub          a4, t1, ra
                  srl          s6, s6, s8
                  auipc        t4, 473033
                  or           a0, t0, s1
                  slli         s11, t0, 4
                  and          a6, a4, t5
                  slli         sp, sp, 1
                  sra          a2, a6, zero
                  slti         s11, s3, 1982
                  and          a0, s7, s0
                  lui          a0, 731370
                  sll          t6, sp, a4
                  add          a0, a2, s11
                  and          tp, t4, a4
                  sltiu        t0, t1, 1439
                  auipc        zero, 1003949
                  lui          s3, 907310
                  srl          t0, s4, s5
                  add          a3, s7, t6
                  slt          a7, t2, a3
                  xor          a1, s2, t4
                  sltu         t2, t5, s8
                  sra          s0, a5, ra
                  andi         sp, sp, -520
                  lui          s0, 975284
                  slti         s8, t5, 920
                  sra          a4, t6, gp
                  ori          t6, t1, -1719
                  auipc        a0, 521234
                  auipc        s8, 316035
                  sltiu        t4, s5, -2027
                  andi         s6, t3, -1973
                  sra          s8, a0, s1
                  sll          s8, a5, a4
                  and          t1, zero, sp
                  and          s8, t6, s7
                  andi         t1, t4, 1590
                  sltu         a7, sp, t4
                  and          a4, t5, a1
                  lui          a5, 876660
                  srai         a0, a2, 21
                  sub          t1, a2, t6
                  auipc        t6, 535881
                  srli         a2, t4, 16
                  slti         s3, s2, 1497
                  sltiu        t4, a4, -1474
                  sll          s0, s5, s6
                  xor          ra, a6, a7
                  sub          a3, a1, a5
                  add          s4, s8, s8
                  addi         s5, t5, -1487
                  sub          a3, t5, a5
                  and          ra, s6, tp
                  slt          sp, t5, t0
                  srl          ra, gp, ra
                  auipc        t1, 344466
                  and          a4, s5, tp
                  xori         s4, gp, 445
                  sub          a5, ra, a7
                  sub          s5, s4, s9
                  add          s4, s7, a6
                  slti         a7, a3, -1220
                  sll          s0, ra, s7
                  add          t1, s8, ra
                  andi         a2, zero, -1024
                  xori         a4, t1, 582
                  xor          gp, tp, s1
                  or           s5, t3, a2
                  sltiu        ra, t0, -1245
                  auipc        a7, 251476
                  and          s5, s8, a1
                  sra          a7, a0, a2
                  sra          a6, t1, t2
                  sll          a6, sp, a3
                  slti         t6, a0, -1888
                  sltiu        a6, a3, -10
                  sltiu        a7, a3, 367
                  sltu         t6, tp, s3
                  slt          tp, tp, s1
                  sltiu        s7, s9, -433
                  ori          ra, s3, 274
                  lui          t2, 1003640
                  sltiu        s7, s1, -1880
                  add          s7, a6, tp
                  srai         s6, t0, 12
                  lui          s2, 785469
                  sub          t4, s1, a3
                  add          s9, t5, s5
                  slti         gp, a7, 835
                  slt          s3, s10, a6
                  add          a3, t0, s11
                  andi         s5, s4, 46
                  ori          s2, s6, 1642
                  lui          a0, 921691
                  xor          sp, s0, s10
                  andi         a0, s8, -1343
                  sub          a6, a2, t0
                  sltiu        a3, a7, 2017
                  sltiu        ra, t0, -877
                  auipc        a3, 286390
                  or           gp, a7, s1
                  add          s3, s11, a1
                  add          a1, s0, a0
                  nop
                  auipc        t2, 811612
                  srai         a5, s7, 0
                  or           a7, s2, tp
                  srl          ra, s1, s0
                  sll          sp, tp, t4
                  slli         sp, a0, 4
                  xor          s10, s2, s8
                  srl          s6, s10, s2
                  sltiu        s4, t2, -1536
                  addi         s0, s4, -1226
                  ori          a1, s10, -1259
                  sltu         t1, s9, s3
                  slli         a7, s0, 9
                  or           s4, s8, a4
                  slt          a5, s8, a5
                  sra          tp, t4, s2
                  sltiu        a0, s11, -1967
                  srl          gp, ra, tp
                  sub          a3, a6, t2
                  slli         s9, a7, 13
                  srai         a1, s2, 26
                  lui          sp, 532529
                  srl          s7, zero, t2
                  addi         s10, s4, -1688
                  or           s7, a1, a4
                  andi         a4, s0, 270
                  addi         a4, s5, -2024
                  sltiu        s7, tp, 872
                  slt          a1, tp, t4
                  auipc        s11, 1032903
                  add          s2, t2, a6
                  sll          tp, s7, s10
                  xor          s3, s9, sp
                  sltiu        s8, s5, 1428
                  addi         tp, zero, -625
                  nop
                  srl          t0, a2, s5
                  lui          a4, 286042
                  sltiu        t1, tp, -377
                  slli         a3, t6, 25
                  slt          s10, a4, t6
                  xori         s5, gp, -1603
                  sra          gp, sp, a1
                  slli         s0, a1, 2
                  add          a5, tp, s6
                  slti         s4, s7, 184
                  xori         a3, zero, 288
                  addi         s2, a5, -636
                  sltiu        a5, s6, 1740
                  auipc        s3, 1030546
                  ori          s9, a7, 1495
                  lui          ra, 837554
                  sll          a6, gp, t0
                  sra          a6, a0, gp
                  sltu         gp, t4, s1
                  ori          a4, s3, -434
                  nop
                  andi         a4, a1, -171
                  auipc        t0, 736360
                  sra          s5, ra, tp
                  lui          s11, 526562
                  ori          a2, t2, 1494
                  xori         s0, a3, 472
                  slt          a3, zero, t1
                  slli         s5, a7, 7
                  addi         tp, a1, 886
                  nop
                  lui          t6, 506830
                  andi         a2, gp, 252
                  sll          a4, t4, s3
                  sll          s6, sp, t6
                  and          s6, t6, s3
                  xor          t0, s4, sp
                  nop
                  sltu         a7, s1, s4
                  auipc        s4, 698430
                  sra          s9, a0, t5
                  sltu         s11, t4, s5
                  srai         t0, t0, 13
                  sltu         t2, s9, s7
                  xori         s6, tp, 1867
                  srl          a3, s5, t2
                  and          s8, s9, t2
                  add          s4, s9, t4
                  xori         s11, s4, -403
                  lui          s0, 470874
                  sub          s10, t5, t0
                  ori          t6, s1, 1570
                  add          ra, s11, sp
                  ori          s10, gp, 166
                  slli         s8, sp, 7
                  lui          t6, 29382
                  slli         s4, s8, 21
                  or           tp, ra, s0
                  slti         t2, s3, -1373
                  srai         s9, t4, 12
                  ori          s11, t5, -1533
                  lui          t0, 386877
                  sltu         t6, a5, a2
                  and          s9, t2, a2
                  sltiu        s0, gp, 258
                  and          t6, tp, s8
                  sltiu        t6, tp, -1052
                  sltiu        s0, s3, -320
                  lui          t6, 368941
                  srli         t6, s9, 17
                  ori          ra, t6, -872
                  auipc        t4, 558443
                  andi         a0, zero, -1997
                  sub          a6, sp, sp
                  andi         gp, s2, -1377
                  slt          s7, s9, s1
                  srai         s0, s0, 26
                  slt          s0, a2, a7
                  auipc        t4, 251444
                  ori          a4, a4, 30
                  andi         s4, s6, 1467
                  nop
                  auipc        t6, 343657
                  sra          a1, zero, s11
                  auipc        s2, 502595
                  andi         t2, s0, -534
                  sll          s7, t2, s10
                  nop
                  or           t1, s11, s9
                  sltu         s2, t3, sp
                  sll          a2, zero, t5
                  sll          a7, s1, s5
                  andi         ra, s0, 340
                  auipc        a2, 496973
                  slli         ra, t5, 30
                  or           t6, s7, s7
                  srli         s6, tp, 13
                  ori          a5, tp, -1516
                  ori          s9, a0, -638
                  sub          s11, ra, s5
                  slt          s9, sp, a0
                  srl          s2, t6, s1
                  sll          t4, s11, s8
                  add          s3, s6, t0
                  srli         s7, s1, 22
                  auipc        s4, 831317
                  ori          t2, gp, -405
                  addi         s11, t0, 639
                  slti         s0, t3, -1366
                  or           s2, s4, s9
                  or           t6, s11, a7
                  sltiu        s11, a7, 1498
                  ori          t2, s7, 1425
                  srai         s4, s4, 29
                  addi         s10, s0, 1252
                  addi         s11, tp, -1642
                  and          a5, t0, s10
                  srl          s7, zero, a1
                  srl          a6, zero, t0
                  ori          s2, a4, 854
                  ori          sp, s5, 1679
                  srli         s6, ra, 31
                  slt          a0, s7, a0
                  or           s4, s6, t5
                  xor          t2, a4, a6
                  sltiu        a4, a4, 1853
                  lui          t2, 201831
                  sra          s5, s8, s6
                  nop
                  sltu         s4, s10, t4
                  sltu         a6, t0, a2
                  sub          s5, s6, t6
                  and          a0, a2, s0
                  srl          s10, t6, s5
                  srli         s3, s4, 17
                  lui          s9, 227749
                  and          s0, s2, a5
                  nop
                  sll          a4, a4, t3
                  ori          a7, s11, -364
                  sub          a4, t0, s4
                  addi         a6, s11, -1523
                  srli         tp, t5, 6
                  xor          t2, s11, t1
                  sub          t4, s8, s0
                  sll          sp, a4, t0
                  addi         tp, s0, -896
                  srl          s7, ra, t3
                  srai         s2, zero, 9
                  auipc        t4, 647969
                  srai         s0, s1, 0
                  srli         zero, zero, 30
                  or           s11, s3, zero
                  sra          t6, s7, s3
                  nop
                  xor          s6, t2, a5
                  sll          s0, tp, s9
                  srli         a7, ra, 24
                  and          t6, gp, s2
                  xori         s11, ra, -751
                  sll          a0, s10, a2
                  slli         s11, gp, 23
                  sltiu        s9, a0, -891
                  andi         gp, a3, -1529
                  sub          a6, t5, s8
                  sra          gp, a3, t4
                  xori         a4, t4, 1114
                  sll          a7, s0, t5
                  slli         tp, s7, 26
                  srli         zero, s5, 20
                  srli         a6, s10, 28
                  andi         t2, s11, 107
                  srl          s11, ra, t3
                  slti         a4, ra, 317
                  auipc        a5, 420986
                  sltiu        s8, t2, -1030
                  slti         a0, ra, 1356
                  or           s2, t3, a7
                  slt          s3, s10, t1
                  ori          s7, s6, 75
                  lui          sp, 811615
                  slti         gp, t3, -1508
                  slt          a4, s4, ra
                  auipc        ra, 483089
                  auipc        s11, 982429
                  sra          zero, t0, t0
                  addi         t1, tp, -392
                  srli         a3, zero, 21
                  sltiu        a3, tp, -702
                  nop
                  slti         t4, a7, -1891
                  sra          t6, t1, a7
                  srai         t4, a1, 31
                  xori         t1, s9, 1584
                  or           t6, s6, zero
                  slti         t4, t3, 2029
                  slti         a6, s8, 509
                  auipc        a1, 34261
                  xor          a5, a2, tp
                  ori          s0, t5, 1501
                  srli         s2, s5, 3
                  xor          s5, sp, a4
                  srai         s2, ra, 9
                  andi         a5, t2, 1112
                  sub          a5, a4, s3
                  xor          gp, gp, s6
                  slti         a3, s6, -488
                  addi         a4, a5, 1743
                  xor          ra, s9, a2
                  or           a0, a5, a5
                  lui          gp, 641727
                  sltu         t1, t1, ra
                  slti         t1, a5, -1783
                  and          zero, s11, s4
                  slt          t1, t3, t4
                  and          a4, t4, s0
                  or           a6, s10, a2
                  sltiu        s3, s4, 107
                  add          t6, t5, s6
                  nop
                  and          t6, a0, sp
                  srli         a1, t5, 21
                  nop
                  sub          zero, s1, a6
                  slti         s11, s8, -165
                  ori          gp, a5, -719
                  lui          s4, 700042
                  add          a6, s2, tp
                  sltiu        gp, a5, 1450
                  srai         ra, s0, 13
                  xor          a2, ra, s0
                  addi         t4, zero, 275
                  slt          a0, zero, s2
                  nop
                  srli         s10, zero, 10
                  slt          s7, a4, t3
                  addi         t1, tp, -801
                  slli         zero, s10, 19
                  slti         t0, s8, 1242
                  add          a7, t4, t3
                  ori          tp, a7, -1156
                  slli         s5, t6, 15
                  srai         a6, s11, 1
                  xori         s7, a5, 1947
                  sra          a2, s3, a4
                  sltiu        t4, a3, -1873
                  andi         s9, t1, 164
                  sll          s7, gp, tp
                  srli         s10, a5, 30
                  sra          ra, t5, s10
                  srl          sp, zero, t0
                  xor          a1, t1, t2
                  nop
                  sltu         a4, s0, s8
                  slli         a0, t5, 25
                  slt          t4, a2, a3
                  and          s4, t3, ra
                  lui          ra, 777687
                  srl          t0, a6, tp
                  sltu         ra, s7, s2
                  sltiu        s3, s3, -271
                  or           s7, t2, s11
                  xor          t2, a7, sp
                  srai         t0, s5, 24
                  add          a6, t1, ra
                  lui          a1, 434514
                  or           t6, t3, a6
                  srl          s3, s5, t0
                  ori          sp, a0, 262
                  andi         a7, a2, -754
                  ori          t4, ra, 1850
                  lui          s11, 1037063
                  srai         a1, zero, 21
                  ori          t1, t0, -386
                  andi         t0, s9, 1091
                  srli         s0, a3, 0
                  add          s10, s9, t4
                  add          a1, s9, s6
                  srl          s9, s8, s9
                  add          sp, a4, a0
                  addi         s9, s3, -1750
                  auipc        t0, 686832
                  xori         s0, t1, 494
                  nop
                  sltiu        a4, a1, -1184
                  auipc        s2, 408658
                  andi         t2, t6, 1935
                  srli         a7, s7, 11
                  ori          t2, t4, -1744
                  andi         a1, s9, -1373
                  sra          a5, a7, s5
                  sll          a3, t1, s0
                  xor          t1, gp, s1
                  or           t4, t3, ra
                  ori          s6, a5, 1294
                  srl          s6, a0, s1
                  srl          s9, s9, tp
                  srli         a7, sp, 21
                  or           t6, a4, t4
                  srl          a5, t4, a3
                  sra          t1, zero, s1
                  andi         s6, a6, -1001
                  xor          a0, a2, s3
                  sltu         tp, t1, s11
                  xor          s6, tp, a2
                  xor          t2, s3, a5
                  nop
                  auipc        s0, 503104
                  addi         s3, s7, 386
                  addi         s9, a6, -1144
                  lui          gp, 19141
                  add          s8, sp, s3
                  add          t1, s2, s3
                  lui          a5, 455373
                  auipc        t2, 492950
                  sll          s9, a1, t2
                  addi         s8, s5, 1848
                  slti         a6, a5, 237
                  srai         a1, s2, 24
                  nop
                  xori         zero, s2, -1687
                  sub          s5, a6, zero
                  or           t6, t5, t2
                  nop
                  andi         sp, a6, 2018
                  nop
                  sltiu        a2, s1, 1303
                  slli         t6, a3, 30
                  sll          s5, a6, t2
                  sltu         ra, gp, s10
                  nop
                  sll          s11, tp, sp
                  add          s4, sp, a5
                  srai         a2, zero, 7
                  xori         s6, s10, 977
                  sll          a3, s1, s9
                  sra          zero, a3, a7
                  sra          a4, t3, t3
                  srli         t0, sp, 12
                  and          gp, s0, a6
                  sltu         tp, s1, s1
                  sltiu        t0, a7, 948
                  sltu         s8, s0, a7
                  sll          s9, s1, a2
                  sltu         ra, t1, a6
                  ori          zero, s9, -1353
                  srai         a0, tp, 13
                  sll          a2, a6, a6
                  sra          a6, s9, zero
                  add          s3, s10, s0
                  slt          a5, s8, t2
                  auipc        t1, 958206
                  sltiu        a2, t4, 813
                  lui          zero, 66047
                  srai         t2, s4, 23
                  add          a3, s10, s9
                  sub          s3, s8, t0
                  srli         s6, a5, 19
                  addi         t1, t1, -1963
                  slt          t1, sp, t4
                  xor          s4, t5, s7
                  xor          t4, sp, s6
                  slti         s8, sp, 1531
                  srl          s4, a2, s5
                  sll          s5, a7, a1
                  srli         s2, a6, 25
                  sltu         zero, s10, a4
                  andi         s2, s10, -777
                  xori         t0, a6, -401
                  lui          a6, 614645
                  auipc        a0, 490074
                  ori          a5, t1, -2031
                  slti         t0, a4, 1007
                  srli         s7, s1, 27
                  sll          s8, s5, s9
                  sltu         zero, s0, s9
                  srli         t1, s2, 31
                  slt          s7, s5, t2
                  sra          s11, s3, gp
                  srl          a4, t3, tp
                  slti         a2, t0, -1244
                  xori         zero, s6, -366
                  slli         s10, a2, 23
                  xori         tp, zero, 69
                  and          a5, s2, s4
                  addi         s3, a5, -356
                  auipc        a5, 201092
                  ori          zero, a7, 1726
                  slt          s5, s1, t4
                  ori          s7, t0, -925
                  andi         a0, s8, 1919
                  srl          ra, a4, gp
                  or           a2, s8, t6
                  and          a1, sp, a2
                  srl          t6, t0, t1
                  andi         a0, s5, 1780
                  or           a4, a3, t6
                  srl          tp, a7, t1
                  srai         tp, a0, 30
                  slti         s8, zero, -1502
                  ori          s9, tp, -135
                  slti         a5, a3, 331
                  sra          tp, ra, s8
                  sll          t4, s6, s7
                  srli         t0, a0, 11
                  slti         s5, a1, -418
                  slti         s3, s1, -1293
                  sltu         ra, a2, s0
                  sub          zero, a1, s4
                  slli         a7, t4, 29
                  or           t0, sp, zero
                  ori          s3, a5, 190
                  ori          tp, ra, -958
                  and          s5, sp, t3
                  or           t4, s7, sp
                  xor          s0, a6, s0
                  slli         s5, s0, 28
                  slt          ra, gp, t0
                  addi         sp, zero, -1061
                  auipc        a4, 675204
                  and          s8, t6, s2
                  srl          s9, a5, s7
                  srai         a0, s11, 22
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           t1, 0xffffffff
                  li           s2, 0x0
                  li           a3, 0x0
                  li           a2, 0x0
                  li           t0, 0xffffffff
                  li           a5, 0x80000000
                  li           a6, 0xffffffff
                  li           s3, 0x651d9eb7
                  li           sp, 0xffffffff
                  auipc        a5, 429737
                  lui          t1, 556300
                  nop
                  lui          s2, 418956
                  nop
                  auipc        a3, 697998
                  nop
                  lui          t0, 818497
                  addi         a6, gp, 341
                  addi         s3, s2, 1989
                  nop
                  auipc        a5, 680621
                  add          a6, sp, gp
                  lui          a3, 810519
                  auipc        gp, 383856
                  addi         a5, t1, 1440
                  nop #end riscv_int_numeric_corner_stream_2
                  addi         s2, zero, 1137
                  xori         s4, s2, -274
                  add          s2, t2, sp
                  srli         t2, s0, 20
                  addi         s11, a0, 871
                  ori          t1, s0, 128
                  sltiu        a1, a3, -730
                  nop
                  xori         s9, zero, 1360
                  lui          ra, 423936
                  nop
                  slt          t2, s3, a5
                  slli         gp, zero, 26
                  slti         a3, s1, -925
                  sll          a2, t3, a0
                  slti         t2, a1, 1664
                  auipc        t2, 1003482
                  addi         t4, t1, -435
                  sltu         s2, s9, s9
                  andi         s10, s11, 1283
                  sll          t6, s1, sp
                  nop
                  xor          s5, ra, a4
                  srai         t4, a2, 30
                  auipc        a3, 537692
                  xori         s0, t6, -710
                  sll          s7, t6, t6
                  sub          a4, gp, s5
                  slt          t0, s10, t3
                  sltiu        a2, s9, -1343
                  nop
                  srli         s10, s5, 29
                  sra          a1, t5, s11
                  sub          a3, s2, ra
                  ori          s4, t1, -743
                  slti         t0, s1, 1114
                  srai         a6, ra, 25
                  sltiu        s3, a1, -824
                  nop
                  add          a2, s10, a0
                  sltiu        a4, t1, 1100
                  xori         s2, gp, 949
                  sltu         s2, t3, s4
                  sll          a6, t6, s0
                  xori         t1, t6, -528
                  lui          t1, 822580
                  srai         a2, gp, 12
                  slti         s8, t5, -1011
                  ori          a1, s10, 1277
                  sltiu        s0, s7, 201
                  sra          s7, s11, s9
                  add          sp, t2, t4
                  sra          s3, a1, s4
                  addi         a3, a5, 1102
                  srli         t0, s4, 27
                  sra          t4, t6, s5
                  sltiu        t0, t3, -1447
                  sltiu        s0, t4, -1560
                  sll          tp, s2, s2
                  nop
                  xor          a3, s3, a6
                  or           t1, s2, s5
                  sub          s7, s5, ra
                  sltiu        ra, t5, 568
                  addi         s2, gp, 1377
                  auipc        t0, 337800
                  srli         s2, t0, 6
                  srai         sp, ra, 29
                  lui          t0, 726023
                  addi         s5, s7, -1649
                  addi         t6, s4, -563
                  srl          t6, a0, gp
                  or           s11, t0, a2
                  slti         a4, s4, -1397
                  lui          tp, 491682
                  or           s11, s5, s2
                  or           s0, t5, tp
                  or           s0, t2, a1
                  or           tp, s9, a3
                  sll          s7, ra, s10
                  lui          a5, 250811
                  xor          a1, zero, gp
                  xori         s3, a1, -1680
                  sub          a6, a6, a6
                  sltu         a0, t6, t0
                  ori          s6, tp, -1776
                  srl          a5, t3, s0
                  xori         t2, zero, -417
                  add          s5, t2, s8
                  sra          s7, ra, s11
                  slti         a1, s2, -1760
                  lui          tp, 680759
                  xor          s3, t2, s9
                  sra          sp, t4, a0
                  lui          ra, 974819
                  and          s5, s2, ra
                  srli         zero, s4, 18
                  slt          t6, s1, t0
                  ori          s10, s6, -1546
                  sltu         a5, a1, zero
                  andi         ra, gp, -715
                  ori          s0, s11, -1547
                  srl          t2, s3, s3
                  srli         a5, gp, 27
                  nop
                  nop
                  andi         a0, t0, 1861
                  or           s9, a7, s11
                  add          a7, s3, t3
                  xori         t6, s0, 1225
                  and          gp, t5, s1
                  srai         t6, t2, 12
                  addi         a5, a7, 1899
                  srli         a6, s5, 17
                  slti         t0, s9, -1001
                  andi         s4, t4, 331
                  lui          sp, 879941
                  sll          s7, a3, s4
                  ori          s5, s11, -1889
                  slli         a6, a3, 4
                  sll          s7, s2, s3
                  auipc        t0, 498771
                  ori          tp, s10, -81
                  slti         t1, a7, -1727
                  slt          s7, s6, sp
                  andi         a0, a0, 400
                  srl          t0, t1, a0
                  slti         s8, a5, 905
                  addi         s9, s6, -1715
                  auipc        ra, 500139
                  sll          a5, ra, s1
                  or           gp, ra, s1
                  auipc        a5, 899317
                  sltiu        s11, s9, 246
                  or           t6, ra, a5
                  auipc        t6, 166465
                  srl          gp, a7, s6
                  sltu         s9, a0, s4
                  add          s7, t1, s8
                  xor          s2, a7, s7
                  nop
                  add          t6, a1, s7
                  and          t2, s5, t6
                  srai         t0, a3, 17
                  nop
                  or           s3, s2, a5
                  srl          s6, s1, s7
                  srli         s4, t6, 28
                  auipc        s10, 227396
                  sll          s8, zero, zero
                  xor          t2, a0, t4
                  nop
                  sltu         a4, s1, s11
                  add          sp, s1, s11
                  slti         s8, s4, 112
                  sltiu        s11, s5, 2042
                  sll          s9, s5, s10
                  and          s5, s11, t6
                  srli         s11, ra, 26
                  and          a5, s6, t3
                  sll          sp, s1, t2
                  or           a2, s4, s5
                  sll          a3, sp, zero
                  add          a0, s7, s10
                  sra          s5, s10, s11
                  sll          a6, s0, ra
                  sub          s6, ra, a0
                  addi         s9, a1, 558
                  slt          a6, s7, s6
                  ori          zero, s3, -242
                  lui          s9, 39615
                  xori         a0, s0, -59
                  or           s10, s5, t4
                  slt          s7, a0, gp
                  andi         a7, t5, 56
                  slt          a7, a7, t1
                  lui          t2, 893299
                  slti         t4, s9, -1854
                  srli         s2, gp, 12
                  nop
                  lui          t6, 2257
                  slti         zero, t2, 1766
                  xori         s11, s7, -940
                  nop
                  or           a5, t5, a6
                  sltiu        a2, t3, 1364
                  and          s4, gp, a3
                  sra          s8, s6, a0
                  sra          s0, a6, t2
                  xor          a7, a1, s11
                  sub          s7, a0, a6
                  xor          s2, s3, s11
                  slt          a4, s11, t2
                  slli         gp, s1, 16
                  ori          s5, t5, -1575
                  xor          a2, s11, tp
                  lui          t6, 707181
                  srli         zero, t4, 28
                  add          a4, t4, s3
                  auipc        ra, 334032
                  andi         a6, t2, 1885
                  sll          a5, a3, t2
                  andi         s9, s5, 1195
                  or           zero, a6, ra
                  sra          s9, s7, a6
                  auipc        t2, 60362
                  or           a7, t6, a0
                  andi         s3, zero, -1718
                  andi         ra, s2, 89
                  and          s6, t1, a5
                  srai         a7, t2, 7
                  add          a4, t3, s10
                  slt          s9, s9, a3
                  sltiu        tp, sp, 393
                  slti         s7, s9, 244
                  sub          s9, s1, a0
                  srai         tp, s9, 30
                  auipc        ra, 837922
                  xor          t0, s0, a3
                  lui          s3, 522852
                  xori         s6, t4, -1265
                  sltu         s10, t3, t1
                  sub          s8, s7, s1
                  sra          s11, s10, t2
                  ori          a4, s3, 761
                  ori          a5, s5, -1702
                  sll          gp, s2, t6
                  auipc        s0, 886313
                  add          s8, t5, tp
                  sll          t4, a5, s5
                  and          s5, s5, a2
                  sll          s4, s9, t2
                  sll          s5, s2, s11
                  xori         s3, s1, 456
                  sltu         t1, s1, t2
                  sltiu        t6, ra, -333
                  auipc        s3, 578117
                  or           t1, t3, t3
                  lui          zero, 550993
                  srl          tp, s0, zero
                  andi         s8, s3, -922
                  sub          t2, s11, t2
                  auipc        s3, 76069
                  xor          a7, s4, a2
                  slti         a7, s4, -1503
                  srai         tp, sp, 29
                  sra          ra, t4, s10
                  xor          s0, s1, s9
                  srai         s6, s1, 2
                  sltiu        t2, gp, 402
                  auipc        a0, 472113
                  sll          tp, a3, a6
                  ori          s6, t2, 1884
                  sltiu        t4, s1, 1546
                  slt          gp, t6, s2
                  ori          s10, s2, 995
                  ori          t2, a1, -763
                  slli         t6, t4, 1
                  addi         a6, t6, 564
                  nop
                  srl          s8, s10, t6
                  lui          a3, 21785
                  sltu         zero, s10, t6
                  and          s7, t3, sp
                  sltiu        a7, ra, 960
                  sra          a7, gp, ra
                  slti         gp, a5, 635
                  nop
                  slli         s4, s2, 27
                  slti         t1, a0, -1086
                  slti         sp, s1, -1760
                  slti         t6, s8, -766
                  or           t2, a4, s2
                  add          s7, s3, sp
                  sltu         s8, a2, a5
                  srl          s4, a1, s1
                  srli         s11, a1, 8
                  lui          gp, 499541
                  sltu         t1, s10, t0
                  nop
                  sra          sp, s1, t1
                  or           s5, a2, t0
                  slt          s8, s1, tp
                  sub          s3, t2, ra
                  andi         t4, sp, 4
                  and          a2, a3, t6
                  xor          zero, a6, s0
                  srli         s10, s1, 26
                  xori         a7, s5, 93
                  auipc        a3, 400384
                  xor          sp, t1, a0
                  xori         s3, zero, -1400
                  sltu         a7, ra, a1
                  slti         s4, t3, 404
                  or           s5, a1, t1
                  slt          s7, s3, a1
                  srl          ra, s5, s9
                  or           s9, s7, t0
                  andi         gp, s8, 364
                  add          s9, a7, t6
                  srl          sp, t2, t6
                  addi         sp, a4, 1359
                  xor          s7, t5, t4
                  add          s3, t3, a3
                  andi         s6, s7, -1627
                  slt          s10, gp, s6
                  lui          t4, 1021876
                  slti         ra, s11, 1364
                  srl          sp, s5, t0
                  srai         s0, t6, 24
                  sltu         s3, s9, a6
                  and          a6, s4, s8
                  nop
                  ori          gp, a5, -2008
                  andi         a2, a1, -1897
                  sra          a5, s9, a2
                  sltiu        ra, s0, -1740
                  sub          s11, t6, t6
                  or           s8, a4, s8
                  add          a0, ra, t1
                  sll          zero, t6, s11
                  nop
                  sll          tp, a0, s2
                  sub          gp, a5, ra
                  lui          s0, 899650
                  srli         t2, a2, 21
                  sra          zero, s5, zero
                  add          s0, s5, a6
                  slt          s3, a0, gp
                  ori          t4, t4, 263
                  or           zero, s8, a2
                  andi         s11, s3, -152
                  sub          s9, t2, a4
                  or           s4, t0, a2
                  slt          s7, s11, a7
                  xor          t1, a5, t0
                  add          a3, a1, t3
                  slli         t0, zero, 24
                  sra          t4, tp, t4
                  slli         a1, s7, 2
                  srai         s5, t3, 29
                  and          a5, a7, a7
                  sltu         a4, s10, a4
                  or           s2, s8, t0
                  sll          t0, s4, a3
                  sub          t2, zero, t2
                  xor          a5, s7, a4
                  slti         t2, s9, 32
                  andi         t2, t5, 1296
                  add          s0, t6, a2
                  add          s7, s8, gp
                  xori         s2, a1, -1459
                  andi         tp, t4, -877
                  sll          s7, t5, tp
                  slli         zero, t4, 6
                  sub          a1, a7, s9
                  sll          ra, sp, t0
                  auipc        a3, 844097
                  lui          s11, 698079
                  and          t0, s4, t3
                  add          s8, ra, a6
                  sltu         a3, a1, a4
                  slli         a4, s5, 29
                  sra          a2, zero, a4
                  sltiu        a1, a7, 1791
                  lui          sp, 185789
                  or           a6, ra, t4
                  sra          s6, sp, s6
                  srai         s9, a3, 17
                  sll          tp, s10, s11
                  lui          s10, 881743
                  slti         a5, s5, 411
                  srl          s10, a0, s4
                  addi         s10, s3, -13
                  or           zero, a5, s8
                  and          s4, s3, ra
                  srl          tp, t3, s8
                  andi         gp, s8, -1267
                  add          zero, s5, t5
                  sltu         t1, s11, s4
                  slt          t0, s7, t5
                  slt          s10, a6, t4
                  sra          s5, s7, t4
                  xori         zero, t3, -1901
                  xor          a3, a7, s8
                  srl          a5, t4, a7
                  sltiu        zero, a6, 342
                  sra          tp, sp, t6
                  srli         a3, s0, 17
                  lui          a5, 413936
                  andi         a6, t4, 1970
                  add          a6, a4, s7
                  sll          zero, s11, s1
                  ori          a7, ra, -1738
                  sub          a7, sp, s5
                  andi         tp, s9, -1272
                  sll          s5, sp, t1
                  xor          s2, s1, gp
                  slli         s3, t6, 4
                  andi         a7, a5, 6
                  andi         t6, a3, -160
                  sll          a0, s3, a2
                  and          tp, ra, s10
                  auipc        t0, 595358
                  sra          t4, t3, s6
                  sll          a6, s11, a0
                  sra          s2, s2, zero
                  slti         zero, s7, 1927
                  sub          t1, s5, s2
                  and          a4, gp, gp
                  sra          s0, s3, s8
                  andi         a6, a6, -2000
                  addi         s4, s6, -181
                  andi         a7, zero, 1344
                  sltu         t2, t6, s10
                  lui          t1, 803597
                  slt          a1, a2, a2
                  lui          t1, 352403
                  sll          t0, zero, ra
                  sra          t2, t4, tp
                  slli         ra, s0, 14
                  and          tp, s9, a2
                  xori         t0, a2, 900
                  lui          a0, 762722
                  slt          a3, gp, ra
                  sltiu        sp, t5, 1638
                  srai         t2, a0, 3
                  or           t4, a7, s11
                  srl          zero, ra, s1
                  addi         s11, t0, -817
                  addi         a3, s10, 986
                  lui          sp, 150743
                  and          a4, a2, s10
                  andi         a3, a5, -1748
                  slli         tp, s4, 0
                  xori         s11, s1, -1234
                  srl          a5, tp, t6
                  andi         s5, t2, 310
                  sub          s11, t6, s4
                  srli         a4, t0, 25
                  and          tp, s7, gp
                  sll          t1, gp, gp
                  srl          s11, a5, s7
                  slli         gp, zero, 2
                  sltiu        a5, a6, -1417
                  sra          s10, a7, t0
                  srai         s6, t6, 8
                  srl          s10, a6, a5
                  slli         tp, t3, 18
                  and          t4, a4, s3
                  lui          gp, 573425
                  addi         t0, ra, -866
                  xor          a3, a2, tp
                  sll          zero, a0, t0
                  auipc        a3, 782456
                  ori          a1, t6, -1679
                  srl          s5, a5, s10
                  nop
                  sltu         tp, a3, s7
                  slt          s0, a6, a4
                  xori         s0, s3, -1362
                  slt          a3, a5, s6
                  sltiu        s7, s8, -1142
                  srl          s3, t0, tp
                  xori         a5, a5, -1001
                  slli         a4, tp, 5
                  ori          s11, s6, -213
                  and          tp, a6, a5
                  slti         s3, a4, -565
                  slti         s4, a4, -485
                  sltu         t2, a4, s3
                  slt          ra, a7, s9
                  sra          zero, t1, s0
                  sub          s3, s10, a7
                  sub          s8, a4, a3
                  xori         ra, a2, 986
                  and          a1, sp, t4
                  xori         a0, a4, 1985
                  andi         t6, a3, 1750
                  srl          s6, a0, s7
                  sltu         s3, gp, t2
                  addi         s4, a0, -874
                  sub          ra, a5, s3
                  lui          gp, 836265
                  srl          t4, ra, sp
                  srai         s3, s9, 0
                  ori          a4, t4, 1011
                  lui          s5, 952117
                  slti         t6, ra, -136
                  or           s2, s3, zero
                  srai         s8, t6, 0
                  or           a0, a0, tp
                  slli         s11, t1, 7
                  or           gp, s8, a2
                  slti         s2, s7, 1296
                  xor          s6, tp, s9
                  lui          a7, 203742
                  sub          sp, a7, s9
                  sltu         t0, s2, a1
                  slt          s8, s2, t0
                  or           a3, t1, t6
                  andi         s9, a2, 769
                  sra          s8, t4, s11
                  srl          a6, sp, s9
                  xor          a0, s2, t0
                  slt          a2, a5, s1
                  slti         a3, a2, -508
                  sltiu        s11, s7, 1304
                  sll          s5, s0, a1
                  srl          s4, sp, a6
                  andi         zero, ra, -1289
                  addi         s6, s11, 1376
                  ori          t2, a7, -426
                  slt          s10, s5, s2
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           t4, 0x80000000
                  li           s0, 0x0
                  li           s11, 0x80000000
                  li           t2, 0x0
                  li           a7, 0xdad98c18
                  li           s10, 0x80000000
                  li           t6, 0x0
                  li           a5, 0x0
                  li           a3, 0xffffffff
                  sub          s10, s7, t4
                  sub          t4, s7, s0
                  sub          t2, t6, t6
                  nop
                  auipc        s7, 951357
                  auipc        a7, 346686
                  addi         s7, a5, -1268
                  add          a7, t2, s11
                  addi         s10, a7, 433
                  add          t6, a3, t4
                  add          t2, s11, a7
                  add          t2, a7, t6
                  sub          a5, a7, s11
                  auipc        a5, 951143
                  auipc        s10, 333889
                  nop
                  auipc        s10, 401237
                  nop
                  nop
                  auipc        a5, 285941
                  sub          s10, a7, s11
                  auipc        s10, 870818
                  sub          a7, s10, t4
                  nop
                  addi         a3, a3, 387
                  nop
                  add          s0, t6, s0
                  auipc        t4, 650021 #end riscv_int_numeric_corner_stream_9
                  slt          s4, s8, s2
                  srai         a2, a3, 1
                  or           gp, a1, s1
                  lui          t4, 739968
                  andi         t2, sp, 344
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s8, 0xffffffff
                  li           s9, 0x80000000
                  li           s5, 0xffffffff
                  li           tp, 0xb6c959e
                  li           s10, 0x80000000
                  li           a1, 0x80000000
                  li           a4, 0x80000000
                  li           gp, 0x8e402f66
                  li           s0, 0x61f97188
                  nop
                  auipc        tp, 1042161
                  nop
                  auipc        a1, 58703
                  auipc        s8, 329220
                  addi         s10, a1, 1952
                  add          s5, s9, s9
                  auipc        gp, 509935
                  auipc        gp, 425071
                  nop
                  add          t6, s9, s9
                  auipc        a4, 15498
                  add          gp, a4, s8
                  add          s10, s9, a4
                  lui          s9, 615984
                  auipc        gp, 113131
                  sub          a1, a4, a4
                  auipc        tp, 1036420
                  nop
                  lui          s10, 277350
                  sub          s8, t6, s0
                  lui          s0, 160209
                  addi         s10, a4, 959
                  auipc        gp, 388202
                  lui          a4, 198419
                  sub          a4, gp, t6
                  auipc        a4, 528134
                  addi         t6, a1, -486
                  addi         t6, a4, 1798 #end riscv_int_numeric_corner_stream_6
                  sub          gp, a7, a0
                  add          t4, s3, s10
                  andi         a1, a7, -1292
                  sub          tp, s8, t0
                  slt          a0, a1, s7
                  slli         a6, a7, 2
                  xori         a1, s11, 579
                  nop
                  slti         s4, t1, 315
                  slt          t6, zero, s3
                  and          a0, s0, gp
                  add          s5, a0, a1
                  sll          t4, a3, a3
                  andi         s8, zero, -1511
                  sra          t4, a0, tp
                  slti         t0, s10, -869
                  lui          s9, 802265
                  slli         ra, t5, 28
                  xori         s4, a7, 1367
                  slt          gp, tp, s8
                  sltu         tp, s11, sp
                  slli         zero, t5, 22
                  andi         s3, gp, 817
                  xor          sp, a7, t2
                  srl          s11, s11, s9
                  sltiu        t2, t4, -1565
                  sra          s6, t2, a5
                  sub          s3, t5, t3
                  xori         a0, s0, 663
                  xori         t6, t1, 1155
                  srl          s9, tp, ra
                  addi         s0, t6, 1209
                  or           t2, s11, a4
                  srli         s10, s6, 11
                  add          s2, gp, s8
                  auipc        t0, 381440
                  sltiu        t6, t6, -1729
                  auipc        t1, 373402
                  slli         a6, gp, 8
                  lui          s9, 704387
                  xor          tp, sp, a2
                  addi         a3, t3, 1020
                  add          t1, sp, s1
                  lui          a2, 194439
                  sltu         s11, s10, t0
                  slti         a5, a2, -722
                  slli         a0, s11, 16
                  andi         t4, t4, -715
                  and          ra, s11, zero
                  srli         ra, a5, 16
                  sltu         s4, s8, a6
                  ori          a2, sp, -801
                  sub          t2, zero, s6
                  lui          a2, 648615
                  srli         zero, t1, 24
                  andi         a0, tp, 492
                  slti         a3, s0, -739
                  lui          s9, 51324
                  andi         tp, ra, 712
                  slti         tp, s9, 1446
                  sltu         a3, a2, ra
                  ori          a5, a6, -1047
                  nop
                  sltu         s3, s3, t6
                  slt          a3, a0, a7
                  nop
                  nop
                  addi         tp, t5, -1251
                  slt          t2, s10, a7
                  sll          s0, zero, s11
                  srli         s6, s10, 22
                  sll          s7, a1, a7
                  sltu         s10, a1, a7
                  sll          s8, a5, t4
                  sub          tp, s11, t4
                  or           s0, a7, a7
                  nop
                  slt          a0, tp, a6
                  and          sp, a6, s0
                  xor          a3, s8, s9
                  sll          a1, t2, a7
                  ori          t2, zero, -492
                  andi         t1, s5, 1972
                  sltu         s5, tp, s0
                  lui          a5, 286503
                  sub          zero, t5, s4
                  slt          s9, ra, s1
                  add          a6, a3, t3
                  sub          t4, s8, zero
                  slli         ra, s4, 15
                  sll          s10, s3, s6
                  xori         t1, s10, 345
                  sub          s5, a0, a6
                  addi         tp, s5, 149
                  sll          a5, s2, a7
                  or           ra, a0, s2
                  lui          t1, 566622
                  and          a2, zero, sp
                  slt          a3, t4, a2
                  slli         a0, a4, 6
                  lui          s4, 261682
                  auipc        sp, 916733
                  add          a2, a1, a7
                  slti         s10, t6, -281
                  slti         s4, sp, 722
                  sltu         a4, s3, t2
                  slli         s9, t4, 17
                  srai         s5, s7, 29
                  sltiu        s4, t0, 296
                  srai         t1, s7, 27
                  slli         s4, tp, 31
                  auipc        a3, 1002209
                  add          s3, s5, t5
                  add          a7, s11, s7
                  xor          a5, s8, t1
                  addi         t0, gp, 359
                  slti         gp, s8, 1335
                  auipc        s8, 21194
                  sra          sp, a3, a1
                  srl          t0, s9, a5
                  srai         a5, t0, 7
                  nop
                  srli         s9, s7, 31
                  nop
                  or           a1, s8, s0
                  andi         s7, tp, -126
                  sltu         s4, t0, a1
                  sra          a3, tp, a7
                  xor          s7, s9, s0
                  sra          t2, s8, a2
                  slli         t6, t0, 2
                  srli         a5, t6, 19
                  sltu         s5, ra, s4
                  xori         s11, s1, 869
                  sltiu        t2, a6, -1901
                  sltu         a4, s0, sp
                  sltu         t4, tp, s10
                  sub          a6, s1, a4
                  srai         t1, s2, 27
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
.align           2
mtvec_handler:    
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x9, x28, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x2, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x2, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x2, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x2, x4, ecall_handler
                  li x4, 0x1
                  beq x2, x4, instr_fault_handler
                  li x4, 0x5
                  beq x2, x4, load_fault_handler
                  li x4, 0x7
                  beq x2, x4, store_fault_handler
                  li x4, 0xc
                  beq x2, x4, pt_fault_handler
                  li x4, 0xd
                  beq x2, x4, pt_fault_handler
                  li x4, 0xf
                  beq x2, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

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
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x28, x9, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
