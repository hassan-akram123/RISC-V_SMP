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
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf66dabc6
                  li x2, 0x0
                  li x3, 0x1007821a
                  li x4, 0xf6139f16
                  li x5, 0x0
                  li x6, 0x9
                  li x7, 0x0
                  li x8, 0xec488f12
                  li x9, 0xfff15d7f
                  li x10, 0x80000000
                  li x11, 0xfdd5fb9c
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x25a9940d
                  li x15, 0x3c636383
                  li x16, 0xf35faf19
                  li x17, 0x0
                  li x18, 0xa7525030
                  li x19, 0x0
                  li x21, 0xafe282b
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xf086dd5e
                  li x27, 0xebea402e
                  li x28, 0x80000000
                  li x29, 0xf150922f
                  li x30, 0xfcb11933
                  la x20, user_stack_end
main:             li           s3, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s7, 0x80000000
                  li           a4, 0x0
                  li           gp, 0xbb91d7b3
                  li           s11, 0x0
                  li           ra, 0x0
                  li           a2, 0xa0e72488
                  li           a3, 0x80000000
                  li           t5, 0x80000000
                  li           a7, 0x0
                  addi         gp, a2, 920
                  nop
                  addi         s3, ra, 311
                  sub          gp, a2, a7
                  nop
                  sub          gp, s3, a2
                  nop
                  auipc        s11, 953494
                  add          a3, s7, t5
                  addi         gp, t5, -998
                  nop
                  lui          ra, 250535
                  nop
                  auipc        s7, 311273
                  add          gp, s11, gp
                  lui          a4, 1029867
                  sub          a4, a4, gp
                  nop
                  nop
                  lui          t5, 269405
                  addi         a7, gp, -124
                  nop
                  addi         a2, a7, -1928 #end riscv_int_numeric_corner_stream_10
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s1, 0x0
                  li           a5, 0xffffffff
                  li           ra, 0xffffffff
                  li           tp, 0x0
                  li           s11, 0x80000000
                  li           s0, 0x80000000
                  li           a6, 0x33bfe74b
                  li           s7, 0x0
                  li           t1, 0x41403e2e
                  lui          s0, 346830
                  sub          s7, sp, tp
                  lui          tp, 866896
                  add          s7, t1, sp
                  auipc        a6, 401391
                  auipc        s1, 513626
                  lui          s0, 380
                  add          s0, s0, s11
                  lui          s0, 476086
                  add          tp, t1, ra
                  nop
                  add          ra, s7, a5
                  sub          a6, s1, a5
                  lui          s1, 596936
                  auipc        sp, 877941
                  lui          t1, 262208
                  sub          a5, tp, ra
                  lui          a6, 1000198
                  addi         s7, tp, 478
                  lui          t1, 818369 #end riscv_int_numeric_corner_stream_19
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s6, 0x0
                  li           s5, 0x4230606
                  li           ra, 0x80000000
                  li           t2, 0x70462f11
                  li           s9, 0x80000000
                  li           s0, 0xffffffff
                  li           s8, 0xe3912dac
                  li           t1, 0x0
                  li           t3, 0xffffffff
                  addi         ra, s5, 1565
                  sub          s9, ra, t2
                  lui          s6, 268296
                  nop
                  lui          s6, 81499
                  sub          t3, s9, s0
                  nop
                  nop
                  sub          s5, s8, ra
                  nop
                  add          t1, s9, t1
                  nop
                  add          s8, ra, s8
                  auipc        t2, 207316
                  lui          t3, 1027389
                  nop
                  auipc        s0, 1021156
                  auipc        t2, 767466
                  auipc        t2, 859087
                  add          s5, ra, t1
                  add          s0, s6, t3
                  addi         s6, t3, -1762
                  lui          t1, 655777
                  lui          s6, 581629
                  sub          s9, t2, s8
                  lui          s8, 995841
                  sub          s9, t2, s5 #end riscv_int_numeric_corner_stream_8
                  li           s3, 0x2183fa26 #start riscv_int_numeric_corner_stream_11
                  li           a6, 0xffffffff
                  li           s11, 0x0
                  li           a5, 0xffffffff
                  li           a4, 0x9cdd08d
                  li           a2, 0xffffffff
                  li           gp, 0x0
                  li           a3, 0xafee2553
                  li           s9, 0x80000000
                  li           a7, 0x61143bc8
                  add          a4, a7, s9
                  nop
                  sub          gp, a2, a4
                  add          s11, s9, s9
                  nop
                  nop
                  add          a3, a2, a5
                  addi         a6, a5, -260
                  add          a7, s11, a4
                  sub          a6, a4, a7
                  nop
                  sub          s3, s9, a7
                  addi         s9, a3, 1185
                  nop
                  nop
                  auipc        a4, 290974
                  sub          a5, a5, a4
                  sub          a7, a2, s3
                  add          a5, s11, a4
                  nop
                  add          a2, a2, a6 #end riscv_int_numeric_corner_stream_11
                  li           a3, 0x6f93f97b #start riscv_int_numeric_corner_stream_17
                  li           s9, 0x80000000
                  li           gp, 0xffffffff
                  li           t3, 0x0
                  li           a0, 0xffffffff
                  li           s3, 0x80000000
                  li           ra, 0x0
                  li           s10, 0x69554eca
                  li           a1, 0xffffffff
                  li           s5, 0x40df68e8
                  sub          s5, t3, a1
                  lui          a1, 19599
                  add          a1, a0, gp
                  addi         s5, gp, -1969
                  nop
                  sub          gp, ra, s5
                  lui          s10, 283330
                  lui          a3, 740518
                  addi         a3, s10, 407
                  sub          s5, s9, gp
                  add          s10, s10, gp
                  nop
                  addi         s9, a1, 395
                  nop
                  add          s10, t3, a1
                  nop
                  auipc        gp, 241126
                  lui          s10, 983392 #end riscv_int_numeric_corner_stream_17
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t1, 0x0
                  li           a3, 0xffffffff
                  li           a5, 0x0
                  li           sp, 0x0
                  li           s2, 0xef49c3ae
                  li           s7, 0x80000000
                  li           a1, 0xffffffff
                  li           gp, 0x2e6cf1c3
                  li           t5, 0xffffffff
                  lui          a3, 905071
                  sub          gp, s8, t5
                  auipc        s2, 652598
                  auipc        s8, 525287
                  auipc        gp, 147665
                  lui          a3, 29334
                  sub          sp, s2, a3
                  add          sp, gp, a1
                  lui          gp, 90928
                  auipc        s7, 992927
                  lui          t5, 450550
                  sub          a1, sp, s8
                  add          s7, t1, s7
                  nop
                  auipc        sp, 312895
                  lui          sp, 184933
                  auipc        s7, 687071
                  nop
                  lui          s7, 788120
                  addi         sp, s2, -1988
                  lui          t1, 211715 #end riscv_int_numeric_corner_stream_6
                  li           a4, 0x8e793d7b #start riscv_int_numeric_corner_stream_9
                  li           ra, 0x0
                  li           t1, 0x8ead1555
                  li           s8, 0xffffffff
                  li           s9, 0x80000000
                  li           t4, 0xdb6c623
                  li           s7, 0x40631d67
                  li           s3, 0x47407990
                  li           s5, 0x80000000
                  li           t3, 0x80000000
                  lui          t3, 681861
                  lui          a4, 325493
                  add          s9, t4, t1
                  sub          t1, ra, ra
                  add          s8, s7, ra
                  auipc        t3, 80510
                  auipc        s7, 641269
                  addi         ra, t4, -1848
                  addi         ra, s7, 480
                  sub          s9, ra, s3
                  addi         s9, s8, 1404
                  sub          ra, a4, s9
                  addi         t4, t1, 713
                  lui          a4, 687624
                  add          s5, s3, s3
                  lui          a4, 884218
                  addi         t1, s5, -944
                  add          ra, s8, a4 #end riscv_int_numeric_corner_stream_9
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s6, 0xffffffff
                  li           sp, 0x0
                  li           s9, 0x80000000
                  li           a4, 0xffffffff
                  li           a5, 0x0
                  li           t1, 0x0
                  li           a0, 0x80000000
                  li           s8, 0x0
                  li           gp, 0xffffffff
                  lui          a0, 572382
                  auipc        sp, 219913
                  lui          s8, 468545
                  addi         a4, t1, 598
                  nop
                  sub          ra, t1, s9
                  auipc        sp, 996123
                  sub          s8, a0, gp
                  lui          s9, 974183
                  lui          a0, 854513
                  sub          s8, s8, a4
                  addi         s9, a0, 645
                  nop
                  sub          s9, gp, s8
                  auipc        s8, 923215
                  addi         s9, a5, -341
                  nop
                  nop
                  lui          s6, 494299
                  lui          a0, 525007
                  sub          sp, ra, a4
                  auipc        gp, 661782
                  nop
                  auipc        ra, 547489
                  sub          gp, a5, sp
                  add          sp, gp, a0
                  lui          s6, 449977
                  addi         sp, s8, -1205
                  addi         a4, s9, 1514 #end riscv_int_numeric_corner_stream_16
                  li           t3, 0xfbd7718d #start riscv_int_numeric_corner_stream_7
                  li           t1, 0xffffffff
                  li           t5, 0x80000000
                  li           s9, 0x454de3f1
                  li           a4, 0x9d97a25c
                  li           s3, 0xffffffff
                  li           s11, 0x80000000
                  li           s10, 0x0
                  li           t4, 0xffffffff
                  li           a0, 0xd010747a
                  add          t4, s10, a4
                  auipc        t1, 93365
                  add          a0, s3, t3
                  add          a0, s3, t4
                  nop
                  nop
                  nop
                  auipc        t4, 129368
                  sub          s10, s11, s3
                  addi         a0, t5, -1887
                  lui          t5, 899491
                  sub          s9, t5, a0
                  auipc        s11, 905446
                  sub          t3, s9, a0
                  lui          s11, 495124
                  addi         s10, t4, 1534
                  lui          a0, 724433
                  lui          s11, 164206
                  add          s10, s11, t5
                  auipc        s11, 978889
                  nop
                  addi         s3, a0, -1242
                  add          t3, s11, a4
                  add          t3, s9, s9
                  addi         s9, t1, 1618
                  auipc        t3, 833377
                  nop
                  add          s3, t5, a0
                  nop
                  add          a0, t1, a0 #end riscv_int_numeric_corner_stream_7
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           ra, 0x80000000
                  li           s5, 0x80000000
                  li           t1, 0x80000000
                  li           s11, 0x0
                  li           s0, 0xffffffff
                  li           a7, 0x80000000
                  li           s2, 0x80000000
                  li           s9, 0xffffffff
                  li           a0, 0x86ed6924
                  auipc        sp, 398000
                  addi         s11, s0, 889
                  lui          s0, 166017
                  nop
                  auipc        s0, 869278
                  auipc        a0, 275111
                  sub          ra, t1, s9
                  add          sp, sp, t1
                  addi         s5, s2, -742
                  sub          s0, s11, t1
                  addi         s0, ra, 1784
                  sub          t1, s0, a0
                  sub          a0, s9, a7
                  lui          s2, 793228
                  auipc        a7, 530984
                  add          a0, t1, s2
                  auipc        ra, 4584
                  addi         s0, a7, -1355
                  sub          s5, s2, a0
                  addi         s0, ra, 212
                  add          s11, s11, s5 #end riscv_int_numeric_corner_stream_4
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           sp, 0x80000000
                  li           t4, 0xa272340c
                  li           a2, 0xffffffff
                  li           a6, 0x80000000
                  li           a7, 0x0
                  li           a1, 0x80000000
                  li           s8, 0x95cf2908
                  li           s1, 0x80000000
                  li           t1, 0x80000000
                  add          s8, a7, s1
                  addi         a6, a6, 89
                  nop
                  addi         s8, s1, -848
                  auipc        s8, 991645
                  add          a1, a3, sp
                  lui          a3, 964080
                  lui          a1, 254163
                  auipc        a1, 490948
                  sub          s1, a3, a6
                  nop
                  addi         s1, s1, 155
                  sub          s1, a7, sp
                  auipc        a3, 912468
                  nop
                  auipc        a6, 498416
                  add          t1, t1, a3
                  sub          s1, sp, a6
                  auipc        a3, 860615
                  sub          t1, t1, a1 #end riscv_int_numeric_corner_stream_3
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s0, 0x7997d4e3
                  li           sp, 0xffffffff
                  li           tp, 0xffffffff
                  li           gp, 0x0
                  li           s9, 0x28b95167
                  li           s10, 0x80000000
                  li           a2, 0x0
                  li           a0, 0x0
                  li           t5, 0xffffffff
                  addi         a2, a0, -1249
                  nop
                  sub          a2, s0, tp
                  addi         t4, t4, -1814
                  lui          s10, 619477
                  lui          a0, 221159
                  lui          tp, 159793
                  auipc        a0, 746943
                  lui          t4, 844832
                  auipc        tp, 862142
                  lui          tp, 27731
                  add          s0, sp, a2
                  addi         t4, s9, -276
                  lui          sp, 42936
                  nop
                  addi         t5, tp, 317
                  nop
                  sub          gp, s10, sp
                  nop
                  lui          t5, 586916
                  add          sp, gp, sp
                  auipc        sp, 730045
                  addi         t4, s9, -1914
                  lui          t4, 277796
                  sub          tp, a0, s10
                  nop
                  lui          t5, 859078
                  auipc        gp, 102744
                  nop #end riscv_int_numeric_corner_stream_0
                  srl          t1, gp, s2
                  andi         a2, a7, -1871
                  xori         t5, s2, -212
                  srl          a3, s5, t6
                  nop
                  andi         ra, s8, -909
                  srli         s5, s8, 5
                  sll          s3, t4, ra
                  add          t5, s3, a6
                  or           gp, s5, s8
                  or           t4, a6, t4
                  and          sp, t6, t0
                  xori         s3, a3, 4
                  sra          s9, a1, s9
                  slli         a6, zero, 4
                  or           a7, s11, sp
                  add          a1, a4, s10
                  srli         s5, s5, 10
                  sltiu        gp, s4, 1939
                  sltiu        ra, s4, 554
                  srli         t3, s7, 9
                  add          t5, s10, t2
                  sltiu        t4, gp, -1200
                  addi         s7, ra, -1476
                  xor          a4, s6, t3
                  xor          a4, s8, s6
                  srl          t2, t2, a7
                  or           a2, sp, t4
                  slt          tp, a1, t6
                  slli         t3, s11, 7
                  addi         a0, ra, 178
                  and          s6, a3, a4
                  slli         a7, sp, 16
                  ori          t4, t4, 957
                  xori         s3, t5, 959
                  srai         s6, gp, 12
                  sll          s3, s6, a4
                  lui          tp, 758802
                  srai         s6, a1, 29
                  andi         a1, t4, 80
                  and          t5, gp, a7
                  auipc        s5, 858630
                  sub          s8, a5, zero
                  xori         sp, s8, 1107
                  or           s2, a1, t5
                  srai         s7, a1, 28
                  xori         gp, t1, -517
                  ori          a6, t3, -1536
                  srli         s11, s4, 20
                  nop
                  or           t3, t1, ra
                  sll          s6, t4, gp
                  slti         t4, t5, -480
                  auipc        a7, 64520
                  sra          s5, t4, t1
                  xor          s10, tp, s5
                  auipc        tp, 879290
                  add          t5, s9, t5
                  addi         zero, a2, -1174
                  slti         gp, a5, 191
                  sll          tp, a7, zero
                  sub          t1, t0, t1
                  sll          s8, t3, gp
                  auipc        s3, 980561
                  srli         s9, gp, 18
                  add          t1, a4, t6
                  auipc        a0, 951279
                  sll          s2, a2, sp
                  or           a7, tp, t3
                  srl          s6, s4, s7
                  or           t1, t2, gp
                  nop
                  ori          s9, ra, -1576
                  andi         a2, a7, 1819
                  addi         a5, s7, -1110
                  sra          a5, a5, s6
                  sub          s0, s9, a1
                  addi         t4, s0, -654
                  and          t5, t3, s7
                  sub          a3, zero, a0
                  sra          a7, t0, s3
                  sltiu        s7, gp, -1363
                  srli         a3, s7, 18
                  slli         s5, s6, 7
                  sltiu        t5, t6, 869
                  slt          s11, a6, s9
                  xor          s7, t1, a6
                  sra          a5, t6, ra
                  andi         s0, s1, 2036
                  srl          a7, s8, s4
                  lui          a5, 24036
                  addi         a0, s10, 1173
                  and          tp, a1, s9
                  srli         gp, s3, 9
                  sra          a4, a4, a3
                  sra          t3, s6, t6
                  xor          a2, t4, sp
                  sltiu        a7, s1, 1666
                  addi         s7, a2, 546
                  andi         tp, s2, 1566
                  sra          s3, t2, t5
                  xori         sp, s4, -411
                  sra          t5, gp, s4
                  sltiu        t4, s10, 727
                  auipc        zero, 574310
                  lui          s11, 92186
                  sltu         tp, a0, t2
                  slti         s7, a0, -1199
                  andi         zero, a6, -1231
                  and          s9, s0, s0
                  andi         s5, t1, 238
                  xor          tp, gp, s8
                  auipc        t4, 1014864
                  addi         s8, t6, -1384
                  xori         s10, a6, -1574
                  and          s7, s9, a5
                  sltu         s9, s8, s6
                  nop
                  sll          s0, a2, sp
                  addi         a7, s11, 1979
                  slli         s9, a0, 29
                  and          a2, s6, a3
                  and          s3, s5, tp
                  sub          s2, t0, s1
                  xor          zero, s4, a7
                  sra          s9, s4, a1
                  auipc        s8, 656511
                  srli         a2, a0, 2
                  slli         a2, s0, 15
                  slt          s10, t2, s3
                  addi         s8, a3, 1416
                  sll          sp, a7, a6
                  or           t1, ra, s3
                  srl          a1, t3, ra
                  auipc        gp, 847490
                  srl          s10, s2, s10
                  sltiu        s7, s2, 1266
                  srai         a2, s1, 6
                  sltiu        sp, a1, 1318
                  add          a7, s2, a4
                  sltu         zero, t5, a6
                  slli         a2, t3, 28
                  nop
                  slt          a0, s11, a5
                  or           t3, a4, t5
                  sll          t3, a2, s0
                  xori         a0, t2, -499
                  srai         s7, sp, 6
                  srli         s2, s7, 6
                  nop
                  sub          s0, s5, t4
                  sub          s2, t5, gp
                  slt          gp, s4, a1
                  add          zero, a1, a3
                  sltu         s1, s4, s1
                  addi         s7, t4, -36
                  sltiu        zero, t3, -675
                  or           a3, s8, a6
                  addi         s0, s7, 1586
                  srli         t4, a1, 26
                  and          t3, s1, t0
                  slli         t3, a4, 28
                  and          zero, t4, s6
                  srl          s2, a5, a6
                  sltiu        s1, ra, -1803
                  sltiu        a2, a4, -930
                  nop
                  auipc        a7, 921267
                  slti         s2, a2, -341
                  slli         t2, a0, 30
                  sll          a3, s4, a7
                  andi         ra, a6, -692
                  sra          t2, a4, a4
                  sra          tp, s3, s6
                  andi         t4, t5, -1576
                  andi         a3, s8, -735
                  srli         a6, zero, 4
                  xori         zero, gp, -1910
                  xor          s5, t2, tp
                  add          t2, s1, t3
                  lui          t3, 633244
                  lui          s2, 970287
                  and          s6, s1, gp
                  sub          sp, s11, t2
                  slli         t5, t4, 28
                  andi         s2, t6, -1477
                  andi         s2, s3, 1333
                  and          s11, t6, s7
                  lui          s2, 804727
                  sll          t2, s2, s2
                  sub          t3, s8, s4
                  srai         t4, t5, 23
                  sll          tp, s0, zero
                  lui          s1, 735120
                  sra          t2, a4, s4
                  xor          sp, a6, s10
                  sra          s10, t4, s10
                  add          s9, tp, t1
                  addi         t5, t1, 1109
                  xori         a6, ra, -1194
                  xori         s9, s0, -253
                  sltiu        s11, gp, -1878
                  addi         a0, a0, -989
                  or           a0, tp, a3
                  sltu         a2, t6, s7
                  ori          s3, t2, 359
                  slti         s1, zero, -1280
                  addi         gp, s4, 594
                  andi         tp, s1, 666
                  slli         t5, t0, 7
                  srai         s1, s1, 30
                  srai         t5, s7, 19
                  sltu         s7, zero, zero
                  xori         s3, a5, 1468
                  sra          s8, a7, s3
                  srl          s3, t0, s3
                  ori          s11, a6, 728
                  lui          s9, 405370
                  andi         a5, s10, 783
                  ori          t5, a1, -764
                  andi         tp, s6, -1445
                  sll          t1, s2, t6
                  addi         s5, s2, 859
                  srli         a0, t0, 15
                  srl          a4, s9, a6
                  xori         a7, a1, -254
                  lui          t3, 523043
                  xor          t1, a6, s5
                  lui          a7, 242597
                  srai         t2, s5, 15
                  slti         s8, a7, -322
                  ori          s2, s8, 493
                  slti         a4, t4, 146
                  and          a3, t2, s0
                  srl          t2, t5, a2
                  addi         ra, s6, -979
                  sub          t3, s4, s1
                  sub          zero, a2, s3
                  ori          s11, t4, 659
                  addi         a1, t2, -883
                  ori          t3, a4, 1733
                  slt          a0, s11, s5
                  xor          a4, s8, a6
                  sra          gp, s8, s1
                  srai         t4, ra, 31
                  sra          a4, a6, a3
                  auipc        s6, 282069
                  andi         t2, a3, 1791
                  slt          zero, s6, t3
                  srai         a1, t4, 20
                  nop
                  srai         gp, s1, 0
                  srl          a6, t4, s11
                  and          a1, a1, t4
                  sltu         s1, s2, tp
                  sll          t4, s9, s1
                  nop
                  andi         s1, t6, 1304
                  sll          zero, s2, s1
                  srli         t4, a0, 5
                  ori          t1, t2, 1636
                  add          s8, gp, s6
                  ori          ra, tp, -1432
                  add          s7, t1, s7
                  xor          t2, t5, s1
                  andi         a6, a2, 1232
                  slti         sp, zero, -111
                  sub          a1, t1, t5
                  ori          s5, t5, -1317
                  xor          t3, a5, a7
                  and          s5, s5, s2
                  auipc        s3, 871984
                  xori         a5, a3, 1330
                  and          a1, t3, a0
                  sltiu        a2, s9, -114
                  ori          s10, s4, 439
                  addi         t2, ra, 53
                  or           a6, s7, s0
                  or           s1, s5, s6
                  sra          s9, a7, s5
                  ori          sp, a6, 249
                  sub          t4, zero, s7
                  slti         t5, ra, 562
                  srai         s9, t3, 15
                  srl          tp, s5, gp
                  add          t3, a4, s2
                  or           a3, t0, s4
                  sra          s10, s3, tp
                  xor          s7, a1, a3
                  slti         s3, a7, -440
                  srai         s11, s4, 16
                  or           gp, s11, a4
                  ori          t3, t2, 293
                  sltu         a4, s11, s8
                  or           a7, s8, t3
                  ori          zero, a6, -336
                  lui          t4, 754490
                  slli         s9, a7, 17
                  sra          s3, t3, a4
                  sub          s8, t0, s9
                  sra          t2, ra, sp
                  srai         tp, t3, 18
                  slli         a7, s11, 27
                  xor          a6, t5, a5
                  srai         a6, s6, 30
                  or           a3, t2, s4
                  sltu         s5, zero, a4
                  sra          a6, tp, s2
                  sub          a0, tp, a5
                  ori          a6, a5, 1522
                  ori          s6, a2, 1991
                  slt          s0, a1, a6
                  sltu         a1, a5, s10
                  andi         s11, t2, 853
                  xori         a0, s9, 699
                  slti         s2, a6, 2001
                  addi         a4, sp, 88
                  xori         gp, s11, 1118
                  nop
                  sltiu        s5, a5, 744
                  or           sp, a7, a5
                  xori         s11, t5, 886
                  and          s9, t5, s0
                  xori         s2, a4, -180
                  auipc        gp, 399535
                  or           s2, s8, t2
                  addi         s3, t3, 1863
                  slt          a7, t5, t4
                  nop
                  slt          a1, s6, t5
                  slli         s7, s2, 31
                  sltu         s5, s6, a3
                  sra          t3, s6, a2
                  auipc        s11, 493246
                  lui          t5, 234974
                  xor          a6, a6, a5
                  sra          a1, s3, zero
                  xor          a1, s4, s8
                  slli         zero, tp, 14
                  or           a4, s6, sp
                  srli         s5, sp, 19
                  xor          s9, a3, t6
                  ori          a1, t6, -1243
                  xori         zero, s4, 458
                  srli         a3, a7, 2
                  nop
                  srai         s3, s11, 30
                  xori         t1, a5, 1115
                  xori         s10, t0, -341
                  slti         a6, s2, 1282
                  sub          t5, s8, s8
                  sltu         a1, s9, s10
                  sra          t4, s11, sp
                  srl          t4, a0, ra
                  add          t1, t5, a2
                  nop
                  lui          a0, 157783
                  sltu         gp, s1, t0
                  slti         ra, t5, 1569
                  ori          zero, a1, 331
                  slt          a6, tp, t6
                  srli         a2, a7, 14
                  sltiu        s1, a3, 1567
                  srai         a4, t1, 23
                  lui          a1, 702809
                  ori          a6, s7, 718
                  srli         s10, s1, 4
                  slli         s8, t5, 11
                  sltu         a0, sp, a2
                  add          s10, t4, t4
                  xori         sp, tp, 1628
                  slti         a6, t5, 322
                  add          s11, tp, tp
                  srai         t2, t1, 1
                  lui          s9, 1033999
                  add          zero, s0, a0
                  srli         t3, s4, 6
                  xor          a3, s6, a1
                  sltu         a1, s2, s5
                  sub          s2, ra, a0
                  lui          a1, 478697
                  srai         t5, a5, 17
                  slt          a2, s3, ra
                  srl          t4, zero, a0
                  auipc        s5, 363527
                  srli         s6, s10, 30
                  srli         tp, t1, 20
                  sltu         t2, t2, s11
                  xor          s10, a1, a7
                  lui          s1, 966333
                  slt          s9, sp, s6
                  and          s5, s6, a2
                  xor          a4, a4, s5
                  sltu         a1, a1, a3
                  xor          a4, s6, s10
                  sra          s3, t3, t4
                  auipc        a1, 7179
                  xor          t1, a1, s11
                  slli         a0, s10, 5
                  ori          sp, a2, -415
                  srli         t4, s1, 6
                  add          s10, s5, a7
                  lui          a1, 376194
                  xori         s6, t1, -378
                  slti         a0, t5, -179
                  xor          ra, s10, s9
                  add          s2, s10, ra
                  slli         s11, t3, 11
                  or           a2, zero, s10
                  sll          s2, ra, t0
                  ori          t4, t0, 2012
                  slli         a4, ra, 9
                  xor          a6, s7, ra
                  or           s3, t2, s1
                  sra          t5, t4, t1
                  slli         a7, tp, 6
                  or           t5, a0, a0
                  or           a3, s2, s4
                  lui          tp, 100608
                  lui          ra, 357316
                  slt          s0, a4, tp
                  xori         t1, s11, -681
                  xor          gp, s2, s10
                  nop
                  xor          gp, t2, sp
                  addi         t5, t6, 689
                  srai         a2, s8, 28
                  sltu         tp, gp, a3
                  xori         gp, s7, 1421
                  auipc        s9, 131182
                  slt          a5, a3, ra
                  sltu         s9, s7, a6
                  slli         t3, s0, 22
                  xori         ra, a0, 339
                  srli         s3, a4, 12
                  lui          zero, 915584
                  xori         a6, s10, -1151
                  nop
                  nop
                  sra          a7, s8, s8
                  slti         ra, a3, -1144
                  xori         t5, s5, 607
                  srl          s2, s0, a0
                  and          s8, t6, t0
                  add          tp, a0, t5
                  slli         sp, t4, 17
                  slti         zero, s10, -742
                  addi         s7, a7, -52
                  addi         s11, t0, 813
                  or           a7, s5, s5
                  add          a6, t2, s11
                  auipc        s9, 535881
                  add          sp, t2, s5
                  srli         a7, ra, 9
                  sra          a5, a5, t5
                  srli         tp, s3, 24
                  andi         a7, t2, 1190
                  andi         gp, t2, 295
                  andi         t1, t5, -243
                  sra          s11, s10, a5
                  sltu         t2, a7, s5
                  slli         t4, a1, 10
                  auipc        s2, 978868
                  slli         s9, s3, 9
                  srli         a7, a3, 17
                  nop
                  or           s8, s3, a3
                  slt          sp, s2, a1
                  and          zero, t1, t5
                  or           s9, s4, ra
                  sltiu        a5, s1, -1444
                  ori          ra, t6, 1147
                  sub          t5, s6, a7
                  addi         sp, a2, 619
                  nop
                  sltiu        s3, t1, 148
                  sub          a0, a3, s1
                  ori          s3, s10, 601
                  xor          t3, s3, t5
                  sll          a3, t4, a7
                  sltu         a6, s6, s0
                  xori         s1, s7, -1358
                  sll          a2, tp, s1
                  and          a1, a4, gp
                  srli         a2, a5, 26
                  add          s2, a6, s5
                  slti         tp, s5, 345
                  srai         a6, t0, 22
                  slli         gp, a0, 17
                  sltu         s10, s3, zero
                  slti         a6, gp, -94
                  sra          a5, t6, t5
                  ori          s2, t3, -1856
                  srai         s7, t5, 4
                  sra          s9, t6, a6
                  sub          s8, a4, s4
                  srai         s6, t1, 11
                  xor          tp, s1, s8
                  and          s7, s10, a5
                  xor          a5, s10, zero
                  srli         s5, s5, 23
                  addi         zero, a0, 1412
                  slli         a0, s0, 23
                  add          s0, t4, s11
                  sltiu        s1, t6, -213
                  andi         s8, t0, 287
                  srl          s0, a3, t1
                  andi         s3, a4, -1644
                  sub          t3, s4, ra
                  xori         s5, a7, -1933
                  add          s2, zero, a7
                  addi         s9, s10, -203
                  auipc        t5, 538247
                  andi         tp, tp, -536
                  srli         s2, a7, 1
                  or           s6, s6, s1
                  slti         a4, sp, 903
                  xori         a3, s8, -459
                  nop
                  slt          s11, s3, ra
                  sll          gp, t2, a5
                  add          s3, s11, a5
                  andi         a4, ra, 733
                  auipc        a5, 644848
                  slt          s5, t2, s3
                  slli         s5, a2, 25
                  xori         a5, a2, -935
                  sltiu        t1, ra, -364
                  xor          a6, a0, t5
                  slti         a7, a0, 311
                  xori         gp, a0, -1096
                  and          a2, a6, tp
                  slli         s3, a4, 30
                  xor          s1, t5, s4
                  slli         gp, a6, 29
                  srai         a3, tp, 26
                  andi         s11, a5, 889
                  slt          t5, s3, s2
                  slt          s3, a0, a0
                  sll          s11, a3, s11
                  xori         a5, t0, -1738
                  or           t1, s4, t2
                  and          t4, zero, s2
                  xor          a6, zero, ra
                  sll          t2, sp, t4
                  xori         a4, s2, -776
                  xor          s3, a2, s11
                  addi         ra, ra, 1289
                  sra          sp, t6, s11
                  sll          s9, s3, s11
                  ori          s8, s4, -1149
                  slti         s11, s11, -823
                  addi         s1, sp, 1808
                  or           a6, t6, t5
                  andi         a4, a1, -615
                  sra          s2, a2, a6
                  ori          a3, s7, -1726
                  srli         a7, sp, 28
                  andi         a0, a1, 215
                  addi         t1, s9, 1545
                  andi         s5, s0, -592
                  srl          s10, s2, t0
                  andi         t3, s9, -1234
                  auipc        a5, 17832
                  srl          s8, a1, s9
                  xori         s9, s4, 779
                  auipc        s5, 728917
                  slti         s11, ra, -1209
                  ori          a5, s8, 851
                  ori          a7, t5, -1442
                  add          ra, ra, s1
                  add          s1, t2, s9
                  srl          s3, a4, t2
                  srli         s10, s1, 3
                  xori         t4, s8, -98
                  and          s6, s11, sp
                  xori         s10, a5, -1698
                  andi         s8, t1, -727
                  addi         t1, a3, -1683
                  slti         t1, ra, 1693
                  sra          a0, gp, a5
                  nop
                  add          t3, a4, a5
                  slt          s3, t0, s8
                  srli         t1, a3, 11
                  srai         a1, a6, 28
                  srli         s10, t1, 31
                  add          zero, s8, a1
                  srli         sp, a0, 22
                  lui          s2, 690577
                  sra          s2, s2, s3
                  sra          t2, s7, sp
                  sltiu        t1, t4, 1969
                  slt          t1, sp, a5
                  lui          s11, 595924
                  lui          a4, 926072
                  srli         t4, a3, 2
                  sub          a2, t0, a7
                  sra          t4, ra, sp
                  srai         a2, a3, 2
                  andi         s6, a2, -1435
                  srai         s7, tp, 23
                  sll          s3, s1, s7
                  sltu         s11, s5, s8
                  slli         s11, s1, 4
                  sltiu        s2, a0, 779
                  or           a4, t2, s2
                  sll          tp, t4, t0
                  srai         s10, t2, 18
                  nop
                  sll          t4, a2, gp
                  srl          s7, t6, a6
                  nop
                  sltu         t5, a6, s8
                  srai         t1, t5, 19
                  srai         a0, a5, 2
                  sll          s7, a3, t6
                  srl          s11, a7, t1
                  srai         s8, s0, 27
                  sra          t5, s11, a3
                  sra          s9, a3, t4
                  slli         a2, s8, 15
                  sra          a6, s7, t3
                  slti         s1, t3, 100
                  slt          s3, s10, s9
                  slli         a5, t4, 5
                  add          a7, t4, a5
                  add          a3, ra, a5
                  or           s6, s0, s8
                  and          s5, s6, a7
                  slli         s6, sp, 25
                  and          a3, t1, t0
                  sltiu        a3, a5, 387
                  sltu         a2, s4, s10
                  sub          a0, s7, s9
                  addi         s11, s11, 235
                  ori          a2, a6, -1982
                  add          tp, a0, gp
                  sll          a7, s3, t0
                  and          a2, t0, s4
                  slt          s9, t0, t0
                  lui          a6, 136326
                  srli         t1, t0, 5
                  andi         s5, t2, -452
                  sltu         t5, s3, s3
                  add          s0, t1, a5
                  sltiu        s7, ra, 363
                  sll          a2, t2, t6
                  sltiu        zero, s11, -1509
                  add          zero, t4, t2
                  addi         a6, s10, 1677
                  slli         s9, s9, 2
                  xori         gp, t6, -1405
                  sll          a7, t2, a7
                  sra          s8, a0, s2
                  slt          s5, s2, ra
                  addi         a5, a6, 1284
                  nop
                  and          a5, tp, a0
                  srl          tp, t5, a7
                  slt          s7, a7, t6
                  sll          s11, s0, s3
                  addi         a4, a3, -1762
                  xor          a1, t1, t3
                  slti         a0, zero, -1241
                  sltu         a0, t5, a6
                  xori         s10, s3, -163
                  sltu         a5, ra, t3
                  lui          a4, 908271
                  srai         zero, t4, 3
                  or           a3, t2, a2
                  andi         s7, a1, 877
                  sub          gp, s4, ra
                  or           gp, sp, t3
                  srli         s7, a2, 30
                  and          s3, t5, s2
                  addi         a1, a2, -591
                  sra          a4, a6, s7
                  or           a3, a3, s11
                  srai         s8, s2, 16
                  sra          tp, tp, s2
                  sltu         s9, a5, a4
                  slt          s7, t3, s8
                  slt          a3, t6, s1
                  srl          zero, a1, s2
                  ori          t2, gp, 701
                  andi         s8, t1, -1665
                  sub          sp, zero, t0
                  sltu         s9, a6, s6
                  andi         a0, s8, -619
                  sltiu        s2, ra, -447
                  andi         s5, s0, -1049
                  ori          s7, s6, -1331
                  srli         a0, t0, 28
                  slli         a0, s3, 10
                  sub          a6, a4, a3
                  slli         t2, s4, 3
                  nop
                  ori          s7, s10, 1133
                  slt          a3, gp, s5
                  slli         a5, s4, 29
                  sltu         s1, a5, s0
                  sll          s8, gp, sp
                  slli         a5, t1, 3
                  srai         a3, s0, 4
                  nop
                  slti         s2, s3, -1772
                  sltu         s3, s5, s11
                  sltu         s7, t3, sp
                  andi         s8, tp, 220
                  sra          s7, a3, s9
                  slli         s9, t4, 6
                  srli         a7, a0, 1
                  or           s0, ra, s6
                  auipc        a7, 454566
                  lui          a2, 710965
                  nop
                  and          a1, s4, a0
                  and          a7, s4, zero
                  xor          a5, s5, a3
                  sra          s3, a6, s4
                  sra          s7, s5, s1
                  sltiu        s10, sp, 682
                  sll          s1, t6, a5
                  andi         a7, a4, -1934
                  slli         s9, t2, 1
                  sll          a5, s11, sp
                  lui          t5, 955425
                  slti         a7, a0, -945
                  andi         s10, t2, 1014
                  addi         a1, t1, -277
                  xor          a7, s2, s5
                  auipc        t2, 1044131
                  or           s10, tp, s5
                  sub          s10, a3, t5
                  sll          a2, a1, a3
                  sub          sp, s9, a0
                  sra          t4, t6, zero
                  srl          a4, s9, t4
                  auipc        s9, 485587
                  slti         s9, s6, -1297
                  sra          s11, a2, a2
                  addi         zero, s10, -949
                  xor          tp, a3, t4
                  and          t4, s10, t3
                  slli         s7, zero, 20
                  ori          zero, a0, -703
                  sltu         ra, t4, s11
                  srl          t4, s10, tp
                  lui          s3, 281984
                  addi         s5, t1, 920
                  auipc        s1, 351805
                  sub          a1, a0, s1
                  xori         zero, s9, 784
                  andi         a6, a0, -871
                  nop
                  xor          a7, s10, s8
                  srai         s11, s10, 24
                  auipc        tp, 478404
                  xori         a6, s2, 206
                  sra          t2, t2, s7
                  addi         a1, a5, -404
                  nop
                  sra          zero, a4, a2
                  sub          a6, a7, s1
                  slti         s2, s6, -1567
                  sll          t1, s11, sp
                  lui          a3, 108425
                  auipc        s3, 562861
                  or           a7, t2, s7
                  and          s0, tp, a5
                  lui          a5, 762465
                  or           t1, a6, a0
                  srai         a7, a6, 25
                  slt          zero, t3, a0
                  slti         a2, t0, -1460
                  lui          s8, 452459
                  srli         s6, s2, 25
                  auipc        s10, 727258
                  lui          a1, 365690
                  addi         s10, a6, -2025
                  sra          a4, s9, t1
                  slt          t3, a7, s7
                  sll          s11, s10, t4
                  slli         s2, a1, 3
                  nop
                  lui          a6, 183709
                  nop
                  ori          a4, sp, -1803
                  add          a5, a6, s2
                  sub          zero, s5, s2
                  slti         t1, a0, 304
                  add          a3, a1, a2
                  ori          s11, tp, -224
                  sra          a0, s5, s0
                  add          a0, a2, t4
                  slli         s2, s3, 5
                  or           a3, gp, a1
                  add          a4, t4, gp
                  andi         a6, t6, -815
                  srli         t1, s1, 22
                  nop
                  xori         a5, a7, 1456
                  andi         a4, a6, 1623
                  or           s6, t6, s7
                  sll          a0, t3, t0
                  srli         s3, s4, 26
                  auipc        a5, 747711
                  srli         tp, a3, 26
                  sra          zero, t0, sp
                  slti         a6, zero, -275
                  slti         t4, s4, 1594
                  srl          a0, s7, s10
                  srai         a4, s10, 17
                  sll          a0, t0, tp
                  and          tp, a0, a5
                  srl          t3, t2, t0
                  add          t3, s11, s0
                  lui          s7, 769281
                  slt          t5, s0, tp
                  xor          tp, a4, a1
                  addi         t1, t2, -984
                  sltiu        s1, a1, 1665
                  andi         s10, a6, -1110
                  andi         a6, sp, -2004
                  srl          s9, s2, t5
                  srai         s0, a0, 12
                  slti         s10, a5, 1697
                  xori         zero, t0, -301
                  addi         t1, ra, 2025
                  and          tp, t5, sp
                  or           a6, a6, s10
                  srai         s5, s1, 8
                  sltiu        s2, s6, 102
                  or           t2, s4, a4
                  srai         zero, a7, 13
                  sltiu        a7, s1, 770
                  add          t4, ra, s10
                  addi         s10, s3, -1592
                  xori         t3, a6, -394
                  sub          gp, s8, t2
                  sra          s0, a5, a0
                  srai         s11, t5, 28
                  nop
                  srl          gp, s9, t5
                  sltiu        s6, s4, -1551
                  lui          t4, 636557
                  sra          s5, s2, s0
                  andi         s7, s6, 1970
                  slt          s6, t0, a6
                  slti         gp, s0, 1968
                  sra          a1, a5, a2
                  lui          t4, 957304
                  srli         s9, a6, 27
                  nop
                  auipc        s9, 6552
                  or           zero, gp, s5
                  sub          sp, s7, s6
                  nop
                  xor          t4, s7, t0
                  andi         s8, a1, 150
                  slti         s3, s0, 1078
                  srli         t2, a5, 14
                  sra          s10, s1, a7
                  sub          gp, a6, s7
                  lui          s3, 903176
                  sub          t1, s9, s10
                  slt          zero, t4, t6
                  sra          s1, s7, s2
                  sltiu        zero, s9, 230
                  auipc        a4, 1033863
                  slli         t1, t3, 6
                  sra          s1, zero, zero
                  nop
                  xori         tp, s1, 1618
                  sltu         t4, s10, t4
                  xori         t4, s8, 85
                  nop
                  srli         a3, a7, 1
                  auipc        tp, 574822
                  xori         a4, s0, -736
                  xor          s9, s4, s1
                  addi         t3, s8, -1554
                  nop
                  ori          t4, a3, 76
                  slt          a5, sp, t2
                  sra          a0, a7, ra
                  sltu         s5, t1, s2
                  srli         s5, a6, 10
                  srl          t2, a6, t0
                  addi         gp, s11, -369
                  xor          s9, a2, sp
                  lui          zero, 17741
                  lui          a7, 967169
                  or           s0, a2, s2
                  xor          s10, t5, s6
                  sltu         s5, a2, s1
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s3, 0x0
                  li           s6, 0x0
                  li           s11, 0xffffffff
                  li           s9, 0xfeebc627
                  li           s0, 0xffffffff
                  li           ra, 0xffffffff
                  li           s7, 0xffffffff
                  li           t5, 0xbcd4c9d4
                  li           s1, 0x0
                  auipc        s6, 594797
                  sub          a0, s1, s7
                  auipc        s0, 674608
                  nop
                  nop
                  auipc        s7, 457987
                  nop
                  auipc        s7, 716491
                  nop
                  auipc        s6, 738397
                  sub          t5, s9, s6
                  lui          s0, 39022
                  auipc        s9, 232657
                  nop
                  addi         s7, s6, -1804
                  sub          s11, ra, s1
                  sub          s9, s6, a0
                  sub          s7, s3, s9
                  add          ra, s0, s1
                  auipc        s11, 350191
                  lui          s9, 533667 #end riscv_int_numeric_corner_stream_15
                  or           tp, a0, ra
                  srl          a1, s1, a3
                  srl          s3, t3, t2
                  slli         s11, a7, 31
                  addi         tp, s4, 1827
                  lui          a7, 1007548
                  and          a6, a3, s0
                  srli         tp, s4, 2
                  slt          s8, gp, t3
                  sub          s10, a3, s3
                  nop
                  sub          a5, s1, t4
                  slti         zero, s5, -229
                  andi         a1, s3, -1864
                  slli         a0, t0, 5
                  sltu         a3, sp, t0
                  addi         a4, s8, -1254
                  slli         a2, s11, 19
                  add          s9, gp, t5
                  xor          a7, a1, tp
                  slli         ra, t5, 13
                  xor          t1, a7, sp
                  sra          s6, gp, t3
                  ori          a2, a6, 1969
                  nop
                  srl          t1, s6, s6
                  srli         zero, s2, 15
                  srli         s1, t4, 24
                  sub          s2, s9, s10
                  srl          ra, s9, a5
                  sltiu        a7, s3, 1513
                  srl          t2, s11, a2
                  slti         a6, s1, 1025
                  srli         a2, s9, 11
                  auipc        s10, 592613
                  sll          t4, a0, ra
                  addi         a0, a5, -681
                  srai         ra, s8, 8
                  srli         s2, t1, 8
                  sltiu        s3, t0, 1563
                  addi         t5, s4, -1324
                  and          t3, s2, t0
                  sltu         s7, s4, a3
                  slli         gp, s7, 12
                  auipc        s5, 1010494
                  sra          a3, t1, t2
                  sltiu        t1, s8, 1281
                  sll          a1, t3, t5
                  ori          a4, s11, 1714
                  lui          s2, 170767
                  add          s2, t1, a0
                  lui          a7, 934380
                  ori          s8, t4, 1669
                  ori          t3, s9, -689
                  sltiu        t3, s11, -1769
                  srl          s6, s8, gp
                  or           s8, a3, t5
                  srli         s6, t2, 27
                  ori          a1, a2, -1085
                  sll          a3, s7, zero
                  srli         s10, t2, 11
                  xor          gp, t2, t5
                  srai         sp, t0, 23
                  sltu         a0, a2, s3
                  or           t1, a2, a4
                  sll          a5, s5, t3
                  or           zero, t4, t0
                  lui          s0, 374658
                  srai         s6, s1, 13
                  slt          ra, a3, a5
                  addi         a7, s10, -1374
                  auipc        s10, 819855
                  or           s8, a3, s4
                  andi         s5, a5, 367
                  sltu         a2, s6, s5
                  or           a2, zero, a3
                  sra          s7, s9, gp
                  ori          s8, s11, 202
                  and          s2, s7, a5
                  and          s2, a4, a1
                  slti         s9, s9, -504
                  and          zero, ra, t1
                  andi         s8, ra, -1603
                  andi         a6, t5, 1088
                  srl          s7, s3, s11
                  nop
                  andi         s8, ra, 934
                  or           s6, a2, s6
                  addi         tp, a3, 316
                  sltiu        s7, s4, 1455
                  slli         t3, a2, 7
                  nop
                  xori         a2, s4, 1793
                  srli         a4, t1, 17
                  xor          s0, s5, t0
                  sltu         t5, s1, s5
                  and          t3, a4, t5
                  or           s8, a5, ra
                  sub          t1, s7, t3
                  srli         s6, ra, 9
                  xori         s6, t1, 1909
                  xor          ra, t0, t4
                  slli         t1, s7, 11
                  auipc        gp, 998834
                  ori          a2, a2, 150
                  auipc        s10, 838984
                  slti         s8, gp, -515
                  addi         s9, s7, -93
                  sll          t5, a6, s1
                  slt          t2, a1, a1
                  slt          a5, s5, a6
                  sll          t4, s7, s11
                  ori          a5, sp, 406
                  sltiu        a5, t2, -926
                  lui          t2, 93645
                  or           s8, a3, zero
                  ori          a0, a0, -377
                  add          a4, t2, t6
                  srli         gp, s10, 30
                  xori         s3, s9, 324
                  ori          s5, s11, -65
                  srli         s8, t2, 28
                  xor          a3, gp, t5
                  xor          ra, s6, t2
                  add          t2, a7, a4
                  add          s0, s2, s9
                  sub          a0, s9, s5
                  nop
                  ori          s7, s0, -376
                  sltiu        s3, t2, -1177
                  slti         a0, t3, 348
                  slli         t3, s4, 17
                  nop
                  lui          sp, 125661
                  slti         a3, t4, 1030
                  xori         s3, s10, 593
                  ori          s9, s9, 282
                  addi         t4, a7, -969
                  slt          t2, s6, s10
                  lui          s11, 669362
                  lui          s10, 56495
                  slt          t1, s10, ra
                  or           a6, s3, t1
                  slti         s3, t1, 1875
                  lui          a2, 72134
                  xori         a2, s1, 1084
                  slli         tp, t0, 13
                  sub          a4, t3, a0
                  sll          s11, s11, s7
                  sltu         s3, t5, t0
                  or           a1, a1, a0
                  sub          gp, a2, s4
                  auipc        t4, 473753
                  sra          sp, s11, a7
                  srli         a2, gp, 3
                  srl          a5, a2, t1
                  ori          s8, s4, -1699
                  srl          a5, s8, a6
                  slt          gp, a7, s11
                  sub          sp, a2, t3
                  slli         a5, s1, 10
                  sra          a4, ra, t4
                  sra          t4, a0, a1
                  sltiu        t2, s5, 1786
                  slt          s11, t2, s1
                  sub          sp, t3, a3
                  add          a2, t5, s9
                  ori          t1, s7, 93
                  srl          s2, a5, zero
                  xor          zero, t6, s8
                  srl          t3, s8, a5
                  xor          s10, s1, zero
                  srli         s0, a4, 28
                  ori          s9, zero, 1805
                  slt          t1, t0, gp
                  slti         t1, s5, 200
                  addi         t3, t3, -1328
                  sll          t4, s1, a7
                  addi         s2, s2, 1588
                  srai         a4, s9, 25
                  sub          a3, a0, s7
                  add          gp, a4, s6
                  srli         tp, s11, 0
                  sub          s1, a3, t5
                  auipc        s0, 804972
                  sra          a3, t1, s8
                  ori          t2, a4, -991
                  lui          tp, 527084
                  sra          zero, ra, a0
                  sll          a7, s0, a1
                  addi         a3, s2, 1128
                  sra          zero, t6, s10
                  and          s2, zero, a5
                  nop
                  sll          a2, a5, tp
                  sra          s2, s2, s3
                  sll          s3, s5, a3
                  xori         a1, t0, 250
                  sltu         ra, a0, a7
                  addi         s6, t3, -990
                  lui          s7, 925840
                  nop
                  and          t1, zero, a6
                  slt          a4, s11, s7
                  sltiu        t5, s5, -1777
                  xor          t4, a3, s10
                  sub          t2, t3, s5
                  xor          a1, t5, t4
                  addi         s6, t3, -1647
                  and          t3, t0, t5
                  xori         s8, a2, -1603
                  slli         t5, sp, 31
                  xori         t3, a4, 1354
                  slti         s5, a4, 1766
                  sra          s11, t3, a7
                  srai         a3, s0, 20
                  and          a7, t1, s0
                  sll          s0, t3, a2
                  sltiu        tp, a6, 1945
                  auipc        s0, 623796
                  nop
                  srai         zero, s7, 20
                  sll          zero, t3, s11
                  sltu         s7, s4, t1
                  or           s10, t0, s8
                  sub          s8, s8, a3
                  auipc        gp, 606348
                  sltiu        s7, a7, -1924
                  lui          s2, 418479
                  nop
                  sub          s5, s11, s11
                  addi         a4, s9, 1184
                  slli         s5, a6, 19
                  sll          s7, s11, s0
                  nop
                  slli         s1, t1, 20
                  ori          t5, s11, 709
                  andi         a5, tp, 2039
                  srl          s3, s10, t3
                  and          a7, t0, a4
                  sltiu        s1, ra, -1841
                  sltu         t4, a6, a2
                  addi         ra, a7, -830
                  lui          t2, 253072
                  xori         ra, t4, -6
                  ori          a3, a1, -1690
                  auipc        gp, 540035
                  xor          a1, a4, gp
                  sltiu        s3, tp, 1785
                  slli         s0, s0, 18
                  slti         t3, t4, 1111
                  slt          a1, t2, a3
                  sll          s10, s3, a3
                  srai         sp, s9, 1
                  or           t1, s1, a3
                  xori         s2, a6, 1319
                  and          sp, s2, sp
                  srl          s0, t5, ra
                  addi         t4, s11, -1914
                  srli         t2, a3, 24
                  add          a1, s1, s1
                  srli         s5, zero, 14
                  sltu         a3, a2, s3
                  slli         s10, a4, 11
                  slt          s9, a5, ra
                  andi         s7, a4, -1411
                  srai         t5, t2, 19
                  xor          a4, s0, t6
                  sub          s8, gp, a2
                  sra          s5, a4, tp
                  and          gp, a3, s8
                  or           t4, a1, s1
                  slt          s10, t6, t2
                  ori          a0, s5, 1328
                  auipc        s2, 995493
                  add          s7, t4, t6
                  auipc        t4, 875082
                  slt          a0, a6, t5
                  xor          s9, t5, s6
                  auipc        t3, 126928
                  srli         s9, t0, 20
                  slti         a2, s4, 619
                  addi         t5, s0, 1715
                  andi         a4, sp, 785
                  sll          a4, s5, s9
                  sltiu        a5, s6, -1018
                  sra          s3, s9, s8
                  lui          t4, 807582
                  srli         ra, t6, 13
                  sub          t5, s6, a1
                  xor          a3, t0, t1
                  ori          t3, s8, -315
                  andi         a4, a3, 494
                  srl          a4, t5, t2
                  srl          a6, a0, a2
                  andi         zero, zero, 985
                  and          a2, a4, ra
                  slti         tp, a6, -1078
                  lui          a6, 978623
                  and          a5, a3, zero
                  or           gp, sp, tp
                  ori          a5, a3, -124
                  sltiu        t2, s5, -1079
                  sub          s10, a0, s2
                  xor          s2, s10, s10
                  sltiu        s1, tp, -761
                  nop
                  slti         t4, t5, 685
                  auipc        gp, 843126
                  ori          zero, gp, 493
                  lui          t5, 416794
                  xori         s2, s7, 1774
                  sra          gp, zero, a5
                  sltiu        a5, s2, 413
                  and          s11, sp, t3
                  andi         t1, s1, 1536
                  srli         sp, s3, 4
                  sltu         s0, a2, t2
                  slt          t3, t0, a1
                  ori          a7, a7, -1256
                  or           s7, t4, t5
                  xori         tp, a3, 996
                  sltu         tp, a2, s2
                  sra          a6, t3, gp
                  or           s5, s5, s6
                  slli         s2, s8, 3
                  lui          a5, 759812
                  lui          t3, 376885
                  and          s5, s8, ra
                  slti         tp, a0, -209
                  slti         tp, t4, 1094
                  xori         s6, t4, 906
                  ori          t4, sp, -1983
                  xor          a0, s0, t0
                  sub          s5, s6, tp
                  slli         t3, a1, 2
                  slti         t5, a6, 1479
                  nop
                  xori         a4, s4, 814
                  srai         sp, s6, 22
                  sltu         s5, t2, a7
                  nop
                  lui          t3, 957043
                  xori         a4, s11, -10
                  sub          t1, s8, s8
                  addi         t2, a6, 115
                  srli         tp, s7, 4
                  sltu         sp, t0, s5
                  and          tp, ra, s0
                  slt          a3, a7, sp
                  srai         s11, a1, 12
                  sltiu        a4, sp, 1325
                  lui          s3, 10119
                  nop
                  xori         a7, s10, -685
                  srli         s0, a2, 5
                  addi         t1, s8, -1870
                  slt          a0, s0, t5
                  xori         t3, a4, 1973
                  auipc        t1, 1004514
                  slt          sp, a7, ra
                  srl          tp, sp, s8
                  auipc        s10, 955736
                  sra          s8, t6, s0
                  sll          a7, t1, s6
                  xor          a0, s9, s7
                  sltiu        a3, s5, -72
                  sltiu        gp, s9, 1420
                  sll          s3, ra, s1
                  srl          s3, t5, s11
                  or           s5, t3, tp
                  andi         zero, a2, 323
                  or           s3, s5, s5
                  sll          sp, s2, t0
                  sll          zero, sp, gp
                  auipc        s6, 142941
                  slt          s2, t6, t2
                  slt          t4, s7, s10
                  xor          s1, tp, t6
                  srli         s6, t5, 0
                  lui          a6, 496021
                  srl          sp, t6, a3
                  lui          a3, 720713
                  andi         s1, a1, 1658
                  lui          s6, 47190
                  sra          s9, zero, a3
                  add          a5, a5, a5
                  addi         s0, tp, 164
                  addi         a0, s2, 1693
                  slt          a4, gp, s1
                  sra          zero, ra, s9
                  srai         a3, s2, 26
                  andi         a1, s10, 826
                  xor          t2, gp, s1
                  ori          sp, s6, -1330
                  sra          s5, t0, a0
                  srl          t5, t6, a1
                  srl          s0, t2, a3
                  ori          s7, t0, -450
                  ori          t3, t0, 924
                  lui          tp, 86707
                  and          t5, t1, a6
                  andi         a7, s2, -52
                  ori          a3, s7, -1701
                  srli         a6, a2, 28
                  srai         s6, t5, 3
                  sub          t1, a1, a6
                  sub          a3, s8, s10
                  lui          s6, 545615
                  xor          s0, zero, a5
                  sll          a6, s4, s10
                  xor          gp, a6, s11
                  slli         a7, a0, 23
                  or           t1, a4, s0
                  sltu         gp, a2, zero
                  slli         a4, a6, 26
                  nop
                  addi         s10, s1, 2009
                  xor          t2, ra, a2
                  lui          s5, 135201
                  addi         a3, t2, 39
                  sll          tp, s1, s7
                  srl          s11, a7, a2
                  slti         s7, s3, 814
                  sra          t5, a6, a7
                  slt          s3, a3, a3
                  sra          t5, t3, a4
                  lui          ra, 801524
                  sltu         s11, gp, a4
                  sll          s0, s8, s8
                  slt          s8, t5, s6
                  xor          a3, sp, a5
                  auipc        ra, 518311
                  andi         tp, s9, -1281
                  auipc        tp, 940244
                  andi         s9, s2, -79
                  lui          s3, 175589
                  sltu         t5, t3, s4
                  add          s10, a2, a0
                  nop
                  add          a7, a2, ra
                  sll          tp, s9, s10
                  and          gp, gp, ra
                  xori         ra, a4, -1184
                  and          ra, s4, t3
                  xori         s11, t2, -715
                  sltiu        ra, s3, -1345
                  lui          s9, 972072
                  lui          a6, 253763
                  or           a7, s8, t2
                  sltiu        s1, a3, -533
                  or           a2, sp, s4
                  srli         tp, t1, 5
                  sub          tp, ra, s2
                  add          s2, s7, zero
                  slt          s1, t1, gp
                  or           s1, tp, s2
                  sltiu        s10, s8, -290
                  lui          t3, 277708
                  addi         s2, s6, 438
                  sll          a5, a4, s11
                  srai         a2, t0, 5
                  slli         s6, s5, 19
                  xor          sp, a4, s4
                  or           tp, s1, s4
                  srai         a6, a1, 21
                  srl          gp, s11, t4
                  sll          a5, t4, t4
                  andi         a4, a1, -827
                  and          s11, t2, a4
                  slti         s8, s11, -442
                  sltiu        a7, s8, 121
                  nop
                  or           a4, s4, t6
                  lui          t2, 1010601
                  srai         t1, s0, 3
                  sltiu        s0, a5, -661
                  or           s0, ra, a6
                  srl          a6, t6, zero
                  slli         tp, s8, 11
                  add          t1, tp, a5
                  auipc        sp, 699904
                  or           s3, s6, s4
                  nop
                  srai         s0, t6, 18
                  ori          t4, s11, 399
                  slli         s2, s5, 14
                  sltiu        s11, zero, -74
                  slti         s2, t1, 1909
                  sltiu        a6, t1, 1678
                  srli         s6, ra, 27
                  slli         s9, ra, 12
                  andi         sp, a7, -1050
                  xori         a5, zero, -1324
                  sra          t4, s8, s9
                  srli         ra, s0, 6
                  ori          a1, t4, -1611
                  andi         a7, a0, 1686
                  xori         gp, s3, -602
                  sltu         s1, tp, s4
                  xor          tp, a5, s4
                  sltu         a6, ra, gp
                  slti         a2, t2, -1201
                  sub          s9, s0, s9
                  add          s7, sp, ra
                  addi         a0, s8, 1783
                  add          s7, a1, s8
                  nop
                  lui          s0, 349062
                  xori         s7, t0, 133
                  slt          s0, sp, t2
                  srli         s3, tp, 2
                  addi         sp, a7, -1359
                  ori          t2, t3, -1248
                  xori         s5, s2, 1363
                  sltiu        a5, s6, -1029
                  and          t3, t6, s7
                  or           a0, s8, ra
                  sltu         s0, s2, t6
                  srai         s7, s2, 9
                  lui          tp, 472859
                  auipc        s2, 525166
                  and          s10, t3, s1
                  ori          s8, s4, 1002
                  slti         s6, s10, -443
                  lui          tp, 190529
                  slt          t1, t1, s3
                  srli         a0, s10, 15
                  addi         s2, s6, 1299
                  addi         a5, a7, -1242
                  srli         a3, tp, 10
                  slli         t3, sp, 23
                  addi         s6, a4, -1591
                  nop
                  or           s0, t6, t5
                  slti         zero, a5, 782
                  sra          s1, s10, s2
                  ori          zero, t3, -25
                  sub          ra, sp, a2
                  sltiu        a1, zero, 918
                  slli         a6, ra, 25
                  lui          s3, 1001766
                  srai         a1, t3, 30
                  slli         t4, sp, 24
                  andi         s9, s5, 1404
                  and          a5, sp, s1
                  srl          s2, a5, t2
                  sltiu        a7, gp, -979
                  xor          s3, s11, s1
                  srli         a7, t4, 19
                  auipc        a5, 938550
                  sltiu        s1, t0, 768
                  slli         a1, zero, 6
                  ori          zero, s7, 1147
                  sltiu        s5, s0, -1957
                  slti         a0, s11, -827
                  andi         t5, s8, 464
                  andi         a7, a7, 1095
                  srai         a3, ra, 23
                  srl          s1, a5, a2
                  slli         ra, t0, 28
                  srl          s10, s9, s2
                  sltiu        a4, s7, -1281
                  srai         s9, t6, 31
                  andi         s7, a1, 346
                  ori          t4, s6, -1828
                  and          a0, s11, s2
                  sll          s1, a6, s10
                  add          gp, s2, zero
                  addi         t2, s5, 1282
                  slli         s9, s1, 20
                  auipc        t4, 810074
                  sltu         t4, tp, tp
                  xor          s6, t4, s1
                  xori         s3, a0, -1973
                  slt          s8, s10, s2
                  ori          s0, s9, -738
                  srai         tp, s2, 2
                  slti         s11, a1, -228
                  add          t3, t4, a7
                  sub          a1, s4, a4
                  srli         s7, zero, 12
                  slli         s8, a2, 15
                  slti         sp, s11, -1702
                  srai         ra, s9, 6
                  ori          s2, s9, 1930
                  lui          a4, 392765
                  slti         s7, s2, 1005
                  srl          s7, s10, gp
                  ori          a3, s5, 1884
                  sltiu        a5, s9, 1237
                  ori          s11, s2, 704
                  add          a3, s5, s9
                  xor          a1, s0, a7
                  srl          s8, tp, s1
                  slt          a6, s9, tp
                  auipc        a1, 292508
                  xori         t5, ra, -1295
                  nop
                  sub          s10, gp, s7
                  ori          s9, a3, -1736
                  ori          s8, t6, 1624
                  andi         gp, s11, 1459
                  xori         sp, s10, -734
                  sltu         t2, tp, a5
                  and          s10, s2, tp
                  auipc        s10, 379468
                  auipc        s1, 555328
                  xori         s2, s1, -142
                  srli         s5, t1, 27
                  lui          s11, 603801
                  slti         t3, s11, -1512
                  or           ra, ra, s2
                  srai         a0, s11, 21
                  addi         t3, s3, 1696
                  xori         s0, s3, 1636
                  slti         a0, t4, -1959
                  lui          a0, 180018
                  sub          sp, s2, t1
                  addi         a7, s10, 1973
                  ori          a2, a1, -869
                  or           s8, s11, s6
                  srli         t3, t3, 29
                  add          s2, a2, a2
                  xor          tp, s2, a3
                  xor          s5, s10, s1
                  xor          t3, s2, s7
                  srl          s8, s8, s6
                  or           a1, s6, a4
                  srl          gp, a7, a3
                  sra          s5, t5, s2
                  addi         a3, s11, -404
                  ori          zero, s11, 533
                  auipc        a4, 807911
                  nop
                  xor          zero, t5, a5
                  slli         tp, s0, 15
                  sll          a7, a5, a6
                  xor          t4, t2, s0
                  srai         t4, a0, 26
                  sra          t1, a1, s0
                  xor          a3, t5, t6
                  nop
                  ori          s6, s5, -1982
                  xor          a5, t3, t6
                  ori          s8, ra, -812
                  and          s5, sp, s9
                  slti         s9, s10, 225
                  auipc        a1, 757104
                  ori          t4, t2, 205
                  slli         ra, t6, 6
                  auipc        a7, 518414
                  slt          s1, t4, t5
                  srai         s6, a1, 19
                  ori          s0, ra, 154
                  lui          a1, 1056
                  addi         t2, a2, 170
                  slti         s5, t2, -796
                  srli         t1, s8, 3
                  sub          a1, s6, t3
                  ori          t2, t5, 811
                  slt          a6, s9, s10
                  srli         t5, a5, 7
                  and          zero, t0, a7
                  srai         s10, s9, 13
                  slli         t5, gp, 30
                  addi         a5, s1, -2029
                  addi         s1, s3, -541
                  sltu         s11, s9, s9
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s10, 0xffffffff
                  li           s7, 0x80000000
                  li           a2, 0x0
                  li           a6, 0xffffffff
                  li           gp, 0xffffffff
                  li           tp, 0x80000000
                  li           a7, 0xffffffff
                  li           t5, 0xe9793e0a
                  li           s11, 0x5f3779f6
                  add          gp, t5, s7
                  addi         a6, t1, 1592
                  sub          a7, t5, t1
                  sub          a6, s10, t1
                  lui          gp, 944253
                  auipc        t1, 541754
                  add          t5, s11, a6
                  addi         t5, a7, 1856
                  sub          a6, s10, t1
                  nop
                  add          s11, a6, gp
                  auipc        tp, 601219
                  add          tp, a7, a6
                  sub          t1, a7, a6
                  lui          s7, 581578
                  add          s10, a7, a7 #end riscv_int_numeric_corner_stream_13
                  and          s5, s8, t3
                  sll          a7, a2, s3
                  lui          a3, 36509
                  auipc        t1, 390195
                  sltiu        s3, t1, -1002
                  or           a2, s7, s1
                  slti         s6, t0, -872
                  slt          a5, a7, s8
                  auipc        a5, 269070
                  ori          s8, t2, -738
                  lui          a4, 1028701
                  sra          t1, s10, sp
                  auipc        a1, 44411
                  slti         s8, a0, 896
                  xori         a2, s9, 217
                  addi         s6, t0, -1072
                  sra          s5, a1, t3
                  sra          ra, s4, ra
                  or           s9, s6, a2
                  srl          t3, t3, ra
                  xori         t1, s9, 1036
                  sltiu        a4, a3, -429
                  andi         s6, s11, 1437
                  xor          s7, gp, t1
                  and          a6, s9, a1
                  sltiu        gp, a3, 1603
                  auipc        t5, 72115
                  ori          s9, a5, -1889
                  addi         a5, s9, -628
                  srli         s9, t0, 20
                  add          gp, t4, t2
                  srai         sp, a0, 1
                  slli         ra, t4, 20
                  srl          s1, t1, s3
                  lui          gp, 786607
                  srl          a5, s5, tp
                  slti         t2, t1, -1681
                  sll          a6, a1, gp
                  sltu         t1, s7, sp
                  lui          ra, 188673
                  sll          tp, a2, s8
                  srli         t3, a3, 16
                  sub          s3, a0, a0
                  sra          s6, s6, a1
                  addi         t2, t6, 1475
                  srli         s1, s6, 4
                  slli         s5, a3, 12
                  slti         t4, s0, -527
                  slti         s1, s11, -156
                  sll          a0, t1, s4
                  srli         a1, s3, 13
                  srl          gp, t0, s7
                  add          t3, s9, s11
                  lui          s0, 24967
                  nop
                  slt          zero, s11, s0
                  addi         s8, t5, 156
                  sll          s7, s8, t6
                  xor          s3, s9, s0
                  add          s11, a4, a4
                  lui          s0, 202274
                  xor          t2, a2, s4
                  add          a7, ra, t1
                  nop
                  add          s6, t6, a0
                  sltiu        a4, s5, -1223
                  slli         sp, sp, 31
                  slt          zero, s7, tp
                  slli         a3, t6, 7
                  lui          a6, 887912
                  add          s9, ra, sp
                  andi         s10, s6, 1957
                  srli         ra, s4, 16
                  nop
                  auipc        s7, 376933
                  ori          s6, s6, -553
                  auipc        a2, 460302
                  andi         a7, a7, 1562
                  nop
                  add          s3, t4, a2
                  add          a4, s0, tp
                  sltu         t2, a1, s10
                  sltiu        s2, a0, 961
                  lui          t2, 734763
                  andi         a6, zero, -1620
                  add          sp, a5, a3
                  addi         s1, s5, 1253
                  ori          a6, sp, -1905
                  slti         a3, tp, -375
                  srai         t4, s4, 5
                  sub          a4, t1, s6
                  sltu         sp, gp, t3
                  srl          s6, a5, a2
                  add          tp, a5, t4
                  and          t1, s9, tp
                  srai         s2, s10, 19
                  srl          s6, a0, a4
                  nop
                  addi         a6, s4, 265
                  sra          a7, a6, a6
                  slli         a7, s6, 4
                  or           s8, a2, a1
                  slt          a4, a7, a5
                  sub          a2, t0, a4
                  or           s11, t5, t4
                  or           gp, t2, s0
                  slt          s3, a7, a3
                  sltu         t2, a1, t1
                  sra          s7, t5, a6
                  sll          s9, s9, a5
                  sltu         a2, s6, s6
                  ori          s8, s0, -798
                  auipc        s10, 747185
                  slli         s5, a0, 0
                  srli         zero, tp, 7
                  or           s11, ra, zero
                  srli         s10, t4, 5
                  lui          s7, 76732
                  sll          s8, s7, t4
                  lui          sp, 895051
                  andi         t2, s7, 1037
                  auipc        a3, 849042
                  slti         s10, zero, -1968
                  sub          t3, a7, zero
                  sll          t4, t5, s6
                  xor          t5, s2, s6
                  addi         s10, t4, 69
                  and          t1, s6, s8
                  sltu         t2, s1, a7
                  slli         s11, t1, 31
                  add          s10, a5, tp
                  srl          s8, a0, t5
                  slt          s11, a7, s5
                  auipc        s0, 143365
                  ori          t3, s2, 946
                  sub          s8, s11, a2
                  sltu         gp, s4, a7
                  addi         t5, s9, 1808
                  nop
                  srli         gp, s3, 22
                  sltiu        s0, a4, -1296
                  nop
                  srl          a7, s0, s2
                  sll          t3, a4, t5
                  sll          a1, s2, s0
                  or           a7, s7, s7
                  auipc        s11, 504754
                  xori         s11, sp, 313
                  xor          gp, s10, gp
                  slli         a5, a6, 14
                  andi         t1, s2, -763
                  xor          s3, s5, s2
                  sra          t4, t4, t1
                  sra          a6, s9, t0
                  andi         t5, t0, -407
                  srai         s1, t2, 12
                  slti         a6, a4, -1997
                  auipc        t1, 129099
                  and          t1, s8, t1
                  sltu         s0, t4, s2
                  srai         t5, s3, 18
                  srli         s11, a6, 18
                  or           s11, s3, s11
                  ori          s5, s9, 1703
                  slli         t1, t5, 21
                  or           a5, s8, t4
                  addi         s6, s0, -446
                  sub          sp, s7, a5
                  auipc        t5, 219823
                  add          a2, tp, s6
                  xori         s5, s9, 365
                  xor          t4, s7, a6
                  slt          zero, t3, s3
                  addi         a7, a4, -1063
                  slli         tp, t0, 24
                  slt          gp, tp, t0
                  slti         t5, a3, 1110
                  slli         s0, sp, 28
                  sra          a4, gp, t1
                  srli         tp, s11, 11
                  sltiu        a3, tp, -1530
                  andi         a6, t0, 1056
                  andi         zero, s4, -1183
                  srl          a0, s3, zero
                  sub          s7, t1, t4
                  sll          s6, ra, s2
                  sll          s8, t5, a5
                  add          a7, a3, a3
                  sll          t4, t4, ra
                  srai         s3, s1, 30
                  and          a2, a2, s0
                  sll          t4, s11, s9
                  and          a3, s4, gp
                  sltiu        a7, a6, -731
                  slt          tp, gp, s10
                  slti         a4, t1, -910
                  or           a6, a5, s8
                  ori          t3, a5, 727
                  auipc        s5, 639717
                  sltiu        s10, t0, -809
                  auipc        a0, 437900
                  auipc        a5, 1016064
                  srli         s8, t2, 25
                  xori         tp, s3, 201
                  sra          s0, t5, a1
                  srli         a4, t2, 11
                  sltiu        tp, a1, -817
                  sra          gp, tp, s8
                  srli         s11, s9, 25
                  sltu         t3, a3, gp
                  sll          ra, a6, a3
                  srai         s6, s3, 7
                  add          gp, t0, a1
                  nop
                  srai         zero, a5, 15
                  sra          t3, s10, a5
                  sltu         s2, s1, s6
                  slt          tp, s10, a5
                  slli         a0, s5, 3
                  and          s5, zero, a4
                  or           ra, t6, t5
                  nop
                  sltu         a5, a0, a4
                  add          ra, a1, a2
                  xor          a6, a2, a3
                  addi         s1, s5, -242
                  ori          sp, s7, 799
                  add          s2, a7, a1
                  add          a4, tp, t2
                  sub          t1, tp, s5
                  sltu         a6, s9, s11
                  sll          s1, t0, a2
                  andi         a7, s11, 1810
                  nop
                  sra          s0, t2, a6
                  xori         a5, s7, 499
                  xor          s8, gp, gp
                  slti         s3, s1, -763
                  srl          t4, s3, t6
                  xor          sp, s4, a5
                  sub          s7, s9, s10
                  srai         s9, a6, 19
                  slli         s0, s10, 24
                  addi         t3, gp, 378
                  srai         a2, s0, 5
                  andi         s6, sp, -153
                  andi         s1, t1, 1529
                  sra          a0, a1, zero
                  srl          a7, t1, a7
                  slti         a4, t3, -1873
                  slli         sp, a6, 23
                  xor          s3, t3, t2
                  slli         t2, a7, 23
                  sra          t5, a7, a2
                  addi         a3, a4, -1250
                  sub          sp, s5, ra
                  lui          sp, 422359
                  and          s8, s10, ra
                  ori          s5, zero, 1420
                  andi         ra, a0, -1133
                  sra          s6, a4, t5
                  slti         a0, s3, -1244
                  add          tp, t3, s8
                  auipc        t3, 665601
                  ori          t2, t5, -391
                  xori         s6, s10, 864
                  or           a1, s8, a0
                  nop
                  lui          a2, 726737
                  addi         s8, sp, -34
                  addi         a1, t6, 144
                  lui          s3, 631726
                  sll          a1, gp, a0
                  slti         a1, t5, 342
                  and          s3, gp, a7
                  and          t3, s2, a1
                  sra          ra, a1, s2
                  sll          t1, s3, a1
                  and          zero, t3, t0
                  slli         a6, tp, 17
                  srai         a6, t6, 31
                  nop
                  xor          t2, s11, t1
                  add          a2, s5, s9
                  srli         t5, a7, 11
                  andi         s6, gp, 466
                  li           a2, 0x53f47055 #start riscv_int_numeric_corner_stream_18
                  li           t5, 0xa8c3dcd8
                  li           t2, 0x80000000
                  li           a3, 0x51c32742
                  li           s7, 0xffffffff
                  li           ra, 0xb5c437c2
                  li           t3, 0x0
                  li           gp, 0x0
                  li           a4, 0xffffffff
                  li           s1, 0xffffffff
                  auipc        ra, 929629
                  nop
                  sub          a2, a3, a3
                  auipc        ra, 381812
                  sub          t5, a3, a2
                  addi         ra, a4, 373
                  auipc        t3, 80628
                  nop
                  addi         t3, a2, 722
                  addi         a2, a4, 0
                  addi         a3, gp, -1629
                  sub          t2, t3, s1
                  addi         a2, t5, -1390
                  auipc        ra, 743418
                  sub          a2, a2, t5
                  auipc        s1, 200649
                  sub          a2, t3, a2
                  lui          t2, 445483
                  nop
                  add          s1, a2, s7
                  add          gp, s1, gp
                  add          a2, s1, s7
                  sub          t2, t5, s1
                  addi         a2, ra, 570
                  nop
                  auipc        a3, 551931
                  sub          ra, a4, t2
                  auipc        t5, 73481 #end riscv_int_numeric_corner_stream_18
                  nop
                  lui          s8, 182347
                  sltiu        t5, a2, 1218
                  or           tp, t0, s8
                  xor          s8, s4, s4
                  add          a6, a6, t5
                  slt          a1, t3, t2
                  and          a0, a0, zero
                  auipc        a2, 5311
                  or           s3, t3, s7
                  slli         t3, s4, 1
                  addi         a2, gp, -2046
                  andi         a4, t2, -1092
                  slti         s11, ra, 1083
                  add          a5, s2, s1
                  sltu         s11, a2, s7
                  sra          s6, t2, a1
                  nop
                  lui          sp, 306682
                  slli         t5, a0, 10
                  xori         s0, s4, -1711
                  or           s6, s1, a6
                  auipc        a2, 335044
                  srli         s7, gp, 2
                  sltiu        s8, sp, 432
                  andi         gp, a5, 27
                  addi         s6, zero, 1275
                  slti         s1, s6, 1212
                  or           s6, a7, s4
                  srli         zero, a1, 20
                  srl          sp, a6, t4
                  xor          a2, s2, sp
                  and          s5, s4, t5
                  slt          ra, s0, t3
                  and          zero, ra, a3
                  ori          a0, s5, 1541
                  slli         tp, s3, 27
                  slli         a7, t0, 27
                  and          t1, zero, zero
                  xori         s8, a1, 1569
                  lui          zero, 235730
                  and          a5, a5, a4
                  xori         zero, s7, 1902
                  slti         t3, t1, 1561
                  or           t5, t2, t6
                  xor          sp, t6, t0
                  auipc        sp, 502748
                  xori         s5, t5, -219
                  addi         s1, gp, -1885
                  xori         t5, tp, 1463
                  sltiu        t4, s4, -434
                  andi         a4, s4, 127
                  lui          t1, 589710
                  sll          s5, s7, s5
                  xori         a2, gp, -189
                  srl          sp, s5, t2
                  auipc        ra, 737427
                  sub          s9, s10, s10
                  andi         t1, t0, -1830
                  auipc        a6, 533230
                  add          s10, t0, t5
                  sll          t4, gp, a5
                  xori         t3, t4, -459
                  sltiu        s6, s3, -1127
                  ori          t3, s6, 142
                  xor          s11, t1, a7
                  xori         t3, s9, 387
                  lui          s3, 598731
                  slt          ra, a5, a7
                  sll          s3, s4, tp
                  srli         t3, a5, 11
                  slti         t5, t2, 487
                  slti         a0, a6, -882
                  add          a3, a0, a1
                  slti         s2, s5, -691
                  srai         a7, a6, 5
                  slli         a3, s5, 31
                  sll          t5, a7, s2
                  srli         s0, gp, 26
                  sub          tp, s4, a2
                  slti         t5, t5, 926
                  and          a7, a1, s4
                  slli         t5, a0, 9
                  auipc        zero, 616223
                  and          s10, s7, ra
                  xori         t3, a0, -206
                  add          a2, t4, s0
                  slti         s5, s4, -1230
                  srli         s2, a1, 23
                  srai         a2, s5, 17
                  lui          a4, 177321
                  auipc        tp, 494634
                  srai         zero, t2, 15
                  slli         sp, zero, 18
                  addi         a4, a2, -1418
                  andi         s6, t2, 1248
                  xori         s10, a6, -1541
                  nop
                  sra          sp, t1, s9
                  addi         a3, s4, 1379
                  sra          t5, a7, s6
                  slti         t5, t1, -1126
                  addi         s2, a3, 1592
                  nop
                  srai         s6, a5, 19
                  add          t4, sp, a5
                  add          a3, s9, s8
                  ori          s1, a1, 1628
                  or           gp, s10, a7
                  xori         tp, s6, 840
                  xori         a5, t3, 1795
                  lui          a6, 753714
                  xori         s9, s1, 221
                  ori          s0, ra, -1562
                  add          a5, s1, zero
                  xori         s3, a3, -352
                  slt          a5, s6, s2
                  srl          a1, gp, ra
                  slt          a4, s10, t0
                  and          zero, t2, tp
                  slt          a1, sp, a5
                  addi         tp, sp, -1969
                  slti         s11, t2, -1009
                  sltiu        a0, s9, -875
                  xori         t2, ra, 435
                  slt          t2, zero, t2
                  srl          a1, a4, a5
                  sltiu        s10, t1, -1366
                  sltiu        t1, s3, -135
                  slti         t4, ra, -831
                  xori         s3, s5, 792
                  srai         sp, s2, 2
                  sra          a0, s11, s8
                  auipc        s7, 115132
                  xor          sp, s4, s2
                  addi         a7, tp, 282
                  sltiu        s6, t2, 629
                  sra          s7, a0, t6
                  sra          s1, s4, t4
                  lui          s3, 53826
                  sltu         s8, zero, s3
                  andi         ra, zero, 1360
                  ori          s8, s10, -970
                  sll          t4, t6, s8
                  add          a3, a1, s11
                  lui          t4, 889697
                  sra          s8, gp, a0
                  lui          s11, 612656
                  sltiu        tp, t6, -1047
                  addi         t2, s6, 549
                  or           a0, t1, t6
                  sra          s2, gp, ra
                  and          ra, s8, a0
                  sra          s2, a3, s0
                  sll          s1, t1, s11
                  auipc        s3, 509153
                  nop
                  slli         a7, s3, 19
                  xori         s9, s10, 486
                  xori         s8, a6, -1785
                  srl          s5, ra, s7
                  slt          s11, s6, a3
                  slli         t5, gp, 26
                  slti         s6, a6, -1600
                  or           t1, t5, s0
                  lui          s6, 947570
                  addi         s11, s1, 1723
                  add          a7, a4, gp
                  sll          a3, a0, s8
                  srli         gp, zero, 28
                  srli         s3, t1, 22
                  slli         s6, s0, 22
                  slti         a2, s4, 774
                  srai         s7, a0, 12
                  slt          gp, a0, s0
                  xori         a0, s9, 429
                  sra          gp, t1, s5
                  sra          s1, s9, s3
                  ori          sp, s8, 1159
                  slt          a4, tp, s8
                  and          a5, s10, a3
                  sltu         zero, gp, t3
                  add          s0, a2, s9
                  and          s10, t1, s0
                  sra          a0, s11, a1
                  slt          s5, t1, s10
                  andi         s9, t4, -1666
                  xori         s7, s9, -305
                  auipc        s7, 811416
                  add          s6, s9, a1
                  xor          s3, s6, a6
                  add          s2, gp, s1
                  ori          s7, s0, -543
                  and          a1, s7, sp
                  addi         a4, s8, 559
                  sra          t5, ra, a5
                  and          a3, s2, t4
                  or           a5, a2, s5
                  slti         s3, a3, -1989
                  slli         zero, zero, 25
                  srl          s5, s9, sp
                  addi         a2, a7, 1412
                  slti         zero, a4, -2014
                  xori         s1, s2, 1331
                  sub          tp, tp, a3
                  add          t5, a3, t6
                  and          gp, t2, gp
                  slli         ra, t5, 23
                  add          s9, t5, tp
                  sll          a2, a3, a5
                  slli         a1, s2, 16
                  xor          s0, s2, s2
                  xor          zero, a0, t6
                  add          a7, s10, sp
                  sltu         s2, s7, gp
                  or           s8, t3, s7
                  andi         s6, a5, -1833
                  sll          s11, s4, s1
                  srl          a7, s6, s4
                  slti         a6, a7, 1779
                  and          a7, a6, t5
                  and          s9, gp, t3
                  and          a6, s0, tp
                  slli         s2, t3, 27
                  and          a5, zero, t6
                  sra          t2, a3, s3
                  ori          sp, s6, -562
                  srl          s1, s0, a5
                  lui          s10, 978081
                  sltu         s5, s1, t3
                  xori         zero, t3, -1652
                  slt          a2, s11, a5
                  addi         zero, a3, -788
                  sll          ra, s0, gp
                  srli         s1, s4, 18
                  slti         s10, a0, 1228
                  xor          ra, s10, s6
                  and          a5, t0, s11
                  andi         s0, t6, 172
                  addi         ra, a0, -613
                  srl          s6, a1, s9
                  sll          gp, a6, t3
                  sltiu        s9, a6, 1001
                  add          s3, t5, t2
                  or           s8, t5, t3
                  srai         t4, t3, 18
                  sra          ra, t4, s7
                  xori         gp, s4, -1658
                  and          s6, s11, s6
                  srli         a0, s5, 28
                  add          s3, t3, gp
                  ori          a7, s10, 446
                  srai         t3, s3, 5
                  and          s9, ra, s8
                  slti         a2, t2, -797
                  sra          tp, a2, t1
                  add          s7, ra, a3
                  slt          a6, gp, t1
                  xori         a7, a4, -1270
                  srai         sp, a4, 27
                  slti         a6, a1, 1929
                  and          ra, t5, s1
                  sra          s7, s4, s10
                  ori          ra, s2, -923
                  slti         tp, s7, -2018
                  xori         s2, t6, 1365
                  srli         t3, t5, 26
                  xori         a5, t3, 761
                  or           t2, s5, a5
                  andi         s7, s9, -248
                  sra          s11, t5, t2
                  sra          sp, s7, a5
                  nop
                  nop
                  sltiu        ra, a3, 85
                  auipc        s9, 442442
                  auipc        ra, 675465
                  andi         sp, zero, 867
                  sub          a6, a1, s8
                  andi         s3, s3, -495
                  sub          s1, a1, a6
                  or           sp, a5, a0
                  slt          a7, t2, s9
                  xor          s7, s6, a6
                  add          s10, a6, s3
                  sub          s5, t3, zero
                  sra          ra, s3, s5
                  slli         t5, s11, 0
                  lui          s3, 636780
                  slli         ra, t3, 17
                  or           a5, a3, t2
                  and          t2, zero, s0
                  slti         s11, t5, 857
                  xori         zero, s4, -444
                  andi         a0, t0, 1413
                  slti         t5, a0, 1800
                  addi         zero, t6, 2022
                  slli         s6, t2, 2
                  srl          s7, s0, a5
                  add          gp, s10, a6
                  sltu         s3, t4, a0
                  lui          sp, 165540
                  sra          s11, s4, a6
                  xori         s0, s9, 1354
                  slti         t3, t6, 1605
                  sll          sp, ra, a5
                  slt          s2, s11, s8
                  andi         s6, tp, -875
                  sltu         s5, s1, a5
                  ori          a2, a5, 341
                  srai         t1, s2, 5
                  addi         t5, s5, -1682
                  slli         a6, ra, 16
                  addi         a4, s8, -700
                  sll          a2, gp, t1
                  or           t2, s9, s10
                  ori          s6, s4, 1795
                  slli         t2, s5, 21
                  srli         a0, s8, 25
                  slti         a0, t0, 1649
                  srl          a6, t5, s10
                  srai         ra, a6, 3
                  slti         gp, s9, -2028
                  add          s11, s9, tp
                  slt          s10, a2, zero
                  auipc        a5, 657813
                  sltiu        a5, a2, -221
                  xor          s11, a6, sp
                  sll          ra, s11, s6
                  add          a4, t2, a3
                  andi         a1, s4, 1935
                  slli         sp, a2, 25
                  lui          s2, 897379
                  sltiu        t3, sp, 1335
                  srai         s3, s8, 14
                  xori         sp, tp, -754
                  andi         t2, a5, 1310
                  and          a2, a3, s10
                  xori         sp, s11, 1964
                  li           s9, 0xcaaf735b #start riscv_int_numeric_corner_stream_2
                  li           s6, 0xffffffff
                  li           t5, 0xffffffff
                  li           a1, 0xffffffff
                  li           a5, 0x80000000
                  li           t4, 0xc5db98f
                  li           s2, 0x80000000
                  li           a2, 0x80000000
                  li           s0, 0x0
                  li           s5, 0x80000000
                  addi         s6, t4, -1409
                  lui          a5, 677901
                  lui          s9, 355947
                  addi         a5, a5, -1603
                  nop
                  lui          t4, 754147
                  nop
                  sub          a5, s6, t4
                  nop
                  addi         a5, s6, -1194
                  nop
                  lui          s2, 604248
                  lui          s9, 835119
                  sub          a2, a1, s5
                  auipc        s5, 121399
                  addi         a2, s0, -45
                  sub          t4, a5, a2
                  nop
                  sub          t5, s0, s5
                  add          t4, s5, a2
                  addi         t5, s2, 1550
                  auipc        s6, 534397
                  addi         s6, s2, -533 #end riscv_int_numeric_corner_stream_2
                  srli         t4, t4, 18
                  slti         s2, ra, 922
                  slt          t4, t5, t4
                  or           t5, a0, s9
                  ori          sp, s11, 1838
                  add          tp, s0, t6
                  sltiu        s10, a6, -808
                  srli         a2, a5, 28
                  slli         ra, s4, 26
                  sltu         a6, s9, s11
                  slti         sp, s5, -1339
                  sub          s10, t1, s6
                  andi         s5, t1, -1566
                  slt          s8, s9, a2
                  andi         s3, a7, 1844
                  auipc        t4, 154809
                  xori         tp, s7, -1279
                  slli         sp, sp, 8
                  sub          s9, t0, t3
                  andi         t4, t3, -1970
                  ori          s2, a2, 2023
                  sra          s9, s9, tp
                  slt          t5, a7, ra
                  slt          sp, t2, s11
                  xor          a0, a0, t1
                  add          ra, s7, tp
                  andi         t1, a2, -301
                  or           a3, s5, s7
                  auipc        a2, 593426
                  srai         a1, t5, 11
                  sltu         t2, a7, ra
                  slt          gp, gp, t5
                  sltiu        s5, s10, 389
                  or           s1, s7, a0
                  sll          s8, gp, a2
                  or           t4, t1, t4
                  xori         a1, tp, -891
                  add          s7, gp, a5
                  xor          a0, a6, a6
                  slli         s9, s2, 27
                  sub          s1, a5, a4
                  sub          t4, t5, t5
                  and          s8, t1, gp
                  sra          s10, t2, s5
                  ori          zero, s6, 1267
                  xori         s0, tp, -61
                  sra          s2, s8, t4
                  auipc        a3, 271151
                  xori         s10, t5, -1129
                  ori          s11, a2, 427
                  srl          ra, s1, a0
                  slti         t2, gp, 1363
                  sltu         s10, a0, s10
                  add          a3, a6, a7
                  sltu         s3, a6, t3
                  sltu         a5, s8, s9
                  addi         a3, sp, -1291
                  or           s7, a5, s3
                  sra          s10, a5, s2
                  add          s8, s7, s3
                  sra          t1, a1, ra
                  lui          gp, 979708
                  slt          a6, s6, a7
                  sub          zero, s7, t2
                  sltu         a3, a4, a7
                  nop
                  auipc        a0, 495170
                  slli         a0, t3, 1
                  xor          a5, s11, t5
                  xor          a3, t6, s11
                  sltiu        s9, t6, 358
                  sltiu        s10, gp, -1131
                  slt          s3, s6, a0
                  andi         a6, s7, 579
                  srl          tp, sp, t0
                  sltiu        s8, s9, -1708
                  srai         a0, sp, 19
                  slli         s9, tp, 19
                  sll          s11, s4, a2
                  slti         t3, s8, 50
                  auipc        a5, 752195
                  sltiu        s11, ra, 1245
                  nop
                  sub          s11, a4, t1
                  andi         s8, t2, -2046
                  slt          t4, a6, ra
                  slli         s5, a7, 0
                  xor          a7, a3, s1
                  lui          s7, 386063
                  or           a4, s1, t6
                  sltiu        t1, a4, 1914
                  slt          s5, t5, t2
                  srli         s8, ra, 17
                  srli         s6, tp, 22
                  nop
                  srli         s5, ra, 3
                  sra          s11, a2, t2
                  lui          s11, 898271
                  slt          s11, t6, t5
                  slti         sp, t2, -1756
                  srli         s6, a2, 4
                  sltiu        zero, gp, 294
                  sub          a4, a2, gp
                  srai         gp, t2, 22
                  sltiu        s1, a6, 526
                  xori         t2, a7, 447
                  ori          ra, t6, -770
                  sltu         ra, s1, t4
                  sll          ra, a0, tp
                  or           gp, t2, t4
                  sll          s11, s0, a1
                  xor          t5, tp, s2
                  srl          s1, a6, s1
                  ori          s3, a1, 578
                  sub          s5, t1, s2
                  addi         s6, t2, -495
                  and          t4, a7, ra
                  ori          t2, a1, -1296
                  srli         t1, s0, 28
                  slli         s11, t5, 16
                  andi         s7, tp, 1643
                  lui          s5, 464868
                  and          ra, a1, tp
                  lui          t3, 415424
                  srai         t3, t0, 24
                  slti         s8, t6, 439
                  xor          t3, t5, a3
                  sltiu        t1, s11, -405
                  or           sp, s1, gp
                  andi         zero, s11, -748
                  srl          a3, a4, a0
                  sub          a1, s0, s0
                  auipc        zero, 730101
                  srl          t5, a6, gp
                  addi         a1, zero, 217
                  and          ra, s1, s3
                  nop
                  slti         a6, s3, -2001
                  srai         t1, s6, 10
                  xori         a7, t5, 2
                  andi         t2, a7, -561
                  sra          zero, a3, zero
                  ori          s2, s0, -1872
                  lui          a2, 938773
                  srli         s5, s10, 22
                  slti         ra, s5, 537
                  srli         s5, s7, 23
                  and          t4, s4, s10
                  xori         gp, s10, 423
                  sra          a7, t2, s4
                  sltiu        a3, a2, 1353
                  srli         s7, s8, 4
                  sra          s0, a3, s0
                  sra          s0, s2, t2
                  sll          a2, t1, s0
                  slt          sp, t6, s4
                  sltu         s3, s1, a3
                  ori          s7, ra, -1200
                  sub          t2, a6, s6
                  xori         gp, a1, -1793
                  andi         s6, a1, 1255
                  srli         a7, tp, 28
                  slti         a6, a7, -1197
                  and          t4, t4, s0
                  srai         t3, t1, 1
                  xor          s10, s9, s5
                  or           s8, s0, sp
                  slt          t5, sp, t6
                  sra          s1, s9, s0
                  ori          a1, a6, -41
                  slli         a7, a0, 16
                  ori          s9, a0, -1825
                  sll          ra, a1, s1
                  slt          s0, ra, t6
                  and          a2, sp, t4
                  sll          s9, s0, a0
                  slt          sp, zero, gp
                  nop
                  lui          a6, 220799
                  andi         a5, ra, 291
                  and          a6, s10, s6
                  sltiu        a7, gp, 1658
                  sltu         a5, s3, s4
                  slti         a2, s0, -213
                  srli         zero, gp, 1
                  ori          s10, t4, 890
                  slli         t2, gp, 21
                  sltiu        tp, a3, 630
                  srli         a2, t3, 8
                  slt          s9, tp, s7
                  sltiu        t3, t2, -452
                  srli         sp, s3, 9
                  slt          s2, s1, s8
                  slli         a6, a5, 24
                  srl          s6, a4, s7
                  sub          a4, a2, s5
                  ori          t5, s7, 336
                  add          a4, a2, s2
                  andi         t3, s7, 356
                  or           s2, gp, a4
                  slti         t1, t0, -704
                  srli         t2, a7, 30
                  add          s0, s5, s7
                  sll          t4, t0, s9
                  sra          s5, a6, s2
                  slti         s5, s10, 847
                  srli         s10, s0, 17
                  xori         a4, s11, -1532
                  lui          a2, 1021663
                  or           s5, t6, s9
                  slli         t1, s2, 10
                  ori          a3, a1, 1498
                  lui          a6, 889414
                  and          s9, t1, t6
                  and          sp, t2, s3
                  srli         a7, ra, 22
                  add          t5, s2, s2
                  slli         t5, s3, 0
                  sltiu        t1, a6, -470
                  xori         a0, t3, -1768
                  xor          s7, s5, a7
                  addi         a5, t3, -1434
                  srli         t2, s6, 27
                  slti         s9, a1, -82
                  addi         t4, gp, -488
                  xor          t3, s8, a3
                  xor          s8, tp, s9
                  lui          sp, 882135
                  and          s10, s0, ra
                  xor          t5, ra, s1
                  xori         t3, s8, -255
                  auipc        s10, 1021258
                  srl          a2, s0, s1
                  slti         s6, t3, -1656
                  xori         s9, a7, 955
                  or           s10, s3, s5
                  slti         a0, t3, 1828
                  lui          s8, 105519
                  sra          s1, s1, s5
                  sra          s2, t2, a6
                  srli         ra, a6, 20
                  sub          a6, a7, zero
                  andi         s11, gp, -1289
                  and          t4, t2, a7
                  and          s1, a5, t0
                  and          s10, zero, s5
                  andi         a1, a5, -162
                  sltiu        gp, t5, 1639
                  and          t4, t1, s5
                  add          a2, a7, t6
                  lui          a2, 967363
                  nop
                  slt          t5, s4, a6
                  sltu         a3, sp, s9
                  addi         a5, a0, -554
                  slt          s9, a3, t3
                  auipc        s6, 424500
                  auipc        s5, 912993
                  srai         s6, t2, 8
                  xori         t1, a5, 398
                  slli         a2, s4, 28
                  srai         s3, t5, 15
                  add          t5, t4, s6
                  auipc        a5, 894503
                  addi         t1, a1, 1792
                  xor          a0, a4, s0
                  slli         a4, s7, 12
                  lui          zero, 169036
                  sltu         a1, t4, ra
                  addi         s8, ra, 204
                  srai         s8, s7, 3
                  sltiu        t4, s6, -1963
                  sra          a2, sp, sp
                  xor          a4, s11, tp
                  xor          a7, s10, s4
                  sra          a7, t3, s8
                  xor          s6, tp, a6
                  srl          zero, t4, s6
                  xor          a1, a1, t4
                  ori          a0, t3, -1316
                  xor          sp, s10, s5
                  xor          a7, sp, zero
                  sll          ra, t3, a4
                  slti         a6, t5, -1366
                  srai         a7, s2, 31
                  auipc        tp, 496744
                  srli         a6, t2, 17
                  slti         s7, a7, 1534
                  sll          t4, t0, a3
                  and          a0, ra, s9
                  srai         s9, a5, 18
                  and          ra, s1, t4
                  and          a7, tp, t2
                  xori         a2, a6, -1460
                  srai         t3, s8, 9
                  andi         t3, s5, 369
                  sltu         zero, a4, gp
                  srai         a6, t6, 13
                  lui          gp, 755218
                  add          s2, t3, s6
                  slti         tp, a2, -534
                  auipc        a3, 5568
                  srai         s5, a7, 27
                  or           t5, a6, s7
                  xori         t5, s0, -1415
                  slli         a4, s6, 15
                  addi         gp, t3, -40
                  auipc        t2, 518252
                  ori          s9, zero, -1446
                  lui          s10, 80289
                  auipc        a5, 708180
                  srl          s7, t2, s4
                  srli         s11, s1, 3
                  add          s3, t6, a7
                  sll          s2, t4, s11
                  slti         t2, a5, -1174
                  srl          s11, t1, t0
                  sll          s10, t4, a1
                  xori         a4, t6, -64
                  xori         a5, ra, 1427
                  slt          s8, t2, s2
                  sltu         t1, ra, t1
                  xori         s5, t3, 1743
                  xor          sp, s4, a1
                  srai         s1, t2, 20
                  or           s9, ra, t0
                  auipc        a3, 780431
                  add          a0, sp, s7
                  xori         tp, t3, -53
                  and          s10, a6, t4
                  and          ra, a3, t0
                  slti         a5, s10, 1591
                  srl          ra, a3, ra
                  sll          a2, tp, tp
                  sub          s0, a1, sp
                  and          tp, a5, a3
                  and          t2, sp, t0
                  sub          s5, ra, zero
                  sub          s2, a2, s3
                  xori         a1, a6, -372
                  or           s5, s1, s11
                  auipc        t5, 232691
                  sltiu        a4, t4, 41
                  sltiu        t1, a1, -1876
                  andi         tp, a0, -199
                  add          a5, s9, t1
                  nop
                  sltiu        a6, a2, -1951
                  srl          s10, a7, t4
                  xori         s6, a7, 961
                  sltiu        t3, t4, -1642
                  lui          s11, 369011
                  nop
                  sltiu        s11, ra, -1685
                  sub          a4, t0, s7
                  nop
                  xor          t4, s9, tp
                  sub          gp, t5, s11
                  slti         s7, sp, -397
                  addi         a6, a4, -603
                  or           t1, s7, zero
                  xori         t5, s1, 1921
                  xori         a5, a2, -4
                  lui          s0, 609656
                  addi         zero, a0, 260
                  ori          s1, t2, 796
                  nop
                  andi         s2, a3, 543
                  sll          a6, t3, a7
                  xor          s0, s0, s10
                  ori          s9, s11, -1978
                  nop
                  slti         a6, t1, -186
                  andi         t4, s1, 318
                  or           s1, a4, s11
                  sltu         s6, s3, s6
                  srli         gp, s2, 12
                  sltiu        t2, a4, 620
                  sll          a2, a0, s0
                  slti         a1, a2, -372
                  sll          s0, a3, a7
                  slli         s7, zero, 0
                  srl          s9, s6, s0
                  sltiu        t5, s11, -1669
                  or           t1, s7, zero
                  sub          a3, a2, a5
                  srli         zero, s11, 31
                  lui          s8, 999994
                  srli         a7, a0, 7
                  xor          tp, a3, a6
                  andi         s5, s9, -1548
                  andi         s5, s1, 605
                  slt          s7, a3, a0
                  srli         a5, a0, 22
                  sltiu        t4, s11, -1627
                  srli         ra, t1, 27
                  slli         t1, s2, 31
                  slt          a5, s2, a7
                  sra          s6, a0, t1
                  auipc        s10, 69142
                  sll          sp, t5, tp
                  xor          s9, t1, a0
                  slti         a1, s10, 1048
                  auipc        s11, 938866
                  lui          tp, 727704
                  slti         sp, t3, 1509
                  add          a2, a1, s4
                  and          gp, a7, a4
                  srl          a1, s11, s1
                  xori         s10, ra, 835
                  sll          tp, s9, s10
                  slli         s5, s5, 1
                  sltiu        t5, s7, 1835
                  or           t1, t6, t4
                  slti         s5, a7, 1067
                  srai         a5, s8, 22
                  lui          t4, 224153
                  sub          a7, s10, t0
                  sll          tp, zero, tp
                  and          gp, s3, a1
                  lui          t4, 485684
                  or           a7, s5, s8
                  sll          s7, s8, t0
                  srai         gp, s8, 27
                  slli         a0, a4, 17
                  sltiu        t2, a5, 1922
                  sra          t3, s5, t0
                  sub          a3, t3, s4
                  xor          s9, a7, s7
                  srli         sp, s10, 19
                  slti         gp, t6, -1379
                  ori          a7, s5, 2025
                  slli         t4, zero, 12
                  sra          s3, s11, s8
                  sll          s0, a6, t6
                  lui          gp, 253889
                  and          a1, a2, t1
                  ori          s11, t5, 1364
                  sltu         zero, s0, s6
                  xor          s7, tp, s3
                  and          s5, s10, s9
                  sra          s7, s5, s9
                  slti         t3, a6, 575
                  and          a7, sp, sp
                  sra          a0, a7, sp
                  srli         s3, a3, 3
                  sltu         t4, t5, s7
                  srl          a6, s6, s5
                  slti         a4, s7, 1513
                  srl          s7, s7, a7
                  sub          s5, t6, a7
                  add          t1, t4, t1
                  nop
                  srai         s2, s5, 8
                  slti         s7, t4, 1911
                  sltu         s0, s6, zero
                  auipc        s9, 50543
                  srai         a6, s7, 26
                  nop
                  xor          a1, s11, t2
                  or           s5, s5, t3
                  slti         t3, s9, 723
                  srl          a1, s2, t3
                  sltiu        tp, a0, -1209
                  slli         tp, s2, 6
                  sltiu        a5, s2, 1572
                  sra          s2, s1, t5
                  auipc        sp, 932481
                  sub          t1, s9, s10
                  add          s1, a5, s5
                  auipc        t5, 267178
                  sub          tp, a5, tp
                  auipc        tp, 308705
                  sub          a4, zero, a3
                  sltiu        s3, ra, -1800
                  sra          sp, a1, s10
                  sltu         gp, t0, a1
                  ori          t1, t1, -1478
                  srli         t1, s2, 20
                  slt          s3, s4, s3
                  sra          t5, tp, s8
                  srli         t1, s5, 7
                  srl          s0, s10, s8
                  sltu         s1, a7, s8
                  slt          s2, zero, zero
                  ori          s2, s8, 1595
                  xor          sp, t1, a0
                  xori         s9, gp, -2042
                  srl          t2, a3, a3
                  slli         t4, s0, 11
                  andi         t4, a4, 2028
                  slli         a2, t4, 16
                  and          gp, s4, gp
                  slt          s1, s6, a5
                  nop
                  slt          t4, s7, t5
                  addi         zero, s5, 841
                  addi         gp, s0, -625
                  sll          tp, s6, s0
                  sltu         t5, t4, gp
                  srai         t4, a3, 23
                  srl          a4, a6, s1
                  slti         s11, s3, -770
                  nop
                  nop
                  sra          s6, a2, a1
                  srl          a4, t5, a6
                  addi         s2, a6, -1583
                  andi         a3, a6, 1314
                  or           t1, gp, s5
                  sra          t2, s8, ra
                  addi         s10, s9, 1909
                  andi         a1, a5, -981
                  add          s10, t1, s7
                  srli         t3, a1, 14
                  sltiu        sp, s2, -129
                  add          a2, s10, gp
                  srai         sp, sp, 25
                  slli         s11, t3, 14
                  add          a4, a3, s2
                  srai         t2, s0, 2
                  ori          s1, t3, 1158
                  sub          s1, s0, a0
                  lui          a0, 798406
                  srl          a6, s7, a3
                  sub          s8, s10, s3
                  sub          gp, a3, t4
                  xor          tp, ra, s1
                  auipc        s11, 669911
                  slli         s8, a4, 29
                  nop
                  nop
                  slli         a0, a4, 12
                  sltiu        t4, a0, -704
                  srl          s0, a3, t1
                  sltiu        a2, s5, 993
                  srli         a2, t5, 25
                  srl          a7, s7, s8
                  slli         a3, tp, 14
                  sltiu        s1, s10, -1737
                  srl          a4, a4, s0
                  ori          s3, s2, 1827
                  sra          sp, s1, s2
                  and          s11, s4, t2
                  xor          a7, s4, t1
                  auipc        ra, 721690
                  andi         t2, s10, 1883
                  ori          tp, s8, 942
                  sub          ra, s2, ra
                  addi         s8, a5, -222
                  srai         s5, gp, 3
                  add          t5, t4, ra
                  add          s0, t3, s11
                  add          tp, s11, t2
                  lui          t5, 1044318
                  srl          t5, t4, s10
                  slt          a3, t4, s8
                  or           a1, a7, s4
                  slli         a1, s10, 5
                  add          s8, t5, s0
                  slt          t3, s11, sp
                  lui          t2, 857120
                  srai         a7, ra, 29
                  slli         t4, s11, 30
                  add          a1, a0, sp
                  slli         a3, s9, 10
                  nop
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a4, 0xffffffff
                  li           ra, 0xe1b1e39
                  li           t5, 0x80000000
                  li           s8, 0xf8d4c460
                  li           sp, 0x0
                  li           s2, 0x0
                  li           s3, 0xffffffff
                  li           s7, 0x0
                  li           t4, 0x80000000
                  addi         s8, a4, -1528
                  addi         s2, ra, 73
                  addi         a4, s3, -353
                  add          s2, s8, t5
                  addi         t4, s7, 387
                  sub          s8, s2, t4
                  sub          s8, t5, sp
                  lui          s7, 1006144
                  nop
                  lui          ra, 565318
                  addi         sp, t5, 601
                  sub          s8, t4, s5
                  addi         a4, sp, -1921
                  sub          sp, s5, s7
                  nop
                  nop
                  addi         a4, ra, 1515
                  addi         ra, s2, 1528
                  lui          s3, 858850
                  auipc        s8, 1005887
                  add          a4, t5, s7
                  add          s7, ra, t4
                  nop
                  lui          t5, 368558
                  sub          t4, s5, s3
                  add          s3, s8, t4
                  nop
                  nop #end riscv_int_numeric_corner_stream_5
                  xori         s6, gp, 329
                  slli         a5, tp, 23
                  add          ra, t2, zero
                  sub          s8, s1, a7
                  slti         a7, a7, 1537
                  sltu         a4, a0, a7
                  sll          t4, gp, a2
                  and          t1, s11, t4
                  auipc        s5, 61861
                  srl          s1, t0, a0
                  sra          a2, t0, s2
                  sltiu        t5, t5, 642
                  sub          s0, s3, s3
                  slti         s8, t5, 921
                  slt          ra, s10, t6
                  srl          t4, s8, a5
                  nop
                  sub          a5, t2, s1
                  sltu         t3, a7, s2
                  srl          a1, s10, s2
                  or           a4, s3, tp
                  add          sp, t1, s9
                  andi         zero, t0, -605
                  ori          s8, a6, 322
                  add          s1, s10, t2
                  and          s7, gp, ra
                  lui          s8, 651695
                  sltu         s2, a6, a2
                  xori         zero, s4, -89
                  slti         a3, gp, -1586
                  srli         a1, s2, 28
                  xor          a0, s6, s0
                  or           s1, s6, a5
                  sll          a2, a5, s11
                  srai         s2, a4, 13
                  sub          t2, s10, gp
                  srli         s8, s9, 22
                  addi         a6, zero, 1714
                  nop
                  lui          s10, 110696
                  andi         a7, a2, 1198
                  or           a7, tp, a4
                  sltiu        s11, tp, 338
                  sll          a1, a3, a0
                  andi         tp, a6, 303
                  xori         sp, t1, 213
                  lui          s11, 252801
                  srl          s8, t3, s3
                  nop
                  xor          t5, t0, a1
                  xor          s7, t6, t6
                  auipc        ra, 263934
                  or           sp, t5, zero
                  andi         a6, s3, -1774
                  sll          sp, s3, zero
                  sltiu        a6, s9, 807
                  sra          s6, s5, a2
                  andi         t2, zero, 41
                  xori         s1, s11, -488
                  add          s0, t6, zero
                  ori          t3, t0, 1727
                  sra          s6, t1, ra
                  xori         a6, s0, -939
                  srai         s2, s0, 4
                  sltiu        zero, a1, 1832
                  auipc        s7, 224280
                  sltiu        tp, s2, -1356
                  xor          a3, a3, s0
                  slt          a2, t1, s2
                  srl          s6, t4, s1
                  srai         s6, t6, 15
                  add          a6, t6, s10
                  ori          s3, a7, -1950
                  xori         s3, s4, 774
                  and          s0, t1, t2
                  sltiu        s3, a7, -1687
                  sltu         a6, a6, s8
                  auipc        t1, 573688
                  srai         zero, a7, 15
                  sltiu        s5, s5, 1664
                  addi         s10, a1, 847
                  and          sp, s8, t5
                  srli         sp, s5, 26
                  ori          a4, s8, -1858
                  srli         t1, t0, 26
                  sltiu        gp, s5, 476
                  nop
                  nop
                  slti         a6, zero, -1286
                  xor          s11, t4, s10
                  auipc        t2, 350868
                  srai         t5, t4, 31
                  srli         s10, s11, 23
                  add          a2, s4, t1
                  or           a7, s0, s3
                  srai         a5, s9, 18
                  auipc        a1, 93561
                  addi         t4, t2, 518
                  srai         tp, a1, 4
                  addi         s6, ra, -142
                  ori          a1, a1, -283
                  ori          t3, t5, -1886
                  sltu         gp, s0, s4
                  nop
                  nop
                  andi         s0, s9, 151
                  lui          t2, 445125
                  slt          s0, sp, s7
                  sra          s3, tp, s5
                  slt          s1, t1, s4
                  slli         s11, t6, 7
                  sra          a1, a0, s4
                  sll          a6, t5, a7
                  nop
                  or           s1, s4, s6
                  srli         a5, ra, 29
                  ori          sp, s11, -1508
                  or           tp, a4, s5
                  or           t3, s3, t1
                  ori          sp, s2, -1142
                  andi         sp, s8, 232
                  ori          a1, t4, -408
                  slt          s6, a4, s0
                  sll          s8, t2, t6
                  andi         s10, s2, -1307
                  srl          gp, tp, a5
                  sltiu        s6, s11, -1971
                  or           s1, gp, t0
                  add          s2, s8, s0
                  add          s0, a5, t2
                  add          a6, gp, t0
                  xor          a6, t0, a0
                  lui          zero, 386011
                  lui          t3, 520293
                  slti         a6, zero, 413
                  xor          t5, t0, a3
                  srl          t2, s8, s9
                  ori          s7, a1, -404
                  slt          t5, ra, a1
                  srai         s8, s2, 5
                  sltiu        a2, s7, 1225
                  addi         a4, t4, 1987
                  srai         s11, s6, 0
                  addi         a0, s7, -854
                  srl          s3, a6, a2
                  addi         s1, t4, 1088
                  add          s3, s7, a6
                  xor          tp, s3, a1
                  add          t2, s5, t4
                  sltiu        gp, s4, -74
                  auipc        tp, 295122
                  sra          s5, s11, ra
                  or           t5, ra, s11
                  srl          zero, s6, a7
                  slt          s8, a7, s11
                  sra          a7, ra, s11
                  xori         t5, t0, 125
                  slti         ra, s8, -1817
                  srli         a3, s3, 15
                  sltiu        zero, s0, 654
                  addi         s10, s11, 1491
                  andi         a6, a7, -1579
                  and          s8, s10, a5
                  sltu         gp, t5, t0
                  ori          s3, t2, -924
                  or           t5, ra, t2
                  nop
                  and          t3, t1, s11
                  auipc        s10, 595201
                  slti         s2, a1, 652
                  auipc        s0, 923254
                  slt          s9, a6, a0
                  add          sp, a0, a0
                  srai         sp, t6, 8
                  sra          gp, t3, s8
                  addi         s11, s11, -1837
                  andi         t2, gp, 566
                  sub          a3, t5, t6
                  slli         s2, s8, 14
                  auipc        tp, 154226
                  sra          a2, a6, sp
                  sra          zero, a7, a5
                  add          t1, s6, t5
                  and          a2, zero, t1
                  or           a3, t0, t5
                  or           s2, a4, t5
                  slti         t3, s7, 249
                  ori          a2, a6, 270
                  srli         s7, s10, 29
                  slt          t4, a5, s9
                  xor          s7, gp, s5
                  add          sp, a5, zero
                  slli         a2, t4, 10
                  nop
                  addi         s2, s7, 2028
                  sltu         a4, tp, s8
                  auipc        s10, 823084
                  add          s3, a0, s5
                  slt          a4, tp, s0
                  slti         s9, t2, 762
                  sltu         s7, t4, tp
                  andi         a4, ra, -1260
                  slti         a3, a7, 519
                  sll          a4, s5, t2
                  srl          s2, a0, s5
                  and          sp, sp, a6
                  ori          s8, tp, -564
                  or           gp, t4, t1
                  slt          t5, sp, a7
                  xori         t5, t1, 1771
                  slli         s5, s7, 2
                  sll          t5, a1, s0
                  xori         a2, a1, 1404
                  ori          zero, a3, 557
                  andi         a2, sp, 1971
                  sub          s10, s10, a3
                  sub          s11, s8, s1
                  sll          a2, t2, s5
                  srl          a7, s0, t2
                  sltiu        zero, tp, -188
                  srai         a7, a7, 9
                  srl          tp, a2, a0
                  xor          a3, t2, t4
                  lui          s3, 369772
                  andi         s9, a4, -18
                  slti         s3, s4, -614
                  lui          t3, 1023130
                  nop
                  srl          a1, ra, zero
                  sub          s0, s7, a0
                  sll          tp, s9, s1
                  andi         t4, a2, -797
                  srai         s11, sp, 28
                  slti         s3, a7, 248
                  sub          sp, a6, a6
                  add          s11, s11, sp
                  add          a5, s9, gp
                  auipc        tp, 539901
                  srli         sp, t0, 28
                  srl          s6, s9, s6
                  lui          a2, 917113
                  and          s9, zero, a0
                  slti         s7, a6, -460
                  lui          zero, 416432
                  or           s7, s6, t5
                  addi         t4, s4, -1850
                  srli         t3, tp, 6
                  andi         s9, s11, 834
                  srl          a5, s9, s6
                  slli         sp, a4, 7
                  sub          a2, tp, sp
                  addi         a2, tp, -391
                  sltiu        a1, s4, -754
                  and          a4, s4, t1
                  and          sp, tp, a0
                  lui          sp, 344994
                  or           s1, t3, zero
                  srli         a5, tp, 14
                  srli         s1, sp, 4
                  slt          s10, a5, gp
                  ori          s6, a2, -1137
                  and          t3, t0, s5
                  andi         a0, t5, 126
                  srl          s8, t0, a6
                  xori         s6, s8, -130
                  xori         a0, s8, -1238
                  xori         t2, a5, -1125
                  srli         gp, gp, 23
                  xori         s10, zero, -1694
                  slt          a4, tp, s5
                  srai         tp, s2, 22
                  or           s7, t3, t3
                  slti         tp, s1, -1340
                  sra          s1, s4, a5
                  addi         s8, s3, -1793
                  nop
                  xori         s11, a4, 758
                  andi         s6, gp, -472
                  slli         s1, a0, 19
                  slli         a5, t4, 14
                  andi         a5, t5, 1711
                  or           s3, a0, t0
                  xori         a3, t5, 1269
                  add          a2, a4, a5
                  slli         t3, t1, 14
                  lui          s9, 377784
                  slt          ra, a5, sp
                  srli         s1, a0, 1
                  add          s6, s1, a3
                  add          a2, t3, tp
                  slt          s9, a7, gp
                  lui          a0, 447327
                  slli         a6, s6, 26
                  lui          s5, 405654
                  srli         s7, t4, 9
                  and          a6, s2, a7
                  slti         t2, t2, -1733
                  add          a6, s11, a1
                  xor          t3, zero, a4
                  lui          s8, 718874
                  add          zero, s8, gp
                  sub          t3, tp, s11
                  sll          s0, a2, s2
                  add          a3, t1, s10
                  slli         a0, s4, 18
                  sltu         t4, ra, a1
                  sltu         s9, s6, t3
                  srli         s10, s7, 31
                  addi         a1, t3, -1578
                  nop
                  nop
                  sltiu        a0, ra, 661
                  srai         s6, s7, 30
                  auipc        a7, 408323
                  srai         a4, a4, 1
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           t5, 0xffffffff
                  li           t4, 0x0
                  li           a2, 0xe34b1330
                  li           a1, 0xffffffff
                  li           s3, 0xffffffff
                  li           a6, 0xffffffff
                  li           s0, 0xffffffff
                  li           t2, 0x21e1482b
                  li           s8, 0x0
                  lui          s8, 334894
                  add          t2, a6, a2
                  lui          a2, 611904
                  sub          a2, t2, t2
                  sub          t5, s8, a2
                  addi         t4, t5, -282
                  add          s6, t5, s0
                  nop
                  auipc        s8, 310913
                  addi         t2, s8, 1016
                  lui          a2, 949337
                  auipc        a1, 464950
                  lui          a1, 908917
                  auipc        t5, 415861
                  lui          a2, 627750
                  nop
                  nop
                  nop
                  addi         s0, t2, -1794
                  sub          t2, a2, a6
                  add          a1, s3, s8
                  sub          t2, s0, a1
                  lui          s8, 838116
                  nop
                  addi         t2, t5, -1921
                  sub          s8, a2, s6 #end riscv_int_numeric_corner_stream_1
                  ori          s1, s6, 384
                  add          t2, s3, a4
                  srli         s7, a6, 30
                  xor          s7, s2, a3
                  srl          t5, t2, t4
                  sltu         a6, t5, a0
                  sll          s5, t3, a6
                  xori         s2, s7, 707
                  and          s1, ra, t2
                  srai         s5, t1, 19
                  addi         a4, t0, -606
                  add          a7, ra, s11
                  sll          s3, t0, s10
                  addi         a3, s4, -827
                  xor          ra, s5, ra
                  srl          s3, a1, s4
                  sltiu        s11, s1, -1901
                  ori          t1, tp, 381
                  srli         sp, t6, 1
                  andi         ra, s7, -1094
                  xori         s6, s4, 415
                  sll          s5, a4, ra
                  sll          gp, t2, t2
                  slti         s9, s10, 977
                  srai         sp, s6, 31
                  xor          s0, s10, a4
                  slti         a0, a5, -1637
                  ori          a4, s3, 535
                  sltiu        s3, a0, 1215
                  srl          s8, s2, s8
                  xor          a5, s10, t4
                  ori          a0, s7, -1271
                  or           a7, s4, s2
                  lui          s6, 231785
                  slt          sp, a6, s11
                  xor          a3, a1, ra
                  slli         a6, s11, 15
                  ori          s6, tp, 643
                  xori         s3, a5, 1101
                  add          a6, t4, a1
                  xor          s8, t5, a0
                  sub          s7, t0, gp
                  or           zero, a7, zero
                  sltiu        a5, t2, -1282
                  slli         sp, t1, 21
                  sub          t5, t3, s5
                  sub          tp, a7, s10
                  addi         t1, a1, -344
                  auipc        s9, 15602
                  sub          a4, t2, a2
                  srli         a7, s3, 17
                  xor          a7, a3, a5
                  sltu         tp, a5, s4
                  sltu         t3, t1, ra
                  xori         a6, a1, 2041
                  andi         ra, t4, -1458
                  and          a0, a4, a6
                  slti         zero, s1, -579
                  ori          t5, t2, -203
                  sra          s5, s2, t2
                  or           t1, a7, s10
                  srai         s10, s4, 15
                  sltiu        s10, ra, -152
                  or           s9, s7, zero
                  sll          s11, a6, s7
                  ori          s8, a5, 1746
                  ori          s3, s9, -1434
                  andi         a3, s6, -341
                  srai         s7, t2, 29
                  nop
                  slt          gp, s10, a3
                  slli         s10, a1, 4
                  slt          a5, a1, s3
                  srl          a3, zero, gp
                  sll          zero, a4, s2
                  srl          t4, s6, s8
                  auipc        t1, 623949
                  addi         t2, s6, 1718
                  srli         s10, t6, 13
                  srl          s7, a3, s11
                  sltiu        s7, s11, -412
                  lui          s11, 702129
                  slli         zero, s7, 20
                  slli         s10, a2, 28
                  slli         gp, s5, 21
                  srai         s7, a3, 23
                  slti         s7, s3, 498
                  srli         s8, a6, 30
                  lui          a6, 221241
                  srli         t4, a7, 2
                  sub          a5, s1, sp
                  sll          a4, s5, a6
                  sll          ra, s4, s7
                  nop
                  slli         s11, s7, 1
                  nop
                  and          s6, t0, t3
                  nop
                  andi         a3, t0, 809
                  andi         a6, zero, -1030
                  lui          tp, 283923
                  sra          t3, s2, s1
                  sra          s3, s5, a4
                  srai         a2, s3, 25
                  sub          a1, a4, t1
                  sll          s8, t0, t6
                  addi         a7, t1, 237
                  auipc        t5, 636243
                  auipc        s6, 24388
                  lui          s5, 13060
                  slti         a0, zero, -1114
                  xor          t2, tp, a1
                  sltiu        s11, tp, -1016
                  nop
                  andi         a4, gp, -875
                  slti         tp, s3, 731
                  lui          zero, 777645
                  auipc        gp, 616791
                  srl          a4, t0, s0
                  lui          a5, 960219
                  sub          t4, s4, s5
                  srai         s5, gp, 29
                  addi         a3, s11, 2004
                  slt          t1, s11, s3
                  and          t1, s2, a6
                  sltiu        t5, s4, 1878
                  nop
                  addi         s3, s3, -764
                  sltiu        s0, t6, -1903
                  ori          a7, ra, -631
                  andi         a7, t0, 696
                  srli         t5, a5, 7
                  or           t1, a2, s0
                  addi         s9, s0, 445
                  slti         zero, a2, 1369
                  xori         s1, s0, -1598
                  slt          s5, s0, s7
                  srai         s3, a5, 11
                  slti         s11, s11, -2037
                  srl          s5, s4, a3
                  or           a1, a2, t2
                  srli         s5, t2, 14
                  or           t3, zero, a0
                  srai         s3, s6, 9
                  andi         a5, s11, -369
                  nop
                  addi         s10, s5, 1155
                  and          s11, s11, a3
                  sltu         a6, s5, s9
                  srai         t3, s3, 0
                  slli         tp, s3, 15
                  srl          a6, t1, a1
                  srl          a1, s3, s8
                  slli         gp, s4, 4
                  sll          s7, t0, a5
                  and          tp, s0, a4
                  xor          t5, s5, s8
                  sub          t4, s11, tp
                  lui          s11, 519585
                  auipc        zero, 454958
                  andi         zero, s5, 1793
                  or           t5, t4, s1
                  slt          t5, t3, a6
                  srl          sp, t0, tp
                  srai         zero, ra, 26
                  add          s3, s9, s3
                  sll          s9, s8, t4
                  lui          a0, 26639
                  xori         s5, s2, -516
                  sltiu        t2, s1, -702
                  sltu         t4, t2, s1
                  sra          t2, tp, a5
                  slli         a4, a6, 3
                  addi         ra, t6, -634
                  sub          ra, s2, a2
                  or           zero, t2, a1
                  sra          zero, tp, s5
                  sra          a5, s3, zero
                  sra          s10, s3, s1
                  slti         a5, s8, 1908
                  add          tp, ra, a3
                  auipc        s3, 780262
                  lui          s9, 625607
                  add          t5, s5, s9
                  xori         tp, t1, -148
                  and          s11, a6, a6
                  srli         t2, t0, 5
                  srli         a1, s9, 6
                  or           a6, s9, a3
                  sltu         a4, a2, ra
                  lui          a5, 673156
                  ori          a1, s7, 544
                  srai         t1, t3, 19
                  and          gp, s5, s0
                  sll          a5, a7, s9
                  slt          s9, ra, t0
                  addi         s11, s6, -534
                  andi         a7, s9, 1481
                  addi         s9, a2, 1963
                  sltu         s3, s0, ra
                  ori          a0, s8, -352
                  andi         s7, t1, 90
                  slli         gp, a4, 24
                  srli         a2, s8, 8
                  xor          a5, a6, s8
                  sll          a3, a6, t0
                  and          s10, a4, s7
                  srl          a1, a7, s4
                  srli         s0, t2, 28
                  xori         tp, s6, 1950
                  sub          ra, s9, s6
                  slt          sp, s0, a4
                  addi         s11, gp, -1162
                  nop
                  xor          a3, s7, t2
                  and          zero, s5, zero
                  or           a5, s10, t4
                  auipc        a6, 661091
                  srl          t5, a2, a3
                  xor          s10, a2, s0
                  lui          t4, 861979
                  slt          t1, s11, s10
                  add          a3, s0, t4
                  auipc        a7, 54116
                  slli         t3, t1, 6
                  xor          zero, zero, t4
                  sub          s0, a3, s5
                  slli         zero, a0, 29
                  nop
                  andi         t4, a7, -384
                  andi         t2, a6, 898
                  slt          s8, s4, t1
                  srl          t3, a0, s7
                  sll          a1, a2, s6
                  xor          a3, tp, t2
                  srli         a3, tp, 23
                  sltu         s3, s5, t1
                  auipc        ra, 292545
                  slti         t2, s5, -1322
                  auipc        s6, 887490
                  auipc        a0, 654481
                  and          s5, s3, tp
                  srli         s1, sp, 5
                  xori         ra, a0, -1431
                  sra          t1, s7, s2
                  slt          s11, t5, a1
                  add          a0, a2, s2
                  xor          s3, t0, tp
                  srli         s6, t3, 31
                  srl          ra, zero, s10
                  srai         gp, s9, 7
                  auipc        a1, 389442
                  sltiu        a5, t4, -1959
                  nop
                  xor          s9, a0, s6
                  srl          zero, t1, t0
                  sltiu        s10, s5, -571
                  slli         a0, zero, 24
                  nop
                  xor          gp, s0, t1
                  xori         t2, zero, -847
                  auipc        t3, 595343
                  and          s7, tp, a2
                  xori         s1, tp, -276
                  slli         s9, s0, 29
                  ori          a1, s9, 1660
                  add          t3, t2, s4
                  addi         a4, sp, -840
                  sltiu        tp, t2, -1565
                  addi         s6, t6, 810
                  sub          ra, gp, s8
                  or           s5, s10, a2
                  and          a6, t2, s6
                  ori          zero, tp, -1543
                  andi         a0, a5, 1834
                  srli         t3, a3, 12
                  slli         s6, t1, 2
                  srai         s0, s4, 8
                  sltiu        a4, a6, -954
                  addi         a3, zero, -288
                  sub          s8, t2, a4
                  sltu         t5, a3, s1
                  slli         t2, a0, 18
                  sll          s5, s0, zero
                  nop
                  addi         a7, sp, 1744
                  ori          t3, a2, -816
                  xori         s7, t4, 1873
                  ori          s0, a6, 1341
                  slti         a3, s4, -1929
                  srai         a7, t6, 24
                  xor          tp, t6, a2
                  auipc        s1, 921418
                  lui          t2, 158626
                  nop
                  auipc        ra, 498426
                  auipc        t5, 1007940
                  ori          a7, s5, -1338
                  slti         a0, sp, 585
                  lui          a4, 641329
                  or           a6, s1, s10
                  sltiu        s11, s5, -1455
                  slti         s8, s6, 1434
                  nop
                  srai         s10, a1, 28
                  srli         s7, sp, 27
                  or           s5, t3, a3
                  xor          a1, a5, t1
                  andi         t5, s6, 1127
                  nop
                  xor          s1, a6, t1
                  slti         s10, zero, -15
                  lui          sp, 596795
                  sltu         sp, s1, a4
                  sltiu        gp, a6, -1739
                  srai         a3, t3, 19
                  sltiu        a2, s2, 1159
                  sltu         s0, s9, a6
                  sltiu        s11, t1, 1002
                  srai         a3, s7, 19
                  or           s7, s10, t1
                  srl          s2, s6, s6
                  add          s2, sp, s10
                  srai         a5, a2, 6
                  srai         t2, t1, 15
                  slli         s7, a4, 10
                  and          s1, a7, tp
                  slt          gp, t6, s8
                  ori          t4, t1, 529
                  ori          s11, s0, -1779
                  xori         s6, a6, -151
                  srai         a2, a5, 7
                  srl          s10, t1, gp
                  srai         t2, a7, 17
                  slli         ra, s3, 22
                  xori         a0, t2, -1520
                  add          t1, t6, a0
                  sll          a7, sp, a0
                  ori          t1, s2, 1246
                  srli         t5, a4, 4
                  slt          t3, a4, a2
                  srai         s0, gp, 25
                  addi         s2, s2, 892
                  addi         s0, a3, 1565
                  or           s0, zero, a4
                  slli         a2, a2, 16
                  lui          a3, 317693
                  xori         a0, s9, -995
                  sltiu        t3, a3, 1457
                  sltiu        ra, a1, -1377
                  srai         a3, zero, 13
                  or           s5, a2, a2
                  srai         s1, tp, 30
                  sltiu        s6, s0, 1216
                  addi         tp, s1, -1253
                  ori          a2, s0, -1018
                  sltiu        t5, gp, 944
                  xori         a3, tp, 977
                  sltiu        sp, a5, -888
                  lui          s1, 458904
                  sra          t5, a0, t6
                  slt          a7, s7, a6
                  xori         s2, t1, 796
                  sltiu        s0, t5, 825
                  add          s10, t1, s0
                  sra          s3, gp, zero
                  lui          s3, 866436
                  slt          t2, a6, ra
                  srli         gp, s9, 9
                  sltiu        s10, a5, 65
                  sub          t5, tp, t5
                  slt          s1, s5, gp
                  xori         tp, s10, 863
                  or           gp, sp, s7
                  addi         sp, t2, 2004
                  addi         s8, a5, -877
                  xori         ra, t5, 1080
                  xor          sp, t3, a1
                  add          a7, t0, t2
                  sub          a2, s10, tp
                  lui          a5, 45995
                  sll          s11, ra, a4
                  addi         t5, s6, 266
                  slt          s3, s1, t5
                  add          a0, sp, a5
                  sll          t1, s1, s1
                  sra          a3, s11, t5
                  xor          s7, t0, a4
                  xor          a7, s8, ra
                  ori          a7, t6, 1394
                  sub          t3, a0, s3
                  addi         s9, t3, 122
                  srli         s0, tp, 2
                  slti         a7, s3, -1514
                  slli         zero, s1, 8
                  srl          t2, s6, s3
                  xor          zero, a1, a3
                  or           s10, t2, t3
                  sra          s11, s0, s0
                  sub          a2, a1, t5
                  auipc        s7, 397494
                  sltiu        tp, s6, 393
                  ori          a1, tp, -1016
                  ori          sp, a1, 1984
                  slli         a1, s9, 1
                  srai         s7, a5, 6
                  sll          s6, s9, s3
                  nop
                  srl          s8, s5, t1
                  srli         s0, s8, 7
                  srai         s1, a5, 21
                  xori         a7, s4, 1330
                  and          a5, ra, zero
                  xor          s10, s11, t1
                  sra          s2, s11, s2
                  xor          s2, s5, zero
                  sltu         t5, t4, tp
                  lui          s11, 311262
                  sll          gp, t6, s11
                  srl          s6, t1, a5
                  lui          t1, 966414
                  xor          a0, s7, t2
                  slt          t4, s5, a4
                  srai         a4, t4, 17
                  sltu         s9, zero, s7
                  sra          s1, a6, s5
                  nop
                  sltu         s0, t3, t4
                  sll          t1, s7, a1
                  ori          zero, s5, 1841
                  add          a6, s7, s1
                  srai         a5, t0, 9
                  srl          s8, s4, tp
                  sub          s2, gp, s6
                  slt          t3, t6, s8
                  addi         ra, t6, 1952
                  sra          a0, t3, a5
                  sltu         s5, a7, a2
                  srl          a2, t0, s0
                  sub          sp, t2, s11
                  slti         s2, t0, -222
                  sltu         t5, s11, s4
                  slt          a1, gp, s11
                  slli         t1, a0, 23
                  sltiu        a4, s11, 512
                  addi         s10, s2, -1043
                  srai         tp, zero, 17
                  sll          s10, s3, t1
                  add          a4, t4, t2
                  sltiu        a6, t2, -1788
                  srai         t4, s6, 17
                  andi         s1, s2, -706
                  xor          a5, s10, a7
                  sra          a1, s8, a3
                  auipc        tp, 457326
                  srli         sp, s11, 6
                  slt          t5, t2, s2
                  sltiu        s5, t3, -830
                  and          gp, s8, s11
                  lui          a6, 25445
                  nop
                  xori         gp, t6, -1107
                  sltu         a4, a5, tp
                  srl          t1, t3, ra
                  slt          a4, gp, s3
                  lui          a6, 860677
                  add          s9, ra, s0
                  ori          s5, a3, 371
                  slli         s6, s4, 13
                  sll          s0, s11, s11
                  slti         s8, s2, 757
                  add          s10, t0, gp
                  sltiu        zero, a5, 1931
                  sltu         sp, s3, s5
                  sub          s11, t4, zero
                  addi         a6, tp, -332
                  and          t2, t6, t4
                  sltiu        gp, s8, -1942
                  add          s8, a7, t2
                  or           a2, tp, t3
                  addi         s3, a3, 289
                  sub          t2, s3, sp
                  xori         tp, s6, -1937
                  add          s3, a6, a2
                  sub          a1, s8, a0
                  lui          t5, 374488
                  and          a7, a5, s11
                  or           a2, s2, s3
                  ori          a5, a6, -714
                  sltu         a6, t2, t3
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a5, 0x0
                  li           a3, 0x80000000
                  li           s2, 0xffffffff
                  li           a0, 0xcabea7d1
                  li           s6, 0x80000000
                  li           gp, 0x8b01c9da
                  li           s7, 0xb7dc5afb
                  li           t1, 0x80000000
                  li           s0, 0x80000000
                  addi         t1, t1, 528
                  add          s0, s0, s0
                  add          t1, t1, tp
                  addi         s6, a3, -1592
                  sub          t1, s7, s2
                  sub          a3, s7, t1
                  addi         a0, a5, -760
                  auipc        s2, 26700
                  lui          a3, 56741
                  sub          s6, s7, s2
                  nop
                  auipc        a5, 251697
                  auipc        s0, 49926
                  sub          s6, s0, s2
                  sub          t1, a5, a3
                  nop
                  addi         a5, a3, -1502
                  add          a3, tp, a3
                  lui          tp, 271099
                  lui          s7, 47879
                  auipc        s0, 555071
                  sub          gp, a5, t1
                  sub          s2, s2, s0
                  add          a3, s7, s7
                  lui          s0, 335148
                  auipc        t1, 682726
                  auipc        tp, 549050
                  sub          s2, gp, s7
                  sub          t1, tp, s7 #end riscv_int_numeric_corner_stream_12
                  sltu         s1, s7, a0
                  srli         a5, s1, 30
                  slt          s10, s4, s1
                  addi         a1, a2, 1862
                  addi         s2, ra, -1133
                  sll          s3, s9, t3
                  srli         a2, t2, 27
                  ori          s10, a3, 649
                  or           t2, s6, s3
                  sltu         t3, t2, s7
                  slt          s11, gp, t3
                  srai         a6, a5, 8
                  ori          s2, s6, 297
                  sltu         zero, t3, s3
                  or           t2, s6, s8
                  auipc        s1, 83581
                  and          s9, a1, a6
                  andi         s11, sp, 4
                  or           a3, s3, s2
                  sltiu        a1, zero, 1596
                  auipc        s0, 405960
                  srli         s0, s0, 20
                  nop
                  addi         ra, a4, -426
                  or           ra, s10, ra
                  slti         a3, s3, -624
                  srli         s0, s5, 3
                  lui          s11, 968178
                  sltiu        a3, s1, 1035
                  srai         s11, s9, 22
                  sub          a7, a5, s7
                  sub          zero, t1, a4
                  and          a6, a1, a7
                  slti         s5, s5, 1834
                  ori          s2, s5, 1567
                  srl          s0, s7, s1
                  sltiu        a0, s6, -977
                  slt          a3, s7, a1
                  slli         ra, gp, 21
                  srli         a3, a7, 28
                  xor          a7, s11, a0
                  srai         a0, a3, 3
                  srl          s1, gp, s0
                  slti         a3, s10, -1789
                  srl          s8, s5, s1
                  slti         a5, a6, 144
                  slt          a7, t0, t3
                  ori          a3, sp, 1994
                  srai         t4, a7, 11
                  ori          gp, s8, 286
                  lui          s9, 900259
                  auipc        a4, 417811
                  sub          s10, t6, a6
                  andi         ra, t5, 1499
                  sltu         sp, t2, s3
                  auipc        s5, 269830
                  andi         sp, a0, 432
                  or           s10, zero, a4
                  nop
                  ori          a2, s11, -923
                  nop
                  auipc        sp, 665294
                  sub          t5, s2, t5
                  andi         s11, t4, -1967
                  srai         s5, t5, 12
                  addi         a6, ra, 628
                  nop
                  sltiu        a5, s2, -235
                  xori         zero, s1, -2039
                  sll          s11, a5, a0
                  xor          s2, s10, s4
                  or           t2, s9, t2
                  nop
                  or           t3, a5, s2
                  slti         s5, ra, 1379
                  andi         a2, s4, -87
                  xori         s10, sp, -1220
                  and          sp, a7, zero
                  sra          a0, a6, t1
                  sra          s11, s11, s10
                  xor          t2, t0, s6
                  xori         s11, a1, 434
                  addi         a3, t1, 124
                  sltiu        tp, zero, 882
                  sltu         s10, a5, s8
                  sltiu        a6, a7, 1566
                  sub          sp, a5, t6
                  sltiu        s3, t2, -1060
                  slt          a5, a6, s9
                  slti         s2, a0, -1474
                  slti         ra, s9, 1336
                  slli         s11, a3, 2
                  srl          t5, zero, zero
                  addi         s3, s10, 614
                  addi         s5, gp, -1925
                  sra          s9, s1, s11
                  sll          zero, s11, a4
                  or           a3, a4, s0
                  sll          a3, t5, a4
                  lui          a0, 312772
                  sra          a2, a3, a1
                  xor          s2, s8, sp
                  add          s10, s1, tp
                  slli         s10, s6, 23
                  srli         a1, t1, 8
                  nop
                  sltiu        t1, a7, -1539
                  sltiu        s3, a4, -1968
                  nop
                  slti         t2, ra, -49
                  sra          s2, a1, a5
                  sltiu        sp, t2, -2031
                  addi         a6, s7, -964
                  add          zero, t5, a1
                  slt          sp, t2, s6
                  sub          s9, s11, zero
                  sra          s3, t0, a2
                  sltiu        a2, s5, 1366
                  add          t1, a5, t1
                  sub          s11, s1, s0
                  ori          s8, t4, 430
                  slti         a5, a0, 419
                  srli         s0, a7, 31
                  sra          s7, a2, t1
                  slli         t1, s9, 24
                  and          a4, a7, t3
                  slti         s9, s9, 586
                  ori          t2, a0, 218
                  auipc        a6, 873913
                  slti         t3, a7, 1708
                  sltiu        a0, a7, 119
                  lui          s11, 627922
                  ori          a3, t1, -1962
                  add          a4, t2, s1
                  slti         s9, gp, 1448
                  addi         s5, s0, -338
                  addi         t2, ra, -887
                  sra          s3, a7, t6
                  andi         t5, s5, 1510
                  srai         t3, s10, 27
                  srli         s9, s8, 25
                  srai         s0, s0, 29
                  andi         tp, sp, -339
                  sltiu        a3, t0, 621
                  xori         a5, a7, -1581
                  auipc        s10, 441624
                  add          s9, t5, a2
                  auipc        gp, 366249
                  sltiu        s11, s5, 1464
                  sub          t5, tp, a0
                  slt          a7, zero, s2
                  slti         ra, t1, 678
                  andi         s10, a3, -1785
                  sub          a5, a4, s1
                  srai         s11, t3, 9
                  ori          s8, s2, -1191
                  slt          a0, a2, s4
                  srl          zero, t6, s0
                  srl          s5, t0, a3
                  xor          a5, a1, s1
                  sltiu        s6, s3, 1617
                  sltu         s5, s8, t4
                  or           s8, s1, ra
                  andi         a3, t1, -426
                  xor          s10, gp, s1
                  andi         a7, s8, 252
                  srli         a0, s11, 22
                  slti         a5, s6, -850
                  slti         s8, s7, 51
                  slt          t4, s3, t0
                  srli         a1, a1, 14
                  slt          t4, t0, s10
                  srai         sp, a1, 1
                  andi         a0, s11, -85
                  xor          t4, sp, s5
                  lui          gp, 249420
                  add          s9, s7, s8
                  xori         s6, s2, -521
                  slti         sp, s11, 741
                  sll          a6, s4, a2
                  srli         s11, s7, 19
                  nop
                  or           s11, gp, t4
                  srai         a2, t5, 11
                  slti         a1, t0, -1436
                  slti         s9, s5, -1801
                  xor          s11, t1, t5
                  srl          tp, t4, a7
                  nop
                  srl          a5, a4, s2
                  sltiu        gp, s10, -872
                  lui          a2, 303836
                  or           s7, t0, ra
                  sra          t4, a6, a6
                  addi         s0, a5, 1839
                  add          a6, sp, t5
                  slli         ra, s11, 1
                  auipc        a7, 358176
                  sra          t5, s3, s9
                  xor          a6, s5, t0
                  srl          a5, a5, s0
                  sltiu        a4, a0, 159
                  srl          ra, s7, t0
                  xori         a2, zero, 1478
                  xor          a1, s7, t5
                  sltiu        a0, a2, 2023
                  sub          s1, s4, s0
                  slti         s10, s5, 2022
                  slti         a7, s3, 1509
                  xor          s3, t2, s1
                  srai         s5, t4, 20
                  ori          s2, s4, -534
                  or           a3, s0, s3
                  slli         t2, t5, 8
                  andi         ra, t0, 694
                  ori          zero, s10, 1106
                  sra          s7, a4, sp
                  sltu         s10, t4, s3
                  andi         t2, tp, 462
                  sltu         a4, s4, a4
                  andi         t3, t5, 31
                  auipc        t3, 683935
                  xori         s6, gp, 1264
                  nop
                  slt          s7, t4, s1
                  srai         a2, t3, 27
                  sll          s7, s5, a1
                  slli         a5, t5, 10
                  or           a4, ra, t6
                  slt          s5, a4, t6
                  slli         s10, t6, 19
                  sltu         a7, t6, a7
                  slli         a6, a1, 29
                  auipc        a4, 251980
                  xori         a4, t3, 532
                  sll          gp, zero, zero
                  sltiu        ra, s3, -932
                  and          gp, s11, s6
                  sltu         t1, a6, tp
                  sltiu        t5, s3, -1523
                  sltiu        a1, a3, -178
                  slt          s7, a1, sp
                  xori         a1, a7, 735
                  lui          a3, 933980
                  slt          a3, tp, a6
                  slli         s7, s3, 0
                  slt          s7, a1, s3
                  addi         s3, t5, 1273
                  xor          s10, s2, s6
                  xor          a7, a4, a5
                  sltu         t1, a7, s9
                  nop
                  sub          tp, a0, t5
                  srai         s2, s3, 19
                  andi         a1, a4, -1878
                  auipc        a1, 731543
                  and          t2, a2, a2
                  srl          t1, s5, a0
                  or           s2, t2, a5
                  sltiu        s7, s5, -700
                  slti         t4, gp, 1702
                  sltu         gp, s2, s1
                  slt          s3, a3, t5
                  sra          s0, s1, a4
                  sltiu        gp, s10, -1873
                  nop
                  slt          a3, s5, s10
                  and          s9, s2, a7
                  sltiu        t4, t1, 1647
                  slt          s7, a7, s11
                  sltu         t3, s8, s4
                  sll          a5, s6, s3
                  and          a2, t0, t1
                  srai         a0, t6, 26
                  sra          a7, s2, s8
                  sra          sp, tp, a4
                  xori         s0, t4, 269
                  or           gp, a5, s7
                  sltiu        s0, s1, -1575
                  sltu         gp, tp, s6
                  nop
                  add          t3, ra, s9
                  srli         s9, t2, 21
                  xor          gp, a1, a6
                  auipc        a2, 2496
                  auipc        s8, 575490
                  andi         zero, t0, 1909
                  slti         s0, a2, 918
                  sra          ra, gp, t0
                  or           s5, zero, t5
                  sll          a3, t5, s7
                  sub          s3, s8, zero
                  srl          ra, s11, s2
                  or           tp, s2, a6
                  sra          tp, s8, a6
                  or           t5, gp, a7
                  xori         s3, a3, 333
                  sltu         s11, s5, t2
                  ori          a6, tp, -199
                  ori          s1, a2, -388
                  srli         s0, zero, 22
                  srli         zero, s11, 7
                  xor          a5, s3, s9
                  slti         s8, s10, 241
                  srli         t4, t4, 28
                  addi         t2, t5, 479
                  sub          s1, s6, s7
                  sll          s10, t3, gp
                  srai         gp, s4, 9
                  andi         a7, s5, -1437
                  lui          a2, 458520
                  sra          s5, t2, sp
                  lui          t5, 372807
                  xor          s2, a6, s9
                  sltu         gp, t5, t2
                  sra          a6, s2, t6
                  sra          s7, s2, s11
                  sltiu        t3, t6, 52
                  and          tp, a6, a5
                  slti         s9, a7, 279
                  and          s9, s0, s7
                  ori          a7, a3, 1613
                  lui          a7, 715821
                  ori          t5, s10, 1932
                  slli         a0, s2, 4
                  and          s0, s1, s11
                  sltu         a2, a0, gp
                  xori         s3, t3, 337
                  xori         a1, gp, 39
                  sub          s0, s2, s6
                  srl          t1, s8, s11
                  xori         s9, t2, 1259
                  nop
                  slt          s3, ra, s1
                  srl          s6, s11, s7
                  srl          s6, t5, t6
                  auipc        s6, 114167
                  sub          a4, s5, a1
                  nop
                  srli         t3, s6, 28
                  sll          s10, ra, t1
                  sub          a3, a1, t3
                  sltiu        s11, s5, 645
                  xor          s2, t2, t4
                  ori          a6, t2, -1295
                  sltu         sp, t3, t6
                  slt          s0, t1, ra
                  andi         a6, a0, -523
                  andi         a6, t6, -1512
                  srl          a6, a1, a7
                  sll          tp, t4, gp
                  addi         s6, s5, 1099
                  srai         sp, s5, 0
                  srli         s7, s5, 6
                  add          t4, gp, s2
                  addi         s7, s1, -383
                  sub          s7, t0, s6
                  add          a4, s9, s10
                  add          a2, s4, s11
                  auipc        s11, 544165
                  ori          a7, s7, -1315
                  and          sp, a2, a7
                  or           sp, a7, t2
                  slli         a5, sp, 0
                  sltu         a6, s8, t1
                  xor          s7, s3, a0
                  slti         a7, s9, -1302
                  sub          s2, s1, t1
                  sltu         t2, sp, a6
                  auipc        s5, 338819
                  slt          s2, a5, t3
                  xor          a0, t1, s5
                  slt          s10, a5, zero
                  add          t3, a7, s9
                  and          s0, a7, a0
                  sra          a4, s8, a1
                  ori          t4, s0, -1307
                  add          a3, s2, a3
                  or           a1, s5, a6
                  xor          a0, s10, ra
                  lui          s10, 668583
                  auipc        t2, 925088
                  add          gp, s11, s10
                  srai         sp, gp, 20
                  xor          s2, t2, s8
                  slt          s10, a2, gp
                  srli         t5, a5, 14
                  addi         a3, tp, -1085
                  xori         zero, a2, -299
                  srai         s6, zero, 12
                  auipc        a4, 555713
                  lui          t5, 523884
                  add          s5, t4, ra
                  sra          ra, a5, a7
                  srai         t1, t1, 20
                  sltiu        a4, ra, 507
                  add          s6, a2, a6
                  slt          s5, a4, t6
                  srli         sp, t2, 31
                  ori          a5, a5, 983
                  add          s11, a4, a6
                  add          t1, s3, a1
                  sltu         a4, a4, s2
                  auipc        a7, 649887
                  nop
                  sltiu        t2, t2, 1071
                  sltiu        s6, sp, 141
                  sub          a3, t2, tp
                  xori         t5, s7, 1343
                  slti         a4, s9, 1050
                  sltiu        s7, s3, 1355
                  lui          a7, 180937
                  lui          a3, 300107
                  or           sp, t0, s1
                  add          sp, t2, t2
                  andi         t2, a3, -1527
                  srl          t3, ra, sp
                  slti         s8, s9, -1471
                  lui          a4, 566205
                  add          a7, t3, s6
                  ori          a2, ra, -1273
                  lui          zero, 111314
                  andi         a2, tp, -1516
                  slli         s6, t6, 7
                  and          t3, a4, a3
                  nop
                  xori         s0, s5, -1245
                  addi         a7, t3, 1758
                  andi         a2, s11, -98
                  sltu         a1, t4, gp
                  sra          s2, ra, s6
                  sltu         s8, s0, gp
                  ori          t5, s4, 806
                  ori          gp, s7, -560
                  or           sp, s9, a7
                  srli         s9, tp, 3
                  add          s3, s4, a4
                  sll          t4, s1, tp
                  and          t2, ra, a4
                  slti         s5, t0, -1434
                  nop
                  xor          s0, a3, t3
                  sltiu        a0, t5, -1333
                  xori         a5, s11, 1900
                  srli         t2, s10, 27
                  xori         t1, s9, 1389
                  sra          t2, t2, ra
                  srli         gp, t6, 30
                  auipc        zero, 76421
                  nop
                  xor          a6, a5, s1
                  ori          gp, t0, 1108
                  addi         a1, s9, -1847
                  srl          s5, t1, ra
                  slt          s6, t1, a1
                  lui          s8, 465605
                  addi         a3, t4, 242
                  slt          s11, t4, t0
                  srai         a3, s8, 9
                  auipc        s7, 1012991
                  sltu         s9, a5, s9
                  addi         s9, a1, 1261
                  lui          s11, 831240
                  andi         s2, s5, 262
                  xori         s3, s5, 1331
                  srai         s5, zero, 21
                  slti         s5, s4, 1316
                  xori         a2, a5, -288
                  andi         a0, t5, -313
                  lui          s3, 886977
                  sra          s10, a4, s6
                  and          a6, sp, s2
                  slti         ra, s2, 1492
                  add          t4, a5, s5
                  xor          a0, t2, s2
                  lui          s9, 1006342
                  sll          s3, tp, s9
                  sra          zero, a5, t2
                  sltiu        gp, zero, -1582
                  sub          s3, a4, t3
                  slti         a3, a2, -870
                  sub          ra, zero, s3
                  sltu         ra, t2, gp
                  srli         s2, gp, 14
                  sltiu        a2, s4, 1226
                  slt          a7, a7, a1
                  andi         a2, a2, -591
                  sub          s7, a2, s4
                  sltiu        t2, a5, -250
                  addi         s10, ra, 838
                  lui          s1, 754215
                  sltu         s9, ra, t5
                  xori         tp, a5, 1860
                  xori         t5, tp, -1933
                  add          gp, sp, t4
                  sll          s5, sp, s7
                  slti         a6, s4, -353
                  srai         ra, t6, 21
                  and          t4, t0, a3
                  auipc        zero, 127252
                  sub          a2, a4, ra
                  add          s0, gp, ra
                  and          a5, s10, s11
                  slti         t4, a3, -1356
                  slt          t5, s6, s0
                  xori         ra, a3, -1032
                  and          ra, a4, s7
                  slt          t3, s7, s10
                  ori          a2, s2, 1180
                  sub          s10, a2, t6
                  xor          s5, sp, s11
                  addi         a3, tp, 662
                  auipc        gp, 407108
                  add          s10, s11, sp
                  xor          t2, s9, s10
                  slli         t5, ra, 23
                  slli         t3, t0, 31
                  ori          s0, t6, -1042
                  or           sp, s8, s7
                  slli         a2, s0, 28
                  slti         s2, a6, -2001
                  srli         s11, a3, 9
                  or           t3, s8, s11
                  sltu         a4, s5, ra
                  srli         t2, a2, 16
                  andi         a4, s9, 1329
                  add          a6, t4, gp
                  xor          a2, zero, s4
                  and          t4, a6, t1
                  sltu         a2, a2, s3
                  sltiu        s5, t5, -180
                  slt          a5, t6, a3
                  srai         s11, s10, 0
                  lui          t1, 830632
                  or           s6, ra, s6
                  and          sp, zero, t0
                  sub          gp, s6, s6
                  sra          t5, s11, a0
                  xori         s0, t2, -699
                  slti         tp, a6, 1373
                  sll          a6, a6, sp
                  srai         a0, s3, 16
                  sra          sp, gp, s9
                  add          s11, t3, s7
                  xori         s7, zero, 1494
                  sltu         a1, t4, s5
                  xori         s9, t5, 163
                  ori          sp, a2, -237
                  slti         a5, s6, -544
                  or           a5, gp, t6
                  xor          s7, s2, s10
                  or           s11, a3, a7
                  srai         tp, t0, 26
                  ori          a4, a3, -1756
                  and          s8, t3, s6
                  and          t3, s11, s4
                  auipc        s3, 188724
                  ori          s3, s7, -1237
                  srai         s8, s0, 17
                  srai         s6, s11, 17
                  srl          s11, s2, a0
                  lui          s1, 343347
                  sub          ra, a0, a4
                  nop
                  slti         s5, s3, 1156
                  add          a6, a4, tp
                  slti         a1, t1, -123
                  auipc        s5, 48266
                  sub          s6, a3, t3
                  addi         s6, t1, 865
                  sub          s11, a0, a2
                  srli         zero, a2, 5
                  nop
                  ori          s11, a7, -674
                  srl          s11, s1, s5
                  nop
                  addi         a5, a4, 1531
                  or           s3, t0, s1
                  slti         s7, t5, -1217
                  slli         gp, s1, 6
                  andi         s6, ra, -457
                  srli         s8, s8, 1
                  or           a5, a5, gp
                  nop
                  add          zero, a3, s8
                  or           zero, s10, t1
                  lui          s7, 392283
                  slli         s9, s4, 28
                  xori         s8, s8, 243
                  auipc        tp, 533408
                  auipc        tp, 691064
                  sltu         tp, s9, a7
                  sltiu        s0, s9, 1812
                  sll          s3, t2, s6
                  addi         s7, t4, -1242
                  andi         s6, t6, -1744
                  ori          a0, a2, 1149
                  auipc        tp, 339571
                  lui          t3, 726137
                  xor          t5, zero, s1
                  slli         tp, s1, 11
                  slti         a0, tp, 1086
                  srl          a3, gp, s7
                  srli         zero, a5, 4
                  auipc        s2, 1024656
                  xor          s2, s0, t3
                  sra          s7, ra, s4
                  xor          a6, s7, t2
                  slli         a7, s8, 31
                  sub          s6, t6, s10
                  sra          zero, s8, s3
                  slt          s7, a5, a7
                  slli         a3, gp, 6
                  auipc        ra, 606812
                  or           sp, a6, ra
                  sll          a7, t3, a3
                  and          a1, s4, s4
                  sltu         s5, a7, s11
                  slli         s8, t0, 19
                  andi         s3, a3, -810
                  lui          gp, 23832
                  srli         s3, a2, 0
                  auipc        t1, 721568
                  sub          a0, sp, a1
                  andi         a7, a5, -2018
                  addi         s6, s11, -534
                  slti         t2, a3, -848
                  sltu         a6, t4, a4
                  slti         s0, s3, -1155
                  sltu         sp, s1, s11
                  sltiu        s6, t1, 1457
                  slli         a7, s11, 27
                  ori          s11, a7, 1861
                  andi         s0, a5, 911
                  srai         a5, s8, 25
                  andi         a0, s9, -92
                  add          a5, s9, t0
                  srli         tp, t3, 28
                  nop
                  slt          a7, s8, t5
                  srl          sp, tp, zero
                  srl          s7, s11, s7
                  slli         gp, t2, 19
                  sltiu        t3, s5, 1921
                  ori          ra, zero, 394
                  xori         t5, t4, 1284
                  auipc        t1, 480907
                  sll          sp, t3, t3
                  and          s0, a1, s11
                  auipc        t2, 700324
                  sltu         a6, t2, t4
                  add          a7, ra, a2
                  sub          a3, a5, a2
                  sra          a4, a7, t2
                  andi         a2, s8, -101
                  xori         a5, t2, -187
                  addi         s11, a7, 1396
                  sra          a3, a0, s8
                  xori         s6, s5, -119
                  slti         a1, s10, 164
                  srai         s5, a4, 1
                  slt          t5, s9, s2
                  srl          s2, gp, s4
                  auipc        s10, 78642
                  sra          a2, s11, a6
                  andi         a4, t1, 525
                  sltiu        t4, t0, -125
                  sltu         s5, a4, a4
                  sra          s0, s7, zero
                  lui          t1, 205040
                  slt          t1, zero, t5
                  sltiu        s5, a3, -1477
                  slt          t1, s7, s2
                  add          s10, a3, s9
                  sll          a6, t1, t1
                  sub          s5, s4, s3
                  andi         s1, a7, -1001
                  addi         t1, s1, 864
                  slti         s9, s5, -1399
                  srli         ra, s5, 18
                  addi         a3, s11, 39
                  addi         t2, s10, 744
                  sll          s1, t6, t3
                  xor          s3, s7, s1
                  and          s11, a2, s2
                  srai         s11, s5, 12
                  auipc        s6, 125298
                  auipc        a2, 192007
                  add          s9, s9, s6
                  nop
                  slti         s0, a4, -1278
                  auipc        s1, 598244
                  sltiu        a1, s6, 1938
                  andi         t5, s8, 209
                  andi         a7, a2, -627
                  sll          t1, a6, a5
                  ori          a5, s11, -1740
                  slt          t4, s7, s6
                  andi         a4, a1, 1634
                  sub          t1, a1, a3
                  addi         s8, s9, -792
                  srli         s7, s7, 12
                  slli         a5, a2, 23
                  xor          t1, s9, ra
                  srl          t1, t1, s10
                  addi         t5, s5, 153
                  xor          a1, s8, s10
                  slt          t3, a6, s5
                  auipc        ra, 682002
                  xor          gp, s2, s0
                  ori          a5, s2, 1972
                  sll          s8, s6, a1
                  slt          s5, s0, s8
                  slti         zero, s0, 552
                  sub          a5, a2, a0
                  sll          s11, s5, zero
                  addi         s1, sp, 482
                  xori         a4, a3, 1326
                  auipc        t2, 719268
                  slti         s6, s2, 1643
                  sltu         t3, s8, t3
                  srli         a1, s7, 2
                  xori         s3, t0, -655
                  sltu         a3, gp, tp
                  srli         a7, s7, 8
                  andi         sp, zero, 894
                  srai         t1, sp, 2
                  slti         t4, gp, 1341
                  slt          a2, tp, gp
                  sll          a6, a5, tp
                  sltu         t4, a0, gp
                  slli         s9, s6, 15
                  slt          ra, sp, s7
                  sltiu        s7, t6, -1169
                  auipc        a4, 728806
                  or           a0, s8, s4
                  xor          tp, s3, s2
                  sll          sp, t6, a7
                  sltu         tp, a1, gp
                  srl          t4, a1, t1
                  slt          s0, t5, t4
                  srli         s6, a5, 22
                  slt          ra, t0, t2
                  sll          s9, a3, s4
                  andi         a6, s2, 1583
                  slli         t4, s0, 2
                  xori         s1, t1, -970
                  add          s2, sp, t3
                  sll          s10, t5, s11
                  sll          t4, t6, t5
                  xor          s11, zero, s9
                  and          t1, t1, a2
                  ori          t2, gp, 40
                  sll          a3, a6, a4
                  sra          t4, t5, a7
                  auipc        s0, 138721
                  slli         s7, a3, 28
                  or           s3, gp, s3
                  sub          s1, a0, s7
                  sub          t2, a1, s1
                  lui          s1, 1030557
                  add          a4, t0, s0
                  xor          s9, s8, s1
                  addi         a7, s10, -1863
                  or           s1, ra, s10
                  sltiu        zero, s6, -264
                  andi         a4, s7, -89
                  auipc        a4, 294493
                  slti         t3, s4, 386
                  auipc        sp, 365443
                  add          gp, s1, a3
                  auipc        s0, 134107
                  slt          a5, a5, s7
                  and          a1, a3, a2
                  ori          a1, a3, -1563
                  srli         a3, s1, 16
                  slt          zero, t5, s11
                  or           s5, a7, t5
                  add          s9, t1, s7
                  auipc        s8, 77792
                  sra          s7, zero, s10
                  srli         s6, s1, 19
                  lui          zero, 985659
                  srai         t2, s5, 15
                  add          t2, s3, a5
                  addi         s6, s10, -879
                  sltu         s6, a1, s11
                  lui          a2, 669593
                  addi         tp, gp, 1998
                  or           ra, a0, s3
                  or           a1, s4, a2
                  xor          s7, s4, gp
                  srai         t2, s0, 28
                  slti         s1, t3, 2019
                  add          a6, ra, a4
                  lui          s6, 504383
                  srai         s9, s9, 24
                  or           s6, a7, a3
                  nop
                  lui          gp, 88939
                  add          s8, a0, s8
                  ori          a6, zero, 908
                  sll          ra, s6, a3
                  nop
                  sll          s5, a3, s0
                  ori          a7, s11, 1755
                  sll          ra, s2, t3
                  srl          s2, t1, t3
                  andi         tp, s5, -126
                  sltiu        a0, s7, 217
                  ori          s1, s8, 30
                  and          a1, s1, t5
                  add          a2, t5, s3
                  sub          sp, s5, t2
                  sra          a3, s8, a0
                  srli         a5, s0, 4
                  sll          a5, t5, t5
                  auipc        t2, 595423
                  andi         ra, s0, 1844
                  nop
                  andi         s8, a4, -1765
                  sltiu        tp, a6, 1643
                  sltu         tp, a1, a7
                  sltu         t3, a5, t4
                  add          s7, t6, sp
                  auipc        s9, 480317
                  sra          zero, s10, zero
                  addi         t3, a5, 712
                  and          t5, s5, s7
                  sltu         ra, s11, s7
                  sub          a0, s5, a4
                  xor          t4, s9, t6
                  sub          t5, s4, t3
                  add          a5, t4, s5
                  srli         a4, a0, 18
                  andi         s9, s10, 716
                  slti         sp, a4, 828
                  auipc        t3, 525491
                  andi         tp, s10, -77
                  andi         s0, a6, 255
                  srli         a6, s6, 16
                  xor          t2, sp, s2
                  xori         s8, s7, -222
                  xor          a5, s5, t1
                  srli         a3, tp, 21
                  srai         zero, s5, 14
                  add          a7, s3, s5
                  auipc        s6, 953498
                  srai         s8, t4, 27
                  sltiu        s5, s0, 219
                  sltiu        s6, a4, -1298
                  xor          gp, s9, a3
                  slt          s8, sp, t4
                  ori          s3, t1, 1642
                  xor          ra, s0, s8
                  nop
                  lui          s2, 429284
                  xor          s3, gp, s5
                  auipc        s6, 902953
                  slti         s7, s0, 1933
                  xor          a7, s3, s1
                  lui          sp, 682535
                  xor          a2, gp, a6
                  or           a4, s2, t0
                  slli         t4, s0, 25
                  xori         a7, a2, -549
                  xor          t5, a1, t5
                  srl          t1, ra, t0
                  ori          t4, t5, -999
                  lui          t3, 596986
                  ori          t4, t3, 1515
                  slt          ra, sp, a0
                  sll          gp, a2, a5
                  add          ra, s3, a5
                  slli         a6, tp, 24
                  sltiu        a7, t1, 1410
                  sll          s10, s3, s10
                  ori          sp, t5, -199
                  sub          s8, s2, a2
                  addi         s5, a7, -765
                  andi         s9, a6, 347
                  slt          zero, t2, a3
                  sll          s6, t4, s8
                  srli         gp, a1, 18
                  xor          a0, t4, s3
                  slli         s6, a1, 30
                  and          a2, a1, s4
                  slt          t4, s6, t6
                  sltiu        s8, sp, -1418
                  sub          sp, a0, s5
                  ori          a3, a2, 1045
                  slli         gp, t0, 9
                  ori          t3, t1, 1997
                  sra          a0, s10, s1
                  sll          a3, s5, a4
                  add          a4, s9, a1
                  slt          gp, s10, s3
                  nop
                  sra          a1, gp, s6
                  sll          s6, s5, t3
                  slli         t5, s8, 20
                  lui          a1, 307639
                  lui          s5, 839547
                  srli         s0, a1, 0
                  auipc        s3, 572860
                  andi         a0, s4, 1919
                  xori         t2, sp, 1680
                  xori         s2, s11, 461
                  lui          zero, 1001714
                  or           t1, s8, t3
                  srl          t3, t0, t5
                  add          a5, t5, a0
                  sltu         a0, s8, a7
                  sltu         s11, a3, ra
                  slt          a7, s9, a3
                  slt          a2, s11, s0
                  lui          a1, 573921
                  srai         t5, s5, 4
                  slti         s5, s8, 1918
                  and          t5, s7, a6
                  sub          ra, s8, a2
                  slti         s8, gp, -1826
                  xor          s8, zero, a2
                  slti         s0, t2, 949
                  sll          a0, t3, t3
                  srli         s1, t6, 12
                  srl          s5, t2, s4
                  addi         s8, s7, -645
                  slti         t2, a5, 1353
                  srl          zero, t2, a6
                  sll          a6, a6, s0
                  slti         a4, a3, 753
                  xor          t4, a2, gp
                  srl          a3, s4, t5
                  sltu         a3, s5, zero
                  addi         t5, a1, -1441
                  slt          t1, a4, a6
                  srai         s6, s9, 3
                  andi         t3, t2, -673
                  auipc        ra, 15187
                  addi         gp, s7, 19
                  slli         tp, a5, 23
                  slli         s8, t4, 20
                  sltiu        a2, s5, 1386
                  srai         zero, t2, 30
                  auipc        a4, 518248
                  sll          tp, gp, t0
                  addi         s11, a1, -1321
                  xori         tp, t2, -1655
                  nop
                  sra          t1, zero, a6
                  addi         a2, s9, 900
                  slli         s10, zero, 27
                  xor          a3, tp, s4
                  and          a1, s0, s6
                  and          tp, a6, a6
                  sltu         a3, a3, t0
                  xor          s8, s0, s4
                  lui          s11, 230991
                  slli         zero, sp, 24
                  or           s5, s11, s11
                  ori          t1, t0, -849
                  slti         s5, a4, -1655
                  ori          s11, t2, 137
                  auipc        a5, 341160
                  nop
                  auipc        s11, 639076
                  auipc        s0, 248834
                  nop
                  and          t5, a0, s6
                  ori          zero, zero, 803
                  auipc        s3, 426814
                  sub          gp, t0, t5
                  and          t4, a2, s11
                  addi         s0, a1, -761
                  andi         a6, t5, 993
                  sub          a0, gp, a6
                  sll          t5, s7, s8
                  addi         sp, t4, -1396
                  auipc        s8, 202566
                  or           s0, t4, s5
                  andi         a5, s9, 1552
                  slli         a0, a1, 9
                  lui          sp, 639106
                  sub          s6, s3, s8
                  or           zero, s9, t3
                  slti         a3, t3, -1944
                  ori          t5, s8, -1471
                  srai         s9, s4, 15
                  add          s9, s0, s3
                  sra          a2, a5, s6
                  srli         tp, s6, 15
                  srai         s6, t6, 1
                  sra          gp, t5, s1
                  slti         s8, a7, -1718
                  srl          tp, a2, a5
                  nop
                  addi         zero, s6, -167
                  andi         s0, ra, -984
                  sll          t1, t0, a1
                  srli         a7, t0, 16
                  andi         a0, s8, 1618
                  or           zero, a3, s11
                  sub          s2, t0, a1
                  slti         s10, a2, 1628
                  slti         s8, ra, -1239
                  addi         t2, a5, 1902
                  slti         t3, gp, 1873
                  sll          s1, a1, gp
                  ori          s10, a4, -1790
                  sltiu        a7, s5, -602
                  sltu         s10, a7, a6
                  sltu         s8, s6, s1
                  ori          s0, a4, 1948
                  slti         s11, a2, 1610
                  or           s3, s6, s11
                  and          s6, t1, a2
                  sltiu        t3, zero, 1297
                  sltiu        s9, s8, -1508
                  or           s10, t0, a2
                  sra          s7, s0, ra
                  or           a0, ra, s1
                  or           t1, a4, ra
                  andi         a7, s2, 1369
                  nop
                  sll          t4, ra, a1
                  add          t2, s8, s2
                  xor          t3, s4, s11
                  sltiu        ra, t2, -607
                  addi         s2, s1, 1279
                  srli         s8, s4, 5
                  sltiu        s5, t0, -653
                  sltu         t4, s9, s1
                  nop
                  and          a7, s1, a1
                  sltiu        a5, s2, -536
                  add          s8, t0, t1
                  sra          tp, t5, s9
                  auipc        gp, 188345
                  sltiu        s5, t4, 1763
                  and          s5, s7, a5
                  add          s2, a3, s5
                  sub          s9, s4, s4
                  ori          s8, t5, -1658
                  slti         a2, s0, -1153
                  ori          t3, s11, -80
                  andi         a6, s9, 1283
                  srli         s3, s5, 19
                  xori         a0, a1, -1276
                  slti         s10, a7, -1398
                  srl          sp, ra, a7
                  xor          ra, s2, t3
                  srli         s11, t2, 6
                  slli         tp, s2, 28
                  srl          a7, t4, a0
                  lui          a6, 926782
                  srai         t3, t4, 22
                  xori         s7, gp, 570
                  slt          s1, t4, s4
                  sltu         s2, s1, t2
                  sll          s2, s2, a7
                  andi         t5, t0, -1835
                  srl          s1, a4, t5
                  sltu         s9, s9, gp
                  add          s2, t0, a3
                  srai         s9, a2, 9
                  slti         s2, sp, -633
                  srl          a2, gp, t0
                  sll          t5, s10, s0
                  auipc        ra, 516446
                  or           s3, t6, a1
                  sltu         s10, a2, s5
                  slt          a1, t3, s3
                  auipc        t1, 853911
                  nop
                  sll          t2, ra, zero
                  andi         s10, s0, 1712
                  sra          gp, s4, t5
                  sub          ra, ra, tp
                  nop
                  srl          s8, t5, t5
                  srli         s11, s2, 24
                  ori          a4, gp, 120
                  slti         s8, a4, -1288
                  sra          s2, ra, s10
                  slti         s8, s3, 1644
                  srai         s1, a6, 17
                  xor          a1, a4, a4
                  srl          s1, s6, sp
                  slti         a7, sp, -1475
                  sra          a4, s5, s7
                  srl          tp, s2, s4
                  sll          t5, t6, s2
                  srl          s6, a2, s7
                  slli         a6, a1, 23
                  sltu         s9, ra, t1
                  auipc        s3, 856283
                  sltu         s3, a3, s6
                  add          zero, tp, s0
                  sub          s5, a3, t4
                  sub          a6, s5, t6
                  sll          s1, s9, s11
                  addi         s7, sp, 1914
                  xor          zero, a0, s10
                  slt          s5, a6, s2
                  or           a7, t3, s4
                  sub          s11, s4, a5
                  andi         a4, a1, -1650
                  srli         t4, a6, 12
                  auipc        s6, 722333
                  addi         a2, s0, -1921
                  addi         s3, a7, 236
                  sll          s2, s11, a1
                  and          a1, a2, t4
                  sub          a7, s3, s5
                  sub          ra, t5, s1
                  slt          s1, a4, zero
                  sub          s0, t0, t5
                  and          t5, ra, s10
                  addi         a7, a1, -1725
                  slli         s7, tp, 26
                  slli         t2, a1, 10
                  and          t5, t2, a7
                  sll          s0, a0, t2
                  andi         s5, a2, -1121
                  slli         ra, s7, 16
                  srl          t3, s5, s11
                  xori         s0, s6, -2017
                  sub          s1, ra, t0
                  add          a7, s4, tp
                  xori         a1, gp, -1403
                  srl          zero, tp, s5
                  xor          ra, s1, a2
                  xori         a1, a0, 1574
                  slti         a1, t3, -483
                  and          t4, a0, a0
                  add          s9, s6, s4
                  auipc        s5, 692066
                  sra          zero, a6, a7
                  xori         s8, t3, -1478
                  slt          a2, s5, a7
                  sra          s3, ra, a5
                  sll          a7, s2, ra
                  ori          t4, a5, -759
                  and          s7, t1, s6
                  xori         ra, t5, 195
                  xori         s6, t3, 820
                  sll          s11, a2, t2
                  sll          s9, s4, s10
                  xori         t4, t2, -1442
                  srli         a1, sp, 1
                  srli         a6, a7, 0
                  and          zero, s5, a6
                  nop
                  sll          tp, s2, t2
                  auipc        s6, 119220
                  lui          zero, 963688
                  sub          s5, t2, a1
                  nop
                  slti         sp, t0, -1069
                  xor          t2, s3, t0
                  slti         t2, s3, -441
                  lui          s6, 95962
                  andi         a4, a0, 1237
                  sub          s7, s5, a5
                  or           zero, a6, t2
                  slli         s3, zero, 23
                  sltiu        s2, s5, 1338
                  sll          s8, ra, a2
                  xori         s10, t4, 64
                  xor          sp, a3, s5
                  lui          a5, 555597
                  srl          s2, a5, a2
                  sltiu        a1, a3, -1620
                  ori          a4, s5, 595
                  and          t5, a4, s11
                  srli         a4, s0, 25
                  slt          t3, gp, s4
                  add          t2, s4, s0
                  srl          s0, sp, s0
                  slli         s0, s10, 12
                  sltiu        s6, s10, 1520
                  and          s10, s7, a2
                  srl          t2, s3, t3
                  addi         s0, sp, -1515
                  slti         t5, s0, 185
                  nop
                  sra          s7, t0, gp
                  sra          s2, a7, t2
                  sra          s8, t5, s2
                  slti         s10, t6, 877
                  ori          t5, t0, 1466
                  xori         zero, a1, 1386
                  slti         s3, zero, 1317
                  slli         t4, s7, 17
                  srl          s0, a5, t0
                  slt          a0, s3, a5
                  slt          s8, s3, s8
                  slli         sp, s5, 26
                  sltiu        t3, t6, 103
                  slli         a5, s0, 28
                  slli         sp, a3, 9
                  add          s9, tp, t0
                  sub          a7, s6, a5
                  xor          s7, s11, s0
                  ori          t1, a1, -1506
                  or           s6, a1, s2
                  andi         s6, s6, 204
                  andi         s3, s0, 1414
                  ori          a1, s2, 1507
                  sll          tp, t3, sp
                  li           gp, 0xfc59a1a6 #start riscv_int_numeric_corner_stream_14
                  li           a1, 0x0
                  li           a3, 0x80000000
                  li           s1, 0xffffffff
                  li           s11, 0x80000000
                  li           t1, 0x794987d3
                  li           s7, 0x768f688a
                  li           s3, 0x0
                  li           s8, 0x80000000
                  li           a7, 0x0
                  addi         a7, a1, -453
                  sub          gp, a1, s1
                  auipc        a1, 399760
                  add          s7, s8, a1
                  sub          gp, s3, s1
                  add          s11, s7, s3
                  addi         a1, s7, 424
                  nop
                  lui          s7, 901334
                  add          s1, s7, s3
                  auipc        t1, 695123
                  auipc        a7, 934234
                  lui          a7, 833426
                  nop
                  lui          s8, 948382
                  add          s1, a1, s8
                  addi         s8, t1, 1951
                  nop
                  lui          s8, 493329
                  sub          s1, s3, a7
                  sub          s11, s8, a1
                  add          gp, gp, t1 #end riscv_int_numeric_corner_stream_14
                  sub          s2, s0, s4
                  sll          s10, t1, s6
                  srl          ra, t4, s5
                  slt          s9, s7, a4
                  slti         a0, t0, 769
                  sra          a2, a0, s0
                  sll          s7, a0, a7
                  srl          s11, a0, s5
                  add          s9, a3, t5
                  slti         s9, sp, 70
                  sll          s11, a3, t0
                  sltu         a7, t6, gp
                  srli         a1, t1, 22
                  srai         a6, ra, 21
                  add          a6, s5, a7
                  andi         a0, a7, -949
                  slli         a4, t4, 12
                  slti         a6, s11, 1372
                  sra          t2, s10, s1
                  xor          a6, s9, t6
                  slt          a7, ra, s3
                  lui          a1, 300596
                  sub          a4, s7, s10
                  lui          a1, 62534
                  srai         s1, t1, 7
                  lui          a0, 769730
                  add          s10, s5, a3
                  add          s8, a6, a0
                  sltu         zero, s9, a2
                  srli         t1, gp, 0
                  slti         s6, a2, -1028
                  sltiu        t5, tp, -277
                  auipc        s5, 913193
                  srl          a6, t3, ra
                  sltiu        s0, s11, -94
                  sra          t3, t0, s9
                  srli         s8, a7, 6
                  nop
                  srli         s6, s4, 29
                  slti         tp, a5, 40
                  slti         t3, zero, 51
                  srl          a6, s6, t6
                  lui          a4, 981152
                  xori         gp, a5, -1522
                  sltu         s2, s1, s8
                  sub          a5, s7, sp
                  slli         a4, s6, 31
                  or           t2, gp, t5
                  or           zero, a3, a6
                  slti         a4, s11, -1642
                  slti         t4, a7, 270
                  slti         a0, a7, -1241
                  and          s7, a3, s8
                  and          a1, s11, t2
                  auipc        a2, 407251
                  addi         s7, s0, -150
                  srai         a0, s8, 7
                  srl          a4, s1, s6
                  sltu         a3, a5, s6
                  andi         s6, a7, -47
                  srli         a6, s5, 12
                  ori          tp, t1, -862
                  srl          a6, a3, t5
                  sub          s5, s4, a0
                  slti         s7, t2, 603
                  slti         zero, t2, 227
                  and          s0, t4, a1
                  srl          tp, s4, tp
                  sltiu        s2, t0, -457
                  xori         s8, a1, 189
                  ori          t5, t1, -467
                  slt          t3, s5, a4
                  sltu         s10, a6, a3
                  sub          s3, gp, sp
                  nop
                  or           ra, s11, t2
                  sll          t1, s3, s6
                  or           s0, t1, s6
                  add          t5, a5, a1
                  slt          a1, sp, t0
                  ori          t4, s3, 393
                  auipc        tp, 657452
                  ori          a4, ra, 565
                  or           gp, a3, t5
                  addi         t3, a4, -510
                  add          a6, s3, s8
                  slt          s10, a2, s0
                  slti         t4, ra, -1138
                  andi         a1, t0, -20
                  add          a1, s10, t1
                  lui          gp, 258249
                  xori         zero, s4, -194
                  sltiu        a6, t0, -1656
                  sll          s3, t4, zero
                  slli         gp, t5, 14
                  andi         t5, s2, 1184
                  add          tp, s0, a4
                  add          s9, a2, tp
                  sltu         a0, a3, t5
                  lui          s11, 624104
                  ori          s2, a0, -1782
                  slti         s3, s11, -53
                  lui          a0, 221248
                  sra          tp, s10, s9
                  srl          a0, t3, a1
                  srl          s0, s11, zero
                  lui          a3, 273618
                  nop
                  srl          a6, t1, s8
                  or           t2, gp, t1
                  slt          t5, s2, a4
                  lui          a2, 347427
                  sll          t1, s11, a4
                  andi         a5, s2, 220
                  xor          s0, ra, a1
                  or           s7, tp, a5
                  srai         s6, zero, 13
                  xori         zero, a5, -678
                  slli         a4, ra, 5
                  lui          s10, 175865
                  lui          s10, 594684
                  sltiu        zero, s9, -1392
                  srl          s9, s8, ra
                  auipc        gp, 717562
                  auipc        t1, 312196
                  and          s8, t5, gp
                  sub          gp, a2, a0
                  xori         t3, a7, 1884
                  or           s7, a5, a0
                  sltu         t1, s5, tp
                  addi         a5, a7, 541
                  slti         gp, a1, 1942
                  or           sp, zero, sp
                  sra          s11, zero, s0
                  addi         s9, t6, 232
                  or           a6, t5, s8
                  srl          s0, s3, gp
                  and          sp, s1, t0
                  srai         tp, a6, 8
                  andi         a3, s3, -337
                  srl          s1, a4, s8
                  xor          s7, a6, a5
                  ori          s0, gp, -399
                  slli         s3, a4, 4
                  sub          a4, t3, s11
                  sra          s8, t1, t0
                  lui          s9, 868142
                  slt          t3, gp, s7
                  slt          a6, sp, s1
                  add          ra, a6, s3
                  xori         s9, s2, 1228
                  slti         s9, s4, 1749
                  srl          s11, zero, a2
                  slti         gp, s0, -654
                  srli         s6, a4, 10
                  nop
                  sltu         s9, zero, a2
                  lui          a0, 561198
                  and          s9, s9, a2
                  srai         s9, a1, 26
                  ori          t5, s11, 549
                  ori          t1, a2, 1825
                  ori          a3, a0, -859
                  srli         a2, t2, 2
                  add          t1, t6, s3
                  addi         s9, sp, 1936
                  sltu         a2, a1, a2
                  andi         zero, s6, -1430
                  slli         t2, s10, 17
                  addi         a7, s6, 1127
                  add          a6, s7, sp
                  or           a3, a0, s5
                  srli         a5, t3, 16
                  andi         s9, a5, -856
                  sltiu        t3, s0, 566
                  xor          a0, a3, t0
                  sub          s10, s10, s5
                  ori          t3, s2, 481
                  nop
                  slli         t3, t3, 23
                  ori          t4, gp, 1823
                  xori         t1, a0, 374
                  lui          s1, 128463
                  nop
                  sub          a0, a7, t4
                  sra          s11, a7, a6
                  sltu         a3, s0, s10
                  sra          a0, s4, a7
                  slli         a3, a1, 23
                  andi         a3, tp, -610
                  ori          s10, a2, 1698
                  xori         t5, s5, -209
                  srai         tp, zero, 3
                  andi         sp, t5, -1981
                  sll          s8, a5, s0
                  and          t2, s3, s6
                  nop
                  sub          a6, t6, a7
                  sltu         a2, a7, a4
                  ori          s7, s4, -1839
                  auipc        s2, 313815
                  sltiu        s11, a3, 1735
                  sll          s0, zero, a2
                  slt          a0, t1, t5
                  addi         a6, s8, -8
                  and          a4, s6, tp
                  or           s1, a0, t5
                  and          a0, s8, s8
                  lui          s6, 884273
                  sll          s6, t3, s6
                  srl          sp, s6, a0
                  ori          s3, t1, -298
                  xori         s2, s3, 1894
                  nop
                  srai         s11, a5, 4
                  addi         sp, s0, -270
                  sra          tp, s5, a5
                  nop
                  nop
                  lui          t3, 971005
                  xor          t5, a4, a6
                  sltiu        ra, t5, -1668
                  slli         ra, s6, 5
                  sltu         zero, s11, s0
                  auipc        s3, 102727
                  srli         s2, a6, 5
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x31, x20, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x19, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x19, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x19, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x19, x11, ecall_handler
                  li x11, 0x1
                  beq x19, x11, instr_fault_handler
                  li x11, 0x5
                  beq x19, x11, load_fault_handler
                  li x11, 0x7
                  beq x19, x11, store_fault_handler
                  li x11, 0xc
                  beq x19, x11, pt_fault_handler
                  li x11, 0xd
                  beq x19, x11, pt_fault_handler
                  li x11, 0xf
                  beq x19, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x20, x31, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x31, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x31, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x20, x31, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x20, x31, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x20, x31, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
