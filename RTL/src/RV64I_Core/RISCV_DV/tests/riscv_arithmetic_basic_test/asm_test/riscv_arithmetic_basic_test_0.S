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
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x11d13881
                  li x3, 0xa91fb627
                  li x4, 0x12ac4714
                  li x5, 0xd157df03
                  li x7, 0x0
                  li x8, 0x5398bc9
                  li x9, 0x80000000
                  li x10, 0xff2e969d
                  li x11, 0x0
                  li x13, 0x27a828fa
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0xa702593a
                  li x17, 0x80000000
                  li x18, 0xf93edba7
                  li x19, 0x9a8a8ac6
                  li x20, 0x5
                  li x21, 0x80000000
                  li x22, 0x1
                  li x23, 0xf09b51b7
                  li x24, 0xc
                  li x25, 0xf4e11c1e
                  li x26, 0x0
                  li x27, 0xfccef362
                  li x28, 0xfa8a2221
                  li x29, 0x0
                  li x30, 0xfa7e5c90
                  li x31, 0xfb7efd83
                  la x6, user_stack_end
main:             li           t0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a6, 0x0
                  li           s1, 0x0
                  li           a0, 0x4e94f6c4
                  li           a5, 0x80000000
                  li           gp, 0xa7b64976
                  li           s2, 0xffffffff
                  li           a4, 0x7c23550c
                  li           s3, 0x80000000
                  li           s4, 0x0
                  auipc        s4, 639990
                  lui          gp, 122533
                  sub          s4, gp, s1
                  sub          a6, s3, t0
                  addi         s3, a5, 1670
                  addi         s2, s1, 306
                  addi         a4, a0, -600
                  nop
                  addi         a6, a0, 622
                  addi         a6, gp, -1790
                  auipc        a0, 233773
                  sub          a5, a0, s1
                  lui          gp, 300854
                  sub          s2, s3, a4
                  add          gp, s2, s2
                  add          s4, a5, gp
                  addi         a4, a5, 1173
                  nop
                  add          a4, a6, a4
                  add          gp, s3, a0
                  lui          a6, 466211
                  lui          a0, 694641
                  auipc        a5, 420844
                  nop
                  lui          t0, 830831
                  add          s3, s3, s3
                  nop #end riscv_int_numeric_corner_stream_15
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s3, 0x0
                  li           t4, 0x0
                  li           sp, 0x0
                  li           s1, 0x45147561
                  li           ra, 0xffffffff
                  li           s11, 0x9381bbbd
                  li           a6, 0x0
                  li           a7, 0x80000000
                  li           t0, 0x0
                  auipc        s11, 288544
                  add          s6, s1, t0
                  nop
                  nop
                  sub          s3, s6, sp
                  addi         t4, sp, 400
                  add          sp, a6, s6
                  nop
                  lui          ra, 531537
                  addi         s1, a7, 1219
                  addi         s11, ra, 317
                  add          t0, sp, sp
                  sub          sp, s1, s1
                  sub          s3, a7, s1
                  lui          s6, 651666
                  sub          t4, s11, s6
                  sub          s1, s3, s11
                  nop
                  nop
                  nop
                  auipc        s11, 255778
                  sub          a7, s11, s3
                  nop
                  lui          ra, 852966
                  sub          a7, t0, t4
                  addi         t4, sp, 1046 #end riscv_int_numeric_corner_stream_4
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s0, 0x80000000
                  li           ra, 0x8be4b490
                  li           gp, 0xe089580
                  li           s10, 0xb5b9356f
                  li           a0, 0x80000000
                  li           tp, 0x80000000
                  li           t2, 0xffffffff
                  li           s1, 0x0
                  li           a1, 0x80000000
                  sub          a1, s0, s10
                  addi         tp, t2, 45
                  sub          a1, s0, a7
                  auipc        s1, 114617
                  nop
                  addi         s10, s1, 759
                  nop
                  auipc        tp, 222796
                  sub          s10, ra, ra
                  addi         s0, a0, 1174
                  sub          gp, a0, ra
                  nop
                  lui          gp, 821715
                  add          t2, ra, a7
                  add          a0, gp, tp
                  sub          gp, a0, tp
                  nop
                  add          tp, gp, t2
                  nop
                  auipc        tp, 321769
                  sub          s1, ra, t2
                  sub          t2, a1, a7 #end riscv_int_numeric_corner_stream_6
                  li           a5, 0x84e58928 #start riscv_int_numeric_corner_stream_12
                  li           gp, 0xffffffff
                  li           s8, 0x0
                  li           s7, 0xffffffff
                  li           t4, 0xffffffff
                  li           ra, 0x8b1b53e0
                  li           tp, 0x8359e2e5
                  li           s5, 0xd32cc4b0
                  li           s0, 0xffffffff
                  li           s1, 0xb4803a96
                  add          a5, s8, gp
                  addi         s7, t4, -1879
                  lui          t4, 78701
                  lui          s0, 123114
                  add          a5, a5, ra
                  addi         t4, s1, 1523
                  addi         s1, tp, -1348
                  lui          s0, 837734
                  auipc        s7, 320190
                  sub          s5, t4, s5
                  lui          s0, 181596
                  addi         tp, s8, -534
                  addi         tp, s7, 437
                  lui          tp, 248039
                  add          s7, s7, s0
                  sub          s5, s1, gp
                  addi         gp, s8, 160
                  add          s0, gp, tp
                  addi         s0, s1, -1027
                  lui          a5, 188135
                  add          tp, s0, tp #end riscv_int_numeric_corner_stream_12
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           t6, 0x80000000
                  li           a3, 0x0
                  li           s0, 0x6d44bc21
                  li           t3, 0x5515b3ce
                  li           s3, 0x80000000
                  li           ra, 0xffffffff
                  li           a5, 0x0
                  li           t4, 0x0
                  li           t2, 0x0
                  lui          t2, 878292
                  add          a3, a3, a5
                  add          ra, s0, a3
                  add          s3, a3, t6
                  auipc        t6, 447888
                  addi         t4, t3, -936
                  add          a6, t2, a5
                  nop
                  add          t2, a3, a3
                  auipc        s3, 713744
                  sub          t2, a5, t4
                  addi         a6, t4, 1075
                  lui          t2, 915142
                  add          t6, a3, t6
                  addi         t6, s3, -212
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_0
                  li           sp, 0x29dc06ba #start riscv_int_numeric_corner_stream_8
                  li           s4, 0x0
                  li           s6, 0x7c6d8c0f
                  li           s7, 0x80000000
                  li           s5, 0x80000000
                  li           s1, 0x0
                  li           a0, 0x80000000
                  li           t0, 0x0
                  li           s3, 0x80000000
                  li           s2, 0x0
                  lui          s2, 383825
                  addi         sp, s3, -574
                  auipc        s5, 852518
                  auipc        s6, 492438
                  add          a0, s3, a0
                  nop
                  add          s7, s6, s1
                  lui          a0, 361089
                  sub          a0, s3, s2
                  auipc        s6, 855569
                  auipc        s7, 5304
                  nop
                  lui          s3, 260129
                  addi         s2, s2, -745
                  sub          s6, s1, a0
                  sub          s2, s2, s7
                  nop
                  auipc        s2, 114827
                  lui          s5, 460074
                  lui          t0, 521462
                  auipc        s4, 1039882
                  add          s6, a0, t0
                  auipc        s1, 236358
                  auipc        s3, 832439
                  sub          a0, s5, s5 #end riscv_int_numeric_corner_stream_8
                  li           a7, 0x6d9d2380 #start riscv_int_numeric_corner_stream_10
                  li           tp, 0xeb78f8b1
                  li           a6, 0x2a3cc6d9
                  li           s2, 0x2a88f2d8
                  li           t0, 0x8452feba
                  li           s10, 0x80000000
                  li           s7, 0x0
                  li           a3, 0x0
                  li           t3, 0x80000000
                  li           s1, 0x5ed42d5a
                  add          s10, tp, t0
                  lui          a7, 94767
                  nop
                  auipc        s1, 995985
                  add          a3, tp, t3
                  add          tp, t3, a7
                  sub          t3, s10, a3
                  auipc        t0, 228062
                  lui          a3, 888510
                  lui          a7, 439913
                  sub          a3, s10, a7
                  sub          s10, s1, s1
                  add          s7, s1, a3
                  add          t0, s10, t3
                  sub          s10, a6, s10 #end riscv_int_numeric_corner_stream_10
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t6, 0x2aa2d573
                  li           ra, 0xffffffff
                  li           t4, 0x0
                  li           t3, 0x4d48c393
                  li           a3, 0x80000000
                  li           s4, 0xffffffff
                  li           sp, 0x0
                  li           s0, 0x80000000
                  li           s8, 0xffffffff
                  sub          s0, s4, t3
                  sub          ra, s0, s0
                  lui          t6, 436273
                  sub          s7, t6, ra
                  sub          t4, s4, a3
                  sub          a3, t6, s4
                  auipc        s0, 12287
                  sub          a3, sp, t3
                  add          sp, sp, s4
                  add          t3, t4, a3
                  sub          ra, t6, s0
                  auipc        t4, 283575
                  nop
                  nop
                  lui          s7, 624791
                  nop
                  lui          t4, 27173
                  addi         s4, sp, -1691
                  nop
                  add          a3, s7, s7
                  add          sp, s7, s8
                  addi         t4, a3, 690
                  add          sp, s8, s4
                  add          t6, t3, a3 #end riscv_int_numeric_corner_stream_9
                  lui          tp, 51421
                  sll          t4, a0, s2
                  ori          tp, a3, 753
                  sltiu        ra, s8, 881
                  srli         a0, s0, 18
                  sltiu        a3, a6, 135
                  xor          s5, gp, t5
                  nop
                  srli         a4, t2, 1
                  sltiu        a0, t5, 1015
                  auipc        s6, 493622
                  slti         s10, s11, 661
                  slli         s11, t5, 21
                  or           a7, s8, s9
                  xor          a5, t5, a5
                  add          s8, s5, ra
                  sll          s10, zero, s1
                  xor          a0, a4, s4
                  srai         s5, s11, 11
                  sll          t4, ra, t3
                  sltiu        s0, a0, 1345
                  sub          sp, t4, tp
                  or           tp, a6, t0
                  or           t2, t2, t6
                  srl          a1, s6, a0
                  auipc        a7, 1042388
                  or           s8, t5, sp
                  sltiu        a4, tp, 289
                  and          sp, a2, t6
                  lui          a4, 513136
                  andi         a5, s5, -1485
                  lui          a6, 318565
                  or           sp, sp, s1
                  and          t3, t1, s6
                  srli         t0, tp, 26
                  sll          ra, s0, t6
                  srl          a6, gp, zero
                  slli         a0, s9, 1
                  sltiu        s1, s1, -540
                  or           s1, t1, a2
                  xor          tp, a1, s10
                  ori          s10, t4, -456
                  add          a4, t2, s11
                  srai         s2, a3, 8
                  srl          t6, s7, t4
                  andi         s1, t6, -450
                  sltiu        sp, s11, -1315
                  slti         t0, t5, -986
                  xori         s4, s9, 1734
                  nop
                  lui          s8, 811577
                  slt          a5, a6, s11
                  and          s0, ra, s9
                  ori          t4, a2, -940
                  auipc        s10, 478927
                  andi         s4, s0, 50
                  sltu         s7, tp, a7
                  srai         t2, s2, 20
                  and          a4, a2, t2
                  srai         s0, a7, 20
                  slti         t2, s7, -456
                  lui          s2, 68354
                  addi         s10, s7, 355
                  lui          s6, 549272
                  nop
                  slt          a7, t5, t6
                  nop
                  add          a1, tp, a5
                  xori         tp, s4, -1107
                  sra          a6, ra, a4
                  sra          t4, s5, s4
                  ori          a6, t6, -1579
                  sltiu        zero, s1, -282
                  slli         s8, s11, 5
                  add          t0, s11, t2
                  slli         a0, s11, 18
                  slti         s7, t1, -71
                  slti         s5, s0, -941
                  ori          a1, a0, -1183
                  sll          s8, t2, t4
                  andi         t0, tp, -1907
                  ori          s9, a1, -1399
                  addi         a3, s8, 540
                  sra          sp, ra, a4
                  lui          t3, 285846
                  lui          a3, 872902
                  andi         s3, t0, -241
                  srli         gp, ra, 1
                  xor          s9, a7, s10
                  slt          t4, s10, s2
                  srli         s8, t3, 6
                  sltu         s10, a1, s4
                  sub          a0, s1, t5
                  sll          s5, s4, t6
                  andi         s5, s8, -1979
                  sra          zero, s8, t4
                  addi         s0, sp, -1972
                  auipc        s1, 441386
                  slli         s11, s3, 27
                  or           tp, a3, s11
                  slli         ra, s2, 20
                  srli         t6, s5, 31
                  sltu         tp, a2, sp
                  sltu         a3, a4, t6
                  andi         s5, s3, 264
                  add          t6, a6, a2
                  slti         a4, t4, -224
                  sll          tp, t5, s10
                  slti         sp, s0, -497
                  sll          sp, s11, zero
                  sra          s7, a0, s7
                  sra          tp, a5, s4
                  sub          s9, s5, a7
                  srli         t4, a6, 4
                  auipc        a4, 127128
                  add          sp, t6, a5
                  lui          a4, 147646
                  srl          t6, a5, a5
                  addi         t4, sp, 704
                  sra          zero, a6, a1
                  srai         t2, s9, 9
                  andi         gp, sp, -2037
                  auipc        t4, 260304
                  xor          s8, s11, t4
                  and          gp, ra, s2
                  sra          s8, a5, s10
                  addi         s6, a5, -687
                  sltiu        a7, ra, 1308
                  and          s7, t5, t3
                  add          a6, s6, s4
                  ori          t0, s5, 1674
                  lui          s9, 236646
                  or           s6, sp, s6
                  nop
                  lui          sp, 834083
                  or           s2, ra, s4
                  srai         t4, t4, 17
                  sub          s3, s5, t3
                  andi         a0, s3, 830
                  xori         t4, t1, 1502
                  sra          sp, t6, t5
                  xor          a3, t4, t3
                  add          s10, s8, s6
                  xori         a7, tp, 761
                  srl          t4, t2, gp
                  sltu         a7, a7, a3
                  xor          s4, s4, t0
                  andi         zero, a7, 1791
                  slti         a5, t0, -124
                  add          s7, s6, t3
                  add          s5, t0, t2
                  slti         a3, s4, -1278
                  nop
                  sra          t0, ra, a0
                  nop
                  nop
                  sub          tp, t0, s10
                  or           s11, a3, s10
                  srl          sp, s0, s0
                  add          s9, s0, t4
                  slti         a5, s0, 1799
                  sra          a4, s6, s4
                  sub          a0, ra, s4
                  addi         a1, t0, 1880
                  srl          a3, t4, s4
                  addi         s3, a1, 1647
                  or           gp, t0, a6
                  srli         a6, t3, 7
                  and          a6, a4, s0
                  srai         s10, s11, 3
                  srai         tp, zero, 15
                  slt          s4, sp, t3
                  srli         a7, t3, 21
                  sltu         t4, a4, gp
                  auipc        a1, 946343
                  xor          s2, a2, a0
                  sltiu        zero, t6, 189
                  addi         a7, s2, 1951
                  auipc        t6, 661034
                  srli         zero, a0, 25
                  sll          t4, sp, a1
                  ori          t2, s7, 1013
                  srli         s3, ra, 12
                  nop
                  slt          zero, t4, s1
                  or           t6, s6, t1
                  addi         a6, t1, -739
                  xor          s3, s2, tp
                  add          ra, s1, s2
                  slli         a0, a1, 12
                  xori         t0, s0, -1435
                  andi         a3, sp, -1780
                  slli         s2, a4, 17
                  auipc        a7, 878343
                  sltiu        a1, a4, 884
                  sltu         a6, s5, s11
                  and          a7, a1, a1
                  nop
                  srai         ra, tp, 30
                  nop
                  srl          a5, s9, t1
                  lui          s2, 968632
                  ori          t6, a0, -505
                  xor          gp, zero, s5
                  auipc        a5, 497297
                  sra          t3, t6, a3
                  andi         s10, t4, -738
                  andi         t6, sp, 621
                  sll          a6, s11, a2
                  slti         t6, t5, 845
                  lui          t2, 925192
                  or           tp, s10, t1
                  srli         a3, s6, 19
                  sll          tp, t0, tp
                  add          gp, tp, t4
                  sltu         s10, tp, s0
                  auipc        s11, 885768
                  sra          s0, t3, s2
                  andi         s10, t3, 216
                  slti         t6, s9, -1035
                  nop
                  sub          s11, a4, a1
                  sll          a4, s0, a5
                  sra          s8, gp, t6
                  or           t3, t0, t3
                  auipc        s0, 129288
                  slli         t6, a4, 2
                  srl          a0, a4, tp
                  sra          gp, t2, ra
                  lui          tp, 971791
                  andi         t4, t0, -399
                  or           s2, t4, s7
                  sltu         t4, a3, s2
                  slt          s10, tp, t0
                  nop
                  sub          s8, t2, t4
                  slti         s8, t0, -909
                  auipc        gp, 726322
                  xori         t0, a5, 2020
                  lui          s0, 1043814
                  sltu         t4, a5, s9
                  srli         a6, s7, 22
                  ori          a4, t1, -183
                  or           t0, a7, t2
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           t2, 0xe3f6ee44
                  li           t4, 0x7d95cd77
                  li           s5, 0xffffffff
                  li           t6, 0x0
                  li           tp, 0x80000000
                  li           a3, 0xffffffff
                  li           s10, 0x80000000
                  li           s11, 0xb8b4a83c
                  li           a6, 0x80000000
                  lui          s10, 718453
                  auipc        tp, 147414
                  add          t2, t6, a3
                  add          t4, s10, t4
                  nop
                  auipc        s11, 968138
                  addi         a6, tp, 79
                  lui          t2, 786484
                  addi         tp, a6, 538
                  add          s10, a6, a6
                  auipc        a3, 546293
                  sub          s11, s10, tp
                  add          a3, t6, t4
                  nop
                  auipc        tp, 48632
                  nop
                  add          s3, a3, s3
                  add          tp, s3, tp
                  addi         s10, tp, -187
                  nop
                  add          tp, a3, a6
                  lui          s5, 1004906
                  nop
                  add          s3, t2, s11
                  sub          a6, s10, t6
                  addi         s11, s10, 44
                  sub          t2, t2, t6 #end riscv_int_numeric_corner_stream_16
                  auipc        t4, 897261
                  and          s9, s1, zero
                  sra          s1, s8, s0
                  nop
                  slti         sp, ra, -1527
                  sltu         s9, a4, s0
                  slt          s1, t3, a2
                  auipc        t6, 62001
                  srai         a5, t0, 0
                  or           a4, a4, a3
                  sltu         t6, gp, a0
                  ori          a6, s6, 1089
                  slti         a0, s4, -421
                  addi         a5, t6, 215
                  slti         a3, s0, -1056
                  add          s0, a4, sp
                  srl          s6, a6, s11
                  slti         s5, s9, -809
                  auipc        a4, 398318
                  addi         s9, t0, -547
                  andi         t0, t3, 1957
                  slt          s10, sp, t2
                  sltiu        zero, t6, -796
                  andi         t3, a6, -2035
                  sub          a5, a3, zero
                  slti         a4, a0, 925
                  add          a4, t0, t1
                  nop
                  xor          tp, a3, s11
                  ori          s7, s7, 606
                  and          s9, a6, s4
                  sub          s4, a6, ra
                  sll          s8, s11, s9
                  auipc        s0, 363948
                  auipc        s1, 928456
                  ori          s2, s3, 1163
                  add          s4, s4, s1
                  addi         a7, s5, -701
                  and          s0, s5, s0
                  slti         s11, a6, 1339
                  sltiu        s2, a7, -1671
                  nop
                  ori          s6, a4, 292
                  or           s1, s2, zero
                  and          s8, ra, a4
                  add          s1, s2, t5
                  nop
                  slti         s9, s10, -1901
                  srli         s6, gp, 26
                  sra          s2, a0, t5
                  lui          s3, 926167
                  xori         s3, s2, -875
                  ori          t6, zero, 637
                  addi         a1, ra, -744
                  srl          s3, a5, s11
                  and          zero, t1, t3
                  or           s10, s3, t6
                  sra          gp, s8, s1
                  or           a4, t4, s6
                  lui          tp, 200407
                  sltu         s9, sp, t1
                  auipc        s9, 226493
                  addi         a0, a7, -508
                  srli         t3, a7, 25
                  srli         s10, s9, 27
                  sltu         a7, s1, a7
                  addi         a3, a0, -1137
                  srai         gp, sp, 13
                  lui          s4, 689844
                  andi         s3, s11, -1869
                  sll          s11, a2, a3
                  sub          a4, s6, s5
                  srl          s3, a2, s4
                  addi         a0, a3, 1476
                  sra          a5, t1, a3
                  srai         s2, ra, 14
                  and          s7, gp, a6
                  lui          s11, 567657
                  addi         s11, t6, -576
                  xori         s11, s3, 1619
                  addi         tp, t6, -1670
                  slli         t4, s2, 9
                  srai         a7, a6, 1
                  auipc        t6, 423666
                  srl          s8, s3, s10
                  lui          s3, 621473
                  slt          s9, zero, gp
                  sltu         a7, s5, a1
                  and          s11, s5, s9
                  slti         a4, s5, -1426
                  or           zero, s11, tp
                  lui          tp, 956319
                  slli         s6, t2, 14
                  andi         s2, s2, 896
                  sltiu        a0, s9, 546
                  or           s4, s3, a1
                  slt          t0, s3, s0
                  srl          s5, t0, s1
                  srai         s5, a5, 21
                  and          s10, zero, s6
                  ori          t6, t6, 1523
                  sll          t4, s6, s2
                  nop
                  auipc        s7, 108703
                  slti         s10, ra, -33
                  xori         ra, a4, -1732
                  xori         s9, a3, 1666
                  auipc        a0, 378436
                  ori          t0, s10, -1696
                  xor          ra, t1, s11
                  sra          a7, s10, t0
                  srli         a1, ra, 7
                  sltu         a1, tp, a6
                  sub          s9, s0, s6
                  sltu         ra, a4, s8
                  nop
                  andi         s9, a5, 456
                  nop
                  sub          s5, a0, s2
                  sra          a5, s8, s1
                  srl          s5, zero, s1
                  sll          a6, s8, t3
                  srai         a0, s1, 4
                  xori         s3, a5, -412
                  and          a4, a4, a6
                  andi         t0, s10, 1839
                  sltu         s1, ra, a6
                  xori         s4, a5, -1929
                  xor          a4, a6, a6
                  sltu         t4, tp, a1
                  srli         s4, t5, 11
                  sll          sp, s6, sp
                  srl          a0, t0, t6
                  andi         a6, t4, -5
                  nop
                  sll          t0, s8, t5
                  auipc        ra, 611957
                  andi         s3, t4, -885
                  sub          s6, zero, a6
                  sra          s11, s1, zero
                  sra          a1, t6, ra
                  and          a4, t6, a3
                  lui          a0, 704964
                  xori         s6, s0, 947
                  or           a7, s2, sp
                  xor          s8, a3, a1
                  sll          t3, s8, t4
                  sltu         a1, s5, a4
                  addi         s4, s8, -1012
                  andi         s9, s9, 1492
                  addi         a7, t3, -339
                  srli         s9, s8, 21
                  slli         tp, s1, 6
                  and          s1, tp, s10
                  or           a7, s9, a7
                  slti         a4, a7, -963
                  srl          s6, s0, gp
                  sltiu        s0, t2, -1626
                  xor          t3, s6, tp
                  srai         a5, s10, 2
                  add          s5, s8, zero
                  slti         t6, t2, -1820
                  addi         a5, s1, 1203
                  nop
                  slt          t2, t1, a3
                  add          a6, s3, t3
                  srl          a1, t5, zero
                  slt          t4, a2, a5
                  slli         s0, a6, 20
                  and          a7, s9, s0
                  sub          a5, s6, tp
                  xori         s1, zero, 1106
                  or           a5, s6, a5
                  slti         s6, t1, 515
                  or           s5, s7, zero
                  xori         s4, s11, 1804
                  auipc        s0, 844424
                  slt          s10, t4, a2
                  sltiu        a6, a1, -1828
                  sll          t0, zero, t1
                  slt          ra, t6, sp
                  sll          s10, a2, t3
                  srl          t3, a3, s9
                  xori         t3, s9, -1633
                  sltu         s5, t0, t4
                  sltiu        a6, t0, 1934
                  addi         s5, s5, -448
                  sra          s4, sp, s10
                  srl          t0, s10, gp
                  and          t3, s10, t4
                  srl          s3, s4, a5
                  auipc        s3, 393116
                  srai         s5, t2, 28
                  auipc        s6, 850179
                  sll          s4, a5, a5
                  sltiu        s11, a5, 1085
                  slti         t3, t0, -1727
                  addi         s11, zero, 1014
                  xor          a4, s4, s9
                  sltu         a4, t1, a6
                  slli         a7, t2, 15
                  sltu         s10, a2, s9
                  slti         s11, s8, -70
                  nop
                  add          t2, t2, t2
                  addi         s3, t0, 855
                  srl          t3, a2, t3
                  lui          t3, 1047894
                  sltu         s10, t5, t2
                  slt          s9, zero, sp
                  sll          a3, s10, gp
                  or           t2, t1, a1
                  ori          ra, s6, 207
                  srai         s0, a0, 1
                  xor          a0, a3, ra
                  ori          a6, a2, 1945
                  xori         t2, t3, 1803
                  auipc        s8, 912574
                  or           a6, t2, t0
                  srai         s6, sp, 29
                  nop
                  add          s10, tp, t4
                  sub          a5, a2, s3
                  srli         t4, a1, 3
                  slt          a0, a6, zero
                  addi         s0, t6, 717
                  ori          tp, t2, 433
                  sub          t0, s0, t4
                  srli         gp, s3, 1
                  srl          s2, a1, s7
                  lui          gp, 87429
                  auipc        s6, 166720
                  addi         ra, t5, 880
                  slt          t3, a4, tp
                  nop
                  sll          t0, t4, a1
                  addi         s8, a3, -1745
                  srl          s7, t3, s6
                  andi         t2, a6, -1491
                  xor          s5, a4, s4
                  auipc        ra, 242304
                  srli         t4, a7, 11
                  srl          s5, a4, s4
                  lui          s1, 861757
                  xor          a7, s1, t3
                  lui          t2, 161367
                  srli         s6, zero, 27
                  addi         s8, s7, 648
                  lui          t2, 634979
                  sltu         t3, s2, s11
                  slli         zero, s3, 3
                  xori         t0, t1, 102
                  andi         a5, s10, -1443
                  xor          t2, s0, t1
                  sltiu        s3, s9, 1591
                  srai         a4, s8, 1
                  srl          a4, t1, s10
                  slti         zero, ra, 1766
                  or           s9, a3, s11
                  slli         a3, s8, 30
                  or           s7, t0, s5
                  addi         a7, zero, 1351
                  ori          t0, sp, -1912
                  sltiu        ra, t4, 1201
                  slli         a0, s1, 22
                  srli         s2, a1, 15
                  nop
                  slli         t4, t4, 1
                  sll          s3, s2, a4
                  sltiu        s0, s1, 277
                  slli         s6, s7, 0
                  xor          tp, a7, t0
                  srl          a7, s9, s3
                  slt          a0, sp, zero
                  lui          a3, 438790
                  lui          s7, 362915
                  andi         s5, gp, 1893
                  and          t6, a5, t2
                  slt          t3, s6, tp
                  slt          a5, t4, t3
                  slt          a0, s10, s10
                  andi         s3, t6, 715
                  auipc        zero, 625881
                  and          a4, t4, t1
                  sub          a4, s5, s0
                  lui          s6, 848629
                  srli         tp, t3, 17
                  sltu         a0, a0, t0
                  lui          a1, 998909
                  srl          s9, a0, a6
                  and          t6, s10, s8
                  srl          sp, s7, t5
                  sltu         ra, s4, tp
                  and          a5, s1, t2
                  sra          s7, a1, a3
                  sltiu        a0, sp, -519
                  andi         a6, t3, -841
                  sltiu        tp, t2, 656
                  nop
                  ori          s5, s7, 315
                  auipc        s1, 624355
                  srli         s10, a7, 12
                  srai         s10, a3, 12
                  and          t3, gp, s8
                  and          t2, a2, a7
                  sltiu        a0, s6, 605
                  and          a3, zero, s5
                  srl          a1, s9, t3
                  sltiu        t6, tp, 1070
                  srli         a7, ra, 26
                  sltu         s1, a7, a4
                  slli         s1, gp, 12
                  ori          s2, a1, 770
                  nop
                  sub          s2, s2, zero
                  slt          s7, a1, s3
                  add          zero, t4, t6
                  sll          s7, a5, s0
                  addi         s11, a5, -1026
                  or           a3, a3, sp
                  xori         s1, ra, -1224
                  or           t2, t5, t1
                  slli         a5, t5, 29
                  sra          a4, zero, a0
                  srai         s11, a4, 9
                  srli         gp, t2, 12
                  nop
                  andi         a0, a2, 393
                  auipc        s8, 828298
                  or           a3, s4, s0
                  srli         a6, t0, 16
                  slli         a7, s3, 8
                  sltiu        a4, t2, 1670
                  slti         s1, t3, -1972
                  and          sp, a7, a1
                  slli         t0, zero, 19
                  sltu         t6, s9, t5
                  andi         s4, s7, 1433
                  srli         s10, sp, 16
                  lui          s7, 567463
                  addi         t0, a5, -1176
                  xor          a4, t4, t6
                  srai         a3, ra, 23
                  slli         s8, t0, 1
                  sltu         s4, s5, gp
                  srli         sp, t1, 4
                  sltiu        a5, s6, 364
                  srli         s10, a1, 11
                  srl          s11, ra, t0
                  nop
                  or           a5, a6, t1
                  sra          s9, a0, tp
                  slt          t6, zero, a5
                  slt          t4, t6, a6
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s7, 0xffffffff
                  li           s3, 0x80000000
                  li           sp, 0xffffffff
                  li           s5, 0x4e9b9867
                  li           a5, 0x0
                  li           a1, 0xffffffff
                  li           s6, 0x0
                  li           s0, 0xffffffff
                  li           tp, 0x0
                  lui          a1, 1036460
                  lui          s0, 784431
                  addi         s7, s6, 663
                  sub          tp, s5, tp
                  lui          s5, 471239
                  auipc        s6, 610637
                  lui          s0, 454600
                  add          s3, sp, a5
                  add          tp, sp, s3
                  add          t3, tp, tp
                  auipc        tp, 1048289
                  sub          s6, t3, sp
                  auipc        s5, 241069
                  add          sp, t3, s7
                  auipc        t3, 981215
                  sub          s5, s7, s0
                  add          s5, s6, s6
                  lui          tp, 427164
                  add          sp, tp, tp
                  addi         s6, sp, 1509
                  auipc        tp, 785639
                  nop
                  lui          s0, 343490
                  addi         s7, s6, -1600 #end riscv_int_numeric_corner_stream_2
                  andi         s6, s11, 126
                  sll          s4, s11, t3
                  sll          t3, a3, s8
                  or           sp, t1, s1
                  xor          s0, t3, t2
                  slt          s1, a1, s10
                  slti         s5, s4, 203
                  xori         a3, sp, -1110
                  auipc        a0, 939199
                  lui          a5, 216201
                  sub          t0, sp, a0
                  and          sp, t4, s10
                  or           s1, ra, s11
                  slli         a6, s8, 25
                  xori         s8, a0, -887
                  nop
                  srl          t0, a7, s1
                  slt          t0, s9, s9
                  andi         t2, t4, 1863
                  add          a7, s7, a1
                  andi         s6, s10, -643
                  srli         s5, sp, 12
                  andi         a7, a5, 1017
                  andi         t6, s9, 1097
                  slti         a1, ra, -532
                  auipc        s3, 586977
                  add          sp, s8, s2
                  sub          s6, a0, a2
                  sll          t0, sp, a1
                  auipc        sp, 179783
                  slti         s9, gp, 1851
                  srli         t4, gp, 0
                  xor          s4, zero, a2
                  and          a4, tp, s5
                  xor          s5, s4, gp
                  addi         s4, t6, -1488
                  add          s7, s11, s1
                  sra          s11, a2, s3
                  xori         t4, s11, 1113
                  sub          s7, a5, t1
                  or           s9, a0, a1
                  slli         t6, s3, 5
                  nop
                  srl          zero, s2, t6
                  sltu         t4, s8, gp
                  sltu         s0, s2, a6
                  and          s7, t6, s8
                  sltiu        s0, t0, -158
                  or           gp, s5, a1
                  sll          a3, t0, a7
                  xor          s11, t6, a0
                  addi         t3, s8, 44
                  ori          s11, zero, 2019
                  andi         s3, s7, 604
                  slli         s10, a7, 6
                  or           t4, s8, tp
                  lui          s10, 944497
                  xor          a6, a6, gp
                  srai         s2, a1, 23
                  and          s6, t1, s4
                  auipc        s1, 760142
                  auipc        s3, 360412
                  srli         s11, a0, 8
                  andi         s6, a4, 104
                  addi         s5, zero, 1117
                  sub          s9, t4, a1
                  li           s7, 0xaaf4c4c9 #start riscv_int_numeric_corner_stream_11
                  li           t6, 0x0
                  li           s5, 0x0
                  li           s2, 0x0
                  li           s4, 0xb6886bf9
                  li           gp, 0xffffffff
                  li           s9, 0x0
                  li           t4, 0x80000000
                  li           s0, 0x9f7b1a4b
                  li           t2, 0x0
                  add          s7, t2, s9
                  lui          s0, 233237
                  nop
                  nop
                  add          t2, s4, s7
                  auipc        s0, 621862
                  nop
                  add          s7, s5, s5
                  addi         t6, t4, -621
                  add          s2, t2, t2
                  auipc        t6, 603635
                  addi         s5, s2, -166
                  add          gp, s2, s4
                  add          s7, t6, s0
                  addi         t6, s5, -429
                  sub          s2, t6, s2
                  add          s2, s5, s2 #end riscv_int_numeric_corner_stream_11
                  sub          s2, s9, a5
                  nop
                  andi         tp, t6, 1083
                  slli         s8, t6, 17
                  sub          s0, t6, sp
                  sra          t4, a0, a0
                  sll          s9, sp, t1
                  sltu         a6, a5, a6
                  slti         s1, zero, -1679
                  srl          s2, s5, a0
                  slti         t3, s5, 116
                  lui          a3, 312561
                  sltiu        a6, s4, -1669
                  xor          s3, s4, ra
                  add          gp, s2, a6
                  nop
                  ori          s0, a0, 2028
                  lui          a5, 809946
                  sub          s8, t4, s6
                  ori          t6, a3, -94
                  sra          a3, s6, s6
                  auipc        sp, 505314
                  auipc        a3, 209717
                  nop
                  slt          zero, a3, a6
                  sll          a7, a7, s5
                  ori          gp, t2, 1733
                  srli         s3, s9, 15
                  srli         s2, a0, 5
                  xor          s10, t2, zero
                  srli         t2, t5, 11
                  sltiu        a6, a4, 504
                  nop
                  ori          s6, tp, -27
                  andi         s1, s1, 1421
                  add          s9, a1, s5
                  slli         s6, s7, 5
                  auipc        tp, 70830
                  xori         t4, a7, 2013
                  lui          s1, 443339
                  ori          s8, s8, -63
                  sltu         sp, a7, s3
                  sltiu        s9, s11, 1889
                  xor          t6, sp, t1
                  andi         a1, s5, 1414
                  sub          s11, a4, zero
                  auipc        t4, 843446
                  slli         s7, s3, 24
                  sltu         t6, t5, s7
                  nop
                  andi         a5, a6, -942
                  ori          gp, t1, -182
                  or           gp, a1, t0
                  ori          s1, sp, 1334
                  srai         sp, s8, 24
                  sub          ra, t4, t1
                  xor          a1, t6, a2
                  auipc        s6, 774301
                  srl          sp, s0, s3
                  sra          t0, t6, s8
                  ori          t4, t0, 736
                  andi         s7, s2, 582
                  srli         a3, s5, 24
                  sltu         sp, a0, a5
                  sltiu        ra, ra, -845
                  slt          s2, t5, a4
                  addi         s11, sp, 690
                  ori          s7, s4, -697
                  sub          ra, s3, zero
                  xor          t0, a1, s10
                  slti         a7, a2, 1361
                  andi         s4, t1, 753
                  srl          a6, s10, a3
                  or           t2, tp, ra
                  sub          a3, s1, a3
                  andi         s3, a2, 915
                  srl          t4, a2, t2
                  sub          a1, s1, a5
                  ori          a7, s5, -428
                  auipc        s5, 568439
                  xori         s6, a4, -728
                  sltu         s8, t6, ra
                  lui          sp, 600903
                  sltu         a4, a5, zero
                  xori         t6, s5, -149
                  sra          sp, a4, s5
                  srai         a1, ra, 7
                  sra          a3, t6, tp
                  auipc        s11, 957737
                  sltiu        s4, s9, -590
                  slli         t3, t0, 5
                  lui          t4, 646814
                  srai         ra, sp, 12
                  srai         s3, s9, 15
                  andi         zero, a6, 1264
                  ori          t0, s8, 1309
                  auipc        t2, 646602
                  nop
                  srli         t3, zero, 5
                  add          s4, a1, t3
                  xori         s7, t2, -1757
                  andi         s10, a4, -37
                  sub          sp, t3, s7
                  addi         t6, a7, -1498
                  slli         s5, s7, 10
                  slt          a1, s3, t1
                  xori         a4, sp, 1782
                  lui          a5, 33093
                  slli         s10, t3, 24
                  xor          t2, zero, t5
                  srli         t6, s4, 4
                  addi         s8, sp, 227
                  sub          zero, s11, t0
                  nop
                  nop
                  sltu         a3, s5, a3
                  andi         tp, a4, -127
                  slt          t2, t2, t5
                  sltu         s3, zero, gp
                  auipc        ra, 621887
                  ori          s0, a1, 1277
                  or           s4, a7, a2
                  addi         a0, a3, -1293
                  sltu         s10, s5, t4
                  add          s8, t1, t2
                  lui          s4, 134033
                  lui          a3, 707103
                  xor          a5, a3, a7
                  and          t6, s11, gp
                  sra          a1, s3, s2
                  nop
                  slt          s8, a1, s9
                  sra          a3, a6, t1
                  srai         s10, t5, 21
                  lui          gp, 984777
                  xor          tp, a1, s2
                  and          s11, t0, t3
                  add          a5, a6, a7
                  slli         s1, t2, 31
                  lui          s3, 646947
                  xori         s6, ra, -455
                  and          s4, t0, s2
                  or           s1, a1, s0
                  and          s6, a4, t3
                  nop
                  slti         s1, zero, 2033
                  nop
                  nop
                  sra          a3, s5, a0
                  ori          gp, s2, 1487
                  sra          t4, gp, tp
                  and          t0, a7, s0
                  lui          t4, 904990
                  srl          s0, a1, a3
                  sltu         s2, t6, a5
                  sltiu        s0, t1, 1973
                  slt          s1, s10, s4
                  nop
                  nop
                  slli         s11, a6, 14
                  slt          a4, s4, t2
                  or           a0, s11, t5
                  addi         a1, a5, 1584
                  xori         t3, zero, 908
                  srl          t0, a3, s6
                  auipc        t0, 938048
                  srli         a6, s4, 2
                  srli         s1, a5, 7
                  sra          t0, a5, gp
                  sll          s4, s6, t3
                  sll          a5, a6, s6
                  sra          s7, tp, a5
                  auipc        t0, 734902
                  ori          t3, gp, -1743
                  or           s2, sp, s10
                  sltu         a3, a2, s3
                  srai         a0, a6, 11
                  sltu         t0, s10, gp
                  srai         s6, t5, 23
                  xor          t2, t6, s0
                  sltiu        s3, s5, 1668
                  slt          s5, a2, a0
                  sltiu        a3, a2, 545
                  andi         a6, a0, 1485
                  sra          s0, gp, a6
                  sltiu        a0, a5, -410
                  add          s1, s10, s9
                  lui          s2, 2586
                  sub          s4, tp, a6
                  slti         a1, s10, -1929
                  lui          tp, 1003726
                  add          s3, t1, s5
                  or           a4, s1, s6
                  and          a4, a7, s7
                  lui          a3, 556694
                  sra          s5, t2, t4
                  srli         t6, a2, 21
                  sra          a0, s2, a1
                  srai         s0, t5, 4
                  addi         s4, a5, 1778
                  ori          tp, a1, -904
                  xor          tp, t3, sp
                  sll          t2, t0, s1
                  nop
                  srli         s3, s8, 26
                  sra          s4, t5, t1
                  andi         sp, a3, -659
                  sltu         t3, t5, a2
                  xor          a5, a4, a0
                  xori         s3, a4, 281
                  srli         a0, tp, 13
                  sub          s11, t3, a3
                  srai         s5, t2, 28
                  srai         t0, a2, 22
                  sll          t2, t5, a4
                  sltu         s8, tp, a5
                  srli         s0, a4, 14
                  auipc        s9, 462048
                  auipc        tp, 345953
                  slti         t6, s3, 561
                  andi         sp, gp, -648
                  slli         sp, sp, 0
                  nop
                  sub          gp, a6, s6
                  srli         ra, t3, 21
                  slli         a4, gp, 7
                  sll          a6, a7, s6
                  sll          s4, a1, a0
                  sra          s9, ra, a1
                  andi         s11, t5, 1774
                  srai         s10, a6, 24
                  sll          t3, s0, a0
                  sltiu        a4, t0, 736
                  and          a0, s2, a4
                  sll          s1, s8, t0
                  or           s8, t6, s7
                  slli         s11, t1, 25
                  add          t4, t4, s3
                  lui          s0, 129465
                  slli         s7, a1, 5
                  srli         s0, t2, 3
                  slti         a3, s10, 1346
                  slti         s2, ra, -1840
                  srli         a0, a6, 8
                  and          a3, t1, sp
                  sltu         s10, gp, sp
                  xori         s3, sp, -96
                  nop
                  srai         a0, sp, 15
                  slt          t0, s8, s4
                  srli         a3, s5, 9
                  addi         s0, a3, -734
                  auipc        a5, 305829
                  slti         s6, s4, -1328
                  slli         a6, a3, 8
                  sltiu        s6, tp, -1065
                  addi         s7, s5, 688
                  slli         s5, s4, 31
                  and          a3, a5, a7
                  srl          s4, a7, s0
                  andi         t3, a7, -740
                  srli         t2, a3, 2
                  add          a0, a0, sp
                  and          a1, a4, s0
                  srai         t0, sp, 2
                  auipc        t2, 919799
                  sltu         zero, t3, s5
                  slt          t0, tp, s8
                  slt          s9, s0, a7
                  nop
                  srli         s3, t4, 9
                  sub          a6, s5, zero
                  addi         ra, s1, 1152
                  auipc        s3, 838669
                  slt          sp, t6, t0
                  sltiu        t0, ra, -1759
                  srli         s1, a2, 24
                  srai         s9, t4, 2
                  sra          s7, a1, a1
                  xori         tp, s4, 1459
                  nop
                  slt          tp, a7, zero
                  auipc        s11, 789895
                  sll          s4, s6, s4
                  slt          a0, s8, a1
                  slt          a3, gp, a2
                  sltiu        s1, a7, 102
                  xor          t4, s3, a1
                  slti         s6, sp, -1946
                  srai         ra, t1, 16
                  slti         tp, s1, 1891
                  ori          s4, gp, 1501
                  addi         s3, s0, -1452
                  or           a1, ra, a0
                  ori          a6, t0, 745
                  ori          a5, a6, -1831
                  andi         a7, a5, 1258
                  sltiu        s5, t1, 1723
                  sra          t3, gp, t5
                  srli         t4, tp, 13
                  auipc        s0, 321254
                  sub          s2, s3, t1
                  addi         a4, s9, 1196
                  srai         a0, s7, 10
                  xor          s6, s9, s2
                  xori         sp, t4, -1096
                  or           a1, sp, zero
                  or           a5, s11, gp
                  nop
                  slli         s2, a7, 31
                  and          a6, a3, s10
                  addi         a7, tp, -784
                  andi         t0, s1, 523
                  nop
                  sra          zero, t1, ra
                  add          a0, s5, sp
                  xori         t0, s11, 657
                  andi         s0, t0, 747
                  lui          t0, 396705
                  andi         tp, tp, 856
                  xor          s0, t6, a4
                  srai         t3, a3, 3
                  and          s4, s10, t2
                  addi         s11, s8, -2000
                  slli         s0, a4, 21
                  and          s4, s1, a2
                  sltiu        sp, t2, -1785
                  sltiu        s0, t0, -2045
                  srli         a0, s7, 30
                  sub          t6, sp, s6
                  sltu         s4, s8, s10
                  sra          t4, s9, a1
                  sra          ra, a2, a1
                  xor          s2, s7, s4
                  sra          s1, t3, t0
                  slt          t4, gp, s9
                  xori         s0, a4, -1418
                  srai         a7, s3, 18
                  slti         a3, a2, 904
                  slt          t6, t5, s11
                  slli         t4, s10, 13
                  add          ra, s8, sp
                  add          s8, a2, a5
                  slti         s6, t0, -1876
                  xori         s9, s9, -1590
                  sltu         s1, a6, s1
                  sltu         a6, sp, s10
                  addi         s9, a7, 1696
                  xor          s0, s10, a7
                  slti         s9, t4, 1464
                  andi         tp, s3, -1044
                  sltu         s0, tp, s6
                  srl          a1, s7, sp
                  addi         t4, s10, 117
                  nop
                  sra          a1, a7, s9
                  lui          t4, 105981
                  slti         t6, t6, -392
                  xor          t6, s2, s1
                  addi         sp, s6, 1419
                  sltu         gp, a5, a3
                  slt          s9, s1, gp
                  slti         a7, ra, -1376
                  srli         s11, sp, 7
                  sltiu        s8, s6, 361
                  srl          t4, a2, s5
                  srli         t2, s7, 28
                  slli         t4, s2, 1
                  or           tp, s9, s0
                  addi         a1, a5, 1277
                  xor          sp, zero, a7
                  xori         s6, a0, -400
                  xor          s3, a7, t0
                  andi         a6, s5, 1855
                  andi         t2, s7, -236
                  sltu         s4, a0, t5
                  sltu         s8, a7, t2
                  sltu         a4, s3, a3
                  slli         s7, a2, 0
                  addi         s5, a0, -352
                  and          s11, s11, a6
                  sll          a4, sp, zero
                  auipc        a5, 625540
                  xor          s1, t3, a6
                  ori          s6, t0, 1609
                  xor          t3, t4, t0
                  xor          t3, a0, zero
                  srli         a0, s4, 11
                  srai         sp, a6, 6
                  slli         a1, s6, 21
                  sltu         s7, a7, t5
                  slt          sp, t3, a6
                  or           a1, sp, gp
                  lui          a0, 950062
                  slt          a5, a4, s4
                  slti         gp, s5, 1099
                  auipc        s9, 329089
                  xor          t4, s8, gp
                  ori          s10, s11, 1330
                  xor          t6, ra, t2
                  sra          s8, s8, t0
                  sra          t4, a6, a5
                  xor          ra, a2, t6
                  lui          ra, 590878
                  slti         a1, a3, 1676
                  sltu         a0, t2, a6
                  sub          a6, t4, a0
                  sub          s9, t1, sp
                  srl          s2, s1, a3
                  addi         gp, s1, -1535
                  or           t0, s10, a5
                  srli         s3, t2, 24
                  srl          a7, s10, t5
                  add          t0, a0, s8
                  auipc        s5, 656625
                  sltu         a7, s8, a5
                  srai         t6, s8, 30
                  xor          a0, s2, t4
                  andi         s11, gp, -726
                  auipc        s1, 868601
                  or           a5, tp, s3
                  slli         ra, ra, 19
                  ori          s9, a3, -1058
                  sll          s10, s7, s3
                  sltiu        s7, s9, -433
                  slt          a0, t0, s3
                  and          a4, t3, a3
                  slli         a5, a4, 4
                  sltu         t0, s0, t2
                  addi         s1, a5, -218
                  sltu         s5, a6, a0
                  lui          ra, 395553
                  or           a5, t1, zero
                  xor          s6, s0, t3
                  slt          a5, t6, s3
                  sll          a1, a0, sp
                  add          a7, s6, gp
                  lui          a6, 697874
                  and          s6, t2, t5
                  lui          s5, 1045502
                  ori          t6, t1, 727
                  sltu         sp, a7, a0
                  slt          s11, a2, t1
                  xor          a3, sp, a4
                  slt          a6, a3, a1
                  andi         a5, t0, -606
                  slti         s6, a4, 849
                  sltu         tp, s3, s10
                  slt          s9, s11, a5
                  slti         s10, a1, 775
                  auipc        s6, 386596
                  nop
                  sltiu        a1, a2, -95
                  or           tp, sp, ra
                  srli         ra, a1, 4
                  lui          s3, 494183
                  sra          s5, s2, s7
                  srli         a5, ra, 25
                  slli         a3, a7, 31
                  xor          s10, s1, ra
                  slti         s1, s6, 693
                  or           a1, t1, s4
                  or           a0, sp, s1
                  sltu         s1, a0, t3
                  and          s4, s11, a4
                  xori         s2, a5, 338
                  slli         s11, a6, 26
                  or           a6, zero, s4
                  sra          sp, ra, s0
                  slli         s1, tp, 9
                  srli         a5, a1, 4
                  srai         s11, a0, 8
                  lui          s10, 352829
                  andi         sp, ra, -106
                  slli         s1, gp, 6
                  auipc        ra, 783736
                  xori         s0, sp, -1999
                  lui          gp, 795731
                  xor          a4, s0, t6
                  ori          s5, a1, 987
                  srai         a1, s7, 14
                  srli         s8, s3, 13
                  srai         gp, s2, 6
                  sltu         t4, t6, ra
                  srl          t4, t2, t5
                  and          t2, a7, t6
                  add          t2, s11, t1
                  sra          t2, s1, s11
                  sra          s9, tp, s5
                  srl          sp, zero, t1
                  addi         s8, s9, 1419
                  lui          a4, 566914
                  srli         a7, a4, 18
                  xor          t2, s8, s5
                  nop
                  slli         s2, a2, 13
                  and          s6, t4, t6
                  andi         zero, s11, 1087
                  xori         s8, s0, -2006
                  sll          s3, a6, s4
                  lui          s2, 396792
                  nop
                  or           a6, gp, a0
                  srl          s10, sp, t0
                  sub          s9, a3, s0
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s9, 0x0
                  li           ra, 0xffffffff
                  li           a1, 0x0
                  li           s11, 0x0
                  li           t2, 0xffffffff
                  li           s8, 0x0
                  li           s0, 0xffffffff
                  li           s2, 0xffffffff
                  li           a5, 0x0
                  auipc        ra, 40964
                  sub          ra, ra, s2
                  addi         s9, a1, 843
                  sub          a5, a5, s3
                  addi         s0, s0, -1964
                  addi         s8, s0, 1876
                  sub          s3, s3, s8
                  sub          a5, ra, s2
                  sub          s0, a1, s2
                  nop
                  lui          t2, 177895
                  add          s8, ra, s3
                  nop
                  auipc        s3, 931098
                  auipc        a1, 139826 #end riscv_int_numeric_corner_stream_17
                  andi         s0, a2, -278
                  nop
                  and          s8, t4, ra
                  srli         t3, t1, 12
                  sra          s0, t1, t4
                  auipc        s11, 263060
                  slli         t4, s9, 5
                  sra          s10, a1, s6
                  auipc        s0, 478546
                  and          a5, a7, s7
                  sltu         a7, ra, s3
                  addi         s5, s2, 1937
                  and          s2, t4, t2
                  srai         t0, t1, 19
                  or           s7, a3, s6
                  and          s3, s1, t5
                  nop
                  sub          s0, a2, s8
                  lui          t0, 858356
                  auipc        a5, 139880
                  add          a5, gp, s11
                  andi         a5, zero, 424
                  add          a4, a0, a0
                  ori          a4, t6, 303
                  sltu         s7, s11, a3
                  slti         t2, s1, 1113
                  or           a1, s8, a6
                  xor          t6, s6, t5
                  and          a6, a7, s2
                  andi         t6, a7, 394
                  srli         s3, s9, 28
                  srl          tp, t0, s0
                  nop
                  ori          s2, s2, 1205
                  sra          s11, zero, t2
                  srl          tp, a7, s11
                  add          s1, a6, tp
                  sltiu        s5, gp, 1818
                  nop
                  xori         a5, a5, 1048
                  xor          a7, sp, s5
                  srli         s5, t3, 12
                  slti         a4, tp, -1288
                  srl          s4, t2, t1
                  auipc        s8, 872689
                  or           a1, t2, a5
                  nop
                  andi         t3, sp, -1387
                  lui          ra, 518498
                  slt          s5, tp, t6
                  add          a0, s5, a7
                  srl          a6, a1, s9
                  slli         s4, t1, 21
                  sltiu        s4, s4, -1706
                  slli         ra, a4, 14
                  slti         s5, sp, -660
                  andi         s1, t0, 1201
                  ori          s0, t2, -60
                  sltu         sp, tp, t5
                  slt          a3, a5, a5
                  slli         gp, t2, 0
                  or           s11, ra, a5
                  xori         t0, s9, -3
                  ori          s7, s11, -41
                  srl          s5, t5, t6
                  sra          s1, tp, s1
                  or           a6, s8, s9
                  add          s3, s4, a7
                  sltiu        a5, t5, -160
                  and          zero, a3, a2
                  addi         s6, s6, -1285
                  and          s4, s0, s10
                  xor          gp, a4, gp
                  lui          ra, 647171
                  xori         a1, t4, 137
                  sub          s5, s4, a4
                  sra          a1, t6, a4
                  add          ra, t3, t3
                  slt          a5, s6, s6
                  sll          t0, s8, t5
                  srl          s10, a1, t4
                  ori          a0, t6, -1783
                  sub          s0, t1, gp
                  nop
                  ori          gp, t1, -1951
                  andi         a4, t0, -1284
                  or           zero, s7, s1
                  nop
                  sub          a1, t5, t0
                  slti         a6, s7, -1337
                  xor          sp, s9, a3
                  srli         s10, t0, 12
                  lui          a4, 1034844
                  add          t6, s11, t2
                  sltiu        gp, s2, -370
                  xor          s11, s6, a5
                  lui          a4, 819218
                  slli         a7, zero, 29
                  and          a0, s4, a3
                  nop
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t4, 0x0
                  li           a6, 0x80000000
                  li           s0, 0x0
                  li           s2, 0x0
                  li           s5, 0x0
                  li           s7, 0x80000000
                  li           tp, 0x0
                  li           s10, 0x80000000
                  li           s1, 0xffffffff
                  add          a6, s10, s10
                  lui          s2, 177565
                  nop
                  auipc        s1, 484630
                  nop
                  lui          s7, 92477
                  sub          a6, s6, tp
                  sub          s7, s5, s7
                  lui          s2, 295496
                  nop
                  addi         a6, t4, 325
                  addi         s6, s5, -1339
                  sub          a6, s7, s6
                  add          s1, tp, tp
                  sub          s2, s0, s2
                  lui          s10, 32147
                  nop
                  nop
                  addi         a6, s6, 854
                  lui          t4, 44030
                  auipc        s1, 626557
                  auipc        s7, 638780 #end riscv_int_numeric_corner_stream_1
                  xor          s3, t5, s7
                  andi         a5, a3, -1194
                  addi         a3, s0, 1665
                  slti         s6, a6, -958
                  lui          s2, 135612
                  lui          s6, 484356
                  sll          s9, t2, tp
                  auipc        s5, 64297
                  sra          a0, s9, gp
                  sub          s6, a5, s3
                  slt          a6, a1, s0
                  auipc        s11, 279624
                  add          s7, a6, t4
                  lui          a3, 305268
                  nop
                  slt          a7, t4, t4
                  xori         t3, s5, -1896
                  add          s6, s4, t5
                  or           a7, t1, s10
                  sub          a1, t3, t2
                  xori         s10, a4, -62
                  or           a5, s3, t1
                  sll          s3, a2, s8
                  addi         s8, t5, -1299
                  xor          s4, a6, t2
                  srl          zero, a4, s0
                  sll          s5, a5, s11
                  auipc        s6, 271406
                  xori         a5, tp, -1127
                  sltiu        s3, a2, 1879
                  or           t0, s2, tp
                  sll          s1, s5, t6
                  sub          s4, ra, s8
                  slli         ra, t6, 9
                  slli         s9, a1, 17
                  srl          zero, t5, a4
                  or           ra, t6, s11
                  srl          a5, t6, a6
                  xor          a5, t3, t2
                  slti         t0, s3, 687
                  auipc        t0, 581549
                  sll          s6, zero, t6
                  lui          a1, 716955
                  srai         s10, a7, 25
                  lui          s10, 785929
                  sra          a4, a5, a5
                  nop
                  or           s5, t4, tp
                  lui          s3, 468931
                  nop
                  nop
                  sltu         t3, a6, s8
                  srli         ra, s4, 6
                  sltiu        a3, ra, -620
                  srl          s10, s4, s8
                  srli         gp, t3, 5
                  slti         tp, s0, -299
                  slli         s5, s5, 28
                  srli         a5, s9, 23
                  or           a3, s11, zero
                  slli         s7, t3, 25
                  sltiu        a7, t1, 1897
                  slti         s10, a6, -520
                  add          zero, t5, a3
                  andi         t2, s10, 383
                  and          s0, sp, s7
                  ori          a6, a2, -822
                  sra          s10, a6, s7
                  sub          s9, s5, sp
                  ori          a7, s10, -95
                  and          s6, a2, t6
                  slti         zero, s5, -1647
                  sll          a5, t3, tp
                  or           t6, a5, s2
                  auipc        t6, 745268
                  ori          t4, sp, 1916
                  srli         s5, t6, 21
                  srl          tp, ra, t4
                  sltiu        t4, s10, -471
                  sltiu        s0, a0, -1513
                  sltu         t3, t5, s5
                  add          s5, t3, s10
                  sltu         a4, zero, ra
                  sll          t6, a6, gp
                  srli         tp, s10, 24
                  sltiu        t6, sp, -1868
                  sltu         a7, s5, s9
                  slt          s5, s1, tp
                  sra          t2, s6, t3
                  or           s8, t1, t1
                  sll          s7, a0, t6
                  sra          ra, a7, a5
                  lui          s1, 33041
                  andi         ra, a7, -499
                  sra          a5, zero, a6
                  nop
                  srai         a6, s0, 9
                  srl          s11, s7, s4
                  or           s0, s3, t5
                  slti         a6, t3, 1636
                  sll          s3, sp, a1
                  sltiu        gp, t5, -868
                  sltu         s11, t6, a2
                  addi         t6, a2, 580
                  lui          zero, 806690
                  xor          t0, gp, s2
                  lui          s6, 875878
                  nop
                  sra          s10, s7, a2
                  auipc        gp, 107838
                  sra          a4, s8, t3
                  andi         a0, s6, 1025
                  srai         a0, a4, 10
                  xor          s7, t5, s1
                  srl          s1, s8, a2
                  or           a0, s9, t4
                  srl          a1, t0, s9
                  ori          a1, s2, 1274
                  sltiu        ra, sp, -335
                  add          gp, s9, t2
                  auipc        zero, 966854
                  slti         t2, a4, 1974
                  auipc        s4, 217998
                  srai         a5, s8, 30
                  sll          zero, t1, t5
                  or           s11, sp, s8
                  sltiu        a7, a6, 773
                  ori          s6, a7, 1796
                  slt          a4, zero, gp
                  srl          a7, zero, a3
                  slti         a3, s0, -562
                  xor          s1, sp, s3
                  sll          s1, s3, t0
                  ori          t0, ra, -397
                  slli         s11, zero, 8
                  add          s3, s10, t5
                  lui          tp, 453065
                  srai         t4, t4, 16
                  ori          s11, s7, 786
                  add          tp, s0, tp
                  slti         s5, s2, -99
                  andi         zero, a4, 1026
                  slli         s11, s5, 19
                  add          gp, sp, t6
                  sll          s8, s2, t0
                  slti         s7, s0, 1774
                  srli         s6, s9, 23
                  sub          s1, a6, s3
                  sll          t4, s4, s7
                  slti         t0, s10, -770
                  andi         s0, a7, -719
                  sltiu        zero, t4, 1470
                  or           t0, a6, s5
                  xori         zero, a0, -782
                  sltiu        a7, s6, -1549
                  sub          a7, s0, s3
                  xori         a1, t3, -1298
                  and          s7, s3, t4
                  andi         s1, s0, -262
                  srl          s3, t3, a3
                  andi         t6, s11, -489
                  srli         zero, a1, 30
                  slt          a1, a6, s2
                  sltu         s7, a4, s6
                  ori          s2, t4, -868
                  srl          s1, t1, a5
                  and          a7, t6, a2
                  sltu         t2, ra, s8
                  nop
                  srai         a0, a0, 30
                  or           s3, s7, a6
                  sltiu        a0, s8, 68
                  and          s6, s10, a6
                  xori         sp, t6, -2039
                  slli         a1, s2, 5
                  sltiu        a1, t3, -318
                  sll          t4, t6, s6
                  sra          s11, s11, s6
                  srai         s5, t6, 2
                  and          s7, s11, a4
                  sltu         gp, t2, s7
                  xor          sp, a7, s0
                  sub          a7, a3, zero
                  srai         t6, s2, 12
                  sra          a3, s5, a0
                  sra          zero, s9, s6
                  xor          s10, t4, ra
                  or           s1, s8, s6
                  xor          a4, a1, s3
                  sll          t0, s10, s9
                  sltu         s7, a4, a5
                  andi         zero, t5, -1859
                  addi         s3, t1, -340
                  sll          s7, s2, sp
                  srli         tp, s0, 12
                  andi         s8, s7, -1425
                  auipc        a5, 229298
                  ori          s7, s3, -623
                  sll          t3, t1, t3
                  auipc        t6, 257205
                  andi         s10, zero, -746
                  auipc        a3, 521019
                  xori         a7, a0, -1245
                  srl          s0, s8, s7
                  slli         t0, a5, 27
                  xori         s5, s5, -1685
                  sub          a7, s8, s3
                  lui          a1, 451133
                  ori          s3, s11, -1684
                  ori          ra, a1, -275
                  lui          zero, 38605
                  srli         s0, s4, 30
                  andi         t4, s6, 844
                  sltu         a7, t3, s3
                  add          t4, s5, a7
                  sll          a1, t1, s2
                  sltu         s8, a4, s8
                  auipc        tp, 356865
                  xor          a3, a7, t5
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s11, 0x80000000
                  li           s8, 0xffffffff
                  li           tp, 0x80000000
                  li           t4, 0xffffffff
                  li           t3, 0xffffffff
                  li           a6, 0x0
                  li           sp, 0xffffffff
                  li           t0, 0x56c6437c
                  li           s0, 0x80000000
                  nop
                  addi         t3, s8, 1567
                  nop
                  add          s4, s4, sp
                  addi         s8, t3, -858
                  auipc        tp, 134269
                  addi         s4, s4, 938
                  lui          s4, 252999
                  lui          t4, 312099
                  auipc        s0, 122243
                  nop
                  auipc        t4, 960373
                  lui          s4, 397
                  add          s0, t3, t0
                  lui          t4, 332707
                  add          s8, a6, t0
                  addi         s11, s4, -1416
                  auipc        t4, 777957
                  add          s11, s4, s4
                  lui          t3, 285934
                  nop
                  lui          s4, 1126
                  sub          a6, sp, t3
                  add          s0, sp, s8 #end riscv_int_numeric_corner_stream_19
                  slt          a5, s1, a4
                  addi         t6, t4, -1764
                  add          s4, a7, t2
                  srl          s7, a7, zero
                  sub          a1, s9, a6
                  or           s7, s2, s2
                  sra          a5, s9, a5
                  nop
                  slli         a7, a4, 3
                  slli         gp, a5, 23
                  sra          s1, a7, a0
                  nop
                  sll          s11, a1, s7
                  auipc        s1, 301359
                  add          a7, a1, s1
                  lui          t3, 454420
                  nop
                  auipc        a4, 594639
                  slti         t6, s4, -3
                  sltu         t6, a1, s10
                  addi         s3, a1, -1754
                  or           a6, s1, a4
                  sub          a7, t5, t2
                  srl          s9, s0, t2
                  sub          s10, s1, sp
                  slli         s5, sp, 14
                  sltu         s8, s10, sp
                  addi         t3, zero, 291
                  add          s10, s10, t6
                  sub          ra, s3, s8
                  lui          s8, 796088
                  add          t6, a1, t4
                  sub          s3, s4, s7
                  sub          s3, s5, a1
                  slli         a5, s11, 17
                  lui          s1, 154958
                  xori         sp, a0, -1228
                  slt          s5, ra, t2
                  srl          t2, t1, t2
                  srl          tp, t4, s11
                  srli         s2, a1, 8
                  and          gp, s2, s0
                  srai         gp, a7, 4
                  nop
                  lui          a7, 887945
                  xori         gp, a7, 192
                  srli         s11, a7, 22
                  sltiu        gp, t5, -1900
                  sra          s11, s2, t6
                  auipc        sp, 400168
                  add          s7, t3, s5
                  srai         s6, s8, 4
                  sll          a0, a6, a3
                  and          s7, a5, s2
                  slt          s4, sp, t1
                  ori          ra, s9, -1075
                  sra          zero, a5, s5
                  nop
                  slli         a6, s5, 29
                  andi         a3, s2, -1388
                  slli         s7, gp, 14
                  sub          s1, s0, ra
                  sra          s6, s7, s3
                  srli         s3, s6, 26
                  srai         t6, a2, 11
                  slt          s10, gp, s4
                  sub          s6, ra, a5
                  or           sp, s1, s2
                  xori         s3, s0, 1861
                  srai         a6, sp, 25
                  xor          s1, t6, s9
                  nop
                  and          s8, a4, s2
                  and          t4, s3, zero
                  add          s1, a5, a2
                  xor          s9, s8, a5
                  xori         s2, s7, -1474
                  add          t4, s7, ra
                  nop
                  slli         tp, s5, 23
                  srai         s5, gp, 6
                  sltiu        t2, s9, 1758
                  lui          a4, 196935
                  sltiu        t3, sp, -91
                  lui          a1, 997482
                  lui          t2, 584832
                  addi         s0, a6, 451
                  lui          t3, 923517
                  srli         a3, s4, 27
                  lui          a4, 800277
                  slti         a1, s0, 1244
                  slt          zero, s1, s6
                  srl          t2, s10, a3
                  srai         s0, t1, 4
                  addi         sp, s11, -1017
                  auipc        s4, 737863
                  sll          t2, ra, sp
                  srli         t2, s4, 20
                  sll          s2, s10, a2
                  slli         tp, t2, 5
                  sltiu        s4, s3, -1935
                  ori          a0, s7, 1420
                  slti         s10, t6, -1309
                  or           t3, t0, a5
                  sltu         a1, a7, t3
                  slti         s5, s6, -1522
                  nop
                  slli         a6, a3, 19
                  sra          a3, t0, s6
                  xori         s3, tp, 1204
                  sltiu        t2, zero, -1072
                  and          tp, tp, a1
                  slti         s10, a7, 499
                  sll          s4, s7, s4
                  lui          s3, 598063
                  and          s3, s2, s5
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s6, 0x80000000
                  li           s9, 0xf5a86802
                  li           s3, 0x0
                  li           s0, 0x68377c47
                  li           s2, 0xffffffff
                  li           t2, 0x0
                  li           s4, 0xffffffff
                  li           a3, 0x0
                  li           s8, 0x0
                  lui          a3, 212445
                  lui          s2, 682786
                  nop
                  lui          s9, 919768
                  auipc        s0, 506187
                  lui          s5, 403414
                  addi         s8, t2, -48
                  addi         a3, s3, 265
                  add          s0, a3, s0
                  sub          s6, s5, s0
                  auipc        s8, 494840
                  lui          s4, 432113
                  auipc        s0, 27079
                  add          s6, s6, s5
                  addi         a3, s2, 1385
                  auipc        s6, 955435
                  auipc        t2, 1015023
                  auipc        s5, 766988 #end riscv_int_numeric_corner_stream_18
                  add          a6, t4, a5
                  nop
                  sub          sp, tp, t4
                  slt          t2, s5, s11
                  sltu         sp, s2, sp
                  nop
                  xori         s1, tp, 1652
                  lui          t3, 1034907
                  addi         a7, s8, 1041
                  andi         s6, tp, 2041
                  xori         s0, a5, -1214
                  srl          t3, a1, t6
                  and          s8, gp, a0
                  or           s5, a7, s1
                  slt          a6, zero, s2
                  sltu         a1, s0, zero
                  srai         zero, s8, 0
                  ori          s2, s7, 1596
                  or           gp, t0, s6
                  xori         s2, t6, -890
                  slti         gp, s1, -1875
                  sll          a6, t5, s1
                  lui          gp, 7035
                  sltiu        sp, s5, -1503
                  auipc        zero, 942264
                  slti         s7, a5, -1578
                  xori         s7, a7, 1474
                  andi         s5, s6, 169
                  slli         s8, a6, 30
                  auipc        a0, 460637
                  nop
                  and          a7, sp, ra
                  slti         ra, s10, -574
                  and          s2, s1, s11
                  andi         a5, s1, -1658
                  srl          s0, s11, s5
                  sltu         tp, s7, a5
                  sub          s0, zero, t2
                  xor          t6, gp, s11
                  add          tp, a0, t3
                  andi         t3, t5, -370
                  auipc        t0, 691503
                  nop
                  xori         t0, s6, 1592
                  or           s1, a4, s11
                  sll          a4, a6, s6
                  slli         a7, t3, 30
                  or           t2, sp, a4
                  sltiu        t0, a5, -1261
                  andi         a6, a3, -1880
                  lui          t2, 13914
                  srli         s10, s8, 27
                  sra          a1, s11, a5
                  lui          t0, 695390
                  andi         s5, a6, -322
                  lui          s5, 42163
                  slt          s2, s7, a1
                  andi         a6, zero, 555
                  xor          t4, sp, t5
                  sub          a1, s10, t0
                  xori         s9, a5, 1701
                  sub          s6, gp, a0
                  slt          a6, t0, s1
                  srai         s6, s10, 29
                  xori         ra, tp, -938
                  srai         zero, s7, 1
                  nop
                  xori         t0, t0, 1601
                  and          s5, t0, s0
                  srai         s1, a7, 26
                  xor          a7, a0, s9
                  srli         ra, ra, 7
                  ori          s0, s1, 1904
                  or           s8, s3, a6
                  srai         s6, a2, 12
                  slt          s2, s8, t4
                  or           s6, t1, s1
                  and          zero, s2, s5
                  and          s1, s2, a1
                  sub          s4, a1, a6
                  srai         t3, s7, 22
                  nop
                  srai         t4, a5, 30
                  slti         s4, s9, -993
                  ori          s11, a5, -243
                  sltiu        s5, a2, -1578
                  or           s11, s8, t6
                  add          t2, zero, ra
                  slt          a1, ra, a3
                  sll          s3, s8, s7
                  sltu         zero, a4, t5
                  sltiu        s6, a5, -236
                  sub          a7, s8, s11
                  and          a0, a3, t5
                  sll          s7, a3, s0
                  lui          s6, 239437
                  srli         gp, t5, 18
                  andi         a6, t3, 1922
                  addi         a4, t1, 1020
                  sub          s0, a5, s7
                  addi         a6, a4, 807
                  sltu         a1, a7, s5
                  and          s8, a3, t2
                  ori          a4, a5, -644
                  slti         s10, a4, -980
                  slt          t6, t0, t1
                  sltiu        zero, s9, 1428
                  sltu         a4, t4, s1
                  srl          t6, gp, t1
                  srli         ra, zero, 22
                  sll          a5, s3, s11
                  or           a3, a0, t4
                  andi         a7, s2, -239
                  nop
                  sltu         a0, s11, t6
                  addi         s5, a2, -1782
                  xori         s6, sp, -1058
                  sub          ra, a4, s2
                  and          tp, t6, s1
                  slt          s5, s11, a6
                  sra          a1, s7, t2
                  and          a6, s2, t2
                  sltu         a6, a2, t4
                  srai         a6, t4, 25
                  xori         s4, a2, 1342
                  sltu         t6, s8, a7
                  slli         s0, ra, 29
                  slti         s4, s2, -1620
                  sll          s3, s1, t6
                  ori          t6, s4, 359
                  addi         zero, t6, 1189
                  sra          a1, s3, s8
                  sll          a5, s11, s4
                  andi         s11, s5, -1820
                  and          s11, s3, t5
                  andi         t2, s10, 1430
                  or           t0, a1, s9
                  lui          s11, 227294
                  addi         ra, t3, 1886
                  auipc        a5, 1030774
                  srl          s4, t5, s9
                  and          a0, t6, t3
                  sll          a4, s1, tp
                  slli         a6, s3, 18
                  sltiu        s5, t6, -1710
                  xori         s9, a1, -1917
                  sltiu        a4, zero, 294
                  sltu         s1, s11, zero
                  srl          t3, gp, a2
                  add          a1, s4, ra
                  xor          a7, a3, a0
                  slt          s1, ra, s5
                  nop
                  slli         s5, s2, 6
                  xor          a7, sp, t5
                  lui          s6, 1010670
                  slti         gp, zero, 634
                  add          t0, s5, s4
                  sll          s11, gp, a3
                  ori          s3, a0, -1211
                  and          t0, s7, sp
                  or           s2, a1, t3
                  sltu         a1, s8, t3
                  xori         t3, s8, -1366
                  lui          t6, 497965
                  slt          s11, s0, a1
                  slt          sp, s0, s5
                  addi         t6, gp, 1172
                  ori          s4, s5, -700
                  nop
                  slt          a4, t2, a7
                  andi         s0, s8, 1631
                  srai         s7, t1, 1
                  nop
                  and          s10, s7, s10
                  sltu         s10, s10, a7
                  slt          t2, s1, gp
                  sll          ra, a0, a6
                  xori         s7, t0, 1158
                  auipc        gp, 832358
                  srai         s3, t1, 27
                  sltiu        t2, zero, 1440
                  srai         s7, t6, 5
                  add          a7, a4, zero
                  srli         s4, a0, 29
                  addi         s3, t0, -747
                  sltu         t0, ra, s1
                  sltiu        t0, s9, -1034
                  sub          a1, s1, sp
                  slti         a4, t5, -960
                  sll          t4, a2, t3
                  addi         a4, s1, 151
                  lui          t0, 356338
                  srl          s8, a0, s4
                  xor          s8, s4, a7
                  andi         tp, gp, 331
                  add          sp, s3, s7
                  sub          s9, a0, ra
                  slli         a7, s9, 0
                  slt          zero, s11, s2
                  sltiu        t6, t5, 285
                  slli         s9, t6, 18
                  xori         a5, t3, -1822
                  ori          a0, t0, 16
                  nop
                  sltu         s10, s9, a1
                  srli         a0, a1, 1
                  andi         a0, zero, -1375
                  or           s8, gp, a6
                  srl          t2, s5, s7
                  or           s2, a6, s10
                  sll          s0, a6, t1
                  slli         gp, t6, 10
                  andi         t2, s4, 617
                  srl          gp, a6, s5
                  lui          s9, 475274
                  or           a4, t1, s1
                  auipc        t0, 274297
                  slt          s3, t3, s4
                  slli         s6, s1, 0
                  sltiu        s5, a7, -340
                  nop
                  sll          s10, s11, t3
                  addi         t3, s5, 1359
                  slli         s1, a2, 21
                  sra          s7, s10, t3
                  sll          t6, a6, ra
                  slt          s2, s10, s7
                  slli         a3, s7, 5
                  xori         s1, s4, 1426
                  sltu         t2, a5, s3
                  slti         t2, s1, 1209
                  nop
                  andi         s9, zero, 1431
                  and          t4, zero, sp
                  auipc        s5, 129835
                  sltu         s0, gp, a3
                  and          s9, zero, s7
                  sra          s9, t2, a0
                  sll          sp, a4, sp
                  slli         sp, a4, 7
                  lui          s0, 411726
                  addi         s7, t6, -1963
                  slti         s9, a7, -1723
                  ori          s7, s1, -1869
                  andi         gp, s6, -910
                  sltiu        s7, t0, -263
                  nop
                  or           a6, a0, s3
                  slt          t0, s5, s6
                  slt          a5, sp, s8
                  or           a3, a0, a4
                  ori          t3, a1, 1463
                  xori         s2, t0, -1686
                  srai         t6, s11, 21
                  slti         a3, s4, -2009
                  slti         ra, a6, 1093
                  and          t6, t2, zero
                  auipc        s10, 866453
                  xor          t2, a2, a1
                  auipc        s7, 605738
                  slti         s6, s10, -1135
                  slti         s0, a0, 973
                  addi         s5, s8, 691
                  addi         zero, s6, 1100
                  srl          a6, tp, s3
                  xori         t6, s4, 568
                  nop
                  sub          t0, s6, s5
                  addi         tp, t6, -1055
                  add          ra, s9, s4
                  andi         t0, a7, -1782
                  add          sp, s4, a7
                  sra          a1, t6, a5
                  sub          t6, zero, s6
                  slt          a6, a1, s1
                  nop
                  or           s11, t3, s4
                  srl          s5, a7, s8
                  nop
                  xori         t4, s2, 1775
                  srai         s2, t3, 4
                  sltu         s3, s8, a3
                  nop
                  sub          t0, sp, a2
                  andi         a1, s0, 1772
                  and          gp, tp, s8
                  lui          s5, 896290
                  add          s11, gp, t6
                  nop
                  sra          s4, s3, t5
                  sltiu        s6, a6, -89
                  add          t3, s8, t4
                  auipc        s5, 596108
                  and          s0, a2, t6
                  sltu         s4, t6, a4
                  addi         s7, s11, -1894
                  xor          s9, tp, a3
                  sll          sp, a0, a6
                  ori          s8, s4, -1777
                  auipc        a3, 427206
                  slt          t0, a3, a1
                  sll          t0, s2, s8
                  sltiu        s5, s8, 1642
                  sra          s3, s7, a0
                  slti         t3, s8, 1933
                  sltu         a7, a1, a2
                  srli         t6, t4, 14
                  add          t4, a0, ra
                  sll          a5, t1, s5
                  sub          t0, s0, a5
                  sub          gp, s8, tp
                  nop
                  sub          tp, ra, t0
                  srl          s9, a1, t6
                  xori         t2, a1, 1319
                  and          a0, s1, a7
                  lui          s11, 505728
                  sltiu        s2, sp, -1432
                  sltu         sp, ra, a1
                  sra          s2, t2, s10
                  sub          s0, a4, s10
                  sll          t0, s3, s10
                  addi         s8, t1, 670
                  nop
                  srl          ra, s10, a1
                  add          t2, t1, s7
                  nop
                  and          s9, t0, s7
                  srai         gp, s0, 10
                  nop
                  sll          s0, s9, s0
                  srai         a1, s7, 11
                  xor          gp, a3, a3
                  srai         s4, s3, 31
                  nop
                  or           t2, s4, s10
                  ori          s11, t2, -2022
                  ori          s9, gp, 889
                  xor          sp, s5, s10
                  sub          t0, t0, a6
                  xor          s6, s5, t0
                  and          a1, tp, zero
                  sltu         a1, a0, t6
                  lui          tp, 182622
                  or           ra, t5, s0
                  srai         s10, t0, 26
                  srai         s4, gp, 6
                  sll          s7, a4, gp
                  and          s1, s4, s11
                  sltiu        s8, t5, -185
                  and          a6, s2, s9
                  addi         s4, a1, -21
                  srli         ra, s10, 23
                  add          a6, ra, s0
                  nop
                  sltu         t2, s9, a6
                  andi         a6, a3, 666
                  ori          a4, zero, -1117
                  andi         s7, s10, -211
                  or           a3, s9, t0
                  srl          t6, gp, zero
                  lui          t0, 641998
                  or           s11, s5, s6
                  sll          tp, t5, s2
                  xori         s5, a6, 1445
                  slt          a1, t6, sp
                  slti         s11, a1, -280
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a0, 0x0
                  li           t6, 0x0
                  li           s4, 0x2730d09a
                  li           s2, 0xa99101c9
                  li           a3, 0x80000000
                  li           s1, 0xffffffff
                  li           sp, 0xffffffff
                  li           s11, 0x9f5c462d
                  li           ra, 0x0
                  addi         a3, a3, 1313
                  nop
                  add          sp, a0, s2
                  nop
                  add          t6, ra, s2
                  lui          a3, 589125
                  auipc        sp, 991728
                  sub          a3, s2, s11
                  sub          s2, ra, a3
                  add          a3, sp, s3
                  add          s11, s4, s2
                  auipc        ra, 87273
                  lui          s11, 945422
                  add          s11, s3, s2
                  addi         sp, t6, 1
                  add          s2, s1, a3
                  addi         s11, s11, 133 #end riscv_int_numeric_corner_stream_3
                  srai         s6, t0, 12
                  sltu         s11, a3, t6
                  or           t3, t6, a2
                  srli         t6, s8, 6
                  slt          s7, s0, s10
                  ori          s5, s6, 205
                  xori         a6, t0, -1487
                  xor          s5, s9, s0
                  srl          s11, t5, a2
                  sll          t3, s2, s11
                  srl          s9, s4, ra
                  sub          a0, t0, a4
                  xor          a3, t3, s5
                  ori          s3, s11, 1896
                  auipc        a3, 39652
                  xor          s5, a2, s9
                  sll          t3, s2, ra
                  srl          s3, t3, zero
                  sltiu        gp, s10, -1630
                  sltiu        a5, a2, 1595
                  slt          a7, a4, sp
                  andi         t0, s8, -1885
                  nop
                  slti         t3, s1, -1376
                  xor          a4, a7, s3
                  slli         a1, t0, 3
                  sra          s10, s0, t0
                  srli         s10, s10, 15
                  xor          t2, a5, a6
                  sltu         a6, t1, t0
                  sra          a4, s3, s6
                  auipc        s5, 576439
                  sltu         a5, t0, a1
                  sub          a7, ra, s2
                  sll          s9, a3, s11
                  nop
                  and          zero, t0, a4
                  sub          zero, t4, s9
                  ori          tp, s1, 1302
                  lui          s6, 770530
                  or           s7, s0, s1
                  slli         t0, t2, 10
                  and          a4, s4, t4
                  and          gp, t2, gp
                  slt          zero, a2, t2
                  nop
                  srai         s7, s3, 4
                  sll          s4, a4, t4
                  auipc        a0, 737120
                  srli         a4, t2, 10
                  slli         t0, a5, 9
                  add          t6, s8, a4
                  addi         zero, ra, 1160
                  sltu         s10, a0, t2
                  add          a1, s4, t4
                  xori         t2, t3, 918
                  srli         s2, ra, 16
                  sltu         a5, sp, t5
                  xor          s11, s3, t5
                  sltiu        t3, t4, -1430
                  add          ra, s10, s0
                  sub          t4, ra, s0
                  ori          zero, ra, -1635
                  sltiu        zero, s11, -114
                  slti         a3, s7, -1289
                  and          t3, t0, a3
                  addi         a7, zero, -1114
                  slti         t3, t0, -617
                  srli         zero, t3, 27
                  lui          t2, 349000
                  and          s2, a4, a3
                  sub          a6, a5, sp
                  nop
                  srl          s3, t1, a3
                  slti         t2, a6, 1964
                  srli         s8, s2, 20
                  auipc        s3, 693676
                  slt          a5, a1, s7
                  sub          a1, s2, s5
                  sll          t4, t0, gp
                  nop
                  srai         s4, s0, 5
                  nop
                  sra          s7, t6, sp
                  xor          tp, s9, a1
                  sub          a6, t3, t4
                  andi         zero, s11, 1220
                  srai         s3, s6, 30
                  slt          gp, a5, a5
                  andi         a5, s9, -889
                  addi         s4, t2, 1662
                  srl          sp, a1, a0
                  andi         s4, a7, 1236
                  srli         s11, s3, 8
                  and          a0, sp, t6
                  ori          a6, a4, -1277
                  xor          a6, sp, t4
                  nop
                  srli         sp, ra, 3
                  auipc        s5, 791519
                  and          a3, a5, a3
                  sltu         t2, t4, s2
                  srai         s1, s10, 26
                  or           s5, a2, s10
                  srli         s7, a5, 19
                  slt          s10, t5, s0
                  slt          s10, s11, zero
                  xor          tp, s9, s7
                  xor          t3, t1, a1
                  slt          s7, s1, s7
                  srai         t2, s5, 4
                  slt          t4, zero, s8
                  slti         t0, s9, -986
                  andi         a0, a2, -1581
                  srl          s1, s4, s9
                  auipc        s10, 330592
                  addi         t0, s5, 547
                  srl          ra, a3, s6
                  slti         t4, t2, -202
                  xor          a6, s11, gp
                  slti         gp, s8, -996
                  ori          a5, t1, -1326
                  sra          s10, t3, s2
                  slli         a4, a2, 9
                  slli         s11, t0, 0
                  or           s5, s11, a6
                  sra          s7, t2, s0
                  xor          a4, s0, a4
                  sub          s11, s2, s0
                  andi         s5, s11, -1132
                  auipc        a5, 135576
                  sub          t2, s1, t2
                  srai         sp, a7, 16
                  sltu         a7, t4, s4
                  auipc        s3, 224121
                  slli         a5, s4, 16
                  xor          sp, zero, sp
                  nop
                  add          ra, t3, zero
                  add          a4, a6, s9
                  andi         a3, ra, -879
                  srl          t0, t2, ra
                  or           s7, t0, a1
                  and          s11, s4, s7
                  srai         zero, a7, 0
                  sub          s11, s1, a1
                  or           s11, s7, s10
                  nop
                  lui          a1, 134072
                  andi         s8, ra, -520
                  sra          s7, t0, t1
                  sub          s5, s11, s2
                  sra          s9, t6, s1
                  or           ra, gp, s9
                  srl          s5, t6, t2
                  xor          a5, a2, s6
                  sll          s10, a3, s3
                  sltu         s8, t3, zero
                  xori         a6, s2, -1054
                  slt          s7, s10, tp
                  add          ra, ra, sp
                  slti         ra, s9, 55
                  lui          a3, 336178
                  add          a7, t2, a4
                  auipc        a1, 148432
                  srli         s8, a5, 20
                  ori          a0, a3, 1796
                  and          s8, tp, a0
                  or           a5, t1, s6
                  sll          t4, t4, gp
                  addi         s5, s10, 1703
                  andi         a1, s2, -1880
                  sra          s2, s6, s4
                  sltiu        zero, s4, 522
                  add          zero, s10, a3
                  add          ra, s0, sp
                  slt          s0, sp, a3
                  slli         t2, t5, 19
                  andi         a0, s3, 1768
                  nop
                  srl          s11, s1, t3
                  srai         t0, ra, 14
                  or           a5, gp, s10
                  sltiu        t3, t4, 1047
                  srl          a0, a0, ra
                  srai         s3, s8, 8
                  slli         s1, ra, 10
                  andi         s5, zero, 457
                  sub          s8, s0, a2
                  sra          s3, s1, tp
                  andi         t4, tp, 293
                  xor          s4, s8, t3
                  sltu         s4, a6, ra
                  srai         s0, s1, 12
                  ori          gp, s6, 1707
                  xori         sp, tp, 1285
                  addi         s3, a5, -402
                  xori         t3, s5, 1067
                  add          s5, s11, a1
                  addi         s11, s6, 1180
                  sltu         s10, a2, s9
                  xor          t6, a4, ra
                  nop
                  sra          sp, s6, t1
                  slt          s3, s10, s4
                  or           s1, t0, t0
                  lui          a6, 294852
                  sltiu        s5, s9, 1454
                  sll          s4, s8, s10
                  auipc        s1, 415299
                  addi         s8, s2, -1158
                  or           s5, t4, s6
                  or           s6, t1, s4
                  auipc        s0, 370738
                  sub          a0, t3, gp
                  srl          t4, s7, s10
                  nop
                  xor          zero, a3, t1
                  slti         t0, s7, -293
                  sra          t4, t2, s1
                  sll          s3, t4, s8
                  or           s8, a1, s7
                  srli         t0, a1, 1
                  or           t3, s0, s3
                  slti         a6, s10, 1365
                  and          gp, s11, a7
                  and          a5, gp, s5
                  addi         t4, s4, -774
                  ori          t0, t6, 1233
                  sub          t3, a5, zero
                  sltu         s8, a4, t1
                  sltiu        a6, s11, 1827
                  and          a3, s5, t2
                  slt          s3, zero, zero
                  slli         s11, s4, 12
                  slt          a0, t3, gp
                  andi         s9, a5, 553
                  lui          a4, 915909
                  srai         s4, t2, 6
                  sltiu        t6, a1, -1964
                  slli         a0, s1, 6
                  nop
                  lui          a4, 880974
                  slti         tp, s2, 1253
                  slli         zero, t0, 21
                  slti         a3, a0, 1012
                  auipc        s3, 328567
                  lui          a1, 470728
                  nop
                  and          gp, s8, t3
                  and          a4, t0, a1
                  auipc        a1, 576586
                  lui          s5, 464923
                  or           s10, s11, s0
                  ori          a1, ra, -1689
                  add          s5, t0, zero
                  slti         a7, s7, -151
                  sltu         s10, t2, s7
                  sra          tp, ra, ra
                  andi         a7, s4, 1355
                  add          s7, s11, a5
                  add          zero, zero, a0
                  add          a3, s7, s6
                  srai         a3, s8, 21
                  sll          s10, gp, a7
                  sll          zero, a6, a7
                  and          s4, a6, a2
                  srai         a3, a7, 12
                  nop
                  sra          t4, s3, a3
                  xori         a0, a4, -1923
                  andi         a3, ra, -739
                  xor          sp, a1, a3
                  or           s1, ra, t4
                  auipc        s0, 35405
                  andi         ra, t5, 494
                  add          sp, s8, a6
                  slt          a4, s8, a1
                  ori          a1, t3, 1255
                  srl          s7, s3, a2
                  sltiu        s8, a5, -799
                  andi         t2, s7, -764
                  sltu         gp, a0, t2
                  xori         t4, s4, -911
                  auipc        s7, 406343
                  addi         s3, t5, -1195
                  add          s5, s4, a1
                  xor          s5, t0, s8
                  xor          s3, t2, a6
                  sra          tp, s5, s6
                  sra          s0, t4, a5
                  and          s6, s10, t0
                  andi         s6, t3, 842
                  sra          s3, a6, s7
                  xor          a7, a3, t2
                  slt          s6, a4, s5
                  ori          s3, s4, 88
                  srai         s3, s6, 15
                  slt          tp, t0, s9
                  sub          zero, s3, t1
                  or           s3, a2, a4
                  andi         s5, ra, -1754
                  srai         s2, gp, 18
                  sll          s9, s5, tp
                  add          s11, a4, s4
                  sll          s6, s11, t3
                  sltiu        a4, s9, -1335
                  slti         ra, a2, 595
                  xor          ra, t3, t5
                  xor          sp, a1, a0
                  xor          s10, a4, t0
                  srl          a5, s0, tp
                  sub          t4, tp, a7
                  sll          s0, a7, a0
                  addi         t3, t2, -841
                  slti         s2, s2, -1311
                  srl          s8, t0, a7
                  or           a0, t1, s0
                  sub          s0, t2, s3
                  slli         a7, s9, 1
                  or           zero, gp, t3
                  auipc        s11, 651923
                  sll          s1, a3, t4
                  sltu         a6, zero, s1
                  xori         t6, s8, -1480
                  or           s2, s1, a0
                  or           s4, t5, t2
                  sra          t6, a2, t0
                  nop
                  sltu         a0, s9, t3
                  xor          a3, s1, sp
                  srli         zero, s6, 4
                  addi         tp, s8, 38
                  sltiu        sp, sp, 1354
                  xori         tp, a6, 563
                  or           gp, zero, s0
                  andi         t6, a5, -1175
                  srl          a1, gp, s9
                  addi         t0, a0, 1996
                  auipc        a7, 593815
                  lui          tp, 162653
                  xori         ra, t4, 203
                  srai         s8, s9, 28
                  sltiu        t2, tp, -1385
                  xor          a3, s8, a1
                  xor          s4, a2, s2
                  auipc        s0, 231030
                  xori         t2, s8, -911
                  addi         t4, a4, 1406
                  ori          a4, s0, -1334
                  addi         a1, tp, 1628
                  sltu         a3, a1, a6
                  slt          a4, a0, s8
                  auipc        a3, 653714
                  xor          gp, s1, a0
                  or           s4, a7, s1
                  add          a5, a7, a7
                  slli         s4, t1, 15
                  srai         s5, a4, 8
                  sra          s1, t1, t2
                  and          a3, a3, s10
                  xori         t0, t0, -1074
                  lui          s1, 93251
                  slli         s7, t5, 7
                  slti         s3, a0, -1044
                  nop
                  sltu         ra, a3, a0
                  sltu         s4, s10, a0
                  nop
                  sub          s5, a7, s7
                  sra          s5, gp, a0
                  ori          a0, tp, 443
                  auipc        s7, 755170
                  sll          s4, tp, a3
                  slti         tp, s8, -1739
                  add          s8, ra, a6
                  ori          s9, s3, -1624
                  andi         a1, a1, -1932
                  nop
                  slli         a4, t6, 23
                  lui          tp, 1028591
                  xori         t2, s1, -6
                  add          sp, t6, t3
                  ori          s7, a6, 675
                  andi         s2, a7, -1611
                  sltu         ra, s4, s4
                  sll          tp, t4, t1
                  lui          t2, 262133
                  slt          s2, s6, s7
                  or           a4, s6, s11
                  sra          tp, a3, s7
                  lui          a3, 281317
                  srl          s1, s11, s6
                  and          a1, tp, t5
                  sltu         a3, a6, t3
                  slli         s9, t1, 9
                  and          sp, a2, a3
                  slli         sp, s8, 18
                  lui          a3, 560662
                  srai         s11, s10, 15
                  add          t3, s5, a5
                  srli         a6, s0, 31
                  andi         a7, a2, 360
                  addi         s2, s1, 658
                  xori         t6, s11, 595
                  srl          zero, s2, a7
                  addi         s6, a2, -1193
                  xori         zero, a7, -1873
                  srli         s4, a6, 4
                  slt          ra, ra, s4
                  lui          a5, 712490
                  andi         sp, s10, -64
                  sub          s5, t0, s8
                  srai         s3, s8, 10
                  add          s10, t5, t3
                  slt          s5, s6, ra
                  srl          t0, t5, s5
                  and          zero, sp, sp
                  xor          t2, s4, s10
                  or           t6, a1, t2
                  sltiu        a0, s9, -1114
                  addi         tp, s2, -730
                  sltiu        a3, ra, 571
                  slli         t2, t5, 23
                  nop
                  slti         s3, s3, -1397
                  nop
                  andi         t6, a3, 1319
                  sltiu        s9, gp, -1720
                  addi         sp, t6, -1945
                  sltiu        s0, a3, -526
                  add          s5, s9, zero
                  sll          s7, a6, s9
                  nop
                  sltu         zero, s8, a1
                  nop
                  add          t6, s10, gp
                  xor          tp, a6, a4
                  add          t4, s7, t2
                  slt          s10, t1, s4
                  and          sp, s8, t6
                  sub          a5, s11, a0
                  srli         a7, gp, 13
                  slt          a6, t1, a0
                  srl          a6, s8, a0
                  xor          s9, a3, s2
                  slli         a7, s6, 30
                  slti         s0, s5, 1099
                  auipc        s7, 132726
                  nop
                  srl          ra, s6, t1
                  slli         a6, gp, 23
                  slt          s10, s6, s11
                  sub          s3, a6, a1
                  srl          s1, s9, a5
                  sub          t4, a1, s4
                  slli         s3, a2, 15
                  add          s0, t1, s1
                  slti         ra, gp, 780
                  and          a4, s2, t3
                  andi         t4, tp, 325
                  auipc        a3, 307184
                  lui          t0, 474247
                  xor          tp, a6, t0
                  ori          a0, s4, -628
                  sltiu        ra, s5, 1296
                  slt          s4, a5, a7
                  srl          sp, ra, t5
                  srli         s4, s9, 18
                  add          a1, a2, a1
                  nop
                  ori          s7, tp, 1220
                  sra          a4, a7, a7
                  lui          s1, 838115
                  addi         s1, sp, -840
                  sub          zero, s6, s7
                  srai         a1, s8, 27
                  nop
                  add          a3, s0, s4
                  srai         a6, a1, 31
                  sltiu        a7, s3, 142
                  sra          a3, s3, t2
                  sltiu        s11, a2, 1376
                  slt          t6, a4, s1
                  add          s10, s5, t6
                  or           s1, s5, s7
                  lui          a5, 123650
                  auipc        tp, 872335
                  add          a6, s5, s7
                  slti         a5, a7, 537
                  lui          ra, 683009
                  slti         s3, t1, 735
                  nop
                  slli         t0, a6, 12
                  ori          a0, t2, -820
                  sra          tp, s7, s3
                  andi         sp, s10, -387
                  auipc        a3, 875071
                  slt          a1, s10, s8
                  srai         s8, s10, 19
                  ori          tp, s0, -1302
                  xori         gp, a6, -137
                  lui          s8, 390912
                  lui          s2, 72827
                  srai         s4, ra, 8
                  srai         s11, a2, 17
                  srai         s3, s0, 21
                  auipc        sp, 458010
                  auipc        t4, 610527
                  or           a5, t6, s10
                  srl          s10, s7, t4
                  sub          s6, s3, t2
                  srli         s4, s0, 9
                  sll          s0, t6, s2
                  and          a4, t0, a5
                  srli         s4, a0, 0
                  xor          s11, s10, s4
                  srli         t2, zero, 15
                  andi         s8, s10, -1939
                  nop
                  lui          s4, 997702
                  lui          t6, 888132
                  srai         s2, s9, 12
                  xori         a7, s6, -245
                  addi         t3, a3, 370
                  slli         a5, a6, 15
                  slt          s6, a5, a5
                  add          s11, a6, t6
                  or           t3, a2, t5
                  xor          a7, s7, s0
                  xori         t4, s11, 411
                  sltu         s6, s0, s4
                  lui          sp, 641812
                  srli         a3, s3, 15
                  auipc        a0, 78562
                  sll          a6, s10, s9
                  andi         gp, s6, 1143
                  slt          a1, tp, ra
                  xori         gp, s0, 1059
                  srli         t2, s11, 1
                  and          s4, a7, s2
                  lui          a7, 864491
                  sra          s7, t3, s4
                  xor          s7, t0, s11
                  lui          a5, 132470
                  nop
                  and          s2, t3, t5
                  or           t3, s1, s3
                  slt          t3, a5, t3
                  or           ra, gp, a1
                  nop
                  sll          s8, t4, s2
                  nop
                  xor          s8, ra, t2
                  auipc        a1, 619828
                  nop
                  or           s10, a2, tp
                  srl          t4, ra, s11
                  sll          t6, s6, gp
                  slli         s5, s2, 29
                  or           t0, a5, a3
                  ori          s8, a4, 993
                  sll          gp, a6, t5
                  xor          t2, a3, a3
                  lui          t0, 460722
                  srli         s4, a4, 6
                  lui          a4, 646900
                  srl          tp, a2, a7
                  sltiu        a5, a0, 2019
                  slt          zero, t3, gp
                  srl          s5, a1, t0
                  andi         s3, s2, 1482
                  slt          a7, t3, a0
                  sltiu        s7, s1, -1249
                  sub          s0, s7, t5
                  ori          a1, t3, 1883
                  slti         t3, sp, 1064
                  sltiu        a5, t6, -846
                  sub          a4, a3, a2
                  and          t2, gp, t0
                  slt          tp, t1, s2
                  xor          s2, a1, t1
                  slt          t3, t4, s0
                  andi         a5, zero, 43
                  slli         a1, a3, 24
                  sltu         s5, s11, t6
                  sra          s11, gp, s3
                  xor          s4, a2, tp
                  slti         s4, s7, -1067
                  sll          s8, s9, ra
                  srl          tp, s1, t1
                  addi         s10, a3, 1561
                  slli         s10, t4, 10
                  andi         gp, s0, 332
                  slt          s1, ra, t6
                  add          a6, a2, s5
                  auipc        a7, 801962
                  xor          tp, t6, a7
                  sltiu        s11, a2, 1612
                  slli         t6, s7, 23
                  srl          t3, s7, a7
                  sltiu        a5, a0, -705
                  srli         t4, sp, 1
                  srl          s3, s3, t5
                  slti         s8, a4, 1597
                  sub          a3, t1, t5
                  xori         a4, zero, -274
                  add          t0, t5, t0
                  slt          s8, ra, a4
                  li           s7, 0xfc1cd3db #start riscv_int_numeric_corner_stream_14
                  li           a0, 0x80000000
                  li           s0, 0xffffffff
                  li           t4, 0x585d1eff
                  li           a4, 0xffffffff
                  li           s3, 0x80000000
                  li           a3, 0xffffffff
                  li           sp, 0xffffffff
                  li           s6, 0x0
                  li           s11, 0x0
                  sub          s7, t4, s0
                  auipc        t4, 412819
                  nop
                  addi         s7, sp, -1220
                  lui          s0, 229349
                  nop
                  lui          s6, 27353
                  add          a0, s6, a4
                  auipc        a4, 168039
                  add          s6, a0, sp
                  auipc        s7, 370232
                  addi         s7, a4, -897
                  sub          s3, s3, s3
                  nop
                  lui          s6, 715196
                  lui          t4, 786936
                  auipc        sp, 33355
                  nop
                  addi         a3, a3, -1600
                  lui          a3, 370702
                  nop
                  nop
                  addi         sp, sp, 1449
                  add          sp, s7, sp
                  addi         s3, s0, 1479
                  addi         t4, s11, -895
                  addi         s0, sp, 1236 #end riscv_int_numeric_corner_stream_14
                  sltiu        a7, s1, -1572
                  sll          a0, zero, t4
                  andi         t6, a0, -84
                  nop
                  auipc        s10, 262021
                  srai         s5, gp, 4
                  sltu         s2, s4, tp
                  andi         a5, t1, 1058
                  srai         s2, t1, 4
                  auipc        a5, 791956
                  addi         s7, a7, -325
                  sra          a0, s2, sp
                  xori         s9, t6, 1428
                  and          gp, a5, s7
                  sra          s11, s9, s1
                  ori          a6, s10, -418
                  ori          s3, t0, 734
                  srai         sp, s7, 24
                  srai         a0, sp, 20
                  slli         s2, t5, 26
                  xori         a7, a6, 207
                  sltu         a4, t5, a6
                  ori          s11, t3, 1910
                  nop
                  sltu         s6, s8, s10
                  sub          ra, zero, a2
                  add          tp, s10, t4
                  sltiu        gp, a2, -1683
                  and          a5, t6, s4
                  nop
                  sltu         a3, a5, s3
                  sltiu        s10, a3, -163
                  nop
                  sll          zero, s7, s3
                  xori         s8, gp, -121
                  srai         a5, ra, 12
                  add          s9, a4, s2
                  or           t4, t2, s3
                  lui          s9, 931773
                  slli         s0, a1, 27
                  slli         tp, t4, 23
                  ori          s3, a3, 1122
                  ori          a1, t2, 1983
                  srai         t3, s0, 10
                  sub          s8, gp, s6
                  or           s2, s11, s3
                  sll          s1, t2, a1
                  slti         s10, t4, 1633
                  slli         a5, t4, 0
                  sub          s2, s3, sp
                  addi         t4, s5, -360
                  slli         s5, t5, 3
                  sub          s3, t1, s4
                  xori         s1, a6, -714
                  addi         t4, t3, -1913
                  lui          s9, 437678
                  or           a0, s10, t6
                  or           sp, t4, s11
                  and          s6, a5, a0
                  and          s7, s8, s8
                  sub          s7, s8, a4
                  srli         s10, t5, 8
                  lui          ra, 707670
                  xori         a6, s7, -1251
                  sll          s7, a5, t1
                  sltu         a3, gp, a3
                  slt          s4, s0, ra
                  andi         zero, a4, 876
                  srl          t0, t4, a4
                  sra          t4, gp, a2
                  or           a7, s9, s6
                  slt          s7, s11, t0
                  or           s1, s10, gp
                  or           a1, t6, a2
                  nop
                  addi         t2, a6, 1824
                  and          t6, s11, s7
                  sll          s2, a5, s3
                  nop
                  srli         t3, a7, 30
                  slti         s9, t0, 92
                  add          s8, tp, s0
                  lui          s9, 750854
                  slt          t2, ra, s0
                  srai         s3, ra, 31
                  sub          a4, t3, s5
                  srai         t2, a6, 1
                  ori          a7, a0, -216
                  srai         s6, a5, 27
                  sltu         t4, s8, s1
                  srl          s9, a7, s6
                  sltiu        s11, a7, -1021
                  slti         tp, s11, -1301
                  sll          s10, a6, a3
                  auipc        a6, 788178
                  xori         s8, t6, -1221
                  addi         t3, s11, 1231
                  slli         a7, ra, 28
                  sltiu        a1, gp, 1892
                  or           s7, s11, s3
                  addi         s6, s3, -47
                  ori          sp, a6, -613
                  andi         t3, a5, -136
                  lui          a5, 1009852
                  srl          s2, s8, s9
                  ori          s11, sp, -768
                  sub          ra, a6, a6
                  sll          t4, t0, t1
                  andi         a7, t5, 228
                  or           a6, t6, t4
                  and          t2, s4, s10
                  sltu         a7, s8, a4
                  sltiu        a0, s1, -1883
                  nop
                  slli         s2, s6, 20
                  sub          a3, ra, s7
                  sll          s2, s8, t2
                  addi         t3, s3, 1068
                  srai         s9, tp, 14
                  addi         s1, a1, -744
                  addi         a6, t4, 1068
                  srl          t3, ra, s2
                  srl          s4, t6, t2
                  srai         t2, gp, 0
                  sltu         a6, t2, s9
                  sub          s5, s4, zero
                  slt          a0, a6, a3
                  nop
                  sltiu        a5, s8, 1612
                  sll          a4, s6, gp
                  auipc        t3, 347767
                  addi         s3, a1, -450
                  sltiu        sp, tp, -608
                  ori          gp, t1, 1440
                  andi         sp, s4, 1903
                  auipc        a1, 35759
                  addi         s3, a2, 1491
                  add          s10, s3, a7
                  sll          s9, t2, t6
                  sll          s7, s8, a0
                  srai         tp, a0, 23
                  xori         a6, s9, 416
                  and          s1, t1, a3
                  xori         gp, gp, -1091
                  or           s11, s7, a1
                  slli         s5, gp, 14
                  or           s1, s2, gp
                  xori         s1, t0, 935
                  sltiu        a4, ra, 997
                  srli         ra, s8, 11
                  srai         t3, a2, 10
                  lui          a4, 396177
                  slli         t4, s2, 3
                  sll          zero, a0, a0
                  sra          t0, s1, t5
                  slli         a6, ra, 19
                  xori         s6, s4, 1876
                  auipc        a7, 720875
                  addi         t3, ra, 239
                  xori         s4, ra, -272
                  srli         s8, a6, 17
                  slti         a5, s11, 1729
                  ori          s3, s0, -1582
                  andi         s9, s5, -12
                  srai         s11, t1, 4
                  lui          s8, 104751
                  add          s5, a2, sp
                  addi         s6, s6, 1950
                  srai         s11, a5, 30
                  nop
                  srl          s8, s4, s10
                  slti         gp, s8, -1049
                  lui          t6, 839645
                  addi         sp, s11, -1014
                  xor          s1, s0, tp
                  sltiu        gp, a7, -1508
                  lui          t6, 87233
                  andi         t0, sp, -850
                  nop
                  addi         s9, a5, -374
                  sub          a6, s10, t0
                  add          a5, a2, a0
                  srai         s2, s2, 29
                  srl          t3, a0, a5
                  sra          gp, s3, t0
                  xor          a5, s6, s10
                  and          s7, t2, a0
                  or           s1, s9, s0
                  sll          t6, s3, s10
                  sra          s3, zero, t5
                  slt          a6, s9, ra
                  sltu         a6, a7, a3
                  sub          t0, t6, s7
                  ori          t3, t2, -768
                  sltiu        a0, a5, -1727
                  and          s3, zero, a7
                  slli         t3, s5, 14
                  nop
                  xori         a5, a5, -435
                  sub          s10, s4, t0
                  auipc        s4, 141706
                  slt          sp, a5, s10
                  sll          a4, s10, s2
                  nop
                  addi         ra, t3, 1442
                  sub          s4, s3, s2
                  slt          s9, s1, a1
                  slt          a1, t3, s11
                  sll          s3, s9, s0
                  add          s8, s7, t1
                  sub          tp, sp, s3
                  xor          a6, s2, t1
                  sub          s2, s7, s1
                  xori         ra, s5, 1863
                  sll          a6, sp, sp
                  slti         s3, t3, 488
                  addi         s1, s2, -1551
                  sll          a5, s10, s3
                  xor          t3, a6, t1
                  andi         a3, s4, -1089
                  sub          s9, a4, a2
                  add          s8, s6, t3
                  nop
                  sll          tp, s10, t4
                  add          a4, a0, t3
                  nop
                  and          s9, a6, sp
                  or           gp, sp, s7
                  andi         s0, s2, -1442
                  slt          s0, s3, a3
                  auipc        gp, 417602
                  nop
                  nop
                  lui          t0, 47037
                  slli         s6, s8, 21
                  srl          s3, t6, a7
                  xori         s0, s8, -1462
                  and          t6, a2, a0
                  srli         sp, s1, 27
                  xor          t6, s4, a5
                  slt          t2, s2, a4
                  ori          s7, s6, 1054
                  slt          s2, a2, a1
                  slli         s8, t1, 30
                  sra          s4, s0, t5
                  srli         s4, a7, 22
                  sll          a7, t4, zero
                  nop
                  andi         s6, t3, -535
                  or           t4, s3, t4
                  sll          s1, zero, s10
                  addi         s5, s8, -10
                  sltiu        sp, s6, 1279
                  slti         s2, a0, -833
                  xori         s2, t6, 1640
                  add          s3, s2, a6
                  nop
                  xori         s9, sp, 1961
                  and          a0, s5, t6
                  auipc        zero, 802228
                  lui          t6, 389089
                  nop
                  sll          a4, s9, a2
                  sra          s11, s8, s8
                  sltu         s6, a0, s7
                  sub          sp, s9, t3
                  and          a7, s2, s10
                  sub          s10, a1, t5
                  sub          t0, a5, a2
                  slt          a4, s3, t1
                  add          a4, a1, t2
                  xori         ra, a6, -1618
                  lui          s7, 249787
                  lui          s4, 583545
                  auipc        s4, 661572
                  srli         t4, s5, 3
                  nop
                  nop
                  andi         a1, t3, -1558
                  andi         s9, s0, 249
                  xor          ra, a6, a3
                  slti         a5, t3, 822
                  slli         s9, s2, 5
                  sub          a7, t6, s6
                  or           s6, t2, a3
                  sltu         a4, gp, a7
                  and          t4, s10, s4
                  add          s9, a2, gp
                  slti         zero, s10, -885
                  srai         zero, t1, 17
                  xori         a5, sp, 1101
                  sltiu        t3, s11, -477
                  and          s11, s9, t1
                  andi         t4, s3, 891
                  auipc        s8, 695552
                  auipc        s8, 713369
                  sra          sp, s2, a3
                  lui          a4, 597878
                  ori          s2, t4, -1589
                  slli         sp, t0, 19
                  addi         ra, a2, -97
                  nop
                  addi         t2, s1, -650
                  or           zero, s9, a1
                  lui          sp, 670229
                  srai         a0, gp, 26
                  sll          s7, t4, s8
                  sltiu        s6, s2, -1989
                  lui          s7, 324308
                  andi         t2, s9, 1956
                  sub          s0, s4, s0
                  srl          t0, a6, s7
                  xori         a3, a0, -1027
                  and          ra, zero, a4
                  sub          s7, a4, gp
                  lui          s9, 986985
                  xor          t3, t5, ra
                  slti         s8, s4, 1742
                  xor          zero, a2, t0
                  nop
                  xori         a7, s5, 1600
                  auipc        a1, 324317
                  or           a1, a2, t3
                  andi         t4, s1, -1784
                  xor          a4, gp, a1
                  addi         t2, s1, -1213
                  slt          t4, s8, a0
                  xor          t3, zero, sp
                  sra          s3, zero, a5
                  lui          s11, 800203
                  srli         a5, gp, 8
                  srl          s3, s0, s8
                  or           a6, t4, t0
                  sra          s9, gp, a5
                  xori         t6, s9, 454
                  xor          a5, t5, s2
                  slti         s1, a4, 86
                  add          s10, a5, s2
                  sltu         a6, t6, s0
                  addi         a1, s6, 1563
                  slti         a5, tp, -1669
                  xor          s3, tp, t5
                  auipc        zero, 313857
                  srli         gp, t1, 15
                  lui          ra, 118086
                  sll          zero, s5, a6
                  lui          s2, 142607
                  sra          s2, a1, s0
                  srai         t0, gp, 4
                  sub          gp, s3, t0
                  srl          zero, s7, s2
                  xor          s2, a6, s1
                  xori         a5, a4, 1466
                  xori         t0, s3, -350
                  srli         s11, s4, 0
                  nop
                  add          s1, s4, a0
                  lui          a3, 827972
                  and          s7, tp, ra
                  xor          tp, s6, s0
                  xor          t0, a1, t0
                  auipc        s4, 96493
                  add          s7, a1, t6
                  sra          t3, ra, sp
                  or           s7, a2, a1
                  ori          s2, s4, -670
                  xor          s1, sp, sp
                  srai         t6, t4, 7
                  auipc        t4, 811265
                  ori          s1, t4, -430
                  xor          s4, gp, t2
                  srli         s10, a5, 19
                  sra          t4, t6, a0
                  xori         s2, a0, -290
                  slti         zero, t1, -768
                  add          t6, s1, s10
                  lui          t6, 237698
                  slt          s0, a4, a5
                  slli         a3, a1, 18
                  auipc        s7, 949234
                  or           a7, a2, s0
                  sltiu        a1, sp, 983
                  sll          a0, s11, a7
                  sltu         t0, zero, s3
                  sll          t0, s3, s5
                  sra          a3, t2, t4
                  slli         s11, zero, 27
                  sltiu        a5, s10, -824
                  sub          s3, s6, a6
                  srl          s5, s1, t4
                  srai         s3, a0, 18
                  auipc        a1, 551307
                  slli         a0, a0, 3
                  sltu         t3, s11, s6
                  and          a7, t6, t0
                  srai         a1, a2, 8
                  slt          a3, s3, a6
                  sub          tp, s9, s3
                  or           a4, ra, a3
                  srl          s11, s2, gp
                  slti         a6, a6, 1167
                  addi         t2, a5, -906
                  slt          a5, s8, tp
                  sub          s7, t1, gp
                  xor          s9, a3, s6
                  and          a3, a6, t4
                  srli         t4, gp, 3
                  xori         s9, s1, 570
                  sll          t6, s6, t4
                  add          a5, s9, gp
                  srl          s3, a6, ra
                  sra          a6, t1, a7
                  slt          t3, s2, t5
                  lui          s4, 802063
                  xori         a7, a0, 26
                  slt          s7, s1, s6
                  and          tp, gp, t1
                  or           s11, zero, ra
                  ori          a3, tp, -933
                  sub          s11, s0, t5
                  srli         s7, s5, 10
                  sltu         a0, t2, sp
                  nop
                  srl          a4, t5, t0
                  srli         a4, a4, 21
                  xor          t6, a2, sp
                  andi         s11, a3, 621
                  add          t6, s5, a7
                  ori          a3, s2, 807
                  and          a3, a4, a6
                  xor          t0, s1, s2
                  slt          t3, t0, t6
                  sub          zero, s0, ra
                  slt          s11, a7, a2
                  sll          s10, zero, t6
                  lui          a1, 1014649
                  slli         s7, t5, 19
                  srl          s5, sp, a2
                  nop
                  add          s11, zero, s3
                  slli         s2, t6, 7
                  addi         s10, t1, 1231
                  sra          t2, sp, a7
                  ori          gp, t5, 1543
                  slt          a5, a0, t4
                  auipc        s0, 125793
                  srai         s0, a3, 19
                  slti         s6, a7, -1582
                  addi         ra, a2, 1619
                  auipc        s7, 94654
                  srl          t3, s9, zero
                  nop
                  sub          t6, a2, ra
                  addi         t4, t3, -1231
                  sll          s6, s4, zero
                  sub          t6, a7, s5
                  sltiu        s4, s4, 145
                  sltiu        t6, s1, 560
                  lui          s8, 51831
                  sub          s4, zero, s1
                  slli         gp, sp, 22
                  srli         a0, sp, 15
                  lui          ra, 857464
                  slli         a5, s5, 8
                  srai         s8, s10, 8
                  xori         t6, t6, -969
                  lui          s6, 765519
                  nop
                  sub          s11, t2, t4
                  slli         s10, s11, 26
                  add          s5, tp, s9
                  slti         s11, sp, -1907
                  sll          s8, t4, a2
                  sra          t6, ra, a7
                  add          s9, s7, a7
                  ori          s7, s11, -31
                  srl          a4, s4, tp
                  srai         t4, s7, 17
                  ori          s2, t3, 2003
                  xor          s5, s2, a5
                  srai         t0, s6, 27
                  xori         t3, t5, 966
                  andi         ra, t6, 852
                  and          t6, a5, tp
                  slt          t4, sp, t1
                  sltu         s9, a2, t3
                  sra          a6, t4, ra
                  sltiu        zero, s6, 442
                  ori          a1, a4, 765
                  slli         s1, s3, 0
                  sra          t6, tp, s7
                  sltu         s6, s6, s10
                  xori         s8, a4, 665
                  andi         s3, t0, -1430
                  sll          t4, s2, s10
                  or           t6, a7, a0
                  auipc        gp, 889251
                  slti         a3, s0, -1362
                  sltu         s10, s10, s10
                  slli         s3, s1, 18
                  ori          sp, s8, 526
                  sltiu        a5, t3, 443
                  nop
                  xor          a7, a1, s11
                  slti         s3, s3, -652
                  slli         s3, s11, 9
                  slli         sp, ra, 9
                  sub          s6, t1, s9
                  slli         a0, s6, 14
                  add          s4, s0, a7
                  sub          t3, a6, s4
                  slt          s7, zero, a0
                  ori          a4, zero, 1105
                  srl          t2, a1, s4
                  slli         sp, a0, 17
                  srl          s8, a4, t5
                  xor          s6, t3, s4
                  and          s1, s8, s4
                  auipc        t2, 77395
                  xori         gp, sp, 592
                  ori          s10, s2, -1717
                  slti         s6, s8, 1025
                  sltiu        a5, s4, -837
                  ori          s1, t0, -1767
                  and          s1, a7, a0
                  addi         s1, s10, -13
                  ori          tp, t1, -171
                  and          sp, s5, t0
                  andi         s3, s3, -1141
                  andi         s5, t3, -1583
                  nop
                  sub          gp, sp, a7
                  sll          a4, a0, s8
                  slti         t4, s11, 965
                  sub          zero, s7, t1
                  slli         sp, ra, 9
                  sll          s3, s1, a6
                  srai         t0, t4, 9
                  srli         s0, s5, 20
                  sra          a0, a3, a7
                  srl          tp, s9, s10
                  or           sp, s3, ra
                  andi         s1, ra, -21
                  sltu         s0, s8, zero
                  slt          s1, s0, a1
                  slt          t3, t1, s7
                  and          a5, a5, tp
                  or           t3, s11, s10
                  xor          s0, s9, tp
                  srli         a1, s8, 31
                  slli         t6, a6, 24
                  xor          zero, s11, t0
                  srli         t3, s8, 27
                  lui          s6, 149943
                  sltu         gp, a6, a5
                  lui          s2, 678952
                  sltiu        a3, t4, 729
                  or           t2, t4, t3
                  nop
                  sll          s10, a4, s0
                  andi         zero, s0, 636
                  add          t4, s4, a3
                  xori         s1, a4, 1436
                  nop
                  lui          sp, 10643
                  andi         t6, s8, -730
                  andi         a3, a7, 792
                  sub          ra, s2, ra
                  xori         s1, s7, -539
                  add          s1, ra, a7
                  nop
                  sltu         sp, s0, s7
                  ori          t6, s4, 366
                  srli         a3, t0, 7
                  sub          s11, sp, t6
                  addi         s7, a3, 925
                  sll          tp, s0, s4
                  srai         s10, ra, 27
                  xor          a3, s11, zero
                  xor          s8, a6, s2
                  or           a5, t5, a2
                  sll          s8, a7, s11
                  add          zero, t3, a1
                  slti         a0, a2, 1912
                  ori          s10, t1, -1102
                  add          a0, t1, tp
                  srli         t0, a4, 29
                  andi         s11, ra, -1057
                  sll          a5, t3, a2
                  srl          a0, s3, s1
                  sub          s1, s7, s0
                  sub          tp, t5, gp
                  srli         s10, s3, 15
                  xor          s9, t4, s1
                  srli         t6, t2, 29
                  xor          s8, a0, t5
                  xori         s7, s11, 1337
                  andi         a5, s9, 1976
                  srli         s10, t4, 16
                  lui          s10, 141008
                  xor          zero, a2, s1
                  auipc        s9, 496164
                  sub          t0, t6, t2
                  auipc        s8, 933369
                  xor          s8, gp, s5
                  lui          sp, 26830
                  lui          a6, 972393
                  and          a7, t2, s6
                  and          a4, a7, zero
                  xori         gp, a6, -873
                  xori         a0, t3, -335
                  nop
                  sra          s7, t1, s6
                  slli         s8, t5, 23
                  slti         t0, t2, 1269
                  or           a7, a1, t4
                  addi         t3, a5, 681
                  sra          s11, s1, gp
                  or           a5, s10, s4
                  addi         s3, t3, 514
                  andi         s1, gp, -595
                  slli         zero, s4, 30
                  sub          gp, t1, a7
                  slt          s3, sp, t3
                  sltu         t4, t5, t6
                  slt          s3, a2, gp
                  sltiu        sp, s4, -1970
                  sra          s3, t6, a3
                  auipc        s2, 425190
                  lui          gp, 540869
                  lui          gp, 599199
                  slti         t3, t3, 459
                  and          t3, ra, tp
                  andi         s5, gp, -494
                  addi         zero, a0, -648
                  sll          s7, t4, s4
                  slli         zero, s9, 26
                  and          t3, t2, t2
                  srl          t0, ra, a2
                  addi         t6, a6, -625
                  srl          a3, a4, a1
                  lui          a7, 55071
                  sub          t2, t5, a7
                  sll          tp, s9, s0
                  sltiu        t2, s2, 806
                  sltu         tp, t5, s7
                  sra          a6, s8, s2
                  nop
                  add          t2, s1, a2
                  srli         t6, zero, 9
                  addi         sp, s10, 1119
                  srai         a4, s0, 1
                  xori         ra, a7, 11
                  andi         a7, tp, 991
                  sltu         s5, s3, t0
                  slli         t6, t3, 4
                  srai         sp, a1, 20
                  and          a6, s8, a6
                  add          t0, tp, s6
                  and          sp, tp, s11
                  nop
                  auipc        a7, 634560
                  slti         s4, s2, -538
                  lui          s1, 556336
                  auipc        ra, 623084
                  add          s11, s1, a0
                  sll          a6, a4, t5
                  sltiu        gp, a3, -1673
                  andi         s3, s1, 986
                  slti         a1, a3, -364
                  ori          s0, a3, 960
                  sltu         a6, s4, gp
                  slt          s5, s7, a1
                  sltiu        t2, s4, -1108
                  andi         a4, t5, 390
                  srl          zero, t5, t2
                  sub          s8, s4, t2
                  add          s8, s3, a1
                  nop
                  xori         a4, a7, 908
                  srai         a1, s6, 26
                  sltu         s7, t3, s10
                  xori         s5, t4, -1136
                  slli         a7, s5, 3
                  addi         s10, ra, -512
                  xor          t4, s0, gp
                  xori         s10, s8, 1050
                  sltiu        s7, s4, -1463
                  sltu         s1, sp, a4
                  srai         s2, s11, 11
                  sll          s0, a6, a5
                  andi         s9, t6, -1705
                  slti         s4, s9, 1912
                  sltiu        zero, a5, -1881
                  or           s2, s1, tp
                  addi         a5, s1, -602
                  sltiu        s11, a1, 1895
                  sll          t6, s1, t5
                  or           a0, a7, a2
                  add          t3, a6, gp
                  sub          s6, t2, t5
                  slli         s11, gp, 6
                  srli         a3, t2, 10
                  sltu         s7, s8, t0
                  addi         s1, a6, 220
                  nop
                  slt          zero, s8, s7
                  auipc        ra, 790594
                  ori          s5, t6, -434
                  addi         a3, gp, 665
                  and          a6, s3, s9
                  or           t4, t5, sp
                  srai         s4, a2, 17
                  xor          sp, s5, a3
                  nop
                  andi         s3, a3, 1134
                  srl          a1, s5, a7
                  and          a5, s10, s5
                  auipc        s5, 579053
                  add          s0, s4, t1
                  sub          a5, t5, a5
                  sub          a5, t6, t1
                  srai         a0, a3, 17
                  sra          sp, a0, a4
                  and          a4, a1, s5
                  sll          s11, s8, t1
                  lui          t6, 1026151
                  slti         a4, s4, 1192
                  xori         zero, s4, 71
                  sltu         t2, s10, s1
                  nop
                  and          s7, a1, a1
                  ori          a0, s9, -1902
                  andi         a0, s8, -1723
                  sub          s6, t6, a1
                  slti         s7, s9, -1300
                  sub          s5, t5, s1
                  xor          a1, a2, s8
                  and          gp, tp, a0
                  and          s4, t4, s9
                  slli         s1, s1, 7
                  slli         a1, s2, 12
                  nop
                  sll          s1, a1, s1
                  sll          s11, a3, a3
                  srl          s4, a6, tp
                  auipc        s3, 956613
                  xori         t4, s8, 744
                  slt          a3, s0, s0
                  srl          sp, t5, s3
                  sub          s8, tp, s10
                  add          a0, zero, zero
                  srl          s8, a5, a1
                  auipc        s0, 511144
                  srai         a7, a1, 20
                  ori          s1, zero, 1540
                  srl          t4, zero, t0
                  nop
                  sll          s1, t0, t3
                  sltiu        t3, a2, -39
                  sltiu        a1, gp, 1311
                  lui          a5, 629031
                  andi         a3, a5, -745
                  or           t0, a4, s10
                  ori          a5, t0, -1602
                  srai         ra, gp, 20
                  srl          s11, sp, t3
                  sub          tp, a4, s7
                  or           a1, s2, a4
                  and          s6, t0, t6
                  or           t6, t2, t5
                  xori         a4, s9, -1877
                  srai         sp, s5, 10
                  xori         s6, a6, -52
                  sltiu        tp, a2, 1149
                  slt          s10, s0, t5
                  slli         gp, s11, 30
                  andi         gp, t5, 1797
                  sra          s5, a3, s4
                  or           zero, s2, a2
                  slli         a3, t6, 16
                  addi         gp, t0, -536
                  sra          a0, t6, t1
                  addi         t3, t0, 1075
                  xor          a3, s7, t2
                  auipc        tp, 431286
                  and          t0, s1, s7
                  addi         s8, gp, 82
                  and          s4, t0, s8
                  srai         a0, s6, 5
                  srli         gp, t6, 15
                  auipc        t3, 664275
                  srli         s7, a1, 9
                  xor          zero, s8, zero
                  addi         s4, t5, 1090
                  or           gp, a7, s2
                  auipc        sp, 211975
                  sra          sp, s5, a3
                  sltiu        a0, a4, -744
                  nop
                  sub          s0, ra, tp
                  slt          t0, s2, t2
                  lui          a7, 366317
                  lui          gp, 481365
                  xori         a3, s5, 285
                  slt          a5, t3, zero
                  sub          a1, s8, a2
                  sra          sp, zero, s7
                  srl          a5, s5, a3
                  ori          a4, zero, 725
                  sra          t3, a2, gp
                  addi         s9, a4, 1708
                  slti         s9, s7, -1578
                  andi         s2, a7, -671
                  srli         gp, a0, 30
                  slti         ra, t3, 1424
                  sltiu        t6, t0, 1340
                  srl          a6, t3, zero
                  xori         a6, s6, -1253
                  nop
                  andi         s11, s10, 771
                  sltiu        sp, zero, 663
                  xor          t0, sp, t3
                  and          t4, t1, a1
                  xor          s4, sp, t1
                  auipc        s5, 423846
                  srai         t4, s5, 26
                  sltiu        s11, a3, -1704
                  auipc        gp, 641540
                  nop
                  sltu         s6, ra, s5
                  sub          s0, tp, s9
                  lui          s5, 583191
                  srai         a6, ra, 21
                  slti         s11, s6, 1956
                  srai         t3, s0, 25
                  srl          t0, a7, s8
                  andi         s11, s9, -858
                  slli         gp, ra, 6
                  sra          s3, t4, t1
                  srai         sp, a1, 10
                  slti         s9, s10, 1280
                  lui          s7, 841092
                  auipc        a4, 836478
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s3, 0x62b46f09
                  li           a4, 0x80000000
                  li           s8, 0x0
                  li           s11, 0x80000000
                  li           a3, 0x0
                  li           a6, 0x80000000
                  li           tp, 0xffffffff
                  li           s9, 0xffffffff
                  li           gp, 0xc957b6c3
                  nop
                  addi         a6, a6, -697
                  add          a4, s8, s3
                  sub          tp, a4, s9
                  auipc        s8, 177513
                  nop
                  add          gp, a6, a3
                  auipc        a6, 392436
                  auipc        a1, 112425
                  lui          s9, 892055
                  add          s3, s11, tp
                  sub          s8, a6, s3
                  lui          tp, 243262
                  addi         a1, s9, 570
                  lui          a1, 107698
                  auipc        a3, 82708
                  sub          s8, tp, a3 #end riscv_int_numeric_corner_stream_7
                  sub          s4, s5, s4
                  xori         a7, a4, 2015
                  sub          ra, s1, s2
                  sltu         zero, a6, s5
                  or           ra, t5, a1
                  nop
                  srai         a6, sp, 4
                  sltu         s10, s6, a5
                  slt          t2, a1, t1
                  sub          t0, a3, s9
                  slt          s2, a6, s6
                  and          t3, tp, t1
                  srai         t2, t0, 17
                  sll          t0, ra, a3
                  xor          s4, t5, zero
                  slti         gp, tp, 952
                  sll          s11, s4, s3
                  sra          s4, t2, t6
                  sll          a3, s5, s10
                  andi         s8, t3, 691
                  sltu         a1, s1, gp
                  xori         t4, t3, 358
                  sll          t0, a5, a7
                  srl          s1, t5, s2
                  andi         a4, s1, 1196
                  lui          s1, 908467
                  slt          s1, s2, a3
                  sltu         t0, s0, ra
                  lui          s6, 370327
                  slli         a7, a4, 15
                  sub          s3, t0, t0
                  srl          a0, gp, s4
                  sltu         a3, a2, a3
                  xori         a3, s7, 184
                  slli         s9, a2, 3
                  slli         s8, a5, 18
                  nop
                  addi         a3, a7, -775
                  ori          s2, t1, 908
                  sltu         a1, s3, a2
                  andi         s1, s1, -812
                  sll          s11, s5, t4
                  sltu         s8, t2, a2
                  xori         s1, t0, 290
                  sub          gp, a5, t1
                  andi         gp, a1, -788
                  slt          s2, a2, a1
                  nop
                  srli         t0, t4, 10
                  lui          s2, 473903
                  slt          a0, a4, s10
                  and          a6, zero, t5
                  andi         a0, s11, 875
                  slt          s8, s11, s3
                  sll          ra, a1, t2
                  ori          t0, s1, 455
                  and          s10, sp, ra
                  add          s7, a4, s9
                  add          gp, s8, s10
                  slli         ra, s9, 22
                  xori         s5, a4, 149
                  srl          s9, s4, a0
                  nop
                  srl          s7, zero, sp
                  srli         a0, s9, 12
                  sltu         t0, t3, t0
                  sltiu        t3, s11, 1211
                  nop
                  andi         s6, tp, 1874
                  slli         a5, gp, 0
                  sltu         s7, tp, s1
                  sub          t6, s4, s4
                  nop
                  srli         s1, a5, 18
                  or           s9, s4, s3
                  srai         gp, a2, 0
                  slti         t2, s4, -2042
                  sll          t3, a2, zero
                  sltu         s2, ra, a7
                  slti         t3, a3, -1589
                  srl          gp, a7, a0
                  sltiu        a0, s9, -1490
                  auipc        s5, 542849
                  andi         zero, t4, -990
                  slli         s7, t4, 6
                  xor          s0, a0, s0
                  sra          t6, a2, s6
                  slti         t4, tp, -1880
                  or           gp, a7, s7
                  and          a0, a5, a4
                  lui          s7, 264082
                  srl          s5, a2, t3
                  sltiu        s10, s10, 1099
                  auipc        t4, 345724
                  slt          a7, s8, s11
                  sltiu        t6, s6, -2021
                  srl          t3, a5, a1
                  sltiu        s5, a0, 1350
                  sltiu        t2, a6, -1226
                  xori         t6, s5, -1274
                  auipc        t6, 223850
                  addi         tp, t2, -1535
                  slt          s4, a6, s1
                  sltiu        s9, a2, -805
                  sltiu        s7, s8, -526
                  andi         a6, gp, 165
                  xor          s4, a1, s3
                  nop
                  and          s9, t5, a4
                  slt          a6, s1, t2
                  slli         a0, s4, 24
                  sll          s10, t1, t3
                  srl          t6, s9, t3
                  srai         s3, t0, 27
                  sra          s10, t1, sp
                  nop
                  sra          a3, s7, s8
                  xori         a4, s6, -673
                  nop
                  slli         s6, s5, 25
                  srl          gp, s10, a2
                  sub          sp, a7, a0
                  slt          t2, s4, s6
                  sltu         s6, s9, zero
                  add          s0, s2, gp
                  andi         s2, a5, -788
                  xor          sp, a4, zero
                  slli         sp, t5, 12
                  and          s3, t4, s7
                  and          t3, a2, s5
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a0, 0xf36fb575
                  li           t6, 0x80000000
                  li           gp, 0xffffffff
                  li           s5, 0x0
                  li           t0, 0xa4280320
                  li           s3, 0x80000000
                  li           a7, 0x80000000
                  li           s7, 0x0
                  li           t3, 0x80000000
                  addi         a7, t3, -600
                  nop
                  addi         sp, sp, -1290
                  add          t0, t0, sp
                  lui          a0, 401157
                  auipc        s3, 516481
                  nop
                  nop
                  addi         s7, a0, 1250
                  lui          s7, 71207
                  add          a7, sp, t3
                  nop
                  lui          a7, 79964
                  sub          t0, a0, sp
                  add          t0, s7, s7
                  add          sp, s7, s7
                  auipc        t0, 514857
                  sub          s3, s3, s7
                  sub          s5, sp, gp
                  lui          s7, 572489
                  addi         s5, sp, 372
                  add          gp, a7, s3
                  nop
                  lui          sp, 513765
                  lui          s7, 45508
                  addi         a0, s5, -263
                  sub          gp, t6, t3
                  addi         t3, a0, -416
                  lui          t3, 117904 #end riscv_int_numeric_corner_stream_13
                  or           zero, s5, a6
                  auipc        s0, 391426
                  slli         zero, tp, 16
                  and          gp, s6, t1
                  addi         t4, s4, -446
                  sltu         zero, t5, s0
                  sltiu        s10, a6, -1873
                  srl          s9, tp, s11
                  auipc        s2, 594525
                  auipc        ra, 861764
                  srl          gp, a1, t0
                  lui          tp, 897014
                  lui          t6, 691251
                  ori          s7, s10, -49
                  add          s0, ra, s4
                  lui          a4, 666841
                  sltiu        s5, t1, -1779
                  add          s2, ra, s11
                  and          t4, a3, a6
                  sra          t2, s11, a2
                  nop
                  andi         s4, t0, 1980
                  sra          s6, a2, gp
                  sub          a3, t3, s8
                  or           s8, t0, t2
                  xor          a4, s9, t5
                  sltiu        t0, t1, -942
                  and          a5, s10, s5
                  ori          s2, a1, 1206
                  sltu         a7, a7, s2
                  slli         s4, zero, 15
                  or           t4, zero, s5
                  srl          tp, s5, s8
                  srli         a4, gp, 23
                  srl          s8, t4, s0
                  srai         gp, sp, 0
                  auipc        zero, 502529
                  sra          s8, t5, t0
                  and          t3, t5, t3
                  auipc        s6, 658375
                  srli         s5, s10, 11
                  ori          t4, t1, 867
                  srai         s5, a5, 15
                  slt          s6, t0, a2
                  sltu         a3, t2, sp
                  xori         s2, s1, -1818
                  ori          s10, s10, 787
                  sub          t0, s8, a3
                  auipc        sp, 9793
                  andi         s5, t6, 1527
                  xori         a4, s8, 1204
                  ori          s10, s10, -30
                  slti         s10, t1, -728
                  sltiu        s1, t5, 1499
                  ori          a7, a7, -287
                  ori          s10, s3, -113
                  slli         t2, gp, 28
                  or           s4, t0, t6
                  andi         s3, t6, 1055
                  addi         t6, a5, 1501
                  xor          sp, a0, s3
                  sltu         t2, s6, t5
                  xor          s1, s3, s6
                  add          s11, a6, a0
                  sub          ra, zero, zero
                  srli         a1, t2, 13
                  srl          s9, tp, zero
                  addi         t3, t4, -1114
                  and          a0, s5, t5
                  sra          s2, ra, a5
                  sll          t3, a2, a7
                  srli         t2, s6, 1
                  slti         s2, gp, -98
                  lui          t2, 780685
                  addi         a7, s5, 1572
                  slt          t3, s4, a4
                  srli         s10, t3, 10
                  sltu         s6, t6, sp
                  sra          tp, t5, t2
                  or           s0, t3, sp
                  sra          s10, a1, t3
                  sll          t0, zero, t2
                  nop
                  xor          s4, s9, zero
                  xori         gp, s5, 1027
                  ori          s8, s5, -1298
                  or           s3, s8, a0
                  srli         gp, a2, 11
                  srli         a6, a0, 17
                  or           t2, s4, a3
                  andi         s3, s8, -1714
                  sll          a7, tp, sp
                  xor          a1, ra, s1
                  add          tp, a2, a7
                  slti         s7, t3, 1307
                  xor          a6, t2, t1
                  lui          s6, 259546
                  sltu         s8, t1, gp
                  sub          a6, t0, t4
                  sltu         s4, a6, s7
                  and          a5, t3, t2
                  sltiu        a1, s2, -1674
                  andi         a6, a4, -771
                  add          t6, sp, ra
                  sltiu        a7, t6, 941
                  and          a1, s1, a5
                  xori         s7, s2, -97
                  nop
                  slti         t4, s9, 13
                  or           a1, s4, a3
                  lui          s11, 638039
                  auipc        s2, 146474
                  sltu         a6, s10, a1
                  and          ra, s0, a5
                  srl          a0, a6, t0
                  sll          t3, s9, t1
                  and          s6, t4, s4
                  srli         t2, s0, 0
                  nop
                  sltu         s6, t6, t3
                  add          a4, gp, s8
                  slti         zero, s9, -561
                  sltu         t2, s7, a2
                  srl          s3, tp, s0
                  sra          a1, s2, a3
                  srai         a7, zero, 22
                  srli         a5, sp, 10
                  xori         t2, s1, -212
                  sra          s11, s10, ra
                  sub          zero, gp, t2
                  sltu         s4, t3, s9
                  andi         a4, t0, -1430
                  slti         t3, s9, -358
                  lui          s3, 252992
                  sltu         s7, s8, sp
                  srli         s11, gp, 20
                  slt          s8, s0, a4
                  lui          s6, 173153
                  srl          s9, a4, s4
                  sra          s6, a7, s1
                  ori          a0, t4, -162
                  srai         a1, zero, 31
                  sltiu        s8, a1, -74
                  auipc        s1, 227337
                  lui          s10, 11769
                  xor          a3, a2, s4
                  addi         t0, s9, -1890
                  auipc        a6, 779154
                  sltu         s7, s8, s6
                  and          s1, s11, a2
                  srai         a4, s6, 23
                  add          s11, s5, s7
                  srl          sp, zero, t1
                  xori         s7, t2, 1307
                  addi         a1, s4, 1908
                  xori         s7, t6, -1759
                  and          a4, tp, a0
                  xori         s7, a5, 491
                  lui          sp, 216220
                  xori         s0, s8, 1796
                  slt          s3, sp, s6
                  sltiu        s10, t6, 1271
                  sll          ra, s0, t3
                  and          s1, t4, s1
                  srli         a1, t1, 14
                  slt          s10, a1, s8
                  srl          s11, t5, s7
                  sltiu        s5, t5, -1287
                  sltiu        s11, s9, -754
                  srai         gp, t3, 21
                  or           t4, a1, t6
                  sltiu        a6, gp, 1973
                  auipc        a5, 687841
                  slti         s4, s2, -1531
                  xor          s7, s3, a1
                  slt          gp, s2, s5
                  xor          s8, s0, s1
                  sra          s11, t0, a3
                  slti         t0, a0, -478
                  and          a1, s11, s1
                  lui          ra, 306538
                  srl          a3, s1, gp
                  or           s9, t5, a2
                  sltiu        s11, s10, -1936
                  slt          s10, a5, t6
                  auipc        s4, 959278
                  sltiu        tp, a5, 304
                  and          t0, a2, t6
                  auipc        a6, 34393
                  xor          t6, s2, t5
                  add          s3, s8, ra
                  sub          gp, t6, a5
                  addi         s1, a3, -1798
                  andi         s0, s11, 884
                  srli         t2, a3, 10
                  slti         tp, a6, -2033
                  nop
                  and          t4, t4, zero
                  sll          t0, a3, ra
                  slli         a5, s6, 26
                  sltu         a3, a3, gp
                  sltu         s7, t6, s11
                  slli         s10, s9, 13
                  or           s4, s1, a7
                  sltiu        gp, s1, -735
                  srli         a6, a2, 14
                  andi         s9, a2, -876
                  andi         a3, t5, -1706
                  andi         a6, t4, -7
                  add          t0, s8, s4
                  sra          s2, a1, gp
                  srai         gp, s4, 18
                  add          t6, sp, a5
                  srl          s4, s1, t2
                  sltiu        t2, tp, 656
                  slti         t4, s1, 25
                  addi         a1, tp, -1744
                  addi         s0, t1, 1275
                  lui          s11, 584183
                  xori         a6, zero, -1875
                  sltu         s4, a4, a7
                  add          s2, t6, t4
                  srli         t2, s8, 5
                  sra          s0, s3, tp
                  slli         a6, t4, 31
                  slt          t2, a7, t0
                  sltiu        s2, a6, -1227
                  slt          s10, a4, s0
                  auipc        s0, 897406
                  andi         t3, zero, -351
                  slti         a5, t4, 640
                  xori         a7, s5, 1695
                  ori          a4, ra, -2046
                  srl          a0, t4, s0
                  add          gp, t5, t0
                  lui          s10, 798338
                  ori          s2, t4, -1505
                  srli         a7, s1, 15
                  slli         a0, s5, 12
                  slli         s11, t5, 14
                  slli         s7, ra, 25
                  sub          s1, s6, a4
                  add          s5, a7, gp
                  or           s4, a3, s1
                  auipc        a6, 133726
                  srl          gp, a0, s9
                  srl          s8, t5, s0
                  sub          a3, s1, s0
                  srl          s1, t5, s4
                  srai         gp, s9, 28
                  slli         a6, s6, 22
                  sltiu        s6, t1, -168
                  ori          a1, tp, -1213
                  addi         a7, s9, -1786
                  sltiu        a1, a2, -1116
                  nop
                  auipc        s3, 322395
                  add          s3, gp, gp
                  auipc        s4, 305346
                  sub          tp, s2, s1
                  srl          s1, t6, tp
                  slti         gp, s8, -125
                  addi         s2, s8, -1897
                  add          s8, a4, t0
                  sra          t0, tp, zero
                  srl          s6, a5, a6
                  sltiu        a0, s5, -534
                  auipc        a7, 61559
                  slli         a6, t4, 26
                  nop
                  slti         t0, tp, 373
                  lui          gp, 236957
                  sub          a7, t1, t0
                  xor          s8, a3, t5
                  auipc        s11, 4539
                  sub          t2, a0, t6
                  and          a7, t0, a6
                  xori         a0, sp, -1373
                  sll          s2, s7, t3
                  nop
                  srl          s2, a1, s6
                  add          s2, t0, s8
                  ori          a4, zero, 1618
                  nop
                  ori          tp, a2, 1149
                  addi         s3, s5, -804
                  sub          t4, t0, a6
                  andi         tp, a6, 1631
                  slt          a1, s8, t1
                  lui          s5, 167996
                  slti         t6, ra, 1916
                  ori          a5, s2, 989
                  xori         a3, s3, 1208
                  auipc        s10, 640394
                  sltu         s9, t1, zero
                  and          s0, s5, t2
                  and          a6, s0, t0
                  add          a0, sp, t4
                  auipc        a1, 89371
                  lui          ra, 571279
                  lui          tp, 186845
                  and          sp, s9, t6
                  addi         t6, t4, 1367
                  auipc        s4, 785755
                  slli         t2, tp, 30
                  slt          s9, a0, s7
                  srli         s8, tp, 17
                  and          ra, t0, tp
                  lui          zero, 371087
                  sltu         s10, s5, s10
                  slti         a1, tp, -888
                  slti         s9, s8, -1897
                  srli         s11, zero, 26
                  srli         t2, a2, 24
                  srai         s0, a1, 9
                  srai         s0, s6, 8
                  or           a6, sp, ra
                  sll          t4, s8, s3
                  andi         s3, a1, 1383
                  srai         s10, s11, 11
                  sltu         s0, t3, s11
                  slti         a1, t6, -1651
                  lui          a0, 118097
                  srai         t6, s0, 3
                  ori          s9, s5, 1845
                  sra          s0, a4, gp
                  xori         s9, a6, -1435
                  andi         tp, t0, 122
                  slt          s4, a0, s8
                  sub          t6, s1, t6
                  auipc        a4, 150351
                  nop
                  lui          a5, 667636
                  sltiu        t2, a5, -164
                  sra          t3, s2, gp
                  sll          a3, s0, t4
                  and          t3, a3, a1
                  srai         s5, s7, 16
                  srai         t2, t0, 30
                  or           gp, s10, t3
                  srai         gp, a6, 6
                  addi         s2, s9, 1017
                  sra          s9, a3, t4
                  andi         s2, s11, 1061
                  or           a0, s7, s10
                  slti         tp, a4, 1759
                  andi         tp, a2, -569
                  srli         s3, s1, 31
                  xori         s9, t3, 1298
                  sltu         a7, a3, s2
                  andi         s3, s8, 700
                  auipc        a1, 863104
                  nop
                  and          s0, a7, t5
                  ori          t0, s0, -359
                  sltu         a4, s9, s5
                  slt          ra, a0, sp
                  sub          ra, a0, a6
                  srl          t3, tp, t5
                  srli         a7, sp, 22
                  or           s6, s10, gp
                  sltu         s1, zero, t2
                  auipc        zero, 739867
                  sll          t6, s2, s9
                  sll          t6, a4, t3
                  addi         s3, ra, -1841
                  srai         a1, ra, 28
                  sra          a1, a7, s11
                  sltiu        a3, t3, -765
                  sltiu        s8, s9, -1490
                  slti         s6, s8, 154
                  andi         sp, t5, 1269
                  srl          ra, tp, a4
                  nop
                  nop
                  srl          t4, a7, a1
                  sltiu        t4, t0, 750
                  andi         a4, t5, 1500
                  ori          s3, s2, -1707
                  sub          s6, s8, a5
                  srl          t0, a0, s3
                  srli         s4, s0, 8
                  sltiu        tp, a3, -1191
                  srl          t2, t0, a4
                  xor          t3, a7, t3
                  xor          s7, s0, a7
                  sub          gp, s9, ra
                  sra          a1, t2, s2
                  sub          s10, s2, s1
                  xori         a1, a2, 1874
                  or           s9, t2, s1
                  andi         t2, zero, 1024
                  sltiu        t4, t0, -128
                  sra          a7, t5, a3
                  and          s4, a0, t1
                  xor          zero, s7, s5
                  nop
                  sll          s9, t2, s5
                  auipc        s0, 326484
                  sra          t2, sp, a7
                  andi         gp, t6, 329
                  or           t4, gp, t6
                  and          a6, t4, gp
                  auipc        gp, 139042
                  sll          t2, a4, s9
                  xori         t6, a6, -715
                  sltu         a6, t3, s9
                  and          s6, t4, zero
                  ori          s3, t1, 661
                  sra          a0, gp, zero
                  ori          s8, a1, 1122
                  xori         s9, a7, 457
                  nop
                  xori         t6, ra, 152
                  sltu         s9, s5, a3
                  xori         s11, gp, -1
                  srl          tp, t0, zero
                  srai         t6, s6, 30
                  slt          tp, s2, s5
                  xori         s4, gp, 485
                  sltu         s9, t3, gp
                  auipc        a0, 497205
                  sltiu        s8, s5, 1652
                  sltu         s0, sp, a3
                  sra          t6, s11, t5
                  slt          t2, s7, a6
                  andi         a0, s2, -1090
                  srli         a1, t3, 17
                  nop
                  srai         s5, t3, 11
                  and          s2, s6, s9
                  srl          s7, s2, t4
                  lui          s1, 429658
                  slt          a5, a7, s2
                  slli         s4, t6, 14
                  nop
                  slli         s1, tp, 0
                  ori          a4, s2, 331
                  ori          s9, gp, 774
                  sltu         s7, s1, t4
                  sub          t0, ra, a7
                  sltiu        sp, t4, -1539
                  sra          ra, ra, s6
                  ori          s10, a6, 574
                  sll          s2, t2, s3
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s4, 0x80000000
                  li           t0, 0xffffffff
                  li           a0, 0x80000000
                  li           s11, 0x0
                  li           a3, 0x0
                  li           s6, 0xd50bc264
                  li           s8, 0xeb6953f3
                  li           sp, 0xffffffff
                  li           s9, 0xffffffff
                  add          t3, s6, s6
                  sub          s6, s8, s6
                  sub          s8, s9, t3
                  add          t0, a3, s6
                  addi         s11, s8, 1814
                  nop
                  auipc        sp, 947424
                  lui          s6, 282655
                  sub          s6, sp, s11
                  nop
                  addi         t0, sp, -123
                  sub          a3, a0, a0
                  auipc        sp, 443825
                  lui          a0, 40672
                  auipc        s9, 48074
                  auipc        s6, 841974
                  lui          t3, 728630
                  auipc        s8, 307935
                  lui          s11, 982421
                  addi         s11, a0, 1626
                  add          a3, t0, s8
                  add          a0, t0, s9
                  nop
                  addi         s9, t0, -915
                  auipc        s11, 259951
                  addi         s6, sp, 1800
                  lui          s9, 84095
                  lui          a0, 94804
                  addi         s4, s11, 719 #end riscv_int_numeric_corner_stream_5
                  xori         a3, s8, 1238
                  or           s1, s6, s5
                  xor          s1, a6, t6
                  lui          t4, 608123
                  add          t6, s5, sp
                  xori         a6, s6, 1836
                  ori          s0, tp, -1423
                  nop
                  sub          s4, s7, s9
                  or           t2, a0, t5
                  sub          s8, t5, t6
                  xor          a5, zero, ra
                  lui          ra, 575928
                  sll          s5, sp, s7
                  or           t3, a7, s8
                  srl          a5, t4, t1
                  srl          t0, s7, t6
                  sltu         tp, s5, s10
                  xor          t6, ra, a3
                  slli         zero, t1, 7
                  sra          t4, s4, ra
                  and          s10, a1, t2
                  sll          s3, a3, s3
                  ori          s11, s6, 982
                  and          s9, a2, a7
                  or           a3, t4, t2
                  slt          sp, a0, t1
                  ori          a6, a1, -1864
                  add          t3, t1, a3
                  slti         t2, s4, 980
                  auipc        a0, 935205
                  sll          s10, a6, t2
                  and          s10, t3, zero
                  lui          s0, 151671
                  srai         a7, s7, 24
                  or           a3, zero, tp
                  ori          a1, a1, -1954
                  xori         gp, t6, 1922
                  xor          a0, t2, t1
                  add          s10, a1, s1
                  srli         s11, s6, 15
                  srli         s5, a5, 10
                  xori         a3, zero, -703
                  slt          s2, a1, t2
                  xori         s7, s8, 1538
                  auipc        s9, 971829
                  slt          a4, s9, tp
                  srli         t2, gp, 2
                  andi         s2, a6, -647
                  sltu         s8, a2, t5
                  slti         s2, t3, -1070
                  lui          t3, 150252
                  addi         tp, a3, -997
                  sltiu        tp, sp, -523
                  lui          s3, 939824
                  sll          s10, tp, s5
                  auipc        s10, 460072
                  add          t0, s0, a6
                  addi         a4, s11, 259
                  or           s0, a2, s6
                  addi         s0, s4, -696
                  andi         s3, s11, -522
                  xor          s3, gp, t0
                  or           sp, t3, s1
                  sltu         sp, s0, s8
                  sll          s9, a0, s10
                  lui          gp, 797632
                  srai         s4, s1, 28
                  xor          t3, s4, s1
                  sltu         s9, s11, s0
                  srli         t4, t2, 22
                  andi         sp, s3, -1321
                  auipc        s7, 531893
                  srli         a5, a6, 13
                  srl          s3, gp, a0
                  sltu         s9, s5, tp
                  xori         a4, ra, -1447
                  sltu         s10, gp, t1
                  sltu         s2, a1, t3
                  auipc        a6, 52157
                  sltiu        t2, s4, -765
                  slt          t0, a4, s8
                  andi         s6, t2, 1984
                  and          t0, zero, s9
                  auipc        s9, 968426
                  srai         tp, a1, 12
                  slti         s1, a2, 686
                  and          t4, s5, zero
                  andi         s9, t6, 930
                  auipc        s3, 395462
                  srai         a0, tp, 7
                  sll          zero, a0, tp
                  sltiu        s1, t4, 158
                  sra          t6, s0, a6
                  srai         s5, s0, 5
                  lui          a1, 458023
                  add          a6, a1, s8
                  add          t0, t2, s4
                  lui          a7, 454377
                  andi         s8, a4, 1764
                  xor          t6, s10, a7
                  or           s9, sp, tp
                  sltiu        a6, a7, -1667
                  xori         ra, a7, -1104
                  andi         s8, ra, 292
                  add          a1, s3, t6
                  addi         t4, a6, -1432
                  auipc        s1, 731550
                  sltu         s2, s7, a4
                  andi         t6, s3, 110
                  slli         s4, a0, 27
                  andi         a5, ra, -1723
                  slti         s11, a0, 1668
                  sll          s2, tp, s1
                  sltiu        ra, s4, 1472
                  sltu         a3, a7, s11
                  sra          a5, s11, a0
                  sra          s8, a5, s2
                  lui          t4, 959587
                  and          t6, s2, a5
                  sltiu        t4, gp, -119
                  xor          s11, s2, s3
                  slti         s10, s6, 1063
                  or           zero, a7, t6
                  slti         s7, t4, -1633
                  sub          a7, s0, t6
                  add          a0, tp, t4
                  or           s9, t0, a0
                  addi         tp, a5, 1691
                  or           t6, a7, s11
                  sltiu        s8, s9, -2031
                  sub          t2, s3, sp
                  andi         tp, t3, 1640
                  slt          t4, s8, t4
                  srli         zero, a6, 5
                  lui          ra, 486802
                  srli         s8, ra, 9
                  sltu         gp, a4, t5
                  ori          s11, t0, 912
                  slt          a6, s1, s10
                  andi         gp, a2, 1510
                  srl          s4, tp, a5
                  srai         t2, gp, 17
                  srai         a0, a6, 17
                  lui          a6, 78022
                  and          s8, s2, s9
                  sltiu        a0, a4, -751
                  lui          a1, 446779
                  or           t4, a1, s8
                  slti         a3, a2, 435
                  srai         s5, t2, 27
                  add          a3, s10, a0
                  srl          a0, t1, tp
                  ori          t2, a5, 1315
                  slli         ra, s6, 7
                  xor          s0, s1, a5
                  ori          s8, a5, -428
                  nop
                  sra          gp, s2, tp
                  andi         tp, s2, -1651
                  slti         zero, t6, -1868
                  xor          s2, t6, gp
                  srl          a6, s3, s6
                  sltu         a3, t4, s3
                  nop
                  sra          a0, t2, t6
                  sltu         a6, t2, t6
                  andi         tp, a5, -1565
                  sltu         gp, t2, a3
                  slt          s8, a1, s8
                  slli         t2, s7, 15
                  lui          s7, 892278
                  slt          s7, sp, t0
                  slt          a5, s0, s2
                  srli         s4, gp, 30
                  slli         a5, ra, 0
                  slti         ra, a4, 1036
                  sltiu        sp, ra, 106
                  slli         s9, s0, 10
                  sltiu        t2, a5, 122
                  sltu         s11, a1, s6
                  ori          s1, zero, -1887
                  sra          t2, t3, a3
                  and          a3, t2, t4
                  or           a4, a0, a6
                  sltiu        t6, s6, -1241
                  srl          t3, s9, s9
                  srli         s8, s5, 23
                  and          t4, sp, a5
                  add          s9, s3, a1
                  andi         a1, s0, 904
                  nop
                  auipc        a5, 913737
                  ori          tp, a2, 858
                  add          a0, s9, a1
                  sltu         a1, s10, s9
                  ori          t6, gp, -1458
                  or           s9, a4, s11
                  xor          tp, s4, t1
                  nop
                  sra          tp, a3, a3
                  or           t4, a3, zero
                  slli         a4, t5, 29
                  sltiu        s1, zero, 1842
                  slli         a1, t1, 30
                  nop
                  lui          s8, 465217
                  slli         a7, a7, 18
                  sltiu        ra, s2, 1307
                  slli         a5, a6, 14
                  slt          a3, t5, t2
                  slt          s3, s0, s2
                  and          a3, s8, t4
                  slti         t0, s4, -97
                  slli         t3, gp, 24
                  and          s4, s8, tp
                  xor          s2, s1, ra
                  srli         s6, a7, 4
                  ori          t0, gp, 2001
                  slti         s9, s8, -650
                  xor          a0, a4, zero
                  srai         s6, gp, 11
                  slti         a4, ra, -1695
                  auipc        s6, 483092
                  auipc        t0, 974574
                  sll          t3, t6, t1
                  sll          s8, tp, gp
                  srli         a6, sp, 8
                  auipc        gp, 256664
                  slti         s4, s5, 475
                  srai         s11, t1, 14
                  sltu         s9, t3, s5
                  srai         a4, ra, 20
                  and          tp, t1, a4
                  nop
                  addi         a7, t6, -838
                  add          s1, s7, s10
                  or           s8, t2, a7
                  sra          s3, a6, t0
                  andi         s2, t1, -1647
                  auipc        tp, 341915
                  slti         sp, s3, -80
                  sub          a0, s4, a4
                  sra          s9, t0, s6
                  lui          zero, 218051
                  xori         s4, a6, 248
                  sll          ra, s1, t3
                  slti         a5, tp, 2011
                  sll          a1, sp, tp
                  srli         a5, t2, 8
                  ori          a1, t6, 84
                  sub          s0, s11, ra
                  srl          s8, s11, s0
                  srli         a3, s4, 18
                  sub          s11, sp, s0
                  ori          gp, s2, 297
                  srai         s7, a6, 19
                  srli         s6, s2, 29
                  srai         a0, a3, 23
                  or           s5, s3, tp
                  addi         a0, sp, 601
                  xori         a3, a1, 210
                  slt          t2, t5, a6
                  slli         s7, s2, 22
                  ori          s8, s8, 1115
                  andi         a3, a6, 1808
                  andi         zero, t1, -1061
                  sra          t0, a7, t6
                  ori          s9, a0, 195
                  and          a3, t6, t0
                  slt          s10, s0, s2
                  xor          s7, t4, zero
                  slt          t4, a2, s0
                  srli         s7, a0, 26
                  xori         a7, a3, 56
                  xori         t0, s10, 266
                  sltiu        s4, gp, 1904
                  srai         t6, s1, 19
                  sll          a6, s7, s5
                  addi         ra, a3, -656
                  sltiu        a3, t2, -1902
                  add          s0, s6, s11
                  sll          t4, a4, t6
                  sltiu        a6, a4, -463
                  srai         a7, a4, 6
                  slti         gp, a4, -1810
                  sub          s3, s2, a2
                  slti         s1, a7, -1102
                  addi         s8, a1, 1196
                  and          s7, t0, a7
                  slli         zero, t3, 8
                  auipc        t0, 693387
                  ori          s5, s10, -1023
                  sll          s2, ra, a7
                  srl          s11, zero, s9
                  lui          a4, 264314
                  sltu         a4, sp, s3
                  or           s10, tp, a6
                  xori         a4, a2, -207
                  slt          s9, t5, t1
                  sll          s10, a2, t0
                  srli         s1, a2, 29
                  srli         s11, a3, 29
                  srai         a5, a5, 27
                  andi         t4, t5, -641
                  ori          gp, s11, 1065
                  sub          s2, t4, sp
                  slt          a1, a0, s2
                  lui          s11, 649989
                  sll          t2, s11, s8
                  andi         s0, a0, 978
                  sltu         s11, s5, s8
                  lui          t0, 860339
                  sltiu        a5, s4, -1394
                  xor          t2, t0, a6
                  sub          s8, a5, t1
                  sltu         a6, t4, s6
                  sub          a0, s4, s2
                  sra          t2, t3, t4
                  sra          s10, ra, a6
                  sub          a0, s0, ra
                  srli         gp, a7, 21
                  sltiu        s1, s3, 307
                  xori         zero, a6, 1833
                  srl          s11, s5, t3
                  srai         s6, s10, 1
                  ori          s10, s1, -769
                  add          t6, t2, t5
                  sll          t0, t2, s11
                  sltu         sp, t0, s11
                  slli         a3, t5, 16
                  xor          s6, ra, s0
                  andi         gp, zero, 829
                  and          t6, t2, s1
                  srli         s10, ra, 4
                  andi         zero, a6, -2009
                  lui          s7, 55854
                  nop
                  andi         t6, s2, 1154
                  and          zero, s11, a0
                  andi         tp, a4, 1055
                  sltu         ra, t0, t4
                  srl          a1, t0, zero
                  slli         s9, s8, 27
                  lui          t2, 839241
                  srl          s1, s3, s3
                  sltiu        s11, s10, 1453
                  slt          t4, a6, s5
                  nop
                  srl          t0, zero, t3
                  auipc        s10, 595506
                  andi         a1, s4, 1383
                  slt          s4, gp, ra
                  xori         s2, s2, 1427
                  andi         a5, s2, 991
                  sub          a4, s5, s11
                  xor          s1, s9, s11
                  srli         tp, tp, 8
                  sltu         s5, t6, gp
                  slt          a0, a6, a6
                  lui          s0, 215325
                  srli         t6, a3, 9
                  and          sp, gp, t0
                  andi         s0, tp, -875
                  slt          zero, s7, s9
                  srai         s0, a4, 16
                  ori          t0, s8, 1071
                  srl          s4, a4, t4
                  auipc        s1, 738013
                  slli         s4, t3, 20
                  slli         zero, s4, 9
                  or           a7, s5, t1
                  srai         t4, t5, 12
                  xori         s9, zero, 1446
                  lui          a1, 6581
                  xor          s4, a5, t6
                  xori         s2, t3, -32
                  xor          a6, a6, t1
                  sltiu        s5, a6, -1345
                  xori         t6, zero, -670
                  lui          a4, 972522
                  or           a7, a7, s6
                  sltu         s1, t2, t2
                  srl          t6, s2, t0
                  xori         s11, t1, 1668
                  sub          t4, s3, s5
                  slti         s11, t3, 1165
                  srai         a3, a2, 5
                  slli         s9, gp, 29
                  sll          s0, s4, s7
                  slt          a5, s3, s3
                  lui          gp, 460094
                  slli         s1, s3, 28
                  sll          s8, t0, t3
                  sra          sp, s0, sp
                  lui          gp, 506112
                  srl          a0, a2, tp
                  add          t0, zero, a0
                  sll          a3, s6, sp
                  slti         s8, t4, 1587
                  auipc        s8, 1047606
                  sltu         a4, s10, s11
                  sll          t2, s9, s9
                  srai         s7, t6, 19
                  srai         t6, t4, 24
                  sltiu        sp, s10, -1471
                  sll          a5, s2, a0
                  andi         zero, a0, -1096
                  sll          sp, s3, s3
                  xori         a4, ra, 276
                  sll          s4, a1, tp
                  srli         sp, s0, 24
                  xori         a7, s1, 1293
                  sra          t4, a5, s4
                  srli         tp, s0, 18
                  nop
                  or           s8, s3, a3
                  sra          s4, t2, a7
                  slti         a1, a7, -180
                  sltiu        s10, a0, -1881
                  or           a7, s4, a5
                  sltiu        sp, a5, -1605
                  xori         zero, t1, 1384
                  srl          a3, zero, t6
                  addi         a3, tp, -421
                  sltu         s2, t5, s1
                  srai         s7, a7, 20
                  andi         s10, s2, 1668
                  slli         a3, a6, 8
                  sltu         a1, s4, sp
                  srai         t3, t6, 5
                  nop
                  slt          ra, t2, a4
                  sub          s5, a6, t5
                  sub          s6, s10, t0
                  ori          s1, s0, 403
                  xor          t4, a0, a1
                  srai         t2, t2, 13
                  sub          s5, s9, a6
                  slt          s9, a0, t2
                  lui          s6, 136052
                  xori         sp, a5, 174
                  sltiu        s9, t4, 283
                  sub          a0, a1, t1
                  andi         s8, s10, -2020
                  srai         s10, a3, 25
                  sltu         s4, t6, tp
                  nop
                  srl          a7, a7, s9
                  nop
                  slli         s5, s9, 7
                  slt          a7, a7, s7
                  add          s1, gp, sp
                  srli         ra, a4, 7
                  andi         t6, a6, -897
                  sltiu        s6, s6, 1180
                  xor          s7, t3, sp
                  sra          s6, s8, t0
                  slti         s9, s5, 1867
                  xor          a1, sp, t0
                  sltiu        t2, a2, 854
                  lui          a6, 410120
                  slti         a7, ra, 1144
                  auipc        a7, 29607
                  ori          s6, s9, 1023
                  auipc        s6, 277684
                  addi         s4, s9, 1699
                  srl          s7, t2, a3
                  sll          s0, ra, t4
                  sll          a4, s9, s2
                  xori         a3, a5, -1741
                  and          s10, a0, ra
                  xori         s9, s10, -892
                  and          sp, t3, t4
                  nop
                  lui          s9, 814599
                  nop
                  addi         s7, t2, -1103
                  sra          sp, t0, a1
                  addi         a0, ra, -638
                  xori         s0, s6, -246
                  sra          tp, s8, sp
                  sll          s2, s10, a7
                  xor          s11, s0, t0
                  sll          a0, t4, s1
                  srli         s11, a4, 6
                  sub          s0, a3, zero
                  slt          t4, t5, a7
                  auipc        s11, 918988
                  srl          s4, s5, s8
                  add          s0, s5, sp
                  and          s7, gp, gp
                  auipc        a5, 850540
                  andi         s5, a2, 1707
                  sltiu        a3, t2, -523
                  nop
                  addi         s1, s10, -709
                  nop
                  auipc        s6, 503360
                  srai         a5, t6, 10
                  and          t3, t3, s4
                  ori          t6, t3, -1938
                  sra          s11, s3, zero
                  auipc        sp, 791485
                  slti         t0, t5, 647
                  sra          s5, t1, s5
                  srl          a0, a6, zero
                  sub          a3, t3, s3
                  or           a0, tp, s9
                  sub          gp, ra, s8
                  srli         a0, s5, 30
                  andi         s11, a2, 367
                  xor          a4, gp, a5
                  addi         zero, s6, 1637
                  auipc        t3, 363179
                  sub          s10, s9, s6
                  srl          s7, a2, s7
                  xor          t4, t3, a4
                  addi         s2, t3, 1052
                  auipc        s11, 769130
                  xor          s2, t4, a4
                  sub          s9, s4, tp
                  and          t2, gp, tp
                  sll          s0, s10, t0
                  auipc        s5, 470327
                  slli         s3, tp, 0
                  xor          s8, s6, a3
                  xori         a7, a4, -9
                  sub          a4, t2, a5
                  slt          a0, a0, a0
                  or           s0, s1, s8
                  sra          zero, a0, a5
                  or           a4, a4, s8
                  sltu         s3, a7, t5
                  sra          a6, a5, a2
                  sra          s6, a6, s0
                  addi         s8, a1, -823
                  andi         s3, ra, 780
                  ori          a5, s8, -1692
                  and          sp, t6, a0
                  slti         a6, s4, 647
                  srl          a4, s7, s0
                  auipc        t6, 646972
                  slti         t6, a3, -1840
                  lui          ra, 198954
                  srai         s5, a2, 25
                  srai         s5, t6, 19
                  srai         s1, t6, 23
                  add          s3, t1, s9
                  xor          a5, a1, a7
                  add          s1, s2, gp
                  slli         t4, t1, 13
                  sltu         a7, ra, a5
                  or           s10, s1, ra
                  sltiu        s5, s7, -957
                  xor          zero, a0, t5
                  lui          s7, 285423
                  and          a5, a2, a3
                  sltu         s11, s3, a2
                  slti         t0, s10, -2012
                  addi         s6, s2, -1588
                  lui          gp, 494037
                  lui          a4, 30380
                  srl          s3, a7, zero
                  srai         a7, s1, 12
                  nop
                  srl          a0, s8, s9
                  add          a6, t0, s7
                  nop
                  lui          a4, 909006
                  or           sp, gp, s9
                  srl          a5, s8, a4
                  auipc        t0, 806167
                  sll          a6, gp, t3
                  slt          s10, s10, t3
                  slli         t2, s8, 20
                  slt          tp, s0, s3
                  sltu         t2, s10, ra
                  sra          s2, t5, t5
                  srli         ra, zero, 4
                  add          s7, a3, a6
                  slli         t2, a5, 13
                  slt          t4, t6, a6
                  auipc        t4, 164898
                  lui          s8, 651739
                  srl          s2, a5, a7
                  andi         t3, t5, -799
                  srai         a5, t6, 13
                  sltu         sp, s5, s5
                  ori          s10, s2, 1124
                  nop
                  or           s11, t3, t4
                  or           s1, t3, t1
                  srli         s5, s4, 22
                  slti         s3, a7, 216
                  srai         s4, a6, 24
                  and          zero, s11, s1
                  sub          s9, a4, s10
                  sltiu        s5, gp, -482
                  sll          t0, t0, t3
                  addi         s2, a0, 633
                  srai         s7, t4, 8
                  nop
                  xori         s4, t6, -578
                  lui          s1, 505789
                  addi         t0, t4, -1835
                  lui          s2, 254916
                  sra          zero, a3, t6
                  slti         s8, a4, -441
                  slti         t3, s4, 701
                  xor          s4, t0, s1
                  add          zero, a7, a7
                  auipc        s6, 418488
                  nop
                  or           t0, tp, s3
                  andi         t6, tp, -8
                  or           s0, zero, s0
                  slt          t6, a6, s3
                  srli         sp, a0, 31
                  andi         a4, s5, 1986
                  slli         a4, s9, 12
                  addi         a5, tp, -1987
                  slti         s1, s2, 429
                  srai         a1, t4, 9
                  sll          s5, gp, t3
                  ori          s7, t5, 392
                  addi         ra, s11, -137
                  srai         s0, t1, 7
                  sltu         s10, s8, t0
                  srli         a1, tp, 2
                  slli         s0, a3, 15
                  and          s11, t6, a1
                  nop
                  slti         a0, a3, 1941
                  ori          s1, a3, -173
                  srl          a0, a7, a5
                  addi         zero, a5, 1901
                  nop
                  slti         s9, t1, 221
                  srl          a1, a6, t4
                  lui          s3, 953906
                  srli         zero, t1, 16
                  sub          s4, a0, a3
                  and          s9, s1, t3
                  or           a3, a6, a6
                  srli         sp, t5, 6
                  srl          s8, s4, a0
                  lui          a0, 85958
                  xor          a0, s2, s5
                  sra          tp, s5, s3
                  addi         s8, a5, 1382
                  srai         ra, a1, 7
                  andi         tp, s5, 2019
                  sltu         zero, a4, s8
                  slt          a6, s3, s8
                  slt          sp, a1, t4
                  xor          s8, sp, t0
                  lui          ra, 354756
                  and          tp, a3, s3
                  srl          s8, zero, a4
                  sltiu        a6, s11, 811
                  nop
                  sltiu        a0, ra, 466
                  or           a3, gp, s0
                  addi         s10, t3, 110
                  sub          s6, t0, s9
                  ori          s5, gp, -1033
                  xori         a0, tp, -915
                  sll          ra, a1, t4
                  auipc        s8, 711004
                  sra          t3, s11, s0
                  srai         s4, s6, 18
                  andi         a3, a4, 1506
                  srai         s9, a6, 2
                  srai         t6, s5, 23
                  andi         sp, tp, -1583
                  slt          a3, t0, s2
                  sra          zero, s4, a2
                  addi         s3, tp, 415
                  auipc        s10, 767808
                  xori         a6, t6, 1225
                  sltiu        a4, s0, -951
                  sub          t4, a5, s0
                  addi         s4, t6, -218
                  sltu         a3, a3, tp
                  slt          s2, zero, a7
                  add          sp, s9, tp
                  slti         s4, s3, -2022
                  ori          t2, t0, 537
                  or           t4, s10, a1
                  or           tp, s9, tp
                  srli         s8, s11, 2
                  xor          t0, a1, t1
                  sra          s8, s2, s2
                  slli         s3, s1, 21
                  slt          a3, a1, a5
                  lui          s6, 960224
                  add          tp, a2, t3
                  sltu         s7, a0, gp
                  srai         t6, tp, 6
                  auipc        s9, 881779
                  sll          s1, sp, t4
                  nop
                  andi         t0, t3, 1116
                  sra          t4, s7, a1
                  srli         s4, gp, 31
                  auipc        s7, 95260
                  slli         a0, tp, 5
                  slti         s4, s11, -1583
                  slli         s1, a7, 25
                  slli         tp, s11, 26
                  srli         t6, t2, 30
                  add          t2, t3, s8
                  nop
                  and          a6, gp, s2
                  sltiu        t0, s10, 106
                  xori         ra, s4, -658
                  slli         s11, t4, 7
                  slt          s2, s0, zero
                  sub          a6, ra, s9
                  srai         a0, tp, 26
                  nop
                  andi         s5, s2, -2013
                  sra          s8, a1, a4
                  xor          t4, ra, a0
                  andi         s3, s8, 950
                  addi         s4, a0, -1258
                  add          s8, a6, s8
                  slti         s10, s7, -987
                  sub          s10, s9, gp
                  ori          s4, s9, -257
                  addi         ra, zero, 1986
                  sra          t0, s0, t5
                  slti         s2, a7, 353
                  srli         gp, t6, 16
                  srl          s0, s9, s1
                  sltu         s11, a6, s4
                  sll          s3, a3, s4
                  ori          a4, a5, 1909
                  auipc        a1, 735894
                  andi         s7, sp, 1227
                  and          s6, t3, s0
                  addi         zero, a6, -898
                  slli         t4, s8, 5
                  add          sp, s4, s1
                  srl          a7, t3, s2
                  sltiu        s8, t3, 505
                  andi         a7, s6, 1018
                  xori         zero, ra, 405
                  srli         a3, gp, 0
                  sltu         a5, s3, gp
                  auipc        a4, 602800
                  slt          t4, s1, a0
                  xori         s3, ra, -484
                  sub          s8, zero, s3
                  srl          s5, s7, a4
                  auipc        ra, 749282
                  srli         t6, s7, 6
                  sltiu        t3, a7, -878
                  slli         s4, s2, 28
                  lui          t4, 998824
                  srli         a1, s10, 21
                  sub          s3, gp, a6
                  slt          t6, s5, t5
                  srl          t3, sp, s1
                  srai         a6, a2, 16
                  auipc        s9, 332839
                  lui          a4, 370903
                  add          t0, a5, t5
                  slti         s7, t0, 964
                  sltiu        t0, a1, 616
                  slt          a7, sp, sp
                  or           a6, s1, s8
                  ori          t2, a0, -419
                  slli         s11, t2, 22
                  xor          t6, s7, a3
                  sltu         zero, sp, s1
                  andi         a4, a3, 987
                  andi         s4, ra, -1284
                  srli         s8, a1, 13
                  auipc        t0, 122606
                  srl          s7, t4, s8
                  auipc        a0, 508009
                  xori         t0, s3, -1173
                  srl          s9, zero, a6
                  or           s7, t4, gp
                  lui          t3, 183769
                  srai         s2, s3, 27
                  sltiu        ra, s5, 1372
                  sub          t0, t2, a5
                  or           sp, s8, t0
                  slt          a3, s9, s4
                  xori         s6, s2, 1458
                  sltu         ra, s6, a7
                  and          s10, tp, zero
                  sll          t6, a6, sp
                  add          a1, gp, s11
                  srl          t2, s5, a1
                  sltiu        a7, s3, 17
                  ori          s3, t3, -1699
                  ori          a0, a1, 2035
                  slti         s2, a7, 956
                  srai         s4, t2, 1
                  auipc        s5, 995690
                  srli         sp, s6, 27
                  sll          s3, a7, t3
                  addi         a6, a6, -645
                  xori         a3, s1, -1394
                  nop
                  srai         t2, a5, 7
                  ori          s2, s0, -772
                  sub          s7, s3, s0
                  or           s6, t1, a2
                  srl          s1, t1, a6
                  xor          s5, sp, s10
                  or           s10, s3, s5
                  sub          t6, t6, s10
                  or           a3, t6, zero
                  and          a3, a7, gp
                  nop
                  lui          a7, 220815
                  slli         s6, s11, 12
                  slti         a6, a0, 794
                  andi         a5, s8, -784
                  sra          s0, s10, gp
                  xor          a5, a2, s4
                  sltiu        s7, a1, -1942
                  srl          s7, s2, t4
                  sltu         s2, s7, a6
                  sltiu        s4, a2, 1776
                  nop
                  add          s3, t3, a2
                  nop
                  xor          a6, sp, a3
                  and          a7, ra, s6
                  xori         a0, s10, -1678
                  slli         s8, sp, 28
                  addi         a7, a4, 1697
                  slt          t4, t3, t5
                  srl          sp, s6, s5
                  and          s10, t0, a7
                  sltiu        a1, s11, -713
                  srl          s4, s7, ra
                  sltiu        s7, s3, 1715
                  lui          a7, 245271
                  nop
                  sltu         s5, a2, t4
                  and          a4, a3, s3
                  or           t4, gp, t4
                  addi         s4, zero, -1221
                  slt          s9, a0, t6
                  slti         t6, a5, 1226
                  srli         s3, s7, 9
                  andi         s11, s7, -409
                  slt          a0, s3, s3
                  sub          s4, t2, t6
                  auipc        zero, 875767
                  xor          tp, a3, t6
                  sll          zero, s4, t5
                  sltu         t4, gp, t3
                  lui          a5, 11246
                  srl          s11, a0, s10
                  slti         s11, t4, -903
                  addi         a5, t1, -1827
                  addi         ra, t2, 1745
                  slli         a7, a3, 5
                  or           t6, t3, t0
                  slli         a4, tp, 8
                  sra          s6, s6, t4
                  add          a0, s9, s1
                  addi         s8, s10, 110
                  xori         s8, s10, -933
                  xori         gp, s5, -1142
                  addi         t6, a6, 349
                  sub          a3, tp, a6
                  slli         t3, a1, 2
                  srli         s5, s3, 1
                  sltiu        s1, a0, -226
                  sra          gp, a3, s11
                  sltu         a5, tp, t0
                  slt          t0, s2, a4
                  or           gp, s0, t1
                  sltiu        sp, t3, 1879
                  lui          s9, 478845
                  sll          s0, a0, a3
                  sll          a6, t6, a0
                  xor          a5, s11, t3
                  slt          t0, a5, a1
                  srli         s11, tp, 14
                  slli         s8, s3, 27
                  srli         gp, t0, 21
                  add          a3, tp, gp
                  nop
                  slt          s4, s8, t3
                  srai         t2, t0, 31
                  auipc        a7, 876305
                  srli         a5, s8, 22
                  xor          a4, t0, s10
                  ori          s11, t3, -186
                  slt          s9, a0, s11
                  sub          tp, zero, a0
                  sra          a0, s4, s1
                  nop
                  xor          a1, s8, s9
                  nop
                  srl          t2, tp, zero
                  sll          gp, t3, a2
                  slli         tp, sp, 9
                  srli         s11, s9, 11
                  xor          zero, s5, s8
                  andi         t2, ra, -1505
                  addi         gp, sp, -1387
                  nop
                  ori          s7, a2, 27
                  srai         s4, a7, 11
                  slt          s9, t6, ra
                  srli         ra, t0, 18
                  ori          a5, s0, -1061
                  sub          a6, a0, t4
                  slti         t6, t0, -1467
                  xori         sp, s2, 1948
                  srai         a3, a0, 20
                  xor          t0, a0, a6
                  ori          s3, s0, -884
                  auipc        t3, 675079
                  or           t0, s0, a3
                  sra          ra, t2, t5
                  xor          s0, t1, t0
                  and          gp, s11, s11
                  sra          s11, sp, t5
                  or           zero, t1, a3
                  slt          sp, s5, s8
                  andi         a6, s11, -1097
                  slt          t2, a1, sp
                  lui          s7, 170424
                  sll          t6, s10, s11
                  xori         a1, s11, 1873
                  and          a5, s9, a7
                  xori         tp, t2, -562
                  xori         sp, s0, 438
                  srai         sp, s0, 12
                  srl          s6, s7, s1
                  addi         s10, a2, 846
                  sltiu        t4, a1, -908
                  srli         a4, s8, 31
                  or           a6, a4, t3
                  sltu         s9, gp, tp
                  auipc        t3, 595731
                  sll          s2, a2, s5
                  xor          t3, a6, s10
                  srl          a0, t3, s6
                  xori         a0, s8, 462
                  xori         tp, a7, 232
                  sltu         s6, t6, s2
                  lui          a0, 325805
                  srli         s3, zero, 19
                  srai         zero, s11, 18
                  auipc        a1, 666503
                  and          s8, s9, t2
                  andi         gp, s6, 1865
                  sra          a7, a5, s10
                  lui          ra, 521505
                  sltiu        sp, gp, -1889
                  slli         t4, a7, 22
                  sltiu        a4, s9, 1086
                  add          a0, s3, s3
                  sra          a1, s8, s0
                  srli         s8, ra, 4
                  addi         s2, s3, -1449
                  srli         s11, s3, 27
                  slli         s1, s6, 27
                  slli         s7, a6, 26
                  nop
                  lui          s0, 882201
                  xori         s3, t3, -495
                  slt          a3, ra, t1
                  sll          a3, gp, a6
                  srl          s0, s10, t4
                  sltiu        t0, s2, -471
                  srli         a1, s11, 27
                  sll          s2, s8, s6
                  auipc        a5, 251697
                  slli         s1, t3, 4
                  slti         a0, t6, 548
                  sltiu        a6, a7, 530
                  andi         a0, s0, -727
                  addi         s4, s7, 446
                  xor          s8, s10, s5
                  or           s10, a5, zero
                  sltiu        s9, t4, 1034
                  sub          t2, a3, a6
                  sltu         s0, a4, a7
                  sltu         a1, zero, a4
                  slt          s8, a4, a7
                  xori         s8, t6, 1200
                  auipc        s7, 231657
                  xor          t0, s10, ra
                  sll          a6, tp, a2
                  srai         a5, a1, 28
                  and          s2, s7, t5
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x12, x6, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x26, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x26, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x26, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x26, x15, ecall_handler
                  li x15, 0x1
                  beq x26, x15, instr_fault_handler
                  li x15, 0x5
                  beq x26, x15, load_fault_handler
                  li x15, 0x7
                  beq x26, x15, store_fault_handler
                  li x15, 0xc
                  beq x26, x15, pt_fault_handler
                  li x15, 0xd
                  beq x26, x15, pt_fault_handler
                  li x15, 0xf
                  beq x26, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x6, x12, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x12, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x12, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x6, x12, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x6, x12, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x6, x12, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
