.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0x83cdc2fd
                  li x1, 0xb
                  li x3, 0x88fd6155
                  li x4, 0x878f8b63
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xfc389ca6
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xf4a35007
                  li x12, 0xf5a3f277
                  li x13, 0xf37532b7
                  li x14, 0xfeed483a
                  li x15, 0xf804c146
                  li x16, 0x80000000
                  li x17, 0x5
                  li x18, 0xfbb12cca
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x23, 0xf
                  li x24, 0xc
                  li x25, 0x0
                  li x26, 0x8ec81eea
                  li x27, 0xfac65b07
                  li x28, 0xf8846bdc
                  li x29, 0x80000000
                  li x30, 0x1
                  li x31, 0xf2a6f9de
                  la x22, user_stack_end
main:             li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a4, 0xa6b562f2
                  li           t6, 0x0
                  li           ra, 0xf0698f06
                  li           t3, 0x61d1c263
                  li           s10, 0x1730dd45
                  li           a0, 0x80000000
                  li           tp, 0x23b1d9f7
                  li           a5, 0xd40b0376
                  li           a3, 0x80000000
                  sub          t3, a3, a4
                  add          s10, s9, t6
                  sub          t3, a0, a5
                  addi         t6, s9, 1891
                  add          a5, a0, s10
                  auipc        t6, 728332
                  lui          a3, 1020880
                  lui          tp, 595585
                  add          a5, t3, tp
                  nop
                  addi         a3, a0, 1215
                  add          s10, a0, s9
                  nop
                  sub          a3, s9, t6
                  auipc        tp, 219487
                  nop
                  lui          a0, 281748
                  add          a5, a4, a0
                  add          a0, s9, a5 #end riscv_int_numeric_corner_stream_3
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t1, 0xffffffff
                  li           t5, 0xf6e1c264
                  li           t6, 0x0
                  li           s10, 0xc1135658
                  li           s8, 0x838c865e
                  li           ra, 0x303d253d
                  li           t3, 0xffffffff
                  li           a5, 0xffffffff
                  li           t4, 0xffffffff
                  add          t3, a3, s8
                  lui          a3, 587704
                  nop
                  auipc        s8, 467483
                  auipc        ra, 940525
                  sub          a3, ra, t4
                  auipc        s8, 868342
                  auipc        t6, 688611
                  add          t4, t3, s8
                  sub          t4, t3, a5
                  addi         s10, ra, 866
                  add          t1, s10, t4
                  addi         s10, ra, 1578
                  sub          a5, t4, t4
                  sub          s10, t1, a3
                  addi         t1, t4, -1904
                  auipc        t1, 612213
                  lui          t1, 430659
                  auipc        a5, 112777
                  add          ra, t6, s8
                  nop
                  auipc        a5, 244575
                  lui          a5, 925370 #end riscv_int_numeric_corner_stream_1
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s7, 0x4b0aabb4
                  li           t3, 0xffffffff
                  li           a5, 0x0
                  li           a1, 0x80000000
                  li           s2, 0x0
                  li           s11, 0x0
                  li           t1, 0x4b946893
                  li           a0, 0x0
                  li           s8, 0x0
                  nop
                  auipc        a1, 642697
                  auipc        a2, 1004172
                  addi         t1, s11, 1691
                  sub          a1, a0, t3
                  nop
                  lui          s11, 991378
                  auipc        s7, 282966
                  lui          s2, 586125
                  addi         s8, a0, 1234
                  add          t1, s11, s11
                  sub          t3, s8, a0
                  sub          a0, a2, a2
                  addi         a2, s7, 220
                  auipc        t3, 529078
                  auipc        a0, 2255
                  add          a5, s2, a2
                  sub          s2, s11, a5
                  add          a2, a1, s2
                  add          a1, a1, a0
                  addi         s11, a0, 1883
                  add          a2, s7, s7
                  add          s2, s8, t1
                  lui          s11, 319092
                  lui          s8, 188535
                  add          s11, t1, s11 #end riscv_int_numeric_corner_stream_11
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s8, 0xffffffff
                  li           s2, 0x5367deb3
                  li           t3, 0xffffffff
                  li           s0, 0x80000000
                  li           s9, 0x0
                  li           a5, 0xf1001034
                  li           t5, 0x80000000
                  li           t1, 0x80000000
                  li           a1, 0x5cf837cc
                  lui          a5, 580283
                  sub          a7, t3, a1
                  sub          s8, s2, a1
                  sub          s8, t3, t5
                  lui          t5, 959931
                  auipc        t5, 530583
                  add          s8, s9, t3
                  add          a5, s9, s0
                  add          s9, t5, s0
                  auipc        a5, 336414
                  add          a5, t3, a5
                  auipc        t5, 864340
                  auipc        s0, 747722
                  addi         t1, t1, 860
                  add          a1, t1, t3
                  lui          a7, 177226
                  addi         t1, s2, -1509
                  addi         a1, a7, -1862
                  sub          a7, t3, s8
                  auipc        t5, 54431 #end riscv_int_numeric_corner_stream_9
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t5, 0x0
                  li           t2, 0xffffffff
                  li           t3, 0x80000000
                  li           t1, 0x80000000
                  li           a0, 0x5f0d090
                  li           ra, 0x80000000
                  li           s11, 0x0
                  li           s7, 0xe5ce2f86
                  li           a5, 0xffffffff
                  nop
                  sub          t5, t2, a5
                  auipc        s11, 561553
                  add          ra, a0, t2
                  lui          ra, 670093
                  auipc        ra, 406324
                  auipc        s7, 510684
                  sub          s1, t3, s7
                  auipc        a5, 215517
                  sub          a0, t5, t2
                  sub          a5, t3, t5
                  addi         t1, s11, -31
                  lui          t1, 1041102
                  auipc        t1, 111880
                  addi         t3, t1, 618
                  addi         s7, a5, 1634
                  auipc        t5, 379906
                  nop
                  addi         t3, s1, 708
                  auipc        t3, 607746
                  sub          s11, s1, t5
                  add          s1, t5, t3
                  lui          t3, 644708
                  addi         t1, s7, 1017
                  sub          s11, t3, t3
                  nop
                  addi         t1, s1, -446
                  nop
                  add          a5, t2, a0 #end riscv_int_numeric_corner_stream_8
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s1, 0xffffffff
                  li           s8, 0x96cc4e5d
                  li           s7, 0x80000000
                  li           t4, 0x80000000
                  li           tp, 0x0
                  li           s5, 0x0
                  li           s0, 0x80000000
                  li           s2, 0xffffffff
                  li           gp, 0xffffffff
                  lui          s0, 276390
                  sub          s7, s8, tp
                  nop
                  auipc        s7, 687412
                  add          s5, s2, s0
                  add          s1, gp, tp
                  lui          tp, 654204
                  nop
                  lui          s7, 991476
                  lui          s2, 48672
                  auipc        s8, 821269
                  nop
                  add          s5, s0, t4
                  sub          t4, s5, s1
                  auipc        t4, 360777
                  lui          s0, 634880
                  sub          s8, s8, s0
                  addi         s2, s7, 1145
                  lui          s0, 497208
                  addi         s1, s2, -446
                  sub          s2, t4, a1
                  sub          gp, s0, s0
                  lui          a1, 681182 #end riscv_int_numeric_corner_stream_5
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s5, 0x0
                  li           t5, 0x78df7fd2
                  li           a0, 0xffffffff
                  li           s7, 0xb09abde9
                  li           t2, 0xffffffff
                  li           t3, 0x80000000
                  li           t1, 0xc7980d47
                  li           s4, 0x80000000
                  li           s11, 0x80000000
                  nop
                  addi         s5, s4, -637
                  nop
                  lui          s8, 827873
                  auipc        a0, 541885
                  auipc        t2, 566778
                  nop
                  lui          t5, 301276
                  nop
                  nop
                  sub          t1, a0, s5
                  lui          t5, 725840
                  auipc        s4, 77854
                  addi         s5, t1, -1000
                  add          s11, s8, t1
                  lui          t2, 99687
                  add          s8, s11, t1
                  add          s5, t1, s11
                  sub          t1, s7, s5 #end riscv_int_numeric_corner_stream_10
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s4, 0xc43037ad
                  li           s11, 0x80000000
                  li           a6, 0x0
                  li           t4, 0x0
                  li           gp, 0x80000000
                  li           t1, 0x0
                  li           s10, 0xffffffff
                  li           t6, 0x80000000
                  li           s5, 0x80000000
                  auipc        a6, 720030
                  nop
                  nop
                  lui          s10, 757781
                  nop
                  add          t6, s2, s2
                  lui          s11, 629098
                  addi         s5, t6, 1860
                  nop
                  nop
                  auipc        a6, 556388
                  sub          a6, t6, a6
                  add          t4, s4, t1
                  auipc        t1, 145388
                  lui          t4, 539768
                  lui          s4, 14441
                  auipc        a6, 496627
                  add          a6, t6, t1
                  add          s4, gp, t4
                  lui          s4, 507986
                  nop #end riscv_int_numeric_corner_stream_7
                  li           a4, 0x589cb9f3 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xffffffff
                  li           t2, 0x71c25c5f
                  li           a0, 0xffffffff
                  li           s1, 0x80000000
                  li           a2, 0xffffffff
                  li           a7, 0x80000000
                  li           t3, 0x0
                  li           s2, 0xcdccec71
                  li           tp, 0x0
                  auipc        s1, 116528
                  auipc        s1, 986082
                  auipc        s2, 559384
                  addi         t3, t3, -1886
                  addi         tp, a0, -763
                  auipc        t3, 1013175
                  add          a2, t2, s1
                  add          t2, t2, a2
                  lui          s2, 432910
                  auipc        s1, 750743
                  auipc        s2, 859764
                  sub          a2, t2, a7
                  lui          tp, 588488
                  sub          tp, s1, t2
                  auipc        a4, 755286
                  lui          s1, 917590
                  lui          a7, 594755
                  sub          a3, a4, a0
                  auipc        tp, 29953
                  sub          a2, s2, t2
                  auipc        a4, 400944
                  add          a4, tp, a4 #end riscv_int_numeric_corner_stream_4
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t6, 0x80000000
                  li           a7, 0xa0d15e40
                  li           t1, 0x0
                  li           a6, 0xe791271d
                  li           t2, 0x0
                  li           t5, 0x0
                  li           t4, 0xffffffff
                  li           s9, 0x2ae964d9
                  li           t0, 0x0
                  lui          a7, 52732
                  auipc        t0, 912859
                  lui          a5, 528461
                  sub          a5, t5, t2
                  add          t2, t2, a5
                  auipc        t1, 949071
                  addi         a5, t2, -615
                  nop
                  nop
                  auipc        a7, 240979
                  add          a7, t0, t0
                  auipc        a6, 578586
                  auipc        a5, 276879
                  sub          a6, a5, t0
                  auipc        t4, 130422
                  auipc        t2, 685062
                  auipc        t5, 573243
                  lui          t6, 422166
                  add          a5, a7, a7
                  lui          t1, 12357
                  nop
                  auipc        t5, 133246
                  nop
                  nop
                  add          t6, a6, t2 #end riscv_int_numeric_corner_stream_16
                  and          s5, zero, t5
                  and          a3, a1, s1
                  nop
                  slt          a4, t5, s4
                  addi         t1, s8, -1523
                  or           a0, tp, t2
                  or           s11, s0, s0
                  sll          t0, s0, s8
                  xor          a0, zero, t3
                  addi         s11, s11, -846
                  nop
                  sltiu        t4, s5, 1713
                  sll          a3, ra, t4
                  srai         s2, t0, 2
                  sltiu        t0, s7, -458
                  srl          gp, s4, s10
                  slt          tp, s1, t5
                  addi         s11, s7, -1885
                  ori          s9, s0, -1238
                  srl          a1, t3, s9
                  lui          a0, 82605
                  srai         s5, s10, 11
                  srl          t4, s8, t1
                  srai         t1, a7, 7
                  addi         t3, t5, 1993
                  xor          t2, t3, s2
                  xori         a0, s0, 729
                  lui          a3, 557495
                  xor          t3, a0, a3
                  sltu         t6, gp, t2
                  sra          t5, s0, t2
                  ori          t5, s10, -85
                  auipc        a4, 191617
                  sltiu        a1, t2, -1435
                  sra          a4, a1, t4
                  slti         s1, s9, 1963
                  srl          s2, t6, s5
                  addi         s10, t4, -394
                  xor          s7, zero, s9
                  sltiu        a7, s2, -1786
                  srai         s9, s5, 31
                  slti         t1, t3, 1646
                  srli         s10, tp, 10
                  ori          a2, zero, -1763
                  sltu         s9, s6, zero
                  add          a5, a0, s11
                  slti         a2, zero, -1302
                  xori         s1, s6, 2001
                  auipc        t2, 358310
                  and          s5, t6, s10
                  addi         s7, s6, 1815
                  addi         t3, t0, 1334
                  sltiu        t5, t6, 493
                  and          t1, t0, t4
                  sub          s8, sp, t2
                  xor          t1, s3, t5
                  andi         s11, ra, -1703
                  nop
                  slt          a5, ra, s10
                  ori          t0, sp, 118
                  srl          t0, s3, s3
                  sltiu        s2, a3, 1914
                  and          a4, ra, a0
                  srli         s2, s0, 15
                  srai         t3, s11, 3
                  ori          a5, s0, 871
                  andi         tp, s4, -1913
                  slli         a1, t0, 26
                  add          a4, t3, s6
                  sltu         t5, t2, a4
                  xor          zero, t3, a3
                  xor          s0, s3, a0
                  srli         a1, s5, 1
                  slli         a5, a7, 13
                  sra          tp, t0, s7
                  sra          a0, s3, s5
                  ori          s2, a7, 838
                  slti         a5, t6, -931
                  ori          s5, s6, -1426
                  lui          t2, 906837
                  nop
                  lui          s4, 202822
                  ori          s1, a5, 23
                  srai         a3, sp, 29
                  andi         s0, s5, 610
                  slti         a1, t1, 561
                  sltu         s1, s8, t4
                  auipc        s0, 872990
                  andi         t6, t5, -1357
                  slli         t2, a1, 7
                  slti         ra, gp, 1399
                  srai         s0, a5, 6
                  xor          a4, s4, sp
                  srl          s10, s1, t1
                  sub          t0, s6, s5
                  srl          gp, s4, a4
                  auipc        t6, 408811
                  xori         s7, a7, -622
                  slt          a6, s5, t3
                  lui          t5, 829368
                  andi         s0, s8, -468
                  andi         t2, t5, 1122
                  sltiu        a4, s4, -1984
                  sub          s0, gp, a6
                  sltiu        s4, a3, 1745
                  sra          a1, s0, s4
                  lui          t6, 141545
                  auipc        t1, 401889
                  slti         a4, s2, -1487
                  slli         t6, s10, 12
                  srl          a7, t6, s8
                  nop
                  srl          zero, ra, tp
                  xori         s1, s3, -1827
                  srli         s9, s5, 9
                  srl          t0, t0, a4
                  add          t0, tp, a3
                  andi         s8, a5, 1217
                  sll          t3, a7, s3
                  andi         zero, zero, 1537
                  add          a1, s4, t5
                  xori         t0, a1, -907
                  nop
                  sll          s10, s7, a6
                  srli         s1, s0, 7
                  sra          a3, s1, t0
                  add          a6, zero, s1
                  sub          s4, tp, s0
                  sltiu        t0, a5, -1730
                  slti         a5, s1, -1624
                  lui          t2, 478908
                  nop
                  or           t4, s1, s4
                  xor          t4, a6, t1
                  auipc        s1, 756452
                  xori         s11, s4, -1281
                  or           s7, s1, s2
                  slli         s4, s3, 23
                  sltiu        s11, t3, -348
                  addi         t2, a5, 1682
                  or           t2, a1, t6
                  addi         ra, t0, -679
                  add          a1, a4, s11
                  addi         s11, t0, 1946
                  srli         ra, a2, 30
                  srai         s1, a6, 3
                  srli         s10, zero, 31
                  add          a5, t4, a6
                  lui          t6, 999544
                  ori          a4, ra, 1116
                  sltiu        a4, s10, -1983
                  ori          s9, t6, -1180
                  srai         t1, gp, 17
                  srli         s11, a2, 1
                  or           zero, sp, a7
                  sll          a0, a7, a0
                  slti         t5, tp, -752
                  add          t6, s0, t6
                  lui          s7, 411254
                  andi         ra, s3, -844
                  sll          t3, sp, t6
                  or           s4, t4, s4
                  lui          tp, 173069
                  srli         t3, s1, 15
                  srli         t3, t6, 1
                  sub          s2, sp, t3
                  xori         s7, s4, 968
                  ori          s4, tp, 694
                  andi         tp, sp, 510
                  sltu         a5, t1, a1
                  add          t5, s11, t4
                  sll          s7, s3, s11
                  andi         s7, tp, -1954
                  sra          t4, t5, t2
                  xor          s10, a1, s5
                  lui          s4, 256197
                  auipc        t3, 350717
                  sll          ra, t1, t0
                  srli         a2, s1, 24
                  auipc        a2, 665008
                  slt          t6, s11, s7
                  or           t4, s5, a4
                  slti         t3, tp, 515
                  sra          s0, s6, zero
                  auipc        s1, 271418
                  add          a1, gp, s7
                  srl          s10, t2, zero
                  and          s0, a5, a1
                  slt          a5, t2, s1
                  srl          s11, s0, s9
                  sub          a3, s4, s7
                  lui          s10, 323517
                  xor          t6, s4, t5
                  sll          zero, sp, s9
                  slti         s0, s6, 1747
                  or           s10, s10, t1
                  srai         s8, t2, 10
                  srli         s9, a1, 4
                  ori          s11, ra, 1277
                  addi         a4, s4, -31
                  lui          s11, 249158
                  sll          zero, s8, a0
                  nop
                  srai         t1, s3, 20
                  sltu         a0, s0, tp
                  slt          a3, a4, t1
                  addi         tp, a4, -642
                  srli         s0, s8, 24
                  addi         s1, gp, 91
                  sltiu        tp, s2, 1385
                  addi         a7, s8, 1883
                  srai         s8, a2, 1
                  srli         a5, a5, 13
                  or           s10, s5, a7
                  add          s0, t1, s3
                  and          a0, s5, s9
                  sub          t1, t1, s5
                  andi         tp, t4, 1914
                  addi         s4, s9, 394
                  sub          t3, s2, t2
                  lui          s4, 542039
                  sltu         a6, s10, a0
                  srli         a1, sp, 0
                  auipc        s0, 113087
                  sltiu        t0, t5, -446
                  slti         s1, s3, -522
                  auipc        s5, 533888
                  slli         t4, s4, 16
                  ori          tp, s10, -509
                  or           t5, a2, a4
                  sltiu        t1, s2, -1990
                  add          s0, s8, s3
                  srli         a0, s4, 17
                  and          s5, gp, t6
                  sub          t4, t2, s11
                  addi         t4, s5, 1787
                  andi         t3, s6, 1976
                  and          a4, a3, a2
                  sub          zero, s5, a2
                  ori          a5, s8, 273
                  nop
                  srl          zero, t6, s7
                  and          s10, a6, s5
                  xori         t2, s8, 395
                  auipc        tp, 204043
                  auipc        a6, 156820
                  xori         s8, t2, 1143
                  srli         s1, s4, 25
                  or           a2, a0, t5
                  or           a3, t4, a6
                  addi         s9, t2, 765
                  slti         s1, s5, -1644
                  addi         s4, a3, 1507
                  add          t5, t6, a1
                  sra          s0, ra, s1
                  addi         s0, s4, 1315
                  ori          s0, s0, -332
                  auipc        s1, 848956
                  slti         s1, s4, -211
                  andi         t6, t3, -86
                  addi         s8, s5, -724
                  sra          s5, s3, ra
                  andi         a3, tp, 56
                  srli         gp, a3, 24
                  sll          s9, a3, t1
                  andi         s9, sp, 724
                  sra          s1, s3, tp
                  lui          t4, 642268
                  slt          ra, s0, a4
                  sll          a3, a2, s5
                  sra          a3, s10, t1
                  srl          s1, t3, gp
                  addi         t1, a0, 1353
                  andi         a7, a5, -1822
                  nop
                  andi         tp, s1, 1748
                  slli         a6, s6, 27
                  slti         s11, a1, 53
                  sra          s1, s9, s0
                  and          t0, s9, s3
                  slli         a3, s1, 1
                  xori         s1, s6, -1682
                  andi         s1, sp, -493
                  slti         ra, t5, -1734
                  slti         a0, s3, -1307
                  add          zero, ra, t1
                  and          t4, t6, t4
                  srl          a1, tp, a2
                  slli         s5, t0, 29
                  xor          s5, sp, s4
                  xor          s7, t6, s9
                  srl          tp, t1, s2
                  xor          t6, s4, t2
                  add          t5, s1, a4
                  xori         zero, tp, 1735
                  lui          t0, 1000106
                  addi         a5, s3, -267
                  srl          t6, s7, s9
                  lui          a6, 114715
                  auipc        s1, 777662
                  sltu         a5, s9, zero
                  xori         t3, a2, 1529
                  addi         t3, ra, 812
                  slli         a5, s11, 21
                  slli         s7, gp, 10
                  or           s7, tp, a7
                  slt          s8, tp, zero
                  xori         a0, s9, 1016
                  andi         a4, s5, -1861
                  srli         s9, a5, 12
                  xori         a1, s7, -22
                  nop
                  sll          t4, s2, zero
                  sltu         a0, a3, s7
                  sltu         tp, s11, s5
                  srl          s11, s4, s11
                  ori          a4, t4, -314
                  slt          t1, a3, t1
                  sub          a7, s3, t1
                  lui          s2, 397930
                  add          s4, ra, a3
                  xori         t5, a3, 798
                  sltiu        s5, zero, 1527
                  slti         s9, a0, -1215
                  sra          s1, ra, tp
                  sll          s10, t5, s3
                  srai         s5, a4, 20
                  sll          t3, s11, s5
                  or           s8, s7, s7
                  ori          s9, t2, -981
                  slti         a3, t6, 1471
                  auipc        ra, 331072
                  sll          a1, a1, s7
                  add          s4, s9, tp
                  xori         s10, t1, 345
                  lui          s0, 924757
                  slti         s9, a2, -1596
                  slti         t1, s7, 1909
                  sub          s11, s5, s5
                  slti         s5, s0, 306
                  srli         a6, s7, 0
                  auipc        s4, 195254
                  ori          gp, s9, -204
                  sub          s11, s1, s9
                  nop
                  slt          t5, s8, a0
                  srli         a7, s0, 12
                  add          s11, a2, a4
                  lui          t0, 45475
                  sub          tp, t0, t0
                  sltiu        t2, s8, 528
                  sltiu        a0, a7, -824
                  addi         s7, t3, -64
                  slt          s9, sp, a2
                  sll          s2, s9, a4
                  srl          ra, a4, a0
                  slli         a7, t5, 12
                  sltu         t3, t3, s1
                  xori         gp, t1, 598
                  sra          a4, s4, t4
                  srai         a6, t4, 2
                  slti         t1, s11, 1876
                  srai         s4, s7, 28
                  sra          s9, ra, ra
                  addi         tp, a5, 1965
                  slli         s9, t2, 26
                  nop
                  auipc        tp, 284673
                  srai         t5, t4, 6
                  or           t4, t5, t0
                  add          s5, s3, t3
                  xor          a0, s11, ra
                  slti         s8, s1, 1121
                  xori         t4, t4, 321
                  sub          s8, s6, a7
                  sub          t0, t4, a3
                  addi         s1, gp, 216
                  slli         s9, s0, 25
                  slti         s8, a5, 1606
                  sra          tp, s10, zero
                  srli         s7, t2, 11
                  andi         a3, s2, 332
                  srai         s9, s3, 28
                  slli         s2, a5, 26
                  ori          t1, a6, 824
                  or           a5, s5, ra
                  sll          a3, t2, tp
                  nop
                  or           t6, a0, zero
                  srai         t3, gp, 22
                  sra          a4, t2, s1
                  slli         t0, s2, 9
                  slt          ra, s3, s4
                  srli         s5, sp, 12
                  and          t5, a3, t1
                  xori         s8, a5, -1197
                  lui          zero, 249300
                  sub          a3, sp, t2
                  slt          s5, a2, a4
                  xor          a7, gp, a4
                  lui          zero, 321347
                  xori         t6, t0, -357
                  slt          gp, sp, s0
                  xor          s4, t4, s8
                  sltiu        s10, t3, -1063
                  and          a1, s4, s11
                  auipc        t5, 458136
                  srai         t4, a0, 1
                  or           s8, a2, gp
                  sub          t3, zero, s10
                  slti         tp, t6, -141
                  sltu         t6, t6, a5
                  sltiu        s8, sp, -1105
                  nop
                  auipc        a6, 800652
                  sltiu        a2, s2, -1478
                  slt          a1, t5, a0
                  lui          zero, 616397
                  sll          t4, zero, a0
                  and          a1, s7, t3
                  sltiu        ra, s7, 371
                  srl          t5, ra, a5
                  xori         t1, s7, -413
                  slli         a3, a5, 13
                  srli         s1, s3, 30
                  or           a7, a0, t0
                  andi         a6, t5, -1944
                  xor          t0, s9, t3
                  add          zero, a6, tp
                  auipc        t6, 200533
                  addi         s10, s6, 667
                  ori          a4, tp, -610
                  sltu         s8, sp, s10
                  srl          tp, t0, s2
                  lui          s8, 1021025
                  sltiu        gp, gp, 908
                  sub          t1, s6, s8
                  addi         t5, s2, 612
                  and          s0, a0, s2
                  sra          s1, zero, zero
                  slti         s1, a1, -440
                  sltiu        a2, gp, 1551
                  slli         s2, s1, 9
                  nop
                  sltiu        s4, s10, 764
                  srli         s10, t4, 5
                  nop
                  slt          s5, s6, t0
                  srai         a2, s0, 4
                  sra          s9, s8, tp
                  xor          a7, s0, s11
                  andi         t0, s6, 46
                  sltu         t5, tp, a4
                  srl          t6, s6, a6
                  auipc        zero, 1003114
                  or           s2, s3, s3
                  sub          ra, s1, t6
                  slli         s11, a0, 21
                  sltu         a7, t4, t5
                  addi         tp, t0, 1414
                  slti         a2, s1, -644
                  slli         s0, a0, 23
                  and          ra, a3, sp
                  ori          s1, t4, -774
                  xor          s11, a6, a5
                  lui          s8, 51937
                  srl          s11, s6, t1
                  slti         t1, a1, 1785
                  sll          t4, s5, tp
                  sltu         s10, s0, s0
                  andi         s4, s1, 1189
                  slt          s1, sp, s7
                  xori         s11, t6, -1416
                  lui          t2, 835296
                  sub          gp, t4, t4
                  slli         zero, s2, 4
                  xori         zero, t4, -1616
                  srl          t3, s3, a3
                  xori         s7, t3, -983
                  sll          t1, t6, gp
                  nop
                  sra          a5, s9, a7
                  srl          a7, zero, t5
                  srl          a3, a3, t4
                  sltu         ra, s8, a1
                  srli         t4, t3, 31
                  addi         a3, s2, -1850
                  slti         s11, a3, -257
                  auipc        t1, 420335
                  auipc        a7, 693168
                  or           s11, a7, ra
                  slli         a6, s8, 17
                  xor          a2, s0, s5
                  nop
                  srli         s2, t3, 31
                  xor          s8, a6, t3
                  lui          t2, 519968
                  slti         t3, sp, -1627
                  sub          s9, s6, tp
                  sra          a5, sp, s2
                  srli         s10, a4, 27
                  sub          a0, s5, t0
                  srl          a5, t1, ra
                  or           s0, s0, s11
                  xor          s9, s4, s10
                  auipc        t4, 252117
                  sub          tp, a2, zero
                  srli         s7, t4, 2
                  xor          t1, t5, s10
                  lui          s2, 953734
                  xor          t2, s5, s10
                  slli         s7, t2, 28
                  slli         t0, t6, 2
                  slti         t6, s8, -1802
                  slti         a5, tp, -362
                  slt          a5, s8, a6
                  addi         a6, t3, 815
                  or           t2, s8, a7
                  nop
                  sltu         t1, t0, s5
                  sll          a4, s11, s2
                  lui          s1, 392990
                  slt          a4, s3, zero
                  lui          t3, 738444
                  add          a4, zero, s8
                  srl          s7, s1, s7
                  add          s8, a7, t4
                  sltiu        ra, a5, 18
                  srl          a2, s0, tp
                  xori         tp, t4, 1493
                  srai         s1, s2, 21
                  add          t3, ra, a1
                  srli         s8, a3, 23
                  auipc        s1, 919796
                  ori          s2, s4, 659
                  sll          s7, s9, ra
                  srl          a7, gp, a5
                  sra          a3, sp, s8
                  slt          s0, zero, gp
                  andi         a7, t3, -503
                  sltiu        a1, s7, -142
                  auipc        s5, 692836
                  sra          t5, zero, t0
                  ori          s5, s4, 408
                  lui          tp, 990518
                  sub          a1, a3, zero
                  xori         zero, a6, 201
                  xor          zero, a0, a0
                  srai         a4, s9, 11
                  xor          zero, t3, a7
                  sll          zero, s2, zero
                  sll          ra, gp, s6
                  slt          ra, s7, t3
                  sltu         s2, sp, s11
                  sub          t5, a1, a0
                  addi         s1, a3, -1559
                  and          s0, t5, s9
                  srai         t2, t4, 25
                  ori          s4, sp, 827
                  sll          t2, a7, ra
                  andi         a4, ra, -1008
                  xor          a5, t1, s2
                  xor          s1, s10, gp
                  sltu         s9, t1, s0
                  slti         t1, a5, -668
                  xor          s2, s9, gp
                  or           t1, a1, t2
                  slt          t1, t6, s5
                  srl          a7, ra, s5
                  andi         s1, zero, -1583
                  sub          s1, s11, sp
                  add          a0, s9, a2
                  slt          s10, a5, a3
                  or           t4, t3, tp
                  srai         t3, t3, 31
                  auipc        s7, 666364
                  sra          s0, a7, t0
                  slti         t6, s5, 662
                  sra          gp, t1, a4
                  lui          a3, 804938
                  slti         a6, a2, 1444
                  sltiu        a7, s2, 405
                  and          a0, sp, a0
                  srai         a7, t5, 17
                  slti         a7, s5, -1053
                  or           ra, ra, t4
                  sltiu        t2, s5, -1946
                  or           s7, s10, sp
                  lui          t4, 47660
                  xori         t2, s7, 890
                  sltu         a4, zero, s10
                  lui          t3, 229584
                  lui          s4, 439732
                  srl          t5, s4, a5
                  xori         t6, s9, 1048
                  or           t5, tp, s5
                  sltiu        s7, t0, 1329
                  ori          zero, a3, -1238
                  xori         a0, ra, -313
                  xori         s7, a0, -617
                  and          s8, ra, s9
                  xor          s2, t4, sp
                  auipc        s1, 983882
                  srai         s10, s9, 22
                  slt          t4, a1, s10
                  sra          s10, t3, t6
                  srai         a0, a1, 6
                  ori          s10, s7, 1881
                  add          s10, s4, t3
                  srai         s1, s3, 8
                  nop
                  slli         a4, t5, 2
                  addi         a0, a3, 154
                  slt          a2, a7, s11
                  slli         a2, s7, 6
                  xori         t0, s5, -1836
                  sra          a5, zero, s1
                  xori         a5, ra, 922
                  and          a0, a5, s4
                  nop
                  or           a1, t1, s8
                  ori          s9, s2, -432
                  slli         s10, a7, 17
                  ori          a3, a1, 1206
                  and          t4, s1, s6
                  xor          ra, t0, s10
                  xor          ra, s2, zero
                  srl          a3, s8, zero
                  slli         s0, a1, 29
                  sub          s0, s9, a5
                  sltu         s5, s0, s0
                  sll          s7, s5, s3
                  and          s5, a0, s7
                  addi         s1, s1, -1378
                  addi         t0, sp, 1476
                  and          a0, s6, s3
                  slli         a1, a6, 8
                  and          s9, a6, a7
                  add          s8, a1, a0
                  srl          a1, s11, a5
                  srai         t4, s0, 1
                  andi         s5, s4, 495
                  sra          s2, ra, s4
                  slti         s10, sp, 1990
                  sra          a5, s4, a1
                  srl          t3, s3, s5
                  and          s2, s8, ra
                  srli         ra, s8, 0
                  sltu         gp, s6, t5
                  nop
                  xori         s11, a6, -290
                  sub          a0, s4, s8
                  or           s5, t3, a4
                  ori          a6, a0, 783
                  sra          t3, ra, s6
                  srli         t0, a7, 0
                  ori          tp, t4, -293
                  xor          s8, zero, t4
                  addi         s0, tp, -1947
                  srai         a7, a7, 12
                  slli         s0, zero, 5
                  sra          a7, t6, a2
                  andi         t4, sp, -1932
                  srl          t2, a0, t3
                  andi         ra, s4, -809
                  sll          s11, t2, a0
                  slti         t2, s2, 618
                  srl          a2, t0, t6
                  sltiu        s9, t3, 767
                  sub          t3, ra, s9
                  srl          s8, tp, s8
                  srl          a0, s3, a2
                  xor          a3, t0, t1
                  sll          a7, a3, s6
                  lui          t2, 101796
                  sll          a2, t0, s8
                  srl          a2, ra, a3
                  addi         s2, s8, 1459
                  andi         a7, a5, 305
                  slti         s8, a1, -1137
                  xori         s9, ra, 1737
                  srai         a5, a1, 16
                  addi         a6, a2, -343
                  slti         a7, s6, 149
                  sub          a4, gp, s4
                  slti         a7, s2, 1051
                  add          s5, s6, t4
                  sll          t0, t4, s11
                  slt          t3, gp, a1
                  or           t4, a6, a0
                  xori         s7, a2, 2006
                  andi         t3, s3, -509
                  sltiu        a0, t6, 582
                  or           t4, s6, tp
                  sltu         s8, s0, sp
                  sub          s7, t2, t3
                  sll          a3, s1, s10
                  sll          a3, t4, zero
                  or           t2, s2, a6
                  srli         a7, gp, 20
                  nop
                  lui          t0, 59608
                  nop
                  sub          s7, s1, sp
                  nop
                  sltiu        t4, tp, 1103
                  slti         t2, zero, -1156
                  srai         zero, t0, 6
                  srli         s11, s7, 30
                  srl          t0, t4, t1
                  sra          s5, a6, t2
                  sra          t6, s9, s6
                  auipc        t3, 511732
                  add          a6, s5, a7
                  srli         a6, t0, 16
                  nop
                  nop
                  sra          t4, sp, s0
                  sub          t3, a3, s0
                  sll          s9, s9, t1
                  srai         a0, a2, 29
                  xor          t6, s7, zero
                  lui          a7, 368887
                  nop
                  slli         s11, sp, 11
                  slti         a2, s10, -378
                  sltiu        a7, a5, 1681
                  add          s0, t0, a5
                  sra          s0, s11, zero
                  sra          t1, t1, a2
                  xori         s8, a2, 1397
                  sltiu        s9, sp, -41
                  slli         s1, t1, 31
                  slli         t6, a6, 16
                  lui          a2, 198532
                  slli         t1, s3, 30
                  sltiu        gp, s9, -1483
                  lui          tp, 343574
                  lui          t2, 489352
                  auipc        t2, 1023648
                  sll          s0, a6, s0
                  slti         gp, zero, -1363
                  and          gp, gp, s10
                  sltiu        a4, a3, -505
                  xori         t3, s6, 962
                  xori         t0, s4, -730
                  or           a7, s2, a0
                  add          s7, zero, t6
                  xor          a6, t1, t6
                  xori         a4, s1, -389
                  srl          a5, s0, a4
                  srai         t4, a2, 26
                  ori          s9, a2, -1474
                  srai         t2, ra, 28
                  srl          s5, t6, s5
                  slt          t1, sp, a4
                  xori         t3, t5, 1357
                  sub          a3, t2, a1
                  sub          s0, sp, t1
                  sub          s5, a4, ra
                  and          gp, s9, a3
                  sltu         gp, a6, s11
                  auipc        a0, 132773
                  sltu         s0, s3, s11
                  xor          a2, tp, s9
                  sltiu        s8, t4, -405
                  add          t5, t2, s7
                  or           a1, ra, s5
                  slt          a2, a4, s8
                  addi         t2, s4, 638
                  or           s1, t3, a7
                  sll          t4, s0, s10
                  addi         s0, s8, -1291
                  srai         s5, s6, 30
                  xor          a7, s6, t1
                  xor          zero, t3, t0
                  ori          s7, a0, 1545
                  nop
                  lui          a1, 345361
                  ori          a5, a1, 266
                  ori          t1, a7, -1505
                  ori          t6, t0, -382
                  sll          t1, a3, s5
                  srai         s7, tp, 4
                  add          s11, a3, a1
                  and          s10, s6, a0
                  add          s4, t6, a4
                  addi         a3, s6, 565
                  slti         s9, s4, 378
                  lui          gp, 614836
                  auipc        a1, 89759
                  srl          s8, t5, s9
                  sll          a7, s9, s4
                  sltiu        a1, s4, -940
                  add          a1, tp, a2
                  nop
                  xori         s5, t5, 103
                  xori         t3, s11, -782
                  auipc        a7, 726539
                  sltu         t4, sp, t1
                  srai         gp, t4, 30
                  sra          s1, a6, s1
                  ori          t0, a5, -1568
                  nop
                  xor          t0, s3, t3
                  ori          zero, s1, -473
                  sub          ra, a6, ra
                  xori         a4, s1, 421
                  slli         t0, tp, 26
                  sra          ra, s9, t0
                  ori          t3, zero, 794
                  srli         s9, a4, 15
                  slli         t0, s2, 27
                  auipc        a7, 740071
                  xori         s9, s6, 12
                  nop
                  addi         s5, t4, 524
                  auipc        s0, 528961
                  srli         t1, tp, 25
                  lui          a1, 237380
                  sra          a5, ra, gp
                  slt          tp, s9, t4
                  sltiu        a0, ra, -690
                  srli         t0, s8, 23
                  add          t0, t5, t4
                  srai         zero, s3, 11
                  and          t6, s0, t1
                  lui          a3, 136208
                  addi         s11, s8, 1283
                  ori          s5, s4, 1343
                  or           s11, t6, s6
                  or           a1, s5, a6
                  slli         t1, a3, 4
                  nop
                  sltiu        t4, s4, -113
                  and          s8, t6, sp
                  sra          s2, t1, a2
                  ori          t3, s0, 1317
                  sll          s2, t5, tp
                  xor          s7, zero, sp
                  slli         s5, a2, 21
                  sll          s4, t5, tp
                  xori         tp, a0, -1685
                  sub          a6, a2, a7
                  or           t2, s1, s8
                  lui          a5, 531015
                  auipc        t0, 131623
                  slli         t4, a6, 28
                  and          t4, s1, s8
                  add          s4, s4, sp
                  slli         s11, sp, 27
                  addi         s9, s0, -1667
                  and          a3, s0, a6
                  and          a4, s9, t5
                  sltu         t2, gp, t3
                  srai         t4, t1, 20
                  sltu         s4, gp, s6
                  sltu         tp, sp, a5
                  srai         s4, t5, 31
                  sltiu        a3, a2, -755
                  lui          s5, 353121
                  ori          a6, ra, 461
                  sra          s2, t4, t6
                  or           a3, a3, t1
                  sltiu        t1, tp, 320
                  ori          a5, tp, -1866
                  or           a2, s7, a2
                  or           t3, t6, a1
                  ori          a3, a5, 868
                  srli         s10, s8, 28
                  or           a4, s4, s6
                  srli         s11, t0, 21
                  sll          ra, t6, a7
                  xori         a0, zero, -1302
                  sra          ra, t3, t3
                  lui          gp, 300355
                  xor          t5, t6, a3
                  andi         s4, tp, -789
                  auipc        a2, 348018
                  addi         a2, s0, -620
                  xori         t4, a0, 1025
                  sub          a5, s7, s1
                  slli         ra, t0, 1
                  slli         t1, t0, 9
                  slt          t4, t4, s2
                  sll          t2, s6, s5
                  add          s0, s10, a5
                  auipc        a6, 830330
                  nop
                  or           s0, s0, s3
                  srl          a6, a1, a3
                  sub          t2, s8, s4
                  sra          a7, tp, s11
                  xori         t3, s11, -1499
                  sll          s4, t6, tp
                  sltiu        t4, s2, -822
                  slli         a4, gp, 17
                  sra          t5, s10, tp
                  srai         a2, t4, 17
                  auipc        t0, 42234
                  srai         t3, t6, 29
                  lui          zero, 161472
                  ori          s10, s11, -1277
                  slti         s5, sp, 470
                  ori          a4, t0, 604
                  sltu         s2, s10, a5
                  srli         a6, t5, 29
                  xori         t0, a6, -851
                  ori          a2, t4, 1883
                  or           t5, s2, s6
                  ori          s5, t5, 57
                  srli         s0, a3, 16
                  sra          t2, t2, s2
                  sub          a1, a7, a7
                  srl          t2, t3, s0
                  srli         t1, s4, 19
                  srai         t3, a3, 17
                  lui          s4, 183390
                  srai         a4, s2, 15
                  srli         a0, s8, 21
                  xori         a1, s7, 1775
                  sltu         s11, s7, s2
                  srai         a7, s8, 14
                  slli         s4, t5, 19
                  andi         t1, s5, 1005
                  slti         a6, a0, 1575
                  ori          gp, s10, 516
                  xor          s7, a4, s10
                  sub          a6, s4, s4
                  and          a7, zero, t4
                  sltu         s4, gp, t4
                  andi         s7, s1, 770
                  sll          t4, a1, s2
                  xor          t4, a1, s2
                  add          s10, t1, tp
                  sltu         t1, s11, t6
                  srl          a4, s4, s4
                  nop
                  srl          a6, s6, s2
                  and          t1, s6, s11
                  sra          zero, a4, gp
                  auipc        zero, 127157
                  add          s7, a0, a3
                  sltu         ra, gp, a6
                  srai         gp, t1, 5
                  sub          t2, tp, a1
                  xori         a5, tp, -763
                  sltiu        t2, s3, 389
                  sltiu        a6, a0, -920
                  srl          s4, s4, a7
                  srl          t0, s2, s8
                  sra          t2, a2, a2
                  sltiu        t1, t3, 780
                  and          a0, a1, t4
                  slt          a2, a0, t5
                  and          s2, s8, sp
                  slti         a6, s2, -464
                  slli         s1, s3, 13
                  slti         tp, s5, 1129
                  sub          a1, a5, gp
                  and          t5, a6, s5
                  sub          a6, s10, a1
                  and          gp, s4, tp
                  slli         t6, s10, 3
                  auipc        a2, 703671
                  nop
                  andi         t5, a3, -784
                  add          s2, s5, s0
                  slt          a0, a0, s2
                  lui          a4, 250330
                  lui          s5, 915676
                  slli         a1, t2, 0
                  srli         a5, s0, 1
                  sltiu        a7, s10, 1151
                  add          a2, s3, t5
                  sub          s7, s8, a2
                  and          t4, a5, s2
                  nop
                  srl          t6, a7, t0
                  and          t2, s11, t2
                  or           tp, s10, s4
                  nop
                  xori         ra, s1, -1228
                  srl          s5, t0, t0
                  xor          a3, t2, sp
                  srai         t5, gp, 3
                  sltiu        a1, s10, -1642
                  and          a0, t5, a6
                  xori         zero, s11, 237
                  slti         a7, s8, -1602
                  andi         s0, a5, -1034
                  slti         a3, t0, 832
                  lui          s7, 638965
                  xori         a1, s2, 1932
                  lui          t4, 311766
                  srli         a3, a4, 15
                  and          t2, s10, a4
                  andi         zero, t4, -1703
                  sra          gp, a5, s6
                  nop
                  lui          s4, 181469
                  nop
                  slli         s11, s8, 5
                  srai         ra, t4, 20
                  srli         gp, s1, 11
                  nop
                  sra          s5, t1, a6
                  addi         a2, sp, -253
                  slti         a3, s9, 1331
                  auipc        s10, 234812
                  auipc        s9, 802178
                  srli         t1, t6, 22
                  nop
                  sltu         s4, a3, zero
                  xori         t1, s2, 322
                  srli         a3, s10, 28
                  sll          a4, s6, t6
                  sll          s0, a3, t2
                  auipc        gp, 394873
                  add          s7, a3, a3
                  nop
                  sltiu        t2, ra, -8
                  srl          a1, s3, s4
                  sltu         s4, s4, a7
                  sll          s7, s4, t4
                  sltiu        gp, s5, -346
                  slti         t5, t4, 1931
                  auipc        s1, 994301
                  auipc        a1, 93704
                  slti         a2, t0, -360
                  sub          gp, s1, t3
                  or           a3, t0, t4
                  srai         t0, a2, 3
                  slti         t6, s0, -564
                  or           a6, a7, a2
                  xori         t4, s7, -88
                  srli         t2, t0, 23
                  sra          a5, t4, s4
                  srli         s7, t3, 16
                  nop
                  slt          s9, s0, ra
                  slli         s4, a7, 7
                  sra          t2, t6, a0
                  andi         a4, a0, -712
                  srl          s0, s0, t6
                  sra          s1, t4, t2
                  ori          a7, s9, -2004
                  xori         a0, s0, -1210
                  xor          a6, s8, a4
                  slt          a4, s11, s3
                  sub          s5, t3, t2
                  srai         gp, t5, 20
                  sra          s1, sp, s11
                  auipc        t1, 817655
                  sra          s2, a0, s8
                  andi         s8, s6, 375
                  nop
                  slli         ra, s11, 12
                  slli         a2, t2, 7
                  srl          a2, a3, t5
                  xori         a4, s4, -486
                  srai         gp, s10, 23
                  xor          t6, a7, s0
                  add          zero, s9, t3
                  xori         t5, s0, 307
                  srl          s7, t3, s4
                  ori          tp, t0, -1405
                  ori          ra, t3, -2021
                  lui          a1, 539293
                  lui          a0, 342204
                  or           t5, s1, t5
                  ori          gp, s4, -736
                  ori          a4, s6, -66
                  sub          a3, s3, a7
                  or           s1, t2, zero
                  srl          s10, s11, t5
                  slti         s2, t2, 906
                  xor          s7, t1, t6
                  ori          s7, s1, -380
                  srl          t6, s3, t3
                  slli         t2, s1, 23
                  slti         ra, a6, 1631
                  srli         a7, s9, 12
                  xor          t0, t6, a6
                  xori         a7, t1, -373
                  or           t2, s9, s8
                  sltiu        a7, s1, 1920
                  add          t2, a5, s3
                  sll          ra, s9, s10
                  nop
                  add          s8, s0, t5
                  xori         t2, s0, 1389
                  lui          t0, 572593
                  lui          s8, 928894
                  srl          s7, ra, a2
                  auipc        zero, 314977
                  slti         a1, s6, 1537
                  sll          ra, s10, s9
                  nop
                  slti         a0, t3, -1143
                  add          a7, s8, a1
                  slt          a7, s7, a5
                  nop
                  sltu         s11, s9, s2
                  slt          t0, s7, s1
                  addi         a6, tp, 202
                  sltu         t3, s2, t6
                  srai         gp, t3, 26
                  add          ra, a7, sp
                  srli         gp, sp, 23
                  srl          s2, a4, t3
                  xori         a0, ra, 195
                  slli         s7, a6, 13
                  add          tp, a3, s7
                  xori         s8, a7, 566
                  ori          a2, s3, 1979
                  xori         ra, s0, 385
                  and          ra, a0, t3
                  lui          s10, 909221
                  srl          s0, a3, s3
                  lui          s11, 493728
                  srl          a4, s6, a5
                  sub          s8, t1, a5
                  addi         a0, s2, 216
                  or           t0, s9, zero
                  auipc        t5, 103838
                  sll          s4, a0, s0
                  lui          t5, 957123
                  slli         s10, zero, 29
                  sub          t4, s0, tp
                  or           s4, a4, a1
                  xor          a3, s3, t0
                  slt          gp, s8, t4
                  xori         a4, t3, 725
                  srli         a2, zero, 21
                  sll          gp, t6, s10
                  srl          tp, a4, zero
                  xori         t5, t2, 1390
                  addi         s10, s9, 369
                  sll          a0, s5, tp
                  slt          ra, a3, gp
                  add          t5, s0, s9
                  sltiu        a6, t2, 1519
                  slli         a3, t5, 21
                  add          a2, s6, a6
                  srli         t6, s4, 1
                  auipc        a5, 780215
                  add          a4, sp, sp
                  auipc        s8, 526411
                  srl          t4, s0, s2
                  and          a2, s8, ra
                  slti         ra, t0, -1679
                  srai         ra, s7, 24
                  add          s9, s7, a0
                  slli         s2, t2, 7
                  sub          s11, gp, a4
                  addi         s8, s2, -797
                  slti         t2, gp, 1003
                  slt          t0, s7, s6
                  sltiu        t5, gp, -1447
                  xor          s1, s5, s3
                  nop
                  slti         a4, t2, 450
                  sll          zero, a4, a7
                  auipc        tp, 632024
                  slli         s10, sp, 22
                  add          gp, zero, s2
                  srl          s10, tp, a1
                  slti         a4, a5, 493
                  sll          s4, a4, s4
                  and          t0, a4, s7
                  nop
                  sltiu        t4, s3, -1759
                  srl          s11, s8, t3
                  slti         a0, t2, -373
                  xor          s5, a7, t4
                  andi         a3, s1, -988
                  lui          s2, 481737
                  nop
                  sltiu        s8, ra, 1457
                  sra          gp, s0, a5
                  add          ra, s2, a6
                  srli         s5, a2, 12
                  slli         s8, tp, 6
                  auipc        s1, 95464
                  sltiu        t4, t2, -830
                  slt          a1, a6, a2
                  lui          t4, 381241
                  sll          s2, a4, sp
                  and          s11, sp, t0
                  or           a1, t0, a4
                  slli         t4, s6, 23
                  xor          t2, s3, s3
                  andi         a4, t3, 1776
                  slli         s9, s5, 19
                  auipc        s5, 515907
                  andi         t4, t3, -549
                  slli         t1, a4, 22
                  xori         a1, s6, 380
                  andi         a0, t0, 872
                  sra          a5, a4, ra
                  xori         t6, s1, -357
                  addi         s4, a2, 858
                  slt          a2, s7, gp
                  add          t2, s0, t5
                  srl          s8, t5, s11
                  srl          tp, s0, tp
                  sltiu        a4, t5, 516
                  ori          ra, s2, -40
                  xor          t0, ra, a2
                  srli         t2, a1, 18
                  add          s9, s2, a4
                  slti         a1, ra, 1525
                  lui          a7, 543138
                  slti         s5, s8, -1089
                  ori          t2, s4, -22
                  sra          s5, sp, s2
                  add          a4, a3, t5
                  slt          s4, t6, gp
                  xor          tp, s10, a0
                  auipc        a2, 32199
                  srli         a5, a2, 21
                  xor          t2, s3, ra
                  and          gp, s9, a6
                  srl          s2, s0, a2
                  sll          t4, a0, s4
                  lui          s11, 917249
                  andi         zero, a3, 160
                  ori          s1, t1, 318
                  addi         a6, t3, -1659
                  sltiu        ra, s4, 172
                  srai         t5, a5, 8
                  srli         s4, t5, 8
                  xor          t2, t6, a5
                  add          s7, t4, s10
                  sltiu        a3, s3, -1630
                  srai         t1, s5, 0
                  srli         s8, a7, 10
                  slt          t1, a3, t2
                  sub          a6, a4, zero
                  sltu         s11, sp, s8
                  xor          a7, sp, s3
                  xori         ra, s3, -826
                  sltu         zero, a6, s4
                  srli         tp, a0, 17
                  and          a0, s10, t5
                  sll          t3, a7, tp
                  or           s4, s7, a2
                  sll          s8, s7, a6
                  sltiu        a0, ra, -1777
                  sltiu        t2, a4, -1942
                  addi         t5, t4, 344
                  slti         s7, s11, -866
                  addi         s2, t2, 525
                  addi         a0, t2, -1730
                  srai         a6, zero, 2
                  sub          s4, s8, t0
                  slli         t3, a0, 31
                  sra          s10, s4, t3
                  slt          t6, a5, zero
                  srli         t2, t1, 27
                  sltiu        tp, ra, 1889
                  andi         a6, ra, 787
                  addi         t0, a7, -746
                  auipc        s0, 929294
                  sra          a1, t1, s0
                  xor          ra, a4, s5
                  andi         t2, t0, 448
                  slt          t3, t0, s7
                  andi         s11, t2, -27
                  or           s5, t3, s3
                  or           s10, zero, s11
                  slt          t0, s9, ra
                  srli         s4, t6, 10
                  and          t0, a7, t6
                  nop
                  lui          t1, 503390
                  or           a1, s8, a3
                  add          a1, t2, ra
                  lui          a6, 97791
                  slt          s9, zero, a5
                  sra          a7, s8, t2
                  lui          s7, 693913
                  srli         t0, s8, 1
                  slli         a7, ra, 13
                  add          gp, s8, s9
                  sltu         s11, a2, t0
                  sll          s10, s9, t0
                  auipc        s0, 594833
                  xor          s4, t4, sp
                  xori         a5, a0, -677
                  srli         s5, s0, 27
                  srai         a5, a1, 14
                  sra          gp, t3, s3
                  and          s4, s9, s9
                  xor          tp, a0, t4
                  srl          s4, sp, s3
                  sub          s5, t3, tp
                  lui          t4, 819784
                  sub          t3, s9, s4
                  xor          gp, a3, a0
                  slt          s4, a2, a5
                  add          gp, t1, t4
                  xor          a5, a5, ra
                  sra          s0, s9, t4
                  sll          s1, s7, t4
                  addi         t6, s3, 1423
                  lui          t3, 259452
                  srl          s4, s7, s4
                  slti         s2, s7, -855
                  sll          s1, ra, a3
                  xori         t2, t4, 805
                  srl          a4, s8, t1
                  auipc        a7, 184135
                  addi         s8, s10, 1218
                  xori         s8, s9, -1109
                  srli         t5, s0, 0
                  srl          a5, s4, s7
                  lui          t1, 415861
                  slli         s0, s1, 31
                  ori          a2, s4, 1655
                  xori         a3, s3, 922
                  add          s5, s6, t1
                  auipc        t5, 1015890
                  auipc        t5, 303913
                  lui          t3, 79213
                  sll          a2, a2, t6
                  lui          a5, 398023
                  auipc        zero, 801807
                  lui          t1, 206833
                  or           s7, zero, s11
                  sll          s1, s4, gp
                  slt          a2, s11, gp
                  add          gp, t6, tp
                  sltu         s0, s5, s0
                  sltu         a3, t2, s6
                  add          a7, s9, a1
                  slt          s9, tp, a7
                  sltiu        a0, a2, 1053
                  slti         t5, s0, 2020
                  or           t6, ra, gp
                  srl          a0, ra, a3
                  ori          zero, a7, -451
                  srai         t0, t0, 21
                  sltu         s0, t1, s6
                  add          s4, s5, zero
                  and          a7, a1, s0
                  slli         t5, a4, 13
                  and          zero, t0, sp
                  slli         gp, a6, 9
                  sltiu        t5, a4, 973
                  slt          a0, s3, a1
                  xor          s2, t3, t2
                  slti         s9, s5, -452
                  sltiu        gp, t2, 656
                  addi         s10, tp, -250
                  ori          zero, s8, 354
                  slti         ra, t4, 2000
                  xor          a5, a7, t0
                  or           s5, a1, t2
                  srai         a4, a4, 4
                  slti         s11, s5, -661
                  srai         s10, s6, 22
                  sltiu        t4, s9, 98
                  xor          a2, s7, s3
                  srli         t0, s5, 14
                  add          s5, a2, a6
                  slli         t6, s8, 5
                  ori          s0, t0, 1840
                  sltiu        a0, s7, -1024
                  sltiu        a2, a6, 1207
                  andi         a3, t5, -1690
                  srai         s11, s3, 4
                  sll          t1, s7, s9
                  addi         s5, t1, 1503
                  slti         a4, zero, -1700
                  andi         s11, s11, -203
                  srli         ra, s10, 18
                  nop
                  addi         a1, a6, 1867
                  and          s7, tp, t1
                  srl          s11, a1, a0
                  srai         a7, t3, 17
                  lui          t4, 250752
                  slti         s1, s8, -23
                  srl          tp, t4, s11
                  srl          a6, zero, t1
                  andi         a5, t4, -581
                  nop
                  srl          s4, s4, s9
                  slli         t3, zero, 7
                  andi         s1, tp, -688
                  sll          s2, ra, s7
                  sub          s5, s3, t1
                  nop
                  sub          s10, t6, ra
                  sub          a7, gp, gp
                  nop
                  sltu         s11, t6, a1
                  auipc        s8, 906555
                  sub          t6, t5, t6
                  and          s0, s1, ra
                  xor          t1, a3, s1
                  auipc        t0, 26702
                  srli         s8, t5, 27
                  nop
                  sub          t6, s7, s11
                  lui          a0, 395090
                  auipc        a1, 482529
                  sltiu        s5, t2, -78
                  auipc        t6, 40619
                  addi         t1, a2, -1573
                  xori         tp, t1, 852
                  xori         s0, t4, 44
                  sra          a3, a0, s6
                  nop
                  srl          s9, a3, s5
                  add          t4, zero, s6
                  and          t3, s1, t2
                  sll          s7, a2, a5
                  sub          a2, a2, s9
                  sra          t0, s8, a7
                  sll          a6, ra, t3
                  or           tp, s10, s9
                  ori          a3, s0, 838
                  auipc        t0, 842251
                  sltu         t2, a4, t6
                  xori         s0, t6, 137
                  xori         a3, a5, -1232
                  addi         a2, a5, 230
                  srai         zero, a2, 7
                  add          s0, a6, t5
                  srli         a5, s5, 20
                  slli         s2, s11, 22
                  ori          a1, zero, 1947
                  sltu         a7, sp, gp
                  add          a1, a3, ra
                  addi         a7, t0, 993
                  slli         a1, t5, 6
                  srli         ra, s2, 20
                  addi         s0, t4, -560
                  lui          a6, 697287
                  srl          t5, a3, tp
                  slt          s2, s11, t5
                  sub          s4, s1, tp
                  lui          s4, 466405
                  srli         a6, s2, 26
                  srai         s1, s10, 29
                  sra          a1, a2, s2
                  slli         ra, s11, 5
                  addi         a2, s3, -1159
                  slt          a4, t4, gp
                  xori         t1, tp, -1321
                  or           a3, a7, t5
                  addi         s11, s8, -1571
                  sltiu        t4, tp, -1562
                  sltiu        t5, t3, -297
                  sltiu        a2, gp, -762
                  slt          a5, s6, s8
                  slt          s10, a1, s5
                  xor          s8, s6, a0
                  slt          t5, zero, t0
                  sltu         s8, s3, s11
                  sltiu        zero, t4, 1864
                  sub          tp, s1, ra
                  auipc        a0, 590226
                  and          a1, a5, t5
                  slti         a7, t4, 1196
                  ori          s10, a2, 1812
                  nop
                  add          a4, zero, t4
                  addi         a3, a0, -1579
                  sltu         zero, s2, t2
                  ori          a5, a3, -19
                  sub          t6, t4, a4
                  slt          a5, t1, s7
                  sll          zero, t5, tp
                  srl          zero, ra, s9
                  and          s9, a2, a6
                  addi         s9, t6, -639
                  slti         t2, a2, 13
                  sll          gp, a1, t6
                  sltiu        s0, t6, -599
                  and          t4, s7, s3
                  srai         a2, sp, 27
                  slli         s7, t2, 8
                  nop
                  lui          s0, 680020
                  sll          s5, a2, t0
                  srai         s2, s5, 20
                  slli         s1, gp, 1
                  srai         a3, ra, 27
                  auipc        zero, 582096
                  srli         s10, zero, 11
                  sltu         a7, t3, a4
                  sub          a1, s8, t1
                  xori         t4, s1, -640
                  andi         a7, a4, 1832
                  slt          a4, a2, gp
                  add          t3, a2, sp
                  addi         a1, t0, 708
                  sra          s0, s5, ra
                  ori          s1, a3, -1856
                  auipc        gp, 8810
                  andi         s10, s6, -1866
                  slt          a4, t5, a3
                  add          t0, a5, tp
                  srai         t1, s4, 31
                  sll          gp, a0, a2
                  andi         a6, gp, -251
                  srai         s0, a1, 22
                  xori         a5, gp, 697
                  xori         a6, s8, -1541
                  lui          t2, 843504
                  slti         s8, a5, -1487
                  addi         tp, t1, -38
                  srl          a0, gp, a1
                  nop
                  sltiu        a7, s3, 1725
                  xor          gp, s2, t5
                  xori         t1, a0, -890
                  sltiu        s2, a4, 987
                  sltu         s8, gp, s11
                  sltiu        a4, s1, 458
                  ori          a4, s9, 388
                  and          a2, gp, s1
                  sra          a4, t4, s6
                  sra          s10, s0, t0
                  xor          zero, s2, t4
                  addi         s5, sp, 969
                  andi         ra, s10, 1339
                  auipc        a5, 207716
                  lui          tp, 719516
                  xori         s7, t6, 1594
                  lui          a5, 510067
                  and          s7, s9, a0
                  addi         t5, t1, 925
                  add          a1, s10, a6
                  xor          s8, s3, a7
                  xori         gp, ra, 880
                  ori          t3, a4, -214
                  sll          a5, a0, s10
                  slti         s8, t6, 1832
                  slt          s9, s6, tp
                  slli         ra, s9, 21
                  slti         t3, s4, 858
                  xori         s4, s1, -249
                  srl          t6, t0, gp
                  sltiu        t5, s9, -754
                  and          s9, t4, s0
                  slt          s11, s4, s4
                  nop
                  lui          a4, 343407
                  slti         s11, s1, 473
                  andi         t5, s9, 1386
                  sub          a3, s9, t2
                  srai         zero, s0, 25
                  auipc        s4, 310435
                  lui          t6, 638980
                  or           t1, s6, t6
                  srai         s0, a6, 31
                  srli         s0, zero, 30
                  sltu         t6, s6, tp
                  and          t2, s9, t1
                  add          s8, s10, s9
                  sltu         s11, t5, a1
                  sra          s4, s4, s2
                  andi         a6, s2, -879
                  slli         a5, sp, 20
                  auipc        gp, 1041448
                  xor          tp, a4, tp
                  sltu         gp, a0, s4
                  sll          gp, gp, t6
                  sll          s11, s7, t6
                  sra          s9, zero, s6
                  slti         s11, s5, -789
                  addi         tp, s1, -2007
                  auipc        s4, 399102
                  xori         t5, a4, 891
                  andi         s9, a0, -22
                  add          gp, t1, s9
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           gp, 0x80000000
                  li           t1, 0x0
                  li           a5, 0x80000000
                  li           s4, 0x0
                  li           s9, 0x63bb7e9b
                  li           a6, 0x0
                  li           s8, 0xffffffff
                  li           a3, 0x80000000
                  li           tp, 0x0
                  addi         ra, ra, -127
                  sub          t1, a6, gp
                  nop
                  lui          t1, 532726
                  lui          s9, 924957
                  sub          s4, gp, tp
                  sub          a6, s4, a6
                  nop
                  add          s4, a6, gp
                  auipc        s8, 966153
                  nop
                  auipc        s8, 57627
                  sub          a5, t1, t1
                  addi         gp, a6, -1542
                  add          ra, s4, a6
                  sub          t1, t1, a5
                  lui          a6, 647927
                  lui          tp, 940920
                  add          s8, t1, s9
                  add          a3, a5, a5
                  add          t1, a5, t1
                  addi         a3, t1, 1256
                  nop
                  add          ra, s8, tp
                  auipc        tp, 135985
                  nop
                  addi         s4, a6, 1230 #end riscv_int_numeric_corner_stream_12
                  sub          s9, a4, a1
                  sltu         tp, t3, t3
                  srl          s8, a7, s11
                  add          s4, a4, t4
                  srl          t4, t1, t5
                  sltiu        s9, s10, 1926
                  xor          s7, s11, t5
                  xori         s7, s0, -219
                  or           tp, s9, s8
                  sra          s8, zero, t4
                  xori         s2, s8, -758
                  slli         s10, a3, 6
                  andi         s5, a5, 1441
                  addi         t6, a6, -589
                  slli         a3, a5, 29
                  srl          t1, tp, t6
                  add          gp, a5, s6
                  sub          a6, s6, sp
                  xor          t2, a0, t3
                  add          t5, s2, s6
                  sll          ra, sp, a0
                  nop
                  or           t5, sp, s11
                  sll          ra, a3, a7
                  slli         t2, gp, 2
                  sub          s10, s11, a7
                  addi         s9, s5, -851
                  addi         ra, a0, 1177
                  ori          s11, s7, 1145
                  slt          ra, a2, t1
                  andi         s1, s7, -1723
                  srl          t5, a3, t6
                  addi         t5, t1, 213
                  ori          a2, a3, 341
                  andi         t6, s11, 1681
                  nop
                  srli         gp, t0, 27
                  sll          t4, ra, s8
                  slt          a3, a2, t4
                  sltu         s7, s2, a2
                  lui          gp, 87652
                  slli         s11, s8, 21
                  sra          s10, sp, zero
                  andi         s0, a4, 711
                  nop
                  srli         t2, a0, 18
                  sra          s4, s10, zero
                  sll          s9, s7, s7
                  and          ra, t1, zero
                  xor          t2, a5, a6
                  and          s10, s0, t0
                  sll          a3, s2, s1
                  sltiu        s2, s11, -879
                  auipc        t0, 36344
                  slt          t0, s7, sp
                  andi         t2, t4, -363
                  xori         t1, s7, -255
                  sub          s0, a2, a5
                  slt          s1, zero, tp
                  andi         ra, s3, -1755
                  auipc        t4, 620123
                  auipc        a1, 335496
                  add          s8, s0, s8
                  xori         t0, t4, -761
                  srli         s2, t6, 29
                  srl          t2, a4, a0
                  slti         s1, s6, 871
                  or           gp, s6, a7
                  andi         a5, a1, -934
                  xor          s10, a1, a7
                  ori          s5, s9, -145
                  slli         t5, s4, 16
                  sltu         s4, a5, s8
                  and          s9, t6, a6
                  add          s2, t1, a5
                  xor          s9, a1, tp
                  nop
                  nop
                  or           a0, s7, ra
                  slt          s9, s0, t1
                  slti         s9, t2, -1349
                  and          s10, t6, t6
                  lui          a4, 880787
                  srli         a2, s4, 17
                  auipc        tp, 358912
                  or           a3, s9, a7
                  ori          a7, s4, 1647
                  add          zero, a5, s11
                  xor          zero, a6, t1
                  slt          s10, s10, a4
                  nop
                  slli         s10, s10, 13
                  slt          gp, s1, s8
                  sub          s11, s10, t1
                  or           t1, a6, s3
                  srli         a5, s3, 30
                  slti         ra, a2, 11
                  or           s4, sp, s4
                  auipc        a3, 430484
                  or           s8, t1, a5
                  auipc        t3, 659829
                  auipc        a0, 26762
                  add          t6, s3, a1
                  ori          s4, a2, 1220
                  slli         s11, s1, 3
                  sra          t1, s7, t6
                  lui          gp, 55900
                  lui          s10, 139245
                  addi         a2, a1, -1868
                  sub          s2, s3, a0
                  slti         t2, a7, -737
                  lui          tp, 1015967
                  add          s8, s4, tp
                  ori          s4, s11, -1049
                  auipc        t1, 253460
                  lui          tp, 167178
                  xor          t3, t5, t1
                  sll          t0, a3, tp
                  slt          s2, s9, t2
                  sltu         a5, t5, a3
                  nop
                  auipc        s1, 488937
                  srl          s8, t2, a4
                  srli         s8, s7, 13
                  srl          t3, s5, a5
                  xori         a4, t6, -261
                  srai         s4, t3, 25
                  xor          tp, s10, a3
                  sltiu        t1, t6, 1944
                  sub          t4, s3, ra
                  sltiu        a2, gp, 1274
                  auipc        tp, 5628
                  sltiu        a0, a0, -1369
                  ori          t6, a2, -1771
                  addi         s0, t1, -1091
                  srli         a4, a4, 22
                  slt          t1, ra, tp
                  or           a5, t2, tp
                  sub          tp, t2, s5
                  auipc        s8, 467330
                  slli         a6, a2, 21
                  and          a7, s11, s9
                  nop
                  andi         t1, s10, 452
                  sltu         tp, t3, gp
                  ori          s11, a1, 999
                  nop
                  sltiu        t3, sp, 1586
                  srl          t3, a7, s3
                  xor          a3, s10, tp
                  or           s2, s3, a3
                  sra          a6, t0, t1
                  srl          a0, a7, a0
                  slt          s10, s7, s6
                  auipc        t1, 767536
                  sub          s5, s9, s3
                  and          t6, s7, t4
                  srli         t1, s5, 20
                  and          t6, t4, t3
                  slt          s9, t5, s10
                  slti         s1, t3, 1670
                  sltiu        s7, a6, 1356
                  addi         t3, t0, 872
                  sltiu        t4, a4, 868
                  sra          t6, a5, t2
                  lui          s4, 658509
                  auipc        s4, 1044427
                  srli         ra, a1, 22
                  auipc        t6, 615000
                  sub          s1, a4, s8
                  sll          s5, sp, s5
                  add          s8, s6, s2
                  xori         a2, s7, -705
                  sub          zero, a0, zero
                  sltu         a5, a2, s6
                  sra          t3, t2, s3
                  slti         gp, tp, -1814
                  sra          zero, a6, s11
                  srli         a1, s7, 10
                  sltiu        a2, s10, -1888
                  sra          t4, a6, s3
                  ori          s10, s9, -167
                  xor          ra, t2, a4
                  srai         a0, s11, 4
                  sra          s8, s10, t3
                  srai         s5, sp, 11
                  slt          gp, s8, tp
                  addi         a7, a1, 1243
                  sltiu        a5, tp, 390
                  lui          a6, 262626
                  lui          s5, 231377
                  srl          s0, s4, s7
                  slli         t5, s11, 26
                  xori         s5, a1, -1942
                  srli         t1, gp, 28
                  xori         s8, a6, 1959
                  xor          t5, t2, s6
                  sltu         s10, s11, t4
                  srli         s1, s5, 28
                  andi         a3, s6, -955
                  srli         s9, sp, 27
                  sra          t3, zero, a7
                  and          ra, a3, t0
                  ori          s1, gp, 608
                  sltu         s5, a2, s1
                  xori         t0, t2, -785
                  xori         t3, s2, 163
                  srai         t0, a0, 8
                  xor          t6, a0, t3
                  sltiu        tp, a6, 299
                  nop
                  srl          s10, t1, s2
                  xor          s4, t6, a0
                  sltu         s11, s0, t1
                  sub          t1, s0, s2
                  add          t2, s4, a5
                  srl          t4, a4, t3
                  slti         a1, a4, -1899
                  slt          t5, s4, a4
                  or           s4, gp, a6
                  slti         t1, s5, 273
                  sra          ra, t0, t4
                  srl          a2, t2, s3
                  sltiu        t6, a3, -446
                  srl          s4, a0, s8
                  addi         tp, s1, 549
                  slli         tp, s0, 8
                  add          s4, s2, a1
                  slt          s7, tp, a2
                  slt          t3, a6, a3
                  slt          ra, s11, tp
                  sltu         t0, t6, sp
                  auipc        ra, 775366
                  srai         a1, s7, 1
                  add          tp, t3, s5
                  or           gp, a3, t4
                  slli         s4, a2, 19
                  or           s4, s4, a5
                  slli         s0, a0, 27
                  sra          s7, s5, a3
                  sll          s1, a3, s5
                  xor          a3, s5, s8
                  xor          t6, tp, s11
                  sra          a3, s11, s6
                  xori         s0, s3, 1070
                  sltiu        s9, ra, -1176
                  slti         t1, t5, -1595
                  lui          a4, 759544
                  sra          s8, gp, zero
                  auipc        a5, 253456
                  sub          s10, s4, s11
                  add          t6, a3, s4
                  slli         gp, a6, 4
                  or           t5, s2, t3
                  sltu         t1, s0, sp
                  and          s0, a2, t5
                  add          s5, s2, a3
                  sra          t0, s4, t6
                  slti         t6, a1, 1012
                  xori         s11, sp, 1870
                  auipc        a5, 808521
                  sll          zero, gp, s5
                  sub          a4, t4, s10
                  sll          t3, a7, a7
                  xori         gp, s9, 1563
                  srl          a7, s4, s0
                  srai         a4, t2, 5
                  sltu         s10, zero, s7
                  lui          a4, 163095
                  sltiu        a5, t0, -647
                  addi         s11, s8, 1328
                  and          gp, gp, t2
                  sltiu        s10, gp, -1395
                  sub          s0, a3, a1
                  xor          t2, a7, t5
                  sltu         a7, t2, t0
                  slt          ra, s0, s2
                  or           s10, a4, s6
                  lui          gp, 110662
                  add          a1, s2, t4
                  sub          s8, s4, s9
                  add          s8, ra, a5
                  sll          s11, s0, t5
                  nop
                  sra          t0, t2, ra
                  slli         s5, t2, 18
                  andi         s8, s7, -1540
                  srl          s1, a5, t2
                  add          t2, t4, a5
                  srl          a0, t3, s2
                  add          s7, t3, s8
                  srl          s4, a3, a0
                  addi         s10, sp, 133
                  sub          t2, s2, ra
                  auipc        s9, 3379
                  auipc        a1, 613772
                  srai         s11, t2, 26
                  xor          s9, a2, s6
                  sltiu        s2, a5, -1969
                  srl          t2, t0, zero
                  lui          t5, 944317
                  slli         s10, ra, 4
                  xori         t2, s1, 471
                  slli         tp, zero, 27
                  xor          zero, a2, s0
                  add          s7, t4, sp
                  ori          s9, a4, -1294
                  xor          t6, a7, zero
                  slli         a2, s4, 23
                  sra          s1, gp, a1
                  sltu         s11, t3, s10
                  xori         s10, s10, -1128
                  andi         a7, s9, -1033
                  sll          a6, s7, s8
                  or           s7, a6, s7
                  lui          gp, 47570
                  sub          t0, a0, s2
                  sltiu        s7, a0, -1423
                  nop
                  slti         t6, s10, 990
                  andi         s4, s4, 392
                  lui          s9, 389971
                  slt          a5, s8, t2
                  srli         t6, s2, 6
                  andi         zero, s3, 199
                  sltiu        t5, t6, 1050
                  andi         a2, s11, -1182
                  slt          ra, a4, a3
                  nop
                  sub          a0, a0, gp
                  nop
                  add          t1, t2, s6
                  slt          gp, a6, t4
                  sltu         a5, t4, s8
                  sll          s11, s1, s7
                  or           s0, a2, s8
                  sll          a0, t3, a5
                  srl          t0, a7, s5
                  nop
                  slti         t6, t1, -804
                  slti         t3, sp, -224
                  srli         a4, t2, 10
                  sub          a7, tp, t1
                  and          a4, t4, t0
                  srli         s9, sp, 9
                  add          a5, t6, a5
                  ori          s1, s5, 1321
                  nop
                  srai         a0, s11, 12
                  srli         s0, zero, 16
                  srai         s10, t3, 6
                  and          t5, t0, ra
                  slti         s7, gp, 31
                  sra          t1, a6, t6
                  srai         s2, s1, 7
                  sll          zero, a6, zero
                  srli         a5, gp, 15
                  ori          s10, a1, 353
                  sra          gp, t1, s7
                  srai         a7, s8, 27
                  or           s2, a7, s0
                  sll          a7, t2, s1
                  slti         a4, ra, -1938
                  or           t1, t5, t0
                  srli         s1, t0, 21
                  sll          zero, t0, a2
                  sub          s2, s3, a7
                  and          s2, a6, gp
                  addi         t4, t4, 1153
                  sltu         s10, a6, gp
                  sltu         s1, s0, s1
                  srai         t3, s6, 20
                  srli         t0, tp, 19
                  auipc        a1, 523037
                  nop
                  slt          t1, t1, a5
                  srai         t6, t0, 7
                  auipc        s0, 505303
                  sltu         s1, s1, t1
                  slti         t4, t0, 2003
                  sll          a4, s2, tp
                  xor          t6, sp, a2
                  xori         s7, t2, 609
                  srli         a5, t6, 30
                  add          a2, s1, gp
                  sll          s1, s8, s4
                  sra          t0, t1, t2
                  add          s7, a3, t2
                  lui          s2, 843393
                  slt          s5, a3, a5
                  add          gp, s6, zero
                  srli         a3, tp, 15
                  sll          s10, s6, sp
                  sltiu        a1, gp, -1624
                  srli         a2, t1, 25
                  slti         ra, t2, -1455
                  andi         s4, s11, -103
                  sltiu        s0, s10, 1062
                  or           s11, s4, a5
                  sll          gp, t2, tp
                  slti         t3, sp, 1583
                  lui          s10, 1026590
                  srl          a2, s7, a2
                  auipc        s1, 196786
                  auipc        s2, 926609
                  srli         ra, t4, 20
                  addi         s8, s10, 356
                  slti         t6, s1, 244
                  and          s1, t3, s3
                  add          t3, s3, s1
                  andi         t2, gp, -1295
                  sltu         t4, t0, s4
                  and          a5, s0, t4
                  srai         t4, sp, 1
                  sltu         s0, s6, s11
                  sub          a0, a6, s7
                  sltu         a6, a2, a4
                  sltiu        s10, tp, -184
                  nop
                  sra          s4, tp, s2
                  sub          a3, a4, sp
                  srai         a3, a3, 9
                  sra          t2, a5, s11
                  xor          t0, zero, t4
                  srl          s7, s7, s7
                  auipc        s7, 732842
                  ori          t0, t1, 630
                  andi         t2, s1, -614
                  andi         s8, t6, 1046
                  or           a2, t1, s3
                  and          s11, a0, t0
                  xor          a0, a4, s2
                  addi         s0, sp, -2011
                  slli         s10, t0, 21
                  srli         ra, s8, 27
                  sltiu        s8, s9, -1441
                  sll          gp, s11, sp
                  or           a5, t1, zero
                  sltiu        s10, t3, -729
                  sub          t1, t4, a5
                  srl          a5, t5, s2
                  auipc        s2, 615271
                  and          s0, s1, s2
                  lui          t1, 732858
                  xori         a2, s2, 2015
                  sub          s7, a0, a5
                  slti         s0, s5, 1820
                  xori         ra, s8, 814
                  ori          a6, a6, 859
                  sltu         s8, sp, s7
                  lui          s5, 251104
                  and          zero, t3, t0
                  or           a5, s4, zero
                  ori          s2, gp, -948
                  sltiu        t6, s7, 9
                  sltu         a5, s1, tp
                  slti         s4, t4, 114
                  srl          ra, a2, t0
                  slti         s1, s9, -1651
                  srl          tp, t1, zero
                  sub          t5, s4, t6
                  nop
                  auipc        t6, 415995
                  srli         t3, s9, 3
                  srl          a5, a2, s6
                  and          t4, s7, sp
                  addi         s7, s6, -669
                  add          t5, t2, s8
                  srai         zero, a4, 6
                  slt          s8, zero, t6
                  sltu         s5, a3, t4
                  nop
                  and          tp, t0, s4
                  sra          s11, a3, s1
                  xor          a0, t0, t1
                  addi         ra, t6, 879
                  nop
                  sltiu        a7, sp, 1136
                  auipc        zero, 448250
                  slti         zero, a5, 1207
                  auipc        a2, 11150
                  sll          t5, t6, t5
                  xor          s8, ra, s3
                  sub          s4, s4, sp
                  and          t6, s0, a2
                  sll          s0, t3, s10
                  srli         s9, t6, 2
                  sra          s10, s4, s1
                  slti         a0, sp, 333
                  slt          s9, s3, s1
                  srl          a7, t3, t4
                  slli         s2, s5, 31
                  srai         a2, t0, 26
                  addi         t2, s2, -1503
                  xor          a5, s10, s6
                  addi         t5, s1, 190
                  srl          t5, a5, a0
                  srli         s2, s9, 19
                  lui          tp, 10857
                  sll          s11, a4, s1
                  sltiu        a6, t0, 1229
                  auipc        a4, 277047
                  sltiu        a6, a2, -156
                  auipc        t5, 849699
                  sra          s1, a5, s11
                  and          s1, t1, t0
                  or           t1, s6, a5
                  andi         s8, gp, -390
                  ori          a1, s1, -1279
                  slli         s9, s3, 4
                  sll          t3, t4, a2
                  nop
                  sra          a3, a2, a2
                  nop
                  sll          t6, s7, zero
                  xori         gp, s9, 1731
                  srl          s7, a7, t5
                  sll          a6, s6, t0
                  addi         s11, gp, -450
                  addi         a7, s6, -1656
                  sra          t0, s2, s10
                  sub          s10, s11, s5
                  lui          s10, 22443
                  sll          t2, a1, s9
                  addi         t6, s0, -1051
                  sltiu        a2, t1, -1437
                  xori         s8, a7, -957
                  slli         t1, t5, 8
                  slt          a3, a3, tp
                  sltiu        a0, a4, -1682
                  srl          t4, t0, s6
                  xori         a7, s11, 1930
                  xor          t6, a7, s4
                  sll          t5, s11, s8
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a2, 0x0
                  li           s4, 0x80000000
                  li           t3, 0x0
                  li           gp, 0x80000000
                  li           s11, 0x2c1d1bdd
                  li           a3, 0x0
                  li           s5, 0x80000000
                  li           t6, 0x1c9d8be3
                  li           tp, 0xffffffff
                  add          t3, a2, s11
                  lui          t3, 297917
                  addi         a3, a3, -1298
                  add          t6, t3, s5
                  lui          a0, 320994
                  add          gp, a3, tp
                  sub          s4, a3, s5
                  add          t3, a0, a3
                  nop
                  addi         a0, a3, 1036
                  auipc        t3, 642450
                  sub          t6, gp, a0
                  auipc        s4, 345097
                  add          a0, s4, a3
                  add          t6, s5, t3
                  auipc        t6, 48361 #end riscv_int_numeric_corner_stream_6
                  slt          s8, a6, zero
                  slli         s10, t6, 13
                  or           s10, a2, t0
                  addi         s2, s1, -525
                  ori          ra, s4, -97
                  sltu         t6, a6, gp
                  slli         s10, t4, 19
                  sub          t3, t0, s8
                  addi         t3, a4, 1794
                  xori         s7, s10, -1950
                  sll          a3, t2, a7
                  sltu         t3, s6, t4
                  lui          s5, 555369
                  sll          s7, s3, t2
                  nop
                  slti         s4, s0, 987
                  add          a3, a7, s1
                  and          s4, s11, s3
                  ori          t4, a7, -1472
                  andi         t2, s3, -1377
                  sll          s1, sp, a2
                  nop
                  sltiu        t5, a0, -2000
                  sra          a0, s7, s1
                  add          t4, s4, t2
                  sltiu        s5, s7, -1636
                  nop
                  srli         a0, s5, 20
                  nop
                  add          t1, t0, a5
                  slli         t6, a4, 12
                  xori         a6, s4, 1087
                  ori          s1, s2, 1698
                  sra          s2, a6, t4
                  slt          a5, a7, a5
                  xor          s10, a2, ra
                  slt          t0, t5, s3
                  lui          s7, 703565
                  and          t1, s9, t1
                  addi         ra, s8, 70
                  auipc        a2, 312790
                  addi         s2, a5, 1352
                  andi         a1, a7, -924
                  slli         a0, s7, 25
                  slt          s5, s0, a7
                  andi         s1, s7, 1272
                  sub          a1, a2, s3
                  sub          s8, a4, t3
                  sra          zero, a3, a5
                  auipc        s0, 482832
                  sra          s11, a1, s8
                  srli         gp, s1, 12
                  and          t1, t6, sp
                  or           s7, s1, s2
                  or           a2, s1, s0
                  or           s4, a7, s4
                  slli         s11, s10, 16
                  ori          s10, s0, 1294
                  xor          t0, a6, t5
                  srai         a5, zero, 13
                  add          t6, s10, t4
                  sra          s7, t5, tp
                  sub          s5, s4, t2
                  addi         a0, s11, -248
                  slt          s5, ra, s1
                  srli         t6, zero, 22
                  and          s0, t6, s0
                  srl          s5, s9, a3
                  slt          gp, s6, s10
                  auipc        s7, 992981
                  addi         s5, t3, -1834
                  srli         a2, tp, 31
                  srli         s2, a0, 21
                  lui          s5, 446194
                  lui          a0, 337365
                  slti         gp, t5, -1462
                  nop
                  and          s10, t5, t4
                  slli         t5, a4, 28
                  lui          t1, 533809
                  andi         t3, t1, -1934
                  slti         gp, s2, -98
                  nop
                  xori         s0, s5, -627
                  sll          gp, t4, a1
                  xor          s4, s2, a6
                  sub          t6, t5, s6
                  sltiu        s1, a5, -4
                  srl          a1, s9, tp
                  and          gp, t2, t6
                  auipc        a3, 429128
                  auipc        a2, 750492
                  sub          s7, t1, a4
                  nop
                  andi         a0, t1, -1438
                  auipc        s9, 393003
                  sll          t1, a5, s5
                  or           t5, s2, s0
                  slti         tp, s0, -1151
                  slti         a6, sp, 835
                  sub          t0, a7, s4
                  sltu         t4, a7, s11
                  xori         a7, t1, -134
                  and          s9, t5, s11
                  addi         s11, gp, 1108
                  srai         s4, s5, 29
                  addi         a4, a2, -2021
                  xor          s11, sp, s0
                  or           zero, s1, zero
                  srai         s4, ra, 19
                  and          t6, s2, s7
                  or           t1, s2, zero
                  or           s9, gp, s11
                  srl          a1, t0, a3
                  srai         zero, a3, 20
                  xor          zero, s10, s8
                  and          tp, s3, a1
                  srai         ra, t3, 22
                  and          s2, t3, s3
                  xori         t3, s8, -1410
                  andi         t2, s8, 770
                  slt          a2, t6, s2
                  sub          a3, t2, s6
                  sltiu        gp, zero, 1971
                  slti         s8, s0, -1464
                  auipc        s2, 304852
                  nop
                  add          t1, a5, s2
                  sra          gp, s7, a2
                  sra          a7, s10, t1
                  srl          t4, s5, s3
                  xor          s4, tp, t2
                  addi         ra, s7, -1327
                  add          ra, a0, t2
                  slti         s2, t4, -174
                  xori         s1, s1, 314
                  slli         s7, s10, 24
                  srai         a5, a5, 20
                  add          s2, a4, s10
                  sltu         s11, a3, a3
                  sltu         t4, a4, a2
                  and          a7, tp, s3
                  add          a1, s5, s5
                  srai         tp, a2, 7
                  nop
                  slt          s4, a4, a0
                  srl          zero, a2, a7
                  sll          a6, a1, t0
                  auipc        s4, 921581
                  or           t6, a3, zero
                  sub          gp, s11, s11
                  andi         a7, ra, 769
                  srl          a6, a2, s10
                  lui          a2, 276951
                  slli         s11, t2, 27
                  sltu         s2, zero, a0
                  or           a4, s3, sp
                  lui          t6, 314752
                  lui          zero, 576695
                  slt          t2, s2, a6
                  or           s8, s1, zero
                  sra          ra, a1, a6
                  slli         a3, a7, 25
                  sub          t5, a2, t1
                  sra          t6, s0, a1
                  addi         a5, a2, -1671
                  xor          t2, s2, t4
                  sltu         gp, a2, sp
                  slti         a7, gp, -710
                  xori         s1, s3, 238
                  nop
                  sub          zero, t5, a6
                  sll          s5, s5, a4
                  andi         a6, a6, -2027
                  slti         t5, s6, -294
                  sll          gp, s5, t4
                  sltu         a1, zero, gp
                  srai         s7, a3, 17
                  xor          t5, s6, s2
                  sub          s11, s10, s0
                  sra          zero, a7, s6
                  and          a1, a1, s1
                  srl          a1, s10, s4
                  slt          t5, s9, a1
                  xori         s5, s11, -136
                  slti         s0, ra, -594
                  sltu         a4, a4, t0
                  sll          s7, a2, a7
                  andi         a1, sp, 1328
                  slli         tp, t1, 29
                  srai         tp, gp, 11
                  lui          t1, 470740
                  xori         gp, s7, 655
                  ori          zero, s0, 342
                  sll          s2, t5, s6
                  srli         t0, s6, 18
                  sltiu        ra, s4, 1912
                  slt          a7, t3, tp
                  sltiu        t1, t2, -121
                  add          tp, s10, s4
                  slli         ra, a1, 9
                  xori         a1, s2, -2031
                  srai         s8, s6, 7
                  slti         s4, a6, 896
                  sltiu        s10, s3, -1448
                  xori         s1, sp, -629
                  sub          t3, gp, gp
                  add          t4, s10, s8
                  slti         s9, a3, 1886
                  addi         a4, tp, -609
                  sub          a4, a1, t1
                  xor          a5, a5, sp
                  srl          a6, t4, a6
                  and          a5, s4, s1
                  ori          a3, s4, -1332
                  lui          s9, 360108
                  sltiu        t1, sp, 210
                  nop
                  sll          a5, sp, t5
                  lui          a6, 919917
                  slti         t2, ra, -1620
                  andi         s0, ra, -1692
                  xor          s9, ra, t5
                  slli         t6, t5, 10
                  slti         s8, ra, -1356
                  srli         a6, zero, 4
                  sll          t6, t6, t5
                  auipc        a6, 261769
                  xori         a0, a4, 454
                  slli         tp, s11, 22
                  ori          s0, gp, -1272
                  auipc        a0, 751935
                  srai         s4, s0, 7
                  sltu         a6, a4, a1
                  srai         s10, t4, 29
                  xor          t2, s10, s5
                  sltu         a4, a6, s9
                  ori          zero, a2, 1837
                  and          t6, s2, t4
                  auipc        zero, 130725
                  sltu         t3, s4, s11
                  or           s2, a1, s5
                  and          t5, a3, t2
                  andi         t1, s7, -1007
                  addi         s9, a3, 1177
                  sra          s5, t0, s5
                  srai         t1, s9, 19
                  ori          t5, a1, 342
                  srl          a3, a5, s11
                  sltu         t0, s8, a3
                  xori         a7, gp, 470
                  xori         s4, gp, 79
                  sra          zero, t5, t0
                  srai         gp, a3, 15
                  srai         a5, s1, 15
                  ori          s5, s9, -1633
                  xor          a3, t5, a6
                  sltiu        t5, t6, -1286
                  slli         ra, s9, 10
                  slli         a0, a1, 21
                  andi         t5, t3, 1892
                  sll          t6, a5, a3
                  srli         s10, a4, 17
                  slli         a1, a1, 20
                  slti         s4, s9, -246
                  andi         a0, t5, 185
                  sra          tp, s7, t4
                  nop
                  srai         s10, zero, 8
                  sltiu        a5, a3, -1630
                  slli         s8, s4, 3
                  sub          s8, s9, a1
                  sll          zero, a0, t1
                  sltu         s4, a1, a2
                  sra          t0, t5, t1
                  andi         t5, s10, -1268
                  addi         a0, t3, -1271
                  ori          a7, t1, -1784
                  sra          t5, s11, s0
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           t4, 0xffffffff
                  li           a3, 0xffffffff
                  li           s7, 0x80000000
                  li           a7, 0x0
                  li           s9, 0xcf87bad8
                  li           a4, 0x0
                  li           s1, 0xffffffff
                  li           s0, 0x80000000
                  li           s11, 0x9af7e97e
                  lui          s1, 761401
                  addi         s11, t1, -1490
                  nop
                  add          s11, a7, a4
                  add          s9, a4, a7
                  auipc        s1, 822493
                  addi         t1, a4, 370
                  addi         t1, s11, 200
                  sub          s7, s11, t4
                  lui          s0, 559505
                  nop
                  auipc        s7, 1024807
                  addi         t4, s0, -1291
                  auipc        t4, 740220
                  nop
                  add          s1, a7, s0
                  lui          s1, 3187
                  add          t4, s1, t4 #end riscv_int_numeric_corner_stream_2
                  sra          s10, s6, s1
                  andi         s1, a0, -781
                  auipc        t2, 303822
                  slti         a5, ra, -1882
                  and          s10, s4, s7
                  xor          s8, a7, a1
                  and          s7, s1, s11
                  slt          a3, t0, a4
                  auipc        s10, 36248
                  srai         tp, t5, 11
                  lui          a1, 837132
                  srli         a4, t2, 20
                  and          t1, t5, s0
                  ori          s4, s2, 296
                  srli         a5, s6, 27
                  andi         s10, t3, -827
                  sll          ra, t2, s10
                  auipc        t0, 410875
                  slti         t4, t1, -1287
                  and          a3, t0, t3
                  lui          a4, 259691
                  srli         t1, t2, 10
                  srai         a7, s3, 29
                  sltu         s7, s0, s5
                  andi         zero, s1, 1063
                  nop
                  slt          ra, s5, sp
                  srl          t1, s3, t0
                  sltiu        ra, t2, 1217
                  srl          t5, a2, s3
                  andi         tp, a6, 940
                  sltu         a0, t2, t3
                  srai         s1, a3, 30
                  slti         t4, a0, -15
                  or           gp, s8, s10
                  ori          t6, s10, -1300
                  add          a0, s3, t0
                  nop
                  xor          tp, a6, a6
                  ori          gp, s10, 964
                  ori          s8, gp, -1418
                  xori         a3, t5, 103
                  ori          a4, s5, -987
                  andi         gp, a7, 1006
                  srl          a7, s0, a3
                  slli         t5, s6, 15
                  add          a5, a0, t6
                  addi         zero, a3, 1003
                  srl          t4, t4, tp
                  and          gp, a7, t6
                  xori         s1, s4, -61
                  slt          zero, a3, s2
                  auipc        a5, 909036
                  addi         s7, t1, 428
                  addi         ra, s1, 365
                  ori          a5, t5, 1433
                  srai         a2, s11, 17
                  sltu         s11, t6, t6
                  xor          tp, s3, sp
                  xori         t1, t5, 1546
                  xori         a3, s5, -1826
                  slti         s11, t5, 1556
                  slli         a6, t0, 26
                  nop
                  lui          a5, 488691
                  srl          s10, s4, s4
                  xor          gp, s3, t1
                  slli         t0, a3, 28
                  sltu         t2, t4, a3
                  addi         tp, a1, -418
                  auipc        s11, 548620
                  slli         a4, s3, 13
                  or           s2, s9, s5
                  nop
                  xor          s5, sp, s7
                  ori          a5, s11, -483
                  addi         t2, t1, 612
                  sltiu        a4, t0, 1068
                  sll          s8, s8, a7
                  xor          a0, s11, s1
                  srli         a7, zero, 24
                  sltiu        t3, s11, -1827
                  or           a4, a4, a5
                  auipc        t1, 486694
                  xori         t6, t2, -802
                  lui          t0, 507596
                  slti         a3, s0, -90
                  lui          s5, 1032479
                  ori          s2, ra, 1209
                  srl          s10, a6, t3
                  sra          t6, t5, s0
                  xori         zero, ra, -1344
                  slli         s9, a1, 3
                  srl          s0, t6, s2
                  srl          a0, s11, t0
                  ori          s7, a3, 854
                  srai         s7, t3, 19
                  slti         t1, t4, -811
                  sltu         ra, s3, t6
                  nop
                  sltiu        s11, gp, 343
                  nop
                  xori         t5, a1, 1869
                  srli         s7, s11, 12
                  sll          s1, s1, t3
                  auipc        t1, 820969
                  sra          t5, zero, s1
                  addi         t5, s6, -257
                  auipc        ra, 601444
                  or           a2, a1, a5
                  slt          a4, s6, a5
                  or           a3, s4, zero
                  slt          s2, t0, s3
                  sll          t6, s11, t3
                  sltu         t6, s4, s10
                  add          a3, a6, s0
                  sll          a6, s11, zero
                  sltu         s7, t5, t6
                  auipc        a5, 302846
                  or           s10, t2, s7
                  lui          t1, 95326
                  slti         s5, sp, 2040
                  xor          s4, a0, a5
                  nop
                  sltu         t3, a1, t4
                  slt          t0, ra, s2
                  ori          s11, ra, -1810
                  add          s2, t6, a3
                  auipc        zero, 921067
                  slti         a5, a7, 1978
                  slt          s8, zero, a6
                  slti         s8, t4, 585
                  sltu         a1, s10, s6
                  auipc        t2, 658400
                  sll          s11, t0, s4
                  lui          tp, 894349
                  xori         t0, t6, 1899
                  srli         s0, ra, 21
                  sub          t1, s1, a2
                  srl          s0, tp, gp
                  xori         a5, t3, 941
                  or           s2, a3, s9
                  ori          a1, s10, -588
                  srai         a4, s9, 31
                  srai         t0, tp, 27
                  srli         a2, t6, 10
                  addi         a5, t1, 1829
                  xori         a3, s2, 41
                  sub          t3, t0, s7
                  sra          a7, s2, s6
                  xor          s5, s7, t6
                  ori          s0, t3, -25
                  xori         gp, ra, -400
                  and          a4, s5, tp
                  sltu         s2, s1, s5
                  slt          s5, s8, t5
                  ori          a3, a3, -1438
                  srl          zero, s2, t1
                  auipc        s5, 361416
                  xori         s8, t1, -285
                  xor          t3, a2, a4
                  sll          a4, a6, s9
                  and          a7, zero, ra
                  srai         t0, t1, 5
                  srli         a2, t4, 9
                  srl          t0, s8, t4
                  lui          a1, 289939
                  xori         s4, s5, -1338
                  xor          t5, t3, ra
                  add          zero, t5, s6
                  addi         a7, a5, 1978
                  or           s5, gp, a0
                  sltu         tp, s5, sp
                  slli         a3, s11, 20
                  or           t2, s1, t3
                  add          s11, s2, t0
                  auipc        t4, 769403
                  slt          s8, a0, t4
                  xor          t2, a1, s3
                  srl          t4, t0, s0
                  and          s0, t4, s2
                  sra          t4, a2, t3
                  andi         a7, s4, 5
                  sub          a7, s7, tp
                  sll          a0, a5, s0
                  xori         t0, s8, 1749
                  sll          s5, s9, gp
                  sra          s1, t5, s6
                  sra          t2, t2, s1
                  lui          a2, 824846
                  or           s5, s3, t3
                  slt          s10, s9, a3
                  slti         a5, s1, -56
                  and          s11, s2, tp
                  sltu         a3, s11, a3
                  slt          s5, zero, a1
                  or           t2, s11, t2
                  sltiu        t3, s5, -127
                  addi         s8, s7, -1922
                  sltiu        s5, s4, -929
                  addi         s7, s2, -486
                  xor          gp, s2, t0
                  sltiu        a0, sp, 298
                  slt          t4, t6, tp
                  sltu         s4, zero, t4
                  or           a0, s6, s3
                  sll          s9, s3, s2
                  xor          t2, a2, s7
                  srl          a7, s2, a7
                  ori          a2, s1, -808
                  slt          s8, a5, t1
                  slt          a0, zero, t6
                  srai         a4, a0, 22
                  sll          s0, zero, gp
                  add          s8, s10, s8
                  srl          zero, a6, s0
                  xor          a2, a3, tp
                  xori         s11, tp, 1563
                  slti         s9, tp, 428
                  or           a2, s0, t2
                  andi         a1, t1, -850
                  srl          t6, a1, s6
                  addi         t5, s2, 1129
                  sub          ra, a5, s10
                  srli         t0, s5, 0
                  andi         t3, t4, 1392
                  add          s9, s6, a2
                  slt          a3, s10, t1
                  sll          s11, t2, s4
                  xor          t6, t3, s9
                  andi         t4, tp, -539
                  sll          a7, sp, t5
                  sltiu        t0, s6, -193
                  srli         s2, s8, 0
                  auipc        a5, 564201
                  addi         t4, a2, -1462
                  andi         zero, s10, -1452
                  srai         s0, a6, 6
                  sll          s9, sp, a5
                  srai         t3, a5, 7
                  nop
                  or           a3, ra, s6
                  lui          zero, 774312
                  xor          t0, s8, t4
                  lui          t5, 302020
                  or           gp, t1, a1
                  srl          a3, a6, a1
                  xor          ra, s9, s3
                  srli         a5, a2, 5
                  nop
                  sra          a3, s4, a1
                  slli         s2, a6, 9
                  slti         a3, s4, -1322
                  sub          a4, t5, a5
                  sltiu        t6, t3, 1587
                  sra          s5, s1, sp
                  sltiu        a7, t3, 440
                  ori          s2, s2, -255
                  xor          gp, tp, a0
                  slli         s11, a5, 31
                  and          a0, s9, t1
                  and          s2, a6, s11
                  auipc        a1, 359640
                  slti         s8, a5, -801
                  sltu         s2, s1, s5
                  xor          t6, s1, s4
                  xor          a0, a3, a3
                  addi         a1, sp, 223
                  srl          s9, t5, a0
                  slt          ra, s0, sp
                  sll          a2, t5, a6
                  xori         a7, a4, -507
                  srli         t5, a1, 19
                  andi         t4, a6, 1471
                  srai         t6, ra, 31
                  xor          s5, s9, ra
                  xori         t0, t5, -1561
                  auipc        tp, 942340
                  auipc        t6, 977085
                  sub          ra, s7, zero
                  slt          a4, t1, s4
                  slt          s0, t3, t2
                  srli         s7, s5, 1
                  lui          t0, 661372
                  slt          t2, zero, s3
                  auipc        t5, 577567
                  srli         a6, s2, 19
                  and          gp, a2, ra
                  srl          t1, a0, s4
                  srl          s8, tp, s10
                  srai         a3, a5, 9
                  sll          a5, t1, s8
                  addi         s2, a4, 1814
                  nop
                  sra          t4, gp, gp
                  slti         t2, sp, -2023
                  or           s2, tp, s10
                  sra          tp, sp, s7
                  srai         s10, t5, 1
                  lui          a6, 856355
                  srli         t3, t1, 25
                  srai         zero, s10, 28
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a5, 0x80000000
                  li           a2, 0xffffffff
                  li           a3, 0x7560a34f
                  li           s0, 0x80000000
                  li           a6, 0xeeb3c448
                  li           ra, 0x0
                  li           t6, 0x80000000
                  li           s7, 0x80000000
                  li           s11, 0x0
                  add          s7, a2, ra
                  sub          a3, ra, a3
                  auipc        s10, 399608
                  addi         a3, a6, 12
                  sub          s10, t6, s7
                  auipc        a5, 16616
                  auipc        a6, 489044
                  lui          a2, 616577
                  addi         s0, a6, 1272
                  auipc        ra, 659733
                  lui          a6, 939933
                  sub          s0, a2, s10
                  add          s0, ra, a3
                  auipc        a5, 625170
                  nop #end riscv_int_numeric_corner_stream_15
                  slti         t4, s8, -71
                  andi         s0, a2, 1752
                  sra          s2, s1, s6
                  addi         t6, a4, -1780
                  sltiu        s0, s8, -457
                  xor          s11, t2, a6
                  addi         a3, gp, -550
                  slt          a1, a2, s8
                  slli         a4, s11, 15
                  slti         s4, t1, 423
                  or           t4, s1, s11
                  addi         a6, ra, 1499
                  srl          zero, t1, s11
                  xori         t3, a1, 476
                  sltu         s8, ra, a3
                  sltu         s10, zero, s8
                  sll          a1, ra, t4
                  addi         t1, t1, 1583
                  srli         s9, t1, 0
                  lui          s0, 782871
                  ori          s5, a1, 267
                  srli         a4, gp, 10
                  lui          t3, 677031
                  and          s8, a7, t6
                  srl          gp, t3, s8
                  ori          tp, a6, 1234
                  xori         a6, a5, 601
                  ori          a5, s2, 1650
                  sll          tp, s3, gp
                  slti         a0, sp, 779
                  nop
                  nop
                  sll          s2, s11, zero
                  nop
                  lui          s4, 67619
                  srli         s5, t2, 3
                  sra          ra, a5, t5
                  or           s10, t0, s1
                  srli         s2, s0, 17
                  sll          a7, a5, t2
                  add          s2, s6, s5
                  addi         a3, t1, 132
                  add          gp, s10, s3
                  xori         a1, tp, -1490
                  srai         t2, zero, 28
                  srl          a1, tp, s6
                  and          a7, a0, t6
                  srli         a3, a2, 17
                  slti         gp, gp, 182
                  xor          zero, s8, t4
                  srli         t5, t6, 9
                  lui          s0, 511799
                  xori         t5, t1, 45
                  ori          s1, t1, 165
                  sra          t1, s3, ra
                  srl          a7, s7, a0
                  sub          a0, s1, s3
                  sub          s2, s3, s1
                  add          s4, zero, gp
                  nop
                  auipc        t5, 664013
                  slli         a7, t5, 26
                  slti         s11, tp, 972
                  ori          a1, a0, -38
                  slti         a0, s5, -1452
                  sltiu        s4, s4, 1617
                  addi         a2, t5, -132
                  slti         t0, t6, 679
                  sltu         a1, tp, s2
                  add          a1, zero, s3
                  addi         a5, tp, 1289
                  addi         t1, a3, 1405
                  sub          s7, a1, a1
                  slt          s1, t3, s6
                  xor          t3, s2, t0
                  slti         t2, a0, 1460
                  xor          ra, a3, s4
                  andi         a0, a3, -1370
                  or           s10, s5, a0
                  addi         s0, s11, 1160
                  sra          s10, s4, s6
                  sltiu        s5, a1, -173
                  andi         s7, s2, -947
                  xori         a1, s1, -446
                  addi         s7, a0, 714
                  slli         s0, s6, 23
                  sra          s7, s8, s11
                  nop
                  sra          a2, a1, s2
                  sra          t6, s4, s0
                  srl          ra, gp, t5
                  add          a1, s11, a4
                  slti         s10, a4, -723
                  nop
                  auipc        tp, 1012506
                  lui          t2, 467805
                  srl          gp, ra, a5
                  slli         ra, s2, 27
                  srai         s0, tp, 6
                  sll          s1, a3, t0
                  add          a1, gp, s2
                  and          s4, s4, s7
                  auipc        a7, 411864
                  lui          t0, 624730
                  nop
                  sra          gp, ra, a6
                  lui          s2, 515235
                  xor          a2, gp, t6
                  lui          s1, 539536
                  sltu         tp, s9, tp
                  and          tp, a3, s1
                  addi         s1, a0, -1656
                  sub          zero, a7, gp
                  nop
                  sltiu        t0, t3, -879
                  nop
                  sltiu        gp, a6, 1931
                  auipc        zero, 1047553
                  sub          a3, sp, a2
                  slli         s0, tp, 4
                  ori          s5, a5, -797
                  sub          s10, ra, s3
                  srli         tp, s5, 5
                  auipc        zero, 941041
                  and          zero, t3, s9
                  ori          a6, t5, 765
                  andi         a4, s10, 187
                  sltiu        s1, t4, -753
                  slli         s1, t6, 4
                  srl          s2, a0, a5
                  srai         s7, t1, 23
                  ori          s8, a4, 299
                  xori         s2, s10, 576
                  slt          a0, s2, gp
                  slli         t5, gp, 0
                  ori          t2, s11, -1615
                  and          t1, a2, t5
                  andi         tp, t3, 1401
                  sub          a4, s10, s3
                  xori         s2, t0, 1255
                  ori          a7, a3, -1741
                  srl          a0, s5, s6
                  slt          a3, s9, s10
                  add          t6, s7, s3
                  nop
                  slli         s7, s4, 12
                  add          s11, s9, a1
                  srli         s5, t2, 31
                  sub          a2, t5, t3
                  or           t6, sp, t1
                  slt          t2, s2, t0
                  addi         t1, s4, -95
                  xori         t1, s3, -558
                  slli         a4, ra, 19
                  sltiu        a3, a4, 858
                  ori          a2, t4, 1930
                  andi         a0, s6, -231
                  slt          s1, a2, t3
                  sltu         a1, ra, a3
                  or           t1, s3, s4
                  auipc        s11, 254060
                  sll          s7, s0, s8
                  srai         s11, gp, 6
                  add          a3, t0, a1
                  sra          t6, ra, a5
                  sltiu        s9, s11, 1489
                  srl          t0, a0, zero
                  srl          s8, s8, s11
                  xor          s7, tp, sp
                  and          a5, t5, s11
                  sub          s8, t5, s0
                  srai         s9, zero, 6
                  srai         s8, s5, 0
                  auipc        a4, 971569
                  or           a6, s1, t3
                  slti         t3, s10, -1273
                  andi         ra, gp, -1325
                  nop
                  srl          a7, s1, a1
                  addi         s5, t6, -1927
                  srl          t0, gp, sp
                  srli         t2, t4, 15
                  addi         t5, s5, 1485
                  andi         t5, s7, 441
                  sltiu        s7, s4, 128
                  sub          s1, t0, s2
                  slli         t1, s9, 7
                  sll          a6, a6, s4
                  ori          t3, a2, 840
                  srai         s5, t6, 17
                  auipc        a6, 784495
                  auipc        s0, 250073
                  srli         t6, t2, 30
                  srl          s11, s6, s0
                  ori          t0, tp, 1509
                  sra          s8, a6, ra
                  slli         s10, t0, 7
                  xor          gp, a0, zero
                  xor          zero, t0, a1
                  sltu         t5, zero, s0
                  slti         a5, s1, -648
                  lui          s10, 797760
                  slli         a2, s6, 16
                  sub          a3, s3, s6
                  sltu         gp, s6, s5
                  srai         s4, s11, 11
                  xori         a1, s1, 793
                  sltu         a6, s6, a7
                  ori          s5, s2, -1182
                  and          s4, tp, t5
                  srai         t2, s5, 8
                  auipc        a4, 543664
                  srl          a5, s2, s6
                  sltiu        s9, s9, -1557
                  sltiu        s11, s10, -2010
                  slt          s8, t2, ra
                  srli         zero, s0, 18
                  slli         t5, s9, 26
                  ori          s10, s9, -130
                  and          a2, s6, a4
                  sra          a0, a5, s11
                  slt          t2, t4, s5
                  xori         a7, a4, 1618
                  xori         a6, tp, 1318
                  add          zero, s2, sp
                  addi         zero, t2, 1391
                  nop
                  srl          t2, ra, s7
                  xor          s10, s8, s0
                  sltiu        a5, ra, -642
                  and          t1, s7, t3
                  sltiu        t4, s5, -862
                  addi         s11, t0, 206
                  ori          t4, a1, 744
                  srl          t0, a3, a0
                  add          t5, s9, s8
                  and          s9, s6, a1
                  add          t5, t3, sp
                  sll          a4, t3, s6
                  sra          s11, s9, s10
                  nop
                  andi         s2, s9, 1040
                  slt          s5, s7, s3
                  andi         gp, s5, -1480
                  slli         t6, a6, 7
                  srli         a0, a6, 14
                  xor          a0, a1, s10
                  sltu         s0, ra, ra
                  slti         a3, a0, 379
                  slt          a3, a7, t4
                  add          s0, a5, a1
                  sra          a0, a2, s8
                  lui          a3, 99657
                  sltiu        t4, t3, -787
                  sll          a7, s8, s4
                  ori          a4, ra, 1766
                  sub          a4, t0, t2
                  sltiu        t6, a3, -507
                  nop
                  li           s9, 0x3358b452 #start riscv_int_numeric_corner_stream_18
                  li           s7, 0x88dd5155
                  li           t2, 0xffffffff
                  li           a3, 0x80000000
                  li           s2, 0x0
                  li           gp, 0x80000000
                  li           a5, 0xffffffff
                  li           a7, 0x0
                  li           s0, 0x80000000
                  li           s8, 0x0
                  auipc        s7, 393481
                  nop
                  add          s0, s9, gp
                  add          s2, gp, a3
                  add          s0, a3, s7
                  addi         t2, t2, 1171
                  auipc        a5, 138754
                  add          t2, a5, a7
                  lui          s9, 169098
                  auipc        a3, 834204
                  sub          gp, t2, a7
                  add          s2, t2, s9
                  sub          s2, s8, s9
                  add          a3, s0, a3
                  add          gp, a7, s0
                  auipc        s7, 11621
                  nop
                  nop
                  sub          s9, a5, gp
                  auipc        s8, 794675
                  nop
                  nop
                  add          s8, s8, s7
                  addi         s2, gp, -1558
                  sub          a5, t2, s0
                  nop
                  auipc        a7, 422346
                  addi         s0, s9, 1599 #end riscv_int_numeric_corner_stream_18
                  xor          s8, s11, s1
                  slli         t4, t2, 21
                  sub          t4, a3, s6
                  slti         s7, s5, -584
                  srai         t2, s11, 7
                  lui          a6, 129560
                  lui          t3, 735307
                  addi         t1, s7, 937
                  slti         t6, zero, -2005
                  srai         a4, s9, 8
                  auipc        s5, 385968
                  srli         s0, s11, 17
                  sltu         s8, t3, a0
                  srai         t0, tp, 5
                  add          s0, t1, s6
                  slt          t4, s11, s5
                  sra          s8, gp, a1
                  sltiu        s9, s7, -1861
                  srai         a4, sp, 29
                  or           a1, gp, a0
                  srai         a1, t1, 6
                  andi         t4, gp, 1197
                  and          s2, s6, s1
                  ori          s11, a2, 89
                  sra          t1, a5, a1
                  sltiu        a6, s3, -341
                  slli         gp, s10, 8
                  lui          s0, 791684
                  ori          a3, s0, -295
                  add          s1, s10, s3
                  or           s5, a6, s7
                  slt          gp, s9, s0
                  srli         a3, a7, 20
                  xor          a6, s11, sp
                  lui          ra, 315267
                  and          t2, tp, t4
                  slti         t4, t6, 1147
                  nop
                  lui          zero, 365419
                  srai         s11, s5, 15
                  sll          s11, s3, t5
                  srli         tp, t1, 27
                  ori          a2, s1, 881
                  slti         s0, zero, -1651
                  lui          s8, 433260
                  sub          t1, s2, sp
                  srl          a5, a0, t0
                  xor          s1, gp, t2
                  srai         s1, zero, 5
                  ori          a4, s8, 1304
                  slli         t2, t2, 16
                  ori          t6, s7, -1514
                  lui          s11, 339103
                  auipc        s8, 632390
                  lui          a5, 491919
                  srl          s7, s4, a2
                  srai         a4, t4, 9
                  nop
                  nop
                  srli         a7, a0, 12
                  slti         s11, s8, 2000
                  addi         s2, s9, 341
                  srl          gp, sp, a2
                  srl          t1, a5, t5
                  slti         s11, a6, 1383
                  andi         s1, a0, 1966
                  slli         s7, s10, 12
                  ori          t3, s4, -1861
                  srl          a6, s5, a4
                  sltiu        s2, s4, 1647
                  sll          a2, t3, s9
                  slti         s11, sp, 1862
                  xor          a0, t0, t4
                  sra          s10, t4, s2
                  slli         a7, a0, 19
                  slti         s9, s1, 1203
                  slli         a0, s3, 12
                  slti         s8, s2, 1433
                  nop
                  andi         zero, s1, -979
                  srli         a7, a4, 12
                  slt          a6, a2, a7
                  nop
                  sll          s8, zero, s1
                  srai         zero, gp, 17
                  srl          t2, t0, a1
                  slt          s7, t4, a7
                  lui          t2, 702993
                  srai         t6, s8, 12
                  andi         zero, s7, -595
                  sll          s7, ra, tp
                  ori          t2, s4, 269
                  nop
                  addi         s0, s2, 732
                  add          a7, gp, s7
                  srli         s8, s4, 18
                  nop
                  andi         a4, t2, -1751
                  auipc        zero, 966424
                  and          s9, a7, s2
                  sll          a1, a3, t1
                  srai         s5, a4, 31
                  and          t5, s8, a6
                  addi         t0, s7, -322
                  nop
                  nop
                  auipc        t3, 31043
                  ori          s8, s7, 174
                  or           t4, t2, t2
                  srl          a4, t3, s1
                  sub          t4, tp, t3
                  xor          s0, t1, a1
                  xor          s9, a0, s7
                  sra          s9, gp, t2
                  slli         t3, gp, 30
                  ori          s9, a7, -679
                  add          a0, s0, s1
                  sll          t5, s10, s2
                  slti         a3, s3, -1566
                  slti         t6, t4, 277
                  srli         t0, zero, 4
                  slli         a2, a2, 30
                  addi         t6, s1, 1683
                  auipc        a7, 825137
                  sltu         s2, a1, a6
                  nop
                  slli         s9, s8, 12
                  lui          t2, 482509
                  srl          t3, a2, a4
                  and          s11, ra, a5
                  sub          a7, a1, tp
                  addi         s5, s1, 1476
                  slt          s2, s6, a3
                  add          a0, s1, sp
                  auipc        s4, 244996
                  srli         a1, a5, 0
                  slli         a5, a0, 11
                  ori          s2, s5, -911
                  and          s0, zero, t0
                  xori         gp, s6, 563
                  or           a5, a1, s6
                  srli         t3, a2, 20
                  and          s2, s4, a6
                  sltu         s10, t6, s10
                  auipc        a6, 185282
                  srli         s11, s3, 2
                  addi         t4, a5, -998
                  slti         a7, s4, -1092
                  ori          t5, tp, -1423
                  add          ra, t6, s4
                  nop
                  or           a4, s1, a4
                  or           s9, t4, ra
                  slti         ra, t6, -181
                  srai         s0, a3, 25
                  add          gp, s2, a4
                  auipc        s7, 956822
                  ori          s7, s1, 1220
                  ori          s1, a3, -816
                  or           a7, a7, a0
                  add          t0, t3, s10
                  slt          s9, s9, s1
                  andi         t4, sp, -144
                  auipc        t6, 20090
                  srai         s8, s8, 30
                  xori         a2, zero, -94
                  and          s11, s8, t5
                  slli         a1, sp, 15
                  slt          a6, t6, ra
                  andi         s2, s11, 1237
                  addi         tp, t0, 915
                  xor          gp, s3, t5
                  addi         a3, a1, -454
                  auipc        a2, 821371
                  sra          s7, zero, sp
                  xor          t4, s2, s3
                  ori          a6, s7, 475
                  add          a2, s0, zero
                  sll          s4, tp, s5
                  sltiu        s9, t2, 258
                  xori         s7, s9, 2033
                  slli         tp, t6, 13
                  lui          a6, 170537
                  srai         s8, a1, 6
                  xori         a3, t5, 181
                  slti         a0, a4, 1028
                  nop
                  auipc        s2, 487954
                  sub          a0, t3, s2
                  ori          a0, s10, -1807
                  and          s10, sp, s8
                  sra          a0, a0, s1
                  srli         a2, s4, 24
                  xori         t3, t1, 1986
                  sltiu        s7, t4, 1595
                  or           t5, t2, s10
                  slt          t4, ra, s4
                  xor          ra, a3, t1
                  sub          zero, s3, tp
                  lui          s10, 265845
                  or           s4, s3, t0
                  nop
                  andi         s9, s3, 1351
                  slt          a4, t2, s7
                  sltiu        s11, t6, 817
                  add          s11, a0, t1
                  add          s1, t0, a7
                  xori         s1, s11, -931
                  sltu         a6, t6, t4
                  slti         s10, s4, 1534
                  slli         a1, s2, 8
                  slti         s8, s9, 1631
                  sub          a5, s9, s7
                  sub          gp, gp, t0
                  xor          t5, sp, tp
                  slt          s7, a0, s11
                  and          gp, a0, s0
                  ori          t2, t0, -1599
                  sltiu        t1, a0, -122
                  auipc        t4, 890192
                  lui          gp, 900855
                  andi         gp, t2, 102
                  add          a2, s5, zero
                  slti         t4, a6, 1114
                  sltu         a6, a6, a1
                  sltiu        s2, gp, -1687
                  ori          s9, a4, 1618
                  lui          s4, 356351
                  slti         s5, s7, -275
                  lui          s5, 825668
                  srl          s2, t5, a0
                  sltu         a0, t3, s4
                  sltu         t2, a6, sp
                  sub          a3, t2, t2
                  slli         t6, s4, 31
                  add          s2, ra, a5
                  auipc        ra, 157489
                  lui          s7, 129925
                  sltu         t0, s9, a1
                  ori          t6, t0, 670
                  sltiu        tp, s9, 1205
                  slli         zero, s0, 18
                  add          a7, s8, a2
                  nop
                  sltu         zero, tp, s1
                  xori         s1, sp, -1547
                  andi         s1, a7, -271
                  xor          a3, a1, a2
                  auipc        ra, 646163
                  lui          s4, 609961
                  slt          s1, t3, s2
                  or           zero, s2, a3
                  slli         s0, tp, 5
                  sra          t4, s0, s4
                  sltu         a2, a1, s11
                  or           gp, a1, a2
                  auipc        s11, 548834
                  sltu         s0, a3, s11
                  add          t5, t2, s2
                  sll          t4, a1, s2
                  sra          zero, tp, gp
                  add          s7, a3, a7
                  xor          a0, s9, a2
                  srl          zero, s10, t1
                  addi         s1, t4, 555
                  sltu         a7, s4, tp
                  lui          s2, 128103
                  and          ra, s6, s8
                  slt          a6, t2, a7
                  nop
                  lui          a2, 665679
                  and          a6, t6, s3
                  andi         s8, tp, -544
                  slti         a3, s0, 1480
                  slt          t1, s10, s7
                  sll          s9, a4, s10
                  auipc        t5, 920687
                  srai         t2, s2, 29
                  sltiu        a1, s4, 531
                  slli         t2, s0, 31
                  xori         s4, s2, -1301
                  xor          s1, s2, ra
                  xor          a5, t2, s7
                  sltiu        t1, t3, -1123
                  srai         t2, s6, 21
                  sltiu        s5, t4, 1359
                  sltu         s0, s6, s2
                  lui          a6, 105770
                  xori         a4, s6, 603
                  xor          t3, t4, t1
                  srai         tp, t1, 25
                  sll          a3, ra, s0
                  nop
                  sub          zero, t6, t5
                  ori          t1, s4, -1214
                  srai         a6, t6, 13
                  sll          t4, a1, a7
                  sub          s1, s0, s3
                  lui          a3, 204541
                  slti         t4, t6, -610
                  srai         s1, s5, 20
                  andi         t1, s8, 1077
                  nop
                  and          t5, a3, s2
                  slt          t0, t2, t6
                  andi         a1, ra, 751
                  add          gp, a5, s7
                  xori         a4, s3, -1797
                  or           s0, s2, s4
                  add          s4, gp, t5
                  nop
                  sltiu        tp, s3, -662
                  auipc        t6, 589907
                  sll          s7, s1, zero
                  andi         s5, zero, -22
                  auipc        tp, 596445
                  sltiu        t3, s11, -67
                  andi         t6, t5, 100
                  xor          a5, a4, a5
                  sltu         s8, sp, zero
                  andi         s11, s11, -1915
                  addi         t6, a4, -1091
                  and          t6, t6, s0
                  andi         s4, s10, -1757
                  srli         a7, t5, 9
                  srl          s4, t0, t1
                  slti         zero, a1, 666
                  sltiu        ra, t1, 937
                  and          s1, s3, s6
                  add          t3, s6, t3
                  sra          ra, t3, sp
                  srai         s2, zero, 26
                  srl          s5, s1, ra
                  slli         a3, sp, 5
                  or           t3, s8, s3
                  nop
                  auipc        t5, 127889
                  slti         t1, ra, -1074
                  xori         s8, gp, -2001
                  ori          a1, t1, 1472
                  slli         s7, s4, 3
                  or           t2, ra, a3
                  sll          t1, a2, t3
                  nop
                  slli         a4, t5, 26
                  sltu         s4, s4, a6
                  sltu         t3, t5, s7
                  auipc        a1, 440135
                  srai         tp, a0, 25
                  slti         s4, a6, -1050
                  auipc        a7, 123937
                  sll          a2, s0, t5
                  srl          tp, ra, s7
                  ori          tp, a5, 224
                  or           a1, t0, tp
                  addi         s7, gp, 633
                  auipc        s11, 394289
                  sub          s8, s5, s10
                  auipc        s4, 1041777
                  xori         s7, tp, -1422
                  slti         t2, t4, 46
                  sub          s7, s10, a6
                  and          t5, s5, s3
                  andi         a7, ra, 983
                  sltu         t1, gp, s10
                  and          s5, t4, a3
                  xori         t4, a1, 1684
                  xori         t0, t5, 373
                  sll          a5, a3, t5
                  addi         t3, a7, -234
                  srai         s5, gp, 24
                  sub          a6, s8, t0
                  srai         a2, s6, 24
                  srli         tp, s5, 8
                  add          a0, a1, s3
                  lui          t6, 108970
                  srli         t6, s8, 26
                  nop
                  or           a3, t5, ra
                  sltiu        a7, a6, 120
                  sra          a2, tp, t0
                  slti         s9, t0, 1758
                  nop
                  srl          s9, s1, a7
                  sltu         s9, a4, a3
                  sltu         gp, s7, t2
                  nop
                  sub          a4, s0, s0
                  and          t1, t1, s9
                  add          s10, a2, a1
                  and          t4, sp, sp
                  sltiu        a3, s6, -914
                  sub          a3, s3, a6
                  sra          a0, a1, zero
                  sltiu        zero, t1, -1221
                  andi         t6, t1, -1097
                  add          a6, ra, t5
                  slti         t6, a5, -131
                  sltiu        s4, s7, 569
                  slli         s0, t5, 16
                  srli         a5, s0, 16
                  and          a1, t1, s3
                  srai         s5, s11, 1
                  and          gp, s7, tp
                  addi         a0, a3, 1884
                  sra          zero, s11, t6
                  xor          s2, a1, a1
                  nop
                  srai         t4, t5, 24
                  xor          s1, t6, t3
                  sltiu        a1, t5, -1423
                  sltu         t5, a4, gp
                  xori         s1, t0, 1758
                  sltu         a1, s8, a4
                  xori         s5, s6, 808
                  xori         ra, s11, 1018
                  add          t1, t0, t3
                  sltiu        s0, s3, -623
                  ori          s2, t4, -1555
                  and          s9, t0, a3
                  srl          t5, s10, t6
                  slti         t3, s5, -1315
                  or           a3, a0, s4
                  sub          gp, a1, a0
                  sltiu        s2, a7, -638
                  slli         s4, t4, 3
                  addi         a5, s3, -1713
                  sltiu        s1, s4, 1777
                  sll          zero, s5, ra
                  addi         a1, s6, -1105
                  srai         ra, s5, 21
                  auipc        a3, 680666
                  ori          a2, s3, 1278
                  sll          a0, t5, t6
                  nop
                  slli         s4, s10, 5
                  sub          s2, s9, s4
                  slt          a6, a4, a2
                  xori         s0, zero, 1898
                  slt          s1, t3, s11
                  sra          s2, t2, s11
                  add          s9, t5, s4
                  srli         s0, t5, 28
                  sltu         t0, t5, t5
                  slt          s0, s4, s0
                  sltiu        t6, t6, 1851
                  or           zero, s1, t1
                  add          ra, tp, s9
                  xori         s0, gp, -1125
                  andi         a6, a1, -1654
                  auipc        s7, 515940
                  sltu         tp, a6, a3
                  xor          s0, s5, zero
                  slt          s9, zero, sp
                  add          s11, s0, t0
                  sltiu        s4, t6, 374
                  add          a5, s4, a1
                  slli         t1, a6, 13
                  nop
                  sll          s9, s0, a2
                  srai         s2, s2, 6
                  sll          s8, a6, t2
                  sub          s2, t3, s3
                  sub          a6, s7, t2
                  and          s11, s11, s4
                  andi         s0, s11, -889
                  srai         s4, tp, 26
                  ori          t3, a2, 1419
                  nop
                  sll          a1, s7, s2
                  andi         a3, tp, -1173
                  sra          s8, s5, t0
                  slti         s5, s7, 1077
                  and          t4, a7, s7
                  slti         t4, s0, -1274
                  nop
                  or           a6, s6, a3
                  addi         s0, sp, 947
                  ori          s0, zero, -1779
                  addi         gp, s6, 721
                  srl          ra, s7, a7
                  add          t6, t1, a6
                  nop
                  add          s2, s11, tp
                  srli         a2, s1, 22
                  slli         ra, t5, 25
                  ori          s7, s7, 1789
                  sra          s5, s8, tp
                  add          ra, t6, gp
                  add          a0, s4, zero
                  lui          s10, 890692
                  andi         gp, zero, 1388
                  ori          ra, t6, -1658
                  slt          a4, s11, s9
                  sra          s5, a1, s2
                  sra          a3, s3, gp
                  srli         t1, a3, 27
                  add          t0, s4, zero
                  slti         t2, sp, 269
                  and          t6, sp, s10
                  slt          s1, s8, s5
                  lui          t5, 612421
                  slli         t6, a0, 31
                  or           gp, s0, s8
                  addi         t6, s5, 135
                  auipc        s7, 141334
                  lui          s10, 534425
                  xor          a3, s4, t6
                  addi         t1, s7, -210
                  sltiu        tp, s3, 1651
                  srli         a0, a7, 24
                  slti         a2, a4, -2015
                  slti         t0, s5, 1128
                  sub          a7, a0, tp
                  xori         ra, a4, -397
                  and          t1, s4, t3
                  or           a7, s3, a6
                  lui          s11, 148674
                  sub          s4, s0, s4
                  sra          t1, a7, a0
                  sra          a7, s5, t3
                  sll          t0, t2, t5
                  sll          zero, ra, a1
                  lui          a5, 519321
                  xori         a6, s2, -324
                  sub          s1, a3, a7
                  and          s10, s5, s1
                  slli         ra, s3, 29
                  andi         t1, zero, 1007
                  sltu         s5, s1, a7
                  slti         s9, s7, -1179
                  xori         t4, s9, -924
                  ori          t1, ra, 1051
                  srli         t1, s10, 26
                  slli         t5, s8, 10
                  srai         a6, s6, 20
                  srl          t3, a0, a2
                  or           a3, a5, a3
                  andi         a1, s2, -659
                  nop
                  and          s7, a7, s6
                  sltiu        s10, zero, -1418
                  srli         t1, s0, 5
                  slt          s11, a1, tp
                  lui          s0, 213695
                  lui          s0, 636170
                  ori          s11, a5, 179
                  lui          t3, 43
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           t1, 0x0
                  li           s5, 0x80000000
                  li           a4, 0x0
                  li           s11, 0xc6a351fc
                  li           s7, 0xffffffff
                  li           a2, 0x80000000
                  li           t3, 0x80000000
                  li           t6, 0x9355a721
                  li           a5, 0x0
                  add          s9, s7, t3
                  auipc        a5, 717747
                  addi         a5, t6, -789
                  addi         a4, t1, 923
                  sub          t3, a2, a5
                  nop
                  addi         t3, t3, 662
                  auipc        t3, 327872
                  nop
                  nop
                  add          t6, s11, a5
                  nop
                  nop
                  sub          s11, t3, t1
                  nop
                  nop
                  auipc        a5, 738469
                  nop
                  auipc        s9, 245643
                  nop
                  sub          s7, a5, a5
                  add          a4, s9, t1
                  add          t6, a2, s7
                  auipc        s7, 397657
                  nop #end riscv_int_numeric_corner_stream_13
                  sra          gp, s7, gp
                  xor          s11, t0, a3
                  lui          t1, 143643
                  xori         t0, a6, -1882
                  srai         t5, t0, 14
                  xor          s2, s10, t5
                  add          a4, t4, a7
                  auipc        s1, 394279
                  sub          s10, a1, t3
                  slt          a5, a0, s6
                  sll          t1, t5, a0
                  andi         a0, zero, 1841
                  addi         t0, a5, -2024
                  xori         t0, t1, -1694
                  xor          s1, t2, t1
                  slt          t4, a0, sp
                  sra          a4, a0, s3
                  addi         a5, a6, 1638
                  sltiu        t6, s11, -1183
                  andi         a6, s3, 1007
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s1, 0x60e334a8
                  li           a6, 0xffffffff
                  li           s11, 0x80000000
                  li           ra, 0x0
                  li           s10, 0xffffffff
                  li           a1, 0xf3744acc
                  li           t5, 0x0
                  li           a4, 0x9ab0b7b3
                  li           s8, 0x0
                  nop
                  addi         s11, a6, 335
                  nop
                  add          s11, s8, a4
                  nop
                  lui          a1, 150609
                  addi         t5, s2, -36
                  sub          s1, t5, s11
                  auipc        a1, 857113
                  sub          s10, t5, s11
                  sub          ra, s2, s11
                  addi         s11, s10, -1491
                  add          a4, a4, a4
                  add          s10, s2, ra
                  sub          ra, ra, t5
                  nop
                  sub          s2, s10, t5
                  add          t5, s1, s8
                  nop
                  lui          s10, 698051
                  add          a6, s1, s2
                  lui          s11, 347757
                  add          s10, t5, s8
                  addi         s8, a4, 382
                  addi         s11, ra, -1797
                  auipc        s8, 746423
                  add          a4, a1, ra
                  lui          a6, 316525
                  add          t5, s1, a4 #end riscv_int_numeric_corner_stream_19
                  lui          a3, 558322
                  andi         a3, s9, 961
                  nop
                  srai         a2, s6, 23
                  add          gp, t6, a1
                  lui          a5, 812245
                  xori         a3, a5, -460
                  slti         ra, a7, -603
                  auipc        a5, 384447
                  and          s8, s3, s1
                  or           tp, s4, s6
                  lui          a4, 472934
                  slli         a3, sp, 20
                  sltu         gp, a1, t2
                  addi         s7, s6, -709
                  andi         t5, t5, 1060
                  lui          a4, 779173
                  ori          t6, s1, 558
                  sra          s4, sp, gp
                  srai         a0, a5, 5
                  slti         s5, s3, 275
                  andi         a4, a7, -1888
                  sub          t0, gp, s0
                  srli         t3, a7, 5
                  addi         s8, s1, 978
                  xor          a5, a0, t6
                  sltu         s11, a5, s0
                  srl          t0, a3, a6
                  srl          a3, a5, t4
                  and          s8, s2, s6
                  or           a3, t6, t5
                  or           a1, a5, s8
                  nop
                  srl          zero, a0, t6
                  srl          s8, s0, t0
                  sll          t4, a3, a5
                  slti         t0, s10, 855
                  srli         a6, t6, 11
                  add          a6, t6, t3
                  andi         tp, t4, -1074
                  xori         zero, t0, -1749
                  addi         t1, a5, -477
                  slt          s10, t1, tp
                  sra          t4, gp, a1
                  addi         ra, t3, 115
                  add          t5, zero, t0
                  sltu         s9, a6, s8
                  slt          s5, s8, t1
                  and          a3, s7, a4
                  or           a6, t3, s9
                  xor          s11, s5, t5
                  sll          tp, a4, zero
                  or           t5, t3, a5
                  srai         a7, s8, 3
                  slli         a2, a3, 3
                  slt          a6, sp, t2
                  andi         a4, a1, -534
                  or           s0, a6, t5
                  nop
                  xor          s8, tp, gp
                  xor          a2, a0, s9
                  sltu         s4, sp, s7
                  srli         t1, a4, 3
                  or           t5, sp, s4
                  auipc        t6, 180019
                  sltiu        a7, t1, -1823
                  sub          t6, s5, t6
                  lui          s10, 339289
                  srli         s0, a7, 12
                  or           s9, a3, a3
                  slti         t1, t5, -130
                  or           s11, s5, zero
                  xori         gp, a2, 1477
                  auipc        a1, 261938
                  nop
                  xor          zero, s6, a5
                  xor          t0, t6, gp
                  ori          a7, t1, 179
                  auipc        zero, 771787
                  sltu         s9, s11, t2
                  xori         tp, a3, -813
                  srl          t2, zero, ra
                  slli         t4, a2, 25
                  andi         s9, s2, 1459
                  xori         t2, s8, -1349
                  srai         s0, s1, 4
                  srli         s10, zero, 9
                  slt          a6, a1, ra
                  srai         t5, gp, 19
                  sltu         t2, a4, a2
                  auipc        s2, 60663
                  sub          a6, t6, a4
                  sra          s11, s4, a0
                  srli         zero, a6, 9
                  add          s11, s5, sp
                  slli         a3, sp, 15
                  lui          a6, 207711
                  nop
                  or           a1, a5, s0
                  xor          zero, t4, a4
                  srli         gp, t4, 14
                  ori          t2, t3, -981
                  andi         a0, s10, 1772
                  auipc        s8, 87252
                  ori          s5, t3, 1222
                  ori          s4, tp, -773
                  add          tp, s6, t6
                  sltiu        s0, s2, 1311
                  andi         a3, t4, 1893
                  sltu         s4, sp, a2
                  xori         a2, s3, 1220
                  xori         a7, s11, -1180
                  sub          a1, a3, a3
                  sra          ra, s3, a2
                  sltu         t6, s6, s7
                  sub          s9, s3, zero
                  or           a1, ra, ra
                  slt          a2, a3, s10
                  sub          s2, s5, s8
                  sll          s11, t6, t5
                  or           s1, t6, s4
                  add          s0, s5, zero
                  auipc        a5, 323408
                  sltiu        tp, a2, -19
                  slti         tp, a0, 329
                  slli         t6, a3, 27
                  sub          t5, s11, s7
                  sra          s10, gp, a6
                  sltiu        a4, s0, -814
                  ori          a4, t5, -1156
                  addi         gp, t1, -1645
                  andi         s7, s7, -434
                  sll          a4, a5, ra
                  srli         a1, tp, 1
                  sltiu        s1, a3, -1302
                  addi         s0, s9, 1976
                  slti         a0, gp, 595
                  xori         ra, s7, -1822
                  or           tp, t4, s8
                  slti         s7, t0, -1646
                  slt          s5, s1, a3
                  slti         a4, t0, 1531
                  xori         a5, s9, -132
                  andi         s9, ra, -701
                  slli         t1, a5, 13
                  xori         t6, t6, -1210
                  xor          s1, s1, a5
                  add          s0, s5, s0
                  srl          a3, a5, a0
                  ori          s10, a4, 1438
                  srai         a2, s5, 7
                  slli         s5, s2, 19
                  srl          s5, tp, s5
                  srai         ra, t2, 1
                  sll          s5, s7, s4
                  slli         s9, s2, 26
                  nop
                  addi         t4, t3, -620
                  lui          t3, 104639
                  sub          zero, a4, s0
                  xori         s0, a5, 1198
                  auipc        s10, 52033
                  lui          a5, 328047
                  srl          s1, ra, s0
                  slt          a1, s3, a0
                  slli         t1, tp, 29
                  nop
                  sltu         a7, ra, s0
                  slt          a5, s9, s11
                  nop
                  sltu         s11, s7, t4
                  sltu         a1, sp, t0
                  slt          s10, s7, s7
                  lui          s2, 926537
                  and          a1, t0, s7
                  srl          zero, s2, zero
                  slli         s1, s5, 30
                  slt          zero, a2, t5
                  slt          tp, t0, s7
                  or           a5, a4, a6
                  sltiu        s10, gp, 230
                  auipc        s5, 497041
                  addi         a3, t1, -354
                  sub          t3, a1, a4
                  nop
                  xor          a5, s11, zero
                  srl          s1, a6, s8
                  xori         s7, gp, -753
                  sub          a2, zero, gp
                  xor          s2, a4, s3
                  addi         a0, s5, 1125
                  addi         ra, a6, -1445
                  nop
                  sub          ra, s1, s3
                  srli         s2, a6, 21
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0xffffffff
                  li           t1, 0x0
                  li           t6, 0xffc51069
                  li           s4, 0x80000000
                  li           t3, 0xffffffff
                  li           tp, 0x80000000
                  li           gp, 0x8cec83fa
                  li           a7, 0x4aeaf0c3
                  li           s5, 0x80000000
                  lui          gp, 76213
                  sub          s7, t3, t6
                  lui          s7, 557472
                  sub          tp, a7, t3
                  auipc        a6, 725420
                  nop
                  sub          gp, s4, t1
                  auipc        s7, 792254
                  auipc        t6, 795986
                  lui          a7, 174366
                  nop
                  sub          s7, t3, s5
                  addi         s4, tp, 581
                  sub          s7, t6, s4
                  lui          a7, 681927
                  nop
                  auipc        t6, 177291 #end riscv_int_numeric_corner_stream_0
                  sltiu        a2, s9, 1256
                  xor          a4, a2, s9
                  sltu         s8, a5, a7
                  xor          s1, t4, s0
                  srai         s11, t4, 18
                  lui          s11, 162900
                  nop
                  ori          a6, a5, 1493
                  sltiu        a2, t5, -1634
                  slli         s9, s8, 29
                  srai         s11, a7, 20
                  xor          t1, zero, sp
                  andi         t3, s8, 348
                  xori         s1, a5, 503
                  ori          a1, gp, 345
                  srl          t2, a0, s10
                  ori          t6, zero, 1664
                  xor          a3, s2, t5
                  ori          t5, s2, 684
                  xor          s7, a2, s7
                  xor          gp, s10, t6
                  ori          s11, sp, -11
                  slli         zero, s8, 22
                  srl          a4, s11, ra
                  or           a5, a3, s4
                  sll          s2, s3, sp
                  xor          t5, sp, s1
                  sra          t5, a3, s7
                  and          a6, t4, t0
                  srl          a1, s1, s1
                  slti         a3, s8, -1816
                  srai         a5, t4, 12
                  or           t0, s1, a3
                  lui          a7, 523845
                  srai         a1, t5, 3
                  sll          tp, s10, t5
                  add          t0, s6, ra
                  srli         a2, a6, 27
                  sll          tp, t2, s3
                  srli         a7, a5, 17
                  srai         a2, s7, 0
                  slli         s2, a4, 12
                  xor          t6, t2, s0
                  or           a5, t6, a3
                  srai         s5, tp, 0
                  auipc        s0, 540963
                  sltiu        a5, t3, -1154
                  sltu         s7, s1, t2
                  slt          s7, sp, s3
                  sra          s1, sp, s7
                  auipc        t5, 856122
                  auipc        t3, 518669
                  ori          s9, s6, -905
                  auipc        zero, 321889
                  slt          a7, a7, s4
                  sub          ra, t3, t1
                  add          a3, a1, t2
                  sub          a6, s3, a3
                  srli         t1, a1, 10
                  auipc        t1, 495551
                  srl          t4, a7, a5
                  sltu         s5, t0, a3
                  sltu         a4, a6, t0
                  sub          a6, a6, a2
                  sll          a4, a4, s2
                  srli         a5, t3, 8
                  sltu         s0, t2, s5
                  andi         a1, t3, -819
                  srai         t3, t1, 5
                  slli         a1, zero, 10
                  nop
                  srl          s0, gp, a0
                  sra          t2, s10, ra
                  xori         zero, a2, -686
                  srli         s8, gp, 7
                  slti         t0, a0, -971
                  sll          s2, t3, s4
                  srli         s9, s0, 27
                  and          s0, s1, s7
                  nop
                  lui          t4, 537981
                  sltiu        s9, a4, 1428
                  ori          t4, sp, 995
                  slli         t5, s6, 31
                  auipc        t1, 884568
                  srli         a0, s4, 1
                  auipc        a2, 646106
                  slli         a4, t3, 7
                  and          s8, sp, a2
                  andi         tp, a2, -1176
                  xor          t1, a2, s9
                  sltiu        a6, t3, 684
                  sub          s2, a4, t5
                  slli         t1, s10, 2
                  lui          t2, 409569
                  lui          a7, 623008
                  srli         s5, s11, 24
                  xor          a7, s0, s11
                  and          s7, a6, t4
                  ori          t3, t5, -1878
                  sll          s11, s6, a1
                  slti         s2, zero, 92
                  xor          a4, s7, t4
                  xor          s0, s9, t0
                  sra          s10, t0, zero
                  sll          a6, t0, a4
                  srli         t0, tp, 19
                  srai         t5, t2, 5
                  xor          s11, a3, s7
                  sltiu        zero, a2, 1162
                  xor          t0, a4, t0
                  srl          s9, sp, t5
                  sub          s11, s2, t1
                  srl          a4, a3, a4
                  srl          tp, t0, t0
                  srl          t3, s3, a1
                  slti         t3, a5, -1347
                  slli         t0, s1, 21
                  lui          s9, 973996
                  ori          a3, tp, -310
                  lui          t2, 1033820
                  xori         t0, t2, -753
                  sra          a7, s5, t5
                  or           s1, gp, s11
                  addi         t5, s2, 1285
                  sltu         s10, s10, t4
                  xor          s1, zero, t1
                  sltu         t4, tp, t6
                  sltiu        s5, s7, 1720
                  auipc        a2, 226380
                  srl          s4, s4, s11
                  slli         t5, s2, 19
                  nop
                  or           t3, t3, s0
                  or           t6, a2, t2
                  andi         a0, s6, 1489
                  slti         s1, s2, -565
                  sub          a2, s4, t5
                  xor          a0, t1, s10
                  and          t5, a3, a3
                  sltiu        s4, a4, -1812
                  slli         zero, t6, 25
                  srai         a2, a5, 3
                  auipc        zero, 202152
                  srai         s11, sp, 31
                  sltiu        t4, tp, 1685
                  and          s1, t2, a0
                  ori          t2, a6, 1032
                  sltu         a4, a3, sp
                  sra          s1, a3, s9
                  srl          s1, zero, s2
                  ori          t4, s8, 687
                  slti         gp, gp, -667
                  xor          gp, a0, t5
                  add          a5, s3, a6
                  lui          s4, 761373
                  addi         t5, s6, -360
                  slli         a2, a5, 0
                  add          t1, zero, s9
                  sub          s0, a7, s7
                  sll          s2, s7, a0
                  xori         a4, a3, -543
                  and          a3, a3, zero
                  andi         a5, a0, 1701
                  srai         ra, s10, 6
                  add          t1, s3, s2
                  ori          s0, a0, 1038
                  srl          a2, s10, t6
                  andi         s8, t1, 668
                  sll          s2, s5, zero
                  slli         a0, t5, 27
                  slli         s4, s1, 21
                  ori          t2, s4, -898
                  auipc        a6, 667820
                  sll          t2, s8, s11
                  slt          zero, s6, s7
                  and          t1, zero, a6
                  sra          tp, a6, a0
                  ori          t5, t1, 1992
                  xori         a5, s4, -1115
                  add          s4, zero, a7
                  srai         s4, s0, 2
                  srai         s9, a7, 14
                  sltiu        t2, a0, 663
                  nop
                  slli         t4, s10, 8
                  sltu         t1, s11, t0
                  nop
                  addi         t6, a7, -1312
                  srli         a3, s5, 18
                  and          a2, a5, t5
                  xor          a3, s10, a2
                  add          s9, gp, a2
                  srli         a1, ra, 17
                  slti         s0, ra, 175
                  andi         a6, s7, 1663
                  sub          t4, s3, t1
                  add          t4, t1, zero
                  srl          gp, a0, s4
                  or           s7, s6, s4
                  sltiu        s8, t3, -1854
                  ori          tp, a3, 1458
                  xor          a0, s7, zero
                  nop
                  or           s5, t5, s3
                  sub          t6, t6, t4
                  auipc        a1, 111819
                  or           ra, a3, sp
                  auipc        a7, 55834
                  add          s2, t3, s11
                  ori          a1, a7, 802
                  add          s0, s2, t3
                  xor          t0, a2, s4
                  slti         s0, a5, 1417
                  sll          a4, t1, a2
                  srl          s10, t2, a4
                  xori         a0, s10, -1522
                  srli         s9, tp, 4
                  or           s4, t1, a2
                  sra          a7, s5, a4
                  auipc        t2, 474562
                  xor          s5, a4, s9
                  sll          t4, a2, t0
                  slti         a7, s4, 816
                  auipc        t1, 815950
                  ori          gp, t5, 861
                  sltiu        a7, s10, 816
                  lui          a3, 793342
                  or           s4, t6, a5
                  ori          t2, a3, 1530
                  srai         a1, a3, 25
                  slti         ra, s1, 711
                  slti         s4, sp, 1325
                  lui          a6, 887057
                  srai         t2, zero, 19
                  nop
                  andi         t3, a5, -829
                  and          a4, t0, s4
                  sub          a4, a4, a0
                  sltu         s2, s3, a7
                  slti         a5, s1, -958
                  sub          a7, sp, s11
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           t4, 0xffffffff
                  li           t5, 0xebb0610
                  li           gp, 0x0
                  li           a3, 0x80000000
                  li           t3, 0xffffffff
                  li           tp, 0x8aab2493
                  li           ra, 0xffffffff
                  li           s8, 0x91d1101b
                  li           s0, 0xffffffff
                  lui          t3, 420643
                  sub          s0, a3, tp
                  nop
                  nop
                  add          t4, ra, t4
                  auipc        s0, 521771
                  addi         ra, a3, 1551
                  add          tp, tp, a3
                  lui          t5, 646128
                  sub          gp, t5, t3
                  add          gp, s0, s0
                  nop
                  add          t4, t3, gp
                  nop
                  nop
                  lui          ra, 982200
                  addi         s0, a3, 1791
                  add          ra, s2, gp
                  sub          s0, gp, ra
                  auipc        s2, 57446
                  lui          t3, 732390
                  lui          t3, 349925
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_17
                  srl          a5, t1, zero
                  sra          a2, t5, s1
                  xor          t6, s1, a7
                  nop
                  sltiu        t0, t1, -1362
                  slt          t2, s6, zero
                  and          s11, s4, s6
                  and          t5, a7, a6
                  sll          s11, a7, t3
                  xori         s4, a3, 1339
                  srl          s2, s5, s9
                  and          t6, s5, a2
                  sltu         a5, a1, a1
                  srl          s9, s5, t6
                  sltu         a6, s2, s11
                  sll          a7, zero, a0
                  or           s10, t3, t6
                  sltiu        s11, t6, -672
                  sll          s1, s8, s0
                  or           a0, sp, ra
                  sra          t6, s10, s0
                  andi         a7, t6, 632
                  sra          s5, a5, s9
                  lui          t2, 16359
                  nop
                  xori         gp, s3, 47
                  sll          ra, ra, s2
                  slt          t4, s9, a0
                  sll          zero, s8, a3
                  add          s10, t4, s1
                  nop
                  xori         s1, zero, 118
                  xor          s8, t5, t1
                  slli         s0, s4, 14
                  andi         s0, a0, 526
                  sltiu        a6, sp, 570
                  sra          s11, a7, s1
                  lui          t2, 1031627
                  andi         a4, t6, -1753
                  sltu         s4, s9, s5
                  sll          a5, a2, a2
                  slti         a7, s1, -1761
                  add          t5, a5, s10
                  sltiu        t0, a2, -1159
                  andi         s0, a0, 546
                  add          s2, s4, gp
                  or           a4, a3, a1
                  lui          s11, 803722
                  auipc        t5, 405158
                  sltu         t3, a6, s6
                  and          a7, t4, a7
                  slt          s7, a5, s6
                  srai         a1, t1, 28
                  srai         t5, s11, 22
                  auipc        t3, 494272
                  addi         ra, s3, -381
                  addi         zero, a3, 1760
                  srli         a0, t0, 0
                  srai         a6, a5, 22
                  lui          zero, 320714
                  nop
                  sll          s5, s5, a4
                  xor          a3, sp, s10
                  sltiu        a2, s11, -662
                  slti         ra, s2, -1274
                  slti         a4, a1, 388
                  auipc        zero, 854238
                  lui          tp, 57227
                  xori         zero, tp, 191
                  auipc        t2, 629111
                  sub          s2, a0, zero
                  sll          ra, s0, s8
                  xor          s1, s3, s3
                  auipc        t6, 471304
                  ori          s7, s10, -1417
                  srli         s7, a2, 20
                  srli         a3, s4, 1
                  srai         t6, t4, 31
                  sub          a4, s8, s3
                  sll          a3, gp, t2
                  srai         s10, t1, 29
                  srai         gp, a0, 21
                  sltu         gp, t4, s2
                  slti         ra, a6, -918
                  xor          s5, s0, zero
                  slli         gp, t4, 8
                  addi         a5, a3, 642
                  and          a7, t1, s2
                  nop
                  sra          t4, t4, zero
                  ori          t3, t3, -1968
                  ori          t2, a3, -580
                  srl          a1, s6, s6
                  slti         ra, a4, -433
                  slti         s8, zero, 12
                  auipc        ra, 290015
                  and          t5, tp, s8
                  sub          t6, ra, a1
                  lui          s7, 737100
                  sltiu        s9, s6, 64
                  xor          a5, sp, s8
                  xor          a3, s10, s11
                  andi         t4, a2, -332
                  xori         a1, a0, 1293
                  srli         s4, s0, 7
                  xori         a5, s8, 1382
                  add          t0, a7, s9
                  xori         s0, s4, -2045
                  sll          s10, a2, s1
                  srli         s9, t6, 24
                  sltu         t5, zero, t1
                  sltiu        s8, a3, -1850
                  slt          a2, a4, t3
                  auipc        t1, 172165
                  sra          s7, t0, s7
                  ori          t0, s3, 35
                  xori         a6, t0, 693
                  auipc        zero, 767080
                  or           t4, s10, s2
                  nop
                  addi         t4, ra, -378
                  xori         t6, a6, -33
                  ori          s11, zero, 419
                  and          s9, s10, s11
                  srli         s5, s2, 5
                  slli         gp, t0, 11
                  nop
                  sub          a5, s9, t6
                  xor          a6, t5, a0
                  sra          a4, s0, a4
                  sub          s9, a2, ra
                  add          a1, sp, s6
                  nop
                  and          t1, gp, a3
                  srai         t0, s9, 19
                  or           a2, s9, a2
                  addi         t4, s1, -750
                  sltiu        s5, gp, 867
                  slti         a6, s11, -2048
                  xor          zero, s2, a0
                  sub          t0, a7, a2
                  slti         a7, s6, 759
                  xor          t1, s2, s9
                  sltiu        t2, s5, 477
                  srai         a3, t0, 12
                  sltiu        zero, t5, -1312
                  srai         s9, a0, 12
                  srai         a6, t2, 3
                  add          a4, s2, gp
                  xor          a1, t6, a4
                  slt          t1, s11, a7
                  slt          s0, tp, a4
                  sub          t5, s2, s6
                  andi         a5, a0, 1305
                  addi         s10, ra, 994
                  xori         t0, s8, -207
                  slt          s5, t5, a6
                  add          s7, s7, s8
                  srli         s10, s10, 28
                  addi         a5, s5, -1983
                  sub          s8, s8, a1
                  sub          s4, a0, t3
                  sltiu        s7, s0, -245
                  xori         gp, a4, 105
                  ori          a5, s1, -1740
                  sltiu        s11, s7, -1149
                  addi         t4, s6, -131
                  lui          t6, 873204
                  srl          s7, a4, s3
                  auipc        a7, 1022914
                  ori          a5, s1, -1597
                  slti         s7, a4, 853
                  sll          s4, s9, a1
                  sltu         s8, a3, a0
                  lui          s10, 54313
                  addi         t0, t6, -1289
                  sll          s11, s4, s0
                  sub          s9, a1, s3
                  lui          t3, 131685
                  add          a3, t5, t5
                  or           s8, s8, a7
                  andi         s9, s3, -915
                  sltiu        gp, s3, 1468
                  and          ra, s5, a4
                  sub          s7, a0, t4
                  nop
                  srai         s11, s5, 17
                  sltiu        a6, a4, -35
                  srli         t3, t4, 27
                  srai         a5, a6, 28
                  sltu         a1, s4, t0
                  slt          t5, a0, a1
                  xori         s11, a3, -554
                  andi         s1, s0, 905
                  nop
                  xori         a1, t0, 397
                  slti         zero, s1, 1016
                  sub          t5, a4, zero
                  srai         t6, t5, 1
                  xor          s4, s5, a2
                  auipc        t5, 23743
                  sra          a4, a0, s9
                  auipc        t6, 404609
                  andi         a7, s9, -1245
                  sltu         a7, sp, ra
                  slti         a7, s3, -760
                  sltu         zero, tp, sp
                  slli         t0, a7, 24
                  add          tp, sp, t3
                  and          t4, s5, t6
                  add          t3, tp, s5
                  andi         t4, t6, -1437
                  slli         t4, t4, 3
                  sll          s4, s8, t2
                  sltiu        a7, s4, 1099
                  sra          ra, a5, a5
                  nop
                  nop
                  add          s8, zero, s0
                  sra          a6, a4, a2
                  slti         s8, gp, 799
                  xor          s5, ra, s8
                  sub          s2, s0, s11
                  lui          s4, 194993
                  sra          a6, sp, s10
                  srl          s1, s4, s6
                  xor          a5, s7, t3
                  slti         ra, s8, -1018
                  slt          s4, t1, t3
                  addi         a5, t0, 9
                  srai         a4, s0, 18
                  srli         s0, sp, 5
                  sltiu        a6, s6, -1828
                  sll          s7, s3, a3
                  add          t1, a5, s5
                  ori          s9, a1, 1291
                  add          s9, a7, t0
                  auipc        tp, 686532
                  or           a1, sp, s10
                  sltiu        gp, s0, 1723
                  andi         s2, t4, 1694
                  addi         t6, a7, -1218
                  sra          s7, s4, a1
                  srl          s7, tp, a1
                  sra          t6, s4, a4
                  slti         t0, s3, 1228
                  sltu         t3, a1, a6
                  slt          s8, zero, s8
                  ori          t3, s3, -790
                  and          zero, s5, ra
                  srai         a4, a4, 3
                  and          s4, s7, ra
                  nop
                  xor          tp, a2, s11
                  and          a4, a7, t1
                  srl          s4, gp, t2
                  addi         t6, gp, -1934
                  add          s1, s7, s2
                  addi         a4, t2, 1008
                  sltiu        zero, t6, 114
                  srai         t5, gp, 2
                  ori          s5, s2, -1576
                  ori          s10, s10, -612
                  xori         a1, a7, -1046
                  slt          gp, s10, s6
                  or           s8, s11, s4
                  sll          a5, ra, a5
                  srai         s2, s4, 29
                  sltu         s0, s8, a5
                  xori         t2, gp, -1830
                  ori          gp, a0, 1746
                  sltiu        s4, a3, -1277
                  or           s7, t0, s7
                  xor          ra, s6, a5
                  sub          ra, s0, a6
                  or           s8, a6, s1
                  xori         s1, t3, 1469
                  xori         a6, a0, 1322
                  sub          s2, t2, a7
                  andi         s8, s5, 1052
                  srl          s0, zero, s2
                  add          a6, s2, ra
                  slt          s8, t4, t0
                  sll          s10, a4, a5
                  sltu         s11, a5, a3
                  sll          a7, a2, s9
                  auipc        gp, 45587
                  addi         a6, a0, -1601
                  andi         t1, ra, 207
                  xor          t3, s10, a0
                  slti         a0, t0, -1480
                  auipc        t5, 729236
                  and          a7, tp, s9
                  or           a5, zero, a2
                  add          s4, t0, t6
                  slti         s5, ra, 1506
                  sub          t2, t1, s1
                  ori          a0, t1, -173
                  sltiu        a1, s7, 7
                  addi         zero, a7, -1574
                  sll          s7, a0, s4
                  sra          t3, s11, a6
                  and          a6, s7, t4
                  nop
                  srai         a1, sp, 9
                  sltu         a1, t3, t3
                  slti         s10, a0, -685
                  add          t1, s2, tp
                  slti         a1, t1, -961
                  ori          s11, ra, 1828
                  xori         tp, s11, 1586
                  addi         zero, s2, 1739
                  srl          a5, t1, s4
                  add          t4, a7, s7
                  sltu         a0, s4, s11
                  slt          s0, t6, t5
                  ori          s4, s7, 148
                  auipc        t0, 452365
                  slt          t4, s1, s0
                  sll          s1, tp, t2
                  sltu         t6, s7, s6
                  add          s4, gp, ra
                  addi         t0, tp, 690
                  ori          t0, s3, -447
                  xori         t0, a3, 199
                  ori          s11, zero, -509
                  srai         a3, s11, 5
                  xor          s1, t0, a4
                  lui          a0, 450254
                  srli         t3, t2, 9
                  lui          s5, 170928
                  sltu         s7, s2, t6
                  xor          t0, a7, s4
                  addi         a2, s10, 697
                  sltiu        gp, s1, -1374
                  sll          zero, s1, s7
                  slt          t4, s1, t3
                  sltu         a3, t6, a0
                  andi         t3, s2, 592
                  slt          t2, zero, zero
                  auipc        t2, 162907
                  xori         zero, s1, -508
                  srai         a4, t6, 4
                  lui          gp, 618630
                  sll          s10, a5, a5
                  sra          s9, t1, s1
                  xor          a2, a3, a7
                  srl          t3, tp, a0
                  addi         t1, t0, -222
                  xor          s2, gp, tp
                  addi         t6, s6, -1497
                  and          a3, s0, t3
                  andi         s5, a4, 1679
                  slti         s4, s5, 1805
                  or           a6, s4, t2
                  andi         t5, a5, -467
                  xori         s2, s6, 198
                  sltu         a0, a4, t4
                  lui          t1, 46157
                  auipc        a7, 513210
                  sub          a4, a1, t5
                  slt          tp, s11, t4
                  xori         s11, t4, 1971
                  or           s2, a3, gp
                  slti         ra, a5, -280
                  ori          s9, a4, 1961
                  add          a7, s6, t0
                  addi         a4, t6, -913
                  and          t5, a0, a1
                  ori          t0, t0, -292
                  xori         tp, t3, 917
                  ori          a0, gp, -422
                  add          s9, t1, t2
                  xor          s0, s9, a0
                  sub          t4, s9, t0
                  nop
                  ori          s11, t0, 1599
                  srl          a0, s6, a0
                  addi         a2, s4, 472
                  auipc        a0, 731379
                  auipc        a2, 735016
                  xor          s7, s1, s9
                  nop
                  andi         a0, t0, -1885
                  slti         t1, s10, -1587
                  slt          s1, zero, s5
                  or           a7, t3, a3
                  add          s10, zero, a1
                  ori          a2, s7, 1215
                  slti         t6, t1, 1847
                  andi         s0, t3, 175
                  ori          ra, a0, -1358
                  xori         a2, a4, -1937
                  and          zero, s4, s1
                  auipc        gp, 831930
                  nop
                  slt          ra, s11, a2
                  sll          t6, t4, s5
                  sll          s9, t2, tp
                  andi         t1, a0, 1390
                  nop
                  nop
                  srli         s7, a5, 3
                  srl          a3, t1, s7
                  sra          tp, a3, s6
                  slti         a6, t4, 79
                  xori         t1, tp, -1255
                  xori         t2, s1, 469
                  sltiu        t5, t2, 1927
                  srai         s9, zero, 28
                  nop
                  slt          t4, s9, s8
                  addi         t0, t2, 565
                  auipc        s4, 288665
                  andi         t5, s9, 1057
                  slti         a5, a1, 85
                  auipc        t2, 901553
                  sltu         a6, t2, s1
                  sra          s8, s9, s4
                  slli         a4, gp, 23
                  andi         a4, s6, -936
                  add          gp, t2, t2
                  slti         s4, s0, -1564
                  ori          s11, s9, -1492
                  sltu         gp, sp, s7
                  andi         t0, sp, -1426
                  sltu         t5, gp, zero
                  slli         zero, sp, 8
                  and          zero, s6, a5
                  sub          a6, zero, t3
                  and          s5, a6, a1
                  sltu         s2, t4, t1
                  auipc        t4, 200058
                  slti         s2, a3, 1497
                  sltu         a4, t6, a2
                  srli         s7, s2, 8
                  sll          s1, ra, s1
                  addi         a0, t4, 1543
                  sltu         a6, s5, s0
                  or           tp, s2, s6
                  lui          s2, 648393
                  nop
                  slt          s2, s11, t2
                  sltu         a7, t0, s7
                  srl          t2, a0, a3
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t5, 0xffffffff
                  li           t0, 0x80000000
                  li           s0, 0xffffffff
                  li           s11, 0x80000000
                  li           s7, 0x0
                  li           t1, 0xffffffff
                  li           tp, 0x0
                  li           s1, 0x0
                  li           t4, 0x0
                  add          s9, s0, s11
                  add          t5, t0, t5
                  sub          s9, s9, tp
                  nop
                  auipc        s7, 704696
                  lui          s9, 143714
                  sub          t4, tp, s7
                  auipc        t4, 204463
                  nop
                  auipc        s1, 817117
                  addi         s7, t4, 575
                  nop
                  lui          s9, 522126
                  addi         t0, s9, -24
                  add          t4, t5, t4
                  addi         s1, t4, -20
                  add          s11, t0, t1
                  add          t0, s11, tp
                  sub          t0, s9, s1
                  addi         t5, t1, -757
                  addi         s7, s7, -1214
                  nop
                  auipc        s0, 1013487
                  add          t4, s0, t5
                  addi         s7, t0, -200
                  nop
                  auipc        tp, 291710
                  auipc        t1, 582912
                  add          s7, t4, t4
                  nop #end riscv_int_numeric_corner_stream_14
                  slli         s9, s0, 8
                  sub          s10, s9, t5
                  sll          t4, t1, s4
                  sltu         t1, a1, s3
                  slli         s4, t3, 23
                  xor          ra, a0, a4
                  addi         s4, a4, -296
                  addi         s8, a0, 82
                  sra          tp, s9, s11
                  xori         s4, a5, -1420
                  slli         a2, s3, 18
                  slli         s4, s11, 24
                  nop
                  slt          s1, s3, t2
                  sltiu        a5, s11, -1380
                  slti         a7, a1, 1761
                  lui          a3, 610015
                  auipc        a4, 24959
                  sub          s4, sp, a4
                  add          s0, t3, a6
                  sub          ra, s1, a5
                  slli         s4, s0, 15
                  andi         t5, s10, -1108
                  auipc        a2, 326512
                  sub          gp, gp, s10
                  sub          zero, s8, s1
                  sltu         t3, s10, t4
                  andi         s0, a6, 1681
                  auipc        gp, 640776
                  srl          t2, zero, s0
                  srai         a3, s2, 14
                  auipc        s2, 844725
                  sltiu        a3, a6, -555
                  sltiu        a6, t0, -621
                  nop
                  auipc        a1, 428576
                  xor          a2, t5, a1
                  xori         gp, s3, 257
                  slli         s5, s8, 24
                  auipc        s1, 907330
                  and          t5, s11, t4
                  sltu         a4, s10, tp
                  xor          t1, s3, zero
                  srai         a2, a3, 0
                  auipc        a4, 1018
                  srli         s2, a0, 7
                  and          ra, s6, t4
                  slli         ra, tp, 1
                  srl          s4, s9, s8
                  sll          ra, t6, s11
                  addi         t5, a2, -1428
                  and          t3, t1, sp
                  sra          ra, zero, a1
                  and          gp, a3, s2
                  slti         t6, s11, -325
                  sltiu        a4, t4, 1124
                  srli         a3, t5, 3
                  sra          s11, s5, a7
                  or           a6, s11, s2
                  xor          t1, t4, t6
                  lui          s9, 660932
                  sltu         t4, t2, t2
                  srl          a6, t0, t0
                  and          t4, s7, a6
                  ori          a0, s11, -305
                  xori         a1, s2, -1880
                  add          s9, s3, t3
                  slt          gp, s5, s4
                  slt          t2, t2, ra
                  sra          a1, a3, gp
                  and          t0, t6, a2
                  lui          gp, 662615
                  auipc        s4, 842951
                  and          s10, s9, s4
                  nop
                  nop
                  sub          zero, t6, s0
                  srli         t1, t0, 22
                  ori          s8, s5, -1138
                  xor          t1, s11, s5
                  xor          a5, t3, a0
                  slli         a5, t0, 5
                  sra          t5, t6, a3
                  ori          t6, s2, -431
                  srai         a1, s9, 13
                  sltiu        a7, zero, -139
                  sub          t4, a3, s6
                  or           t2, t6, s5
                  srl          t4, s4, a6
                  addi         a4, s7, -1487
                  slli         s0, a7, 17
                  andi         t5, s11, 1036
                  andi         a7, t0, 1262
                  xor          s8, t3, zero
                  sll          s9, t3, t6
                  addi         s7, s5, 1586
                  sltiu        s1, s7, -152
                  srai         a5, a3, 1
                  slli         s8, a2, 2
                  nop
                  sra          a5, a3, t5
                  sll          t5, t6, s0
                  srl          zero, s10, a4
                  srli         s10, s0, 17
                  sltu         a5, t4, a6
                  add          a6, tp, s1
                  sltiu        a5, s0, 1695
                  nop
                  sub          a6, t0, t2
                  nop
                  lui          tp, 1020348
                  and          s2, s2, s6
                  lui          a6, 442441
                  slti         s1, s9, 1790
                  sll          a5, a0, gp
                  srai         s5, t1, 2
                  srai         t5, a3, 13
                  auipc        a5, 1047519
                  xori         a1, t6, -1934
                  nop
                  slli         a2, a0, 20
                  add          t1, gp, a5
                  srl          a3, a3, a0
                  xor          t3, s0, t5
                  addi         s1, t5, 1629
                  sltu         s8, s11, s2
                  xori         a7, zero, 1574
                  addi         a0, a5, 1810
                  srai         s1, a5, 26
                  sub          a4, a2, s7
                  ori          s11, s7, 980
                  srai         t4, s0, 4
                  slti         s11, s4, -1416
                  auipc        a2, 891375
                  slli         a5, zero, 28
                  slli         s0, t5, 24
                  sltu         t5, s1, a1
                  slli         t4, t0, 12
                  sltiu        t0, s2, -209
                  slti         s11, t6, 1236
                  andi         t1, a7, -661
                  srli         s8, t4, 6
                  sub          s4, s5, a1
                  lui          s1, 502648
                  slti         t3, sp, -509
                  slli         a4, t2, 1
                  slt          a4, s8, t2
                  sltu         s8, t6, a5
                  xori         t6, s11, 789
                  or           s5, s5, s1
                  andi         s0, s5, 860
                  srl          zero, s3, zero
                  addi         t2, t4, 39
                  auipc        s11, 817096
                  auipc        s5, 828544
                  sub          a6, s2, s3
                  sltu         a3, zero, s8
                  and          a4, s4, s4
                  srai         a5, gp, 4
                  slt          s7, t4, tp
                  srl          a3, a4, s7
                  xori         s8, s11, -341
                  srl          t5, t4, a2
                  xori         s10, s1, -665
                  nop
                  sll          t4, s3, t0
                  andi         t5, sp, -1509
                  sltu         zero, s9, gp
                  xori         a3, s10, 1570
                  add          a1, t1, t2
                  add          s11, s4, a5
                  srl          t0, s4, s10
                  or           tp, a2, zero
                  or           a4, ra, a7
                  sltu         a5, zero, t4
                  sll          s1, tp, s9
                  ori          t3, s5, 84
                  auipc        a3, 192438
                  or           s2, s9, s6
                  auipc        a7, 944244
                  addi         t5, s9, 165
                  srli         s2, a7, 16
                  slli         s8, t6, 4
                  slli         a6, a2, 1
                  or           zero, s9, zero
                  and          t6, zero, s5
                  srl          s7, s0, s7
                  and          s8, t3, t6
                  sltiu        s1, s1, 156
                  lui          t4, 1025548
                  sll          a4, tp, s5
                  slli         t3, s11, 19
                  srli         a7, t0, 4
                  srl          t5, s5, s9
                  slti         s9, t3, 16
                  srai         t0, s4, 19
                  and          s4, t0, s11
                  sra          s1, a1, s4
                  sltiu        a3, a6, 1350
                  add          t1, s6, t3
                  sltu         s4, a4, gp
                  addi         s9, sp, -906
                  add          t1, a6, a1
                  srai         s0, a5, 24
                  andi         a6, t6, 789
                  srl          a6, t4, ra
                  or           s4, ra, t2
                  xori         a5, a7, -1721
                  sltiu        gp, s10, 2008
                  xor          s0, s9, ra
                  andi         s4, s0, -181
                  ori          a3, s4, 891
                  slli         t3, t0, 26
                  auipc        s11, 714666
                  andi         s4, s2, 982
                  ori          t3, a0, 332
                  srl          s9, a6, t2
                  srli         a3, s5, 15
                  slt          a6, s9, s4
                  xor          a0, s6, a6
                  slti         a1, s8, -160
                  addi         a3, t5, 847
                  ori          tp, a4, 652
                  srai         t2, ra, 24
                  slt          tp, t5, s4
                  srl          gp, t6, t4
                  sub          t3, ra, s9
                  sll          a3, a0, s5
                  srl          t1, a6, ra
                  srl          a6, a6, t1
                  add          zero, a5, s10
                  srai         a4, s5, 27
                  or           s11, s11, t2
                  srl          a0, ra, s7
                  sub          s9, s8, s5
                  ori          ra, a4, -343
                  and          a3, s6, s5
                  add          s2, tp, s3
                  srl          s10, s9, a2
                  auipc        s11, 449342
                  slli         s10, zero, 27
                  srl          s5, t3, s3
                  srai         ra, s11, 13
                  or           t4, tp, s8
                  sltiu        a5, a0, 385
                  or           a4, t0, gp
                  sltiu        s1, s6, -152
                  auipc        t5, 568834
                  addi         a3, s8, -1822
                  lui          a5, 906302
                  slli         t2, t4, 13
                  sltu         zero, s11, t4
                  srl          a0, ra, s7
                  auipc        s0, 177908
                  sltiu        ra, s9, -675
                  srl          s10, s3, a1
                  auipc        a5, 420337
                  auipc        s2, 689593
                  sll          t4, s7, sp
                  or           s7, s5, a2
                  xor          s2, a6, tp
                  slli         t0, s7, 22
                  sub          a4, t6, s4
                  sltiu        tp, a5, -626
                  srl          a2, zero, a7
                  auipc        s11, 514328
                  sub          a6, a6, t2
                  slt          a7, a1, sp
                  srl          s5, t5, a4
                  sub          tp, s9, s11
                  nop
                  and          a4, a4, gp
                  lui          s5, 692741
                  addi         s10, a4, 1511
                  slt          a6, s8, a7
                  slti         a3, gp, -770
                  sltiu        s11, a6, -1722
                  lui          s2, 545536
                  srli         s1, a5, 2
                  sll          t3, s3, s7
                  sra          a1, t2, a0
                  addi         s11, t0, 700
                  xori         s7, tp, 1884
                  slli         t0, a1, 23
                  and          s11, s6, a4
                  and          gp, s8, t4
                  xor          ra, t1, s11
                  xor          s11, sp, s7
                  sub          a3, ra, t6
                  sll          zero, a3, t4
                  andi         s1, sp, 1286
                  ori          t1, a3, 930
                  srai         t1, gp, 16
                  sltiu        tp, ra, 535
                  slt          s7, s3, t0
                  slti         s1, zero, 1115
                  srai         t4, t2, 3
                  sra          t2, a5, ra
                  slli         s4, s2, 0
                  srli         t1, t3, 29
                  sll          t3, s3, a2
                  sll          t4, t0, sp
                  and          s0, a1, zero
                  and          a5, s8, s10
                  ori          tp, s10, -1063
                  auipc        a1, 546906
                  srai         a2, s3, 15
                  andi         a0, a2, -1509
                  andi         a7, t1, -1765
                  andi         s11, s2, -1039
                  srli         zero, zero, 25
                  or           ra, a5, t1
                  sltiu        a2, t1, -1987
                  slti         t2, a0, 1221
                  sra          a3, s9, t3
                  auipc        a6, 477241
                  nop
                  lui          zero, 134320
                  or           t1, sp, a4
                  xor          t1, ra, tp
                  and          a1, a1, a1
                  srli         s11, s9, 15
                  lui          s10, 427806
                  xor          t4, ra, t0
                  slti         s7, s2, 314
                  srl          a0, a6, t6
                  sra          a0, sp, s8
                  slti         s9, t5, -528
                  and          zero, a0, sp
                  and          zero, a6, zero
                  sltiu        s4, tp, -242
                  slli         s2, a2, 20
                  add          a0, ra, s2
                  andi         s7, s0, -332
                  srli         t1, t6, 19
                  add          s0, ra, zero
                  addi         ra, a1, -1219
                  sltu         a0, s9, gp
                  auipc        t6, 610577
                  sll          s10, gp, s0
                  slli         t4, a1, 12
                  sltiu        a5, zero, -1786
                  sll          s2, s6, s9
                  auipc        gp, 962961
                  sub          a0, s10, s3
                  slt          a4, s3, t4
                  srai         a4, t1, 26
                  ori          s8, s1, -133
                  xor          t6, a1, t2
                  sltiu        s2, s11, -2027
                  srli         a0, s5, 16
                  auipc        s9, 430430
                  or           t5, sp, s8
                  sll          tp, s11, s0
                  srli         ra, s11, 5
                  or           tp, a5, s5
                  slti         a5, a1, -151
                  and          a1, tp, s4
                  sub          t3, tp, a5
                  srl          s5, t3, t0
                  auipc        t6, 688812
                  sra          t2, s11, a4
                  sll          s8, s1, s4
                  srai         t3, s0, 22
                  sra          t5, ra, a2
                  or           zero, s2, s2
                  nop
                  sltiu        a4, s11, 394
                  lui          s1, 6976
                  sra          t2, s5, a7
                  or           a5, a0, s4
                  and          s11, a5, t5
                  or           a3, a6, s6
                  and          a7, s1, s11
                  nop
                  nop
                  ori          t1, a1, 1080
                  xor          s4, t2, s10
                  sra          s10, gp, s11
                  addi         t6, t1, -1708
                  sll          s9, s5, sp
                  sra          a1, t6, t3
                  srl          s9, s9, zero
                  xori         a3, t4, 709
                  sltiu        s2, gp, 1393
                  sub          a4, gp, s8
                  or           t1, a5, a2
                  xor          t1, a1, s8
                  sub          gp, s7, a5
                  slt          s9, s5, t6
                  auipc        t4, 764193
                  sra          t0, t1, t0
                  auipc        s10, 885907
                  and          s2, a0, a7
                  srl          s8, a1, tp
                  xor          a1, s8, t3
                  srl          a5, s5, s6
                  add          a4, zero, s1
                  sltu         a6, a7, tp
                  sltu         s10, s11, t5
                  srl          t3, t3, s7
                  ori          s7, s10, -973
                  slt          gp, s6, t2
                  xor          a0, s6, t1
                  sub          gp, s8, s2
                  nop
                  lui          s10, 283010
                  srl          s5, s10, a0
                  auipc        t5, 476521
                  addi         s2, t1, -813
                  slti         a7, s7, -154
                  srli         t1, a5, 6
                  addi         a5, t6, 1635
                  slti         t4, gp, 249
                  sra          tp, t6, sp
                  srli         s2, a2, 1
                  sltiu        s9, s11, -1322
                  srai         t1, t4, 15
                  srl          s9, tp, t1
                  xor          t1, s0, s3
                  or           s10, s2, s10
                  slt          a6, a0, a3
                  sra          a1, s5, ra
                  ori          a4, s11, -329
                  sltu         a3, t5, s4
                  srl          gp, a5, s9
                  sub          t6, t4, s2
                  addi         a0, s1, 1621
                  andi         a5, s3, -1903
                  lui          a2, 509269
                  add          s2, s2, s1
                  sltiu        s9, zero, -1448
                  sub          s7, s2, a6
                  and          t3, s2, a1
                  slli         a7, t5, 21
                  add          s2, s6, a5
                  srl          s10, gp, s9
                  slti         s1, t6, 1500
                  auipc        s11, 964117
                  slt          a3, a3, a6
                  slti         a3, s10, 1456
                  ori          t3, a4, 175
                  srai         gp, sp, 21
                  xori         t6, a7, 566
                  srli         a4, s6, 29
                  andi         t5, a6, 1538
                  lui          a3, 333573
                  sll          s8, t3, s6
                  add          tp, s6, gp
                  addi         tp, sp, -907
                  addi         a2, s9, 551
                  lui          a3, 878493
                  nop
                  sub          a5, t1, sp
                  addi         s10, s4, -135
                  slt          a7, a0, t4
                  sltu         a0, s10, t3
                  xor          s1, a7, a6
                  lui          a1, 232866
                  sltiu        s2, t5, -1033
                  slt          s10, t5, a6
                  sltiu        a3, t4, 1868
                  sub          t6, t5, t6
                  or           s9, t4, s7
                  sltu         s2, t1, a4
                  sltu         t4, t3, tp
                  srl          s5, a1, t4
                  xor          a6, a3, t0
                  srai         s1, ra, 22
                  sub          s1, a6, s10
                  sltiu        zero, s9, 803
                  xor          a2, t6, a6
                  nop
                  sll          ra, a5, t5
                  srl          a1, a4, tp
                  slt          zero, tp, s10
                  slti         s4, t4, -1944
                  slti         t5, a3, 716
                  srai         t1, s6, 23
                  nop
                  and          t3, tp, t2
                  srl          s11, s0, s2
                  or           t1, s3, zero
                  lui          a6, 167631
                  srai         s0, t6, 6
                  xor          s1, a0, a3
                  xor          s0, t0, t1
                  sltiu        ra, a6, 765
                  addi         a7, a5, -1886
                  and          s1, a7, a1
                  srl          s8, s2, t6
                  xor          s9, a7, a7
                  addi         s7, s3, -885
                  and          t3, s7, tp
                  add          s0, s4, t4
                  and          t5, s8, s11
                  and          gp, t6, t4
                  slt          tp, s0, t6
                  srl          zero, t6, t1
                  sltiu        zero, t3, -792
                  add          t1, t2, gp
                  sub          a4, gp, ra
                  sll          s5, t5, t6
                  sra          gp, s8, s11
                  ori          t2, a0, 652
                  slli         a4, zero, 3
                  nop
                  srai         s2, t1, 20
                  add          ra, s6, a7
                  xor          gp, s9, a3
                  sub          s10, a2, zero
                  sub          t0, a6, t3
                  slti         t5, t1, -1116
                  add          s9, s1, a4
                  addi         tp, s2, 182
                  sra          t6, t0, s4
                  add          s4, t1, a3
                  andi         s0, tp, 653
                  slt          s8, t6, s3
                  sltiu        tp, a3, 714
                  sra          tp, s4, s7
                  sltu         s9, ra, s6
                  slti         a7, s4, -1387
                  nop
                  lui          t6, 571289
                  nop
                  xori         a1, a2, 730
                  and          a5, s8, t0
                  slt          s2, s2, s2
                  srli         t3, a4, 4
                  slt          t2, tp, a1
                  slt          s9, a3, a4
                  sub          s8, s4, s1
                  xori         a6, s6, -1606
                  srli         s10, sp, 23
                  xori         a0, a3, 715
                  slli         t6, s5, 27
                  sltiu        t0, t4, -1362
                  sll          s9, t0, a1
                  sltiu        t0, s4, 578
                  sub          a4, zero, a1
                  srai         a0, s10, 10
                  slti         t0, a3, 1212
                  andi         a3, t6, -246
                  sltu         s7, a5, a2
                  lui          a3, 27808
                  add          a1, t1, a4
                  auipc        s10, 566516
                  auipc        t0, 214985
                  add          t0, a7, t4
                  sub          t2, tp, s7
                  srl          t6, tp, a0
                  sll          s11, a5, a2
                  sra          t0, t2, s6
                  or           a5, s1, s0
                  srai         t2, s3, 0
                  slt          t0, a2, s8
                  slt          a5, t4, s5
                  sra          s8, s6, s6
                  and          s7, a2, a2
                  add          s0, sp, s9
                  add          s10, t4, s2
                  srli         a0, s8, 0
                  andi         a5, a3, -414
                  add          t3, a2, a3
                  or           s9, ra, tp
                  sltiu        t3, s2, 1879
                  or           t0, t5, a2
                  addi         t0, t5, 178
                  sub          s1, a4, a2
                  srl          s8, sp, t1
                  xor          a7, a6, ra
                  auipc        s10, 548013
                  sub          t2, s5, ra
                  slti         ra, t3, -1845
                  srl          a3, s7, a0
                  slli         t3, t4, 25
                  addi         a1, s3, -1749
                  auipc        s10, 606018
                  sra          t3, s0, a4
                  andi         t1, s6, 51
                  slti         s9, t1, -718
                  slt          s4, s1, t0
                  sltu         ra, a3, t5
                  or           a7, t5, a0
                  slt          a6, s5, t2
                  slti         s4, zero, -292
                  lui          gp, 27643
                  sub          s5, s1, a5
                  srai         t4, t5, 26
                  slt          t1, t5, s10
                  srai         t0, s7, 24
                  slt          t0, sp, s1
                  slti         a3, gp, 1392
                  andi         ra, a7, 2007
                  la x19, test_done
                  jalr x0, x19, 0
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
                  addi x22, x22, -128
                  sw  x1, 4(x22)
                  sw  x2, 8(x22)
                  sw  x3, 12(x22)
                  sw  x4, 16(x22)
                  sw  x5, 20(x22)
                  sw  x6, 24(x22)
                  sw  x7, 28(x22)
                  sw  x8, 32(x22)
                  sw  x9, 36(x22)
                  sw  x10, 40(x22)
                  sw  x11, 44(x22)
                  sw  x12, 48(x22)
                  sw  x13, 52(x22)
                  sw  x14, 56(x22)
                  sw  x15, 60(x22)
                  sw  x16, 64(x22)
                  sw  x17, 68(x22)
                  sw  x18, 72(x22)
                  sw  x19, 76(x22)
                  sw  x20, 80(x22)
                  sw  x21, 84(x22)
                  sw  x22, 88(x22)
                  sw  x23, 92(x22)
                  sw  x24, 96(x22)
                  sw  x25, 100(x22)
                  sw  x26, 104(x22)
                  sw  x27, 108(x22)
                  sw  x28, 112(x22)
                  sw  x29, 116(x22)
                  sw  x30, 120(x22)
                  sw  x31, 124(x22)
                  add x2, x22, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x15, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x15, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x15, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x15, x23, ecall_handler
                  li x23, 0x1
                  beq x15, x23, instr_fault_handler
                  li x23, 0x5
                  beq x15, x23, load_fault_handler
                  li x23, 0x7
                  beq x15, x23, store_fault_handler
                  li x23, 0xc
                  beq x15, x23, pt_fault_handler
                  li x23, 0xd
                  beq x15, x23, pt_fault_handler
                  li x23, 0xf
                  beq x15, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

load_fault_handler:
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

store_fault_handler:
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x22, x2, zero
                  lw  x1, 4(x22)
                  lw  x2, 8(x22)
                  lw  x3, 12(x22)
                  lw  x4, 16(x22)
                  lw  x5, 20(x22)
                  lw  x6, 24(x22)
                  lw  x7, 28(x22)
                  lw  x8, 32(x22)
                  lw  x9, 36(x22)
                  lw  x10, 40(x22)
                  lw  x11, 44(x22)
                  lw  x12, 48(x22)
                  lw  x13, 52(x22)
                  lw  x14, 56(x22)
                  lw  x15, 60(x22)
                  lw  x16, 64(x22)
                  lw  x17, 68(x22)
                  lw  x18, 72(x22)
                  lw  x19, 76(x22)
                  lw  x20, 80(x22)
                  lw  x21, 84(x22)
                  lw  x22, 88(x22)
                  lw  x23, 92(x22)
                  lw  x24, 96(x22)
                  lw  x25, 100(x22)
                  lw  x26, 104(x22)
                  lw  x27, 108(x22)
                  lw  x28, 112(x22)
                  lw  x29, 116(x22)
                  lw  x30, 120(x22)
                  lw  x31, 124(x22)
                  addi x22, x22, 128
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
