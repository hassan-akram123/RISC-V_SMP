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
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 1
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xf1c54f51
                  li x3, 0x37f67b8
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x3
                  li x9, 0xf
                  li x10, 0xf1bdfdcc
                  li x11, 0xfee488bf
                  li x12, 0x0
                  li x13, 0xf387d05c
                  li x14, 0x0
                  li x15, 0xe
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x6
                  li x19, 0xff3b75ad
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xf0018d47
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xa
                  li x31, 0x0
                  la x8, user_stack_end
main:             li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           t0, 0x0
                  li           ra, 0x0
                  li           s9, 0x55e7b433
                  li           t1, 0xffffffff
                  li           a5, 0xffffffff
                  li           gp, 0x9ad8a0b7
                  li           t4, 0x80000000
                  li           t5, 0x80000000
                  li           t3, 0x357c439f
                  lui          s9, 495185
                  add          t3, t4, t1
                  sub          a5, t3, t1
                  lui          t1, 154189
                  add          s9, t3, t3
                  sub          t5, t5, ra
                  lui          t1, 197
                  auipc        t1, 63837
                  add          s9, gp, s9
                  lui          s3, 676867
                  lui          t3, 1027426
                  nop
                  auipc        t3, 861471
                  lui          t4, 323924
                  add          gp, ra, t1
                  addi         s9, t1, -354
                  add          t3, gp, a5
                  add          a5, t5, t0
                  add          t5, a5, t5
                  nop
                  sub          a5, ra, a5
                  lui          t5, 819720
                  auipc        s9, 280549
                  add          t3, gp, t4
                  addi         t4, t3, -1683
                  add          a5, t3, t5
                  lui          ra, 209932
                  nop
                  addi         gp, s9, -67 #end riscv_int_numeric_corner_stream_9
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           t1, 0xeb140f45
                  li           t5, 0xfb7261d5
                  li           s4, 0x80000000
                  li           s6, 0x0
                  li           sp, 0x0
                  li           t6, 0xffffffff
                  li           a6, 0x0
                  li           a1, 0xe7166bb1
                  li           a7, 0x0
                  addi         a6, s11, -901
                  add          s11, sp, t5
                  auipc        s11, 633530
                  addi         t5, t1, -494
                  auipc        a1, 888895
                  nop
                  add          t5, s6, t5
                  nop
                  nop
                  nop
                  sub          t5, a7, s11
                  nop
                  add          t6, a1, t1
                  sub          a7, a6, t1
                  addi         s4, sp, -1218
                  auipc        s4, 903503
                  add          a1, a6, t1
                  lui          sp, 464998
                  sub          t6, sp, a7
                  auipc        a1, 244214 #end riscv_int_numeric_corner_stream_17
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s2, 0xffffffff
                  li           sp, 0xd38cab53
                  li           s11, 0x80000000
                  li           a2, 0xf82aa0da
                  li           t0, 0x80000000
                  li           s10, 0xffffffff
                  li           t1, 0xffffffff
                  li           gp, 0x80000000
                  li           a0, 0x11f753e
                  add          a2, a2, a2
                  auipc        a0, 422398
                  auipc        s11, 844027
                  nop
                  nop
                  addi         s2, sp, 254
                  sub          a3, s10, s2
                  add          t1, t1, s10
                  auipc        a3, 322987
                  add          t1, s10, t1
                  lui          t0, 519580
                  sub          s2, gp, t1
                  auipc        gp, 944565
                  sub          s2, a0, t1
                  lui          s10, 816463
                  nop
                  addi         sp, s2, -966
                  nop
                  lui          s2, 64633
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  li           a0, 0x7f6fe78b #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x6cd94439
                  li           ra, 0x0
                  li           s4, 0x0
                  li           t4, 0xffffffff
                  li           s5, 0xda51d20d
                  li           tp, 0x80000000
                  li           t6, 0xffffffff
                  li           t5, 0xffffffff
                  li           s9, 0xb23899a2
                  nop
                  sub          s5, ra, t5
                  nop
                  addi         s9, t6, -1339
                  add          t4, tp, a5
                  addi         a5, s5, -1519
                  sub          a5, t5, t6
                  add          tp, s9, tp
                  lui          t5, 504328
                  sub          s9, a0, a0
                  addi         s5, s5, -1836
                  nop
                  nop
                  auipc        s5, 609415
                  addi         t5, ra, 1632 #end riscv_int_numeric_corner_stream_6
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s1, 0xffffffff
                  li           sp, 0x80000000
                  li           a6, 0xffffffff
                  li           a3, 0x2a5db6cd
                  li           s10, 0x80000000
                  li           s2, 0x472337ee
                  li           t6, 0x80000000
                  li           a2, 0x80000000
                  li           s8, 0x80000000
                  add          t6, s3, t6
                  sub          t6, sp, s8
                  add          a6, s8, s2
                  lui          t6, 204271
                  auipc        a3, 189724
                  sub          a2, s2, t6
                  add          a3, s8, s3
                  auipc        sp, 445876
                  add          s2, t6, a2
                  auipc        s10, 258262
                  sub          sp, a6, sp
                  addi         a2, s2, 1321
                  lui          a3, 213405
                  lui          a6, 1013350
                  add          a6, a6, t6
                  sub          a6, s3, s1
                  add          a3, a6, s3
                  sub          s2, t6, s2 #end riscv_int_numeric_corner_stream_5
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s5, 0x0
                  li           a0, 0xffffffff
                  li           a2, 0xffffffff
                  li           a6, 0x0
                  li           t3, 0x80000000
                  li           s3, 0x0
                  li           sp, 0x0
                  li           t0, 0x0
                  li           a5, 0xffffffff
                  auipc        a5, 277904
                  sub          t0, s5, s4
                  auipc        a2, 697451
                  add          t0, a2, sp
                  nop
                  auipc        s5, 991167
                  sub          t3, s5, t3
                  lui          s5, 1039611
                  sub          s5, s3, a6
                  addi         a2, sp, -9
                  lui          s5, 635498
                  sub          s5, a2, a6
                  addi         s4, t3, -888
                  lui          sp, 583230
                  add          s4, a0, a6
                  sub          s4, s4, s3
                  add          s4, t0, a5
                  addi         a2, a0, 1752
                  lui          s4, 1026684
                  addi         a0, s5, -278
                  addi         a0, s5, -484
                  sub          s4, s4, a0 #end riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t3, 0x406bc11c
                  li           t5, 0x0
                  li           s9, 0x0
                  li           a7, 0xffffffff
                  li           t1, 0xffffffff
                  li           a3, 0xffffffff
                  li           s8, 0x0
                  li           a0, 0xffffffff
                  li           t4, 0x70dab13f
                  auipc        s9, 77274
                  nop
                  add          a6, s8, t5
                  lui          a7, 777778
                  sub          s9, t1, s8
                  lui          s8, 317091
                  add          a0, t3, s9
                  sub          s8, s8, s8
                  lui          a3, 412223
                  nop
                  sub          s9, t1, a3
                  addi         s8, t5, -361
                  sub          a0, a7, a7
                  sub          a7, s9, t5
                  lui          t4, 356096
                  addi         t5, t1, -1875
                  addi         s8, s9, 1071
                  addi         a0, t4, 493
                  sub          t3, a3, a3
                  addi         t5, t4, 867
                  lui          t1, 56508
                  sub          t3, t1, t4
                  lui          s9, 687945 #end riscv_int_numeric_corner_stream_11
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s3, 0xffffffff
                  li           ra, 0x80000000
                  li           a0, 0x80000000
                  li           s6, 0x665e41ad
                  li           a7, 0x0
                  li           s1, 0x0
                  li           s4, 0x0
                  li           s9, 0xffffffff
                  li           t6, 0xffffffff
                  lui          s5, 1048029
                  auipc        a7, 981113
                  nop
                  lui          t6, 27352
                  nop
                  auipc        s9, 708647
                  add          s1, s3, s6
                  lui          t6, 590921
                  addi         t6, s9, -1271
                  add          s3, s1, s4
                  lui          t6, 92550
                  addi         a0, a0, -598
                  addi         s1, s4, 799
                  sub          ra, s1, s4
                  lui          a7, 15952
                  addi         a0, s9, 1869
                  nop #end riscv_int_numeric_corner_stream_13
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a3, 0x0
                  li           s8, 0x0
                  li           s2, 0x61892fec
                  li           t4, 0x80000000
                  li           a0, 0x80000000
                  li           a5, 0x0
                  li           t6, 0x6b02eb95
                  li           s5, 0x80000000
                  li           gp, 0x80000000
                  add          a5, gp, gp
                  add          t6, a3, a5
                  addi         gp, tp, -249
                  nop
                  sub          s5, tp, tp
                  auipc        a3, 444423
                  sub          s2, a0, s2
                  addi         a0, a5, 1573
                  auipc        t6, 27507
                  auipc        gp, 926754
                  addi         a3, s8, 1970
                  addi         a0, t6, -1651
                  auipc        a5, 662500
                  lui          s5, 731947
                  lui          t4, 588250
                  addi         a0, a5, 81
                  addi         t4, t4, -1015
                  add          s2, t6, t4
                  nop
                  lui          a0, 148089
                  sub          t4, s2, a3
                  sub          tp, t6, t6
                  addi         a3, s2, -742
                  sub          a3, s8, a5
                  addi         a5, tp, 335
                  lui          t4, 1005247
                  nop
                  lui          a3, 920243
                  addi         a3, s8, 18
                  add          s5, gp, a5 #end riscv_int_numeric_corner_stream_15
                  srli         a3, t3, 8
                  and          s3, gp, s3
                  srl          s1, s10, s10
                  andi         ra, a6, -1461
                  srli         s10, a1, 7
                  sub          s7, s1, a6
                  ori          ra, a2, 1614
                  xori         t5, s10, -631
                  ori          tp, s5, 1785
                  slli         s7, s8, 12
                  addi         s5, s0, -1613
                  srli         t5, a7, 7
                  sra          zero, s1, t4
                  sltiu        t3, s1, 1249
                  lui          s7, 623935
                  slli         s6, t6, 20
                  add          s9, s9, s9
                  srai         a2, a0, 15
                  nop
                  or           s6, sp, s10
                  slti         t1, tp, 1730
                  nop
                  sll          a0, t3, s10
                  sltu         t6, s10, sp
                  sll          tp, a5, s8
                  slli         s7, sp, 27
                  or           s8, t3, s11
                  sra          a2, t3, a6
                  sub          tp, t5, t3
                  ori          a0, s1, -99
                  nop
                  xor          t6, a3, tp
                  sltiu        s2, ra, -850
                  slt          sp, s3, t1
                  srli         s6, zero, 13
                  sltu         a7, a1, a5
                  srai         s7, s7, 0
                  or           s9, t3, a0
                  sll          t1, s1, t1
                  sltu         t6, s3, s0
                  srai         s8, s9, 1
                  lui          gp, 494497
                  sra          s4, t4, t2
                  sll          s8, a0, s11
                  andi         t4, s6, 234
                  lui          a2, 325465
                  sltu         t3, s10, s7
                  add          t4, s6, a3
                  auipc        a7, 52114
                  add          a7, t0, t5
                  andi         gp, s10, -386
                  ori          a6, t6, 1686
                  srli         t6, t4, 26
                  nop
                  slli         ra, ra, 2
                  sltu         t3, t5, a6
                  sltiu        t3, tp, -1571
                  slti         zero, t4, -1754
                  add          s5, s1, s0
                  srli         ra, s11, 22
                  and          t1, s10, s2
                  srli         t4, t3, 27
                  addi         s3, s7, -1527
                  xori         t4, s6, 862
                  add          a6, s2, t6
                  slli         a3, s2, 8
                  lui          s5, 202549
                  srl          s2, s10, s0
                  add          a1, s11, zero
                  nop
                  sltu         t3, s3, a5
                  and          t6, a5, s7
                  srl          a0, s8, s9
                  ori          a5, t5, 1055
                  lui          s7, 119905
                  xor          t6, s4, t1
                  slti         s5, s6, 197
                  sub          t5, t0, a1
                  andi         s3, s5, 1026
                  andi         tp, a6, -1188
                  srl          a6, t4, zero
                  or           t1, s6, a5
                  sub          a6, ra, t0
                  sltiu        a1, t3, 349
                  andi         t5, a2, -263
                  ori          t6, s9, 1309
                  slli         s5, ra, 0
                  srli         ra, t5, 3
                  sub          t5, a3, a7
                  auipc        t5, 1035155
                  sub          a3, t1, s1
                  slti         t0, gp, 1528
                  sltiu        t3, t1, -691
                  srli         s1, s7, 5
                  xori         s4, s4, -225
                  sltiu        s10, s0, 563
                  xor          t6, t2, a7
                  andi         zero, s10, -1969
                  addi         s5, t2, 1737
                  lui          a1, 843748
                  xori         s3, ra, -1221
                  ori          tp, a6, 623
                  addi         s4, a5, -1024
                  xori         a5, s1, -9
                  sltu         ra, t4, t2
                  slli         tp, a2, 15
                  ori          gp, a6, -449
                  sltiu        t0, a4, -173
                  addi         a2, s1, 341
                  xori         a7, t6, -1472
                  srl          s1, t3, t2
                  auipc        s2, 752651
                  srai         t4, s5, 11
                  sra          a3, ra, gp
                  or           s1, s3, s5
                  sra          s1, s4, gp
                  xori         s7, t0, -742
                  srl          ra, s11, a2
                  xori         t0, t3, 15
                  sub          t0, a6, a2
                  and          t0, s2, t2
                  xori         a2, t2, -1075
                  andi         tp, ra, 382
                  andi         s6, gp, 366
                  srli         t4, a6, 24
                  andi         s6, tp, -534
                  srl          t3, ra, a7
                  add          s10, s2, s11
                  sltiu        s10, t3, -1384
                  sltiu        s6, a0, 1
                  or           gp, s10, a1
                  auipc        sp, 796476
                  xori         sp, s2, 652
                  slli         t1, ra, 21
                  lui          a1, 574772
                  add          s4, t0, s1
                  ori          s8, s5, -1223
                  sltu         s2, a4, t5
                  srai         t6, a2, 12
                  sll          a3, s0, t3
                  sltu         s2, a2, a4
                  slt          s10, t0, a5
                  or           t4, t3, s8
                  sub          a2, t4, t0
                  srl          a6, s2, ra
                  srli         a0, t4, 9
                  sltu         t5, a1, t3
                  nop
                  srai         t5, a4, 5
                  auipc        s8, 8037
                  sll          sp, s9, a4
                  andi         s10, t3, 208
                  nop
                  sltu         a1, sp, a2
                  auipc        t4, 854841
                  and          s8, t4, a7
                  sub          s4, t2, t1
                  or           a0, zero, s11
                  sltu         s10, s6, zero
                  nop
                  andi         t1, s10, 1332
                  sll          ra, s9, t0
                  srai         s6, t6, 12
                  lui          s9, 924488
                  lui          t6, 510493
                  sltiu        a3, s3, -2005
                  sra          t3, s1, sp
                  ori          s1, a7, -1529
                  slli         s4, s2, 8
                  slti         gp, t0, 227
                  slt          t3, a6, s11
                  srli         s6, s10, 22
                  add          s4, ra, a2
                  ori          t3, a6, -322
                  slti         sp, zero, 941
                  or           s4, a5, t4
                  nop
                  sltu         zero, s4, sp
                  slti         a7, a5, 2025
                  slli         zero, s7, 1
                  nop
                  sll          tp, a7, gp
                  auipc        a2, 918629
                  lui          t5, 358524
                  sltiu        gp, t2, -1059
                  xori         sp, s2, -10
                  sltu         s1, s5, s7
                  sra          s3, t6, a2
                  slt          s5, a6, a3
                  slli         s10, t2, 15
                  slli         s5, a2, 4
                  xori         a1, a3, 824
                  srl          s3, t2, t2
                  xori         s6, s0, 962
                  lui          gp, 1044671
                  add          s1, tp, s6
                  sltu         a7, t3, gp
                  lui          s7, 124082
                  srl          s3, s4, s10
                  nop
                  ori          s7, s11, 1121
                  sll          a1, s11, s5
                  slti         s6, s2, 183
                  srli         t6, s3, 14
                  sra          s9, zero, s3
                  sltiu        a6, s11, 433
                  nop
                  or           a3, t2, s8
                  add          a2, s2, s11
                  auipc        a1, 269797
                  or           a6, a1, t2
                  sra          a5, tp, a2
                  srli         ra, tp, 13
                  xori         a3, sp, 977
                  ori          a6, sp, -1973
                  srl          sp, a4, a7
                  ori          s7, t3, -659
                  srai         a1, s11, 28
                  sltiu        s6, a6, 1244
                  slli         ra, s10, 27
                  srai         s7, s10, 23
                  slli         a6, s6, 12
                  lui          t3, 460755
                  andi         sp, s10, 134
                  xori         a5, a4, -737
                  sltiu        s6, s4, -493
                  lui          a3, 265948
                  auipc        t6, 524728
                  slli         s8, a2, 10
                  sll          a7, s1, s7
                  auipc        s10, 519438
                  srl          t0, s11, a5
                  ori          t5, a4, -1359
                  andi         tp, gp, -15
                  sltiu        a5, t5, 818
                  sub          a7, s7, s1
                  xori         gp, a0, 1684
                  add          s5, s2, gp
                  sltu         s2, t4, gp
                  srai         ra, s0, 5
                  slti         a5, s7, -782
                  sll          a7, sp, s5
                  addi         a6, ra, 199
                  sltu         a2, a2, zero
                  srai         ra, s7, 11
                  sub          s3, sp, t6
                  nop
                  sra          t1, s7, a4
                  xori         gp, s0, -1094
                  lui          t4, 701551
                  slt          s1, t2, s2
                  srai         s8, s8, 16
                  lui          a7, 741087
                  xori         s8, s9, -908
                  sltiu        s2, gp, 211
                  or           s11, sp, a2
                  add          zero, a7, a1
                  sub          a3, s3, t0
                  srai         s7, s3, 26
                  srli         s9, t4, 18
                  sub          s9, s5, a3
                  sub          gp, t4, a3
                  addi         t4, tp, 1277
                  srli         s9, s4, 16
                  sll          s5, t5, sp
                  sll          s4, a0, s6
                  srl          a7, ra, tp
                  add          zero, tp, a0
                  or           s8, t1, a0
                  slti         s9, a1, 1682
                  sra          sp, s9, a4
                  sltiu        a7, s3, 1697
                  or           t3, a1, a0
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t6, 0xde1d9651
                  li           a7, 0x80000000
                  li           t4, 0x9a3c9ba2
                  li           s7, 0x945895f2
                  li           s11, 0x0
                  li           s8, 0x80000000
                  li           tp, 0x4e5802bb
                  li           sp, 0xffffffff
                  li           t1, 0x8fdaa190
                  auipc        tp, 648029
                  add          gp, t1, t4
                  lui          t4, 548242
                  lui          t1, 32268
                  add          t6, t6, a7
                  add          s8, sp, sp
                  sub          t1, s7, t1
                  add          t6, tp, s11
                  lui          a7, 279965
                  addi         s7, s8, 1367
                  nop
                  auipc        gp, 722084
                  auipc        t6, 403741
                  lui          s11, 633167
                  sub          gp, t6, tp
                  add          sp, a7, s11
                  nop
                  auipc        s8, 372334
                  add          s8, t6, s11
                  addi         tp, sp, -1825
                  lui          gp, 1011580
                  nop #end riscv_int_numeric_corner_stream_4
                  srl          t0, s8, a6
                  slti         t6, tp, -741
                  lui          s11, 1021901
                  and          t0, ra, s6
                  sll          s9, a0, t0
                  slt          s7, s8, a1
                  lui          t0, 197447
                  lui          a2, 251726
                  xori         zero, a3, 1672
                  sltiu        a2, a5, -1407
                  ori          a7, a5, 82
                  slti         a5, sp, -1041
                  slti         t3, s4, 1777
                  srl          s10, s11, s6
                  slli         s1, t6, 3
                  xori         s5, a2, 1912
                  sll          gp, s6, a4
                  slti         gp, a7, 505
                  auipc        a0, 337369
                  sra          s11, t6, t3
                  srai         s1, t5, 26
                  auipc        sp, 104006
                  slli         a0, s6, 23
                  nop
                  srai         t1, sp, 7
                  sll          a1, t5, t1
                  xori         zero, s10, -1584
                  andi         gp, s11, -1212
                  ori          tp, t6, 344
                  xori         s3, a1, 1747
                  or           s2, t2, a0
                  slli         tp, s4, 9
                  srli         s2, s11, 22
                  slti         t4, a0, -1805
                  auipc        s2, 642150
                  xori         a6, s6, -464
                  and          s5, sp, s3
                  slt          t6, a4, s10
                  sra          t3, a1, s4
                  and          a3, gp, ra
                  addi         s1, t5, -1091
                  srai         a1, s6, 9
                  sub          s2, ra, s11
                  slti         s1, s11, 1103
                  slti         s9, t1, 385
                  xori         s10, a2, 225
                  srli         t4, t3, 23
                  lui          s9, 695603
                  slti         s7, a3, -747
                  srli         ra, s7, 20
                  sub          s9, t0, s10
                  sltiu        a6, tp, 1877
                  add          s8, s7, s2
                  addi         s4, gp, 1539
                  auipc        s2, 200430
                  sub          s5, s11, t2
                  sltu         gp, t1, s6
                  sll          sp, a5, t5
                  add          tp, s8, s2
                  nop
                  sll          a2, s4, a1
                  nop
                  nop
                  sra          t3, s2, t3
                  sra          t6, s0, tp
                  sub          a0, a7, s6
                  srai         s11, s4, 8
                  ori          a7, gp, -685
                  or           a1, s2, a6
                  sll          t4, t1, t3
                  ori          a7, s5, -360
                  sltu         a5, t0, t1
                  and          sp, t3, a7
                  xor          a7, t0, t2
                  slli         t6, t5, 4
                  srai         s6, sp, 16
                  andi         s11, s10, 771
                  slti         sp, s1, -737
                  auipc        s1, 654362
                  sltiu        s1, t6, -438
                  xor          sp, s4, t5
                  sra          s2, t2, tp
                  srai         t5, a4, 23
                  slti         t0, ra, -1950
                  sltu         a2, sp, a5
                  xor          s10, a6, zero
                  srli         t1, a6, 9
                  xori         t1, s11, 85
                  and          t0, a1, tp
                  sra          s8, tp, a6
                  srai         s5, s3, 12
                  sra          t1, t5, s7
                  sltu         s3, s8, a5
                  sltu         a1, a0, s10
                  srli         a0, t2, 28
                  xor          t6, ra, s11
                  andi         sp, t2, 94
                  lui          t4, 223005
                  auipc        tp, 542156
                  slti         s2, a0, 2001
                  xor          s2, a5, s4
                  auipc        sp, 622457
                  addi         t1, t2, 322
                  sltiu        tp, s2, 1647
                  or           s5, s8, s2
                  srai         a0, s0, 24
                  sub          a1, a2, a3
                  sub          t4, a0, s1
                  slli         t5, a3, 0
                  srli         tp, s6, 15
                  lui          s7, 459460
                  and          t1, s0, a3
                  auipc        gp, 135843
                  slli         t3, s0, 12
                  srli         gp, t6, 25
                  lui          sp, 787717
                  lui          s3, 776091
                  add          t3, s11, t2
                  sra          s4, zero, t3
                  xor          s8, s6, s1
                  xori         zero, a5, 1720
                  nop
                  andi         s7, s8, -958
                  and          t3, a5, a7
                  slli         s8, t5, 31
                  slli         s1, a6, 16
                  sll          t1, a5, t4
                  sll          t1, t3, zero
                  sltu         s3, t4, t1
                  sltu         t1, s10, s7
                  or           t5, t0, a6
                  xor          gp, s8, a0
                  srl          s2, s4, tp
                  add          t6, a4, s5
                  slli         s8, s8, 19
                  srai         a6, a1, 21
                  sub          t3, t4, ra
                  srai         a0, s5, 1
                  slli         s3, a1, 5
                  slt          a1, s4, a5
                  sll          sp, s0, zero
                  ori          s2, a2, -2005
                  slt          t0, gp, ra
                  sltiu        a7, s2, -1513
                  ori          s8, t1, 543
                  srl          t6, a6, a3
                  xori         s10, t1, -106
                  sll          a6, s11, s1
                  addi         s2, ra, 595
                  xor          t4, t2, s4
                  lui          s8, 897250
                  or           sp, t1, tp
                  sltiu        s10, s8, -420
                  add          s2, a3, a4
                  addi         t5, a7, -1247
                  addi         a1, a0, -1069
                  sra          s6, s11, a2
                  sltiu        tp, s6, -681
                  srai         s4, zero, 24
                  sltiu        sp, sp, -190
                  sra          t4, a0, s4
                  xori         a6, s9, -1923
                  srli         sp, zero, 30
                  add          s5, a7, a7
                  and          ra, s3, a6
                  sll          sp, s2, a0
                  sll          s1, t3, t2
                  auipc        zero, 346528
                  srai         s1, s7, 13
                  xori         a7, sp, -1651
                  sub          a3, t4, a4
                  slti         tp, t4, 1180
                  lui          t4, 708081
                  ori          s7, tp, 1843
                  or           s11, s2, s7
                  sltiu        sp, gp, 1883
                  add          s8, a5, a1
                  ori          a2, ra, 75
                  sra          zero, s2, t4
                  sub          s7, a0, t0
                  sltu         a6, t6, gp
                  ori          zero, t4, 1816
                  add          s4, ra, s5
                  sltiu        a7, t1, 1557
                  sltiu        a6, zero, -1423
                  slti         t0, a7, -1263
                  ori          t1, ra, 1189
                  sub          s4, t6, a1
                  or           ra, s7, tp
                  andi         s7, s0, 1866
                  srai         gp, t6, 9
                  sra          t4, s8, t1
                  sll          tp, s3, t0
                  add          s7, t5, a5
                  add          t0, a3, a5
                  slt          s11, t4, zero
                  lui          t1, 471212
                  and          s6, gp, s9
                  xori         t4, s10, 159
                  xori         gp, a6, -1555
                  addi         t5, s8, 1551
                  sltu         zero, t1, gp
                  sltu         t1, a3, s1
                  sltu         a5, a6, t4
                  slt          t1, s10, gp
                  addi         s6, s1, -1677
                  xor          tp, gp, s10
                  ori          s1, t5, 1566
                  slt          t1, s4, t0
                  sra          s4, ra, t4
                  slti         a2, s1, -335
                  sltiu        t6, t0, -747
                  xori         a3, a4, 1118
                  srli         t3, a4, 19
                  nop
                  slli         t0, t6, 7
                  nop
                  or           a5, t6, t0
                  lui          s5, 172139
                  andi         s1, a3, 1076
                  slt          a5, t5, s0
                  srli         ra, s1, 29
                  sub          t6, t0, s4
                  sra          s3, s10, s6
                  ori          a0, t0, 154
                  nop
                  xori         s7, s6, 463
                  srli         sp, t5, 22
                  slti         a3, t0, 56
                  srli         tp, zero, 3
                  srl          s6, t0, s4
                  add          s7, a0, t6
                  auipc        s6, 161825
                  sltiu        s6, s9, 1449
                  slti         a2, a0, 545
                  xori         s5, s2, -1076
                  addi         a0, s7, -1712
                  sltu         s7, t0, t1
                  ori          tp, s6, -1077
                  sltiu        gp, s5, -663
                  ori          s7, s1, 2015
                  and          s10, s11, s0
                  ori          t3, a2, 1215
                  xori         a2, s8, -1695
                  slti         tp, s8, -1130
                  auipc        a1, 711222
                  or           s8, s5, sp
                  or           a7, a5, a3
                  sltu         s3, a4, s3
                  auipc        s8, 208116
                  andi         a5, t3, -1799
                  nop
                  sra          s5, a6, t0
                  sra          tp, s6, a2
                  andi         gp, s9, 518
                  sltiu        a6, a1, -1972
                  sll          s7, a5, a2
                  sub          sp, s9, s8
                  slli         a5, tp, 29
                  slli         a3, a0, 29
                  srl          s7, a5, a7
                  slt          s1, s10, t3
                  slt          a3, s8, tp
                  srli         gp, a3, 9
                  nop
                  sltiu        s1, t6, 357
                  andi         t1, s8, 51
                  auipc        s4, 258872
                  xor          s11, t1, a2
                  or           s9, s6, t1
                  auipc        a0, 797103
                  sltu         a6, s8, s1
                  srai         t5, s4, 10
                  xor          s7, t1, a0
                  slli         t5, a4, 28
                  sll          s2, t6, s0
                  slli         t0, t1, 10
                  auipc        t1, 909651
                  srl          s7, a0, s6
                  srli         t0, s0, 24
                  sub          a5, s4, s9
                  srai         a1, t5, 22
                  sltiu        s1, zero, 2019
                  addi         s4, ra, 2010
                  lui          s8, 136704
                  slt          a2, t2, s10
                  sub          zero, t2, s7
                  xor          t0, s6, a6
                  add          s3, s3, s0
                  srai         t3, gp, 18
                  or           s11, t0, t2
                  slli         sp, t5, 15
                  sltu         s3, t2, t5
                  auipc        s11, 434678
                  slt          s10, s3, s9
                  xori         s6, s0, -190
                  slli         gp, a2, 17
                  and          t5, a4, gp
                  slti         s11, a6, -1301
                  sltiu        t1, s7, 1240
                  or           t6, a3, a5
                  ori          s7, a4, -1578
                  lui          s8, 305873
                  add          a3, s2, sp
                  sra          t4, s1, s10
                  add          s11, s5, t5
                  add          sp, t4, s9
                  or           t6, t5, s11
                  slti         zero, s2, -1483
                  slli         t4, s4, 30
                  ori          t4, s5, 721
                  xori         sp, a0, -1872
                  auipc        a0, 7487
                  lui          s8, 753870
                  sub          s5, s7, s2
                  addi         s8, s9, -1779
                  add          tp, s8, t4
                  slti         s8, s2, -257
                  lui          s2, 169486
                  srl          s6, s3, t5
                  auipc        s2, 485993
                  xor          t4, tp, s2
                  sra          s10, ra, s9
                  auipc        s7, 15188
                  srli         a5, s5, 23
                  slli         gp, s3, 31
                  add          gp, t6, s7
                  srai         a1, a2, 10
                  add          sp, t4, a7
                  srai         a2, t3, 19
                  srli         zero, a1, 2
                  xor          tp, a7, gp
                  lui          s8, 260565
                  srai         a3, a0, 5
                  nop
                  srl          ra, tp, t0
                  sll          s4, ra, zero
                  auipc        s5, 979581
                  xor          s6, s10, a4
                  srl          s9, tp, zero
                  andi         s9, s0, 107
                  andi         s10, gp, -1677
                  slt          t3, s0, t2
                  and          t5, s1, zero
                  and          a0, s5, t6
                  slli         ra, s5, 24
                  and          t5, ra, gp
                  nop
                  xor          s5, a3, t0
                  or           s5, s1, s11
                  addi         a3, ra, 815
                  and          t0, s0, a2
                  sra          s2, s11, s5
                  lui          gp, 157868
                  lui          s6, 976840
                  ori          zero, t6, 1330
                  xor          a3, s11, s6
                  sra          t0, a5, s0
                  and          sp, t6, s9
                  xori         a5, tp, -1670
                  nop
                  lui          s1, 132696
                  andi         gp, t6, 729
                  sltu         s3, s9, sp
                  sltu         ra, a2, zero
                  add          t6, s6, a4
                  srli         zero, a7, 18
                  slt          t5, gp, tp
                  sltu         s1, s4, zero
                  slli         s3, s7, 28
                  xor          s10, t1, a6
                  sub          a0, s11, s0
                  ori          t4, tp, -1817
                  addi         a5, sp, 1195
                  lui          t4, 714566
                  or           t3, a6, s6
                  ori          s4, t0, 1716
                  addi         s11, a4, -1537
                  sub          sp, ra, a5
                  ori          t6, s7, -161
                  nop
                  andi         s9, a7, -1385
                  andi         a6, a5, -244
                  xor          s9, tp, s3
                  slti         a5, a6, -1051
                  sltu         t5, a7, sp
                  xori         a1, s10, 1097
                  add          a2, gp, s11
                  auipc        s2, 76113
                  or           t4, s9, t6
                  andi         gp, s0, 415
                  sll          s4, s6, t0
                  srli         a3, t4, 0
                  nop
                  srl          s2, a1, a1
                  and          t0, t4, a5
                  lui          t0, 127182
                  or           zero, t4, a0
                  xori         s9, a3, 175
                  sub          s5, t3, s2
                  xori         s10, gp, -2027
                  ori          t4, s2, -1675
                  ori          s6, zero, -42
                  lui          t0, 939944
                  sltu         s4, a3, s10
                  slt          t5, s9, s2
                  add          t0, s4, s10
                  sub          ra, s2, tp
                  xori         t1, t1, -437
                  srai         a2, s1, 21
                  slli         t5, s9, 10
                  andi         gp, s7, 1112
                  nop
                  addi         t0, s6, 1737
                  and          s1, ra, s8
                  srai         a3, s9, 5
                  xor          s10, t2, s0
                  nop
                  ori          sp, gp, 1651
                  ori          s3, a5, -1368
                  sll          s10, s7, gp
                  sub          tp, a5, sp
                  addi         s5, s8, -1462
                  xori         a0, a4, 1355
                  andi         a5, t3, -1172
                  slt          s11, sp, s10
                  ori          tp, a1, -1729
                  nop
                  slt          a0, a0, a4
                  sltiu        t6, s4, -1273
                  ori          zero, a4, -440
                  srli         a5, t4, 24
                  or           t1, a7, gp
                  xori         s11, s6, 1630
                  xori         t0, s2, 844
                  slt          a2, t5, s6
                  srl          ra, s7, s7
                  lui          s8, 971475
                  slt          s8, tp, s11
                  slli         a1, t0, 16
                  slt          a6, t2, a1
                  xori         gp, a5, 146
                  andi         a5, s0, 10
                  xor          t1, s11, s5
                  and          t3, t3, zero
                  sltiu        s4, a1, -1366
                  slli         s8, t5, 29
                  xor          a3, ra, gp
                  or           s3, ra, s2
                  xor          zero, a3, s7
                  sltiu        a5, t4, -368
                  srl          gp, t6, s1
                  or           t5, gp, s5
                  sub          a1, s7, s11
                  ori          tp, ra, -389
                  lui          zero, 124817
                  slli         a3, s5, 9
                  lui          zero, 339007
                  or           s3, sp, ra
                  slti         t5, t1, 1857
                  slt          t4, a5, tp
                  addi         s2, a2, 1577
                  andi         s10, t5, 321
                  auipc        s5, 821767
                  auipc        ra, 993243
                  addi         s1, ra, 23
                  sub          t6, a2, ra
                  and          t0, zero, s5
                  and          s7, s11, s2
                  add          s10, a6, t0
                  sltiu        s4, s2, -1437
                  srai         s11, a7, 14
                  add          s7, t4, tp
                  auipc        a1, 953661
                  sll          s9, s0, a3
                  auipc        t5, 386860
                  srli         s3, s6, 29
                  slli         gp, s7, 24
                  addi         t4, gp, 727
                  xor          t3, t2, sp
                  slti         t5, a5, 943
                  add          a3, t3, s5
                  sra          a1, s9, t2
                  xor          a0, s1, t6
                  sltiu        s7, t6, -110
                  andi         s9, t1, 619
                  sub          s9, zero, s10
                  andi         s1, a3, 1844
                  slt          a3, a4, t4
                  slt          tp, a7, a7
                  slti         s5, s0, 1511
                  sltu         a3, s4, t1
                  sltiu        sp, s3, 1142
                  sltiu        ra, a4, 976
                  xori         a6, a2, -1780
                  nop
                  addi         s11, t0, 1081
                  andi         s11, t2, -1125
                  slti         a5, ra, 616
                  and          s9, a2, s2
                  sra          s5, t2, a4
                  slti         s1, s7, 380
                  slti         s4, a1, -1410
                  add          zero, s9, t3
                  sll          s5, a3, s9
                  addi         a0, s7, 707
                  sll          t0, t5, t3
                  slti         s10, a0, -128
                  auipc        t1, 141017
                  xori         s7, a2, -1228
                  sltu         a0, tp, tp
                  nop
                  srai         a0, a5, 29
                  addi         a3, t5, -477
                  sub          t1, t6, s11
                  nop
                  srli         a5, sp, 17
                  sltiu        a7, s4, -800
                  slti         s9, t4, 1292
                  nop
                  slt          gp, s11, a1
                  andi         t4, s9, 1553
                  sll          t1, s3, s9
                  nop
                  slt          t1, a2, tp
                  srai         a0, s4, 2
                  nop
                  nop
                  add          t6, s11, s6
                  lui          t6, 985534
                  sra          s8, t3, t0
                  xori         t1, s11, -710
                  slli         t4, t5, 5
                  add          s2, sp, gp
                  sra          s4, s7, s1
                  addi         gp, ra, -68
                  auipc        a2, 285825
                  auipc        a0, 286871
                  or           a0, a5, zero
                  and          a5, s9, a5
                  or           s8, tp, a0
                  nop
                  srai         t6, s1, 15
                  addi         s4, s6, 1708
                  sll          s7, gp, s4
                  xori         tp, s0, 900
                  sll          s2, s9, sp
                  and          a6, t4, gp
                  srli         a2, t3, 16
                  slli         s11, s7, 20
                  sll          s9, s9, s5
                  addi         t4, t0, -379
                  auipc        a1, 898836
                  sltiu        a3, s11, -631
                  slli         a0, a1, 5
                  auipc        s4, 173014
                  srl          ra, s2, s4
                  add          s9, s3, s3
                  sltu         s6, s8, s4
                  lui          s7, 659465
                  addi         ra, s11, -1772
                  sll          ra, a5, a3
                  ori          a3, t5, -741
                  addi         t1, s3, -782
                  andi         gp, s6, -192
                  slti         a0, t1, -1939
                  slti         s4, sp, -1541
                  srli         ra, gp, 28
                  srl          t5, zero, s2
                  andi         t0, t2, 1583
                  and          t6, s0, s8
                  slli         s9, s5, 10
                  slt          t3, gp, a4
                  ori          t0, a5, 1402
                  add          s1, tp, a6
                  xor          s11, t6, t1
                  slti         s4, a3, -1222
                  slti         s4, s3, 810
                  slt          gp, t0, s7
                  lui          t3, 411250
                  addi         a5, a1, 843
                  sra          tp, t6, zero
                  sub          zero, s2, gp
                  srli         s4, s3, 25
                  sll          ra, s9, t2
                  sltiu        a2, a2, -648
                  xori         a7, s9, 929
                  and          a0, ra, t5
                  sra          t4, a7, s4
                  li           s3, 0xa53698d3 #start riscv_int_numeric_corner_stream_10
                  li           s8, 0x0
                  li           s10, 0x80000000
                  li           a3, 0x0
                  li           t0, 0xf83cef4b
                  li           a5, 0x0
                  li           a2, 0x80000000
                  li           tp, 0xffffffff
                  li           t5, 0xffffffff
                  li           ra, 0x0
                  sub          t0, a3, a2
                  nop
                  auipc        t5, 268234
                  auipc        ra, 55831
                  addi         tp, a3, -1874
                  sub          ra, s8, a5
                  addi         t5, ra, -682
                  add          a3, a3, tp
                  sub          t0, a3, t0
                  auipc        ra, 62532
                  add          a2, a3, ra
                  lui          s8, 820114
                  add          t5, s8, s3
                  addi         a2, ra, -429
                  auipc        ra, 751073
                  nop
                  nop
                  sub          ra, t0, t0
                  lui          s8, 362900
                  auipc        t0, 427584
                  auipc        s3, 272501 #end riscv_int_numeric_corner_stream_10
                  nop
                  slti         ra, a2, -308
                  nop
                  slt          sp, s2, a6
                  slt          a6, s7, s3
                  sll          t0, t6, a1
                  srai         a1, s0, 3
                  srl          a5, t1, a3
                  slli         t0, a5, 26
                  slt          s6, s1, a6
                  srai         a1, s4, 14
                  srli         s11, ra, 14
                  auipc        a7, 105467
                  sll          s2, t2, t4
                  sll          s5, s10, zero
                  lui          t0, 698723
                  sltiu        t0, s3, -1135
                  ori          s2, sp, 1966
                  xor          tp, s3, a6
                  slt          a6, tp, s8
                  xor          s5, a6, s8
                  sra          s2, s6, sp
                  sltiu        a2, sp, 1431
                  slli         tp, tp, 17
                  sltiu        tp, a1, 766
                  slli         s2, s7, 18
                  srl          zero, t2, s3
                  slli         ra, s6, 4
                  sltiu        s6, ra, -1215
                  xor          gp, tp, a4
                  and          t1, a2, s4
                  auipc        s6, 969976
                  slti         t5, ra, -15
                  nop
                  xori         t6, s5, 1203
                  sltiu        s3, ra, 1222
                  sub          s10, ra, sp
                  slti         s10, a6, -1846
                  lui          s10, 800800
                  srli         t3, a7, 22
                  srli         a7, s4, 21
                  auipc        a0, 163439
                  xor          s5, s5, s2
                  sltiu        s6, t3, 584
                  slti         s8, a5, 1150
                  slli         s10, s9, 23
                  nop
                  andi         s4, ra, 936
                  lui          s7, 402347
                  sltu         t1, s8, a0
                  srai         s7, s3, 11
                  slti         s1, sp, -1209
                  slli         a7, gp, 8
                  sra          t3, t2, t2
                  addi         t6, s1, 533
                  slti         t0, t4, -788
                  srl          s5, s5, s10
                  srai         t4, a5, 25
                  lui          a5, 1040200
                  sltu         t4, tp, s2
                  slli         s5, a0, 25
                  nop
                  srl          s6, t3, s7
                  slli         t3, s0, 14
                  and          s11, s3, s1
                  slt          gp, a0, ra
                  slti         s3, s9, 421
                  srai         t0, t1, 12
                  add          s10, s6, s10
                  xori         s6, sp, -364
                  srai         s10, a7, 7
                  slti         s1, s3, -560
                  srai         s9, s1, 14
                  sra          t1, gp, a4
                  addi         zero, sp, 924
                  or           sp, t1, s9
                  nop
                  addi         s2, a3, -654
                  xor          s11, s10, a0
                  srai         s11, s2, 22
                  ori          a6, a1, -1382
                  sra          s10, a4, s8
                  addi         zero, t0, -1138
                  slt          s8, t5, sp
                  sltiu        gp, s6, 1199
                  srl          a7, t5, ra
                  ori          s4, t0, 928
                  add          a0, t4, s5
                  addi         t3, s1, 1837
                  srl          s2, a4, a6
                  ori          a6, t5, 1673
                  sltu         s3, a4, t0
                  ori          s6, s6, 186
                  slli         tp, t0, 29
                  slti         a1, s7, -1865
                  xori         s5, tp, -1656
                  sra          gp, gp, t6
                  srli         t4, s4, 11
                  addi         a2, a3, -735
                  and          sp, s9, s10
                  srl          s9, t1, s1
                  sll          a0, t5, a1
                  lui          a6, 383503
                  sub          s9, t1, s7
                  slli         a3, t0, 16
                  xor          gp, t0, t2
                  xor          s7, s2, t1
                  srl          a1, s8, a5
                  andi         t5, s0, -1513
                  add          s6, gp, s6
                  addi         a0, t6, 1613
                  nop
                  slti         gp, sp, 286
                  sltu         s8, s5, t2
                  slt          t1, s1, sp
                  sra          s7, t3, a2
                  srai         t4, s11, 3
                  sll          s11, s4, s0
                  sltiu        s4, s9, -1138
                  slli         s10, s10, 24
                  slti         gp, s3, -1237
                  srl          sp, tp, s2
                  auipc        t5, 109271
                  srl          t1, s5, t3
                  sub          s9, sp, a5
                  xor          s4, s7, s8
                  slt          a1, t0, a6
                  sltu         ra, gp, t3
                  or           t3, gp, t4
                  addi         t4, s6, -1632
                  sub          s3, a7, s1
                  srai         s4, s7, 18
                  sll          a6, s10, s4
                  srai         s8, s6, 7
                  slli         a5, s10, 23
                  srli         s3, sp, 26
                  slli         t6, a3, 22
                  or           a7, t2, tp
                  and          s11, s10, s1
                  xor          zero, s7, a2
                  sltiu        a6, a4, -1715
                  slti         s10, zero, 788
                  and          s3, t4, s8
                  slti         t4, s8, -584
                  xor          s8, s11, t6
                  slti         s4, s10, 221
                  lui          gp, 23222
                  sra          s11, t5, a4
                  sltiu        t1, s8, -886
                  sll          a5, s6, a0
                  xor          a3, t2, a2
                  sra          t4, a5, gp
                  srli         s9, s4, 18
                  sra          a0, t1, s11
                  srai         a2, tp, 26
                  sltu         a7, gp, s6
                  srl          a2, a1, a1
                  slli         s3, s10, 25
                  slt          ra, ra, s9
                  xor          t1, t4, sp
                  xor          s9, s1, tp
                  lui          s9, 288138
                  sltiu        a5, s1, -1317
                  sltiu        s2, a0, 416
                  sll          s7, s5, t0
                  sra          a2, sp, t3
                  sltiu        t6, tp, 455
                  sub          zero, t1, a4
                  add          s3, a2, t3
                  slt          a1, t4, a2
                  srli         t4, sp, 2
                  xor          s8, s8, a4
                  sll          t4, a1, a7
                  slli         t0, a0, 3
                  xori         s11, s7, -1828
                  lui          sp, 599081
                  sltu         s5, a2, t4
                  sra          t3, zero, s4
                  xor          s6, a0, s0
                  or           t1, s2, a1
                  xor          a7, gp, s4
                  xor          zero, s0, gp
                  andi         s10, s1, -49
                  srl          t5, t6, ra
                  sltu         s9, a7, a5
                  sll          a3, t1, tp
                  and          t0, s1, s6
                  slt          a6, a6, t6
                  slti         a5, a1, -988
                  nop
                  sra          a5, t6, gp
                  or           t0, s9, t0
                  slti         t5, s0, 889
                  or           s7, s6, a7
                  slti         zero, s7, 192
                  andi         zero, a5, -1990
                  slli         tp, s0, 0
                  ori          a2, s7, 668
                  add          t0, t4, s4
                  srai         s4, t5, 11
                  srl          s5, a1, s6
                  slt          a5, s3, s4
                  addi         gp, gp, -1331
                  srli         t5, s8, 24
                  sll          s4, a2, t5
                  auipc        a1, 747364
                  auipc        gp, 921880
                  andi         s1, s9, 1366
                  slt          s10, sp, t2
                  or           t6, t0, a6
                  lui          a1, 235986
                  srai         s7, t2, 24
                  add          s7, a5, s10
                  and          gp, s10, t0
                  slti         s8, s2, -928
                  sll          t5, a3, s7
                  srli         s4, ra, 16
                  sub          gp, zero, a7
                  and          s11, t4, a6
                  sll          s8, s9, s7
                  sltiu        t6, s0, 1669
                  sll          a3, s11, a4
                  srl          a1, a1, zero
                  ori          t0, s3, -889
                  srl          gp, a3, s9
                  ori          s3, s11, 1037
                  sll          s3, tp, s8
                  andi         s4, s4, 1176
                  addi         a2, s6, -381
                  slli         a2, a1, 14
                  and          a7, s6, t5
                  ori          s7, a5, 1826
                  ori          t3, s3, -1370
                  srli         s6, s3, 12
                  slti         gp, s10, 121
                  slt          s8, a6, sp
                  and          a1, s8, t0
                  ori          t6, s6, -1563
                  sll          a5, a2, ra
                  sltiu        a3, ra, 737
                  or           a2, a3, a7
                  slt          t0, s8, sp
                  add          a2, a7, a5
                  xor          t4, t3, a6
                  sll          a6, a0, a2
                  or           ra, a2, s4
                  sltiu        a2, zero, 1312
                  lui          a5, 889816
                  or           t6, s6, t6
                  nop
                  auipc        s9, 594165
                  sll          s7, a0, a5
                  sra          s5, gp, s5
                  ori          t1, s5, -1807
                  sltu         t6, s11, s3
                  ori          gp, a0, -495
                  sltiu        a6, s9, 1629
                  slli         t5, t4, 5
                  slt          a3, a7, a2
                  slt          ra, t3, s2
                  srl          s8, tp, s3
                  ori          t3, a7, 577
                  lui          t3, 1013073
                  slti         s3, t5, -576
                  sltu         s5, a6, ra
                  sub          tp, a3, s2
                  add          a7, s10, s11
                  srl          zero, s0, a7
                  ori          s1, s6, -1739
                  addi         zero, s10, -1346
                  sra          t6, ra, s11
                  xori         a5, s6, 445
                  nop
                  srl          s7, t2, a1
                  slti         s9, t5, 1431
                  sub          t1, a7, s5
                  sll          a5, s3, t2
                  sll          s11, a1, a7
                  or           s9, sp, ra
                  auipc        s5, 790069
                  xor          s2, s3, ra
                  sub          s2, s2, a0
                  sra          gp, a4, a5
                  srl          a6, s9, s6
                  andi         a5, s5, -1364
                  srai         s5, t4, 26
                  auipc        a5, 1968
                  sltiu        s6, s7, 891
                  sra          t1, a0, s2
                  ori          zero, zero, 1940
                  add          t1, t1, a5
                  slli         s9, ra, 10
                  srai         t4, a1, 1
                  ori          s5, a2, -69
                  srai         sp, s1, 14
                  srai         ra, t6, 20
                  sltu         s10, s4, t4
                  xori         t6, s8, 1911
                  ori          a3, a1, 663
                  srai         sp, gp, 0
                  xori         s7, s11, 1486
                  ori          s11, t1, -1398
                  sub          s10, zero, a3
                  xori         a3, s0, -857
                  auipc        a7, 987463
                  lui          s10, 552210
                  sltu         a1, t5, gp
                  auipc        a7, 673227
                  add          t4, tp, t2
                  sub          s10, s10, tp
                  srl          gp, a5, t1
                  slli         s5, a5, 27
                  slti         s10, s7, -1603
                  xor          t0, a5, s10
                  and          s3, a4, s9
                  add          t4, s11, ra
                  sra          t5, t6, t6
                  srai         tp, a7, 2
                  slt          s9, a3, a4
                  srai         sp, t4, 27
                  slt          t0, a5, s1
                  andi         s9, s4, -377
                  srl          a5, t6, zero
                  andi         s9, s4, 1784
                  ori          t0, a7, 49
                  lui          s10, 931390
                  lui          zero, 597094
                  srl          a6, t5, t0
                  add          s11, s9, t0
                  slt          s6, s4, a6
                  slti         s6, s1, -1341
                  srli         tp, t3, 19
                  ori          s2, sp, -1021
                  add          a2, s4, s7
                  nop
                  or           s1, s4, t0
                  srli         s7, t1, 14
                  xor          t6, s11, a0
                  addi         t0, t5, -215
                  ori          s2, t3, -1029
                  slt          s9, a7, t2
                  slti         s5, a2, -986
                  sra          s8, s6, s7
                  addi         t3, t1, 761
                  or           t0, t3, s11
                  and          s11, t2, t5
                  ori          s10, a1, 1011
                  nop
                  srai         a2, t3, 13
                  or           t6, s10, t1
                  or           t1, s10, s1
                  sll          t4, s1, gp
                  sra          s5, tp, s5
                  andi         s8, gp, 956
                  auipc        a7, 872417
                  auipc        s10, 948766
                  srai         s10, a0, 27
                  auipc        t3, 213575
                  sub          s3, s3, t2
                  auipc        s10, 641664
                  and          s6, t5, s1
                  srl          s4, s5, a0
                  sll          a0, s2, s2
                  or           s6, sp, a5
                  srli         tp, sp, 20
                  srl          a6, s2, a1
                  xori         s2, a0, -1230
                  addi         s10, sp, -1206
                  or           a1, a1, s4
                  slt          a6, s4, t2
                  slti         a2, s9, -681
                  srl          t4, t3, t5
                  auipc        t3, 185831
                  andi         a7, s4, 151
                  sub          t0, s7, s7
                  andi         sp, s6, 869
                  slli         a1, a4, 11
                  add          t6, a0, s4
                  sltu         a6, a3, s1
                  srai         s6, s5, 24
                  slt          s10, ra, s5
                  xor          t3, s2, s8
                  and          s8, a4, a5
                  and          sp, s10, s8
                  xori         gp, tp, -660
                  add          a1, s5, t2
                  srli         gp, t0, 29
                  slt          tp, s3, gp
                  ori          s6, tp, 629
                  add          s8, t3, s8
                  and          t6, zero, s9
                  addi         s5, a5, 1299
                  srli         t1, t2, 24
                  sltu         s4, a2, zero
                  ori          sp, s7, -1581
                  auipc        a2, 618049
                  sra          t6, s6, a0
                  sub          s11, zero, s10
                  nop
                  and          a0, a4, s3
                  sub          s11, t0, s2
                  srli         s10, t6, 28
                  slli         sp, a5, 21
                  sll          s9, sp, s0
                  add          s10, a2, t3
                  slti         gp, gp, 485
                  addi         a1, gp, -1488
                  sltiu        s1, s6, -765
                  and          a7, s11, t3
                  and          s10, t0, t3
                  srl          t5, t6, s5
                  xori         a5, a2, -161
                  add          t3, t1, s3
                  sra          a1, t2, a6
                  srai         s10, t5, 26
                  sra          s11, a5, t0
                  xori         s6, a4, 1811
                  sub          s11, a6, s5
                  lui          s2, 315704
                  sub          s7, s3, a4
                  auipc        gp, 419567
                  sltiu        t5, a7, 1302
                  srli         t5, s0, 24
                  sltiu        a3, s4, 150
                  andi         s4, a5, 715
                  sub          zero, s4, s2
                  or           s5, s3, s10
                  xori         a6, a0, 1926
                  xori         s5, t3, -1552
                  slli         tp, s3, 17
                  slt          s2, a6, gp
                  xori         a5, t5, -616
                  or           s2, t1, a7
                  add          a6, t6, t3
                  xor          t5, s3, s0
                  slt          a5, s8, a1
                  sra          a0, s6, s1
                  sub          tp, zero, sp
                  or           s1, gp, s3
                  srl          a6, t0, s8
                  slt          a1, t4, tp
                  xor          s5, s10, a7
                  sub          a7, sp, s5
                  lui          s6, 126687
                  lui          a2, 842047
                  lui          zero, 716648
                  slli         s9, s4, 17
                  srli         s3, t5, 11
                  andi         s11, t4, -296
                  sra          a6, sp, s9
                  srli         a1, a3, 13
                  sub          t6, s0, s4
                  slt          t5, s10, a6
                  ori          a3, a2, -870
                  srai         s9, s1, 20
                  sub          a7, s9, s6
                  sra          sp, a2, t1
                  and          t5, a1, a1
                  add          s3, t0, t4
                  srli         a0, t4, 20
                  slli         s9, t2, 2
                  srl          a3, a4, tp
                  slt          a5, a5, s8
                  lui          a5, 709364
                  srli         ra, t2, 21
                  andi         ra, s11, 1717
                  slti         t5, t6, 237
                  and          s3, s2, s1
                  lui          ra, 757533
                  slti         t5, a5, -613
                  srl          t4, s3, a5
                  sub          a1, t6, a1
                  add          a1, a2, s3
                  xori         a1, t1, -1416
                  srli         t3, t3, 8
                  or           a7, a6, s6
                  lui          s5, 335169
                  or           s10, s0, a4
                  and          t4, a0, t4
                  xor          s7, tp, s11
                  xor          t0, s5, a1
                  lui          tp, 650307
                  srli         s5, a6, 15
                  slti         a1, zero, 1121
                  nop
                  slt          s10, a3, a0
                  slti         s7, t5, 279
                  and          zero, s0, s7
                  sltu         a2, a6, s4
                  ori          s11, a1, -456
                  and          a1, t1, a5
                  or           a2, s7, s8
                  sltu         s3, ra, s10
                  sub          s11, tp, s4
                  sll          a5, t6, s10
                  auipc        s11, 732191
                  addi         s4, zero, 1408
                  sub          a2, s7, a2
                  add          a7, gp, t4
                  or           t4, gp, a5
                  and          t5, t3, t0
                  sll          a3, ra, a4
                  srai         t4, a2, 20
                  nop
                  add          s2, t3, s4
                  lui          ra, 924702
                  lui          t1, 592340
                  sra          t6, t2, zero
                  sltiu        s9, s8, 1264
                  slti         t0, tp, 155
                  andi         a5, t6, 1776
                  sltiu        t1, t0, -1908
                  and          t5, a7, tp
                  sll          s11, t0, t0
                  and          s4, a1, a2
                  sltiu        t3, s4, 734
                  sll          s8, a1, s0
                  srli         ra, a7, 24
                  xor          s6, s5, gp
                  slt          s10, a5, s4
                  srl          t6, s11, t6
                  auipc        s3, 477104
                  addi         a5, s9, -114
                  xori         zero, tp, 379
                  slt          s9, t4, s3
                  sra          t0, s5, a2
                  add          s7, a4, s10
                  sub          s1, s10, s9
                  sll          a3, t5, a0
                  sub          t4, s1, zero
                  xor          a6, a1, a1
                  sra          s1, s8, t1
                  andi         t0, s9, 305
                  ori          s10, t0, -1997
                  xor          a3, s8, t1
                  andi         s4, s7, 53
                  and          s1, a0, t2
                  addi         ra, t6, 26
                  sra          t3, s11, s4
                  xor          s7, a5, a5
                  srli         s2, a6, 21
                  sra          zero, s3, s8
                  andi         s6, t1, -1476
                  ori          t5, t1, -478
                  and          a1, s5, s10
                  slti         s9, a3, -294
                  slt          s8, s7, zero
                  sltiu        s8, a2, -1746
                  and          s8, a6, a7
                  addi         s2, t0, -989
                  srl          tp, t5, zero
                  lui          s8, 273167
                  lui          t5, 281354
                  srli         s1, s2, 31
                  andi         t4, s6, -6
                  sltu         a5, tp, tp
                  nop
                  ori          t5, t5, 1424
                  add          t3, tp, sp
                  add          t5, t0, s10
                  slli         tp, t4, 11
                  addi         tp, a6, -942
                  sltu         a2, t5, a0
                  ori          t0, s9, -67
                  xor          a1, s6, s8
                  and          t6, a5, t2
                  xori         s6, t1, -2007
                  slti         t3, s10, 1814
                  sra          s3, t1, s6
                  sltu         zero, gp, sp
                  xor          t4, t4, s10
                  srli         a7, t0, 30
                  or           tp, t0, t2
                  srli         s2, t2, 7
                  nop
                  srli         sp, t2, 13
                  sll          s4, s11, sp
                  sub          s4, s10, ra
                  lui          s5, 406795
                  xori         s2, t0, -762
                  addi         s6, gp, 792
                  sra          s5, a5, s0
                  addi         s10, s6, 166
                  slti         s6, s2, 1295
                  addi         s1, s10, 1801
                  srai         t1, s6, 1
                  sltiu        s11, s7, -1877
                  srli         s1, s9, 24
                  or           t6, s1, s5
                  auipc        t3, 608184
                  sub          s9, tp, s6
                  auipc        s1, 749860
                  and          gp, s3, s0
                  slt          t5, a4, tp
                  srl          a5, a0, ra
                  srai         s2, t5, 27
                  srl          t1, sp, s3
                  xor          a7, s11, t3
                  ori          t6, t3, -312
                  addi         zero, tp, 1677
                  srli         a7, a0, 22
                  nop
                  sll          s9, a5, s11
                  slt          t0, s5, s7
                  slli         s10, zero, 18
                  srli         t1, zero, 19
                  slti         t1, s0, -1295
                  xori         a2, t4, 461
                  andi         a7, s8, 688
                  slti         a7, ra, 1018
                  lui          a5, 148487
                  addi         s11, gp, -1367
                  slli         s2, s7, 6
                  nop
                  sra          a0, s0, s3
                  sltiu        s3, a2, 1113
                  slti         a7, gp, -416
                  sll          a0, a5, a6
                  or           s8, t3, a4
                  lui          sp, 1045528
                  auipc        s3, 659204
                  sub          t6, a2, a0
                  ori          s3, t4, 1772
                  auipc        s2, 90252
                  lui          s3, 768244
                  ori          t1, a1, -1591
                  srli         s4, t2, 26
                  andi         t0, s2, -302
                  sub          tp, ra, t0
                  nop
                  sra          s7, s2, s0
                  and          s10, s1, s2
                  slli         t4, s6, 12
                  addi         t3, a2, 771
                  lui          s10, 115624
                  auipc        s8, 11530
                  sll          s5, t5, a4
                  andi         t6, sp, 734
                  or           s5, t5, s0
                  add          t5, s5, s5
                  and          a6, a2, s4
                  srl          s4, t1, ra
                  lui          a1, 931197
                  xori         s9, t2, -1477
                  slti         t4, s9, 576
                  auipc        s3, 736297
                  srl          ra, ra, a6
                  slt          t3, sp, s3
                  or           a6, zero, t3
                  slli         a0, s0, 5
                  nop
                  slt          t5, t4, zero
                  sltu         gp, a7, t1
                  andi         t1, a4, -1203
                  andi         sp, ra, -1250
                  or           t0, a0, s9
                  slti         t5, a6, -675
                  sll          gp, a3, s2
                  srli         s2, zero, 17
                  xor          s4, s8, a1
                  sll          s9, t3, a4
                  xor          s11, s10, s1
                  nop
                  sltiu        tp, t5, 1636
                  slt          a5, s6, s9
                  xori         t1, s10, -426
                  andi         t0, sp, -1635
                  srai         s6, a1, 1
                  ori          s7, s10, -1199
                  xori         s6, t5, -2001
                  sra          t6, a6, s3
                  slt          a1, a0, s5
                  add          s5, s9, s9
                  slli         s6, s6, 7
                  slli         tp, a5, 11
                  srl          a7, s7, a0
                  slli         zero, t3, 21
                  slt          s9, s1, a5
                  sub          a6, s4, gp
                  xori         a2, t6, -641
                  xor          s5, s1, a7
                  add          t4, s7, s8
                  sll          s11, t6, s4
                  slti         a6, s10, -737
                  ori          t3, s2, -1604
                  sltiu        ra, a0, 1554
                  xor          s11, s8, a3
                  ori          s2, a7, 279
                  srai         a1, s11, 25
                  lui          a7, 267058
                  nop
                  srai         ra, t2, 1
                  sub          a7, a2, t3
                  nop
                  xori         t6, t5, 1779
                  slli         gp, s5, 20
                  srli         tp, s3, 18
                  slti         t5, s9, -292
                  slti         s6, t0, -884
                  and          s5, t5, s11
                  nop
                  slti         t6, a7, 1600
                  srli         s4, s3, 10
                  sltu         s11, a5, s4
                  slli         s11, a3, 14
                  srl          a1, s1, s4
                  add          t1, t5, s6
                  addi         s6, a7, 254
                  nop
                  sub          s11, a7, a5
                  and          s7, s11, gp
                  slti         s6, t4, 828
                  or           t1, s8, ra
                  and          sp, tp, s1
                  ori          s6, s4, -864
                  sll          a0, t6, t4
                  xor          ra, s1, a3
                  sll          s1, s11, gp
                  and          s10, s1, t6
                  sub          s11, t5, s11
                  nop
                  ori          s11, a5, 545
                  sltiu        a1, t3, -1145
                  xor          s4, s2, zero
                  sub          s11, a7, a6
                  sltu         sp, s3, a7
                  sll          a3, s1, ra
                  or           a1, a6, s6
                  add          a6, t3, t0
                  srai         ra, t3, 18
                  auipc        t0, 373353
                  sra          a5, s3, t0
                  sub          gp, ra, t1
                  srl          s1, s6, sp
                  nop
                  slti         s5, s1, 584
                  srl          a6, t2, gp
                  auipc        ra, 522158
                  xor          s5, s6, a0
                  and          s8, a3, t6
                  add          s10, s8, s5
                  slti         s5, ra, 53
                  lui          s4, 19994
                  srai         gp, sp, 20
                  addi         a2, ra, 458
                  sll          s3, a2, ra
                  auipc        a0, 114815
                  andi         t6, a3, -1115
                  addi         s9, t1, -1508
                  add          s7, s11, t2
                  add          t4, t4, s4
                  sll          a1, s7, s11
                  srai         ra, a6, 17
                  add          s10, t6, a1
                  auipc        a1, 553366
                  auipc        a7, 511216
                  lui          s11, 401447
                  sltiu        a7, t3, -1608
                  slt          s7, tp, s2
                  ori          t1, t5, -224
                  slt          s2, a6, tp
                  sub          a2, s2, s9
                  sltu         sp, a6, s7
                  srl          s7, s0, s5
                  nop
                  xor          t4, zero, s6
                  xor          s1, t2, s3
                  add          s3, ra, s11
                  lui          a6, 82797
                  sltu         tp, a1, a7
                  sltu         tp, t5, sp
                  xor          s3, zero, s6
                  sub          a5, gp, s8
                  ori          s1, a1, -1114
                  srl          s9, t6, t1
                  and          s7, t2, t2
                  sll          s6, s10, a7
                  xori         t3, a0, -1226
                  slli         t4, a1, 0
                  slti         t4, a6, 1983
                  srai         a1, t0, 9
                  lui          t1, 641002
                  auipc        sp, 494367
                  xor          sp, s8, a4
                  srai         a1, zero, 13
                  and          gp, t2, a6
                  sra          t4, a0, a1
                  slt          t3, zero, a4
                  ori          s11, t3, -451
                  srai         s7, tp, 18
                  srli         s2, s10, 11
                  lui          a1, 483145
                  add          s4, s1, a5
                  slti         s9, s6, 1275
                  auipc        gp, 11361
                  and          t0, zero, sp
                  srl          t3, ra, t4
                  sltiu        t3, s8, 1747
                  slt          a7, s6, a4
                  slt          s8, t5, zero
                  addi         t6, a6, 636
                  andi         s10, a1, 756
                  add          a3, t1, s11
                  andi         s6, s5, 823
                  ori          a0, s1, 1284
                  ori          a6, zero, 1500
                  ori          s5, t0, -1476
                  add          a3, t3, s10
                  add          s9, a7, s6
                  slti         t0, a0, -1808
                  sll          a0, s8, t0
                  slli         s3, t4, 29
                  ori          gp, sp, 623
                  add          zero, s4, s9
                  sltiu        t4, s8, 1087
                  srai         zero, tp, 6
                  auipc        s11, 30280
                  sll          a5, a6, s8
                  addi         t0, t4, 1692
                  nop
                  srai         a7, s5, 2
                  and          s8, s9, sp
                  xori         s3, s10, 1682
                  add          t3, ra, zero
                  auipc        ra, 796240
                  slli         s1, a0, 8
                  nop
                  addi         s8, a2, -926
                  auipc        a2, 190360
                  sub          t4, s2, s9
                  and          a2, s10, t2
                  sltu         s2, s6, t2
                  sltiu        t3, a2, 1585
                  lui          a1, 529588
                  sltu         s11, a1, s8
                  and          s11, s1, a4
                  and          s3, a3, gp
                  slt          sp, sp, t0
                  sltiu        s8, t2, 749
                  andi         a2, zero, -630
                  xori         s9, a2, 1613
                  add          s4, s0, s0
                  nop
                  srl          t4, t6, zero
                  lui          ra, 357509
                  sltu         tp, a7, s6
                  andi         s8, s0, 2045
                  sltu         a6, t6, t2
                  srl          zero, s11, s7
                  ori          s5, s1, -1014
                  lui          s3, 896316
                  slli         s11, a4, 10
                  or           a7, s2, zero
                  sll          a7, s5, t0
                  slti         s4, s9, -237
                  srl          a1, a0, s9
                  sltiu        s9, s2, 1662
                  andi         ra, gp, 1704
                  nop
                  sltu         a6, t4, gp
                  add          s6, s11, s10
                  sub          t5, s11, t1
                  sltiu        s5, s11, -1732
                  sltiu        s7, s9, 1092
                  sub          t5, t0, zero
                  slti         t6, a0, -1269
                  xor          a3, t3, a7
                  sll          gp, a0, t5
                  xori         tp, s0, -1973
                  auipc        a0, 319100
                  srl          a7, s7, s9
                  slti         s8, t5, -1489
                  xor          s5, tp, s7
                  slti         a6, a4, 781
                  andi         t5, t3, -1396
                  srli         s7, s0, 13
                  add          a3, s8, s9
                  lui          t1, 489224
                  and          sp, ra, t2
                  slli         a2, a3, 2
                  or           zero, gp, a3
                  slti         a0, t4, 1189
                  nop
                  sra          a2, a3, a0
                  slli         s11, s7, 8
                  sltu         s6, s11, s0
                  auipc        ra, 492528
                  slli         t3, t4, 22
                  sltu         a0, s3, s10
                  xori         gp, s5, -282
                  add          a5, a7, t4
                  slli         s7, tp, 27
                  sub          s1, a2, t1
                  sltu         ra, s6, s9
                  slti         zero, t1, -1907
                  sltu         a1, gp, s5
                  slt          t5, s9, a7
                  and          t1, s11, s0
                  srl          a6, zero, s4
                  sra          a6, a3, s7
                  xor          s1, zero, a7
                  sltiu        sp, t0, -1417
                  slli         s1, a4, 24
                  slli         a0, sp, 8
                  srai         s10, s5, 29
                  slti         s11, t0, -953
                  slli         gp, t5, 26
                  slli         tp, t1, 14
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           sp, 0x80000000
                  li           a1, 0x0
                  li           s1, 0x0
                  li           a0, 0x80000000
                  li           s9, 0xffffffff
                  li           a6, 0x0
                  li           s6, 0x0
                  li           t1, 0x80000000
                  li           s3, 0x0
                  lui          s8, 24443
                  auipc        a6, 1026947
                  auipc        s6, 173416
                  sub          t1, s1, s1
                  add          s9, s9, t1
                  auipc        s6, 250216
                  auipc        s1, 990331
                  auipc        s9, 393128
                  lui          a1, 613184
                  addi         sp, sp, 1652
                  add          t1, a0, s8
                  addi         s8, a1, -1080
                  nop
                  nop
                  lui          t1, 597780
                  sub          a1, s1, s8
                  addi         a6, a6, -270
                  sub          sp, sp, a0
                  sub          a0, s1, s1
                  add          s9, a1, s9
                  addi         a1, a1, -1908
                  auipc        t1, 906954
                  auipc        s1, 764094
                  add          s1, t1, s3
                  add          s9, s1, sp
                  addi         a0, s3, 320
                  lui          s9, 312553
                  addi         a0, a1, -596
                  addi         s1, a1, 1055 #end riscv_int_numeric_corner_stream_1
                  and          t5, s3, a2
                  sltiu        s5, t5, -378
                  auipc        s7, 676233
                  srl          s2, s4, s7
                  srl          s9, s2, t0
                  sltiu        a3, t3, -56
                  add          s10, a1, s0
                  ori          t6, s8, -1788
                  srl          ra, t4, s1
                  slti         tp, t5, -1886
                  or           s11, s6, t4
                  sra          s7, s0, t3
                  xor          s7, t0, s5
                  lui          s4, 305962
                  or           a1, a3, gp
                  xori         t0, a0, 168
                  sltiu        gp, tp, 1563
                  sub          a0, t2, s9
                  nop
                  sltiu        t5, s5, -898
                  slli         s8, a1, 26
                  and          tp, s1, t1
                  auipc        s4, 1008601
                  sltiu        s10, zero, -771
                  nop
                  srl          gp, a2, s5
                  addi         s9, s9, -1664
                  nop
                  sll          sp, t5, gp
                  srai         a3, t4, 16
                  andi         t6, s6, -16
                  addi         t5, s2, 1946
                  lui          gp, 208257
                  ori          a6, a1, 38
                  and          ra, a2, a7
                  nop
                  xori         s8, tp, 1164
                  lui          s9, 275851
                  slli         zero, a4, 15
                  andi         s2, s7, 788
                  auipc        s8, 726950
                  lui          a5, 1023374
                  or           t6, a6, s3
                  sub          s11, s3, t4
                  auipc        s9, 722140
                  lui          a0, 918352
                  or           a3, s0, gp
                  sub          s4, s1, t5
                  xori         t6, s4, 1901
                  add          a1, s2, s7
                  addi         a5, t5, -1090
                  slli         t1, s8, 10
                  sltiu        a6, a2, 1756
                  sll          a1, a7, t3
                  andi         s9, a6, -1053
                  andi         a1, gp, 377
                  srl          s11, a7, t0
                  xor          t4, a3, a0
                  srai         t4, s11, 21
                  srli         s1, a6, 4
                  sub          s6, a3, a4
                  sltiu        s10, s6, -1562
                  and          s5, a5, a4
                  srai         t0, s7, 9
                  and          t4, gp, t3
                  sltiu        a7, s6, 938
                  sltiu        s11, t6, 604
                  srl          s8, s4, s2
                  addi         a2, s10, 1007
                  srl          s4, t1, s3
                  auipc        s7, 20314
                  xori         t4, sp, -1058
                  slli         sp, s6, 21
                  slli         s7, a3, 15
                  srai         t0, s11, 29
                  sra          s6, s11, t2
                  sll          s6, s7, gp
                  slli         a6, t1, 21
                  andi         s4, t0, 345
                  xori         tp, a5, 249
                  srai         ra, s2, 14
                  xor          s2, s8, s9
                  xor          t5, a5, s9
                  xor          s11, sp, tp
                  sltiu        s9, t6, -360
                  sltu         tp, a3, a7
                  lui          ra, 55481
                  sub          t4, s5, s1
                  sltiu        t4, a3, -38
                  srai         s2, tp, 7
                  slli         zero, t6, 4
                  addi         s11, ra, -649
                  xor          a5, zero, t4
                  xor          s2, sp, t6
                  srli         sp, s1, 29
                  sltu         tp, a6, a6
                  andi         s11, t2, 187
                  sltiu        sp, s4, 1490
                  sra          t3, t0, t2
                  add          a1, s9, t5
                  slt          s1, sp, s9
                  xor          s7, s9, t2
                  sltiu        t1, s11, 2002
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a1, 0x57c65dfa
                  li           s5, 0xa9c7ea8f
                  li           t3, 0xffffffff
                  li           t6, 0x80000000
                  li           s1, 0xffffffff
                  li           sp, 0x80000000
                  li           s8, 0x80000000
                  li           s10, 0x255a74e5
                  li           gp, 0x7c7adb22
                  addi         t3, t6, 826
                  nop
                  nop
                  addi         t3, t6, -367
                  auipc        s8, 395603
                  lui          t6, 903454
                  auipc        a1, 74139
                  lui          s10, 692604
                  add          s8, t3, a1
                  sub          s11, sp, s11
                  sub          sp, s10, s11
                  add          a1, t3, a1
                  auipc        s11, 786594
                  lui          sp, 44689
                  add          t6, gp, gp
                  nop
                  add          sp, t3, s11
                  nop
                  nop #end riscv_int_numeric_corner_stream_18
                  slli         s8, t0, 6
                  sra          s4, a5, sp
                  and          s6, t3, s8
                  xor          s11, s3, a3
                  and          t0, ra, t5
                  sll          a7, t3, ra
                  slt          s7, s1, t0
                  sltiu        gp, t1, -774
                  auipc        s1, 341753
                  xori         tp, ra, -1777
                  auipc        t5, 325267
                  slt          s10, sp, s10
                  sltiu        t3, a0, 156
                  and          s8, t2, t5
                  sra          t1, t3, t5
                  andi         zero, s3, 1354
                  xor          t3, t1, s4
                  srai         zero, a0, 27
                  sltiu        t4, s11, -386
                  sub          s11, a1, s7
                  sra          a1, a1, t6
                  auipc        a5, 167655
                  sub          a5, a4, s10
                  and          s7, s3, s9
                  sll          t3, s7, a7
                  lui          t0, 204494
                  sltu         s2, t5, ra
                  ori          s3, s10, -594
                  slt          t1, s10, a1
                  srai         s1, s4, 9
                  sltu         t5, t6, a0
                  sltiu        a7, a3, -1640
                  slt          a3, s7, t3
                  sltiu        t1, a3, -1198
                  or           a0, t6, t4
                  addi         s6, t5, 1484
                  add          t0, t3, ra
                  srli         a6, s0, 10
                  nop
                  addi         s9, sp, 1831
                  sll          a0, zero, a3
                  sltiu        s2, s8, -1064
                  slli         s11, s0, 18
                  sra          sp, s8, a2
                  slti         a6, t0, 1617
                  srl          t0, s6, a7
                  addi         s1, a4, 544
                  sltiu        a6, t0, -238
                  slli         a6, a4, 28
                  or           t4, s6, a7
                  ori          sp, s2, -962
                  slti         s3, a6, 134
                  andi         s9, zero, -548
                  slli         a3, t4, 2
                  sltu         s9, s5, s11
                  sltiu        ra, s9, -1521
                  srl          a6, a7, t2
                  sltu         tp, a5, t0
                  nop
                  slt          a5, s5, t1
                  ori          s4, s9, -1170
                  sub          s9, t5, zero
                  srl          s6, a3, a1
                  sltu         a0, s7, s9
                  sltiu        tp, t5, 121
                  and          tp, s6, gp
                  sltiu        t1, s9, -1177
                  andi         s8, s9, -115
                  sltu         gp, s8, s7
                  sll          t6, a1, s6
                  ori          a7, a6, -375
                  xor          s8, s5, zero
                  add          a0, t6, gp
                  or           s9, a0, a5
                  sra          a0, a1, a3
                  xori         t3, zero, -1999
                  srai         s8, a1, 7
                  lui          s8, 600202
                  srli         s2, s0, 10
                  auipc        a2, 13060
                  srli         a0, t0, 26
                  sub          t3, a6, s9
                  xori         a7, a0, -42
                  sltiu        t3, sp, 203
                  ori          t1, s10, -105
                  lui          s5, 551571
                  lui          gp, 649749
                  ori          s10, gp, 456
                  slti         a3, s3, 1882
                  andi         t3, gp, 1746
                  srli         t5, t4, 10
                  sll          a2, gp, s1
                  srli         a5, a5, 16
                  sltu         a6, s5, s3
                  ori          s3, s2, -985
                  lui          t0, 747570
                  add          a6, ra, s7
                  slti         t0, s10, 1226
                  addi         s9, a2, 1221
                  andi         s2, a3, 855
                  or           a7, t1, a6
                  add          s11, gp, a1
                  xor          t1, a2, s1
                  slti         s5, s8, 1213
                  or           t3, s11, a3
                  slli         a0, a3, 20
                  lui          t4, 472810
                  or           a7, t1, t6
                  sra          s9, gp, ra
                  lui          s9, 50199
                  xori         s10, t1, 482
                  or           t0, tp, t3
                  or           sp, gp, s0
                  sltiu        s11, s11, 899
                  addi         s2, a2, -1204
                  srai         sp, ra, 16
                  sub          s11, s3, a3
                  xor          s9, t5, a4
                  sltu         s6, gp, t2
                  auipc        s1, 577463
                  sub          a1, a7, ra
                  srl          t5, s5, s9
                  sub          gp, a6, a0
                  and          s6, s1, gp
                  srl          a1, a3, s7
                  slli         s10, s5, 20
                  srli         tp, s0, 26
                  sra          gp, t3, a5
                  sra          s9, s11, s11
                  ori          sp, s10, 1132
                  srli         a0, sp, 2
                  srl          t0, s0, tp
                  slt          ra, a5, zero
                  srl          a5, ra, t1
                  add          t1, s8, t4
                  and          gp, zero, a4
                  sltiu        s1, a0, -101
                  and          a6, a4, zero
                  srli         zero, s0, 29
                  srl          s4, s7, s11
                  lui          s6, 413051
                  srli         t4, gp, 6
                  nop
                  ori          t5, s10, 2033
                  addi         gp, zero, 1239
                  andi         a0, t5, 37
                  andi         s3, s4, 1096
                  addi         ra, t5, 751
                  and          s8, t6, sp
                  sll          ra, s8, zero
                  sub          a1, t5, ra
                  sltiu        t1, t1, -1981
                  sltu         ra, a2, s5
                  sra          s9, t3, a6
                  and          a3, s2, t3
                  or           a2, a2, s8
                  or           tp, s4, t5
                  sub          s1, tp, s0
                  srl          s4, s2, s6
                  and          s10, s2, t3
                  or           s2, tp, a4
                  slli         s1, t1, 7
                  and          s6, t6, tp
                  nop
                  sltu         a5, tp, a6
                  slli         t3, t6, 16
                  xori         a1, s6, 1876
                  sltiu        a6, a4, -720
                  sltu         s8, sp, s0
                  or           a3, a7, t0
                  nop
                  sll          s5, a3, t0
                  add          a7, s6, a7
                  sltiu        s10, zero, -1736
                  nop
                  slli         zero, s7, 26
                  sra          t5, ra, t0
                  slli         a1, sp, 24
                  slt          a3, a4, t1
                  auipc        s6, 271523
                  sub          a3, s11, s11
                  sub          s1, a0, s2
                  slt          s11, a4, a5
                  lui          s1, 14517
                  sra          t6, t0, s7
                  xori         a5, a2, 1456
                  addi         t4, s11, 775
                  or           a7, s1, ra
                  andi         t0, s5, 1132
                  srai         a1, t3, 1
                  srli         s3, t5, 18
                  auipc        s11, 200561
                  and          s8, t0, a1
                  srli         a1, ra, 10
                  xor          zero, s10, t2
                  xori         a1, a1, 492
                  slti         a7, ra, 2022
                  sub          tp, a3, s5
                  andi         t0, a1, -165
                  andi         sp, s6, -392
                  srli         s4, t5, 3
                  and          s3, s2, ra
                  sltiu        t4, s3, -34
                  xori         s10, sp, -674
                  ori          s2, s7, -1959
                  srli         a0, a4, 0
                  nop
                  and          s10, t5, s9
                  and          s3, s2, t0
                  sltu         s2, ra, t1
                  srai         s4, s2, 15
                  sll          tp, s7, a4
                  srli         zero, s9, 15
                  srai         a5, s10, 20
                  sltiu        zero, a6, 283
                  xor          a6, t5, s7
                  and          t6, a7, s2
                  sra          s6, t6, a5
                  ori          a0, s1, -1923
                  slli         t6, s4, 12
                  sltiu        a2, t1, -1523
                  srli         a3, a7, 15
                  sub          a7, a2, a3
                  srli         a3, s11, 14
                  slt          s4, t2, a4
                  and          s9, s2, s1
                  and          a5, s11, a1
                  sltu         t1, a2, sp
                  srli         ra, t0, 18
                  add          a5, t3, t2
                  sltiu        a5, t0, -1215
                  srai         t1, a5, 17
                  sub          t3, s9, s1
                  slt          a3, s5, a7
                  andi         s3, a0, -1145
                  nop
                  srai         a5, a2, 0
                  slt          s2, t6, t4
                  srl          s11, a4, s6
                  sltiu        s1, a1, -1228
                  addi         s4, ra, -1946
                  add          s5, t5, a6
                  srli         s7, a5, 21
                  nop
                  slt          tp, s0, s7
                  addi         s2, t2, 783
                  and          s6, t4, s6
                  srai         a0, t2, 29
                  add          s3, s6, t5
                  add          ra, a4, t3
                  slti         a5, a2, -253
                  ori          t4, s5, 346
                  slli         sp, a4, 26
                  and          gp, t3, zero
                  xor          t1, s11, t5
                  andi         s1, t1, -374
                  slti         sp, sp, -839
                  sltu         sp, s1, s6
                  andi         s11, a2, 262
                  and          s11, t1, a3
                  slt          a0, s4, s4
                  lui          a3, 351418
                  srl          a5, a6, tp
                  slti         zero, s6, -1115
                  xori         s11, t6, -366
                  sub          a5, s2, a2
                  slti         tp, a2, 1980
                  sltu         gp, t1, a6
                  slli         s1, s11, 11
                  slli         s6, a5, 10
                  srli         t4, a7, 24
                  sltiu        s5, s2, 1820
                  slti         s9, s10, -252
                  slli         t6, s8, 8
                  nop
                  sra          a5, zero, a5
                  addi         t6, t6, 1307
                  ori          s10, s6, -1693
                  and          s11, a4, s6
                  srai         s11, t2, 30
                  srli         ra, zero, 30
                  or           s8, zero, t0
                  slli         sp, tp, 3
                  nop
                  xori         a7, s8, -1257
                  addi         tp, a3, -328
                  addi         s7, s6, -637
                  and          t0, t5, s8
                  lui          sp, 137805
                  auipc        ra, 881480
                  xor          s5, s0, a1
                  add          tp, t3, s7
                  ori          s2, a1, 966
                  sll          t6, t1, a0
                  andi         s8, t3, -790
                  slli         s5, a0, 24
                  sll          s2, a4, a5
                  and          t5, a3, s9
                  add          s5, a7, a3
                  addi         ra, s11, 1770
                  nop
                  lui          a0, 191733
                  slli         t6, t2, 19
                  slti         a6, s5, 1490
                  sltiu        a0, t2, -1148
                  sub          s6, t0, s10
                  sltiu        a2, a6, 989
                  andi         a0, s3, -1092
                  slli         t0, zero, 7
                  sltu         s10, s4, a4
                  srai         t6, s3, 28
                  andi         t3, t1, 42
                  sltu         tp, zero, t3
                  xori         a1, s1, 602
                  srl          a5, t4, t6
                  sub          t3, s11, s6
                  sltiu        a0, s4, 765
                  lui          s6, 829161
                  ori          t1, s3, -73
                  addi         tp, s7, -558
                  xori         ra, t0, 478
                  xor          s6, a5, a5
                  xori         s1, t2, 399
                  lui          s5, 90409
                  ori          s10, a5, -382
                  addi         a6, tp, -1047
                  srl          s4, s6, zero
                  add          a7, a4, tp
                  andi         a5, s4, -785
                  add          a2, a7, a1
                  sub          ra, t5, s8
                  sltu         s1, t1, zero
                  nop
                  or           a2, tp, t5
                  srli         a2, tp, 1
                  sra          zero, s4, a1
                  srai         sp, a7, 14
                  andi         a2, t1, -37
                  sub          t6, a4, a0
                  srl          t6, s5, t1
                  slt          t6, a2, t3
                  and          s9, t2, a4
                  slli         a6, s4, 22
                  nop
                  sub          t1, zero, s2
                  sltu         s9, a1, t5
                  andi         s2, s3, -998
                  srai         s2, s3, 7
                  lui          s9, 143186
                  srai         a5, a3, 0
                  slt          t5, s0, a5
                  slli         a6, t3, 2
                  slti         ra, s0, -1741
                  ori          t5, a3, 446
                  addi         t3, s5, -1375
                  or           s4, a1, a2
                  slli         a1, t6, 0
                  andi         tp, t3, 1474
                  ori          s10, t0, -759
                  auipc        gp, 483986
                  slli         s3, a6, 1
                  srli         a7, t1, 26
                  srl          a0, a4, s11
                  addi         t0, a4, -1222
                  sltu         s9, sp, t4
                  nop
                  or           s10, t6, s1
                  sub          t1, s7, a1
                  sltiu        s6, s6, 1547
                  addi         s8, s1, 209
                  slli         a2, t5, 5
                  srai         s8, t1, 24
                  add          a6, s11, t6
                  sra          t0, a7, s6
                  slli         ra, s10, 27
                  sltiu        s8, a1, -1886
                  or           t3, s7, s11
                  sltiu        a1, tp, -240
                  srl          t4, s9, t2
                  lui          s9, 932359
                  sub          t5, sp, a7
                  sltiu        s11, a6, 48
                  slt          a1, s9, a2
                  sltu         s3, a2, a5
                  xori         a0, a6, -679
                  or           s11, s2, a3
                  sub          a3, s8, gp
                  addi         a1, s2, -1294
                  srai         a0, s11, 21
                  srai         zero, a0, 5
                  srl          s9, t1, s10
                  sltu         a2, t6, a7
                  sltiu        a5, sp, 1354
                  auipc        a7, 433269
                  lui          s8, 940704
                  slti         s4, s3, 1369
                  srli         a0, s10, 4
                  auipc        s9, 545575
                  xor          s11, s2, t3
                  lui          zero, 867021
                  srl          a1, sp, sp
                  srl          zero, s8, a7
                  slt          a0, sp, sp
                  xor          s5, s4, t3
                  slti         s6, s8, 514
                  sltu         t1, s6, s9
                  sub          s9, tp, s1
                  slti         s1, a2, 412
                  sub          a0, s0, s10
                  slti         gp, s7, 992
                  xor          ra, tp, sp
                  add          a6, s3, s1
                  xori         a2, a3, 2014
                  slt          ra, sp, s4
                  and          s10, t4, ra
                  ori          tp, a1, -357
                  addi         tp, t3, -66
                  nop
                  slli         zero, a6, 10
                  slti         s7, a7, 806
                  lui          s10, 121793
                  sra          s10, s10, s6
                  sra          t0, a6, a6
                  add          tp, s8, a7
                  xori         a0, s10, 955
                  andi         s4, zero, 125
                  addi         a2, t0, 1537
                  xori         a7, s4, -1136
                  lui          s10, 690274
                  lui          t3, 745050
                  ori          t0, gp, 694
                  nop
                  slli         ra, gp, 31
                  auipc        t1, 327378
                  nop
                  and          s1, s2, a0
                  sub          gp, s0, s11
                  sltiu        s1, gp, -1985
                  and          s6, s2, s11
                  sub          a0, tp, a0
                  sll          s2, t6, a5
                  or           gp, s3, zero
                  sub          a1, s11, s9
                  slt          s8, ra, s5
                  lui          a2, 303708
                  slti         s3, sp, 243
                  sltiu        s11, a3, 971
                  xori         zero, s1, 1115
                  srl          tp, ra, s8
                  or           gp, s8, t4
                  slti         s2, s11, -1082
                  srl          s6, a7, s10
                  sll          sp, t3, s9
                  ori          s4, t3, -1743
                  lui          t0, 581546
                  slt          s5, s0, t3
                  sltiu        s10, a0, 1698
                  or           s6, s8, a7
                  xor          s8, s10, a2
                  srli         t4, zero, 7
                  ori          gp, a3, 1091
                  slt          a5, s1, s7
                  slti         a2, t6, 132
                  auipc        a1, 296740
                  slt          a1, s1, s1
                  xor          s1, t4, sp
                  slti         s10, t4, -68
                  or           s3, a7, t3
                  slt          s5, s8, s6
                  xori         t5, s5, -21
                  auipc        zero, 778107
                  slt          s9, s5, tp
                  xor          s1, sp, s8
                  lui          s11, 883739
                  ori          a6, s2, 1437
                  srl          gp, tp, s2
                  xori         s4, gp, 721
                  srai         s3, ra, 18
                  srli         s2, t2, 1
                  lui          t3, 837814
                  nop
                  auipc        s4, 310550
                  auipc        a1, 826615
                  slli         tp, t0, 2
                  sltiu        s9, sp, 272
                  add          t5, s11, s8
                  add          a2, t1, tp
                  addi         s6, s9, 320
                  sra          s10, zero, s3
                  slti         s1, s1, 1598
                  sra          s1, s3, a7
                  sltiu        ra, s2, 805
                  xor          sp, sp, s2
                  andi         ra, s4, 1813
                  slli         s10, s0, 6
                  or           a7, s11, sp
                  andi         s5, a0, -541
                  or           s1, s1, a4
                  sltu         t5, tp, zero
                  sltu         gp, ra, t3
                  slti         a5, t5, 721
                  sll          t6, a3, a4
                  srai         s9, a0, 3
                  srl          a2, s1, t4
                  sra          a1, zero, a2
                  sltu         a0, s8, a6
                  sll          s7, a0, zero
                  slti         a7, s7, -211
                  slti         s2, t5, -98
                  srl          a6, s10, sp
                  xori         s8, t5, 1082
                  srai         tp, t3, 18
                  sub          a1, gp, a5
                  xor          s7, a5, a5
                  slli         s3, t6, 8
                  add          a1, s3, a6
                  andi         s8, a7, 278
                  xori         s10, s0, -1031
                  srl          ra, zero, t3
                  xor          s5, a0, a3
                  lui          s6, 666855
                  add          a3, a0, s8
                  sub          t6, t0, ra
                  srli         a3, s0, 14
                  ori          a7, t3, 569
                  auipc        s9, 352902
                  slli         t0, t1, 10
                  addi         a0, s6, -1684
                  slli         s10, tp, 28
                  auipc        s7, 834197
                  srai         a0, ra, 7
                  ori          a6, a3, -1209
                  srli         zero, a6, 25
                  ori          gp, t3, 857
                  xori         s2, s11, -1489
                  sra          t0, t3, s9
                  sltu         t4, a5, ra
                  sra          s10, gp, s1
                  srai         a5, zero, 8
                  xor          s2, s4, sp
                  xor          s6, a4, t2
                  ori          s6, s8, 1656
                  sltu         gp, t1, s1
                  slt          tp, tp, s6
                  addi         t1, a0, 194
                  andi         sp, s3, 525
                  ori          tp, s2, -1766
                  sub          t5, s8, s10
                  sltiu        t3, t5, 1563
                  sll          s5, tp, s1
                  srli         gp, t5, 28
                  slli         s8, s10, 21
                  lui          sp, 999840
                  andi         s8, tp, 1553
                  lui          t6, 294289
                  addi         s2, s1, -1646
                  slti         s8, gp, 984
                  slti         zero, t3, 1885
                  ori          s5, a3, 2006
                  xori         a0, s3, -1026
                  or           t1, s3, s7
                  sltu         ra, a4, s11
                  sll          t0, a6, s6
                  sra          gp, tp, a5
                  ori          s3, s3, 53
                  srli         a6, s4, 19
                  andi         t4, s8, 1074
                  srl          tp, tp, s9
                  nop
                  sltu         s8, t5, t4
                  xori         a5, s6, -659
                  srl          tp, gp, s5
                  and          a3, ra, s10
                  nop
                  or           t4, s4, sp
                  or           s4, a4, t5
                  sltiu        s3, t2, -1464
                  sub          t5, ra, gp
                  nop
                  slt          a7, s1, s9
                  slt          s10, gp, t2
                  xori         s9, s10, 58
                  xori         a1, s10, -1007
                  andi         sp, t0, -1413
                  and          s7, a6, a5
                  ori          s11, t3, -824
                  sltu         t4, s4, a6
                  slti         sp, t3, -1224
                  or           s7, a7, a0
                  slti         t5, a3, -116
                  sub          s1, zero, a6
                  andi         gp, s7, -146
                  slti         t1, sp, 1642
                  or           s4, t1, s9
                  auipc        s8, 993777
                  slti         ra, a1, -1234
                  sra          s11, a3, a6
                  or           s2, s1, a6
                  and          sp, s6, t1
                  nop
                  slti         gp, t6, -1849
                  sll          s6, s10, a5
                  addi         a1, a0, -1688
                  srl          s10, t5, s6
                  lui          s5, 303164
                  add          s11, s9, a4
                  and          zero, s3, a6
                  xor          a7, t2, s7
                  auipc        zero, 866817
                  or           sp, s11, a2
                  sltiu        t0, s4, -1560
                  nop
                  andi         t4, a6, -794
                  or           gp, a1, a0
                  ori          s4, a0, -1370
                  nop
                  xori         s5, t5, -1502
                  srli         a6, a3, 21
                  slli         t5, a1, 9
                  srai         a3, s7, 16
                  sra          a1, s8, s4
                  lui          tp, 109871
                  lui          t6, 153442
                  xori         zero, s9, -1169
                  srli         s1, t3, 6
                  sra          s2, a2, s2
                  lui          tp, 801208
                  sltiu        s5, t5, -1210
                  auipc        sp, 161731
                  and          s8, a1, t5
                  ori          s7, s3, -373
                  nop
                  srai         ra, t0, 3
                  slti         s6, a0, -1809
                  slt          a5, zero, s6
                  add          a6, s10, a4
                  sra          a3, s2, a3
                  sltu         a1, s6, t4
                  nop
                  srli         zero, t4, 12
                  nop
                  slti         t6, tp, 386
                  andi         s4, a2, -1102
                  and          ra, s8, s7
                  srai         a1, s4, 17
                  sll          ra, gp, tp
                  add          a7, t4, a4
                  xori         s2, s11, -937
                  and          a1, a4, a2
                  xor          t0, a4, s2
                  or           a5, t5, gp
                  lui          s11, 733716
                  andi         s6, t0, 1159
                  slt          s5, tp, a2
                  andi         s5, a2, -536
                  xori         s11, a1, 61
                  lui          s10, 279922
                  sra          a0, a2, t3
                  sub          s7, zero, s0
                  slt          t0, zero, s2
                  sra          s10, t3, t1
                  lui          gp, 25591
                  add          a6, s0, a0
                  srl          s7, s9, s11
                  slt          a0, s7, s6
                  srai         s8, s6, 4
                  xori         t3, a1, -245
                  sub          s3, s6, s10
                  sll          a6, tp, s7
                  nop
                  add          a1, s7, s3
                  addi         sp, zero, -217
                  srai         a2, s8, 5
                  add          sp, a7, a1
                  sra          tp, t1, s5
                  xori         s7, s7, 261
                  andi         s3, s7, 689
                  ori          t6, a4, -1620
                  srai         s11, s5, 18
                  andi         s10, a0, -830
                  srli         t1, a4, 13
                  andi         a6, t5, 1145
                  and          s11, t2, a4
                  ori          s4, gp, -1138
                  and          a1, t5, zero
                  add          gp, s2, t2
                  addi         t1, a6, -33
                  slli         t0, s3, 21
                  nop
                  sll          s8, s6, s10
                  sll          a1, s10, a7
                  xor          t3, gp, s2
                  srai         tp, s8, 20
                  srl          tp, s3, tp
                  sltu         sp, t5, a0
                  xor          a0, a2, a6
                  and          s6, a7, t0
                  sra          a0, t4, t3
                  andi         s2, s2, 140
                  slli         sp, s4, 25
                  addi         a0, t4, -692
                  sltiu        a2, s11, -893
                  addi         a5, t1, -1082
                  sub          s6, s11, a7
                  xori         a3, a7, 1476
                  nop
                  and          a3, a0, t3
                  auipc        s1, 853232
                  slli         t6, s4, 0
                  srli         s2, zero, 24
                  sra          a0, a7, s7
                  auipc        s9, 985252
                  srli         a7, s8, 30
                  slli         ra, t2, 5
                  sub          t6, s7, a5
                  xor          tp, zero, t2
                  slli         a2, tp, 3
                  sll          a5, a0, t0
                  slti         s3, t1, -1631
                  sltu         a1, t1, gp
                  xori         s2, t1, -5
                  sll          s4, gp, gp
                  sra          a3, t4, sp
                  and          t4, s5, s11
                  or           s9, s10, a2
                  srai         zero, s3, 14
                  sltiu        t0, sp, 403
                  srai         a0, a7, 3
                  sltiu        zero, gp, 1128
                  nop
                  lui          t0, 733229
                  ori          t6, a7, 1396
                  nop
                  xor          s6, s5, a2
                  slti         ra, t0, -728
                  sra          zero, t6, a6
                  or           a1, tp, s7
                  sub          s6, s8, s2
                  nop
                  slti         s8, t4, -870
                  andi         s9, s9, 760
                  sll          t6, a5, a6
                  slli         s8, tp, 19
                  sub          s7, a6, s3
                  andi         s1, a1, 1691
                  sltiu        s11, t0, 1022
                  lui          s8, 5312
                  auipc        zero, 124433
                  nop
                  or           s8, s10, s0
                  andi         t6, a1, 1846
                  srli         s8, s9, 20
                  sll          a6, a3, tp
                  sltu         a5, gp, t4
                  srai         s9, zero, 12
                  sra          t4, s6, s7
                  auipc        a6, 579959
                  sub          t1, s3, s10
                  auipc        tp, 736204
                  srai         t0, t0, 31
                  andi         s3, s8, -452
                  auipc        s9, 1000154
                  srl          s9, a1, t6
                  xori         s5, s9, 1500
                  or           a0, s4, tp
                  sltiu        s6, tp, -485
                  ori          a0, s2, -77
                  addi         ra, t6, -215
                  or           s11, gp, s3
                  xori         s10, t6, 210
                  srl          s6, s0, t4
                  and          a0, tp, s6
                  xor          a3, t3, s10
                  xor          t5, zero, s2
                  xor          a3, a6, s6
                  ori          a3, s1, 744
                  or           a2, s1, t5
                  andi         tp, s2, -258
                  lui          s5, 47902
                  andi         t0, a2, -898
                  auipc        s1, 544395
                  ori          t6, s2, -587
                  andi         t3, s9, 1514
                  ori          a6, s10, 194
                  addi         sp, a4, -1072
                  srli         tp, s10, 23
                  andi         s1, s11, -1265
                  sra          t4, s10, s3
                  sll          s7, t0, s8
                  sub          a3, s1, s9
                  srli         t4, t3, 12
                  sltu         t5, t1, a0
                  and          s4, s5, a0
                  andi         a7, tp, -895
                  lui          t1, 159700
                  lui          t4, 536904
                  auipc        s8, 224118
                  ori          s6, s1, 788
                  srli         a7, t3, 7
                  ori          t5, a5, -1640
                  lui          s7, 409551
                  lui          tp, 897423
                  andi         s10, sp, -437
                  srl          a5, a1, t2
                  sltu         t3, t1, t4
                  xori         ra, a3, 497
                  add          sp, ra, a1
                  slli         ra, s2, 15
                  srli         s11, s4, 26
                  slli         s8, sp, 24
                  sll          s1, s9, s10
                  srl          s8, s4, a5
                  xori         t0, a1, -553
                  nop
                  addi         t0, s10, -1317
                  sra          a1, t2, a3
                  slli         s3, s1, 29
                  sltu         t0, a2, t3
                  srl          s1, s9, t3
                  andi         s3, s6, -476
                  sltu         s7, t5, s5
                  andi         ra, t4, -1463
                  sltiu        gp, s7, 1394
                  sll          s6, t4, zero
                  nop
                  sub          s10, gp, t6
                  add          s9, ra, s7
                  slt          t4, a3, a0
                  srai         a3, s4, 22
                  xori         t3, t3, -1837
                  sltu         t0, s7, t6
                  lui          tp, 357072
                  srai         t5, a5, 0
                  sub          a5, a6, a4
                  sltu         s5, s4, zero
                  andi         t1, a6, -1045
                  auipc        t0, 687808
                  xor          s4, a0, s1
                  slti         t6, a3, -1291
                  slli         s1, sp, 7
                  srli         s3, a3, 3
                  slti         s3, a2, 1879
                  sll          a7, a2, s10
                  srli         s11, s0, 10
                  slli         ra, s3, 17
                  srli         s11, s3, 11
                  sub          a7, s0, s4
                  and          s5, zero, s3
                  or           s4, s11, sp
                  or           a6, a4, s9
                  addi         t0, t3, 989
                  slli         t5, tp, 2
                  sltiu        ra, t3, -1606
                  sltu         s11, t5, s6
                  ori          gp, t5, 262
                  sltiu        s10, s2, -1933
                  addi         a7, t0, 379
                  ori          a3, s4, -1585
                  sub          gp, a2, a6
                  srl          zero, t1, t1
                  sltiu        a3, tp, 976
                  auipc        sp, 7198
                  sll          gp, t6, t4
                  slt          s3, s8, a2
                  slt          a7, s5, t2
                  sltu         s7, s10, a3
                  and          s7, s0, a6
                  slti         s4, s8, 278
                  sra          s2, t4, a2
                  sra          t5, gp, s7
                  srl          tp, s5, s8
                  andi         gp, s9, 1412
                  srl          s9, s3, s11
                  andi         s8, a5, -342
                  sub          s6, sp, t1
                  sll          a1, s3, a0
                  srl          a5, t5, tp
                  sltiu        ra, sp, -1836
                  sltiu        t6, a7, -360
                  and          s2, t4, a6
                  addi         a1, gp, -1817
                  sra          s4, t6, s5
                  xor          s9, s9, s1
                  ori          a0, s5, -70
                  srl          a7, s10, t5
                  ori          t3, s3, -275
                  andi         a7, s8, 2025
                  and          s11, a5, a3
                  xor          s3, a2, a2
                  xor          s3, ra, sp
                  sub          sp, s1, ra
                  sll          gp, a5, a1
                  srai         s9, s5, 20
                  sll          s4, sp, s6
                  nop
                  andi         zero, t5, 395
                  lui          s9, 980293
                  sltiu        a7, tp, 274
                  slt          s4, s3, s7
                  sra          t5, t5, a6
                  and          t3, t0, a6
                  or           a0, a2, ra
                  slli         t4, t3, 31
                  xori         s7, a0, -1057
                  add          a5, gp, sp
                  auipc        s11, 817095
                  sra          ra, s6, a5
                  lui          s1, 357798
                  srl          s6, s10, t6
                  sub          t5, a6, s9
                  slt          a0, t5, s2
                  sltiu        ra, s5, -132
                  or           s4, a6, t5
                  srli         s8, a6, 6
                  add          t5, s2, a7
                  srai         s2, s9, 30
                  ori          t1, s0, -1856
                  srl          s1, a5, s8
                  srli         a2, t6, 1
                  srai         s7, s7, 18
                  sll          s3, t2, s8
                  sll          gp, s5, zero
                  xor          s4, a1, s6
                  srl          s7, t1, tp
                  lui          a1, 825662
                  auipc        t1, 476132
                  srai         a6, s9, 12
                  xori         t3, s2, 377
                  nop
                  sltiu        s1, ra, -15
                  add          s6, a6, ra
                  srli         tp, s10, 4
                  sltu         t0, a4, s1
                  slli         t1, s4, 4
                  srli         a6, t0, 10
                  xor          t0, s5, a3
                  slt          s6, s10, t3
                  add          t5, t0, a7
                  slli         s1, t0, 26
                  addi         s5, t2, 1090
                  xori         s2, a6, -1733
                  add          s6, a3, s6
                  sltiu        a3, s1, -1416
                  sll          s5, a3, t1
                  xori         a1, t4, -391
                  or           a5, s11, a0
                  slli         t1, s6, 25
                  nop
                  ori          a3, s9, 593
                  srl          sp, s10, s10
                  or           a3, s3, gp
                  slli         s11, a6, 31
                  or           a7, s5, s9
                  or           tp, gp, t2
                  sltu         t6, a2, tp
                  srai         s9, zero, 0
                  nop
                  sub          a5, gp, t6
                  xori         t3, ra, 910
                  sll          s11, t4, s1
                  sra          s1, a5, s9
                  sltu         s2, a2, a1
                  sub          s2, t5, t3
                  or           sp, s2, s6
                  andi         t4, t1, -812
                  ori          a6, a4, 1963
                  xori         t5, a3, 840
                  sll          s4, s8, s3
                  srl          a6, ra, t0
                  and          s3, s10, s7
                  srli         s11, a1, 24
                  nop
                  slti         s11, t2, 1288
                  andi         t3, t2, -280
                  sra          t3, s9, gp
                  sll          s11, s2, ra
                  auipc        a2, 788835
                  auipc        s1, 483663
                  sltu         a5, t2, s3
                  srl          a1, a2, s3
                  slli         t0, zero, 13
                  auipc        a5, 759391
                  srai         t1, s11, 19
                  auipc        ra, 577268
                  sra          a5, s7, t0
                  slti         s8, s0, 786
                  sub          t6, gp, t2
                  srli         s10, s5, 10
                  and          s9, s8, t5
                  sll          ra, s8, a2
                  xor          a2, s0, s11
                  ori          t3, a7, 1580
                  andi         s10, t1, -1288
                  or           a7, s11, s6
                  slli         s10, a6, 17
                  sltiu        gp, t4, 452
                  sll          s11, s8, a3
                  sra          t4, t1, s9
                  slli         a1, s5, 18
                  sltu         s11, gp, t1
                  and          a1, s2, tp
                  xor          s11, ra, s5
                  sltu         a0, s11, s8
                  xor          a7, t0, s11
                  sll          zero, a5, a7
                  lui          zero, 217683
                  slli         t6, t0, 22
                  andi         a0, s7, -492
                  andi         s2, s3, 1555
                  andi         s6, s1, -1299
                  or           ra, a2, t4
                  sltu         t6, s8, a6
                  srli         s5, t6, 10
                  nop
                  addi         s7, t5, -603
                  sll          ra, s10, s5
                  sll          a3, s1, s2
                  sll          tp, s10, a2
                  nop
                  andi         s6, s2, -1567
                  or           zero, a7, t2
                  srl          s9, ra, gp
                  lui          t5, 625513
                  sra          s3, t6, a6
                  addi         s5, a0, 1001
                  sub          a3, s2, a0
                  xori         s11, s10, 1818
                  lui          t4, 389549
                  sub          ra, s3, t4
                  xor          a3, t2, a7
                  sltu         s11, gp, sp
                  addi         t5, s5, 991
                  or           s5, s3, ra
                  srli         zero, t5, 4
                  or           s7, a1, t5
                  addi         t6, t6, 505
                  ori          t5, s1, -1246
                  slli         s1, a5, 15
                  or           a0, tp, a1
                  slt          a1, gp, s0
                  addi         t5, a6, -1587
                  sra          t5, a6, s8
                  srli         a3, s11, 27
                  slti         tp, t4, 1771
                  xori         gp, s1, 1976
                  srai         a0, s0, 11
                  slt          t3, a7, t0
                  andi         a5, a3, 1621
                  or           sp, a5, a3
                  and          s7, a5, s4
                  nop
                  xori         a2, s1, -171
                  auipc        s3, 936670
                  or           s8, s11, t2
                  lui          t6, 604477
                  andi         a5, s10, 1531
                  addi         gp, t2, -615
                  slli         t4, t1, 28
                  srl          a2, s11, a7
                  or           t3, s4, s0
                  sll          s5, a7, s10
                  add          s8, a3, t0
                  sll          s9, t6, a2
                  auipc        s7, 999093
                  xori         a7, a2, -1001
                  sltu         s8, t4, a1
                  srl          a7, a1, ra
                  sub          t3, t0, a4
                  or           a2, a4, sp
                  sra          a2, sp, ra
                  xori         s5, a3, 1652
                  sltu         t5, a1, a0
                  ori          ra, t6, 464
                  auipc        s8, 278823
                  add          s8, s2, s7
                  auipc        t1, 36258
                  addi         s1, a4, 1424
                  xor          a1, s2, s2
                  sra          a5, a2, t3
                  xor          a2, s1, t4
                  slti         t6, t6, -1991
                  xor          t6, a2, s4
                  xor          s8, s2, t1
                  srli         s4, a6, 13
                  slli         t4, s8, 3
                  sltu         a2, t3, gp
                  slt          a3, t6, a1
                  auipc        t5, 713193
                  addi         t0, a0, 498
                  andi         s8, s1, 926
                  srai         gp, t3, 0
                  auipc        ra, 1047380
                  srli         a3, a2, 17
                  srai         a3, s11, 21
                  sll          s9, s6, a0
                  slti         a1, t4, -1396
                  sll          a6, a6, t2
                  sltiu        sp, a2, -1509
                  auipc        a1, 130429
                  sub          s7, s0, ra
                  xor          s11, a1, tp
                  xori         s7, a7, 440
                  and          s8, a5, a1
                  or           t3, s9, t0
                  srli         s10, a3, 25
                  or           a0, s10, gp
                  srai         s2, t5, 4
                  and          s6, t2, s9
                  lui          a0, 355526
                  srai         t6, a4, 3
                  xori         a5, s9, -1702
                  andi         gp, s7, 1588
                  sltiu        a5, a7, -1480
                  srli         ra, a5, 7
                  sra          s2, a7, t4
                  sll          s7, zero, sp
                  ori          a3, s0, 788
                  srai         t4, ra, 13
                  ori          gp, a5, 1226
                  sltiu        s2, s1, 842
                  lui          t3, 44593
                  andi         sp, t0, 188
                  andi         a3, s0, 404
                  and          s7, s6, s10
                  sra          s9, s7, a1
                  slli         a6, t5, 0
                  srl          a1, zero, t5
                  sll          s7, a0, a5
                  sltu         s10, a1, t3
                  sltiu        gp, t6, -1271
                  srli         ra, a1, 13
                  add          a5, a4, a2
                  sltu         tp, s9, t3
                  auipc        s2, 945430
                  sltu         s4, s7, a6
                  sra          a5, tp, s7
                  srai         s6, a3, 4
                  auipc        ra, 726719
                  nop
                  lui          s6, 711764
                  xor          s2, sp, a4
                  sltiu        gp, s4, 1590
                  slt          zero, t5, zero
                  auipc        t4, 65696
                  slti         s5, a3, 18
                  srli         ra, a6, 12
                  add          t6, s10, a6
                  or           a0, a2, tp
                  sll          a7, ra, s4
                  xori         a3, s4, -1426
                  srli         sp, s2, 22
                  srai         s10, a0, 22
                  ori          s5, s1, -1709
                  auipc        ra, 61179
                  sltiu        zero, t0, 211
                  xori         s2, a7, 233
                  xori         a5, s2, 1380
                  slti         s11, t6, 895
                  sll          s10, a3, gp
                  or           a6, ra, a7
                  auipc        t1, 593237
                  srl          t6, a4, s7
                  or           a5, t2, t1
                  auipc        t6, 984349
                  sll          a3, s2, a7
                  srai         s5, s8, 13
                  xori         s2, s8, -1756
                  slti         t3, s10, -121
                  or           ra, s9, s10
                  or           s8, s6, s1
                  and          t5, a4, s2
                  xor          a7, t2, a0
                  lui          s8, 609784
                  sltiu        s9, s6, 1422
                  addi         a2, s10, 612
                  slti         gp, t5, -944
                  lui          a2, 272828
                  srai         s10, a4, 1
                  xori         tp, s1, 1347
                  and          ra, tp, s10
                  and          s11, gp, a0
                  andi         t4, s5, 514
                  slli         s6, a2, 9
                  xor          a6, t6, a1
                  sub          s5, a6, t0
                  slti         t5, s11, -337
                  sltu         tp, s7, s1
                  srl          s10, tp, t0
                  sra          s1, a6, t2
                  slli         s9, gp, 29
                  addi         a1, gp, -818
                  ori          a1, s6, 2041
                  auipc        zero, 655966
                  xori         tp, s2, -786
                  andi         gp, ra, 1707
                  xor          t0, t4, gp
                  sra          a7, sp, t4
                  sltiu        t5, t1, -1026
                  slli         a2, s4, 18
                  andi         t0, s10, -530
                  ori          t3, a3, 601
                  sra          t0, a7, zero
                  xor          s1, a0, ra
                  slli         s4, t6, 17
                  add          t0, s11, s2
                  srl          s2, tp, a4
                  andi         s4, gp, 1955
                  srai         s10, t4, 14
                  auipc        s6, 158156
                  sub          s7, sp, a3
                  slti         s4, s11, -976
                  nop
                  slt          s6, t0, a5
                  nop
                  xori         a1, s5, 1327
                  and          t4, a2, a1
                  sltiu        t4, s4, 1482
                  lui          t3, 247842
                  nop
                  slli         s3, zero, 1
                  slt          t5, t0, a2
                  addi         s11, s10, 99
                  ori          s10, t3, -1370
                  xori         a1, zero, -532
                  srai         s1, t6, 21
                  nop
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t5, 0xffffffff
                  li           s9, 0xffffffff
                  li           a1, 0x0
                  li           s11, 0xffffffff
                  li           a3, 0x0
                  li           gp, 0xffffffff
                  li           a6, 0x80000000
                  li           s3, 0x80000000
                  li           a5, 0xffffffff
                  lui          t5, 877223
                  nop
                  auipc        a1, 760447
                  addi         t5, t5, -884
                  nop
                  nop
                  add          a5, a3, s7
                  auipc        a6, 832459
                  auipc        a6, 169221
                  lui          t5, 63244
                  addi         a6, a5, -1478
                  sub          s3, a6, s3
                  addi         s11, s9, 941
                  nop
                  sub          a3, a1, t5
                  add          gp, a1, a3
                  nop #end riscv_int_numeric_corner_stream_8
                  andi         s2, t6, -1783
                  slti         ra, s1, -708
                  or           s4, gp, s8
                  sltu         gp, s3, a4
                  and          s1, s5, a1
                  sub          t5, s6, a5
                  and          s4, sp, a4
                  slli         gp, a1, 10
                  add          s9, t0, a5
                  sll          s8, s2, a5
                  ori          sp, t0, 1705
                  and          gp, s6, a3
                  ori          a6, s9, 1859
                  ori          a0, a4, -1754
                  sltiu        s3, s2, -1658
                  xori         t5, t6, 395
                  xori         s1, a1, -1071
                  srl          s6, s6, s4
                  sra          s5, gp, t6
                  add          a0, s2, a0
                  xor          a1, s10, t2
                  sra          t6, tp, ra
                  sra          s2, s11, zero
                  or           a7, t6, tp
                  slt          a1, gp, s1
                  lui          s1, 206724
                  andi         a0, a0, 1554
                  lui          s11, 689364
                  sltu         sp, s0, a1
                  sll          ra, t3, zero
                  add          s11, s0, t0
                  or           s11, s0, a6
                  slli         gp, s0, 6
                  and          a3, t5, s7
                  slli         a0, a4, 11
                  or           a2, a3, t6
                  slti         t1, t5, 1212
                  sra          gp, t0, s9
                  addi         s9, a1, -1479
                  slti         s3, t6, 1918
                  sltu         s8, a1, s9
                  srl          a7, a4, a0
                  sltu         s2, t4, s10
                  sll          s7, s7, s5
                  ori          t4, ra, 761
                  slti         t5, t1, 1164
                  srl          t4, s1, a3
                  auipc        zero, 538942
                  nop
                  srl          zero, s3, a4
                  slti         s7, a1, 1012
                  andi         gp, a3, 1962
                  sll          s9, t6, s9
                  nop
                  srli         a2, zero, 20
                  sltiu        a1, s1, 961
                  addi         s7, s9, -1461
                  addi         s3, a1, -106
                  ori          a3, a5, 1454
                  sra          t5, t5, s8
                  sll          s9, s2, s2
                  auipc        a5, 405528
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a6, 0x9772ba88
                  li           a2, 0x80000000
                  li           tp, 0x0
                  li           t0, 0xffffffff
                  li           t4, 0x0
                  li           gp, 0x80000000
                  li           a3, 0x0
                  li           s10, 0xffffffff
                  li           s2, 0x80000000
                  add          a6, gp, s10
                  sub          tp, gp, s10
                  sub          t6, t6, s10
                  sub          a3, a3, s2
                  nop
                  auipc        a3, 195989
                  addi         s2, gp, -219
                  addi         a3, a2, -1552
                  nop
                  add          s2, t4, s2
                  add          t4, tp, s2
                  auipc        a2, 842745
                  lui          s10, 288166
                  lui          t6, 851876
                  lui          a6, 83955
                  lui          gp, 713076
                  nop
                  add          t0, s2, a6
                  nop #end riscv_int_numeric_corner_stream_3
                  slt          s11, a0, s7
                  sub          t3, s8, t1
                  sub          a1, t3, s9
                  sra          sp, t4, s0
                  srai         a0, t4, 14
                  auipc        s2, 544187
                  srai         zero, s9, 3
                  xor          s6, s11, s6
                  sltiu        s2, t2, 53
                  sra          s6, s9, t5
                  nop
                  nop
                  slt          t4, t6, s3
                  sll          s4, tp, a1
                  sra          t5, s8, a5
                  ori          sp, t4, -1460
                  slli         s4, sp, 10
                  sll          ra, ra, a3
                  add          s1, s2, s5
                  xor          t4, t0, s0
                  add          s1, a0, t5
                  or           a3, s11, s6
                  sll          s11, s4, t1
                  slti         s10, s9, -1038
                  sra          s6, a6, gp
                  sltiu        a2, t3, 1748
                  lui          s7, 308756
                  add          a7, a7, a4
                  and          zero, a1, t2
                  srl          a2, ra, s10
                  srl          t6, s11, a2
                  sltu         t6, a4, a6
                  add          tp, s1, s8
                  srl          s6, a2, s7
                  addi         sp, s10, -588
                  add          a0, sp, s4
                  andi         s4, a6, 1568
                  and          s11, ra, sp
                  xori         ra, a4, -342
                  add          t4, zero, t5
                  lui          ra, 460398
                  nop
                  addi         s2, gp, 1444
                  addi         a6, a5, 1980
                  sra          tp, a7, a4
                  nop
                  or           s7, s4, t2
                  sltu         s5, s11, a1
                  srai         t3, a5, 27
                  xor          a7, s0, s7
                  addi         s2, t1, -1640
                  sub          ra, s11, ra
                  sll          a6, ra, sp
                  andi         t4, t0, -1310
                  auipc        s8, 674716
                  sra          a6, s7, a0
                  srl          a1, t0, ra
                  sll          zero, s1, sp
                  and          a1, t2, tp
                  sub          a3, a1, t0
                  srai         t5, a3, 15
                  srli         s10, t4, 24
                  srai         t3, a2, 5
                  slt          t1, a4, s4
                  or           t0, a6, a7
                  or           a5, a6, t6
                  sra          s10, a3, t1
                  slli         s8, s2, 30
                  sra          s11, t2, a5
                  addi         tp, a5, 915
                  sltiu        a5, a1, 1479
                  sra          s5, a0, a3
                  lui          a3, 843381
                  nop
                  add          s9, s11, ra
                  sltiu        s7, a4, 2034
                  srai         sp, ra, 27
                  nop
                  xor          a7, tp, a4
                  add          t6, a6, a6
                  sub          s4, ra, s5
                  nop
                  xori         t3, a1, 1299
                  lui          s5, 71778
                  srli         a5, s11, 24
                  sltiu        a2, gp, -476
                  sltiu        a2, zero, 1787
                  slli         a6, s9, 0
                  xor          s7, a2, t2
                  sltiu        t3, a7, -800
                  addi         a7, a2, 1386
                  sub          s3, t0, s1
                  srl          s6, t3, t6
                  sub          s9, a2, t1
                  slt          a5, tp, tp
                  xor          t3, a2, ra
                  srai         s2, gp, 10
                  auipc        s4, 882138
                  xor          a2, t1, s0
                  nop
                  and          zero, s8, a4
                  and          s6, s1, s5
                  xori         s3, t3, -1467
                  srai         a5, s6, 18
                  addi         zero, s10, 141
                  xor          a5, t3, a1
                  addi         s4, s5, -1309
                  or           s1, s0, s6
                  ori          tp, a3, 1037
                  xor          t4, t5, s9
                  xori         ra, s5, 1852
                  and          ra, t3, a7
                  or           tp, s9, a7
                  addi         t0, t5, 925
                  sltu         a2, s2, s1
                  andi         tp, a0, -1603
                  srai         t4, s7, 19
                  auipc        s9, 171486
                  sll          s5, t5, a3
                  sra          a2, tp, t5
                  auipc        s5, 431600
                  andi         s5, t2, -91
                  sra          s9, t5, s11
                  srl          s4, a3, s6
                  slt          s9, s4, s2
                  andi         ra, a7, 166
                  xori         a6, a6, -2028
                  sltu         s8, a5, s8
                  sra          s2, tp, t4
                  sltiu        s9, s4, -838
                  xori         zero, s2, 166
                  and          gp, a3, a6
                  sra          sp, t4, s3
                  or           s6, s2, t6
                  nop
                  slt          s10, a6, s1
                  add          ra, sp, a4
                  addi         a1, t5, 1161
                  add          a6, t0, s6
                  slti         t0, s3, -1898
                  srli         s8, s6, 30
                  sll          s9, t2, tp
                  sra          s7, s6, t4
                  lui          a6, 453187
                  xori         s10, s8, 1101
                  slti         sp, s10, 377
                  andi         s3, a7, 209
                  sltu         zero, t3, t0
                  slti         tp, a1, -439
                  slli         a1, t4, 6
                  srli         s8, t4, 22
                  sra          a6, a4, s10
                  sll          s1, gp, s11
                  srai         a6, s0, 10
                  sltu         s7, a2, s6
                  sltu         s4, t2, s7
                  sub          gp, a5, t3
                  slti         a2, a1, -790
                  sltu         s6, t4, tp
                  sltiu        s6, a7, -1390
                  sltiu        s7, s10, -936
                  slti         zero, s9, -1338
                  slti         s9, s0, -1322
                  nop
                  and          t5, t1, s4
                  slli         a3, s10, 1
                  slti         s7, a2, 1330
                  srai         ra, a4, 21
                  sltu         t6, s1, sp
                  srl          ra, s7, a2
                  srai         t3, t1, 4
                  slli         gp, s5, 28
                  sltu         t6, s1, t3
                  ori          t3, t3, 1892
                  srai         a7, s3, 8
                  srli         ra, s10, 28
                  srli         a7, a0, 16
                  xor          s6, s0, t1
                  slti         s10, ra, 398
                  srai         t4, a5, 16
                  sra          s11, a1, s4
                  ori          t5, a4, -1135
                  addi         s4, sp, -777
                  andi         s5, t6, -855
                  sub          a7, sp, s3
                  lui          a1, 178851
                  sll          t1, t4, zero
                  sub          a7, s10, gp
                  ori          s5, a1, -1811
                  nop
                  nop
                  ori          t0, t4, -1182
                  srai         ra, t4, 12
                  xori         a1, t2, 1276
                  sltu         ra, tp, zero
                  slli         s11, t5, 6
                  sll          a1, t0, a1
                  lui          t5, 1032617
                  slt          s6, gp, t4
                  srai         t0, gp, 28
                  sll          t6, t2, s5
                  srli         t1, t1, 30
                  slli         s9, gp, 9
                  slli         t1, a5, 5
                  nop
                  sll          t1, s7, t2
                  sll          a2, a0, t2
                  sll          s1, a4, zero
                  sll          s1, a5, a1
                  andi         a7, s5, 1279
                  xori         t1, t4, 1939
                  slli         a5, a3, 10
                  slli         a7, s9, 15
                  sltiu        s4, s0, 2000
                  lui          s10, 170128
                  nop
                  addi         s9, s9, -536
                  addi         t5, tp, -1647
                  sra          a3, a0, s5
                  addi         a2, t3, -249
                  srl          a3, a3, t4
                  sub          t3, sp, a6
                  slti         zero, t1, -1744
                  sub          a6, a2, s3
                  auipc        s11, 592580
                  nop
                  slti         s8, t5, 788
                  or           s8, gp, s5
                  ori          s5, a0, -1975
                  slt          a1, sp, s10
                  slli         t3, a4, 20
                  or           s4, s8, s2
                  nop
                  slti         a2, s7, 1932
                  srl          s3, s7, t2
                  xor          t3, t2, t0
                  auipc        zero, 249728
                  ori          sp, s5, 659
                  nop
                  srai         a7, s8, 24
                  auipc        s11, 414261
                  sub          a1, t5, a2
                  srli         a3, s4, 31
                  and          zero, s8, a1
                  ori          a2, a1, 1917
                  sltiu        gp, t2, 1751
                  sll          sp, s4, a4
                  srl          t6, a2, s11
                  or           t0, a2, s9
                  addi         gp, s7, 588
                  sra          a5, t5, s5
                  and          tp, s4, a7
                  xori         tp, sp, -838
                  nop
                  srl          t3, t3, t2
                  xori         a3, a3, 1474
                  srl          t5, a4, sp
                  ori          gp, t4, -114
                  auipc        a7, 22533
                  and          a1, s2, s11
                  xori         tp, t2, 861
                  sltu         s10, s11, s2
                  srl          t4, s8, gp
                  srl          t5, tp, s8
                  xor          s6, s2, t6
                  nop
                  ori          t4, t2, 1250
                  sltu         a6, t0, t6
                  sra          s4, t6, a3
                  slt          t1, tp, t3
                  slli         s8, t4, 14
                  sll          s5, a2, s10
                  lui          s6, 828154
                  lui          a6, 783075
                  andi         zero, ra, -1878
                  sltiu        sp, t0, -1708
                  sub          s2, t2, s10
                  slt          t5, t1, t3
                  sra          s2, zero, s5
                  sltiu        s3, a0, -186
                  lui          s11, 31043
                  sll          a5, s7, a0
                  sra          t4, s10, a1
                  sra          sp, ra, a4
                  add          s4, t6, s6
                  andi         t6, s3, 664
                  sub          a7, s3, t1
                  sltiu        a6, s7, -1424
                  addi         t1, tp, 1401
                  add          t6, t0, t6
                  xori         s7, a6, 344
                  andi         s1, t3, -1922
                  sltu         a2, t6, t6
                  srli         sp, ra, 19
                  sltiu        t3, t4, -814
                  lui          s9, 298539
                  srl          s11, a7, sp
                  slti         tp, t6, 522
                  sra          s6, zero, s0
                  srai         a3, s7, 8
                  sll          ra, a2, t2
                  add          s5, t0, t5
                  andi         s10, s5, -247
                  sltiu        s1, a5, 1389
                  srai         s9, s7, 24
                  nop
                  or           t5, zero, s6
                  sltiu        s7, gp, 1859
                  slli         t1, t4, 30
                  slti         tp, t2, -927
                  srai         a3, s4, 21
                  slti         t6, a7, 1966
                  srai         a0, s9, 1
                  sltiu        s11, t3, -1447
                  add          s1, zero, a0
                  srli         s3, a7, 20
                  sltu         gp, t1, a3
                  slli         t6, s6, 6
                  andi         a5, s8, -253
                  nop
                  or           gp, a4, zero
                  addi         a2, a3, -1204
                  lui          s7, 376351
                  xor          s4, a5, a5
                  and          s6, s4, a2
                  nop
                  xor          s7, a4, t6
                  sll          sp, s1, s3
                  ori          s1, s5, 1903
                  srai         t0, t3, 7
                  and          s5, a7, t5
                  auipc        s9, 706301
                  srli         t1, s3, 16
                  slt          s11, t1, a0
                  sra          ra, s8, a2
                  sltiu        s7, s11, -1980
                  sll          t3, a1, a5
                  lui          t4, 456473
                  sll          gp, s9, t6
                  sltiu        zero, s2, 1094
                  slti         t6, s2, -2033
                  and          sp, ra, a1
                  srli         s5, t4, 0
                  addi         s1, gp, -175
                  andi         a5, ra, 881
                  slt          t0, t5, t3
                  lui          tp, 1038874
                  sll          t1, gp, a5
                  add          zero, s10, gp
                  sltu         a0, a3, t4
                  sll          s10, a7, t0
                  andi         t5, s2, 1281
                  andi         t3, t2, 536
                  slti         a2, t0, -1644
                  and          s1, t0, sp
                  sltu         t5, s1, t1
                  xori         ra, a7, 981
                  nop
                  slt          s11, t3, gp
                  or           t5, a6, a5
                  srli         t5, s8, 2
                  andi         s2, a6, 1154
                  and          t0, s11, t0
                  or           s1, s1, a2
                  sll          t6, s10, s5
                  lui          t0, 980569
                  addi         t3, tp, 1085
                  srli         s2, t1, 29
                  srl          t5, t0, tp
                  sub          gp, tp, gp
                  and          zero, s7, s3
                  srli         s2, s2, 12
                  xor          a3, a0, a6
                  srl          s2, a4, t2
                  slti         ra, a1, 1898
                  slt          s7, s10, a7
                  xor          s8, t3, tp
                  and          s10, s4, s7
                  auipc        s8, 763865
                  lui          tp, 609776
                  andi         s11, t6, -1921
                  auipc        t4, 433913
                  srli         a7, t2, 30
                  sub          s11, s2, s7
                  and          zero, s5, s9
                  nop
                  srl          s10, a7, s7
                  nop
                  slt          t4, s8, tp
                  add          s7, tp, s6
                  lui          s4, 525847
                  or           t6, a7, a6
                  andi         t4, s8, -1995
                  srli         s4, gp, 19
                  srli         s7, s11, 13
                  ori          s1, s2, -14
                  add          tp, s9, a3
                  xor          a5, s4, s11
                  andi         s9, s10, 104
                  lui          s8, 442715
                  sra          s8, s11, a1
                  slti         a6, a5, 1431
                  xori         zero, a7, -1
                  sub          s9, s3, zero
                  xori         s3, a0, 1229
                  sltu         s4, tp, s3
                  sub          t5, a0, s1
                  sra          ra, t0, a6
                  slti         s7, s10, -170
                  andi         t6, s9, -776
                  add          a1, s11, zero
                  srl          zero, s2, t0
                  srli         a1, a6, 15
                  slli         a2, t4, 23
                  nop
                  srai         s5, t2, 1
                  auipc        a0, 814779
                  and          a1, t0, t2
                  auipc        s1, 154665
                  slli         s10, a0, 6
                  and          a2, sp, zero
                  sub          s3, s7, t2
                  auipc        gp, 615203
                  lui          sp, 998917
                  xori         t3, t1, 564
                  sltiu        sp, a0, 435
                  add          t3, gp, s1
                  addi         t6, a6, -31
                  slti         t5, t1, -935
                  srl          a3, a2, zero
                  xor          s7, s10, s1
                  srl          s5, s11, sp
                  and          a0, s10, a0
                  sll          t3, s10, t5
                  or           s2, s3, a0
                  nop
                  auipc        s11, 228782
                  nop
                  auipc        s6, 183354
                  sll          a0, s4, s1
                  srai         s4, s11, 28
                  nop
                  lui          s10, 714230
                  sltiu        s6, sp, -1930
                  xori         s11, s0, -463
                  slli         a2, s1, 5
                  srli         s2, sp, 24
                  slti         t1, t4, -2036
                  andi         s2, a3, 1966
                  sub          s11, zero, a3
                  slt          s3, a6, s5
                  ori          gp, a7, 1257
                  xori         a0, tp, 114
                  sltu         a5, t0, s2
                  sra          a0, a4, a1
                  srli         a2, t5, 5
                  ori          a2, s3, -1764
                  slli         a6, a0, 17
                  srli         t4, a2, 5
                  or           a6, t3, s7
                  andi         s4, ra, -2035
                  andi         t6, t0, 1981
                  sra          s10, t2, s6
                  sltiu        s10, ra, 1614
                  addi         s6, s0, 1700
                  andi         s2, s10, -221
                  xor          a7, a7, s3
                  slti         t1, t3, 363
                  lui          sp, 247006
                  xor          a2, tp, gp
                  add          s1, s5, a2
                  sltu         a1, s5, s6
                  slt          sp, s8, t0
                  srl          tp, a5, a7
                  sra          s10, s2, a7
                  and          a3, sp, a6
                  xori         a7, a7, -1647
                  srl          zero, s2, s2
                  auipc        a6, 131155
                  addi         a0, zero, 1800
                  add          s4, sp, a4
                  sltiu        a5, gp, 1433
                  slt          s8, s3, a2
                  xor          t6, s0, s1
                  ori          s2, gp, 174
                  srai         t1, t0, 18
                  sub          s11, s5, a5
                  addi         a6, t6, 1924
                  srai         tp, s9, 17
                  slli         t5, a6, 4
                  ori          t3, s11, 1813
                  or           ra, a3, t2
                  sll          a0, t4, a2
                  sltiu        s9, t2, 1617
                  slt          t0, t2, t5
                  sltu         s7, s2, sp
                  xor          t1, s8, a3
                  sltu         zero, t4, s1
                  sltu         a1, zero, gp
                  sll          gp, a2, a0
                  and          s3, a4, s2
                  slli         zero, zero, 12
                  sll          s4, s8, a5
                  and          s8, a5, s11
                  add          t1, t4, s5
                  srli         gp, a6, 22
                  sra          a3, a4, a6
                  srl          s11, s11, a7
                  srai         s6, t1, 4
                  slti         s7, s5, 1494
                  or           a2, t6, t5
                  or           s4, s8, t6
                  auipc        t6, 232242
                  srl          s4, s10, a4
                  sll          s9, s5, s2
                  add          sp, s9, s4
                  xori         t4, s10, 1542
                  sltiu        s3, s6, -1632
                  srli         a0, s6, 21
                  sub          t6, s11, t3
                  sll          a1, a0, sp
                  xor          s5, a5, s4
                  srl          s9, ra, s1
                  addi         t3, t0, 41
                  addi         s6, a0, -331
                  lui          t3, 776223
                  slt          s4, tp, t1
                  sll          a2, a6, ra
                  xori         t5, ra, -174
                  sub          zero, t5, a0
                  or           ra, a2, t1
                  auipc        a0, 900635
                  sra          s4, zero, t2
                  srli         tp, t2, 4
                  auipc        s8, 902924
                  xor          a1, s0, t4
                  andi         s3, a4, -702
                  slt          s7, t5, zero
                  srl          t1, t2, s5
                  and          a1, t6, ra
                  sub          gp, a3, t1
                  slti         s1, s3, 1023
                  sll          s11, a2, s10
                  and          a3, s7, s5
                  auipc        tp, 832784
                  sltiu        a7, t6, 884
                  andi         s8, t3, 792
                  sll          a2, zero, t3
                  lui          t4, 258905
                  sll          t4, a3, a4
                  ori          a0, s7, -757
                  nop
                  srai         ra, a3, 22
                  slt          a2, t2, t6
                  auipc        t3, 2427
                  sltu         s3, a7, s2
                  srai         a2, s9, 19
                  nop
                  ori          sp, a6, -998
                  ori          s6, s7, -899
                  lui          a5, 964030
                  ori          s9, tp, -1703
                  slti         a3, t1, -1016
                  sltiu        a5, t5, 824
                  or           s7, a2, zero
                  and          s5, s9, t3
                  add          s11, s7, ra
                  add          s11, a7, s9
                  ori          s2, ra, 1705
                  xori         s6, a4, 1380
                  xori         s7, s3, -319
                  xor          a2, t4, s9
                  ori          tp, tp, 1167
                  slt          t5, gp, s10
                  sltu         s3, s10, tp
                  slti         s1, a7, 1992
                  andi         a3, a1, 1135
                  and          a5, s4, s10
                  sra          s1, a5, a5
                  nop
                  add          t1, s0, s6
                  and          tp, t6, s7
                  nop
                  xori         a5, a1, -254
                  sra          tp, s3, ra
                  and          s4, t6, s4
                  srl          a1, a0, a4
                  and          s5, s0, ra
                  slti         s5, a6, 1946
                  addi         s11, zero, 1891
                  sltiu        a5, zero, -1615
                  auipc        s10, 864290
                  srli         s5, t3, 9
                  srli         t5, s6, 13
                  sub          a0, a0, s10
                  and          zero, t3, a0
                  xori         s6, t0, 1923
                  slt          a2, zero, t5
                  add          s7, t0, s7
                  auipc        a2, 730831
                  sub          t0, s4, t1
                  slti         a0, s7, -1170
                  sltu         s8, tp, a1
                  auipc        s8, 928833
                  srl          a7, s2, t3
                  auipc        s3, 773037
                  slt          s2, s5, a0
                  slti         a3, t2, 1763
                  sltu         t0, t4, a3
                  auipc        t4, 1207
                  srli         t6, s3, 28
                  addi         s1, s11, -339
                  and          s11, tp, s8
                  auipc        a3, 50936
                  sltiu        s2, a7, 1458
                  srai         s8, t1, 1
                  sltu         ra, s5, s7
                  srli         t6, a0, 2
                  slti         a2, t1, 1253
                  addi         s4, s4, 988
                  srli         t5, a1, 2
                  sll          s10, s5, s8
                  xor          s2, sp, tp
                  xori         s7, a0, 602
                  sltu         s3, t6, t0
                  xori         s8, s8, 346
                  srli         s5, s8, 11
                  andi         a5, s5, -1253
                  sltu         a1, s6, a3
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s8, 0x0
                  li           sp, 0x0
                  li           a0, 0x1fe5edc6
                  li           s11, 0xffffffff
                  li           t0, 0xffffffff
                  li           s9, 0x80000000
                  li           s2, 0x0
                  li           t6, 0xffffffff
                  li           s7, 0xffffffff
                  nop
                  nop
                  add          s7, a3, s2
                  add          s11, s2, s9
                  auipc        sp, 929323
                  addi         s11, t6, -711
                  lui          s9, 764625
                  sub          s7, t6, a0
                  auipc        s2, 651094
                  add          a0, s11, s9
                  add          s8, s2, a3
                  add          s9, t0, t0
                  add          s8, s2, t6
                  lui          t0, 88818
                  auipc        t6, 634607
                  lui          a3, 836404
                  addi         s9, s11, -1838
                  sub          sp, s2, a3
                  addi         sp, s9, 139
                  add          t6, a3, s9
                  auipc        s9, 508833
                  auipc        s2, 159503
                  add          a0, t6, s8
                  sub          s9, a0, s11 #end riscv_int_numeric_corner_stream_0
                  addi         zero, s5, 143
                  slli         a2, sp, 12
                  sub          ra, t2, s7
                  srli         s5, s11, 22
                  ori          tp, t5, -638
                  sltu         s11, s11, sp
                  ori          a1, t2, 1552
                  srli         a3, a5, 30
                  srli         s4, a1, 24
                  sra          a0, a2, t1
                  sltu         t6, a4, gp
                  or           s1, s9, s1
                  or           s6, t1, a1
                  or           a2, s5, t3
                  sltu         t1, tp, s6
                  slli         t3, s5, 6
                  sltu         s3, a4, s8
                  ori          s11, s11, -1733
                  sub          s2, s0, s5
                  srl          s4, s4, tp
                  and          s1, a5, s4
                  nop
                  srl          a2, gp, s6
                  auipc        t0, 217758
                  xori         a7, sp, 201
                  xor          t3, t3, s3
                  andi         s5, s8, -260
                  srl          a6, t5, s11
                  add          a0, s4, a7
                  xor          a2, t6, s5
                  sll          s5, sp, ra
                  xor          s1, t1, s5
                  srli         s3, a1, 18
                  and          s7, s6, a5
                  srai         t3, a3, 16
                  srai         s10, a7, 21
                  sub          a6, t1, t2
                  srli         s2, t1, 5
                  slli         a0, t3, 0
                  xori         s7, s10, -635
                  srl          t6, s9, t4
                  xor          t6, s10, s5
                  or           tp, t1, tp
                  addi         s1, s3, -1715
                  sltu         ra, a3, t3
                  sltu         s6, sp, a2
                  nop
                  or           s5, s0, t1
                  lui          s3, 552183
                  sll          t3, a2, t1
                  sll          zero, a0, a5
                  xori         s8, s8, 912
                  add          s7, a4, s10
                  andi         tp, s9, 1851
                  sub          zero, zero, tp
                  sub          s5, a0, sp
                  nop
                  slli         tp, s2, 21
                  nop
                  nop
                  lui          a3, 300312
                  xori         s7, gp, -1544
                  xori         a2, s0, -1439
                  slli         gp, s9, 10
                  sll          gp, a0, zero
                  xor          t3, a3, t6
                  add          t5, s6, a3
                  sub          s11, t1, tp
                  nop
                  lui          a3, 143163
                  or           s8, gp, sp
                  sra          a0, a4, s7
                  or           ra, gp, s2
                  ori          s8, gp, -2037
                  andi         a3, t4, -1303
                  lui          s1, 1012762
                  lui          s10, 112334
                  sltu         gp, sp, t2
                  sltu         a6, a4, s11
                  slli         s6, t5, 3
                  xor          s5, a3, t3
                  srli         t4, a1, 9
                  sltu         a6, a4, s2
                  sra          t3, s8, s5
                  or           s11, zero, a4
                  or           a2, a5, s11
                  sra          a7, s0, s0
                  srli         t1, a5, 26
                  srai         sp, s1, 30
                  add          a2, s8, s11
                  lui          s1, 742609
                  or           s8, a2, sp
                  slli         s11, a7, 7
                  xori         t6, s7, -619
                  srli         s1, a4, 17
                  srl          s3, zero, t6
                  nop
                  srli         s4, a0, 17
                  add          s2, ra, zero
                  srl          t3, sp, s9
                  xor          t1, a4, t2
                  srai         s6, s8, 11
                  xor          t3, t0, a5
                  srl          s11, a7, t5
                  andi         sp, a5, 429
                  addi         s5, t6, 129
                  lui          t0, 525926
                  add          s4, s0, s2
                  add          s3, t2, s0
                  srl          tp, gp, a1
                  sll          ra, a1, a7
                  xori         a5, a5, -1699
                  sra          s11, s10, a0
                  andi         s7, zero, -1852
                  nop
                  nop
                  slti         s4, s5, 2040
                  add          a7, a6, s1
                  or           zero, s11, a0
                  auipc        s5, 536055
                  sltu         t5, t2, a5
                  or           a3, a6, a4
                  andi         t5, s5, 1000
                  slti         a7, s0, 647
                  or           s9, a4, t3
                  sltu         a5, a5, s11
                  ori          s5, s4, -1329
                  xori         t3, a0, 1213
                  sll          s2, t0, s1
                  lui          t3, 631693
                  nop
                  add          ra, sp, s3
                  slli         s3, s11, 22
                  slti         s6, sp, -1541
                  add          a7, s2, a1
                  srli         s9, s8, 8
                  slli         s11, ra, 17
                  sll          s9, tp, t5
                  srl          a1, a6, s0
                  srai         a6, s6, 12
                  lui          t5, 206606
                  slt          a0, a2, a5
                  nop
                  sltu         a2, a5, t6
                  add          t1, s0, t0
                  andi         s8, zero, 1281
                  xor          a3, s5, sp
                  and          a5, s6, s6
                  srl          s6, t5, t3
                  add          s10, a2, tp
                  xor          s1, s8, s9
                  or           tp, t3, s7
                  add          s7, ra, t2
                  lui          s3, 280344
                  nop
                  slt          a5, a7, a1
                  sltu         s5, t3, s4
                  slt          a3, t2, s4
                  add          ra, s5, s6
                  nop
                  ori          t4, s1, 1803
                  slt          s5, a0, s11
                  ori          s4, ra, 1932
                  xor          sp, sp, s3
                  srli         s3, t0, 9
                  sra          t5, gp, tp
                  nop
                  sll          zero, s1, t6
                  sra          s1, s9, s4
                  add          ra, s11, a7
                  srai         sp, zero, 28
                  andi         a1, s1, -695
                  slt          s7, t0, s3
                  add          s1, a6, t0
                  sra          sp, a1, s6
                  srai         s3, t2, 8
                  sub          t0, a2, s6
                  ori          gp, s6, 74
                  slti         zero, s1, -437
                  ori          s9, t6, -341
                  addi         s7, a5, 1261
                  srai         s3, t1, 24
                  srai         ra, t0, 29
                  srli         sp, tp, 9
                  add          s5, s2, t1
                  or           s7, sp, s4
                  sltu         a5, sp, a1
                  nop
                  xori         t0, a6, -784
                  sltiu        gp, a7, -991
                  sltu         s7, sp, a2
                  ori          t5, s2, -522
                  srai         s10, s10, 2
                  or           s11, s0, a6
                  lui          ra, 567037
                  addi         s1, a0, 1934
                  auipc        s10, 870873
                  sub          a3, s6, s8
                  and          s8, s3, a7
                  and          a5, t2, a3
                  srli         a2, s5, 31
                  slt          t4, sp, s1
                  sra          ra, zero, t3
                  slt          a1, t3, ra
                  lui          a1, 670366
                  sra          a0, s9, a0
                  sltiu        a3, sp, 1793
                  xori         s1, t1, 1648
                  slli         gp, s7, 4
                  sub          s10, s11, a1
                  sll          tp, a0, s1
                  and          s4, a3, a0
                  add          a1, a0, a5
                  andi         s7, t0, 406
                  auipc        s10, 848341
                  andi         s4, s0, 985
                  slt          s6, s2, a4
                  slli         a1, t6, 6
                  srl          s1, a5, a1
                  auipc        s6, 11866
                  add          a3, t0, t0
                  sltiu        s4, s11, -2
                  or           a6, s0, gp
                  sltu         a2, s8, s7
                  add          tp, t6, t1
                  srl          s6, a0, a6
                  sub          s10, s10, s10
                  sltiu        a0, s8, -2021
                  sll          s4, s0, ra
                  addi         s4, t3, -1291
                  srai         s4, s3, 7
                  srl          gp, s2, a5
                  slti         s6, s8, -132
                  sltu         a1, s11, tp
                  slt          s9, a6, s4
                  srli         a7, s9, 16
                  sll          t4, s5, t1
                  and          s2, a1, ra
                  srli         a5, ra, 24
                  andi         s7, s2, -1466
                  xori         s8, a7, -77
                  sub          s5, a5, t1
                  slli         t1, tp, 14
                  srli         gp, zero, 28
                  sltiu        s4, a0, 186
                  srl          a0, s3, zero
                  add          t6, a6, a7
                  srai         a5, a2, 1
                  sltiu        sp, t6, -15
                  sltu         a6, t1, t1
                  sltu         a0, t1, tp
                  sltu         s1, t5, a0
                  or           s5, a6, a6
                  sltu         s4, t5, t1
                  add          s10, zero, s3
                  slti         s1, s10, 1825
                  slt          a5, t3, s5
                  sll          t1, a2, a0
                  srli         s11, s10, 13
                  sub          t3, t1, t4
                  xor          a1, gp, s1
                  auipc        t3, 114137
                  slli         s6, a4, 12
                  sub          t0, a6, s1
                  srl          s7, t2, t3
                  or           sp, s11, s0
                  lui          zero, 668620
                  srai         t5, s0, 19
                  add          sp, s3, s0
                  addi         t6, s6, 13
                  addi         a2, s11, 133
                  slt          s9, gp, gp
                  nop
                  sra          a3, t1, sp
                  slli         t4, gp, 22
                  sltiu        s7, t6, 1291
                  xor          s5, s1, t4
                  lui          s1, 25332
                  sll          s5, t5, tp
                  sltu         a7, s2, a5
                  slli         s6, t3, 24
                  slli         a7, t5, 12
                  slt          zero, zero, a0
                  srl          s2, sp, s11
                  srl          tp, s6, a4
                  auipc        tp, 210925
                  nop
                  slli         a1, s9, 15
                  and          s9, a3, a7
                  lui          a6, 554300
                  or           ra, t3, s6
                  sub          s11, t5, s8
                  and          ra, s0, s10
                  or           t6, t3, s4
                  srl          s9, s4, s2
                  sll          zero, gp, s1
                  slt          zero, s2, t2
                  xori         zero, s2, 423
                  lui          sp, 960681
                  sltu         t3, s5, s5
                  and          tp, s9, t4
                  add          t6, t2, s10
                  and          s5, s9, tp
                  xori         ra, a1, -1660
                  sra          sp, a1, gp
                  sll          s4, t5, t6
                  sltiu        t5, s1, 1756
                  sltu         s7, t5, a5
                  srl          a2, a1, t5
                  sll          a2, a2, t3
                  xor          s4, s0, zero
                  srli         t5, a3, 14
                  addi         a3, gp, -558
                  sltu         t5, t1, ra
                  sltiu        ra, a7, 1874
                  sll          t5, sp, s3
                  and          s6, s10, s6
                  sub          s6, a5, t3
                  sub          t1, a1, t0
                  sra          s3, a7, s0
                  andi         s11, s9, 1421
                  sltu         s8, t2, gp
                  andi         t0, t1, -431
                  xor          a0, s2, t4
                  srl          gp, tp, t4
                  sltu         ra, s7, a2
                  lui          t6, 324920
                  auipc        s8, 695875
                  lui          t4, 750465
                  sltu         gp, a3, s0
                  slt          s4, a0, a4
                  sra          s11, s6, gp
                  or           t4, s11, s7
                  xori         a5, s11, 559
                  srli         s8, a4, 8
                  addi         a7, t2, -482
                  sub          a5, s1, s0
                  sub          s4, a5, sp
                  ori          s9, s3, 1824
                  lui          ra, 105932
                  and          a0, a6, t2
                  sra          a7, s7, a6
                  addi         a2, t1, 82
                  nop
                  addi         t1, a2, -1972
                  slti         a0, zero, -1752
                  xor          s11, a5, s7
                  ori          tp, s2, 255
                  add          zero, s9, a2
                  or           zero, a1, s4
                  lui          s4, 890177
                  slti         a3, a3, -172
                  slti         a2, ra, 816
                  xor          s4, s8, s8
                  slti         a3, s8, -517
                  sltu         t3, a5, a1
                  srai         sp, a5, 30
                  nop
                  srl          a0, t2, s8
                  addi         s7, t2, -833
                  andi         s5, a3, -2044
                  slt          t4, a1, t2
                  ori          s7, a5, -672
                  xor          a0, zero, t0
                  slli         s6, a7, 13
                  ori          s1, s8, -742
                  nop
                  srai         a2, s6, 30
                  nop
                  xor          s3, t2, a5
                  sra          s7, t2, s5
                  srai         t0, s9, 30
                  andi         a1, t4, 906
                  srai         s9, s5, 25
                  srli         s11, a2, 5
                  ori          s3, t3, 60
                  slt          a3, tp, s7
                  slt          s1, a6, t5
                  andi         s10, a0, -106
                  sll          ra, s9, a3
                  srl          a7, gp, s0
                  slti         s3, gp, 1221
                  sltiu        t1, tp, 1983
                  addi         a6, a6, 1609
                  slti         sp, a0, 364
                  addi         t1, a6, 148
                  srl          s1, s4, tp
                  srl          s5, a7, tp
                  add          sp, s0, tp
                  andi         s7, tp, 1869
                  srli         s3, t6, 3
                  addi         s11, s1, -1366
                  nop
                  nop
                  addi         a7, s6, 897
                  sltu         ra, a1, t1
                  nop
                  andi         s3, a5, -273
                  sub          s9, s7, a0
                  sltiu        s7, sp, -1025
                  sll          s8, a3, ra
                  xori         zero, a1, 225
                  xori         t5, t3, 1309
                  sltiu        t6, t5, 519
                  sll          t0, a4, ra
                  sltu         t3, a3, s11
                  srai         t0, gp, 15
                  slt          t5, a6, s6
                  ori          s8, tp, -1635
                  slti         s10, tp, 1957
                  sra          s7, a7, s0
                  xori         t5, a4, 1708
                  add          sp, s3, t2
                  auipc        a1, 484007
                  sub          s7, a0, s7
                  sltiu        gp, s8, 1551
                  xor          s1, t1, s11
                  ori          a1, t5, 207
                  sll          s8, s3, t1
                  sltu         t5, t0, t5
                  srl          s8, gp, t4
                  sltu         s8, a0, s4
                  sltiu        tp, s7, 1555
                  sll          ra, a3, s1
                  lui          ra, 280618
                  add          a6, a7, a7
                  addi         t1, a1, -1599
                  slli         t5, s5, 20
                  sll          a0, a6, s7
                  xor          a1, a1, a6
                  nop
                  and          tp, s10, t6
                  srai         s3, a6, 1
                  sltu         tp, a3, s4
                  sltu         t3, s8, t2
                  and          a6, t1, sp
                  lui          t1, 224653
                  andi         t5, s4, -1791
                  srai         t6, t4, 16
                  auipc        a3, 154642
                  sltu         s1, t5, s3
                  auipc        sp, 833750
                  sll          s10, s3, a6
                  ori          s6, t1, 1475
                  srai         s2, s6, 13
                  sltu         a2, a0, tp
                  slti         t6, gp, -1031
                  slti         a5, t1, 1329
                  sub          zero, zero, s0
                  srli         a6, a4, 27
                  and          sp, zero, s6
                  srai         s1, t1, 27
                  slti         t0, s6, 484
                  sltiu        a5, a6, 1524
                  addi         gp, a7, -1236
                  sra          t6, zero, s9
                  li           a3, 0xceac60ca #start riscv_int_numeric_corner_stream_19
                  li           s4, 0x0
                  li           t6, 0x0
                  li           s7, 0x0
                  li           s10, 0x0
                  li           a6, 0x0
                  li           s3, 0x0
                  li           sp, 0x0
                  li           s6, 0x0
                  li           t3, 0xbbad0ab2
                  addi         a6, t3, -894
                  lui          s6, 423123
                  auipc        sp, 806299
                  sub          a3, s6, a3
                  auipc        a6, 834511
                  addi         a3, t3, -1592
                  sub          s7, s6, s10
                  add          s6, t3, s7
                  add          t3, s7, s3
                  sub          s10, a6, s10
                  nop
                  addi         t3, sp, -1184
                  lui          t6, 61020
                  sub          sp, t3, s4
                  add          a3, sp, t3
                  add          s7, s7, s10
                  auipc        s3, 623122
                  sub          t6, t3, t6
                  nop
                  lui          s3, 459280
                  addi         s6, s4, 1245
                  sub          s3, s3, s3
                  add          s3, s7, s7
                  nop
                  add          s4, a6, s4
                  auipc        s7, 4329 #end riscv_int_numeric_corner_stream_19
                  sll          sp, t5, t3
                  slt          zero, a0, a4
                  sub          ra, s6, s3
                  xor          a2, gp, a2
                  slti         a5, a1, -1355
                  andi         tp, s9, 1524
                  srl          a6, a2, a2
                  srl          a3, t0, s6
                  auipc        a7, 833055
                  lui          a2, 824270
                  nop
                  andi         s8, s11, 1847
                  slt          zero, s7, s2
                  slti         t6, t2, -1558
                  slli         s6, t3, 20
                  slti         s2, a1, 852
                  nop
                  addi         a6, sp, -1491
                  sltu         a1, a2, t3
                  sll          s3, a2, sp
                  srai         t4, s1, 20
                  srai         s1, a0, 25
                  sltiu        s2, gp, -375
                  lui          s6, 133522
                  lui          t6, 464587
                  srli         sp, gp, 12
                  srai         s5, s11, 2
                  sltiu        t5, a6, 1584
                  andi         sp, s5, -1524
                  sra          s2, t1, s3
                  addi         s7, t0, -1266
                  slt          a5, t2, t0
                  ori          a3, t4, -1293
                  sra          a2, t5, s5
                  srli         sp, s8, 3
                  or           s11, s10, s0
                  srai         t5, gp, 5
                  sra          t6, t6, t5
                  sltiu        t4, s4, 1957
                  lui          sp, 572281
                  sra          s10, a1, a0
                  sltiu        s2, s9, -1994
                  andi         s2, t1, 570
                  lui          t4, 817730
                  or           a7, sp, s1
                  sra          a0, s6, s1
                  sltiu        zero, s3, 1648
                  sub          zero, s0, s7
                  nop
                  srai         zero, s7, 31
                  or           s3, ra, s11
                  auipc        a0, 396011
                  sll          s2, a1, s3
                  xor          s7, t2, s8
                  addi         s2, s6, 1780
                  sltiu        a6, sp, -389
                  and          a1, s10, s3
                  sll          s6, s6, a1
                  slt          a5, s11, tp
                  lui          s4, 396490
                  srai         a3, gp, 3
                  slli         ra, a3, 20
                  addi         t6, s1, 1274
                  sltiu        s6, sp, -970
                  addi         a3, a0, 317
                  addi         t3, zero, -1849
                  sub          t6, s6, ra
                  add          s7, s5, s9
                  slli         s10, s7, 10
                  slli         s11, ra, 14
                  auipc        s9, 467116
                  slli         s6, t6, 30
                  sltu         t4, a1, t3
                  slti         s9, s2, 122
                  srl          tp, s8, s5
                  srai         s9, s8, 21
                  nop
                  sll          s10, a4, t4
                  slti         ra, a5, -92
                  sra          s3, s10, a7
                  ori          s9, a5, 1990
                  sltu         s8, t0, s10
                  sltu         a2, s4, s10
                  slt          t1, a0, a1
                  sltiu        s9, s6, -1729
                  and          s9, t4, t2
                  lui          s1, 109469
                  andi         s5, tp, 1912
                  sub          s8, s2, s8
                  auipc        s9, 221653
                  srl          t0, s7, s10
                  slti         t6, t0, -1559
                  addi         a0, a6, 1148
                  nop
                  xor          s10, s2, s0
                  nop
                  sra          zero, a2, t5
                  srl          s9, t1, t4
                  sltiu        t5, t4, -637
                  nop
                  slti         ra, t4, -1947
                  srl          t4, sp, sp
                  sltiu        a2, a7, -608
                  ori          t1, s11, 646
                  sll          s7, zero, s6
                  nop
                  auipc        zero, 705014
                  nop
                  lui          t1, 362351
                  sub          t3, s2, a2
                  andi         s11, gp, 640
                  sltiu        t1, a5, 328
                  srli         a6, t1, 9
                  slli         tp, a2, 10
                  srl          s8, s6, t0
                  xor          s9, s8, a4
                  sra          s8, a4, ra
                  addi         t5, s5, 1944
                  nop
                  or           s9, a3, t0
                  slli         sp, a2, 3
                  sltiu        t0, s11, -1019
                  xor          t6, s11, a3
                  sltu         s11, a5, s5
                  xori         s7, s4, -538
                  nop
                  sra          s4, a2, a1
                  ori          zero, a5, 1057
                  addi         s8, a6, -1353
                  or           t6, a4, sp
                  nop
                  andi         s1, a7, 1130
                  sra          a3, a7, s3
                  srli         s10, t3, 6
                  xor          zero, s10, s5
                  and          s9, a2, s7
                  sltiu        s8, a4, 391
                  slt          s6, s10, s10
                  slli         a3, s3, 17
                  xor          s8, s1, a1
                  ori          zero, a2, 1184
                  slli         s2, s6, 25
                  ori          t3, t6, 231
                  slti         s6, a2, 555
                  sll          a0, a2, t0
                  sra          a3, s5, s7
                  slli         s7, s9, 0
                  addi         s10, t4, -349
                  srl          ra, t5, a6
                  srl          s7, tp, a2
                  srl          s11, t4, s10
                  nop
                  xori         a1, a6, 173
                  sltiu        a1, s4, 1306
                  sll          s9, a1, s5
                  slti         a3, s0, 105
                  auipc        s11, 122765
                  slli         t0, s8, 7
                  sra          s4, s8, a7
                  and          gp, ra, a0
                  slti         s6, sp, 1275
                  slli         ra, s9, 0
                  srl          s7, ra, s1
                  auipc        t1, 167818
                  sra          a5, s7, ra
                  sll          gp, t5, t3
                  srli         s7, t0, 1
                  sltu         t6, s3, a2
                  srli         s9, s8, 3
                  auipc        a3, 356783
                  srl          gp, s1, s7
                  srli         a3, ra, 16
                  sll          s9, t0, t3
                  slt          s8, s6, s10
                  xor          zero, s1, t6
                  addi         t4, a1, -33
                  add          t1, t2, t3
                  nop
                  slli         t4, s0, 13
                  addi         a7, s4, -1471
                  xori         a6, s6, -266
                  slti         t6, s8, -961
                  sltiu        s6, tp, 649
                  addi         a6, s0, 784
                  andi         s1, s2, 1004
                  sltiu        a7, s0, 1872
                  or           a0, s3, s0
                  srai         ra, t2, 11
                  sltu         s9, tp, t5
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           sp, 0x0
                  li           t5, 0xffffffff
                  li           t3, 0x0
                  li           s11, 0x80000000
                  li           s6, 0xcc4edbb8
                  li           ra, 0xffffffff
                  li           a7, 0x0
                  li           s8, 0xffffffff
                  li           s2, 0xf08b46ee
                  add          t5, s6, t3
                  add          sp, a7, t5
                  auipc        s6, 241661
                  lui          t3, 535401
                  sub          s6, ra, s11
                  add          s8, a7, a7
                  add          s11, t3, sp
                  sub          ra, s6, ra
                  add          sp, s2, s2
                  add          t5, a1, t3
                  sub          s8, ra, ra
                  nop
                  addi         ra, s6, -970
                  lui          t5, 345509
                  add          s6, s2, s6
                  lui          t5, 755990
                  addi         s2, s6, -481
                  auipc        s6, 468184
                  nop
                  lui          t5, 22820
                  nop
                  nop
                  addi         s11, t5, 1164
                  sub          t3, t3, sp
                  nop
                  nop
                  sub          a7, s2, t3
                  sub          t5, sp, t5
                  addi         a1, a7, 2040
                  lui          sp, 218193 #end riscv_int_numeric_corner_stream_16
                  ori          ra, a4, -992
                  sll          ra, a2, s2
                  ori          a6, a1, 164
                  auipc        s9, 220522
                  sltu         gp, t0, sp
                  sll          sp, a5, a2
                  slli         s3, a4, 12
                  xori         s11, s6, -683
                  sltiu        a0, sp, 1848
                  addi         s5, s9, -2034
                  xor          a1, s9, t1
                  slt          a6, a4, gp
                  ori          t4, s8, -1022
                  slt          t3, a1, t5
                  xor          s2, t3, a0
                  srli         s11, s0, 28
                  slti         s10, s5, 920
                  srli         zero, t3, 5
                  slt          s5, t2, tp
                  nop
                  auipc        s4, 784103
                  srai         t1, s0, 6
                  nop
                  srai         s3, s2, 15
                  xor          gp, t1, s6
                  slt          sp, t5, sp
                  sra          s9, a3, s3
                  srai         t0, s7, 2
                  sll          s6, s8, a5
                  andi         tp, t5, -1283
                  ori          s5, s0, 1651
                  andi         s4, a2, -1555
                  sltiu        s8, s9, -1495
                  sltu         s5, t3, t0
                  sll          gp, s0, t3
                  sll          s2, s10, s3
                  nop
                  srai         s3, tp, 20
                  add          t1, zero, s6
                  xor          sp, a0, t4
                  sltu         a0, gp, a6
                  slt          zero, s6, gp
                  sltu         a6, ra, a7
                  sub          t4, a3, s8
                  xor          s9, s3, t2
                  srai         t6, gp, 22
                  or           a0, t3, t4
                  sltiu        sp, s0, -1377
                  nop
                  sltu         s3, a4, a0
                  xori         ra, s10, 974
                  slti         s1, s0, 1873
                  slli         s2, s0, 28
                  ori          t3, s8, 294
                  srai         t5, s0, 21
                  sltu         a5, t6, s4
                  slti         s3, a1, 281
                  or           ra, s0, a1
                  xori         s10, t1, -1330
                  xori         a2, s3, 1772
                  or           t4, s10, s8
                  sra          s6, s9, s3
                  and          s3, sp, s7
                  slti         t1, s7, 324
                  sltu         zero, zero, a5
                  sltu         s1, tp, t4
                  addi         t4, t3, 1328
                  xor          t0, t1, a0
                  slt          a0, t1, t2
                  slti         gp, t4, -1435
                  xori         a7, a2, -1019
                  ori          s4, t2, -282
                  sub          a5, ra, s6
                  slt          t0, a3, t3
                  srl          a7, gp, ra
                  sltu         a7, s3, a7
                  sltu         s6, gp, a3
                  ori          tp, a4, -252
                  sll          a5, s2, sp
                  andi         t6, a2, 865
                  andi         s11, s2, -1352
                  addi         t5, zero, 1547
                  sra          s7, s10, s1
                  auipc        s4, 618734
                  and          a7, s3, t0
                  xor          a1, a5, ra
                  srli         s4, s4, 12
                  sltiu        t1, a4, 1792
                  srl          sp, s2, a4
                  slti         s3, sp, 572
                  andi         t1, a4, 1811
                  or           s8, t3, a6
                  sra          ra, s3, s2
                  srai         sp, s9, 19
                  srli         t6, zero, 23
                  slti         a2, gp, 1853
                  xor          s9, a3, t4
                  xor          a6, s6, tp
                  sub          ra, ra, s0
                  slti         s2, s2, 1902
                  addi         s7, s6, -245
                  lui          zero, 598822
                  slti         zero, s3, 1191
                  slt          t3, gp, t5
                  slli         sp, s5, 4
                  sra          zero, s10, a6
                  slt          s8, a3, t3
                  lui          s2, 681912
                  sub          s11, s4, sp
                  slt          zero, s1, s0
                  srai         s5, s5, 0
                  auipc        s5, 935196
                  slli         t0, a7, 27
                  slli         t4, s6, 8
                  andi         s3, t3, -1185
                  ori          ra, s2, -1005
                  and          ra, a7, zero
                  srli         a2, s8, 28
                  sltiu        a6, s3, -788
                  or           t4, s11, s9
                  sra          s2, s0, s1
                  sll          ra, sp, s4
                  srl          zero, t5, s1
                  auipc        a5, 124525
                  srli         t5, s4, 28
                  lui          s2, 556959
                  srl          a3, s11, s3
                  xori         s7, a3, 556
                  srai         t5, s10, 17
                  add          t1, s11, t3
                  sltiu        a0, a7, 1124
                  ori          a2, t2, 1591
                  srl          a5, a0, s9
                  and          a1, gp, s10
                  srli         t6, s3, 14
                  sltu         s11, a5, s2
                  nop
                  nop
                  sra          s1, t5, s4
                  slt          a3, t1, a3
                  srl          a0, t0, a2
                  or           t4, t1, s11
                  auipc        s7, 844631
                  add          a0, s2, a1
                  xori         a1, s11, -1483
                  auipc        a3, 704843
                  xori         s10, ra, -1653
                  addi         s2, s7, -600
                  auipc        s9, 680025
                  and          s7, t0, a2
                  srai         s3, s3, 27
                  ori          a5, s0, 1659
                  nop
                  sltu         s10, s0, t0
                  auipc        s1, 702664
                  xor          a0, s1, s0
                  sub          s8, a7, zero
                  addi         s7, sp, 1494
                  sll          t0, s1, s9
                  sll          zero, a4, zero
                  sll          a3, t4, t4
                  ori          a5, a7, 1679
                  nop
                  lui          s7, 262736
                  andi         s11, s0, -463
                  or           a6, s7, zero
                  srli         t1, a0, 22
                  srli         ra, s8, 9
                  slti         a1, s11, -1370
                  xori         a1, a0, -102
                  or           a2, a6, t3
                  slt          a0, s9, s2
                  srai         gp, t1, 7
                  or           a5, a0, s10
                  ori          t4, s9, 1738
                  sra          a7, ra, s0
                  srli         s1, a6, 31
                  sltiu        s9, s11, -1970
                  or           s5, sp, zero
                  and          a3, s1, a7
                  xor          a7, a0, tp
                  srl          a0, s9, s11
                  or           tp, a2, t1
                  slti         s11, s11, 1442
                  sll          zero, gp, a0
                  slt          a0, a3, ra
                  addi         sp, t2, 1494
                  xor          t4, gp, s2
                  srl          s8, t1, a5
                  xor          s9, s11, a5
                  nop
                  slt          a7, t5, t6
                  sll          ra, s9, t0
                  srli         a7, t4, 27
                  and          a3, sp, s7
                  sub          t5, s0, t6
                  lui          ra, 21807
                  sltu         a1, t1, a3
                  or           s6, a1, s11
                  xori         sp, a0, 1733
                  add          s10, s0, ra
                  xori         gp, t1, 919
                  ori          s7, t2, -2006
                  srl          s1, t1, ra
                  xori         sp, a6, 180
                  ori          t1, ra, 332
                  sll          t3, s4, s6
                  xori         s2, sp, 1907
                  xor          ra, s9, a1
                  xori         a3, a2, 1267
                  andi         a3, s4, 1482
                  xori         s8, s9, 926
                  srli         t1, tp, 25
                  sltu         s1, a7, a5
                  xor          s4, s10, tp
                  xori         a2, s2, -1996
                  nop
                  xori         tp, t5, 715
                  sltiu        a3, a0, 2015
                  srli         a1, t4, 11
                  addi         a5, t0, 223
                  or           s8, a4, t1
                  sltiu        a0, t5, -2015
                  sra          a1, s9, s11
                  srli         a0, s3, 26
                  slt          a2, s8, s4
                  addi         s11, s0, -1851
                  sll          tp, s11, a3
                  srai         s5, ra, 28
                  slt          gp, sp, s3
                  sltiu        ra, a5, 454
                  and          a3, a2, t6
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t1, 0xffffffff
                  li           a1, 0xedaf421f
                  li           s9, 0x0
                  li           tp, 0x80000000
                  li           t6, 0x1d0642b1
                  li           t0, 0x80000000
                  li           ra, 0x80000000
                  li           a0, 0x2d616704
                  li           s5, 0x2dd8d1b6
                  auipc        t1, 76123
                  auipc        t6, 544935
                  sub          s5, tp, ra
                  add          t6, s5, t5
                  sub          ra, s9, t5
                  nop
                  addi         a0, s9, 1935
                  add          a1, tp, t6
                  lui          t0, 523822
                  auipc        t5, 904626
                  sub          ra, t1, t6
                  nop
                  lui          a1, 236081
                  sub          tp, s9, s5
                  lui          a0, 2267
                  nop
                  lui          t5, 405929 #end riscv_int_numeric_corner_stream_12
                  xori         s9, s6, 1025
                  sll          t5, a2, tp
                  ori          s2, t4, -1979
                  xori         t0, s1, -1762
                  slt          s10, t2, s4
                  and          sp, a4, ra
                  ori          ra, t6, -77
                  add          a5, a5, s10
                  sltu         a6, t3, t6
                  auipc        s3, 537761
                  andi         s2, s2, -1666
                  sub          t3, s11, gp
                  srai         t0, tp, 24
                  srli         tp, s10, 28
                  ori          a6, t3, 405
                  andi         a7, s5, -1311
                  nop
                  or           sp, a4, s5
                  sra          t3, a0, a1
                  and          gp, s10, s0
                  auipc        s4, 239071
                  sltu         a3, s9, a0
                  ori          s8, t0, -1505
                  sll          s4, a5, a4
                  xor          t3, s3, s9
                  xor          gp, t6, a1
                  srl          s5, t1, s10
                  and          a6, t1, s5
                  srl          sp, t6, a5
                  and          s2, t3, s4
                  auipc        t0, 429537
                  slt          a2, s9, tp
                  slt          sp, s5, s8
                  sltiu        tp, t2, 1630
                  slti         a6, a6, 1817
                  nop
                  add          s8, sp, s10
                  slti         a2, s1, -1821
                  sltiu        s10, s3, 40
                  sll          s2, s8, s11
                  sll          a0, sp, a3
                  nop
                  nop
                  slt          a3, t3, gp
                  andi         sp, a7, -723
                  slli         t4, s9, 30
                  ori          t1, a7, 678
                  slli         a0, t5, 2
                  slt          a0, t1, s0
                  sltiu        t5, t5, -46
                  slli         s4, a1, 29
                  sltu         s8, t1, t2
                  slti         s11, t1, -2010
                  srai         s8, t2, 3
                  slt          s5, s0, s3
                  xor          s2, s4, t2
                  xor          t1, t3, a4
                  srli         a1, a0, 28
                  sra          t6, s1, t4
                  nop
                  sra          s3, a2, t0
                  slli         s4, a7, 4
                  srai         t6, a3, 12
                  sub          t4, a5, s10
                  sub          s10, sp, t2
                  nop
                  sra          tp, t6, a6
                  srli         s8, t3, 28
                  slt          t1, a1, ra
                  srl          s8, s2, tp
                  xori         s7, zero, -389
                  lui          sp, 239559
                  and          t5, a2, tp
                  srli         a7, zero, 28
                  sll          s4, zero, a4
                  add          a6, t2, s0
                  andi         t6, s0, 2039
                  auipc        t3, 767152
                  slli         a7, s6, 7
                  slt          s11, zero, sp
                  sltu         s10, a2, a5
                  sltu         s4, s3, s6
                  add          a7, s4, s0
                  slti         t0, a0, 482
                  sra          a5, s6, s8
                  slt          s1, a1, s3
                  sra          t0, a4, a4
                  xor          t3, s9, t1
                  add          ra, s7, sp
                  sra          s7, tp, a0
                  addi         a5, s10, 1977
                  ori          a0, t6, 145
                  srli         s5, t5, 24
                  or           a2, tp, t5
                  srl          s7, a7, t3
                  xori         a5, a6, -154
                  srai         a0, s1, 24
                  sltu         s4, s4, a3
                  addi         s9, a5, -1110
                  nop
                  and          ra, s11, a3
                  or           s1, s9, a7
                  xor          s5, s8, a6
                  addi         tp, zero, -1050
                  sltiu        t5, s2, 914
                  auipc        s11, 298368
                  andi         a6, s0, -73
                  and          s10, s1, t0
                  srl          s6, a6, a7
                  xor          s11, s5, a2
                  slli         a7, s1, 28
                  lui          t1, 1004335
                  sltu         s3, a3, t3
                  slt          a3, s5, s1
                  sltu         s4, a4, s5
                  srl          s10, t6, gp
                  srli         s11, a5, 10
                  sltiu        s11, s10, 1238
                  add          s11, a6, s4
                  xor          s4, s1, s7
                  sra          a6, a4, s2
                  auipc        t1, 100126
                  srl          s4, t1, ra
                  add          ra, t2, t2
                  and          zero, s11, s8
                  xor          gp, a5, s1
                  or           tp, t1, t6
                  xori         s9, s6, -1184
                  sra          t6, tp, a4
                  srli         t6, t3, 17
                  sll          a3, s1, tp
                  srli         s7, a4, 7
                  srai         a0, s10, 6
                  and          s11, ra, s7
                  slti         t1, a6, 191
                  andi         s5, s5, 1399
                  sra          a5, a0, s1
                  nop
                  sltiu        a2, s2, 1265
                  slt          t1, s10, a1
                  auipc        s5, 396423
                  xori         a1, s7, 1428
                  sltu         s11, s8, t5
                  xor          s7, s6, a7
                  slt          t4, sp, s5
                  or           a0, a3, a0
                  ori          zero, gp, 1718
                  srl          s11, sp, s10
                  slt          s2, sp, t3
                  sra          a7, s2, a2
                  add          tp, sp, s9
                  ori          t6, t1, -904
                  xor          tp, s3, s6
                  addi         gp, gp, -1135
                  xori         s3, a3, 145
                  andi         a5, s2, -1354
                  srai         a3, gp, 30
                  nop
                  sub          t4, s7, s11
                  sltiu        t5, a3, 719
                  srai         s3, s6, 10
                  auipc        s3, 223842
                  xor          s11, t1, s5
                  srl          s4, t1, s2
                  srli         a6, a6, 11
                  xori         s10, s6, 1300
                  xor          s7, a4, s3
                  addi         a3, s2, 1440
                  slli         s10, s11, 9
                  slli         t6, s6, 11
                  xor          a1, t2, tp
                  srai         a7, zero, 22
                  nop
                  srl          ra, a5, t2
                  andi         a1, s0, -366
                  sltiu        s7, t5, 1951
                  and          ra, zero, t3
                  add          s5, a3, s10
                  srai         s11, a6, 9
                  sub          s9, tp, s7
                  sll          a0, t2, s1
                  srli         a2, s7, 8
                  srl          a2, ra, t3
                  sra          s11, s8, sp
                  addi         a6, t1, 1155
                  ori          s3, s6, -1258
                  xori         ra, s0, 1911
                  nop
                  sra          tp, s2, s0
                  srai         t3, t6, 1
                  srli         a3, s6, 15
                  sltiu        s2, s2, 1636
                  xori         sp, sp, 1044
                  slt          s9, a5, s9
                  and          tp, s10, a4
                  auipc        s4, 558586
                  sltiu        s4, a7, 1758
                  xor          sp, tp, t4
                  nop
                  sub          s7, s6, a6
                  slt          s10, t3, s10
                  xor          t6, a3, t0
                  sltu         s8, t4, t4
                  slt          s5, s10, s6
                  auipc        s9, 1032377
                  xor          a5, t6, s9
                  lui          t4, 401419
                  sub          t4, t4, t3
                  xori         t5, a2, -648
                  sub          s3, t3, t3
                  nop
                  ori          s5, s4, -1546
                  nop
                  and          s2, s7, s2
                  sub          s7, a6, a0
                  srai         t0, s6, 24
                  add          t6, t3, s7
                  nop
                  auipc        t3, 806407
                  auipc        tp, 184445
                  srli         s6, t3, 14
                  auipc        s6, 640016
                  lui          a1, 996798
                  sltiu        s4, t4, 2028
                  srli         a2, a6, 11
                  ori          a7, s9, 587
                  addi         s2, s0, 204
                  or           t1, s7, ra
                  slti         s3, zero, 1611
                  srli         sp, s4, 26
                  and          t6, s0, s7
                  ori          a6, s7, -1760
                  nop
                  slti         s1, sp, 250
                  sltu         s6, t6, s11
                  srai         tp, s2, 12
                  slli         a6, s4, 29
                  or           t1, t0, s3
                  add          a1, a1, s2
                  sll          s11, s8, s8
                  sltu         a7, t3, s1
                  srli         a6, zero, 6
                  nop
                  xor          s6, t2, t5
                  slt          s3, s0, a1
                  xori         t4, s7, -630
                  xor          s5, s1, s9
                  slli         tp, s4, 11
                  sltiu        s5, s8, -80
                  addi         a1, s2, 27
                  lui          s7, 1002033
                  xor          s4, s8, t0
                  sub          t5, s9, t5
                  slti         t1, t0, -1180
                  auipc        a0, 710067
                  nop
                  sll          s4, s2, tp
                  sltiu        zero, a0, -334
                  slt          a3, a0, s10
                  slt          s10, s11, a0
                  lui          t5, 425331
                  slt          s5, s11, s10
                  sub          gp, s0, tp
                  slti         s10, s11, 452
                  ori          ra, a1, 1338
                  sub          a2, t2, sp
                  lui          s6, 1021013
                  sra          s2, s11, s4
                  slt          t0, s8, a6
                  add          a2, t4, t5
                  sub          s1, s11, gp
                  nop
                  srai         a1, s11, 13
                  sra          a6, s7, t1
                  slt          a5, ra, t3
                  sll          a5, s2, s5
                  add          s10, zero, t2
                  add          a5, s10, a2
                  slti         s10, t4, 1174
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s4, 0xba130e7c
                  li           t1, 0x0
                  li           s1, 0x2833b2f9
                  li           s3, 0x80000000
                  li           a5, 0x5d296cf6
                  li           a3, 0x0
                  li           s6, 0xffffffff
                  li           sp, 0x73b03c10
                  li           s2, 0x327d5d10
                  nop
                  lui          s3, 45350
                  lui          a3, 140193
                  lui          sp, 675442
                  sub          t1, sp, s4
                  sub          s1, a5, s4
                  auipc        s1, 604053
                  sub          sp, s1, s3
                  sub          s4, sp, t1
                  auipc        s2, 50972
                  nop
                  lui          s6, 572632
                  add          a5, s4, s3
                  add          t1, s7, s4
                  add          a5, t1, s7 #end riscv_int_numeric_corner_stream_7
                  or           s1, s8, a6
                  sltu         s6, t6, a4
                  sltiu        s6, a7, -916
                  sltu         s6, s3, t4
                  ori          gp, s0, -800
                  sltiu        a3, a1, 203
                  sltiu        tp, s3, -243
                  sll          s10, s7, a7
                  addi         a2, a5, 1581
                  xor          a3, s6, a0
                  slti         t1, ra, 1330
                  nop
                  srli         t1, a4, 1
                  srai         s2, s8, 25
                  xor          a0, s11, s6
                  nop
                  sll          s11, tp, s9
                  sltu         s2, gp, s11
                  sltu         s7, ra, s1
                  sltu         a2, ra, a5
                  sll          a1, t6, a5
                  srli         t6, a1, 15
                  lui          a6, 904944
                  slti         ra, s7, 1435
                  lui          a2, 609558
                  sll          s8, ra, a3
                  srli         t0, s10, 1
                  srli         s5, s9, 16
                  andi         t5, a2, -236
                  nop
                  or           s5, s9, s1
                  add          a1, a5, sp
                  srli         s4, a0, 1
                  slli         a6, a4, 15
                  nop
                  addi         s1, t6, -1375
                  srli         s9, ra, 11
                  slt          s7, t3, a6
                  sltu         tp, sp, s4
                  sub          s2, t1, t5
                  srli         a0, s1, 16
                  slti         t3, a0, -1441
                  srli         tp, s0, 16
                  sra          s11, t2, ra
                  add          s9, s8, s2
                  xori         a7, s2, -1603
                  sll          s11, a4, t6
                  sll          a2, a2, sp
                  srai         sp, s3, 17
                  add          a1, a0, a2
                  auipc        a5, 111352
                  slt          s1, a0, a5
                  xor          t3, s2, a0
                  lui          s9, 139292
                  la x14, test_done
                  jalr x0, x14, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x10, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x10, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x10, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x10, x29, ecall_handler
                  li x29, 0x1
                  beq x10, x29, instr_fault_handler
                  li x29, 0x5
                  beq x10, x29, load_fault_handler
                  li x29, 0x7
                  beq x10, x29, store_fault_handler
                  li x29, 0xc
                  beq x10, x29, pt_fault_handler
                  li x29, 0xd
                  beq x10, x29, pt_fault_handler
                  li x29, 0xf
                  beq x10, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
