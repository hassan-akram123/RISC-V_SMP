.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x8
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xd06849f2
                  li x5, 0x80000000
                  li x6, 0xd
                  li x7, 0x4c1dfe16
                  li x8, 0xff1c826a
                  li x9, 0xa061626d
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x5dbfbb26
                  li x13, 0x80000000
                  li x15, 0xe
                  li x17, 0x80000000
                  li x18, 0xf543058a
                  li x19, 0x0
                  li x20, 0x3
                  li x21, 0x9
                  li x22, 0xb168cb0b
                  li x23, 0x8
                  li x24, 0x3
                  li x25, 0x1
                  li x26, 0x7542b4a0
                  li x27, 0xf8daf23c
                  li x28, 0x80000000
                  li x29, 0xe
                  li x30, 0xae8c5a8c
                  li x31, 0x80000000
                  la x14, user_stack_end
main:             li           t2, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           a3, 0x6aa96643
                  li           a0, 0x0
                  li           s11, 0xffffffff
                  li           s4, 0x80000000
                  li           s10, 0x0
                  li           t6, 0x0
                  li           s2, 0xb5be706a
                  li           s3, 0x80000000
                  li           tp, 0x18035895
                  lui          s10, 932442
                  addi         s11, tp, -856
                  addi         a0, tp, 1049
                  addi         t6, a3, 1203
                  auipc        a3, 121643
                  lui          a0, 472385
                  nop
                  auipc        s11, 362277
                  sub          a3, s2, s3
                  addi         a0, a3, 818
                  add          a3, s11, s11
                  sub          t2, t6, s3
                  sub          tp, s4, a3
                  nop
                  addi         a0, a3, -1925
                  addi         a3, s4, 215
                  add          s3, s10, t2
                  nop
                  sub          s2, t6, s10
                  auipc        s4, 917895
                  lui          t6, 373696
                  sub          s2, tp, s3
                  lui          a3, 138948
                  nop
                  lui          s2, 900018
                  nop
                  add          s4, s2, t2
                  lui          tp, 469470 #end riscv_int_numeric_corner_stream_11
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           gp, 0xffffffff
                  li           s6, 0xffffffff
                  li           t3, 0xd8bef9b3
                  li           s4, 0x0
                  li           a2, 0x80000000
                  li           t4, 0x79a34001
                  li           s8, 0xffffffff
                  li           ra, 0xffffffff
                  li           a3, 0x80000000
                  nop
                  addi         ra, s6, 101
                  sub          a2, a7, a7
                  lui          gp, 762225
                  addi         t3, ra, -742
                  sub          a7, a2, s6
                  sub          s4, ra, s4
                  auipc        t3, 407587
                  lui          gp, 1025354
                  sub          t3, a2, s6
                  sub          ra, t3, gp
                  auipc        s4, 436393
                  auipc        gp, 726751
                  lui          a3, 111084
                  addi         ra, t3, 333
                  lui          s6, 694400
                  add          t4, a3, a7
                  nop
                  lui          s4, 705687
                  add          ra, t3, ra
                  auipc        ra, 570707 #end riscv_int_numeric_corner_stream_18
                  li           gp, 0xa6163b26 #start riscv_int_numeric_corner_stream_1
                  li           s3, 0x0
                  li           s5, 0xb7e2fa00
                  li           s0, 0x89ea7266
                  li           tp, 0xb7f3c8ac
                  li           a2, 0x0
                  li           s6, 0xa169ca5f
                  li           s9, 0x0
                  li           a3, 0xffffffff
                  li           a1, 0xa1b68206
                  lui          s0, 355270
                  sub          s0, gp, a3
                  auipc        s6, 1021312
                  lui          gp, 952694
                  add          s0, s0, s0
                  nop
                  sub          a1, s6, s0
                  add          a3, a3, a1
                  nop
                  nop
                  lui          tp, 845398
                  add          gp, s3, tp
                  nop
                  auipc        s0, 362944
                  nop
                  addi         a2, a3, -1648
                  add          s0, s9, a3
                  addi         s6, s6, 746
                  add          s9, a1, gp
                  auipc        s9, 554644
                  lui          s5, 230196
                  nop
                  nop
                  sub          s0, a1, s3 #end riscv_int_numeric_corner_stream_1
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s1, 0xffffffff
                  li           t1, 0x80000000
                  li           a1, 0xffffffff
                  li           s3, 0x80000000
                  li           s2, 0x4e295964
                  li           s11, 0x6436e115
                  li           s8, 0xffffffff
                  li           t2, 0xffffffff
                  li           s5, 0x80000000
                  lui          s11, 853276
                  lui          t1, 335922
                  lui          a1, 969201
                  addi         s1, s8, 1059
                  add          t1, t1, s1
                  nop
                  add          s2, s11, s5
                  addi         a1, ra, 908
                  auipc        a1, 667661
                  lui          s8, 727532
                  lui          t2, 602942
                  lui          t2, 226818
                  auipc        t1, 162948
                  auipc        a1, 137700
                  add          a1, s11, a1 #end riscv_int_numeric_corner_stream_3
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           ra, 0x0
                  li           s6, 0xffffffff
                  li           s0, 0x34d6bcbb
                  li           s7, 0x9f9a8a18
                  li           s10, 0x5bca53b5
                  li           sp, 0x0
                  li           t3, 0xb81b7761
                  li           s2, 0xffffffff
                  li           s3, 0x0
                  addi         s2, s3, -731
                  sub          s2, sp, t1
                  addi         s2, sp, 660
                  lui          s0, 524274
                  auipc        t1, 662307
                  lui          ra, 535791
                  sub          s10, sp, s0
                  add          t1, s2, s0
                  addi         s2, s7, -531
                  sub          ra, sp, s3
                  addi         s2, s10, 611
                  sub          s10, t3, s6
                  addi         s2, s0, 1889
                  lui          s6, 317716
                  addi         s6, s0, 1556
                  add          t3, s3, s0
                  sub          t1, s7, s2
                  addi         s7, s10, -1648
                  nop
                  lui          s10, 807143
                  auipc        ra, 520895
                  auipc        sp, 118033
                  addi         s2, s3, 1441
                  addi         t1, t3, -532
                  sub          s7, s10, ra
                  lui          ra, 740807 #end riscv_int_numeric_corner_stream_7
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s7, 0x80000000
                  li           a0, 0x80000000
                  li           s10, 0x80000000
                  li           s11, 0x80000000
                  li           t3, 0xd8ba945d
                  li           s3, 0xffffffff
                  li           t2, 0x80000000
                  li           s2, 0xffffffff
                  li           tp, 0x80000000
                  addi         t2, s11, 1444
                  auipc        tp, 647645
                  nop
                  add          a5, t3, a5
                  lui          s11, 594665
                  nop
                  auipc        s7, 223907
                  auipc        s2, 202346
                  addi         t3, s11, 122
                  auipc        s3, 453569
                  auipc        s7, 340805
                  addi         a5, t3, -1715
                  sub          t2, s10, s10
                  nop
                  addi         s10, s3, 703
                  nop
                  auipc        s11, 768029
                  nop
                  add          tp, tp, t2
                  lui          s3, 146159
                  lui          s7, 917797
                  lui          s7, 909030
                  lui          s7, 519286
                  nop
                  addi         s2, tp, -1278
                  addi         s7, s7, 1058 #end riscv_int_numeric_corner_stream_4
                  lui          t4, 904856
                  slli         a7, s6, 30
                  slt          gp, s3, t0
                  slti         s1, t6, 98
                  ori          s4, s11, 1428
                  srai         a5, a3, 18
                  srl          ra, gp, t3
                  xori         s6, a1, 320
                  xori         s6, s1, 1840
                  slti         s8, a5, -612
                  lui          a5, 431895
                  slli         t3, a0, 12
                  srai         a7, tp, 2
                  slli         t2, tp, 23
                  lui          s5, 231409
                  sub          s8, t6, s1
                  srli         a1, ra, 25
                  sub          zero, tp, t5
                  sltiu        a1, s7, 104
                  sltu         t2, s9, t2
                  sll          s11, s11, t0
                  xor          a0, t3, t6
                  addi         tp, ra, 1147
                  andi         zero, s3, 1129
                  andi         ra, s2, -811
                  or           s10, s11, gp
                  slt          s11, ra, t5
                  sll          gp, gp, a1
                  sltiu        t4, s8, -627
                  andi         ra, s6, -2011
                  srai         a2, s11, 26
                  xor          s1, s2, a4
                  addi         s6, s6, -614
                  slli         t5, t5, 22
                  sub          s9, t4, ra
                  addi         s0, t0, -887
                  slli         a7, s11, 13
                  nop
                  xor          s9, s8, t2
                  xor          t3, ra, s2
                  srai         t3, s2, 8
                  srli         a7, a6, 21
                  xori         t5, t0, 1853
                  lui          t6, 394675
                  srai         sp, s2, 21
                  nop
                  ori          tp, a1, 1593
                  or           t1, a4, a1
                  sltiu        s7, a4, 436
                  xori         s2, a3, -1870
                  sltiu        s9, s11, -176
                  sra          t1, s1, s5
                  xor          s6, gp, s5
                  slt          a2, zero, gp
                  sltiu        tp, sp, -726
                  srl          s7, a0, t5
                  lui          ra, 888235
                  auipc        t2, 716431
                  sra          s2, t0, ra
                  slli         sp, t6, 17
                  and          t6, a4, s10
                  slli         s6, s1, 17
                  addi         s10, a1, 1384
                  slti         t5, a7, 1478
                  auipc        t1, 381565
                  slt          s1, s0, s4
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           tp, 0x0
                  li           s0, 0x80000000
                  li           ra, 0xffffffff
                  li           a5, 0xf257d627
                  li           s1, 0x0
                  li           a0, 0x67fc8dee
                  li           s9, 0xffffffff
                  li           s10, 0x80000000
                  li           s7, 0x2d67f14
                  auipc        tp, 711809
                  addi         s10, ra, -668
                  lui          s0, 636992
                  sub          s9, s8, s10
                  nop
                  addi         s8, s10, 34
                  lui          s0, 898727
                  add          s9, tp, tp
                  sub          s8, s0, a0
                  addi         s8, tp, -157
                  lui          s7, 589474
                  auipc        s0, 658805
                  add          s9, s9, s9
                  addi         s9, a5, 402
                  lui          a5, 876601
                  lui          s8, 454955
                  lui          s0, 350440
                  lui          tp, 571208
                  sub          s9, ra, s10
                  lui          s8, 684075
                  sub          a5, s1, a0
                  nop
                  add          a5, ra, s1
                  addi         ra, s10, 1054
                  sub          a0, s9, s10 #end riscv_int_numeric_corner_stream_16
                  srai         sp, a6, 1
                  or           s1, t5, s7
                  xori         s11, s1, -1134
                  sltu         t1, s6, t5
                  sltiu        s8, s7, -1468
                  slti         s3, s8, 1276
                  auipc        a5, 59935
                  sltiu        a5, s4, -659
                  slti         sp, a1, 1838
                  addi         t6, t5, -524
                  or           s1, a5, a0
                  nop
                  add          t2, s4, gp
                  slt          a5, a3, ra
                  lui          zero, 675501
                  slti         sp, s6, 708
                  xori         gp, t1, -1482
                  sll          a2, s8, t3
                  srl          a2, s3, s5
                  sra          s4, sp, zero
                  slli         a5, a0, 1
                  ori          a5, a3, -1672
                  slli         tp, sp, 16
                  auipc        sp, 311341
                  sra          s2, a4, s9
                  slli         s5, a2, 15
                  or           s5, ra, s4
                  ori          s8, t5, -1778
                  auipc        s6, 642091
                  add          t5, t6, a0
                  sll          sp, t0, t0
                  xor          s6, s0, t4
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0x80000000
                  li           s6, 0x0
                  li           s0, 0x40f937b0
                  li           t1, 0x0
                  li           t3, 0x0
                  li           t2, 0x0
                  li           tp, 0x80000000
                  li           s8, 0x95094401
                  li           a0, 0x80000000
                  add          s8, a1, s6
                  lui          s6, 956583
                  addi         s6, a0, 815
                  addi         s0, a1, 1858
                  add          a0, a1, t2
                  nop
                  auipc        t1, 209770
                  addi         s6, s8, -1890
                  sub          tp, t2, tp
                  lui          a7, 404619
                  addi         t1, a1, -740
                  addi         s6, a7, 585
                  auipc        t2, 562449
                  auipc        t1, 727766
                  auipc        s8, 588704
                  add          t1, s6, tp
                  addi         a7, a7, -150
                  sub          s6, s0, a1
                  auipc        s8, 271358
                  addi         s8, s8, 1824
                  sub          s6, t3, s6
                  auipc        s8, 420606
                  addi         a0, t2, -571
                  nop
                  auipc        tp, 902824
                  add          tp, a1, a1
                  sub          s8, tp, a0 #end riscv_int_numeric_corner_stream_17
                  andi         a2, a0, -990
                  lui          t6, 247449
                  srai         zero, a6, 1
                  andi         t6, s5, 196
                  slli         s2, tp, 19
                  slti         s0, tp, -2006
                  auipc        tp, 363488
                  ori          s3, s9, 1561
                  addi         ra, s1, 35
                  sltu         s5, ra, s5
                  or           s11, s1, t0
                  srai         s9, s6, 16
                  addi         t1, s7, -908
                  srli         a2, s5, 10
                  srl          gp, a4, s9
                  sltu         t2, t1, t0
                  ori          s2, sp, -1033
                  sltu         t2, t3, t5
                  sltu         gp, t6, a3
                  xor          gp, ra, zero
                  auipc        s8, 510864
                  add          ra, gp, s3
                  add          s11, t5, s2
                  ori          s3, s4, 912
                  sltiu        t5, t1, -914
                  sll          t4, a1, s6
                  xori         s5, tp, -1347
                  and          s8, sp, a1
                  slti         t6, a2, -1623
                  lui          a7, 60647
                  xor          t5, s3, a2
                  slt          t3, a3, s3
                  sra          gp, s3, s8
                  slti         t2, s0, 2012
                  srli         a7, a3, 2
                  sltiu        t3, s7, -1461
                  srl          t1, sp, s10
                  sll          t4, a1, a7
                  srli         s7, a4, 24
                  xori         a5, t3, -64
                  nop
                  add          s7, sp, s10
                  sra          s7, a6, t6
                  srl          sp, s4, gp
                  addi         gp, s1, -993
                  nop
                  slti         ra, t4, 1512
                  andi         a3, s9, 2008
                  add          s4, a6, ra
                  and          s1, s8, a4
                  slti         s1, s7, -1015
                  slt          tp, s8, s11
                  add          t4, a2, s3
                  srai         s9, s11, 28
                  srai         s5, s3, 1
                  and          zero, s10, s9
                  lui          t3, 850750
                  sltu         a0, s7, a3
                  srli         s7, t5, 6
                  srai         t4, gp, 20
                  or           s4, s4, s1
                  lui          a0, 98406
                  sltiu        a7, a3, -1124
                  sltu         s6, zero, s2
                  ori          s11, t4, 1944
                  srl          gp, t1, s8
                  ori          s10, tp, -727
                  lui          gp, 32754
                  ori          a5, s8, 1932
                  auipc        a5, 69931
                  slt          s8, s5, sp
                  slti         s2, a2, 638
                  lui          zero, 964558
                  srl          t5, a4, t4
                  andi         s7, t6, -2036
                  sub          s11, t2, t4
                  slli         s11, a2, 12
                  xor          a3, s2, t6
                  sltiu        s2, sp, 1224
                  slti         t4, s11, -735
                  ori          zero, a3, 80
                  and          s1, s2, tp
                  and          a1, s5, s9
                  slti         ra, tp, 1462
                  xori         a0, s6, 737
                  lui          a0, 904709
                  or           zero, t4, t3
                  slt          t5, a2, a5
                  andi         s8, t4, 1078
                  ori          s7, a5, -322
                  srli         a1, a5, 12
                  srli         s10, s10, 1
                  add          s2, a1, a1
                  xor          s7, t1, a4
                  xor          t6, s7, a2
                  nop
                  srai         t2, a0, 24
                  slt          gp, s8, a6
                  nop
                  auipc        t5, 558714
                  lui          ra, 777160
                  slt          tp, a3, t1
                  xor          s1, t5, a5
                  sltu         s9, s2, a4
                  nop
                  or           s8, a2, sp
                  slt          t3, t2, a7
                  li           a7, 0x5dc17ab9 #start riscv_int_numeric_corner_stream_0
                  li           s11, 0xffffffff
                  li           sp, 0x80000000
                  li           s8, 0x0
                  li           t2, 0x0
                  li           t3, 0xffffffff
                  li           s5, 0xffffffff
                  li           a0, 0xcb8bd80e
                  li           ra, 0x80000000
                  li           a5, 0xffffffff
                  sub          s5, s5, t3
                  lui          s8, 669558
                  lui          ra, 756356
                  lui          ra, 649743
                  auipc        s11, 24573
                  sub          s5, a0, ra
                  lui          sp, 402958
                  addi         a7, a0, -373
                  nop
                  addi         ra, a7, -1278
                  add          t2, s8, sp
                  add          t3, t3, a7
                  lui          a5, 450437
                  auipc        s11, 667838
                  add          a0, sp, a7
                  addi         t2, t2, 1197
                  nop
                  lui          a0, 801494
                  sub          s5, a5, a5
                  lui          t3, 430373
                  addi         a0, t3, -769
                  nop
                  lui          a7, 880442
                  auipc        ra, 282897
                  add          s8, s5, a7
                  addi         s8, a7, 1457
                  add          a0, s11, a5
                  add          ra, a0, s11
                  nop
                  auipc        a0, 4472 #end riscv_int_numeric_corner_stream_0
                  sll          s0, s2, s7
                  slti         s8, a5, 1023
                  auipc        s1, 164063
                  sltiu        tp, s11, -1561
                  lui          a5, 738936
                  xor          t5, a6, s2
                  sra          s4, s11, s5
                  slt          s0, s11, t0
                  sub          s3, t4, a4
                  ori          s3, s5, -152
                  sltu         s4, t0, s1
                  xori         a1, s9, -1845
                  ori          s9, t1, 1654
                  sub          a1, s6, s11
                  srl          s6, t2, t4
                  lui          zero, 844214
                  ori          a5, s8, -1832
                  andi         a2, s6, 1204
                  xor          s1, s2, t1
                  sltu         s0, a7, t6
                  auipc        a1, 953202
                  addi         tp, t4, -1369
                  slti         gp, a3, 1631
                  lui          t3, 477286
                  andi         t5, ra, 937
                  sltiu        a2, a0, 330
                  or           a7, s0, s4
                  auipc        a5, 383112
                  xor          a2, gp, a2
                  slli         s11, s5, 30
                  sltiu        a5, a4, -1752
                  srai         s3, s10, 21
                  xor          a3, t5, s9
                  addi         s9, s1, 2006
                  add          a1, ra, s5
                  slli         t4, sp, 31
                  slti         a7, sp, -98
                  srli         s7, t2, 23
                  auipc        s3, 1031302
                  sltu         s8, ra, t5
                  sltu         t6, s10, t5
                  sra          s7, s6, tp
                  sll          a2, ra, a2
                  sll          sp, a2, s1
                  and          s7, s7, sp
                  and          s10, t2, tp
                  or           s10, a6, tp
                  andi         t6, a3, 233
                  auipc        t2, 449190
                  nop
                  xori         s5, ra, 529
                  andi         sp, s4, 246
                  xor          a7, s1, t3
                  addi         s1, t1, 113
                  srl          s1, t5, t0
                  xor          t5, a3, t1
                  slli         s0, a0, 8
                  srli         a5, t3, 26
                  sub          ra, s10, t6
                  xori         s3, s0, -230
                  sra          gp, zero, tp
                  or           s11, gp, a5
                  sltu         ra, s10, a6
                  ori          a5, a4, -275
                  srl          tp, a0, t5
                  andi         s5, s5, 1852
                  sll          t6, s0, t6
                  sltu         s4, s8, a3
                  auipc        a0, 384653
                  xori         sp, gp, -784
                  xor          t3, s2, s8
                  xor          a5, a4, zero
                  slli         t6, s7, 13
                  slti         t3, s1, -809
                  srai         t1, s0, 25
                  auipc        a7, 252283
                  sltiu        s8, s9, -1524
                  add          s3, s5, a5
                  addi         t2, a1, -890
                  sub          s11, s0, t2
                  nop
                  add          s9, gp, s7
                  srl          t2, s7, ra
                  andi         t2, s11, 736
                  slt          s6, s9, tp
                  slti         a3, s11, -1491
                  slli         s0, a7, 29
                  ori          zero, s5, -1484
                  sub          s3, t1, tp
                  xori         sp, sp, 216
                  and          t5, s6, sp
                  srli         s9, a7, 18
                  srl          sp, a3, a0
                  srl          s10, s10, s10
                  nop
                  andi         s1, s8, -1727
                  auipc        s0, 710388
                  lui          gp, 622222
                  add          a3, a0, a4
                  slti         s6, t3, -835
                  sra          a5, ra, s2
                  slli         s2, a3, 28
                  srl          s8, s7, s8
                  srl          zero, t5, t1
                  sra          t1, s2, gp
                  slt          tp, s6, t0
                  slt          a3, sp, a0
                  srl          s7, a7, tp
                  addi         a0, s9, 254
                  srl          s11, s11, zero
                  sltu         a2, s8, a1
                  sll          s2, s2, s3
                  nop
                  srai         s2, s1, 16
                  xor          s8, tp, s5
                  slt          s11, gp, s5
                  sub          t6, gp, a0
                  slli         a1, s6, 31
                  sll          s3, a3, t5
                  sltiu        a3, t2, 430
                  andi         s7, zero, -218
                  srli         a3, s3, 21
                  xori         t6, a5, 1702
                  nop
                  andi         sp, zero, -1980
                  and          a1, s1, s8
                  add          s10, s5, ra
                  or           t1, s6, s1
                  add          s9, s9, t6
                  auipc        t3, 935422
                  srl          s7, s3, s5
                  slt          s1, a1, s11
                  add          sp, a1, t1
                  xori         zero, t6, -1880
                  slt          a5, s11, t4
                  xor          s11, a0, s2
                  sltiu        s8, s6, 592
                  srli         a7, s3, 16
                  ori          a2, s1, 1032
                  sltu         s11, t1, zero
                  sltiu        t1, t2, 49
                  sltu         sp, s2, s0
                  sub          s6, ra, a3
                  xor          s7, s0, t0
                  slli         s2, s6, 31
                  sub          gp, a1, t2
                  and          s3, s7, a6
                  add          a2, s0, s2
                  sltu         s8, t1, s2
                  sub          zero, s1, t2
                  xori         a3, a6, 172
                  add          t6, s10, s0
                  and          ra, a0, t5
                  srl          zero, t6, t6
                  slti         a7, a2, 661
                  slti         s9, a5, 1526
                  slt          s9, sp, a5
                  or           a3, s7, s11
                  slti         s2, tp, 1571
                  or           s0, s6, t1
                  sltu         s10, s7, t5
                  srl          t3, s11, a6
                  andi         tp, s10, -1196
                  addi         s2, s11, 1753
                  sra          s10, sp, ra
                  nop
                  sub          s7, s8, tp
                  sub          a5, tp, a4
                  sub          ra, s5, t2
                  add          s6, a2, t1
                  srli         s8, a3, 9
                  or           s10, a2, s5
                  xor          a1, tp, s9
                  andi         t4, s0, -599
                  andi         s5, a1, -618
                  lui          a2, 373972
                  slti         zero, a1, -878
                  sub          sp, s11, ra
                  slti         a5, a2, 1691
                  sll          t1, s8, s9
                  xor          t6, t6, s5
                  slt          t1, s8, a2
                  or           t5, t0, a2
                  sll          s8, gp, s1
                  or           zero, s7, s9
                  sub          a2, gp, a5
                  slt          s2, a2, a3
                  nop
                  nop
                  xori         t4, t2, -164
                  and          a5, t2, gp
                  lui          t1, 244233
                  lui          a0, 398868
                  sll          a2, s6, t5
                  add          a0, a4, tp
                  slti         t6, zero, 1206
                  sltu         t3, s6, tp
                  sltu         a5, s3, s5
                  srli         t6, a0, 20
                  slli         a0, a7, 4
                  slt          tp, a1, t6
                  addi         a0, t0, -1211
                  sltiu        s10, a3, -966
                  ori          a1, t0, -611
                  addi         s9, s8, -1906
                  slli         t1, tp, 15
                  sll          t3, s9, tp
                  slt          a5, s3, a4
                  slt          s4, a2, s3
                  srai         ra, s6, 2
                  add          a2, a3, t1
                  srli         s4, s10, 18
                  srl          zero, s7, s3
                  or           s9, a0, s3
                  addi         t2, s1, -1909
                  slt          s4, s11, s3
                  addi         t5, tp, -1451
                  sltu         s10, s3, s6
                  xori         t2, a7, -1426
                  sltu         t6, a7, t4
                  nop
                  sub          s10, t0, s0
                  srai         a0, a6, 26
                  srli         t1, a4, 1
                  or           ra, s3, s6
                  and          s0, gp, t5
                  sub          s7, gp, gp
                  slt          s8, s2, tp
                  and          s3, s7, a2
                  ori          s6, t3, 1513
                  addi         s4, a6, 405
                  xori         t3, s9, 99
                  slt          s3, tp, a4
                  xor          a0, a2, s8
                  sltu         ra, t6, a6
                  lui          s5, 842989
                  sltu         t5, t5, a2
                  lui          s10, 210087
                  srli         t3, s11, 20
                  xor          sp, a1, s4
                  sll          sp, a7, a1
                  sra          t4, a6, s11
                  or           s10, a6, a7
                  auipc        a5, 475257
                  xor          t5, t2, t1
                  srli         a2, a4, 3
                  slli         t3, a6, 21
                  srli         a7, a1, 11
                  andi         s3, s6, 676
                  and          s4, s9, t3
                  add          a7, a6, a1
                  lui          a5, 448515
                  slti         s1, t5, -662
                  srli         s10, s7, 14
                  sra          a0, s4, t5
                  slt          s8, a6, a7
                  srli         t6, s9, 24
                  and          a7, t2, s1
                  nop
                  slli         gp, ra, 22
                  andi         a7, s2, 1632
                  and          tp, s11, s4
                  ori          ra, s3, 641
                  sltiu        s11, sp, -1519
                  xor          s10, a5, a5
                  srl          s10, a3, a5
                  sub          s10, ra, s0
                  ori          s5, s7, 342
                  sra          s2, s7, t3
                  slt          t4, t2, s3
                  or           sp, s2, a3
                  srl          a3, s10, ra
                  lui          s6, 208299
                  addi         zero, a1, -604
                  xor          a1, a0, a0
                  sll          s9, s11, s0
                  or           a0, s8, t6
                  srl          s5, s9, a1
                  or           s0, a3, tp
                  sub          tp, s11, a1
                  and          t4, s7, s7
                  sltu         s11, t0, a0
                  slt          t5, a4, sp
                  sltu         zero, s4, s10
                  xori         s8, s11, -195
                  addi         gp, sp, 1583
                  sll          t5, s2, s3
                  slti         s9, tp, -674
                  xori         sp, t3, 1084
                  sll          s11, t6, a4
                  addi         s7, t2, -161
                  slli         a0, t3, 1
                  addi         t1, gp, -713
                  add          ra, s3, a1
                  sub          t3, t1, s1
                  addi         sp, t6, -7
                  sll          ra, zero, s6
                  srai         sp, sp, 17
                  addi         tp, s4, -718
                  xori         zero, t0, 1436
                  xor          gp, t1, s9
                  srl          t5, a0, s9
                  andi         s2, s2, 240
                  andi         s6, s3, -702
                  srai         sp, t5, 20
                  srl          s6, t3, a3
                  auipc        s0, 571313
                  or           s9, t1, sp
                  lui          t6, 514802
                  sll          t1, s4, t6
                  slli         sp, t2, 25
                  addi         a7, s1, 1227
                  ori          ra, t5, 972
                  sll          s1, a5, a0
                  srl          a2, t1, s11
                  slti         tp, s6, 2028
                  slli         t3, s9, 1
                  srli         s3, a3, 27
                  sra          a0, s1, s0
                  and          s8, t6, zero
                  slli         s10, tp, 31
                  sra          s3, ra, a3
                  sltiu        s8, s2, -947
                  addi         s6, t1, 1566
                  and          s1, t6, a2
                  nop
                  lui          ra, 167171
                  sub          a2, a7, a7
                  sltiu        sp, s0, 682
                  srai         s5, s11, 8
                  sll          s8, s10, gp
                  xori         sp, a4, -985
                  srli         s8, s9, 30
                  srl          s6, a6, sp
                  slt          t5, a0, a0
                  slti         s6, t2, -1417
                  srai         ra, s10, 20
                  srl          s0, s8, a3
                  lui          sp, 688000
                  srai         t5, a4, 24
                  add          s2, a0, a1
                  nop
                  add          s1, s2, t0
                  slli         s10, s11, 19
                  srli         s1, s2, 26
                  sltiu        t6, t5, 1363
                  slli         s7, s11, 10
                  sltu         t6, t2, tp
                  or           a1, s11, zero
                  or           s6, tp, gp
                  sltu         s6, sp, a4
                  slti         s4, a1, 252
                  sltiu        zero, a2, 1165
                  addi         s5, a0, 1564
                  slt          t3, a3, t2
                  nop
                  srli         a0, zero, 16
                  sub          s11, sp, tp
                  srai         s10, t0, 6
                  auipc        s2, 308957
                  nop
                  andi         s7, ra, -1089
                  srai         gp, t5, 5
                  add          a2, t0, a5
                  sll          s3, t5, s1
                  sltu         t2, t4, t2
                  sra          s8, a5, t5
                  auipc        s11, 749988
                  sll          s3, a3, a7
                  sra          t6, s6, s5
                  slti         s4, s3, -734
                  sub          t1, s2, s8
                  add          t1, a7, t3
                  slli         t4, s2, 13
                  addi         t2, a1, 971
                  sltiu        s2, a6, -1079
                  sub          gp, s7, s5
                  slt          s4, a3, s4
                  srai         t5, a7, 13
                  xori         s8, s1, 1775
                  srl          s11, t4, t1
                  slt          s7, a3, s7
                  sltiu        s9, a4, 388
                  or           sp, tp, t6
                  slli         t5, s2, 7
                  slt          tp, sp, s0
                  sll          s11, gp, s11
                  slti         s3, s11, -1523
                  xori         s2, s9, 1842
                  andi         a2, s10, 1241
                  or           sp, t2, s8
                  slti         s1, s6, -966
                  xor          t3, s8, s1
                  srli         s0, t6, 15
                  and          a5, t2, t0
                  lui          a5, 98092
                  srai         a7, t3, 10
                  andi         a0, s9, 1680
                  add          zero, s3, a6
                  ori          s9, a1, -2015
                  srli         s11, s0, 29
                  auipc        s10, 278115
                  nop
                  auipc        s0, 668715
                  sll          s1, gp, t2
                  sll          a7, s2, t4
                  sltu         s8, a2, t6
                  sll          s6, a2, a6
                  srli         tp, a2, 21
                  srli         t1, t5, 17
                  sra          t3, s10, a3
                  ori          s4, a5, -485
                  sltu         zero, a7, s1
                  nop
                  srli         a3, t0, 24
                  sub          s5, a2, s1
                  sll          s10, a3, t2
                  nop
                  and          s2, t5, gp
                  lui          a3, 1038527
                  sll          t1, zero, s4
                  and          a0, a3, s8
                  sra          s4, a4, sp
                  and          t6, a1, s5
                  sll          t5, s2, s4
                  sll          a2, sp, t6
                  ori          a0, tp, -1307
                  and          s6, s5, t4
                  sltiu        t4, a0, -1
                  andi         s1, t5, 1688
                  ori          a3, t3, -1259
                  ori          s11, s11, 665
                  slt          t2, s1, s5
                  sltu         a5, t6, t2
                  addi         a5, s7, 751
                  andi         s7, t0, 1345
                  andi         tp, a3, -2037
                  and          s0, a4, sp
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s10, 0x0
                  li           s2, 0x0
                  li           s5, 0xffffffff
                  li           s7, 0xffffffff
                  li           a0, 0x80000000
                  li           s4, 0x80000000
                  li           a1, 0x9cd2955a
                  li           t5, 0x0
                  li           a2, 0x0
                  nop
                  sub          t5, a0, t5
                  auipc        s2, 494542
                  addi         s4, a2, -85
                  addi         t3, a0, 1199
                  lui          s4, 524032
                  nop
                  auipc        a2, 1003641
                  nop
                  auipc        s10, 129432
                  lui          t5, 260022
                  auipc        s4, 849588
                  addi         s10, a0, -1214
                  addi         a0, s4, -65
                  addi         s5, t5, 459
                  add          a1, s7, s2
                  sub          s10, s2, a1 #end riscv_int_numeric_corner_stream_10
                  addi         s1, s7, -1139
                  slli         s5, s5, 25
                  addi         t2, a3, 1423
                  lui          gp, 466038
                  and          t6, s3, t4
                  add          ra, tp, a7
                  nop
                  sra          s9, s8, gp
                  nop
                  and          t6, t0, s6
                  sltu         t5, tp, s4
                  sub          s3, s9, s7
                  srai         s8, s9, 24
                  nop
                  add          s2, tp, t2
                  srai         s9, a5, 7
                  sra          a7, a7, a4
                  srli         s5, a4, 15
                  slti         s5, t4, 1521
                  addi         s9, sp, 2043
                  nop
                  sra          a2, s6, s2
                  lui          s5, 474833
                  sltu         s1, tp, gp
                  nop
                  ori          s1, a6, -1823
                  lui          zero, 17117
                  srai         s11, s6, 16
                  or           sp, a0, s4
                  nop
                  slti         a7, a6, 377
                  sll          s3, a2, a6
                  add          s3, s11, zero
                  or           s10, a3, a3
                  sra          gp, a3, zero
                  sub          gp, s11, t0
                  ori          a7, s4, 818
                  slli         s7, t3, 12
                  srli         s0, t0, 26
                  add          ra, a0, s7
                  andi         a5, tp, 991
                  srl          a0, t4, gp
                  sub          sp, s7, a4
                  sltu         s6, t0, s4
                  srl          t1, a5, a5
                  sra          s11, s2, s1
                  xor          t3, s8, sp
                  sltiu        s7, a6, 286
                  slt          s9, a4, t6
                  auipc        a3, 574679
                  auipc        a2, 161442
                  srai         a7, sp, 11
                  sub          tp, zero, t6
                  andi         s6, s1, 1093
                  andi         s1, a6, 934
                  slti         a7, t2, -1909
                  and          a7, gp, a2
                  srai         t5, zero, 21
                  sub          t3, s5, s2
                  andi         t6, a0, -643
                  auipc        s2, 145769
                  srli         s9, t4, 4
                  xor          t4, zero, gp
                  slti         ra, ra, -1167
                  lui          t3, 946635
                  auipc        s3, 697408
                  srl          t4, sp, t5
                  srl          t6, a4, s9
                  xor          a2, s0, sp
                  sltiu        s9, a1, -1889
                  sltiu        ra, a3, -470
                  sub          gp, t3, s1
                  xori         ra, s6, -1809
                  sra          s4, t2, a2
                  sra          t1, a3, s5
                  srl          ra, t6, tp
                  sltu         t4, a0, s4
                  or           t5, t2, s3
                  srl          a7, a2, a6
                  srli         s0, s0, 9
                  nop
                  and          sp, s10, s11
                  sltiu        s3, gp, 123
                  ori          s3, tp, -671
                  xor          t6, s8, t4
                  andi         gp, s11, 256
                  lui          t1, 754659
                  add          a7, a7, zero
                  sll          t4, a4, s7
                  add          a5, s5, s3
                  xori         t2, a4, -1975
                  sltu         s4, sp, a5
                  xori         t2, s3, 1561
                  auipc        s4, 43359
                  nop
                  xor          tp, a0, a6
                  slli         a3, gp, 8
                  sra          s3, a3, a7
                  slt          t5, gp, t2
                  or           zero, s2, s10
                  ori          t5, sp, -671
                  xori         s2, a6, 1923
                  xor          t1, gp, s10
                  and          s1, s9, s2
                  addi         t3, s9, -57
                  and          a2, s7, s10
                  slt          s3, s10, s8
                  slli         a5, a3, 22
                  nop
                  slti         t4, gp, 966
                  slti         a0, s10, 1255
                  add          tp, t1, t6
                  srl          a7, a7, s8
                  or           s1, s2, s4
                  slli         t5, s1, 30
                  sltiu        zero, a2, 750
                  and          tp, t3, a7
                  sltu         s11, t3, s1
                  sra          s0, a6, s10
                  sltu         s10, s9, s3
                  ori          t5, s8, -782
                  sra          zero, s9, a6
                  or           s7, a1, t2
                  sll          s6, s7, t6
                  slt          t6, sp, a5
                  and          t6, t0, s9
                  sra          s3, s7, s3
                  and          tp, sp, s2
                  sltu         t2, s9, t3
                  sll          s10, s6, s8
                  sltu         a7, a5, a5
                  auipc        ra, 396985
                  sub          t1, a5, a0
                  ori          t6, t2, -168
                  auipc        a2, 108403
                  sltiu        s10, t6, 1033
                  lui          a3, 1029557
                  srli         a2, tp, 30
                  add          a2, a2, a0
                  lui          t6, 729208
                  xori         s6, t6, 935
                  srl          a7, s2, a6
                  add          s11, t1, s10
                  sub          gp, sp, a6
                  srl          zero, a5, t0
                  srai         a1, s3, 22
                  and          zero, t4, gp
                  addi         sp, a0, 682
                  auipc        s1, 553395
                  sub          a1, zero, t4
                  srai         s5, a7, 22
                  lui          s3, 554838
                  andi         s2, a3, 434
                  sll          s2, s5, t6
                  xori         a3, a2, 6
                  sub          s1, t6, s5
                  srai         s5, s10, 20
                  sltiu        ra, s2, 1862
                  ori          t5, a0, 1042
                  lui          t6, 932629
                  srli         t1, t3, 2
                  xor          a5, s7, s0
                  xor          a0, a2, s6
                  and          s10, t6, s10
                  slt          t1, gp, s2
                  xori         s0, s1, -1936
                  sltiu        s7, s2, 1293
                  andi         t4, s1, 1560
                  andi         s11, t2, 988
                  andi         a7, tp, 1856
                  nop
                  xori         a7, zero, 197
                  sub          gp, a3, t4
                  or           s6, s5, t0
                  auipc        s4, 521894
                  srli         a0, s9, 28
                  srli         s11, a2, 19
                  addi         s0, s1, 485
                  andi         s1, t6, 1845
                  or           s4, a4, a2
                  ori          t4, t5, -130
                  or           sp, s1, t3
                  xori         a0, t3, 606
                  sltiu        t5, t0, -626
                  auipc        t6, 861538
                  srli         s0, t4, 21
                  lui          t6, 836705
                  slti         s10, s9, -351
                  and          a1, s8, a4
                  auipc        s8, 725835
                  sll          s4, s11, a4
                  sra          a3, s3, a1
                  sub          s1, a1, s0
                  xor          s1, a2, zero
                  sra          t3, t0, a1
                  slli         t4, s6, 4
                  add          t6, a0, t2
                  or           s9, s1, s4
                  nop
                  sll          s10, zero, t5
                  ori          ra, s1, 1646
                  ori          a2, s3, -2009
                  add          t2, t4, s7
                  lui          a1, 322701
                  sltiu        sp, s8, 204
                  slli         a0, s7, 1
                  xori         s9, zero, 1872
                  add          s3, s5, sp
                  or           s7, s3, a0
                  sll          zero, s1, s10
                  or           s1, t0, gp
                  or           a5, s8, ra
                  andi         s7, a0, -1172
                  lui          t3, 197245
                  and          a2, s7, ra
                  addi         s8, a7, -1013
                  slti         a5, t6, -1784
                  add          t3, zero, s11
                  and          a5, s6, gp
                  srli         gp, s10, 31
                  addi         s10, s9, -1069
                  sltu         a1, s7, a0
                  lui          s8, 200391
                  slti         a7, t3, 1092
                  sltiu        s9, tp, 673
                  andi         s9, s11, -586
                  slti         a1, s1, 1855
                  sltu         a1, t2, ra
                  sra          sp, t4, a6
                  sltu         t6, t5, a0
                  lui          a3, 756412
                  slli         t3, s9, 4
                  sll          s6, ra, s6
                  add          s11, s10, a2
                  slli         t2, a3, 1
                  sll          s1, t4, a2
                  auipc        sp, 326564
                  sltu         s3, s1, t5
                  xori         s8, a6, 1987
                  xori         t2, zero, -652
                  sll          t2, a5, tp
                  sll          a2, t4, s8
                  srai         zero, s11, 18
                  ori          s4, s11, -1493
                  sltiu        tp, s6, 1052
                  or           s10, s8, a5
                  sub          t5, sp, t2
                  or           ra, tp, a2
                  sltu         t1, s7, a6
                  and          t6, ra, s4
                  lui          s10, 437032
                  auipc        a1, 776909
                  add          ra, t5, gp
                  sltu         s0, s4, a7
                  sll          s7, s1, s9
                  sltu         t4, t0, a2
                  slt          t2, tp, s0
                  auipc        t4, 905092
                  nop
                  sub          ra, sp, s11
                  srli         s1, a4, 26
                  sltiu        a7, t3, 1332
                  srl          s9, a6, a4
                  sltiu        t2, tp, -521
                  sra          t3, sp, a0
                  or           gp, s0, zero
                  sltu         tp, t4, s10
                  sltu         t4, a7, gp
                  and          tp, a0, s10
                  slti         sp, t2, 1760
                  lui          t5, 1026037
                  nop
                  nop
                  lui          s9, 67031
                  slli         s0, t1, 10
                  xori         s1, t1, 22
                  slti         s9, s4, -942
                  xori         s0, tp, -159
                  or           t1, s9, gp
                  sltu         s5, zero, s5
                  andi         tp, s3, 811
                  srai         a0, gp, 0
                  lui          zero, 433273
                  addi         t3, ra, 2023
                  ori          ra, s9, 500
                  srl          s9, ra, sp
                  slti         t3, a2, 250
                  slti         t5, t3, 351
                  srai         a1, s0, 22
                  add          s9, a0, a4
                  xor          s7, t4, a7
                  or           a2, s3, a1
                  srli         t3, s0, 16
                  slti         s7, sp, -278
                  add          a3, gp, t6
                  sltu         t5, a4, s10
                  slti         s3, s10, -442
                  slli         t6, gp, 16
                  ori          t4, s1, -1191
                  sltiu        sp, s5, -242
                  sltiu        ra, t4, 818
                  sra          t5, t4, a0
                  sra          t4, t2, ra
                  slti         t5, t1, -1245
                  ori          tp, a0, -960
                  ori          s6, a1, 25
                  ori          a2, s1, -2001
                  andi         s10, a3, -859
                  and          a3, s1, s5
                  slli         s7, a3, 14
                  slli         ra, t2, 13
                  sltiu        s1, s10, 1618
                  lui          a7, 727715
                  slli         s0, gp, 14
                  sra          a3, ra, s0
                  slli         t2, gp, 9
                  srl          s3, t6, a0
                  srl          s0, a0, s5
                  and          s2, s9, t1
                  or           s11, sp, sp
                  sra          a5, s11, t4
                  sub          t3, t2, t1
                  ori          t5, s7, 53
                  sltiu        sp, s1, 1918
                  add          s0, t1, t4
                  sltu         t6, t2, gp
                  add          s1, t3, a5
                  sltiu        a2, s10, 1099
                  and          s5, a2, a1
                  sub          s7, a1, t5
                  nop
                  xor          a2, gp, a7
                  srai         a5, t0, 23
                  xori         tp, s7, 1652
                  sub          t2, zero, t1
                  srai         ra, a2, 10
                  slli         s6, a1, 30
                  nop
                  slli         s8, tp, 15
                  slti         a5, t4, -1863
                  xor          t1, s3, t0
                  lui          s7, 938823
                  slt          t4, a3, t1
                  ori          gp, s11, -245
                  slti         gp, s8, -12
                  lui          t6, 578014
                  or           s5, s7, t2
                  ori          s5, s3, -458
                  slt          s1, ra, s4
                  srl          t5, s1, s9
                  srl          s2, ra, a0
                  sub          t2, t4, sp
                  srl          t6, s9, s5
                  sltiu        ra, s10, 953
                  sub          t1, sp, zero
                  sltiu        s9, zero, -727
                  and          a5, t6, s9
                  sub          t4, t1, s8
                  and          s6, s0, t4
                  srai         s6, zero, 16
                  slli         s11, t4, 30
                  sltu         t2, s6, s8
                  srl          tp, a1, s5
                  xori         a0, s4, 1556
                  or           a0, t4, s5
                  sltiu        a3, s1, -156
                  auipc        t5, 751516
                  lui          a7, 885105
                  slli         gp, gp, 12
                  srai         s5, zero, 5
                  slli         t3, t3, 10
                  sra          s2, t3, s9
                  xor          zero, ra, s6
                  sll          sp, t2, s1
                  sra          s11, t4, s1
                  sub          a3, s2, s8
                  sra          s0, sp, a1
                  or           sp, s3, a2
                  xori         s8, a1, -1400
                  add          ra, s0, s10
                  xor          s1, a4, s7
                  slli         a5, s5, 25
                  sltiu        a1, a2, -1469
                  sll          s6, t1, a6
                  xori         s8, s10, -845
                  srl          s11, a4, s0
                  sltiu        s2, a1, -1329
                  sll          a0, a7, t6
                  sll          a3, a3, t5
                  slli         a7, a4, 4
                  auipc        a1, 932583
                  or           s8, zero, s1
                  slt          s3, a4, t3
                  slti         s1, t2, 660
                  srai         a0, s2, 27
                  sltiu        a0, t4, 1226
                  sltu         a0, s10, s1
                  xori         tp, s4, 194
                  or           a5, s6, t5
                  srli         ra, tp, 24
                  srai         s6, ra, 16
                  srl          t5, s2, t1
                  srli         s9, s11, 17
                  sub          s7, s5, a4
                  ori          sp, sp, -666
                  slt          s0, t6, t1
                  sltu         sp, t2, a6
                  xor          t5, s3, s4
                  xori         t2, t1, 1647
                  or           ra, t6, s0
                  nop
                  slti         t5, tp, -1307
                  sltu         t3, a7, a2
                  nop
                  ori          t2, s0, -745
                  slt          tp, zero, tp
                  lui          t4, 945612
                  or           zero, ra, a2
                  or           ra, a3, ra
                  slti         s2, a6, 243
                  ori          s8, a0, 72
                  sltiu        s9, s0, -837
                  ori          s1, s1, 194
                  slli         a1, sp, 6
                  auipc        a3, 687199
                  sub          t4, a7, t2
                  sll          s3, a1, a1
                  addi         a5, a6, 895
                  lui          a3, 361328
                  slt          s4, s9, t0
                  srai         t1, ra, 28
                  srl          s8, s2, zero
                  sll          t2, t6, t5
                  slt          sp, t5, t5
                  slt          t6, t2, ra
                  ori          a3, a0, 1540
                  srai         s7, s1, 24
                  srai         t4, t1, 31
                  srl          tp, t2, s5
                  or           s7, a1, s7
                  srli         s10, zero, 29
                  addi         a1, s8, 1483
                  sltu         zero, s9, ra
                  lui          s2, 627818
                  sra          a1, t1, a5
                  auipc        s8, 874699
                  and          zero, s1, t1
                  ori          t1, gp, 1431
                  srai         t1, a2, 27
                  lui          s5, 254257
                  sra          s1, a2, s0
                  slt          s9, s2, ra
                  srl          s4, a6, t0
                  xori         s0, a2, 1493
                  and          t2, sp, a6
                  andi         s4, a7, -1070
                  xor          s10, s5, a3
                  nop
                  auipc        s3, 154115
                  and          t5, a1, a5
                  ori          zero, s10, 1385
                  srl          a5, s2, s3
                  auipc        zero, 617472
                  sub          t5, s9, t6
                  srli         ra, s4, 23
                  sltiu        a3, s10, -263
                  slti         s8, a6, -1098
                  lui          gp, 335510
                  add          t5, s11, s3
                  sltu         t6, s6, a5
                  and          t2, s2, a1
                  lui          zero, 758692
                  slli         s4, t6, 1
                  nop
                  addi         s3, a1, -888
                  srl          a7, ra, s9
                  slti         tp, s2, 1488
                  sub          tp, a5, s0
                  xor          s2, a1, s9
                  slt          gp, t5, t2
                  slti         s0, t4, 1273
                  sltu         s9, tp, gp
                  srl          t4, ra, s6
                  slti         a3, a5, 2030
                  ori          t4, ra, -974
                  sub          a1, s2, t3
                  sll          s4, s6, s2
                  add          s6, t1, t1
                  lui          t3, 1027804
                  xor          t2, s10, s10
                  xori         t3, t0, -519
                  sra          s11, a3, ra
                  slli         t3, s2, 1
                  srl          s2, s0, t5
                  srai         a5, sp, 15
                  add          zero, a6, s10
                  sll          s3, t3, s9
                  addi         s10, t2, 781
                  sll          t3, s8, s2
                  slti         s3, t1, -940
                  andi         a1, t1, -1041
                  or           s3, s10, t0
                  andi         s4, s0, 821
                  srl          zero, zero, s1
                  sra          a3, t5, t5
                  sltiu        a2, ra, -1453
                  ori          t5, zero, -903
                  nop
                  srli         s11, t6, 31
                  srli         a2, s1, 26
                  srli         a3, s6, 6
                  lui          t1, 456922
                  nop
                  sra          s11, gp, s1
                  slli         s4, a2, 13
                  srai         a5, ra, 20
                  srl          a2, s6, t3
                  slti         gp, s1, 52
                  andi         s0, s5, 1955
                  andi         s1, a2, 962
                  srai         gp, a3, 6
                  or           t2, s2, a1
                  and          s3, s3, ra
                  xori         s7, t3, -1732
                  sltiu        ra, zero, -938
                  ori          s3, a7, -956
                  sll          a5, t1, gp
                  sltu         t2, t1, s11
                  slt          s9, s0, t0
                  sub          a5, a3, a6
                  add          s10, s4, a6
                  andi         t1, ra, 1995
                  sltu         ra, s11, t4
                  sra          t3, t6, s1
                  sltu         s6, gp, s0
                  addi         t2, tp, -995
                  nop
                  srli         t5, s10, 17
                  ori          t3, a5, 2009
                  andi         s6, a4, -311
                  and          t5, s10, s8
                  sltu         s8, s4, s3
                  srai         t2, s9, 8
                  add          s0, sp, a0
                  nop
                  srai         s0, s10, 10
                  lui          s9, 104352
                  andi         tp, zero, 597
                  auipc        t3, 295133
                  lui          t6, 996735
                  sub          a1, t1, s7
                  srai         s4, a6, 14
                  xor          a2, a3, a5
                  slt          s1, s11, s11
                  sub          a1, s6, s1
                  srli         s10, s5, 19
                  sub          s7, s11, a5
                  srli         a2, a2, 8
                  srli         a1, a2, 14
                  slli         s1, s2, 16
                  sra          s9, a3, s11
                  andi         t3, a4, -1181
                  srai         t6, t6, 6
                  sltiu        tp, tp, 1457
                  sltu         s3, t5, a4
                  auipc        t4, 974036
                  xori         s2, a6, 1713
                  slti         a0, s4, -1001
                  xori         s3, a6, -217
                  add          gp, a7, t6
                  sltiu        a5, t6, -1039
                  srai         a2, s7, 30
                  andi         t6, t3, -417
                  auipc        s5, 908941
                  slt          s11, t0, s4
                  sra          a3, a1, s6
                  srli         zero, s11, 1
                  nop
                  or           s8, a0, sp
                  sub          a7, s0, t2
                  sltu         a1, t4, t4
                  ori          gp, s4, -1474
                  srli         a5, ra, 6
                  slti         a5, s5, 1464
                  sll          t4, a7, t5
                  srli         ra, s6, 22
                  slli         t6, a2, 6
                  or           s5, s7, gp
                  srli         a1, s3, 27
                  or           a5, s10, s0
                  sub          sp, ra, a4
                  ori          s10, s1, 1864
                  and          s11, a4, s3
                  srli         t2, sp, 16
                  xori         s8, s4, -633
                  and          ra, sp, s5
                  srl          gp, s4, s6
                  xor          s3, t6, t5
                  add          a0, ra, zero
                  nop
                  xori         s4, t3, 833
                  srl          s9, a0, s0
                  xor          a0, s7, t1
                  sub          ra, a3, t4
                  xori         gp, a0, -1309
                  xor          t4, s11, t6
                  lui          s11, 406730
                  slt          s0, s9, a5
                  ori          tp, s9, 1147
                  and          s7, tp, a0
                  and          ra, s6, t3
                  slli         ra, a0, 16
                  srai         s5, s9, 25
                  sll          s1, s4, sp
                  slli         s11, tp, 27
                  sltu         t2, s0, a1
                  slti         s11, a7, 712
                  ori          s10, a2, -924
                  andi         t1, tp, 610
                  sll          gp, s4, s1
                  sll          a7, gp, t2
                  auipc        s11, 179245
                  sub          a5, s8, s3
                  xori         a3, s2, -1747
                  srl          a7, t0, a7
                  addi         zero, s1, -282
                  auipc        s11, 855110
                  sltu         t5, s10, s4
                  auipc        a7, 487635
                  nop
                  andi         t5, t3, -235
                  auipc        s7, 335242
                  xor          s9, t6, s10
                  sltiu        a7, s5, -917
                  or           s8, s7, a4
                  sltu         a7, sp, a3
                  sra          a1, s11, t1
                  nop
                  add          s1, s2, ra
                  addi         s7, a6, -1237
                  sltiu        t3, s0, 867
                  sll          sp, s7, tp
                  add          t6, s3, ra
                  srl          t2, a6, a1
                  srli         tp, a2, 30
                  nop
                  sub          t2, t2, a1
                  or           s0, a7, s2
                  sltu         tp, t0, s9
                  or           s11, s9, t1
                  sll          s4, a4, a1
                  sub          s10, s7, s3
                  addi         gp, a5, -110
                  nop
                  sra          s10, t0, t0
                  ori          s2, s4, -1178
                  srl          s2, s5, t2
                  slti         a1, gp, 13
                  srli         gp, t1, 18
                  add          t4, s8, s5
                  srl          zero, s10, a7
                  sra          s1, t6, a7
                  srl          a3, s0, a4
                  slti         s0, s0, 1375
                  sll          a5, s8, s1
                  sll          t6, t5, a3
                  sltu         a1, s8, t4
                  slt          s1, s5, t5
                  xor          t5, sp, t4
                  and          t1, t1, a3
                  slt          a1, s3, s7
                  xori         s0, gp, 1140
                  and          ra, a5, s4
                  slli         s10, s1, 3
                  srl          s11, t5, a2
                  addi         a5, t6, 1416
                  andi         gp, s8, -946
                  auipc        a0, 337329
                  auipc        s7, 928864
                  sltu         t4, s4, s2
                  nop
                  slti         t6, t5, 1310
                  xori         t4, s9, 1738
                  addi         s7, s8, 539
                  xori         s11, sp, 445
                  sra          s0, a3, s4
                  lui          gp, 692593
                  or           s7, t3, zero
                  srai         zero, a5, 10
                  slti         t6, sp, 1719
                  lui          s7, 459333
                  ori          s7, s2, 708
                  sra          zero, s1, t1
                  nop
                  andi         zero, s3, 1425
                  slli         s0, t4, 31
                  xori         s2, s2, -1911
                  slli         a2, a2, 29
                  addi         s8, s2, 250
                  and          s11, a6, t0
                  auipc        a7, 560893
                  xor          ra, ra, s1
                  slti         a3, a1, 488
                  andi         s1, s10, 1341
                  nop
                  srl          t6, s3, s6
                  xor          sp, s9, sp
                  sra          s0, t5, t2
                  lui          a1, 532539
                  sra          t1, s6, s7
                  andi         t5, a2, -567
                  slt          s2, s0, ra
                  sltiu        t6, t5, -1489
                  nop
                  lui          s1, 453258
                  sltu         s7, a7, s4
                  nop
                  srli         a1, s5, 16
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           sp, 0x77338eb2
                  li           s3, 0x0
                  li           t3, 0x80000000
                  li           a3, 0x80000000
                  li           s11, 0x80000000
                  li           a7, 0x0
                  li           t6, 0x80000000
                  li           a1, 0xb058e155
                  li           t5, 0x0
                  addi         t6, t3, -1675
                  auipc        s3, 895731
                  sub          sp, t3, sp
                  nop
                  add          s3, t6, t3
                  add          a1, s11, t3
                  nop
                  nop
                  add          t5, a7, t5
                  nop
                  lui          a7, 147541
                  addi         gp, s11, 891
                  auipc        s3, 79925
                  auipc        t3, 468284
                  lui          gp, 247579
                  addi         t3, sp, -1725
                  add          t6, a3, sp
                  nop
                  auipc        a3, 143608
                  add          t6, a7, s11
                  addi         a7, t3, 2021
                  sub          t3, a3, a3
                  add          s11, gp, t5
                  sub          s3, a3, t5
                  lui          s11, 591076
                  lui          t3, 378253
                  auipc        a7, 733157
                  addi         t6, t5, 489 #end riscv_int_numeric_corner_stream_12
                  sub          t3, s10, s0
                  addi         t4, ra, 1677
                  auipc        a7, 208794
                  slti         s7, a6, -962
                  slti         t3, ra, 700
                  auipc        a0, 587772
                  and          s1, t1, a3
                  and          s8, s5, s11
                  slti         s10, a1, 1845
                  slli         s2, s8, 21
                  slti         s0, t5, -552
                  sub          ra, s9, a4
                  srai         a7, a2, 31
                  sra          s3, a2, t2
                  auipc        s3, 849321
                  srai         zero, a1, 3
                  slt          t3, s3, s2
                  sltiu        s2, s8, -1563
                  sltu         t2, sp, t1
                  sub          s7, s9, t2
                  slli         a5, s10, 3
                  xori         zero, sp, 594
                  slli         a2, a4, 24
                  srl          s2, tp, a1
                  lui          a1, 247560
                  srai         ra, a7, 12
                  sra          s10, a1, s1
                  slli         a5, a5, 16
                  slt          gp, gp, s1
                  slli         s2, zero, 13
                  andi         ra, s10, 1318
                  andi         a2, a1, -1916
                  sltu         t4, ra, s3
                  srl          s10, t3, gp
                  and          s1, s11, s11
                  slt          s3, s2, s9
                  srl          a5, s0, s8
                  srl          t3, t2, s3
                  auipc        s0, 359836
                  auipc        ra, 38245
                  andi         s4, a1, 1047
                  and          ra, t1, t3
                  andi         s5, a0, -1614
                  and          ra, tp, a2
                  sra          s8, s5, a2
                  sll          s7, t0, s11
                  sub          a2, a2, t5
                  srl          s2, s3, s8
                  and          s0, s2, t5
                  sll          sp, s10, sp
                  sub          s8, s1, zero
                  add          s7, s5, a6
                  sltiu        t3, zero, 864
                  sll          s6, a2, t5
                  slt          a2, t2, s2
                  and          a7, t3, s1
                  srl          s1, s1, s2
                  slli         s7, s10, 15
                  slti         s5, tp, -577
                  sltiu        t1, s4, -129
                  lui          gp, 409100
                  sra          s9, zero, s9
                  sll          t1, s2, zero
                  slt          gp, s4, s5
                  srai         sp, a1, 16
                  sub          s1, tp, s3
                  auipc        t5, 980622
                  andi         a3, t0, 672
                  nop
                  srl          s0, a2, s6
                  sub          s5, s11, t3
                  nop
                  xor          s4, s11, t3
                  andi         gp, a7, 996
                  srli         t5, sp, 25
                  sltu         a1, s8, a0
                  addi         zero, tp, 1726
                  sra          s8, s4, a2
                  srai         s8, s6, 1
                  sltiu        s2, gp, -286
                  slt          gp, a3, s0
                  sltu         s6, s5, s4
                  xori         a0, t3, -845
                  slt          s2, a0, gp
                  sltiu        t4, s4, 1980
                  slt          zero, a5, s7
                  srli         s5, tp, 11
                  sltu         s2, a3, s0
                  sra          a3, t1, s3
                  xori         t2, t5, 925
                  addi         ra, s6, 837
                  xor          ra, a1, t4
                  sll          a7, s3, s3
                  sltiu        a7, a2, -357
                  auipc        s6, 12128
                  slti         s1, t4, -47
                  add          s2, tp, gp
                  lui          s9, 45787
                  xori         s1, tp, -506
                  nop
                  slt          t1, sp, s6
                  xor          a5, t3, t5
                  slt          a2, a7, s7
                  sltiu        a5, t0, -94
                  ori          a5, gp, -309
                  slti         a2, a7, 1565
                  addi         s8, tp, -1762
                  auipc        sp, 824157
                  and          a0, ra, a4
                  srl          a3, gp, s8
                  slt          s0, s2, t2
                  addi         gp, t6, 807
                  srli         sp, t5, 12
                  sra          s8, s11, s8
                  sub          s11, t1, s4
                  addi         a7, t5, 1624
                  nop
                  andi         a0, a5, -1084
                  srl          t3, s11, s0
                  addi         s7, s7, 371
                  sra          t5, s3, s8
                  slli         ra, s11, 18
                  sltu         a7, s11, a4
                  slti         a2, t3, 1895
                  xor          t6, zero, s9
                  srli         t3, s2, 26
                  slti         gp, s2, -1019
                  srli         s8, t6, 13
                  xor          a3, a3, s5
                  slli         s10, s5, 3
                  slti         a1, a7, 1412
                  add          t3, s2, t5
                  xor          t4, t3, s4
                  lui          s11, 313727
                  slli         s2, s3, 19
                  slt          t6, s5, a7
                  sra          t4, a4, a5
                  auipc        t3, 228278
                  or           s2, t4, s11
                  add          a1, t6, s8
                  add          s4, t1, s3
                  slli         a2, zero, 16
                  sltu         s8, a1, s10
                  sll          t4, s11, t2
                  nop
                  sll          ra, a5, a0
                  auipc        zero, 555291
                  and          s9, a7, s3
                  srli         s3, a5, 19
                  slt          sp, ra, a0
                  ori          s10, a0, -927
                  srai         s11, a3, 16
                  srai         sp, gp, 28
                  sltiu        s11, t1, 1087
                  addi         tp, s2, -2044
                  or           s9, s9, s8
                  auipc        t5, 868339
                  srl          a1, s10, sp
                  srai         s2, s3, 9
                  sltu         s8, zero, s7
                  srli         a0, a4, 30
                  srl          s9, s10, a6
                  auipc        a7, 766863
                  slti         t2, s3, -1327
                  sub          gp, s4, s4
                  and          s10, a4, s11
                  sra          gp, a4, sp
                  or           t5, a1, t6
                  addi         s10, s0, 912
                  slli         t2, t3, 23
                  and          tp, t6, s3
                  sub          s10, sp, a1
                  slti         t6, s5, -1493
                  srli         s8, s3, 26
                  slli         s7, t4, 18
                  sub          s2, t3, a6
                  xor          t6, t4, s4
                  slt          a3, ra, a5
                  slti         a2, s2, 746
                  xor          t3, s9, s5
                  sltu         t2, a0, s0
                  or           s2, s9, s2
                  sltiu        t4, tp, 1616
                  xori         sp, t5, -1374
                  andi         t3, ra, -1395
                  sltu         s1, a7, s11
                  xori         a2, t2, 1308
                  slti         a5, s3, -824
                  xori         s9, t6, -235
                  add          s6, t1, s6
                  sra          s1, a4, a5
                  srl          s9, t3, s0
                  and          s8, a5, t6
                  xor          s2, s10, t1
                  nop
                  slt          a2, s4, t2
                  srli         s3, ra, 25
                  andi         a1, s9, -1973
                  auipc        a5, 451784
                  slti         a7, a0, 1145
                  ori          t6, a7, -1228
                  sltu         gp, a0, s2
                  andi         s2, a1, 826
                  xor          ra, t4, zero
                  andi         s11, zero, -1399
                  nop
                  sra          s9, s8, s1
                  sltiu        s4, t1, 1745
                  ori          zero, s8, 1118
                  addi         s7, s7, 351
                  nop
                  sltu         a0, s2, sp
                  lui          gp, 325700
                  slt          a3, a0, s0
                  sub          a2, s9, s10
                  xori         s3, t1, 1945
                  sub          ra, s4, t1
                  xori         s9, a3, -1369
                  sub          t5, s10, s9
                  nop
                  xori         t2, s6, 1219
                  lui          a1, 902592
                  addi         s7, a4, -1524
                  slli         s6, s9, 13
                  or           zero, s1, t5
                  nop
                  nop
                  srli         s2, a4, 7
                  sltiu        a1, tp, 687
                  slli         s5, s1, 9
                  sub          t2, s11, s7
                  slli         t2, t6, 5
                  srl          t5, s7, a5
                  auipc        t1, 162833
                  xori         t1, s4, -1463
                  slli         s2, t4, 9
                  xori         zero, s7, -1963
                  srai         t3, sp, 24
                  srl          s3, a1, a2
                  addi         t3, a3, 1396
                  sub          a0, s11, a3
                  add          t2, t2, a0
                  addi         t2, t1, 1068
                  xor          s11, t2, a2
                  xor          t5, s9, a5
                  lui          a7, 569893
                  sub          t1, s4, t1
                  sll          s6, t3, a0
                  sll          s10, t1, t2
                  auipc        s3, 672034
                  slli         s3, s7, 11
                  sub          s9, zero, s0
                  slt          t6, a6, zero
                  srl          s1, t0, a7
                  sltiu        t4, s6, 1771
                  slti         t6, s1, -1225
                  sub          s8, gp, s8
                  srli         a2, s11, 7
                  ori          gp, tp, -265
                  ori          t4, a4, -368
                  slt          s3, s10, t1
                  sra          s9, s6, s7
                  srli         s0, t5, 3
                  sltiu        s7, s4, 1778
                  add          s6, sp, a5
                  xor          s1, a6, t0
                  sltu         s1, t4, s6
                  slli         s8, a5, 0
                  add          s10, tp, a5
                  add          s11, ra, sp
                  auipc        t1, 77435
                  xori         s1, a3, 1172
                  nop
                  srl          s8, a0, a7
                  srli         a1, ra, 19
                  sra          s9, s7, gp
                  ori          t4, s11, -1770
                  ori          s8, a6, -924
                  srli         s6, s7, 15
                  slti         zero, ra, -471
                  srai         sp, s4, 12
                  sub          s4, t2, t6
                  srai         t1, a3, 15
                  add          s9, sp, t1
                  sltu         s3, s5, a3
                  addi         s8, t3, 2007
                  xor          a5, a2, zero
                  and          t2, a6, s7
                  sltu         s4, zero, gp
                  nop
                  srli         s2, sp, 13
                  auipc        s2, 745656
                  nop
                  and          a3, s11, zero
                  srl          sp, s6, a1
                  srai         a5, gp, 14
                  andi         gp, t4, 1503
                  srl          s8, s10, a7
                  xor          s9, t0, s9
                  addi         s6, s9, -1751
                  and          gp, s7, s8
                  auipc        a3, 1021545
                  xor          s11, t5, s3
                  sll          t1, s9, t0
                  ori          s4, ra, 2033
                  srl          t4, s10, t0
                  andi         s2, s1, -1921
                  and          a3, a6, s0
                  xori         a3, s6, -2000
                  slt          t5, ra, t6
                  slti         s9, a7, 2025
                  addi         t2, a0, 1388
                  lui          a1, 221043
                  slt          s5, s6, t6
                  andi         a2, a4, 108
                  slli         zero, s0, 8
                  lui          a3, 692554
                  lui          a7, 40029
                  slti         zero, t3, 1616
                  srl          sp, s0, gp
                  xori         t4, s10, 1305
                  slti         sp, s9, 1817
                  nop
                  srli         s7, s2, 9
                  sltiu        zero, t1, -154
                  sub          s11, t3, ra
                  sra          t1, s7, t2
                  slti         s11, ra, -1478
                  slt          s10, s2, t4
                  srai         a5, t5, 0
                  srai         s5, s9, 5
                  srl          t4, s6, sp
                  nop
                  slti         s9, zero, -936
                  xor          t3, s4, s5
                  sltu         s5, ra, s5
                  auipc        t5, 399925
                  andi         s2, a6, -1524
                  andi         s7, tp, -475
                  or           a5, t6, t1
                  sltu         t3, a0, s10
                  slt          sp, zero, a6
                  sub          s1, sp, a6
                  slt          t3, t6, t0
                  sltu         s6, a2, s6
                  slti         s3, ra, -1308
                  or           a5, zero, a1
                  sra          t4, t6, s2
                  lui          gp, 1042026
                  add          a5, s6, gp
                  and          t1, s8, a6
                  sltiu        t3, s2, -1170
                  sub          a3, s6, t2
                  sra          zero, s1, t5
                  slti         s2, sp, -1010
                  xori         s6, a4, -1736
                  ori          s10, gp, -1139
                  slti         t3, zero, 556
                  srai         t5, t0, 7
                  or           s4, s7, s8
                  and          s10, ra, t5
                  auipc        a3, 724664
                  ori          a1, s10, -1697
                  sltu         t6, a7, s8
                  srai         t4, s11, 19
                  sll          gp, s7, ra
                  ori          zero, a0, 1935
                  andi         t6, t2, 110
                  addi         gp, s10, -72
                  slt          t3, a7, a2
                  nop
                  xori         s1, zero, -843
                  or           zero, s6, s2
                  slt          t1, tp, s8
                  add          s3, s10, t0
                  nop
                  srai         s11, a3, 30
                  sltu         a7, t4, s11
                  add          s8, s5, t4
                  srli         s9, a5, 15
                  or           a5, t0, t4
                  sltiu        a7, gp, -1068
                  ori          a2, tp, -1433
                  slti         s6, t1, -1614
                  srli         s9, t6, 4
                  slt          zero, a7, ra
                  srl          gp, t4, a5
                  addi         s10, t0, 237
                  slli         a5, a2, 19
                  xori         a3, a7, -1874
                  sltiu        s11, tp, -1689
                  or           a0, s1, s11
                  srl          s3, s0, t6
                  slti         s6, s0, 697
                  slt          t4, t4, a5
                  srl          a3, a2, s10
                  sra          s2, a7, s6
                  sll          s0, a6, s8
                  slt          a5, t5, s10
                  xori         t4, s3, -24
                  slti         a1, s0, -1697
                  sra          a5, s3, s0
                  andi         t5, a2, 925
                  addi         t6, s6, 46
                  sltiu        s6, s3, -1285
                  sltu         a0, a6, s0
                  nop
                  nop
                  slli         t1, t1, 2
                  lui          t6, 287346
                  nop
                  xori         s7, sp, -601
                  andi         s0, a3, 1520
                  and          s0, s4, s2
                  srai         s11, s11, 10
                  slti         s5, s10, 269
                  nop
                  nop
                  or           s9, gp, zero
                  sltiu        a5, a3, -1699
                  and          s6, t3, a4
                  slti         s8, a7, 1056
                  sltiu        a1, ra, -1851
                  sltiu        t5, a4, 1011
                  sra          t6, zero, zero
                  nop
                  slti         a2, s11, 1476
                  auipc        gp, 103377
                  slli         ra, t4, 3
                  xori         a1, t4, -1765
                  auipc        a5, 774624
                  lui          a3, 886930
                  addi         a7, a2, -796
                  lui          t3, 637354
                  add          zero, t6, a5
                  sll          s11, t2, t2
                  srl          s9, s9, zero
                  addi         s11, t5, -1423
                  ori          gp, s8, 1741
                  xor          t3, a3, zero
                  andi         sp, s5, -452
                  sltu         ra, zero, gp
                  slti         t1, s5, -677
                  or           a1, t3, ra
                  sltiu        t2, t3, -290
                  srai         t4, a7, 31
                  and          tp, t5, ra
                  slti         s10, t6, -498
                  slti         a3, a5, -1992
                  slti         s8, a7, 270
                  and          t1, ra, a7
                  sll          s0, s0, s7
                  addi         s6, a5, 492
                  sra          s2, ra, t3
                  ori          a5, a0, 692
                  addi         t3, a2, 1552
                  slti         s4, a6, 374
                  srl          t4, s11, s3
                  auipc        s9, 720074
                  sltu         sp, ra, a1
                  sll          t1, s8, sp
                  sub          sp, s6, a6
                  nop
                  srli         s2, t6, 2
                  auipc        s11, 883733
                  srli         s9, ra, 6
                  add          s5, s1, t6
                  slli         t2, a7, 15
                  ori          s9, a7, -1175
                  slli         t6, s5, 13
                  slti         gp, tp, -375
                  srli         s8, ra, 16
                  sub          a2, t4, s0
                  slt          a5, s7, s11
                  or           s7, sp, a4
                  slt          a1, s6, s10
                  slt          s4, t5, s0
                  slt          zero, a3, s6
                  xor          s4, s6, s1
                  slt          a0, a3, s1
                  sltu         s3, s4, s5
                  andi         tp, t6, -567
                  srai         ra, s0, 19
                  andi         gp, s0, -1753
                  sub          s7, s9, a3
                  sltu         a3, t2, t5
                  nop
                  srli         t4, a7, 28
                  ori          a3, s1, -1724
                  slti         s3, a1, 1138
                  nop
                  slt          t4, t4, a5
                  and          a2, ra, s0
                  srli         s7, t1, 24
                  slli         s10, s3, 24
                  or           t6, s8, t1
                  srai         s6, t6, 11
                  slti         s11, a2, 540
                  sll          ra, s3, a2
                  or           s5, s0, a3
                  sltiu        tp, a1, 910
                  xori         s8, t6, 623
                  nop
                  sltu         a7, s9, s6
                  ori          a0, s5, -266
                  srai         s6, s7, 21
                  auipc        s0, 477803
                  andi         s6, t1, 684
                  add          s7, t1, tp
                  xori         s8, s3, 1305
                  sll          s7, t2, t6
                  ori          s4, ra, -340
                  or           s10, a4, s6
                  srli         s9, zero, 4
                  xor          gp, s5, zero
                  srai         s3, s6, 26
                  addi         s11, s5, 744
                  or           tp, s6, s5
                  xori         gp, t0, 1880
                  or           t6, t5, a3
                  or           s9, t1, a4
                  slli         s4, a4, 26
                  slt          a3, s11, t2
                  sra          t6, t0, a2
                  srai         a3, s3, 11
                  xor          t5, s11, s8
                  and          a1, tp, s0
                  sltiu        tp, s2, -1213
                  nop
                  andi         s3, a2, -381
                  lui          t6, 145271
                  sra          tp, a1, a4
                  sub          a5, s10, a7
                  sltu         s8, s5, a2
                  sub          s7, t3, s7
                  auipc        s1, 155792
                  srl          a2, a0, sp
                  addi         t2, s2, -2030
                  sub          s2, a3, tp
                  srl          zero, a0, s4
                  sra          s4, t4, a5
                  srai         s2, t3, 7
                  xori         s11, sp, -1650
                  nop
                  sra          a3, a1, ra
                  xor          s3, s9, s9
                  xor          s0, t2, a4
                  srli         s7, a1, 25
                  slt          ra, t6, s11
                  sltiu        a5, a7, -1969
                  or           s0, a6, a4
                  slli         s1, t2, 30
                  slli         a0, t5, 30
                  sltu         ra, s0, s2
                  lui          t1, 776107
                  srl          t2, s1, s3
                  srli         a5, t5, 29
                  srai         s7, s6, 7
                  sra          ra, t1, t6
                  auipc        gp, 922144
                  and          s4, s6, t0
                  and          s3, a6, s6
                  ori          s2, s11, 182
                  addi         a1, s7, 733
                  ori          s9, a1, 918
                  sll          ra, s3, s8
                  auipc        s6, 747373
                  sub          s9, ra, t3
                  sltiu        t4, s0, 544
                  auipc        s5, 226007
                  sub          a2, t5, s4
                  nop
                  andi         a2, s10, -1179
                  auipc        s0, 197863
                  slti         s11, s6, -831
                  andi         s8, t0, -671
                  andi         s5, a2, -931
                  and          s0, s7, s6
                  slli         t4, s10, 14
                  slli         s11, s8, 1
                  sltu         zero, t1, s0
                  add          s2, s1, a5
                  slt          s6, s0, s8
                  xori         a5, s6, 624
                  ori          s2, a3, 1473
                  ori          a5, s1, -460
                  slli         tp, a5, 24
                  or           s1, ra, s4
                  sltu         tp, t2, s8
                  sll          tp, a2, ra
                  add          t2, s11, a1
                  sll          s9, s11, t1
                  sub          s10, s11, zero
                  slt          t5, t3, a0
                  sltu         s6, a1, s5
                  sra          a2, a5, s5
                  or           s10, s4, s1
                  ori          a7, t3, -2014
                  and          t2, s1, a4
                  add          s11, t6, s11
                  sltiu        a2, gp, 874
                  auipc        t4, 964620
                  nop
                  srli         t5, s11, 25
                  and          s10, t1, a5
                  sltiu        a1, gp, -1739
                  and          s10, t2, a3
                  xori         ra, a2, 390
                  addi         s10, s11, 1524
                  srai         a3, s4, 6
                  ori          gp, a0, -281
                  addi         s5, tp, 889
                  slli         s9, t0, 20
                  and          t2, a4, t6
                  lui          s7, 311933
                  nop
                  xor          s2, s10, a0
                  xor          t5, s3, ra
                  srai         s2, tp, 5
                  add          a3, zero, s6
                  xori         t1, a0, 1877
                  slt          s7, a0, a0
                  sll          tp, s1, s8
                  srl          a1, ra, s11
                  sltu         t1, t4, t2
                  sra          t6, a2, s10
                  xor          s3, t1, a7
                  sra          a7, s3, t0
                  addi         a3, s4, 353
                  sltu         s3, a1, a2
                  slli         s4, a1, 8
                  andi         a2, a7, 108
                  or           s6, s0, a1
                  srl          a2, a4, a3
                  slt          s3, ra, s11
                  add          s0, a0, t0
                  sub          s0, a6, t5
                  slt          a2, ra, a4
                  slt          s3, a6, s10
                  srli         s4, a5, 12
                  slt          s6, t5, a7
                  srai         s0, t3, 13
                  xor          t5, a1, s11
                  or           s10, t2, t3
                  lui          s9, 813688
                  slli         s1, s0, 26
                  and          s5, a1, tp
                  sltiu        s2, a7, 211
                  srl          t3, s8, a2
                  lui          s5, 243478
                  slti         t6, a6, -1535
                  xor          s0, a2, a4
                  auipc        tp, 433453
                  auipc        a5, 866935
                  ori          a3, t1, -1398
                  srli         s11, t0, 26
                  sltiu        a7, gp, 133
                  slti         s9, s7, -960
                  lui          a0, 265972
                  andi         t5, a0, -1989
                  sll          t4, tp, s11
                  sub          ra, t3, s2
                  sltiu        t6, t5, -157
                  srl          tp, s11, t4
                  xori         t2, s6, 472
                  sub          a7, a7, t4
                  ori          gp, t4, -1533
                  addi         t1, a1, 1050
                  slti         sp, t1, -279
                  ori          s10, t5, 1201
                  nop
                  and          a1, s9, a2
                  slli         a5, t4, 16
                  addi         gp, t2, 1190
                  and          t4, a4, a0
                  slli         s1, tp, 2
                  nop
                  addi         a5, s0, -1551
                  srl          s1, t6, s5
                  sub          ra, t0, s5
                  sltiu        s1, a6, 1350
                  srl          t5, t6, s3
                  andi         sp, t2, 1528
                  addi         s9, t5, -43
                  ori          a3, s10, -102
                  andi         zero, zero, 1781
                  xor          tp, t4, s9
                  slli         s6, a1, 17
                  andi         a1, a7, -2045
                  xor          s6, a0, s8
                  or           s1, s10, ra
                  sltu         tp, s1, t0
                  ori          a0, a6, 2047
                  sra          t2, zero, t0
                  slli         a1, a3, 4
                  xor          s3, t6, s8
                  sltu         s2, a1, t1
                  slti         s1, gp, -591
                  addi         t5, t4, 1086
                  sltiu        ra, t6, -1006
                  slt          zero, s6, s2
                  slti         t4, a5, 947
                  srli         s11, s6, 16
                  slt          t6, a7, zero
                  nop
                  slt          a2, zero, s11
                  sra          s7, s3, a2
                  slt          sp, t5, a2
                  or           gp, a6, s7
                  slli         s9, s6, 8
                  slli         zero, a2, 18
                  sll          s5, t6, a5
                  sub          t4, a5, ra
                  slli         a1, t0, 19
                  srai         s0, s1, 29
                  slti         t5, t5, -1100
                  sll          sp, s4, a3
                  sltiu        s7, sp, 34
                  sltu         t3, gp, t0
                  srl          s11, s5, t4
                  sltiu        t4, a2, -1322
                  slli         gp, s8, 1
                  nop
                  sltiu        t5, s7, -1317
                  xori         s5, s11, -158
                  sltiu        ra, a3, 1978
                  slt          sp, s10, a6
                  ori          s9, s11, -768
                  or           s6, s2, t4
                  ori          t4, t2, -1239
                  sll          ra, a4, ra
                  sltiu        s4, a1, 1946
                  or           s4, a1, t4
                  sll          s0, t1, s3
                  sltiu        gp, a6, -238
                  srl          s2, t5, s7
                  slti         s2, t4, -1144
                  addi         t4, s4, -414
                  xor          s11, a5, s7
                  slti         t6, s6, -215
                  sltiu        s2, s8, 637
                  ori          t4, a4, 659
                  and          s6, s3, s0
                  srl          t5, s3, t5
                  addi         s11, t1, 1147
                  andi         s2, a0, 1070
                  add          s7, t2, sp
                  and          a7, s11, t4
                  auipc        t3, 654285
                  srl          a7, t6, t2
                  sub          s11, a7, a1
                  or           s3, gp, t4
                  sub          a0, gp, a7
                  or           s10, sp, s9
                  nop
                  sub          s1, a6, s7
                  srl          a7, s3, a2
                  nop
                  or           a7, t6, t1
                  srai         s9, t6, 6
                  sll          s10, t5, a3
                  auipc        s3, 689963
                  andi         t3, s6, 1437
                  auipc        s8, 943373
                  srl          tp, a1, t3
                  srl          s0, t0, s2
                  nop
                  sll          t5, s2, a7
                  xori         a1, s2, -2042
                  or           a7, sp, tp
                  addi         zero, a6, 465
                  addi         s2, a3, -208
                  nop
                  sub          t3, s0, a5
                  sra          gp, t5, a5
                  slli         s3, ra, 26
                  sub          zero, a0, s6
                  sltiu        t4, s10, 800
                  nop
                  slt          t5, a2, sp
                  sll          s0, a2, t4
                  slt          s2, tp, gp
                  andi         s8, a2, -1758
                  xor          t1, s2, a3
                  and          t6, a6, s9
                  add          s7, tp, tp
                  sra          a3, s6, a1
                  ori          s7, t4, 372
                  srli         s9, a4, 23
                  sub          a0, a4, s6
                  lui          s9, 186762
                  andi         a1, s9, -1820
                  andi         gp, a7, 61
                  lui          t4, 27874
                  slt          a0, s5, a3
                  sltiu        ra, s7, -850
                  ori          gp, a5, -446
                  lui          t3, 857948
                  srai         a1, tp, 22
                  sll          s7, sp, s3
                  sub          t4, s5, s10
                  slli         t3, s5, 1
                  sltiu        t2, s0, -206
                  ori          sp, t0, -998
                  sll          s3, s10, gp
                  xori         s7, sp, -1188
                  add          t2, s4, s1
                  sll          a5, s2, a6
                  slt          sp, zero, t5
                  xor          s1, a4, s4
                  sll          s10, sp, t4
                  and          s10, tp, a4
                  or           s10, gp, s4
                  srli         tp, t6, 9
                  srli         a5, sp, 14
                  xori         s3, s2, -1289
                  sub          a0, s3, s2
                  sltu         a3, a5, a2
                  and          t4, tp, s11
                  nop
                  slli         s2, ra, 11
                  sra          a0, s0, t5
                  ori          zero, s6, -1608
                  andi         a3, a3, -569
                  nop
                  sub          s7, a7, s3
                  or           a0, t5, s8
                  slli         a7, a3, 21
                  srli         a0, s1, 6
                  srl          t6, s7, s0
                  slti         s3, t6, -1762
                  sub          a2, s3, s4
                  xor          a1, a7, t5
                  auipc        s1, 178698
                  or           ra, s3, t4
                  addi         s6, s5, -759
                  or           a3, a1, s3
                  srli         a2, t0, 29
                  slti         s0, gp, -255
                  sltu         a2, a1, tp
                  auipc        tp, 508116
                  srli         tp, a0, 21
                  slti         s3, gp, 523
                  slti         s0, a5, -629
                  add          a3, a0, tp
                  nop
                  sub          a3, s7, s9
                  auipc        a0, 153781
                  sub          tp, s2, t0
                  slt          s6, sp, s7
                  slt          sp, s6, s9
                  srl          a3, a3, a6
                  auipc        t3, 720468
                  sra          a7, s8, t6
                  sra          a7, s7, s2
                  auipc        a3, 573297
                  srli         tp, t2, 7
                  srl          s1, s6, s2
                  addi         s1, a2, -1824
                  lui          t1, 269743
                  andi         t5, s2, 735
                  auipc        a5, 1044501
                  srli         s0, s2, 14
                  sub          a0, t0, a7
                  srl          a5, gp, s9
                  sltu         a7, ra, t2
                  auipc        tp, 517714
                  slt          sp, s5, s9
                  ori          a2, t5, -1958
                  srl          t2, t4, t5
                  xor          a0, t4, a2
                  srai         s3, tp, 25
                  xor          zero, zero, a6
                  sub          t4, t6, sp
                  xori         a0, s11, 277
                  srai         s11, s2, 20
                  slti         a1, a5, 1339
                  slli         t5, s8, 16
                  sra          tp, sp, ra
                  addi         t5, t3, -534
                  lui          s1, 1001587
                  srl          s3, t4, t0
                  or           tp, s3, tp
                  and          a2, sp, gp
                  slli         s3, s8, 11
                  li           a3, 0x971686a8 #start riscv_int_numeric_corner_stream_13
                  li           a2, 0xffffffff
                  li           s8, 0x93221d8f
                  li           s1, 0x80000000
                  li           s3, 0x1026c876
                  li           s6, 0x0
                  li           a5, 0x80000000
                  li           s10, 0x0
                  li           t3, 0x0
                  li           sp, 0x80000000
                  addi         sp, a3, 1305
                  sub          s3, a2, t3
                  nop
                  nop
                  auipc        s1, 194012
                  sub          a5, s6, s8
                  auipc        a2, 672455
                  auipc        sp, 507152
                  sub          s6, a3, s6
                  sub          s1, sp, s1
                  addi         a3, s6, 687
                  add          s3, a3, s3
                  nop
                  lui          a3, 653634
                  nop
                  nop
                  add          s3, a5, s8
                  add          a5, s8, a5
                  add          t3, sp, s10
                  auipc        a5, 841396
                  sub          s1, a3, a3
                  auipc        t3, 904721
                  add          s1, s10, t3
                  lui          s3, 880219
                  auipc        a5, 707799
                  lui          s1, 464659
                  lui          s3, 926466
                  addi         s10, a5, -1140
                  sub          s1, a5, a3 #end riscv_int_numeric_corner_stream_13
                  nop
                  nop
                  nop
                  srl          s4, t2, s5
                  srl          ra, gp, s1
                  andi         s1, s6, -1926
                  nop
                  slt          s1, t0, a0
                  slt          a0, t6, s6
                  srli         s8, s3, 4
                  sra          t5, a4, a7
                  or           sp, s9, sp
                  sra          a2, s0, a3
                  ori          s7, t5, 1297
                  addi         s8, s5, 2015
                  sub          a0, s9, a7
                  slti         a3, t0, -1429
                  xor          t1, s9, s9
                  addi         a0, a6, -1754
                  andi         s0, sp, -1382
                  lui          t5, 750920
                  slli         s1, s1, 25
                  srl          a5, s5, t6
                  slli         ra, t1, 3
                  xori         a5, s2, 15
                  srli         a7, t1, 27
                  slt          s2, t6, a5
                  srli         gp, t0, 20
                  nop
                  slli         s8, s3, 15
                  sltu         s10, t3, ra
                  srai         s6, a7, 31
                  srli         s5, a0, 4
                  or           t1, s3, a3
                  sll          a5, zero, a3
                  and          s3, s8, a3
                  srai         s1, sp, 14
                  srli         a3, t5, 17
                  sltiu        s1, a3, -133
                  lui          s5, 125277
                  andi         s4, s11, -550
                  and          gp, t2, s9
                  sltiu        t3, t3, 1017
                  andi         s0, zero, 91
                  sltiu        s1, s4, -1059
                  add          t2, s0, a0
                  auipc        sp, 828253
                  sltu         s8, t0, s1
                  and          s2, s0, a6
                  sltiu        s5, s7, -579
                  xori         a3, a0, 1739
                  sra          s0, s9, t0
                  sra          s4, t5, tp
                  sll          a2, a7, tp
                  nop
                  slti         s0, tp, -1926
                  srl          t3, gp, t3
                  srli         ra, sp, 27
                  slt          zero, a7, s10
                  xor          sp, s0, a0
                  sltiu        s3, sp, 1865
                  slt          s8, s7, s11
                  lui          s4, 609513
                  xor          s10, s1, a3
                  auipc        t4, 153057
                  srai         a7, a4, 4
                  srl          s0, sp, t2
                  slli         a3, a4, 1
                  andi         sp, sp, -1179
                  slt          t5, sp, zero
                  xor          t1, t3, s7
                  or           a3, s2, a7
                  sll          t2, s3, s2
                  xori         ra, a6, 1347
                  sub          t6, s10, s4
                  sub          s3, s3, zero
                  sub          a2, s10, t0
                  sltiu        t6, t0, 1374
                  add          t6, sp, sp
                  slli         a7, s8, 29
                  slli         s2, s0, 6
                  nop
                  andi         s8, t2, -1004
                  xor          s6, sp, t5
                  auipc        ra, 932615
                  or           s3, zero, t1
                  slti         s3, t3, 794
                  sll          t5, s8, t6
                  auipc        s1, 226510
                  or           s8, s5, sp
                  addi         s8, s8, -156
                  sltu         s1, s11, t5
                  nop
                  sub          s3, a6, s11
                  addi         t6, s10, -646
                  srl          a0, s10, a3
                  sltu         s7, t2, t3
                  and          s10, t1, a6
                  ori          t1, t5, -1574
                  sltu         t5, s11, s0
                  sra          sp, ra, s7
                  sra          a2, sp, s9
                  xor          s9, t4, s2
                  and          s6, a0, s1
                  sll          s4, a2, s3
                  slti         a7, tp, 1673
                  nop
                  ori          s11, t0, -1208
                  slti         gp, a7, -1437
                  lui          a1, 497215
                  slt          s5, tp, s5
                  slt          s10, s8, a4
                  add          a0, t0, s7
                  and          a7, s3, sp
                  or           sp, ra, s6
                  sltiu        t5, s0, 402
                  sll          s3, ra, s6
                  nop
                  ori          s8, s8, 1058
                  srli         a0, s8, 21
                  slli         s2, s1, 8
                  ori          gp, a1, 332
                  addi         t6, t0, 836
                  srli         a3, t3, 12
                  slli         t1, s9, 12
                  slli         a7, s4, 18
                  add          s6, a5, s0
                  slti         gp, t5, 263
                  xori         ra, t3, 1970
                  sll          a3, t3, s9
                  andi         t5, s7, -1601
                  nop
                  and          ra, s4, t4
                  auipc        zero, 763496
                  addi         t4, sp, -473
                  sra          a7, zero, s8
                  xor          s4, a4, tp
                  andi         t3, s4, 1726
                  sra          ra, t6, ra
                  sll          t3, s3, t1
                  slt          s4, t2, t5
                  or           t4, s8, s9
                  andi         zero, sp, -568
                  sub          s0, t1, t2
                  add          s3, s2, a1
                  li           s6, 0xf683dee4 #start riscv_int_numeric_corner_stream_9
                  li           t5, 0x0
                  li           s9, 0x0
                  li           sp, 0xffffffff
                  li           s8, 0x92619fba
                  li           s7, 0xa7af45e
                  li           a7, 0xffffffff
                  li           gp, 0xd13216b4
                  li           a1, 0x0
                  li           a3, 0x1bee18ac
                  nop
                  add          s9, a3, a3
                  auipc        a7, 681173
                  add          s7, s6, gp
                  auipc        s7, 674001
                  lui          a1, 286285
                  addi         s7, gp, 1507
                  addi         s9, gp, -1523
                  auipc        gp, 363468
                  lui          s6, 538311
                  add          a7, sp, gp
                  nop
                  nop
                  sub          s9, a3, s9
                  lui          a1, 287874
                  lui          s8, 1043120
                  lui          s9, 792405
                  lui          a7, 491692
                  sub          s6, gp, a7
                  add          a7, s9, s6
                  addi         sp, a1, -1546
                  lui          sp, 244420
                  add          gp, s8, s6
                  add          a3, a3, sp
                  add          a1, a1, s6
                  lui          sp, 374750
                  lui          s8, 309218 #end riscv_int_numeric_corner_stream_9
                  or           tp, a6, a2
                  xori         a3, s1, 1697
                  sltiu        a0, s7, -1510
                  sltiu        gp, t2, 73
                  andi         s1, t4, -725
                  lui          s9, 434433
                  slli         s11, s5, 17
                  sub          s3, s2, a2
                  ori          a2, t5, -781
                  nop
                  auipc        gp, 86483
                  slti         s6, s3, 75
                  slt          s9, gp, a7
                  ori          s0, t1, -932
                  andi         s3, a5, -2037
                  srl          s3, s6, s11
                  ori          t2, a3, 1827
                  slli         tp, s6, 25
                  sltu         a1, a7, gp
                  slli         s6, zero, 25
                  and          gp, zero, a0
                  addi         sp, sp, 1601
                  auipc        t4, 731467
                  auipc        zero, 181921
                  nop
                  slli         s10, zero, 19
                  slt          s3, t5, s4
                  sltu         t4, ra, zero
                  srai         t4, s1, 31
                  andi         a2, zero, -1500
                  ori          a3, a5, -926
                  sub          s4, s10, t0
                  sltu         s11, a5, a0
                  xor          s2, sp, s1
                  xori         s0, s6, -1598
                  add          s1, t2, s5
                  lui          a0, 895270
                  slti         s3, s3, 1766
                  srai         s8, a7, 18
                  auipc        t2, 596432
                  ori          s8, t5, 1784
                  sra          a5, t2, s5
                  addi         t6, t2, -1292
                  srli         t4, s3, 25
                  srli         t4, t5, 29
                  xor          t3, sp, t6
                  srai         a5, s8, 0
                  ori          t4, a6, 1252
                  slti         a0, s2, -1196
                  lui          gp, 837638
                  lui          ra, 269302
                  sra          gp, t1, s3
                  slt          a3, s11, s4
                  sltiu        s9, s6, 519
                  srli         t6, s2, 14
                  lui          a3, 121987
                  srl          t3, ra, a1
                  slt          t1, t6, a5
                  slli         a7, sp, 23
                  slt          s11, s5, ra
                  xor          ra, a3, a1
                  ori          s2, t6, 1727
                  srli         sp, s4, 0
                  sub          s1, tp, s6
                  xori         t4, s10, 373
                  xori         s8, t5, -2046
                  lui          a2, 900980
                  slli         t4, sp, 21
                  and          t5, gp, t6
                  srl          s7, a3, a3
                  srli         s1, t6, 0
                  sll          t2, a1, s2
                  sub          gp, tp, a4
                  and          sp, s11, s0
                  and          s4, a4, s5
                  slli         sp, s1, 27
                  andi         s11, t6, -890
                  srli         t2, gp, 15
                  lui          a7, 399863
                  sll          t2, t4, gp
                  and          s8, t4, a5
                  and          s7, t5, t2
                  slt          a0, a5, sp
                  xori         s2, a3, -1055
                  or           s11, tp, tp
                  addi         sp, s1, 1630
                  slti         t5, a0, 1706
                  sltu         s1, t1, s2
                  xor          s7, s7, a6
                  srli         t6, s5, 21
                  srai         gp, t1, 2
                  ori          t4, t3, 591
                  or           sp, s6, s0
                  srl          t4, tp, t6
                  slli         s4, a3, 11
                  sltu         s5, a5, t6
                  sra          t5, t0, tp
                  xori         s11, sp, 1182
                  and          t4, s6, s8
                  srl          s4, t0, t1
                  auipc        s10, 255047
                  or           s10, zero, t3
                  nop
                  sub          s2, ra, zero
                  srai         a2, tp, 4
                  sltu         zero, t2, t4
                  sra          s10, s7, a0
                  auipc        t6, 366739
                  xori         s1, gp, -1063
                  and          t5, zero, a2
                  or           s11, t6, s2
                  or           a0, t0, sp
                  xori         s6, t0, 48
                  add          t4, a2, a5
                  srl          t5, a3, a5
                  sltu         a5, t1, a0
                  srai         a5, t5, 1
                  sltiu        t3, s10, 668
                  srli         t6, t1, 16
                  addi         a3, a5, -1560
                  xor          s8, t4, a4
                  nop
                  slli         sp, a2, 6
                  nop
                  nop
                  add          a0, gp, t4
                  addi         s8, s0, 428
                  ori          s6, sp, 651
                  andi         s9, a5, -1996
                  sltu         s1, a3, a2
                  srai         s4, t1, 21
                  srli         a3, t2, 20
                  sll          s8, t5, s10
                  srli         a7, s0, 20
                  sll          s10, a5, a0
                  addi         t3, ra, 248
                  add          s6, s6, s9
                  and          tp, t3, s11
                  sltu         s3, s4, s11
                  sltiu        a3, zero, -792
                  sub          s7, t4, t2
                  srai         t2, a1, 16
                  sub          s5, t0, a1
                  slti         s1, t1, -960
                  slli         s7, s9, 26
                  srl          s6, t1, t2
                  sra          t2, s0, t6
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           gp, 0x80000000
                  li           s10, 0x80000000
                  li           a0, 0x0
                  li           sp, 0xffffffff
                  li           a7, 0x0
                  li           tp, 0x1e89fd52
                  li           t1, 0x80000000
                  li           a3, 0x80000000
                  li           t3, 0x80000000
                  auipc        a0, 421537
                  addi         gp, a0, 680
                  addi         gp, a3, 1811
                  sub          a3, t3, t1
                  nop
                  auipc        a3, 594586
                  lui          s10, 138340
                  lui          a3, 33432
                  lui          t3, 582491
                  lui          ra, 301630
                  nop
                  add          a3, tp, gp
                  auipc        a7, 325652
                  sub          a0, a3, a3
                  lui          a3, 510164
                  lui          gp, 73068
                  lui          t3, 645677
                  addi         a3, tp, 1534
                  sub          gp, a3, sp
                  nop
                  auipc        ra, 587128
                  add          tp, t3, tp #end riscv_int_numeric_corner_stream_2
                  add          ra, a5, a6
                  addi         t4, ra, -1982
                  srli         ra, a7, 22
                  srai         s2, gp, 22
                  slli         ra, s7, 23
                  or           t2, s5, a0
                  xori         s8, s0, -1886
                  lui          a3, 665940
                  slti         t3, s0, 1688
                  lui          a3, 934341
                  andi         a5, a7, -669
                  add          a7, s8, s0
                  and          gp, a1, a7
                  sltiu        t2, s11, -638
                  sub          t5, gp, s6
                  sra          t1, s8, s0
                  addi         s3, t4, 1850
                  sra          s10, s7, t5
                  sltiu        s6, zero, -1263
                  or           s9, zero, t0
                  auipc        a7, 553698
                  addi         s3, a7, 1525
                  andi         tp, a7, 428
                  andi         s3, t0, 646
                  sltiu        gp, s10, -1499
                  nop
                  srai         s8, ra, 0
                  slti         t4, ra, 1708
                  sll          a2, sp, ra
                  and          a5, s1, a3
                  add          s2, t0, gp
                  sltu         s5, a7, a1
                  sll          a7, s6, a7
                  sltu         t6, a1, a2
                  srl          t2, s6, ra
                  xori         t4, s0, -1523
                  lui          gp, 171262
                  sub          s6, a1, sp
                  add          a0, t4, s6
                  sra          t3, t4, sp
                  and          t2, a0, a0
                  srl          t6, s3, a5
                  andi         t3, s2, 463
                  slt          t6, s11, s11
                  or           s0, ra, s11
                  xori         t5, t0, 1368
                  srai         a7, s4, 9
                  sub          s6, t0, a5
                  srl          s9, t0, s4
                  add          a5, a2, a0
                  srl          a3, a6, a5
                  slt          s1, s2, s2
                  sub          a1, zero, ra
                  andi         s8, s11, -1502
                  nop
                  srli         t5, a7, 12
                  lui          s7, 444772
                  xor          gp, a5, s7
                  and          s5, a4, s10
                  slli         t5, s11, 14
                  add          t4, a6, sp
                  srl          gp, s6, ra
                  add          a7, a2, a7
                  sub          s10, a5, t3
                  sltu         t2, t3, a7
                  sltiu        s0, s2, 158
                  addi         s2, t4, -1202
                  xori         t1, s10, -1885
                  and          s3, a2, s1
                  sltu         t1, tp, s0
                  sll          t3, t5, s4
                  and          a2, a5, s10
                  srli         t1, t3, 7
                  ori          s9, t6, -501
                  slli         t5, t2, 17
                  sltiu        s2, a7, -1302
                  and          s2, s0, a7
                  sll          a5, zero, t1
                  add          t3, zero, t2
                  slli         t3, s8, 14
                  sltu         sp, a0, t1
                  slli         s9, sp, 15
                  slli         s2, s0, 7
                  lui          s8, 774290
                  xori         s0, a2, 253
                  slti         s8, a5, -1183
                  addi         t5, a2, -561
                  sra          a0, gp, t3
                  sltu         a0, t1, s5
                  auipc        a1, 235399
                  andi         t1, sp, 584
                  xori         sp, t1, -5
                  nop
                  andi         ra, s0, 948
                  slli         zero, s7, 6
                  slli         s7, s0, 25
                  ori          t5, s2, -1688
                  srai         t5, gp, 30
                  addi         t1, a6, 512
                  nop
                  sltu         s3, s1, t1
                  sll          t5, gp, s5
                  sltu         a3, t6, t0
                  or           a7, s0, t2
                  add          s10, sp, s4
                  and          s2, s11, a2
                  sra          tp, ra, t1
                  slti         t6, s5, 486
                  nop
                  or           a1, s6, t5
                  sltu         a2, s7, t6
                  auipc        tp, 65742
                  sra          s4, zero, s8
                  add          s11, gp, t4
                  sltiu        t5, s11, -1825
                  srai         t5, t1, 21
                  and          t2, a1, s9
                  xor          zero, a6, s7
                  addi         t3, s1, 1178
                  addi         a3, s7, -83
                  srli         a1, s11, 27
                  srli         s7, a1, 17
                  srli         s2, s2, 8
                  sra          ra, t0, tp
                  slt          s7, a4, s3
                  slli         s8, s6, 30
                  li           s4, 0x61d78155 #start riscv_int_numeric_corner_stream_15
                  li           t6, 0xffffffff
                  li           a1, 0x80000000
                  li           a2, 0x80000000
                  li           s6, 0x80000000
                  li           s8, 0xffffffff
                  li           s11, 0x0
                  li           a7, 0x80000000
                  li           s10, 0xffffffff
                  li           a3, 0xffffffff
                  auipc        a7, 278265
                  addi         s8, s6, -1996
                  auipc        s8, 585335
                  addi         a7, a3, -559
                  add          s6, s11, a1
                  add          a1, s10, a1
                  sub          t6, s10, t6
                  auipc        a3, 1015584
                  sub          s10, a1, s4
                  nop
                  add          s8, s4, a3
                  sub          s11, a3, t6
                  add          s6, a7, s8
                  sub          s10, s8, s4
                  nop #end riscv_int_numeric_corner_stream_15
                  xori         a3, s4, -1488
                  lui          ra, 67387
                  xori         ra, t2, 492
                  sub          a5, s3, s9
                  xori         gp, t3, 374
                  sub          t3, a4, a4
                  nop
                  sltiu        s0, a7, 1211
                  srai         s8, t6, 28
                  add          s10, s4, t2
                  srli         t3, s10, 6
                  xor          s9, s7, s7
                  sub          a1, s11, s5
                  sub          s11, s7, sp
                  and          a1, a0, a7
                  slt          t3, t2, a3
                  sltu         gp, t5, s2
                  ori          s3, t0, -1648
                  srli         t4, a7, 18
                  sll          s7, sp, s2
                  srl          t4, t3, s4
                  auipc        a1, 216632
                  ori          t6, ra, -771
                  and          tp, t2, s11
                  lui          t5, 877848
                  slli         a1, a3, 18
                  auipc        s8, 977391
                  srai         s11, s3, 5
                  ori          a5, a0, 2015
                  slli         a5, a6, 7
                  xori         t2, s7, 1835
                  sltiu        t6, a1, 1091
                  and          s0, t4, t6
                  andi         ra, zero, 470
                  sltiu        a5, sp, -2019
                  lui          t6, 475071
                  srli         s10, zero, 30
                  slt          s3, s2, sp
                  addi         s11, t4, 1290
                  addi         t6, a6, -1101
                  auipc        t1, 49161
                  srl          s11, s11, a5
                  addi         t5, s2, 1812
                  nop
                  add          s5, s0, s9
                  xor          s8, t2, a5
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s6, 0x0
                  li           t4, 0x0
                  li           s9, 0x80000000
                  li           sp, 0xb2dc3279
                  li           s10, 0x80000000
                  li           s4, 0x80000000
                  li           s7, 0x39a1f703
                  li           s5, 0xeeb1d672
                  li           gp, 0x80000000
                  nop
                  auipc        s6, 114148
                  nop
                  lui          s9, 299652
                  lui          s4, 90268
                  auipc        s7, 1045873
                  nop
                  add          s5, s5, s10
                  lui          s5, 423237
                  auipc        s10, 290005
                  add          t4, sp, t4
                  auipc        s4, 569287
                  add          t4, s4, sp
                  add          s9, s10, s5
                  add          s5, s10, s5
                  sub          s7, s10, sp
                  nop
                  sub          s4, s9, gp
                  sub          sp, gp, s5
                  nop
                  addi         gp, s7, -1756
                  add          sp, sp, t4
                  add          sp, s6, t4
                  sub          sp, s10, s5
                  nop
                  auipc        s4, 52415 #end riscv_int_numeric_corner_stream_5
                  xori         t2, a3, -317
                  srl          gp, a4, a2
                  sltu         s8, s6, t3
                  auipc        a1, 105113
                  srl          zero, s5, a6
                  lui          t6, 935462
                  sra          a3, a6, a3
                  sltiu        ra, a4, 878
                  sra          zero, t6, tp
                  auipc        zero, 332362
                  lui          s4, 957300
                  slti         s1, t1, -1934
                  add          s11, a3, t3
                  srli         s8, a1, 20
                  slt          s6, a6, s11
                  slti         s8, t3, 1549
                  or           t3, s2, s4
                  ori          a0, s11, -1334
                  srl          s10, s6, t0
                  sll          t4, t4, s3
                  auipc        s4, 817566
                  srl          tp, t6, s4
                  lui          zero, 531728
                  srl          a1, sp, a5
                  sll          s4, t0, a1
                  sra          a7, s10, s0
                  addi         zero, t5, 1123
                  slli         sp, s5, 11
                  xori         s6, a0, 831
                  sltu         t3, t3, s5
                  srl          s0, gp, a6
                  slli         a3, a4, 5
                  xori         t1, s0, -872
                  sll          s5, t0, gp
                  xor          ra, s1, s10
                  ori          s7, a4, -1437
                  lui          t3, 607702
                  srli         s4, t5, 7
                  add          s1, s9, s11
                  slli         a1, s2, 3
                  sra          s2, a1, s8
                  addi         s9, sp, 525
                  add          tp, a3, s10
                  sra          tp, a0, s8
                  nop
                  or           t3, t2, s0
                  srai         sp, t3, 30
                  slt          t6, a3, t0
                  srli         a3, a6, 26
                  sll          s5, t0, s2
                  auipc        a7, 441542
                  sltiu        s2, gp, 806
                  slt          zero, s2, s0
                  sub          s4, s8, s0
                  srli         s4, s11, 31
                  sll          a1, a4, s6
                  lui          a2, 436174
                  xori         s4, a0, 435
                  slli         a3, a3, 10
                  slti         tp, s1, -1815
                  srl          s9, ra, s11
                  slt          s3, t0, gp
                  or           s0, t5, a1
                  sra          a7, s6, s8
                  and          s6, a7, t4
                  andi         gp, s9, -151
                  andi         a2, s5, -1062
                  lui          t5, 260493
                  slti         s7, s5, 624
                  sra          s10, a5, t5
                  addi         s2, sp, 1307
                  nop
                  auipc        a1, 576772
                  addi         t4, a7, -715
                  and          t1, gp, sp
                  add          s8, ra, t3
                  slli         t2, s3, 6
                  addi         t4, a0, 810
                  lui          s2, 266503
                  srli         a2, s10, 28
                  ori          s1, a7, -1452
                  slt          s5, t5, zero
                  nop
                  andi         a1, t1, -1553
                  sll          t6, t3, a2
                  andi         s5, t1, 1843
                  sltu         s3, s4, s11
                  or           s6, s10, a5
                  srai         s10, s0, 17
                  srai         s0, tp, 14
                  srai         sp, t6, 25
                  and          gp, t1, s5
                  sra          a1, tp, a1
                  sra          t3, s7, zero
                  sub          a1, s7, sp
                  and          s5, s7, a0
                  auipc        a7, 17008
                  slt          t2, t2, s3
                  slli         s1, a0, 29
                  slli         zero, sp, 2
                  nop
                  add          s2, s3, s3
                  sltiu        s7, a3, 1950
                  addi         a1, t6, -602
                  andi         a0, a0, -1540
                  xori         s10, t0, -734
                  add          a2, tp, s6
                  slli         t3, a7, 11
                  slti         t5, s10, 651
                  srli         s6, t2, 17
                  auipc        a1, 640784
                  and          zero, s4, a4
                  slli         t1, sp, 26
                  xori         s11, a2, 14
                  xori         a2, t6, 1635
                  nop
                  slt          a5, a1, ra
                  sll          tp, s4, a3
                  sltiu        s2, s0, -701
                  slli         t2, tp, 11
                  sltu         s2, a2, a6
                  srl          s1, a2, a4
                  sll          s1, s3, s2
                  sltiu        s10, t3, -912
                  add          a5, s9, s6
                  srli         t6, t4, 15
                  sltu         tp, t5, s4
                  srli         t2, t3, 9
                  or           a5, s10, s8
                  srl          s11, t1, gp
                  ori          t3, s4, -451
                  xor          s8, sp, a7
                  nop
                  sltu         a3, s5, s1
                  slti         s11, t3, 273
                  sltu         a7, s4, s0
                  nop
                  sltiu        a2, a7, -1743
                  slti         s7, s10, 1098
                  sub          a7, s0, s1
                  xor          a7, t6, a2
                  ori          t4, a7, 1039
                  srai         t1, t3, 18
                  srl          s1, t5, t0
                  sub          a0, s3, s5
                  addi         ra, t0, 1523
                  and          s11, s5, tp
                  slti         a7, sp, -122
                  srai         ra, s6, 28
                  andi         tp, s1, 1910
                  sll          a0, t3, sp
                  sll          t3, t2, zero
                  slt          s11, gp, a3
                  ori          s10, ra, 1632
                  slli         s6, t6, 27
                  nop
                  slti         s2, t2, 1210
                  sub          t3, s4, s10
                  auipc        a3, 397546
                  xori         tp, t0, 5
                  sltiu        zero, tp, 430
                  sub          t1, s1, s2
                  sltu         ra, s0, t6
                  sub          s7, s10, a7
                  srli         a3, gp, 30
                  sra          s10, gp, a4
                  add          s0, s5, s8
                  sltu         a7, a7, a6
                  add          s9, s6, s11
                  xori         t3, a1, -1540
                  auipc        s1, 156506
                  sll          a7, a7, a6
                  addi         t4, tp, 157
                  and          t5, s1, s11
                  srai         a3, t3, 7
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t3, 0xffffffff
                  li           t5, 0xffffffff
                  li           a7, 0x80000000
                  li           s7, 0x80000000
                  li           s3, 0x0
                  li           t6, 0x80000000
                  li           s11, 0x80000000
                  li           t4, 0xc9799703
                  li           sp, 0xdae7d00f
                  sub          s11, s4, s4
                  sub          s11, s7, s7
                  sub          t4, s11, s3
                  sub          s3, s3, s3
                  sub          sp, s11, t4
                  nop
                  auipc        t3, 92423
                  addi         sp, s7, -1131
                  sub          s7, t5, s7
                  lui          t5, 107507
                  sub          t6, s7, t4
                  auipc        s4, 549455
                  lui          s3, 642060
                  add          t4, t5, t5
                  lui          s11, 1000931
                  lui          t5, 322377
                  sub          sp, t6, sp #end riscv_int_numeric_corner_stream_8
                  and          s4, zero, t3
                  sub          a1, s9, tp
                  slti         s0, s6, -1796
                  and          s7, s6, a1
                  add          a0, a0, a2
                  slli         t2, s9, 27
                  sub          t3, a5, a2
                  xori         t1, t6, 612
                  add          gp, t4, tp
                  addi         s10, zero, 1443
                  add          a1, s11, gp
                  add          a3, a7, a7
                  slti         t2, s6, -1484
                  xor          s7, s8, zero
                  add          s4, a3, a2
                  addi         t4, t3, -218
                  addi         a7, zero, -1256
                  slt          s10, s3, a0
                  ori          a0, s0, 1955
                  addi         t5, s10, 1727
                  or           s11, t2, t4
                  xori         a0, zero, -1887
                  xor          s5, a2, s5
                  srai         t2, gp, 10
                  slti         sp, a4, -1796
                  xor          s6, s7, s9
                  sltiu        a3, zero, -1788
                  sltiu        t5, s8, -139
                  and          a7, s0, a0
                  lui          s11, 394736
                  sll          s9, a3, t2
                  slli         t6, a3, 3
                  nop
                  nop
                  slti         s1, sp, -679
                  sltu         t3, t1, s1
                  slti         a2, a2, 1347
                  xor          t5, a2, zero
                  sub          sp, s3, sp
                  sra          t2, s4, a0
                  srai         s1, t0, 21
                  slti         s4, t6, 1500
                  sltiu        s0, t5, -1027
                  sltiu        a2, a2, 1848
                  and          s2, s3, a3
                  sltu         s11, t4, gp
                  addi         s5, s7, -1589
                  ori          sp, s7, 516
                  and          s9, a3, sp
                  sltiu        s4, t2, -375
                  sltu         t6, sp, sp
                  slti         s8, sp, 508
                  xori         a2, s11, -15
                  sra          t6, sp, t2
                  sltu         s10, s6, a4
                  sltiu        a7, gp, 506
                  ori          t2, zero, 1080
                  or           tp, t1, a7
                  ori          t5, gp, 1765
                  slt          s10, t3, a1
                  auipc        s6, 699474
                  sltiu        a3, t0, 1403
                  auipc        gp, 142108
                  addi         a2, s4, -1875
                  xori         s9, s5, -1771
                  srli         s2, s7, 13
                  srli         t1, s10, 30
                  slt          s6, a2, s3
                  srli         t5, s6, 21
                  andi         s6, s7, -1544
                  sub          a1, a6, s7
                  or           s9, sp, s1
                  sub          s1, gp, a4
                  srli         s8, s8, 19
                  or           s2, t4, a2
                  or           ra, s2, t1
                  ori          t3, s10, -398
                  lui          t6, 543461
                  nop
                  srai         s11, s0, 24
                  andi         s3, s4, -1217
                  nop
                  or           t6, sp, s7
                  srli         a1, a3, 27
                  auipc        s8, 837485
                  xori         t2, s0, 1796
                  sltu         s10, a1, t3
                  addi         a7, a1, 946
                  srli         s4, s5, 30
                  sub          tp, t6, t1
                  lui          sp, 533230
                  sltu         t2, s6, sp
                  sltiu        s11, s5, -762
                  lui          tp, 550906
                  sll          s6, s2, a6
                  ori          a5, a7, 287
                  addi         ra, s9, 1833
                  auipc        s8, 1037930
                  xori         t2, sp, 916
                  or           t4, t5, s3
                  andi         t6, s10, 599
                  slli         t6, s0, 26
                  slli         a3, a0, 18
                  srli         a5, a1, 26
                  sll          t6, a5, gp
                  andi         ra, s1, -1709
                  srl          t5, t0, s7
                  srl          s4, s8, a5
                  srai         s1, t2, 12
                  srl          s5, a1, a3
                  sub          a5, s7, a6
                  slti         s2, s1, 1921
                  or           zero, s4, a4
                  srli         s1, tp, 23
                  srl          tp, a6, s4
                  or           t6, s1, a5
                  or           s4, t3, t3
                  or           s0, s9, a7
                  add          t1, s9, s5
                  addi         t3, tp, 1552
                  addi         ra, s6, 123
                  xori         t1, tp, 498
                  sra          a1, t1, zero
                  srl          s11, zero, s1
                  sra          a7, tp, t5
                  ori          s2, a7, 1926
                  lui          sp, 298113
                  sll          s10, s10, a3
                  srai         s2, s1, 13
                  or           s9, s4, zero
                  andi         t2, t2, -117
                  srli         s4, tp, 2
                  slli         s8, s2, 23
                  or           s3, t5, gp
                  xori         t5, t2, 227
                  or           a5, s6, a6
                  sltu         a3, s6, s4
                  sltiu        s7, tp, 1489
                  xor          s5, tp, a5
                  sltu         sp, s4, t4
                  sra          a1, t5, s8
                  sltiu        ra, t0, 1309
                  slli         s0, t3, 13
                  add          zero, a7, a7
                  auipc        a1, 558025
                  nop
                  addi         s9, gp, 1209
                  lui          t3, 679702
                  addi         s5, s7, -396
                  ori          s9, gp, -157
                  slt          t2, s7, s11
                  lui          t6, 1048249
                  sub          t4, s9, t1
                  sll          s3, t0, s11
                  ori          s2, s7, 1064
                  andi         a7, a2, 218
                  xor          a5, t3, s6
                  slli         gp, s7, 8
                  slt          s2, t4, a5
                  slli         t2, tp, 26
                  srai         t1, a5, 15
                  andi         a7, a4, 839
                  add          a1, s2, s7
                  sltu         sp, t1, a4
                  xor          s4, gp, a5
                  andi         tp, t6, -918
                  ori          s5, s2, -850
                  sll          a2, a0, s3
                  slt          s0, s2, s0
                  srli         t2, s3, 20
                  ori          t1, t5, -680
                  srl          a5, s9, s4
                  slli         zero, t5, 18
                  lui          a0, 828452
                  add          gp, s5, a0
                  sra          a0, zero, a4
                  auipc        s5, 437827
                  srai         sp, s0, 18
                  auipc        s1, 363408
                  srl          t6, tp, t5
                  ori          ra, a7, -353
                  add          s7, s7, s6
                  sub          a7, s7, s10
                  and          sp, a7, s2
                  slt          a3, s9, tp
                  sub          a5, t2, t5
                  sll          gp, t2, s7
                  or           gp, s9, a2
                  andi         s2, t5, -810
                  ori          sp, tp, -708
                  sltu         s6, s9, zero
                  srai         t5, t1, 10
                  srai         ra, s6, 3
                  andi         zero, s9, -1703
                  srai         zero, s8, 24
                  srli         s9, t6, 20
                  slti         s1, t6, 1477
                  ori          s10, s11, -1396
                  xori         t2, s2, -141
                  slti         s10, gp, -1132
                  slt          t5, a6, a3
                  ori          a1, gp, -1549
                  nop
                  slti         a5, a2, -1018
                  srli         t6, ra, 10
                  xor          tp, t5, a1
                  ori          a1, s9, 1080
                  slti         t4, t3, -1558
                  slt          a2, a7, a7
                  srai         t2, s2, 15
                  srai         t3, s7, 19
                  xori         s11, t0, -956
                  srl          a3, a3, a2
                  srl          s5, t0, t0
                  sltu         s3, t3, a3
                  slt          s2, t0, s3
                  srli         a1, tp, 26
                  srai         s10, sp, 30
                  or           s7, sp, t2
                  and          s6, a5, a4
                  ori          a7, ra, -1712
                  nop
                  srl          zero, s2, s10
                  andi         t1, s2, 246
                  andi         ra, s3, -1219
                  srl          s5, a4, t2
                  nop
                  addi         ra, a3, 1505
                  or           s2, ra, t0
                  andi         gp, t3, 1789
                  sltu         tp, s5, a3
                  sltiu        tp, t0, -774
                  lui          s3, 1016003
                  slli         a0, a0, 4
                  sltu         s8, a7, s0
                  sltu         s9, s0, t3
                  ori          a0, t1, 309
                  nop
                  slt          s8, ra, s3
                  lui          a5, 708326
                  nop
                  lui          a5, 671288
                  sltu         a2, s3, t4
                  xor          s0, ra, s0
                  slti         s9, s0, 189
                  xori         s7, s2, 1247
                  and          gp, s6, a0
                  slli         s9, t0, 27
                  add          a1, a1, a5
                  slli         t4, t5, 10
                  xori         s2, a6, -1534
                  nop
                  sub          a2, a2, a7
                  nop
                  sltiu        s3, a4, -1796
                  and          gp, s3, s6
                  sltiu        t4, a2, 445
                  sub          s1, s2, a1
                  sll          a3, t4, t0
                  or           s7, a1, ra
                  sll          sp, t1, t3
                  addi         s8, a5, 1076
                  xor          gp, a1, t5
                  nop
                  sra          a2, tp, s11
                  sltu         a2, s11, s8
                  xori         a1, s5, 1619
                  xori         s1, s4, -1770
                  slt          gp, s0, a2
                  lui          t2, 868822
                  addi         t1, s9, 1264
                  addi         t5, s8, 2031
                  xori         s6, sp, -427
                  xor          a3, t4, t2
                  xori         sp, a4, 882
                  sltu         s10, t6, s7
                  slli         t3, t4, 5
                  and          s11, t1, sp
                  srl          s10, a5, zero
                  auipc        zero, 292377
                  slli         gp, s10, 8
                  andi         a3, ra, 1713
                  addi         s4, a6, -1889
                  sltu         s10, sp, s7
                  addi         t2, s10, 147
                  xori         s9, t5, 1145
                  slli         s11, ra, 6
                  auipc        s10, 137746
                  or           s8, ra, s3
                  slti         a5, t2, 557
                  andi         t5, s8, 1502
                  and          s10, a0, t3
                  srli         t3, a6, 2
                  nop
                  nop
                  sra          t2, t4, s4
                  slt          s0, s0, s2
                  andi         t5, s1, -1944
                  or           t2, s0, s5
                  sltu         s0, s5, s7
                  auipc        s3, 945842
                  nop
                  srai         t2, s5, 28
                  andi         a0, t1, -714
                  nop
                  srli         a0, t0, 25
                  xor          a7, a4, zero
                  xori         s11, zero, -1043
                  srai         s3, a2, 8
                  sltu         s5, s2, tp
                  slti         a0, a1, 749
                  and          t2, a4, a6
                  xori         s0, s5, -83
                  sltu         s10, a1, s8
                  sll          s10, s4, s1
                  slti         s1, gp, 1503
                  lui          t1, 479789
                  sll          a2, t1, gp
                  srli         ra, s8, 17
                  addi         s5, a0, 691
                  sub          s6, s2, t2
                  sltiu        s11, s4, -1187
                  andi         a7, s1, 309
                  ori          a3, t5, -1616
                  slti         s5, s4, 497
                  andi         s8, a3, -1856
                  slli         t1, a0, 27
                  nop
                  or           t1, sp, t0
                  sll          a3, t0, tp
                  sra          a1, a1, s2
                  slti         a0, t1, -1023
                  sra          s6, t1, s8
                  xor          zero, s2, tp
                  andi         a5, s5, 702
                  srli         zero, a5, 19
                  sltiu        s6, t1, -406
                  ori          a2, a5, 46
                  sll          s2, t1, zero
                  srl          a7, s6, a5
                  nop
                  addi         s7, a3, 1049
                  ori          t6, s5, -1045
                  sll          s9, s5, t4
                  and          s0, a5, tp
                  sub          s1, a5, a7
                  sll          s8, a0, zero
                  and          s4, a1, s0
                  or           ra, t4, a2
                  slli         s2, t3, 26
                  sub          s4, gp, s1
                  lui          ra, 662479
                  xor          gp, t6, s8
                  andi         s7, t1, -869
                  xori         t6, gp, 1804
                  addi         t5, t2, 1170
                  lui          s3, 716585
                  slti         s2, zero, -95
                  lui          gp, 319574
                  sub          ra, a0, t1
                  nop
                  sub          s8, sp, s5
                  slti         a1, a5, -381
                  slt          gp, s11, t5
                  slti         t6, a1, -1863
                  slli         gp, s0, 1
                  sra          sp, t5, a4
                  srli         s9, s4, 17
                  sll          a2, s6, s7
                  xori         t1, t6, 322
                  add          s3, a7, a1
                  or           sp, t3, s9
                  sra          s10, s3, t2
                  srli         t3, s0, 14
                  sll          a3, a3, t4
                  sub          a1, zero, s10
                  sltiu        s4, s11, -1163
                  srl          s0, s2, a6
                  ori          a0, s2, 1608
                  sltiu        a7, s1, 1047
                  sll          s7, a2, a4
                  slt          t5, s9, s3
                  and          s5, t3, s4
                  and          a1, t3, s4
                  sltiu        sp, t4, -963
                  xor          zero, t1, a4
                  sll          sp, ra, s2
                  lui          s7, 293512
                  andi         t2, t4, 1645
                  nop
                  and          ra, a2, a2
                  lui          tp, 24220
                  sltiu        a0, zero, 316
                  andi         tp, s4, 1350
                  sub          tp, t0, s0
                  slt          gp, a0, s1
                  andi         s1, s10, 56
                  sltiu        a3, s0, 459
                  and          ra, a6, t5
                  slt          s6, sp, ra
                  slt          a3, s3, gp
                  sra          s9, s10, a4
                  xor          a7, t5, gp
                  sra          gp, s5, a4
                  slt          t1, t4, tp
                  xor          t5, tp, a3
                  sll          t1, s5, t0
                  auipc        sp, 876861
                  lui          s7, 528111
                  andi         sp, a3, 920
                  slti         a2, a4, -920
                  lui          a1, 699760
                  xori         tp, s11, 1652
                  sltu         t2, s9, a0
                  add          s9, s0, s0
                  addi         tp, t2, 1580
                  srli         t2, t0, 11
                  sub          s4, a0, zero
                  srli         a2, ra, 22
                  sltu         s10, sp, zero
                  nop
                  sll          t3, t6, a0
                  sll          s0, sp, s9
                  sll          s9, sp, a7
                  sub          a7, t2, t1
                  srl          ra, sp, s11
                  srli         a3, t6, 23
                  srai         a5, a3, 8
                  andi         s3, gp, -1321
                  xor          s6, zero, s1
                  add          a2, a0, s10
                  xor          a3, a7, s5
                  srai         s5, s4, 8
                  slli         gp, t6, 22
                  xori         a2, t3, 1924
                  sub          sp, t4, s2
                  lui          t2, 941469
                  add          s8, t1, t6
                  addi         zero, t5, 1618
                  sltiu        s8, a4, 1314
                  nop
                  sra          s10, a7, t0
                  nop
                  sub          a7, a5, s6
                  slti         t6, s4, -1103
                  lui          sp, 176563
                  add          s0, t0, t0
                  auipc        a2, 259272
                  xor          s8, sp, t1
                  nop
                  or           s10, tp, ra
                  addi         a1, a7, -545
                  addi         a2, a3, 1186
                  nop
                  slt          gp, t3, a7
                  or           s1, t6, a7
                  srl          s0, a6, t0
                  addi         t6, t6, -664
                  srai         a3, t2, 29
                  slti         s11, zero, -1311
                  sltiu        s8, s11, -665
                  auipc        s2, 551171
                  sll          ra, s11, a1
                  add          t3, tp, s1
                  sltiu        a7, a2, -1097
                  and          t5, a6, s6
                  slli         t4, s10, 7
                  srli         sp, s6, 16
                  srli         t2, t4, 1
                  andi         a0, a3, 1
                  srli         zero, a4, 27
                  slti         zero, a6, -1196
                  srli         s4, sp, 10
                  sll          s6, t4, s5
                  sra          t1, a3, zero
                  srli         zero, s4, 24
                  srl          t1, t2, t5
                  slti         a1, s1, -145
                  srli         a3, s11, 28
                  sltu         a3, t3, s10
                  sub          s4, gp, s5
                  addi         s6, t6, 2021
                  sltu         sp, t3, t6
                  srai         s11, s1, 17
                  addi         s9, sp, -423
                  nop
                  nop
                  auipc        t5, 743980
                  slt          a7, s5, s4
                  srai         t5, s9, 24
                  add          a0, a3, t1
                  slt          tp, s0, a1
                  xor          t5, t4, s8
                  sub          a5, t0, s10
                  lui          a7, 834240
                  sra          s8, gp, t6
                  xor          t4, t3, t4
                  srai         s11, t1, 22
                  srai         s9, tp, 12
                  add          s7, a3, t2
                  slt          a3, t3, s7
                  auipc        s6, 262550
                  nop
                  add          s9, a2, a6
                  sltiu        a2, s1, -1582
                  srai         t4, a1, 4
                  sltu         t5, t6, tp
                  srli         s5, t3, 15
                  andi         tp, a3, 1117
                  xor          a0, a6, s10
                  slli         s10, gp, 23
                  or           s5, a6, t6
                  slt          s10, a3, a7
                  or           s8, t5, a6
                  slli         gp, a6, 31
                  srli         a3, s10, 28
                  slli         t1, a6, 21
                  or           s3, a2, a7
                  slti         t1, t4, 1268
                  srai         a7, s9, 14
                  sltiu        t1, s1, -223
                  and          t5, s2, gp
                  srli         s1, s6, 16
                  auipc        t3, 7984
                  xori         s2, a0, 858
                  slli         s4, a0, 25
                  sub          a7, zero, t6
                  xori         s9, t1, -401
                  add          a5, t5, a2
                  nop
                  sub          zero, s10, a4
                  sltu         s10, a4, s4
                  andi         s5, s8, 1153
                  srli         s6, a3, 20
                  srli         a0, t1, 8
                  sltu         t1, t5, s0
                  srli         ra, t6, 29
                  or           gp, zero, t5
                  and          a7, t0, a3
                  sra          gp, a1, s7
                  slti         s1, s11, -605
                  addi         s3, s10, 779
                  auipc        s11, 613549
                  addi         a7, t2, 1882
                  sub          t3, gp, t4
                  srl          a1, t2, s0
                  nop
                  and          s2, t3, s9
                  sll          s5, s7, s5
                  slli         s6, a0, 22
                  xor          t3, ra, gp
                  andi         s11, t4, -1207
                  sltiu        s6, t0, -1416
                  sltiu        s1, s0, 727
                  slt          s9, a3, a2
                  or           s3, s7, t2
                  sub          s10, a1, s8
                  slti         sp, t1, 697
                  slt          t2, a1, a5
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s10, 0x311b4ef1
                  li           a3, 0x80000000
                  li           sp, 0xffffffff
                  li           gp, 0x80000000
                  li           s7, 0x0
                  li           s1, 0x80000000
                  li           s5, 0x1c227789
                  li           s0, 0x0
                  li           a0, 0x80000000
                  add          a0, s5, gp
                  sub          a0, t6, a3
                  add          sp, t6, s1
                  add          sp, s7, s10
                  add          s0, s0, t6
                  auipc        a3, 818251
                  addi         t6, s0, 348
                  addi         gp, s1, 1041
                  nop
                  auipc        t6, 319415
                  auipc        s0, 167727
                  lui          s10, 735675
                  lui          a3, 361722
                  lui          s0, 481748
                  sub          s7, gp, a3
                  nop #end riscv_int_numeric_corner_stream_6
                  sltiu        a5, t6, 615
                  sll          s10, sp, s0
                  slli         s7, s5, 11
                  slli         s4, s10, 25
                  slli         a2, a6, 24
                  sub          t1, zero, s4
                  srl          zero, sp, s11
                  auipc        a3, 64365
                  sra          s7, ra, a7
                  andi         a7, s11, 1933
                  nop
                  srli         s3, a7, 28
                  srai         zero, t6, 24
                  xori         s2, t3, 1193
                  slti         a0, a2, 1082
                  sub          t3, t4, s5
                  or           ra, a5, s5
                  or           a2, s8, a6
                  xor          s3, sp, s1
                  andi         s10, s5, -637
                  and          s10, ra, tp
                  sub          t6, s2, t0
                  slti         a1, a2, -1553
                  xori         t2, s6, 452
                  or           s8, t5, a6
                  lui          t1, 342413
                  and          s10, t0, s3
                  srl          zero, t2, s2
                  sltu         a2, s7, s5
                  slli         s8, t1, 4
                  slli         t3, s10, 2
                  ori          a7, zero, -1516
                  addi         s8, t4, -1106
                  xori         a1, a1, 1353
                  srl          a7, t0, t1
                  xor          s7, s0, a7
                  lui          t5, 164076
                  sll          t6, s9, s4
                  sra          a7, a3, a2
                  or           s7, s9, a6
                  sra          a2, s0, a6
                  sltu         s8, s10, tp
                  sra          a5, s0, a0
                  xori         a7, s3, 57
                  xori         s8, a7, -221
                  and          t6, a6, a4
                  nop
                  or           s0, a6, t3
                  lui          t6, 299777
                  srl          gp, s11, a2
                  add          s7, s3, s6
                  auipc        a7, 27044
                  nop
                  slti         s9, s10, -212
                  srl          t6, gp, s5
                  auipc        t4, 122895
                  sub          t6, s7, ra
                  auipc        a3, 594393
                  add          a3, a6, tp
                  sll          s0, s8, t6
                  add          t4, s8, s2
                  sltiu        a3, s3, -1683
                  add          a1, s3, a7
                  addi         tp, a2, 1894
                  ori          a7, s10, -126
                  sra          a5, sp, s7
                  auipc        a7, 10688
                  or           s10, gp, a7
                  addi         t4, t5, -809
                  sltiu        s2, a6, -403
                  sub          a1, s11, a6
                  andi         t2, ra, -278
                  andi         s3, a4, 79
                  srai         t5, s1, 29
                  slt          s2, tp, ra
                  or           s5, a7, s11
                  slli         s6, t2, 20
                  add          t2, s10, a6
                  srl          s3, ra, a1
                  ori          ra, s3, -228
                  slti         t2, s5, 1654
                  or           s9, gp, s9
                  srli         s8, t4, 30
                  andi         s5, s11, -1660
                  srli         a2, gp, 25
                  srai         s11, t6, 12
                  slli         s0, s4, 2
                  sll          a7, ra, tp
                  xori         s11, s8, 1243
                  slt          gp, a3, t5
                  lui          s5, 694887
                  addi         s7, t2, 1555
                  xori         s1, t5, -1545
                  sll          s2, s3, t3
                  sltiu        s9, t5, 346
                  slt          s6, s7, t1
                  srli         s8, s6, 18
                  srli         s7, a5, 25
                  sltu         t5, a3, t0
                  xori         tp, a6, -2004
                  srai         a1, s2, 20
                  sltu         s5, sp, s11
                  slti         zero, t6, 1234
                  srl          a5, a6, s1
                  slti         t3, s0, -1398
                  slli         s1, a4, 13
                  and          s6, s11, sp
                  nop
                  xor          s2, t1, s3
                  slt          t1, a7, a7
                  slti         tp, t5, -449
                  or           ra, a2, t3
                  srli         s0, s4, 31
                  xori         a2, s9, -1624
                  auipc        s8, 833214
                  srl          gp, a5, sp
                  nop
                  srai         s8, s7, 23
                  sltiu        s11, s8, -535
                  slti         s11, a1, -821
                  or           s0, a1, a5
                  lui          ra, 705060
                  sll          a7, t0, s5
                  lui          ra, 886671
                  lui          s4, 532765
                  sltu         a7, a0, a0
                  andi         t6, tp, 1787
                  srli         a5, t0, 25
                  lui          a2, 106497
                  nop
                  xor          s0, s0, s1
                  srli         s0, t3, 5
                  nop
                  auipc        a1, 400470
                  or           t4, s1, t3
                  addi         a2, s3, -1445
                  ori          s5, a3, 1811
                  slti         zero, s9, 1061
                  sltiu        s0, a6, 867
                  xor          a5, s9, t4
                  or           tp, gp, t5
                  sll          t3, a0, a0
                  srl          gp, a5, s7
                  srai         t6, s10, 25
                  srli         a1, a3, 27
                  sra          sp, s0, sp
                  srai         s1, s3, 7
                  add          s3, t4, t3
                  xori         tp, s9, 1841
                  xori         zero, s9, 1619
                  xor          s2, a2, t1
                  ori          s11, a1, -454
                  sra          s1, s7, t5
                  xori         a1, t5, 832
                  srli         s4, t5, 15
                  or           s0, t4, a6
                  addi         t4, s5, -1079
                  xor          a2, s4, a6
                  addi         s5, s5, 1629
                  lui          s3, 530164
                  andi         tp, a5, -1138
                  xori         t5, a1, 815
                  sra          a1, s5, s5
                  slt          a0, s1, t1
                  xor          a7, a2, t4
                  andi         a7, t6, 1832
                  and          s2, t6, s6
                  auipc        s10, 712461
                  sra          t6, a5, t2
                  ori          s4, a3, 1512
                  srli         s1, s1, 27
                  sub          s9, a6, tp
                  andi         s6, s4, -1924
                  slti         t3, tp, -392
                  and          a1, sp, t0
                  and          s6, a7, t5
                  lui          s9, 999165
                  addi         t2, s8, -774
                  sra          s4, s2, s5
                  xor          s3, s4, s5
                  sltiu        a0, s1, 35
                  slti         a2, t0, 490
                  slt          t1, t3, s3
                  sll          ra, t1, s4
                  and          t6, tp, s1
                  lui          s4, 527335
                  srli         a5, s2, 18
                  sltiu        a7, gp, 1327
                  slti         s0, s11, -2023
                  sltu         t3, t0, s5
                  sltiu        s5, s1, -711
                  slti         s9, a1, -1096
                  slt          a0, t6, zero
                  sll          s7, ra, s0
                  auipc        t6, 526694
                  sll          s6, t1, t0
                  ori          s6, s4, -1171
                  auipc        sp, 13523
                  add          s0, s6, a0
                  srl          gp, s1, s7
                  addi         a3, s1, 504
                  nop
                  slli         s7, s10, 11
                  sra          s6, t1, s5
                  nop
                  addi         a1, s8, 1678
                  slli         a2, a6, 27
                  srl          zero, tp, s9
                  srli         zero, sp, 30
                  xor          s4, a3, s3
                  lui          a5, 229488
                  auipc        s0, 858110
                  auipc        a2, 643552
                  ori          s5, s11, -1839
                  sub          s11, t3, a2
                  xor          a2, t5, s9
                  and          a3, s5, t6
                  ori          t1, s1, 1831
                  sltiu        gp, t0, -1622
                  slt          tp, ra, zero
                  srl          a2, a6, s5
                  sltiu        a1, s8, 499
                  addi         t6, s0, 1760
                  srai         s0, sp, 7
                  li           tp, 0x15da3451 #start riscv_int_numeric_corner_stream_19
                  li           a5, 0x80000000
                  li           s6, 0xffffffff
                  li           s2, 0x0
                  li           t6, 0x0
                  li           t5, 0x30302322
                  li           s1, 0xc745231
                  li           s0, 0xffffffff
                  li           t1, 0x0
                  li           s11, 0x90e97580
                  lui          s2, 1046325
                  sub          a5, s2, t5
                  add          t5, tp, s2
                  nop
                  lui          s11, 297879
                  add          a5, s6, s6
                  lui          s0, 119347
                  auipc        s6, 877816
                  add          a5, s1, s1
                  sub          tp, s2, t5
                  add          s0, s11, t6
                  auipc        a5, 560786
                  add          a5, s0, t6
                  lui          s2, 329550
                  lui          s6, 1017778
                  add          a5, s1, t6
                  nop
                  auipc        t1, 825778
                  add          a5, s0, t6
                  auipc        s11, 667821
                  lui          s1, 563821
                  add          t6, t6, t5
                  auipc        s11, 812794
                  addi         s11, a5, -688
                  auipc        s6, 723811
                  sub          a5, s1, s1
                  addi         t1, s6, -1566
                  add          t6, tp, s11 #end riscv_int_numeric_corner_stream_19
                  or           t1, ra, a6
                  add          s10, s0, s3
                  andi         a7, s0, -975
                  slti         a5, tp, -2031
                  srl          sp, t2, s7
                  srl          s2, a1, tp
                  sra          s11, s0, a2
                  and          ra, a2, zero
                  srai         s9, tp, 4
                  sltiu        s9, s9, 1659
                  sltu         s5, s5, s2
                  lui          t3, 1026610
                  sra          gp, a2, s6
                  sub          a2, s3, s10
                  sub          t3, a1, sp
                  xor          t2, t4, s9
                  slt          s5, a2, a5
                  srli         s8, a3, 14
                  sub          a0, a5, s9
                  auipc        a7, 60275
                  sra          a2, a7, a1
                  srli         t5, tp, 2
                  andi         sp, t5, -1335
                  ori          sp, s1, 580
                  slt          a1, zero, a5
                  sll          s5, gp, ra
                  or           t2, s5, s7
                  slli         t5, s9, 7
                  auipc        a3, 313630
                  ori          s9, ra, 305
                  xor          s2, ra, a7
                  andi         s3, a5, -2008
                  sra          ra, a7, s9
                  nop
                  sub          sp, s4, t6
                  andi         a0, t6, -705
                  sltiu        s9, s7, 1015
                  sltiu        gp, a6, 1843
                  sll          s5, t3, s1
                  xori         t6, s4, -593
                  addi         s4, t0, 767
                  srai         gp, sp, 7
                  and          a7, a0, s8
                  slt          s5, s11, t1
                  xori         s10, a5, 779
                  ori          t6, tp, 1729
                  srai         zero, gp, 7
                  srai         s7, a7, 22
                  andi         gp, a4, -156
                  nop
                  srai         a7, s8, 22
                  slt          a1, s1, s0
                  nop
                  srli         a1, s9, 7
                  or           s0, s1, a2
                  slti         t6, s11, 1114
                  nop
                  slt          s8, zero, sp
                  slt          s2, a7, a7
                  ori          t1, gp, 288
                  sll          s4, t4, s4
                  ori          sp, s10, -661
                  addi         s2, a5, 337
                  sub          zero, a6, a3
                  sltiu        s2, s3, -920
                  ori          s9, s2, -1098
                  sll          a1, s7, ra
                  or           s2, s8, t6
                  sltu         a7, s2, t6
                  ori          a1, s2, -807
                  slli         a0, a5, 23
                  sll          t1, s1, t6
                  addi         sp, sp, -18
                  sltiu        a3, s10, -1380
                  or           a5, s0, a7
                  xori         s2, s9, 1414
                  slti         t2, t4, -1905
                  sltu         s7, sp, s8
                  lui          a7, 621335
                  ori          a1, t2, 1317
                  sll          s1, t0, s10
                  xori         s3, s8, 996
                  or           a3, s6, a6
                  xori         tp, s9, 1583
                  slli         s0, s4, 25
                  sltiu        a2, tp, 717
                  srai         t3, t5, 2
                  add          t3, a7, a7
                  srai         a0, s6, 9
                  nop
                  addi         sp, a3, 776
                  lui          a0, 166910
                  add          s3, zero, t2
                  xori         s3, t5, 322
                  sub          s0, s3, a0
                  sra          s9, tp, ra
                  add          s6, a4, t3
                  sltiu        a3, tp, -59
                  xor          a7, a6, s8
                  slli         s0, s7, 15
                  andi         a3, ra, 1684
                  ori          s1, s2, -1023
                  slti         s6, s0, 1413
                  srl          gp, ra, s1
                  xor          gp, sp, t6
                  xor          a3, tp, a1
                  srl          a0, a1, s6
                  srl          t2, s0, s9
                  sra          ra, s4, tp
                  add          gp, t6, s11
                  add          s2, sp, sp
                  slli         t1, a7, 12
                  addi         t2, a7, -187
                  slti         s9, s6, 936
                  xor          a7, s7, s6
                  add          a1, gp, t3
                  xor          t5, ra, s7
                  auipc        s6, 500239
                  sltu         a2, s11, s10
                  srli         t5, zero, 7
                  auipc        t6, 487339
                  srli         s4, t6, 29
                  xori         t4, t3, -1725
                  add          s2, a4, gp
                  slli         t4, s5, 6
                  xori         s1, s5, -1904
                  xori         t6, a7, -684
                  srl          t4, s2, s6
                  ori          t5, s4, 1606
                  slti         a0, t6, -582
                  addi         a5, sp, 318
                  addi         s2, a6, -1299
                  addi         zero, s6, -198
                  nop
                  auipc        a2, 610317
                  or           a2, s1, s5
                  xor          a5, t4, s2
                  or           s1, s2, a2
                  xori         s6, s5, 328
                  addi         s2, a3, -820
                  andi         a5, t0, 1796
                  sltu         t3, a5, s4
                  auipc        s7, 608232
                  srai         s3, s4, 19
                  sra          sp, a6, t3
                  slli         s3, s7, 28
                  sra          a5, s1, s1
                  sltu         a5, sp, s7
                  lui          s0, 523963
                  lui          s6, 846124
                  xor          s5, t4, t5
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s6, 0x0
                  li           s2, 0xffffffff
                  li           a2, 0xcd187366
                  li           a0, 0xffffffff
                  li           gp, 0xffffffff
                  li           s8, 0xf184a54b
                  li           s5, 0xffffffff
                  li           t6, 0xfb480c1e
                  li           s7, 0x6c4dbabd
                  addi         t6, s9, -1020
                  sub          s6, a2, s8
                  addi         s9, t6, -1049
                  addi         t6, s2, 55
                  auipc        s7, 882914
                  auipc        s8, 271323
                  sub          gp, s7, s9
                  nop
                  sub          s2, t6, gp
                  nop
                  nop
                  add          s2, gp, a0
                  lui          t6, 434410
                  lui          s9, 962661
                  auipc        s8, 571699
                  add          gp, s8, s2
                  sub          a0, s5, gp
                  add          s5, s2, s7
                  add          s6, t6, s9
                  addi         s9, s6, 636
                  sub          s7, s7, s6
                  add          s5, t6, s5 #end riscv_int_numeric_corner_stream_14
                  srl          s3, zero, a1
                  sll          a7, s6, s9
                  srli         tp, s8, 9
                  sltiu        s1, tp, -420
                  and          t5, ra, s4
                  andi         t4, ra, 929
                  auipc        s5, 277353
                  auipc        a5, 677775
                  ori          a1, s9, 1234
                  addi         s9, gp, -602
                  sltiu        s1, s3, 344
                  addi         t2, a4, -963
                  srl          a0, t3, ra
                  ori          s1, tp, -397
                  xori         t1, s4, -986
                  slli         s6, t4, 31
                  addi         s4, a0, 1152
                  add          s6, t4, s1
                  sltiu        a3, t5, 657
                  xori         a0, tp, 594
                  sll          zero, a6, a2
                  slti         t5, tp, -1318
                  slli         t2, a4, 5
                  sltiu        t6, s0, 1280
                  sltu         a5, t0, s8
                  slt          a3, s4, a3
                  xori         s7, a3, -1688
                  lui          tp, 133931
                  lui          a3, 216878
                  nop
                  sra          s1, s7, s6
                  sll          a3, a1, t1
                  and          s0, a4, gp
                  srai         s1, s8, 8
                  andi         t5, ra, 1256
                  srl          a7, a0, sp
                  srli         s2, a4, 23
                  srli         s11, s8, 0
                  srl          ra, gp, a3
                  addi         s0, zero, -1105
                  slt          s8, a6, a6
                  ori          s6, t2, 762
                  andi         a2, a3, -1873
                  sub          s3, s8, a6
                  srli         a1, gp, 13
                  or           sp, ra, t3
                  addi         s4, s6, -166
                  auipc        s5, 495603
                  slli         a7, a5, 6
                  sub          s9, s8, t3
                  xor          s2, a1, t2
                  slt          s11, a0, t1
                  slli         a7, a2, 20
                  srli         sp, a1, 28
                  nop
                  srli         s6, t5, 1
                  xor          t6, t1, s4
                  sltu         a1, t5, s2
                  and          a5, a4, ra
                  andi         s11, a3, 1605
                  sll          zero, s0, s8
                  slli         t3, s8, 9
                  lui          s4, 940190
                  sltiu        ra, s4, -1642
                  sra          s3, s1, t0
                  slt          s2, ra, a7
                  srl          s6, s6, t4
                  srl          ra, s1, t4
                  srl          sp, s0, tp
                  lui          t5, 502748
                  sub          zero, a3, a1
                  lui          s11, 76308
                  srli         t6, s2, 26
                  xori         gp, t2, -468
                  slt          a3, s0, a0
                  sub          a5, s6, s11
                  sltu         a2, a4, s8
                  auipc        sp, 807976
                  srl          t3, s7, s2
                  auipc        s4, 321262
                  nop
                  nop
                  srai         s2, a7, 10
                  auipc        sp, 670431
                  xor          s7, s2, s7
                  slli         a0, s6, 29
                  slti         a1, t0, -956
                  nop
                  sll          t3, s7, s4
                  sub          ra, zero, s1
                  sll          s1, gp, s5
                  sub          s0, a2, s5
                  xori         t3, s2, 128
                  and          s10, s10, s5
                  xor          a3, a2, s8
                  addi         s8, t0, -1848
                  sltu         a1, tp, gp
                  nop
                  auipc        t6, 799139
                  auipc        s8, 631248
                  srai         a7, t6, 30
                  ori          s6, s0, -1746
                  srl          t5, s2, t6
                  slt          a7, a2, s10
                  lui          a2, 579302
                  auipc        a0, 875560
                  add          s6, t0, t3
                  addi         t2, t2, -1894
                  xor          a7, t6, s0
                  srai         s8, t0, 9
                  addi         sp, t0, -1522
                  sub          a5, gp, a1
                  andi         s10, a1, -701
                  xor          s6, s11, a5
                  slti         s1, s2, 674
                  sltu         s4, s2, a1
                  srl          s8, a5, s1
                  sub          s5, a6, t0
                  sra          s5, a6, sp
                  lui          s11, 713033
                  and          t1, s6, tp
                  sra          a2, s9, t1
                  add          sp, s5, t2
                  sra          s2, t5, a6
                  andi         a2, t0, -1495
                  slt          t1, s11, a4
                  slt          a1, s0, a6
                  or           a0, t2, s10
                  addi         t6, a1, 1081
                  xori         t1, a6, -161
                  andi         s10, s5, 1519
                  nop
                  and          s7, a7, a6
                  nop
                  lui          a1, 507678
                  and          a5, s3, t4
                  sub          s9, gp, t0
                  ori          s1, a6, -1979
                  sra          a2, t4, a7
                  andi         tp, t6, -702
                  xor          a0, t3, s7
                  srli         s0, tp, 19
                  add          a2, a6, ra
                  nop
                  auipc        s9, 321090
                  lui          sp, 985754
                  xor          s1, a1, a1
                  nop
                  srai         s3, t5, 21
                  lui          s10, 103113
                  nop
                  sub          sp, a4, t2
                  add          s6, s3, s11
                  sll          s0, t2, t5
                  auipc        a2, 687099
                  sra          s1, s9, s7
                  nop
                  xor          t4, s7, s11
                  srl          t4, s4, a6
                  lui          s10, 120601
                  srli         zero, zero, 18
                  lui          s5, 1046628
                  srl          a5, s0, t5
                  addi         s9, t4, -565
                  slti         s10, t5, 379
                  srai         a0, a5, 25
                  slti         s0, t6, -834
                  add          sp, t0, t2
                  sra          t3, sp, a4
                  slti         s5, t0, -1587
                  sltiu        s1, ra, -1558
                  xori         s11, a3, -1292
                  slti         s7, ra, -357
                  xori         t1, tp, 512
                  or           a0, ra, s5
                  and          t3, t0, s1
                  slti         a7, s11, 795
                  xor          s3, s8, t3
                  sll          t2, s0, a0
                  sltiu        s5, a4, 309
                  xori         s5, a6, 1252
                  auipc        t5, 48035
                  sra          t2, t4, a3
                  srli         t5, a4, 18
                  andi         s2, a5, 70
                  sra          a5, tp, zero
                  sltu         t2, tp, s8
                  sub          s6, s9, s5
                  xor          a2, sp, s1
                  sra          s7, s1, t4
                  sra          a2, t6, s0
                  add          a2, t6, s11
                  slli         s11, s7, 31
                  srai         t2, t4, 9
                  addi         a3, s11, -1942
                  xori         a2, tp, -158
                  and          t1, ra, zero
                  ori          s6, t2, -2024
                  sltiu        s1, s11, 1037
                  lui          s11, 171047
                  add          t1, t4, a7
                  slt          ra, t5, t3
                  srli         t5, a4, 8
                  slt          t4, a6, a1
                  sub          s10, a7, tp
                  or           a1, s5, a6
                  sltu         t6, sp, a7
                  srl          s11, ra, s1
                  and          a5, t6, t6
                  lui          s1, 93143
                  sltiu        a5, t1, 323
                  srai         a0, s6, 14
                  sll          s0, sp, a7
                  sub          t1, s6, sp
                  srli         a2, t5, 7
                  srli         s9, t3, 18
                  srai         s1, s4, 19
                  sll          t3, a2, tp
                  xor          s0, a5, a7
                  auipc        a0, 365097
                  srl          ra, a7, a7
                  or           a5, a6, s9
                  sll          sp, t0, a5
                  srl          ra, t2, s11
                  sra          s6, a5, s3
                  slti         t5, tp, 1544
                  andi         s1, t6, -855
                  ori          s7, a2, -1764
                  srli         a0, s3, 17
                  sub          a1, a7, s3
                  slli         s10, s6, 15
                  sltiu        s10, s10, 1687
                  sll          s8, t6, s8
                  xori         tp, t1, -155
                  sll          s8, s6, ra
                  sll          t2, sp, t3
                  srai         gp, zero, 22
                  srai         t6, a6, 17
                  add          a5, a0, s9
                  xori         t6, s10, 558
                  xori         a1, a6, 1591
                  ori          a1, a7, -1145
                  xor          t3, a1, s3
                  slli         a7, s2, 31
                  auipc        ra, 187052
                  srai         zero, s8, 14
                  srai         s11, a5, 16
                  srai         tp, a4, 14
                  srai         a3, s8, 0
                  sltu         s4, t5, s5
                  sltiu        s5, t5, 435
                  add          s0, s10, s6
                  ori          sp, s10, -279
                  ori          s8, t3, 212
                  sub          t1, t4, s1
                  srli         zero, a7, 26
                  or           tp, t0, a5
                  xor          t1, t6, s1
                  sll          t6, a7, zero
                  sltu         s2, s10, s3
                  sltu         a2, t6, s7
                  sub          a3, s9, a7
                  slli         s9, s11, 7
                  sltu         zero, t1, s11
                  slli         t6, s3, 15
                  or           s4, a0, a0
                  add          zero, s11, a3
                  sll          gp, t6, sp
                  auipc        s0, 914099
                  slti         s9, s3, 295
                  nop
                  add          s11, s6, t0
                  sra          s4, s6, s0
                  andi         s5, ra, -1451
                  xor          a3, a3, s10
                  addi         a3, t2, 1816
                  slt          a0, zero, t1
                  add          gp, s9, s3
                  xor          zero, a1, s4
                  addi         s5, t4, 140
                  auipc        s11, 224925
                  add          t1, s0, a3
                  slt          t3, s4, zero
                  auipc        s10, 473438
                  and          t5, s5, a0
                  auipc        s0, 449669
                  sub          s2, t5, s10
                  ori          a5, s3, 1327
                  sll          gp, s11, ra
                  srai         a7, s2, 11
                  ori          s3, a6, -915
                  nop
                  sub          a2, a2, t6
                  sltiu        t2, t1, 1199
                  sra          t1, s11, s2
                  slt          gp, tp, t4
                  slli         a7, gp, 21
                  sub          s3, s11, gp
                  or           tp, s4, ra
                  sub          gp, a3, a2
                  sra          tp, gp, s4
                  sra          s8, a0, s4
                  or           a3, sp, a7
                  sub          s8, t5, zero
                  ori          a7, s6, 394
                  sltiu        t5, zero, 567
                  lui          s0, 295109
                  sltiu        s8, t4, -663
                  and          s9, s8, s5
                  nop
                  sll          a7, s5, a5
                  addi         s1, a4, -1806
                  ori          s2, s5, -561
                  sra          s4, a7, zero
                  srli         s3, t6, 16
                  sltu         t1, gp, s1
                  sub          s10, ra, a7
                  srai         a3, s8, 5
                  xori         t6, s4, -1735
                  slli         a2, s1, 14
                  slt          a1, a0, a7
                  srli         s3, t5, 12
                  slli         t6, s3, 21
                  slti         tp, a0, 1932
                  auipc        s8, 37834
                  and          s6, a7, t2
                  auipc        s2, 443304
                  addi         s2, s4, -1354
                  nop
                  slti         a7, gp, 1887
                  andi         a2, s0, 1430
                  slt          s8, t3, zero
                  add          s1, a4, t1
                  sll          s11, s5, a2
                  xori         s1, s2, 83
                  srl          t3, t2, a0
                  addi         a5, s7, 17
                  sll          t1, a3, gp
                  addi         s11, s3, -560
                  xor          s8, s9, t1
                  srai         t2, a7, 10
                  and          t5, a3, a2
                  srai         s5, a6, 7
                  srl          t2, s10, s2
                  srl          t2, a0, s11
                  ori          s3, a5, -37
                  xori         s8, t3, -519
                  addi         tp, a5, -1079
                  ori          t3, t5, 1309
                  sltiu        s1, s11, 1276
                  and          s8, t5, s5
                  slti         s8, tp, 2017
                  add          t1, s11, s11
                  add          s7, s1, sp
                  xor          a3, s10, a6
                  xor          t6, a6, s10
                  andi         s2, zero, 1873
                  add          tp, sp, a5
                  lui          t6, 263436
                  xor          t4, a2, a3
                  sll          a3, gp, s7
                  sub          s4, a1, t6
                  auipc        t1, 1015576
                  auipc        s2, 287168
                  auipc        s6, 910184
                  slt          zero, s11, s5
                  srai         s3, a7, 31
                  slli         a5, t0, 1
                  or           t4, t3, s3
                  sra          ra, t1, sp
                  ori          a2, s5, -1291
                  or           a1, tp, s3
                  sub          t4, a2, s7
                  srai         a5, s9, 8
                  sub          a5, t4, s0
                  srli         a1, t3, 6
                  ori          s7, a4, -1096
                  or           a3, s7, a2
                  sub          t6, a2, s2
                  and          a1, s4, s8
                  sra          t6, s11, t6
                  add          t5, a0, s10
                  xori         s11, s4, 1588
                  sra          a3, t6, t1
                  sub          gp, gp, sp
                  srli         gp, s3, 28
                  srai         s11, t3, 31
                  slt          a3, t2, t2
                  lui          a5, 751020
                  srai         a5, s10, 21
                  slti         t3, a2, -1537
                  slti         s5, t0, 669
                  sra          s4, a7, t1
                  srli         s10, a0, 4
                  xori         s7, ra, -611
                  srl          ra, s1, s9
                  andi         t6, a0, -1092
                  sub          t1, a5, a7
                  srl          a0, gp, s11
                  xori         s2, a2, 2024
                  auipc        s5, 340221
                  lui          zero, 751150
                  sll          t6, a2, t6
                  nop
                  slli         a5, s3, 5
                  slti         s11, s2, -765
                  nop
                  sra          s2, s4, s2
                  slti         s5, t6, 2027
                  ori          s10, a5, 1774
                  slt          s11, t5, t3
                  lui          t3, 306506
                  sll          ra, a2, ra
                  sltu         a2, s3, s9
                  auipc        t5, 186202
                  srai         t1, a5, 6
                  and          t1, a6, a5
                  sltu         gp, t1, s6
                  xori         t5, a7, 1247
                  and          t1, t1, a4
                  lui          s10, 104319
                  sltu         s1, zero, t2
                  ori          t3, s5, 30
                  add          s5, t0, s8
                  addi         t5, a4, 544
                  auipc        s2, 118098
                  sub          s9, s3, t4
                  ori          a7, a3, 1172
                  sra          a1, ra, tp
                  or           a2, a3, s1
                  sub          zero, s1, zero
                  slt          a2, s5, gp
                  lui          a1, 717857
                  andi         t3, t4, -1865
                  slt          s2, s9, t6
                  and          s3, a1, s11
                  sltu         tp, t1, sp
                  ori          zero, t0, 1465
                  sll          s8, s0, a3
                  and          s6, t0, s5
                  xor          s2, s2, t4
                  srl          zero, s8, a6
                  auipc        a5, 269234
                  or           s4, a3, a3
                  nop
                  srai         t3, a3, 5
                  or           ra, s2, a3
                  add          a1, a0, t1
                  andi         s10, s0, -1431
                  xori         t5, s4, 732
                  sub          s6, s9, s4
                  slt          t4, s0, s9
                  addi         t4, s4, -1023
                  srai         ra, t1, 16
                  sltu         a2, t3, t0
                  srai         a1, a2, 7
                  auipc        a2, 576026
                  sra          a5, s2, t3
                  slt          a5, s6, a6
                  slt          zero, a5, t3
                  slti         t4, s7, -1687
                  andi         zero, a6, 285
                  sltiu        t5, s0, -92
                  srai         t1, a2, 10
                  srli         s10, a6, 19
                  add          s6, s10, a4
                  sltiu        t5, tp, 1387
                  slli         a5, t3, 12
                  slt          t2, t5, s2
                  and          a3, s7, s2
                  or           zero, a5, s7
                  sltu         s7, a7, a5
                  srli         s4, s7, 11
                  andi         s11, a4, 432
                  srai         s5, s1, 15
                  addi         sp, t3, 944
                  slti         a2, a7, -303
                  and          gp, s1, s4
                  sltiu        zero, a6, 389
                  srli         s3, t1, 16
                  srli         tp, s11, 1
                  or           s10, s9, sp
                  srli         s1, s5, 12
                  slti         s2, t0, -365
                  sub          sp, s1, t2
                  or           s1, t0, t2
                  lui          s1, 791180
                  nop
                  xori         zero, s1, 1682
                  andi         tp, a2, 1713
                  or           a3, s8, t0
                  ori          t2, t2, -569
                  andi         a5, t1, -1237
                  sub          s0, t6, a5
                  sll          a0, a3, s0
                  nop
                  xor          s10, a6, s10
                  sra          a1, a6, a0
                  addi         s0, s1, 1619
                  slli         a5, t4, 23
                  lui          a2, 37318
                  add          s5, s1, s1
                  nop
                  slt          s7, s3, zero
                  srli         s11, t2, 28
                  srli         s9, tp, 1
                  addi         a5, s9, 383
                  sra          a2, t4, a4
                  slt          s11, t4, a0
                  xor          s9, t6, t3
                  or           sp, s6, gp
                  and          s4, s9, a1
                  add          s4, s2, t2
                  sll          a5, sp, t5
                  addi         gp, a5, -1632
                  srai         a7, a5, 15
                  xor          a0, ra, a7
                  sll          s3, sp, a1
                  nop
                  sll          a3, t0, s9
                  srai         s7, a5, 21
                  srl          t3, a7, gp
                  sub          s10, a4, a2
                  ori          ra, a6, 1766
                  nop
                  sub          gp, s11, tp
                  andi         s4, tp, 1381
                  slli         s5, gp, 11
                  sra          sp, s2, t4
                  srli         s1, s7, 14
                  sra          t4, t0, a1
                  add          sp, t3, t1
                  srai         s11, s5, 2
                  srai         zero, tp, 25
                  srl          s4, t1, s7
                  sltu         t2, s6, s7
                  xor          a5, a2, s7
                  srai         a5, a2, 30
                  addi         gp, t0, 738
                  andi         s4, a2, -933
                  sll          t5, s7, zero
                  sra          a5, t1, t6
                  nop
                  xor          s10, zero, a1
                  slti         s6, a4, -1550
                  andi         t5, a3, -1085
                  srl          s3, t5, t2
                  or           a7, tp, s1
                  slti         sp, a5, 909
                  lui          s10, 468898
                  sltu         s8, a3, tp
                  sltiu        s8, t3, -1744
                  or           t5, t6, s7
                  add          a5, s11, s4
                  nop
                  srl          t1, t1, s5
                  slti         a2, t0, 1775
                  addi         s5, s3, -870
                  sll          t4, s2, a2
                  add          s10, gp, s4
                  sra          s2, t5, t2
                  sra          t6, s7, s2
                  slt          t5, s10, s2
                  srli         s3, t0, 24
                  sltiu        s3, t2, 1903
                  sll          a2, s6, a7
                  slt          s9, sp, s3
                  lui          a1, 601972
                  srai         t4, s8, 30
                  sub          a3, s2, a0
                  ori          a3, s2, -836
                  lui          zero, 815594
                  slli         s6, s11, 6
                  add          t6, sp, s5
                  srai         t1, t1, 17
                  srl          ra, s10, s9
                  sub          s2, t1, s5
                  auipc        t1, 766722
                  slti         s5, s4, 444
                  sltu         s2, t0, s2
                  srai         s6, zero, 27
                  slli         s9, a6, 2
                  lui          t5, 680431
                  andi         t3, s7, -1715
                  ori          s8, a0, 1209
                  and          s2, s11, a0
                  andi         zero, s5, -473
                  or           ra, s2, s8
                  andi         s7, s6, -285
                  auipc        t4, 531444
                  slti         t2, t2, 654
                  srl          a2, t0, sp
                  xor          s11, t0, gp
                  add          s4, t3, s7
                  sltu         a5, t4, t4
                  addi         sp, t6, -552
                  sltu         t2, a0, t0
                  srli         s5, a3, 11
                  add          s4, t1, s0
                  addi         s7, t6, 579
                  srl          s1, t4, tp
                  sub          a1, s5, a0
                  andi         t4, s10, 189
                  andi         s4, a0, -776
                  srl          s9, t3, a3
                  andi         s6, a6, -827
                  or           s2, s5, t0
                  srli         s9, s7, 15
                  add          t5, tp, s11
                  sub          s4, zero, t2
                  slli         t1, a0, 11
                  srl          a7, ra, s1
                  xori         a5, a3, -1370
                  addi         s7, t2, -1829
                  srli         a1, s9, 23
                  or           gp, a3, a4
                  nop
                  ori          ra, s9, 1091
                  slti         sp, a3, 1601
                  srli         a1, s4, 24
                  srai         ra, s3, 18
                  sltu         t2, s3, t0
                  lui          s8, 630541
                  nop
                  sub          t1, s1, t3
                  xor          s4, s11, tp
                  sra          a1, tp, t0
                  xor          t6, sp, s8
                  lui          t4, 149644
                  ori          tp, a6, -403
                  lui          s10, 912847
                  slli         a5, s3, 15
                  sra          t4, a7, a6
                  xor          s8, s4, a4
                  addi         s10, s4, -1871
                  xor          s8, gp, t0
                  add          a0, a1, s10
                  add          t1, zero, s11
                  lui          s9, 521659
                  sll          s4, a0, ra
                  sll          t4, t1, s10
                  andi         s7, ra, -1554
                  and          a3, s5, s7
                  slti         a5, a5, -1361
                  slt          s4, a2, t6
                  sra          s9, gp, a3
                  addi         t3, t4, -701
                  sll          tp, t1, s1
                  andi         t4, s6, 532
                  srai         zero, zero, 16
                  xor          s11, sp, s8
                  xori         s6, s2, -79
                  nop
                  addi         s6, s9, 1793
                  lui          t1, 620232
                  sltu         s10, s3, a3
                  sltiu        ra, a1, 1397
                  ori          s1, tp, 190
                  sll          ra, a3, s1
                  sra          s4, s5, t0
                  lui          zero, 851161
                  slt          s8, s6, a4
                  xori         s5, s7, -1140
                  sll          s8, t6, t1
                  sra          s8, s9, s6
                  andi         s0, t5, -1963
                  sub          zero, s9, s6
                  sub          a7, s8, s4
                  lui          sp, 715405
                  sub          t4, sp, ra
                  add          s0, zero, s6
                  add          t2, a5, sp
                  andi         tp, sp, 2046
                  ori          s1, t4, -873
                  slti         t3, t4, -1050
                  slli         gp, a4, 14
                  sra          t2, s5, s4
                  and          s4, s11, a0
                  srl          t4, t2, s0
                  xor          s7, a5, a7
                  sltiu        a1, ra, -769
                  addi         t3, a1, -1103
                  nop
                  srl          s5, a1, s6
                  andi         s4, s1, -813
                  slli         s1, t2, 7
                  sra          t3, a3, t3
                  andi         s11, t4, 1976
                  xor          t1, t1, s5
                  sltiu        s7, t5, -1603
                  sltiu        a1, a2, 605
                  sra          t2, a2, a6
                  sltu         s5, tp, a4
                  sltu         s3, s2, a0
                  srai         ra, a2, 17
                  sub          a1, ra, s7
                  sltu         a2, t3, gp
                  slti         s0, s4, -1146
                  sltiu        ra, s4, 737
                  slli         s8, a0, 9
                  andi         gp, t4, 1717
                  lui          a2, 20996
                  slli         s9, t1, 29
                  addi         sp, s7, -793
                  sltiu        a2, s5, 246
                  srli         t3, sp, 16
                  or           s2, s11, t5
                  slli         s8, t1, 30
                  srli         t3, s4, 10
                  or           s8, s1, s10
                  slti         a3, s4, -13
                  and          s8, a3, a6
                  andi         a5, s7, -879
                  srl          s2, t6, s3
                  xor          t3, s6, a4
                  andi         ra, a6, 772
                  ori          a2, s5, 1362
                  sltiu        t6, s2, -174
                  sll          a3, s4, s7
                  sll          ra, a2, s7
                  lui          t3, 98137
                  srai         t5, gp, 16
                  sra          t3, zero, s3
                  and          s0, t4, gp
                  or           s2, s10, t4
                  sltiu        sp, a5, 1817
                  lui          s5, 311035
                  slt          s7, s5, t2
                  ori          t5, sp, -1090
                  or           s7, t5, s6
                  sltiu        s8, s11, -541
                  xori         tp, s0, 1726
                  sll          t1, t3, t6
                  andi         s0, s4, -213
                  sll          s3, a3, t0
                  srai         s0, tp, 25
                  sll          a3, a7, tp
                  slt          t1, a0, zero
                  sll          t1, a3, s6
                  slt          s11, s7, a6
                  and          s11, a7, t3
                  lui          a3, 227112
                  or           sp, s7, tp
                  xori         t2, a1, 746
                  addi         s4, s8, 983
                  xori         t2, s7, 288
                  sra          a0, s7, tp
                  add          s1, s4, gp
                  nop
                  slli         t5, s0, 0
                  lui          s11, 116135
                  ori          sp, a7, 739
                  srl          s3, t0, s3
                  xori         t2, a0, -1399
                  srl          a7, tp, gp
                  lui          s6, 162085
                  ori          s3, s6, -1943
                  xori         a5, a5, 1897
                  add          sp, t6, a3
                  slti         t5, a0, 1824
                  addi         gp, ra, 970
                  lui          a1, 570564
                  and          s1, a7, a3
                  xor          t5, s1, s9
                  xori         s11, a0, -741
                  ori          s5, s10, 1081
                  slli         zero, a4, 16
                  andi         tp, s0, 825
                  sub          s4, s6, t6
                  srl          ra, s2, t6
                  sub          a3, t0, a5
                  xori         t6, t3, 2037
                  add          s0, t0, s10
                  and          s1, s5, t5
                  srli         s8, a4, 4
                  sub          s0, s0, a7
                  xor          s2, s4, tp
                  srl          s7, a7, s10
                  slti         s1, s1, -1365
                  and          ra, a0, s2
                  srai         s5, a4, 12
                  and          t3, a5, s11
                  slt          s8, s3, t5
                  sltiu        a1, s9, 808
                  ori          s7, a4, -680
                  sra          a3, a6, a6
                  auipc        a5, 166035
                  srl          a3, t2, t3
                  sltu         gp, s1, t3
                  slt          s7, t2, gp
                  srai         t5, t5, 18
                  ori          s5, t4, 770
                  srl          s9, zero, a0
                  add          s8, s4, s11
                  or           tp, a2, s8
                  andi         t1, s6, 247
                  sltiu        s4, s3, -1859
                  nop
                  xor          s10, a7, a1
                  sra          a5, a5, s2
                  and          t3, t6, s11
                  addi         a1, s10, -1659
                  auipc        s4, 295687
                  sltiu        s9, gp, 471
                  and          s11, s10, s8
                  andi         s10, a2, 253
                  sra          s0, s0, s8
                  nop
                  nop
                  sll          t1, t4, a1
                  ori          a3, a4, -398
                  srl          s7, s1, s4
                  sltu         t5, s9, s6
                  andi         s10, sp, 1859
                  srli         s9, s8, 25
                  slt          s11, s0, a2
                  slli         ra, a6, 0
                  sra          tp, a0, s10
                  sub          t6, t2, t1
                  xor          t3, t6, a3
                  ori          s6, gp, 618
                  srai         a7, t3, 20
                  and          t5, s9, a7
                  slt          t2, s10, s1
                  sll          a7, tp, t3
                  sll          s8, s11, s5
                  srai         a2, s9, 6
                  sll          s6, s4, s3
                  srli         a0, t5, 13
                  and          s8, t5, t2
                  andi         s0, s1, -1326
                  slt          gp, s0, a5
                  sub          a5, t4, t5
                  srl          s10, s1, t5
                  auipc        a3, 702789
                  slt          s11, s11, s4
                  xori         s11, a5, 1609
                  sll          t6, a4, s6
                  addi         s2, t5, 1484
                  addi         a1, s1, -1863
                  slt          a1, s8, s6
                  sra          a0, t6, t1
                  slt          a5, a6, s1
                  nop
                  nop
                  srai         gp, a6, 5
                  sltiu        tp, a5, 1842
                  auipc        t1, 670654
                  and          zero, s10, s9
                  lui          a0, 818547
                  ori          s10, s7, 444
                  lui          tp, 886764
                  sltu         a5, zero, t2
                  sll          a1, a0, s11
                  lui          a1, 183183
                  srli         s6, s3, 2
                  add          s9, sp, a0
                  addi         s7, a7, 899
                  or           s3, s1, s5
                  xori         s9, tp, 1986
                  andi         a7, t1, 1001
                  or           ra, s3, sp
                  slt          t3, a4, t4
                  srai         a1, ra, 25
                  slti         t1, s5, 1444
                  sltiu        t2, s9, -1078
                  slt          s10, t6, a1
                  sub          a0, s6, t3
                  srl          a7, t6, a2
                  xor          s0, s11, t0
                  srli         s8, a7, 14
                  lui          gp, 780449
                  xor          a3, a4, s4
                  sltiu        a3, s1, 348
                  slt          s1, s8, a2
                  add          a1, sp, s10
                  srli         t4, s10, 21
                  xor          s6, t2, t2
                  lui          t5, 354419
                  or           t1, t1, a4
                  srl          s0, a5, t6
                  andi         a7, a4, -1520
                  sub          s8, a6, a2
                  andi         tp, s8, -1742
                  sltu         s10, ra, s2
                  srli         t6, zero, 23
                  or           a2, a6, s4
                  srli         tp, s10, 3
                  xori         gp, t2, -1006
                  addi         s3, a6, 767
                  add          sp, gp, s7
                  andi         t3, s1, -760
                  addi         zero, s7, -335
                  sll          gp, a3, t5
                  lui          t5, 777300
                  srli         t3, a7, 17
                  sub          ra, t5, s7
                  srai         s2, s8, 29
                  addi         a0, s6, -1459
                  slt          a2, s11, s11
                  ori          a7, a5, 295
                  andi         s5, t5, -481
                  srl          a7, gp, s0
                  xori         s7, t2, -1934
                  sltiu        ra, s4, -1993
                  nop
                  srli         a1, t1, 28
                  sub          a2, s1, a0
                  or           t2, a7, t6
                  slt          t5, t2, gp
                  sltiu        a3, s4, 16
                  sra          s9, ra, s7
                  nop
                  sltiu        ra, s5, 1923
                  sltiu        s7, s10, -171
                  sltu         a1, s4, a1
                  or           s10, a1, s1
                  ori          a3, s5, 726
                  slti         a5, zero, -197
                  sub          a1, a5, sp
                  srai         ra, a7, 28
                  and          s10, s5, tp
                  sub          s11, s5, s6
                  srai         gp, t1, 13
                  lui          s7, 365585
                  auipc        a5, 319815
                  xori         s5, s6, 1515
                  xori         s1, s0, 682
                  nop
                  add          ra, sp, a3
                  addi         gp, a0, -562
                  xori         a7, a3, -1740
                  sub          a5, s11, s2
                  ori          a2, t5, 573
                  sll          s5, a4, sp
                  slt          s2, a4, s0
                  addi         s3, s3, -886
                  sub          gp, s2, s9
                  srli         zero, s1, 22
                  srl          a5, sp, a4
                  sltiu        s2, ra, 1517
                  sltiu        s3, a0, -478
                  andi         t3, a5, -1413
                  sltu         a7, t1, a1
                  add          s10, s2, a3
                  srl          s3, tp, s7
                  auipc        a5, 237843
                  slt          s0, t4, t0
                  andi         a5, t1, -1215
                  srli         s7, t4, 18
                  sub          s10, a7, a3
                  srli         s8, s7, 3
                  auipc        t4, 917130
                  ori          s6, s9, 46
                  slti         t4, s3, -1288
                  or           ra, s6, gp
                  xori         a2, s3, 1560
                  srli         s5, t3, 11
                  slti         t1, t6, 867
                  or           a5, s2, s4
                  andi         s6, tp, 752
                  sltu         a1, s4, s8
                  andi         tp, a4, 1530
                  xor          t3, t4, s0
                  or           s8, a0, s7
                  sra          t5, a0, s7
                  or           t1, a1, a0
                  or           s10, s1, s0
                  slt          t5, s3, s9
                  srai         s1, gp, 26
                  sub          s4, a5, zero
                  sltiu        ra, zero, -325
                  srli         s7, a6, 7
                  nop
                  sll          s5, a0, s1
                  srai         s4, s5, 2
                  srai         a3, s3, 13
                  slti         s9, s11, -1550
                  srai         s3, t3, 9
                  lui          s5, 285906
                  slli         a2, t5, 7
                  xor          t3, s4, t1
                  sra          a3, s5, s11
                  sltu         s1, sp, s8
                  sub          t4, s1, s4
                  auipc        t6, 522949
                  srai         s2, s8, 7
                  xor          s11, a1, a5
                  sltu         a2, a1, a4
                  auipc        gp, 952160
                  nop
                  addi         tp, s0, -841
                  srai         t6, s8, 11
                  slti         t4, s11, 184
                  addi         t6, s7, 912
                  sll          t2, a3, s0
                  andi         a3, s9, 1296
                  andi         s1, s7, -1478
                  ori          ra, t0, 1138
                  sra          s5, s1, s0
                  xori         t4, a4, -1936
                  xor          s2, a0, a5
                  sll          a1, a5, t1
                  nop
                  srl          t6, sp, tp
                  slti         s0, a6, -996
                  add          t6, s3, t5
                  or           s0, s4, t0
                  sub          t2, s1, s7
                  sub          t5, s0, sp
                  xori         s10, zero, 784
                  xor          t3, t5, sp
                  srli         t1, s7, 16
                  andi         s5, gp, 731
                  sltu         t5, a6, t5
                  slli         s8, s0, 27
                  slli         a0, s9, 1
                  sub          t2, ra, s11
                  srl          a1, t2, a6
                  srli         s8, s0, 0
                  sub          a5, s11, t3
                  slli         a0, tp, 31
                  slli         s0, sp, 4
                  xor          gp, gp, a7
                  nop
                  addi         t3, t5, -1567
                  srli         gp, a1, 21
                  lui          s11, 894263
                  and          tp, tp, t5
                  sll          a1, s10, s7
                  sub          t5, a2, gp
                  sltiu        s2, gp, -463
                  ori          t2, s2, 145
                  sltu         s8, a3, t1
                  addi         s11, s10, -168
                  sub          s10, t3, t6
                  sll          s0, a0, t2
                  addi         ra, s7, -1725
                  sltiu        a1, s2, 1476
                  srli         t3, s1, 23
                  and          s11, s6, a6
                  andi         ra, a0, -654
                  or           s5, sp, t4
                  srai         t1, a1, 17
                  add          gp, s4, s11
                  xor          t6, s7, t0
                  andi         s4, s2, 1851
                  and          t5, a6, t6
                  or           s2, t2, zero
                  srl          t6, s2, s3
                  lui          zero, 86289
                  srli         s6, s6, 26
                  xori         s11, tp, -746
                  andi         a0, t6, -808
                  add          gp, s11, a3
                  srai         gp, a3, 19
                  sltu         a2, zero, a0
                  or           s8, a2, t1
                  and          t4, a1, s0
                  auipc        s6, 1020656
                  xori         t2, a2, 1663
                  and          t6, a1, a6
                  sra          ra, zero, tp
                  srl          a5, zero, t0
                  sub          a3, zero, s11
                  xori         a3, zero, -2039
                  slli         a0, t3, 18
                  srl          sp, s4, t3
                  and          a1, s7, s10
                  ori          s3, a6, 1232
                  srai         a7, s8, 13
                  sra          s8, t5, a0
                  sltu         s11, s7, ra
                  srli         s10, a3, 19
                  andi         t1, s2, 616
                  sltu         s6, s2, gp
                  sra          t2, t1, ra
                  sra          sp, t0, s8
                  nop
                  auipc        zero, 17394
                  nop
                  auipc        gp, 848099
                  lui          s9, 945179
                  slli         a2, s4, 29
                  sub          tp, s11, t0
                  ori          t6, a2, -744
                  srai         t1, t5, 10
                  nop
                  slt          t4, sp, a5
                  xor          a0, a2, t1
                  sltu         gp, t2, gp
                  sll          a1, a7, gp
                  add          s1, a3, t4
                  srli         s9, s8, 28
                  lui          a3, 789929
                  sra          s10, a4, t4
                  xor          a3, ra, s8
                  sll          t3, s9, s5
                  slti         t6, ra, -1195
                  andi         gp, a6, -349
                  srl          ra, tp, s4
                  or           a5, s6, zero
                  addi         t3, s9, -1699
                  auipc        ra, 593340
                  addi         t1, a6, -1875
                  srai         s2, s0, 27
                  or           s3, t3, s8
                  sub          t4, a7, a0
                  addi         t4, t6, 1137
                  slt          s2, a4, t6
                  slti         s4, t6, 1962
                  srai         s6, s6, 2
                  sltiu        a3, s2, -538
                  nop
                  slti         a0, s11, 538
                  slt          s10, ra, a3
                  or           s5, t4, s4
                  andi         s1, t4, -1770
                  srl          tp, s5, s8
                  or           s6, a3, ra
                  slti         ra, t5, 1235
                  slli         tp, tp, 4
                  slti         t6, a5, -1671
                  auipc        t2, 93143
                  and          zero, a7, sp
                  and          s11, a4, a7
                  sltu         ra, s6, a0
                  lui          zero, 207875
                  srai         s5, a4, 29
                  xori         tp, s5, 1163
                  auipc        a0, 525119
                  sll          a3, s1, s10
                  auipc        t5, 900614
                  srli         sp, s5, 29
                  sub          s3, a6, a2
                  sub          s3, t4, s3
                  xori         s11, a1, 1493
                  or           s11, s3, a6
                  add          s5, s9, t0
                  sra          s4, a3, zero
                  xor          s1, a3, gp
                  add          t5, s9, s10
                  slli         t4, a1, 18
                  ori          a2, a6, 964
                  or           t4, a7, s0
                  slti         s3, t6, 524
                  auipc        s0, 459838
                  sra          t1, a4, a2
                  sltu         s8, sp, s6
                  sltu         s10, s1, a4
                  srai         a3, t2, 21
                  sub          t3, s2, gp
                  srli         t5, a2, 12
                  add          t4, a5, s0
                  xor          a1, s2, s10
                  sll          t3, s1, s1
                  slti         s3, s10, 711
                  auipc        t5, 162521
                  add          t4, s10, s10
                  srl          s0, s6, s4
                  and          s3, s4, s7
                  sltu         t4, t0, a7
                  xor          a5, t0, gp
                  xor          ra, t3, s0
                  add          sp, gp, s1
                  sll          s7, s9, a5
                  auipc        t3, 181860
                  slt          s7, a7, a6
                  sll          gp, sp, a0
                  add          s3, t0, t1
                  xori         a1, a5, -508
                  srli         a1, a5, 7
                  srai         t5, s0, 19
                  ori          a7, a3, -1694
                  sltiu        a1, t1, 1497
                  andi         a5, s8, -1948
                  auipc        s8, 132655
                  slt          t3, s6, a0
                  srl          a5, s7, s5
                  sltiu        a7, ra, -700
                  sltiu        t6, ra, 424
                  la x5, test_done
                  jalr x0, x5, 0
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x16, x14, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x22, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x22, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x22, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x22, x19, ecall_handler
                  li x19, 0x1
                  beq x22, x19, instr_fault_handler
                  li x19, 0x5
                  beq x22, x19, load_fault_handler
                  li x19, 0x7
                  beq x22, x19, store_fault_handler
                  li x19, 0xc
                  beq x22, x19, pt_fault_handler
                  li x19, 0xd
                  beq x22, x19, pt_fault_handler
                  li x19, 0xf
                  beq x22, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x14, x16, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x16, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x16, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x14, x16, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x14, x16, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x14, x16, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
