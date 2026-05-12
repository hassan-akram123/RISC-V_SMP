.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xa617b67b
                  li x3, 0x67dfa73
                  li x4, 0x80000000
                  li x6, 0x7
                  li x7, 0xf427ef8f
                  li x8, 0xf320a66a
                  li x9, 0xb
                  li x11, 0x4
                  li x12, 0x4
                  li x13, 0xb8060163
                  li x14, 0x61252976
                  li x15, 0x7a354b8e
                  li x16, 0xf31ce087
                  li x17, 0x4
                  li x18, 0xfc127161
                  li x19, 0x80000000
                  li x20, 0xf
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x1
                  li x24, 0xf76a277c
                  li x25, 0x3
                  li x26, 0x7a129c41
                  li x27, 0x1701d3e2
                  li x28, 0x3
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x10, user_stack_end
main:             li           s2, 0x9681c7ef #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x8abbfad0
                  li           a1, 0x0
                  li           t5, 0xffffffff
                  li           s7, 0xa5d45973
                  li           a3, 0xbce3ede4
                  li           s8, 0x80000000
                  li           t6, 0x80000000
                  li           s11, 0xad3cee7a
                  li           s3, 0xffffffff
                  lui          t5, 152032
                  nop
                  lui          s2, 982831
                  auipc        a1, 116174
                  sub          s2, t6, s8
                  sub          s3, a3, s9
                  sub          t6, t5, t6
                  lui          s8, 238029
                  add          s9, a3, s8
                  add          s9, t5, s7
                  addi         s7, s11, 1882
                  auipc        s9, 663497
                  add          s9, s7, s11
                  nop
                  sub          s8, a1, s9
                  nop
                  auipc        s8, 489194
                  sub          t5, s2, s3 #end riscv_int_numeric_corner_stream_2
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s8, 0x0
                  li           s1, 0x80000000
                  li           t1, 0xffffffff
                  li           t2, 0x80000000
                  li           a1, 0xffffffff
                  li           s2, 0x0
                  li           tp, 0xe01f3f0c
                  li           a2, 0xb791da2c
                  li           t6, 0x0
                  add          t1, a1, s8
                  sub          s8, a1, s8
                  lui          t1, 933317
                  lui          t6, 255285
                  lui          s1, 624265
                  add          a2, a2, a1
                  addi         t1, a1, 1306
                  nop
                  add          tp, s1, a3
                  addi         s2, t1, -1165
                  sub          tp, t6, t2
                  add          a3, t6, tp
                  lui          tp, 838369
                  add          s2, a3, a3
                  auipc        t6, 138891
                  auipc        t2, 337314
                  addi         s1, t2, 1547
                  nop
                  auipc        t6, 368551
                  addi         a1, s8, 371
                  lui          t2, 1037064
                  sub          s8, a2, a1
                  addi         tp, s2, 1059
                  sub          a1, s8, s8
                  auipc        a2, 470369 #end riscv_int_numeric_corner_stream_14
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0xffffffff
                  li           tp, 0xaf74625c
                  li           s10, 0x19a349ea
                  li           s8, 0xc8d7d71e
                  li           gp, 0x0
                  li           a2, 0xffffffff
                  li           a7, 0x80000000
                  li           a1, 0x0
                  li           t5, 0xffffffff
                  auipc        tp, 1026082
                  nop
                  lui          a6, 815778
                  nop
                  auipc        a1, 931309
                  lui          a1, 446026
                  auipc        tp, 443013
                  add          a6, a7, t5
                  add          a1, s8, a6
                  nop
                  add          gp, tp, t5
                  addi         s8, ra, -54
                  addi         ra, gp, -3
                  addi         tp, a2, 4
                  add          s10, t5, tp
                  addi         a1, ra, 1007
                  add          a7, s8, tp
                  lui          tp, 257306
                  add          a7, a7, a7
                  lui          a6, 919644
                  nop #end riscv_int_numeric_corner_stream_0
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s8, 0x80000000
                  li           s2, 0x80000000
                  li           s3, 0x98b87b09
                  li           s4, 0xffffffff
                  li           t2, 0x4e7f1b17
                  li           tp, 0xffffffff
                  li           sp, 0x80000000
                  li           t1, 0xde84c56a
                  li           t6, 0x89e4e910
                  auipc        t1, 631752
                  nop
                  add          t4, sp, s2
                  lui          s3, 197099
                  addi         t2, tp, -1944
                  auipc        t6, 374242
                  nop
                  auipc        tp, 993305
                  auipc        t1, 274249
                  add          t2, s3, t4
                  nop
                  sub          t4, t2, tp
                  sub          t6, tp, t1
                  add          t6, tp, s4
                  add          t1, s2, s8
                  lui          s8, 127852
                  add          s8, tp, t2
                  nop
                  add          s4, tp, sp
                  auipc        s8, 576294
                  nop
                  nop
                  auipc        s2, 799039
                  addi         s3, tp, 764 #end riscv_int_numeric_corner_stream_4
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t5, 0x0
                  li           a3, 0x0
                  li           s8, 0xffffffff
                  li           s3, 0xffffffff
                  li           gp, 0x0
                  li           ra, 0x80000000
                  li           s9, 0x0
                  li           s0, 0xffffffff
                  li           sp, 0x80000000
                  add          gp, s3, s0
                  nop
                  nop
                  addi         sp, sp, 1832
                  add          sp, s9, gp
                  auipc        ra, 533404
                  nop
                  add          s2, a3, s0
                  nop
                  nop
                  sub          ra, s9, s2
                  sub          ra, t5, a3
                  add          s9, s9, sp
                  addi         s9, s0, 54
                  addi         ra, s2, -1510
                  addi         s0, s3, 324
                  auipc        t5, 202560 #end riscv_int_numeric_corner_stream_8
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t6, 0x25d1b136
                  li           tp, 0x0
                  li           a7, 0x9ddc8611
                  li           a3, 0x80000000
                  li           ra, 0x0
                  li           t1, 0xffffffff
                  li           s1, 0x80000000
                  li           s2, 0x5dd91bc8
                  li           s11, 0x436035a1
                  add          s11, ra, t6
                  sub          tp, t6, s11
                  nop
                  nop
                  sub          tp, t1, ra
                  lui          s2, 927632
                  addi         tp, tp, -570
                  auipc        t1, 494233
                  nop
                  add          s11, tp, ra
                  addi         s2, a3, 629
                  sub          a3, a3, s9
                  nop
                  auipc        t6, 532443
                  nop
                  sub          ra, s9, s2
                  auipc        a3, 827851
                  add          t1, t6, s1
                  sub          s9, s2, s11
                  add          a3, s11, a7
                  lui          s2, 655651
                  lui          s9, 992881
                  nop
                  add          a7, s1, s2
                  auipc        ra, 95019
                  lui          s1, 381833
                  sub          s1, t6, ra
                  add          s1, s11, s11
                  auipc        s9, 841967 #end riscv_int_numeric_corner_stream_7
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a3, 0x0
                  li           sp, 0xffffffff
                  li           s11, 0xffffffff
                  li           t1, 0x0
                  li           t5, 0x80000000
                  li           s2, 0xffffffff
                  li           s7, 0xc2370344
                  li           a2, 0x80000000
                  li           ra, 0x0
                  nop
                  addi         sp, s7, 2025
                  add          t1, s7, s7
                  nop
                  sub          tp, s2, ra
                  auipc        s11, 475756
                  nop
                  nop
                  nop
                  auipc        tp, 727661
                  lui          t1, 678559
                  lui          sp, 258378
                  nop
                  add          tp, t5, a2
                  addi         a2, t1, 1735
                  add          t1, a3, a3
                  lui          t1, 71389
                  auipc        a3, 26589
                  addi         ra, ra, 2018
                  sub          a3, sp, a3
                  auipc        ra, 774031 #end riscv_int_numeric_corner_stream_3
                  slt          a2, a5, s0
                  lui          s3, 1003338
                  sltiu        s7, a0, -1783
                  sltiu        s5, s11, -299
                  sll          a4, a7, a5
                  xori         s0, a6, -1067
                  and          a1, s8, t6
                  or           a1, a2, t1
                  sltu         ra, a6, s3
                  sub          a3, t1, s7
                  lui          a7, 705830
                  auipc        a5, 253255
                  sll          s10, s11, s9
                  andi         a1, t1, 164
                  srai         s5, s0, 27
                  andi         t1, t0, 554
                  sltu         s2, zero, a0
                  sll          t3, zero, s3
                  auipc        s11, 653248
                  sltiu        t6, s11, -934
                  auipc        t5, 299236
                  ori          a1, s10, -1989
                  nop
                  or           t6, a5, t2
                  auipc        tp, 995190
                  sra          ra, sp, s8
                  add          a5, s8, t0
                  lui          s1, 288103
                  slli         ra, ra, 0
                  srai         s4, s11, 8
                  sra          ra, t1, s11
                  lui          s8, 701551
                  sll          t6, t6, s3
                  slli         s2, a0, 4
                  ori          a2, s7, -117
                  lui          t2, 424544
                  andi         s10, t1, 113
                  sub          a1, t5, t4
                  and          a5, tp, a1
                  auipc        sp, 818007
                  sub          s5, t5, t4
                  and          s4, ra, s3
                  srai         tp, gp, 23
                  slti         zero, a2, -1726
                  ori          a5, s8, -1553
                  auipc        s5, 311826
                  or           a3, ra, s4
                  nop
                  lui          s3, 157011
                  sltu         s5, t6, gp
                  sltu         s7, a5, a2
                  ori          s5, s4, -1297
                  andi         s10, ra, 492
                  ori          t6, zero, 1066
                  slti         ra, a1, 1873
                  auipc        t2, 88315
                  sltiu        s1, a4, 161
                  xori         s4, a5, -9
                  lui          tp, 155250
                  srl          s4, a4, a5
                  auipc        sp, 5338
                  srli         t1, t1, 20
                  andi         a1, s11, -926
                  or           s1, a2, tp
                  slti         sp, t3, -1068
                  slti         gp, s3, -335
                  sra          s1, a5, s8
                  xori         s8, ra, -15
                  nop
                  srli         gp, s6, 4
                  ori          t6, a1, 1899
                  xori         zero, a5, 13
                  nop
                  nop
                  sra          sp, s5, s4
                  xor          s2, ra, a7
                  and          a3, a2, zero
                  slti         a2, sp, 1985
                  sll          a1, t5, t3
                  xori         a6, s3, 410
                  or           a6, a5, a4
                  addi         s5, t6, 421
                  and          a3, a7, a7
                  ori          a6, s7, 1351
                  xori         a1, t2, 910
                  add          gp, a3, s9
                  andi         t5, s11, -1254
                  sll          t3, zero, a2
                  sltiu        a4, zero, 1946
                  addi         s9, s6, -663
                  add          a4, s0, s0
                  sra          gp, tp, t6
                  and          t4, s7, s2
                  and          t1, s6, s7
                  sub          a3, s6, s8
                  and          a7, s5, s2
                  sltu         a5, t3, t2
                  sltu         t2, s0, a0
                  srl          zero, t1, s11
                  or           s2, s0, t3
                  slti         s7, t5, -1216
                  sltu         t1, a3, a1
                  srai         s5, t3, 29
                  srl          t5, t4, a1
                  sra          zero, t0, a4
                  or           sp, s7, s9
                  slli         t4, s8, 25
                  nop
                  andi         t3, ra, 1631
                  xor          ra, s7, s7
                  sub          t1, a5, s10
                  addi         s7, s9, -513
                  srai         s4, s10, 19
                  srli         s9, a4, 25
                  lui          s9, 748139
                  and          s1, ra, s3
                  xori         s2, s5, 1084
                  auipc        t5, 34325
                  slt          s9, a5, tp
                  srl          tp, s6, a6
                  auipc        s1, 536424
                  sltiu        sp, s1, 1849
                  sltu         t4, gp, s5
                  lui          s5, 800471
                  xor          s10, gp, sp
                  sltu         s3, t4, t4
                  ori          t5, a4, 1357
                  auipc        t3, 652665
                  addi         sp, s8, 724
                  sra          s1, t5, a5
                  andi         zero, t2, -987
                  xor          t5, tp, t3
                  or           a6, s8, t4
                  sll          a4, s1, zero
                  ori          gp, a0, 989
                  srai         a4, t4, 9
                  ori          t2, t4, -1400
                  andi         s3, s9, 1503
                  ori          a6, s10, 1590
                  slli         s3, t1, 5
                  srl          s9, s11, s10
                  addi         a3, t6, -1078
                  add          s2, s0, s3
                  sltiu        t2, t5, 819
                  slt          a1, a3, sp
                  add          tp, tp, t5
                  sub          s8, a6, a1
                  sltiu        a1, gp, 1620
                  or           s1, s6, s4
                  and          ra, s0, s7
                  auipc        sp, 583559
                  or           s3, s6, t4
                  ori          s5, zero, -788
                  andi         t1, s8, -591
                  lui          s8, 487909
                  add          t3, s7, s3
                  srli         s7, s1, 22
                  sra          a5, s4, zero
                  and          t3, t4, sp
                  andi         gp, zero, -481
                  slli         s0, ra, 29
                  auipc        gp, 546428
                  nop
                  srli         a4, zero, 31
                  slli         s8, t1, 2
                  srai         s10, t4, 26
                  slt          t2, s11, a3
                  srl          t2, zero, a0
                  sra          t3, s5, s3
                  slli         s5, a2, 13
                  and          ra, t6, t1
                  srai         s10, s6, 27
                  add          s9, t6, a5
                  srai         t4, zero, 7
                  and          t1, a0, s1
                  nop
                  xor          a3, s11, s5
                  and          s9, t5, s7
                  sltu         s11, a5, a5
                  slti         s7, s4, -687
                  sltu         sp, s4, s8
                  srli         t3, gp, 20
                  sra          s10, t1, ra
                  sub          t4, a6, s2
                  auipc        s7, 752845
                  sra          a7, t0, t0
                  slti         t6, t2, 843
                  slti         s2, s4, -1009
                  slli         gp, ra, 17
                  sra          s4, t5, a5
                  auipc        t2, 314043
                  and          s1, s6, a2
                  slt          a7, s6, t4
                  andi         s3, s6, 1534
                  sub          a2, t5, t4
                  lui          s0, 25275
                  srai         t6, a7, 8
                  xori         s4, s6, 980
                  lui          s3, 680166
                  xor          zero, s9, a5
                  sll          t4, s8, a1
                  add          s1, a5, a1
                  and          s3, s1, t6
                  slt          s10, zero, t6
                  andi         s3, s7, 1185
                  addi         t6, s2, -741
                  lui          t1, 909871
                  sltu         s1, a3, t3
                  or           t6, s8, s5
                  sll          zero, a7, a4
                  sra          a3, a3, t2
                  sltu         s2, zero, zero
                  auipc        a6, 98659
                  srai         ra, s7, 26
                  auipc        t1, 49308
                  srl          zero, a4, zero
                  and          zero, s0, a3
                  sll          t6, a7, s2
                  sra          ra, t6, gp
                  sub          s11, t5, a4
                  slti         t2, s7, -952
                  slti         t3, t3, 334
                  xor          s2, t0, t3
                  srl          t3, a6, a3
                  srli         sp, s9, 28
                  auipc        s5, 957204
                  srli         s10, a5, 12
                  sub          a4, t1, ra
                  andi         t6, s1, 1689
                  slt          s3, tp, zero
                  srl          a5, ra, zero
                  xori         zero, gp, -1239
                  sub          s1, s8, a1
                  ori          s0, a1, -537
                  srai         t1, a3, 31
                  sub          s2, a0, s0
                  sll          zero, s4, t5
                  srli         ra, gp, 28
                  and          ra, ra, gp
                  srli         t5, t4, 2
                  xor          s11, t4, s11
                  auipc        tp, 910748
                  sll          s4, t2, a1
                  sra          s4, a0, t3
                  sub          t2, t4, a0
                  and          a4, a4, t1
                  srai         s7, sp, 3
                  slli         s1, s9, 11
                  xor          t4, s5, t0
                  lui          a5, 360128
                  nop
                  xor          t1, s11, t2
                  sll          t5, gp, t1
                  slti         s8, t1, -378
                  and          a3, t0, zero
                  auipc        a2, 547697
                  sub          a5, sp, s1
                  slli         s8, s0, 7
                  srli         a5, a4, 16
                  slti         tp, ra, -69
                  srai         t2, a2, 14
                  sub          zero, t3, a6
                  slli         s2, sp, 11
                  xori         zero, t6, 27
                  sll          a4, s1, a4
                  srli         s5, t1, 4
                  and          s3, a4, t0
                  lui          s10, 668140
                  ori          a1, gp, -1564
                  add          sp, s3, s9
                  slti         s7, t2, -1795
                  slli         a6, a6, 20
                  auipc        s9, 368106
                  auipc        s2, 245051
                  and          s5, t5, s0
                  lui          t5, 680172
                  xor          t4, t0, a6
                  andi         s3, s9, 1289
                  lui          t1, 429428
                  sltiu        s8, t6, 521
                  auipc        t2, 96021
                  sub          t4, a7, s4
                  srli         tp, s5, 28
                  and          t5, s1, s10
                  andi         a1, sp, -1459
                  slti         a7, zero, 1370
                  sltiu        t6, s7, 748
                  lui          s0, 362079
                  xori         a4, s2, -1910
                  sub          s8, a5, t4
                  slti         s0, a4, -359
                  or           t4, s5, sp
                  xori         s5, tp, -1823
                  srl          t5, s4, a6
                  auipc        t2, 560613
                  sltiu        t1, s11, 1400
                  and          t1, s4, t2
                  sll          a4, a4, s6
                  sra          a1, t5, s5
                  sra          s1, s2, s0
                  srl          tp, s6, s3
                  and          t4, a5, a5
                  sltiu        s1, s8, 1657
                  sll          a7, s7, s9
                  srli         t5, t0, 22
                  sll          s11, a3, a7
                  andi         t4, a2, -1058
                  add          s4, a3, tp
                  slt          a7, t4, s10
                  addi         a3, s4, -1698
                  addi         s1, a7, -1552
                  ori          s3, s0, 912
                  and          zero, a7, zero
                  addi         t2, s8, 1367
                  slti         gp, t2, -722
                  auipc        a5, 966295
                  andi         t5, a2, 451
                  nop
                  sltiu        t3, t4, -1306
                  srai         s8, t0, 26
                  addi         ra, s8, -11
                  slti         s8, t4, 1433
                  sltu         a2, t4, s4
                  auipc        s1, 953696
                  add          s1, s9, t6
                  andi         s0, a0, -1256
                  srl          a3, s3, a0
                  srai         s5, t4, 3
                  lui          s11, 557227
                  srl          a2, t0, s4
                  srai         t5, s1, 20
                  slti         gp, ra, -1156
                  xor          ra, t6, a7
                  srli         zero, a7, 17
                  sll          s0, s1, a2
                  ori          sp, s11, -1814
                  srli         s11, a0, 4
                  or           t4, tp, t2
                  srli         s11, t3, 22
                  add          s5, t0, ra
                  sltu         s4, t1, sp
                  auipc        s1, 125412
                  add          t5, a1, t3
                  and          t5, gp, a1
                  xor          t3, s11, s5
                  srl          t6, a0, sp
                  and          s5, gp, s6
                  sltiu        a4, a6, -334
                  sra          sp, s6, s10
                  nop
                  sll          a2, zero, s9
                  and          gp, a3, s11
                  sub          a1, s6, s5
                  xori         ra, s0, 637
                  auipc        t2, 245255
                  sra          s1, sp, a2
                  addi         a2, tp, -453
                  sll          t5, a1, t0
                  xor          zero, a4, t0
                  andi         t3, a4, -798
                  xor          s7, sp, t1
                  slt          a2, s9, s8
                  andi         t5, s0, 1434
                  sll          zero, s6, tp
                  slli         t3, zero, 17
                  slt          s9, a6, t0
                  sltu         a5, a1, zero
                  slti         t5, t0, 716
                  slli         s3, s6, 7
                  slli         ra, a2, 14
                  nop
                  sltiu        s11, a1, -1711
                  srl          s3, s6, a0
                  add          t6, s4, t6
                  srli         zero, s5, 12
                  add          t3, s7, s10
                  auipc        t2, 200485
                  slli         s8, s11, 11
                  sll          t4, s10, a4
                  slti         t4, s7, -90
                  sra          s9, a3, zero
                  or           t2, t6, tp
                  xori         s1, tp, -846
                  sub          tp, t4, gp
                  xori         t3, a6, -1352
                  srl          s11, zero, s3
                  sltu         s8, s9, a5
                  and          a5, a2, sp
                  auipc        a5, 190926
                  sll          sp, s0, s3
                  srli         a6, t6, 14
                  lui          gp, 262494
                  or           a3, t0, s11
                  sltiu        t2, sp, -1435
                  and          gp, s1, s0
                  srai         ra, a6, 24
                  sltu         t2, s8, t2
                  sltu         t4, s5, t2
                  sra          s5, s3, s2
                  add          t5, zero, s9
                  xori         a6, a5, -1441
                  srl          a2, s2, t4
                  lui          t6, 305039
                  sub          s3, t3, t5
                  slli         s4, s2, 4
                  xori         t5, s7, 118
                  xori         s11, s4, -744
                  sltiu        s8, t6, -903
                  addi         a2, t5, 967
                  sltiu        s0, s9, -1193
                  sll          sp, s1, s3
                  slt          s5, sp, a6
                  xor          ra, s4, s0
                  sra          t1, s1, a2
                  lui          s9, 973539
                  slti         t1, a5, 803
                  sltu         s7, gp, s7
                  auipc        t5, 477898
                  srli         s5, zero, 24
                  add          a3, a5, a0
                  sltu         a7, s7, s8
                  sll          s4, a7, s9
                  srai         s9, s1, 23
                  xor          s2, s5, t2
                  lui          s0, 370287
                  sra          tp, sp, s6
                  sltu         s0, a0, t2
                  sltiu        s3, s10, -189
                  slti         s7, t1, -528
                  slti         s10, a4, 862
                  slti         s1, gp, -1092
                  add          a3, s0, s11
                  lui          a1, 526910
                  srli         s10, a6, 26
                  srl          s9, s2, s10
                  andi         s9, t4, 922
                  slti         t2, t0, 1293
                  sra          s9, s2, s8
                  sltiu        s2, t5, -693
                  sub          s10, s5, s9
                  add          a1, t1, s0
                  or           s11, s6, a0
                  slli         s9, a3, 21
                  auipc        t5, 697749
                  sub          zero, s0, s8
                  add          s9, a3, ra
                  nop
                  sltiu        s5, sp, 132
                  sltu         t5, zero, ra
                  lui          s11, 370946
                  sltu         t3, t4, a4
                  ori          s4, t3, -221
                  sra          s4, t6, s3
                  addi         s4, sp, 1780
                  sltiu        a1, s1, -852
                  srl          t4, s10, sp
                  sltiu        t3, s6, 151
                  srai         t2, a5, 21
                  add          a3, t1, sp
                  andi         s7, sp, 1944
                  sll          s4, t6, t6
                  nop
                  sra          s2, zero, t3
                  srai         t5, s4, 22
                  sra          s2, s3, s7
                  sub          a6, a4, a6
                  sra          t4, s4, s3
                  sra          s10, t3, sp
                  sub          a4, a0, a2
                  add          s7, t2, s9
                  and          t6, t3, tp
                  slt          a3, t5, t3
                  slti         zero, a6, 554
                  slti         zero, s6, 283
                  ori          s4, tp, 1877
                  srai         s1, t6, 27
                  sub          s9, s10, tp
                  xori         s0, ra, 567
                  sub          tp, a5, a0
                  slti         a7, s9, 31
                  sltu         t6, s9, s7
                  slli         a6, a1, 25
                  auipc        s8, 603326
                  slt          s5, sp, t1
                  sltu         a7, a6, t0
                  or           s9, gp, t3
                  nop
                  xor          s4, t1, s10
                  nop
                  sll          s0, s2, a3
                  srl          s11, zero, t2
                  add          t2, a0, s6
                  slli         t3, sp, 18
                  xor          ra, s10, t6
                  ori          sp, s8, 867
                  slti         s2, s6, 454
                  addi         t5, s2, 1381
                  ori          a3, t0, -1876
                  nop
                  or           a1, a4, t0
                  and          s4, s7, s3
                  sltiu        t5, a6, -493
                  slli         a3, a6, 1
                  andi         s8, s7, -937
                  srai         s11, a5, 8
                  lui          s9, 92751
                  srli         tp, ra, 7
                  srl          s9, tp, t2
                  sub          s10, a6, a7
                  sltiu        s1, t1, 1464
                  srai         a4, s11, 15
                  ori          s0, s7, 990
                  sltiu        s8, t3, -1822
                  slti         ra, a7, 817
                  addi         a6, ra, -694
                  xor          s3, zero, t5
                  slti         a4, t6, 1032
                  auipc        s2, 432855
                  slli         a3, s11, 13
                  lui          a2, 512435
                  addi         zero, t4, 1724
                  or           s8, s1, s2
                  sll          a1, gp, t0
                  sll          s0, s3, a1
                  and          s2, s4, s0
                  sub          a5, t0, s3
                  sub          s1, a3, a1
                  sltu         t5, gp, a3
                  srli         t3, sp, 25
                  xor          t6, s5, s10
                  lui          s11, 468685
                  addi         s3, t4, 954
                  andi         t4, s3, -156
                  slt          zero, s0, a5
                  xor          s10, t3, ra
                  or           t4, sp, a4
                  slli         tp, s4, 13
                  nop
                  srli         t3, s0, 17
                  sll          s7, a4, ra
                  add          s7, s0, s3
                  slli         s2, t5, 0
                  or           s11, a3, s0
                  lui          t1, 876473
                  andi         a5, s10, -1548
                  slti         a2, s10, -1920
                  and          a6, a4, s11
                  sll          t4, a7, s2
                  srl          s11, s9, s2
                  sub          s8, t0, s10
                  srl          a7, s1, s3
                  and          t1, s11, a0
                  srai         s10, t5, 9
                  auipc        t6, 536896
                  ori          tp, zero, 1785
                  srai         a2, a1, 30
                  srl          s10, s10, t4
                  nop
                  slti         a7, t5, 1254
                  addi         s8, ra, -615
                  srai         t4, s7, 22
                  add          tp, a1, s4
                  auipc        s11, 563483
                  sltu         s4, s10, gp
                  srl          s1, s3, t0
                  nop
                  sltu         gp, s0, a1
                  ori          gp, t0, 568
                  addi         s8, a0, 52
                  or           s3, t5, s7
                  auipc        t6, 848489
                  ori          s4, s10, 1578
                  ori          s5, t4, -1576
                  xor          s8, s2, s1
                  or           s5, t3, a6
                  srai         ra, t5, 14
                  and          t2, s11, gp
                  sltiu        s5, a0, 1216
                  sra          t2, a2, a5
                  sra          s11, s7, a6
                  auipc        a3, 138779
                  nop
                  add          s8, t5, s0
                  sltu         s1, s10, s6
                  sltu         t6, s5, a1
                  sll          zero, s5, s4
                  sra          s9, s1, gp
                  sltu         sp, s3, s10
                  srai         t4, a1, 26
                  slti         t4, s9, -1769
                  xor          a2, a1, t4
                  sll          t6, a6, tp
                  xor          a7, a4, t6
                  sltiu        t5, sp, -1321
                  ori          s7, a7, -818
                  sltu         a1, t0, s9
                  xori         a5, tp, 1818
                  nop
                  slt          s2, s9, a1
                  srai         t6, a7, 11
                  srl          zero, t0, ra
                  xor          tp, a7, s6
                  xori         a1, s5, -1268
                  ori          t3, t2, -562
                  addi         s1, a6, 143
                  andi         t5, a4, 1009
                  srli         t2, t4, 13
                  sub          t6, t6, s5
                  add          s8, a6, s3
                  slt          gp, s4, s9
                  srai         ra, gp, 13
                  auipc        s3, 222368
                  srli         s4, s9, 24
                  sltiu        s9, a4, 61
                  xori         a6, t3, 505
                  sll          s9, a4, t5
                  nop
                  slti         t4, t3, -22
                  andi         a7, gp, -886
                  sltu         s8, a4, t0
                  or           a7, s2, s6
                  auipc        s11, 726776
                  sra          zero, t0, s11
                  andi         a2, zero, 1110
                  sub          zero, sp, gp
                  srli         t4, ra, 5
                  sub          s5, gp, t6
                  addi         s8, sp, -1419
                  slli         t2, a1, 28
                  or           ra, s6, tp
                  slti         ra, a6, 905
                  and          a7, a6, a4
                  lui          a7, 485854
                  and          s11, s9, s7
                  sltu         t5, a4, s0
                  andi         t4, a7, 453
                  auipc        s2, 689421
                  slti         s8, s8, -1591
                  nop
                  srli         a7, t1, 2
                  sll          s7, a3, s4
                  and          s8, s8, t6
                  slt          a6, t6, a3
                  andi         t3, zero, 1427
                  xor          a3, t5, zero
                  srl          gp, s6, s8
                  andi         t6, s2, 1122
                  srl          gp, t6, t0
                  xor          t6, s8, s1
                  xori         tp, a6, -2030
                  andi         a1, s10, 20
                  lui          a4, 796824
                  sll          s7, s7, s8
                  srli         a6, a4, 9
                  and          s7, t2, a6
                  sltu         sp, zero, gp
                  auipc        s5, 225064
                  slti         s3, t2, -1893
                  add          t1, a7, s10
                  nop
                  srai         a1, a4, 11
                  or           a3, sp, t1
                  xori         a5, a2, 501
                  ori          tp, a6, 1203
                  sll          tp, t6, s9
                  and          s2, s10, a2
                  addi         zero, s7, -1586
                  xor          s8, t5, a1
                  addi         a3, s7, -1371
                  sub          a1, tp, t2
                  auipc        s5, 833225
                  sltu         s4, t6, a1
                  sra          s1, sp, s1
                  srli         a1, t1, 30
                  addi         a4, s8, 422
                  slt          s2, t2, tp
                  slti         s5, a3, -890
                  slt          t1, s1, t2
                  sltu         t2, s8, t0
                  sll          sp, s5, ra
                  addi         s11, a5, -1411
                  sltiu        t2, s0, -1903
                  sub          a7, a7, t0
                  add          a6, t0, a0
                  auipc        t2, 136932
                  slt          t6, s1, a1
                  srl          a1, a0, s8
                  xor          a4, t5, a1
                  sra          s3, t2, a5
                  and          s1, s10, s11
                  slti         a4, a3, 1730
                  and          s7, s2, s5
                  ori          sp, s10, -1109
                  sll          a5, s6, t0
                  xor          s8, a6, s7
                  add          a3, t2, a0
                  sll          t5, s4, s1
                  slli         t5, a2, 8
                  srl          t2, a4, t6
                  srli         ra, a5, 22
                  addi         s10, s11, -605
                  slt          zero, s9, sp
                  or           zero, t5, a1
                  sub          sp, s5, s11
                  srl          s0, a2, sp
                  slt          s7, ra, sp
                  sub          a6, s9, s4
                  srl          ra, s6, s2
                  sltiu        t4, t0, 1547
                  andi         a7, ra, -1018
                  sltu         t6, t3, t2
                  slli         s1, s10, 17
                  sltiu        t4, t3, 1522
                  add          s8, a4, a2
                  and          a5, a6, zero
                  sub          t6, s5, a5
                  sltiu        s4, t6, -815
                  add          a3, s5, t1
                  sltu         s7, a0, s0
                  addi         sp, zero, 1671
                  sltiu        s10, a4, -216
                  sll          s2, t1, zero
                  add          t1, t1, s6
                  slli         a4, t6, 18
                  nop
                  ori          t5, s1, -592
                  sltu         a1, t5, s3
                  addi         s0, s5, -1094
                  sub          s8, s5, sp
                  srai         t6, a6, 26
                  slti         s7, s6, 329
                  slt          t2, s3, a6
                  and          a2, a2, zero
                  slt          t3, a4, a7
                  nop
                  srli         tp, t3, 2
                  slt          sp, s9, s7
                  or           zero, s4, sp
                  sub          t4, s1, s10
                  auipc        a3, 638710
                  xori         s8, s4, -979
                  add          t2, s7, a3
                  andi         zero, s5, -1232
                  sltiu        s8, t0, 162
                  lui          tp, 986404
                  xori         zero, a4, 1459
                  slti         s9, a1, 1021
                  ori          gp, a1, -1543
                  srl          s11, s7, s9
                  srai         ra, t4, 6
                  ori          s3, s4, -1223
                  xor          a1, ra, s1
                  addi         zero, s4, 1334
                  slti         t5, zero, 250
                  srai         s7, s8, 13
                  xori         a5, a3, 1190
                  add          a6, a7, t2
                  slli         t4, s7, 4
                  srli         s7, s2, 21
                  addi         s7, t4, 1422
                  auipc        s11, 363137
                  nop
                  sltu         t4, s2, s3
                  xori         a6, a3, -55
                  auipc        t3, 1002357
                  addi         s4, s10, 827
                  srai         s0, a3, 31
                  sltu         ra, a7, a1
                  slli         tp, sp, 2
                  sltiu        s1, s9, 1914
                  lui          sp, 6382
                  slti         a4, ra, -479
                  sra          s3, s5, t4
                  xori         a2, s7, 1648
                  xori         gp, s6, -263
                  ori          sp, a2, -2041
                  or           s5, ra, a4
                  auipc        t6, 425395
                  andi         a4, a1, 1271
                  addi         t3, a6, 1513
                  addi         a1, s7, -1536
                  srli         a7, t3, 13
                  add          tp, s3, s5
                  sub          t4, s7, t1
                  andi         s7, a4, -1188
                  srl          s3, ra, t4
                  lui          t2, 621094
                  lui          ra, 578898
                  sltiu        t1, a3, -82
                  srai         s9, sp, 1
                  addi         s0, t2, 844
                  xori         sp, s5, 95
                  sra          s10, a5, t5
                  ori          s11, gp, 1389
                  xor          a4, a5, zero
                  srl          s1, t4, ra
                  slt          s5, s9, t3
                  xori         s11, ra, -1083
                  andi         zero, s8, -1826
                  srli         t5, s9, 28
                  or           t6, gp, a0
                  xor          t4, a4, s7
                  sltu         ra, sp, t6
                  sll          s1, s0, s10
                  sll          t2, s9, s10
                  sub          s0, t0, t5
                  sltu         t2, a0, sp
                  lui          a7, 755655
                  auipc        s2, 343570
                  sra          s11, t5, t5
                  sll          tp, s9, t4
                  srli         zero, s4, 12
                  sll          t5, t6, a5
                  xor          a2, s10, t2
                  auipc        a1, 490075
                  srai         s3, s11, 22
                  nop
                  slli         s11, a6, 21
                  or           a1, s5, s5
                  li           t3, 0xcd610b9f #start riscv_int_numeric_corner_stream_12
                  li           t4, 0xffffffff
                  li           t5, 0xffffffff
                  li           s10, 0x80000000
                  li           sp, 0x0
                  li           s9, 0xf8c1acbc
                  li           tp, 0x2f8cbf8f
                  li           a2, 0x0
                  li           a1, 0x0
                  li           gp, 0xf761eca2
                  add          sp, sp, sp
                  addi         gp, t3, 822
                  sub          t3, sp, a1
                  addi         t5, a1, 1755
                  sub          s9, s10, sp
                  lui          t3, 1025043
                  nop
                  auipc        sp, 581864
                  sub          t4, s9, s10
                  addi         s9, s9, -494
                  nop
                  add          gp, a1, t4
                  auipc        t5, 965925
                  sub          s10, a1, a2
                  addi         t5, tp, 492 #end riscv_int_numeric_corner_stream_12
                  lui          zero, 270741
                  sra          sp, a4, s0
                  sra          t2, s9, s11
                  xori         gp, a1, -1174
                  srl          s0, s5, t4
                  sltiu        t6, a0, 1503
                  slti         s4, zero, 554
                  sub          s9, s7, ra
                  slli         t5, s5, 6
                  srai         s5, a4, 23
                  andi         s9, s3, 1163
                  ori          a1, tp, 1796
                  slti         t2, s7, 1214
                  add          s5, a0, a5
                  andi         gp, t0, 248
                  xor          s2, s7, tp
                  nop
                  srli         s11, a6, 19
                  addi         t1, sp, 1226
                  srli         t2, t2, 13
                  slti         a4, t4, -1495
                  sub          a5, a4, s9
                  andi         s5, s3, 1322
                  slt          ra, zero, s7
                  xori         a7, s2, -165
                  sltiu        s8, ra, 192
                  sll          sp, a5, tp
                  addi         a2, zero, 448
                  sll          t3, t0, s9
                  sltiu        a3, a3, -652
                  slt          tp, t6, a3
                  sub          s2, t4, s7
                  sra          sp, a2, s9
                  xori         gp, s0, 1144
                  auipc        a7, 527239
                  and          t4, a3, a2
                  sltiu        a1, a3, -1197
                  sltu         ra, s8, s7
                  sltiu        t3, t5, 985
                  andi         t2, s3, -355
                  auipc        a3, 648469
                  sltu         s0, a1, s8
                  sll          a4, a4, s2
                  andi         a7, t6, -118
                  nop
                  srai         s10, s7, 4
                  and          s11, a4, s3
                  and          a5, a5, t1
                  srai         a3, s11, 3
                  slti         tp, a5, -416
                  srli         tp, s4, 8
                  srl          t4, a7, t4
                  sub          s9, s9, a1
                  srl          t2, a1, t5
                  or           s7, s0, t6
                  srai         s8, t4, 4
                  srai         zero, s3, 16
                  slt          s5, t0, t3
                  ori          s5, a0, 196
                  sub          s2, a5, tp
                  xor          a5, s4, s6
                  slti         ra, s9, 1572
                  sub          a1, s3, a3
                  slli         t1, a5, 22
                  andi         a3, t6, 1971
                  lui          a1, 839906
                  slt          a3, sp, t5
                  sra          tp, tp, s6
                  andi         t2, t2, 1348
                  andi         t2, a6, 475
                  nop
                  slti         s11, s0, -552
                  or           s3, s2, gp
                  sra          t4, s9, t2
                  sltu         a5, s2, tp
                  and          t5, s6, t1
                  nop
                  lui          s0, 93487
                  sltu         t6, s5, s8
                  auipc        s11, 4489
                  xori         sp, sp, 83
                  add          s7, zero, t4
                  andi         t5, s10, 297
                  auipc        t2, 183210
                  sub          tp, a1, a7
                  ori          a2, t3, -753
                  sltu         a6, sp, t3
                  lui          a7, 373400
                  slli         s3, a7, 12
                  srli         s9, s10, 22
                  nop
                  srai         a3, gp, 2
                  sll          a7, a3, s9
                  andi         s5, a0, 1422
                  auipc        t2, 182013
                  sltiu        s5, s7, -184
                  or           s3, s0, s6
                  xor          t5, s4, s4
                  xor          s10, s8, s11
                  or           s0, t2, s1
                  sra          s11, t3, t1
                  auipc        s11, 584978
                  and          s9, a4, s5
                  sltiu        s2, s9, -1865
                  slti         tp, ra, -1336
                  nop
                  sltiu        a6, sp, 1868
                  and          ra, s11, zero
                  auipc        s9, 653334
                  add          tp, s8, a3
                  slli         ra, s2, 10
                  sltiu        t3, s8, 9
                  srli         t3, a3, 27
                  nop
                  srai         a7, tp, 18
                  sll          t4, s2, sp
                  ori          s9, ra, -221
                  sltiu        s9, a7, -1295
                  xori         tp, t3, -72
                  srli         a5, s8, 4
                  andi         a7, tp, -658
                  srli         a1, t4, 1
                  lui          s4, 25417
                  sub          ra, t5, gp
                  auipc        s4, 207074
                  xor          a1, t0, s9
                  sltu         a4, a2, t2
                  add          a6, s1, s3
                  lui          t2, 467748
                  slt          s2, s11, t6
                  or           zero, a5, a5
                  slti         a5, s11, 1967
                  addi         s2, t0, 1998
                  sra          a6, a1, t3
                  srai         s10, sp, 17
                  sub          a6, s10, t6
                  addi         tp, sp, 196
                  or           a3, a2, s4
                  nop
                  andi         s5, a6, -1820
                  add          t6, a1, a3
                  srli         a5, s6, 29
                  xor          a2, zero, a2
                  sll          t2, s2, t1
                  slli         t4, a2, 26
                  sll          s7, t0, ra
                  slt          s7, a3, t3
                  or           s0, tp, s9
                  lui          t5, 143543
                  slli         t5, t1, 16
                  or           s2, a2, a1
                  andi         sp, s7, 770
                  slti         s7, t4, 1877
                  lui          a1, 819202
                  sltiu        s3, zero, 1076
                  slli         zero, zero, 25
                  nop
                  srl          tp, s10, tp
                  slti         a6, s6, 696
                  xor          s10, s5, s2
                  or           gp, t1, ra
                  auipc        t2, 493472
                  xor          s11, a4, a5
                  slti         s9, a4, 111
                  addi         t6, a4, 294
                  xori         t6, s2, -1468
                  slti         s9, t6, 1448
                  xori         s11, t5, -1589
                  ori          s9, t0, -183
                  sll          a6, s0, s9
                  add          s0, a3, sp
                  xori         sp, s11, 17
                  slti         t3, s2, 31
                  xori         a7, a0, 1312
                  and          t3, a3, s0
                  ori          s5, s0, -636
                  sub          zero, ra, s9
                  sll          s10, s1, a7
                  or           ra, t0, a5
                  slti         tp, t0, 743
                  add          a2, t2, sp
                  xori         a1, t0, 239
                  and          gp, t1, s10
                  sra          a6, s2, t2
                  xori         s10, a6, -363
                  sltu         s10, t3, a1
                  sltu         t2, a5, ra
                  slti         s3, s8, 1704
                  andi         t4, a7, -188
                  sltu         t6, a7, zero
                  sub          a1, a1, s1
                  andi         s3, a2, 1683
                  sub          a5, a7, s9
                  lui          a7, 970269
                  add          a3, gp, s7
                  nop
                  sub          s3, zero, t2
                  sltu         ra, a5, a4
                  sll          s2, a4, t5
                  auipc        gp, 830098
                  sll          s5, t5, s4
                  sltiu        t4, t0, -1198
                  and          a6, s0, s6
                  sra          t3, t1, gp
                  xori         a2, a5, 474
                  sltiu        t3, sp, 1524
                  andi         ra, gp, 938
                  sltu         t5, t0, t3
                  srli         t2, s2, 26
                  lui          s1, 20900
                  or           s11, a5, s10
                  xori         s1, t4, -932
                  andi         t4, t1, 1194
                  ori          ra, s8, -243
                  ori          s7, a2, 2034
                  ori          s9, t2, 1869
                  slli         t1, a4, 16
                  andi         s9, ra, 1639
                  sra          gp, t1, a7
                  sra          s0, t3, a7
                  or           s4, a2, s2
                  sltu         s8, a0, ra
                  ori          a2, t4, -260
                  and          a6, s8, t6
                  addi         sp, s11, 86
                  srli         a5, s0, 0
                  srai         t1, gp, 20
                  srli         s4, a4, 26
                  sll          a1, tp, s3
                  xor          a7, s9, t5
                  srl          s10, a2, sp
                  sra          ra, t1, s11
                  andi         s0, s0, 477
                  sra          s2, t5, s3
                  ori          a4, ra, -1782
                  and          a2, a7, t4
                  sra          s5, t3, a5
                  srai         s9, s11, 23
                  ori          gp, s0, 10
                  xori         t1, s3, 426
                  lui          s3, 293894
                  slt          t5, zero, s9
                  slti         t1, s9, 88
                  xor          sp, t3, t4
                  sub          s9, s2, tp
                  ori          a6, a5, -1655
                  nop
                  slti         s10, s1, -1188
                  srai         tp, s9, 16
                  add          a1, zero, t5
                  xori         a6, s2, 719
                  sub          a2, t6, a3
                  lui          a4, 9873
                  ori          a5, a6, 631
                  sub          s7, t3, a0
                  add          t4, tp, gp
                  xor          sp, ra, s11
                  nop
                  add          a3, sp, sp
                  auipc        a7, 246944
                  srai         s1, t3, 26
                  or           a2, s9, ra
                  or           s7, a1, a2
                  xori         tp, t0, -1806
                  srl          t6, s11, t1
                  and          a7, a5, t5
                  slt          s9, t2, t0
                  lui          s4, 761475
                  slli         sp, s0, 0
                  auipc        s5, 339959
                  sll          s2, s2, t1
                  srai         s2, t5, 12
                  andi         a6, zero, -59
                  addi         a2, s8, 2042
                  srai         t5, a1, 6
                  slt          t5, t4, t6
                  auipc        s7, 234466
                  andi         t6, tp, -604
                  or           s4, tp, ra
                  xori         ra, s10, -1227
                  add          t3, s9, s3
                  slt          tp, s9, s5
                  andi         a4, s0, -1506
                  slli         s9, a1, 15
                  nop
                  nop
                  xor          t6, s11, a6
                  slli         s2, s5, 30
                  sltu         a4, a1, sp
                  lui          s7, 515690
                  sra          s11, a3, a7
                  and          t5, t2, s2
                  andi         t5, s9, 476
                  slli         t6, gp, 3
                  srl          t6, t0, a5
                  srli         s8, t5, 28
                  andi         a2, a7, 576
                  slt          t5, s6, t0
                  slli         t5, s5, 0
                  and          a2, a7, s1
                  auipc        s1, 857431
                  sltu         t5, t4, s1
                  addi         zero, gp, -1208
                  auipc        a5, 410765
                  srli         a7, a4, 30
                  sltu         tp, s3, s7
                  sltu         a7, tp, a0
                  srli         s11, a6, 11
                  slt          t1, a0, a0
                  slt          zero, ra, t1
                  srai         s0, a6, 5
                  slti         s9, s0, 1231
                  sltiu        a2, a6, 529
                  slli         s10, a5, 14
                  andi         ra, a5, -893
                  srl          ra, a7, s4
                  addi         t3, s7, 668
                  slt          t2, s3, s7
                  addi         s3, s2, 1923
                  sra          t3, a1, s3
                  addi         a6, t2, -894
                  sub          a6, a6, a7
                  srli         s5, t4, 1
                  srai         tp, t6, 25
                  or           sp, s0, s10
                  slt          a4, a0, s8
                  slli         s0, s4, 1
                  slt          t1, a2, a6
                  add          tp, a7, a2
                  addi         s0, tp, 1025
                  or           s0, a3, t3
                  nop
                  slli         zero, t1, 11
                  sub          t2, s1, tp
                  srl          a1, a5, s1
                  sll          s11, a4, a4
                  srl          t1, sp, t6
                  slli         s8, ra, 11
                  or           gp, a7, s9
                  slti         a3, s0, -158
                  xori         t3, t3, -48
                  sltu         t2, s6, t4
                  sltiu        a3, t6, -8
                  srli         zero, t6, 5
                  add          a1, a2, s11
                  srli         a7, s7, 9
                  nop
                  srai         s8, t6, 18
                  slli         s7, gp, 0
                  auipc        s8, 799387
                  auipc        s2, 663931
                  sra          t6, a1, s3
                  auipc        a4, 505360
                  ori          s10, tp, 317
                  sra          ra, t5, s6
                  or           ra, zero, s10
                  slli         a4, a3, 15
                  andi         s8, a2, -1993
                  addi         a2, s4, 1431
                  sltiu        t1, s11, -613
                  addi         a7, a3, 1377
                  sll          t5, sp, ra
                  srai         s2, sp, 1
                  and          t6, t3, a7
                  or           s11, a6, s2
                  srl          a6, s10, a6
                  ori          t1, a7, -1049
                  auipc        s5, 646831
                  sltiu        s8, sp, -529
                  add          t6, t5, s8
                  slli         t5, s2, 16
                  srl          a2, a6, s7
                  sub          s9, s11, a6
                  add          t1, sp, t2
                  or           s11, t0, a6
                  sub          gp, a7, s0
                  slli         a1, s5, 1
                  add          s4, t2, sp
                  add          sp, t6, s7
                  sll          s5, t0, s4
                  slli         s2, s1, 1
                  srl          t4, s2, a0
                  lui          t1, 10947
                  sltu         s11, s5, a0
                  and          s2, s5, t2
                  add          a1, a4, t3
                  and          t4, a0, t3
                  slli         t3, ra, 31
                  addi         s0, sp, -940
                  sra          tp, a5, a2
                  nop
                  slti         gp, t4, 995
                  srl          a7, sp, a1
                  or           gp, sp, t5
                  slli         t6, s8, 24
                  sra          a6, s10, s0
                  addi         sp, a1, -165
                  sll          a1, a7, gp
                  srli         t6, s11, 14
                  lui          a5, 311948
                  lui          tp, 98425
                  nop
                  srai         t2, t3, 30
                  sub          s7, t3, s10
                  andi         t3, s11, 817
                  auipc        s3, 428036
                  sltiu        t3, a3, -163
                  lui          t1, 646646
                  slt          s8, a1, a2
                  slli         zero, t0, 6
                  xor          gp, a1, s9
                  xor          tp, a3, a0
                  sltu         t5, a7, zero
                  sra          t1, t5, t0
                  or           gp, t5, s1
                  sra          s7, a2, a3
                  srl          a4, s6, a4
                  slti         a5, a5, -457
                  srai         a4, s11, 4
                  auipc        t5, 1045849
                  li           gp, 0x4c6a13ba #start riscv_int_numeric_corner_stream_9
                  li           s4, 0x4d41b9c2
                  li           tp, 0x80000000
                  li           s0, 0x17db770a
                  li           s11, 0x80000000
                  li           t5, 0xf7320326
                  li           t6, 0x80000000
                  li           t1, 0x5447eb75
                  li           s7, 0xffffffff
                  li           a2, 0x0
                  sub          s4, s4, t5
                  nop
                  add          s7, tp, t6
                  lui          s11, 442356
                  lui          t5, 1000440
                  sub          s7, t6, t1
                  nop
                  addi         gp, s11, -1705
                  nop
                  auipc        s7, 360011
                  nop
                  addi         t5, a2, 1679
                  sub          t5, a2, tp
                  nop
                  lui          s0, 902494
                  add          t1, tp, tp
                  nop #end riscv_int_numeric_corner_stream_9
                  slli         t2, s7, 24
                  slt          s9, a5, s7
                  slt          a7, t5, s11
                  sra          a2, s6, a7
                  sub          a2, gp, t3
                  auipc        tp, 85234
                  sltu         sp, t2, t6
                  nop
                  andi         a2, a7, -727
                  xori         s3, s2, 96
                  ori          s7, s11, 1171
                  slt          s1, zero, a2
                  lui          s10, 381067
                  auipc        t6, 531305
                  lui          s8, 873604
                  sll          s8, t5, s11
                  auipc        a3, 656883
                  slti         a1, s9, 395
                  sltiu        zero, tp, 485
                  or           sp, s9, s2
                  or           s9, s11, s1
                  sll          s0, s6, ra
                  sra          t4, s7, s8
                  sll          s5, t1, s1
                  srli         t1, t4, 11
                  nop
                  auipc        s3, 378162
                  sra          t1, t0, t3
                  sltiu        t1, s8, -1376
                  addi         s1, s9, 1606
                  slli         a4, s2, 1
                  slt          a7, s2, s3
                  auipc        s1, 318157
                  sltu         s11, s5, s9
                  slt          t3, t3, s2
                  slli         s2, s4, 10
                  andi         s0, a6, -1050
                  srai         a2, t2, 20
                  and          s4, a6, s3
                  sub          ra, a7, s1
                  srl          t6, s3, s2
                  auipc        s11, 694722
                  sltu         t5, a1, t1
                  nop
                  xori         s1, t6, 161
                  xor          s1, s10, gp
                  auipc        s9, 906958
                  addi         s3, t6, 575
                  auipc        s4, 214940
                  ori          s8, t1, -868
                  addi         t2, s8, 222
                  sltu         t3, s5, t6
                  sub          t5, s6, t5
                  xor          a5, s4, a7
                  sltiu        ra, s5, 1490
                  or           a3, a7, s2
                  slt          s10, t5, a0
                  nop
                  sub          s1, t3, s1
                  andi         s8, s4, 100
                  andi         t5, a2, -1335
                  sub          s4, t4, s10
                  addi         t6, s6, 894
                  sub          s5, s3, t4
                  slli         a6, a2, 2
                  slti         t6, a5, 1267
                  xori         a5, gp, 1250
                  slli         s8, s5, 26
                  srli         s9, t4, 29
                  ori          a3, t1, 917
                  slt          s0, gp, s7
                  xor          t3, a3, s10
                  or           s9, a5, t5
                  ori          t5, t2, -25
                  nop
                  slli         s4, s7, 14
                  sltiu        a1, t6, -1584
                  lui          t6, 843136
                  xori         tp, a5, 1254
                  addi         t6, zero, 1876
                  auipc        a2, 143699
                  and          s10, t3, s0
                  slti         a5, t2, 1344
                  slti         a5, s11, 1862
                  auipc        s7, 627140
                  slt          a6, s8, s8
                  slt          s7, s0, t2
                  sll          s7, t3, a0
                  auipc        s8, 980845
                  addi         t5, a1, 733
                  sll          s3, tp, s2
                  lui          s1, 178686
                  slti         gp, ra, -1642
                  sub          ra, a1, t6
                  xor          s3, sp, a2
                  sltu         s10, sp, t2
                  lui          a1, 636293
                  srl          s2, a1, a6
                  ori          s8, gp, -1229
                  addi         a1, s10, 18
                  lui          zero, 376491
                  nop
                  sub          t6, t6, a2
                  or           zero, s4, t1
                  srl          gp, s0, s4
                  sub          a2, s4, a1
                  slti         s8, sp, -1014
                  add          s2, tp, a5
                  slt          a3, a4, a7
                  sll          gp, s11, t6
                  add          tp, t5, s0
                  srl          gp, a0, sp
                  slti         s4, s5, 1669
                  xor          s7, gp, s9
                  sltu         a3, t1, a0
                  or           s3, a5, tp
                  xor          a4, s0, s8
                  sll          s5, s3, a1
                  auipc        t2, 843882
                  xori         s10, a3, -83
                  add          a7, ra, t4
                  srli         s3, t4, 10
                  xori         a5, sp, -309
                  lui          t4, 302491
                  nop
                  ori          s8, a0, 1221
                  xori         s11, a5, 2016
                  srai         s4, a4, 31
                  ori          s2, t5, -1515
                  nop
                  sll          s10, sp, t2
                  slli         t5, t3, 24
                  slti         sp, t1, 1077
                  srl          a1, a7, s10
                  srl          sp, a4, s2
                  srai         gp, tp, 16
                  andi         s10, t5, 1936
                  sub          zero, a1, a0
                  nop
                  slt          sp, s8, s1
                  slti         t3, s6, 595
                  sltu         s10, a4, t6
                  addi         s11, s0, -1592
                  xor          t2, t4, a2
                  sub          ra, gp, a5
                  ori          s0, sp, 61
                  srl          gp, s2, gp
                  slli         s4, zero, 4
                  slli         a3, t6, 27
                  add          a3, t1, s3
                  nop
                  slt          t5, s11, a6
                  sub          s10, a0, a7
                  sltu         s5, s7, s2
                  add          s3, s8, gp
                  addi         t3, a2, -504
                  nop
                  slti         a2, t1, 1873
                  addi         t3, a1, -1248
                  lui          a2, 855952
                  sub          a1, ra, s0
                  xori         t2, s6, -900
                  and          a4, a4, s7
                  srl          t4, t0, ra
                  xor          s5, s10, s9
                  slti         tp, a5, -1854
                  srai         t5, t4, 12
                  srai         a7, t3, 31
                  srli         s8, zero, 6
                  slli         s3, a6, 22
                  ori          a4, t3, 1496
                  slti         sp, tp, -392
                  andi         zero, s0, 359
                  addi         t1, sp, -960
                  auipc        t5, 985546
                  andi         t4, zero, -1555
                  ori          t5, s8, -846
                  srai         a1, s1, 7
                  lui          a7, 279813
                  lui          t1, 266582
                  xor          a4, a0, t6
                  slt          zero, t3, a7
                  srli         a1, s1, 7
                  srai         t4, s8, 3
                  srai         s9, ra, 13
                  addi         t6, s11, -1221
                  auipc        s8, 45102
                  and          s0, s11, t3
                  lui          ra, 218475
                  slt          a3, a4, sp
                  sra          t1, ra, t4
                  xor          sp, t6, sp
                  xori         s9, s11, 392
                  andi         a4, gp, -188
                  add          sp, a3, gp
                  nop
                  sub          s3, a4, t4
                  and          t5, a4, sp
                  and          zero, gp, a7
                  sra          sp, a2, tp
                  slt          tp, s3, t3
                  sub          a3, s3, sp
                  sra          s4, a7, gp
                  sub          tp, s0, s6
                  add          a3, s6, a5
                  sra          ra, zero, s10
                  sra          zero, t5, s11
                  sll          t4, t0, t5
                  sltu         t6, s4, s3
                  sub          t3, t1, a7
                  lui          s10, 944060
                  xor          s1, t0, s1
                  xor          a6, s10, a3
                  slti         a5, a4, -997
                  sra          sp, t4, t6
                  sltiu        s0, a3, -302
                  or           t4, ra, a2
                  slti         s10, a5, 775
                  sltu         t3, a6, ra
                  sll          t3, t2, a3
                  slli         a6, tp, 28
                  nop
                  addi         ra, a6, -2
                  slti         ra, a1, 46
                  sub          a7, s3, s10
                  slti         a4, s7, 452
                  sra          a1, t4, s9
                  sltiu        s2, t0, 1687
                  sub          a7, a7, s7
                  sra          s4, sp, s10
                  nop
                  ori          a6, t2, -1534
                  auipc        s10, 680915
                  andi         s3, a4, -1731
                  sub          s5, s2, s10
                  nop
                  xori         sp, s2, -293
                  ori          s5, s5, -121
                  srai         s5, t6, 31
                  sltiu        ra, t3, -929
                  nop
                  srl          s4, s0, a5
                  ori          gp, s1, -1637
                  slt          a7, a0, a6
                  lui          s11, 953445
                  xor          s7, s0, s8
                  sra          a5, s2, a6
                  xori         t4, t2, 790
                  srai         a1, s2, 28
                  addi         a5, s9, -1317
                  slt          a3, a1, s2
                  srl          a2, s1, gp
                  srai         a2, s10, 12
                  andi         s3, s11, 1833
                  slt          zero, s2, a5
                  andi         s5, a5, 109
                  slt          s10, t5, a1
                  slli         t1, a4, 25
                  sll          s8, t1, ra
                  slt          a1, a1, t2
                  sra          t5, t6, s6
                  slt          s3, a5, sp
                  srli         s7, t5, 3
                  xor          a7, s4, s5
                  sll          t3, sp, gp
                  srai         s2, t3, 18
                  or           t1, a5, s11
                  xor          s2, t3, t0
                  sll          a2, a0, a1
                  sltiu        s0, s10, 1742
                  addi         a3, a0, -2025
                  xori         gp, a2, 842
                  sltu         t2, s10, a1
                  lui          t4, 223146
                  sub          t4, s2, a4
                  srl          tp, t1, sp
                  xori         s8, sp, 1924
                  slti         t5, zero, -858
                  sub          s10, a3, a4
                  xor          t1, a1, t1
                  sltu         a2, s5, t3
                  ori          a6, s4, 95
                  lui          t5, 1038906
                  add          s8, t3, t3
                  slli         a2, a6, 7
                  srai         a5, zero, 24
                  xor          s5, sp, a5
                  slt          s9, a3, a3
                  srai         zero, tp, 13
                  sltu         a3, sp, ra
                  srli         ra, s4, 30
                  slt          t1, s4, t3
                  xori         s10, t0, 1340
                  slt          a6, ra, s7
                  sll          s0, a3, t5
                  srli         gp, zero, 9
                  sltu         a2, a1, a3
                  sub          s11, a1, a5
                  sltiu        ra, s11, 952
                  xor          s11, sp, a5
                  sltu         sp, t0, a4
                  xori         tp, t0, -1184
                  srl          a1, a2, s8
                  addi         a5, a7, -545
                  sra          t2, t1, a6
                  srai         t2, s3, 8
                  lui          zero, 768470
                  sltiu        ra, s9, -2032
                  xori         tp, ra, 1623
                  srl          s5, s11, gp
                  sll          t3, s3, s11
                  slti         s8, t3, -2023
                  andi         a6, s4, 1825
                  slli         t3, s7, 25
                  srl          a3, gp, s4
                  sltiu        t1, a2, -1871
                  andi         s7, s7, -657
                  nop
                  sll          t1, a7, s0
                  slt          t2, gp, a2
                  sll          t4, t4, s0
                  srl          zero, a0, a6
                  sll          s1, s5, t4
                  nop
                  srli         ra, a1, 13
                  sll          a2, gp, t5
                  slt          ra, a1, t0
                  sra          gp, s1, s5
                  ori          ra, t4, -1581
                  sub          zero, s9, a2
                  or           sp, s6, s6
                  sub          t5, tp, s10
                  sra          t6, a7, a6
                  xori         s4, a6, -1510
                  auipc        a4, 142514
                  slli         zero, t2, 15
                  slti         s4, a0, -1873
                  slli         s9, s7, 6
                  slli         s1, t4, 18
                  sltiu        s11, t4, -1933
                  andi         s11, t3, 1354
                  andi         a2, s4, -1284
                  or           t2, s10, s9
                  xor          a3, a0, s5
                  sltu         t6, zero, t1
                  sltu         s9, s0, gp
                  and          a4, a4, ra
                  srai         a6, a2, 12
                  and          a7, s8, s4
                  or           t2, a3, a5
                  sra          gp, zero, s5
                  sub          s3, a1, gp
                  nop
                  slti         tp, a6, 113
                  srl          s0, s8, t6
                  srl          t1, t3, s10
                  nop
                  xori         t6, t3, -847
                  srli         s10, s5, 27
                  sltiu        sp, s4, 1329
                  add          t6, s6, t6
                  ori          s7, t1, 1316
                  xori         s9, s4, -838
                  xori         t4, t4, 170
                  or           s9, t3, s7
                  add          s1, a4, a1
                  add          a2, gp, t0
                  add          s5, a0, s8
                  nop
                  sltu         a1, s1, s2
                  addi         t5, zero, 296
                  nop
                  sra          s10, s0, t1
                  ori          t4, t6, -1383
                  sub          t6, s11, t3
                  srai         s7, s6, 0
                  andi         s8, s3, 1053
                  srl          a6, t4, a7
                  sll          gp, a7, s0
                  slti         a4, a7, -108
                  or           a5, a4, t0
                  sltu         a1, t0, t6
                  sub          zero, s7, s11
                  nop
                  lui          s7, 636955
                  andi         a6, a6, 1282
                  auipc        a6, 604344
                  auipc        s1, 274044
                  sll          t4, tp, t2
                  and          t1, s5, tp
                  or           s5, s3, t5
                  addi         a2, s7, 1674
                  nop
                  lui          s8, 823437
                  slti         a4, sp, -1403
                  sub          s11, a5, a7
                  slt          a4, s9, s7
                  srai         s7, s6, 15
                  nop
                  nop
                  ori          s9, a5, -413
                  ori          a5, a5, 1077
                  slti         t3, a3, 1278
                  sra          s7, a5, a1
                  slti         t3, s11, 246
                  add          a3, t4, t0
                  srli         s2, s5, 30
                  slti         a5, a4, -2014
                  and          tp, a1, s1
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           tp, 0x0
                  li           a2, 0x0
                  li           s3, 0xffffffff
                  li           s9, 0x80000000
                  li           a5, 0x0
                  li           s7, 0x80000000
                  li           s0, 0x1e1d593e
                  li           t4, 0x80000000
                  li           a4, 0x1a949002
                  addi         t3, s9, -1952
                  add          s3, s7, s3
                  auipc        s7, 351894
                  sub          s0, s3, t4
                  addi         a2, s3, 566
                  add          tp, a2, s7
                  auipc        s7, 552970
                  nop
                  add          t4, s7, t3
                  addi         a5, a4, -651
                  add          s7, a5, s7
                  sub          a2, t4, a2
                  auipc        a2, 1040787
                  add          a2, s7, a5
                  lui          a2, 442359
                  lui          tp, 309064
                  addi         s3, s3, -1608
                  auipc        s0, 889155
                  nop
                  addi         a2, a5, -548
                  auipc        tp, 209855
                  add          a5, t4, t3
                  add          s9, a5, tp
                  nop
                  lui          t4, 316106 #end riscv_int_numeric_corner_stream_18
                  srai         s10, s4, 12
                  sub          sp, t4, a3
                  xor          s7, tp, t2
                  auipc        s11, 110277
                  srl          s4, s7, s6
                  sub          s2, s8, a6
                  slti         t6, s7, -947
                  or           t5, ra, a3
                  slt          zero, a2, a3
                  andi         tp, tp, -168
                  sub          a1, s7, s5
                  andi         sp, s4, 1793
                  slti         t3, zero, 1316
                  slt          s10, s8, a7
                  sub          s7, tp, t0
                  add          zero, s3, s7
                  sltiu        tp, s0, -1776
                  or           s9, t6, t1
                  ori          a5, s11, 1021
                  sll          a5, s6, s2
                  slti         s1, a1, 947
                  srai         s10, a3, 5
                  sltiu        a1, a0, 627
                  addi         s0, a4, 237
                  srai         s5, t1, 19
                  or           t1, s3, t6
                  li           gp, 0xa9922e67 #start riscv_int_numeric_corner_stream_15
                  li           s3, 0xffffffff
                  li           s2, 0xffffffff
                  li           t6, 0x9ac89256
                  li           s9, 0x3acdfde
                  li           tp, 0x0
                  li           s4, 0x0
                  li           a3, 0x80000000
                  li           t2, 0x656dab71
                  li           s11, 0x806daac2
                  auipc        s4, 635190
                  nop
                  auipc        s9, 361693
                  addi         t2, s2, 436
                  addi         t6, s11, -1300
                  auipc        t2, 641352
                  addi         a3, s4, -1685
                  add          tp, s4, gp
                  nop
                  add          s3, s2, s11
                  lui          s2, 25380
                  add          tp, tp, tp
                  nop
                  auipc        a3, 348121
                  auipc        s9, 994408 #end riscv_int_numeric_corner_stream_15
                  sll          a4, s9, s3
                  slt          a6, a1, t5
                  sltu         s9, a5, s1
                  addi         s9, s11, -1285
                  sll          tp, a2, s9
                  sra          s5, a2, t2
                  srl          s10, a4, t3
                  add          ra, ra, s8
                  sub          s8, s6, s10
                  and          t5, t5, s0
                  addi         sp, a2, -31
                  auipc        t6, 776400
                  auipc        gp, 989739
                  add          a1, s10, a6
                  slli         a7, s11, 1
                  sltiu        t6, a1, 1221
                  srli         tp, a4, 17
                  slt          s9, t3, a0
                  sltu         s0, s2, s4
                  xor          s11, s0, a1
                  srli         t6, a5, 2
                  lui          t1, 729988
                  xori         s5, t2, 534
                  ori          t4, t0, 196
                  slli         a2, s5, 16
                  addi         s1, t6, -136
                  or           zero, s0, s3
                  sltiu        s1, sp, -1514
                  add          t5, s2, t3
                  slli         s2, zero, 9
                  lui          s4, 370674
                  auipc        s3, 170144
                  nop
                  addi         a2, a3, 1859
                  andi         s9, a3, -1092
                  srli         t3, s0, 11
                  addi         t5, s6, 667
                  auipc        a3, 322662
                  nop
                  srli         a2, s11, 22
                  or           s5, s6, s3
                  or           s10, s2, t3
                  xor          a1, a3, s11
                  sub          t5, t0, t1
                  sub          s7, s4, t2
                  sltu         t4, zero, a2
                  xori         s5, a6, 517
                  srai         t2, s4, 5
                  andi         a3, t5, 459
                  or           zero, s8, s9
                  add          ra, a6, s10
                  sll          a7, s2, s8
                  xori         t6, t4, -1102
                  srli         a5, a2, 29
                  srli         s5, a7, 31
                  and          zero, t4, a1
                  sltiu        s10, a6, -611
                  addi         s5, s3, 159
                  sltiu        s4, sp, -1283
                  ori          gp, a4, -229
                  auipc        a7, 37462
                  slt          t5, a2, t6
                  srai         s7, s9, 26
                  sub          gp, s2, a6
                  srl          a1, a3, zero
                  add          t4, s8, t6
                  nop
                  andi         tp, s3, -191
                  slt          zero, t1, t0
                  sub          gp, a7, s4
                  sltu         a7, t2, s2
                  sll          s4, s10, s2
                  sltu         s2, t5, zero
                  srai         a3, s8, 28
                  nop
                  sub          s10, t2, a1
                  slli         a7, a7, 0
                  srli         gp, t0, 16
                  sltu         a6, s7, s1
                  srli         a3, a5, 10
                  slti         s8, t0, 1533
                  and          t5, s11, a4
                  sltu         ra, a0, s5
                  slli         zero, s5, 8
                  srai         t5, a5, 27
                  andi         s5, s0, -1490
                  xori         s10, gp, 280
                  xor          a6, s8, t3
                  andi         zero, s3, -1153
                  slti         t6, s4, -1094
                  slt          a2, s9, s9
                  ori          s5, s0, 1599
                  srai         ra, s0, 25
                  auipc        s4, 726714
                  or           s10, a1, a3
                  srli         s2, gp, 17
                  sltu         s0, s9, a4
                  nop
                  slti         t6, s1, -367
                  slli         a5, a5, 3
                  ori          t6, t6, -1876
                  srl          zero, s1, a3
                  lui          s11, 461871
                  addi         s9, s11, 1407
                  and          s0, s9, gp
                  slli         a5, sp, 27
                  srli         a2, a6, 1
                  srl          a2, tp, s1
                  srai         t4, s10, 6
                  srli         t3, t0, 12
                  xor          sp, s0, a0
                  sll          t1, s0, t5
                  sltiu        a7, s7, -1009
                  addi         s3, s2, -1809
                  slt          s0, s2, s9
                  sub          a6, tp, t3
                  add          s1, s1, a4
                  srli         t5, s1, 11
                  lui          s0, 326494
                  lui          s4, 906759
                  or           a5, s10, zero
                  slti         s2, a7, 773
                  srai         s2, s7, 12
                  slti         t3, s4, -1222
                  sltu         t3, s11, sp
                  nop
                  srli         a2, tp, 3
                  add          gp, gp, t2
                  slt          s8, t6, s9
                  sll          a7, gp, a1
                  sub          gp, a6, t6
                  sll          a5, s2, s1
                  slt          a6, t5, t6
                  auipc        t6, 803404
                  slli         zero, tp, 13
                  sub          a2, s3, t2
                  sltu         s5, s9, gp
                  sra          s4, s10, s5
                  add          t5, ra, t4
                  xori         s9, s3, 621
                  sltiu        a3, s1, 484
                  xori         tp, sp, 547
                  sra          s2, s10, a0
                  sltu         s8, a0, a5
                  auipc        s2, 402865
                  xori         s9, s6, -1064
                  xor          t5, a4, sp
                  sltiu        a7, tp, -715
                  srai         a1, t0, 3
                  andi         s0, s3, -1562
                  slli         a2, a3, 3
                  andi         s2, a3, 1987
                  andi         gp, s9, -913
                  srl          s9, t4, ra
                  srli         t5, s6, 5
                  srai         s5, a4, 29
                  srai         t3, t5, 9
                  sra          a6, s4, a7
                  slt          t1, sp, s10
                  add          t3, a1, t3
                  slti         tp, a4, 1439
                  slli         zero, a0, 8
                  sub          s5, ra, a4
                  sra          s9, s10, a5
                  sltiu        s1, t0, 2007
                  add          ra, s2, t0
                  xor          a7, a5, s7
                  slli         sp, a1, 30
                  sra          s11, t4, a3
                  xori         a4, a3, -481
                  lui          t1, 911946
                  srai         tp, s9, 28
                  lui          a7, 144621
                  srai         tp, a6, 28
                  sltiu        t2, t4, 643
                  sub          a2, ra, t2
                  slti         gp, a3, 576
                  xori         t2, t2, -57
                  sra          s11, s6, t0
                  auipc        s0, 98380
                  slti         ra, s7, 666
                  auipc        zero, 431006
                  auipc        s9, 69400
                  srl          s4, t5, ra
                  sra          s1, s10, ra
                  andi         s4, s3, -248
                  slli         s7, a1, 14
                  srai         s10, s8, 14
                  slt          a6, s0, s5
                  xori         ra, s7, -1856
                  srli         zero, s8, 7
                  or           t1, t2, sp
                  or           a4, a4, s9
                  sub          t4, tp, s7
                  add          s9, s3, a4
                  nop
                  sltiu        a3, a5, 2031
                  sra          a1, t1, s7
                  lui          s2, 859346
                  slli         s0, t0, 0
                  slli         s5, a1, 1
                  xor          a7, gp, s0
                  ori          a6, t3, -92
                  sra          gp, s7, t5
                  sra          s2, s0, a7
                  sub          gp, a2, a4
                  slt          a3, a7, gp
                  slli         t6, s2, 29
                  and          zero, s3, a6
                  sll          a1, s10, s5
                  slt          t3, t3, t5
                  sltu         a6, t2, ra
                  slli         t4, t1, 24
                  xor          s10, a4, t2
                  sra          t5, s3, a6
                  nop
                  sll          t3, a7, a3
                  xori         s9, s10, -104
                  auipc        a2, 653238
                  srl          t5, a0, t0
                  nop
                  nop
                  and          a4, s8, s5
                  lui          t3, 744547
                  add          a2, a4, s9
                  andi         sp, s11, -166
                  ori          a5, s3, -831
                  srli         a6, a7, 1
                  andi         s10, sp, 1790
                  auipc        s3, 708808
                  add          t5, s2, s0
                  and          s10, sp, s0
                  srli         s3, s8, 15
                  xor          s2, a7, a7
                  sll          t5, gp, a2
                  srai         t1, s3, 24
                  and          tp, zero, s5
                  srl          t3, t4, s4
                  slli         s11, sp, 16
                  slti         s4, s7, -1537
                  auipc        t3, 575795
                  slt          s0, s5, s0
                  sll          s1, s3, s8
                  add          sp, tp, s10
                  or           s8, a5, t1
                  xor          tp, a7, s6
                  slt          a2, s5, a7
                  sll          tp, t3, gp
                  slti         tp, ra, -810
                  srai         s11, t0, 23
                  addi         t5, s8, 1851
                  slli         a1, t2, 25
                  add          s10, t2, t1
                  slli         zero, a4, 19
                  slli         a3, a7, 29
                  ori          ra, ra, 2028
                  srl          s5, a2, t4
                  xor          a5, s4, s10
                  sltu         s11, s6, sp
                  auipc        a5, 500748
                  sll          t1, a3, s4
                  sub          s7, a6, t6
                  sll          a5, a0, s8
                  slli         s7, t3, 1
                  slt          tp, a4, s6
                  nop
                  lui          a7, 915340
                  and          t6, a5, t4
                  andi         s4, a1, 256
                  ori          s10, s9, -335
                  sltu         s1, ra, s7
                  srai         a6, a4, 18
                  and          s2, s3, a3
                  xori         s11, t5, -125
                  srli         s5, a5, 20
                  srl          ra, t3, a6
                  and          s8, a4, a4
                  slti         t2, zero, -919
                  add          t3, s9, ra
                  and          s1, s7, gp
                  auipc        s2, 243930
                  sll          a2, s4, t5
                  sltu         s9, s1, a2
                  srli         ra, s10, 7
                  xori         t4, a4, -957
                  andi         gp, t5, -1473
                  auipc        a4, 154835
                  slli         t5, t3, 1
                  andi         t1, t5, -1628
                  and          a2, s9, a3
                  andi         sp, zero, 1139
                  sll          t5, tp, a5
                  addi         t1, s7, -1942
                  xori         s9, s10, -1773
                  add          t1, t2, s0
                  ori          t1, ra, -1379
                  andi         sp, sp, 1689
                  sltiu        s2, t0, 1008
                  sub          s3, s2, s10
                  sra          a3, a0, s9
                  lui          s3, 21919
                  lui          s9, 348539
                  and          a7, t5, t5
                  sll          a1, a3, t0
                  srai         s11, t6, 29
                  addi         t2, s11, 1611
                  slti         s10, s5, -998
                  xori         zero, a0, -1348
                  ori          s0, a6, -1520
                  or           s3, zero, s9
                  andi         s2, a4, 190
                  xori         a2, a6, -780
                  add          t5, a2, t3
                  srli         s11, s5, 27
                  or           s7, s11, s5
                  srli         s5, t6, 29
                  addi         a4, t4, -1578
                  add          tp, tp, s9
                  lui          s2, 242278
                  xori         s0, gp, -1776
                  xori         s5, s8, 1
                  lui          t6, 160508
                  sub          s4, zero, t3
                  xori         a7, t2, 515
                  sltiu        s9, t5, -951
                  sltiu        s2, t3, -551
                  slti         s11, t0, -1664
                  andi         a7, a4, 275
                  slt          s4, t5, a4
                  sra          s2, t2, a6
                  srli         s7, s4, 4
                  or           s9, t5, t2
                  slli         sp, a0, 16
                  lui          t5, 955891
                  addi         t1, a0, 950
                  sltiu        t5, s7, 1855
                  ori          a2, a0, -750
                  and          a6, s11, s10
                  auipc        s11, 209693
                  slli         a1, s8, 7
                  sltu         t1, a5, s3
                  srli         t4, t3, 20
                  sll          s3, gp, s8
                  slti         sp, t2, -118
                  srl          s0, gp, s5
                  auipc        s10, 799002
                  ori          a3, tp, -1410
                  srli         t1, s0, 20
                  sub          a5, t5, t0
                  and          a6, t5, a3
                  andi         a7, t6, -705
                  or           t5, t0, gp
                  andi         s1, s8, 1173
                  xor          s9, s3, t3
                  sltu         a5, t2, s3
                  ori          s8, ra, -421
                  xor          s8, a5, s1
                  srli         s4, ra, 23
                  srl          s10, t0, s8
                  sll          a5, a4, a0
                  slt          a6, zero, t6
                  srai         s9, t3, 9
                  xor          s8, a0, gp
                  slli         a1, gp, 21
                  srai         a1, s7, 31
                  addi         t4, a1, 343
                  slti         s2, s1, -1072
                  lui          t2, 266883
                  slli         t6, t0, 21
                  sra          s3, s2, s11
                  slti         t6, s1, -728
                  slt          a3, s8, s2
                  addi         t3, t2, -1119
                  auipc        s9, 943136
                  andi         a6, sp, 1000
                  sub          t2, a2, s4
                  srli         gp, a0, 27
                  slti         s3, s5, 56
                  add          gp, s11, t6
                  sub          sp, t6, s8
                  or           a6, s10, s4
                  andi         s3, t6, 815
                  sltiu        t3, a4, -1217
                  slti         sp, a2, -1976
                  addi         ra, s4, 138
                  and          t5, sp, gp
                  and          a3, a7, gp
                  sltiu        a3, t2, 1306
                  add          a7, t3, t6
                  srli         gp, t6, 16
                  ori          s10, t6, -936
                  sll          a7, zero, t0
                  srli         a7, s6, 28
                  nop
                  sltiu        zero, t5, 1866
                  srai         a3, zero, 28
                  xori         t3, zero, -2039
                  xori         s2, s2, -672
                  srli         s4, s2, 20
                  slli         t2, t6, 6
                  sltu         a4, ra, s1
                  sub          tp, t5, s10
                  auipc        a4, 442583
                  lui          s4, 205240
                  auipc        sp, 930900
                  ori          a3, s0, -1556
                  slli         t2, s2, 30
                  nop
                  xori         a3, a6, -306
                  srl          s3, t0, a2
                  slt          ra, s0, zero
                  xor          t6, s0, s0
                  xori         a5, a2, -444
                  srai         a1, gp, 6
                  and          a6, a3, t1
                  srli         s11, s6, 11
                  and          zero, a2, s8
                  addi         a3, a4, 1881
                  addi         ra, s4, 304
                  nop
                  slti         t1, a3, -1510
                  srli         s8, s4, 20
                  nop
                  addi         t3, a3, -1048
                  slli         t5, gp, 15
                  srai         t4, t5, 25
                  or           a7, a7, t2
                  and          s5, s11, s11
                  andi         s0, t0, 832
                  addi         t5, s11, -1353
                  sub          s11, ra, t0
                  sltiu        t6, a0, -605
                  sub          zero, s4, t5
                  sra          a3, t2, s7
                  and          s2, t1, s2
                  slti         ra, t2, -1550
                  add          t4, t3, a0
                  sub          zero, s7, s9
                  sub          t6, s9, s2
                  auipc        a5, 911900
                  nop
                  xori         s8, t2, 715
                  slti         a4, t2, -155
                  srli         s2, ra, 10
                  xori         s11, t4, -48
                  and          t4, s7, a7
                  andi         a4, s10, -1672
                  slt          zero, s4, t2
                  add          a5, ra, s8
                  ori          gp, s2, 1497
                  slti         s11, t3, 1503
                  sltiu        a4, zero, 1858
                  slti         a7, a5, 869
                  srl          s7, s2, t2
                  sltiu        s4, a6, 636
                  slt          s7, s11, a0
                  add          a1, t6, s4
                  sub          s8, t3, s5
                  srli         sp, s1, 20
                  xori         t5, a4, -1334
                  ori          sp, s7, -1792
                  and          s7, gp, s1
                  sra          s9, a3, a3
                  slli         a2, s3, 18
                  srl          sp, s5, s11
                  andi         a4, a3, -2020
                  slt          tp, s11, t4
                  sltiu        s5, s5, 361
                  slt          t1, t5, t0
                  slti         s1, zero, 1748
                  xori         s9, s1, 1354
                  xori         s9, t4, -133
                  xor          s8, s10, s1
                  sra          a7, t5, s8
                  sll          a4, a2, t6
                  xor          gp, a2, gp
                  slti         sp, a2, 2001
                  sltiu        t6, s9, 1324
                  sltiu        s2, a4, 262
                  slli         a1, zero, 17
                  auipc        zero, 684121
                  auipc        t1, 740556
                  add          t6, t6, sp
                  slti         a1, tp, -1850
                  xor          s10, t6, ra
                  sra          s2, a2, s8
                  sub          s0, t1, s2
                  srl          t1, s0, t1
                  addi         s8, a1, 1003
                  sll          t6, t2, t2
                  sub          s8, a3, s7
                  slti         a1, gp, -1009
                  xor          s2, sp, t0
                  auipc        s0, 550993
                  xori         a5, s6, 746
                  sltiu        a6, sp, 1725
                  slti         s9, a4, -120
                  auipc        gp, 1047630
                  lui          a2, 658701
                  sll          t6, a1, s5
                  slti         t2, a6, -637
                  sra          ra, sp, a1
                  slti         t1, a4, -906
                  slli         tp, t4, 12
                  nop
                  add          a5, s8, s11
                  or           s8, s4, gp
                  lui          s10, 993403
                  sltu         gp, a2, s4
                  sll          t3, gp, a1
                  add          a2, s4, t5
                  xori         sp, ra, -3
                  and          s1, tp, a3
                  xori         s11, sp, 1900
                  or           t3, a6, a4
                  srli         tp, s5, 21
                  slt          a1, ra, t3
                  sltiu        t6, s9, -1546
                  sll          s5, gp, s10
                  sll          ra, t0, t6
                  or           tp, s6, zero
                  auipc        s8, 35953
                  srai         s4, s11, 27
                  sltiu        t1, t6, 42
                  sltu         t2, sp, t5
                  sub          s5, tp, tp
                  slt          t3, s8, t1
                  sll          s3, a1, s10
                  lui          s1, 1035401
                  ori          gp, t5, 1867
                  slti         s0, a7, 1603
                  andi         s0, a3, -1008
                  sltiu        a2, t3, 1164
                  sltiu        t4, s2, -985
                  sll          a6, s3, gp
                  slti         a7, a7, 1028
                  nop
                  xor          t5, s7, s2
                  or           a3, ra, s1
                  slti         a7, t5, 1227
                  slt          t1, s4, s11
                  sll          t1, s4, a1
                  ori          t6, gp, -590
                  nop
                  andi         t4, s8, 1348
                  srl          tp, t3, a0
                  srli         a4, ra, 6
                  xor          ra, s7, a4
                  sra          a1, a3, s11
                  xor          gp, a0, s5
                  xor          t3, a0, ra
                  sltiu        sp, t3, 1822
                  srli         s3, s11, 2
                  sll          t1, a0, s1
                  add          t6, s4, s2
                  srl          s0, s1, a4
                  or           a3, tp, a4
                  sltiu        t1, a2, -1788
                  sltiu        gp, s10, -1639
                  sra          s8, t5, t4
                  slt          zero, a5, s11
                  andi         s11, s1, -543
                  slt          s3, s1, a7
                  sra          s4, tp, s5
                  slt          a3, a7, a1
                  auipc        a6, 729985
                  addi         a6, sp, -903
                  srl          zero, t5, s6
                  slti         a6, zero, 1247
                  lui          s0, 911498
                  add          a3, s8, s5
                  or           t5, s2, t2
                  slt          a4, s5, sp
                  lui          t2, 585946
                  slt          t1, s0, a5
                  srai         sp, s6, 3
                  sub          s0, t2, a7
                  xor          gp, a1, s11
                  srli         s3, a5, 21
                  lui          tp, 737082
                  sub          zero, zero, s5
                  lui          ra, 765421
                  srl          a7, t1, t5
                  nop
                  slt          t6, t1, a0
                  xor          a1, s9, s10
                  and          a6, t4, s8
                  and          tp, gp, t1
                  sltu         s1, zero, a2
                  sll          a7, s7, s6
                  slt          gp, s8, s0
                  sltiu        s0, a1, 336
                  slt          tp, t5, t6
                  nop
                  sll          a1, t3, a3
                  sub          s3, s5, ra
                  srai         t1, t4, 20
                  or           a5, a2, a2
                  nop
                  xor          t6, sp, t6
                  lui          a5, 576935
                  srai         s0, a5, 3
                  sltu         sp, zero, gp
                  xor          a3, a4, t5
                  nop
                  xori         a7, s10, -1946
                  sltu         s4, s0, ra
                  sll          t4, s0, s9
                  auipc        t2, 113762
                  addi         s1, a7, 724
                  andi         s3, s5, 453
                  auipc        s10, 650779
                  xori         gp, t1, 1071
                  addi         s3, a3, -25
                  auipc        a3, 864992
                  auipc        tp, 1041822
                  slli         t5, a0, 7
                  slt          t4, s9, s3
                  sltiu        t5, a1, 940
                  auipc        s1, 755742
                  sltiu        s4, a5, -936
                  xori         ra, a3, 1091
                  auipc        a6, 898117
                  srl          s10, sp, t4
                  slli         s10, t2, 26
                  srai         a7, s2, 28
                  and          gp, s4, s4
                  srai         a1, a1, 20
                  nop
                  slt          t4, zero, s5
                  slti         a1, s8, -1221
                  slt          a4, sp, t5
                  or           t6, t6, s2
                  xori         t6, t4, 1194
                  nop
                  and          a2, a4, sp
                  ori          zero, a2, -170
                  srli         t2, s2, 7
                  and          s2, s11, s1
                  lui          s8, 725848
                  andi         tp, a3, -831
                  addi         s4, s4, -521
                  sltu         s9, s10, t4
                  xori         t5, a7, -925
                  sub          a2, s3, gp
                  srai         t2, s0, 19
                  sltiu        s4, zero, -32
                  and          ra, t6, s4
                  andi         s10, s2, 680
                  addi         s11, a4, -448
                  sltiu        t3, t2, 190
                  xor          s11, ra, s5
                  sltu         a2, tp, s4
                  ori          zero, t5, 1005
                  srl          s8, s6, t0
                  slt          s8, s10, s7
                  slti         s4, a6, 1021
                  andi         s7, a0, -1452
                  sra          s2, t0, s3
                  sub          s5, gp, s6
                  or           zero, zero, zero
                  xor          a1, s2, s10
                  srl          s7, t1, a0
                  srl          s11, t2, zero
                  srl          s0, t6, a2
                  and          a4, t5, a0
                  add          s3, a4, t5
                  add          a7, a5, s10
                  lui          tp, 299538
                  sltu         gp, sp, s8
                  slli         s2, s8, 16
                  or           a7, a3, a1
                  srli         s1, s0, 7
                  srli         s8, s5, 26
                  add          t4, ra, gp
                  sll          a4, ra, sp
                  sra          t2, s4, s7
                  and          tp, sp, tp
                  sll          s11, s11, s5
                  lui          s1, 160176
                  slti         s4, s5, -609
                  srai         s0, a1, 27
                  sub          t6, sp, ra
                  or           s3, s9, t2
                  slli         a7, s10, 24
                  xori         zero, zero, -142
                  or           s2, gp, s2
                  xori         t6, a7, 1375
                  slt          t6, t6, s10
                  and          s11, a0, s7
                  slt          gp, t6, gp
                  sll          s3, a6, a1
                  sltu         t1, s3, gp
                  xori         s11, t5, -1397
                  auipc        a3, 633680
                  auipc        s1, 968577
                  srli         t6, t5, 13
                  sra          s8, zero, tp
                  lui          s2, 101694
                  andi         s3, s0, -1320
                  slt          a5, s3, s7
                  slt          zero, s10, t6
                  srai         zero, t4, 2
                  andi         t6, t2, 1990
                  xori         s10, s3, -241
                  lui          t2, 716457
                  sra          a5, s9, s11
                  and          s8, t4, t0
                  sll          a6, t0, t2
                  or           ra, t5, s9
                  sltu         s10, gp, s3
                  srli         s5, a1, 6
                  slti         a7, s0, 908
                  sub          s2, s0, a2
                  and          a3, s11, zero
                  slti         a4, t0, -827
                  sltiu        t4, s10, -1772
                  and          a1, s7, a3
                  auipc        s8, 776493
                  nop
                  andi         sp, s0, -1307
                  add          t4, t2, a0
                  sltu         s5, sp, t5
                  srli         s9, s7, 6
                  auipc        s3, 571293
                  srli         t6, s7, 16
                  add          s3, zero, s1
                  slt          t1, s3, s6
                  sltu         ra, a7, t5
                  slli         gp, s8, 17
                  or           s4, a7, t4
                  add          t4, a6, sp
                  lui          gp, 548299
                  or           t6, s6, t3
                  slt          gp, a1, zero
                  srli         sp, s3, 3
                  xor          t3, a5, a5
                  slt          t2, s0, t3
                  slt          s5, s8, s3
                  and          a2, a0, t1
                  and          s10, t0, a1
                  sltiu        t2, t2, -674
                  slli         a5, t5, 4
                  lui          s10, 276642
                  and          s0, s5, t1
                  sltiu        s8, t2, -1265
                  nop
                  lui          t6, 721561
                  sll          t6, a2, gp
                  sltiu        t5, s5, -1957
                  xor          ra, sp, s3
                  addi         ra, t4, -1439
                  nop
                  slt          s11, s1, t0
                  addi         t3, sp, -594
                  sll          zero, t5, a0
                  or           s7, sp, s0
                  andi         tp, s11, 248
                  sltiu        s11, ra, 1695
                  and          a7, t2, a0
                  xor          a6, s6, zero
                  slli         a6, gp, 8
                  andi         a7, s7, -1410
                  xori         sp, sp, 947
                  nop
                  srai         t6, s2, 18
                  srl          a7, s10, s1
                  addi         gp, t2, 1851
                  ori          gp, t4, -1346
                  slti         a6, s2, -251
                  lui          zero, 26743
                  xor          t4, t5, s8
                  sra          s8, s1, gp
                  slti         s0, a6, 1677
                  slti         a6, s9, 964
                  sra          a1, s11, s3
                  srl          s11, s9, a2
                  sra          a5, s9, a3
                  and          a4, t6, zero
                  xori         sp, a4, 207
                  auipc        s0, 888989
                  sub          a5, a4, s10
                  and          s4, s9, t4
                  xor          t4, a1, s10
                  lui          s10, 75960
                  sll          s5, s10, s4
                  srl          ra, s4, a2
                  sub          s2, s5, s6
                  or           a5, s10, s0
                  auipc        s9, 21945
                  sub          zero, a2, t5
                  srai         ra, s6, 12
                  xori         a3, zero, -1862
                  auipc        a2, 506917
                  slli         t2, sp, 4
                  slti         a5, s4, -521
                  srli         s1, s10, 13
                  or           t5, a5, sp
                  or           t2, ra, s3
                  srai         ra, a7, 10
                  slti         ra, ra, -328
                  lui          a1, 172184
                  and          t6, s7, s6
                  auipc        gp, 571735
                  auipc        s11, 534210
                  srli         s5, a1, 3
                  lui          a1, 1017016
                  xori         a5, a7, 1979
                  andi         sp, a3, 7
                  srai         a6, s4, 25
                  andi         a3, a2, -1304
                  sub          s1, s1, s8
                  slli         s10, a7, 28
                  sra          a7, sp, a2
                  ori          a1, s10, 43
                  nop
                  or           a6, t2, s0
                  sub          s8, s7, s10
                  add          s7, t1, s0
                  lui          a2, 555347
                  srli         t4, a3, 10
                  sll          s9, t0, tp
                  sra          t2, tp, t3
                  or           t4, t3, a3
                  sltu         s9, ra, s10
                  xori         t1, s6, 1376
                  xor          s8, tp, a2
                  sltiu        s8, s11, 1094
                  slti         a4, ra, -2021
                  xori         sp, a5, -403
                  addi         s10, s0, -1176
                  sub          s9, t6, a4
                  nop
                  or           t6, a2, s11
                  srl          tp, s7, a5
                  slli         s1, t1, 1
                  lui          s10, 315801
                  nop
                  sra          s3, s9, t3
                  sltu         a7, a0, gp
                  srl          s7, t1, a4
                  sra          a7, sp, s2
                  srli         gp, a5, 2
                  or           s11, t6, s7
                  or           a6, s3, s6
                  xori         tp, s11, -1604
                  ori          a5, t5, 1043
                  lui          t4, 328479
                  addi         a3, s9, -1681
                  and          s4, ra, sp
                  slt          t3, a6, a3
                  srl          s9, zero, a2
                  lui          a1, 766417
                  srl          a4, s4, zero
                  lui          gp, 670052
                  or           s7, t5, s8
                  sll          a2, s2, s11
                  xori         a2, s11, -1627
                  lui          s5, 594595
                  srl          a3, a0, s4
                  or           s8, s10, s7
                  slt          a7, s4, t0
                  sra          a5, s5, a7
                  srl          a2, s6, t4
                  srl          s8, s10, gp
                  auipc        tp, 360795
                  srl          s2, t5, s6
                  sll          ra, tp, a3
                  sltiu        gp, t2, 1272
                  sltiu        t6, a5, 1120
                  slt          s10, t6, t5
                  sll          s3, t3, s11
                  srai         s2, s8, 12
                  and          sp, a3, a6
                  lui          t4, 489888
                  sub          a5, s7, sp
                  slli         zero, ra, 6
                  srli         a6, zero, 28
                  auipc        s9, 735903
                  slli         a7, a0, 14
                  sub          s1, t1, s7
                  srl          a1, s6, a5
                  sltu         s10, t3, ra
                  sll          s9, t6, a1
                  lui          s10, 973481
                  xor          sp, s10, s6
                  sltiu        zero, t0, -1722
                  or           s3, s1, sp
                  andi         s2, s1, 1368
                  slti         a6, t4, -1121
                  sltiu        a5, a3, -1779
                  slli         a7, t1, 28
                  srai         t4, a0, 14
                  slt          t6, t3, a7
                  srl          t3, a2, t1
                  or           s5, a3, s0
                  slt          t4, ra, t0
                  addi         a5, s0, 1220
                  srai         a7, s5, 3
                  sub          zero, a7, a4
                  add          a6, a0, s7
                  sll          a4, s0, gp
                  or           t6, gp, a4
                  sltu         s8, s11, a2
                  ori          s5, t3, -543
                  sltiu        s4, a0, 17
                  xor          zero, t2, s0
                  ori          t4, tp, -619
                  ori          tp, s5, -541
                  xori         t4, zero, 332
                  slli         t4, sp, 21
                  andi         s11, s4, -539
                  add          s11, a7, s9
                  sub          s2, s8, t3
                  or           t3, t4, s5
                  nop
                  slt          s3, a3, a4
                  or           zero, t5, a0
                  slti         gp, t2, -135
                  slti         t1, s2, 950
                  andi         a4, a1, 1609
                  lui          s8, 596889
                  sub          s9, s0, a3
                  slt          t5, a4, zero
                  and          ra, t0, s11
                  or           s5, a0, a5
                  sltiu        s2, a2, 636
                  and          a3, a0, s3
                  srli         a1, t5, 1
                  slt          s2, tp, a1
                  sltiu        s10, a0, 970
                  add          s3, t4, s10
                  auipc        a3, 281555
                  auipc        a7, 74248
                  srl          a7, t5, s8
                  sltiu        a2, a2, -1540
                  and          s8, t2, s10
                  sltiu        a5, t3, -985
                  xor          s8, t4, sp
                  addi         ra, t5, 1802
                  slt          a6, sp, s6
                  nop
                  sltiu        ra, a5, 1885
                  andi         a4, a3, 1068
                  and          a6, s1, a1
                  slli         tp, s6, 24
                  ori          t5, tp, -15
                  auipc        t6, 270790
                  and          gp, s4, t1
                  srai         tp, a0, 7
                  sub          t6, s8, a0
                  xori         s0, s7, -1642
                  nop
                  ori          t6, a0, -497
                  slti         sp, t4, 1933
                  add          s11, a7, s11
                  sltiu        tp, a7, -1754
                  srli         s8, ra, 1
                  ori          s1, s2, -687
                  sll          a1, a4, s1
                  add          s1, sp, t0
                  slt          s4, a3, s1
                  sltu         s5, t0, s4
                  andi         t6, s9, 483
                  xor          t6, ra, a5
                  add          a1, gp, ra
                  andi         a5, s0, 1228
                  or           gp, sp, t2
                  lui          s0, 244911
                  slti         a6, t6, 1784
                  and          s9, s4, a5
                  srai         s11, t1, 2
                  srl          a4, sp, t6
                  srai         tp, ra, 15
                  sra          s10, a1, ra
                  xori         t5, ra, 790
                  slti         s9, a7, -2036
                  and          sp, a2, ra
                  andi         s10, a0, 161
                  auipc        s10, 104870
                  nop
                  srai         a2, a3, 8
                  auipc        sp, 844266
                  addi         t4, s2, 260
                  srli         a3, a4, 7
                  sll          a3, a1, sp
                  lui          s0, 889564
                  sltu         t1, a7, s0
                  xori         zero, t3, 1727
                  srli         gp, t4, 12
                  and          t5, a5, a2
                  slt          a3, s1, s10
                  addi         a3, s0, 1372
                  or           a4, zero, s4
                  sltiu        ra, s0, -1073
                  nop
                  sltu         sp, a0, s3
                  ori          t4, a4, 1853
                  xor          s1, t0, t1
                  slti         t6, s10, -1704
                  sltiu        t1, a4, 1295
                  nop
                  sltu         ra, s2, s4
                  andi         a6, ra, 1838
                  sltiu        gp, sp, -1332
                  auipc        zero, 538066
                  auipc        t2, 936049
                  addi         s5, s0, -1400
                  sltu         s9, a2, t0
                  srai         s3, s5, 1
                  xori         t5, s5, 1815
                  lui          t2, 352965
                  nop
                  slt          s11, s7, s11
                  srl          s10, t0, s7
                  nop
                  lui          ra, 52228
                  andi         s8, s1, -145
                  or           t2, tp, s7
                  nop
                  sltiu        t4, s11, -1486
                  sra          s0, s3, s9
                  srli         s5, t3, 19
                  srli         t2, zero, 16
                  slt          s7, s2, s5
                  sltiu        s10, a3, 1377
                  slt          ra, gp, t0
                  addi         a5, s6, -1135
                  nop
                  lui          s3, 987244
                  or           t5, t0, s5
                  srai         s0, s3, 0
                  srli         a1, s7, 15
                  auipc        s1, 1008128
                  lui          a4, 720363
                  or           gp, s6, s10
                  srli         a6, t4, 30
                  sub          t1, s2, s2
                  xor          s11, t3, a0
                  andi         t6, s11, -1279
                  srai         a4, a6, 28
                  sltiu        s11, t6, -1635
                  sub          s8, t6, s4
                  sltiu        s2, s3, 1031
                  or           tp, a5, s10
                  sra          s7, s0, s11
                  lui          a3, 857773
                  srli         s5, s2, 11
                  sub          s4, a5, t0
                  nop
                  addi         t1, a4, 719
                  ori          t3, s2, 754
                  sltiu        a5, t4, 1118
                  addi         sp, t3, -679
                  sltiu        t5, a1, -2016
                  srl          s5, s5, tp
                  auipc        s7, 637711
                  xor          gp, s3, t2
                  andi         ra, s2, 1983
                  slli         ra, zero, 13
                  xor          s0, s11, s6
                  lui          tp, 989111
                  sltiu        t4, a2, -1181
                  xor          t5, t6, a0
                  xor          s3, s0, s3
                  srli         a2, t0, 23
                  sltiu        s2, a1, 476
                  li           s4, 0x735d874b #start riscv_int_numeric_corner_stream_17
                  li           s2, 0x8f9b189e
                  li           sp, 0x80000000
                  li           t3, 0x80000000
                  li           t1, 0x0
                  li           s8, 0x0
                  li           a4, 0x0
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           s9, 0x0
                  nop
                  nop
                  sub          t1, sp, t3
                  add          sp, a5, s4
                  auipc        s9, 520420
                  nop
                  lui          a5, 509233
                  lui          sp, 671830
                  auipc        t3, 945900
                  add          t3, sp, s4
                  nop
                  auipc        a4, 690631
                  auipc        a5, 137561
                  nop
                  add          a5, s7, t3
                  addi         s2, sp, -1795
                  add          s9, s2, s2
                  nop
                  addi         s4, s7, 1834
                  auipc        s2, 761288
                  nop
                  nop
                  sub          a4, s9, s2
                  lui          t3, 71449
                  add          s9, a5, s4
                  addi         a5, sp, -1409 #end riscv_int_numeric_corner_stream_17
                  auipc        s8, 238912
                  sll          zero, s5, a3
                  sub          t5, s8, gp
                  and          ra, a2, zero
                  slli         gp, s1, 11
                  addi         a3, s5, -558
                  auipc        tp, 290247
                  and          a3, ra, a6
                  sltiu        s4, t2, -171
                  slti         s4, t4, 1650
                  srai         a1, s1, 2
                  sll          a5, s11, t1
                  sra          a3, t5, s3
                  sub          s9, s8, a4
                  slli         s7, s11, 21
                  addi         s0, a5, 2028
                  auipc        t4, 225817
                  sra          t4, a5, t1
                  sra          t5, a2, a1
                  add          s7, s8, s7
                  and          tp, s9, s11
                  sll          sp, s11, a1
                  sltiu        t2, sp, 567
                  auipc        s3, 579384
                  xori         s11, a6, 465
                  sll          s10, sp, s11
                  auipc        s7, 809724
                  lui          t4, 726281
                  slli         a6, t1, 19
                  srai         a5, s4, 18
                  sub          s11, t5, sp
                  slt          t3, t6, a5
                  slti         t2, gp, -96
                  nop
                  lui          s1, 785770
                  or           sp, s5, s1
                  and          zero, t1, t0
                  and          a1, a1, s10
                  xor          tp, tp, s3
                  add          t1, s4, s3
                  auipc        t3, 249104
                  sltiu        tp, s0, -762
                  slli         t5, t2, 9
                  slti         a6, s11, -688
                  and          sp, a1, a7
                  lui          a5, 739146
                  slt          t1, t4, s2
                  auipc        s0, 759146
                  slt          t4, t3, s9
                  srai         gp, t5, 19
                  lui          a7, 357720
                  xor          s7, s6, a4
                  slt          s2, t1, t1
                  andi         s9, t4, 201
                  slti         s1, s9, -1128
                  ori          s2, s4, 1238
                  ori          s11, s1, -795
                  ori          t2, ra, 1949
                  slli         a7, a5, 24
                  srai         s4, s1, 25
                  srai         a6, t3, 16
                  srai         s10, a0, 1
                  sll          t4, s5, s9
                  lui          s2, 148012
                  slli         s8, gp, 3
                  sra          gp, a0, t1
                  nop
                  lui          a3, 783738
                  srli         t3, t6, 17
                  ori          s10, s4, -2000
                  srli         s7, t0, 26
                  srai         s3, a5, 25
                  srai         t3, s2, 5
                  or           t4, t6, a1
                  sub          a5, a4, t6
                  sltu         t5, s2, s6
                  sll          gp, a7, s5
                  srl          a4, a6, s1
                  sll          t5, ra, a1
                  srai         a1, ra, 28
                  ori          s10, t0, -852
                  ori          a2, a0, -525
                  srli         s4, t3, 14
                  nop
                  and          tp, s4, gp
                  nop
                  or           s3, s0, zero
                  xor          t6, s1, t3
                  slli         gp, a3, 1
                  lui          a1, 113309
                  xori         s9, t0, 784
                  xori         t5, a5, 652
                  addi         a4, gp, -1070
                  xori         t2, t3, 303
                  srl          s1, s1, s4
                  ori          t4, sp, 1572
                  srl          t6, ra, s5
                  sltu         s1, s3, s1
                  sltu         sp, a2, a2
                  sra          s3, t4, a3
                  srai         ra, a1, 30
                  nop
                  sra          gp, s8, t5
                  slt          a2, s3, t6
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           t1, 0x7a857a65
                  li           s1, 0xffffffff
                  li           t3, 0xffffffff
                  li           a5, 0x0
                  li           t4, 0x80000000
                  li           t5, 0xffffffff
                  li           s8, 0xffffffff
                  li           s0, 0x99ec0019
                  li           s2, 0x0
                  lui          s8, 378058
                  lui          s2, 132101
                  lui          t3, 113753
                  nop
                  lui          t3, 914645
                  add          s8, t4, t1
                  nop
                  lui          t1, 829200
                  nop
                  sub          a5, t3, t1
                  sub          s1, t1, t5
                  nop
                  auipc        t3, 921161
                  addi         a5, s0, 1658
                  lui          a5, 320891
                  add          s2, s8, t4
                  sub          t5, s0, a5
                  addi         s8, t1, -1824
                  nop
                  sub          t3, t5, t4
                  addi         t3, s8, -1823
                  auipc        t5, 295095
                  auipc        s1, 789038
                  nop
                  nop
                  addi         s0, t4, 1524
                  add          t1, a5, s0
                  addi         a5, s1, 433 #end riscv_int_numeric_corner_stream_19
                  add          a1, a6, t6
                  slli         t6, s10, 22
                  or           zero, t2, s11
                  sltiu        s7, s10, -1732
                  ori          ra, s11, 155
                  srai         t5, a2, 17
                  ori          a1, sp, 425
                  sub          tp, s10, a2
                  auipc        s0, 601277
                  slli         a3, t6, 28
                  or           s4, tp, a2
                  sra          s3, t0, t2
                  and          tp, a0, t6
                  sub          s4, s5, zero
                  or           s1, a4, ra
                  ori          s9, t5, -1902
                  srl          t3, a3, gp
                  auipc        sp, 741203
                  ori          s10, s10, -1344
                  add          t3, s9, s2
                  nop
                  ori          t6, tp, 1942
                  sub          tp, a0, s9
                  addi         s3, t6, -768
                  slt          s4, s5, s3
                  slt          a4, t5, s3
                  xori         s11, a4, -1271
                  xori         s1, t5, 985
                  slti         t4, tp, -642
                  auipc        t2, 205886
                  sra          s4, t6, a0
                  ori          s3, a7, 699
                  srl          t5, a6, s2
                  srl          a5, s8, s10
                  lui          t1, 436177
                  andi         a4, t4, -316
                  srai         s8, a4, 20
                  sltiu        t1, s3, -1810
                  or           s5, s1, t5
                  srli         a1, a2, 26
                  and          t2, s8, t3
                  srli         s11, t6, 9
                  sra          ra, s0, s9
                  srli         tp, t3, 21
                  ori          a2, s8, 869
                  sltu         t4, a1, a2
                  nop
                  auipc        s11, 574914
                  srli         a6, a7, 14
                  sltiu        s11, tp, 386
                  xor          s4, s9, s4
                  srl          a6, t6, s8
                  slli         s11, t5, 10
                  xori         a5, a1, 193
                  srli         a3, s0, 15
                  or           a2, sp, s3
                  xori         a2, t0, 2001
                  sll          a6, a3, a4
                  sra          a1, t0, a1
                  xori         a7, t3, 1877
                  sltiu        tp, t1, -790
                  srai         s7, s0, 19
                  srai         s4, s7, 4
                  sra          a6, a6, t1
                  or           s8, a5, s4
                  lui          ra, 877577
                  sra          t6, t5, s10
                  srl          s0, t5, a4
                  sll          s8, s11, s6
                  xor          s8, ra, tp
                  slli         s0, s0, 31
                  add          s4, a3, s10
                  sltiu        s4, t0, 472
                  auipc        s8, 707292
                  slti         t6, a0, 1909
                  add          s10, t5, ra
                  sra          t1, a3, t3
                  xor          a7, a4, t6
                  addi         t3, t0, 93
                  andi         t5, tp, 418
                  srl          t6, s0, t1
                  and          s7, s9, s7
                  srai         zero, t2, 29
                  xori         t2, t5, 1637
                  sll          s0, a1, a0
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0xffffffff
                  li           tp, 0x5bd00d08
                  li           s5, 0x0
                  li           s3, 0x0
                  li           s11, 0x80000000
                  li           s2, 0xffffffff
                  li           t3, 0xffffffff
                  li           a1, 0xffffffff
                  li           s9, 0x729b980f
                  sub          tp, t1, tp
                  sub          s3, a1, s11
                  auipc        tp, 436746
                  add          s1, t1, t1
                  lui          t3, 886839
                  lui          s9, 106701
                  sub          s9, t1, t3
                  nop
                  addi         s5, t1, 109
                  lui          s5, 691828
                  add          s1, a1, s5
                  auipc        s1, 874412
                  auipc        s3, 134063
                  lui          s11, 935149
                  nop
                  sub          a1, s2, s3
                  nop
                  lui          s5, 826756
                  sub          s5, s5, s11
                  sub          s11, s3, t3
                  lui          s1, 726958
                  addi         s5, s9, 1505
                  lui          s3, 888379
                  addi         s3, tp, 1980
                  auipc        s2, 993860
                  add          tp, s2, s11
                  nop #end riscv_int_numeric_corner_stream_11
                  xori         a7, sp, -127
                  slt          s7, a1, a2
                  srli         s4, a3, 16
                  addi         a4, a5, 1005
                  addi         a2, s11, 385
                  and          a4, s8, s3
                  andi         t5, t0, 2003
                  slt          s3, s7, s7
                  xori         tp, t4, -1972
                  sltu         gp, t4, s5
                  add          a2, s1, s4
                  srli         t2, ra, 2
                  addi         s7, a5, 1519
                  lui          s5, 401735
                  slli         zero, s3, 11
                  lui          a1, 10570
                  lui          a2, 862726
                  andi         a3, t0, -1914
                  lui          s1, 906769
                  srli         a6, a3, 28
                  addi         a3, gp, -469
                  nop
                  xori         a4, s11, -318
                  andi         a5, a0, 122
                  srli         s2, s9, 28
                  nop
                  xori         t5, a4, 677
                  xori         s4, s4, 309
                  slti         zero, s7, -1882
                  andi         t4, tp, 1776
                  sltu         ra, s7, t1
                  slt          a1, t3, s2
                  xori         s11, s11, 1001
                  slli         s8, a0, 23
                  auipc        s7, 798718
                  ori          s9, a5, -249
                  xor          s10, t2, t2
                  lui          a1, 962947
                  auipc        s5, 497411
                  srl          s3, t4, s8
                  addi         a7, t0, 489
                  sltu         zero, s0, a2
                  or           s8, s10, a6
                  sub          ra, a1, a4
                  add          t1, s0, s2
                  andi         a1, a6, -57
                  lui          a1, 393768
                  or           s3, a5, ra
                  slt          s1, a6, s3
                  sub          zero, s9, zero
                  addi         ra, s2, -527
                  xori         s4, s5, 75
                  andi         s5, zero, -1556
                  srai         t5, a1, 8
                  lui          ra, 407384
                  sltu         a1, s7, a3
                  srli         a3, a6, 30
                  nop
                  andi         s11, a7, 87
                  auipc        a4, 1047955
                  addi         s1, a7, 253
                  ori          s1, s2, -789
                  sll          a5, s9, s11
                  sltu         s7, a3, s3
                  add          sp, zero, ra
                  ori          t2, s6, -1499
                  nop
                  sra          s3, tp, gp
                  sltiu        s2, t3, 995
                  sll          a7, s7, t4
                  xor          s7, t3, ra
                  add          t2, t2, sp
                  srli         s7, a4, 11
                  srli         sp, s6, 26
                  addi         s0, t5, 1668
                  addi         s7, ra, 1955
                  xori         a7, t0, 1949
                  auipc        s1, 788367
                  srl          s11, tp, s6
                  xor          t6, a5, tp
                  ori          t1, t4, 1654
                  srai         a4, s4, 15
                  sll          s11, a5, s10
                  slti         s1, gp, 909
                  sra          s1, t0, s3
                  srai         a4, t6, 7
                  sltiu        sp, a1, 771
                  andi         t6, a1, -1233
                  sll          a1, s11, a7
                  sll          s2, t4, a2
                  sub          ra, t0, a3
                  sll          a4, t4, ra
                  add          a4, t3, s0
                  slti         a7, a0, -976
                  srai         tp, t4, 12
                  nop
                  xori         s5, t2, -1138
                  sltiu        gp, s9, -2015
                  andi         t2, a7, -1555
                  nop
                  srai         zero, ra, 22
                  xori         s8, gp, 1820
                  srai         t3, s3, 17
                  nop
                  sub          t4, t1, s7
                  sltiu        s7, s1, 1461
                  srl          s9, s4, s9
                  lui          s4, 943973
                  sra          a7, a5, a2
                  srai         s3, zero, 15
                  slti         s9, a2, -1294
                  andi         ra, a3, -1783
                  slt          s11, t6, s9
                  lui          t5, 112956
                  nop
                  xori         a3, t1, 1531
                  lui          a5, 137019
                  srl          s3, t6, zero
                  and          s0, a2, s2
                  sll          s3, t3, a7
                  and          s4, s0, a7
                  srl          s7, a7, sp
                  sltu         s3, t1, tp
                  ori          a3, t5, -621
                  xor          s1, a5, a1
                  xor          s1, a6, s10
                  sltiu        zero, a4, -1042
                  add          s5, sp, a7
                  lui          s3, 1047208
                  sltu         s10, ra, a4
                  andi         s2, a4, 1665
                  srli         zero, ra, 10
                  nop
                  nop
                  ori          s10, t5, -407
                  srli         a6, t2, 24
                  slti         sp, s0, -1310
                  xor          s11, s6, t5
                  sra          a4, a2, s8
                  srai         s2, a6, 13
                  xori         s9, gp, -51
                  sub          t4, ra, a3
                  sll          gp, s3, t3
                  srai         s8, a3, 5
                  srl          s11, s1, a7
                  addi         a7, a6, 30
                  slt          a5, t6, s1
                  nop
                  ori          a7, s4, 1994
                  sub          t4, a0, gp
                  sll          tp, s0, tp
                  andi         a6, t4, 1238
                  add          s7, s1, a3
                  addi         s9, t3, -169
                  sra          t6, sp, t1
                  xori         s11, s0, 1461
                  and          sp, s4, ra
                  sub          s11, t3, gp
                  auipc        s5, 102555
                  add          a2, a5, a4
                  addi         s4, s4, -21
                  xor          gp, s6, s11
                  andi         a3, a1, 879
                  lui          t3, 816018
                  sltiu        tp, s0, -1419
                  xori         a2, a5, 324
                  sra          ra, t4, s5
                  auipc        t3, 714349
                  srl          t1, a7, t3
                  slt          a4, t6, zero
                  sub          s1, s8, s2
                  xor          t1, s5, ra
                  xori         gp, tp, -490
                  sltu         a6, s0, s1
                  srl          s7, t2, s0
                  andi         sp, t3, -781
                  and          s0, t0, s1
                  and          a6, ra, t4
                  sra          a1, t0, s8
                  sub          t1, a4, a5
                  addi         ra, t6, -1023
                  add          s7, s9, a2
                  sra          t5, a1, sp
                  slti         s5, s7, -378
                  xori         a3, t2, -1935
                  nop
                  sub          a4, a2, zero
                  auipc        t2, 609764
                  auipc        s0, 515177
                  add          t6, a6, s1
                  sll          tp, t2, a7
                  and          a3, zero, t5
                  addi         s9, s8, -712
                  sltiu        t3, s10, 10
                  slti         s4, s4, -1148
                  sra          s3, ra, s1
                  srli         a5, s3, 8
                  addi         t2, s0, -352
                  auipc        tp, 548430
                  and          t5, t4, a1
                  srli         a5, s3, 16
                  slt          a2, s3, t5
                  or           s1, a6, a5
                  sra          s10, a7, t5
                  add          a4, s6, s7
                  ori          t5, sp, 221
                  sub          s1, a1, a1
                  auipc        t4, 457042
                  andi         a3, a7, 1070
                  srl          s7, sp, s3
                  ori          ra, s2, -1268
                  srl          a3, s0, a7
                  srli         s4, s9, 25
                  sltiu        t2, sp, -1088
                  nop
                  addi         s8, t1, -1170
                  auipc        s4, 466434
                  sub          s2, a2, s8
                  nop
                  lui          a3, 824703
                  srli         sp, a0, 24
                  sra          sp, t2, s10
                  srli         s9, a1, 22
                  xori         s0, s6, -62
                  srl          gp, ra, gp
                  auipc        s7, 475194
                  or           zero, a7, a0
                  slli         s10, s9, 4
                  andi         s4, ra, 83
                  slti         tp, s2, 933
                  sub          a7, s6, s3
                  sltiu        s5, s9, -1929
                  add          t1, sp, sp
                  and          a7, a2, s0
                  and          tp, s5, t6
                  auipc        tp, 890012
                  xori         a6, a3, 1396
                  lui          a1, 958836
                  or           s3, s2, t5
                  xor          sp, s7, a0
                  auipc        s11, 130102
                  srl          a2, ra, s11
                  add          a2, ra, s4
                  slti         t1, a3, -459
                  and          gp, a2, s2
                  auipc        t6, 975003
                  sltu         sp, zero, s2
                  lui          t2, 3158
                  auipc        a4, 392340
                  ori          t3, t2, -1527
                  nop
                  srai         sp, a5, 16
                  auipc        s8, 651335
                  nop
                  srai         t3, zero, 13
                  or           a2, t6, sp
                  srl          t2, s2, s0
                  and          a4, s1, t2
                  sra          a2, s10, ra
                  sub          s11, a7, tp
                  xori         t6, t1, 1014
                  srl          a2, t0, s3
                  srl          t6, a4, t1
                  slti         zero, zero, 240
                  srli         t3, a5, 13
                  add          s10, s5, s7
                  slt          s5, s3, s1
                  sra          s9, sp, s9
                  slt          s0, s11, gp
                  addi         s9, a5, -824
                  and          s11, t4, a5
                  lui          s3, 613930
                  srai         s1, sp, 6
                  sra          s1, s6, a5
                  sll          t5, sp, s8
                  xor          a2, s10, a4
                  auipc        a7, 1043957
                  srli         s9, t6, 6
                  srli         sp, t3, 13
                  nop
                  slti         s0, a5, -1941
                  slli         s1, s10, 3
                  srli         s5, t0, 9
                  add          t1, a2, a5
                  srai         a3, sp, 17
                  sll          s1, t5, a6
                  slt          t1, s2, sp
                  add          s5, s3, a2
                  and          a2, t1, a6
                  sub          sp, a7, a7
                  sra          t3, s7, s2
                  srai         t5, t2, 1
                  sub          gp, s10, t5
                  sltiu        t4, t3, -1128
                  slti         t1, t0, -423
                  sltiu        s10, s7, -1533
                  xori         s4, s4, 1058
                  add          a1, a0, s0
                  sltiu        gp, a0, -289
                  auipc        s11, 571383
                  add          s2, t4, s10
                  lui          a2, 401475
                  andi         s7, t5, -69
                  and          s2, a6, a1
                  sltu         s11, ra, tp
                  xor          s0, a5, t3
                  sltiu        s3, t0, -1349
                  sltu         s9, s9, a7
                  srli         a7, s5, 20
                  and          tp, t2, t6
                  and          a2, t2, t1
                  slli         t6, t1, 0
                  sub          a2, s5, t2
                  sra          a2, a0, zero
                  and          zero, a6, s8
                  auipc        s8, 948509
                  srli         gp, a6, 23
                  and          s9, a2, s5
                  srai         a5, t0, 7
                  sub          t3, t3, t0
                  addi         t1, a4, 553
                  sltiu        t4, s5, -1146
                  sll          t2, s4, s3
                  addi         s11, t1, -138
                  sltu         t4, a4, a5
                  auipc        s2, 965283
                  auipc        a6, 256170
                  or           s2, t3, zero
                  or           t6, t5, s2
                  slti         a3, s0, -12
                  auipc        s1, 941514
                  nop
                  or           a1, t3, s1
                  sra          t6, t1, s5
                  srai         gp, t3, 13
                  sll          tp, s1, s3
                  srl          s9, s2, a5
                  auipc        s9, 604651
                  srai         t3, s2, 2
                  addi         a6, s9, 485
                  xori         s10, a3, -526
                  sra          t6, a2, s1
                  sltiu        s0, tp, -937
                  ori          a3, a6, 123
                  sltiu        a1, s6, -812
                  xor          a1, a3, a3
                  addi         s8, a3, -1911
                  lui          gp, 326418
                  sltiu        a7, s2, 1803
                  or           s4, s5, s0
                  add          gp, gp, s8
                  xori         s5, gp, 484
                  auipc        a3, 339853
                  srai         s11, s10, 25
                  srli         s1, s7, 30
                  and          s1, t5, s1
                  xori         a5, t3, 1963
                  and          s10, t6, ra
                  sll          s2, ra, t2
                  addi         gp, a1, 352
                  auipc        t6, 1005217
                  ori          a6, s0, -581
                  slt          s7, s6, a0
                  srl          s2, t2, gp
                  add          s9, t1, a0
                  slti         zero, a4, 1171
                  add          a1, a5, s0
                  srli         s3, a6, 16
                  srai         s2, tp, 30
                  slli         tp, s11, 16
                  srl          s7, ra, ra
                  nop
                  auipc        s3, 953667
                  srli         t4, t4, 5
                  slli         t6, s3, 9
                  sll          s11, s6, a4
                  slt          s8, a1, a2
                  srli         t3, s8, 0
                  sra          gp, s10, a3
                  ori          a6, a6, 800
                  srai         s0, s1, 26
                  add          s11, t3, a5
                  ori          s10, t1, -1280
                  srai         sp, s5, 16
                  add          a7, ra, ra
                  sltu         s1, s11, tp
                  add          sp, t2, a5
                  andi         a1, s1, 1545
                  slti         s7, t0, -1601
                  auipc        a6, 827196
                  sltiu        s4, t1, -681
                  xori         a4, s6, -787
                  ori          a6, s8, -1472
                  nop
                  slt          a4, t1, s1
                  lui          s11, 803589
                  ori          t2, tp, -57
                  xori         t6, s11, 493
                  sltiu        t6, a2, -1394
                  andi         t2, a7, -1295
                  sub          tp, t0, t6
                  sltiu        t2, zero, 1166
                  slti         s8, a3, 514
                  addi         t6, s7, 1671
                  slt          t4, sp, t4
                  andi         t6, t4, 982
                  andi         t5, t0, -1712
                  xor          a2, s0, s7
                  sub          a4, t5, t4
                  srli         ra, t6, 14
                  sltiu        t6, s8, -1336
                  slli         a1, t1, 20
                  lui          s10, 265183
                  srli         t3, s8, 9
                  auipc        ra, 206379
                  lui          zero, 531912
                  lui          s1, 655189
                  slli         t1, a0, 7
                  sll          s0, t5, t5
                  sub          a5, t6, s8
                  andi         s7, s5, 1139
                  or           a1, tp, s11
                  slt          gp, s3, t5
                  xori         t5, s10, -415
                  xor          s1, t2, t1
                  sltiu        s7, s3, 436
                  xori         a1, a2, 1728
                  or           s0, t1, s8
                  sltiu        a7, s0, -1991
                  lui          s10, 523990
                  xori         s0, a1, 455
                  srli         a5, t2, 17
                  lui          s10, 907692
                  and          s11, s1, a1
                  sltu         a2, s1, t1
                  slti         tp, s11, 363
                  xor          s5, s5, a0
                  slti         a4, t2, 429
                  xor          s2, s7, t5
                  srli         a1, ra, 13
                  lui          a5, 140053
                  slli         t3, sp, 31
                  addi         t6, s1, 91
                  and          s9, t1, s5
                  srli         a6, gp, 23
                  srli         a5, s3, 22
                  slti         t5, s3, -144
                  slli         a5, a3, 20
                  slti         sp, s5, 1086
                  xori         ra, s1, -944
                  srli         sp, s8, 26
                  sra          s3, s10, sp
                  xori         t2, s5, 352
                  nop
                  sra          s3, s7, sp
                  and          a3, a7, t6
                  or           a1, a1, s7
                  slt          t1, s0, t4
                  sub          gp, s0, t1
                  slti         s3, s4, 1656
                  lui          t6, 396447
                  slti         a5, t0, -994
                  slli         s4, a6, 31
                  add          t2, t0, s4
                  slt          s1, s1, s8
                  sltiu        a7, t4, -53
                  xori         a1, a3, -1062
                  or           s11, t0, a6
                  sltu         s5, t5, t1
                  auipc        s9, 365369
                  sltiu        zero, s6, -47
                  sra          t1, gp, s10
                  addi         tp, t2, -1012
                  sltu         t2, t0, a0
                  slt          zero, s11, a7
                  sra          sp, s0, zero
                  sra          t5, a5, gp
                  xori         a4, a6, -803
                  xor          s10, s2, s5
                  srl          a3, a5, a6
                  srl          a6, s1, t5
                  addi         s2, s4, -771
                  lui          s10, 866590
                  sltiu        s10, s6, -1041
                  slti         s3, t1, -1064
                  auipc        a4, 117432
                  or           s4, a2, t6
                  slti         s5, a0, 1798
                  xori         s8, a4, 209
                  or           s10, gp, s5
                  slt          t4, t6, zero
                  srai         s8, t3, 14
                  srl          s4, t4, zero
                  sltiu        s9, t6, 2008
                  nop
                  auipc        s1, 128729
                  addi         a4, s11, 1758
                  auipc        s4, 724571
                  lui          s4, 576328
                  addi         t4, s0, 100
                  srai         s7, s11, 7
                  or           ra, s1, s9
                  xor          zero, s0, s10
                  srl          s9, a1, tp
                  srli         a6, s9, 20
                  srl          a2, s3, sp
                  srli         gp, s3, 30
                  sll          a5, t4, t3
                  add          t1, s4, a6
                  sltu         a3, a6, a7
                  sll          s10, s10, a7
                  ori          a5, s8, 1540
                  slt          a6, s10, a4
                  slti         gp, s7, 2011
                  sltiu        tp, ra, 2032
                  sltu         tp, a0, s5
                  sltiu        s8, sp, -1797
                  sll          a1, a3, s8
                  sltu         tp, t2, t5
                  addi         gp, t1, 340
                  andi         t3, t4, 1373
                  andi         s0, t6, -708
                  xori         s1, a2, -1815
                  or           a6, a0, a0
                  sltiu        a2, t4, -1987
                  sra          ra, s9, a4
                  srai         s2, a0, 5
                  or           zero, s11, s0
                  xor          s1, a6, a4
                  slti         a4, a7, 799
                  srli         sp, s10, 27
                  srai         s2, s8, 22
                  sra          s4, t2, t6
                  slli         t6, gp, 0
                  add          t3, t4, a5
                  auipc        s8, 1007861
                  sltu         a1, a1, a4
                  ori          t3, s1, -1236
                  sub          t2, a7, s9
                  add          gp, s5, a6
                  add          ra, t3, a0
                  andi         s0, t3, 1121
                  or           s0, a2, s9
                  lui          s4, 195104
                  addi         ra, s6, 360
                  sltu         s2, s2, a0
                  addi         gp, a4, 1713
                  andi         t5, a5, -1856
                  and          s9, a6, t5
                  andi         t1, sp, -76
                  or           a7, s6, a0
                  ori          t6, a6, -1058
                  sltiu        a1, t0, 1971
                  andi         a7, s9, 766
                  auipc        a3, 552993
                  add          s8, s6, ra
                  auipc        a1, 900521
                  srai         a4, t0, 26
                  xor          ra, t2, t6
                  auipc        s4, 629885
                  lui          t4, 673574
                  sub          zero, a7, zero
                  sub          s2, t3, s4
                  lui          zero, 278137
                  srli         s11, s9, 22
                  xori         s8, s10, -484
                  sub          s2, t3, t6
                  slli         s5, a1, 4
                  andi         s5, s9, 1684
                  xor          s10, s7, zero
                  sra          a4, t2, s2
                  or           t6, t4, tp
                  auipc        a6, 963619
                  ori          a5, s5, -1810
                  sll          t4, a4, a7
                  slli         gp, t4, 8
                  andi         s8, s8, -445
                  srai         s9, s2, 23
                  srai         t4, a3, 15
                  srl          t2, t4, t3
                  slli         s4, s1, 22
                  lui          t6, 997508
                  xor          tp, a1, tp
                  xori         gp, a0, -361
                  and          sp, t0, a5
                  add          gp, ra, a4
                  andi         sp, s1, -746
                  slti         a7, s11, -1393
                  sll          s8, tp, tp
                  srai         s8, s7, 26
                  nop
                  slli         zero, s1, 16
                  slt          t2, t1, a2
                  add          tp, s8, a6
                  slt          tp, s3, a1
                  nop
                  srl          a6, a6, a7
                  ori          s1, t1, -137
                  sltiu        ra, s7, -190
                  sltiu        s9, s11, -1170
                  sltu         t3, s2, s2
                  srl          s10, a4, ra
                  lui          ra, 481124
                  srai         a1, a0, 11
                  sra          t6, s4, t5
                  xori         s9, t2, -1034
                  and          a4, zero, t0
                  auipc        a3, 585826
                  slti         s2, s4, -147
                  sra          a6, tp, s0
                  sltiu        a6, t2, 621
                  addi         a5, s5, 130
                  sltu         a6, s11, zero
                  andi         gp, s3, 2009
                  or           gp, tp, tp
                  srai         s3, tp, 2
                  add          sp, a5, a6
                  sll          s10, t0, s0
                  sll          s0, s3, sp
                  xori         t5, a4, -1042
                  add          t4, a3, t5
                  sltiu        tp, s8, -1578
                  slti         a2, a3, -703
                  ori          gp, a5, 416
                  slti         t3, a1, -1165
                  nop
                  sub          s4, t2, t2
                  addi         s1, s0, -575
                  sub          ra, zero, s9
                  slli         a7, gp, 6
                  srli         s1, a4, 25
                  nop
                  sltu         s10, a3, s1
                  xor          s2, a3, a5
                  sra          gp, t0, t2
                  sll          t1, t6, t1
                  sra          s8, a2, a2
                  and          t4, s7, a3
                  ori          s10, t4, -872
                  sltiu        s5, t6, 1813
                  addi         ra, s10, 1820
                  lui          ra, 975285
                  xor          s2, s2, s7
                  slt          gp, t2, s7
                  sltiu        s11, t2, 1219
                  slt          s0, t1, s7
                  and          t5, t4, a2
                  sub          a3, s2, s11
                  sltu         t4, s6, t3
                  xori         s9, s6, -581
                  sll          a6, ra, a2
                  srl          s0, s1, a4
                  xori         t2, a1, -947
                  sub          t2, s8, gp
                  nop
                  andi         t2, s7, 1846
                  ori          tp, tp, 450
                  srl          s1, s11, a4
                  nop
                  xori         s4, ra, -1397
                  srai         t3, s2, 0
                  andi         t4, a5, 1619
                  and          a5, s11, t4
                  addi         a5, t5, 397
                  sra          ra, a3, ra
                  slli         s0, a5, 8
                  lui          a3, 340987
                  lui          t5, 675021
                  srl          a7, ra, s2
                  srl          ra, sp, a2
                  or           a5, a5, a4
                  and          t2, zero, zero
                  sra          gp, t1, t6
                  and          a5, t4, t4
                  sltu         t6, a4, a2
                  sll          s2, s3, a7
                  addi         sp, a2, -2029
                  xor          a5, s6, a6
                  nop
                  andi         s11, s10, 109
                  sltu         gp, s3, t2
                  sltiu        s5, s2, 635
                  sub          a4, s6, a7
                  lui          t2, 385998
                  slti         t1, s11, -268
                  or           a6, sp, s0
                  slli         a6, a7, 22
                  xori         a6, s0, 1691
                  slti         ra, a6, -1436
                  xori         a7, s11, -871
                  add          t4, t6, a5
                  add          s4, t1, a2
                  srl          s4, tp, s5
                  and          t1, gp, s9
                  sra          a5, ra, a7
                  sltu         ra, t3, ra
                  auipc        s4, 567393
                  and          t2, s3, ra
                  xori         s9, s10, -1222
                  slli         s9, zero, 23
                  srli         s7, t0, 9
                  slt          t5, t1, sp
                  and          s10, a7, a0
                  xor          a3, t0, s0
                  slt          s10, a4, a4
                  xori         t1, s7, -1046
                  ori          a5, s4, 903
                  addi         a5, s8, -181
                  add          s0, t5, s0
                  srli         tp, t6, 7
                  slt          s9, sp, tp
                  sra          s1, a1, a2
                  ori          s5, a5, -1763
                  auipc        t4, 1020090
                  and          zero, t5, gp
                  srl          a2, s8, sp
                  xori         s4, s11, 1671
                  addi         s0, t3, 96
                  srli         a5, s5, 11
                  srl          a2, tp, a7
                  xori         s2, t2, -1401
                  slli         s3, t1, 12
                  auipc        s11, 688508
                  sub          s10, t0, a0
                  slli         tp, a6, 15
                  or           a1, s7, a5
                  lui          s7, 1044344
                  nop
                  slt          s2, a5, a0
                  andi         s5, t2, 842
                  srai         t4, t1, 26
                  nop
                  srli         s5, t1, 18
                  and          s11, ra, a2
                  xor          tp, gp, a7
                  addi         a1, sp, 1442
                  nop
                  add          t6, a6, s3
                  sll          s9, s9, a4
                  andi         a3, s7, 1539
                  slti         s2, s10, 1493
                  xor          a3, sp, sp
                  nop
                  xori         a2, s5, -2019
                  sltu         s9, s4, zero
                  nop
                  srl          a4, a6, a0
                  or           s11, s8, zero
                  slt          s7, t3, a2
                  slt          s9, s5, t3
                  xori         a4, t3, 2001
                  ori          a6, gp, 1386
                  slti         s3, t6, 1602
                  srli         t3, zero, 22
                  nop
                  ori          tp, s0, -917
                  and          s8, sp, t6
                  xor          a2, t3, zero
                  or           s0, t2, t2
                  slt          s1, t2, s2
                  or           s4, s9, s10
                  nop
                  sltu         gp, ra, a2
                  nop
                  sltu         s2, gp, t0
                  slt          s9, a3, gp
                  sltiu        t6, s3, 445
                  or           t1, ra, a0
                  andi         sp, s8, -1438
                  slli         a6, s11, 19
                  sltiu        t5, a6, -1159
                  addi         tp, ra, 524
                  and          sp, sp, t4
                  slli         t4, t4, 5
                  or           t1, s6, s9
                  slt          t2, t6, t6
                  or           a7, s7, t2
                  srli         t5, t1, 1
                  srai         a5, s6, 9
                  sra          s7, s4, gp
                  slti         s3, t5, -544
                  nop
                  add          s0, t6, a3
                  nop
                  sltiu        sp, a4, -770
                  slli         s7, zero, 25
                  slt          a7, t6, s6
                  auipc        t2, 244922
                  srl          s10, t0, s4
                  addi         sp, s6, 1673
                  and          a6, a5, a2
                  auipc        a5, 620781
                  srl          s7, t4, t0
                  auipc        s8, 667067
                  addi         t1, a7, 134
                  lui          s0, 443297
                  ori          s11, s0, 896
                  add          s2, t0, tp
                  srl          tp, t2, a7
                  srli         a7, a1, 4
                  srai         s10, s3, 29
                  lui          ra, 597087
                  sltiu        a1, t1, -1207
                  srli         s5, t3, 17
                  slli         a5, tp, 19
                  srl          a4, t4, t3
                  ori          t4, a3, 1968
                  xori         a2, a6, 805
                  srli         sp, s0, 16
                  auipc        gp, 166355
                  add          zero, s2, s10
                  or           s3, t4, sp
                  add          s7, a0, zero
                  addi         a6, t3, 1038
                  sra          tp, s9, sp
                  nop
                  and          s1, ra, s3
                  xori         t3, a1, -1318
                  sub          t1, s10, t0
                  ori          a5, s10, 337
                  auipc        s7, 821628
                  xori         t2, sp, -1770
                  slli         a7, sp, 12
                  lui          t5, 222490
                  lui          sp, 992959
                  slt          ra, a2, s10
                  slti         s5, s1, -485
                  and          s9, t3, s4
                  addi         s11, a6, -1585
                  and          s4, s5, s3
                  srli         t4, s2, 17
                  lui          zero, 225692
                  and          sp, s4, zero
                  add          t3, s10, gp
                  sltiu        a2, t4, -312
                  xor          t5, sp, t4
                  ori          s7, a5, 769
                  and          s2, t3, t0
                  li           s1, 0x1cd88692 #start riscv_int_numeric_corner_stream_6
                  li           s9, 0x8fb0ae6e
                  li           s10, 0xffffffff
                  li           t1, 0x80000000
                  li           t3, 0x0
                  li           tp, 0x88c7e59e
                  li           a1, 0x0
                  li           t5, 0x80267b24
                  li           s8, 0x0
                  li           s4, 0x0
                  sub          s8, s8, t1
                  add          s1, tp, s1
                  nop
                  add          s8, s1, s8
                  lui          s9, 226831
                  add          s10, a1, s10
                  auipc        tp, 249416
                  sub          t1, s4, t3
                  sub          t3, s1, t1
                  nop
                  nop
                  addi         t1, t3, 1959
                  sub          s10, t1, t3
                  add          s9, s9, tp
                  addi         s8, s10, 1217
                  lui          s1, 452639
                  nop #end riscv_int_numeric_corner_stream_6
                  add          zero, s9, a3
                  ori          s2, s0, 1995
                  lui          tp, 449103
                  sltu         zero, a1, s7
                  srai         s1, s6, 27
                  addi         t5, s3, -377
                  slt          t6, s10, a6
                  auipc        t4, 953024
                  or           t4, s2, s2
                  slli         s0, a3, 13
                  and          s8, t0, t5
                  srai         s3, t6, 24
                  sltiu        a1, a1, 1080
                  nop
                  ori          zero, a1, -493
                  xori         a7, s11, 258
                  slti         ra, zero, 1321
                  lui          a5, 235368
                  xor          t5, s11, s0
                  sra          a4, ra, s3
                  andi         a5, a0, 1985
                  sll          a5, t4, t3
                  lui          a3, 248041
                  add          sp, a1, t2
                  andi         sp, s0, 1732
                  srl          ra, s8, s6
                  ori          t5, a5, -1011
                  ori          t2, s3, -2028
                  srl          gp, sp, a4
                  sll          zero, t6, a4
                  sub          s7, s0, s3
                  sltiu        s9, a4, -352
                  andi         a6, t0, -2037
                  sub          a6, gp, s1
                  add          t4, a4, t3
                  andi         t2, s0, -326
                  andi         t1, t0, -706
                  srli         s7, ra, 24
                  xori         a7, sp, 635
                  lui          t2, 244049
                  auipc        a7, 88874
                  xori         t6, s10, 119
                  or           s3, gp, a0
                  andi         a3, a1, 453
                  xor          t3, s11, a4
                  slti         s7, s1, -1227
                  sub          sp, s6, a2
                  srai         gp, a0, 18
                  sll          sp, s8, a4
                  slt          a6, s11, a3
                  xori         t1, t1, 515
                  add          a2, a5, a7
                  slt          t6, s9, s4
                  lui          a7, 302341
                  srai         s4, t5, 20
                  sltu         s7, s1, a4
                  add          t4, t1, s1
                  auipc        s0, 1029993
                  sltu         a3, s3, a2
                  slt          t1, a6, t2
                  slt          t5, t2, tp
                  srl          a1, t6, s7
                  nop
                  srl          gp, ra, s5
                  and          t3, t0, tp
                  slti         s1, tp, 1088
                  nop
                  auipc        a3, 760200
                  slt          gp, tp, a7
                  sltiu        tp, gp, -1115
                  addi         t2, s11, 266
                  sll          s1, t0, s2
                  xor          s2, sp, s11
                  or           t5, s3, s7
                  or           s0, zero, t4
                  addi         s2, t2, 1509
                  xori         tp, t2, 1371
                  srl          t1, t1, t2
                  srli         zero, tp, 6
                  sll          a5, sp, a7
                  sll          t1, s7, a7
                  srai         s3, s6, 12
                  ori          t3, a4, -1437
                  sub          s3, a3, a5
                  sll          s0, a1, s10
                  srl          t3, s11, sp
                  auipc        a4, 818333
                  srai         gp, t2, 8
                  sll          s3, s7, a5
                  ori          t1, a2, 985
                  lui          a3, 363085
                  slti         s8, sp, 1297
                  sltiu        t6, gp, -427
                  xor          s5, s11, s8
                  slti         ra, s7, -1818
                  nop
                  srli         s2, t3, 5
                  and          t2, a5, s4
                  sra          ra, s10, s5
                  slti         s9, s8, -689
                  slti         s0, s8, -376
                  slli         t5, t4, 30
                  sltu         s8, s10, a5
                  sltu         s5, s9, a3
                  lui          a7, 348524
                  lui          t5, 566997
                  slt          s3, s7, s10
                  add          s3, a0, a7
                  addi         s7, gp, -730
                  sltu         s5, a4, sp
                  nop
                  lui          t6, 846478
                  slli         t1, a1, 1
                  slt          t1, s3, a7
                  andi         t3, t6, 507
                  sra          t4, s1, s11
                  srl          s11, a6, ra
                  andi         zero, t1, -983
                  slt          s3, a2, s6
                  ori          t2, s10, 943
                  sltiu        s1, s2, -1991
                  sltiu        s8, t2, -228
                  nop
                  sll          a4, s0, a6
                  andi         a2, t2, 42
                  and          a3, a6, tp
                  or           t6, s4, a2
                  or           sp, ra, t0
                  ori          s3, tp, 1120
                  srli         sp, s11, 8
                  and          a5, tp, a0
                  sll          t4, t1, s8
                  srl          s0, s11, a3
                  sra          t4, zero, s1
                  andi         s3, s9, -150
                  sltiu        a2, a7, -1765
                  nop
                  slli         s0, s5, 25
                  sra          t5, a2, s7
                  slt          t1, s9, ra
                  sll          a5, zero, s7
                  addi         s4, s10, 1424
                  sra          a1, a4, zero
                  andi         s0, gp, 1644
                  sub          t5, s7, ra
                  sltu         sp, a7, ra
                  nop
                  andi         s8, t1, 1594
                  and          a5, s8, s1
                  addi         tp, t5, -444
                  or           t3, t6, s8
                  sltu         a7, t2, zero
                  or           s1, s0, a6
                  srl          s10, t3, ra
                  slti         s4, a0, 427
                  xor          s1, s2, a4
                  sltiu        zero, a6, -843
                  sub          s10, s10, s6
                  srai         sp, t3, 8
                  slli         s2, t6, 3
                  or           s0, ra, s4
                  xori         a2, a0, -130
                  srl          s3, zero, a3
                  srai         t2, a4, 0
                  slli         s1, s11, 25
                  auipc        a3, 96485
                  addi         s1, gp, 256
                  ori          a1, s9, -2030
                  srai         a1, a7, 10
                  lui          s7, 911504
                  auipc        s9, 209802
                  srl          ra, sp, sp
                  ori          t2, ra, -737
                  and          s9, s3, s3
                  and          s7, s3, a0
                  sltu         s10, s2, t2
                  and          t4, zero, t5
                  sltu         a5, t0, s7
                  slt          s0, zero, a1
                  ori          t2, s4, 813
                  sra          s4, a6, t4
                  sltu         t2, gp, a4
                  or           t6, a6, a7
                  sltiu        s3, a0, -1442
                  nop
                  slt          gp, a2, s7
                  andi         s8, a7, 1324
                  sltiu        ra, a5, -1859
                  srl          a4, t3, zero
                  srai         zero, s6, 16
                  srai         t6, a4, 12
                  lui          a4, 795488
                  sltiu        a5, t6, -905
                  slti         t6, a6, -450
                  slti         t4, zero, -235
                  srai         s2, a1, 17
                  sub          a6, s7, tp
                  srli         t4, s6, 10
                  srai         t1, a6, 26
                  or           t4, s9, tp
                  slli         s9, zero, 8
                  xor          a5, a3, s5
                  slt          s8, s2, t2
                  sltiu        s7, gp, 374
                  ori          s9, t1, 1422
                  and          s4, s1, t6
                  ori          s11, t3, 1563
                  srli         sp, s6, 12
                  srai         t2, gp, 28
                  srl          a6, a2, s8
                  andi         a2, t2, -73
                  andi         a1, s11, 376
                  sltu         t1, s8, tp
                  xor          s7, sp, s5
                  addi         a5, ra, 205
                  srli         s10, t5, 21
                  srli         tp, a0, 12
                  srai         gp, a1, 26
                  auipc        s3, 635626
                  srl          a3, s11, s2
                  lui          ra, 90545
                  sltiu        t6, t6, -347
                  xori         s4, s2, -20
                  nop
                  slt          t6, t0, t0
                  srl          s8, a5, s6
                  sra          s10, t5, s2
                  and          gp, ra, s0
                  xori         ra, t0, -831
                  add          zero, a1, a2
                  lui          s7, 956319
                  slli         sp, a4, 23
                  xor          s9, s2, t0
                  nop
                  slt          t2, s0, s5
                  xor          sp, a6, s0
                  slli         a5, t1, 26
                  or           t2, s5, gp
                  xor          tp, t3, s10
                  andi         t2, zero, -1641
                  slli         s8, a4, 4
                  andi         tp, t3, -1289
                  auipc        ra, 120209
                  sll          a2, t3, s7
                  addi         s10, t2, 528
                  addi         a5, t5, 165
                  slti         sp, s8, 155
                  lui          sp, 484433
                  sltiu        gp, zero, 167
                  xor          s5, t2, s6
                  slli         s1, sp, 6
                  auipc        a7, 357402
                  srli         a7, t4, 27
                  and          s9, a6, s8
                  auipc        s1, 994093
                  andi         s1, s5, 769
                  andi         t6, gp, 1256
                  and          a6, s8, s6
                  sll          s2, s4, zero
                  srli         tp, s1, 5
                  andi         s2, s6, -771
                  add          s4, s0, s0
                  addi         t1, t6, -867
                  or           s5, s1, t3
                  srli         a4, zero, 29
                  ori          t6, s3, -1470
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a5, 0x80000000
                  li           a3, 0x80000000
                  li           a6, 0x4907ffed
                  li           tp, 0x80000000
                  li           s2, 0x0
                  li           sp, 0x80000000
                  li           a2, 0xffffffff
                  li           s10, 0x80000000
                  li           t4, 0xa8652755
                  lui          a2, 892770
                  auipc        a2, 432490
                  sub          a2, a6, sp
                  addi         a2, a6, -375
                  addi         a2, t4, 887
                  lui          tp, 201530
                  lui          s10, 612991
                  addi         a3, t4, -1291
                  add          s10, sp, a2
                  addi         s10, a2, -351
                  auipc        a6, 269820
                  sub          a2, a5, sp
                  sub          s10, a6, a5
                  lui          t4, 261598
                  addi         sp, sp, -962
                  nop
                  lui          a6, 465501
                  auipc        tp, 1035043
                  nop
                  add          s10, s2, a6
                  auipc        a3, 579197
                  lui          t4, 599503
                  nop
                  nop
                  auipc        a3, 903848
                  auipc        t4, 835708
                  addi         a2, a6, 1298
                  nop #end riscv_int_numeric_corner_stream_1
                  lui          t5, 536832
                  srl          s0, s1, a5
                  sub          a2, t1, s3
                  slti         tp, s8, 1733
                  slti         a6, gp, -868
                  slli         t3, t5, 13
                  xor          s4, t2, s10
                  andi         a2, s9, 1636
                  srli         s0, s5, 28
                  sltiu        t3, s10, 1763
                  srl          t1, s4, s6
                  sltiu        tp, s8, -664
                  xor          t1, s0, a7
                  srl          tp, t1, sp
                  nop
                  addi         a5, a1, -468
                  srli         t4, t5, 25
                  slt          t1, a6, zero
                  slt          gp, gp, a7
                  xori         s1, s1, -940
                  xori         t4, ra, 892
                  lui          s7, 1024909
                  slli         t1, s9, 20
                  slt          s0, s0, t4
                  and          t3, s9, t5
                  add          a7, s11, sp
                  sltiu        t6, t6, -699
                  slli         s1, t4, 4
                  add          a4, s0, a7
                  ori          s10, ra, -452
                  ori          a1, s0, 337
                  sltiu        tp, t3, 1291
                  nop
                  nop
                  srai         s9, s11, 25
                  slli         s7, s6, 27
                  or           s8, s7, s6
                  auipc        t2, 306813
                  auipc        a4, 567849
                  andi         t6, a2, 176
                  slli         t6, t3, 28
                  xori         s1, s9, 492
                  xori         s2, a7, 1559
                  sltu         t3, a2, a0
                  andi         t6, s6, 582
                  srai         s0, ra, 10
                  slt          a4, t1, ra
                  and          s1, s9, a6
                  add          s0, s3, a5
                  nop
                  nop
                  nop
                  or           s7, s9, s2
                  xor          s7, a2, t2
                  slli         s3, a0, 24
                  nop
                  lui          a4, 251542
                  srli         s9, a4, 24
                  srai         s1, s10, 18
                  ori          a7, s10, -1835
                  slli         t5, sp, 12
                  xori         s0, a6, -215
                  ori          s0, gp, 845
                  slt          a2, a3, a1
                  sub          a6, s2, t1
                  auipc        t1, 77410
                  sltu         a4, a3, s1
                  srai         sp, zero, 29
                  srl          s7, t6, a6
                  and          s11, s9, a6
                  auipc        s5, 247223
                  slti         sp, zero, -822
                  lui          gp, 190227
                  srai         t6, zero, 31
                  ori          t2, t0, 1868
                  xor          s1, s4, a3
                  and          a2, t1, s10
                  xori         s11, t6, -1072
                  xori         gp, s11, -618
                  slli         t3, s2, 6
                  and          a6, zero, a3
                  ori          s5, zero, -699
                  ori          t2, s9, -143
                  sltu         t5, s10, a0
                  or           a4, s4, t1
                  ori          t1, t6, -1428
                  nop
                  sltu         a4, t4, s5
                  ori          s9, s1, 1799
                  add          t4, s2, a7
                  andi         a3, a1, 1991
                  slli         t4, s11, 8
                  and          t6, s8, s11
                  add          s11, a5, t1
                  slti         gp, a7, -926
                  srl          s11, zero, a5
                  and          sp, a7, zero
                  andi         s1, t3, 1717
                  andi         a4, s8, -1623
                  nop
                  lui          s5, 513580
                  add          a5, s1, s1
                  xor          s1, a0, zero
                  slt          s11, t5, s7
                  sub          s3, sp, t1
                  srli         s11, t5, 10
                  xori         t2, s1, -1528
                  add          a1, a5, a4
                  slti         s1, a4, 903
                  auipc        a2, 544150
                  slli         gp, a7, 23
                  sra          sp, s8, a6
                  slti         tp, t5, 514
                  srl          a2, a3, ra
                  sll          a6, s9, zero
                  sll          s8, t4, s3
                  and          t4, s2, s10
                  and          s1, zero, a4
                  srai         s9, s4, 31
                  and          a2, t6, s5
                  slti         s4, a7, -846
                  xori         s5, zero, -1143
                  xori         a6, s10, -1763
                  sra          s2, a0, s7
                  add          s1, s4, a6
                  sltiu        a4, a7, 20
                  sll          a6, s3, s1
                  slti         t3, t3, -1856
                  sll          s8, a4, t5
                  ori          s7, s2, 1366
                  sltiu        t1, s11, 510
                  and          s7, s5, t1
                  sra          s4, s3, s8
                  nop
                  add          t1, sp, t4
                  sltiu        s7, s8, -369
                  sra          t2, s0, tp
                  or           s0, a7, s1
                  andi         s10, t0, -1911
                  srai         t2, a2, 8
                  sub          ra, t3, s0
                  sltu         t4, t1, t3
                  sll          ra, t5, s0
                  sltiu        gp, s6, 1259
                  lui          s0, 804212
                  srai         t3, s8, 25
                  xor          gp, a6, s2
                  sltu         t3, s1, a0
                  srai         t1, ra, 22
                  andi         a5, s0, 287
                  sltiu        tp, s2, -275
                  andi         s7, tp, -249
                  or           a6, tp, zero
                  ori          a1, s6, -110
                  xori         t1, a4, 930
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s9, 0x80000000
                  li           a4, 0x80000000
                  li           a2, 0x80000000
                  li           s7, 0xffffffff
                  li           a1, 0xffffffff
                  li           t4, 0x0
                  li           t2, 0x80000000
                  li           t5, 0x9e688dfa
                  li           sp, 0x0
                  nop
                  auipc        sp, 533396
                  nop
                  sub          t2, s9, a4
                  nop
                  auipc        a3, 780603
                  lui          t4, 988258
                  lui          t5, 650506
                  lui          a1, 625420
                  nop
                  lui          a4, 932453
                  addi         a1, a2, -306
                  addi         a1, a2, -2008
                  addi         sp, sp, -680
                  auipc        sp, 938668
                  sub          a1, a4, a3
                  addi         s9, t2, 183 #end riscv_int_numeric_corner_stream_13
                  and          s2, t1, a2
                  srai         sp, sp, 20
                  auipc        a4, 249940
                  sra          a6, t2, s5
                  sll          a3, t2, s6
                  slt          s1, s4, a5
                  slt          s1, a0, s6
                  sub          s11, sp, s10
                  ori          s4, a1, -1469
                  sll          tp, s4, zero
                  ori          t6, t6, -371
                  sltiu        s5, t2, 1549
                  or           s9, a3, a2
                  sltu         s2, zero, s9
                  slti         s4, t1, -1106
                  lui          t5, 1014346
                  ori          a7, s0, -620
                  sra          t3, a6, a1
                  xor          s2, t4, a2
                  sltu         t6, s1, ra
                  sub          a7, a5, s1
                  srli         t2, a7, 13
                  addi         s2, a7, 971
                  sltu         s4, t6, s11
                  andi         t2, s6, 1905
                  srl          a3, s8, s0
                  ori          a1, a7, 1907
                  sltiu        ra, a6, -763
                  nop
                  slli         gp, a7, 27
                  slti         zero, s0, -125
                  and          ra, a3, t2
                  nop
                  addi         t2, s2, 77
                  srli         s1, t1, 8
                  ori          ra, a1, -1064
                  andi         zero, ra, -1243
                  slti         s7, s1, -302
                  srl          s3, a4, s1
                  andi         a6, a7, 1312
                  or           a6, a5, s6
                  addi         s3, gp, 1322
                  sltu         a3, zero, s10
                  srli         s1, a6, 9
                  xor          a7, a3, a5
                  or           s7, zero, t6
                  xori         s8, s1, -515
                  ori          a6, a0, 477
                  sltu         s9, gp, s6
                  nop
                  sltu         s0, a7, a0
                  slti         a2, a2, -1155
                  addi         s11, tp, -1960
                  slli         t1, t0, 19
                  sltu         tp, a2, a5
                  addi         s5, t5, -1138
                  and          a5, gp, t6
                  and          a6, tp, t0
                  nop
                  srai         s9, s11, 20
                  ori          a1, a4, 1603
                  slti         s9, s5, -1357
                  nop
                  slli         s9, t0, 23
                  sll          ra, s8, s0
                  add          t1, s2, t0
                  sltu         s3, s2, a0
                  lui          s10, 992660
                  slti         t3, s4, -1977
                  xori         s2, a7, 1479
                  slt          s5, t4, t1
                  or           s5, sp, a4
                  ori          t2, a0, -1117
                  andi         a4, s7, 67
                  sll          s7, t5, t4
                  or           t6, s3, s11
                  lui          a7, 539128
                  sll          ra, t3, s2
                  slli         s10, a2, 23
                  sra          s5, t1, s5
                  xor          sp, s11, t1
                  sub          t5, s0, s10
                  add          t5, s10, ra
                  xor          t2, a0, s8
                  addi         a2, s11, 751
                  slt          t3, s4, t1
                  auipc        tp, 820712
                  sll          a6, s8, a2
                  nop
                  srli         t4, s3, 15
                  auipc        s10, 529608
                  nop
                  or           s9, s10, t0
                  srl          s10, a1, t3
                  sra          zero, tp, a1
                  lui          s9, 665946
                  slt          t3, s3, s2
                  sltiu        sp, s3, 381
                  lui          t6, 569130
                  auipc        s5, 285471
                  slli         zero, s1, 3
                  slti         t5, a0, 818
                  slt          tp, s11, a3
                  slt          a3, gp, a3
                  srl          sp, sp, a4
                  sll          s10, t6, s3
                  slli         t6, s8, 20
                  and          s9, s5, gp
                  srli         a2, a5, 11
                  xori         t1, t6, 1303
                  slti         zero, t3, 275
                  or           s2, a1, tp
                  sltiu        a6, s0, 1167
                  sra          a5, sp, sp
                  or           gp, zero, s6
                  ori          a3, s7, 2017
                  sll          tp, a5, s6
                  sub          s0, s11, a6
                  srli         s10, s11, 2
                  slli         s2, ra, 19
                  sltu         s10, s0, ra
                  srai         s7, t5, 11
                  sltu         t3, s5, s10
                  sltiu        a1, s4, -1553
                  and          s9, s10, ra
                  srl          ra, a3, s4
                  andi         a4, s6, -1518
                  and          a6, ra, gp
                  sub          s10, s7, gp
                  sltu         t1, s7, zero
                  sll          sp, s0, s6
                  sltiu        s10, s2, 688
                  sltiu        a6, s3, -723
                  srai         gp, a3, 16
                  slti         t1, s6, -1964
                  addi         a6, s7, -517
                  ori          a5, t6, 177
                  sltiu        s9, s3, 862
                  srli         s7, a5, 28
                  auipc        a2, 365944
                  or           s9, t5, zero
                  srai         zero, t3, 6
                  srli         ra, s3, 20
                  srl          gp, s6, s7
                  sub          zero, a1, t1
                  slt          s7, a0, s3
                  xor          s8, t6, s2
                  lui          s1, 218532
                  sltu         ra, t4, s8
                  sltu         s10, s3, a6
                  ori          s8, s0, 1780
                  srl          a6, a1, s1
                  addi         a6, t1, -740
                  or           s4, s7, a3
                  xori         t3, sp, 812
                  ori          ra, s0, -1740
                  slti         a2, s0, -807
                  or           a7, t3, t1
                  andi         zero, a7, 1998
                  slti         a2, a4, -330
                  sltu         s8, a3, a7
                  slt          a5, a5, s4
                  slli         t3, t1, 20
                  srl          t5, s8, s0
                  xor          a7, gp, s8
                  sltu         a7, t6, t4
                  xori         t2, gp, -2008
                  or           a7, a7, s4
                  and          a2, t3, s1
                  or           s9, t3, t6
                  sub          zero, a7, s0
                  sub          a6, s9, ra
                  slti         t6, a0, 1365
                  ori          t2, s0, 48
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           t1, 0xffffffff
                  li           s2, 0x0
                  li           ra, 0x0
                  li           tp, 0x50e78936
                  li           a2, 0x80000000
                  li           t4, 0xb5d1db94
                  li           a4, 0x0
                  li           s9, 0xffffffff
                  li           s4, 0x96069a96
                  nop
                  nop
                  addi         t4, tp, -1021
                  addi         a4, a4, 324
                  nop
                  auipc        a4, 210610
                  auipc        ra, 546651
                  sub          s4, s4, t4
                  add          ra, s9, tp
                  sub          s9, tp, s4
                  auipc        t3, 1019583
                  lui          s2, 649731
                  lui          s2, 360083
                  lui          s9, 101775
                  auipc        a4, 473634
                  addi         t1, t3, 1559
                  nop #end riscv_int_numeric_corner_stream_5
                  ori          a2, s7, -855
                  and          t4, s11, s4
                  slli         a5, t0, 29
                  sub          s2, tp, s10
                  or           s4, s7, s4
                  sltiu        sp, t6, 1957
                  slt          a5, t5, t2
                  slli         a3, t4, 28
                  xori         s1, a6, -1844
                  sra          tp, a1, a2
                  lui          s11, 116496
                  sll          s5, s4, s8
                  sll          s7, t1, a4
                  auipc        s3, 713724
                  addi         s2, t3, 1664
                  srai         s5, a4, 14
                  and          s3, s11, ra
                  slli         t6, a3, 6
                  xori         s9, s10, 1998
                  addi         tp, t5, -1119
                  addi         s4, a4, -677
                  sll          t4, a1, s4
                  add          s7, a7, s4
                  sub          gp, a2, ra
                  srli         t5, t0, 31
                  slli         s4, sp, 12
                  auipc        s7, 303194
                  addi         a2, s0, -1167
                  lui          t5, 541318
                  xori         a3, t4, -1385
                  srl          a3, s4, s5
                  and          s5, t6, s5
                  xori         t1, s11, -1886
                  slt          t1, a1, s8
                  sra          tp, a2, ra
                  srl          s1, s8, gp
                  slli         s3, s8, 1
                  sub          t6, a2, a0
                  add          s11, s6, s6
                  lui          gp, 95047
                  andi         s9, s3, 324
                  srl          tp, zero, sp
                  sll          t5, s7, t6
                  lui          sp, 752209
                  sltiu        s5, s5, 905
                  addi         s11, a2, 1837
                  addi         t4, a1, -1711
                  slti         tp, zero, -130
                  srai         t1, sp, 18
                  addi         gp, s8, 111
                  auipc        s4, 886435
                  addi         s8, t4, 1128
                  slti         s9, a2, 106
                  slti         gp, t3, -451
                  ori          s9, s6, 1884
                  slli         t3, a7, 12
                  xor          s11, a6, t1
                  sra          a5, s9, s11
                  addi         s0, s8, 1892
                  slt          s2, s9, a2
                  slt          a7, t5, sp
                  srl          s7, s6, a2
                  srli         t2, t1, 25
                  srai         t1, tp, 24
                  xor          t5, s3, s0
                  sll          a1, t5, t2
                  slt          a6, ra, s9
                  slli         tp, zero, 14
                  or           s7, t3, a7
                  sltu         s9, s6, a5
                  sub          a7, zero, sp
                  sll          t5, a7, a7
                  sub          t6, s5, s5
                  sra          s7, s11, t6
                  slt          t2, tp, s5
                  addi         t5, t4, 1823
                  sltiu        s8, ra, 100
                  add          a6, t1, t0
                  slli         s10, a3, 6
                  auipc        s3, 638730
                  and          a7, a1, t3
                  srl          a2, tp, a3
                  ori          s5, s11, -1619
                  addi         a4, s10, -490
                  and          gp, a1, a2
                  srai         zero, s5, 7
                  nop
                  and          a5, a1, a2
                  sub          s1, a4, t4
                  lui          s11, 521860
                  srli         tp, gp, 5
                  slli         a3, zero, 23
                  sltu         a6, a4, tp
                  sltiu        t3, s5, 1622
                  srli         s11, t4, 26
                  slti         a5, s7, -660
                  sra          a6, tp, s8
                  xor          t4, a5, t5
                  xor          t2, zero, tp
                  or           zero, tp, a5
                  slti         s9, t3, -944
                  srli         a5, a2, 7
                  slti         s0, t3, -1049
                  sll          gp, t6, s1
                  slt          ra, s10, s1
                  xor          s8, s1, a3
                  slt          tp, a2, zero
                  ori          a4, a3, 1337
                  sra          gp, s4, a2
                  xori         a4, s6, 1756
                  nop
                  srai         s4, a1, 23
                  andi         s5, s0, -982
                  add          s10, s6, t2
                  or           t6, s7, a4
                  sltiu        s11, zero, -1246
                  srli         a1, tp, 11
                  or           a7, s5, s10
                  srai         s9, t3, 16
                  sll          t1, tp, s2
                  sub          t1, a1, a2
                  ori          t3, s2, -55
                  xor          a7, a0, s3
                  xor          s3, s6, s5
                  ori          s3, t4, 1453
                  sltu         t5, s1, t2
                  srl          t1, ra, a4
                  slli         s11, t3, 24
                  nop
                  sub          a5, a3, s3
                  xor          t1, a7, tp
                  xor          a7, s4, s4
                  nop
                  srli         s1, a5, 28
                  xor          s5, a2, t2
                  xori         s5, s6, -501
                  srai         t5, s5, 1
                  and          a6, a3, t1
                  addi         s1, tp, 1327
                  ori          t5, t1, -619
                  slti         s9, s5, -975
                  slt          t1, s5, s9
                  andi         s8, sp, -598
                  add          s4, t2, t0
                  sra          tp, t6, s6
                  addi         a5, a4, 1731
                  xori         s11, s3, -593
                  srai         s5, a6, 28
                  slti         t5, a6, -1066
                  srl          a5, tp, s0
                  or           sp, s5, s2
                  and          s7, s10, a3
                  srai         s8, a6, 9
                  slti         s5, a3, -1389
                  srai         t3, s5, 7
                  add          a2, s11, a6
                  or           zero, s10, zero
                  srli         s4, s10, 31
                  slti         a3, s6, -203
                  and          a2, a2, s7
                  addi         t1, t4, 1289
                  nop
                  sltu         t2, a6, s11
                  slt          sp, gp, t6
                  and          t3, tp, s1
                  slli         s7, t4, 29
                  or           t4, a3, s2
                  andi         a4, s6, 881
                  xori         s5, t5, -1156
                  sra          a6, gp, s8
                  sra          s1, a4, t2
                  auipc        t3, 918311
                  andi         s1, a6, -2023
                  sltiu        a2, a2, 1679
                  srai         s2, tp, 18
                  sltiu        a6, a6, 712
                  sltiu        t6, s1, 112
                  xori         s2, s8, 1312
                  or           s1, s11, a7
                  andi         t5, ra, 671
                  srli         a4, a1, 14
                  andi         a5, t6, 1717
                  and          a2, s6, s8
                  slt          s1, s10, s4
                  xor          s0, s0, s0
                  srl          s8, ra, tp
                  sll          t5, a5, s6
                  xor          ra, ra, t5
                  and          a4, a1, a0
                  andi         t3, a1, 1189
                  sub          s8, a2, t5
                  and          a4, t5, ra
                  srl          s1, a3, s6
                  slli         s1, t5, 27
                  or           tp, t3, t0
                  andi         a4, a7, 1954
                  sltu         a1, tp, s10
                  add          zero, a4, t4
                  srai         s11, s4, 9
                  sub          s5, sp, t2
                  sll          t5, s10, t5
                  slti         gp, tp, 1531
                  addi         t6, s5, 480
                  sltu         t3, sp, s4
                  ori          tp, zero, -1501
                  andi         t6, s10, -210
                  lui          t2, 725717
                  sll          s11, ra, s7
                  sub          t6, ra, s4
                  addi         s5, s9, -57
                  lui          s0, 143833
                  sll          a4, a6, t2
                  nop
                  and          s5, t0, t2
                  slli         t6, s0, 27
                  auipc        t2, 258991
                  xori         a1, gp, 560
                  xori         s7, s8, -386
                  or           t6, s6, a4
                  and          ra, sp, t3
                  slti         t4, t5, -867
                  lui          s11, 1021304
                  slt          t2, tp, a2
                  srli         sp, t5, 21
                  sub          s1, s0, sp
                  nop
                  addi         a4, s11, 206
                  sltu         zero, s9, a2
                  xor          t6, a5, s6
                  sll          s7, a2, t4
                  auipc        s10, 240560
                  ori          s1, gp, 882
                  xor          tp, zero, s7
                  sub          t4, a0, t6
                  sltu         s7, t2, t4
                  or           t6, a7, t6
                  xori         a7, t1, -206
                  xor          s2, s11, t6
                  auipc        zero, 17899
                  or           s0, zero, a4
                  srl          sp, a4, s11
                  xori         a6, s5, -2044
                  srai         s0, t5, 25
                  or           t4, a7, t1
                  addi         tp, t1, -986
                  srli         s7, s1, 27
                  srli         s9, s2, 12
                  sra          a2, a3, zero
                  ori          sp, s6, -209
                  xori         zero, s9, 2021
                  srli         s11, a3, 13
                  slt          s7, s0, s11
                  sra          t3, a2, t3
                  lui          zero, 668037
                  lui          s2, 994559
                  or           sp, a2, gp
                  add          s9, t3, s11
                  sra          a6, a0, s8
                  addi         a3, s2, -930
                  and          s10, s5, a0
                  ori          s8, zero, 1530
                  and          t2, t4, t5
                  or           gp, a2, a7
                  xor          ra, gp, s6
                  ori          ra, ra, 1722
                  srli         t3, t4, 13
                  srli         s4, a6, 9
                  srl          zero, a5, t3
                  srli         a2, a1, 29
                  and          s4, zero, a7
                  sll          a5, s8, gp
                  andi         ra, s11, -1238
                  add          t5, sp, a3
                  srai         s4, t2, 28
                  and          ra, s7, t0
                  sub          s4, gp, t2
                  sltu         s1, s9, s8
                  lui          t3, 677515
                  xori         a4, a5, 850
                  andi         s8, s5, 1823
                  sltiu        s1, s4, -1027
                  slli         s7, zero, 0
                  auipc        s3, 741177
                  ori          s11, s7, -1197
                  lui          tp, 1040822
                  ori          a6, t3, 1244
                  slt          a5, s5, tp
                  slti         gp, s6, -632
                  sltiu        a5, t1, -1325
                  or           tp, t3, s1
                  slti         s0, a2, -254
                  sub          sp, s8, s2
                  ori          a5, s11, 1635
                  sll          s4, s5, t6
                  addi         t2, s2, 498
                  sub          gp, s1, t1
                  addi         a7, t3, 718
                  sub          s0, s1, s7
                  lui          s11, 930634
                  xor          a5, zero, a5
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s9, 0x0
                  li           a2, 0x0
                  li           s11, 0x8df5ee79
                  li           a1, 0x0
                  li           t3, 0x0
                  li           a6, 0x80000000
                  li           s7, 0x80000000
                  li           s2, 0xc91ebd61
                  li           s5, 0x0
                  auipc        s11, 647619
                  add          t3, tp, s7
                  sub          s11, s7, tp
                  auipc        a6, 1006799
                  sub          a6, s2, s11
                  sub          a6, tp, s5
                  sub          s5, s5, s9
                  auipc        tp, 197565
                  auipc        a6, 893138
                  auipc        s9, 400479
                  nop
                  sub          t3, t3, s2
                  lui          a1, 985054
                  sub          a2, a6, s11
                  add          s5, tp, a1 #end riscv_int_numeric_corner_stream_10
                  and          a4, t0, a1
                  sltiu        ra, zero, -770
                  xori         t2, a7, -370
                  and          s5, t3, zero
                  sltu         s3, ra, s11
                  slli         s10, s3, 17
                  xor          s10, sp, s7
                  slli         sp, s4, 7
                  slli         a1, gp, 0
                  and          t5, s4, s7
                  slt          s4, a6, zero
                  auipc        s10, 875029
                  slti         s10, s1, 822
                  nop
                  sra          t1, s1, tp
                  add          ra, s6, s4
                  srai         zero, t3, 15
                  and          a6, s10, zero
                  addi         s11, a2, -1609
                  xori         tp, s2, 1663
                  slti         sp, tp, -97
                  sll          a7, s2, s11
                  xori         s7, tp, -1423
                  sll          s0, gp, s4
                  lui          t1, 629615
                  sub          s3, a6, a3
                  addi         s9, s8, -1550
                  srai         s7, s10, 1
                  sra          a6, a6, s1
                  nop
                  srai         s4, s11, 21
                  xor          s5, t0, s10
                  or           t2, s7, a1
                  sltiu        t6, s5, -793
                  sll          t1, s11, a7
                  sll          t2, zero, s2
                  auipc        tp, 244586
                  or           s11, t2, s1
                  sub          t4, sp, a1
                  ori          s3, gp, 1440
                  sltiu        t1, a4, 305
                  auipc        t5, 1017281
                  srli         t1, t4, 18
                  andi         t1, s2, -142
                  auipc        zero, 544251
                  sll          s4, sp, gp
                  lui          s0, 885739
                  addi         a6, a2, 385
                  auipc        sp, 834917
                  slt          t4, s5, s10
                  sra          s8, a4, s3
                  sltu         a3, a1, a3
                  lui          a3, 134695
                  xori         t2, s0, 137
                  sll          s2, t3, s6
                  sll          s5, s0, a2
                  and          s0, a5, s3
                  xori         gp, s5, 1532
                  addi         t6, sp, 401
                  sltiu        s7, s0, 893
                  sltu         s10, s11, a4
                  lui          s11, 58321
                  sll          s3, sp, a1
                  add          a6, s9, s6
                  slt          s1, t6, s2
                  and          a7, s4, t6
                  slli         s2, s3, 11
                  slti         t6, t6, -1560
                  add          t5, s5, s1
                  slti         t3, a5, -741
                  and          s1, s1, t4
                  sltiu        s9, s1, -66
                  andi         t2, a2, -1266
                  sra          sp, t4, s9
                  auipc        s4, 615872
                  srli         ra, s9, 0
                  sub          s2, t5, t4
                  addi         s8, s4, 1288
                  xor          a5, s10, s10
                  or           s11, a4, a1
                  slti         s11, a1, 834
                  lui          s1, 330454
                  nop
                  lui          sp, 546636
                  xori         s2, s1, -620
                  slt          s1, a4, a4
                  addi         sp, s10, -844
                  slt          s9, a1, s6
                  srai         a3, t3, 11
                  sll          t2, s3, gp
                  nop
                  or           s5, a5, ra
                  addi         a2, ra, -1500
                  srai         sp, s7, 0
                  sltu         zero, gp, a4
                  xor          a1, t3, s5
                  srl          a1, s7, s3
                  slli         ra, a6, 9
                  and          s7, s4, s9
                  xor          a7, s5, a2
                  slti         s7, s1, -155
                  sll          t1, s11, t0
                  sltu         t6, t2, a0
                  or           a3, tp, s3
                  srl          t5, s7, s2
                  sll          s7, a1, s9
                  lui          t1, 268281
                  xori         s11, a0, 1011
                  and          s4, s5, s9
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a5, 0x7dcac2fc
                  li           t1, 0x80000000
                  li           a1, 0x0
                  li           a6, 0x80000000
                  li           a2, 0xf2b078da
                  li           s5, 0x80000000
                  li           a3, 0x0
                  li           s0, 0x6777b431
                  li           tp, 0x80000000
                  sub          s0, t4, tp
                  add          tp, a2, t1
                  nop
                  sub          a1, a3, s5
                  nop
                  auipc        t4, 411169
                  auipc        a3, 262281
                  nop
                  add          a3, a6, a6
                  auipc        a3, 783723
                  auipc        a2, 1011428
                  nop
                  lui          a1, 939870
                  nop
                  nop #end riscv_int_numeric_corner_stream_16
                  andi         t6, t2, -953
                  srai         tp, t6, 9
                  ori          sp, t5, 387
                  xori         t1, a3, 1533
                  xor          sp, t0, a6
                  sltiu        s8, t4, 1884
                  ori          t6, s5, -417
                  lui          s2, 863962
                  add          t5, t1, s4
                  ori          s7, s1, -749
                  auipc        s3, 948283
                  add          a1, ra, t5
                  addi         s0, a4, 2007
                  slti         s2, t3, -73
                  slti         a3, s4, 2034
                  and          a3, s5, zero
                  andi         t1, t2, -750
                  slt          s4, a2, t3
                  slti         a7, a3, -592
                  sra          a6, a6, t3
                  sra          s7, t4, a0
                  slti         s9, s2, 83
                  andi         s8, t6, -1594
                  slti         a3, gp, -755
                  sltiu        s1, a6, 1290
                  auipc        s4, 1006267
                  srli         s11, s1, 3
                  addi         t3, t6, 1375
                  srai         t2, zero, 12
                  or           a7, gp, a1
                  sltu         s7, a5, t1
                  slli         a2, a4, 8
                  srli         a4, zero, 30
                  slli         zero, s7, 9
                  sub          t4, t0, s0
                  srli         s7, t2, 2
                  xori         s7, s10, 1037
                  add          a1, s9, a5
                  or           s0, s1, s10
                  and          t5, t5, a2
                  auipc        ra, 921597
                  slli         s7, t6, 25
                  slt          s8, s1, s6
                  sltiu        s4, a2, -740
                  or           a4, s10, s0
                  slt          a1, s6, t2
                  sub          s10, s4, zero
                  srl          t5, gp, t6
                  and          s2, s6, ra
                  nop
                  srli         a6, a1, 14
                  or           s2, s1, t5
                  lui          t4, 15778
                  nop
                  add          sp, a2, s11
                  srli         a7, zero, 22
                  addi         a4, s8, 1142
                  slti         s4, a5, 1549
                  sra          s4, a1, a3
                  sltiu        t3, t3, -188
                  srl          t3, t2, a7
                  add          t3, t4, gp
                  addi         a2, s2, -253
                  ori          a2, t5, -1464
                  sub          t6, t1, t6
                  ori          tp, tp, 1846
                  sltu         t3, a5, t1
                  sltu         a1, a2, a3
                  slli         s8, a6, 3
                  addi         tp, s3, -1756
                  auipc        sp, 324204
                  ori          a3, a4, -1177
                  srai         s5, a4, 7
                  slti         a3, t6, -1121
                  sltu         s5, gp, a2
                  auipc        zero, 74461
                  ori          zero, a2, -947
                  xori         s7, t6, -1567
                  srli         s10, a2, 5
                  sra          a4, s10, s9
                  and          gp, t0, tp
                  or           s9, tp, ra
                  srai         s10, s5, 3
                  sll          s2, a5, a5
                  sltiu        t1, t2, 1156
                  slti         zero, s7, -97
                  addi         s2, s1, -1782
                  sltu         t2, t1, a2
                  sll          t5, sp, s6
                  slti         t2, s2, -558
                  add          ra, s2, a5
                  nop
                  srli         zero, s3, 21
                  slli         t6, s2, 6
                  sra          a1, a5, s10
                  slli         a3, a1, 11
                  srl          s9, t2, zero
                  slt          s1, s10, s5
                  sltiu        zero, t0, 1542
                  sra          s11, t6, t4
                  or           s11, t1, zero
                  sra          ra, gp, a2
                  slti         s11, t1, -1484
                  ori          a2, zero, 1122
                  nop
                  auipc        sp, 486321
                  srli         a2, sp, 1
                  sltiu        t2, s10, 1048
                  sll          s9, s7, sp
                  sltiu        gp, s5, -1785
                  srai         t5, t6, 24
                  and          s8, a0, s6
                  xor          t2, a0, s2
                  sll          s11, a6, a4
                  add          a7, s4, s1
                  srl          a3, s6, s4
                  auipc        s11, 553438
                  sll          s1, s10, sp
                  or           s5, s8, a4
                  add          a2, a0, s7
                  sub          s0, s2, s3
                  lui          s9, 9764
                  nop
                  srl          s7, t2, s3
                  or           a3, a0, a2
                  srli         t2, s10, 13
                  sll          a3, s6, s6
                  and          a3, a7, a7
                  andi         t6, s4, 795
                  srai         gp, s8, 10
                  sll          t1, s10, s6
                  slli         zero, a5, 29
                  andi         a1, s7, 1465
                  andi         t4, a7, 2023
                  slti         s1, t4, -267
                  ori          s8, t6, -1567
                  ori          s10, gp, 939
                  slt          gp, s0, t4
                  srl          tp, gp, a3
                  or           s7, s0, t3
                  add          t6, s7, a2
                  auipc        sp, 599520
                  xor          tp, t0, t4
                  sltu         s5, a1, t3
                  auipc        a5, 169098
                  add          t1, zero, a3
                  slt          s11, t2, t5
                  or           t3, s5, s2
                  slti         a1, s8, 1014
                  and          s10, s1, a0
                  sll          s8, s1, s6
                  or           s4, t5, t0
                  or           ra, t6, t6
                  sub          s1, a1, s3
                  srli         s11, a5, 18
                  sub          s5, s0, a0
                  lui          s4, 555683
                  xor          s10, s7, a6
                  srl          t3, t1, a2
                  nop
                  sltu         a6, a6, zero
                  lui          ra, 396642
                  xori         a7, t3, 143
                  add          s5, s8, t2
                  sltu         t3, s7, tp
                  sra          s3, s3, s0
                  sra          s0, s8, gp
                  and          s7, s10, ra
                  auipc        gp, 275844
                  srl          t2, gp, s2
                  addi         zero, s1, -409
                  auipc        a5, 122067
                  slt          t2, gp, a3
                  sltiu        s4, t5, -1545
                  ori          sp, t3, -694
                  lui          s0, 283445
                  slli         t1, sp, 4
                  slti         s11, s5, 247
                  lui          sp, 827746
                  sll          s3, t0, t4
                  xori         a3, t4, 1170
                  srl          t5, a3, gp
                  sltu         a7, t6, s2
                  slt          s11, s3, s6
                  sltiu        a7, s5, -1291
                  sltu         s0, s10, s10
                  sltiu        sp, a4, -1462
                  auipc        s4, 627202
                  sltu         s4, s4, s0
                  add          s11, t3, s5
                  sra          s5, t0, s5
                  nop
                  xor          s4, t1, zero
                  xor          gp, t5, t5
                  add          s2, t2, a7
                  addi         s1, s4, -615
                  nop
                  ori          zero, zero, -863
                  sltiu        ra, s1, 1488
                  lui          s7, 431773
                  slti         s2, s10, 1025
                  slt          s10, a0, zero
                  xori         s7, s0, -857
                  sra          a7, s1, gp
                  nop
                  ori          t4, t6, -1914
                  srl          s7, s11, sp
                  sra          a4, t5, sp
                  slli         s9, s1, 7
                  xori         s3, s10, 1013
                  slli         tp, s7, 6
                  srl          zero, s2, t5
                  slt          t4, a2, a5
                  addi         a2, a1, 128
                  slli         ra, tp, 17
                  srli         a6, s11, 7
                  slli         a7, tp, 7
                  sll          s0, s3, s0
                  addi         tp, t1, 629
                  auipc        t5, 629425
                  srai         s3, a0, 9
                  slt          s0, gp, tp
                  addi         s4, a2, 868
                  srai         a6, sp, 28
                  or           a7, s11, a1
                  srai         a3, t5, 8
                  addi         s0, a2, -707
                  srai         s7, t6, 1
                  la x22, test_done
                  jalr x0, x22, 0
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x5, x10, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x9, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x9, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x9, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x9, x4, ecall_handler
                  li x4, 0x1
                  beq x9, x4, instr_fault_handler
                  li x4, 0x5
                  beq x9, x4, load_fault_handler
                  li x4, 0x7
                  beq x9, x4, store_fault_handler
                  li x4, 0xc
                  beq x9, x4, pt_fault_handler
                  li x4, 0xd
                  beq x9, x4, pt_fault_handler
                  li x4, 0xf
                  beq x9, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x10, x5, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
