.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x2e9cc123
                  li x1, 0xb
                  li x2, 0xf9bcefab
                  li x3, 0xfc25a339
                  li x4, 0xf8d6ed0a
                  li x5, 0xd
                  li x6, 0xb010a50f
                  li x7, 0x80000000
                  li x8, 0xf
                  li x9, 0xe
                  li x10, 0x0
                  li x11, 0xfba10bff
                  li x12, 0x2
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x4
                  li x16, 0x80000000
                  li x17, 0xb
                  li x18, 0x0
                  li x19, 0xf412d790
                  li x20, 0x376582a7
                  li x21, 0x80000000
                  li x22, 0x9
                  li x23, 0x0
                  li x24, 0x80000000
                  li x26, 0x80000000
                  li x28, 0x9
                  li x29, 0xfdff82ed
                  li x30, 0x0
                  li x31, 0x9ff29f35
                  la x25, user_stack_end
main:             li           gp, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s8, 0x0
                  li           tp, 0xffffffff
                  li           t0, 0x0
                  li           s5, 0x80000000
                  li           t3, 0x0
                  li           a7, 0x7297ad8a
                  li           a2, 0x0
                  li           s0, 0xffffffff
                  li           a4, 0x80000000
                  add          s5, tp, t0
                  lui          t0, 940134
                  add          tp, s5, s8
                  auipc        t0, 276480
                  add          gp, a2, s8
                  addi         t0, t3, -1226
                  addi         s5, t0, 333
                  addi         s0, a2, -1518
                  add          gp, s0, a2
                  lui          s8, 808561
                  nop
                  add          gp, a4, a4
                  addi         a2, t0, 1003
                  addi         a7, t0, 688
                  auipc        s0, 592958
                  lui          s0, 979642
                  sub          s0, a2, t3
                  addi         gp, gp, -171
                  nop
                  lui          t0, 127655 #end riscv_int_numeric_corner_stream_15
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t4, 0xa3af6951
                  li           s7, 0x7771d2e3
                  li           t0, 0x0
                  li           t2, 0xffffffff
                  li           s3, 0xffffffff
                  li           s1, 0xffffffff
                  li           a0, 0x0
                  li           gp, 0x0
                  li           a5, 0xffffffff
                  add          t0, a5, s1
                  addi         t2, a5, -523
                  addi         s1, a1, -1724
                  auipc        t0, 990404
                  nop
                  add          a0, gp, a0
                  auipc        gp, 614397
                  add          s7, a1, a5
                  auipc        a0, 370929
                  lui          s3, 754611
                  nop
                  add          s3, s1, t4
                  sub          t0, s1, a5
                  nop
                  addi         s1, s7, -1392
                  nop
                  nop
                  add          t4, s3, a5
                  auipc        s3, 38511
                  nop
                  sub          a0, s3, t4
                  addi         s3, s7, -503
                  sub          gp, s1, s7
                  addi         t0, gp, -53
                  sub          t4, gp, a1
                  sub          a1, t2, a5 #end riscv_int_numeric_corner_stream_8
                  li           sp, 0xe5e45a06 #start riscv_int_numeric_corner_stream_17
                  li           s0, 0xffffffff
                  li           t1, 0x0
                  li           a6, 0xde68a5f4
                  li           s10, 0xffffffff
                  li           t3, 0x0
                  li           a2, 0x9c5f746e
                  li           s6, 0x0
                  li           s1, 0x64343ed8
                  li           t4, 0xffffffff
                  nop
                  auipc        s0, 53503
                  auipc        t1, 719164
                  auipc        s10, 471801
                  sub          t4, t3, s6
                  auipc        s1, 622679
                  nop
                  addi         s6, s1, -1500
                  nop
                  lui          s0, 418853
                  addi         t1, t4, -547
                  sub          s0, s10, a6
                  auipc        s0, 627251
                  lui          s1, 297627
                  add          t4, s1, t1
                  nop
                  lui          t3, 341450
                  addi         s10, s6, -1538
                  add          t4, a2, s10
                  auipc        t1, 241126
                  nop
                  add          sp, s1, s0
                  nop
                  auipc        a2, 551622 #end riscv_int_numeric_corner_stream_17
                  li           a4, 0x708a4828 #start riscv_int_numeric_corner_stream_16
                  li           t1, 0x27b9e1d
                  li           a2, 0xffffffff
                  li           t5, 0x0
                  li           t0, 0x80000000
                  li           t4, 0x0
                  li           s4, 0x80000000
                  li           s1, 0x80000000
                  li           s3, 0xffffffff
                  li           s7, 0x0
                  add          a4, s7, s4
                  add          s4, t1, s4
                  addi         s1, s3, 738
                  lui          s1, 597973
                  nop
                  nop
                  add          t4, s3, t1
                  sub          s7, a4, t4
                  nop
                  addi         a4, s4, 791
                  lui          s3, 509740
                  lui          t0, 896059
                  addi         s1, t4, 1537
                  auipc        s7, 220136
                  addi         t0, a4, 1979 #end riscv_int_numeric_corner_stream_16
                  li           a1, 0x6b9bcebb #start riscv_int_numeric_corner_stream_2
                  li           s3, 0xffffffff
                  li           s5, 0x0
                  li           a5, 0x3e19bdf9
                  li           a6, 0x80000000
                  li           t4, 0x1ce4acd3
                  li           t5, 0x0
                  li           s10, 0x80000000
                  li           ra, 0xffffffff
                  li           a4, 0xffffffff
                  sub          a4, s3, ra
                  add          a4, a6, s5
                  lui          a1, 367720
                  nop
                  addi         s10, a6, -1391
                  add          a1, ra, s3
                  auipc        a6, 192861
                  add          s5, a4, t5
                  addi         s10, a6, -678
                  auipc        a6, 571705
                  auipc        t5, 1035784
                  auipc        t5, 461218
                  sub          a5, s5, t5
                  addi         t5, a1, -1215
                  sub          t4, a4, a4
                  lui          s10, 95255 #end riscv_int_numeric_corner_stream_2
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           t1, 0x0
                  li           a7, 0xffffffff
                  li           gp, 0x0
                  li           t3, 0x80000000
                  li           t6, 0x2109f719
                  li           a0, 0x80000000
                  li           s4, 0xe610c636
                  li           s7, 0xa21e75ee
                  li           a3, 0x0
                  sub          t3, s6, t3
                  sub          s4, t3, a3
                  addi         s7, a3, -1727
                  auipc        gp, 809645
                  sub          s7, t3, gp
                  sub          s7, t3, t3
                  addi         s6, gp, 1964
                  addi         s7, a7, 549
                  sub          s4, a7, s7
                  add          t6, s7, a0
                  nop
                  auipc        gp, 860876
                  sub          t6, t6, s4
                  add          gp, gp, t6
                  nop
                  nop
                  nop
                  nop
                  lui          a0, 254289
                  add          a0, s7, a3
                  nop
                  nop
                  auipc        a0, 289783
                  auipc        s4, 73395
                  sub          a7, a3, a7
                  auipc        a0, 198162
                  nop
                  lui          s7, 966267
                  sub          s4, a7, a3
                  add          gp, a7, t3 #end riscv_int_numeric_corner_stream_3
                  li           s7, 0xf042bda6 #start riscv_int_numeric_corner_stream_12
                  li           a6, 0x80000000
                  li           s8, 0x0
                  li           s1, 0x971491bf
                  li           sp, 0x80000000
                  li           a0, 0x80000000
                  li           s5, 0xffffffff
                  li           a5, 0x80000000
                  li           s4, 0x80000000
                  li           a2, 0x7ecbf7de
                  nop
                  lui          sp, 22508
                  auipc        s7, 284719
                  nop
                  sub          s7, a2, a6
                  sub          a5, s5, s1
                  nop
                  sub          a0, s1, a6
                  addi         s8, a6, -391
                  add          a0, s1, a2
                  sub          sp, s1, a2
                  nop
                  lui          s5, 132118
                  auipc        s5, 105208
                  addi         s8, a6, 1168
                  auipc        a6, 73858
                  nop
                  sub          s5, s8, a0
                  add          sp, a0, a2
                  lui          a2, 946553
                  addi         s5, a2, 257
                  lui          a0, 388058
                  sub          a5, s4, s8 #end riscv_int_numeric_corner_stream_12
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s3, 0xffffffff
                  li           gp, 0x3a4d7722
                  li           t5, 0x0
                  li           a3, 0x80000000
                  li           t2, 0x0
                  li           s10, 0x0
                  li           s8, 0x0
                  li           a6, 0xffffffff
                  li           s7, 0x7eccfd1e
                  lui          s7, 470375
                  add          ra, s7, gp
                  auipc        s8, 846554
                  auipc        ra, 681614
                  nop
                  lui          s10, 622988
                  nop
                  sub          s8, s10, t2
                  addi         s3, a6, 1026
                  addi         s8, gp, 1244
                  add          s10, a3, a6
                  sub          gp, s3, gp
                  nop
                  sub          ra, s7, t2
                  addi         ra, a6, -1931
                  add          s3, s7, s10
                  nop
                  lui          t5, 861350
                  nop
                  add          s3, gp, s3
                  auipc        s8, 462638
                  addi         t5, s8, 1234
                  auipc        s10, 989449
                  nop
                  nop
                  addi         s3, gp, 56
                  nop
                  lui          s7, 658158 #end riscv_int_numeric_corner_stream_1
                  auipc        s0, 179721
                  addi         a3, a6, 1486
                  sll          t5, t3, s5
                  or           s0, a4, a6
                  srai         s1, zero, 24
                  xor          zero, t5, s1
                  sra          s0, s2, t4
                  xor          t4, a2, a7
                  srl          a0, t2, t1
                  xori         s1, s5, -322
                  srai         s1, s7, 31
                  slli         zero, gp, 20
                  sll          s4, s7, t0
                  sll          t0, t6, ra
                  slt          a6, t0, s1
                  srli         ra, t3, 2
                  sltu         s10, s11, ra
                  slti         s8, s3, 1449
                  srl          a7, s6, t6
                  andi         s7, a5, -1445
                  sll          s7, s0, a7
                  or           s4, s8, a4
                  ori          a7, a4, 1280
                  auipc        a2, 270960
                  addi         zero, a6, -1912
                  ori          ra, a4, -1969
                  srl          t0, t4, a4
                  lui          s1, 934234
                  ori          s3, s11, 529
                  sltu         tp, a4, ra
                  and          a4, s6, s6
                  slt          t5, a2, t6
                  slti         s4, zero, 334
                  auipc        t2, 465461
                  slti         s7, s5, 238
                  addi         t5, tp, -1601
                  add          sp, a0, s1
                  srai         t1, t2, 9
                  addi         zero, t0, -1326
                  auipc        a1, 649909
                  srai         t0, tp, 15
                  addi         tp, s5, -33
                  andi         s1, t2, -1218
                  addi         s5, a0, 958
                  andi         zero, tp, 1751
                  andi         t6, gp, 1053
                  nop
                  nop
                  sll          a4, zero, gp
                  sra          a2, a3, s9
                  sub          zero, gp, t2
                  xor          s0, a2, t2
                  sub          t0, s9, s8
                  srli         gp, tp, 22
                  srl          zero, s1, sp
                  auipc        t0, 7931
                  xor          a0, a5, t6
                  srai         a4, a3, 19
                  srai         a1, sp, 18
                  srli         t3, t1, 10
                  slt          s0, s7, s4
                  or           a1, s6, s3
                  nop
                  srl          s7, a0, sp
                  lui          a6, 272650
                  sra          t5, gp, ra
                  sltu         a1, s6, t4
                  andi         t3, a5, -791
                  srai         zero, a6, 22
                  xor          t0, s1, a4
                  slli         a5, t0, 10
                  sltu         a1, t0, tp
                  nop
                  nop
                  sra          s6, a2, a4
                  xor          s5, t2, a2
                  sra          s3, a6, a6
                  or           a6, sp, ra
                  sra          s4, gp, s5
                  slti         a5, s5, -1189
                  nop
                  nop
                  or           s1, zero, s4
                  sub          t3, a2, s11
                  li           a1, 0x4ea3bdda #start riscv_int_numeric_corner_stream_4
                  li           s1, 0xd2d9ba6d
                  li           ra, 0x0
                  li           s6, 0x22ed4302
                  li           t6, 0x0
                  li           a5, 0x0
                  li           s0, 0x0
                  li           a4, 0x0
                  li           t2, 0xffffffff
                  li           t0, 0x579b2174
                  nop
                  lui          a4, 616404
                  nop
                  add          t6, a1, t2
                  sub          s0, s1, a1
                  auipc        s0, 4160
                  nop
                  addi         t2, a4, 1073
                  lui          ra, 848712
                  addi         ra, a5, -468
                  addi         t2, s1, 1884
                  auipc        t0, 343083
                  addi         a5, a1, -1227
                  sub          s0, t6, a5
                  add          t0, a1, a5
                  sub          t2, s1, a4
                  auipc        a5, 316276
                  nop #end riscv_int_numeric_corner_stream_4
                  sra          ra, zero, s3
                  slli         a5, t5, 13
                  xor          t3, t2, s9
                  sra          a4, s2, s5
                  add          ra, s6, tp
                  srai         t0, a1, 16
                  auipc        t3, 68201
                  slt          a5, t4, a1
                  add          a0, s6, s8
                  andi         ra, t4, 1712
                  or           gp, s3, s1
                  sltiu        s3, t6, -1899
                  add          s6, a5, a1
                  srl          a1, t0, t5
                  sll          a6, s10, s8
                  srai         zero, t2, 7
                  sub          t6, zero, t1
                  sub          a5, zero, a6
                  slti         s1, t0, -1217
                  nop
                  srl          t4, tp, t1
                  sll          s4, s7, tp
                  xori         s5, s9, 1812
                  sll          s8, a2, ra
                  sltiu        s3, s3, 884
                  slt          a6, sp, ra
                  xori         s10, t1, -1374
                  auipc        s5, 562904
                  slti         tp, a0, 225
                  addi         sp, a1, 1889
                  add          a2, s10, s2
                  srai         t1, t2, 2
                  slt          s5, s6, gp
                  ori          s4, s8, -1951
                  xori         s1, s11, 1312
                  srai         a7, s11, 0
                  sltu         a2, t1, tp
                  and          a6, a5, t6
                  nop
                  andi         t2, sp, -1769
                  addi         s7, t0, 396
                  addi         a3, t6, -286
                  sll          s6, s9, gp
                  or           t3, tp, a0
                  sltu         a5, a6, s9
                  xori         s10, a2, 1730
                  srai         s0, a6, 16
                  slli         sp, s2, 8
                  sub          s6, s6, t0
                  srl          t5, a5, s0
                  xori         t2, sp, 1937
                  lui          zero, 214680
                  srai         t6, s11, 27
                  sltu         a5, a2, t6
                  srl          t0, s3, t5
                  srli         a6, s7, 18
                  slli         a0, t4, 24
                  andi         a0, t1, 1801
                  or           a4, a1, a4
                  srai         t2, s8, 30
                  auipc        a6, 104789
                  lui          a6, 290847
                  nop
                  slli         t3, a0, 27
                  srl          zero, s6, s6
                  or           t5, t5, t4
                  ori          a2, t0, 119
                  addi         gp, s0, -408
                  srl          t0, s6, t4
                  xor          t6, sp, s8
                  slti         sp, t2, -445
                  slt          s4, a5, s7
                  sll          s5, a6, t0
                  srli         a4, s11, 18
                  addi         a0, a4, 1174
                  srai         gp, t3, 9
                  srli         s3, s2, 10
                  srl          s10, a2, a3
                  sub          s8, gp, sp
                  lui          a3, 921081
                  slli         t0, zero, 22
                  auipc        t1, 6589
                  andi         sp, s5, -671
                  or           s8, a1, s3
                  lui          s10, 665802
                  srl          s3, t3, t4
                  lui          zero, 978669
                  auipc        s6, 409148
                  slt          t1, s4, t0
                  nop
                  slt          a1, s3, s8
                  andi         ra, a3, -1778
                  slt          t0, a5, s5
                  slt          ra, a0, s6
                  slli         t4, s3, 2
                  andi         s5, s1, -1853
                  slli         a3, a6, 25
                  andi         t0, t2, -923
                  sll          a6, a1, s8
                  and          gp, t2, s5
                  lui          tp, 236822
                  auipc        s10, 336523
                  slt          s5, ra, t0
                  sra          sp, t2, t2
                  xor          a7, gp, t5
                  srl          t2, t2, zero
                  add          t2, gp, s4
                  slti         s5, s11, -1233
                  sll          t1, s4, s0
                  slti         zero, gp, 282
                  xor          a1, t1, s4
                  srli         a1, tp, 24
                  andi         zero, t1, -1866
                  srai         a2, s10, 26
                  srli         s3, t4, 29
                  slt          a0, t4, s3
                  sub          t0, s7, s8
                  xor          a1, a7, s0
                  or           a1, a1, a2
                  auipc        t6, 169811
                  sll          a0, t3, gp
                  sra          a4, t6, gp
                  sltiu        s6, t6, -37
                  sra          ra, sp, s2
                  lui          t1, 980877
                  nop
                  srl          gp, s0, s8
                  sltu         t5, a4, ra
                  nop
                  addi         s7, s0, -904
                  auipc        s8, 855894
                  slt          zero, sp, a0
                  slt          tp, tp, s2
                  srli         t6, s9, 3
                  srli         a5, a6, 10
                  sltu         t6, s4, tp
                  or           t4, sp, a3
                  add          a5, a1, a6
                  xor          gp, t2, s3
                  nop
                  sub          sp, t4, t5
                  or           t2, t2, a4
                  sltiu        s10, a5, 392
                  addi         t4, tp, -1753
                  andi         s5, s2, -1787
                  sltu         t1, s6, sp
                  andi         s10, a4, 1466
                  sltu         zero, zero, t5
                  xori         zero, a0, -1556
                  and          t1, a7, t1
                  addi         tp, s11, -858
                  slt          s1, s11, s8
                  srai         t6, s5, 8
                  sll          s5, tp, t4
                  slti         s4, s9, 1867
                  sltu         a2, a0, t0
                  andi         s4, tp, -282
                  add          a3, s11, tp
                  auipc        a5, 395369
                  auipc        t3, 706426
                  sltu         s6, zero, gp
                  andi         s5, a1, 834
                  and          sp, s8, a0
                  ori          s0, sp, -1092
                  ori          s6, s11, 1414
                  srli         s0, zero, 21
                  sub          gp, a1, s4
                  lui          gp, 702289
                  slli         a6, a6, 27
                  ori          a3, s8, 964
                  nop
                  xor          a1, t2, s10
                  slti         t4, s5, 734
                  nop
                  addi         t3, t5, 1655
                  slti         t4, t3, 2005
                  sltu         s8, a2, sp
                  xori         a6, s6, -1565
                  lui          a7, 908639
                  sll          t2, a3, s0
                  sra          a4, a0, t5
                  ori          t5, t0, -1523
                  slti         t1, t5, -1990
                  sub          ra, t5, a4
                  sll          t3, s10, s5
                  srl          gp, a4, s8
                  auipc        a5, 930041
                  andi         s4, s5, -1568
                  auipc        s5, 293253
                  auipc        t3, 541479
                  xori         s10, t4, -608
                  sltiu        s0, a1, -1820
                  sra          s4, a5, s8
                  sll          a7, sp, ra
                  auipc        a1, 738515
                  andi         t3, gp, 965
                  and          t6, s2, t6
                  sltu         t4, t0, t5
                  srl          s0, t4, t1
                  auipc        s5, 1046466
                  srai         s0, ra, 26
                  and          sp, s0, s11
                  add          t3, tp, s3
                  nop
                  slti         s3, s8, 26
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a7, 0x80000000
                  li           s1, 0xffffffff
                  li           a3, 0x80000000
                  li           t6, 0x80000000
                  li           a2, 0xffffffff
                  li           s0, 0x987bee8e
                  li           s5, 0xffffffff
                  li           t3, 0x0
                  li           t5, 0x0
                  lui          a3, 689187
                  nop
                  add          s0, s5, t6
                  sub          gp, a2, t5
                  nop
                  lui          gp, 940427
                  nop
                  lui          a7, 1017458
                  lui          a2, 194051
                  add          s1, t3, t5
                  sub          s5, gp, t5
                  lui          a2, 570507
                  addi         a7, a2, -893
                  auipc        s5, 206897
                  lui          s5, 7845
                  auipc        gp, 470199
                  addi         t6, a2, 1819
                  addi         t5, s1, -1751 #end riscv_int_numeric_corner_stream_13
                  sra          s6, a3, a6
                  xor          t3, zero, t1
                  andi         t6, s10, 1269
                  and          a1, s2, a5
                  slli         s10, t6, 11
                  and          a3, zero, s11
                  sub          s1, ra, a3
                  addi         s6, t5, 1862
                  srai         s0, a2, 4
                  sub          a3, a5, zero
                  or           sp, s6, s6
                  srai         t6, a3, 0
                  add          s1, zero, s10
                  add          t4, t3, s10
                  addi         s10, s0, 1716
                  srli         t4, gp, 22
                  sll          a5, sp, s4
                  sltiu        s3, s1, 526
                  sll          ra, gp, s5
                  ori          s5, s10, 1729
                  add          s0, t0, s6
                  sra          s8, s6, a4
                  srai         s1, s5, 29
                  nop
                  ori          s6, s0, 1306
                  nop
                  addi         t2, a3, 188
                  srai         a1, t3, 20
                  and          sp, zero, t4
                  sll          s10, s2, tp
                  sub          t4, a6, ra
                  addi         a7, t3, 1441
                  slti         s8, ra, -794
                  nop
                  nop
                  xor          a4, s5, s11
                  slti         a3, t1, 1381
                  srai         s4, a7, 15
                  slt          t3, t1, s10
                  xori         t3, s6, -1966
                  srli         s3, s7, 22
                  sra          t4, s4, t6
                  add          tp, s9, t6
                  srai         s5, zero, 16
                  sub          s6, t6, t1
                  lui          s6, 680456
                  auipc        a4, 372890
                  addi         t4, a0, -1174
                  slt          a1, s5, s4
                  and          a2, s10, s3
                  sub          a2, s8, a0
                  lui          s5, 664826
                  sll          s10, s2, s5
                  add          zero, a1, a5
                  andi         zero, a5, -1185
                  lui          s4, 765229
                  slti         s4, s11, -1007
                  add          a3, t0, t3
                  sub          t0, s11, t6
                  auipc        t2, 951964
                  slti         s7, s1, 443
                  lui          sp, 534136
                  lui          zero, 622175
                  add          s4, s6, tp
                  or           a7, t2, t1
                  slti         a4, s10, 300
                  srli         s5, a5, 4
                  sltu         t2, t3, t2
                  srai         a6, s9, 26
                  addi         s5, sp, -321
                  sra          s0, ra, a7
                  srli         sp, a4, 23
                  sltu         s3, t0, t4
                  slli         gp, t4, 11
                  srl          a6, s8, s1
                  add          s1, s10, a2
                  auipc        s1, 613095
                  slt          s3, s8, a5
                  sltiu        t5, a2, -188
                  xori         t2, ra, -694
                  srl          a7, a2, s10
                  andi         s1, t4, 1725
                  srli         t0, a5, 29
                  xori         t2, t3, 1578
                  nop
                  andi         a2, s0, 359
                  add          t1, t5, s8
                  nop
                  sra          t4, s11, s4
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           gp, 0xffffffff
                  li           a1, 0xffffffff
                  li           tp, 0xf00f76be
                  li           s1, 0x80000000
                  li           a0, 0xab178877
                  li           ra, 0x2f3e3d69
                  li           t6, 0xffffffff
                  li           t1, 0x80000000
                  li           a7, 0xffffffff
                  auipc        s1, 587538
                  nop
                  lui          a0, 447990
                  addi         a0, a0, -945
                  lui          s5, 25236
                  auipc        a1, 115206
                  lui          s5, 621013
                  sub          s5, a0, tp
                  sub          gp, gp, gp
                  add          a7, t1, s1
                  lui          a0, 900845
                  sub          a1, a0, a7
                  addi         a1, a7, -229
                  addi         t6, ra, -1925
                  lui          gp, 240716
                  auipc        t1, 738495
                  auipc        gp, 527906
                  nop
                  nop
                  lui          s5, 317044 #end riscv_int_numeric_corner_stream_14
                  lui          t6, 975776
                  addi         sp, t6, 1110
                  add          s0, sp, a2
                  sltiu        t1, a4, -1183
                  ori          a5, a3, -925
                  sra          ra, s6, s10
                  and          s0, s7, s6
                  slt          a6, sp, t0
                  sltiu        s6, s0, 42
                  slt          s5, gp, a4
                  and          a1, a4, s3
                  sltiu        s7, s5, 1026
                  and          a4, a3, s7
                  sltu         t2, s0, t5
                  slli         s4, s4, 6
                  auipc        a3, 927045
                  sub          t5, ra, a1
                  slt          t4, t1, t2
                  slli         t2, t0, 20
                  srl          s7, tp, t4
                  nop
                  add          s4, tp, s0
                  xori         t2, s10, -1639
                  andi         s10, s9, 1288
                  nop
                  xor          s6, s5, s7
                  slti         s7, t5, 1550
                  xor          t1, s2, s5
                  xor          a0, s4, ra
                  nop
                  xor          t6, s4, t6
                  andi         a7, ra, -1988
                  slli         s1, t4, 19
                  srai         s5, a4, 7
                  sra          t4, a3, tp
                  srl          a7, s5, s4
                  sltiu        a7, a0, 1674
                  sltu         a1, tp, s4
                  xori         a3, t4, -1678
                  srai         gp, a4, 28
                  auipc        a3, 303399
                  slli         s1, s5, 14
                  xori         s6, a0, 1394
                  nop
                  slti         t1, t1, -455
                  sll          t1, tp, a2
                  addi         a5, a4, -2003
                  xori         a2, t4, 1122
                  andi         a3, a0, 986
                  ori          t1, s1, -136
                  slti         s8, t3, -1197
                  xori         a1, s0, -1745
                  sltu         s1, a0, t6
                  slt          t5, t4, a4
                  xor          zero, s6, s1
                  ori          s3, s6, 719
                  sltu         tp, a0, t1
                  srli         gp, a4, 23
                  slti         t5, a7, 697
                  nop
                  xor          s10, t5, s6
                  srli         gp, a3, 14
                  srli         t3, t6, 15
                  lui          s6, 710032
                  and          s6, ra, s9
                  andi         s10, t0, 1534
                  xor          s5, s3, s1
                  ori          s10, tp, -726
                  ori          t3, s7, 281
                  sra          s5, s6, s3
                  ori          a4, s4, 357
                  auipc        a1, 444628
                  sra          t2, s3, t6
                  sltiu        sp, t4, 732
                  slli         s8, t0, 26
                  sub          a3, t5, zero
                  or           s7, zero, s7
                  sub          a5, t4, s5
                  srai         gp, s5, 25
                  xori         a2, s6, 900
                  auipc        t6, 563367
                  xor          s0, s10, a4
                  xor          a2, gp, a4
                  slti         ra, a2, 2015
                  addi         s3, t5, 449
                  auipc        a1, 926622
                  or           a0, t5, t6
                  srli         s10, s7, 30
                  and          a4, s0, s9
                  and          t6, a7, s11
                  and          t5, zero, a6
                  slt          zero, s3, a7
                  lui          t5, 473650
                  sub          t0, s4, t0
                  slt          t2, t3, a1
                  sltu         s1, tp, t3
                  slli         a1, a3, 8
                  slli         s7, a0, 30
                  sub          zero, s8, s6
                  slt          s1, ra, s1
                  add          t6, t1, s1
                  add          a0, t0, zero
                  ori          ra, s10, 821
                  srli         a0, t4, 14
                  ori          t4, s6, 804
                  auipc        zero, 590595
                  or           a0, s8, zero
                  sll          t6, a7, a3
                  add          a6, t4, t5
                  andi         a5, sp, -958
                  sltiu        t6, s4, 2044
                  auipc        ra, 28387
                  xor          a2, s2, t4
                  srai         s6, s3, 26
                  sltu         s3, s10, t5
                  addi         s1, s2, 693
                  slti         s3, tp, -1937
                  xori         s0, s10, -364
                  lui          t1, 366235
                  slt          a4, s9, s1
                  lui          a7, 464542
                  sra          t5, sp, s0
                  slli         a0, t4, 18
                  sltu         t2, t5, a7
                  addi         s7, a2, -1720
                  slt          t2, tp, a0
                  or           s7, s4, s4
                  or           a1, s11, a2
                  srai         ra, a0, 10
                  srli         a0, t2, 1
                  andi         a0, s5, 1565
                  sub          gp, a1, sp
                  sltiu        s5, t4, -1059
                  sltu         s0, zero, a7
                  sltu         gp, t4, tp
                  sltiu        s1, a7, 1621
                  srl          t4, s3, s6
                  andi         sp, t4, -96
                  sub          t5, a6, a6
                  sub          a1, s6, t0
                  nop
                  addi         s0, s10, 1762
                  srl          s6, a2, t5
                  srli         s7, a1, 7
                  nop
                  slt          t0, s11, a6
                  auipc        a3, 170954
                  addi         s1, gp, -477
                  andi         a2, sp, -19
                  andi         t2, a5, 303
                  ori          ra, t2, 1822
                  slt          a3, a5, t3
                  sltu         a4, t0, s0
                  xor          a0, s8, s1
                  nop
                  add          zero, ra, t6
                  add          sp, s1, a4
                  srai         t1, a1, 15
                  ori          a7, ra, 1912
                  andi         s10, t0, -1603
                  sltiu        a0, s7, 15
                  auipc        t6, 890850
                  slti         s7, zero, -327
                  slti         t5, a5, 240
                  lui          sp, 654291
                  srai         t1, s3, 12
                  slt          s5, s11, s3
                  slt          t0, a4, s7
                  sub          t6, s6, s1
                  sll          a7, t2, s8
                  and          a2, zero, s6
                  nop
                  slt          s8, s2, zero
                  sll          s7, a0, t3
                  slti         a7, tp, -1681
                  xori         a3, t3, 1808
                  nop
                  add          t0, s1, a7
                  andi         s6, tp, 649
                  addi         a2, ra, 1293
                  andi         a7, a5, -1251
                  srli         a2, t1, 24
                  slti         s5, a0, 70
                  addi         a7, t1, 1285
                  or           a7, s10, a1
                  add          a7, a0, t4
                  sll          a5, s8, a3
                  sltiu        t2, s5, -899
                  sra          gp, gp, a4
                  sra          s6, sp, a6
                  slli         sp, s2, 11
                  sltu         zero, a5, s4
                  addi         a2, ra, 36
                  slli         s1, gp, 14
                  sltu         s1, t2, t0
                  andi         a1, a4, -1132
                  sltiu        a0, a7, 742
                  and          a7, t2, ra
                  srai         sp, a4, 31
                  and          s6, a6, s2
                  xor          a0, s10, t6
                  sra          zero, a1, t1
                  srli         s3, gp, 26
                  lui          sp, 20374
                  xori         a4, a3, 85
                  andi         sp, a5, -705
                  sub          a1, sp, t0
                  andi         ra, gp, -447
                  nop
                  sub          a1, t0, t1
                  srl          a3, a6, s4
                  sltiu        s10, s6, -887
                  andi         t0, a0, -550
                  sll          s6, a0, t4
                  slli         a5, s11, 17
                  and          s8, t3, a0
                  xor          sp, gp, s7
                  sll          s1, a3, s4
                  srai         t0, s8, 9
                  srai         tp, t3, 22
                  sub          a4, a0, s10
                  xori         s1, s10, -1507
                  lui          a1, 918242
                  srai         s8, t5, 4
                  and          tp, s11, s10
                  add          a7, t2, sp
                  or           t4, t4, a4
                  slli         a5, sp, 30
                  auipc        t3, 905386
                  sll          a7, s1, t0
                  and          zero, a6, gp
                  slti         ra, t5, -730
                  sub          a6, t6, s9
                  and          s7, s9, s10
                  slti         tp, t6, -557
                  srai         a4, t0, 20
                  sra          gp, s9, s4
                  srli         s4, s4, 23
                  srli         s7, s2, 18
                  sra          t3, gp, gp
                  srai         gp, a6, 8
                  slli         t5, s1, 9
                  slt          t1, a1, zero
                  slti         gp, t6, -1567
                  auipc        a7, 1008135
                  and          a3, t5, s6
                  addi         a7, s5, -197
                  sra          t0, s1, t6
                  nop
                  sltiu        a2, a4, 923
                  srai         a5, s4, 13
                  sub          zero, t1, t4
                  sltiu        a5, gp, -1669
                  sra          a4, s3, s11
                  sub          s1, a0, s2
                  ori          a4, s4, -19
                  slt          s0, a3, t1
                  auipc        s3, 410143
                  nop
                  sltiu        zero, t1, 10
                  slti         a6, s1, -169
                  nop
                  xori         s10, s8, -794
                  add          a4, s5, t0
                  nop
                  slt          s10, a4, a7
                  ori          a1, s7, -570
                  slti         s3, s5, 1960
                  slt          t4, s8, s2
                  srli         a0, s8, 12
                  add          s8, t1, s9
                  nop
                  ori          t6, t3, -329
                  srl          s6, s6, s10
                  slli         a3, a7, 30
                  sub          t3, s6, s8
                  slli         t0, t4, 1
                  auipc        s5, 964
                  sltiu        t4, t4, 1680
                  lui          t3, 697666
                  or           a1, a5, s3
                  sll          s6, t1, s11
                  slli         s5, a0, 23
                  addi         ra, gp, 671
                  auipc        a5, 430537
                  slti         s10, sp, 1326
                  srl          tp, t6, a6
                  auipc        s0, 600794
                  nop
                  sra          s1, s4, t3
                  addi         t6, t5, -1861
                  slti         a1, t6, 791
                  nop
                  slt          gp, gp, t6
                  ori          a4, a7, -1618
                  and          a5, s7, t5
                  slti         a1, s9, -209
                  auipc        s4, 24222
                  slli         a1, s11, 0
                  nop
                  xor          zero, s4, s7
                  andi         t2, s11, -225
                  or           s5, s9, s8
                  addi         tp, ra, 308
                  nop
                  srli         t3, s5, 4
                  xor          s7, s7, tp
                  srai         a0, a5, 6
                  slti         a4, s9, 1149
                  slt          a5, s11, a1
                  sll          s10, s2, s8
                  addi         t5, s10, 180
                  addi         ra, t3, -244
                  andi         a7, t0, 930
                  nop
                  sra          s0, s10, sp
                  srl          s4, a0, a7
                  addi         s7, a5, -1790
                  xori         t0, a3, 745
                  ori          t3, t2, -1985
                  andi         s8, s2, -293
                  srli         t4, a2, 4
                  xor          s5, a7, s1
                  srl          a1, a2, sp
                  nop
                  sltiu        tp, sp, -967
                  sra          s4, t3, s3
                  lui          t3, 509298
                  slt          s10, s1, t4
                  sub          a0, t0, a7
                  lui          tp, 1030634
                  sll          a4, a1, t5
                  sra          t2, s9, a6
                  and          s5, s3, t0
                  sub          a6, a5, s6
                  xori         t4, s0, -1435
                  sltu         s4, s1, zero
                  xor          a1, a1, a6
                  and          t0, a2, a2
                  auipc        s1, 202396
                  srli         a2, a3, 16
                  slti         s7, t0, 628
                  and          s10, a6, s2
                  auipc        t2, 233764
                  slt          s0, a0, s9
                  srl          s7, a2, s7
                  sltiu        a7, gp, -1614
                  xor          a3, s5, zero
                  sub          t4, gp, s7
                  andi         s0, s6, 1243
                  andi         tp, a3, -634
                  srl          a4, t0, a3
                  sltiu        a7, s10, 1243
                  sltu         a5, s3, t5
                  slli         a3, a2, 22
                  and          s5, t3, a5
                  srai         s1, tp, 6
                  xori         t2, ra, 1186
                  nop
                  and          t6, a3, t6
                  srli         s3, a7, 26
                  ori          t4, s6, -1315
                  sll          gp, sp, s8
                  andi         a7, a6, 294
                  xor          a3, zero, t5
                  or           t4, s8, a1
                  or           a3, s10, s0
                  sub          s3, a7, s10
                  sub          a2, s4, gp
                  and          tp, s7, s10
                  add          s4, s1, s6
                  or           zero, t0, t4
                  auipc        s6, 259357
                  addi         zero, s11, -911
                  srli         a2, s8, 30
                  srl          t6, a6, t6
                  xori         s4, zero, -697
                  srli         s0, a6, 8
                  nop
                  sra          s1, a0, s8
                  srli         zero, s11, 25
                  and          ra, a0, a0
                  slti         ra, t0, -877
                  sltu         t1, a3, s0
                  lui          s3, 89564
                  sll          s1, s11, a5
                  srai         t1, a6, 15
                  srl          s0, s6, s11
                  sltiu        s1, tp, 1917
                  sltiu        s4, tp, 772
                  sltiu        s6, a4, -1918
                  sltiu        s7, sp, -521
                  slti         t5, zero, 224
                  slli         t6, s4, 4
                  srl          a2, s5, a5
                  srli         s1, a0, 9
                  add          t5, a0, a7
                  sltu         a2, s0, t0
                  auipc        a7, 734018
                  nop
                  xor          zero, t5, a7
                  slli         t2, s1, 24
                  srai         t2, s6, 19
                  add          a2, a1, s9
                  srl          t4, s10, a1
                  add          zero, t2, t2
                  xori         t0, a7, -149
                  srli         t3, t0, 22
                  sll          zero, s11, s3
                  or           s5, t4, t1
                  nop
                  ori          s7, gp, -1527
                  xori         s7, ra, 1326
                  sra          s8, tp, s7
                  lui          t3, 683924
                  srl          a5, a1, t4
                  nop
                  xori         ra, s2, -455
                  slli         a6, tp, 25
                  auipc        a7, 642875
                  add          t6, s3, t6
                  nop
                  add          s8, t4, ra
                  and          a4, a2, s9
                  ori          a5, sp, 27
                  xori         a5, s6, -1797
                  slti         a7, s3, 655
                  andi         gp, t5, -354
                  srai         t4, s6, 24
                  slt          s4, t5, sp
                  srl          a2, tp, t2
                  add          zero, s2, s2
                  nop
                  andi         ra, a3, 1295
                  slli         s5, s1, 22
                  srl          t4, a3, s2
                  andi         gp, a1, 358
                  auipc        s1, 711063
                  sltiu        s3, s4, 2035
                  slt          sp, s9, t0
                  sll          s8, s11, s2
                  sub          t2, t0, a4
                  sltiu        a1, s1, -1237
                  ori          t5, s1, -1435
                  slli         s5, zero, 26
                  lui          tp, 345009
                  xori         a7, t2, 1982
                  slti         a5, s1, -1888
                  xor          a2, t1, a0
                  or           s5, a4, a1
                  srl          a5, gp, s10
                  sra          tp, s0, a4
                  andi         t0, t1, -5
                  and          s7, a2, t0
                  slt          s10, s5, a1
                  slli         t5, t3, 16
                  sltiu        t0, sp, 410
                  sltiu        tp, t1, 1605
                  ori          t5, t4, 194
                  slli         s5, s10, 6
                  ori          s10, t4, -1474
                  sra          s1, t1, s1
                  xori         gp, a1, 382
                  or           t2, s5, s0
                  sub          sp, t0, s10
                  add          t2, ra, a3
                  slli         t5, a2, 8
                  xori         a0, zero, 1998
                  nop
                  and          s5, s7, sp
                  sub          gp, s9, s0
                  srli         t2, zero, 9
                  andi         t3, s6, 1337
                  sltiu        t1, t4, 2044
                  and          s6, t5, t3
                  nop
                  or           s6, s11, t5
                  or           a2, t3, tp
                  xori         t0, tp, -338
                  srai         tp, s6, 11
                  sltu         s1, s3, a5
                  srl          t6, s10, s9
                  slt          a5, a3, a6
                  sub          s7, t1, tp
                  sltiu        a5, s11, -702
                  nop
                  srai         a2, s6, 19
                  sltiu        a4, a4, -1653
                  sub          a6, a0, s6
                  or           tp, ra, s7
                  lui          a5, 440587
                  lui          a7, 782170
                  slli         a4, a1, 3
                  ori          a7, sp, -227
                  srli         a1, s4, 10
                  slli         tp, a3, 13
                  sltu         t1, s11, t1
                  xor          tp, t0, s3
                  srl          s0, s10, a2
                  and          a5, t3, t3
                  srl          a5, ra, a3
                  andi         s6, t1, 712
                  sltu         sp, a7, s4
                  and          a5, s6, t4
                  sub          sp, ra, a5
                  slti         a3, t3, 48
                  xor          s0, t0, a4
                  sltiu        t5, a1, -1410
                  srl          gp, a1, t6
                  sub          t5, zero, zero
                  addi         a7, tp, -1934
                  srl          gp, gp, s5
                  sra          s6, s7, a7
                  sll          a2, t5, s9
                  slti         s8, a1, 1042
                  add          t6, a7, t3
                  sltiu        a0, a0, -1426
                  slli         tp, a5, 15
                  slti         s3, a4, -914
                  slli         a6, t5, 9
                  andi         s1, s7, -1012
                  sra          t5, s8, a6
                  slti         t4, a6, -970
                  slli         t6, s5, 2
                  sltiu        a2, s3, -857
                  addi         gp, s8, -143
                  slti         s5, t5, 381
                  xor          a3, gp, a0
                  andi         s8, s3, 332
                  ori          ra, t4, -428
                  sub          t4, a2, s9
                  srai         a1, t5, 31
                  srli         a6, t4, 20
                  nop
                  and          t3, t1, s9
                  add          t1, a0, t6
                  sltu         s6, s10, s0
                  slti         zero, ra, 1725
                  sltiu        s8, a0, 1519
                  add          s7, s1, s8
                  xor          a3, t4, a0
                  srai         s7, a3, 20
                  or           sp, s4, a1
                  slli         ra, a2, 2
                  or           s4, a7, s10
                  slt          s1, a6, s1
                  auipc        t1, 933470
                  nop
                  srai         s10, s9, 15
                  slti         tp, a0, -358
                  add          a3, a2, s2
                  add          s10, sp, s3
                  auipc        s0, 195040
                  slli         tp, zero, 25
                  slli         ra, a6, 17
                  addi         gp, tp, -387
                  slt          s0, a1, tp
                  nop
                  add          t0, s4, s0
                  sll          t6, s6, s0
                  sub          t6, t0, t6
                  sltiu        ra, s11, -1658
                  sra          a1, t5, t1
                  and          s3, a1, s9
                  ori          s3, s10, 924
                  srli         s3, s7, 23
                  sltu         t4, s5, tp
                  and          ra, ra, t4
                  andi         a5, t6, 960
                  auipc        zero, 752777
                  slli         a5, zero, 12
                  auipc        t2, 90437
                  or           t4, s5, a1
                  xori         a4, s1, 350
                  add          s6, t4, t2
                  lui          t1, 549637
                  ori          a7, s8, 295
                  srai         t5, sp, 17
                  ori          t3, s9, 776
                  sra          t0, s1, t5
                  srai         t4, s10, 29
                  srl          s8, s9, a2
                  xor          a4, tp, s9
                  sll          s8, s0, s3
                  srl          sp, t2, a7
                  xori         a7, t2, 270
                  sub          s6, a6, s2
                  nop
                  slt          a0, t0, s10
                  auipc        t6, 232108
                  srai         t5, gp, 12
                  ori          tp, ra, -1432
                  srl          a1, s4, s0
                  sltiu        t1, a6, 1162
                  nop
                  sltiu        a6, s5, -891
                  nop
                  xor          s8, s3, a3
                  sltu         a1, s11, s5
                  andi         s5, s1, 237
                  slli         s1, s7, 22
                  auipc        a4, 798316
                  or           t6, tp, gp
                  ori          a5, s8, 1877
                  xori         t4, s3, 1984
                  lui          a1, 784429
                  slt          tp, s1, s5
                  sra          zero, s8, s6
                  xori         ra, sp, -700
                  xori         zero, a5, -1889
                  add          gp, s5, s9
                  xor          tp, a2, a3
                  sll          t3, s4, s5
                  xor          t5, sp, t4
                  sub          t4, s10, a7
                  sll          t5, t5, t1
                  sll          a5, s4, sp
                  or           a1, s2, s2
                  slt          s0, s0, s8
                  add          s7, s7, s1
                  ori          s6, s2, 1535
                  sltu         a7, t5, sp
                  sra          s10, t5, s10
                  auipc        s0, 784940
                  ori          a4, t3, 1002
                  lui          s3, 425217
                  sltiu        s4, a7, -128
                  sltiu        t0, s6, 1171
                  nop
                  nop
                  nop
                  slli         s0, s11, 20
                  nop
                  sra          a5, t0, a6
                  xor          t3, s9, zero
                  auipc        t4, 375935
                  and          t2, t3, a0
                  add          a6, s5, a2
                  ori          a6, t4, 1178
                  nop
                  add          a5, a3, a4
                  andi         s1, s11, -1908
                  sltu         s8, a4, s8
                  xor          t1, t3, a6
                  sltiu        sp, a6, -102
                  slli         a4, gp, 14
                  lui          t6, 1022499
                  ori          a5, t4, 2001
                  srai         gp, s8, 4
                  sra          t0, a4, a1
                  addi         a4, s9, -913
                  sltu         s7, s5, ra
                  srl          t3, t3, tp
                  auipc        zero, 997508
                  sub          t4, t0, a3
                  sltiu        s0, t6, 443
                  srai         zero, t5, 20
                  add          zero, s3, gp
                  slt          s8, s1, s3
                  addi         s10, s10, 1881
                  xori         s1, s2, -190
                  add          s10, sp, s0
                  ori          a6, s3, -1322
                  slt          t5, s1, s1
                  andi         t4, a4, -1775
                  auipc        s8, 994825
                  sra          t1, t3, s8
                  sll          s3, s2, a7
                  nop
                  addi         t5, s3, 1478
                  sltiu        s7, a6, 416
                  addi         s6, s8, -659
                  srai         t1, s4, 12
                  sub          s0, t4, t1
                  srl          gp, tp, a7
                  andi         t5, sp, 2012
                  sub          gp, t1, s7
                  auipc        t3, 501899
                  sra          zero, t4, ra
                  nop
                  sub          s8, t6, a6
                  add          s7, s6, s0
                  slti         a4, t1, 1460
                  andi         s5, s6, -240
                  slli         t5, s2, 13
                  slt          t4, s7, sp
                  sltiu        s6, a7, -1213
                  or           s8, s2, t0
                  sltu         a4, s0, a7
                  slt          t0, a7, t4
                  andi         a3, s7, -637
                  addi         t6, s2, -1888
                  sub          s0, s4, sp
                  sub          a2, a1, a5
                  andi         s7, t5, -58
                  addi         s0, gp, 2037
                  srli         s7, a3, 27
                  ori          sp, ra, 1341
                  slti         s3, a7, 382
                  srli         a4, a6, 24
                  sll          s5, s1, a3
                  nop
                  auipc        s5, 93868
                  slt          s6, t3, a5
                  srli         gp, t4, 4
                  xor          a6, tp, tp
                  sltu         a4, t0, t3
                  add          s0, a7, s5
                  srli         t5, s1, 28
                  slti         sp, t3, 1626
                  sub          a4, s4, s11
                  sltu         t2, t1, s11
                  xori         a6, s0, -1858
                  sll          s10, s0, a7
                  nop
                  sra          t0, t1, gp
                  slt          t5, s2, s4
                  slt          a3, t4, a4
                  xori         sp, s4, 1349
                  sra          s8, a1, s1
                  andi         t4, tp, 1654
                  ori          t3, ra, -224
                  slli         s1, a0, 15
                  add          s3, s3, s8
                  xor          t2, t4, s6
                  sltiu        sp, a7, -71
                  sub          s5, tp, a3
                  srai         s10, t1, 14
                  sltu         s1, t4, s7
                  lui          s6, 313062
                  and          s7, s2, t6
                  add          a7, s2, t0
                  sltu         s10, s6, s4
                  slli         s1, s2, 2
                  nop
                  slt          ra, s8, t3
                  xori         gp, s6, -570
                  sltiu        t2, t6, -276
                  auipc        a0, 942089
                  srli         t3, t1, 26
                  slt          t3, s9, s9
                  xori         t1, ra, -963
                  add          a1, s1, t0
                  xori         t0, a7, -840
                  sub          s7, a0, s4
                  srl          tp, s9, s3
                  sub          a6, s6, a4
                  slli         sp, tp, 13
                  xori         t0, s0, 701
                  srli         a5, s1, 7
                  sltiu        t0, s7, 1020
                  sltiu        a1, s4, 890
                  andi         s10, s3, -157
                  and          s1, tp, s9
                  slli         a6, s3, 7
                  auipc        gp, 1042240
                  slti         t1, t5, -1983
                  nop
                  srli         tp, ra, 26
                  lui          a1, 714376
                  sub          a5, t2, a3
                  auipc        s6, 40739
                  ori          s4, a3, 1786
                  slli         a4, a1, 7
                  lui          tp, 385179
                  slti         s6, s11, -439
                  add          a2, s11, t0
                  slli         s6, s10, 18
                  auipc        t0, 739077
                  and          a0, s9, gp
                  lui          a1, 622827
                  srai         s7, s6, 12
                  add          a6, zero, s11
                  srai         ra, tp, 17
                  slli         a0, sp, 6
                  lui          s4, 968341
                  lui          t3, 244374
                  addi         s1, a1, -796
                  and          s6, t2, s6
                  sub          ra, a1, a5
                  sub          s0, t2, a0
                  srl          zero, s0, s10
                  add          s10, s6, s5
                  sra          t0, t5, t1
                  slt          sp, s7, s1
                  addi         s8, t0, -662
                  sltiu        s4, s5, -627
                  xori         a0, zero, -1940
                  slli         t2, t5, 3
                  nop
                  srli         t5, a2, 10
                  nop
                  nop
                  slli         gp, a4, 22
                  sub          a2, t4, a3
                  slt          s0, t0, t5
                  xori         s4, tp, -492
                  or           a1, s9, zero
                  and          s10, s0, a4
                  lui          s3, 585511
                  slli         s1, ra, 20
                  and          t2, s6, t3
                  addi         s8, a3, -1802
                  slli         a4, s6, 25
                  srl          a3, a5, ra
                  srli         t0, s2, 14
                  addi         gp, s8, -1702
                  addi         s0, s3, 1184
                  sll          sp, s3, s4
                  xor          zero, t6, s10
                  sra          s3, s6, a4
                  nop
                  andi         t2, s1, 997
                  and          t6, a3, s1
                  slt          s6, s3, s2
                  auipc        t3, 643546
                  xor          t5, s5, a7
                  sra          zero, a7, a7
                  sll          s6, t6, s4
                  and          s3, a2, s9
                  sltu         a4, t4, t0
                  slli         t6, t0, 25
                  xori         a7, sp, 1738
                  andi         t5, a0, 602
                  auipc        t4, 70713
                  srl          t0, t5, t0
                  sub          a7, t5, a6
                  sltu         a4, t6, a3
                  and          gp, t2, a4
                  addi         a4, tp, -1202
                  lui          tp, 820433
                  srli         a5, tp, 11
                  auipc        a6, 244834
                  srli         t3, s1, 8
                  lui          s10, 175161
                  sltiu        a5, gp, 525
                  xor          s5, t6, a3
                  srai         t4, a3, 15
                  and          s3, s3, s6
                  xori         s5, t5, -1276
                  slli         t2, a4, 25
                  slli         t3, tp, 25
                  add          s0, zero, t1
                  add          sp, t2, t6
                  lui          tp, 698207
                  srl          t6, t6, s3
                  or           s1, t0, t5
                  sra          t1, zero, s10
                  sub          zero, a0, ra
                  lui          a2, 292590
                  add          t1, t3, t6
                  lui          s1, 44857
                  or           zero, t0, t5
                  or           t4, a3, a0
                  sra          ra, s2, s5
                  xori         s6, t6, -666
                  slli         t5, sp, 3
                  sll          a4, a0, s9
                  slt          t6, s0, a3
                  nop
                  sra          a0, a0, s5
                  srai         ra, s3, 4
                  slt          s0, s4, s3
                  lui          s3, 450863
                  srl          s5, s0, s3
                  srli         a0, zero, 26
                  srl          a5, a1, s5
                  sltiu        t0, a2, -1045
                  srl          a5, s11, s11
                  lui          t4, 96940
                  sltiu        a4, ra, 673
                  ori          s5, t3, 1377
                  andi         s5, s0, -1422
                  lui          s7, 714086
                  and          a6, s0, zero
                  nop
                  slti         a4, t1, -1591
                  lui          t1, 437169
                  srl          sp, a5, a0
                  ori          a2, a3, 1367
                  and          t3, a0, tp
                  sltu         a0, gp, a3
                  slti         a4, a1, -1002
                  xor          a1, t3, s8
                  sra          s8, t2, s5
                  andi         a7, gp, -326
                  srli         a6, t6, 18
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s5, 0x87a06124
                  li           t5, 0xffffffff
                  li           tp, 0xa95c74ec
                  li           t2, 0x0
                  li           a4, 0x7ca18c76
                  li           a0, 0x0
                  li           s6, 0x80000000
                  li           s8, 0x0
                  li           gp, 0x0
                  auipc        s5, 43453
                  add          a4, a3, s5
                  lui          t2, 749252
                  lui          gp, 923993
                  add          s5, t2, tp
                  addi         a3, a0, 1930
                  add          tp, gp, s5
                  sub          t5, tp, a0
                  add          t2, t2, a3
                  nop
                  sub          t5, t5, a4
                  lui          a4, 203913
                  addi         gp, t2, -701
                  add          s5, a3, a0
                  addi         tp, gp, -848
                  sub          a0, t2, s8
                  lui          s8, 764690
                  lui          a3, 313036
                  addi         s6, a0, 1700
                  auipc        a3, 321757
                  add          a0, t2, t2
                  add          a3, t5, s8
                  lui          a0, 111655
                  add          a0, a0, tp
                  addi         a0, a3, 2033
                  sub          a0, a4, tp
                  sub          t2, gp, tp
                  sub          t5, s5, s5
                  nop
                  addi         t5, t2, 1435 #end riscv_int_numeric_corner_stream_18
                  lui          t6, 322553
                  lui          s4, 528373
                  and          s3, a0, a2
                  and          a6, a6, a6
                  srl          sp, s7, a5
                  srl          t1, t6, a5
                  add          sp, a2, a6
                  xori         a0, s10, 961
                  sltu         t1, s9, s4
                  xori         s10, s5, 790
                  sll          a1, ra, zero
                  sll          s3, s9, s7
                  lui          t0, 20278
                  srai         s6, a2, 27
                  sll          a4, t4, t0
                  ori          s4, a7, 1264
                  sra          tp, a4, s7
                  andi         sp, t6, 433
                  ori          t0, s6, 691
                  ori          t0, s6, -991
                  sltiu        s0, s9, 1887
                  sra          sp, s4, t5
                  add          sp, a5, ra
                  sltiu        zero, a7, -1166
                  sltiu        s0, s7, 706
                  xor          t6, gp, a2
                  add          zero, s2, a6
                  slti         s7, a3, -1680
                  slti         s3, a0, -249
                  sll          a6, t3, t4
                  xor          sp, gp, s3
                  addi         t3, zero, 1916
                  ori          sp, a4, -739
                  ori          t6, t3, 1626
                  ori          a5, a2, 1427
                  slt          s0, t5, s10
                  xor          gp, s0, s3
                  xor          s7, s0, t4
                  slt          s10, s7, a3
                  xor          a3, s7, s1
                  sll          s7, t0, s5
                  xori         t5, a4, -738
                  and          s5, s1, s5
                  sltiu        t6, t0, 1976
                  addi         a5, ra, -1360
                  ori          s4, s3, -795
                  or           s4, tp, s3
                  srli         t2, tp, 29
                  add          s5, sp, t6
                  slli         s0, t3, 29
                  add          t1, t3, t6
                  sub          a2, s11, gp
                  add          s6, a6, t5
                  sltu         a6, s11, ra
                  sra          s10, ra, s9
                  andi         t2, t6, 927
                  ori          s5, t6, 667
                  slt          a6, t3, s5
                  sub          zero, a0, gp
                  add          s0, s2, zero
                  srli         a5, s4, 14
                  andi         t0, s6, -1115
                  slt          t6, tp, s6
                  andi         s10, s5, -1302
                  or           a7, t3, sp
                  auipc        t3, 867280
                  lui          a0, 347022
                  or           a2, a7, a1
                  add          t0, tp, t3
                  srai         s0, s8, 7
                  ori          a4, a2, 411
                  lui          a7, 97348
                  sltiu        s5, ra, -881
                  sra          s4, tp, s2
                  sltu         t0, s8, t6
                  sra          sp, a1, a3
                  srai         a1, s2, 2
                  addi         a6, a7, 2003
                  ori          t5, s11, 1332
                  addi         s0, a6, 1275
                  andi         t0, a4, 1007
                  sra          ra, s1, sp
                  add          t3, s6, s3
                  sll          s3, s10, s3
                  auipc        s5, 594862
                  or           s4, s10, ra
                  srli         gp, tp, 27
                  and          a5, s4, t1
                  slti         t6, a4, 1055
                  slli         a5, tp, 29
                  sra          a6, t0, t1
                  srai         s10, a0, 31
                  sra          a4, a0, a6
                  or           s4, s2, s0
                  ori          t6, s2, 922
                  xor          t4, s11, a0
                  sra          s4, s11, s1
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t4, 0x18a5016b
                  li           a3, 0x0
                  li           s10, 0x80000000
                  li           t1, 0x7f8daf69
                  li           a7, 0x80000000
                  li           s0, 0x81cfb75f
                  li           s5, 0x39e82b7
                  li           s3, 0x80000000
                  li           s7, 0x5fac5107
                  add          t1, a6, a6
                  auipc        a3, 502107
                  addi         s5, s3, -955
                  lui          s0, 250326
                  add          t1, a7, s5
                  add          a7, s0, t4
                  nop
                  lui          s0, 373891
                  addi         t4, s7, -16
                  addi         a3, a7, -1032
                  auipc        a7, 442074
                  nop
                  lui          a3, 181249
                  lui          a6, 659785
                  addi         s5, s5, 1602
                  lui          s5, 353605
                  auipc        s0, 655466 #end riscv_int_numeric_corner_stream_7
                  and          s1, s6, s11
                  sltiu        zero, s11, 1013
                  srl          t3, s10, t6
                  xor          s5, t6, sp
                  sra          a3, a6, tp
                  sra          s4, a4, t2
                  slti         a1, zero, 22
                  sra          t0, a0, t0
                  add          t0, s1, s3
                  auipc        a0, 662789
                  sltiu        s7, a1, 1457
                  slti         s3, a4, 1342
                  sub          s4, a1, t3
                  sll          s10, a5, s11
                  auipc        s3, 1000309
                  slt          s3, t1, s8
                  and          t2, ra, ra
                  and          t2, s5, a3
                  lui          a4, 639057
                  and          t0, s2, s9
                  srai         a0, t1, 7
                  srl          a7, a7, s7
                  slli         t2, s3, 28
                  sra          t0, s11, a4
                  sll          t2, gp, s3
                  add          s7, a6, s8
                  auipc        s8, 907797
                  srai         s4, s1, 13
                  xori         sp, s9, -1649
                  sltu         sp, sp, sp
                  nop
                  sll          a3, t6, ra
                  sltu         s10, gp, t3
                  xor          s8, a6, s8
                  nop
                  and          s1, s8, a3
                  lui          sp, 321036
                  srai         zero, s11, 18
                  srai         t5, t3, 31
                  xori         s1, s9, -671
                  addi         s4, t5, -2008
                  add          ra, s7, s9
                  slti         a6, t2, -1882
                  andi         a5, t0, -1863
                  slli         s6, s6, 16
                  and          s6, t0, a1
                  or           ra, s0, s9
                  lui          a4, 368815
                  slli         s1, ra, 17
                  add          a1, t3, t3
                  sub          a5, a0, a1
                  srli         s4, sp, 1
                  addi         s0, s0, 1479
                  xori         a2, t3, 434
                  sltiu        t1, a4, 534
                  lui          s10, 956172
                  slli         t2, t3, 7
                  srai         s5, s5, 17
                  andi         s3, s2, 138
                  sra          gp, zero, t6
                  xori         a3, a7, 1194
                  xor          t6, a0, s9
                  slli         t2, s2, 25
                  slti         s6, s11, -466
                  slli         gp, s6, 19
                  xori         tp, tp, 1988
                  sra          a0, gp, s9
                  sltu         t1, t5, t0
                  sltu         t5, s6, s5
                  addi         a2, a5, -1175
                  sltiu        a0, zero, -552
                  andi         s3, gp, -1738
                  lui          t3, 488508
                  auipc        t5, 807738
                  xor          s10, s7, a7
                  sltiu        a2, gp, 1819
                  andi         a0, t0, -760
                  sub          s3, a1, t6
                  srli         s0, t5, 16
                  lui          ra, 413276
                  sll          a3, s8, s2
                  sltu         a1, s0, tp
                  srli         s1, t3, 26
                  srli         t0, s9, 26
                  auipc        zero, 500953
                  xori         zero, s3, 1231
                  slt          s1, a4, t6
                  nop
                  slti         a1, a2, 298
                  lui          a7, 956822
                  auipc        t3, 419446
                  sll          t2, ra, s3
                  sltiu        s4, s3, 59
                  sltiu        t3, ra, -1042
                  andi         t5, tp, -747
                  auipc        t4, 711398
                  addi         sp, a4, -261
                  lui          t3, 525034
                  andi         s6, s9, 1168
                  nop
                  srli         tp, a7, 17
                  add          t5, s11, s10
                  xor          a6, t5, tp
                  and          t4, t5, zero
                  lui          zero, 711074
                  sll          t4, t4, a2
                  xori         a4, a5, -273
                  slt          s5, a4, t0
                  slti         s3, s9, 933
                  slt          gp, t3, zero
                  add          gp, a2, a3
                  andi         gp, a3, -1518
                  sll          a7, a7, t4
                  sub          s1, s11, ra
                  and          s4, s7, t2
                  nop
                  or           a4, t1, a5
                  and          s1, t6, s7
                  add          zero, t4, s5
                  addi         t4, a1, 665
                  sltu         t6, s10, t6
                  srli         a2, s5, 28
                  lui          t6, 748307
                  nop
                  slli         t4, t0, 10
                  slt          sp, s3, t2
                  xor          s5, s9, a2
                  sub          s3, s1, t6
                  slli         s3, ra, 17
                  auipc        t6, 1024192
                  slli         s4, a2, 10
                  xori         s0, s0, 785
                  sltiu        a6, s2, 2038
                  and          t1, s3, s3
                  andi         t2, a4, -146
                  slti         a7, a6, -516
                  or           s10, s3, s10
                  or           t0, s5, a0
                  sub          a0, t0, t2
                  add          t2, a1, t0
                  nop
                  sra          ra, t4, gp
                  nop
                  add          a4, a4, a5
                  sltiu        a5, t6, 1108
                  srli         t1, s8, 12
                  auipc        t2, 793440
                  srl          t5, t6, gp
                  xor          t3, s3, s7
                  xor          s8, t2, s4
                  xor          zero, t2, t0
                  add          zero, s11, s0
                  sltiu        t3, a2, 1388
                  lui          t4, 78085
                  addi         s7, a2, -1682
                  or           s8, a6, s1
                  addi         s4, a0, 1837
                  xor          s7, s0, s0
                  sltiu        s6, s8, -42
                  sll          ra, t6, t3
                  and          s1, ra, s6
                  nop
                  sltu         s10, a0, a0
                  auipc        a0, 113183
                  sll          s7, s3, t0
                  sltiu        a3, s0, 1732
                  slli         s0, tp, 4
                  slt          s0, tp, s6
                  slli         s1, a6, 25
                  and          t3, t1, s4
                  nop
                  or           ra, a5, zero
                  xori         sp, s11, -303
                  or           t4, s5, s10
                  xori         s10, s0, -242
                  sub          s4, s7, t4
                  addi         a3, s3, 1452
                  xori         t3, a2, -547
                  sra          a3, zero, a4
                  and          tp, a5, s0
                  nop
                  addi         t2, s8, -1913
                  sll          s6, t4, a5
                  lui          a1, 863000
                  nop
                  lui          gp, 244444
                  xori         s4, t1, 850
                  addi         a7, s7, -1880
                  slti         a6, a0, -657
                  srl          a3, zero, t6
                  xori         sp, t0, -832
                  slti         s1, a7, -2014
                  xori         t4, s11, -1366
                  srl          a7, s6, s10
                  sll          a7, a0, s6
                  sll          a5, a2, s3
                  ori          s7, s10, 614
                  xori         t3, sp, 177
                  auipc        a2, 362222
                  slli         a6, t1, 7
                  slli         t2, a3, 0
                  lui          t5, 9080
                  srai         s6, t6, 31
                  ori          a0, s1, 1382
                  or           s10, t4, a4
                  lui          a3, 303411
                  ori          s0, t2, -590
                  srl          t0, ra, a7
                  slti         s7, a2, 1136
                  sra          s0, a1, a6
                  or           s1, zero, t2
                  addi         a1, s2, -1692
                  xor          t4, gp, s10
                  sltu         s5, t5, s8
                  ori          t1, a0, 1194
                  srli         t2, s6, 23
                  nop
                  and          tp, s10, t4
                  sll          s5, a1, sp
                  auipc        a3, 951154
                  slti         a2, a7, 937
                  andi         a4, s7, -787
                  lui          s10, 915724
                  srai         a7, s7, 25
                  auipc        s0, 830883
                  sll          t4, s8, s3
                  lui          t2, 1041900
                  sll          a6, s10, s1
                  and          ra, zero, s8
                  sra          tp, tp, t5
                  add          zero, zero, t2
                  and          t2, a4, gp
                  or           a5, a4, a5
                  slti         tp, a7, -297
                  sltu         t4, s7, a3
                  sra          t0, a4, s5
                  auipc        s8, 197105
                  sltu         a4, a4, t1
                  or           s8, tp, s8
                  andi         t2, s10, 592
                  srli         tp, s7, 25
                  xor          t4, t2, s7
                  srl          t4, t6, t5
                  xor          s10, s0, a5
                  sub          s1, s5, s4
                  sll          s10, s4, t4
                  ori          t4, gp, -1376
                  lui          s3, 776684
                  addi         a2, s7, -39
                  and          tp, s5, a5
                  sub          t4, t4, t3
                  andi         a7, a7, 944
                  slt          t3, s9, t4
                  slti         s6, zero, -795
                  add          a2, sp, a6
                  sra          a7, s10, a7
                  srai         t1, s0, 1
                  slt          t1, s4, t3
                  ori          t1, zero, -1039
                  sll          t5, a1, t5
                  or           tp, s4, zero
                  addi         t6, t4, -1801
                  srai         s4, s4, 21
                  addi         t5, s4, 1843
                  auipc        a6, 381999
                  sltiu        a0, s11, -1526
                  sub          a5, s3, s2
                  and          t2, a0, a2
                  srli         t0, s1, 24
                  sltiu        t1, s3, -59
                  slt          a0, t5, t0
                  or           s10, s6, s2
                  xor          t1, s1, s11
                  or           t3, t3, t1
                  xor          s3, a7, s2
                  srli         zero, sp, 0
                  xori         a7, s2, -551
                  srai         gp, s8, 4
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a2, 0x80000000
                  li           s1, 0x0
                  li           tp, 0x80000000
                  li           t0, 0x317353a4
                  li           a1, 0xffffffff
                  li           t2, 0xe735f298
                  li           a6, 0x0
                  li           sp, 0xffffffff
                  li           a0, 0xffffffff
                  auipc        a2, 890151
                  nop
                  add          t0, tp, a2
                  nop
                  auipc        a0, 351669
                  add          a1, t2, s1
                  sub          a0, s1, t0
                  auipc        sp, 35448
                  sub          a2, a7, a0
                  auipc        s1, 997316
                  add          a7, a7, t2
                  nop
                  sub          a6, a0, s1
                  add          s1, t2, a0
                  add          a6, tp, t0
                  nop
                  nop
                  nop
                  auipc        t0, 220907
                  addi         t0, t0, 1529
                  nop
                  lui          t0, 600603 #end riscv_int_numeric_corner_stream_19
                  sll          sp, s7, a0
                  ori          t5, s7, -1998
                  auipc        a7, 179803
                  slli         t3, sp, 21
                  ori          t6, s8, -1742
                  addi         a7, t3, -189
                  sub          a7, gp, a6
                  and          t1, a1, a0
                  or           s7, a1, ra
                  slli         a0, zero, 24
                  srai         s10, t1, 29
                  nop
                  auipc        s0, 517473
                  slti         t6, t0, 1046
                  sub          a3, tp, t4
                  slli         s0, t5, 1
                  add          s1, s2, tp
                  xori         sp, t6, -61
                  srai         t6, a0, 21
                  xori         a2, t1, -113
                  srl          t3, tp, s7
                  srai         a5, a3, 6
                  nop
                  srl          t0, a4, s0
                  andi         a3, tp, -1773
                  add          s0, s8, s0
                  slt          t5, t4, s6
                  srli         a7, s8, 2
                  lui          s5, 755642
                  srl          a4, a3, gp
                  srai         s0, a2, 23
                  srai         s6, a6, 11
                  add          s0, tp, s6
                  or           s3, tp, zero
                  sll          gp, a7, a7
                  ori          s0, t0, -707
                  andi         s8, a7, 2007
                  slti         gp, s11, 323
                  auipc        a3, 844475
                  and          s3, s11, a1
                  xori         t4, s4, -862
                  xor          a5, s10, a4
                  xor          s4, a3, s2
                  add          a0, a1, s4
                  sub          t3, zero, a1
                  srl          t5, t5, a3
                  xori         t1, t4, -1934
                  lui          t1, 739032
                  xor          tp, t6, s4
                  sltu         t2, s6, s9
                  sltu         s10, a5, a3
                  slti         s3, a0, 282
                  sra          s10, s5, a2
                  srl          a3, s2, t4
                  srl          t6, t4, tp
                  sltu         s6, t1, s11
                  slti         s7, ra, 253
                  add          s8, a4, t1
                  slti         s7, a3, 1015
                  sll          s6, a1, t2
                  sll          zero, s1, a2
                  or           a3, t5, a0
                  srl          ra, gp, s4
                  auipc        t5, 715872
                  srl          tp, s11, a3
                  xori         t5, t5, -2022
                  ori          s7, t4, 1165
                  lui          t1, 219496
                  slti         a7, t2, -1643
                  sltiu        a2, t6, 1259
                  slli         s1, t2, 3
                  srli         s7, a4, 4
                  auipc        s10, 431437
                  sll          t2, t4, ra
                  ori          s8, s5, 56
                  sll          s5, s4, a7
                  ori          t0, s0, 361
                  slli         a7, sp, 6
                  srl          s7, s0, s5
                  and          a2, t6, t4
                  srai         s6, a0, 19
                  slt          t0, t6, t3
                  add          t2, a1, gp
                  addi         s4, t5, -1891
                  srl          gp, s9, ra
                  srai         s0, t3, 30
                  nop
                  xor          a1, s1, a6
                  xori         a0, s10, 290
                  addi         t3, a6, 778
                  auipc        gp, 363818
                  sltu         s8, sp, s5
                  or           a0, s1, s6
                  xori         sp, a7, 1105
                  srai         gp, s8, 12
                  xori         t3, ra, -547
                  sub          t3, t1, t5
                  or           a7, ra, s11
                  and          a7, t0, t1
                  nop
                  ori          a5, s0, 1696
                  andi         a5, s11, -263
                  sub          a0, s5, s9
                  nop
                  slli         a4, t0, 27
                  slli         t1, sp, 25
                  slt          a7, a0, tp
                  addi         t1, t2, -1560
                  slli         s0, s5, 24
                  sltu         a3, s9, t2
                  sltiu        t4, ra, -128
                  sll          s0, a1, t4
                  and          s6, t3, s6
                  slli         a0, s7, 9
                  andi         a3, s11, -925
                  andi         ra, s6, -2005
                  srli         s7, t3, 20
                  slti         t1, a6, -1672
                  xori         a5, t1, -779
                  auipc        t2, 68693
                  nop
                  xori         t4, sp, 213
                  auipc        t4, 990092
                  sltiu        zero, t1, -1717
                  sll          sp, a2, s3
                  sub          t2, gp, s3
                  slt          a7, zero, a7
                  add          s7, t1, a5
                  xor          t0, zero, a4
                  ori          s8, t3, -413
                  lui          s3, 126573
                  ori          a5, a5, -644
                  sltu         zero, s11, t3
                  sra          t1, s4, t3
                  srli         a6, t1, 4
                  sltu         s10, s9, a4
                  or           s8, s4, t3
                  addi         s6, a1, -1241
                  xori         s10, a3, 159
                  srli         ra, t3, 18
                  slti         s3, zero, -1136
                  add          t4, s3, s1
                  slt          a4, a6, s1
                  auipc        t0, 390356
                  xori         a3, a4, 14
                  sub          a7, s7, t2
                  ori          s6, s11, 1682
                  srl          a6, s10, ra
                  and          a7, t3, a5
                  lui          gp, 393437
                  and          s4, a4, a4
                  lui          s3, 697330
                  and          s7, t1, s8
                  auipc        zero, 63966
                  nop
                  sub          a2, zero, t6
                  addi         a1, s7, -219
                  sltiu        a7, ra, 539
                  nop
                  sll          s4, s4, s11
                  ori          a6, sp, 1831
                  add          gp, s11, s7
                  ori          s0, a4, 1430
                  sltu         zero, s5, a4
                  slt          s5, t4, s8
                  addi         t4, a6, -258
                  srl          t5, t0, t1
                  auipc        s5, 710901
                  slt          t2, t2, a5
                  add          s5, s1, a1
                  sra          a6, t5, s9
                  add          sp, s11, a6
                  add          t0, ra, t2
                  addi         s8, t3, 1524
                  sra          s0, a2, s6
                  srai         s5, sp, 25
                  andi         s8, s11, 645
                  srli         zero, a3, 18
                  xor          t0, s7, s4
                  lui          a0, 493678
                  slti         t4, s2, -1046
                  or           s3, s9, t6
                  lui          t2, 462384
                  sltiu        s8, t2, 1734
                  sub          t0, a1, a0
                  and          a1, a7, a7
                  andi         s4, tp, 855
                  addi         a3, a3, 698
                  sltu         t3, a7, s3
                  sltiu        gp, t3, -1963
                  sra          s5, s11, sp
                  addi         a0, a2, -1112
                  srl          s3, a6, a4
                  add          a0, t4, t3
                  lui          t3, 572168
                  auipc        s8, 655645
                  slli         a1, t5, 25
                  srli         zero, a7, 1
                  sll          a1, t1, s7
                  auipc        gp, 62937
                  auipc        s5, 613550
                  sltu         a7, a4, a1
                  slti         a6, s3, -289
                  slti         t4, t6, 1063
                  or           t4, a5, s3
                  srli         tp, zero, 5
                  sll          s6, s9, s5
                  srli         a0, t5, 26
                  or           tp, s1, t2
                  srl          t2, s3, s9
                  add          a0, a6, a7
                  nop
                  srai         s3, a0, 25
                  add          ra, a3, s0
                  sll          zero, a5, t1
                  addi         s1, a1, 819
                  and          a3, t5, a5
                  ori          s8, s4, -11
                  addi         t0, s11, -810
                  ori          a7, t1, -1099
                  srai         s7, ra, 17
                  slti         a7, t5, 53
                  sra          s5, gp, t1
                  sub          s7, ra, sp
                  srli         s6, s6, 15
                  and          a2, s9, s0
                  xori         t2, a6, -1143
                  auipc        a4, 447210
                  srl          a6, s9, s11
                  or           t5, a7, t3
                  lui          tp, 113337
                  add          s10, t2, s7
                  andi         s0, a5, 1700
                  andi         zero, s9, -1209
                  srl          t2, s10, s10
                  srai         a2, ra, 2
                  ori          ra, t4, -260
                  addi         s8, sp, 561
                  sltiu        t5, s5, -875
                  srl          s3, a4, sp
                  sltu         s1, tp, a6
                  xori         a1, zero, -625
                  auipc        s10, 188428
                  sltiu        t3, a1, 1966
                  nop
                  add          t5, t6, s1
                  sltu         t5, zero, t5
                  ori          s1, s11, -1908
                  srai         t6, s4, 20
                  ori          s3, t2, 135
                  xor          t5, a0, s2
                  sub          gp, zero, s6
                  sll          sp, s4, a4
                  add          t6, a3, s10
                  srli         sp, a5, 7
                  xori         tp, a4, -524
                  auipc        s1, 385897
                  nop
                  sub          t0, t3, sp
                  sub          t2, t2, s3
                  xor          t3, s5, a0
                  ori          s7, a7, -871
                  andi         zero, sp, 1326
                  nop
                  nop
                  srl          t2, s10, gp
                  slli         a1, t0, 10
                  andi         a2, s0, -1114
                  slt          ra, t0, a1
                  srai         s6, gp, 16
                  srl          s6, s3, t3
                  srli         t5, s8, 17
                  addi         s1, s2, -1435
                  xori         a1, a3, -279
                  addi         s1, a3, 1691
                  sltiu        t1, t5, -265
                  auipc        sp, 199649
                  slt          a0, ra, t5
                  xor          s5, s11, tp
                  sra          a7, t4, s3
                  slt          ra, a2, a4
                  ori          ra, s3, 344
                  xori         a7, a3, -1896
                  xori         s0, s0, 2031
                  xor          s5, gp, t0
                  srl          t0, t4, a2
                  xor          a3, a1, s11
                  nop
                  srl          zero, t1, s11
                  addi         tp, s7, 79
                  xor          s7, t6, s6
                  auipc        ra, 959477
                  auipc        gp, 537518
                  or           s1, s6, gp
                  lui          s10, 483044
                  sub          t1, s0, sp
                  ori          s6, a3, 621
                  and          t4, t6, t3
                  or           s8, s4, s1
                  srai         a2, a6, 27
                  sll          s6, s10, t0
                  ori          a2, gp, 841
                  srli         t1, t3, 2
                  sltu         a7, a5, s10
                  andi         t4, gp, 1281
                  slli         s1, s4, 7
                  sll          gp, s6, gp
                  auipc        s10, 791343
                  slli         s0, s11, 25
                  lui          a2, 528075
                  sub          s5, s8, s8
                  slt          sp, s0, t2
                  sub          t1, t1, t6
                  sltu         s4, a5, t2
                  or           a4, a6, s8
                  sll          t6, a2, t2
                  xori         a7, s7, 726
                  sra          s4, a6, s8
                  and          a4, t4, s2
                  srl          tp, t1, s5
                  ori          gp, t0, -1323
                  add          t1, s8, s8
                  slt          a5, t3, t0
                  srli         s1, s4, 24
                  sll          a1, s5, t5
                  or           t5, a0, t4
                  auipc        s1, 1048422
                  ori          ra, zero, -1142
                  xor          a2, s9, a1
                  slti         gp, s9, 732
                  sll          a6, s11, t0
                  srl          t1, gp, t2
                  or           s3, s5, s6
                  addi         s6, s9, -773
                  auipc        t2, 596163
                  nop
                  or           t1, s5, t4
                  lui          t0, 617685
                  sll          s8, s10, s9
                  or           zero, t3, s0
                  slt          a6, a0, s5
                  ori          s7, a0, -1882
                  slli         s8, a5, 4
                  srai         s4, s4, 13
                  srai         t1, s9, 28
                  sll          gp, tp, t2
                  and          s8, s9, ra
                  andi         a1, t4, -1174
                  sra          s0, s6, s10
                  xori         zero, a5, 253
                  sll          s7, t1, s0
                  srli         gp, s2, 27
                  sub          s0, sp, t2
                  lui          s6, 732887
                  nop
                  and          t3, tp, t4
                  addi         tp, s2, -461
                  or           a1, gp, tp
                  or           a0, a7, t5
                  nop
                  xor          a2, s1, t0
                  slt          s7, a2, s1
                  nop
                  nop
                  addi         s1, t1, -830
                  srai         t5, s11, 16
                  addi         s8, s1, -244
                  andi         a2, s8, 1697
                  slt          s4, t0, gp
                  srai         ra, ra, 24
                  slti         zero, s2, 1575
                  srl          a4, s8, a2
                  sltu         a7, a2, t4
                  srl          s8, s2, t5
                  slti         t1, a6, 933
                  nop
                  slti         s6, s4, 905
                  xori         a5, t0, -206
                  slli         t6, t6, 6
                  srai         s4, t0, 22
                  or           s10, s8, s7
                  slt          tp, t0, a3
                  nop
                  sub          s3, t6, zero
                  sub          a5, s9, t0
                  addi         t4, ra, -1369
                  andi         t0, ra, -295
                  add          t3, s2, tp
                  sltu         zero, a5, t1
                  sub          ra, s5, t4
                  auipc        s4, 56171
                  or           t5, s9, t4
                  slli         zero, s6, 31
                  addi         gp, s6, -1957
                  andi         zero, t2, 295
                  add          tp, s9, a1
                  sltiu        a2, s2, -1262
                  addi         t3, s6, -1731
                  or           s6, s1, s3
                  srai         s0, gp, 19
                  andi         t6, t4, -266
                  srai         tp, t1, 31
                  addi         t6, t2, 65
                  sub          s3, s0, s4
                  addi         t3, sp, 1857
                  lui          t2, 78348
                  srl          s10, a6, a6
                  srli         ra, s3, 28
                  slt          s5, a0, a7
                  andi         sp, s4, 1574
                  auipc        a0, 1008615
                  xori         s3, t1, -223
                  sltiu        s4, sp, 1506
                  srl          s1, a4, s7
                  sltu         t3, s0, ra
                  sltiu        s5, a0, 1514
                  slli         t5, a0, 31
                  addi         s0, t1, -1166
                  slt          t0, a4, t4
                  or           s6, s2, t0
                  nop
                  andi         t5, s2, 581
                  srl          gp, a6, t3
                  and          a7, sp, tp
                  and          s3, ra, a0
                  xori         a5, s3, -1621
                  addi         t0, s11, 907
                  xori         t3, s7, -881
                  or           t5, tp, s1
                  sub          zero, a5, s5
                  slli         sp, t6, 12
                  sub          s1, s4, t2
                  sltiu        a0, s4, 1245
                  sltu         zero, a4, t3
                  slti         a2, a3, -758
                  and          s10, a5, s5
                  xor          zero, s5, a2
                  xori         tp, t0, -818
                  xor          gp, t0, a6
                  sll          t2, a1, s11
                  sltu         s5, a2, a1
                  xor          s0, t0, a3
                  nop
                  lui          s6, 1009607
                  sltu         s0, tp, s1
                  sub          s8, s0, a5
                  sra          s7, s10, t6
                  slli         t2, s11, 26
                  slt          s0, s1, s2
                  and          s8, zero, t4
                  add          s7, a7, s5
                  srli         s6, a0, 29
                  sra          t4, a5, s3
                  slli         t0, s5, 11
                  slt          s0, s3, s2
                  srai         t2, a4, 9
                  srl          gp, a2, s4
                  xori         s0, s11, -311
                  and          s8, s8, s4
                  xor          s10, a5, ra
                  and          a6, zero, a0
                  or           t4, s11, zero
                  addi         t6, a5, 1994
                  addi         a2, a1, 396
                  addi         t5, a5, 1939
                  sltu         a1, a4, a4
                  add          tp, s6, s4
                  srai         s6, s10, 31
                  srai         sp, s11, 17
                  sra          a3, s2, a1
                  xori         t5, a5, 839
                  slti         t0, t5, 959
                  xori         s8, t6, -480
                  andi         a0, t2, 49
                  sltu         t2, t1, s9
                  srli         a0, t0, 4
                  slli         t5, s3, 11
                  slti         zero, s9, -127
                  andi         s10, s11, 473
                  sub          a6, s11, s8
                  ori          tp, s5, 1590
                  nop
                  and          a5, t2, a7
                  add          s1, t3, tp
                  or           t6, gp, a4
                  nop
                  xori         a7, t5, 350
                  andi         t5, zero, 416
                  nop
                  addi         s6, s7, 962
                  sub          a4, s0, gp
                  auipc        s8, 960325
                  xori         tp, t5, 1775
                  addi         s8, tp, 325
                  nop
                  srl          a3, ra, s5
                  add          s4, zero, s11
                  xor          s5, s11, s5
                  ori          a1, s4, -590
                  xor          a3, s4, t2
                  sub          a1, t5, tp
                  xor          ra, s3, s3
                  slti         gp, s0, 315
                  sub          a6, s11, t1
                  sub          t4, s10, s10
                  srl          t2, s9, t3
                  srl          a5, ra, a5
                  xor          s0, gp, s10
                  xori         a3, s8, 325
                  andi         a1, s7, -444
                  xori         a3, s1, 562
                  xori         a6, a4, 1645
                  slt          t5, t5, a3
                  xori         s3, s11, -371
                  andi         tp, a1, -517
                  sltiu        t0, t3, 877
                  sra          tp, t4, s2
                  addi         s6, a7, 220
                  slti         tp, t4, 1213
                  slli         t5, a2, 25
                  sra          a5, s2, sp
                  sltiu        a1, t4, 1307
                  slli         t6, a0, 20
                  nop
                  srai         s4, a5, 3
                  sub          s8, a2, tp
                  and          t6, s0, s5
                  ori          a5, zero, 353
                  andi         a0, t5, 1175
                  slt          a1, t2, s5
                  nop
                  sltu         a0, a6, s2
                  auipc        s3, 336851
                  srli         s7, a4, 6
                  srai         a4, s7, 26
                  sll          t0, t3, s6
                  slti         gp, a5, 976
                  sub          a6, s9, t3
                  auipc        tp, 579277
                  sra          t4, t6, s4
                  xor          a6, a7, t4
                  or           a2, s1, t1
                  xor          sp, s1, a0
                  sra          zero, a5, sp
                  srli         t5, t0, 9
                  sll          a3, s2, a5
                  slt          a3, a7, a3
                  sll          a1, ra, a7
                  add          s3, tp, sp
                  slli         gp, sp, 9
                  and          s10, t0, t4
                  srli         t5, gp, 29
                  slti         sp, t3, -169
                  sra          t5, s0, t2
                  sub          tp, s1, s10
                  xori         gp, s3, 886
                  add          a4, s8, gp
                  srli         s8, s3, 14
                  slli         s8, s4, 24
                  addi         a0, t5, -107
                  add          gp, s1, t1
                  slti         t0, a7, 1759
                  sll          a1, t2, t0
                  slt          t0, t1, zero
                  nop
                  add          sp, t5, s1
                  add          ra, a0, a3
                  andi         a2, a6, -2031
                  slli         t2, s10, 5
                  xori         a7, s5, -2048
                  addi         s5, s8, -363
                  sltiu        t1, t2, -955
                  addi         s8, t2, 901
                  lui          t6, 759868
                  slti         s6, s7, 474
                  slt          tp, t6, s2
                  srl          a0, s4, t4
                  andi         sp, gp, 110
                  srl          t0, t0, a4
                  slt          t2, s1, t1
                  srai         zero, a5, 17
                  nop
                  sub          gp, t0, s10
                  lui          t2, 304178
                  sltu         sp, a6, s10
                  srl          s4, s11, t6
                  slt          a0, a5, zero
                  auipc        a3, 923766
                  sub          t0, zero, s8
                  ori          a5, a0, 333
                  andi         a4, s2, 806
                  slli         t0, s9, 19
                  srl          gp, ra, s6
                  xori         a7, s3, -1788
                  lui          tp, 725012
                  sltiu        tp, sp, -1433
                  add          tp, s10, ra
                  auipc        s0, 592042
                  addi         s10, s5, 1471
                  slli         s6, s7, 28
                  addi         s4, gp, 479
                  sll          tp, s3, s8
                  nop
                  addi         t2, s8, -1877
                  addi         a4, s10, -391
                  slti         tp, a6, 1756
                  sltu         tp, s3, a6
                  auipc        s8, 225911
                  andi         s0, a7, 324
                  and          a7, zero, s1
                  or           s8, s5, ra
                  sltu         a6, s9, s6
                  xori         t6, t4, -79
                  sltiu        s4, gp, -898
                  srai         ra, ra, 8
                  srl          s3, zero, zero
                  add          s10, s2, s7
                  and          s0, s5, zero
                  srl          a3, t0, tp
                  srai         s7, s10, 29
                  and          a5, gp, a6
                  sltu         a0, t6, t1
                  sub          a4, sp, sp
                  xori         zero, s8, -481
                  nop
                  slt          s0, s8, s7
                  slt          s8, t0, a0
                  and          a6, t0, a4
                  and          s4, zero, s3
                  slti         a6, gp, -1296
                  and          ra, sp, s8
                  lui          zero, 334296
                  or           s6, zero, a3
                  slli         s10, s6, 5
                  sra          a1, a3, a7
                  or           t6, sp, t1
                  nop
                  sra          ra, s8, ra
                  slli         s3, a7, 12
                  addi         t5, s8, -1813
                  lui          a7, 539193
                  addi         s3, t3, 1544
                  sll          a2, t2, a7
                  addi         t1, s11, -203
                  and          a4, tp, t4
                  sltiu        t5, tp, -190
                  or           a1, gp, s3
                  xori         s4, a6, 767
                  srl          s5, tp, a6
                  srl          s4, s5, t0
                  andi         zero, a1, -1429
                  lui          s4, 771592
                  nop
                  srli         zero, t4, 29
                  slli         t5, zero, 9
                  auipc        s8, 770410
                  slti         t4, a5, -666
                  andi         s7, a5, -288
                  addi         t0, zero, -1710
                  xori         a3, s5, 596
                  addi         s3, a1, 1351
                  xor          a0, s3, s6
                  addi         a1, ra, 1098
                  sra          gp, s11, s4
                  and          t2, a1, gp
                  xor          a3, s2, t4
                  xori         s7, t3, -925
                  slli         sp, t5, 21
                  sll          s6, s3, a3
                  or           t0, zero, s9
                  ori          t3, tp, 188
                  slli         s3, s2, 10
                  sub          a4, t5, t2
                  nop
                  sra          s6, s3, zero
                  srli         a0, s11, 17
                  srli         s0, t3, 16
                  slt          a2, gp, s0
                  sltu         a7, t3, a3
                  srai         t6, s1, 4
                  xori         ra, a1, -1185
                  sub          tp, zero, a1
                  slli         a1, gp, 17
                  srai         t6, a6, 10
                  sltiu        s0, s4, -8
                  sra          a0, t4, a6
                  or           a5, a7, s6
                  nop
                  srl          ra, a4, a2
                  ori          s5, t2, 1955
                  auipc        s7, 479917
                  slt          ra, sp, gp
                  sra          a2, s0, s6
                  sltiu        a5, s2, -1391
                  add          s1, s6, s8
                  sltiu        t3, t3, -1621
                  add          t3, a5, s4
                  andi         a0, s6, -1200
                  sltu         sp, ra, t6
                  srl          gp, t6, a2
                  slt          s1, sp, s4
                  srai         a3, t5, 0
                  lui          t1, 24613
                  sltiu        a6, t5, 1432
                  nop
                  ori          a4, s10, -1824
                  xor          s10, a1, a6
                  and          s4, t5, s5
                  srai         a2, s6, 28
                  nop
                  slt          t0, s4, ra
                  srai         s5, t2, 29
                  lui          t3, 683141
                  slti         s0, s7, -1240
                  slt          a7, s2, a5
                  and          t0, s7, a2
                  srl          s5, t4, t0
                  sll          s3, s8, t1
                  andi         t6, t3, -1213
                  slti         a2, sp, -919
                  andi         a7, s7, 349
                  or           t4, s2, a7
                  slti         a5, a0, -80
                  add          tp, s5, s1
                  sltiu        gp, s11, -577
                  slti         gp, s6, -376
                  srai         s7, a5, 24
                  lui          t2, 182225
                  add          t6, a2, a4
                  slt          t3, s2, s8
                  ori          t6, a0, -1107
                  xori         a6, a6, -1871
                  lui          s0, 1039115
                  sltu         a5, a5, s10
                  xor          sp, s9, a6
                  addi         s3, gp, -146
                  srl          t0, t3, t4
                  srli         s10, t6, 26
                  xor          s8, s4, s4
                  ori          a3, s1, 976
                  ori          a0, t3, -398
                  addi         s8, s7, 386
                  srai         a0, t2, 29
                  sltu         a4, a4, sp
                  srli         s10, a7, 20
                  xori         s10, a6, -1807
                  or           zero, t3, a7
                  add          gp, t2, s11
                  slti         sp, s5, 1367
                  sltiu        s1, a4, -1227
                  addi         s4, a5, -498
                  nop
                  add          s0, s3, t4
                  andi         s4, tp, 1237
                  or           a6, t2, a7
                  xor          s4, s6, t5
                  slt          t0, zero, t4
                  addi         sp, s8, -1227
                  and          t2, a6, a4
                  andi         t4, s11, -529
                  sub          a2, s2, s7
                  sltiu        s0, s4, -51
                  xor          tp, sp, s5
                  xor          s6, t0, s3
                  slt          t2, a0, t2
                  slt          t6, s9, a1
                  nop
                  xori         a0, a5, 1710
                  xori         gp, tp, -595
                  srai         s10, s8, 6
                  andi         s5, s9, -1454
                  andi         a5, gp, 33
                  andi         s8, ra, -416
                  auipc        s7, 832497
                  xori         t3, t2, 123
                  srli         tp, s5, 22
                  add          s5, a1, a5
                  slt          a4, t3, s1
                  xor          t5, t1, s7
                  slt          t2, a0, a1
                  lui          sp, 273453
                  xori         a5, t3, -515
                  srai         t5, sp, 16
                  sra          gp, s8, zero
                  xori         a6, t2, 472
                  addi         s4, s11, -1921
                  sub          s6, t5, s0
                  xor          a0, s6, a1
                  slti         t6, t3, 420
                  sltiu        a5, gp, 1949
                  xor          s0, s2, s6
                  nop
                  addi         a2, a2, 1519
                  sltiu        a7, s7, -485
                  andi         a2, t0, 515
                  xori         s3, s0, -1020
                  addi         s8, t4, 570
                  lui          zero, 88609
                  slti         a2, t1, 329
                  and          a6, a2, t2
                  sltu         s3, a3, a5
                  xor          a3, s3, a1
                  sltiu        ra, t5, -1502
                  slt          a4, gp, tp
                  ori          s0, s11, 1789
                  sll          s8, s2, sp
                  addi         a1, a7, -251
                  nop
                  slli         a5, t5, 1
                  nop
                  nop
                  ori          a6, gp, 760
                  sll          a1, ra, zero
                  sub          t1, s10, a4
                  srai         t2, ra, 3
                  addi         a2, s1, 797
                  sltu         s8, a5, a1
                  lui          t4, 672387
                  or           t6, sp, s3
                  srl          t6, a2, s11
                  sltiu        zero, t1, -161
                  and          s1, t2, t3
                  sub          sp, ra, t2
                  sltu         t5, t3, a1
                  srli         t4, s8, 16
                  srai         s3, s0, 9
                  lui          s0, 11602
                  ori          a1, s11, 1243
                  andi         s8, s10, -1188
                  sll          zero, a5, tp
                  xor          s0, sp, s6
                  slli         tp, t3, 17
                  srai         a0, s4, 12
                  slli         a7, a3, 25
                  nop
                  sll          s6, s0, s7
                  and          ra, a5, t5
                  add          a7, zero, gp
                  ori          a5, a7, 262
                  andi         t2, s4, -1775
                  srl          s8, t3, a4
                  auipc        t2, 668762
                  andi         zero, sp, -882
                  addi         s5, s0, 944
                  or           a4, a7, s10
                  xori         gp, a1, -1211
                  andi         s7, t2, -1338
                  add          ra, gp, s1
                  srai         gp, s4, 8
                  sub          s1, t1, t2
                  andi         t2, s6, 1352
                  xori         t0, zero, 663
                  and          s0, t0, t4
                  xor          a1, t1, s8
                  srli         a3, t5, 25
                  nop
                  xor          gp, a6, s0
                  srl          t1, sp, a5
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a3, 0xffffffff
                  li           a5, 0x0
                  li           t6, 0x80000000
                  li           t4, 0xffffffff
                  li           a1, 0x80000000
                  li           s10, 0x0
                  li           s7, 0x80000000
                  li           s1, 0x80000000
                  li           t3, 0x0
                  nop
                  auipc        a3, 85649
                  nop
                  add          s1, a5, s1
                  addi         t4, t6, 1197
                  add          a5, t6, s10
                  add          a5, s1, s3
                  lui          s1, 98503
                  auipc        t3, 275573
                  nop
                  auipc        t4, 785033
                  sub          s10, t3, t4
                  nop
                  nop
                  lui          t3, 767858
                  nop
                  sub          a3, s10, t4
                  addi         s3, s7, 453
                  lui          t6, 20121
                  addi         s3, s7, -1823
                  sub          t6, t4, a1
                  addi         a5, t6, -1836 #end riscv_int_numeric_corner_stream_5
                  ori          s6, zero, 1901
                  sra          t1, a4, tp
                  sltu         t1, s11, zero
                  sub          s6, t1, s7
                  add          a4, s7, t2
                  srl          s6, zero, t5
                  sra          tp, s4, a0
                  slti         s8, s11, -1120
                  sltiu        s5, t3, 1018
                  lui          s8, 211914
                  sltu         zero, s1, a5
                  nop
                  srli         s5, t5, 22
                  lui          a4, 102614
                  sra          gp, s0, t5
                  srai         tp, a0, 19
                  srai         a4, sp, 17
                  slt          a5, t5, s6
                  nop
                  xor          s3, a4, tp
                  sra          a3, s11, t2
                  srl          tp, a7, zero
                  sltu         s10, sp, sp
                  add          s4, a6, s10
                  or           gp, ra, t5
                  sra          s5, s9, a0
                  slt          a7, gp, t6
                  add          t5, ra, s1
                  slti         t1, t1, 1748
                  srli         a2, a5, 2
                  ori          a3, a4, -283
                  and          s6, a4, a4
                  add          zero, sp, tp
                  and          t5, t6, s10
                  srli         s1, t0, 21
                  auipc        t2, 945174
                  and          s10, a7, t5
                  slt          t0, gp, a6
                  slt          a5, s0, t2
                  srli         a2, t0, 31
                  or           s7, a3, s11
                  sll          a7, t2, ra
                  add          s6, tp, t0
                  xor          sp, a6, a2
                  andi         s5, gp, -1840
                  sll          a5, gp, a4
                  ori          t1, t2, 1744
                  sub          ra, a6, gp
                  srli         t6, a7, 25
                  lui          gp, 858590
                  ori          zero, ra, -1833
                  slti         sp, s5, 436
                  srai         a2, s6, 26
                  slli         s4, s10, 11
                  lui          a0, 282075
                  sltu         s3, s7, a2
                  and          s7, t5, ra
                  addi         s4, s6, 1009
                  auipc        s3, 286438
                  add          a0, zero, a1
                  xor          s6, a7, a0
                  auipc        t6, 955339
                  sltu         tp, t2, a6
                  sra          s7, s0, s2
                  xor          s6, s9, t3
                  slt          s4, a0, a5
                  ori          t1, t2, 756
                  sub          a5, s5, s7
                  and          s7, a5, s0
                  nop
                  sub          sp, s6, t0
                  sra          t6, t4, s6
                  add          t6, tp, t3
                  sra          a3, a1, s11
                  sltiu        ra, s7, 277
                  sll          a0, t3, a2
                  or           s1, s5, t0
                  auipc        tp, 522635
                  or           t1, ra, s0
                  sub          t5, t0, s11
                  sra          sp, a0, t5
                  nop
                  ori          s8, a0, -559
                  slti         a2, s3, -598
                  sll          s3, sp, s9
                  nop
                  lui          sp, 543555
                  andi         s1, tp, 360
                  sltiu        t4, a6, 1313
                  sra          sp, s10, a4
                  xori         t4, sp, -1954
                  xor          gp, a1, s3
                  slli         gp, s2, 25
                  ori          a0, a7, 1209
                  add          t4, t6, s1
                  addi         zero, s5, 103
                  and          s5, ra, s3
                  slli         a6, sp, 8
                  srl          s4, a6, a0
                  add          ra, s7, s1
                  ori          t2, a4, 1725
                  srl          t6, t5, tp
                  nop
                  srli         a6, a5, 31
                  srli         a4, t6, 6
                  sra          a4, s1, t6
                  add          s4, s6, a3
                  auipc        sp, 311089
                  addi         a5, t4, 2040
                  auipc        zero, 741612
                  and          s10, s2, s11
                  sra          t1, s10, s5
                  andi         s1, s4, 1308
                  slti         a2, t1, 1934
                  sra          t0, t3, a6
                  xori         s3, s7, 43
                  slli         t4, a6, 17
                  xori         a3, tp, 1856
                  xori         t6, t1, -73
                  sll          a3, tp, s8
                  sltiu        s5, a2, 2034
                  andi         s6, a4, -1779
                  srai         s0, s11, 0
                  xori         tp, sp, -110
                  slti         s6, a6, 461
                  ori          a4, a7, -1667
                  sltiu        s4, s0, -1185
                  add          a4, s0, s7
                  nop
                  sltiu        sp, s6, 1993
                  srli         gp, s7, 14
                  and          t4, ra, s4
                  ori          t2, zero, -416
                  xori         s5, t6, -2045
                  xor          t5, t6, a5
                  srai         s1, t0, 20
                  slt          a4, ra, zero
                  auipc        sp, 326064
                  andi         s4, s10, -1987
                  slt          s1, zero, t6
                  slt          s0, a6, a4
                  sra          t2, ra, t4
                  sll          t6, a1, a5
                  slti         a4, t1, -936
                  and          s6, s3, ra
                  sltu         s5, ra, t1
                  ori          s3, t1, 1803
                  or           a0, s8, t4
                  and          gp, tp, s9
                  addi         s4, s4, -164
                  andi         s4, s4, -731
                  slt          t0, zero, t5
                  sltu         a4, t1, zero
                  srai         a0, t3, 12
                  sltiu        s5, s4, -1169
                  or           s3, s10, a2
                  sll          t1, s9, a1
                  lui          tp, 248789
                  sra          s0, s3, a5
                  slli         tp, s6, 24
                  auipc        ra, 147332
                  srl          s3, t0, sp
                  slti         a1, s9, -1877
                  sltu         a4, tp, t1
                  srai         ra, a2, 14
                  andi         sp, sp, -859
                  sub          s8, a0, s9
                  xor          a3, t6, s9
                  auipc        a6, 651155
                  sll          a7, s7, s9
                  slt          t5, s8, t4
                  sltiu        a3, s2, 665
                  sub          s6, t1, zero
                  nop
                  ori          tp, s10, -1006
                  sltu         sp, s2, a7
                  auipc        t4, 160728
                  ori          tp, a6, 1892
                  nop
                  sub          a1, a1, s10
                  andi         s8, sp, 39
                  srli         t4, s7, 4
                  slti         t6, sp, -965
                  xor          s7, a3, a7
                  slt          s10, a5, s7
                  auipc        s7, 229651
                  xori         t3, a6, -1159
                  slt          a4, t3, sp
                  ori          a0, a6, 987
                  sra          gp, s8, s6
                  ori          s6, a2, 1638
                  srl          s6, a5, a6
                  sltu         s6, s6, s2
                  srli         a0, zero, 7
                  addi         s5, sp, -1719
                  andi         a3, s10, 1092
                  nop
                  slti         s1, t4, -1091
                  slt          a2, a6, t5
                  lui          a5, 617542
                  and          s6, s9, a7
                  or           sp, tp, a6
                  andi         s8, t5, -994
                  srai         t1, s4, 2
                  sll          t2, t0, s10
                  srai         s1, s9, 23
                  nop
                  srai         a0, s9, 22
                  xor          a3, ra, t6
                  or           zero, a5, s2
                  nop
                  lui          t5, 131465
                  slt          a6, sp, s0
                  ori          tp, zero, -51
                  and          t4, s5, t6
                  ori          s1, t4, -1525
                  andi         s4, a0, -1628
                  slt          t5, s11, s9
                  and          s6, t0, t3
                  nop
                  ori          a6, a6, -1365
                  add          zero, tp, s11
                  and          ra, s4, t6
                  andi         a4, t6, 1896
                  srl          s0, s5, s8
                  slti         t3, t1, -1433
                  srli         ra, t5, 29
                  xori         a3, t5, 1133
                  or           sp, a1, s1
                  nop
                  slt          s5, s4, zero
                  add          a2, sp, s2
                  sltiu        s1, t0, 771
                  sltiu        t0, t0, -1859
                  srli         a0, a6, 25
                  sra          a3, s2, s7
                  addi         t5, t1, 1650
                  sub          t0, t2, t0
                  ori          s3, t5, 96
                  nop
                  and          a3, s6, s3
                  sltiu        s10, t2, 871
                  slt          t2, s5, t6
                  xori         t3, s0, -1984
                  add          a2, sp, zero
                  xori         t2, s5, -51
                  addi         s10, s1, 7
                  xori         s6, ra, 835
                  add          s8, s2, a7
                  srai         a2, t2, 7
                  xori         s4, s10, 1102
                  sll          zero, s1, s5
                  sub          s8, s11, s7
                  slti         s3, a7, 867
                  ori          tp, t0, 963
                  srli         a3, a0, 6
                  slti         t1, t0, 635
                  sub          a0, t4, t3
                  slli         s7, zero, 31
                  slti         s10, a3, -199
                  sltiu        a1, s5, 1803
                  sll          a0, t3, s3
                  lui          gp, 651577
                  and          t4, t6, s9
                  srai         a0, a1, 14
                  slli         t3, s0, 19
                  and          s3, t6, s4
                  sll          t5, s3, t5
                  slli         s1, s1, 1
                  lui          t4, 407782
                  xori         t6, a3, 720
                  ori          s4, t1, 1492
                  sltu         t6, s7, a1
                  or           t5, s0, a1
                  xori         a1, s8, -1516
                  slt          t3, a1, s3
                  sltiu        a7, s8, -153
                  nop
                  srl          s3, sp, s2
                  and          a2, t3, zero
                  lui          a2, 820774
                  xori         s5, t1, -1684
                  sll          a5, s9, t1
                  addi         s0, a2, 1750
                  slli         s3, ra, 20
                  addi         sp, s5, 975
                  and          zero, a4, a2
                  slt          s7, a0, s9
                  addi         t6, a4, 1271
                  srai         s8, s2, 9
                  andi         s3, t4, -60
                  sra          t3, tp, t3
                  addi         t2, a1, -1464
                  sltu         s4, t0, gp
                  addi         a4, a3, 680
                  sll          s6, zero, sp
                  auipc        a7, 500404
                  xori         sp, s5, -1422
                  ori          s5, s5, -1552
                  and          s1, t6, a2
                  slt          a4, s3, t6
                  srli         zero, a0, 14
                  addi         t6, s6, -421
                  or           s7, t1, sp
                  sltu         a3, zero, a5
                  xori         a0, a5, -1217
                  sltu         t1, a3, t4
                  lui          t4, 608971
                  slti         s3, ra, -14
                  srl          s8, t6, t4
                  nop
                  ori          t1, s2, 668
                  andi         a4, s9, 785
                  addi         s5, a4, 1501
                  addi         s8, s7, 2015
                  srli         a3, zero, 11
                  or           t6, t3, s10
                  xori         t3, s11, 224
                  andi         s4, gp, -592
                  andi         t0, t1, 1825
                  sltu         t4, s4, t4
                  srai         s5, t2, 15
                  slli         a5, zero, 25
                  andi         t2, t0, 818
                  slti         t2, s6, 399
                  srai         a4, a3, 14
                  slt          t5, t2, t6
                  sltu         ra, t4, s10
                  srai         a6, ra, 9
                  slt          s7, t3, t0
                  slti         s1, a5, -287
                  sltu         a6, s9, sp
                  slt          a4, a0, a4
                  slti         s0, gp, 1489
                  auipc        a2, 66001
                  slli         t3, s0, 9
                  lui          t4, 271410
                  slli         s0, a1, 7
                  xor          t5, s2, s9
                  srai         tp, a2, 13
                  addi         s8, a3, -1890
                  sll          s6, t1, s7
                  add          t3, s9, s8
                  nop
                  sra          tp, t2, t1
                  slt          s8, t2, tp
                  nop
                  andi         ra, s10, -1367
                  and          s1, a5, s6
                  xori         ra, s4, 70
                  slt          t1, s1, s6
                  xori         s0, t2, -1112
                  xor          s8, t5, gp
                  srai         s0, t6, 27
                  sll          s8, t2, s9
                  andi         s5, zero, -1371
                  sll          s4, sp, s6
                  slt          t6, t1, a1
                  xori         a0, a2, 1204
                  xor          t1, s11, t5
                  srli         s1, t5, 22
                  sub          a4, sp, gp
                  slli         a2, s7, 10
                  srl          t1, a4, a1
                  srli         a0, t6, 21
                  lui          s3, 915484
                  andi         a4, s8, -559
                  xori         t6, s6, 12
                  ori          t2, s5, -203
                  lui          a6, 50233
                  andi         tp, a4, -1780
                  xor          t5, t3, a4
                  lui          s0, 466265
                  sra          s8, tp, gp
                  sltiu        a1, s9, -956
                  lui          a1, 527255
                  slli         gp, s9, 30
                  auipc        sp, 603507
                  sll          s1, a3, s7
                  sltu         sp, a3, t3
                  xor          tp, s4, zero
                  andi         a1, ra, -961
                  srli         t6, t6, 28
                  auipc        sp, 356325
                  andi         t4, s3, 528
                  sll          s7, a0, tp
                  sub          a2, t6, a6
                  sub          t5, t6, ra
                  or           t5, s11, a7
                  srai         a4, s6, 10
                  lui          zero, 301698
                  xori         t0, t6, 2026
                  add          t2, zero, s6
                  srli         s7, sp, 17
                  slli         t2, t2, 12
                  xor          a2, t0, s11
                  sub          s1, s10, s11
                  nop
                  sltu         t5, s11, s10
                  slli         sp, tp, 1
                  slt          zero, t6, a3
                  slt          a0, s2, t1
                  slt          s10, a0, a7
                  sll          t3, t6, s10
                  sub          t6, s0, gp
                  or           ra, s9, s8
                  or           s3, s7, s10
                  add          s1, t0, t6
                  srl          a0, t2, a3
                  srli         s1, zero, 28
                  sll          ra, s8, t2
                  srl          s0, a3, a1
                  xor          t0, s0, ra
                  add          t1, a7, s7
                  slli         s8, s6, 30
                  ori          t0, a1, -1211
                  xor          ra, s1, sp
                  ori          s8, a2, -371
                  srli         s5, zero, 28
                  slt          a3, t6, s3
                  sra          a0, t4, a0
                  and          t0, s9, s1
                  andi         a7, s1, 728
                  sra          a7, a3, s8
                  sll          a2, a7, a6
                  srli         s0, s0, 8
                  sltiu        s3, t5, 935
                  sub          s7, t4, s8
                  xori         gp, s4, 168
                  sltiu        s0, t3, -994
                  ori          s6, s10, -1374
                  xor          t5, s5, t5
                  and          a6, sp, s6
                  or           s7, t3, a7
                  sll          t5, s6, s3
                  slli         s7, s5, 19
                  slli         s8, s9, 25
                  auipc        t4, 869678
                  and          s6, s2, s1
                  sltiu        zero, a5, -1024
                  xor          t5, t3, a3
                  auipc        s4, 762797
                  srli         s10, s6, 31
                  sltu         a7, s2, s3
                  sub          s10, s3, t3
                  lui          a5, 250726
                  slli         s4, zero, 12
                  xori         s7, tp, -27
                  sltiu        a2, a1, 1195
                  lui          t3, 788270
                  slli         t6, s3, 5
                  or           t1, a7, a7
                  slt          ra, a3, sp
                  add          tp, a1, a3
                  or           t1, s5, a1
                  sub          s5, s5, s2
                  nop
                  srl          a3, a2, s4
                  srl          t5, t6, t5
                  auipc        t4, 573030
                  slli         t2, a1, 0
                  sll          t1, s9, zero
                  sll          t4, t1, sp
                  sub          tp, s2, a4
                  andi         t1, t1, -142
                  ori          ra, s6, -2031
                  addi         s1, s9, 1791
                  andi         a3, a6, -40
                  slli         a6, s8, 13
                  or           t4, tp, a7
                  lui          gp, 801526
                  srai         s1, a1, 8
                  slli         s8, a2, 12
                  srli         a5, s11, 2
                  sra          s8, s10, s9
                  add          a3, a1, s11
                  sltiu        t0, sp, 535
                  sub          tp, s9, s7
                  xor          a7, gp, t1
                  xor          ra, a6, ra
                  sub          s0, a3, t2
                  xori         tp, t1, -122
                  slt          t2, s11, s3
                  sll          ra, t4, zero
                  lui          s8, 633815
                  slt          t1, s5, ra
                  srai         ra, a1, 23
                  and          a0, a1, s2
                  srli         t4, a1, 15
                  srai         tp, zero, 7
                  srl          s7, s8, t1
                  or           t2, s8, s2
                  slt          a0, a7, s9
                  lui          a2, 326585
                  auipc        s4, 292456
                  andi         ra, tp, -1581
                  xori         s0, t6, 454
                  xori         a2, s4, -2039
                  or           t3, t6, t0
                  xor          s1, s9, t1
                  or           s6, s10, s3
                  slt          a2, a3, s9
                  add          a6, t6, a6
                  slti         a2, zero, 1648
                  addi         zero, a0, 302
                  addi         t2, s2, -271
                  srai         t0, tp, 26
                  slt          s0, a6, ra
                  lui          t3, 35577
                  sub          a5, a2, s5
                  auipc        s8, 267406
                  slti         t0, s10, -1809
                  or           a2, a5, a7
                  or           ra, a7, t2
                  sltu         a2, s4, s5
                  sub          t3, tp, s5
                  sra          t5, t4, t3
                  or           tp, s10, s6
                  nop
                  srli         a4, a5, 4
                  and          s0, s11, s5
                  and          a0, a1, s10
                  xor          a7, a7, s10
                  and          a5, a2, t0
                  srl          gp, s1, s3
                  or           gp, s9, t6
                  srai         a4, t5, 21
                  srai         a7, a5, 3
                  auipc        a5, 251342
                  slti         tp, a7, -1875
                  ori          s5, t0, 512
                  sltu         a7, s3, t4
                  nop
                  slti         s10, s3, 915
                  xor          t4, a7, t3
                  nop
                  sltiu        s7, a5, -1003
                  lui          t6, 649608
                  lui          t2, 378673
                  addi         a2, t1, -270
                  sra          s0, a3, s7
                  addi         ra, a1, 1036
                  srl          a6, a7, a1
                  nop
                  nop
                  xori         a4, zero, 1219
                  slti         a7, s2, 1525
                  and          a0, s10, s8
                  xori         t6, s4, 917
                  srli         s8, s10, 4
                  sub          s0, s7, s6
                  add          a0, s9, a4
                  ori          s5, s0, -529
                  slli         t5, sp, 15
                  sltiu        a5, s0, 1619
                  sltu         t0, zero, s0
                  or           t0, s5, s11
                  andi         a2, a2, 1978
                  slti         a1, a1, -983
                  addi         t4, s0, -102
                  sll          a5, s0, t4
                  lui          ra, 182994
                  sub          a5, s1, a1
                  srai         s8, s4, 14
                  sll          s0, t0, a2
                  andi         a5, s4, -1704
                  sra          a1, s1, t1
                  srli         ra, t1, 25
                  xori         a5, s0, 734
                  slt          t5, tp, t1
                  srl          t3, a1, gp
                  lui          s8, 582727
                  sub          s8, t4, s4
                  srai         s3, t1, 6
                  ori          s3, t1, -410
                  or           a1, a4, zero
                  add          s4, t2, a7
                  sub          zero, s1, tp
                  srl          a1, t2, sp
                  ori          s5, s5, -1464
                  andi         s5, a1, -111
                  sra          a4, t1, a3
                  nop
                  or           a5, s11, a2
                  lui          t3, 656039
                  slt          t2, t6, s9
                  sltu         s10, t6, a1
                  srai         s1, t3, 31
                  sltu         t5, s9, a4
                  slti         t5, s11, 1524
                  sltiu        tp, t4, -1622
                  sltiu        t3, gp, 2009
                  or           a4, ra, s0
                  sltu         gp, s10, s6
                  srli         gp, zero, 20
                  lui          t6, 449239
                  add          ra, a5, a6
                  lui          gp, 613376
                  nop
                  addi         t4, s10, -1479
                  add          a5, s9, ra
                  ori          t0, a0, 1327
                  slli         ra, s1, 8
                  slli         s3, a4, 15
                  srl          a1, a3, a3
                  add          s7, t3, a3
                  ori          t3, s1, -456
                  srl          s10, t3, sp
                  add          t6, sp, a7
                  lui          t6, 60619
                  xori         s10, t2, 1346
                  and          a1, t5, a6
                  nop
                  add          a2, a4, t6
                  and          s0, ra, t2
                  sll          t3, s2, a3
                  srl          s6, s10, a5
                  sltu         s4, t4, s9
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s8, 0x80000000
                  li           ra, 0x0
                  li           t0, 0x0
                  li           s4, 0x379c12a6
                  li           gp, 0x0
                  li           a0, 0xfa2e1c1f
                  li           a5, 0x80000000
                  li           s3, 0xffffffff
                  li           t4, 0x5e147741
                  addi         ra, t3, 673
                  sub          t3, t4, ra
                  nop
                  auipc        gp, 1007829
                  add          a0, t3, a0
                  addi         s4, t3, -1769
                  nop
                  nop
                  add          t3, t3, gp
                  lui          s8, 812163
                  add          a5, t3, t3
                  sub          s8, s3, a5
                  add          a5, a5, s3
                  lui          t4, 1026095
                  nop
                  auipc        ra, 568480
                  lui          gp, 271754
                  auipc        a5, 458406
                  sub          a5, t4, t3
                  sub          t4, t4, s3
                  lui          s4, 335035
                  addi         t4, gp, -1299
                  add          ra, a5, t4
                  addi         t3, ra, -983
                  lui          gp, 200089 #end riscv_int_numeric_corner_stream_9
                  and          a1, ra, a2
                  lui          s5, 574395
                  addi         a5, sp, 1146
                  ori          s10, zero, -1986
                  srl          t3, t3, a3
                  slli         t2, s8, 26
                  lui          tp, 933967
                  srl          sp, t5, s0
                  sub          s0, t1, t0
                  add          s5, s10, a2
                  sra          a6, s4, zero
                  xori         a3, a6, 1266
                  slti         a6, a0, -540
                  nop
                  sll          sp, a4, ra
                  sub          sp, zero, a1
                  sra          s8, a6, t5
                  lui          s4, 182871
                  slt          t6, a6, a6
                  auipc        sp, 844001
                  ori          sp, ra, -1016
                  or           s8, a1, a4
                  sll          s10, s1, sp
                  srai         ra, s8, 27
                  xori         s7, s5, -71
                  add          s4, s9, ra
                  xori         s6, gp, 1651
                  xor          a1, s9, s9
                  nop
                  nop
                  slti         t0, s6, -663
                  sltiu        s0, s4, -589
                  srai         s1, s9, 15
                  and          gp, a0, t6
                  slti         s4, s3, 596
                  or           t2, t2, tp
                  slli         t0, s0, 29
                  srai         s1, tp, 15
                  xor          s6, ra, a2
                  auipc        gp, 222280
                  srai         a6, gp, 12
                  sll          zero, t5, t3
                  auipc        a7, 530588
                  xor          a4, s10, t6
                  sra          a6, sp, t4
                  ori          t4, a0, -596
                  nop
                  sltiu        gp, a0, 11
                  slli         t0, s7, 8
                  slli         a2, s1, 16
                  xori         s0, a0, -1074
                  auipc        zero, 757748
                  andi         a0, s2, 1804
                  sltu         s7, tp, a4
                  slli         t1, s11, 13
                  srl          sp, s8, sp
                  sll          a5, t4, a5
                  sll          t2, s3, s0
                  ori          t2, s4, -1646
                  slli         a4, s10, 29
                  add          s8, gp, t5
                  sll          s3, s2, zero
                  auipc        s3, 548799
                  sra          t0, s1, s4
                  sra          a3, s11, t6
                  xori         s0, zero, -1100
                  xori         t4, a7, 1871
                  slli         a0, t0, 13
                  andi         s10, tp, 1236
                  sltu         s7, s2, a3
                  sra          a7, zero, s9
                  sll          zero, s5, s10
                  slli         sp, s11, 30
                  srl          a1, zero, t4
                  ori          a1, a7, -1872
                  addi         s1, t1, -472
                  sltiu        tp, s1, -63
                  slti         s6, s4, -1846
                  sltiu        a0, a3, 224
                  and          s0, t0, t5
                  xori         sp, a7, -1360
                  srai         s7, s3, 20
                  and          t6, s3, a2
                  xor          a0, zero, gp
                  sltu         ra, s0, t2
                  nop
                  slti         a4, s1, 1497
                  sltu         s7, a7, gp
                  and          s6, t0, s4
                  slt          s3, s5, s9
                  add          s5, a5, a7
                  srli         a4, t2, 31
                  sra          a2, s4, a2
                  and          s4, a7, gp
                  srai         a3, s5, 27
                  xori         a0, s7, -1622
                  add          sp, tp, s2
                  sltu         s7, s5, sp
                  sll          a2, s7, s4
                  nop
                  slt          s3, t0, a7
                  sra          sp, s11, tp
                  and          a7, tp, a0
                  and          a4, t2, s8
                  nop
                  and          s10, t5, s8
                  xori         gp, a6, -469
                  xori         s0, a0, 482
                  sltu         tp, s5, a6
                  sltu         t6, s5, ra
                  sra          s3, s7, t1
                  sll          s4, ra, s3
                  auipc        a0, 123657
                  ori          ra, s3, -155
                  auipc        a6, 727059
                  sll          s3, a1, s8
                  srli         s8, t0, 8
                  srl          s5, s4, s8
                  srai         zero, s10, 5
                  and          a7, tp, a0
                  lui          s4, 697892
                  slt          ra, t3, t3
                  ori          sp, a6, 1434
                  and          t1, s5, t0
                  slli         a3, t4, 31
                  lui          s7, 776072
                  lui          a0, 486555
                  srai         t2, a2, 9
                  and          a0, s9, a0
                  srli         t6, t3, 0
                  sll          t4, s4, t5
                  srli         s7, s5, 12
                  slti         a3, a4, -482
                  ori          a0, s2, -886
                  sra          s6, s8, s3
                  srli         s5, zero, 16
                  nop
                  sltiu        a5, zero, 893
                  sll          s5, s0, a1
                  srli         t1, t2, 23
                  sltiu        t3, t2, 1721
                  add          t1, sp, t2
                  srli         s4, t2, 28
                  lui          a1, 396775
                  slt          s0, t0, t1
                  or           s5, a5, a4
                  srl          zero, s11, a7
                  slti         s0, a2, 1553
                  xori         gp, a2, 786
                  srl          gp, s11, tp
                  or           s0, s5, s10
                  add          a3, t4, s2
                  xori         t6, s1, -1674
                  slt          s3, a3, a0
                  add          s7, t5, gp
                  xori         t2, s8, 132
                  slt          t6, t0, s0
                  lui          a5, 537797
                  ori          a0, s5, 1350
                  slti         a5, a0, 869
                  andi         s3, s2, -674
                  ori          t5, a4, -1683
                  xor          t3, s2, s9
                  slt          a3, a4, a4
                  srai         s7, tp, 28
                  sltiu        s10, sp, -638
                  sra          s8, s9, a3
                  slt          a6, t4, s7
                  sll          t0, a1, gp
                  andi         a0, s0, -1707
                  sra          t1, s2, s6
                  srai         s6, s10, 12
                  sll          s1, t1, s9
                  sll          a7, s10, ra
                  sra          s6, t5, s4
                  slli         s0, zero, 23
                  lui          a5, 151718
                  slli         t3, sp, 13
                  or           s10, s4, t6
                  lui          s8, 1048503
                  sltu         s1, gp, t0
                  sltiu        s4, s9, 131
                  sll          s3, s5, a6
                  sltu         a4, s8, s6
                  sra          t6, t1, s3
                  xori         t1, gp, -94
                  addi         t0, t1, 1880
                  srli         t3, s8, 30
                  xori         sp, s1, -1166
                  sll          zero, a5, a6
                  sltiu        s5, t2, -836
                  and          zero, gp, a2
                  nop
                  sra          s7, t0, s0
                  sll          a2, zero, s7
                  srli         a6, ra, 9
                  xor          t3, a3, s1
                  and          s3, gp, s7
                  sub          s3, s5, s9
                  lui          s3, 43376
                  sll          s7, s4, s9
                  auipc        gp, 683662
                  add          t3, s6, a7
                  sra          s6, tp, t1
                  xori         t0, sp, 1236
                  lui          t4, 263043
                  addi         ra, a0, 361
                  lui          tp, 302366
                  or           s4, t6, t5
                  add          t5, s2, t6
                  sll          ra, t0, gp
                  sltu         gp, a7, t3
                  xor          a6, t3, gp
                  srl          a2, a0, s9
                  nop
                  and          s3, s0, s9
                  sltu         t0, s5, s4
                  ori          t3, s7, 1408
                  srli         t4, s10, 30
                  sub          a3, t5, s7
                  sra          a3, s11, a3
                  srli         s10, a5, 7
                  add          a5, s5, a3
                  auipc        s8, 220704
                  xori         s6, ra, -208
                  sub          gp, s3, tp
                  sltu         s5, gp, a4
                  xor          t5, s6, a5
                  lui          s3, 967407
                  xori         tp, t1, 324
                  addi         a0, a1, -1978
                  addi         a7, s7, 1035
                  addi         a5, s6, -344
                  ori          s8, s6, 1669
                  lui          t6, 920840
                  sll          s3, tp, a6
                  srl          sp, s9, t3
                  lui          t6, 192349
                  sltu         t4, a1, tp
                  slt          tp, a3, t5
                  nop
                  slt          t6, sp, a1
                  addi         s8, s7, -1152
                  srl          t6, a2, t4
                  ori          zero, ra, -1060
                  andi         gp, s1, 1207
                  sltu         s0, a3, s6
                  srai         s8, a0, 19
                  lui          t0, 173423
                  auipc        s7, 1015264
                  ori          t1, gp, 122
                  xori         a4, gp, -2017
                  xor          t2, a5, a6
                  xori         s8, s10, -15
                  add          s0, s10, t0
                  srli         a4, s10, 4
                  srli         a3, s11, 20
                  xor          s3, s3, s9
                  sltiu        a5, gp, 401
                  xori         s1, a6, 744
                  ori          a5, a5, -691
                  srai         s0, s7, 5
                  lui          a7, 950131
                  and          t1, a7, s2
                  auipc        tp, 54812
                  ori          s10, t4, 1298
                  srai         t1, s4, 8
                  sltu         s6, a6, t5
                  sll          zero, s10, a2
                  nop
                  sub          s8, a4, t1
                  xor          ra, s9, zero
                  xor          gp, tp, tp
                  slti         a6, s10, 1282
                  xor          a5, t5, a3
                  or           t0, t3, s11
                  sll          s0, s5, s2
                  srai         s4, ra, 26
                  xori         t2, tp, 1904
                  sll          s10, t5, s0
                  lui          tp, 533144
                  xor          t3, a1, ra
                  add          sp, t4, t3
                  sub          s7, t1, a5
                  lui          a4, 727965
                  add          a6, t2, a2
                  ori          a4, a1, 1104
                  srl          a5, t6, a1
                  auipc        s8, 484998
                  slli         a0, t1, 2
                  sll          s5, a3, s3
                  addi         s7, t3, -1553
                  sra          s0, s11, s0
                  or           t3, t3, s11
                  and          a2, a6, a3
                  srl          a3, t1, a6
                  lui          a7, 667950
                  andi         a1, s5, 2012
                  slt          t3, a3, sp
                  xori         a5, a4, -1395
                  nop
                  sltu         s0, a1, t1
                  sra          t2, t5, s9
                  and          sp, a5, s10
                  sltu         a5, a4, s0
                  or           t1, s7, s0
                  slt          s8, s0, s11
                  sltiu        s0, zero, -403
                  lui          t3, 143892
                  sltu         a4, s11, s10
                  lui          a0, 471381
                  add          a4, s6, t6
                  addi         a7, ra, 1583
                  slti         t4, s7, 1152
                  slli         a1, a3, 11
                  and          a5, s8, a3
                  srl          a7, a5, s1
                  xor          s1, t6, s4
                  slti         s10, t1, -2018
                  lui          zero, 563498
                  sra          s3, a1, zero
                  slli         a2, s5, 5
                  slti         s3, s0, -1109
                  addi         s8, zero, -799
                  add          s8, s7, s3
                  auipc        tp, 739521
                  srai         t5, s9, 27
                  xor          zero, a5, a5
                  sll          s4, s4, t6
                  or           tp, s11, sp
                  ori          a7, t6, 377
                  srai         t2, a6, 22
                  addi         t2, s3, -1272
                  slti         a1, tp, 1981
                  xor          t4, t3, t4
                  or           ra, s5, s11
                  auipc        a4, 563679
                  ori          a3, t2, -1489
                  sltu         a4, s2, s2
                  slli         zero, tp, 11
                  addi         a0, s8, -199
                  srai         a6, a1, 22
                  nop
                  andi         ra, t0, 747
                  sub          a1, t6, s7
                  sltu         tp, zero, t5
                  or           s8, s2, t0
                  sltu         tp, t1, a7
                  sub          t4, a6, t2
                  lui          tp, 17186
                  sra          sp, s5, a7
                  or           a7, s3, t2
                  andi         a2, s4, 776
                  slt          a2, t5, a6
                  sltu         a7, tp, s8
                  srai         sp, sp, 10
                  nop
                  xor          s6, a7, s10
                  slti         s0, a7, -957
                  slli         a1, a7, 14
                  andi         t2, t5, 744
                  sll          a5, s9, s3
                  lui          s0, 349018
                  sub          s6, s4, s11
                  andi         t3, a1, -441
                  add          a5, t5, s3
                  ori          a5, t0, -1634
                  sub          zero, gp, a7
                  srai         s8, a4, 21
                  sra          s8, a7, tp
                  sra          s0, a0, s0
                  srl          t1, t6, t0
                  and          t2, s9, a4
                  slti         gp, a5, 974
                  slti         s0, s3, 763
                  sub          s10, s7, s0
                  xor          t2, t2, s9
                  srli         a6, a2, 0
                  and          t5, t5, s8
                  xori         t2, s0, 20
                  nop
                  or           t4, s10, sp
                  and          s6, a0, s4
                  auipc        t6, 209356
                  sll          s0, s5, a3
                  andi         t3, s0, 1236
                  sra          ra, s1, s2
                  srli         t1, s1, 12
                  sll          a6, ra, a4
                  slti         zero, t5, 695
                  xori         a7, t4, -1915
                  slti         t3, t6, 276
                  addi         t0, t2, -1508
                  slti         gp, s1, 1246
                  addi         s3, zero, -41
                  sltu         a2, s9, a3
                  nop
                  srl          t4, s1, tp
                  sltiu        sp, s10, 275
                  srl          tp, s2, t4
                  sll          a5, zero, s8
                  srli         t5, t5, 11
                  addi         t0, a3, -1360
                  andi         s4, s3, -568
                  xor          a1, s2, s10
                  and          t4, a2, s0
                  sltiu        s8, t3, -1292
                  slti         a2, a7, 189
                  addi         t2, zero, 1102
                  srl          a3, a0, a4
                  addi         s5, t5, 1067
                  srai         t4, a5, 21
                  sltiu        sp, s7, 1469
                  sub          a7, s11, a4
                  addi         a0, tp, 31
                  addi         s1, ra, -512
                  andi         a3, gp, -1836
                  nop
                  lui          a6, 985311
                  sub          a6, s2, zero
                  slt          tp, a6, t5
                  add          t2, s11, a4
                  or           t6, tp, s9
                  srl          s6, a0, s1
                  add          t3, tp, s4
                  nop
                  sra          s1, s1, s5
                  nop
                  srli         gp, s7, 9
                  srli         t6, t0, 16
                  sll          zero, t1, s0
                  and          a5, a4, s7
                  sll          a7, s2, s4
                  slli         zero, s8, 6
                  or           t5, a3, a2
                  srai         a2, sp, 12
                  and          s0, s2, s6
                  nop
                  sltiu        a7, sp, -2032
                  sltu         ra, s10, t3
                  sltu         t5, t0, s8
                  sll          s7, t2, zero
                  or           gp, s4, t0
                  or           s10, s8, t5
                  add          t2, s1, s6
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s0, 0xe56f770
                  li           s8, 0x0
                  li           a6, 0xb2a1b89d
                  li           t5, 0x0
                  li           a0, 0x0
                  li           sp, 0x80000000
                  li           t6, 0x4df10d45
                  li           a4, 0x0
                  li           a7, 0x0
                  addi         a4, sp, 1539
                  addi         sp, t5, -1279
                  addi         a0, s8, -749
                  sub          s8, t5, t5
                  nop
                  add          s5, s8, sp
                  sub          a4, s8, a0
                  sub          t5, s0, t6
                  auipc        a7, 224620
                  sub          s5, s0, s5
                  lui          s0, 104800
                  lui          a7, 924010
                  nop
                  sub          s0, s0, s0
                  sub          a6, a6, s8
                  auipc        a6, 332419
                  nop
                  nop
                  addi         a0, a6, -1719
                  sub          a6, s5, s0
                  addi         s8, t6, 2021
                  sub          sp, a0, a7 #end riscv_int_numeric_corner_stream_6
                  sra          s1, s0, s6
                  srl          t2, t4, a7
                  sltiu        t2, s3, -632
                  sra          a5, s8, t1
                  nop
                  sra          sp, t0, s1
                  addi         a6, t3, 1372
                  sltu         a2, a0, a5
                  srli         a0, a1, 10
                  nop
                  add          a0, a3, s11
                  slt          a6, a4, gp
                  or           ra, t2, t6
                  srai         s3, t3, 11
                  srl          s7, a4, a7
                  xori         zero, s2, -1341
                  add          s3, t6, a4
                  auipc        t5, 707155
                  sll          t2, t0, t3
                  sll          tp, s4, a1
                  xori         t5, t0, -719
                  slt          s5, t0, s11
                  sub          s10, a3, s8
                  slli         s10, s1, 22
                  slti         t3, t4, -1633
                  srli         s4, s7, 0
                  ori          s1, s0, -1689
                  xor          s8, s7, s1
                  andi         gp, s5, -1941
                  slti         a3, s6, 1213
                  sub          s0, s10, s4
                  and          s8, a2, s7
                  slti         a3, a5, -371
                  srli         t1, gp, 8
                  srai         a3, s1, 29
                  auipc        sp, 546738
                  ori          s3, s6, -1189
                  addi         s5, t5, 432
                  slti         s0, s10, -1000
                  auipc        t1, 25144
                  nop
                  xori         t0, a5, 249
                  add          a6, s6, t2
                  xori         a3, a2, -1499
                  slt          a5, s9, t3
                  slti         s6, a5, -1331
                  xori         a4, s4, 342
                  addi         t1, s6, -1975
                  xori         a0, t5, -1431
                  and          a2, s0, a7
                  auipc        a7, 517594
                  xor          s4, s1, s0
                  or           a7, a1, a4
                  sltu         s10, t3, s7
                  ori          s7, s8, -631
                  slli         a0, s11, 17
                  sll          t4, t0, t3
                  slti         s8, s8, -508
                  addi         a6, s3, 244
                  auipc        t0, 856860
                  and          a4, a6, a1
                  lui          a7, 992601
                  sra          s4, t5, s0
                  sll          s10, s5, t2
                  auipc        zero, 312135
                  sra          s0, s3, a0
                  slli         a5, tp, 3
                  xor          t6, t1, a5
                  srai         a4, s6, 25
                  nop
                  sltu         s6, s9, s2
                  ori          a6, gp, -798
                  or           s4, t5, s11
                  ori          t3, s8, 1381
                  addi         ra, s2, -2010
                  sltu         a7, gp, sp
                  ori          t1, t2, 1729
                  xori         a4, s4, -724
                  slti         s8, s7, -576
                  xori         t3, t4, 1439
                  srai         tp, t3, 10
                  add          a6, s8, gp
                  sra          a0, s4, s3
                  sll          s5, s11, t4
                  andi         t5, s8, 1653
                  addi         s10, gp, -934
                  sll          a1, gp, a5
                  auipc        a5, 720350
                  addi         a3, t3, -84
                  auipc        a5, 516885
                  srai         s3, s6, 27
                  nop
                  andi         t3, a0, 1520
                  srai         t0, s1, 9
                  srl          tp, s5, a4
                  srai         t6, s0, 31
                  srl          s7, a7, gp
                  slt          sp, t2, t2
                  addi         a5, a7, 899
                  xori         zero, a2, 2009
                  sltu         s5, gp, a6
                  nop
                  slt          t0, t0, a4
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s10, 0x0
                  li           t1, 0x0
                  li           t0, 0x0
                  li           gp, 0x0
                  li           s6, 0x80000000
                  li           t3, 0x0
                  li           a3, 0xffffffff
                  li           a6, 0x80000000
                  li           a7, 0x0
                  add          a3, a7, gp
                  auipc        a6, 495860
                  lui          a3, 914468
                  nop
                  add          a1, t3, a3
                  add          a6, t0, t0
                  lui          t3, 130297
                  auipc        s6, 104989
                  auipc        a6, 162522
                  add          a1, t3, a7
                  add          t1, a1, s6
                  auipc        t3, 799014
                  nop
                  auipc        a3, 893181
                  addi         a7, t1, 986
                  sub          s6, a3, t0
                  auipc        gp, 881096
                  lui          a3, 533017
                  add          t3, a6, a1
                  auipc        s6, 280782
                  lui          s10, 965870
                  nop
                  nop
                  auipc        a1, 815804
                  addi         t1, a6, 1992 #end riscv_int_numeric_corner_stream_11
                  sub          s7, a7, s5
                  sltiu        a3, s0, -1549
                  srai         t0, ra, 25
                  sub          a0, a3, gp
                  slli         zero, sp, 23
                  lui          t2, 245326
                  or           a5, t6, a6
                  or           s6, gp, tp
                  or           a0, s5, t2
                  sltiu        a4, a2, -1812
                  xor          s5, a4, a6
                  ori          ra, t2, -1160
                  sra          t2, t6, s6
                  slti         t4, gp, 1118
                  sll          s10, s11, t2
                  auipc        t1, 497722
                  nop
                  addi         s8, s0, 666
                  srl          s0, s11, gp
                  auipc        s7, 68143
                  slli         t6, t1, 28
                  slli         t0, t2, 2
                  lui          s0, 646421
                  and          t2, a4, tp
                  addi         t2, a1, -1772
                  auipc        zero, 102387
                  lui          t6, 194950
                  srai         s4, s6, 27
                  sltu         t0, s1, s3
                  and          s7, sp, a5
                  xori         sp, t0, -822
                  srli         t0, a0, 28
                  xor          a1, t1, t0
                  sll          a2, s2, t1
                  sll          zero, t2, a7
                  slt          s8, a5, t4
                  sub          sp, t5, s6
                  sltiu        t1, tp, -1955
                  or           t4, s2, sp
                  slt          t2, t0, zero
                  sltiu        s4, s6, 1406
                  xori         a0, s2, -1035
                  slt          a2, t0, s4
                  srai         s1, s2, 29
                  sra          s0, t3, t6
                  nop
                  and          t0, s1, s2
                  sltiu        t6, s1, -1048
                  or           s5, a4, s7
                  sra          s1, s6, s7
                  sll          s0, t4, s1
                  sub          s0, s2, s11
                  xor          gp, t5, a2
                  sll          s3, s9, sp
                  srli         s5, s11, 2
                  add          t4, t6, s10
                  srli         a6, s1, 2
                  xor          a0, gp, t6
                  lui          t6, 854053
                  or           t5, s8, a2
                  and          tp, s6, s1
                  sub          t1, a6, s10
                  srli         a2, t3, 28
                  auipc        t0, 231684
                  ori          t3, tp, -461
                  sll          a4, sp, s11
                  or           t4, t0, t5
                  xor          s10, t4, s7
                  slt          sp, a4, s1
                  slti         a4, s1, -548
                  nop
                  add          sp, a6, s9
                  addi         t1, a2, -949
                  slli         gp, s4, 11
                  ori          s8, s7, -229
                  slt          a4, s7, s9
                  and          a4, t5, a5
                  or           t2, a2, s1
                  xor          a3, s7, zero
                  andi         ra, a3, 1471
                  srl          a6, s11, s3
                  sll          s10, a1, t4
                  addi         a0, s1, 38
                  srli         s1, s8, 21
                  lui          ra, 496850
                  or           gp, t0, tp
                  xor          sp, a0, a6
                  and          a1, s7, s1
                  sltu         s0, s8, a2
                  xor          s6, a2, s4
                  srli         t3, s10, 4
                  srai         s7, s10, 30
                  sub          s0, s5, zero
                  srli         sp, t5, 12
                  sra          s3, s10, s6
                  sltiu        t0, a2, 849
                  lui          s1, 627755
                  sll          s4, sp, s0
                  sub          ra, s4, s0
                  xori         t4, a2, -493
                  sub          s4, a7, a4
                  addi         zero, a6, -1397
                  srai         s5, a5, 7
                  sub          t5, s8, a4
                  andi         gp, s3, -621
                  srli         s0, t3, 10
                  andi         zero, s4, -224
                  slli         s7, t2, 7
                  slt          t2, s3, a7
                  sll          s4, s3, t2
                  sltu         a3, a4, sp
                  slli         t1, a1, 13
                  andi         s8, a6, 1030
                  and          t2, gp, a3
                  xori         t2, s8, 461
                  ori          a5, a1, 1642
                  and          s0, s6, tp
                  auipc        sp, 82450
                  or           s4, s5, s0
                  sltu         a7, s4, s3
                  add          t0, s2, a2
                  xori         tp, s3, 279
                  auipc        sp, 445220
                  sll          s8, gp, s0
                  add          t4, tp, s2
                  srli         s10, s2, 30
                  sll          sp, s6, a5
                  srli         t1, s5, 23
                  andi         s4, a2, -2015
                  srl          a7, s11, t0
                  ori          s3, t3, 469
                  slt          s8, a2, t1
                  srli         s0, t6, 20
                  srai         s10, a2, 1
                  nop
                  andi         a6, s11, -1037
                  srai         t5, a3, 24
                  slt          a3, a7, ra
                  srai         s1, s0, 10
                  and          t1, s9, t0
                  slti         s0, a5, 511
                  add          t4, s9, s7
                  sltiu        a2, a0, 1062
                  sltu         s7, t6, t6
                  sra          s8, t1, t5
                  slt          s8, s7, ra
                  auipc        s1, 44734
                  slli         t5, t6, 16
                  sltiu        a7, a3, -394
                  sra          a6, a4, tp
                  or           a5, s10, s10
                  nop
                  auipc        tp, 500058
                  xori         s3, t5, 758
                  auipc        t3, 643018
                  lui          a4, 257618
                  slli         tp, a0, 1
                  andi         a2, s6, 1329
                  xor          zero, s2, s2
                  nop
                  and          s0, a2, s6
                  srli         t1, gp, 14
                  auipc        s6, 663026
                  slti         t5, a6, 1892
                  and          sp, s8, a4
                  srai         t5, t6, 0
                  slti         s4, s3, -434
                  or           sp, ra, t2
                  xori         s5, t3, -381
                  srl          a3, s0, s9
                  slt          a4, t1, s6
                  srli         s7, t6, 15
                  slti         a5, s10, 486
                  srai         t3, s9, 19
                  sltu         s6, zero, s4
                  srl          t6, a1, s10
                  srli         s10, s6, 29
                  xor          s0, s1, a4
                  srli         sp, s10, 6
                  nop
                  andi         s7, t6, -246
                  or           t5, s8, t3
                  nop
                  slti         t0, a6, 309
                  xor          s4, t5, s11
                  slli         tp, a5, 26
                  lui          t3, 705812
                  sltiu        t4, t4, -1859
                  sra          a3, a0, a3
                  addi         a2, a2, 564
                  add          t3, t0, a5
                  sra          a6, s7, a3
                  srl          t4, s4, sp
                  ori          t2, a3, -780
                  sltiu        a1, s10, 96
                  srli         t2, s4, 0
                  addi         a3, tp, -731
                  srl          a7, t6, s8
                  nop
                  sltiu        tp, a7, -384
                  slt          s0, t6, t4
                  slli         a2, t3, 26
                  auipc        t6, 886873
                  or           a7, s10, s4
                  lui          ra, 386711
                  sll          a4, sp, s6
                  srai         a6, t2, 25
                  add          a3, a2, t0
                  srai         a1, a7, 12
                  andi         s8, t0, -1008
                  add          a1, sp, a6
                  xor          s6, s7, zero
                  sltiu        zero, a6, 1957
                  srl          t1, s3, gp
                  andi         a0, tp, -693
                  or           a4, s2, t3
                  and          a1, s4, s0
                  sub          t0, a7, a4
                  srai         t3, s5, 5
                  xori         a3, a1, 272
                  or           t6, a1, a4
                  andi         a5, s7, 488
                  xori         s8, s0, -1091
                  sltiu        tp, s8, -1083
                  lui          s5, 419336
                  xor          s5, a4, a6
                  srli         tp, t6, 1
                  slt          s10, s5, s6
                  add          s3, a2, t3
                  addi         a3, t1, -864
                  add          a0, s10, s6
                  sll          zero, s7, s9
                  srli         a2, s3, 3
                  lui          s4, 786997
                  slt          a6, s1, t2
                  srl          s7, t5, a7
                  srai         s0, t2, 7
                  or           a6, a7, s3
                  add          t2, s6, a1
                  sltu         t3, zero, a0
                  andi         s5, t6, -1635
                  xor          a1, t4, zero
                  slti         t6, t2, 1350
                  sltiu        zero, s6, 1611
                  auipc        s0, 651781
                  srai         t5, a3, 12
                  srl          t6, a3, tp
                  xor          tp, t1, t5
                  sub          s8, a5, t6
                  sub          t3, a2, s0
                  nop
                  sub          ra, t1, a5
                  xor          a1, t1, s8
                  add          s7, s10, t6
                  sltu         a3, t3, t1
                  add          s7, t6, t4
                  xori         s0, s4, 1991
                  sra          a0, s2, a2
                  slti         gp, t1, -1757
                  slti         zero, s4, 16
                  andi         s1, ra, 769
                  nop
                  and          sp, s8, a5
                  slli         gp, a6, 16
                  sltiu        a7, s6, -230
                  sra          tp, t0, a7
                  srli         a3, s11, 21
                  sltu         t0, s0, s2
                  nop
                  slti         t2, a3, 1971
                  sltiu        t2, zero, -2041
                  sra          ra, s5, s3
                  srai         a2, t2, 5
                  sub          s5, s9, a7
                  srai         s6, t6, 1
                  slli         t2, s6, 13
                  nop
                  sltiu        t5, s1, 654
                  xori         a6, s3, -369
                  and          s0, s3, a0
                  srli         a2, s4, 25
                  sub          a7, s9, s3
                  xori         a2, s10, -1450
                  and          a3, a7, s0
                  sra          ra, a0, s5
                  sltiu        s3, a0, -1872
                  srl          zero, a4, t5
                  and          s4, t1, s5
                  sltiu        t2, s9, 1784
                  srl          s0, zero, t1
                  slli         a1, t5, 15
                  nop
                  slli         tp, gp, 31
                  srai         zero, t2, 28
                  sra          a6, a7, s3
                  srai         a5, a3, 25
                  sra          t5, t2, s4
                  and          a2, t3, a3
                  srli         t3, gp, 11
                  andi         ra, t3, -1751
                  srai         s3, s11, 12
                  and          a2, t4, t6
                  xor          t6, s4, s6
                  xori         a1, a0, -1783
                  addi         s5, s5, -1415
                  nop
                  srl          s6, zero, s9
                  auipc        a4, 317833
                  and          a7, s11, t4
                  auipc        s4, 135849
                  sub          a4, t3, t0
                  sra          t4, s5, a2
                  slli         sp, s10, 1
                  slti         s0, a3, 88
                  add          s5, s6, zero
                  and          t0, s1, zero
                  sltu         s1, t4, s0
                  srai         a5, s9, 29
                  add          s10, t1, s9
                  sll          a2, t6, t2
                  xor          a4, a5, sp
                  sra          s3, s8, s5
                  andi         s3, t6, -1989
                  slti         s1, t2, -1721
                  and          s7, s6, a5
                  xori         a1, t2, 1405
                  auipc        a0, 315550
                  xor          zero, s5, a6
                  lui          s0, 184170
                  add          a3, zero, ra
                  lui          t5, 1012074
                  and          s3, s2, t5
                  srai         s7, s4, 20
                  srai         a5, s10, 19
                  sll          ra, s4, s7
                  add          s0, sp, sp
                  xor          zero, s6, s2
                  srl          ra, s1, s0
                  nop
                  slli         t2, a7, 5
                  sltu         sp, s6, t4
                  auipc        tp, 990079
                  xor          t6, s1, a5
                  xori         sp, t5, -1792
                  addi         s6, t3, -24
                  slti         t4, s2, -1909
                  or           t4, t2, a2
                  and          t3, sp, s4
                  or           a7, s4, t4
                  and          s5, s7, s10
                  sub          s7, a5, sp
                  nop
                  andi         a0, s10, -495
                  xori         s3, a6, -1586
                  sra          t3, s8, s8
                  sra          s6, s6, s9
                  sltu         ra, a6, s5
                  and          t2, tp, sp
                  srl          t4, s0, zero
                  sll          a0, tp, s1
                  ori          s8, s5, 1732
                  slt          s1, s0, s9
                  sll          gp, s9, sp
                  slt          s1, a6, t5
                  sra          a3, s8, a1
                  srl          s7, a7, t4
                  srli         t3, s9, 0
                  auipc        s8, 235637
                  slti         t4, a7, -2048
                  slli         a6, s10, 12
                  ori          t5, tp, -1241
                  ori          zero, t2, -664
                  or           s4, s6, a0
                  srai         a0, sp, 2
                  sra          t3, s9, a1
                  sub          s10, zero, s4
                  sub          tp, s3, a2
                  sra          zero, t5, s5
                  slti         s0, s11, -1195
                  srai         s8, a2, 1
                  andi         t5, a4, 793
                  slti         gp, t4, 109
                  auipc        s6, 981960
                  addi         t5, t0, -1370
                  or           ra, s8, s1
                  lui          a3, 275687
                  auipc        a1, 263428
                  slt          t0, s3, a3
                  nop
                  slti         tp, a4, -602
                  lui          sp, 50392
                  and          t6, a6, a6
                  sltiu        a0, a3, 32
                  slli         zero, a1, 13
                  slt          t1, t0, s5
                  lui          s4, 164806
                  xori         sp, a2, -1325
                  add          s8, a4, s2
                  andi         s6, t0, 436
                  sll          gp, s11, a6
                  sra          s10, t5, s7
                  auipc        s8, 402825
                  addi         a5, t3, -739
                  xori         s0, a7, 138
                  auipc        a2, 941953
                  andi         a7, t4, 507
                  auipc        a5, 352992
                  sll          s4, a1, sp
                  and          t2, a3, t3
                  sra          s5, a5, t2
                  sltu         a3, s6, s2
                  srl          a6, t3, s11
                  sub          a4, zero, t2
                  slt          s3, s0, a4
                  and          a6, gp, t5
                  slti         a5, a0, -2024
                  sltu         zero, a6, s10
                  andi         t5, t2, -429
                  slt          t4, zero, s3
                  sltu         s6, a2, s10
                  lui          a0, 426894
                  sll          t4, s11, t6
                  sra          a6, t5, ra
                  srli         ra, zero, 14
                  sra          t6, s10, s0
                  slli         s3, s10, 5
                  slt          s8, s8, t1
                  srli         t0, s5, 28
                  slli         sp, ra, 25
                  nop
                  or           a5, a6, ra
                  sltiu        s6, a7, 1686
                  and          zero, s5, t6
                  add          s10, a5, a4
                  slt          a4, gp, s5
                  srl          s4, a2, tp
                  sll          sp, a1, t3
                  xor          t5, ra, a7
                  nop
                  sub          t3, a7, t3
                  srai         s0, zero, 24
                  nop
                  ori          a7, t1, 573
                  or           t4, a5, t4
                  slli         a3, s8, 2
                  srli         s3, a5, 15
                  andi         a7, a4, -1723
                  sra          t4, t3, s8
                  ori          t2, zero, 1691
                  sltu         s8, a4, t1
                  nop
                  lui          t1, 767926
                  ori          a3, t3, 1140
                  xor          s3, s6, s7
                  lui          s4, 897461
                  slli         s10, a5, 25
                  lui          zero, 79429
                  srli         a5, t5, 3
                  sra          s6, t1, s5
                  xori         t2, s10, -1272
                  slti         s6, t4, 278
                  sll          a0, s7, ra
                  ori          s4, tp, 551
                  nop
                  sltu         a4, s1, zero
                  xori         t6, s6, 234
                  srl          a1, s11, a2
                  slli         gp, a4, 31
                  sltiu        a3, a1, -668
                  slli         a6, s8, 16
                  srl          tp, zero, s1
                  andi         zero, a7, -1610
                  add          a4, s8, gp
                  sltu         tp, t0, s2
                  srai         t2, a0, 28
                  slli         sp, s2, 21
                  srl          gp, s7, sp
                  xor          t4, s9, gp
                  slti         a3, a6, -428
                  slt          s10, t2, s9
                  slti         s3, s9, 708
                  auipc        s3, 236060
                  xor          s7, gp, a3
                  lui          zero, 508920
                  sub          s8, s9, a1
                  sltu         zero, s2, s2
                  add          t1, tp, a2
                  nop
                  srli         s1, sp, 7
                  slti         a5, a6, -1436
                  xori         t3, s2, 1861
                  ori          s6, zero, -1998
                  srli         s6, s2, 17
                  sra          a4, a3, t5
                  auipc        t5, 420549
                  andi         a2, t3, 748
                  auipc        gp, 763252
                  sltiu        s7, t6, 8
                  slli         s7, t2, 8
                  and          t2, s7, s1
                  andi         t0, zero, -1075
                  sltu         t1, a7, tp
                  add          s7, s9, sp
                  slli         s1, tp, 26
                  sub          a6, a2, s11
                  sltiu        a0, s0, -1765
                  slt          tp, t3, a1
                  or           s7, a7, tp
                  srai         ra, s0, 21
                  add          t5, t6, a5
                  add          tp, s5, t1
                  sub          t5, t3, s4
                  slti         t0, t4, 1590
                  slt          t0, s4, zero
                  sub          s0, tp, s5
                  sub          a2, a0, a7
                  andi         s4, s8, -1213
                  xori         s4, s11, -1836
                  srai         a7, ra, 6
                  add          t3, s11, t4
                  srli         s6, s4, 1
                  xori         zero, a3, -1220
                  xori         sp, t4, 1981
                  sll          s5, s10, s1
                  lui          a7, 192297
                  sltiu        a4, s4, 1322
                  or           zero, s1, t6
                  lui          s5, 755069
                  ori          s10, t3, -923
                  lui          t5, 576633
                  auipc        s5, 214793
                  srai         s4, s2, 15
                  andi         a4, t6, 803
                  auipc        a2, 479252
                  xor          t5, s1, s10
                  auipc        t4, 292613
                  slli         a4, s1, 29
                  srai         a3, t0, 30
                  addi         t0, s3, 2010
                  andi         s1, s6, -497
                  nop
                  auipc        t3, 494949
                  auipc        a7, 46005
                  sltu         s1, t6, tp
                  sub          s0, s0, s9
                  ori          t1, a1, -2006
                  slt          t2, a2, t2
                  sub          a6, t1, s8
                  xori         s10, gp, -1832
                  sll          a4, s0, sp
                  slt          a7, a1, s11
                  srl          ra, s2, a0
                  ori          t6, zero, -1125
                  xori         zero, t6, -529
                  xori         t2, s4, -1032
                  sub          t0, s10, a0
                  ori          a6, t5, 221
                  sltiu        gp, a3, 1399
                  slti         a6, s4, 1816
                  slti         s6, tp, -1600
                  ori          s6, s2, 279
                  addi         a2, s5, 302
                  add          tp, s2, a6
                  xor          s3, t0, ra
                  nop
                  sltu         a1, a6, s5
                  sltiu        s3, gp, -359
                  add          ra, t2, gp
                  ori          s5, a4, -1348
                  srai         s6, tp, 18
                  sra          s3, zero, sp
                  sll          t4, s2, gp
                  slli         s5, s0, 14
                  or           s6, s3, s8
                  slli         t6, t6, 31
                  ori          a2, a4, -1229
                  nop
                  sll          s8, s5, s11
                  lui          s3, 1044176
                  nop
                  add          t0, t3, ra
                  srli         a3, s3, 17
                  add          t1, t2, t2
                  srl          s1, sp, t0
                  sltiu        a1, s0, 749
                  addi         gp, a2, -506
                  slti         t2, s8, -1071
                  sub          a3, s2, t6
                  sll          s0, t0, t5
                  and          sp, a7, zero
                  slt          zero, s3, a4
                  srai         a1, s10, 26
                  sltiu        a2, s4, 1378
                  srli         a6, s11, 30
                  srli         s1, a5, 20
                  slt          a3, s6, a2
                  srl          s10, a6, s9
                  sub          a2, ra, gp
                  srl          s4, a3, s7
                  addi         s5, s0, -310
                  sra          a5, s10, s3
                  slt          a1, s8, a0
                  andi         a4, a3, -1831
                  andi         s6, a7, 1652
                  addi         s6, t3, 1256
                  sra          s5, a3, zero
                  sub          t6, a6, a4
                  addi         a5, s8, 629
                  slt          s8, t2, gp
                  sltu         t1, a6, a5
                  srl          s6, zero, a3
                  or           a4, a7, s7
                  sub          s7, a7, a7
                  sltu         t1, a4, s2
                  slli         sp, t3, 11
                  sltiu        t3, s4, -887
                  add          a0, s3, s5
                  srl          s10, s7, s2
                  srai         gp, a6, 6
                  sub          s10, ra, t0
                  nop
                  ori          t5, t6, -748
                  sll          t5, t3, s0
                  slli         s7, s10, 24
                  andi         tp, s2, 644
                  lui          gp, 578864
                  slt          s7, s1, s1
                  or           s4, t6, s11
                  auipc        s1, 787953
                  srai         s5, t2, 5
                  ori          s6, t0, 1347
                  slli         s8, gp, 14
                  sltiu        s8, s9, -1695
                  sra          zero, s10, zero
                  sra          s7, t4, t2
                  xor          a6, gp, gp
                  or           a7, s6, t5
                  auipc        sp, 857730
                  srai         zero, a3, 2
                  sll          a4, s9, t6
                  ori          a0, a2, -1023
                  xori         s0, t2, 1292
                  addi         t1, t3, -546
                  and          zero, s4, t4
                  addi         t1, t1, -2013
                  sub          s3, t1, s11
                  auipc        t6, 924406
                  sltiu        a6, a5, -170
                  xor          tp, s10, ra
                  sra          t0, s11, a1
                  sub          a3, s1, t2
                  lui          s1, 545222
                  sub          t0, s7, s6
                  srli         a5, s7, 26
                  slt          a0, t3, s6
                  slt          t4, a7, t6
                  addi         tp, s6, 181
                  ori          t6, tp, 529
                  add          gp, s3, t4
                  slli         s8, s4, 13
                  ori          a0, t1, -659
                  slli         s5, s8, 17
                  slti         a5, s4, -1223
                  sub          a2, s4, t5
                  nop
                  sltiu        a0, s11, 1373
                  nop
                  sra          s5, s6, t0
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           gp, 0x0
                  li           a7, 0x80000000
                  li           a0, 0xffffffff
                  li           t5, 0x99b2b80f
                  li           s0, 0x596c1f5a
                  li           a3, 0x80000000
                  li           s8, 0xffffffff
                  li           tp, 0x80000000
                  li           t1, 0x80000000
                  sub          t0, gp, a0
                  auipc        tp, 625961
                  auipc        a3, 938359
                  addi         a0, tp, -607
                  addi         a7, a0, -1116
                  sub          s0, s0, a0
                  add          a3, s0, t5
                  sub          gp, a7, t0
                  auipc        s8, 590977
                  addi         s0, a7, -1215
                  lui          gp, 320178
                  addi         gp, a0, -419
                  add          a3, tp, s8
                  auipc        a3, 529432
                  lui          t1, 904082 #end riscv_int_numeric_corner_stream_0
                  add          a6, a4, s4
                  sltiu        t5, s8, -1381
                  addi         s8, t5, 665
                  slt          t4, a1, s7
                  srli         a4, zero, 22
                  sltu         a7, zero, s4
                  ori          s8, t1, 1480
                  srai         t3, s9, 0
                  and          gp, a6, tp
                  nop
                  sltu         zero, s2, s11
                  srli         t3, s8, 24
                  sltiu        s0, s2, -633
                  sltu         s8, s7, a3
                  sub          ra, s3, a1
                  sltiu        a2, a0, -1971
                  sra          t2, a1, s8
                  srl          t2, s10, t5
                  sll          t6, s0, a1
                  xori         s1, s2, 1063
                  add          a3, t5, t4
                  lui          t4, 659249
                  auipc        t0, 737079
                  sltu         a1, t4, s7
                  andi         s10, a2, -1017
                  xor          a7, tp, s4
                  nop
                  sra          t4, t3, s7
                  xori         t1, a5, 1018
                  and          t0, s11, zero
                  srl          a7, s5, t4
                  andi         s10, t6, -452
                  xori         tp, s3, 1003
                  auipc        s3, 376122
                  add          a1, s3, s9
                  add          s4, ra, s8
                  lui          s8, 459651
                  srli         t1, s2, 23
                  xori         t0, s8, 1821
                  sll          s5, a4, t3
                  auipc        s10, 608618
                  slti         ra, t1, 1425
                  sub          gp, s5, s1
                  nop
                  lui          sp, 1026777
                  srl          a1, t3, s6
                  xori         a1, a6, 1733
                  nop
                  srl          ra, t2, t3
                  sltiu        s1, s7, -1285
                  add          t4, t6, a4
                  xori         sp, s11, -1362
                  sltiu        t3, a0, 960
                  andi         s6, t3, 22
                  auipc        s1, 101783
                  nop
                  ori          a0, s3, 1112
                  and          s5, a4, s1
                  srl          a2, a5, s8
                  or           sp, s8, s8
                  lui          t0, 676141
                  srli         s3, s1, 1
                  andi         a5, s2, -891
                  sra          s6, a6, zero
                  or           gp, sp, t1
                  addi         t1, t0, 1738
                  sll          tp, zero, s6
                  sub          zero, t1, s6
                  slli         a0, s10, 8
                  slt          tp, t3, gp
                  xor          t5, t4, t5
                  srl          s4, t3, s7
                  srai         s7, a3, 18
                  lui          a4, 839888
                  srai         t0, a6, 2
                  addi         s7, a0, 1188
                  srl          t3, s5, s8
                  and          a3, tp, t6
                  lui          a7, 730147
                  andi         t1, a2, -1233
                  srl          s6, s3, s3
                  sll          a6, a5, s9
                  slt          s8, s6, tp
                  srli         s10, t1, 8
                  add          s7, a4, a1
                  add          t0, ra, tp
                  auipc        a0, 68113
                  add          ra, s6, s11
                  andi         a5, a2, 1047
                  addi         s4, s6, -321
                  srl          t3, t6, a1
                  slt          zero, s1, t1
                  nop
                  lui          s6, 766912
                  slt          a5, t0, s9
                  ori          a0, t4, 598
                  slti         a4, s10, 829
                  andi         s3, s4, -78
                  slt          s4, t6, s7
                  auipc        sp, 584872
                  slt          s10, tp, s9
                  xori         a5, a3, -1816
                  sltiu        s4, t1, -1022
                  lui          a2, 14213
                  sll          ra, ra, t5
                  or           s7, t3, a1
                  or           t5, a6, a3
                  lui          a1, 746906
                  sll          t2, s8, a3
                  srl          s0, tp, a5
                  andi         s3, s10, 538
                  sll          a0, t4, s4
                  xor          ra, gp, a2
                  xor          s3, s10, s1
                  or           a6, ra, s2
                  sra          s10, s0, s9
                  slli         t4, s11, 20
                  xori         t6, t0, 323
                  srl          a1, s10, tp
                  and          t1, s8, a7
                  ori          a7, s0, 1648
                  sltu         s10, a5, s7
                  or           s5, t4, a2
                  auipc        tp, 336338
                  addi         a1, t1, -1304
                  slti         s6, s5, -1781
                  slti         t1, zero, 495
                  slli         a1, gp, 19
                  and          t5, s6, s11
                  srai         t0, s9, 5
                  srli         tp, a7, 6
                  auipc        ra, 521455
                  auipc        s6, 925049
                  auipc        a5, 732324
                  xor          a5, t6, s8
                  xor          ra, a3, a5
                  srli         a2, t0, 13
                  srai         gp, s2, 5
                  xor          t4, s4, s8
                  srai         t4, s11, 10
                  lui          s6, 88379
                  xori         a7, zero, 1988
                  sll          a5, s9, a7
                  or           a3, a0, s2
                  sll          s8, s7, t6
                  auipc        a4, 235169
                  slli         s0, gp, 17
                  addi         a6, t2, 1330
                  and          ra, a0, a7
                  xori         t3, t3, -1787
                  sra          t6, s1, t6
                  sll          s0, zero, s9
                  sub          gp, s2, sp
                  slt          a7, t1, sp
                  auipc        t2, 384794
                  lui          a4, 508025
                  addi         t6, s7, -1942
                  auipc        t4, 31764
                  xori         sp, tp, 687
                  slti         zero, t4, -1492
                  srai         a4, s5, 17
                  addi         a4, s4, 913
                  sub          t0, t1, s6
                  and          a2, s2, tp
                  lui          t5, 491238
                  or           t4, s11, s5
                  auipc        tp, 453394
                  lui          t5, 876236
                  xori         s4, s10, -1156
                  sra          t5, a6, s9
                  srai         t5, gp, 6
                  lui          s3, 536582
                  lui          a1, 498576
                  slt          s7, s8, s9
                  slti         a2, s9, -2024
                  nop
                  addi         a1, t6, 486
                  addi         s5, a1, -1985
                  lui          gp, 37382
                  srli         zero, a7, 15
                  ori          s5, a0, 383
                  slt          t4, zero, t5
                  xori         tp, gp, 1811
                  srl          a3, a0, a5
                  sltiu        ra, s3, 1786
                  sltu         sp, a1, a3
                  lui          t1, 403476
                  and          a3, s2, s6
                  auipc        gp, 691567
                  and          s10, a7, s11
                  addi         s6, s5, 1568
                  auipc        s5, 457578
                  add          s10, a1, t1
                  slti         s6, a0, -1879
                  slli         t2, s11, 4
                  lui          t4, 888516
                  addi         a6, a0, 772
                  auipc        a3, 12348
                  srli         s4, sp, 7
                  xori         s6, s8, -17
                  srl          t6, ra, t1
                  slti         t4, gp, 585
                  xori         s5, s3, -1926
                  srli         zero, s6, 18
                  srl          t1, t3, s2
                  slt          a4, t3, sp
                  sll          a2, t4, s4
                  xor          s6, s3, t6
                  sra          s6, ra, a1
                  andi         sp, sp, -2032
                  andi         a7, s2, 1488
                  nop
                  srl          t3, tp, t3
                  slli         s4, a7, 14
                  sll          gp, s5, s9
                  slt          s3, s10, a1
                  slt          s0, ra, s6
                  srl          s5, a1, a4
                  sub          t0, s8, t2
                  sltu         t1, t0, s6
                  sltu         t1, a4, t4
                  nop
                  auipc        s6, 705235
                  sub          s5, sp, a2
                  or           t5, a6, s11
                  sra          s0, t3, a3
                  add          s5, t4, s10
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           a7, 0x80000000
                  li           gp, 0xffffffff
                  li           t2, 0x80000000
                  li           t3, 0xe17988ed
                  li           t1, 0x80000000
                  li           sp, 0x4c1766de
                  li           s10, 0x80000000
                  li           a6, 0x80000000
                  li           s6, 0x0
                  add          gp, sp, gp
                  sub          t1, t2, a7
                  auipc        t1, 777394
                  sub          gp, sp, t3
                  addi         gp, a6, -1933
                  nop
                  lui          s10, 625653
                  auipc        t1, 187740
                  sub          t3, a6, t3
                  addi         s6, a6, 777
                  add          t3, a6, gp
                  lui          s10, 245776
                  addi         s10, sp, 1789
                  sub          a7, gp, s6
                  auipc        t2, 338583
                  auipc        t6, 391708
                  addi         sp, a7, -963
                  sub          gp, a7, sp
                  nop
                  lui          t3, 143454
                  auipc        a6, 643098 #end riscv_int_numeric_corner_stream_10
                  sltu         sp, a2, t2
                  nop
                  sub          t2, sp, s9
                  sltiu        s3, gp, 731
                  auipc        t6, 19700
                  andi         t2, s1, 1666
                  nop
                  sra          a7, t0, t2
                  srai         ra, a0, 14
                  lui          s4, 76880
                  andi         s5, gp, 1057
                  xor          s8, s10, a0
                  addi         zero, a1, -765
                  srli         s6, a2, 28
                  sll          s4, s9, s3
                  add          t4, a1, s3
                  lui          s5, 923704
                  srli         s5, t1, 26
                  ori          zero, s10, -1058
                  lui          t2, 493591
                  slli         a3, a0, 11
                  lui          gp, 393235
                  or           t0, s11, ra
                  and          s10, a4, a1
                  slti         a7, s0, -1171
                  sltu         s6, s8, t1
                  sra          s1, s4, tp
                  andi         s6, s9, 2045
                  andi         s4, s3, 192
                  or           t4, sp, t0
                  slti         t4, sp, -1085
                  and          s5, a0, a2
                  srai         a2, t6, 11
                  addi         t0, sp, 1039
                  slti         s3, t2, -1760
                  or           tp, s3, t3
                  xori         t4, s2, 1216
                  srli         a4, s6, 16
                  sub          s0, gp, tp
                  sltiu        a4, a3, -1204
                  xor          a2, t3, t3
                  sra          t0, s7, s0
                  lui          zero, 984430
                  auipc        t1, 65709
                  lui          t3, 577249
                  sub          a7, s8, t6
                  sub          t1, a1, a3
                  ori          a0, a2, 341
                  srli         a6, s1, 18
                  or           s1, a1, s1
                  slli         t6, a5, 8
                  sra          a1, ra, sp
                  xori         a7, s3, -1106
                  xori         s4, t6, 1924
                  srli         a5, tp, 5
                  slli         s0, s8, 16
                  ori          s8, s4, -137
                  srli         a3, a6, 17
                  add          s1, t0, a3
                  sra          a4, a6, a5
                  or           a3, t0, gp
                  srai         sp, s6, 1
                  ori          s5, a2, 949
                  srli         gp, t1, 14
                  and          a4, t3, gp
                  xor          s1, t1, a5
                  sub          s10, s3, t0
                  slt          s10, s8, s2
                  sll          tp, a3, s3
                  addi         a4, t4, -1878
                  srl          s8, s11, a6
                  auipc        s6, 705848
                  auipc        s6, 257159
                  slt          s3, s2, a1
                  nop
                  srl          s7, s5, a5
                  auipc        gp, 148808
                  sub          s1, zero, a6
                  sltiu        s7, a4, -612
                  or           s6, s5, t6
                  srli         a5, s5, 27
                  add          s3, s11, s4
                  srai         t2, s7, 19
                  addi         t3, t3, -1405
                  xori         s7, tp, -185
                  nop
                  srli         a4, t5, 0
                  srl          t6, a1, s0
                  xori         a0, s1, 1222
                  lui          s4, 684542
                  sub          s0, a7, sp
                  and          t6, s6, t1
                  sltu         gp, t4, s11
                  slt          tp, zero, s9
                  sll          sp, t3, a7
                  ori          s1, tp, 1325
                  xor          tp, a6, a0
                  sra          s1, s9, a2
                  sub          a6, a4, t2
                  ori          sp, a0, 456
                  sltiu        s4, s10, 762
                  slli         t1, s4, 12
                  sltiu        t1, s10, 1876
                  xor          t1, tp, a7
                  xori         s7, t1, -1180
                  slti         t1, ra, 1604
                  sltiu        t2, s2, -1619
                  ori          a4, s3, 1097
                  addi         a7, s3, -1916
                  auipc        s1, 865899
                  addi         a7, t5, -458
                  sll          t0, s11, s3
                  add          t2, a3, t6
                  sll          ra, a0, t3
                  sub          t1, s1, gp
                  slti         t1, a7, 799
                  slt          a7, t0, zero
                  sub          t6, s1, a3
                  lui          a0, 952262
                  or           t1, s4, ra
                  slt          s0, t6, a4
                  andi         a6, s1, -1606
                  add          a4, a7, t5
                  auipc        ra, 185033
                  addi         gp, t6, 894
                  sra          s1, a7, t6
                  srai         t6, t0, 13
                  lui          s3, 674313
                  andi         sp, a2, -2041
                  auipc        t1, 414103
                  or           ra, a6, s0
                  xor          s10, ra, s4
                  srli         a3, s10, 18
                  slt          a1, gp, s11
                  auipc        a2, 378587
                  xor          a3, sp, t5
                  sll          sp, s2, s4
                  auipc        t4, 29880
                  lui          tp, 207159
                  sra          s1, zero, a0
                  addi         s10, s4, 1150
                  srli         s1, s4, 18
                  xori         a1, s7, 889
                  srai         a1, t2, 4
                  add          a2, s9, t2
                  srl          gp, gp, s10
                  and          zero, t6, sp
                  addi         ra, a6, 1863
                  slti         t3, s0, 401
                  or           a6, sp, t1
                  nop
                  andi         t2, a1, 1521
                  nop
                  andi         t1, s5, -1313
                  sltiu        zero, t3, -66
                  slti         a5, t1, 1417
                  srai         zero, s2, 0
                  slt          a6, a3, s8
                  sub          s0, sp, s2
                  sra          s4, s10, s8
                  andi         a4, t5, 1872
                  or           s7, s2, s11
                  and          tp, a4, a7
                  auipc        s10, 958857
                  srli         t0, s2, 11
                  xor          tp, gp, s1
                  slti         s4, a6, 1848
                  or           a3, a1, s4
                  sra          gp, s2, s6
                  and          s10, s4, a6
                  or           s1, s0, s9
                  and          a3, sp, s0
                  or           t1, t1, ra
                  xori         a0, t6, -1972
                  srli         zero, a3, 10
                  slli         t5, s9, 16
                  srai         t4, a5, 17
                  sll          tp, s7, a6
                  add          s10, sp, zero
                  lui          gp, 615742
                  xori         a7, t2, -1619
                  sltiu        a1, s4, -650
                  sub          s7, t4, t3
                  sll          a2, t3, a7
                  sltu         s3, zero, t6
                  ori          a6, a7, -1142
                  addi         ra, t0, 677
                  sltiu        s4, s7, 972
                  andi         t0, a7, -1521
                  or           a4, t0, t0
                  addi         s4, ra, 1021
                  add          s8, s8, a4
                  slt          a4, tp, a1
                  and          zero, ra, a5
                  add          s6, a4, a7
                  sltu         a6, s7, a5
                  addi         s3, s5, 1404
                  srai         s6, s6, 26
                  andi         gp, t0, -979
                  andi         t1, a4, -284
                  srli         t0, zero, 10
                  sub          tp, t3, a2
                  srli         a2, t6, 2
                  sra          t0, sp, t2
                  lui          s1, 221590
                  auipc        t0, 125887
                  srai         s0, ra, 13
                  srli         s6, t5, 17
                  ori          a3, s2, -1159
                  nop
                  or           t4, s1, s1
                  sra          t3, s2, a6
                  or           t1, t0, t3
                  and          t4, s3, a3
                  andi         ra, s9, 694
                  srli         s0, s2, 14
                  ori          s3, t4, -1843
                  sub          a5, ra, a1
                  srli         sp, t2, 3
                  xor          s7, a6, a1
                  and          a1, a4, t3
                  sltiu        a3, s2, 1210
                  xori         a0, a5, 1951
                  and          a2, s2, s7
                  sub          t6, t0, s5
                  srai         s10, a5, 26
                  or           s6, a2, t4
                  xori         a1, s3, -376
                  andi         a6, s10, -821
                  srli         s1, s8, 3
                  sub          a4, a1, t0
                  slti         a6, a3, 1324
                  slti         ra, s10, -64
                  sll          zero, ra, a5
                  or           s0, a6, t3
                  and          a6, a1, t2
                  sltiu        t1, a3, -568
                  srli         s8, a6, 15
                  srl          a1, s5, s9
                  srli         a5, a1, 29
                  addi         a4, a3, 427
                  slli         t4, t0, 19
                  slli         a2, gp, 11
                  add          tp, s4, a0
                  add          a2, s2, s0
                  sltiu        t6, s3, 1877
                  srl          a4, s5, t1
                  and          gp, zero, t5
                  slti         s8, a7, 1452
                  slti         a1, ra, 820
                  srl          t3, a1, a4
                  slti         s4, t2, 766
                  or           tp, t5, t4
                  sll          t1, a3, a3
                  and          a2, s6, a1
                  nop
                  srl          t6, s1, s6
                  andi         zero, a4, -1160
                  or           s1, t6, t6
                  and          a3, t6, s3
                  ori          t4, a5, 2005
                  xor          s6, t1, zero
                  sll          zero, s11, t6
                  slti         gp, a1, 165
                  sra          t3, t6, tp
                  xor          gp, s11, s6
                  sltiu        t0, t0, -1622
                  slti         a3, s8, -1800
                  sll          s8, a7, gp
                  xori         gp, s10, 1057
                  and          a4, t3, s6
                  srli         gp, a4, 9
                  slti         t6, s8, -951
                  or           t2, ra, a4
                  andi         t6, a5, -623
                  andi         t2, zero, -2012
                  slti         s0, s10, -1733
                  and          a2, s11, sp
                  slti         s6, s1, 992
                  andi         s10, a7, -640
                  slti         gp, zero, -1838
                  and          s7, a1, t5
                  slli         a5, s1, 20
                  sltu         a6, s5, a1
                  slti         s3, a0, 635
                  sll          t1, a2, s1
                  and          s5, a1, t0
                  andi         sp, a7, 1019
                  slli         s1, a3, 18
                  or           gp, s10, s9
                  xori         s3, sp, -1614
                  slli         t6, s8, 5
                  xor          a2, s10, t1
                  sub          s5, a1, a4
                  slt          t0, tp, s4
                  xori         a2, s11, 1115
                  ori          s6, a6, -55
                  sub          a1, s1, t5
                  xor          t3, s9, s0
                  and          s6, s0, a4
                  srli         s5, a1, 24
                  slti         t5, s7, 2035
                  srai         ra, s4, 1
                  add          t0, a0, zero
                  lui          sp, 36333
                  srli         t0, s11, 15
                  lui          zero, 226480
                  andi         t1, a5, 94
                  add          a7, s10, a5
                  xori         t2, zero, 1466
                  sltu         s3, a2, t4
                  srai         s10, s6, 20
                  slli         t3, a7, 7
                  sra          s8, t2, s4
                  srl          a5, tp, t2
                  xor          t4, s0, a0
                  xori         a7, t1, -324
                  ori          s4, s8, 77
                  ori          t6, t3, 766
                  xor          sp, ra, s2
                  slti         zero, s3, -849
                  slli         s6, tp, 24
                  slli         s5, t6, 29
                  xori         s1, tp, 1790
                  slti         t3, s4, -1909
                  and          s3, t5, a5
                  sltu         s0, s10, a0
                  sra          a1, s8, s0
                  lui          s0, 24814
                  sltu         t0, s2, s2
                  sltu         a1, a6, s3
                  sub          s3, t1, a1
                  slt          s3, s3, s2
                  ori          t2, s0, 1352
                  lui          t3, 223720
                  nop
                  xori         t1, s3, 1938
                  srai         t3, t4, 26
                  auipc        gp, 606739
                  nop
                  srl          t3, a3, t5
                  addi         t0, s11, -409
                  sub          a1, ra, a1
                  slli         s4, zero, 2
                  and          a0, s4, zero
                  nop
                  or           s10, s9, t4
                  or           s1, gp, s0
                  srai         s5, s7, 5
                  sll          s6, s6, a5
                  andi         a2, s1, 1714
                  or           a2, gp, sp
                  sub          t2, s5, zero
                  slli         a7, s8, 31
                  srai         s4, t6, 26
                  srl          s0, a2, s8
                  andi         s10, a4, 1909
                  slli         t2, s1, 26
                  srl          s10, s4, a4
                  slti         a1, s0, -702
                  andi         s1, s9, 1691
                  slli         t1, ra, 5
                  addi         a5, s11, 566
                  addi         t6, s10, -91
                  addi         t2, ra, 1720
                  lui          a6, 930258
                  or           a5, a6, s9
                  or           s4, a6, a6
                  nop
                  srai         t4, t1, 21
                  sltu         s6, s4, a5
                  auipc        t2, 169896
                  xori         gp, a7, -705
                  sra          t0, s6, s1
                  sra          s7, a5, s11
                  slt          s5, a2, s0
                  xori         s4, s9, 970
                  srl          t2, gp, t3
                  addi         a3, ra, -548
                  add          s4, a7, a7
                  add          s8, t4, s3
                  sra          a5, t6, a2
                  xor          a4, t0, s0
                  sltu         a4, a3, zero
                  sltiu        gp, t5, 539
                  addi         s8, s5, 616
                  andi         s6, s11, 1020
                  addi         t1, t1, 1874
                  addi         s4, gp, -1773
                  auipc        ra, 299284
                  add          ra, zero, s2
                  slt          ra, s0, t6
                  slli         t6, s3, 15
                  srl          t6, s1, s9
                  slli         zero, t2, 28
                  slli         a1, t1, 8
                  srli         t5, a7, 31
                  sltiu        t4, t6, -1596
                  srai         t2, a3, 30
                  srai         t6, tp, 0
                  and          s3, sp, s9
                  auipc        s0, 559435
                  sra          a4, s6, a7
                  sltu         t1, sp, t0
                  lui          t1, 512758
                  srl          s4, a5, a7
                  sll          s6, zero, t0
                  nop
                  nop
                  slti         s4, s0, -741
                  sll          a2, t2, s0
                  sll          s5, s9, t3
                  sub          t0, s6, a3
                  or           t3, a7, s5
                  xor          s8, t0, a6
                  slli         zero, t1, 12
                  sll          s8, a5, sp
                  srai         t2, a5, 30
                  auipc        t1, 708098
                  ori          t1, gp, -1468
                  slli         s5, a0, 23
                  slli         gp, zero, 23
                  srl          s7, a0, t1
                  xori         tp, t3, 736
                  slli         s10, sp, 25
                  add          t6, s10, t5
                  add          a5, s4, ra
                  slti         s5, s1, 1418
                  or           t5, s3, s10
                  slli         t0, s6, 18
                  and          t4, t0, a4
                  slli         s0, s10, 28
                  auipc        a3, 130110
                  addi         s5, s11, 1239
                  addi         a7, gp, 669
                  xori         s10, s8, 1007
                  srl          s10, t6, s10
                  lui          a6, 488812
                  xori         s5, s1, -812
                  addi         a4, t0, -1276
                  andi         s1, a6, 858
                  la x18, test_done
                  jalr x0, x18, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x27, x25, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x20, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x20, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x20, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x20, x12, ecall_handler
                  li x12, 0x1
                  beq x20, x12, instr_fault_handler
                  li x12, 0x5
                  beq x20, x12, load_fault_handler
                  li x12, 0x7
                  beq x20, x12, store_fault_handler
                  li x12, 0xc
                  beq x20, x12, pt_fault_handler
                  li x12, 0xd
                  beq x20, x12, pt_fault_handler
                  li x12, 0xf
                  beq x20, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x25, x27, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x27, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x27, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x25, x27, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x25, x27, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x25, x27, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
