.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0xf52aafb9
                  li x1, 0x2e9e8405
                  li x2, 0x0
                  li x3, 0xfa9b23ec
                  li x4, 0x0
                  li x5, 0xf
                  li x6, 0xdc32530a
                  li x7, 0xfa3c79cb
                  li x8, 0x0
                  li x9, 0x3312bcbf
                  li x10, 0xf2319eef
                  li x11, 0x0
                  li x12, 0x9
                  li x13, 0x93d07dec
                  li x15, 0x0
                  li x16, 0xf1dbe750
                  li x17, 0xff32cd70
                  li x18, 0xf926bc3a
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x227e7768
                  li x23, 0x80000000
                  li x24, 0x95ff6744
                  li x25, 0xf7767253
                  li x26, 0x7
                  li x27, 0xb315981c
                  li x28, 0x90bd771f
                  li x29, 0x1
                  li x30, 0xd
                  la x14, user_stack_end
main:             li           tp, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t5, 0x55684f3e
                  li           t0, 0xffffffff
                  li           s3, 0xcd4271d4
                  li           sp, 0x9a75cbd1
                  li           a0, 0x0
                  li           s8, 0xffffffff
                  li           s10, 0xffffffff
                  li           t4, 0x80000000
                  li           s7, 0x0
                  auipc        t4, 565336
                  nop
                  lui          t0, 986152
                  lui          t5, 732570
                  addi         t4, s3, -1357
                  lui          s8, 23543
                  auipc        s10, 1039607
                  sub          t4, s3, s8
                  lui          t5, 833884
                  addi         s10, s8, 1131
                  addi         s3, s10, -1232
                  nop
                  nop
                  addi         t0, sp, 997
                  addi         s3, a0, -65
                  addi         s10, s10, 249
                  auipc        sp, 856550
                  nop
                  auipc        s3, 620706
                  auipc        s7, 90481
                  sub          tp, t0, s8
                  addi         s3, t4, -1348
                  auipc        t0, 181503
                  sub          s3, s7, sp
                  nop
                  sub          t5, a0, s7
                  nop
                  lui          s7, 482746 #end riscv_int_numeric_corner_stream_12
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           s1, 0xffffffff
                  li           s9, 0xffffffff
                  li           t2, 0x80000000
                  li           s3, 0xffffffff
                  li           t3, 0x80000000
                  li           tp, 0xffffffff
                  li           s5, 0xffffffff
                  li           s11, 0x80000000
                  li           s10, 0x2bf495e3
                  nop
                  addi         t3, s9, 1268
                  auipc        s3, 246231
                  nop
                  auipc        s8, 239709
                  lui          t2, 478007
                  addi         s10, t2, 276
                  lui          s9, 1037795
                  add          s9, s5, t3
                  lui          s11, 803859
                  lui          s1, 158014
                  auipc        s5, 891186
                  lui          s8, 856293
                  sub          s8, s3, s3
                  addi         s1, t3, -381
                  add          t3, s11, s5
                  addi         s5, tp, -842
                  add          s10, s8, s8 #end riscv_int_numeric_corner_stream_16
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           gp, 0xffffffff
                  li           s7, 0x80000000
                  li           tp, 0xffffffff
                  li           a3, 0xffffffff
                  li           t5, 0x80000000
                  li           t0, 0x80000000
                  li           s3, 0x0
                  li           a0, 0x9f801ee0
                  li           t3, 0xffffffff
                  addi         a3, tp, 685
                  sub          t3, t5, a2
                  addi         t5, tp, -180
                  auipc        t3, 210268
                  nop
                  sub          t3, a2, t5
                  auipc        s3, 721
                  sub          tp, tp, a3
                  lui          t5, 984033
                  add          t0, s3, t0
                  lui          a0, 495600
                  lui          a3, 71401
                  lui          s7, 57542
                  sub          a3, gp, gp
                  lui          t5, 603876
                  nop
                  add          tp, gp, t3
                  addi         t3, t3, 406
                  addi         gp, t0, -1451 #end riscv_int_numeric_corner_stream_0
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a1, 0xba0872df
                  li           sp, 0x4bbdeedc
                  li           a7, 0xffffffff
                  li           s6, 0xffffffff
                  li           s5, 0xffffffff
                  li           s10, 0xffffffff
                  li           t4, 0x0
                  li           t1, 0x0
                  li           a0, 0xffffffff
                  auipc        s6, 958116
                  addi         a7, sp, 1022
                  sub          sp, t1, s6
                  add          s5, s5, s5
                  sub          s5, s7, s7
                  add          s10, sp, t4
                  nop
                  sub          a7, s5, a1
                  sub          s5, s5, a1
                  sub          s6, s5, a1
                  lui          s6, 872727
                  add          sp, s5, s10
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_17
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           t5, 0x80000000
                  li           sp, 0x80000000
                  li           s4, 0x769bc3d3
                  li           s3, 0x0
                  li           s1, 0xf9149bdf
                  li           a7, 0xccc7d20d
                  li           tp, 0x5c1676d7
                  li           t1, 0x80000000
                  li           s8, 0x80000000
                  addi         s3, t5, -1701
                  nop
                  lui          s4, 773713
                  lui          s3, 693126
                  lui          t5, 542692
                  nop
                  sub          s4, s8, s10
                  sub          s10, tp, s4
                  lui          t1, 917569
                  auipc        s10, 637119
                  addi         s10, s3, -690
                  addi         t1, s8, -1728
                  nop
                  auipc        s1, 905859
                  auipc        s8, 969113
                  nop
                  sub          s3, s8, s4
                  add          s8, tp, s4
                  addi         t1, t1, 56
                  nop
                  sub          t5, s3, t1
                  auipc        s3, 304635
                  auipc        s1, 432164
                  auipc        s4, 999813
                  lui          s1, 179234 #end riscv_int_numeric_corner_stream_4
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t4, 0x0
                  li           a2, 0x0
                  li           a0, 0x0
                  li           t1, 0x0
                  li           s1, 0x80000000
                  li           t2, 0xacadd66c
                  li           a3, 0x0
                  li           s11, 0x80000000
                  li           ra, 0x9fcee083
                  add          a2, s11, t2
                  sub          t4, s1, ra
                  auipc        tp, 782777
                  auipc        tp, 181278
                  add          t4, a0, s11
                  add          a2, s11, a0
                  add          t4, a2, a2
                  nop
                  add          ra, s11, tp
                  sub          a3, t4, t4
                  addi         ra, a3, -212
                  addi         t4, s11, -505
                  nop
                  lui          s11, 215575
                  sub          tp, a3, a0
                  auipc        tp, 51867
                  lui          a0, 23427
                  add          a0, s1, s11
                  add          a2, tp, tp
                  nop
                  nop
                  auipc        a0, 424
                  auipc        tp, 997572
                  lui          t1, 7139
                  lui          s11, 804970
                  sub          t2, t2, a0
                  nop
                  auipc        ra, 249355
                  nop #end riscv_int_numeric_corner_stream_11
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s7, 0x30142527
                  li           a1, 0x80000000
                  li           ra, 0x806731a9
                  li           t0, 0x1fa8ed43
                  li           s5, 0x41f4c584
                  li           a3, 0x80000000
                  li           s8, 0x0
                  li           a2, 0xffffffff
                  li           a7, 0x0
                  nop
                  addi         s8, a1, 1998
                  auipc        a5, 998768
                  add          a3, s5, a5
                  auipc        t0, 259498
                  lui          ra, 634617
                  sub          a3, s7, a3
                  auipc        a5, 39736
                  add          ra, a1, a3
                  sub          a2, a1, a7
                  addi         a5, a1, -597
                  nop
                  addi         a3, ra, -157
                  sub          a2, a3, a3
                  addi         a2, ra, 735
                  lui          s5, 934287
                  sub          s7, s5, a1
                  nop
                  lui          a2, 207855
                  addi         a5, a1, -11
                  sub          ra, a7, s7
                  auipc        a7, 543940
                  lui          a3, 110106
                  addi         a2, a1, -1631
                  sub          ra, s5, a3
                  nop
                  add          t0, s8, a5
                  sub          a7, a5, s7
                  lui          t0, 140852 #end riscv_int_numeric_corner_stream_7
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           ra, 0xffffffff
                  li           t3, 0xcf7c06c5
                  li           s4, 0xf4506e7
                  li           t0, 0xffffffff
                  li           s5, 0x80000000
                  li           t2, 0x80000000
                  li           s10, 0x8f396646
                  li           a3, 0x80000000
                  li           sp, 0x4e1c96eb
                  nop
                  nop
                  auipc        t3, 910579
                  sub          ra, s5, s11
                  add          t2, a3, s5
                  sub          t0, ra, a3
                  lui          a3, 660072
                  addi         s10, t2, -131
                  addi         s5, s11, 1817
                  sub          ra, s11, t2
                  add          ra, a3, s4
                  sub          s10, s11, s4
                  lui          s5, 14759
                  nop
                  addi         s11, t2, 1438
                  nop
                  add          t3, s11, sp
                  auipc        s11, 30667
                  add          s5, a3, s5
                  auipc        s5, 354039
                  addi         t3, a3, 974
                  sub          s5, t2, a3
                  lui          t2, 410199
                  sub          s5, s4, ra
                  sub          s4, t3, s5
                  sub          s10, s5, s4
                  lui          t2, 239689
                  nop
                  lui          s10, 881283 #end riscv_int_numeric_corner_stream_3
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           t2, 0x0
                  li           s2, 0xffffffff
                  li           s9, 0x80000000
                  li           gp, 0x0
                  li           a1, 0x0
                  li           t1, 0x80000000
                  li           t3, 0xffffffff
                  auipc        a5, 184699
                  add          tp, t2, gp
                  auipc        s7, 221577
                  add          s7, t3, a1
                  sub          a5, s9, t1
                  lui          s9, 774361
                  lui          s9, 850181
                  add          s2, t2, t2
                  auipc        t1, 617673
                  nop
                  add          t2, t3, s2
                  nop
                  nop
                  nop
                  sub          a1, a5, a5
                  auipc        s2, 96256
                  sub          t2, a1, s7
                  add          s9, s7, t2
                  auipc        a5, 401647
                  nop
                  nop
                  add          s9, a1, tp
                  nop #end riscv_int_numeric_corner_stream_6
                  li           ra, 0xe96384c7 #start riscv_int_numeric_corner_stream_9
                  li           t3, 0x128b9e42
                  li           a0, 0x0
                  li           s10, 0x0
                  li           tp, 0xffffffff
                  li           a1, 0x80000000
                  li           t2, 0x2913c48f
                  li           a5, 0xffffffff
                  li           gp, 0x0
                  li           s11, 0x80000000
                  add          a0, tp, a1
                  auipc        gp, 811552
                  auipc        gp, 547421
                  add          t3, s11, t3
                  nop
                  add          tp, a5, t2
                  lui          s10, 289853
                  nop
                  lui          s11, 52851
                  sub          a5, tp, a1
                  nop
                  addi         a1, tp, 191
                  nop
                  auipc        s10, 743148
                  add          a0, a0, t3
                  sub          a0, t3, tp
                  nop
                  add          s11, t3, s11
                  nop
                  auipc        tp, 774527
                  addi         a0, s11, -995
                  lui          t3, 205086
                  auipc        a5, 486901
                  add          a0, tp, ra
                  nop
                  nop
                  nop
                  addi         a1, t3, 1655
                  addi         a1, t2, 1508
                  addi         a5, gp, -471 #end riscv_int_numeric_corner_stream_9
                  srl          a2, a4, t5
                  slti         a6, a3, 1664
                  or           t0, s1, a4
                  sll          gp, tp, a1
                  or           t3, tp, a7
                  sll          gp, s7, a3
                  addi         sp, ra, -1841
                  andi         a5, a1, 1429
                  or           t0, s3, a1
                  xor          t1, s3, a0
                  andi         t0, s11, 977
                  xor          a7, a1, a2
                  srli         s6, sp, 6
                  add          gp, ra, a6
                  srl          t0, a0, a7
                  andi         a2, s11, -1458
                  srli         tp, a3, 28
                  nop
                  sltu         a5, t3, t1
                  andi         a0, s5, -587
                  or           a2, a4, a6
                  xori         s9, tp, 366
                  lui          a3, 133533
                  xor          t1, t6, ra
                  slt          a5, a3, t4
                  addi         s1, tp, -44
                  andi         s8, t5, -803
                  sltiu        a0, s11, 12
                  srl          t0, a6, t3
                  sra          tp, t3, t6
                  or           s8, t3, t1
                  slli         s6, a1, 12
                  addi         s7, t1, -1218
                  ori          s7, s1, 912
                  srli         zero, t2, 20
                  srl          a3, a7, s5
                  sra          t5, t4, a6
                  slli         ra, s11, 21
                  sltu         s6, t5, a3
                  xor          s5, s11, a0
                  andi         s11, sp, 222
                  xori         s8, tp, 104
                  add          a7, s9, a6
                  sub          t5, t4, t2
                  sltiu        t3, s0, -1875
                  srli         s11, s8, 12
                  nop
                  sll          ra, ra, a2
                  xor          s9, s4, a0
                  sra          t5, zero, s0
                  andi         t0, ra, -975
                  or           t5, sp, s5
                  srai         s8, s2, 29
                  srl          t4, t4, a5
                  slti         s1, t6, 1001
                  xor          s8, s1, sp
                  slti         s11, t3, -282
                  sub          a0, a2, t4
                  slli         s2, s10, 15
                  srli         s3, s4, 26
                  sltu         s6, s8, s7
                  sra          s4, t4, t5
                  sra          a6, zero, a7
                  srli         a2, t2, 3
                  auipc        a2, 584359
                  add          tp, a6, gp
                  slli         a0, t5, 30
                  srli         a1, a2, 12
                  sra          t2, t0, s2
                  or           t4, ra, sp
                  sltu         zero, a2, s6
                  auipc        t2, 369336
                  addi         a0, gp, -993
                  sltu         sp, s5, s9
                  add          t2, a4, a5
                  sltiu        t5, a1, -1446
                  sub          sp, gp, s6
                  srai         t2, tp, 18
                  sra          t4, a5, a3
                  addi         s7, s0, 1811
                  auipc        gp, 677707
                  sll          gp, t5, s7
                  auipc        zero, 883525
                  sltiu        sp, s4, -617
                  andi         t3, ra, -1182
                  slti         sp, a0, -1010
                  nop
                  or           a3, s2, s11
                  sll          sp, ra, a7
                  srai         a2, s5, 17
                  slli         t0, a5, 9
                  andi         s3, a3, -1164
                  sltu         s5, s5, s10
                  sll          tp, s4, s8
                  sltiu        s1, a0, 1806
                  xor          tp, s8, tp
                  addi         s5, t2, -218
                  srl          s3, a3, s7
                  andi         a2, a4, -1748
                  add          a1, ra, a1
                  sltu         s9, s6, zero
                  sra          zero, a4, s10
                  xor          t4, s5, s1
                  sltiu        s6, a6, -1887
                  srl          tp, a1, t6
                  srai         s1, t2, 18
                  addi         t3, a7, -823
                  xori         t1, t0, -199
                  lui          s4, 221287
                  slli         s6, s1, 31
                  sub          s11, zero, t5
                  and          a5, s0, t5
                  sltiu        s10, a4, -1221
                  sll          t2, t1, zero
                  sltu         ra, s10, s9
                  slt          a0, s10, a7
                  srl          gp, s2, t1
                  ori          s9, a5, 73
                  auipc        s3, 264401
                  nop
                  or           a7, ra, ra
                  srai         tp, sp, 0
                  srai         t2, a0, 12
                  lui          a5, 754784
                  auipc        a1, 415002
                  sra          s8, tp, s10
                  ori          t2, t3, 1223
                  sltu         t3, tp, t1
                  auipc        a1, 517082
                  srai         s3, s0, 12
                  srli         a0, t6, 27
                  sltu         a6, a7, s9
                  ori          a2, s2, 1579
                  nop
                  and          a3, gp, sp
                  sra          s8, a5, zero
                  andi         s4, s7, -1809
                  sll          t2, t3, s10
                  nop
                  sltu         t0, tp, t5
                  srai         s3, s7, 1
                  slti         t3, a3, 897
                  sll          a1, sp, gp
                  slti         s5, s6, -1087
                  slt          ra, sp, s8
                  xori         s7, t0, 1873
                  slt          t0, ra, tp
                  addi         t0, t6, 1327
                  srai         t4, gp, 0
                  slli         a7, a1, 6
                  or           a6, s1, a1
                  or           a5, s7, s4
                  sub          sp, ra, t6
                  and          s4, s9, a2
                  ori          s8, a7, -1089
                  and          t3, a0, gp
                  nop
                  xori         t4, a7, -1847
                  auipc        sp, 331671
                  slt          t1, s4, s11
                  srl          a7, s4, t2
                  add          ra, t2, s10
                  srli         t5, s2, 4
                  andi         a6, t2, -1734
                  sltu         ra, a2, s4
                  addi         s5, gp, 716
                  xor          gp, t0, a5
                  xori         t5, a6, -1201
                  slti         t0, s7, 4
                  slt          s4, a2, gp
                  andi         a5, zero, -132
                  lui          t3, 553581
                  sra          s4, s10, s11
                  or           s1, s11, s11
                  xor          ra, t4, s4
                  nop
                  sll          s9, a5, a7
                  and          a7, a5, s11
                  ori          s11, s10, 1254
                  srl          a6, s11, s7
                  addi         t0, t2, 1695
                  srai         t4, t1, 4
                  slti         s5, s0, -1096
                  nop
                  sra          s8, s10, a0
                  and          ra, a5, s11
                  sll          t5, t5, ra
                  li           ra, 0x98bc5e4a #start riscv_int_numeric_corner_stream_8
                  li           t0, 0x80000000
                  li           a7, 0x1624d0ea
                  li           t5, 0x0
                  li           s10, 0xffffffff
                  li           s11, 0x682795f3
                  li           s4, 0x0
                  li           sp, 0x80000000
                  li           gp, 0x0
                  li           a1, 0xffffffff
                  auipc        sp, 360174
                  auipc        ra, 532061
                  sub          gp, s10, t5
                  sub          a7, gp, gp
                  addi         t0, s11, -1824
                  nop
                  add          s11, s11, s4
                  addi         ra, s4, 1184
                  add          a7, ra, s10
                  add          t5, a7, sp
                  auipc        s4, 1028246
                  add          a7, sp, sp
                  auipc        t5, 367351
                  addi         s10, t0, 371
                  addi         a1, gp, -1138
                  add          s11, t5, gp #end riscv_int_numeric_corner_stream_8
                  sra          a7, s8, gp
                  sra          s11, tp, s4
                  sra          sp, s1, t1
                  addi         s1, s6, -1036
                  xor          s2, s8, tp
                  addi         s5, s10, 95
                  xor          s11, zero, s7
                  addi         a5, a6, -148
                  or           t1, a0, t1
                  or           ra, ra, s10
                  sltu         a1, t4, s0
                  auipc        t3, 447363
                  srl          s1, a6, s9
                  ori          a2, t0, 933
                  slti         s1, t3, 622
                  srai         gp, a4, 10
                  xor          s5, a5, t6
                  andi         s11, t1, 283
                  andi         s9, a2, 138
                  sub          gp, s3, s6
                  srl          tp, t1, s0
                  sltiu        t5, a0, 43
                  sltiu        t1, zero, 1849
                  srli         a5, t2, 30
                  srli         s11, a7, 14
                  sra          sp, s9, ra
                  slli         s3, s9, 1
                  ori          s7, s10, 1173
                  srai         t2, s6, 4
                  nop
                  srli         s2, s9, 24
                  or           a5, s11, t6
                  sll          sp, s9, zero
                  xor          a1, a4, a7
                  srai         zero, t2, 3
                  sub          t4, s10, gp
                  srl          a6, s7, a1
                  xor          s4, t1, ra
                  slli         s4, a3, 19
                  or           s3, a7, a5
                  or           s9, zero, a6
                  srl          s7, a4, t3
                  add          a7, s11, a3
                  lui          s4, 746137
                  xor          zero, s5, s6
                  slti         s3, a0, 443
                  nop
                  or           gp, s1, a2
                  auipc        t2, 841001
                  add          s5, t3, a6
                  slli         tp, t6, 18
                  sltu         s5, sp, t5
                  sll          s1, a2, s3
                  slt          s9, s5, gp
                  slli         ra, a1, 0
                  sub          sp, sp, s0
                  auipc        s4, 3009
                  srai         s2, ra, 11
                  sra          s4, t5, t3
                  add          s4, t5, ra
                  sra          a1, a7, a3
                  or           tp, s9, s7
                  ori          a0, t6, -61
                  ori          t0, t2, 823
                  slli         t0, a3, 23
                  andi         s9, s0, 1415
                  sltiu        sp, s11, 1076
                  andi         s3, s10, 1987
                  auipc        t5, 634896
                  nop
                  sll          s8, s5, s2
                  ori          s10, a3, 898
                  addi         a3, t6, -1518
                  sll          ra, a7, t5
                  slt          sp, s1, sp
                  and          ra, s10, ra
                  slli         a3, s10, 23
                  sll          t4, a7, a7
                  srl          s5, s4, s5
                  andi         s7, s1, 547
                  sltu         s10, tp, s2
                  xori         s9, sp, -593
                  slli         a7, s7, 26
                  andi         s6, s3, -1508
                  srai         t2, t3, 30
                  lui          zero, 92030
                  xor          s3, s4, a3
                  srai         t5, t2, 21
                  srli         s7, a7, 31
                  addi         zero, s11, -932
                  add          s3, a7, t4
                  srai         s7, ra, 19
                  slt          t1, s0, t5
                  sltu         s9, s5, t3
                  sltu         s5, s6, a1
                  slt          zero, s2, s3
                  sra          gp, s2, t5
                  and          t5, s3, gp
                  xor          a7, s3, t6
                  sub          s6, t2, t1
                  lui          gp, 525775
                  lui          t0, 84367
                  srai         s7, ra, 12
                  slt          sp, s9, a4
                  srl          t0, s0, a7
                  srli         sp, t1, 31
                  slt          t3, s9, t2
                  ori          a7, tp, 763
                  sub          a0, t3, zero
                  auipc        ra, 716453
                  nop
                  sub          s10, s9, ra
                  sltu         a0, ra, a4
                  sltu         s10, a6, tp
                  sltiu        sp, s4, 894
                  and          t1, ra, s3
                  sra          a0, gp, ra
                  lui          s7, 796322
                  nop
                  sltu         gp, sp, s8
                  sltiu        tp, s10, -1084
                  srli         s1, a1, 8
                  srl          ra, s1, s11
                  sltu         s5, s4, t4
                  and          t3, s9, s11
                  slli         s10, ra, 24
                  xori         a6, t1, 291
                  addi         a1, s5, 1053
                  sltu         s7, t2, a6
                  xor          sp, s0, s11
                  lui          s9, 1036658
                  auipc        a1, 810644
                  slli         s10, t0, 19
                  nop
                  xori         a2, s5, 275
                  slti         a5, a5, 964
                  sll          s3, a5, s1
                  ori          zero, t1, 2026
                  srli         t3, a2, 8
                  xor          s7, gp, t5
                  addi         s8, t1, 403
                  addi         s11, t5, -1888
                  add          a2, t5, t0
                  slli         s4, s1, 12
                  ori          t4, s2, 814
                  sltu         s6, s2, t2
                  srl          a1, t5, a0
                  sll          s11, t1, s11
                  slt          a5, a6, gp
                  srli         a6, s0, 27
                  sltiu        t0, s7, -1415
                  srli         s9, s3, 7
                  slt          s11, ra, sp
                  sll          ra, s6, t2
                  auipc        gp, 627168
                  srl          s10, t1, s6
                  andi         s10, s1, -1817
                  slli         s8, a7, 23
                  and          t0, tp, a0
                  sub          t0, s2, s10
                  sll          t3, s4, t0
                  sll          gp, s10, t1
                  srai         s4, s2, 25
                  xor          t5, a5, sp
                  sll          zero, s8, t1
                  ori          zero, a4, 874
                  sra          t3, t2, a0
                  slti         s2, a3, -1499
                  or           a2, s3, t3
                  addi         s1, a3, -1883
                  srli         a2, s6, 2
                  slli         s3, gp, 17
                  srl          s4, s7, t5
                  nop
                  ori          a0, a0, -758
                  srl          t3, t4, a3
                  xori         t1, a4, 520
                  sltu         a2, s1, s1
                  sra          t5, a0, s5
                  xor          gp, ra, ra
                  or           s5, s0, s7
                  add          s11, s1, a2
                  sub          t5, t5, s0
                  auipc        t2, 483079
                  sra          a2, s11, s4
                  and          a1, t3, t0
                  lui          s3, 629610
                  xori         s9, ra, -1142
                  srl          a0, zero, s3
                  slli         s9, t3, 17
                  sra          s1, a3, s10
                  xori         sp, s1, -1744
                  ori          t0, s11, 652
                  andi         s6, s4, -1583
                  ori          t1, t3, 1640
                  sra          zero, s3, s5
                  xor          zero, s11, sp
                  xori         s1, s10, 1265
                  slti         s5, s9, 1359
                  ori          t4, s10, 1738
                  xor          a3, a2, sp
                  xor          a3, ra, t2
                  srli         t5, a1, 25
                  andi         s10, s11, 1573
                  sltu         a0, gp, t4
                  auipc        t1, 480807
                  addi         s5, a3, 505
                  sltiu        a5, s5, -557
                  sll          a0, a1, s4
                  srl          a0, a0, t1
                  sub          s11, s2, tp
                  sll          a0, a0, a2
                  lui          s4, 350801
                  slti         s8, a1, 1999
                  ori          s10, gp, -968
                  lui          a0, 593611
                  srai         a2, t4, 16
                  add          t4, a3, sp
                  slti         t1, a3, 662
                  ori          s3, t2, 320
                  slt          s10, a5, a5
                  slti         gp, a5, 290
                  srl          s5, a1, t6
                  sra          sp, tp, t1
                  slli         a6, t3, 20
                  sll          s4, s0, s8
                  slli         s8, s4, 11
                  ori          tp, s4, 1506
                  lui          a3, 753328
                  xor          s5, s10, s7
                  auipc        s5, 703546
                  sub          s2, t3, a2
                  auipc        t1, 914646
                  slli         t1, s3, 7
                  addi         s9, a1, -319
                  xori         s7, zero, 819
                  sltu         t5, sp, a0
                  add          t5, t2, gp
                  slti         a7, zero, -108
                  nop
                  slti         t5, s3, -438
                  lui          s3, 444485
                  sltiu        a5, s1, -230
                  srai         zero, a2, 31
                  srli         t2, tp, 26
                  srai         a1, a1, 13
                  add          a7, s10, s11
                  srli         ra, a5, 3
                  xori         t4, s11, -1205
                  slli         ra, t2, 11
                  sll          s2, sp, tp
                  auipc        s3, 878980
                  sll          s4, a7, t5
                  sra          zero, a2, a2
                  sub          s1, a4, t6
                  sll          a0, s6, s10
                  and          t5, s8, gp
                  srai         t2, s7, 10
                  and          s7, s9, a0
                  auipc        a3, 199593
                  sra          zero, t5, s10
                  sra          a6, a4, s10
                  xor          s4, s8, s0
                  nop
                  sltiu        a2, s8, -1084
                  sltu         zero, s3, t4
                  slt          s2, s2, s11
                  auipc        s1, 1044610
                  add          s8, s0, ra
                  or           s11, s1, a6
                  xori         a2, t6, 1343
                  nop
                  lui          s5, 399343
                  addi         a1, a7, -1258
                  xor          s3, s5, t4
                  sll          tp, tp, s2
                  sra          ra, s1, t2
                  addi         s11, a6, 361
                  lui          ra, 756821
                  andi         t3, tp, -1938
                  sll          tp, s1, a7
                  slli         s11, a6, 29
                  xori         s7, s8, -1425
                  sub          t1, t2, s8
                  slti         a2, t4, -1444
                  slli         s6, a4, 5
                  sub          a1, s2, a0
                  slti         t2, s9, -307
                  slli         s4, t5, 6
                  sll          s1, zero, a5
                  and          zero, zero, a2
                  slli         t5, a3, 0
                  sltu         s5, s2, a7
                  or           a2, t5, t5
                  srai         s9, a0, 17
                  srai         a1, a1, 21
                  slt          a6, ra, s10
                  xori         s5, ra, -35
                  slti         t1, t3, 1160
                  srl          s8, t6, zero
                  ori          ra, t6, -1097
                  and          s9, s8, t1
                  sll          t2, a5, s5
                  slti         t1, s7, -1811
                  auipc        s2, 51912
                  sub          s8, t2, s0
                  srli         s3, a7, 23
                  or           s7, a1, a1
                  xori         a2, t6, -1670
                  xori         t3, s2, 1627
                  add          s9, s8, s7
                  slli         s8, sp, 15
                  ori          gp, t0, 661
                  slt          s3, s5, a5
                  add          t0, a5, s3
                  srai         t2, t3, 13
                  xori         a3, t3, -1891
                  andi         s6, s5, 1175
                  xori         t1, tp, -1760
                  slt          a5, s6, t1
                  add          t2, zero, a5
                  slti         s11, gp, 659
                  ori          gp, a5, -1131
                  and          zero, a3, a7
                  andi         a0, t1, 1409
                  srl          s2, s3, s3
                  or           sp, s0, sp
                  sltu         ra, a4, t5
                  lui          a7, 582759
                  and          gp, t4, a7
                  xor          t2, t2, t3
                  srai         s8, s7, 28
                  sra          s6, s2, a3
                  sltiu        s1, zero, -1730
                  addi         s2, tp, 237
                  srai         t2, s4, 5
                  srli         t1, zero, 1
                  sra          s10, a5, a2
                  sra          a6, sp, zero
                  or           t4, s2, t1
                  sltu         zero, s1, s4
                  auipc        t5, 709386
                  ori          s5, a6, 1628
                  sra          a7, ra, s7
                  sltu         s5, t4, a5
                  xor          a7, s1, a4
                  add          s9, a2, s7
                  and          s8, s6, s6
                  sltiu        zero, s5, -992
                  andi         sp, s10, -1025
                  srl          s2, t6, t3
                  slt          s7, t0, s8
                  nop
                  sltu         s8, a0, s7
                  slli         a1, a1, 26
                  srl          a0, s5, s2
                  auipc        s9, 173320
                  srl          t3, s2, s9
                  sll          s10, gp, t4
                  sll          s4, a7, tp
                  andi         s1, s2, 1029
                  andi         a6, s8, -1395
                  auipc        tp, 941284
                  andi         a2, a5, -1945
                  ori          s4, a2, -1325
                  sub          a7, a7, t1
                  lui          s1, 90684
                  andi         t4, t1, 313
                  srl          s8, zero, t6
                  lui          s6, 487156
                  sltiu        a7, s3, 754
                  sra          tp, t0, t6
                  add          s11, s8, s6
                  add          s7, t0, t4
                  auipc        ra, 293069
                  sra          t4, s4, a4
                  and          s6, s0, t6
                  slt          s4, a2, s10
                  sltiu        sp, a6, 1684
                  sub          zero, a7, s5
                  xori         s3, t1, 913
                  andi         t1, tp, 746
                  and          s11, tp, a0
                  addi         t0, s2, -621
                  srli         a0, s6, 13
                  srai         t0, t2, 18
                  sub          zero, t3, gp
                  xor          a7, ra, s9
                  andi         t4, s6, 1595
                  nop
                  nop
                  ori          s2, s11, -394
                  addi         s11, s7, 1301
                  xori         tp, s0, 482
                  nop
                  sltu         t1, s0, s10
                  srli         s7, s2, 15
                  auipc        s8, 821166
                  xori         a1, ra, 1561
                  sra          zero, a2, a6
                  andi         s6, ra, -1686
                  nop
                  and          t1, zero, t0
                  xor          s1, zero, s6
                  srl          sp, s6, t4
                  auipc        s4, 1035519
                  sltiu        a7, t0, 1307
                  xor          sp, t3, s5
                  auipc        s9, 668162
                  slli         t1, s11, 8
                  sll          a5, a2, zero
                  slt          t3, a0, a1
                  xori         t1, gp, -102
                  sub          s5, a7, tp
                  srl          s10, s6, a1
                  sltu         s7, tp, a6
                  srai         t2, sp, 14
                  add          a3, a6, a5
                  and          a0, s2, a1
                  or           a5, t1, t6
                  or           gp, s1, s4
                  slli         t0, s10, 19
                  sll          t0, gp, a2
                  or           ra, s4, a4
                  srl          a5, s2, ra
                  and          a3, s5, sp
                  srl          s10, a6, a5
                  and          s4, t6, a7
                  slti         t4, t6, 1249
                  xori         s11, s8, -941
                  sra          s6, s1, a7
                  lui          gp, 34870
                  addi         a0, a3, -1324
                  xori         t1, t2, 464
                  sltu         s3, s4, ra
                  lui          sp, 894777
                  sltu         a5, s6, s11
                  srai         t3, t6, 3
                  or           a7, t1, ra
                  sltu         s6, a0, s11
                  add          s2, t2, s7
                  xori         a5, t6, 1272
                  slli         t2, s8, 15
                  lui          s10, 559400
                  sll          gp, a2, s5
                  nop
                  xor          t4, s1, a7
                  auipc        gp, 879966
                  slti         a2, t2, 460
                  sltiu        tp, s5, 1521
                  slti         a6, s0, 571
                  sub          s5, a0, s11
                  sub          tp, gp, zero
                  srli         s10, t6, 17
                  lui          t1, 683679
                  sltiu        t0, gp, -2023
                  sltiu        a1, a5, 941
                  sra          a5, s10, s6
                  andi         s7, s9, -1566
                  sub          s3, a4, zero
                  xori         t1, s9, 1603
                  xori         s3, a5, 216
                  auipc        t5, 524863
                  sltiu        s4, a0, -1259
                  slt          a0, gp, s9
                  addi         s3, s2, -1184
                  addi         a2, t4, 669
                  xor          s4, t1, t1
                  srli         s8, t5, 28
                  andi         t0, a2, -1524
                  lui          a2, 222401
                  sltu         a5, s7, s11
                  srl          a3, ra, a7
                  andi         s10, a0, -679
                  srl          sp, gp, t3
                  sll          t5, t3, ra
                  sll          a1, s6, a2
                  lui          t3, 545136
                  or           a5, s5, sp
                  sll          s3, t6, ra
                  srli         s2, s10, 28
                  and          gp, s9, a2
                  sll          a6, s2, s2
                  ori          s6, s7, 1574
                  lui          s3, 1044530
                  xor          ra, a4, a1
                  sltiu        s5, s3, -490
                  addi         s6, gp, 1274
                  andi         a6, s4, -921
                  auipc        tp, 911878
                  add          zero, a0, s0
                  srl          a5, s1, s1
                  srai         a0, gp, 10
                  andi         ra, t1, 1263
                  slli         t1, a6, 29
                  xori         s3, a4, 577
                  lui          s1, 906216
                  add          s2, a0, s3
                  sltu         s1, a5, a4
                  slti         s10, s7, -1747
                  andi         gp, tp, 401
                  sltu         a6, s3, a6
                  nop
                  or           s11, a2, a0
                  sra          a7, s11, a0
                  xor          t3, s6, s4
                  xori         t4, a0, -1382
                  nop
                  xori         t5, ra, -249
                  srl          s11, s6, s3
                  addi         t1, t0, 557
                  sltiu        a2, t3, 1243
                  addi         s5, s1, -456
                  lui          t0, 172977
                  srli         s5, s2, 22
                  and          a5, a1, s11
                  ori          s1, s1, 885
                  xori         a3, t2, 385
                  ori          a3, zero, -1435
                  slti         s4, t1, 175
                  auipc        t5, 827947
                  lui          a2, 436649
                  srli         gp, a5, 15
                  xori         s4, a7, -151
                  srai         s7, sp, 6
                  add          a7, t6, s0
                  slti         s9, t0, 513
                  or           sp, t0, a0
                  slt          t5, s10, s1
                  xori         s1, s0, 1079
                  xori         s8, a7, -1852
                  xor          s5, sp, s5
                  or           tp, t2, s6
                  andi         a3, s0, 997
                  andi         a7, a6, 258
                  srai         s3, a3, 7
                  addi         t2, s2, 436
                  and          s7, a5, s11
                  slti         s10, t3, 1130
                  slti         s1, t4, 1159
                  srli         s8, t0, 5
                  or           a0, a6, t6
                  sltu         s2, a6, a6
                  nop
                  sltu         s2, s0, t5
                  ori          t2, a6, 614
                  sltiu        t2, tp, -1428
                  sra          s7, s9, s3
                  xor          s11, s1, ra
                  sltu         a7, a1, tp
                  slt          s3, a2, ra
                  sll          sp, a2, a1
                  add          zero, s11, s11
                  and          t4, a3, s1
                  and          s4, a1, s11
                  auipc        s4, 582960
                  ori          t1, a7, -228
                  xori         s10, t1, -661
                  slli         t5, s0, 17
                  slli         a7, a2, 12
                  add          ra, t2, sp
                  andi         ra, s7, 1526
                  nop
                  sltu         zero, t2, s8
                  xori         a1, s6, 1055
                  ori          s6, t4, 452
                  sll          a0, s10, a2
                  and          a6, gp, t5
                  srli         s7, s0, 29
                  andi         a1, s5, -52
                  slti         a5, s5, 1416
                  xori         t3, a5, 467
                  slt          s5, gp, t6
                  srai         s10, a5, 18
                  xor          s10, s2, a5
                  and          s11, gp, s0
                  andi         gp, sp, -59
                  sra          s4, s1, s4
                  sltu         s11, s4, t5
                  sltiu        a1, s0, 491
                  srli         s6, s9, 20
                  slli         s11, s1, 3
                  auipc        s1, 402324
                  sltiu        s10, a5, -1098
                  xor          a0, t6, s7
                  srli         sp, zero, 31
                  sub          tp, s9, t3
                  slli         s9, s11, 31
                  srli         gp, a5, 9
                  auipc        s1, 883191
                  srai         s1, s11, 19
                  srli         s9, a3, 2
                  and          s2, t1, t5
                  slli         zero, s8, 16
                  sra          ra, a7, t6
                  ori          t1, a7, 935
                  srli         s9, s1, 24
                  xori         s6, t3, 1536
                  xori         a1, s5, -606
                  slt          s11, s1, a6
                  srl          a5, a2, sp
                  and          s5, s10, a5
                  sll          t0, a0, t5
                  and          tp, t2, s7
                  srli         s2, tp, 24
                  sra          s11, s5, gp
                  lui          a7, 963113
                  addi         t2, a5, -1188
                  slli         s10, ra, 14
                  sltu         s3, a1, a3
                  lui          sp, 361494
                  sltiu        a5, t2, 777
                  xori         s8, s3, 774
                  xor          a0, t4, s0
                  sltiu        t4, t2, 829
                  or           a0, a0, a5
                  sub          s11, t2, gp
                  andi         s5, a3, -193
                  srai         a2, s4, 9
                  ori          a1, s9, -1797
                  ori          a1, s8, 1964
                  andi         a5, t4, -766
                  nop
                  sltu         t1, t1, s11
                  addi         t5, a7, -375
                  slti         s1, zero, -43
                  andi         t4, s5, 993
                  andi         t4, a2, -1155
                  sltiu        sp, zero, 627
                  sub          zero, s2, a7
                  or           s5, a0, s4
                  add          s4, zero, t1
                  or           s6, a1, t3
                  slt          t1, s8, tp
                  auipc        a1, 905797
                  sltiu        s3, t1, -1121
                  srli         s2, s1, 24
                  addi         s11, a5, -458
                  ori          s5, a2, -1934
                  or           tp, tp, t6
                  xor          t0, a4, a6
                  slti         s2, a0, 871
                  lui          s6, 791115
                  andi         tp, t5, -349
                  lui          a7, 908022
                  srl          ra, s9, a2
                  xor          a3, sp, t0
                  auipc        s11, 65574
                  addi         zero, s7, -1164
                  and          a3, s4, t0
                  and          tp, s10, t5
                  sub          a3, a0, zero
                  lui          t5, 921120
                  sub          s6, a2, a5
                  slti         a7, s3, -1875
                  sltiu        s10, s0, -426
                  andi         s1, t4, -132
                  xor          a6, a5, t0
                  ori          s7, s1, -44
                  sltu         a3, a4, a7
                  sra          tp, s3, s2
                  or           ra, s5, s11
                  andi         t4, t4, 688
                  nop
                  auipc        t1, 762931
                  and          s7, s6, s5
                  sub          t2, s9, s9
                  and          gp, t4, a6
                  slli         s8, a7, 18
                  lui          a0, 317821
                  nop
                  auipc        sp, 833841
                  xor          t1, t4, t2
                  slt          t3, a5, t3
                  andi         s4, sp, -1559
                  or           a2, t5, a7
                  srli         s7, s5, 0
                  add          s2, a7, s10
                  ori          t5, a4, 1903
                  sltiu        sp, s5, -1289
                  or           tp, sp, a0
                  sltu         t5, a2, s11
                  ori          s2, a7, 1067
                  sra          t5, zero, t0
                  addi         s6, t0, -366
                  ori          tp, t4, 1703
                  slt          s5, t5, sp
                  andi         a6, t5, -193
                  slli         s3, s8, 13
                  add          s11, zero, a0
                  ori          sp, zero, 1174
                  nop
                  srai         a5, zero, 30
                  srl          t3, zero, s10
                  slt          a5, ra, a6
                  andi         zero, a6, -1083
                  slli         s4, s7, 26
                  nop
                  xori         ra, s2, 1898
                  andi         ra, ra, -71
                  and          sp, s0, gp
                  nop
                  and          a6, s10, t4
                  xori         tp, a1, -1009
                  slt          t3, t5, sp
                  xori         a6, a0, 197
                  ori          s2, a5, -1737
                  slt          s5, a2, s1
                  slti         t4, s3, -26
                  and          s9, a5, ra
                  xor          s11, s3, a0
                  srl          a6, a3, s10
                  lui          s2, 774831
                  srli         gp, ra, 26
                  slti         s4, t5, 958
                  xor          t4, s1, t6
                  auipc        s11, 20364
                  slt          s5, t6, s1
                  slt          t2, s9, t3
                  srl          tp, t1, s2
                  sra          t3, t2, sp
                  xori         s6, a0, 1816
                  auipc        s3, 466116
                  addi         s5, sp, -1962
                  srli         t2, t4, 12
                  slt          t0, t6, sp
                  auipc        s9, 349338
                  auipc        s11, 162040
                  slti         s11, t3, 1435
                  xori         s7, s2, -345
                  ori          t1, t5, -2016
                  nop
                  slli         s8, s4, 7
                  slli         a7, s6, 12
                  sll          sp, a4, s11
                  sra          ra, gp, a4
                  or           ra, t2, t0
                  srai         s5, s2, 11
                  addi         t1, t2, -717
                  addi         s10, s11, 1218
                  auipc        s5, 149494
                  or           a1, t6, a0
                  ori          sp, t6, -1395
                  sltiu        a6, s2, 76
                  sub          zero, zero, s1
                  srai         sp, a0, 24
                  sll          zero, t2, s4
                  add          ra, s9, s3
                  lui          s9, 324268
                  ori          a1, a3, -1979
                  and          a7, t6, a6
                  and          s2, s9, zero
                  srli         a3, a1, 14
                  slli         a7, a7, 3
                  or           a3, t6, s6
                  srai         a5, s9, 16
                  or           s8, t6, s6
                  slti         s9, ra, -1112
                  sltu         gp, a3, gp
                  slli         gp, a7, 19
                  nop
                  slti         s9, a1, 23
                  sll          a1, gp, t5
                  addi         a0, s4, 1682
                  or           a7, s10, a4
                  auipc        s2, 189268
                  sll          t4, s10, s1
                  slti         s6, s4, -1227
                  nop
                  srli         t0, t2, 3
                  sltiu        s11, s5, -83
                  slt          t0, s7, a0
                  or           tp, t6, s3
                  slli         t1, gp, 13
                  xor          s1, s1, s8
                  sll          t2, a7, s9
                  or           s10, t4, ra
                  auipc        a0, 255006
                  sll          sp, s11, t5
                  sltu         t0, zero, a6
                  slti         t3, t0, -1580
                  srai         t1, a2, 8
                  srl          a1, ra, s11
                  slti         a7, a4, -248
                  slti         zero, t3, 1557
                  sltiu        a7, a5, -2004
                  sra          s5, s6, s6
                  lui          a2, 821639
                  add          s7, tp, gp
                  slt          s2, s2, a0
                  sub          s4, zero, sp
                  slli         ra, a7, 9
                  sltu         s8, t1, s5
                  xor          s7, tp, a2
                  sub          gp, a4, a6
                  addi         sp, s1, -349
                  xori         s2, t1, -35
                  xor          s2, a4, a1
                  sub          t1, t3, t3
                  addi         t0, a7, -684
                  andi         s10, s7, -1445
                  nop
                  sub          a2, s2, ra
                  slli         t3, a4, 27
                  sll          t2, t2, s4
                  slli         t2, s8, 18
                  and          t0, a5, s0
                  srl          t1, a0, gp
                  srai         ra, s1, 28
                  sub          a1, s6, s4
                  slt          s7, t0, zero
                  slt          a6, t4, s11
                  srli         s4, a4, 10
                  sltiu        s1, a0, -1796
                  add          s4, s6, gp
                  andi         s5, a6, -1959
                  slli         a0, a7, 10
                  nop
                  and          tp, s8, t3
                  and          a2, a4, a6
                  srli         t3, a7, 9
                  ori          s1, a4, 1242
                  andi         zero, t2, -726
                  sra          a5, a6, gp
                  auipc        s1, 2
                  add          t2, s1, s9
                  addi         s8, s1, -262
                  srl          gp, a6, a4
                  xori         a6, s4, 276
                  or           ra, a7, sp
                  slti         s7, t3, 1462
                  auipc        a6, 707925
                  lui          t3, 47116
                  nop
                  lui          a3, 153495
                  slti         a1, gp, -756
                  xor          s1, ra, t6
                  sll          a3, a3, gp
                  sll          a6, a1, zero
                  or           t5, s2, t1
                  addi         sp, t5, -1102
                  slt          ra, a1, s10
                  andi         a2, s4, -1306
                  sltu         s6, t2, s8
                  xori         s4, a1, -2038
                  ori          gp, s7, 189
                  sub          a6, s6, s9
                  addi         a5, t5, -456
                  andi         t1, s9, -1749
                  or           a0, s4, a1
                  slt          t2, a6, t6
                  sll          t1, t2, a7
                  xor          s6, s3, s8
                  and          t0, a1, s10
                  slti         t1, a2, 250
                  sltiu        s11, t4, -767
                  nop
                  or           t5, t6, gp
                  slti         sp, tp, -841
                  auipc        tp, 658980
                  auipc        s6, 782143
                  srl          s1, a5, t5
                  or           s7, tp, ra
                  srai         s9, s0, 8
                  slti         a0, a5, 515
                  sltu         sp, a2, t0
                  add          a3, t5, s4
                  addi         a5, s3, -1807
                  slt          ra, t5, s11
                  lui          gp, 1037018
                  ori          t5, gp, 1897
                  sra          t2, a3, tp
                  slli         s1, a0, 4
                  srl          s5, s10, s8
                  ori          s5, t3, 1096
                  lui          a2, 152713
                  srli         s11, t3, 1
                  srli         ra, t6, 10
                  srli         sp, s2, 3
                  sll          t4, s3, a4
                  and          a3, s11, a7
                  nop
                  addi         t5, a6, -1952
                  andi         s3, t6, 1653
                  xor          gp, s3, s6
                  addi         a5, s4, 267
                  slli         s1, t1, 8
                  andi         s10, t1, -1420
                  nop
                  xori         s5, a4, 1313
                  xor          s4, a2, t2
                  sltu         s4, t2, a2
                  sltu         s9, t2, t0
                  add          s9, s1, s7
                  nop
                  sll          a7, s2, s1
                  lui          a2, 659871
                  sub          s5, t0, s3
                  sra          a0, t3, s0
                  slti         tp, a2, -1274
                  srai         s5, s8, 8
                  slti         s9, s1, -1576
                  srai         s8, s5, 19
                  or           t1, a1, gp
                  add          s8, t2, s8
                  nop
                  slt          a7, s10, t6
                  srl          t0, a0, s5
                  slli         ra, t6, 6
                  xori         t5, t0, -497
                  sltu         ra, t2, s10
                  slti         s9, s1, 615
                  slt          s7, s10, s9
                  sll          sp, a3, t0
                  xor          s10, s6, a2
                  srli         a3, sp, 11
                  nop
                  sub          a0, t2, s7
                  add          a7, a3, s3
                  ori          t4, s11, 338
                  xor          a5, s9, gp
                  slt          t1, t0, t4
                  ori          a3, t0, -241
                  slli         a1, a7, 30
                  lui          a3, 1029474
                  nop
                  auipc        gp, 674121
                  xor          t2, s9, s3
                  slti         tp, t3, -1832
                  sra          a5, t6, a4
                  sll          s9, t4, s4
                  addi         a7, t5, -1396
                  auipc        s3, 423520
                  xori         s6, zero, -1570
                  slli         sp, s1, 15
                  slli         s10, s4, 31
                  slt          t5, t0, s9
                  slt          s10, s3, s6
                  or           s10, t1, s6
                  slti         zero, a1, 1817
                  nop
                  xor          tp, a4, a6
                  addi         t4, s2, -1452
                  srli         s11, t3, 0
                  andi         t3, a0, -1258
                  srl          s2, a6, s8
                  sra          s6, s9, t2
                  sltiu        t1, t0, -1979
                  slt          s11, t4, a5
                  ori          s10, t5, -1247
                  sltiu        t0, a2, 844
                  auipc        a3, 131343
                  or           a2, s6, s5
                  add          zero, t5, tp
                  or           gp, a0, a1
                  srl          t3, s6, a4
                  auipc        s3, 802241
                  andi         sp, s7, 121
                  andi         s10, a6, 1780
                  add          s10, zero, a1
                  xori         s10, t6, -1985
                  nop
                  auipc        s4, 580668
                  slti         t2, a2, -1729
                  srl          tp, s0, s3
                  addi         gp, t2, -807
                  xori         a2, s8, 1366
                  slli         s9, tp, 30
                  slti         a5, s10, -1101
                  slt          t3, s8, a5
                  xori         tp, t4, 50
                  sra          a0, sp, zero
                  nop
                  sra          s4, a5, s5
                  sll          s7, sp, a4
                  xori         s8, a7, -1354
                  slti         sp, a5, 229
                  sub          zero, a3, tp
                  sltu         s6, t4, a7
                  sub          s7, a6, a2
                  or           gp, s11, s3
                  srl          a7, s3, a5
                  slli         s3, tp, 28
                  srai         a5, zero, 11
                  slti         a6, a3, -171
                  ori          t3, gp, -329
                  slti         a2, s7, -1469
                  sub          tp, t1, a0
                  slt          s7, gp, s2
                  srai         s8, s10, 18
                  addi         t0, s3, -1942
                  add          s1, a6, a0
                  sltiu        sp, a0, 1072
                  sub          t4, zero, s7
                  sra          s9, a5, s7
                  xor          t3, s11, zero
                  auipc        s11, 40491
                  slli         t3, a4, 6
                  ori          tp, a1, -1725
                  slt          t4, ra, sp
                  xor          ra, t0, s4
                  xori         s2, t1, 521
                  slti         s5, t4, -1227
                  srai         s9, gp, 19
                  auipc        a5, 555116
                  sltu         s6, s2, t5
                  sltiu        t1, s4, -818
                  add          t1, ra, a3
                  srli         a6, zero, 28
                  srl          s7, a3, s2
                  srli         s8, s5, 10
                  xori         s8, s10, 1110
                  slt          ra, s8, s7
                  nop
                  ori          s2, t3, -1288
                  andi         a3, t4, -1570
                  srli         a0, s4, 31
                  addi         t2, tp, -566
                  sltiu        s6, sp, 1437
                  xori         s11, s11, 311
                  addi         a6, s6, -1614
                  sltiu        a0, s0, 1884
                  nop
                  and          s6, s5, a0
                  srai         t1, s7, 20
                  xori         a6, t4, 298
                  add          a2, s8, a1
                  srl          a1, s3, zero
                  sub          s7, s11, s3
                  lui          a0, 837720
                  sltiu        a6, t4, -1983
                  and          a6, a3, zero
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a2, 0xffffffff
                  li           a1, 0x0
                  li           s3, 0x80000000
                  li           t2, 0x0
                  li           a3, 0x0
                  li           a5, 0x0
                  li           a7, 0x80000000
                  li           t0, 0x0
                  li           a0, 0x0
                  add          a7, a5, t2
                  lui          t0, 1043543
                  sub          a1, a1, t0
                  add          a7, a1, a7
                  sub          a0, s3, s3
                  auipc        t0, 872264
                  nop
                  addi         a2, a7, -2017
                  lui          a5, 319498
                  nop
                  auipc        s9, 596981
                  addi         a3, a7, -1693
                  sub          a3, s9, a2
                  auipc        t0, 1000105
                  auipc        s9, 119754
                  nop
                  sub          s3, t2, a0
                  nop
                  addi         t0, s3, 967
                  sub          a7, a3, t0
                  add          a0, t0, a3
                  auipc        a5, 637526
                  lui          a5, 382855
                  addi         s3, a1, -1164
                  addi         s3, t0, 1848
                  lui          a1, 582020
                  addi         t0, s9, -1910 #end riscv_int_numeric_corner_stream_18
                  auipc        s11, 625784
                  lui          ra, 512790
                  or           s5, s9, s8
                  srl          s2, s2, gp
                  add          t2, s3, zero
                  nop
                  xor          a1, a4, tp
                  slli         s2, s3, 4
                  srli         s4, s9, 5
                  srli         s4, tp, 31
                  slti         s9, t0, 1549
                  slti         ra, s4, 1540
                  srai         a2, t3, 30
                  ori          tp, s7, -96
                  auipc        gp, 705212
                  sll          s8, t0, a6
                  and          t0, s11, t0
                  lui          t2, 362663
                  slt          a6, a1, a6
                  xor          a7, s2, s8
                  slti         ra, t5, -7
                  slti         t5, s1, 1063
                  sra          s1, a3, zero
                  slli         a1, a2, 6
                  and          tp, a7, s1
                  nop
                  sltiu        s2, a4, 17
                  nop
                  slli         sp, s9, 8
                  add          a6, gp, s7
                  add          a6, s5, zero
                  sub          a6, a5, a2
                  xor          s6, sp, a2
                  sub          t0, a3, t3
                  slli         t5, gp, 20
                  slt          t0, s9, s8
                  ori          tp, a0, -934
                  slt          ra, tp, t4
                  addi         a0, t5, 1612
                  slt          s1, gp, ra
                  slli         t4, tp, 4
                  sub          t0, a2, t6
                  xor          s4, s2, gp
                  add          s7, s7, a1
                  sra          s4, s1, a7
                  add          s4, zero, t0
                  sltu         gp, zero, gp
                  auipc        t0, 697766
                  nop
                  srli         s7, s6, 21
                  add          s6, s9, t2
                  nop
                  nop
                  sra          sp, a2, t1
                  slt          t1, t2, s4
                  or           t3, ra, t1
                  auipc        gp, 500757
                  sra          zero, a7, s10
                  and          a6, t4, sp
                  nop
                  sll          s6, s11, gp
                  srai         a3, t1, 25
                  and          a3, s11, t0
                  srai         a5, a1, 15
                  srl          gp, s5, t5
                  and          a6, a4, a3
                  ori          s4, zero, 1940
                  slli         t2, s4, 19
                  and          sp, t3, s8
                  sltu         gp, a2, t5
                  srl          a5, t5, a3
                  slti         t4, s6, -1475
                  auipc        s3, 750882
                  srai         sp, s10, 8
                  and          t4, s2, t5
                  auipc        ra, 1011304
                  slli         s10, a4, 25
                  srli         a7, a7, 30
                  sltiu        a6, gp, -187
                  lui          s8, 78671
                  slt          s5, t3, a3
                  srai         t0, a6, 15
                  or           ra, a6, tp
                  sltu         s6, s3, s11
                  srli         s3, t3, 5
                  andi         a6, s4, 35
                  srli         s6, t3, 24
                  slli         a3, t2, 2
                  sll          t2, s10, t4
                  nop
                  auipc        s8, 919375
                  auipc        s7, 932315
                  srl          zero, a1, a2
                  srai         a2, s1, 21
                  srli         s11, s6, 21
                  sub          s1, zero, s7
                  sub          t5, sp, a5
                  auipc        s5, 619599
                  slt          a0, a0, s6
                  xor          t1, t4, a1
                  slti         a5, a2, 293
                  lui          t2, 914780
                  add          s5, s9, a6
                  sra          t2, s11, s0
                  slti         a5, a0, 1602
                  lui          t4, 1044780
                  add          s10, s0, zero
                  sub          s9, s10, tp
                  xori         s4, s4, 768
                  sll          s1, t1, s10
                  slt          gp, t0, tp
                  addi         s2, gp, 1642
                  sltiu        a3, gp, -1227
                  xori         a6, s11, -1998
                  srl          a5, a2, t3
                  sll          s11, t0, t6
                  nop
                  slli         s6, t0, 10
                  and          zero, a2, t0
                  sra          zero, t1, s0
                  srl          t3, s1, t5
                  sub          a6, s6, t6
                  srl          a6, s10, s3
                  slti         a5, s5, 1151
                  slli         t2, t3, 21
                  sll          t4, t6, t2
                  slti         s11, s3, -1561
                  srl          s8, t0, t2
                  xori         a6, s5, -1142
                  xori         a3, t5, -1621
                  sltiu        a3, s2, -1000
                  sltiu        a7, s5, 1013
                  and          t1, s3, t2
                  lui          t4, 519978
                  slt          s1, ra, t0
                  srai         s6, a7, 21
                  sltiu        s5, s0, 717
                  slti         t1, s7, -1923
                  ori          a1, a2, -1536
                  and          t0, s7, s4
                  sra          t5, s5, a2
                  sltiu        s7, a2, -2009
                  srl          a6, s9, ra
                  srl          s7, s10, t3
                  or           a0, t5, gp
                  lui          t1, 872780
                  srli         tp, s3, 7
                  sltu         s3, a1, t5
                  srai         tp, s11, 29
                  xori         a2, s11, -720
                  and          tp, a7, a4
                  slti         s11, t0, 1784
                  slt          s2, gp, a2
                  slli         s1, s6, 22
                  lui          s10, 352903
                  add          t0, t3, s4
                  slti         a7, a3, -562
                  xori         s6, s10, 377
                  sub          s4, a4, gp
                  slt          zero, a0, t2
                  and          a7, s3, s5
                  sltiu        t0, s10, 190
                  xori         t5, s5, -177
                  lui          a0, 117774
                  srl          a5, s11, s2
                  or           a7, a0, a3
                  sll          gp, sp, s11
                  sltu         a7, zero, t0
                  and          s3, s9, s7
                  andi         t3, t6, -1207
                  sltiu        s10, s8, 707
                  sltiu        s3, a7, -620
                  xori         a5, s1, -223
                  srli         a3, a4, 6
                  xori         sp, t3, -140
                  auipc        s6, 586423
                  auipc        a7, 13371
                  sra          t1, s3, zero
                  sub          a3, s4, s7
                  srai         zero, s10, 18
                  slli         ra, t2, 13
                  andi         s6, s5, -1040
                  or           s2, a1, s10
                  ori          s7, a2, -212
                  slt          a5, a1, t3
                  slti         t4, tp, 648
                  srli         t4, s0, 23
                  slt          s4, a2, t4
                  srai         s8, s9, 13
                  or           t0, zero, sp
                  sra          t0, a4, ra
                  xor          a3, s6, gp
                  xori         t2, a0, 362
                  addi         a0, a1, 1945
                  nop
                  sltu         s3, gp, a2
                  sll          a2, t3, a4
                  xor          s8, s10, a2
                  xor          t3, gp, t5
                  slti         s5, s11, -1340
                  slti         s3, a7, -1070
                  sltiu        a3, s11, 1337
                  slti         a6, tp, -797
                  slt          s10, zero, s3
                  sltiu        s3, t6, -201
                  srl          s8, t3, a6
                  sltiu        zero, ra, -669
                  nop
                  sltu         s11, ra, a7
                  or           s1, s3, a6
                  or           t3, t2, t5
                  andi         s11, t4, 2000
                  ori          ra, zero, 1840
                  sll          t2, s7, t5
                  xori         a0, zero, -929
                  sll          s11, s1, t0
                  nop
                  sltu         s4, t6, t4
                  nop
                  srli         t0, a7, 0
                  srli         sp, s7, 4
                  srli         a1, s10, 28
                  add          s11, t1, a2
                  sltu         s7, a5, t6
                  srli         t3, s4, 9
                  sra          a3, a4, t4
                  sltu         a1, s5, a5
                  add          s3, s7, s10
                  sltiu        a3, a3, -2011
                  nop
                  sub          s8, s5, t3
                  xor          t4, s0, a5
                  sll          s2, a2, t1
                  or           sp, s1, s1
                  andi         s4, t5, 690
                  slli         s11, s9, 13
                  slti         ra, gp, 1644
                  and          a3, a0, t3
                  addi         sp, t6, -513
                  xor          a5, tp, sp
                  ori          a2, t5, 624
                  xor          s1, s10, s2
                  slli         sp, s0, 10
                  slli         gp, s5, 30
                  sub          a3, s0, s9
                  nop
                  or           s9, a7, t6
                  ori          a1, ra, -367
                  srl          s3, t5, s6
                  sub          s3, a1, zero
                  sltu         t0, s2, t0
                  xor          t4, s11, a3
                  sltiu        s9, zero, -658
                  sll          a7, a7, a0
                  sltiu        a3, s8, -1138
                  add          s10, t4, a6
                  slti         t4, a5, -1472
                  or           zero, t2, a4
                  andi         s9, sp, -154
                  lui          s1, 786323
                  or           a2, s10, gp
                  srai         s7, a0, 25
                  srai         sp, a2, 12
                  ori          t2, a4, -1615
                  slti         a0, a2, 362
                  sll          a0, s11, s9
                  xor          a5, s9, a0
                  nop
                  sltiu        sp, s0, -687
                  sltiu        a7, a5, 2021
                  srl          t0, ra, s9
                  auipc        s4, 362523
                  xori         s5, s5, -1443
                  add          t5, s4, t0
                  slt          s6, zero, a6
                  ori          s1, t2, -295
                  ori          t1, s2, -1812
                  srl          t2, s5, t4
                  sltu         a2, a2, a7
                  xori         s7, s0, -1663
                  xor          s8, s9, s4
                  and          t0, s4, a1
                  addi         a7, s9, 758
                  or           s9, a3, t3
                  lui          s5, 396427
                  or           s7, s7, t6
                  xor          a2, t4, s9
                  and          gp, sp, s1
                  sub          s6, t1, a4
                  addi         zero, zero, 1377
                  srai         t5, a4, 30
                  sub          t4, t3, s5
                  auipc        s3, 782150
                  lui          t1, 504845
                  nop
                  andi         s1, a3, -722
                  or           ra, s5, s6
                  slt          s1, a2, s4
                  or           a2, s7, s4
                  ori          s9, a1, 1534
                  xor          tp, t4, s2
                  slli         t2, a5, 3
                  add          gp, a2, a0
                  xori         gp, s10, -319
                  add          ra, ra, a0
                  sub          a1, zero, s3
                  slt          tp, a2, zero
                  lui          t5, 184796
                  xori         s2, sp, -1861
                  sra          s1, s9, s0
                  slti         t3, t2, 744
                  lui          s11, 115282
                  lui          a7, 214106
                  slli         s8, a4, 17
                  srai         t5, a5, 31
                  lui          s11, 639997
                  auipc        s5, 454218
                  sltiu        s3, zero, 12
                  slti         s10, zero, -1772
                  add          s3, a3, a1
                  andi         a3, tp, -678
                  slti         s1, s3, 1071
                  and          s1, a0, s2
                  xor          t1, s1, t5
                  srli         s1, zero, 2
                  andi         s2, t6, 1237
                  ori          t5, sp, 1296
                  ori          s3, t1, 1894
                  addi         a0, s8, -1523
                  slli         a7, ra, 23
                  addi         a7, s7, -1635
                  srli         s6, t2, 7
                  srli         s2, s5, 15
                  lui          s3, 499059
                  sltu         a0, zero, a4
                  sra          a0, s4, t2
                  sub          a5, a5, a5
                  andi         s6, s3, -12
                  srai         s10, s3, 10
                  lui          a1, 826568
                  add          t1, ra, t5
                  auipc        zero, 344224
                  srl          t4, s3, s10
                  lui          a6, 1031989
                  slt          ra, s3, t1
                  srli         s11, s10, 21
                  andi         s11, t3, 1119
                  and          s11, s1, gp
                  srli         a7, gp, 27
                  or           s5, s4, s0
                  slti         t1, a7, -977
                  add          s1, tp, gp
                  srli         s7, t0, 6
                  srai         sp, t6, 2
                  sub          t1, sp, s3
                  slli         a3, s8, 0
                  srl          a6, a4, t0
                  nop
                  nop
                  slt          t3, t4, a4
                  slt          s7, a6, t4
                  andi         s11, s0, -1640
                  add          s3, t3, s0
                  addi         t4, zero, -1023
                  srai         s3, tp, 27
                  sll          s11, t6, s10
                  andi         s9, t5, -291
                  ori          t1, t3, 1683
                  sltu         s7, s11, s8
                  slli         a2, a7, 28
                  auipc        t5, 117339
                  add          t2, s7, tp
                  addi         s6, a6, -450
                  lui          t0, 1016256
                  slt          a0, s5, s4
                  andi         a0, s6, -1360
                  sub          t1, s11, a7
                  srl          a5, gp, a3
                  sub          t4, s3, s11
                  xori         s4, s5, 1716
                  sra          a3, gp, s5
                  andi         s3, s7, 1795
                  sll          a3, a7, a6
                  slt          t0, sp, a5
                  and          s10, a6, t2
                  xori         s7, sp, -1090
                  slli         s11, tp, 15
                  sltiu        s6, a2, 1619
                  nop
                  sub          s3, t6, a2
                  ori          t5, s0, 2019
                  srl          s8, zero, a4
                  slti         a7, t0, -1722
                  nop
                  ori          a1, s11, -569
                  lui          a1, 769691
                  sll          t4, ra, a4
                  andi         s3, s0, -145
                  lui          ra, 65600
                  and          s8, s11, s6
                  xor          a1, a6, t0
                  slt          s2, gp, a0
                  add          s2, tp, t4
                  ori          t5, s7, -44
                  sltiu        a3, ra, -1141
                  slt          ra, sp, a3
                  sll          a5, a7, a5
                  add          s5, sp, s3
                  sub          t2, t0, s9
                  sltu         s4, a5, t1
                  andi         s8, t4, -458
                  sltiu        s11, a3, 1982
                  sub          s6, t3, s10
                  auipc        a3, 565756
                  add          ra, t5, zero
                  sll          a3, zero, s2
                  slti         s6, s10, -650
                  slti         a3, zero, -1428
                  sll          a6, a5, s7
                  sub          a0, t4, ra
                  add          tp, t0, a0
                  andi         a5, a1, -516
                  xor          s10, t2, t5
                  sltiu        s7, s7, 427
                  srai         s7, a3, 22
                  srli         s6, a5, 10
                  slti         s1, t1, -87
                  lui          s8, 907187
                  nop
                  andi         a2, a1, -1316
                  slt          a2, t3, t2
                  sll          t0, zero, sp
                  ori          t2, s1, -1989
                  srl          a2, s7, t0
                  slli         s10, sp, 5
                  slti         s1, t3, 1181
                  addi         s6, a5, -540
                  srl          s2, s10, a6
                  slt          sp, t4, t0
                  or           s3, s5, s8
                  ori          a1, t2, 563
                  lui          s2, 538785
                  slt          ra, a4, s1
                  sub          s6, s10, s6
                  auipc        s4, 936097
                  or           a5, t4, t3
                  srli         tp, t3, 17
                  sltiu        s9, t0, -1465
                  nop
                  andi         t3, s5, -374
                  or           s4, a1, a4
                  sltiu        gp, a6, -347
                  xori         t0, t3, 107
                  slti         s3, t0, 1462
                  xor          s2, t1, s11
                  sub          a7, ra, t0
                  addi         s4, a3, -172
                  slli         sp, s0, 1
                  andi         s2, tp, -736
                  slt          a2, s8, s9
                  srai         t4, a0, 9
                  srl          s3, s1, t6
                  ori          t1, zero, 1390
                  sub          a5, t1, gp
                  srl          s2, t4, gp
                  slt          a5, ra, a1
                  sll          s8, zero, t2
                  slli         t2, a2, 4
                  lui          s2, 158378
                  srl          t0, s7, sp
                  srai         s3, a0, 23
                  sra          s9, t5, a4
                  lui          gp, 32575
                  and          s6, s4, s9
                  sra          a7, a2, sp
                  addi         t0, t6, -333
                  srl          s2, s6, a4
                  xori         s1, s2, -1317
                  andi         a5, gp, -29
                  srai         t2, s3, 12
                  slli         a0, s5, 23
                  sub          s1, t1, ra
                  srli         a2, s5, 31
                  xori         t2, s7, 1177
                  xor          a0, t2, a6
                  srli         a3, t6, 31
                  sra          t2, t3, t2
                  addi         a3, s10, -1888
                  srai         gp, s7, 14
                  srai         s7, sp, 29
                  slti         ra, tp, -143
                  sltiu        a1, t1, 1562
                  xori         a6, a2, -1704
                  sub          s10, zero, a1
                  srl          a2, s2, s10
                  sltu         s9, s10, ra
                  srl          a2, a4, t6
                  sub          s7, sp, a5
                  srai         t5, a1, 28
                  xor          a6, t5, gp
                  andi         t3, a3, 1405
                  sra          t4, s5, tp
                  sra          a6, s4, ra
                  sltu         s11, a5, a1
                  slt          a0, t3, t1
                  srl          t2, s0, t5
                  sltu         t4, a4, tp
                  srl          s3, s9, a2
                  srli         s9, s4, 16
                  ori          a6, gp, -1795
                  addi         t0, t4, -1359
                  sltiu        t2, a7, 373
                  srai         t5, s4, 3
                  ori          t1, s3, -1290
                  sltu         ra, zero, s3
                  sltu         a3, a1, s2
                  srai         a7, s4, 11
                  add          s9, s11, zero
                  ori          s10, s6, -2017
                  and          a6, a6, s0
                  ori          a1, s7, 951
                  lui          s11, 90411
                  ori          tp, gp, 1293
                  nop
                  srai         s9, t1, 11
                  ori          a6, ra, -1631
                  slti         zero, a2, -370
                  xor          s1, t1, s5
                  nop
                  ori          a0, t4, 364
                  slli         s6, a6, 0
                  sra          s4, a2, t6
                  xori         a2, s0, -1140
                  sra          s2, t3, s2
                  srl          t3, a4, tp
                  sub          a7, t0, s3
                  or           a2, ra, a4
                  slt          t4, tp, s10
                  srai         s11, s7, 18
                  slti         s8, s7, -1024
                  sltu         a2, t2, a7
                  slli         s2, s10, 0
                  add          ra, t0, s1
                  xori         zero, a0, -947
                  and          s7, s10, t4
                  and          t4, a7, gp
                  lui          s1, 846908
                  sltiu        ra, s11, 400
                  srai         t0, zero, 26
                  sltiu        s11, s8, 1997
                  lui          t2, 508103
                  srai         s1, a4, 18
                  andi         tp, a1, 602
                  slli         ra, a7, 16
                  srl          a5, a2, a1
                  srai         sp, a1, 21
                  slt          s11, s7, ra
                  slli         ra, a3, 2
                  andi         t4, zero, -1740
                  sub          gp, ra, a1
                  sra          s2, a0, s5
                  nop
                  sub          s11, a2, s7
                  sll          a5, tp, s9
                  xori         s3, t3, -373
                  and          s8, a2, a2
                  slti         s3, sp, 1915
                  slt          a2, s8, t6
                  lui          a3, 59363
                  srl          s10, zero, s6
                  sub          s7, gp, t4
                  sub          gp, a4, s7
                  or           t1, t3, t4
                  addi         s9, t1, 1555
                  sltiu        a0, t0, 1961
                  slt          tp, s4, s11
                  sub          s3, s4, s10
                  sltiu        gp, s1, -2005
                  add          s3, ra, t5
                  sll          a3, s11, t3
                  sub          a3, s4, s3
                  ori          a6, s0, 1131
                  xori         s7, s6, 2040
                  xori         s8, a0, 1314
                  andi         sp, s8, 1199
                  nop
                  slli         gp, s7, 10
                  nop
                  andi         tp, s8, -1089
                  sltu         a7, a5, a3
                  addi         s10, sp, 1460
                  sltiu        a6, gp, 1398
                  slli         s7, a7, 16
                  xori         a7, s9, 1068
                  add          s3, a1, s11
                  lui          s2, 408680
                  srli         t3, s4, 12
                  sub          s10, t2, s4
                  andi         tp, s1, 1638
                  and          a7, s5, tp
                  nop
                  sll          t1, a3, t1
                  or           sp, a4, zero
                  or           t2, a0, t5
                  ori          gp, s3, 1370
                  addi         zero, s3, -780
                  or           tp, t2, s8
                  srl          s6, t1, s9
                  ori          gp, s3, -1888
                  xor          t2, sp, sp
                  nop
                  xor          ra, a7, s6
                  slli         a1, a5, 3
                  slt          zero, t5, t4
                  sub          sp, a0, sp
                  andi         t3, t6, -565
                  lui          t5, 117828
                  slti         s1, s4, -1308
                  sub          t4, tp, s8
                  srai         s11, a6, 2
                  or           a3, t3, s4
                  srli         s3, ra, 4
                  slti         zero, a3, -115
                  andi         ra, s11, 1732
                  auipc        s7, 700800
                  andi         s1, a1, -106
                  slti         a3, t4, 1886
                  srli         tp, s3, 21
                  auipc        t1, 988714
                  slt          s4, t2, s6
                  sub          a1, tp, a4
                  sltu         t0, a0, s2
                  ori          a7, s0, 1581
                  xori         sp, gp, 105
                  slli         t1, s3, 13
                  sra          a3, s8, a6
                  auipc        s5, 295050
                  srl          s6, gp, t3
                  slli         gp, s8, 17
                  srai         t1, s10, 29
                  srli         t4, tp, 28
                  srli         s11, s2, 8
                  srl          a6, gp, s5
                  slt          s8, ra, a7
                  sll          s4, t5, a4
                  sltiu        t5, s2, -1812
                  srli         t4, sp, 23
                  slt          s4, s7, a4
                  sra          s3, a1, t3
                  auipc        a1, 10094
                  slli         ra, t5, 20
                  xori         zero, t3, -1564
                  and          s8, t1, s4
                  xori         s5, zero, 172
                  addi         t3, t0, -334
                  ori          s10, tp, -880
                  andi         s11, t1, -1548
                  xori         ra, s9, 537
                  sub          s11, sp, ra
                  slti         s11, s6, 1012
                  xori         t0, s4, 404
                  sll          s11, a5, a4
                  add          s3, s3, a2
                  slti         s1, a2, 396
                  sltu         a7, s8, a6
                  slti         s7, tp, 1760
                  srli         a0, s10, 31
                  srai         s2, a1, 13
                  andi         zero, a6, 532
                  andi         tp, a2, 656
                  and          a3, t2, a2
                  ori          t4, a4, 1580
                  and          a5, a0, a5
                  srl          a2, s10, tp
                  and          t2, s3, s5
                  srli         a1, t3, 5
                  slli         s8, s9, 13
                  or           s1, a0, t4
                  slli         t4, s5, 22
                  xori         t4, zero, 1499
                  slti         t4, s4, -152
                  xori         tp, ra, 500
                  lui          t4, 400725
                  and          s8, s6, t1
                  slti         a0, s6, -866
                  and          s5, t2, t4
                  or           t4, t4, t4
                  xori         t2, s5, 1003
                  addi         a0, ra, -1351
                  andi         a1, a0, 69
                  or           t4, a1, s2
                  auipc        t1, 121506
                  auipc        gp, 578732
                  auipc        a2, 813762
                  srl          s5, t6, s4
                  addi         t5, s10, -634
                  lui          s5, 604915
                  slt          a6, s4, tp
                  slti         t1, tp, 1543
                  add          t2, s0, t3
                  sltu         s11, a4, s4
                  ori          t2, a0, -1452
                  sltu         a3, t4, a5
                  srl          s7, sp, t1
                  slli         t1, s3, 2
                  nop
                  sub          tp, t6, t5
                  sra          a1, s8, a2
                  sra          s3, s10, s5
                  sltiu        t4, s0, -1597
                  addi         s4, s4, -577
                  add          a0, s4, s6
                  addi         a2, a4, 164
                  slli         t5, sp, 21
                  addi         a0, a7, 1822
                  add          s5, t2, t1
                  auipc        a7, 126409
                  or           s4, t5, ra
                  xor          zero, s2, a0
                  lui          a5, 743557
                  sra          sp, s11, t1
                  xor          a1, s11, s5
                  sltu         s5, s2, s5
                  sll          t1, s5, ra
                  and          tp, s2, s0
                  addi         t4, a2, -1933
                  ori          s3, s6, -769
                  sra          gp, s8, ra
                  srli         t1, a4, 1
                  lui          t0, 175919
                  lui          s10, 253407
                  andi         s6, s11, 252
                  srl          a3, t2, a1
                  sltiu        s7, a2, -150
                  auipc        s7, 1010896
                  ori          a2, s6, -434
                  xori         s6, a2, -1283
                  lui          tp, 92843
                  add          s10, s7, a7
                  srli         a7, s11, 22
                  addi         s6, s8, 2014
                  ori          a7, t3, 539
                  sub          s4, tp, s9
                  sub          a6, t4, t0
                  lui          a2, 230484
                  auipc        sp, 584787
                  sltu         zero, s4, a6
                  lui          a7, 670900
                  srl          s7, s6, t1
                  slti         a3, s3, -1617
                  sra          zero, gp, s5
                  sll          a6, sp, s10
                  srl          s4, sp, a3
                  sub          s6, s10, s7
                  or           t4, a5, t5
                  sub          gp, a7, s9
                  lui          a6, 753675
                  sltiu        a0, sp, -641
                  andi         s3, a7, -678
                  nop
                  srai         a3, a2, 15
                  srl          t2, s3, t5
                  andi         t0, a0, -1375
                  and          s2, a0, a2
                  addi         zero, s3, -1674
                  sub          sp, s3, sp
                  lui          tp, 176935
                  srai         a5, s2, 28
                  sll          a0, a6, s11
                  sltu         a6, a0, a7
                  sltiu        a3, a6, 1741
                  or           t4, s5, t5
                  sra          t0, t1, a5
                  srli         s11, tp, 22
                  slti         zero, t1, -1886
                  auipc        a2, 894860
                  slli         s4, ra, 7
                  xori         s5, t5, 668
                  auipc        zero, 680140
                  auipc        s5, 502909
                  sltu         t4, s3, s0
                  xor          s11, ra, a7
                  slti         t4, s3, 1446
                  nop
                  slti         s9, t0, -1932
                  srli         t0, t3, 20
                  xor          s6, t0, a3
                  xor          a7, gp, s2
                  srai         s10, s5, 5
                  auipc        s5, 897751
                  sub          s9, t6, s3
                  srl          s9, s0, t4
                  auipc        zero, 761313
                  slli         a7, ra, 28
                  srai         a5, t0, 30
                  add          t4, a7, a2
                  add          s4, t1, tp
                  ori          a1, zero, 380
                  xor          s6, s0, s5
                  sltu         s10, s7, gp
                  srai         s3, s11, 26
                  slli         s4, s10, 16
                  add          a7, s0, s6
                  sra          s11, t6, s4
                  srl          t5, s3, a3
                  sub          t3, sp, sp
                  slt          s7, s10, s9
                  andi         t5, a4, 1133
                  addi         a2, s7, 653
                  slti         a5, s6, -393
                  lui          a0, 17032
                  sll          tp, ra, a1
                  srl          s8, t3, zero
                  or           s4, s9, s6
                  nop
                  srl          s3, a0, gp
                  lui          gp, 779709
                  andi         s7, a3, -136
                  and          t0, a7, a1
                  lui          a2, 560844
                  slli         s2, s9, 24
                  srl          s9, s10, t3
                  srai         sp, gp, 7
                  andi         a5, a2, 108
                  sub          s10, a3, s5
                  sltiu        sp, t0, 1435
                  sltiu        a3, s5, 1237
                  and          a6, s9, s7
                  sra          a7, a4, zero
                  srl          a5, t4, a6
                  andi         tp, a4, 1503
                  srai         s6, tp, 6
                  nop
                  slli         s10, t2, 17
                  add          ra, s2, a2
                  or           a7, a1, t2
                  andi         s4, tp, -511
                  auipc        s7, 904358
                  lui          s2, 913035
                  sub          a5, s9, a3
                  sll          t2, t6, s9
                  slli         ra, gp, 15
                  sub          s2, t5, s5
                  sub          s5, a1, s8
                  sll          a7, t3, s4
                  xor          tp, t4, t1
                  srli         s7, a6, 21
                  xor          s8, s7, a3
                  lui          a0, 997000
                  ori          a1, a1, -1203
                  sltiu        tp, a7, 152
                  ori          a3, a1, -1267
                  and          s8, gp, a6
                  slli         t5, t0, 7
                  add          t5, a7, a2
                  addi         s3, t6, -1708
                  srl          s8, a5, zero
                  srai         s6, a2, 23
                  and          s4, s10, t4
                  srai         t5, s0, 3
                  or           tp, a6, a4
                  xori         s2, a7, 1445
                  xor          a7, s2, t0
                  srai         t4, ra, 13
                  slli         s5, a1, 1
                  slt          a5, s1, a1
                  slt          s2, s9, t0
                  xori         a3, t2, -150
                  sltu         s6, t5, t5
                  andi         s10, sp, -1776
                  sub          s8, s8, t3
                  ori          a5, a7, -1361
                  sub          s8, s3, a0
                  sra          t2, s1, a2
                  nop
                  sra          a3, a7, gp
                  addi         s3, s5, -383
                  xor          t2, s10, t2
                  sra          s11, gp, gp
                  and          a5, s7, s3
                  srli         t0, a6, 23
                  sltiu        zero, zero, 1962
                  srai         a7, a3, 6
                  or           t5, tp, gp
                  nop
                  add          t1, sp, t0
                  sra          s8, t3, sp
                  nop
                  lui          a1, 719986
                  auipc        s11, 619144
                  and          s9, s5, s11
                  and          a1, a5, t1
                  srl          s11, s2, s10
                  add          s4, sp, t5
                  or           s3, a3, a2
                  or           s1, tp, s7
                  andi         s11, s8, -1563
                  addi         t0, tp, -1518
                  srai         zero, t1, 17
                  xor          a7, s8, a6
                  srl          a2, t3, s2
                  nop
                  sltiu        zero, s5, 1240
                  sub          t3, s0, a0
                  andi         s9, a7, 916
                  sra          a1, tp, sp
                  sub          a7, zero, s5
                  ori          tp, s8, 603
                  nop
                  xori         t4, sp, 1860
                  sub          a2, gp, gp
                  sll          a1, ra, t3
                  slti         s4, a5, 729
                  slti         s6, s2, -1961
                  slti         a2, tp, -1128
                  ori          t3, s2, 1953
                  lui          t1, 682955
                  slti         s7, a4, -628
                  srl          a7, a6, t1
                  auipc        a3, 420720
                  slli         zero, t2, 25
                  xor          s3, a6, t5
                  sltiu        s11, a2, 627
                  sltu         sp, s9, s1
                  auipc        t5, 525216
                  sltiu        a2, s7, 960
                  srl          ra, a5, a6
                  slti         t3, s11, -983
                  lui          a3, 707003
                  sltu         a3, t3, t6
                  sub          a7, t6, t4
                  slli         t5, s4, 14
                  or           s3, s11, s4
                  sub          a1, s0, s10
                  addi         s5, s10, 275
                  lui          zero, 902392
                  sra          a7, ra, s10
                  slli         s4, gp, 0
                  slti         a0, t3, -179
                  sltu         a1, t6, s5
                  or           s9, a7, s3
                  andi         s1, a4, 1736
                  xor          t1, t5, zero
                  add          s8, t0, s10
                  and          ra, s9, t0
                  xori         t4, t0, -16
                  slti         s5, a1, -176
                  xor          s6, s0, t5
                  xor          tp, t4, a5
                  ori          s4, tp, 1727
                  srli         s8, s1, 29
                  sltiu        s9, s6, -426
                  srli         sp, s6, 22
                  add          t4, zero, s6
                  sub          t3, t4, a3
                  sub          s4, s4, s2
                  add          s7, t1, t1
                  addi         s7, a0, -1897
                  srai         a7, s3, 13
                  xori         s8, t5, 592
                  auipc        s5, 222160
                  srli         t2, s6, 27
                  slli         sp, tp, 14
                  auipc        s10, 438211
                  add          s9, t4, zero
                  add          a3, sp, s11
                  slt          zero, zero, t6
                  xor          s10, a5, tp
                  xori         s8, s1, 1396
                  xori         s8, a2, 1275
                  sltu         gp, t4, t2
                  add          a3, s10, a1
                  sra          a3, s8, t6
                  add          a2, a5, a6
                  xori         s11, s10, -633
                  xori         a6, s8, -772
                  addi         s5, a1, -1846
                  auipc        s7, 509401
                  xori         a5, t6, 852
                  lui          a5, 859519
                  xor          tp, s11, a3
                  nop
                  srl          zero, s9, s5
                  addi         a0, zero, 898
                  srai         t5, a1, 0
                  slti         s4, s2, -591
                  xor          s4, gp, s0
                  nop
                  slti         t3, t4, 85
                  addi         s1, s5, 1170
                  srl          s3, gp, gp
                  auipc        a2, 214929
                  slti         a6, s1, 104
                  sltiu        t4, s0, 848
                  srai         a5, a6, 27
                  slli         sp, s1, 20
                  sltu         s1, a4, a7
                  xor          t2, tp, t0
                  slli         s10, s5, 29
                  lui          sp, 851162
                  xori         t5, ra, 265
                  srl          s3, t2, a5
                  slt          a2, gp, a1
                  sltiu        tp, zero, 1541
                  sltu         sp, s5, t1
                  or           t0, s4, s5
                  slt          s1, s2, ra
                  addi         t4, s7, 1164
                  sub          a7, s6, s10
                  and          s2, a1, a1
                  sll          sp, sp, ra
                  sll          a3, s3, a6
                  andi         zero, a7, 1456
                  andi         s1, t5, -1423
                  sltiu        gp, s9, -591
                  srli         ra, t5, 27
                  add          t3, t0, s8
                  slti         t1, s5, -948
                  and          a2, s1, s5
                  nop
                  sltiu        a5, t1, 1079
                  andi         s11, a7, -1870
                  add          t2, sp, t0
                  nop
                  sll          gp, zero, s0
                  sll          a2, a3, s10
                  srli         s7, a1, 5
                  slli         s10, tp, 28
                  sltu         a1, tp, t1
                  and          a7, s10, t5
                  srl          tp, t1, s7
                  sra          t4, a0, a3
                  slt          a2, t3, t4
                  ori          t1, s5, 1037
                  sra          t0, gp, s3
                  sltiu        t5, s9, 1969
                  slli         tp, ra, 12
                  srli         a3, t5, 19
                  sll          t0, t3, t6
                  or           tp, a3, a1
                  srl          s6, a1, s1
                  sll          s11, t1, a7
                  addi         gp, gp, 567
                  xor          s10, s3, ra
                  srli         s8, s0, 6
                  ori          t4, a1, -1243
                  xor          a6, s11, a7
                  add          t1, zero, a1
                  srai         t1, s8, 2
                  sra          a5, a5, a6
                  slli         s7, s5, 15
                  srai         a7, t5, 4
                  slli         zero, t0, 3
                  andi         tp, s3, -1942
                  or           zero, ra, a1
                  ori          s7, s1, 644
                  srl          s8, t0, s10
                  add          s4, s6, s1
                  lui          a3, 1013225
                  nop
                  xori         tp, s3, 1139
                  and          ra, t2, zero
                  xori         a5, a4, 773
                  sll          s11, t1, s7
                  nop
                  slti         s6, s2, 499
                  ori          a3, t2, 1761
                  lui          s9, 907953
                  slli         a5, s1, 28
                  srli         a6, t0, 25
                  slt          a0, s2, s10
                  xor          s4, t1, s9
                  auipc        a0, 1017901
                  add          s9, s5, zero
                  sltiu        t5, s4, -1936
                  and          a1, a1, a0
                  sub          a7, t4, t6
                  addi         s9, ra, -219
                  sub          s2, a0, a3
                  slti         t0, s11, -1768
                  slti         s8, a6, -599
                  srai         s2, a6, 24
                  ori          a3, s3, -1314
                  sra          t2, s8, s2
                  slli         s4, t4, 9
                  srai         gp, s7, 23
                  srli         t4, t5, 11
                  srai         a3, s0, 12
                  nop
                  auipc        s7, 279099
                  or           s1, s3, a4
                  sub          a2, s0, t1
                  or           zero, a0, s4
                  sll          t0, s8, s8
                  slt          a0, s4, s5
                  sltu         s10, s7, a0
                  ori          a0, s11, -1689
                  and          a7, s9, s8
                  add          t5, a7, s8
                  andi         sp, ra, -670
                  auipc        t0, 988184
                  xor          a1, s9, t1
                  slti         s8, s9, -1046
                  slli         sp, s0, 4
                  andi         a6, s4, 984
                  ori          s10, s4, 1970
                  sltiu        a5, s2, -926
                  or           t0, ra, a6
                  auipc        tp, 677524
                  xori         a7, a7, -691
                  lui          t4, 201131
                  ori          s3, zero, 333
                  srli         t0, a1, 18
                  nop
                  sra          a3, a3, t0
                  add          ra, a4, a1
                  xor          tp, a2, s2
                  lui          s2, 1003690
                  srai         a1, t0, 23
                  sra          s10, t6, a4
                  nop
                  srli         ra, t4, 6
                  sra          s10, a0, t1
                  sltu         s7, s2, s3
                  sltiu        a2, s4, -711
                  sll          s8, t6, s2
                  xori         t4, t4, 1569
                  sra          s4, t5, t1
                  sra          ra, s8, s4
                  sltu         t5, s11, zero
                  sltiu        s7, sp, 2019
                  sub          s2, s11, t2
                  sra          t2, s0, t0
                  sltiu        s3, s11, -541
                  slt          a2, a1, a5
                  auipc        s6, 727073
                  srai         s10, t0, 29
                  sll          a7, s3, s11
                  sra          a0, s9, a2
                  xori         gp, s2, 253
                  slt          gp, s10, s9
                  sll          t5, s2, a1
                  slt          s6, t4, a7
                  xor          t2, s4, tp
                  and          gp, s5, a5
                  xori         t5, t2, -685
                  nop
                  sltu         gp, t0, t3
                  add          a1, s8, gp
                  ori          a0, t5, 2036
                  and          t4, t4, s10
                  or           t1, s4, s4
                  lui          s4, 4707
                  sub          s8, s11, s8
                  slt          s8, t5, s11
                  sltu         s10, a1, a5
                  sll          s6, s0, s3
                  auipc        a0, 604594
                  srai         a6, s7, 5
                  sll          s8, tp, s6
                  andi         a3, t1, 433
                  addi         a6, s10, -478
                  sub          s2, tp, t2
                  srli         ra, s11, 13
                  xor          s5, t6, zero
                  andi         s5, t1, -10
                  add          s7, s11, a1
                  slt          t5, t0, s1
                  sra          t0, s11, s5
                  nop
                  and          s4, t1, t5
                  sll          s3, s5, tp
                  addi         t3, ra, 958
                  sltu         s3, t6, s6
                  sltiu        s7, a6, -215
                  auipc        a6, 99233
                  sra          a6, s2, zero
                  slli         a6, s9, 17
                  slt          s11, s1, tp
                  srai         s1, s6, 4
                  slt          t0, s3, s2
                  srli         a5, s1, 15
                  sltu         tp, gp, t4
                  sra          t0, a1, a5
                  xori         s2, s2, 94
                  xor          a6, t2, t1
                  slli         gp, s4, 19
                  sra          t0, sp, gp
                  nop
                  srai         s6, tp, 20
                  ori          s10, t0, 616
                  auipc        a0, 832024
                  ori          t2, s4, -1587
                  slt          t5, s0, t4
                  nop
                  xori         a2, gp, -1879
                  srai         t3, t3, 11
                  and          s4, t3, sp
                  lui          t4, 727378
                  slti         s10, s9, -1471
                  slli         t3, a3, 21
                  sltu         s7, s3, a4
                  sltu         a5, gp, a6
                  slti         zero, s8, -585
                  sltiu        a5, s7, 919
                  srai         t1, t2, 20
                  sltu         sp, gp, s3
                  add          s10, s11, zero
                  sltu         a5, s6, a0
                  slli         gp, s8, 21
                  srl          t3, s3, s8
                  addi         s9, zero, 121
                  nop
                  sltiu        s2, a3, 1660
                  slt          t4, s5, t4
                  auipc        s5, 294237
                  srli         t2, a2, 14
                  lui          a1, 213792
                  addi         t4, a4, -792
                  andi         t0, ra, 1970
                  srl          t4, a1, a4
                  sub          a1, tp, s5
                  nop
                  srl          t5, t0, s2
                  sltiu        a3, sp, -1180
                  or           a7, s5, s9
                  lui          a5, 656856
                  srai         t4, s2, 9
                  or           a6, a3, a0
                  slli         s8, zero, 30
                  slti         s10, sp, -1782
                  sltu         t0, s5, s9
                  srli         a1, s8, 20
                  auipc        zero, 73330
                  or           s3, a3, ra
                  auipc        s5, 730738
                  andi         sp, a5, -106
                  nop
                  auipc        tp, 806280
                  xori         a1, t1, -1695
                  srli         zero, a3, 4
                  and          a3, a3, t2
                  slli         a1, s10, 30
                  sub          s8, s4, s1
                  xor          a5, s1, a1
                  sll          a5, t0, s0
                  xori         gp, a7, 190
                  slli         zero, a1, 18
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           gp, 0x0
                  li           s2, 0x80000000
                  li           s11, 0x94707d11
                  li           ra, 0xffffffff
                  li           s9, 0xffffffff
                  li           tp, 0x1ea6be4f
                  li           t0, 0xffffffff
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  add          s4, t0, gp
                  nop
                  nop
                  sub          s4, tp, s4
                  addi         tp, t0, 982
                  add          gp, s4, a0
                  lui          tp, 26113
                  add          ra, t2, a0
                  addi         s11, t2, -761
                  lui          s2, 788771
                  sub          t2, a0, s2
                  addi         ra, tp, -341
                  sub          a0, gp, tp
                  lui          ra, 204751
                  add          s11, t0, s11
                  lui          s9, 412784
                  auipc        tp, 728302
                  sub          a0, s9, gp
                  addi         t0, a0, -863
                  lui          ra, 346744
                  addi         s11, t0, -828 #end riscv_int_numeric_corner_stream_14
                  srli         t5, a6, 30
                  lui          t5, 303712
                  sub          a2, a2, s2
                  xori         a3, a3, -1657
                  xor          t0, s6, a5
                  sll          a6, s3, a7
                  slt          ra, tp, s1
                  andi         s1, s0, 1701
                  xor          t1, a5, zero
                  lui          s1, 763949
                  srli         a7, a4, 1
                  auipc        t1, 592351
                  or           s8, s6, s5
                  sltu         a0, a3, s5
                  andi         s6, s0, -1999
                  and          a7, s5, t5
                  and          s6, a2, t6
                  addi         a5, s10, -554
                  or           t2, s0, zero
                  lui          s4, 114228
                  auipc        gp, 769107
                  sra          s1, s2, a4
                  sub          tp, s4, a3
                  sub          t2, s9, zero
                  nop
                  addi         s6, a7, -1457
                  srli         a1, ra, 27
                  slli         s11, ra, 3
                  or           s9, s2, s7
                  slt          t1, a0, a3
                  add          zero, t4, t5
                  slt          a6, gp, t3
                  slli         t3, t1, 23
                  sub          ra, a0, ra
                  slt          t3, s5, s4
                  xori         zero, a1, 1564
                  slt          s8, s6, a4
                  slli         a2, zero, 19
                  srl          s9, tp, a7
                  addi         s4, a6, 322
                  srli         s3, sp, 20
                  add          zero, tp, s5
                  srli         sp, s9, 21
                  slti         t1, t0, 1555
                  sub          a6, s1, s5
                  xori         s1, s1, -808
                  andi         t2, t1, 503
                  addi         s1, s0, 76
                  addi         s10, s9, -1762
                  sltu         gp, s7, s5
                  srl          s8, s5, s1
                  srl          s10, t4, s8
                  and          tp, s1, s4
                  srli         ra, a7, 1
                  and          t5, tp, sp
                  srai         a1, tp, 6
                  srl          s7, a7, t4
                  sll          s9, s1, s5
                  sltu         s8, a5, a5
                  xori         gp, s2, 1081
                  xori         s3, a1, -633
                  sltu         sp, s5, a6
                  srai         a0, s6, 3
                  ori          ra, s3, 1148
                  ori          s8, s4, 322
                  addi         t2, a6, 1038
                  xor          t4, gp, s3
                  slli         ra, s10, 8
                  andi         tp, s6, 364
                  xori         a5, s5, -1229
                  srl          zero, s9, s7
                  add          zero, t2, s10
                  srl          ra, t5, t6
                  slti         s10, a4, 1277
                  sltu         s8, a4, t1
                  and          s4, t3, a7
                  sub          a0, a7, t5
                  srli         s2, t2, 31
                  srli         t0, s1, 29
                  nop
                  xori         t0, t1, 883
                  xori         s3, a2, 1392
                  srai         s6, t6, 14
                  add          a3, t1, ra
                  or           s11, s10, a1
                  lui          a2, 711094
                  andi         s3, t4, -47
                  or           a1, a4, s8
                  lui          s3, 289666
                  addi         s2, zero, 994
                  lui          a3, 264745
                  and          zero, t4, s7
                  slt          s4, a6, gp
                  or           s2, t5, t0
                  auipc        s2, 796755
                  sra          tp, s2, a7
                  sra          s3, zero, gp
                  ori          s9, s1, 357
                  sub          a2, gp, s1
                  slt          a2, s5, t3
                  srli         ra, a3, 4
                  slli         a2, s8, 24
                  slt          s7, s6, a0
                  addi         t2, s10, -299
                  slt          t3, s4, t5
                  sltiu        t5, s8, 982
                  xor          tp, a1, a6
                  xor          s4, s2, t5
                  slli         s6, t5, 17
                  sltiu        s4, s9, 622
                  slti         s5, a5, -181
                  addi         zero, s6, -869
                  sll          a6, ra, a6
                  sll          tp, s0, a7
                  andi         s7, tp, -673
                  xor          t3, sp, t0
                  sltiu        a5, t2, -506
                  srl          s2, s9, t6
                  andi         zero, t0, -1416
                  sra          s8, s10, s1
                  add          s4, a4, t1
                  srl          a5, a4, s6
                  addi         ra, a0, -203
                  add          s8, sp, s4
                  sltiu        s11, s6, -1842
                  or           t4, t5, t4
                  sub          ra, s3, tp
                  and          s3, s4, ra
                  srai         gp, s3, 4
                  sra          t1, s8, s7
                  srli         tp, s2, 3
                  slli         a6, s0, 27
                  or           s2, s4, zero
                  slli         t3, sp, 19
                  lui          a0, 497606
                  slt          sp, s5, t0
                  sltiu        t3, sp, 655
                  nop
                  sra          gp, t3, s3
                  sltu         s11, a6, s11
                  andi         s1, s10, 1549
                  andi         s7, t1, 2022
                  srli         s2, s4, 26
                  srli         zero, t6, 7
                  sra          t4, t1, t0
                  nop
                  sra          a7, s8, s0
                  sub          s10, a3, a0
                  ori          t5, t3, -844
                  slli         s6, t6, 4
                  li           t4, 0xd4dce1c9 #start riscv_int_numeric_corner_stream_13
                  li           ra, 0x80000000
                  li           s6, 0x80000000
                  li           gp, 0xffffffff
                  li           s9, 0xffffffff
                  li           tp, 0x80000000
                  li           s3, 0xffffffff
                  li           t1, 0xffffffff
                  li           a6, 0xd17e7d21
                  li           s11, 0x0
                  lui          s6, 340874
                  nop
                  sub          ra, s11, t4
                  sub          tp, t4, a6
                  sub          tp, s3, ra
                  sub          t1, s11, gp
                  nop
                  nop
                  add          a6, s3, s9
                  add          tp, s11, a6
                  nop
                  nop
                  add          t4, s11, t1
                  sub          s6, s9, t1
                  auipc        t1, 892755
                  addi         s9, s11, 21
                  lui          s9, 1001954
                  add          t1, s3, ra
                  auipc        ra, 916592
                  auipc        a6, 766178
                  addi         gp, t1, -1681 #end riscv_int_numeric_corner_stream_13
                  and          s7, s10, gp
                  sltiu        zero, a0, -1135
                  auipc        s4, 975195
                  slli         s6, zero, 22
                  xori         s6, a5, 1040
                  add          t2, a4, s0
                  and          tp, t4, s1
                  sll          sp, s11, a6
                  add          s6, t3, t3
                  auipc        s1, 204478
                  xori         tp, s5, -817
                  nop
                  nop
                  ori          ra, s0, -611
                  and          a7, a4, sp
                  srai         a1, s1, 14
                  sll          t3, t3, s1
                  sltiu        t2, sp, 729
                  nop
                  lui          t3, 575706
                  slli         t3, s4, 27
                  addi         zero, s1, -1306
                  srl          s1, a0, t4
                  sltiu        sp, a7, -652
                  sub          s4, s4, s1
                  slli         a1, a6, 25
                  nop
                  lui          a7, 1023208
                  and          gp, tp, a7
                  addi         a7, s2, -628
                  slt          s3, s9, t3
                  srai         a0, s1, 12
                  or           t5, sp, s9
                  slti         t0, s0, 31
                  xori         a0, zero, 686
                  srli         t5, ra, 11
                  srli         t4, t4, 2
                  sltiu        s3, t6, 1847
                  sll          s1, zero, a0
                  addi         s10, a2, 405
                  sra          s4, a1, s6
                  lui          t2, 105164
                  lui          t3, 582882
                  sltiu        s5, ra, -783
                  slti         sp, t2, -1306
                  sltu         zero, t2, a5
                  slli         t4, s5, 12
                  srai         a7, s9, 26
                  sltiu        a7, s8, 793
                  andi         a2, s5, -140
                  or           s6, t3, a2
                  addi         a2, t1, -1777
                  sltiu        t2, t3, 79
                  sll          s10, t1, s2
                  nop
                  sll          a5, sp, tp
                  slli         t5, a0, 28
                  slli         s2, s2, 28
                  sra          zero, a6, tp
                  srai         ra, zero, 7
                  sra          tp, s3, s5
                  and          s7, s10, a2
                  or           s9, sp, s3
                  li           s6, 0x473107b2 #start riscv_int_numeric_corner_stream_15
                  li           s4, 0x80000000
                  li           t3, 0x80000000
                  li           t5, 0x80000000
                  li           s3, 0x27836ee0
                  li           s5, 0x0
                  li           s2, 0xffffffff
                  li           s7, 0x80000000
                  li           a7, 0x80000000
                  li           a2, 0xffffffff
                  add          t5, s3, s5
                  add          t3, t5, s3
                  sub          s3, s5, s4
                  nop
                  addi         s3, s2, 235
                  auipc        t3, 466323
                  lui          a7, 543265
                  add          s3, s3, s6
                  lui          a2, 549391
                  add          t3, a2, a7
                  auipc        a2, 143919
                  lui          s2, 132750
                  sub          s3, a7, s7
                  sub          s4, s5, t5
                  nop
                  sub          t3, t3, s3
                  sub          t5, s6, s5
                  nop
                  add          s3, s7, s7
                  sub          s2, s2, s4
                  add          s7, a7, s4
                  auipc        t5, 731963
                  nop
                  add          s2, s5, s2
                  auipc        s7, 689345 #end riscv_int_numeric_corner_stream_15
                  auipc        a3, 562807
                  xor          s11, a1, a0
                  auipc        t2, 53123
                  ori          t1, a5, 687
                  andi         s2, a5, 364
                  or           tp, a4, t5
                  xor          a3, s10, t2
                  ori          s7, s4, -1070
                  sltiu        s8, a0, -1471
                  sra          gp, s2, a2
                  slti         a5, a1, -1197
                  sra          t5, zero, s4
                  sra          s4, a6, a2
                  sub          t0, s4, s6
                  lui          t4, 677774
                  xori         a6, s3, -120
                  xor          s5, t2, sp
                  and          t0, s0, t3
                  add          a6, s7, a7
                  auipc        a7, 174314
                  addi         s2, a5, -138
                  srli         a0, s3, 9
                  xor          s11, s1, gp
                  auipc        t5, 562340
                  andi         s3, s2, -1019
                  srli         sp, t6, 16
                  auipc        ra, 1002614
                  lui          a7, 662217
                  srai         a6, s10, 24
                  slti         a1, s6, -1001
                  srai         tp, a3, 10
                  nop
                  or           s8, a6, a4
                  sll          s10, tp, tp
                  ori          s1, s10, 821
                  xori         s9, a7, 950
                  slt          t0, t5, s0
                  and          s9, s1, t3
                  auipc        s11, 155392
                  add          s5, gp, a5
                  sll          a7, s4, s9
                  slli         s8, s4, 3
                  slli         s1, t6, 17
                  ori          a1, s7, -939
                  and          t0, t6, s6
                  ori          t1, ra, 1349
                  srai         ra, a2, 28
                  srli         ra, s5, 16
                  addi         s4, a3, -759
                  srai         s3, t1, 2
                  auipc        a5, 749614
                  xor          zero, t3, s11
                  or           a5, a1, sp
                  ori          t2, s11, 425
                  xor          t2, t6, a2
                  slt          s1, a6, s2
                  xori         gp, s8, -1197
                  sll          s4, t2, s6
                  slt          s6, s11, a4
                  add          s2, zero, s4
                  slt          s9, t6, t1
                  and          s3, a6, ra
                  andi         t3, a0, 1886
                  addi         t3, s0, 0
                  xor          a6, t1, a3
                  andi         a5, a3, 527
                  srai         s7, s6, 4
                  sll          sp, t3, s7
                  ori          tp, a6, -1983
                  lui          s7, 182106
                  sra          ra, a6, ra
                  slti         t2, zero, 1707
                  sll          a0, t2, ra
                  xor          s2, t5, zero
                  srl          t5, s7, t6
                  andi         tp, s2, -930
                  srai         t2, gp, 30
                  slli         gp, t4, 28
                  or           t5, t5, t6
                  add          s11, gp, a3
                  lui          s11, 697488
                  nop
                  sltiu        t3, s3, 1820
                  sra          t4, a7, s2
                  sltiu        s5, s8, -390
                  add          zero, a0, s6
                  srai         s5, s2, 18
                  addi         sp, tp, 1988
                  sra          a5, s5, a2
                  nop
                  sltu         s1, s0, t3
                  nop
                  sra          a3, s10, sp
                  slti         t4, tp, 1018
                  auipc        t3, 1004632
                  sll          s8, t1, a0
                  srl          a7, t2, s4
                  slli         s7, s9, 18
                  add          s5, zero, t1
                  nop
                  srai         s6, s11, 7
                  nop
                  lui          gp, 687898
                  ori          s10, t0, 961
                  auipc        a3, 146348
                  addi         t0, s9, 1443
                  or           t1, s5, a6
                  andi         t1, s10, -891
                  andi         ra, s8, 318
                  slti         a5, a0, 1486
                  slt          s8, a0, s10
                  sltiu        a6, t3, -1619
                  addi         ra, a5, -729
                  sra          t3, s5, a7
                  srli         t0, s9, 20
                  and          zero, t0, s1
                  sub          ra, s0, t4
                  sltiu        a6, zero, 1767
                  sltiu        a1, s4, -114
                  andi         t4, s9, -1434
                  auipc        s3, 383126
                  slt          a2, s2, zero
                  srl          zero, a7, a6
                  slti         zero, gp, 205
                  sltiu        tp, ra, -378
                  slt          s10, a5, t3
                  srli         s3, s11, 27
                  sltu         t5, zero, gp
                  sll          a0, s1, t6
                  srli         s1, s9, 12
                  sltiu        a0, t5, 1314
                  slti         gp, t2, 700
                  auipc        ra, 614087
                  slti         a6, s5, 1437
                  slti         a2, a5, 711
                  auipc        t2, 360045
                  add          t0, a4, s8
                  slti         a6, t2, -261
                  xori         zero, a6, -86
                  auipc        a2, 784444
                  auipc        t1, 979067
                  add          ra, s5, a1
                  add          s3, sp, t2
                  xor          s3, gp, t3
                  lui          s6, 555064
                  slli         a1, t6, 16
                  xori         a2, s7, 1486
                  xor          s10, ra, a7
                  slti         s2, s0, -1849
                  and          s4, s0, s10
                  nop
                  xor          s9, sp, s5
                  sra          s8, gp, s7
                  or           s3, t3, s0
                  and          a6, s7, tp
                  sltiu        t0, tp, -952
                  sub          zero, t6, t5
                  and          t4, s4, s7
                  and          s10, a2, s6
                  slti         t0, a1, -768
                  srli         a1, t3, 16
                  srai         t0, zero, 0
                  srai         tp, t2, 10
                  slt          t3, s3, s3
                  xori         t1, t5, 1087
                  andi         ra, s3, -1919
                  ori          s4, t4, -804
                  sra          s3, a1, gp
                  ori          a2, s9, 1187
                  sltu         s1, s1, a0
                  andi         s11, s9, 1949
                  sra          s11, a1, s0
                  sltu         a2, zero, s7
                  srl          zero, zero, t3
                  andi         s11, s6, -707
                  slli         s10, s5, 22
                  ori          t0, a0, 326
                  auipc        s9, 558234
                  nop
                  srai         s1, s1, 9
                  addi         gp, gp, -490
                  sub          s6, t1, a7
                  srl          s8, a7, a2
                  slli         a6, t2, 1
                  or           tp, t1, s11
                  or           sp, a0, a4
                  ori          a1, t2, 1502
                  or           s5, s1, tp
                  nop
                  add          zero, sp, s8
                  slti         a7, a7, -1188
                  srl          s8, t2, t2
                  add          s6, s1, t0
                  auipc        s10, 130904
                  ori          s10, t2, 1401
                  auipc        s3, 603298
                  auipc        a0, 489137
                  slt          s7, sp, t1
                  auipc        t1, 479449
                  xori         s3, s5, 638
                  xor          a3, s2, s7
                  xor          a0, s5, t4
                  andi         a7, tp, -13
                  slti         s3, t6, -758
                  ori          a3, s8, 1512
                  or           s9, a1, a2
                  xor          s3, t6, a5
                  slli         a6, a3, 28
                  xor          s5, s4, zero
                  andi         t3, a3, 1611
                  add          a1, a5, t0
                  nop
                  slti         s4, a0, -1320
                  auipc        s6, 30728
                  slti         s5, s0, -1333
                  srai         t5, a0, 28
                  srl          s2, tp, t0
                  addi         t4, a4, -1111
                  sra          a5, s0, ra
                  srl          t0, a1, zero
                  xori         t2, sp, -1634
                  andi         s4, a5, -113
                  xor          gp, s9, t4
                  sltu         t1, s5, a7
                  sltu         s11, s2, zero
                  slti         t3, sp, -293
                  and          s2, sp, s1
                  andi         s11, a3, -129
                  slti         zero, a1, -357
                  slt          zero, s2, s9
                  lui          s8, 132504
                  sltiu        a0, a7, -295
                  or           a0, a5, t5
                  srli         ra, t2, 27
                  sltu         s4, ra, t2
                  ori          a5, a2, 32
                  nop
                  srli         ra, s11, 8
                  andi         s4, s7, 1678
                  add          a1, a7, t5
                  srai         t3, s6, 26
                  nop
                  ori          s10, a4, -1839
                  xori         sp, s7, 2025
                  or           gp, a6, s6
                  addi         t1, s4, 1331
                  nop
                  sub          a6, s4, s5
                  andi         a6, s9, 1080
                  srai         ra, t0, 30
                  slt          a5, a7, zero
                  sll          s11, a4, s3
                  add          s9, s7, s7
                  sll          s9, s11, gp
                  andi         a3, s0, -1946
                  or           s5, a4, t0
                  auipc        zero, 969974
                  sltu         s9, t3, s7
                  add          tp, s3, a3
                  sltiu        s2, t1, -1342
                  sub          s1, s0, gp
                  srl          s9, a5, s11
                  xor          t0, s5, ra
                  ori          s8, a3, -364
                  slti         a5, s4, 1377
                  ori          a5, t1, 1255
                  slli         a6, t5, 4
                  andi         ra, s10, -1934
                  srli         t4, s10, 9
                  sra          zero, s1, t0
                  addi         t0, t2, -933
                  sltu         s6, s9, s4
                  sra          s7, a2, s10
                  sub          ra, a6, sp
                  srai         t5, s10, 14
                  srai         s9, s4, 24
                  sra          t5, s8, sp
                  andi         t2, t2, 328
                  sltu         s4, t1, a2
                  auipc        a6, 226261
                  or           s6, zero, s4
                  slli         t1, zero, 12
                  sltu         s8, s3, s0
                  sra          t5, a7, s2
                  andi         zero, t1, -221
                  xor          t0, gp, tp
                  sltu         s3, s11, s3
                  srl          gp, zero, a7
                  sltu         s5, sp, tp
                  add          a3, s6, t0
                  srl          a2, s8, a3
                  ori          a7, a0, 1208
                  sra          a7, t4, a2
                  srli         a7, a6, 12
                  xori         a6, s1, 1938
                  or           t4, t3, s1
                  xori         a7, a6, -714
                  or           t0, t2, a6
                  andi         s8, sp, 515
                  xor          s10, gp, a4
                  sltiu        ra, ra, 1291
                  slti         a6, t6, 1381
                  srai         zero, s8, 31
                  srli         s5, tp, 11
                  slli         t4, a6, 6
                  or           a1, s2, sp
                  slli         s6, s0, 3
                  ori          t4, s6, 229
                  sra          s8, s1, s2
                  and          a6, s4, t0
                  srli         s6, s10, 30
                  srl          a0, ra, ra
                  srai         zero, a5, 23
                  xori         ra, a5, 1325
                  slt          s8, t3, tp
                  addi         a6, a7, -784
                  xori         t2, ra, -853
                  and          a3, a2, s1
                  lui          a5, 330903
                  slli         s7, t6, 26
                  add          sp, s0, s3
                  slt          gp, a6, a4
                  slti         s9, s2, -1976
                  srai         s10, a0, 12
                  xori         t2, s11, 1580
                  xor          s11, sp, t1
                  srai         a0, t4, 1
                  lui          t5, 250024
                  sub          ra, s0, a6
                  or           s8, sp, a5
                  sltu         s7, s5, a2
                  sra          s3, a7, a0
                  lui          s3, 577161
                  add          s11, s1, s7
                  sra          s7, a6, a7
                  addi         s6, a5, 1252
                  slli         s6, s1, 17
                  sltu         s8, a4, gp
                  sub          t4, s5, t6
                  srli         a7, s5, 0
                  srl          t1, s11, s5
                  sltu         s4, a6, s8
                  srai         a3, s9, 19
                  sll          a5, t0, a3
                  xor          tp, t6, t5
                  and          sp, a1, gp
                  or           s2, a1, t5
                  ori          a1, t2, -308
                  or           t3, t6, a6
                  ori          t5, t3, -1889
                  sll          s5, sp, a0
                  add          s7, s1, t1
                  xor          a0, sp, t3
                  sll          s8, s0, gp
                  sra          ra, t0, s3
                  srai         s6, s1, 17
                  slli         a6, s7, 24
                  or           s11, t0, s8
                  xori         s8, s8, -780
                  slt          t3, s0, s6
                  nop
                  srl          s6, t4, s2
                  slt          gp, t0, s8
                  sll          t1, s2, s10
                  slli         a0, s4, 13
                  sra          s5, s10, t6
                  auipc        s1, 384534
                  ori          s2, sp, 596
                  andi         a6, s7, -247
                  andi         s9, s4, -857
                  srli         gp, tp, 25
                  sll          t2, s8, sp
                  xor          s10, s4, gp
                  andi         s11, s1, -1392
                  sltiu        sp, t1, 1691
                  xori         a1, s11, -285
                  sub          s6, a0, t3
                  add          a5, gp, s7
                  slli         s8, gp, 26
                  slli         s3, s2, 8
                  xori         t4, sp, -1339
                  or           s10, zero, s2
                  andi         t2, a2, -112
                  or           tp, a5, s3
                  slti         sp, t4, 622
                  and          t3, s11, s9
                  srai         a6, t5, 26
                  sub          t5, t3, t6
                  sll          s3, a4, s2
                  ori          gp, t2, 1882
                  and          s7, a3, sp
                  addi         s7, s8, 378
                  srli         s8, t1, 13
                  xori         s3, s8, -875
                  sra          s2, a2, t4
                  nop
                  sll          s3, t2, s7
                  srli         gp, t4, 9
                  sll          s9, s1, gp
                  addi         zero, a1, -1143
                  xor          t1, tp, a4
                  srai         t5, tp, 23
                  add          t2, a4, a3
                  andi         s2, s8, -1757
                  addi         t0, a5, -888
                  ori          t0, s2, -1765
                  sltiu        zero, t6, 187
                  ori          ra, sp, -629
                  or           s8, a4, t5
                  sltu         a6, s10, tp
                  sltiu        s7, sp, 1320
                  xor          s10, s2, a2
                  ori          tp, a6, -1671
                  slli         s3, sp, 10
                  ori          t4, s1, 982
                  sll          t4, t3, gp
                  slt          a5, s1, t1
                  addi         s9, a6, 1509
                  nop
                  sll          s8, gp, t4
                  addi         t2, s6, 1109
                  srai         s9, zero, 3
                  sra          t3, sp, s11
                  add          s7, sp, s6
                  srai         t2, ra, 23
                  sltu         s6, sp, s4
                  addi         t3, t2, -1525
                  sltiu        s6, zero, 1751
                  add          a6, ra, s4
                  andi         a2, t5, -1331
                  ori          s6, t2, 1527
                  sltiu        t3, s7, 1151
                  or           gp, s4, a4
                  sra          a3, s2, s11
                  nop
                  xori         s11, s7, -277
                  srai         ra, s2, 19
                  xor          sp, ra, a3
                  sub          ra, t4, a6
                  sltu         a0, s8, a1
                  sltu         a0, s1, s5
                  slt          t0, t6, s1
                  ori          gp, a6, 1384
                  sub          ra, s6, a5
                  andi         a2, s0, 1879
                  xor          s4, a5, gp
                  addi         a2, s4, 1655
                  andi         s11, t2, -422
                  sltiu        t5, t4, -1517
                  and          tp, s10, a6
                  lui          t1, 368703
                  ori          a2, s10, -547
                  xori         a5, a6, -1452
                  slt          s10, t5, s0
                  sub          a6, s9, sp
                  xor          s10, s3, zero
                  addi         a1, tp, -1307
                  srai         t3, t0, 15
                  and          t5, s9, a6
                  xori         tp, a5, -962
                  and          s11, t6, s6
                  sll          s10, t6, ra
                  xori         t3, t2, -1544
                  srl          s1, s0, a5
                  andi         a0, s2, -1462
                  andi         a7, a2, 1550
                  srl          a2, gp, s3
                  or           s11, a2, s0
                  slli         s4, a2, 19
                  xori         a5, a4, -1945
                  and          s3, s7, t3
                  ori          a6, t1, 1576
                  sltu         t5, s7, gp
                  or           a0, t3, a2
                  ori          s7, s5, 1565
                  ori          s1, t5, 1700
                  xori         s10, t5, -474
                  auipc        s11, 26673
                  srai         s7, a7, 29
                  srl          tp, ra, a5
                  srl          t1, t1, t5
                  sub          t1, s7, a4
                  sltu         a0, t5, s10
                  sub          s5, s7, t2
                  addi         s9, t4, -224
                  sltu         a7, s4, t1
                  slt          a6, s3, sp
                  add          s8, s8, a1
                  slli         ra, a7, 25
                  sltiu        gp, zero, 1214
                  slli         s4, a5, 7
                  srl          gp, s0, s11
                  srl          a7, a7, t1
                  andi         s4, s5, 1752
                  sll          s3, ra, t0
                  auipc        t5, 259364
                  ori          gp, a2, -368
                  and          s7, ra, t0
                  add          s4, a3, s5
                  sub          s4, zero, t0
                  or           s2, s0, s6
                  sub          t4, a0, a2
                  or           a0, a0, a0
                  sub          a0, t2, s11
                  andi         t5, a0, 1714
                  sra          s10, s8, a6
                  sltiu        t5, s6, 1274
                  srl          s6, sp, zero
                  slti         s9, a1, 171
                  srai         t0, s9, 21
                  sltu         t2, t3, s6
                  sll          sp, a3, t6
                  andi         t0, s9, 597
                  and          s8, s9, s10
                  xori         t1, a0, -1066
                  ori          gp, s6, -742
                  nop
                  auipc        s11, 841435
                  slli         s5, s9, 28
                  or           tp, s8, t6
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           sp, 0x15acb571
                  li           s10, 0xffffffff
                  li           s6, 0xffffffff
                  li           s9, 0x9f64b1c6
                  li           s7, 0x80000000
                  li           s1, 0xffffffff
                  li           ra, 0x80000000
                  li           s8, 0x0
                  li           t0, 0xffffffff
                  addi         t0, s6, 195
                  sub          ra, sp, s6
                  addi         s7, s7, -1844
                  add          sp, s1, a5
                  auipc        s1, 154712
                  auipc        sp, 196517
                  addi         t0, s10, -257
                  lui          s1, 171043
                  addi         a5, s9, 658
                  sub          a5, s10, a5
                  sub          s7, s10, s10
                  sub          t0, sp, s8
                  sub          s10, s6, ra
                  addi         sp, sp, -435
                  nop
                  lui          s7, 828376
                  addi         sp, ra, -1427
                  sub          s6, s6, s9
                  addi         s1, t0, 167
                  auipc        s9, 145535
                  add          s9, t0, s8
                  lui          a5, 888261
                  lui          a5, 479198
                  addi         s7, s8, 190
                  addi         a5, a5, -973
                  nop #end riscv_int_numeric_corner_stream_2
                  xori         a3, a3, 1305
                  andi         a6, s0, 665
                  add          t2, sp, a4
                  xori         t1, t3, -546
                  slti         s8, s5, 941
                  xor          a5, s0, a2
                  xori         s9, s0, -328
                  xor          t1, s10, zero
                  or           s2, a6, a0
                  sltiu        s8, s10, -1752
                  auipc        sp, 1027228
                  srl          t3, t2, t4
                  sltu         t2, t1, ra
                  andi         gp, a3, -1325
                  xori         s2, a1, -1799
                  slt          s7, t6, s4
                  xori         a0, s5, -1021
                  and          a0, ra, zero
                  srai         s2, sp, 23
                  srli         s6, t4, 3
                  sub          s9, s4, a5
                  xor          tp, s11, a6
                  sll          a0, s5, gp
                  srai         s7, s9, 1
                  sltu         t5, tp, a4
                  addi         s7, s6, 45
                  auipc        s2, 793589
                  lui          zero, 432506
                  ori          s1, s6, 194
                  xori         s1, s11, -1815
                  ori          s11, a7, 488
                  or           t3, s4, s5
                  andi         s2, s8, 1628
                  sltiu        a3, tp, -495
                  and          t0, s6, t0
                  slt          s8, s6, sp
                  andi         t0, t2, 1439
                  sll          tp, zero, s11
                  srai         sp, s4, 21
                  slt          ra, t6, s6
                  ori          a1, tp, -1600
                  nop
                  sub          t5, s4, t3
                  add          tp, s11, s10
                  sra          s7, s7, t1
                  or           sp, t5, sp
                  slt          a2, a6, a0
                  sll          t4, s5, s8
                  addi         s10, a5, 598
                  and          a1, gp, a7
                  srai         s6, a7, 9
                  sltiu        s1, a2, -281
                  srli         tp, a2, 4
                  xor          a1, s9, s4
                  sltu         s4, s9, t6
                  auipc        s9, 1014911
                  sll          s9, s6, s2
                  srl          s6, a7, tp
                  sltu         t5, a4, tp
                  sltiu        a6, s1, -719
                  slti         s9, s3, -134
                  srai         s11, a4, 2
                  srai         s2, s6, 3
                  sub          s1, s4, a1
                  slli         s8, s11, 21
                  xori         a5, a3, -255
                  or           s5, t3, s9
                  slti         s10, s7, 1062
                  sub          a0, tp, gp
                  ori          a6, s2, -80
                  add          t0, a2, s10
                  slti         s4, a0, -1271
                  addi         a0, t0, 24
                  nop
                  add          a6, gp, gp
                  lui          a1, 246105
                  add          s4, sp, a2
                  srli         ra, s9, 9
                  addi         a0, t4, 122
                  slli         s4, sp, 12
                  sra          a1, a4, a4
                  xori         s1, s6, -1069
                  sll          t5, s7, t1
                  nop
                  xori         t5, s6, -1419
                  srai         s10, t6, 14
                  lui          a6, 713063
                  nop
                  srli         a2, a0, 27
                  or           t3, gp, t4
                  slli         gp, s2, 21
                  add          s11, s8, a5
                  xori         a0, t5, 1822
                  auipc        s4, 498132
                  slli         s11, t4, 11
                  xor          a1, gp, s10
                  srli         t1, t3, 29
                  sltu         zero, t1, a7
                  srl          t5, t2, s5
                  slt          s9, s10, a3
                  or           s6, t1, t3
                  and          s9, t4, a2
                  srli         s6, gp, 16
                  xori         t4, a0, 1713
                  or           a7, s9, s1
                  auipc        a3, 47675
                  auipc        a0, 138158
                  or           tp, s2, zero
                  sltu         a5, s2, a7
                  sub          t5, t3, t1
                  sra          sp, s1, s5
                  and          s1, s9, a4
                  addi         t3, s6, 295
                  slt          t3, t3, a5
                  xor          ra, zero, t1
                  or           s6, s9, a2
                  sltu         a7, a6, s10
                  slti         a1, a2, 1106
                  auipc        s2, 963839
                  and          s4, gp, t4
                  slli         s2, t0, 12
                  srl          t5, s10, s5
                  add          sp, s1, s4
                  xor          ra, a7, sp
                  sll          s6, s3, a5
                  lui          t2, 371509
                  and          a2, s3, ra
                  or           t2, s4, t0
                  srli         a2, s8, 26
                  sub          a7, ra, a4
                  srli         t0, s2, 19
                  nop
                  sra          s10, a7, s9
                  and          t1, t5, t5
                  sltiu        a7, s10, 1475
                  or           zero, s10, a1
                  andi         s5, s4, -1356
                  andi         t5, t5, -1920
                  srai         t2, zero, 30
                  lui          s1, 47829
                  sub          t2, a0, gp
                  sub          t2, s9, s4
                  add          a3, s8, a6
                  add          gp, a7, t1
                  ori          s4, t4, 184
                  ori          t3, a3, -177
                  and          s9, a3, s3
                  nop
                  andi         a3, a2, -1205
                  slt          s9, a2, t2
                  addi         t1, s11, -1197
                  lui          s5, 160756
                  auipc        s7, 750737
                  sltu         s6, s7, t0
                  lui          gp, 692862
                  xor          t1, a6, s3
                  srli         s8, s3, 14
                  slt          a6, s7, a1
                  and          a2, s6, t3
                  andi         a2, t2, -110
                  and          a2, s3, t3
                  srli         a3, a0, 13
                  sltiu        s2, s10, 823
                  slt          tp, s10, ra
                  or           tp, a5, s4
                  xori         t4, a1, 919
                  slt          tp, tp, a6
                  and          t2, t5, s7
                  auipc        s4, 131920
                  srl          a3, s10, s2
                  slt          s9, a4, s7
                  lui          t2, 995732
                  andi         s6, s9, 1773
                  andi         sp, t5, -1112
                  sra          s10, a6, sp
                  xori         s10, ra, -487
                  srai         s2, s7, 22
                  xori         tp, tp, 1222
                  andi         s7, t5, 1327
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t4, 0xffffffff
                  li           t5, 0x4922a811
                  li           t3, 0x0
                  li           a6, 0xa01c79b9
                  li           s4, 0x80000000
                  li           a5, 0xffffffff
                  li           s11, 0x80000000
                  li           tp, 0x80000000
                  li           gp, 0xf777d502
                  lui          tp, 511164
                  sub          t5, a5, tp
                  nop
                  nop
                  sub          t3, a6, s4
                  add          t4, a5, t4
                  lui          t3, 1021931
                  addi         tp, tp, 1682
                  add          t3, t3, tp
                  sub          t5, t5, a6
                  lui          t4, 572056
                  add          a5, t3, s4
                  auipc        t4, 877264
                  nop
                  lui          s11, 1012939
                  add          tp, gp, s1
                  lui          a6, 638569
                  lui          a5, 134963
                  add          gp, a5, a5
                  addi         t5, a6, -194
                  addi         s11, a5, -178
                  nop #end riscv_int_numeric_corner_stream_10
                  slti         t1, s8, -464
                  addi         a3, tp, 796
                  lui          t4, 932849
                  srl          s11, s5, a3
                  add          s10, s11, s4
                  sltiu        t0, a3, -1065
                  auipc        a6, 169781
                  addi         t5, ra, -1167
                  sra          t1, a6, s6
                  slli         ra, t5, 11
                  lui          t4, 175355
                  sltu         t5, t0, ra
                  and          t5, s9, a6
                  slti         a0, t4, -1706
                  lui          s9, 196226
                  sll          a6, s6, gp
                  add          a0, sp, s4
                  ori          tp, s1, 806
                  srl          t4, zero, t5
                  nop
                  srli         t4, a1, 17
                  sra          s7, t3, a0
                  auipc        s8, 1041255
                  addi         sp, a7, 1429
                  addi         s8, a7, 490
                  srli         a0, a4, 4
                  or           t1, t5, s8
                  ori          s1, gp, -33
                  xor          ra, a0, t2
                  add          a6, ra, a7
                  xori         sp, s5, -354
                  slt          s4, a4, zero
                  add          s11, s10, t6
                  or           s7, a2, s3
                  auipc        t4, 573073
                  or           tp, s8, s11
                  sltu         s7, ra, a5
                  sra          t1, t0, a5
                  ori          s5, s7, 1167
                  lui          t2, 671650
                  srli         sp, sp, 23
                  srli         a1, a6, 3
                  sll          a5, t6, gp
                  sll          a3, t2, s7
                  andi         s6, tp, -601
                  slt          t5, a2, s6
                  addi         t1, s4, 518
                  ori          s7, s6, -969
                  li           t0, 0xa75b0d3b #start riscv_int_numeric_corner_stream_19
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           s2, 0x0
                  li           a6, 0x4fef2af5
                  li           t1, 0x80000000
                  li           s3, 0x6a2c584a
                  li           s10, 0xffffffff
                  li           s9, 0x80000000
                  li           t4, 0xf1c15361
                  auipc        s9, 389479
                  addi         s3, s10, 18
                  auipc        a5, 337805
                  addi         s7, s10, 2029
                  addi         s2, t4, 792
                  addi         t1, s3, -1259
                  auipc        a5, 238049
                  lui          s10, 21795
                  addi         a6, s2, -1224
                  nop
                  auipc        s7, 143601
                  lui          t4, 931881
                  sub          t1, t4, a5
                  addi         t0, s2, 571
                  sub          a6, a6, a6
                  add          t1, s3, t4
                  sub          t4, t0, t0
                  add          t0, t4, s3
                  addi         t4, a5, 105
                  auipc        s3, 120320
                  add          a5, a6, t1
                  lui          a5, 952960
                  sub          t4, s10, t0
                  nop
                  sub          t0, t4, s2
                  addi         t1, s7, -1909
                  add          a5, t1, s2
                  add          a5, t4, t1
                  sub          s2, s10, a5 #end riscv_int_numeric_corner_stream_19
                  or           s5, zero, t1
                  slti         s4, s1, 1139
                  sll          s6, a2, s2
                  xori         a1, t2, 439
                  addi         t5, a2, -275
                  auipc        sp, 225739
                  slti         s6, t5, 1114
                  ori          tp, s0, 561
                  sltu         a7, sp, s5
                  slti         s3, s10, 922
                  sll          s9, s11, t3
                  sltiu        ra, sp, -1625
                  srli         s7, gp, 16
                  srli         s4, gp, 2
                  sll          t4, s1, s10
                  and          sp, sp, a3
                  xor          s6, gp, s3
                  sra          s9, a7, t2
                  sltu         s11, zero, t2
                  nop
                  addi         sp, sp, -1249
                  sll          s5, a2, a6
                  xor          a7, t0, s5
                  nop
                  sltiu        s6, s11, -1766
                  xori         sp, s6, 458
                  nop
                  sltu         s8, s6, a6
                  sltiu        s11, s2, -1095
                  srai         s2, s7, 1
                  lui          a2, 44545
                  sll          t4, tp, t6
                  ori          a5, t1, -143
                  slli         s6, gp, 23
                  slti         t1, tp, -653
                  nop
                  slt          t5, gp, s4
                  slt          t4, gp, t6
                  sltiu        a2, a6, 470
                  add          s5, t5, a4
                  sra          a3, s3, a7
                  nop
                  srai         s1, a5, 23
                  sra          a2, t1, a2
                  addi         t4, t1, 1326
                  auipc        a5, 77165
                  slt          s9, tp, t4
                  addi         t2, s9, 1012
                  or           sp, a4, s4
                  sll          t3, s6, a7
                  slti         t3, ra, 1418
                  sub          t0, zero, zero
                  slli         t5, s5, 19
                  xor          s6, a1, s11
                  sll          t2, sp, s7
                  srl          s4, t5, s1
                  or           s9, a2, gp
                  sltu         t5, s5, a4
                  xor          sp, s2, a4
                  and          t0, zero, s9
                  xori         t5, t3, 1366
                  xori         s6, s11, 1406
                  and          a1, t5, t4
                  nop
                  lui          zero, 201129
                  sll          t1, s4, s8
                  slli         zero, s7, 1
                  nop
                  slli         t4, s0, 31
                  auipc        tp, 460910
                  sra          t2, s7, t5
                  sltu         s2, tp, t4
                  sub          zero, s6, t3
                  lui          a5, 486781
                  sub          s8, a4, s4
                  sll          a0, t4, ra
                  sra          t0, s10, a2
                  add          s3, ra, a7
                  and          s7, zero, tp
                  xor          a7, t6, s1
                  or           t1, sp, a6
                  slti         a6, a1, -328
                  xor          tp, gp, a4
                  slt          s3, s11, zero
                  slli         s3, a1, 13
                  slt          sp, s6, s10
                  xori         t5, a4, -126
                  or           s3, s6, t1
                  sub          s1, a7, s1
                  lui          sp, 883936
                  ori          s7, a3, -820
                  slti         s8, sp, -1987
                  srli         s5, s7, 3
                  sltu         t5, s10, gp
                  srl          zero, t4, tp
                  and          s4, s8, t4
                  addi         t5, t4, 1161
                  andi         s8, a2, -552
                  or           s11, zero, a6
                  slt          s3, zero, t5
                  xor          a6, t0, s0
                  xor          t4, t3, s11
                  xori         t1, ra, -1116
                  slti         s6, s0, 1981
                  add          s6, a5, a4
                  slt          zero, t5, s11
                  auipc        t3, 998372
                  add          a6, s6, gp
                  slt          a2, a1, a5
                  sltiu        a7, a5, 582
                  sltiu        tp, a6, -1172
                  slt          s2, s5, a4
                  srli         zero, a3, 26
                  srl          ra, t1, ra
                  auipc        s9, 337994
                  sra          a6, s7, s7
                  slt          a2, s3, gp
                  lui          s2, 674453
                  srai         a3, a3, 6
                  or           s9, t2, s1
                  slt          s5, s4, t0
                  nop
                  sra          s3, t3, a1
                  slli         a7, a7, 14
                  lui          s6, 950200
                  sra          s8, a3, a4
                  nop
                  srli         s8, a0, 15
                  sub          a7, sp, s9
                  or           s4, s9, gp
                  srai         a5, s3, 24
                  or           a7, t0, s10
                  sltiu        s6, s10, -1046
                  sltu         t4, a1, s4
                  auipc        ra, 52668
                  srai         s6, s6, 8
                  nop
                  and          gp, tp, s10
                  or           s2, s9, s2
                  slli         ra, s0, 16
                  srl          s2, s5, s3
                  andi         s8, a4, -967
                  srl          s6, s11, s7
                  nop
                  slli         t3, sp, 30
                  xor          a1, a3, t6
                  andi         a0, t4, 1773
                  or           s10, s7, s7
                  nop
                  xor          s8, t3, gp
                  slt          s11, gp, gp
                  xori         s6, s3, 1673
                  addi         s5, t3, 772
                  slli         a0, s3, 29
                  auipc        a7, 454441
                  sltiu        a3, s2, 1344
                  xori         s4, sp, -1864
                  and          zero, s4, sp
                  srl          a3, s10, s8
                  ori          tp, t2, 1723
                  srl          s11, s8, s1
                  nop
                  addi         s3, s5, -474
                  auipc        a2, 890539
                  srli         a3, s2, 31
                  sltu         a0, a6, gp
                  sra          s7, a5, sp
                  auipc        t3, 149648
                  or           a0, t6, s5
                  srai         s7, t2, 20
                  sra          a0, gp, t5
                  sltu         t3, a2, t1
                  xori         t4, a6, 1744
                  xori         t0, t5, -1923
                  or           s11, zero, t2
                  lui          s7, 218805
                  nop
                  sll          s9, t1, t1
                  and          a6, sp, s0
                  ori          s3, s0, -366
                  xori         s9, t2, -304
                  slt          s11, t3, s1
                  and          s1, s7, a2
                  slt          t1, s5, zero
                  andi         t2, a1, -1784
                  srli         t3, t4, 24
                  ori          ra, t3, 306
                  xori         s2, s9, -1408
                  srli         s10, s9, 26
                  slti         s3, s3, -723
                  sltu         s7, t3, a4
                  lui          s6, 596000
                  nop
                  slti         ra, s9, -31
                  slli         a7, tp, 10
                  xori         t0, a1, 1505
                  slti         a0, t6, 736
                  lui          a6, 737756
                  sub          a7, s10, t2
                  slli         a3, a2, 18
                  slti         s11, t6, -754
                  and          s8, s7, s6
                  slt          a6, a6, s2
                  and          s8, t1, t3
                  nop
                  xori         t1, s8, 19
                  slli         s1, a3, 14
                  add          s11, s6, a1
                  addi         s7, s8, 1355
                  or           ra, a0, a3
                  sub          a3, s6, s7
                  and          t1, s4, a0
                  srai         a2, sp, 25
                  slti         s1, s2, -808
                  xori         a3, sp, -1451
                  slli         t5, t4, 26
                  slt          s11, t2, s11
                  srli         a2, t5, 6
                  sltiu        zero, tp, -511
                  slt          a7, s8, a6
                  sltu         t0, s1, a6
                  sub          s10, t6, a3
                  add          a0, zero, s5
                  xor          t2, a3, s5
                  sub          gp, a4, s7
                  sltiu        a0, s4, -346
                  add          t5, s10, a4
                  sltiu        s1, s6, -87
                  and          s11, a0, s4
                  nop
                  slti         t5, s7, -814
                  srai         zero, t5, 6
                  add          a3, s3, s0
                  or           a5, zero, a6
                  srai         a7, t5, 9
                  xori         s2, a3, -1506
                  sltu         a5, zero, t1
                  sltiu        a5, s8, 1935
                  xor          s5, a1, s2
                  slli         s4, s9, 22
                  slli         tp, sp, 7
                  sub          s9, a4, s9
                  srli         t4, a5, 15
                  addi         s7, s6, -423
                  sub          zero, s3, s0
                  and          s4, s6, a0
                  sra          s3, t2, s2
                  xori         a3, ra, 129
                  andi         s4, s6, -1947
                  xori         s7, t6, -1013
                  ori          a5, t0, 1112
                  and          s11, t2, s3
                  xor          a7, zero, t4
                  nop
                  sltu         s7, s6, s10
                  lui          s5, 92203
                  sltiu        t0, t6, -1469
                  sub          a3, a0, t3
                  srai         t0, ra, 30
                  slt          ra, gp, sp
                  sltu         s10, s6, t6
                  add          s10, t5, a3
                  slti         t1, t1, -810
                  sltu         s7, s4, s9
                  slt          s4, a2, s1
                  xori         s10, a1, -241
                  slti         t0, tp, 1688
                  slli         t3, a7, 0
                  lui          a1, 488401
                  sra          s6, a6, t5
                  add          a0, s1, t1
                  srli         s10, sp, 18
                  or           tp, s7, s8
                  sra          s10, a1, s8
                  srli         ra, t4, 8
                  add          gp, a2, zero
                  sltu         s5, t6, a2
                  srai         s8, ra, 12
                  xor          ra, a0, tp
                  sub          a3, s7, ra
                  xor          s10, a5, t5
                  ori          a5, a0, 477
                  sltu         s6, zero, t2
                  xori         a2, s8, -248
                  or           s3, a1, t5
                  sll          s9, a6, t5
                  sltu         t4, t6, a4
                  srai         s7, t2, 10
                  slti         a1, s0, -20
                  and          s8, t4, s5
                  ori          t3, t3, -411
                  sltiu        sp, t4, -1148
                  sub          s7, s7, s7
                  ori          ra, tp, -1654
                  ori          s1, zero, 1100
                  sra          s1, ra, a6
                  xor          a6, zero, ra
                  xor          t3, s4, s4
                  srai         a2, s3, 1
                  sltu         a3, a4, a5
                  srl          s11, a1, a0
                  andi         s3, s1, -586
                  slti         s8, s6, 934
                  srli         a5, s2, 21
                  xori         a6, s11, -1019
                  sub          s11, s0, t5
                  add          sp, a5, a6
                  srai         a1, t5, 4
                  slt          a3, s10, s8
                  sll          a3, ra, t2
                  sltiu        s2, a1, 1069
                  sltu         a1, t0, s2
                  slt          s10, s9, t1
                  sll          s9, gp, a7
                  andi         s8, s3, 1940
                  add          s5, zero, s9
                  addi         t1, a2, 724
                  or           t5, s3, t2
                  sltiu        a6, sp, 501
                  slli         t0, s6, 27
                  srl          s8, t3, s0
                  srl          s5, s3, t0
                  srli         ra, t3, 1
                  xori         a7, zero, 1095
                  srai         t0, a7, 28
                  srl          s10, s7, sp
                  addi         t1, t3, 968
                  slt          sp, a0, a3
                  ori          s10, sp, 1739
                  sltu         t0, s5, s0
                  add          t2, s4, a5
                  xor          t1, s1, s6
                  add          sp, gp, s6
                  srl          t0, zero, gp
                  srli         s6, s11, 7
                  sltiu        tp, t2, 697
                  srai         a0, gp, 14
                  sub          gp, a3, s9
                  sra          s4, a5, s5
                  xor          s2, a7, s10
                  srai         s10, s3, 11
                  slli         s11, s3, 17
                  srai         s9, t4, 1
                  ori          s6, s7, 1810
                  addi         a6, t6, 1454
                  addi         s5, s11, -1967
                  srli         s11, s7, 8
                  srl          a3, ra, s10
                  srai         s11, a4, 23
                  or           a0, s0, t0
                  sltu         sp, a7, gp
                  srai         s10, a0, 8
                  ori          t0, a2, 943
                  and          s10, gp, t4
                  sltu         a3, a4, t4
                  xori         t2, s0, -1932
                  slli         sp, s2, 3
                  add          zero, a7, tp
                  xori         s1, a0, 1580
                  sra          s10, s4, s5
                  add          s8, a6, tp
                  srl          s9, s5, s9
                  lui          s3, 289785
                  add          s8, tp, zero
                  nop
                  xor          s8, gp, a6
                  sltiu        t0, t5, 290
                  xori         s9, t2, 1664
                  lui          sp, 967519
                  sub          t5, t2, s8
                  sra          s1, s6, t6
                  sll          a0, s10, s1
                  slti         t2, t5, -942
                  addi         s1, tp, 1176
                  slti         s1, s7, 169
                  sub          s2, tp, s11
                  and          a6, a6, t6
                  sub          s1, sp, t2
                  xor          gp, a7, s2
                  nop
                  nop
                  srai         s9, a4, 21
                  srli         t5, a6, 13
                  ori          s3, tp, 1589
                  srli         s10, gp, 19
                  auipc        s9, 677746
                  sll          s2, a7, gp
                  andi         s7, a0, 722
                  add          s5, s5, a6
                  sra          t2, t5, a4
                  lui          s1, 684882
                  xori         s2, a1, -1254
                  andi         a1, s7, -115
                  sub          t0, a7, t0
                  nop
                  auipc        a1, 322584
                  sltiu        s1, t1, 1793
                  srl          t0, tp, s6
                  or           t0, t2, ra
                  addi         s3, a7, -1362
                  srl          a2, a5, s10
                  xor          t1, a7, t3
                  lui          a3, 297703
                  srai         t4, s4, 10
                  srl          s3, a7, a7
                  auipc        t4, 30941
                  slti         s8, a6, 1576
                  sra          a3, t6, a5
                  sltu         s10, s9, s10
                  slti         a5, t1, -421
                  slli         t3, a5, 19
                  srli         a1, t2, 25
                  and          t3, t5, s10
                  andi         t5, s1, 175
                  slli         a5, s10, 4
                  add          a2, s3, t3
                  sltiu        a5, s3, -424
                  srli         s11, s9, 24
                  sll          tp, s5, a0
                  srl          s1, t4, a0
                  slt          s4, s9, s10
                  or           a5, a1, t2
                  sub          t1, s10, t1
                  sub          s3, s8, s5
                  xori         t5, s1, -1812
                  lui          sp, 251790
                  sra          s3, a4, s7
                  srai         s3, t3, 27
                  slti         s11, zero, 951
                  sll          s10, a7, t2
                  xor          ra, t0, a3
                  add          t3, s11, ra
                  lui          t2, 590808
                  or           a7, a5, ra
                  sra          sp, s7, a4
                  srai         ra, t2, 11
                  auipc        s5, 896786
                  or           t0, zero, sp
                  addi         a7, s6, 1793
                  srai         zero, a2, 14
                  andi         s6, ra, 1274
                  and          gp, s5, a5
                  slt          s9, tp, a5
                  ori          gp, a6, -1381
                  lui          s10, 243593
                  slti         s2, s0, 514
                  sltu         s10, s11, s8
                  srli         a1, a6, 5
                  andi         a1, a0, -217
                  add          s6, t6, a2
                  and          t2, a0, a3
                  srli         a7, zero, 10
                  sll          s5, a3, a6
                  nop
                  srli         tp, s8, 25
                  and          s10, t4, t0
                  lui          a7, 1026175
                  slt          a0, s10, a3
                  slt          a2, s4, a1
                  sub          s9, a7, t3
                  lui          ra, 883228
                  lui          t4, 292766
                  and          s1, t1, a1
                  nop
                  xor          s2, a1, t4
                  sltiu        a1, s8, -691
                  sltiu        sp, s4, -696
                  sra          a1, s5, t0
                  srl          a0, s0, s7
                  sub          a0, s11, s6
                  slli         a2, a0, 24
                  and          s1, s4, a7
                  addi         a2, a7, -1071
                  addi         t5, s1, -924
                  slli         t5, t6, 8
                  sltu         s3, s1, gp
                  srai         zero, ra, 4
                  slli         zero, t1, 7
                  xor          zero, s0, s10
                  xor          s2, a1, s7
                  sra          t5, t6, a7
                  sltiu        a3, s7, 807
                  add          a3, a1, s4
                  slt          ra, a5, a1
                  xor          a2, t3, s10
                  slti         a7, a7, 576
                  sll          s5, zero, s10
                  ori          zero, s11, -1063
                  srai         zero, a4, 14
                  srl          ra, sp, s1
                  srli         t5, a4, 5
                  nop
                  sltu         t5, a4, t2
                  sll          a5, zero, sp
                  and          s9, s3, t3
                  addi         s2, a7, -417
                  addi         t4, s0, 1270
                  sll          tp, s0, a0
                  sra          s5, a1, t3
                  srl          s11, s5, t1
                  sltiu        t0, t1, -1821
                  sub          s3, a3, a5
                  sltiu        a5, a3, -1771
                  addi         a3, s4, 895
                  auipc        s3, 373655
                  auipc        s8, 851223
                  slli         sp, tp, 29
                  sltiu        a3, a7, -140
                  slt          t3, sp, s0
                  addi         a0, s10, -646
                  sra          gp, a4, t4
                  andi         t4, s10, 943
                  xor          s6, s6, t2
                  lui          s8, 640763
                  auipc        s9, 497335
                  auipc        a0, 891599
                  slti         sp, t0, 1517
                  xor          t5, t3, s1
                  and          t1, t4, s9
                  sra          s9, t2, s1
                  slli         t5, t5, 27
                  lui          t2, 79405
                  sll          s3, a1, t4
                  add          s7, s2, a2
                  andi         t1, s0, -2035
                  ori          a3, s10, 1199
                  nop
                  lui          ra, 811245
                  sll          a0, t0, s7
                  sltu         s9, a3, t3
                  srli         s6, tp, 1
                  ori          s8, a3, 1066
                  andi         s6, a1, -434
                  sltu         s10, t3, s5
                  xori         a0, t6, 48
                  andi         sp, s4, 1732
                  ori          s1, ra, -270
                  slt          s5, a1, t6
                  lui          a6, 331657
                  srli         a1, a4, 26
                  ori          s2, s10, -79
                  or           s4, s3, ra
                  and          a7, t1, t3
                  slt          s4, s1, sp
                  nop
                  ori          s6, a5, 756
                  srl          t1, sp, s9
                  sltiu        s10, a7, 393
                  slti         s4, s0, 1624
                  srai         a2, t0, 17
                  ori          s2, t6, -1716
                  srai         t1, t0, 18
                  lui          s7, 280425
                  sltu         s10, t6, a1
                  srl          s8, zero, sp
                  sll          s8, s9, s9
                  xor          s11, t3, t3
                  srai         t4, a0, 26
                  xori         sp, t2, 131
                  slli         a5, s10, 5
                  sll          s5, t0, s3
                  andi         t2, t6, -2003
                  sltu         zero, zero, s2
                  srl          a2, t5, a7
                  slti         s5, s5, 64
                  sltiu        s11, s8, 1189
                  xori         t4, s1, 1944
                  or           a6, t0, a1
                  addi         s7, s10, -1732
                  sll          zero, a5, s2
                  sra          gp, a3, s8
                  slt          a1, a2, tp
                  andi         a0, s4, -987
                  and          a1, ra, s11
                  sub          s4, t6, t5
                  srai         s11, t1, 16
                  and          t1, t6, s3
                  xori         a1, a7, 59
                  sra          s8, sp, t1
                  nop
                  andi         a3, s8, -301
                  sltu         a6, a4, t4
                  slli         gp, t6, 17
                  add          s1, s2, s8
                  and          t5, a2, s6
                  xori         t5, a4, 1984
                  xor          s3, gp, ra
                  sub          s2, s10, s6
                  ori          s1, ra, 536
                  sltu         t3, t3, zero
                  sltiu        zero, t5, -135
                  sltu         a0, zero, t1
                  slli         a6, s1, 30
                  ori          a2, s10, 777
                  slt          t0, a1, s5
                  ori          s11, t2, -705
                  slt          s10, a3, s0
                  slt          t0, ra, s11
                  xor          s9, gp, t1
                  slli         s9, a4, 14
                  addi         a2, ra, -1961
                  auipc        s11, 323679
                  and          s5, tp, s6
                  ori          sp, s1, 653
                  and          s1, s7, t1
                  and          s11, s2, a6
                  addi         sp, gp, 1767
                  srl          t0, t2, s3
                  srl          s1, s10, t3
                  sltiu        tp, a1, -305
                  srli         a7, s7, 7
                  slti         t4, tp, 340
                  or           s11, s9, a1
                  and          t0, t6, s9
                  sub          s9, a0, s9
                  srai         sp, a3, 16
                  andi         tp, s4, 875
                  xor          a1, s0, ra
                  slti         s6, s0, 400
                  andi         a7, t3, -147
                  slli         s9, a3, 0
                  srl          a0, s0, a3
                  srli         tp, sp, 29
                  srli         sp, a1, 21
                  and          a3, s5, s8
                  srai         a3, a7, 17
                  slti         a0, a6, 258
                  xori         t5, a3, 503
                  xor          s2, a0, s8
                  srai         a1, s3, 23
                  nop
                  sra          gp, s2, a7
                  addi         sp, t3, 230
                  slli         s5, s0, 23
                  slli         s10, s2, 17
                  sltu         s7, ra, ra
                  srai         s7, s10, 22
                  xor          a7, s10, s9
                  sltiu        s8, s0, 824
                  addi         s1, t5, 933
                  lui          s4, 757589
                  addi         gp, a2, 3
                  sltiu        s9, zero, -641
                  andi         s4, s6, 1640
                  sub          t5, t5, t2
                  auipc        t0, 329769
                  lui          t5, 333857
                  slti         a2, s3, 1858
                  add          ra, s3, sp
                  srl          a6, t6, s5
                  srli         t0, s4, 21
                  xori         s11, s5, -1406
                  add          s5, sp, tp
                  xori         sp, s4, 1693
                  sra          s6, t0, t1
                  or           s6, t6, a4
                  addi         a1, s1, 478
                  sltiu        s5, tp, 929
                  srl          a7, a7, a2
                  and          zero, a7, a1
                  sltu         a0, s4, a7
                  srl          a6, a0, a6
                  auipc        a3, 330719
                  nop
                  xori         s11, s2, 1631
                  sltu         s6, a3, t5
                  srli         a2, s4, 3
                  andi         sp, a4, 356
                  sltu         sp, s3, s2
                  sltu         t0, s6, s3
                  ori          tp, a0, -1330
                  sltu         s4, ra, t0
                  and          a5, s1, t0
                  lui          s9, 834616
                  or           sp, s9, t3
                  add          ra, s1, s1
                  auipc        t2, 561283
                  srli         s11, t1, 17
                  sltiu        a3, s7, -246
                  sltu         a3, s3, t4
                  slli         tp, t2, 5
                  nop
                  sltiu        s2, t0, 956
                  srl          s4, t3, t2
                  srai         a6, s6, 13
                  lui          t4, 287510
                  slti         s10, s11, 1786
                  sra          t0, s4, s3
                  srli         a1, a6, 13
                  slli         s7, s8, 9
                  sll          t0, t3, ra
                  sltiu        a5, s0, -1960
                  xor          a0, s5, t5
                  sltu         s4, t3, t5
                  or           ra, s5, s4
                  or           a5, t0, a0
                  srai         s8, a5, 23
                  slli         a0, sp, 22
                  sub          t2, s8, a6
                  sltiu        s2, zero, -1521
                  addi         s6, s1, -1699
                  and          s10, s6, a6
                  andi         s5, s2, 1521
                  xori         t4, sp, -1791
                  sra          s1, t4, t1
                  srai         s2, s2, 6
                  and          s1, t4, s2
                  srli         a5, s5, 24
                  slt          a7, t5, a7
                  slti         s2, a3, -1090
                  ori          s4, a1, -1239
                  sub          ra, t2, zero
                  auipc        t1, 739081
                  slt          s6, s6, a2
                  srl          s1, s9, a2
                  or           s5, s2, a6
                  sll          t4, a3, t2
                  sra          s8, ra, a0
                  sra          t3, s6, ra
                  or           s8, a4, s4
                  ori          a0, s3, 1653
                  ori          sp, s11, 1611
                  sltu         a5, a7, t4
                  slti         a5, a0, 1072
                  xor          s10, s6, s11
                  srai         s10, s2, 3
                  sll          zero, t2, s2
                  srl          gp, s11, s9
                  slli         s7, a0, 15
                  nop
                  sra          s9, s5, a6
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           sp, 0xffffffff
                  li           a2, 0x80000000
                  li           s1, 0x80000000
                  li           a0, 0xffffffff
                  li           t5, 0xa5549fc7
                  li           s3, 0xffffffff
                  li           gp, 0xffffffff
                  li           s11, 0x6d5a815f
                  li           a3, 0xffffffff
                  lui          s4, 91022
                  addi         a3, sp, 1245
                  add          a0, s3, t5
                  nop
                  add          s1, gp, a2
                  add          gp, s1, s4
                  add          s11, s3, gp
                  auipc        s3, 19884
                  lui          s1, 28141
                  add          s3, s4, s11
                  add          t5, s3, a0
                  addi         gp, s11, -221
                  addi         s4, a2, 1396
                  add          s11, a3, s1
                  sub          s4, sp, s3
                  auipc        a3, 635400
                  auipc        s4, 98792
                  add          s1, s4, gp
                  addi         a0, a2, -1240 #end riscv_int_numeric_corner_stream_1
                  xor          s9, s7, s2
                  auipc        s5, 301439
                  sltu         a6, a2, s2
                  slti         s1, s10, 456
                  nop
                  slti         t1, gp, -1796
                  sltiu        t1, a5, 1400
                  lui          t2, 287422
                  and          a5, s9, tp
                  or           t2, t0, s1
                  nop
                  slti         s10, s9, -2023
                  lui          zero, 229661
                  lui          tp, 362930
                  andi         t3, a2, -1581
                  addi         a2, t1, 1382
                  nop
                  and          s2, t0, s1
                  srai         tp, sp, 15
                  ori          t2, a3, 1029
                  lui          s5, 42018
                  slli         s1, t6, 14
                  addi         s9, t5, 1913
                  sltu         t5, a7, a1
                  lui          a7, 543453
                  srli         a6, s4, 25
                  add          a6, t4, a0
                  sub          s2, t1, t2
                  andi         a5, a1, -1626
                  srli         s8, a1, 30
                  and          a1, a6, s0
                  sltu         zero, ra, a5
                  sll          s8, sp, a1
                  nop
                  xori         zero, t3, 460
                  slli         t0, a2, 0
                  xori         s5, a7, 454
                  slt          sp, s2, s1
                  slt          t4, s1, t1
                  sll          s8, s4, a6
                  sub          a6, s0, t1
                  slti         a0, a2, -1693
                  or           tp, t1, gp
                  addi         s4, t3, -852
                  sra          s9, zero, a7
                  slli         a5, a6, 11
                  ori          a7, s5, 139
                  slli         s4, t4, 4
                  and          a5, a4, a5
                  add          s8, t0, a7
                  ori          t1, a0, 1123
                  srai         a0, tp, 8
                  nop
                  sra          tp, s4, s0
                  slt          a5, zero, s11
                  sltiu        s8, s4, 1496
                  sub          a7, s7, s11
                  add          t1, ra, gp
                  srai         a7, s3, 19
                  sltu         s7, t3, a6
                  sltu         a0, s4, tp
                  slli         sp, ra, 26
                  auipc        a2, 232310
                  and          s6, s3, a5
                  or           s6, t3, sp
                  slti         a5, a1, -610
                  sub          s1, t0, sp
                  ori          t2, s4, -2031
                  slt          gp, a5, t6
                  andi         t3, gp, -2026
                  add          ra, s8, a6
                  auipc        a0, 864062
                  sra          a0, a4, a1
                  ori          tp, ra, -379
                  slli         tp, s1, 31
                  andi         a7, zero, 699
                  and          t3, a3, t0
                  sltiu        zero, a1, 1874
                  or           zero, s0, s8
                  xori         a3, s5, -541
                  ori          a5, t1, -921
                  or           s5, s6, a6
                  slli         t3, s6, 13
                  and          t5, a5, a6
                  sra          s9, a7, t3
                  nop
                  auipc        s8, 997484
                  andi         tp, a5, -1299
                  addi         t1, s11, 1148
                  ori          t1, s10, -1589
                  nop
                  andi         s5, sp, -1801
                  and          gp, s4, t0
                  sra          t0, a1, t0
                  xori         t3, a5, 357
                  srl          s10, s1, tp
                  sra          s7, t3, s0
                  slt          t1, s11, t4
                  or           sp, a0, s6
                  lui          zero, 1012067
                  ori          t2, s11, 216
                  srai         zero, a1, 22
                  slt          gp, a6, a7
                  addi         a1, sp, 1590
                  or           t4, t0, a3
                  or           t1, t1, s5
                  srl          s11, s11, a1
                  srai         s3, a4, 10
                  add          s8, s6, a6
                  nop
                  or           s4, ra, s0
                  addi         s7, tp, -1268
                  ori          a5, t4, -1962
                  nop
                  sra          s4, zero, s6
                  nop
                  sub          s11, s10, s1
                  nop
                  sll          s11, s9, t2
                  addi         a3, s1, -1406
                  sltu         ra, t4, sp
                  andi         s3, s1, -1146
                  sltu         t1, zero, zero
                  srli         s2, s5, 10
                  sltiu        t3, t0, 1242
                  srai         t0, ra, 8
                  srli         sp, s3, 5
                  sltiu        t0, t4, -1725
                  srl          a1, ra, s6
                  srl          a0, a1, s6
                  andi         t3, a7, -1680
                  srli         s6, s0, 0
                  xor          s6, a3, s1
                  xori         a6, ra, -1883
                  nop
                  ori          sp, s10, 1842
                  srl          s7, sp, s3
                  srai         a2, s8, 1
                  srli         zero, s8, 7
                  xori         s4, s6, -1573
                  srli         a0, s6, 29
                  srli         s10, s4, 12
                  addi         sp, t0, 692
                  sll          gp, s4, a6
                  xori         t4, s5, -1552
                  slli         s3, s0, 31
                  lui          s11, 141648
                  xor          s6, ra, a7
                  nop
                  srai         a6, a2, 30
                  slli         a2, t3, 18
                  srai         a5, t6, 14
                  slt          s4, a0, s4
                  sll          t3, t3, t1
                  slti         s5, s10, -963
                  xor          zero, t0, s0
                  addi         a2, s3, -496
                  add          gp, gp, sp
                  or           a6, t1, t5
                  or           a3, a6, sp
                  lui          a2, 34673
                  lui          t5, 436928
                  sltiu        t2, t2, 1637
                  and          t2, sp, t6
                  and          s11, t1, zero
                  sra          s5, s6, a4
                  slti         s3, a4, 553
                  srli         s5, tp, 31
                  slt          s10, ra, s2
                  or           tp, tp, t5
                  xor          s5, a6, a1
                  nop
                  sra          sp, s11, ra
                  xor          ra, s8, t2
                  xor          zero, s9, a5
                  ori          s4, s11, -1504
                  xor          t2, s1, a2
                  srai         a1, t5, 12
                  slt          s10, a5, a0
                  addi         a1, a2, 224
                  xori         a6, a4, -1466
                  slli         s5, tp, 25
                  srli         s4, a5, 24
                  ori          s9, s2, 1981
                  srl          s11, t5, s3
                  or           a1, s6, t1
                  and          a7, s8, ra
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           tp, 0x15d34e74
                  li           a2, 0x80000000
                  li           s4, 0xffffffff
                  li           s9, 0xffffffff
                  li           sp, 0x80000000
                  li           ra, 0xffffffff
                  li           a1, 0x68376271
                  li           a6, 0xffffffff
                  li           t3, 0xffffffff
                  nop
                  lui          a2, 253309
                  nop
                  sub          tp, a5, a5
                  lui          sp, 761850
                  sub          a6, s9, t3
                  auipc        ra, 394561
                  addi         ra, a5, -1248
                  add          sp, ra, ra
                  auipc        s9, 1004504
                  add          sp, ra, a6
                  sub          a5, a6, a1
                  add          s9, a2, tp
                  nop
                  addi         a5, sp, -2017
                  auipc        a5, 628687 #end riscv_int_numeric_corner_stream_5
                  slt          a1, s4, a7
                  add          s6, t3, a7
                  auipc        s7, 589498
                  or           a6, ra, a7
                  sub          t1, s10, a4
                  lui          s1, 266715
                  auipc        a7, 1023250
                  lui          gp, 619975
                  xor          s4, t2, a2
                  lui          a1, 96679
                  nop
                  xori         s9, a7, 1751
                  slt          t0, s9, tp
                  slti         s3, s1, 535
                  lui          a2, 909101
                  add          ra, s1, t3
                  slli         a5, s9, 1
                  slti         t3, t4, -663
                  sltiu        s5, s5, -1639
                  nop
                  slti         s1, s11, -1632
                  srai         s4, a6, 14
                  srl          s9, t6, t2
                  srai         a2, a3, 10
                  sra          s5, a6, s11
                  sll          t4, s3, tp
                  auipc        zero, 327490
                  ori          a6, a4, -189
                  slt          s5, sp, tp
                  xori         tp, s2, -1944
                  ori          s10, t6, -1643
                  slli         a6, tp, 16
                  sltu         a2, s6, s1
                  add          a6, a3, t4
                  srl          a5, t2, t6
                  sll          s1, t1, tp
                  nop
                  sub          a0, s1, a6
                  srli         tp, ra, 5
                  or           s6, s2, sp
                  and          t3, s0, s8
                  slti         s4, t3, 326
                  sll          t0, t1, a5
                  sra          s6, t1, a1
                  slli         t4, t3, 1
                  xor          s8, a5, s1
                  slli         s4, s3, 27
                  sub          s8, t0, t1
                  ori          t4, tp, 1035
                  sub          t1, a6, a3
                  srl          a0, s8, ra
                  sra          sp, t4, s0
                  slt          s3, t6, s6
                  add          s3, s11, a4
                  auipc        a1, 476748
                  or           a0, s1, s3
                  add          t5, s7, s1
                  add          a1, a0, a3
                  auipc        tp, 43474
                  addi         s7, tp, 715
                  sra          t5, t3, zero
                  slli         tp, s4, 3
                  sub          tp, s5, a6
                  and          a2, ra, a7
                  slti         t3, s3, -442
                  sltu         s2, sp, t4
                  slli         s2, s5, 18
                  xor          a3, sp, a6
                  sltu         s5, a4, t3
                  andi         s4, a6, -1741
                  auipc        gp, 350687
                  slti         s1, s2, -119
                  sltiu        tp, t5, -1252
                  srli         s9, t3, 24
                  slti         t3, s10, 1768
                  andi         s5, t0, -1859
                  sltu         s10, a1, s2
                  xor          gp, t1, a5
                  slt          ra, t0, a0
                  andi         a3, s1, -572
                  srl          a7, s7, ra
                  srl          sp, gp, s2
                  xori         tp, ra, -1044
                  srl          gp, s7, s11
                  srli         s6, a4, 24
                  sltu         s2, gp, a4
                  lui          s1, 536957
                  srai         a1, t0, 13
                  add          gp, tp, a4
                  sltu         t1, a2, a6
                  sll          t0, ra, a6
                  sra          a5, gp, a6
                  lui          tp, 376665
                  lui          s1, 985060
                  add          s8, s9, a2
                  slt          s5, ra, zero
                  sltiu        a1, a1, -335
                  addi         s6, s6, 1725
                  and          t0, s5, t1
                  sltiu        s6, s11, -1630
                  or           a6, a0, s0
                  sra          a2, s2, t1
                  ori          s2, s4, -215
                  auipc        s4, 756857
                  sra          s8, s9, s0
                  ori          zero, a2, -1990
                  slli         zero, t5, 20
                  nop
                  sltiu        s6, s2, -1479
                  slli         s11, t3, 29
                  nop
                  xor          a6, s7, a7
                  srli         t0, s8, 19
                  lui          a5, 602229
                  slti         t4, t0, -1457
                  srl          a3, a2, s1
                  add          t1, s2, gp
                  or           a2, s5, t6
                  slt          s5, t6, t0
                  sub          s2, s1, zero
                  lui          ra, 355022
                  sll          tp, a4, zero
                  sub          s1, a6, s2
                  slli         s3, a3, 24
                  sll          s3, t2, s11
                  or           a2, s7, a2
                  srl          a3, t4, t5
                  slti         sp, s2, 48
                  and          s4, s9, s7
                  nop
                  slli         a5, t0, 2
                  slt          a6, s1, zero
                  add          s5, s2, t1
                  addi         a7, t4, 1624
                  sltu         t5, a5, t4
                  add          a0, s11, a6
                  lui          t1, 194269
                  sra          tp, sp, a0
                  srl          t3, a4, s10
                  lui          s7, 744034
                  slt          t1, a5, s4
                  slti         sp, a1, 84
                  nop
                  andi         a5, s4, 135
                  andi         s10, a0, -1853
                  and          s9, s9, s4
                  slt          s3, s2, t5
                  or           s4, t5, s6
                  and          s7, a2, sp
                  lui          s11, 255435
                  slli         s2, t0, 6
                  xor          a2, s9, t1
                  lui          ra, 456324
                  xor          a1, s11, s7
                  sltiu        s7, s8, 283
                  andi         a3, s9, -1799
                  add          s2, tp, tp
                  add          t3, a7, a2
                  sltiu        gp, t2, -768
                  xori         t5, a1, 1331
                  sll          t0, t0, t1
                  srl          s4, s9, t2
                  nop
                  sub          t4, a2, a1
                  nop
                  xor          s3, s9, t1
                  add          ra, s8, s1
                  srl          t0, s2, a1
                  sub          t0, t2, tp
                  srli         s6, gp, 28
                  nop
                  lui          t3, 859754
                  sll          s9, s3, t1
                  sub          a6, t3, s6
                  nop
                  slti         t4, t0, -1233
                  slli         tp, sp, 24
                  and          s10, s9, s8
                  xor          s6, a4, t5
                  sra          tp, a5, tp
                  lui          s4, 513352
                  sra          tp, s10, s5
                  slt          t4, s1, t0
                  or           a1, t4, a2
                  sltiu        s1, gp, -1542
                  ori          zero, t3, 702
                  srai         ra, s1, 4
                  sub          s6, s2, tp
                  srai         s8, a0, 23
                  sub          t1, a3, s7
                  and          s4, s11, s10
                  lui          s8, 881255
                  sra          ra, a1, s8
                  srli         a7, s5, 7
                  srai         a2, a2, 28
                  srl          t0, t6, s0
                  xor          t3, a6, t2
                  sll          a2, t2, a3
                  srl          s8, a7, s10
                  lui          a5, 967501
                  srli         a1, a7, 28
                  or           s11, s6, a1
                  or           a0, t1, t6
                  srl          s10, s8, gp
                  srli         s7, s7, 26
                  sra          a7, a1, a6
                  nop
                  sub          a7, s0, a7
                  sltiu        ra, s1, 2001
                  add          zero, t1, a1
                  sll          tp, t6, s9
                  xor          t3, a0, s5
                  srli         a5, a1, 24
                  srl          ra, t4, gp
                  sltu         s2, s1, s11
                  slt          s9, t1, gp
                  sll          t0, s3, s3
                  slt          t3, a2, s0
                  srli         t3, t5, 3
                  slti         t3, s0, -352
                  nop
                  andi         s4, sp, -1024
                  ori          a0, s3, 1053
                  sll          s8, t0, s7
                  slti         s4, a1, 700
                  sra          s5, s7, t3
                  xori         a1, sp, 1944
                  slli         tp, a4, 1
                  xori         a7, s5, 830
                  nop
                  lui          s7, 893212
                  xor          s8, s4, s10
                  andi         a1, t1, -545
                  slti         gp, s8, 1030
                  auipc        a2, 933584
                  auipc        gp, 348852
                  auipc        a2, 279465
                  xor          t4, sp, t4
                  slti         t5, s2, -1687
                  add          a2, s11, t6
                  nop
                  or           s6, a3, a6
                  lui          a5, 113644
                  add          a3, s6, s8
                  srli         s5, sp, 15
                  nop
                  xor          t4, t3, ra
                  sra          s6, s2, a3
                  xor          gp, t2, t6
                  auipc        s8, 263114
                  auipc        a2, 218215
                  add          s5, t6, t5
                  auipc        s5, 970481
                  and          a3, s0, s10
                  xori         a3, s7, 1450
                  xor          t5, s7, t3
                  sub          s3, s7, s6
                  slti         t5, s4, 55
                  sub          s1, s6, t4
                  lui          s1, 1022928
                  srl          s4, ra, s6
                  sra          t1, s11, s5
                  add          s10, t6, s8
                  andi         a0, a2, -474
                  sltiu        a0, t5, -248
                  slti         a0, s1, -1925
                  srai         gp, a2, 18
                  and          s11, t2, s9
                  srai         zero, s1, 7
                  sll          s3, gp, a7
                  srli         t2, s0, 23
                  slti         a3, a6, 1661
                  sltiu        s9, ra, 281
                  slti         s10, s5, 1289
                  and          sp, s10, t5
                  srli         s10, s9, 9
                  srai         s2, s4, 24
                  add          t1, s0, s8
                  sll          a2, s6, gp
                  srl          a1, a3, a7
                  xor          t1, t5, t1
                  xor          a6, s8, sp
                  slt          a7, s8, zero
                  sltu         a3, s3, gp
                  ori          t0, s1, -106
                  srai         s7, s5, 30
                  lui          a2, 1014032
                  slt          s6, t5, t1
                  srai         a3, s3, 28
                  nop
                  sltiu        a2, t6, 339
                  slli         t1, a1, 9
                  xor          t4, ra, t3
                  add          t4, s9, t4
                  sll          a0, zero, s7
                  sltu         t0, zero, s11
                  xor          t2, a3, t6
                  slti         s10, t5, 1506
                  andi         t1, s4, -1382
                  sra          s10, t0, zero
                  and          a6, s6, s6
                  sltu         t0, s6, s6
                  xor          s9, t0, a3
                  ori          a3, t3, -1767
                  xori         s9, zero, 1282
                  or           t2, t2, t4
                  ori          s11, a4, 1215
                  srl          s4, sp, s3
                  andi         s10, a4, -1250
                  and          s5, s9, tp
                  auipc        t2, 428288
                  ori          s2, s7, -1372
                  sra          a0, a6, gp
                  andi         s6, a4, 819
                  sra          t0, a3, ra
                  nop
                  slli         a2, t0, 4
                  srai         a3, a3, 14
                  or           t1, s1, t1
                  sltiu        a1, t4, -371
                  sra          s1, t4, s10
                  slt          t5, t1, s1
                  and          t2, a3, t2
                  sltiu        ra, zero, 1656
                  sltiu        ra, s0, 507
                  slli         s10, tp, 1
                  add          t3, zero, s6
                  andi         s7, zero, 681
                  srli         a1, t0, 18
                  addi         s3, t4, 917
                  xor          s7, t6, a2
                  xor          a6, s5, s2
                  andi         gp, a7, -981
                  slli         zero, a4, 2
                  and          t1, s9, t6
                  auipc        a0, 1031685
                  ori          a2, s0, 1913
                  xori         s9, a2, 232
                  lui          a7, 18284
                  xori         a6, a0, -671
                  slti         s9, s2, 495
                  sra          t2, t2, a2
                  add          s4, a1, t1
                  andi         tp, t0, 172
                  srli         t2, a3, 26
                  sltu         s2, t1, a1
                  lui          zero, 1048307
                  auipc        t5, 1041294
                  slli         s8, gp, 26
                  xori         s2, a3, 1753
                  sll          t1, a7, s0
                  xori         t0, gp, 91
                  nop
                  srai         t1, a1, 28
                  sra          a6, s8, s6
                  auipc        a1, 195321
                  sltu         s9, s1, s3
                  slli         a5, a4, 20
                  srli         s8, t5, 29
                  srl          t5, s11, a3
                  sll          s7, a1, t1
                  xori         zero, t2, 1832
                  srli         t2, a2, 3
                  nop
                  sltu         ra, t4, s5
                  lui          a7, 322571
                  sll          a2, a7, a7
                  xori         gp, t6, 628
                  add          s9, ra, a5
                  nop
                  slti         a2, s4, 826
                  slti         t2, a1, -743
                  addi         zero, s3, -1494
                  lui          s6, 71387
                  or           sp, s5, a0
                  sra          s4, s4, s9
                  andi         s5, t3, 1082
                  ori          s5, a4, 872
                  sltiu        zero, zero, 829
                  auipc        a3, 473010
                  sra          t4, s9, t2
                  or           a3, a0, s4
                  slli         s1, ra, 11
                  slli         zero, zero, 27
                  slt          s2, s3, a1
                  sll          zero, s11, s5
                  and          gp, s8, tp
                  slti         s9, a0, -737
                  addi         s7, ra, 1735
                  sltu         sp, a3, s5
                  or           s1, a1, a4
                  sltiu        t1, gp, -721
                  and          s2, a3, ra
                  xor          s6, s4, zero
                  srli         s7, a1, 21
                  ori          s2, a2, -421
                  and          t0, a2, a2
                  add          zero, a3, s1
                  addi         a0, t0, 1420
                  xor          t3, s4, t1
                  auipc        t3, 994749
                  sltiu        s8, t3, -1124
                  nop
                  sra          a0, s11, t5
                  sll          t1, a1, t2
                  xor          s3, zero, t0
                  lui          tp, 686023
                  add          ra, a6, t4
                  xor          t4, gp, s0
                  ori          s6, t1, -17
                  or           s5, a5, a5
                  slli         a5, gp, 4
                  nop
                  srli         t0, sp, 17
                  srli         s3, s1, 26
                  slti         sp, gp, 1046
                  srai         s2, a1, 27
                  slti         ra, t1, -262
                  or           a0, s9, t6
                  or           s8, zero, t6
                  xori         s2, sp, 1064
                  ori          s8, a0, 1743
                  xori         s11, s0, 708
                  lui          t1, 755585
                  srli         s11, s9, 5
                  xori         s7, s3, -1855
                  sltu         t2, s6, t5
                  nop
                  slt          s3, zero, a7
                  sltu         s4, sp, a2
                  slt          zero, s1, t0
                  srai         s7, zero, 11
                  slti         s11, zero, 1908
                  xor          a5, s4, s9
                  srli         s10, a4, 30
                  sltu         a6, t0, gp
                  sltu         s10, s7, t4
                  andi         s6, s0, 1502
                  ori          s2, s10, -570
                  srai         s5, t0, 21
                  slti         ra, s5, -383
                  xori         t0, s5, -892
                  sltu         s7, s7, tp
                  lui          a6, 797525
                  ori          s7, a1, 705
                  slt          s2, s2, a2
                  ori          a6, s9, -561
                  auipc        t1, 536579
                  and          a1, s1, s0
                  and          s4, t2, t1
                  sll          sp, t6, s5
                  sub          sp, a2, s3
                  add          s8, t0, a4
                  and          s11, t0, zero
                  addi         a6, gp, -1642
                  andi         t2, s3, -1689
                  srai         s2, s6, 4
                  nop
                  ori          a2, zero, -2006
                  xor          a1, s9, a6
                  srai         s9, s8, 19
                  sltu         ra, a4, s8
                  slti         t0, s7, 1306
                  slti         t2, a2, -1826
                  slti         zero, t6, 11
                  lui          a3, 67208
                  sltiu        a0, t6, 1523
                  andi         t0, ra, 2041
                  srai         s10, s1, 11
                  andi         zero, t0, 1160
                  lui          a3, 66419
                  sra          s8, zero, t0
                  andi         s3, t6, -803
                  sra          s2, a2, t2
                  or           s11, tp, tp
                  slli         s11, s3, 14
                  sltiu        a1, a3, -150
                  lui          a0, 728657
                  srli         s10, a7, 27
                  slti         gp, s6, 700
                  sub          s4, s0, a0
                  nop
                  slli         ra, a0, 3
                  and          s1, t1, t5
                  and          s7, ra, t1
                  and          s9, t6, zero
                  and          t3, s1, a5
                  sltu         t4, t2, a0
                  nop
                  slt          s5, a0, a6
                  sub          s6, gp, s8
                  xor          ra, t3, t5
                  xori         a7, s2, -1038
                  addi         a2, t4, -1791
                  srai         a2, a3, 28
                  ori          gp, s1, 1944
                  xor          gp, t2, t4
                  ori          t2, s8, -638
                  srai         s11, a0, 19
                  andi         t0, a7, 1107
                  sub          a2, tp, a5
                  srli         t4, s7, 16
                  srl          tp, s11, a0
                  slti         gp, t5, -417
                  andi         s5, s8, -1104
                  slti         ra, s7, -1233
                  lui          a3, 21678
                  slli         zero, a4, 18
                  andi         s1, s3, -1223
                  xori         a7, a0, -355
                  srli         s4, a7, 21
                  and          zero, tp, s11
                  slli         s7, s0, 31
                  slt          ra, zero, zero
                  srai         a3, t1, 24
                  sltu         a3, s6, tp
                  nop
                  xor          t2, a2, tp
                  slli         s5, a3, 15
                  andi         tp, a5, 1820
                  sltu         t1, s9, a4
                  or           t1, s1, gp
                  auipc        a0, 982761
                  srai         s10, t4, 1
                  addi         s11, s3, -1826
                  sltiu        tp, s3, 950
                  sltiu        s10, a1, -226
                  xor          zero, t2, ra
                  sltu         gp, a3, sp
                  slt          sp, t5, t2
                  lui          s3, 765147
                  add          a6, t2, t2
                  add          a5, a6, a6
                  nop
                  or           s11, s6, s1
                  slli         s2, s4, 9
                  lui          a0, 929304
                  andi         t5, sp, 563
                  xori         sp, a4, -172
                  srl          s9, s0, zero
                  sltiu        a0, ra, -1102
                  sub          s8, a7, ra
                  lui          sp, 539614
                  sltiu        s8, s10, 1673
                  auipc        gp, 186500
                  nop
                  add          t2, t2, s11
                  addi         s7, zero, -594
                  add          s11, sp, a1
                  slti         s7, zero, -1502
                  sub          t4, s5, s4
                  sltiu        a5, s6, -1153
                  sub          a1, a6, a4
                  sltiu        s11, t1, 79
                  sltu         s6, s2, s3
                  andi         s6, a2, -1029
                  lui          t2, 128974
                  sltiu        t5, s2, 998
                  addi         a2, t5, -402
                  sltiu        t4, a1, 1565
                  srl          a1, a1, s5
                  srl          s2, t2, s6
                  slli         s8, gp, 0
                  andi         gp, ra, -1164
                  sltiu        s1, a2, 910
                  slti         ra, a6, 1669
                  or           a0, s10, s9
                  srai         s4, ra, 1
                  slt          a7, a1, a5
                  sra          t4, a5, s3
                  srli         a3, t6, 20
                  sll          a1, s5, a1
                  sltiu        a5, s10, 1640
                  slt          s5, s4, s0
                  srl          t4, ra, s9
                  slt          s6, s1, a1
                  xor          a2, s11, s11
                  srai         ra, s3, 0
                  srai         s11, a6, 26
                  slt          sp, t6, s9
                  or           a5, s7, s0
                  srli         t0, s7, 8
                  sub          t1, t0, s6
                  xori         s10, a4, 2020
                  srl          t4, s8, zero
                  slt          tp, s4, t6
                  sra          a6, zero, s4
                  add          ra, s10, s11
                  or           s7, t4, s9
                  addi         s2, a4, 827
                  and          t5, a4, ra
                  srli         a1, s1, 5
                  andi         ra, gp, -222
                  xori         s6, a1, -1188
                  sra          s8, a7, gp
                  slti         s10, s11, 488
                  slt          t4, t3, sp
                  or           t1, a2, s9
                  auipc        a3, 744322
                  srai         a5, s8, 1
                  sra          tp, s7, t0
                  sra          s6, t3, t5
                  add          a2, a3, s3
                  sra          s4, zero, tp
                  sub          a0, gp, t5
                  slli         gp, t1, 22
                  slt          t1, s7, s6
                  sltiu        s3, a1, 1905
                  add          t0, a5, a2
                  slti         a5, s5, 1900
                  slli         s8, t3, 29
                  sra          s6, a2, s5
                  and          s7, a0, s1
                  lui          zero, 316512
                  xori         a6, s9, -1558
                  addi         ra, sp, -838
                  nop
                  add          tp, sp, a5
                  or           a5, a4, s0
                  srli         gp, s3, 29
                  ori          s9, s0, 1693
                  sltiu        s9, s1, 1384
                  sll          s6, ra, s7
                  srli         s2, s5, 9
                  add          a7, t3, tp
                  slli         s7, a0, 30
                  srli         t3, a4, 10
                  slti         ra, a2, 521
                  or           tp, s10, s10
                  sra          tp, a1, sp
                  xor          a6, t4, s2
                  and          a5, s2, s5
                  or           s6, s1, t4
                  lui          s5, 539964
                  ori          t2, t0, -591
                  or           zero, t6, a3
                  sltu         a6, a6, a2
                  ori          t3, s2, 987
                  addi         s8, s2, 1836
                  srl          s1, t6, s10
                  andi         t5, s1, 1250
                  srai         t2, s3, 3
                  sltiu        s3, sp, 1835
                  add          t5, s2, ra
                  add          t1, a2, t5
                  lui          a6, 980295
                  and          s10, t1, t2
                  addi         s6, a5, -42
                  srl          s3, a4, t5
                  xori         t1, s9, 1886
                  nop
                  srl          t1, zero, s7
                  lui          zero, 50516
                  sll          gp, s11, t2
                  or           a0, tp, s11
                  la x8, test_done
                  jalr x0, x8, 0
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
                  add x31, x14, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x24, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x24, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x24, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x24, x10, ecall_handler
                  li x10, 0x1
                  beq x24, x10, instr_fault_handler
                  li x10, 0x5
                  beq x24, x10, load_fault_handler
                  li x10, 0x7
                  beq x24, x10, store_fault_handler
                  li x10, 0xc
                  beq x24, x10, pt_fault_handler
                  li x10, 0xd
                  beq x24, x10, pt_fault_handler
                  li x10, 0xf
                  beq x24, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x14, x31, zero
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
                  add x14, x31, zero
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
                  add x14, x31, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x14, x31, zero
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
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x14, x31, zero
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
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x14, x31, zero
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
