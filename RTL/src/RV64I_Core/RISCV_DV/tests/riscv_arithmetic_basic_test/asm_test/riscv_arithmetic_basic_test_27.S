.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x75a8f6b0
                  li x2, 0x4cf7d6a0
                  li x3, 0x16ffa796
                  li x4, 0x2
                  li x5, 0x0
                  li x6, 0xfd3af6f9
                  li x8, 0x440d7b28
                  li x9, 0x2f27e921
                  li x10, 0x94ec543a
                  li x11, 0x80000000
                  li x12, 0xf43eccec
                  li x13, 0x55e9d968
                  li x14, 0x7
                  li x15, 0xf2b2e3bd
                  li x16, 0xa
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0x6dd93777
                  li x20, 0x86cd9502
                  li x21, 0xce90c692
                  li x22, 0x80000000
                  li x23, 0xfecbd7b0
                  li x24, 0xe
                  li x25, 0x1
                  li x26, 0x0
                  li x28, 0x0
                  li x29, 0x3a194215
                  li x30, 0xfd2d960c
                  li x31, 0x80000000
                  la x7, user_stack_end
main:             li           s2, 0x49450b91 #start riscv_int_numeric_corner_stream_1
                  li           ra, 0xffffffff
                  li           a1, 0x57bb4fdf
                  li           a2, 0xffffffff
                  li           t4, 0x0
                  li           s8, 0x80000000
                  li           gp, 0x0
                  li           a4, 0xb0dcab7e
                  li           t5, 0x0
                  li           s6, 0x0
                  nop
                  sub          gp, gp, a1
                  addi         ra, ra, -671
                  auipc        t4, 794889
                  nop
                  auipc        ra, 23896
                  auipc        s8, 157154
                  add          a1, a1, gp
                  nop
                  nop
                  lui          a4, 222371
                  addi         t4, s6, 750
                  auipc        t4, 774046
                  auipc        a4, 97954
                  nop
                  auipc        a4, 353705
                  add          t5, t4, a4
                  add          s8, ra, a1
                  sub          t5, t4, t5
                  sub          a1, a1, s8
                  lui          a1, 241579
                  auipc        ra, 378109
                  addi         s8, s2, 586
                  lui          t5, 146761 #end riscv_int_numeric_corner_stream_1
                  li           t3, 0x3513b413 #start riscv_int_numeric_corner_stream_7
                  li           a7, 0x80000000
                  li           ra, 0x80000000
                  li           t4, 0xffffffff
                  li           a0, 0x80000000
                  li           a3, 0x80000000
                  li           gp, 0xffffffff
                  li           a5, 0x7984a648
                  li           a1, 0x80000000
                  li           s10, 0xffffffff
                  nop
                  add          s10, a5, gp
                  sub          a5, t4, a1
                  sub          t4, a1, t3
                  addi         a3, a3, 1388
                  sub          t4, s10, t4
                  addi         a0, ra, -452
                  lui          ra, 385299
                  addi         a7, a3, 1917
                  auipc        s10, 94472
                  auipc        s10, 1040640
                  sub          t3, t3, ra
                  nop
                  nop
                  add          gp, t4, a1
                  addi         a7, a3, -1537
                  add          a3, s10, gp
                  auipc        t3, 952202
                  addi         gp, a1, -392
                  addi         a5, a7, -404
                  lui          a0, 86233
                  sub          ra, a1, s10 #end riscv_int_numeric_corner_stream_7
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a3, 0x80000000
                  li           a1, 0xffffffff
                  li           s0, 0x0
                  li           s9, 0x0
                  li           s6, 0x80000000
                  li           a2, 0xffffffff
                  li           s1, 0xffffffff
                  li           s8, 0xe1a47f04
                  li           s10, 0x0
                  add          a1, s8, s0
                  nop
                  add          s6, s0, a2
                  sub          s1, s10, s9
                  nop
                  addi         t1, s8, -855
                  nop
                  sub          s10, a1, s1
                  sub          a2, s8, s6
                  auipc        a3, 830511
                  nop
                  addi         t1, a2, 1286
                  nop
                  auipc        a1, 597257
                  addi         t1, s6, 929
                  auipc        s8, 529916
                  nop
                  add          a3, s8, s8
                  sub          s6, s8, s0
                  addi         s6, t1, -1828
                  auipc        a3, 57150 #end riscv_int_numeric_corner_stream_8
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0x0
                  li           t3, 0x80000000
                  li           s5, 0xffffffff
                  li           s8, 0xf9e2341e
                  li           t1, 0x80000000
                  li           sp, 0xe7b6cfa9
                  li           s6, 0xafd3bd12
                  li           a7, 0x0
                  li           s1, 0xffffffff
                  nop
                  addi         t1, a7, -799
                  lui          s8, 513171
                  add          s1, s5, s8
                  addi         t0, s6, -1245
                  sub          t1, t3, s1
                  sub          s6, s5, a7
                  add          s6, sp, t3
                  lui          s6, 700299
                  sub          s8, s5, t1
                  addi         s5, sp, -1215
                  nop
                  add          t3, s8, t0
                  lui          t1, 52016
                  auipc        s5, 570881
                  sub          t1, s6, s8
                  addi         a7, s8, 1204
                  add          t3, sp, s8
                  lui          sp, 350808
                  lui          s5, 1044778
                  addi         t3, t0, 1007
                  addi         t3, t0, -281
                  sub          t3, t6, t0
                  lui          t1, 954318
                  addi         t6, s5, -1210
                  sub          a7, sp, t6
                  sub          a7, s6, sp
                  add          s8, sp, s8 #end riscv_int_numeric_corner_stream_19
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           gp, 0x6b276c10
                  li           tp, 0x0
                  li           a0, 0x0
                  li           t1, 0xffffffff
                  li           sp, 0xffffffff
                  li           s9, 0x58c7b682
                  li           s3, 0x0
                  li           ra, 0x80000000
                  li           s7, 0xffffffff
                  add          a0, ra, sp
                  auipc        gp, 928077
                  add          a0, t1, tp
                  sub          gp, tp, s9
                  addi         s9, s9, 1160
                  auipc        gp, 467271
                  auipc        s7, 919416
                  auipc        tp, 106354
                  sub          a0, sp, a0
                  sub          s6, t1, s9
                  auipc        s9, 668528
                  addi         s9, s9, 1124
                  sub          s7, s7, sp
                  auipc        a0, 697621
                  add          ra, ra, gp
                  sub          s7, ra, sp
                  sub          a0, s9, a0
                  auipc        tp, 342804
                  sub          sp, sp, s7
                  add          s3, sp, s3
                  auipc        s6, 319064
                  addi         ra, gp, -1692
                  sub          tp, tp, gp
                  sub          ra, s6, ra
                  auipc        gp, 192632
                  lui          a0, 685562
                  lui          s3, 168954 #end riscv_int_numeric_corner_stream_0
                  li           a5, 0x76060f3f #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x0
                  li           a2, 0x0
                  li           t1, 0x0
                  li           s5, 0xffffffff
                  li           s0, 0x80000000
                  li           s7, 0x80000000
                  li           a7, 0xffffffff
                  li           t5, 0x6ef30974
                  li           s3, 0xd7667df6
                  sub          s0, a2, s9
                  nop
                  auipc        a2, 181113
                  auipc        t1, 986288
                  addi         a7, a5, 438
                  addi         s5, s9, 960
                  nop
                  auipc        t1, 244321
                  add          a5, s3, a5
                  nop
                  add          a5, s5, a7
                  addi         a7, t5, -1672
                  nop
                  add          s7, s5, s3
                  lui          a7, 984409
                  nop #end riscv_int_numeric_corner_stream_2
                  xor          s1, s6, sp
                  xori         a0, t1, -177
                  addi         tp, s9, -1931
                  sll          a4, s6, t2
                  srl          s6, s2, a2
                  andi         sp, t0, -1059
                  sub          s10, t5, t6
                  or           t4, s11, t1
                  auipc        t0, 152672
                  sltiu        sp, a7, -402
                  ori          a1, t6, -146
                  slli         t4, t6, 28
                  sra          s6, sp, s9
                  sltu         s0, tp, s9
                  or           s3, a3, s5
                  auipc        gp, 288065
                  or           t4, s0, s8
                  srl          t1, t4, a7
                  sltiu        s5, s7, 1513
                  add          s6, s8, a6
                  slti         a1, t5, 826
                  add          a2, s7, s8
                  xori         a0, ra, 345
                  add          t5, a0, a5
                  xor          a0, s4, s7
                  xor          gp, a2, tp
                  and          s3, s4, t6
                  slt          s9, a4, s1
                  srli         s9, s6, 11
                  nop
                  sltiu        s2, a1, -1795
                  srai         t4, tp, 9
                  nop
                  slt          s6, s7, a3
                  and          a4, a1, gp
                  sltu         a3, t0, a5
                  slti         s10, a7, 246
                  slt          s1, t4, t4
                  or           zero, s11, s5
                  slli         a1, a0, 2
                  srai         s5, t6, 3
                  srl          s9, a0, t6
                  lui          s3, 587023
                  sltu         t3, t5, t3
                  sra          gp, ra, s2
                  and          a4, t6, s10
                  xori         s9, s0, 1124
                  addi         gp, t5, -604
                  or           s2, s7, s1
                  slti         zero, s0, -1951
                  andi         sp, a1, -201
                  sub          t0, s10, s10
                  xor          t1, s5, t1
                  sra          zero, a0, s6
                  or           t5, gp, s5
                  sll          gp, sp, s7
                  add          s3, a2, a6
                  sll          tp, gp, s7
                  ori          zero, s5, -595
                  sll          s8, tp, s5
                  sub          a7, t4, t1
                  and          ra, t6, t0
                  slli         ra, a3, 11
                  slt          s1, a5, sp
                  slt          a2, t1, s10
                  sll          a6, t6, t2
                  srai         t0, a5, 29
                  srl          a0, s10, t6
                  addi         s2, t6, 1355
                  ori          t6, a4, -1098
                  srli         a3, a2, 19
                  xori         sp, t6, -797
                  srl          a5, s3, t4
                  addi         s9, gp, -36
                  sltiu        gp, s4, 1096
                  or           tp, a6, s9
                  sltu         t4, a5, a1
                  sra          a2, t6, s0
                  slli         t4, ra, 21
                  srl          t0, s3, ra
                  auipc        a1, 509840
                  or           a0, tp, s0
                  ori          tp, a7, -151
                  sltiu        s9, a7, -1883
                  xor          s7, a1, s11
                  srai         t5, gp, 29
                  xori         s6, a2, 1378
                  sltiu        a5, s10, -128
                  sub          s0, t6, a7
                  sra          a0, t6, s6
                  xori         s10, s4, 973
                  sra          s2, s7, a0
                  sra          a2, a4, ra
                  slli         ra, tp, 25
                  add          t0, a0, s6
                  slt          a7, a4, a3
                  slti         a0, s8, -602
                  and          s10, s3, s10
                  sltiu        s7, a0, -1554
                  sra          s5, t3, s9
                  lui          t0, 588904
                  slt          a6, s1, t5
                  slt          t1, gp, a5
                  xor          t0, a1, t2
                  and          t1, s7, a6
                  andi         a2, t2, -219
                  or           a5, a3, t6
                  sll          a1, a4, a7
                  lui          gp, 328016
                  srai         t3, a7, 13
                  or           ra, a5, t6
                  slli         t3, t2, 23
                  add          s7, gp, a5
                  slt          a7, a0, s8
                  xor          t3, s2, t1
                  srl          a5, t1, t0
                  and          a7, a0, a7
                  sra          zero, ra, t3
                  sra          tp, a0, a4
                  sltu         a0, s3, a6
                  xor          zero, t1, t4
                  ori          t5, t6, -517
                  ori          s9, s4, 1253
                  or           a4, s0, a7
                  sltu         t0, t6, a1
                  xor          t4, t2, gp
                  add          a6, a4, t4
                  xori         s6, zero, 1269
                  srli         s6, s2, 5
                  srl          s9, s2, t4
                  sub          a1, ra, a3
                  slti         s9, sp, -945
                  sra          t1, s6, s4
                  addi         s3, a2, -1556
                  auipc        t6, 1024642
                  sra          t0, a2, s8
                  slli         a3, s11, 14
                  sra          t5, s10, s9
                  xor          a5, s6, s3
                  sub          a7, s0, gp
                  srli         a3, ra, 20
                  sub          t1, t5, t0
                  srli         tp, t3, 1
                  add          t0, s1, a6
                  ori          ra, a3, 210
                  sll          a7, s11, s4
                  sltiu        a0, a6, -916
                  srli         s3, a7, 4
                  and          s2, ra, t2
                  ori          t0, a1, 898
                  srl          s1, t2, ra
                  srl          s1, ra, t2
                  sltu         sp, sp, s9
                  sll          zero, ra, s2
                  and          t3, s9, a2
                  lui          s9, 422948
                  addi         a4, a7, 1239
                  ori          gp, t1, -613
                  or           s1, s4, ra
                  andi         a6, a0, 1567
                  slli         t5, s10, 11
                  xori         s3, a3, 566
                  slti         t1, sp, -759
                  slt          tp, zero, a7
                  srli         t4, t4, 21
                  srai         a6, sp, 31
                  or           t4, sp, a4
                  addi         t1, a5, -1069
                  xori         sp, t3, -943
                  slli         s6, t5, 11
                  srai         t4, a7, 19
                  andi         t0, s1, -1020
                  xor          gp, a2, s1
                  and          gp, s9, t2
                  slli         t3, s1, 27
                  xor          s10, t0, ra
                  srl          a7, s1, a3
                  addi         t6, a7, -1570
                  ori          t1, s6, -384
                  sltiu        s9, gp, 588
                  xor          s3, sp, a4
                  auipc        t0, 1014014
                  nop
                  sub          s5, ra, s1
                  andi         s9, s6, -1880
                  srl          ra, a6, sp
                  add          ra, s1, a7
                  add          a2, t2, t3
                  addi         s5, a7, 549
                  srai         sp, t6, 19
                  srai         zero, sp, 24
                  addi         t0, s9, 1010
                  srai         t0, s7, 24
                  srai         s8, t0, 18
                  andi         a3, s0, 1983
                  srl          a3, tp, s2
                  slti         a6, s7, -257
                  and          ra, a4, t2
                  slli         a4, t6, 24
                  andi         s2, zero, -1452
                  sll          s2, a2, a1
                  and          a7, t2, t2
                  and          a2, s0, t0
                  and          gp, s5, s4
                  slti         tp, a4, -223
                  xor          s2, a3, s11
                  srli         s5, s11, 21
                  slti         s10, a3, 757
                  lui          a6, 643482
                  nop
                  ori          a7, t2, 971
                  slti         tp, s7, -346
                  slti         s0, t2, -265
                  sra          a3, sp, s2
                  sll          s3, sp, s9
                  sub          s7, a4, t6
                  srai         t6, t3, 7
                  slti         s9, sp, -1693
                  addi         gp, s2, 79
                  xor          t1, t0, t2
                  slt          t1, a7, a1
                  auipc        gp, 442854
                  xori         a6, ra, -353
                  lui          t4, 861573
                  srli         a1, a1, 6
                  add          a5, a6, s5
                  addi         a1, a3, -1181
                  slti         a7, a0, 1201
                  sltu         s8, a1, zero
                  srai         zero, s0, 13
                  slti         ra, s9, 1567
                  slli         a2, t0, 10
                  sltu         tp, tp, t3
                  and          s2, s7, a2
                  slli         a4, t1, 29
                  xori         s3, s11, 1039
                  srli         s10, sp, 4
                  sub          a4, t5, ra
                  xor          ra, a3, s10
                  slt          t0, a7, a4
                  ori          t6, a2, 696
                  lui          s1, 412459
                  srai         t0, t1, 11
                  slli         s0, t4, 25
                  sra          t0, zero, a6
                  sub          s0, a4, a5
                  xori         a5, sp, 1519
                  sll          s8, s5, ra
                  auipc        s6, 698140
                  srai         a2, a2, 15
                  ori          a7, a7, -207
                  xor          a3, a4, t4
                  and          t5, s1, t6
                  srl          t3, t6, gp
                  sltu         s9, a6, s4
                  sltu         a6, a4, a2
                  sra          tp, s1, t0
                  addi         s8, sp, -350
                  sub          s5, s8, a1
                  addi         s10, s8, 1080
                  srai         t4, s8, 12
                  srli         a6, a2, 15
                  or           a6, t5, t1
                  ori          tp, s9, 621
                  lui          s7, 24417
                  nop
                  auipc        gp, 543378
                  srli         a4, s9, 21
                  srai         s0, t0, 10
                  or           s5, t5, a7
                  nop
                  add          a7, s1, s9
                  srli         s8, ra, 8
                  xori         ra, s7, 1772
                  addi         t3, s2, -905
                  slli         s5, s0, 20
                  slti         t5, s1, -1987
                  lui          t5, 604229
                  ori          t4, gp, -550
                  sltiu        a0, a7, -278
                  slt          s2, t0, tp
                  xori         a7, s11, -321
                  sltu         t3, s6, s4
                  andi         t6, s1, -1193
                  add          ra, s7, s7
                  sltu         s10, a2, s7
                  slt          s0, s9, a0
                  auipc        s9, 385857
                  lui          tp, 55290
                  and          s7, s9, s2
                  or           gp, a7, t5
                  or           tp, s11, a7
                  add          s7, s11, a7
                  srai         s6, s1, 8
                  nop
                  srl          t0, s4, s10
                  slt          a5, s8, s5
                  auipc        a2, 772342
                  lui          t0, 862130
                  sltu         ra, a1, s6
                  lui          s9, 570729
                  srli         a7, a0, 28
                  or           s5, t4, a1
                  sltu         s0, t5, a5
                  slt          s5, a1, s10
                  sub          s5, s4, a5
                  and          t4, s5, a7
                  srli         a0, s4, 4
                  add          sp, a5, sp
                  add          a4, t5, s7
                  slt          a1, a4, s5
                  sub          a0, sp, a5
                  sltu         zero, a3, s2
                  srl          sp, a0, a1
                  xor          a0, sp, a6
                  slti         a6, t2, -1458
                  sll          s3, ra, s1
                  xori         t0, s0, -314
                  auipc        a7, 382581
                  lui          sp, 514569
                  sltu         ra, a1, a4
                  srl          a0, s1, zero
                  slt          t1, s5, s6
                  sub          s5, s4, s8
                  sltu         sp, s5, t4
                  ori          zero, t0, 1018
                  sll          s10, a4, t4
                  slli         s1, s7, 17
                  ori          t3, a1, 1607
                  slt          s3, a0, a3
                  ori          s7, s7, -730
                  srl          a3, a0, s2
                  slt          t0, t1, s5
                  srai         t0, t5, 3
                  srai         a2, t1, 23
                  slt          s3, a6, s11
                  lui          gp, 1032244
                  and          a2, s10, s0
                  sltiu        s3, s10, 1957
                  sltiu        a3, a0, -1086
                  and          a3, s10, a1
                  addi         t1, s6, 901
                  sub          zero, t1, s7
                  ori          s3, t4, -1579
                  sltu         t4, a7, s7
                  slli         t3, s8, 3
                  srl          t1, s10, a3
                  auipc        t0, 637221
                  slli         ra, t1, 18
                  slli         s8, s11, 22
                  xor          a1, a7, t5
                  srai         a0, t0, 24
                  nop
                  srli         a2, sp, 31
                  sll          s1, s2, a2
                  sub          s1, gp, gp
                  srai         s3, a1, 18
                  srai         t0, a1, 27
                  xor          a0, a6, t6
                  slt          t4, s8, t6
                  slli         s1, t0, 12
                  nop
                  lui          a6, 713665
                  srl          s9, a0, s9
                  slli         s9, t5, 19
                  and          s2, s0, a4
                  or           s1, s11, s10
                  sll          s3, gp, t3
                  sra          t3, a0, a0
                  auipc        gp, 591433
                  sltu         ra, s3, t0
                  and          a0, t4, zero
                  sra          s7, s11, s9
                  slti         ra, a7, -443
                  sltiu        sp, gp, -1979
                  slti         a1, sp, -607
                  xor          s2, s7, s11
                  sltu         t1, tp, a1
                  slti         t0, t4, 495
                  slti         s8, t5, 593
                  slt          tp, a3, t6
                  nop
                  auipc        t6, 817555
                  slti         s0, s11, 1903
                  nop
                  sltiu        t6, s0, -1611
                  andi         a0, a3, 1902
                  sltu         s6, s0, a7
                  slli         zero, a0, 13
                  slt          a6, s10, s4
                  add          s2, tp, t1
                  slti         sp, t6, 210
                  xori         gp, a6, 516
                  and          sp, s8, t3
                  srai         a3, s8, 30
                  addi         s8, t0, -1238
                  and          a0, a0, s7
                  slt          t5, zero, a7
                  and          t4, s1, a7
                  or           s10, a1, t6
                  sll          a6, t2, t0
                  andi         s9, a3, 787
                  xor          gp, t5, a4
                  and          a1, t6, t3
                  and          a3, t1, tp
                  or           s7, t4, s2
                  sltu         s9, s1, a4
                  xor          a1, sp, t2
                  sub          s7, a6, ra
                  srl          t4, t2, a5
                  nop
                  add          s3, s11, a7
                  slli         t1, t6, 23
                  lui          t0, 74997
                  slti         t0, s2, -60
                  add          s0, s4, t3
                  slti         s0, s9, 112
                  srli         s6, tp, 14
                  nop
                  slli         s5, t6, 27
                  auipc        a0, 171987
                  or           t5, tp, s5
                  xori         s7, t5, 25
                  ori          t6, a5, -1117
                  srai         a2, t2, 22
                  sll          t0, a2, t1
                  slti         a2, t5, -347
                  slti         s1, a2, -1898
                  andi         s1, a4, 1398
                  slt          zero, a7, sp
                  and          t4, a0, zero
                  srl          s3, t0, s9
                  sltiu        tp, s4, -880
                  srai         tp, zero, 31
                  lui          a5, 586656
                  sltiu        zero, s9, 442
                  slli         a1, t6, 12
                  srl          a1, a2, tp
                  xori         s1, ra, -2006
                  or           a5, s10, s9
                  srl          a6, a5, s6
                  slti         s5, sp, -1473
                  ori          t0, a7, 1671
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a5, 0xffffffff
                  li           s5, 0xb1cbf9b7
                  li           a2, 0x78eb151f
                  li           a0, 0x80000000
                  li           a7, 0x0
                  li           a3, 0x795cf973
                  li           gp, 0xffffffff
                  li           t0, 0x80000000
                  li           a4, 0xffffffff
                  nop
                  nop
                  nop
                  lui          s5, 817786
                  add          a4, t3, t3
                  auipc        a2, 966970
                  add          a5, a7, a5
                  addi         a7, a7, -853
                  addi         t3, gp, 489
                  auipc        a5, 288246
                  lui          a0, 882798
                  lui          s5, 435518
                  lui          a4, 354368
                  addi         a5, a5, 572
                  sub          a0, a5, a4
                  nop
                  nop
                  nop
                  auipc        gp, 843677
                  nop
                  addi         a4, a2, -1729
                  nop
                  lui          t0, 405863
                  sub          t0, a2, t0
                  nop
                  lui          a0, 349437
                  sub          t3, t3, a7
                  auipc        t0, 739940
                  nop #end riscv_int_numeric_corner_stream_12
                  andi         t0, s4, 824
                  sltiu        s0, a5, -412
                  sll          s9, s5, s4
                  sltiu        t6, s3, -1374
                  sra          a3, s7, t0
                  and          s8, s5, a2
                  srli         s8, s1, 16
                  slli         zero, sp, 5
                  sub          gp, s1, zero
                  ori          tp, s3, 973
                  sra          s5, a1, s4
                  xori         s7, t0, 1432
                  srli         a5, a1, 15
                  sra          t1, gp, a1
                  sra          t1, a3, a0
                  srai         a7, s10, 23
                  and          a3, s3, s5
                  auipc        s2, 564904
                  sltu         t5, ra, tp
                  nop
                  slti         s6, s11, -1506
                  andi         t6, a5, 1425
                  add          t5, t2, s8
                  slli         a6, s0, 29
                  nop
                  add          sp, a6, t4
                  and          s10, a4, gp
                  auipc        s5, 563150
                  srl          tp, s2, t6
                  lui          t3, 444639
                  slti         s5, zero, 1209
                  sll          t0, a1, t2
                  ori          s9, a6, -943
                  srl          a0, a0, t5
                  sll          a2, s6, zero
                  srli         a6, s0, 15
                  sra          s9, zero, zero
                  or           ra, t3, t3
                  sltiu        s5, a3, -914
                  srli         s2, t3, 15
                  addi         s0, a5, -196
                  srai         sp, a7, 18
                  nop
                  srai         s10, ra, 15
                  slti         t0, t4, 1809
                  srli         a6, s6, 2
                  and          s8, t6, s6
                  slli         s5, a7, 5
                  andi         a1, t4, -403
                  nop
                  or           s5, tp, a5
                  slli         s7, a5, 6
                  add          zero, a3, s2
                  srl          t1, a5, t1
                  slti         t5, ra, 441
                  andi         t5, s8, 1809
                  slti         s5, s7, 1231
                  auipc        a3, 403768
                  auipc        t3, 740386
                  andi         s0, a5, -626
                  sll          s7, sp, s11
                  srai         gp, s9, 12
                  xor          a2, t1, t4
                  or           t0, t5, a5
                  slti         s10, s7, -646
                  nop
                  srl          a5, ra, t6
                  xor          a7, t4, s0
                  lui          s0, 1035375
                  slt          t1, a1, ra
                  srli         a7, t2, 28
                  ori          s7, a1, 1098
                  sra          s2, s3, s5
                  andi         t4, s8, 1531
                  sub          a0, sp, sp
                  sll          tp, t6, a5
                  sltiu        t3, t6, -1848
                  andi         s0, t2, -1862
                  srli         a1, s2, 11
                  andi         t3, a2, -889
                  xor          t0, tp, gp
                  sub          s2, a7, ra
                  sub          gp, tp, s3
                  srli         sp, t0, 14
                  nop
                  add          a6, a6, a1
                  or           ra, ra, s8
                  slli         s5, a0, 23
                  srl          s8, a2, t0
                  srli         zero, s0, 24
                  sra          a7, tp, s11
                  slli         t6, t0, 22
                  srl          s2, sp, sp
                  slli         a6, s7, 5
                  sll          s1, zero, s4
                  slli         t3, zero, 1
                  srl          t0, t5, a3
                  lui          a4, 561050
                  sltu         s7, s3, t0
                  srl          sp, a1, t1
                  slt          s7, t1, t4
                  ori          a6, a3, -715
                  sub          s0, t2, zero
                  srai         s8, s6, 15
                  srl          t1, zero, t3
                  sll          t6, t3, t4
                  srai         zero, s11, 28
                  sll          s3, t1, t6
                  slti         t3, s5, -390
                  xori         tp, a4, -630
                  xori         tp, t4, -130
                  andi         a2, s6, -1983
                  sra          ra, a0, t0
                  nop
                  srl          gp, s8, a4
                  andi         s6, a1, 1931
                  ori          t1, s1, -505
                  sltu         s10, t5, s8
                  xori         a7, a7, 1850
                  sll          s6, s7, s2
                  slt          a4, zero, a5
                  ori          t1, t3, -1461
                  sub          t1, zero, s11
                  xor          s3, a5, zero
                  addi         s6, s3, 262
                  sltiu        a5, s9, -766
                  srai         s5, s4, 24
                  srl          zero, s3, s3
                  and          s8, gp, gp
                  slli         zero, t4, 22
                  addi         sp, a1, -2012
                  srai         a5, t0, 1
                  xor          s10, s8, s9
                  sltu         s10, t1, t4
                  sub          a6, s11, s6
                  xor          a1, s4, zero
                  and          s7, t2, ra
                  xori         a6, s5, -2042
                  sltiu        s7, s5, 942
                  sltu         t5, s8, t6
                  slli         s10, a0, 3
                  auipc        s8, 12817
                  slli         s0, a3, 20
                  srli         s7, s9, 26
                  slti         a5, s9, 1444
                  lui          t5, 919259
                  sltu         t6, t3, s1
                  add          a7, a1, ra
                  xor          a2, s11, t4
                  or           a4, tp, s5
                  sub          t3, a2, ra
                  sll          s9, a6, t3
                  sltu         s9, a1, a5
                  sra          s3, s3, s1
                  andi         s8, s6, 1417
                  slti         ra, s7, 1810
                  srai         s9, s6, 24
                  sltu         a1, t5, a7
                  sltu         tp, s0, zero
                  sltu         t4, s6, ra
                  xor          tp, s4, s7
                  slli         s6, s3, 17
                  slt          s5, s9, s6
                  sltu         s9, s1, t1
                  addi         a5, t2, -786
                  auipc        s1, 406986
                  auipc        s0, 305966
                  xor          gp, a2, s5
                  sltu         a3, ra, s7
                  srl          t5, a2, zero
                  auipc        t1, 698885
                  sll          a5, t6, tp
                  xori         a7, a7, -1557
                  addi         a0, s5, 1544
                  and          t1, a2, a7
                  xori         s3, ra, -1633
                  slti         s2, t4, 232
                  and          s2, t1, s6
                  add          s1, t4, a6
                  andi         a4, a5, 1684
                  slti         t4, s11, -1748
                  srl          a2, t4, a1
                  lui          s7, 213109
                  slti         a1, a5, 1575
                  ori          s8, a6, -1661
                  and          t0, t5, t4
                  xor          t4, a3, t5
                  lui          a3, 728408
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s7, 0x80000000
                  li           a5, 0x80000000
                  li           t6, 0x0
                  li           a1, 0x2a9f0501
                  li           a6, 0x0
                  li           ra, 0x0
                  li           s5, 0x80000000
                  li           s0, 0xffffffff
                  li           t1, 0x80000000
                  sub          a1, a5, a4
                  sub          s5, t1, a1
                  add          t6, a1, t1
                  nop
                  lui          ra, 242695
                  lui          t6, 130063
                  add          t1, s5, a1
                  nop
                  addi         s5, s7, -1794
                  add          a1, t1, t1
                  sub          a5, a4, t6
                  add          a6, ra, s5
                  nop
                  sub          a1, t6, s7
                  add          t1, a1, a1
                  addi         s7, ra, 1481
                  addi         a5, s7, 1621
                  addi         a5, a4, 48
                  nop
                  auipc        s0, 536286
                  sub          s0, a6, t1
                  add          a4, ra, s5
                  auipc        t6, 389525
                  lui          t6, 774613
                  sub          s0, t6, a5
                  lui          ra, 329519
                  lui          t6, 473702
                  sub          s5, t6, a4 #end riscv_int_numeric_corner_stream_3
                  xor          s0, s11, a7
                  sltiu        s3, t6, -1893
                  srai         a4, t3, 23
                  xori         t5, t0, 66
                  xor          t1, sp, a0
                  sll          a0, t3, s2
                  andi         s6, t4, 2017
                  lui          t0, 140537
                  or           a5, sp, s2
                  slt          a7, a0, a2
                  srli         s3, a5, 11
                  lui          a2, 759745
                  or           s2, a0, a1
                  sll          s7, s6, s5
                  slti         s5, s6, -240
                  add          a3, s4, s6
                  sll          s6, a2, s2
                  xori         s7, t5, -742
                  slli         s2, t3, 8
                  lui          a2, 381700
                  xor          s10, sp, s4
                  or           s6, tp, s6
                  ori          t3, s10, -838
                  srl          a7, s0, s8
                  ori          t6, s7, -1954
                  srl          t0, s6, a0
                  sltu         s6, a2, t0
                  sll          t0, s0, s6
                  andi         t6, tp, 121
                  lui          t5, 442862
                  lui          s1, 819037
                  auipc        gp, 662203
                  xori         t1, t6, -1145
                  sll          a5, s5, s4
                  sra          s1, a3, a0
                  add          s1, tp, t6
                  srli         s10, s10, 4
                  addi         a4, s11, -33
                  sra          s2, s10, sp
                  xor          s10, sp, s1
                  xor          zero, s2, s8
                  lui          a4, 682084
                  sra          zero, s5, s10
                  auipc        t1, 434754
                  ori          s3, t3, 290
                  srl          s2, t6, a3
                  slli         t5, s0, 0
                  ori          t6, a6, -1299
                  sltu         t1, t5, a6
                  slli         a2, zero, 0
                  lui          a2, 204536
                  sll          a0, s10, s10
                  xori         a1, t6, -334
                  add          a4, s0, s4
                  slti         a5, a6, 624
                  srl          s8, gp, t3
                  sll          s3, t4, a5
                  ori          a7, s4, 1646
                  andi         s3, s8, -2045
                  add          a1, ra, t0
                  sra          t6, tp, s2
                  ori          s2, s3, 709
                  sra          s0, s5, s3
                  sltiu        s10, a0, -886
                  sra          s0, s8, a2
                  sub          a3, s11, t0
                  xori         t0, a2, -1300
                  xor          a1, s8, t4
                  srli         s0, s3, 15
                  or           t3, t5, a2
                  ori          s9, s0, -1382
                  or           a0, s3, t5
                  and          tp, a0, s3
                  ori          s6, ra, 153
                  or           a0, ra, s2
                  sltiu        t1, s0, 1803
                  auipc        s2, 26784
                  or           a7, t0, s10
                  slt          zero, a5, gp
                  srl          s8, zero, t3
                  nop
                  srli         a2, gp, 5
                  srai         sp, a1, 6
                  sll          t4, s2, sp
                  auipc        s3, 96930
                  auipc        a6, 90948
                  sub          a3, a7, s7
                  sll          sp, s7, s3
                  and          a0, s10, t6
                  and          s0, s6, s1
                  add          t0, s10, s5
                  srai         zero, s6, 19
                  slt          sp, s5, s4
                  slli         a2, a2, 20
                  add          s8, s8, zero
                  xori         t3, s8, 1985
                  ori          s7, t3, -1990
                  sltiu        a1, sp, 352
                  xor          t5, t5, s0
                  slli         s6, s8, 3
                  srl          s9, a1, t0
                  sub          s7, s10, s11
                  or           t0, a5, a4
                  addi         a0, a1, -1117
                  sub          zero, t4, s5
                  or           a1, s6, a4
                  lui          a4, 850457
                  sub          t1, a4, s10
                  srl          sp, a1, s7
                  nop
                  xor          a1, gp, t5
                  srl          t6, s3, gp
                  slti         ra, a1, 1661
                  andi         s3, a6, 1713
                  auipc        t3, 322325
                  sra          zero, sp, s5
                  addi         zero, s1, 1869
                  srl          a2, s2, a4
                  or           zero, a7, t4
                  andi         s10, a2, -1160
                  slli         t0, tp, 19
                  lui          a5, 648878
                  sltu         s6, zero, a5
                  slli         a4, s0, 13
                  xor          s2, a0, zero
                  xor          s8, s6, t5
                  sll          t5, a0, s7
                  sltiu        a0, a2, 1597
                  xori         tp, t6, 1041
                  andi         tp, a2, 2027
                  sll          sp, s11, s10
                  ori          s3, a2, 1821
                  slti         ra, t0, 171
                  and          t5, gp, s3
                  sll          s9, a7, s8
                  xor          a1, s1, a6
                  auipc        a0, 740432
                  sub          s8, t1, t1
                  slt          s6, s11, sp
                  andi         s8, a7, -530
                  xor          s8, a6, t4
                  slti         ra, tp, 1845
                  or           gp, gp, a3
                  lui          s3, 417893
                  sub          tp, s7, t2
                  srli         gp, a7, 9
                  add          a7, t0, s10
                  add          a0, a4, t6
                  lui          a1, 820882
                  srli         s9, t6, 13
                  srl          ra, t1, a6
                  sll          a7, tp, s4
                  nop
                  andi         s3, s7, 2015
                  auipc        a5, 544304
                  sltu         s1, ra, s4
                  addi         s0, s9, 1299
                  srli         gp, s6, 12
                  slt          gp, s8, s5
                  slti         tp, s9, -883
                  sltu         a1, s5, sp
                  add          a4, a4, zero
                  ori          s9, t0, -26
                  slt          t0, s0, a1
                  sltu         a7, s1, t4
                  sub          zero, ra, s2
                  ori          s7, s3, 142
                  slti         a3, s8, -1607
                  sltu         t5, sp, a3
                  srai         a1, s0, 27
                  xori         gp, t0, -1771
                  srl          tp, s0, a6
                  lui          t3, 574469
                  xori         s8, s10, -182
                  xor          s9, a5, zero
                  auipc        s2, 903836
                  xor          t6, s3, tp
                  auipc        a6, 913700
                  or           t1, t0, t6
                  slti         s5, s0, 1386
                  srai         s8, a1, 25
                  and          a6, sp, t2
                  auipc        s3, 652536
                  sll          a0, t4, a6
                  andi         sp, s1, 1209
                  ori          t4, a3, 636
                  andi         sp, a0, -724
                  srl          t5, s2, t6
                  addi         s0, s2, 685
                  slli         t3, t6, 27
                  slli         t5, s9, 9
                  sub          s1, zero, t6
                  xor          s7, s10, t5
                  and          a2, t5, s1
                  andi         t6, a6, 80
                  srl          ra, s11, tp
                  sltu         sp, a5, a4
                  addi         s5, zero, 1649
                  andi         a3, a0, -912
                  li           s8, 0xc53526cb #start riscv_int_numeric_corner_stream_5
                  li           t5, 0xffffffff
                  li           a1, 0xffffffff
                  li           s3, 0x2c85d655
                  li           s7, 0xffffffff
                  li           gp, 0xffffffff
                  li           a3, 0xffffffff
                  li           s0, 0x0
                  li           sp, 0xfe3cb46f
                  li           t3, 0x0
                  sub          s3, s7, s3
                  add          a1, t3, t5
                  nop
                  nop
                  add          s0, s7, a1
                  add          t5, a3, t3
                  sub          sp, t5, sp
                  sub          gp, s8, a3
                  sub          gp, s3, s0
                  auipc        s0, 1001127
                  lui          s0, 166093
                  addi         a1, s3, 1510
                  sub          s0, t3, s8
                  add          a1, s3, t3
                  add          s3, gp, a1
                  add          a1, gp, t5 #end riscv_int_numeric_corner_stream_5
                  slt          a7, s0, s6
                  slti         t6, a4, 393
                  sra          a6, a2, s7
                  ori          s7, t5, 555
                  auipc        s0, 286615
                  slt          t6, sp, s0
                  sub          a7, a2, t3
                  sll          s0, s9, s9
                  slt          a4, a3, sp
                  lui          t1, 715464
                  slti         a1, s10, 328
                  add          t6, t3, a1
                  xor          sp, t4, sp
                  srai         s3, tp, 5
                  nop
                  slli         s9, zero, 14
                  slt          s8, s10, s3
                  addi         zero, a7, 1933
                  sltu         s6, t1, s11
                  xor          a6, gp, t5
                  sltiu        t0, s5, 729
                  auipc        a0, 314784
                  slti         a3, t1, 422
                  nop
                  andi         gp, t5, 1638
                  sra          s10, gp, a4
                  add          sp, t3, t5
                  srl          s3, s0, sp
                  nop
                  and          s5, s3, zero
                  addi         a0, s4, -1301
                  ori          s8, s9, 989
                  addi         t3, t0, 604
                  auipc        a7, 943986
                  lui          gp, 239558
                  auipc        t4, 547487
                  and          a3, a1, a2
                  addi         a4, a0, 1587
                  xor          ra, t1, zero
                  andi         s9, s3, -873
                  srai         s2, s2, 14
                  xor          s10, s6, a1
                  nop
                  srai         s0, a4, 19
                  srl          s1, t1, s2
                  lui          gp, 180630
                  xor          s3, a2, a0
                  slti         t3, t5, -329
                  srl          t4, s2, sp
                  xor          t4, a7, s0
                  sltiu        s10, a4, -172
                  slti         t4, t3, -1235
                  sub          s3, s4, t2
                  addi         a7, a6, -63
                  xor          gp, ra, t0
                  sll          gp, t1, sp
                  sltu         t4, s7, a2
                  lui          ra, 1041029
                  srli         s0, t0, 11
                  andi         sp, s0, -311
                  slt          tp, s2, gp
                  xori         sp, zero, 1139
                  auipc        a7, 620699
                  sltiu        s10, s3, 1545
                  addi         zero, a3, 2004
                  addi         s2, tp, -1843
                  sra          zero, t0, t2
                  sll          gp, gp, t4
                  xor          s5, s11, s5
                  sub          gp, a0, s7
                  ori          zero, a5, -2012
                  or           a2, zero, sp
                  srai         s7, t1, 4
                  nop
                  srli         a7, a0, 9
                  and          t5, a7, s1
                  or           s8, t4, s0
                  sra          t3, s4, s3
                  sll          s5, t2, t4
                  and          t4, t2, sp
                  sra          sp, s6, a5
                  xor          zero, s9, s11
                  add          a5, s8, s8
                  srai         a6, a1, 29
                  slli         s7, tp, 19
                  srl          a7, s2, t4
                  lui          s7, 869040
                  xor          a6, s0, s0
                  ori          s1, t3, 461
                  ori          s8, s11, -788
                  or           ra, ra, t0
                  sub          s0, gp, s10
                  srli         s7, t6, 15
                  andi         gp, s5, -2029
                  slli         a6, a1, 7
                  or           t6, s8, zero
                  and          s8, a2, t5
                  or           a1, t4, s5
                  sub          s5, s10, t0
                  xor          a6, s5, t1
                  andi         s9, tp, 2047
                  srli         t4, s11, 11
                  slt          s0, ra, a6
                  nop
                  or           sp, zero, s1
                  xori         a0, s5, -754
                  lui          s10, 876961
                  srli         a7, t0, 26
                  slt          a4, a5, s9
                  slt          t6, a4, tp
                  slli         a3, a6, 17
                  xori         a1, s9, 1367
                  lui          s9, 708306
                  or           s8, s0, tp
                  auipc        s8, 341415
                  add          a6, t5, s10
                  and          t0, s8, a0
                  or           gp, a4, a0
                  slli         s8, t2, 2
                  slli         a4, a0, 30
                  sra          t1, t3, t5
                  nop
                  slli         a0, t3, 9
                  or           s9, a5, t0
                  andi         s3, ra, -1275
                  or           ra, s3, s3
                  ori          s6, gp, 923
                  srl          a5, ra, s0
                  add          s1, s10, a4
                  srli         a1, a5, 3
                  auipc        t3, 195033
                  srl          s3, zero, a4
                  srl          s10, a5, s5
                  ori          a1, t1, 253
                  sra          t6, s11, s6
                  add          a7, s4, t6
                  srl          t6, sp, s5
                  and          tp, a2, t4
                  sub          s6, t0, t5
                  srl          t1, a3, a0
                  addi         s7, t2, -1346
                  ori          t3, s10, -428
                  lui          a1, 593591
                  sltiu        s2, ra, 941
                  sltu         t6, t6, a2
                  and          sp, ra, s11
                  sub          a2, t3, t2
                  addi         a0, s0, 1307
                  slt          a1, a1, t4
                  slli         s10, s8, 29
                  auipc        t1, 212720
                  srai         s5, s5, 24
                  sll          s3, s9, t6
                  sltu         sp, a3, s2
                  sub          s7, s5, a5
                  sra          a0, a2, a7
                  ori          s10, s4, 103
                  sltiu        t3, t6, 250
                  nop
                  srai         ra, sp, 5
                  sll          s7, t1, t2
                  xori         s9, s1, -1071
                  add          a4, t6, a2
                  sltu         s0, t4, s0
                  sra          s2, a4, sp
                  slt          t1, a2, s8
                  srl          a3, s8, t3
                  srai         a4, a1, 15
                  slli         s3, a5, 20
                  addi         a2, t2, 758
                  ori          ra, zero, 1905
                  xori         a1, sp, 606
                  auipc        a1, 578190
                  xor          gp, zero, a1
                  and          a7, s7, zero
                  add          a1, t5, ra
                  srai         s9, s4, 4
                  sub          a5, s11, s1
                  ori          a2, t0, 169
                  srli         a7, s9, 14
                  andi         s1, s3, -231
                  lui          a0, 936619
                  srai         gp, a1, 6
                  sll          s6, sp, s10
                  xor          s0, s6, ra
                  sra          gp, t2, a3
                  xor          tp, t2, a7
                  and          s6, a4, t5
                  lui          t1, 931746
                  srai         t4, zero, 27
                  slt          gp, zero, sp
                  nop
                  and          s5, t3, t5
                  or           s5, t1, s11
                  srl          tp, s11, s7
                  ori          a7, s5, 682
                  addi         tp, t4, 1611
                  srl          a7, s10, t4
                  or           t5, t6, t6
                  ori          t0, s6, -810
                  addi         s1, t1, 1885
                  or           a2, zero, s0
                  add          t4, s8, s7
                  sra          a5, t4, a5
                  slli         a0, sp, 12
                  and          a1, s10, a3
                  xori         a6, s10, 325
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s5, 0x419a8686
                  li           sp, 0x80000000
                  li           t0, 0x41794d1e
                  li           s8, 0xffffffff
                  li           a1, 0xcba10671
                  li           s7, 0x0
                  li           a2, 0x0
                  li           a0, 0xffffffff
                  li           s1, 0x24f6d3b6
                  nop
                  auipc        a2, 772722
                  lui          sp, 642659
                  lui          t0, 725840
                  lui          s1, 799003
                  nop
                  nop
                  lui          t0, 905415
                  auipc        a1, 11657
                  auipc        t0, 261061
                  auipc        a0, 882451
                  lui          s5, 243586
                  add          s7, s7, a1
                  lui          a0, 863701
                  auipc        s0, 371642
                  nop #end riscv_int_numeric_corner_stream_6
                  sltu         a5, a0, a2
                  or           t6, s9, t3
                  xor          t4, s5, a4
                  and          s9, s11, zero
                  auipc        s0, 747953
                  xor          s3, a2, t4
                  srl          sp, s10, s6
                  xor          zero, zero, zero
                  slli         s10, a2, 27
                  addi         a0, s4, 1145
                  andi         t5, t6, 1557
                  and          t3, s10, a5
                  nop
                  or           s7, s6, zero
                  slli         s6, s1, 10
                  addi         tp, t2, -144
                  auipc        s10, 1028575
                  srai         tp, s2, 3
                  andi         s6, t0, 875
                  slt          s1, s4, a3
                  ori          a0, s0, -1872
                  ori          t4, s9, -1504
                  xori         s2, s2, -2011
                  and          tp, a3, gp
                  ori          s6, t2, -1603
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s1, 0x80000000
                  li           a1, 0x80000000
                  li           a0, 0xa74f2d0c
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  li           tp, 0x80000000
                  li           t5, 0x0
                  li           sp, 0x0
                  li           ra, 0xcab6bc9d
                  lui          s3, 276478
                  auipc        s1, 185395
                  addi         ra, s3, 765
                  addi         t5, t5, 445
                  sub          t5, t5, s3
                  addi         ra, ra, -242
                  lui          a1, 749455
                  auipc        a7, 686640
                  sub          tp, sp, s1
                  nop
                  lui          t4, 560014
                  lui          t4, 251545
                  add          t4, ra, t4
                  sub          s1, t4, sp
                  nop
                  sub          t5, s1, tp #end riscv_int_numeric_corner_stream_17
                  lui          tp, 510038
                  ori          a6, s9, -1363
                  auipc        t0, 516803
                  sll          s2, s10, ra
                  slti         s6, t4, 135
                  ori          t5, a5, 181
                  slti         s2, t2, 1803
                  sltu         s3, s2, s11
                  sub          t0, a1, s11
                  and          a3, tp, t2
                  sub          s5, t3, tp
                  slt          a5, s1, a5
                  sra          s10, t3, sp
                  srl          t5, a6, s2
                  sltu         a2, a7, s9
                  sll          a1, s6, sp
                  addi         s10, gp, 879
                  andi         s9, a7, 997
                  srai         t4, t6, 27
                  or           s3, t3, t5
                  slt          gp, t2, s5
                  xori         s10, s5, 1380
                  slli         t3, s8, 22
                  slti         t5, zero, 1320
                  srai         s8, s6, 19
                  andi         s5, s9, -1499
                  andi         a6, sp, 1866
                  srai         a5, s8, 8
                  sra          s2, s6, s11
                  and          a2, tp, s5
                  srai         t4, s8, 25
                  xor          s2, ra, s7
                  auipc        a6, 465435
                  slli         a6, a4, 17
                  xori         t4, a4, 1200
                  sltu         s6, s10, t6
                  slti         t6, a7, -656
                  sll          s0, t0, s4
                  sltu         s9, s11, ra
                  srl          t5, a0, a5
                  andi         s1, t3, 1472
                  addi         s10, s11, -625
                  or           s1, s4, a2
                  sltu         s3, t5, ra
                  auipc        a2, 878511
                  srl          s6, a5, t2
                  addi         s0, a5, 1026
                  xor          s6, a4, a0
                  srl          ra, t0, zero
                  sltu         a1, tp, t3
                  or           t3, s0, a2
                  lui          s0, 139653
                  sll          s8, a4, a2
                  lui          a3, 67906
                  slli         tp, t6, 3
                  ori          a0, a4, -697
                  addi         a1, sp, -1493
                  lui          a3, 1038669
                  srai         s3, t3, 23
                  slt          ra, a1, s4
                  ori          t6, a2, -1754
                  or           s6, a5, ra
                  ori          s9, a5, -973
                  sltiu        a4, s4, -1
                  or           t5, s11, a0
                  sra          s7, gp, s8
                  sub          zero, s5, s1
                  srli         t1, a4, 2
                  nop
                  srai         s10, t1, 14
                  sra          gp, t2, a7
                  sra          a1, t6, s4
                  andi         zero, s2, -1819
                  sltu         t0, gp, s9
                  add          t1, t5, a6
                  sra          t4, s7, s8
                  ori          t3, s10, -340
                  sll          s7, s9, a7
                  sll          tp, a6, a0
                  ori          t0, t2, 618
                  slli         a3, gp, 6
                  sltiu        t1, s2, -1550
                  sltu         a3, a4, zero
                  lui          s6, 196065
                  slti         gp, ra, -1522
                  and          a0, s6, a3
                  sltu         s5, s7, s6
                  srli         a5, t2, 0
                  sra          t0, a6, s11
                  slti         s10, sp, -1786
                  slt          t6, s11, s10
                  sltiu        s9, tp, 646
                  addi         t6, s11, 2023
                  srl          t3, tp, s1
                  slli         s7, zero, 10
                  slt          s10, a7, a6
                  sltu         a0, a5, a5
                  and          gp, tp, a6
                  xor          sp, s4, s0
                  srai         ra, t0, 9
                  slt          a4, s1, s8
                  addi         a7, ra, -1399
                  add          t5, t6, s2
                  sll          a6, a5, gp
                  xor          sp, t0, s5
                  auipc        s2, 535993
                  and          s5, s1, a7
                  srl          a4, a6, sp
                  sra          zero, t1, t1
                  sltu         s7, t1, a1
                  nop
                  xor          t0, s4, sp
                  or           a1, t4, s11
                  add          a6, ra, a1
                  srai         s3, t1, 29
                  sub          s1, t1, s7
                  and          s7, a1, s4
                  and          a5, a1, s2
                  nop
                  auipc        s9, 722018
                  or           a7, a1, a0
                  slli         zero, ra, 11
                  and          a1, t3, a3
                  auipc        s7, 692492
                  andi         s0, a1, -1755
                  slt          s6, a3, a1
                  add          zero, s11, a2
                  srl          zero, t1, s6
                  slli         s10, s2, 31
                  slli         sp, a7, 9
                  slt          s8, s2, s5
                  slti         s1, a7, -1603
                  and          s3, s11, t2
                  sltu         a6, a0, s10
                  sltu         s3, ra, ra
                  ori          sp, tp, 466
                  and          a7, s5, a6
                  and          zero, a7, s4
                  slti         s1, a3, 2005
                  add          a5, s8, a0
                  ori          s1, s0, 1617
                  slli         t4, a0, 10
                  srli         s1, tp, 30
                  slti         tp, t4, 1407
                  srai         t5, s8, 14
                  xori         t6, zero, -134
                  addi         s3, a4, -1117
                  xori         tp, a2, -720
                  or           a1, a7, s1
                  sltiu        s1, s3, -345
                  andi         a4, zero, 1850
                  addi         a2, s9, 107
                  and          a2, t2, s8
                  sltu         s2, s2, a4
                  lui          zero, 713732
                  and          t0, s10, a6
                  srl          a4, s11, a6
                  xor          t5, t4, t1
                  srl          tp, s6, a3
                  lui          gp, 598362
                  slti         a3, a4, -965
                  srai         s0, a6, 15
                  slli         s6, s11, 17
                  or           a3, ra, sp
                  or           a0, s7, a4
                  sltiu        s3, t2, 558
                  lui          t4, 415354
                  ori          s5, t2, 469
                  addi         t0, a5, 1910
                  slti         tp, t3, -208
                  sltu         a4, s10, s4
                  sltiu        s1, a6, -459
                  add          t3, a0, a5
                  xor          s8, ra, t4
                  sra          t4, s3, s11
                  slt          s0, a5, t0
                  auipc        s8, 847410
                  auipc        a7, 788354
                  srli         a2, gp, 27
                  auipc        a3, 21845
                  slli         t4, s0, 17
                  sra          t4, s6, s0
                  or           sp, s10, s5
                  srl          s2, ra, t3
                  and          s8, a2, a7
                  sltiu        t6, s7, 602
                  slli         s10, t5, 4
                  add          gp, a5, s6
                  addi         ra, s2, -1150
                  slli         t4, a1, 7
                  slli         t3, s0, 9
                  or           a4, a0, s6
                  srai         a6, s3, 7
                  nop
                  sltiu        s7, gp, 1222
                  sltu         s10, s0, a2
                  or           t0, t6, a3
                  or           s0, t5, tp
                  andi         tp, a6, 1945
                  add          s0, t2, s11
                  addi         a4, s0, 317
                  srl          s2, s6, s9
                  sub          a3, s8, t0
                  srli         s0, t0, 21
                  srl          a3, a2, a6
                  lui          s0, 695044
                  andi         sp, sp, -87
                  sll          s8, s2, gp
                  or           t0, t3, zero
                  xor          s6, a4, s11
                  srai         a0, a3, 19
                  srl          s7, s4, a1
                  and          a1, s9, ra
                  srli         tp, s8, 11
                  srli         a3, gp, 17
                  lui          s9, 1043253
                  sra          s7, t3, t6
                  or           a2, tp, t6
                  nop
                  srl          t1, a2, s1
                  add          s6, a5, a6
                  nop
                  sltiu        ra, s0, -534
                  nop
                  slti         ra, t5, -779
                  ori          s3, t5, -144
                  sub          t6, a3, t0
                  ori          s2, t2, -1357
                  srl          ra, sp, a1
                  addi         s1, a3, -529
                  sra          s7, a1, a3
                  nop
                  sltu         t3, t0, t1
                  slli         s0, ra, 1
                  slt          t6, tp, t5
                  lui          gp, 279243
                  sll          sp, a4, a6
                  sub          ra, t0, a5
                  and          a4, s6, t3
                  sltiu        a7, gp, -1460
                  and          zero, s3, t3
                  add          a1, gp, t4
                  srli         t3, s2, 11
                  slli         s5, s2, 20
                  addi         s10, s7, 1250
                  sll          zero, t5, a4
                  andi         s2, s2, -408
                  srai         t4, t6, 10
                  add          s3, t0, a1
                  slli         zero, s4, 19
                  sll          s0, zero, a6
                  xor          s10, s2, a7
                  lui          s7, 534363
                  slli         a5, a7, 18
                  srl          a7, zero, t2
                  sltu         s6, s10, s0
                  srli         s6, s3, 28
                  srli         s3, a7, 16
                  or           a0, a7, t0
                  slti         s5, a3, -808
                  xori         t6, t0, -1644
                  slt          t3, s3, s6
                  and          s1, s11, s6
                  srai         sp, a6, 4
                  srl          gp, a4, s5
                  and          a0, t4, gp
                  auipc        a2, 875490
                  ori          a0, t6, 1693
                  slti         a2, a0, 1767
                  sltiu        t5, a3, 755
                  sltu         tp, a6, t3
                  sltiu        s7, s8, -1895
                  sltiu        gp, a2, 1643
                  slli         s7, t3, 13
                  srai         t5, zero, 23
                  sub          tp, s2, a5
                  sub          s2, zero, a5
                  sltu         s10, t6, a4
                  auipc        s2, 487270
                  sra          a3, gp, s5
                  ori          a1, a1, 1296
                  sra          s0, s11, zero
                  slt          a5, s10, zero
                  andi         t5, gp, 1889
                  add          gp, t3, t1
                  sltiu        sp, t4, -341
                  auipc        a3, 784497
                  ori          s7, a1, 1955
                  srai         a2, t4, 11
                  nop
                  slt          t3, t2, a3
                  sub          s9, s7, t1
                  sub          a0, s3, s9
                  auipc        a4, 515956
                  addi         s7, s7, -674
                  nop
                  sll          t5, a0, s9
                  slli         s9, a4, 18
                  xori         s7, a2, 633
                  add          zero, s3, a5
                  xor          s5, s11, s2
                  srl          a0, a2, s0
                  or           t6, t0, a6
                  addi         a7, a0, -899
                  slli         t3, s7, 21
                  sltu         tp, s5, t2
                  sltu         s1, a4, t3
                  andi         t3, a2, 1958
                  slt          t0, s11, sp
                  sll          ra, t6, a5
                  add          gp, zero, s5
                  ori          ra, s0, -576
                  addi         s7, tp, 1094
                  xori         t0, a3, -291
                  sra          t6, ra, a2
                  ori          s3, s4, -1002
                  sltu         a3, s11, a2
                  addi         t4, s11, -1732
                  srli         ra, tp, 27
                  add          t6, s10, ra
                  sltu         zero, a3, a0
                  add          t1, a5, a2
                  ori          t0, a5, 1202
                  sltu         a3, t0, a2
                  addi         tp, sp, 118
                  or           a3, s5, t4
                  sltiu        sp, s8, -1865
                  auipc        s10, 190110
                  and          s10, a3, gp
                  nop
                  xor          t5, s6, a1
                  and          tp, s10, t0
                  nop
                  add          s8, s4, a1
                  or           s2, s10, t6
                  lui          t0, 849550
                  and          s9, a5, a1
                  srai         s8, s6, 10
                  srai         t3, s1, 0
                  slt          sp, a1, a3
                  sltu         s0, a0, a0
                  or           t6, s10, t2
                  xor          a2, ra, tp
                  slt          s9, t2, tp
                  sltiu        s0, ra, -1269
                  andi         gp, t4, 1140
                  sll          a4, zero, s9
                  srli         t4, t4, 13
                  sll          s0, a1, t4
                  srl          s7, s3, t6
                  slti         a4, zero, 197
                  sll          t0, a7, tp
                  srl          t6, a4, s8
                  sltu         tp, a1, s4
                  slt          sp, t1, tp
                  srli         ra, s5, 4
                  xori         s7, a5, -46
                  sra          sp, t4, t3
                  or           zero, s11, t3
                  slt          a4, tp, s4
                  andi         t3, zero, -37
                  addi         a5, s9, 808
                  sra          s6, a7, s6
                  sra          t4, s9, s6
                  srl          t4, a0, a6
                  or           sp, t5, a7
                  or           s2, s5, ra
                  nop
                  slti         s0, s2, 1677
                  addi         s1, a3, -1025
                  srai         s5, a3, 7
                  slti         a7, s3, -699
                  slt          t4, t2, a6
                  srai         t1, s8, 14
                  sll          a0, zero, a3
                  sltiu        a6, s6, 829
                  slli         s10, a5, 12
                  andi         ra, a7, 203
                  sltu         a6, a3, tp
                  srai         t0, t4, 5
                  slt          s8, t6, a6
                  sltu         s5, s0, zero
                  nop
                  sltu         t3, s7, a1
                  sra          a5, s9, t2
                  srli         s10, s2, 3
                  slt          s9, a2, t6
                  slti         gp, a3, 437
                  srl          a1, t2, s2
                  srli         a7, s7, 6
                  lui          s1, 690371
                  ori          a0, a2, -1695
                  sltu         a4, s0, a1
                  slti         s0, tp, 1636
                  sra          a2, tp, t0
                  lui          gp, 273111
                  xor          s10, a3, s3
                  sra          s0, tp, t5
                  andi         a0, s8, 964
                  and          s8, ra, s11
                  sll          a0, s11, s10
                  addi         s5, a4, -1834
                  srai         s6, t3, 25
                  lui          a1, 75037
                  sltiu        gp, a0, 62
                  xor          a1, a2, s4
                  ori          a4, tp, 1686
                  sll          s5, a7, s0
                  andi         s3, zero, -388
                  and          a7, s10, t3
                  addi         zero, s4, -634
                  sltiu        s8, a4, -1637
                  sll          t6, s2, s2
                  ori          t5, t1, 641
                  slti         s2, ra, 1359
                  srl          s9, s8, a2
                  auipc        t0, 128079
                  srai         t1, s6, 21
                  sltiu        ra, zero, 1342
                  slti         s2, a2, -1095
                  srl          t6, s7, a6
                  andi         tp, t0, 1654
                  andi         t1, s2, -841
                  srli         s7, t3, 31
                  add          s2, a5, s7
                  srl          t5, a0, s2
                  nop
                  lui          a3, 847406
                  sltiu        sp, s6, -1621
                  lui          s5, 308911
                  sltiu        s3, s6, -910
                  srli         t1, s7, 24
                  add          sp, t4, a5
                  sltu         a2, t3, gp
                  sll          a0, s4, t0
                  sll          s9, t4, tp
                  and          s10, s3, ra
                  lui          s6, 935376
                  xor          s9, s5, ra
                  slt          s8, s3, a7
                  sltu         s1, a2, s9
                  lui          t3, 588891
                  addi         s10, a3, 770
                  and          s9, tp, ra
                  sltu         s5, s5, s10
                  add          a5, a4, zero
                  slli         s9, s5, 25
                  lui          t5, 173974
                  srai         ra, s7, 25
                  slti         s5, s3, 1070
                  slti         a6, t6, -452
                  lui          t6, 465298
                  sub          t1, a1, t3
                  or           s6, a2, s3
                  slli         s8, s9, 8
                  sll          s9, s10, t0
                  srli         s6, sp, 9
                  addi         t0, a5, -1782
                  and          a6, s6, s7
                  sltiu        s6, s9, -975
                  slt          s0, a2, s9
                  or           s3, a1, a3
                  sub          t4, t0, t1
                  srai         t0, s10, 28
                  ori          t4, a5, -314
                  or           s7, t1, s9
                  and          gp, a2, a2
                  xori         ra, sp, 1080
                  addi         s0, s8, -530
                  add          a6, t4, s0
                  xori         s5, a1, 276
                  ori          a1, a7, -101
                  srl          s2, s10, ra
                  srli         a5, ra, 27
                  sll          t3, a6, a3
                  and          a3, s6, a7
                  and          a1, a2, s11
                  nop
                  auipc        s9, 708725
                  andi         t6, s8, 178
                  ori          sp, ra, 1586
                  lui          a3, 113159
                  addi         s9, s5, 932
                  lui          sp, 537877
                  xori         t3, tp, -530
                  ori          a5, t4, 2016
                  slli         s8, a3, 0
                  sra          s10, t6, s4
                  auipc        s8, 417995
                  nop
                  and          sp, a6, gp
                  sub          s6, s1, a7
                  xori         tp, s6, 1540
                  sub          tp, s1, s11
                  sub          t6, t5, t2
                  xor          a5, s10, a2
                  nop
                  andi         gp, s1, -1251
                  ori          s7, t0, 740
                  srli         t0, a5, 2
                  slt          s8, s6, t5
                  sll          a1, t4, t5
                  addi         t0, t5, 714
                  andi         a1, s0, 784
                  sltiu        tp, a5, 191
                  slt          t6, t3, a5
                  ori          t6, gp, -1506
                  slti         a2, s10, 972
                  xori         s10, a3, 830
                  srai         s8, s10, 10
                  slti         s5, s11, -1218
                  add          zero, t3, gp
                  sra          tp, s7, s6
                  slti         s3, a6, 440
                  nop
                  slli         a5, sp, 30
                  andi         t3, s8, -510
                  srl          a6, a7, a3
                  slti         a2, t6, -1686
                  srli         s5, s10, 15
                  slli         s3, s11, 2
                  sll          a3, zero, a4
                  andi         s7, a1, 1900
                  ori          t1, a3, 775
                  add          s1, t6, a4
                  slli         a7, a3, 6
                  and          t4, s1, t0
                  srl          a0, t2, t6
                  srli         s2, t0, 2
                  add          a4, t0, a5
                  andi         a3, a7, 1399
                  sltu         t3, a5, s10
                  andi         gp, a3, 1333
                  or           s3, t3, gp
                  slti         a6, ra, -1838
                  ori          a6, s0, -1940
                  add          sp, s10, t1
                  srli         gp, t6, 28
                  srai         t4, a4, 7
                  srai         s6, t4, 6
                  slt          zero, s5, t3
                  sltu         s10, t6, s0
                  or           a7, s0, a1
                  xor          s7, a2, t5
                  addi         t1, zero, -412
                  auipc        t3, 118031
                  lui          a7, 380169
                  slli         a4, a3, 0
                  xori         a4, t5, -1834
                  slti         ra, t6, -1154
                  or           tp, s3, s2
                  nop
                  sra          sp, s3, s9
                  addi         t1, a7, -715
                  andi         tp, s8, -137
                  sltu         s3, s2, s8
                  and          s5, t6, s0
                  sra          a4, t0, sp
                  nop
                  srli         gp, a7, 19
                  ori          s10, s4, 670
                  srl          tp, a7, t6
                  srai         s3, t1, 18
                  sltiu        zero, t0, 297
                  xori         ra, ra, -347
                  xori         t4, s6, 377
                  nop
                  xori         t6, t2, 840
                  nop
                  sra          a0, t0, s11
                  or           sp, t6, s5
                  srai         t4, t2, 12
                  slt          a6, s5, t2
                  add          zero, zero, s10
                  sra          a4, s0, s8
                  and          a1, s3, t5
                  sltiu        a4, t6, 1833
                  auipc        a2, 299470
                  nop
                  sltu         s5, s5, sp
                  slt          a0, a6, s4
                  auipc        t4, 721288
                  xori         zero, s5, 1064
                  and          a1, a3, tp
                  slti         zero, zero, 328
                  sltu         s10, a5, s6
                  add          s7, gp, s7
                  xori         s8, s3, 570
                  ori          s10, a5, -623
                  srl          t3, zero, s6
                  sltu         t4, tp, s5
                  sll          t1, tp, tp
                  sltu         a3, a6, s0
                  srl          a7, s4, t6
                  slli         s5, sp, 16
                  sltiu        s5, s1, 1070
                  sub          sp, t0, t3
                  sll          a3, a6, t4
                  andi         ra, s0, 448
                  and          a7, a2, a7
                  add          a6, ra, a4
                  sub          t4, s5, ra
                  andi         s8, s9, -26
                  srli         a4, t5, 13
                  ori          t4, a2, 2022
                  auipc        s7, 732918
                  sll          sp, a2, t5
                  slli         t5, t4, 3
                  sll          t0, ra, s3
                  slti         t4, s0, -1695
                  sra          a7, a1, t4
                  xor          a6, t4, t4
                  sll          s3, tp, s5
                  slli         zero, a2, 7
                  andi         sp, zero, 562
                  add          s5, s5, a0
                  addi         t6, s6, -919
                  andi         a3, s2, 1281
                  ori          tp, s6, 1008
                  xori         s5, s2, 956
                  xor          s2, a6, zero
                  addi         zero, a4, 1190
                  sub          t0, s4, tp
                  or           s5, a3, s5
                  sltu         t4, zero, s8
                  ori          s10, a3, 1186
                  sltiu        a5, s6, -870
                  sub          gp, t4, s6
                  nop
                  slti         a6, s3, -1589
                  sra          a2, t2, a0
                  srli         s3, ra, 31
                  addi         ra, t2, -37
                  srl          tp, s5, s10
                  or           ra, a5, t0
                  srli         a7, s11, 28
                  sra          a4, t6, a0
                  lui          s7, 730713
                  srai         a6, s3, 8
                  srai         ra, s10, 9
                  auipc        a2, 353178
                  slti         a7, s11, -803
                  slli         gp, a2, 10
                  nop
                  sra          a4, s8, s8
                  or           s1, a7, a4
                  slti         t3, a6, 134
                  or           t5, s3, a3
                  or           gp, s4, t1
                  sltiu        ra, gp, -1847
                  or           a6, a3, s9
                  xori         a4, t0, -1234
                  sll          t3, a7, sp
                  addi         a3, s6, -219
                  slli         s5, s7, 20
                  srl          a2, s1, t4
                  srl          s10, gp, sp
                  srl          a0, t4, t1
                  sra          s8, s8, a2
                  sltu         a2, s0, s7
                  lui          s0, 737004
                  xor          tp, s5, a6
                  xori         tp, sp, -1413
                  andi         t0, a0, 307
                  auipc        a5, 854926
                  sub          s8, sp, tp
                  sll          zero, a4, t1
                  srai         t5, ra, 4
                  add          a2, ra, t0
                  srai         s1, t2, 2
                  and          t0, s10, s5
                  addi         s8, s3, 344
                  sltiu        s2, a5, 1370
                  add          t6, a6, s11
                  auipc        sp, 285570
                  andi         t0, a1, 747
                  sra          s7, s2, tp
                  lui          zero, 644251
                  srl          s1, t0, ra
                  srl          t1, a3, s6
                  sll          s2, a5, a4
                  slti         t1, t1, 14
                  sub          t4, s4, a4
                  xori         a3, a7, -1055
                  slli         s7, s0, 4
                  xor          gp, s11, s0
                  xori         t3, s5, -1306
                  sltiu        a4, zero, -592
                  nop
                  and          zero, s6, s3
                  ori          s3, t1, -1121
                  add          a6, s1, zero
                  sltiu        s3, t2, 1312
                  xori         sp, s1, 85
                  srli         ra, gp, 27
                  addi         s1, ra, 1368
                  sub          s10, ra, t3
                  srai         a1, s0, 22
                  sltu         gp, s9, t3
                  slti         gp, ra, 1718
                  slli         s8, s0, 7
                  ori          s6, s9, -1609
                  sll          sp, a6, ra
                  andi         a7, t2, 1776
                  sub          ra, s6, a5
                  xor          s0, gp, s10
                  nop
                  xor          ra, ra, tp
                  xor          ra, a5, a0
                  or           s10, a7, t0
                  and          t4, gp, t5
                  xori         a0, s4, 1686
                  add          t4, a5, a0
                  xori         sp, s10, 247
                  or           s7, t2, t1
                  sll          a3, a2, a7
                  sltiu        a7, t2, 328
                  add          zero, t6, t1
                  nop
                  slt          s3, s10, a7
                  add          s2, ra, s0
                  auipc        a7, 176577
                  srai         t3, a0, 26
                  sltiu        zero, s4, -496
                  auipc        t5, 743084
                  srai         s8, s6, 2
                  andi         s7, t6, -284
                  srai         a1, a3, 5
                  sltiu        s5, a7, 1062
                  auipc        tp, 231563
                  nop
                  addi         t6, s5, -781
                  sub          s3, s11, s11
                  slt          gp, a1, s9
                  sltiu        t1, t3, -1837
                  sub          s9, a1, t2
                  slti         ra, t2, -1117
                  srli         s3, s6, 20
                  lui          a6, 850932
                  slt          a2, gp, gp
                  ori          a5, a7, -1048
                  nop
                  srai         t6, a2, 31
                  sub          gp, s10, t5
                  sra          s7, t3, s2
                  slt          a5, s4, a0
                  sra          a3, a3, a4
                  xor          s5, t3, s2
                  srai         a6, t2, 20
                  add          ra, s8, t1
                  sub          a2, ra, tp
                  ori          s2, t0, 557
                  slli         a0, a1, 20
                  sra          s8, s2, s9
                  slt          s3, t6, tp
                  sltu         t3, t1, a7
                  xor          a5, t3, t2
                  srai         a1, t4, 3
                  sra          s7, s1, a2
                  sll          sp, zero, a6
                  srai         s1, a4, 28
                  auipc        s5, 123659
                  addi         t6, s6, -1404
                  srl          t0, t2, s11
                  ori          a5, a6, -757
                  andi         a7, t6, 1847
                  sltu         t0, s9, t5
                  or           zero, s5, sp
                  xori         t5, s10, 1719
                  ori          s10, t6, 1484
                  sll          a5, a4, s1
                  slt          tp, t4, t0
                  auipc        s0, 312454
                  slli         a7, a5, 10
                  srai         a2, a4, 2
                  srli         t0, s9, 31
                  add          a6, a0, t5
                  xor          s2, t2, t5
                  srai         a6, s4, 4
                  srai         s7, zero, 7
                  andi         a4, s6, -309
                  srl          s2, s0, t2
                  ori          a5, s9, -2035
                  or           a1, t3, a1
                  auipc        a3, 861765
                  xor          a3, sp, s3
                  add          s5, s2, a1
                  srl          a7, gp, s7
                  or           zero, t4, a3
                  and          s5, a4, a6
                  slti         ra, s8, 1809
                  slt          a4, a1, s6
                  sra          s6, a6, a6
                  slti         s7, s1, -1323
                  addi         t5, t0, 62
                  auipc        tp, 679829
                  sltu         a6, s2, s0
                  or           t6, t6, a4
                  sll          s7, t4, tp
                  slli         t0, s3, 3
                  slt          a2, s7, gp
                  andi         s3, ra, -1962
                  and          tp, sp, gp
                  sltiu        s1, t0, 1244
                  xori         s0, tp, -1505
                  or           a6, s4, gp
                  srl          a2, s4, sp
                  slt          t1, s5, a6
                  xori         t5, s2, -522
                  xori         s1, t1, -1299
                  slt          t5, a6, a3
                  ori          s2, s8, 749
                  lui          a7, 700002
                  slti         t1, a3, 112
                  sra          s5, s6, a2
                  srl          s5, s1, s5
                  sll          t0, s3, s7
                  and          a4, gp, gp
                  slti         s0, a2, 1702
                  slt          t4, s10, s2
                  sltu         t1, a5, s2
                  xori         sp, sp, -1034
                  addi         t0, a6, 174
                  srli         s2, s10, 12
                  and          s6, a2, a1
                  srai         s7, t5, 15
                  srl          s9, a1, a0
                  sltu         s10, s1, a4
                  sra          t0, s8, s4
                  sra          zero, t1, zero
                  lui          a4, 283167
                  auipc        gp, 756031
                  andi         sp, t6, 1668
                  slli         a7, sp, 27
                  slti         s2, s5, 776
                  sll          s1, s8, s7
                  sltu         t1, s3, a1
                  add          s5, a0, t0
                  sltu         t1, s2, a2
                  slti         sp, s3, 1820
                  sub          gp, a1, t3
                  xor          s6, t1, t5
                  xori         s0, s0, 451
                  xor          s7, s9, sp
                  ori          a5, sp, -240
                  srai         s7, s8, 10
                  sltiu        a1, sp, 312
                  ori          t5, s8, 65
                  and          a1, sp, s0
                  add          t6, s11, s9
                  slt          t5, s1, a5
                  slti         sp, s3, 1764
                  or           sp, ra, s3
                  srli         a6, s0, 18
                  and          ra, t6, s5
                  add          t0, a2, s2
                  auipc        t0, 731549
                  andi         a2, a2, -957
                  and          s1, s10, a5
                  xori         sp, tp, -867
                  add          a1, ra, t5
                  or           s0, t3, s0
                  auipc        s7, 810666
                  srai         a6, t4, 2
                  lui          s0, 459814
                  and          s0, t6, t0
                  srai         s5, zero, 17
                  addi         t4, s5, -1206
                  srl          t1, t0, t6
                  slti         s2, s4, -1413
                  srl          s1, a7, a1
                  sll          ra, t2, s5
                  andi         a7, t1, -1400
                  sltiu        a1, s0, 557
                  sll          s1, s7, s3
                  srli         gp, s1, 19
                  and          a1, a3, s9
                  sra          s0, t3, t3
                  addi         s3, zero, -78
                  slli         t5, s6, 9
                  sltiu        a7, t1, 1873
                  srai         t4, a3, 17
                  sltu         s10, s7, gp
                  slt          t1, a2, a5
                  andi         zero, ra, -1191
                  xori         s3, s5, -431
                  sll          s0, s1, s9
                  xor          s2, a7, gp
                  sltu         a2, a2, tp
                  and          zero, sp, s3
                  lui          s10, 693346
                  and          s8, gp, s5
                  sltiu        t5, a7, -1343
                  sll          s1, a2, zero
                  addi         s9, s5, -1622
                  xori         tp, a4, -1590
                  sltu         tp, a6, tp
                  addi         s9, s0, 1675
                  srli         s3, t6, 3
                  xor          s0, a2, s0
                  slt          a0, s10, t3
                  auipc        s6, 804001
                  sra          a4, s0, t6
                  and          s3, s7, t5
                  srai         a1, s9, 12
                  ori          t4, t1, -1822
                  slli         gp, s7, 30
                  slti         t6, a1, 268
                  or           s10, t2, a0
                  slli         t0, a1, 25
                  sra          s10, a0, s10
                  auipc        a3, 524803
                  ori          t5, a6, 521
                  sll          a4, t5, t0
                  slli         a2, t2, 30
                  sra          a7, a2, tp
                  srl          t6, tp, ra
                  nop
                  slti         a2, a1, 798
                  xori         a6, tp, 842
                  sub          zero, t0, s8
                  or           zero, a5, s6
                  sll          s8, t6, s0
                  auipc        t1, 927134
                  slti         a5, t1, -1235
                  xor          s1, s11, a4
                  ori          tp, tp, 538
                  auipc        t1, 8991
                  andi         a4, s5, -1571
                  slt          a3, s8, s1
                  slli         ra, a0, 26
                  sltu         s8, s4, a6
                  andi         s8, a7, 1133
                  and          s1, t5, s6
                  or           zero, s4, s3
                  addi         s2, t0, -590
                  addi         a7, t0, -278
                  sra          t3, a4, t5
                  sra          zero, s2, a3
                  addi         sp, s4, -823
                  ori          s8, s10, -242
                  srai         a5, t1, 29
                  auipc        a6, 638535
                  addi         s8, s7, 1089
                  lui          a2, 898606
                  srl          a2, s10, s11
                  auipc        t1, 261160
                  nop
                  xori         s5, gp, -881
                  add          s10, t2, s3
                  or           s10, s3, s3
                  slli         tp, s9, 30
                  sll          a1, ra, gp
                  ori          a1, sp, -106
                  sub          s3, s6, a0
                  xori         t5, s10, -1731
                  or           s2, t1, a4
                  slti         s3, a2, 119
                  ori          zero, s11, 1736
                  lui          s6, 413338
                  nop
                  sltu         s10, s7, t1
                  sub          s9, s5, sp
                  slt          ra, s11, s7
                  ori          a6, s1, 1734
                  auipc        t5, 398019
                  sra          a7, t6, s4
                  xori         s5, s2, -617
                  add          t0, s4, s10
                  add          zero, a0, a0
                  slt          tp, s5, sp
                  auipc        t6, 392824
                  srl          s0, s10, s3
                  sra          sp, t5, s6
                  srai         t6, a2, 25
                  andi         t1, s8, 1570
                  add          s5, a7, s8
                  slti         s6, a3, -1372
                  nop
                  slli         t5, s7, 27
                  andi         s7, t1, -1418
                  lui          s1, 628026
                  sltiu        t4, t0, -1615
                  sub          a2, zero, zero
                  sltiu        s0, s8, 1437
                  xori         a7, a3, -167
                  xori         a0, a1, -1074
                  srl          s1, t4, a2
                  sltu         a4, t0, s9
                  sub          zero, sp, a3
                  auipc        a1, 855320
                  auipc        zero, 290614
                  sra          sp, gp, a7
                  and          sp, s6, sp
                  sltiu        s10, a4, -519
                  srai         a2, a1, 14
                  auipc        gp, 474508
                  slti         a7, a3, -1507
                  nop
                  sltiu        s1, t6, 667
                  sll          s5, t5, ra
                  and          gp, a1, s6
                  slli         s6, t1, 17
                  slli         zero, t3, 10
                  or           t1, a1, t4
                  sll          tp, a4, a4
                  slti         s9, s9, -232
                  srli         a1, gp, 31
                  sll          s3, s0, s9
                  sll          sp, a4, ra
                  lui          t3, 805863
                  slt          a0, a4, s7
                  xori         a4, a5, -1103
                  slti         gp, a1, -1008
                  add          t4, t1, tp
                  xori         zero, t0, 1512
                  srai         gp, a2, 15
                  nop
                  andi         ra, s4, -893
                  xor          t3, a4, a0
                  lui          s7, 357595
                  and          a3, a6, t0
                  ori          t6, a6, 861
                  and          t1, s3, t2
                  srli         zero, t4, 31
                  andi         a4, s0, -2002
                  and          a5, s2, a2
                  sltu         a1, a0, t5
                  lui          t0, 819053
                  sltiu        a5, t3, -1413
                  slt          s8, t2, t4
                  slt          a3, s11, s0
                  and          gp, a7, s3
                  srl          a2, t4, s8
                  xor          s6, s7, t6
                  addi         tp, s7, 1158
                  and          s0, s5, t1
                  auipc        sp, 835441
                  ori          s7, a0, -1068
                  sltu         tp, a5, a0
                  nop
                  slli         t4, s9, 19
                  srl          gp, a4, s10
                  ori          ra, s2, 1972
                  sll          t1, gp, ra
                  slti         s2, s8, -15
                  srai         zero, a5, 1
                  slli         s7, s6, 27
                  slti         t0, s9, -1382
                  srai         s6, a5, 20
                  nop
                  or           t4, ra, s2
                  sll          a4, s0, s3
                  andi         a2, a2, -535
                  andi         s5, t6, 121
                  sll          a1, zero, s5
                  addi         a5, s10, 1979
                  add          a2, s2, s9
                  sltu         a1, s5, s8
                  sra          t1, a3, t4
                  slt          s8, a2, s1
                  slti         zero, s2, -1136
                  xor          a3, zero, a1
                  nop
                  xor          s5, s3, gp
                  auipc        a3, 816468
                  srli         a3, t2, 4
                  ori          a1, t5, -944
                  addi         a1, zero, 1591
                  lui          s10, 1030096
                  or           a3, sp, s8
                  srai         ra, s2, 3
                  addi         a4, t5, 904
                  sub          t0, s3, t6
                  addi         t5, s10, -1097
                  slli         a6, t1, 18
                  and          a0, a4, a5
                  or           a6, s5, s6
                  nop
                  or           t4, a4, s5
                  or           zero, zero, s4
                  ori          a0, a4, 989
                  lui          s5, 476822
                  sra          zero, t3, s4
                  srai         zero, a7, 8
                  sltu         s6, t5, a3
                  xor          t0, t2, gp
                  sll          a2, t3, s10
                  nop
                  addi         s3, a7, 1046
                  slt          gp, a3, a3
                  andi         s7, tp, -1470
                  slt          t4, tp, a7
                  srai         gp, a6, 16
                  srai         s9, s1, 14
                  nop
                  sltiu        gp, s7, 893
                  sra          t0, t5, a1
                  sll          t0, s4, a0
                  sltiu        t5, s5, 1889
                  nop
                  slli         t4, s10, 19
                  sltiu        a7, a2, -239
                  sll          a1, gp, a7
                  srai         t1, s10, 23
                  and          s6, s8, t0
                  add          gp, a5, a2
                  srli         t4, s8, 19
                  srl          s7, s8, a2
                  ori          a6, gp, 312
                  xori         s3, a2, -215
                  sltiu        a6, t4, -1594
                  srli         t1, t3, 13
                  sra          s1, t5, t1
                  slli         s3, a0, 25
                  srli         a2, a4, 23
                  srl          s2, a5, t5
                  sra          ra, s11, s3
                  sltiu        ra, a2, 1523
                  ori          s0, a4, 1761
                  or           s6, t2, t1
                  or           a5, t1, a1
                  sltu         s5, ra, t6
                  and          a3, t3, s1
                  nop
                  or           a7, t4, a5
                  nop
                  xori         t5, s1, 1607
                  slti         a3, sp, -96
                  sub          s0, s2, s4
                  srai         gp, tp, 28
                  sltu         s8, a4, s2
                  slt          t6, t5, s5
                  ori          zero, s5, 658
                  or           s8, tp, s5
                  sltu         a4, s3, t6
                  lui          a3, 161876
                  xori         s9, t3, 535
                  addi         t0, ra, -189
                  xori         s10, s7, 188
                  slt          a4, a6, ra
                  sltu         s3, s6, s1
                  xor          s9, gp, s7
                  lui          gp, 120122
                  ori          ra, zero, -1876
                  srli         a1, s1, 2
                  add          s7, t1, s1
                  sra          s2, t4, s6
                  srai         s10, t3, 25
                  srl          s0, t5, s11
                  add          a7, s0, s5
                  sltiu        s9, s2, -1448
                  sub          a6, zero, s8
                  slt          t5, a7, sp
                  slti         s2, s8, 1669
                  srli         t0, t2, 12
                  nop
                  or           s5, s2, t0
                  nop
                  sra          ra, s0, s9
                  sll          gp, s6, a1
                  slli         s5, a1, 9
                  lui          s7, 624627
                  add          t4, t4, s7
                  sltiu        zero, zero, 1309
                  ori          a5, sp, 910
                  sltiu        t5, a4, 637
                  srl          a7, s7, s0
                  auipc        s1, 732871
                  slt          sp, a7, s10
                  andi         a4, a2, 6
                  srl          s1, a0, s4
                  xor          s10, a3, t0
                  sra          s0, t5, a7
                  srli         t0, s7, 25
                  sltu         ra, t0, t4
                  slt          t0, t6, t3
                  xori         ra, s11, -1105
                  srl          t4, s8, s4
                  xor          s7, t4, s6
                  sra          sp, sp, tp
                  slt          a0, s9, s2
                  sll          a3, s10, zero
                  addi         s7, s3, 247
                  nop
                  srai         s8, s4, 12
                  sra          t5, a3, a5
                  lui          t4, 292085
                  ori          a0, s6, -177
                  srli         s7, a0, 5
                  xori         a7, sp, 1206
                  and          t5, t1, sp
                  slli         s10, a4, 27
                  xori         s9, t6, -227
                  sltu         gp, s2, a4
                  sltiu        s6, zero, 885
                  xor          s1, s11, s10
                  ori          a0, s11, 848
                  or           sp, t1, a4
                  ori          s3, a4, 1727
                  nop
                  andi         tp, s11, 1803
                  slti         t6, s8, -578
                  or           s2, a4, s2
                  srl          s10, t5, s9
                  addi         a7, a6, -1831
                  xori         a7, zero, 562
                  add          s5, t3, t3
                  ori          a0, s2, 689
                  sltu         t0, t1, s9
                  slti         s1, s0, -1854
                  srli         a7, a4, 24
                  sltiu        s1, t6, 888
                  slt          sp, s11, tp
                  sra          zero, s4, a6
                  ori          a6, sp, 695
                  and          a7, a7, a3
                  xori         s2, s10, -341
                  sltiu        a2, tp, 38
                  ori          s6, a1, 757
                  addi         t1, s11, 559
                  ori          gp, s10, 1740
                  nop
                  addi         a7, a0, 595
                  nop
                  sra          sp, t1, a7
                  slti         s2, a7, -1531
                  slli         s0, s6, 15
                  and          a4, a4, t2
                  sub          s9, s5, tp
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           a2, 0xffffffff
                  li           t0, 0xffffffff
                  li           a6, 0x80000000
                  li           s10, 0x80000000
                  li           s0, 0x49a9a8e6
                  li           s2, 0xc364c1b7
                  li           s9, 0x80000000
                  li           a3, 0xffffffff
                  li           sp, 0x0
                  auipc        s9, 103388
                  lui          a2, 326385
                  auipc        t0, 927462
                  lui          t0, 994567
                  sub          sp, a3, a6
                  lui          t0, 169783
                  nop
                  add          sp, a6, s0
                  nop
                  lui          a2, 673792
                  add          sp, s2, a2
                  addi         a2, s9, -2037
                  lui          sp, 834047
                  sub          s9, a4, s9
                  auipc        s9, 129172
                  lui          s9, 1023087
                  add          s10, a4, a2
                  sub          sp, a2, sp
                  addi         a2, a4, 733
                  add          a4, a6, a2 #end riscv_int_numeric_corner_stream_11
                  lui          s6, 132962
                  srl          ra, a2, s5
                  slt          a7, zero, ra
                  ori          s1, a7, -2046
                  srli         sp, a7, 30
                  add          s5, zero, a5
                  andi         sp, s10, 1716
                  andi         t5, s10, -730
                  sub          s1, s8, t0
                  or           t4, s0, t1
                  slti         a6, s6, 1197
                  srai         a6, a1, 3
                  slti         t1, t0, -615
                  sltiu        a2, t1, -248
                  sltu         s5, a1, ra
                  lui          a0, 928706
                  sra          t0, s9, s11
                  andi         t0, s0, 1915
                  srl          a7, s1, a6
                  srai         a7, a3, 22
                  srli         a4, a0, 24
                  sra          t0, a7, a6
                  or           a5, s10, t0
                  andi         a3, t1, -673
                  srai         s6, s1, 9
                  slti         a5, ra, -252
                  sltiu        s0, s5, 1960
                  xor          ra, a3, t2
                  sll          s3, a1, a3
                  or           a0, s10, a5
                  srai         t1, s0, 15
                  auipc        s0, 682864
                  sra          s1, s1, a7
                  xor          tp, s1, tp
                  slli         s7, s0, 16
                  slli         a5, a5, 7
                  ori          t3, s0, 955
                  srai         t5, t0, 28
                  and          t3, t1, s4
                  slli         s6, t4, 30
                  and          s0, zero, a0
                  xori         sp, a0, 804
                  sltiu        a7, a6, -1167
                  sll          s6, t3, t5
                  srli         s10, t0, 21
                  auipc        zero, 34794
                  slti         s8, s3, -295
                  lui          ra, 484114
                  ori          s0, sp, 1254
                  xori         a1, a4, 1301
                  slti         ra, t1, -525
                  or           a1, t1, a2
                  or           a4, s10, s9
                  lui          zero, 296209
                  sltiu        a5, s10, 253
                  xori         gp, s6, 1939
                  ori          s1, s6, 927
                  andi         tp, s3, -1410
                  sltiu        t6, s1, -542
                  sub          s1, s10, s7
                  xor          tp, s6, s0
                  srl          a3, t0, a5
                  xor          gp, s3, t5
                  and          a6, s11, s10
                  or           t1, a1, s9
                  andi         s7, gp, -1117
                  sltu         zero, a0, zero
                  sub          a0, t6, t6
                  or           zero, a6, s7
                  slti         gp, s7, -1779
                  nop
                  addi         s5, a1, -121
                  srl          a0, a1, a6
                  ori          ra, t3, -1377
                  srli         s7, s11, 9
                  srai         s9, a1, 15
                  nop
                  srli         a0, a3, 16
                  slti         t3, s4, 260
                  lui          tp, 296431
                  auipc        a0, 119082
                  xor          s5, s10, s10
                  ori          t5, s1, 581
                  xor          s8, tp, t1
                  sra          tp, a3, gp
                  slt          a5, t4, a6
                  srai         a2, a0, 0
                  sra          gp, zero, t5
                  sll          t0, t6, s5
                  sub          t0, s7, s0
                  nop
                  addi         s6, a5, 515
                  nop
                  xor          s2, tp, t2
                  auipc        a6, 890183
                  sltiu        s8, t3, 36
                  sltu         t4, t5, sp
                  slt          s6, t5, s0
                  sltiu        s6, s4, 992
                  slli         t5, a6, 0
                  srli         a4, s4, 1
                  srli         s5, s6, 3
                  andi         s3, s10, -1486
                  sra          s6, zero, a4
                  sltiu        s9, gp, 671
                  srai         s3, s1, 23
                  slt          t6, s9, zero
                  srai         s0, ra, 27
                  ori          t3, s8, 701
                  or           a6, t2, gp
                  xori         ra, ra, 435
                  slti         s0, a5, -382
                  sltiu        s5, s11, 1771
                  sra          t6, sp, s0
                  sra          s2, s2, ra
                  slti         s1, a4, 1610
                  xori         s7, t1, 447
                  ori          a0, tp, 175
                  sra          t1, tp, sp
                  sll          tp, a1, gp
                  srl          t4, s2, s7
                  and          s5, s7, gp
                  srli         zero, a5, 26
                  srai         a6, a5, 18
                  xor          t4, t2, gp
                  and          t3, a6, s3
                  nop
                  nop
                  srai         a3, s2, 20
                  andi         a2, s10, 1327
                  lui          s9, 711276
                  slli         t5, s5, 25
                  andi         s1, s8, 1684
                  slt          a7, s2, s8
                  addi         a3, s11, 669
                  sra          s5, sp, t3
                  lui          s7, 42925
                  andi         a7, s2, 978
                  lui          s3, 191910
                  sub          a7, s11, sp
                  srl          s1, a0, ra
                  sltu         t3, a4, s8
                  addi         a3, t5, 524
                  andi         a7, s4, 104
                  slli         a7, s9, 30
                  nop
                  xor          t3, t5, a6
                  addi         t4, s10, 1635
                  xori         s10, s1, -1269
                  srai         a5, a5, 12
                  add          s0, zero, sp
                  sltu         a0, a7, s3
                  xori         s10, a0, 459
                  add          a2, a2, a2
                  sub          t0, t4, s8
                  ori          s10, s9, -296
                  ori          s3, t5, 1712
                  sll          s1, sp, s5
                  auipc        s3, 416505
                  xori         s2, t0, 1521
                  ori          s8, s8, 195
                  andi         t0, s5, 959
                  sra          a1, s9, s2
                  and          a7, a5, s7
                  sra          a0, a7, a4
                  sltiu        zero, s9, -924
                  slt          a5, s10, a2
                  andi         t4, a1, 1165
                  xori         t3, zero, 1456
                  lui          s5, 330295
                  sra          zero, s10, a5
                  add          a1, a2, s10
                  slli         t5, a0, 27
                  srli         a3, a2, 22
                  ori          s0, sp, -1681
                  nop
                  srai         tp, s0, 16
                  and          s2, s7, a7
                  ori          s7, s6, 1293
                  or           t4, tp, t5
                  auipc        a4, 669887
                  or           zero, s11, t3
                  xor          a7, s0, s3
                  srli         s3, a7, 11
                  or           t3, s0, t2
                  ori          a6, tp, -1738
                  slti         t4, t4, -156
                  slti         s9, s10, 338
                  andi         s2, zero, 37
                  slli         ra, t4, 29
                  ori          s0, a3, -607
                  sltiu        t3, zero, -1629
                  xori         a2, s2, 1764
                  and          t0, s8, s11
                  sltu         a3, a5, s2
                  xori         s9, t4, 400
                  addi         a7, sp, 1932
                  and          a5, a1, a0
                  srl          a2, a3, s6
                  sltiu        t5, s8, -1508
                  sub          ra, sp, t5
                  sltu         s10, s0, s7
                  andi         a1, a0, 130
                  add          a1, tp, t4
                  srai         a4, t1, 14
                  slli         t5, a6, 0
                  nop
                  srl          a1, t2, s9
                  srl          t5, s3, sp
                  slti         sp, s10, -1589
                  sra          sp, t6, a5
                  slt          gp, a5, a0
                  andi         s3, s0, -1227
                  ori          a1, s8, 1080
                  nop
                  ori          s1, t5, -950
                  andi         t0, gp, -724
                  nop
                  andi         s3, tp, 537
                  auipc        s0, 519857
                  srl          s6, a7, sp
                  sra          s6, s4, s10
                  auipc        a6, 99467
                  slli         s8, s7, 27
                  slli         s0, sp, 23
                  auipc        s10, 616824
                  srl          t6, gp, t6
                  srai         s3, s9, 13
                  slt          s0, t1, s8
                  slti         a2, a3, -1612
                  ori          a2, ra, 832
                  xor          s2, ra, a0
                  lui          ra, 477648
                  slt          s3, gp, s3
                  sra          ra, s6, s11
                  auipc        s10, 1040851
                  srai         a0, s6, 7
                  sltu         s2, s2, t2
                  sll          t3, t6, gp
                  andi         a0, a2, 1311
                  xori         s2, s0, 942
                  xor          a5, s2, t5
                  andi         sp, gp, 1005
                  xori         t3, t5, -1806
                  srl          sp, s3, a3
                  lui          s10, 588045
                  slt          s1, a7, a5
                  sltiu        s2, t6, -1559
                  xor          sp, s11, a0
                  addi         a5, a5, 1622
                  srl          s8, tp, a5
                  or           t4, s3, s11
                  addi         a1, sp, -1653
                  xori         zero, s10, 86
                  nop
                  auipc        a4, 589760
                  slt          s6, a2, a4
                  auipc        t6, 819523
                  srai         t4, a1, 21
                  ori          t4, zero, -387
                  xori         a5, a2, -1072
                  srli         a5, a5, 8
                  sll          s1, a5, s6
                  sltiu        a7, s4, -1643
                  and          zero, s0, s6
                  nop
                  slli         s5, s8, 12
                  sra          s7, a3, a2
                  sll          t3, a4, s5
                  xor          sp, t4, t0
                  and          t3, s9, t5
                  ori          a2, gp, -283
                  ori          zero, a6, -1433
                  sra          t5, a5, s11
                  srli         t0, sp, 30
                  slti         s5, s9, 1762
                  slt          s5, gp, a3
                  srli         t5, t5, 29
                  auipc        s1, 717833
                  sub          t5, zero, a1
                  lui          s8, 610351
                  nop
                  slti         a3, s5, 1128
                  slti         ra, a3, -1094
                  xor          s1, a5, a6
                  sltu         gp, t6, s7
                  or           a3, s2, s10
                  sltu         s7, a7, sp
                  addi         a2, s5, -726
                  sra          a2, t3, zero
                  srli         t0, a0, 18
                  xor          s5, s8, t1
                  lui          s3, 642462
                  nop
                  and          a6, a2, a1
                  slti         a1, gp, 891
                  lui          a5, 866115
                  slti         s7, s0, -329
                  add          t4, gp, t1
                  nop
                  sub          s5, a6, sp
                  srl          s7, s5, a5
                  sltiu        t5, t2, -1527
                  xori         gp, s10, -1024
                  and          s10, a5, s2
                  and          a6, s1, t3
                  sub          sp, a3, a1
                  slt          t6, t3, s5
                  sll          a2, s3, a3
                  nop
                  add          gp, s8, s6
                  slli         a3, s6, 5
                  addi         a4, t2, -1492
                  srai         s10, a1, 10
                  sub          gp, s11, s5
                  srai         a3, t4, 8
                  and          a1, t0, a7
                  sra          s9, a5, t2
                  andi         a5, s9, 689
                  slt          a2, a3, t0
                  srli         a2, a7, 2
                  sra          zero, s7, s3
                  sltu         a7, s7, s8
                  slt          t6, s1, s2
                  and          ra, tp, t1
                  xor          s10, gp, s7
                  srli         s1, a1, 13
                  slti         a6, a4, -922
                  lui          a0, 57185
                  srai         t1, a5, 9
                  slti         zero, a3, 1187
                  add          a3, s5, s3
                  slti         a4, t2, 1912
                  sra          t3, t6, s10
                  sra          s6, s7, s0
                  slt          t4, tp, gp
                  slti         s6, s4, 772
                  sltiu        zero, s11, 173
                  andi         a0, s5, 477
                  sll          t3, s3, s1
                  nop
                  ori          t6, s10, -1812
                  and          zero, s1, zero
                  auipc        sp, 86521
                  slt          s5, t4, s5
                  srli         s6, a0, 21
                  ori          t1, s2, -1480
                  sub          a1, a7, a1
                  sll          s6, t5, t3
                  addi         s1, a6, -1005
                  srli         s8, s8, 20
                  ori          a6, s2, -1493
                  add          t5, s3, tp
                  slli         s2, t2, 16
                  slli         s8, a6, 21
                  and          a2, s5, t1
                  addi         a2, t3, 2032
                  andi         sp, t6, -243
                  srl          s2, s11, t3
                  slti         t0, t2, 663
                  or           t6, a0, s4
                  or           s6, a0, a5
                  slti         a7, a7, 1437
                  sub          a6, s11, s3
                  xori         t6, t4, -196
                  slt          t3, s10, t4
                  sll          gp, s0, s0
                  or           s5, s3, t3
                  srai         a3, a1, 6
                  auipc        a4, 1026752
                  add          t6, s1, a7
                  srai         sp, t2, 21
                  add          tp, a5, a5
                  srai         t0, sp, 25
                  sub          s0, zero, s1
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000
                  li           a2, 0x80000000
                  li           tp, 0xffffffff
                  li           a7, 0x0
                  li           gp, 0x0
                  li           a1, 0x0
                  li           a5, 0x80000000
                  li           sp, 0x80000000
                  li           s6, 0xffffffff
                  sub          a2, s6, a1
                  nop
                  add          a7, a1, a5
                  addi         sp, a7, -639
                  addi         a2, s6, -1069
                  sub          a5, tp, s6
                  lui          s6, 959403
                  auipc        a1, 923247
                  nop
                  add          tp, tp, a6
                  nop
                  auipc        a7, 14155
                  sub          tp, a7, sp
                  sub          sp, a7, gp
                  auipc        tp, 594039
                  lui          a5, 862973
                  nop
                  add          a1, a1, a6
                  sub          sp, s6, t6
                  lui          sp, 536504
                  add          a1, a5, sp
                  auipc        a5, 359585
                  auipc        a2, 67390
                  sub          a6, a1, s6
                  addi         sp, s6, 1724
                  add          a2, a5, gp
                  nop
                  add          t6, a7, sp
                  sub          tp, s6, a6 #end riscv_int_numeric_corner_stream_14
                  slt          a5, t4, zero
                  xor          a4, a1, a0
                  slt          t0, t0, s4
                  ori          a7, t0, 98
                  slt          a1, s3, s3
                  and          s9, s8, a6
                  sltiu        a6, a7, -551
                  add          a6, a3, zero
                  slti         s7, ra, 1368
                  xori         t0, t1, -1864
                  srai         s1, t2, 29
                  slt          s10, t4, a0
                  slt          a0, sp, a6
                  or           s0, zero, s5
                  slli         s3, a2, 20
                  slti         gp, s10, 2027
                  auipc        t3, 493407
                  sltu         s9, s2, a6
                  lui          a5, 491916
                  srli         gp, gp, 27
                  ori          s5, a2, -1857
                  sltiu        t0, s3, -1455
                  add          a2, s7, gp
                  or           t1, a7, s3
                  add          s8, ra, a0
                  xor          s1, tp, ra
                  lui          ra, 174754
                  xori         a5, a7, 878
                  ori          a4, s9, 534
                  and          s8, s0, s1
                  slti         gp, s10, 298
                  xor          s8, a5, gp
                  ori          s1, t0, 111
                  srai         ra, t2, 7
                  srli         s1, t4, 22
                  sltu         s9, s11, gp
                  srai         zero, s9, 27
                  sll          s8, s5, ra
                  srl          s7, gp, t1
                  nop
                  srai         s0, a5, 4
                  andi         a5, a4, 405
                  lui          zero, 183266
                  ori          s5, s3, 692
                  add          a7, s5, t3
                  sll          zero, s8, a6
                  sltiu        gp, a1, 1750
                  xor          s10, s1, a4
                  slli         a7, a7, 12
                  sll          s10, a5, s3
                  and          s8, a0, a0
                  nop
                  nop
                  slt          s1, a5, t0
                  srl          a2, t2, s5
                  slti         s3, s5, -2043
                  add          t5, s5, a3
                  and          zero, gp, t6
                  add          a0, s6, s5
                  srai         a5, s1, 6
                  slli         s1, a5, 3
                  xori         t1, a6, 559
                  sltiu        tp, a5, -1723
                  sll          a6, sp, s0
                  slti         a6, s9, 798
                  slli         t5, a1, 6
                  slt          s7, zero, s2
                  sltu         t3, t5, s10
                  srl          a3, a7, t2
                  sll          a3, a3, a3
                  addi         a1, s0, 1998
                  sltu         ra, gp, s8
                  srli         a1, tp, 23
                  slli         s1, ra, 21
                  add          gp, a0, s11
                  sub          a2, t6, s7
                  ori          a6, a1, 1525
                  sll          s2, a6, ra
                  slti         a6, a7, -206
                  lui          a0, 187819
                  sub          s10, s3, s3
                  sra          a0, a6, s4
                  or           a1, s9, a1
                  and          s2, sp, a2
                  sltiu        s2, t6, 1282
                  lui          sp, 955743
                  sltu         a4, t5, s4
                  srl          a5, a3, a3
                  or           s0, t2, t4
                  slti         a6, s3, 1927
                  or           a7, a7, zero
                  sub          a3, t3, t5
                  andi         s0, a7, 1128
                  andi         s2, a3, 1142
                  srai         s7, a0, 22
                  sra          s5, s4, s9
                  nop
                  sra          s1, s0, a7
                  nop
                  addi         a1, sp, 710
                  slt          t6, a0, t4
                  srli         t3, a2, 15
                  add          a3, s5, a7
                  auipc        a1, 543834
                  lui          s6, 25060
                  xor          a1, tp, s1
                  slti         gp, a0, 979
                  srl          s3, gp, a2
                  xor          t6, a4, gp
                  sll          s3, t5, s3
                  srl          s10, t5, sp
                  auipc        s5, 732306
                  ori          s10, sp, 606
                  xori         a4, t0, -971
                  andi         a0, a2, 1805
                  srai         t0, s11, 24
                  addi         a0, a0, 2022
                  and          a2, tp, s1
                  sra          t1, a5, a3
                  sra          s6, gp, s0
                  xori         a4, a4, -1005
                  slli         t1, s3, 20
                  sltu         t0, t5, s9
                  srl          s9, s10, s10
                  xori         s8, s7, 1676
                  sltiu        a1, s10, -1659
                  nop
                  add          s0, s9, s11
                  srli         s1, ra, 21
                  sll          gp, t1, gp
                  xor          s6, s11, s11
                  sra          tp, t6, a7
                  or           t1, s1, t0
                  lui          s6, 64826
                  slt          ra, s11, t0
                  slti         a2, t1, -1770
                  xori         t5, s2, 33
                  add          s3, s2, s2
                  srli         s3, a6, 18
                  addi         a2, t2, 790
                  sll          a1, gp, a1
                  nop
                  addi         t6, tp, -821
                  addi         zero, a0, 1812
                  srai         a7, a4, 16
                  slt          tp, s10, s8
                  srai         a6, ra, 27
                  slli         gp, a4, 16
                  sll          a2, s0, a1
                  nop
                  slt          a6, zero, a7
                  slt          s9, s8, a5
                  ori          s8, s8, -213
                  nop
                  slt          a3, s8, s7
                  srl          s5, gp, a3
                  lui          a7, 179978
                  slti         ra, gp, -105
                  addi         s2, s10, 28
                  srl          t1, a5, s10
                  sra          t6, a2, s4
                  and          s0, s5, a6
                  sltu         s9, s11, t3
                  slt          gp, s6, s5
                  sra          s10, s8, t1
                  xor          sp, t2, s6
                  sra          t3, zero, t0
                  add          t6, s1, zero
                  sll          t3, s6, a5
                  slli         a2, t0, 6
                  sra          zero, t6, s9
                  srli         s7, t2, 7
                  ori          a1, ra, 2017
                  xori         a2, s2, -1386
                  slti         t1, a3, 886
                  sra          a6, tp, ra
                  sra          a5, t0, s5
                  andi         a2, s9, -1990
                  sltu         a1, t3, a7
                  addi         t6, s1, -1566
                  sltiu        gp, a2, 1766
                  or           s6, t5, s0
                  and          s0, s4, a0
                  nop
                  sll          s5, s3, t0
                  add          a7, sp, zero
                  slli         a6, t5, 22
                  and          tp, a5, s4
                  xor          tp, a4, t1
                  andi         s2, s1, -1800
                  nop
                  sltu         t0, t2, s10
                  addi         zero, a6, 1913
                  sltu         a5, s5, t4
                  nop
                  xor          tp, a5, s7
                  xor          sp, s2, s3
                  xori         a1, a7, -398
                  sll          a6, t1, a6
                  srli         s6, s9, 30
                  slt          s9, s7, ra
                  sll          a2, s11, gp
                  slli         tp, a5, 6
                  slli         t5, s0, 24
                  srl          s0, s5, a7
                  addi         a2, s9, 1755
                  slt          a5, t4, a6
                  sra          s8, s9, a4
                  srli         a5, t5, 27
                  srl          a6, a1, s0
                  addi         t5, s9, -661
                  slt          s10, a0, a5
                  slli         t1, t2, 8
                  xori         a3, a6, -1046
                  sltu         s1, t3, s2
                  slt          s6, t0, a6
                  auipc        s6, 889075
                  addi         a2, s0, 882
                  sub          s2, s2, t6
                  xori         zero, a6, 1799
                  addi         zero, sp, -604
                  ori          a7, t2, -1390
                  srl          s9, t1, a3
                  or           t4, s9, s9
                  addi         t6, gp, -1686
                  srli         s3, s5, 6
                  sltu         gp, sp, t2
                  srli         a2, t0, 20
                  addi         a4, s5, -593
                  lui          t0, 486337
                  sltiu        a4, a4, 1147
                  sll          s8, a6, t6
                  add          a7, zero, s4
                  auipc        s2, 582727
                  auipc        t1, 738348
                  auipc        tp, 351719
                  sll          t1, a0, a2
                  lui          a3, 1046258
                  andi         s1, s5, 184
                  auipc        a5, 120897
                  sltiu        gp, t6, 480
                  sltiu        s10, s2, 989
                  auipc        zero, 785478
                  slt          t4, a7, s0
                  sra          t3, a4, t0
                  sub          s8, a3, s6
                  auipc        s3, 151739
                  slti         a6, t0, 287
                  ori          sp, a4, -1068
                  addi         a2, gp, -1268
                  sub          a1, a2, tp
                  andi         s3, s0, 1442
                  nop
                  slli         s6, a7, 11
                  auipc        t4, 248277
                  xori         a4, sp, -557
                  xor          a7, s10, a3
                  srli         t3, s7, 26
                  and          a4, a7, s7
                  sll          s1, s2, ra
                  srai         s8, a6, 0
                  srl          t0, t1, s1
                  sra          t0, t2, a4
                  slt          s9, ra, a0
                  xori         t1, ra, 1294
                  sltiu        t6, s10, -1441
                  slli         a4, sp, 19
                  sub          ra, t1, s9
                  add          s9, s4, t4
                  srli         s3, a4, 10
                  srl          t4, s4, ra
                  add          a4, t0, tp
                  sltiu        zero, s5, -964
                  sltu         s3, tp, t6
                  auipc        a2, 895489
                  sltiu        t3, s8, -1420
                  ori          s3, t3, -1298
                  srai         a0, a3, 30
                  nop
                  sll          s9, s9, a5
                  sltu         s5, ra, t4
                  srl          sp, s1, s2
                  srai         t4, t6, 7
                  ori          s0, gp, -1169
                  add          a3, t2, a0
                  and          a3, t2, s5
                  sra          s10, s6, sp
                  srli         s3, s6, 5
                  sltu         a3, t6, a5
                  sltiu        s9, tp, 1707
                  sub          t0, a0, t5
                  slli         t5, zero, 20
                  sra          s8, s4, t3
                  slt          zero, s11, s9
                  or           s0, s6, s0
                  andi         t3, a3, 26
                  or           s0, sp, s5
                  sub          s9, t3, s4
                  or           t6, s9, ra
                  srl          t1, s6, s8
                  sltiu        sp, s1, -252
                  sra          sp, a6, a0
                  nop
                  srli         t5, zero, 16
                  and          gp, s5, a6
                  slti         t0, s3, -860
                  slti         zero, s4, -1898
                  srli         a2, s10, 1
                  or           a6, s9, s1
                  slli         s9, s0, 23
                  sltu         s2, s6, gp
                  ori          s6, zero, -616
                  xori         t1, zero, 1138
                  xori         s8, a2, 1863
                  or           ra, s3, s5
                  slli         t6, a6, 0
                  srli         s9, s9, 19
                  xori         s1, t1, 929
                  srli         t4, t2, 12
                  xori         t1, s10, 929
                  or           s5, s4, tp
                  sll          ra, t3, t4
                  auipc        a3, 558848
                  nop
                  sltu         a5, t6, t3
                  addi         t1, a4, -1728
                  ori          a5, sp, -163
                  sll          a2, t2, a7
                  or           a3, gp, t1
                  nop
                  lui          t1, 169004
                  slt          s0, s3, s2
                  slt          s0, t3, s9
                  addi         t4, t2, 1418
                  or           a0, a2, t3
                  slli         s8, ra, 6
                  srli         ra, t5, 28
                  srl          s9, s7, s9
                  andi         t5, t2, -1908
                  slli         a6, s9, 3
                  ori          a3, zero, 1690
                  sub          s2, s7, s6
                  xor          a2, a3, a5
                  auipc        a4, 891875
                  ori          ra, t1, -1311
                  srli         a6, s2, 26
                  addi         sp, s8, 1657
                  nop
                  srl          s10, a1, a2
                  sra          s2, t6, s7
                  and          a5, s4, t3
                  srl          t6, s8, a0
                  slti         s8, s2, -1001
                  sra          ra, s9, s8
                  lui          a1, 805046
                  sll          ra, t0, s5
                  sub          s10, a0, s5
                  slli         s5, t0, 19
                  slti         a4, a1, 844
                  srl          a2, a6, a2
                  ori          s5, a0, 83
                  slti         t3, t0, 541
                  ori          a3, t3, -708
                  and          a5, t2, sp
                  addi         s10, sp, -84
                  nop
                  sltu         s0, s5, s11
                  ori          a5, s9, -1055
                  sub          s1, gp, zero
                  and          a7, s10, a6
                  nop
                  addi         a6, a0, -1899
                  srl          t0, a3, a5
                  xori         s2, a6, 145
                  lui          a3, 850979
                  sll          s2, t6, s9
                  ori          t6, a4, 1979
                  auipc        ra, 842262
                  andi         sp, s11, 1165
                  add          a0, s2, a3
                  slli         s9, a1, 28
                  and          t0, tp, a0
                  lui          t6, 199426
                  xor          s0, s1, s8
                  andi         s10, s5, 1380
                  add          s10, tp, zero
                  ori          sp, s8, -1585
                  sub          a3, s8, t6
                  ori          gp, s9, -543
                  srai         s0, t5, 23
                  sra          s3, s2, t2
                  slli         s9, s3, 9
                  srli         a3, sp, 9
                  srli         gp, s7, 21
                  or           sp, a2, s7
                  lui          tp, 587429
                  lui          s7, 247632
                  ori          s2, s4, 1834
                  or           gp, a1, a2
                  xor          s5, t1, a3
                  sra          s6, s1, t0
                  auipc        a3, 470352
                  slt          s8, t2, s9
                  srli         a5, a3, 30
                  sra          a4, s6, tp
                  sltu         t5, zero, t4
                  xor          s9, s4, s6
                  auipc        s10, 587763
                  auipc        t1, 371639
                  ori          a1, t5, 1039
                  slti         a3, s7, -1636
                  ori          zero, a3, -119
                  slti         t5, zero, 858
                  and          gp, s1, s4
                  sltu         a7, s11, zero
                  srai         s10, a3, 10
                  srl          a7, a1, s9
                  lui          s8, 753482
                  xor          a1, tp, sp
                  srai         a1, s8, 18
                  auipc        a5, 819344
                  xori         a1, s5, 2035
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           t1, 0xc983a7ad
                  li           gp, 0x0
                  li           t3, 0x80000000
                  li           s7, 0x0
                  li           s10, 0xffffffff
                  li           s6, 0xd4ed1750
                  li           sp, 0x0
                  li           s0, 0xf3087c20
                  li           tp, 0x0
                  nop
                  sub          s0, sp, tp
                  nop
                  addi         s7, gp, 1627
                  nop
                  auipc        tp, 991994
                  lui          s10, 704619
                  auipc        gp, 1005437
                  add          tp, s6, s6
                  add          s0, s6, tp
                  lui          s7, 943956
                  sub          tp, s10, s6
                  nop
                  add          s0, s10, t1
                  sub          gp, t3, sp
                  auipc        a0, 174275
                  auipc        t3, 49439
                  add          tp, s7, gp
                  sub          t1, sp, s6
                  lui          a0, 144328
                  sub          s6, s10, t1
                  lui          s6, 301275
                  add          s0, s10, tp
                  auipc        s6, 90148 #end riscv_int_numeric_corner_stream_18
                  addi         t0, s1, -427
                  slt          a6, t4, s3
                  srl          t4, t4, a3
                  xori         s8, a1, -44
                  srai         t3, s7, 30
                  srl          a5, s2, sp
                  lui          t6, 946542
                  slli         a3, t1, 12
                  or           s5, a6, a6
                  srai         tp, t0, 15
                  srli         s5, s10, 26
                  or           t5, t0, t5
                  xor          s0, t4, s5
                  ori          t3, s8, 525
                  srai         tp, a7, 18
                  xori         gp, s4, -42
                  add          a7, a2, a5
                  srl          a5, s9, s6
                  srl          s8, a2, gp
                  sll          s5, s0, t2
                  andi         t3, s11, -1912
                  slli         s2, t5, 5
                  nop
                  sub          sp, a3, sp
                  addi         a2, s10, -590
                  and          t3, s8, a0
                  sltu         s7, t4, t6
                  xor          a4, s10, t4
                  xor          s2, a2, t4
                  ori          a3, t1, -362
                  lui          gp, 435252
                  slt          s10, a5, s0
                  srli         sp, s3, 13
                  xori         a1, t0, 1791
                  add          a1, gp, a3
                  sltu         gp, tp, a1
                  lui          a5, 721383
                  xor          a7, s2, s11
                  srl          s6, a3, s9
                  add          t4, t1, a3
                  add          zero, t6, t1
                  add          a7, a1, tp
                  xor          s5, t6, gp
                  sra          s7, t3, a2
                  srli         t4, a7, 6
                  sub          t3, t1, t6
                  auipc        a3, 89257
                  sltu         a7, s7, zero
                  sltiu        t3, s5, 494
                  add          s9, a6, s8
                  sll          t4, s3, s4
                  lui          s1, 775653
                  srai         t0, t0, 27
                  nop
                  sra          s6, s6, s5
                  ori          a6, s3, -297
                  slt          a1, a1, s8
                  sltiu        s10, tp, 1251
                  add          t0, t2, s3
                  srai         ra, t3, 4
                  slt          a7, s0, t3
                  sub          s1, s4, t5
                  andi         ra, s2, -1053
                  addi         a5, t2, 680
                  sra          s0, tp, s0
                  slli         a7, t4, 4
                  slt          a4, a4, tp
                  slti         sp, a3, -952
                  xori         s0, t4, -1836
                  sub          t3, s2, tp
                  slti         t5, sp, 370
                  xor          t1, s7, s1
                  xori         a1, a7, -37
                  srai         gp, s4, 9
                  add          s7, t2, s5
                  srli         s1, a1, 3
                  auipc        s2, 154544
                  xor          gp, s3, t0
                  andi         s0, t4, 1574
                  sra          gp, s2, t5
                  or           t3, t0, s7
                  auipc        s1, 544993
                  slt          s9, zero, t1
                  xori         a4, t0, -1635
                  srli         s2, s5, 31
                  srai         t4, s10, 10
                  sll          a4, t1, t0
                  add          s2, s4, t2
                  lui          s9, 821695
                  andi         a7, tp, -1479
                  ori          t4, t5, 1938
                  sra          a3, t5, s0
                  sltiu        s0, t5, -1153
                  sltiu        ra, t5, 492
                  xor          t6, s7, t4
                  and          a5, t0, t4
                  slli         t0, a3, 22
                  auipc        ra, 338279
                  auipc        tp, 528709
                  xor          tp, zero, t1
                  and          a0, a0, a3
                  srai         s5, s6, 9
                  srai         s2, s6, 6
                  slli         t3, t4, 21
                  andi         a1, a5, -1234
                  ori          s1, s0, -470
                  addi         s7, t0, -235
                  sra          s7, s9, s0
                  or           s1, a2, a0
                  ori          zero, a0, -1821
                  xori         tp, zero, 348
                  and          t4, s0, zero
                  xori         t3, zero, -1047
                  sll          a1, a5, a3
                  sll          a6, a7, s2
                  srai         t1, s0, 3
                  sub          s7, a0, a7
                  ori          s8, a4, -1479
                  srai         a2, s2, 28
                  add          s8, s7, s7
                  or           t3, s3, tp
                  andi         ra, s11, -1144
                  sltu         a5, s7, s9
                  sub          s1, t5, s5
                  andi         gp, t2, -953
                  andi         ra, a5, -1919
                  auipc        s5, 473888
                  srai         tp, s8, 25
                  or           s7, sp, a3
                  slti         a2, t2, 609
                  slli         a5, tp, 12
                  ori          s0, t0, 1299
                  nop
                  sll          s1, zero, zero
                  srli         a5, t5, 11
                  xori         a0, t3, -1284
                  or           s10, s11, s8
                  sra          t6, s1, a6
                  srl          t5, s3, s11
                  slti         a4, s4, -953
                  sltiu        t6, gp, 947
                  addi         s2, s8, 345
                  slti         s1, t2, 1985
                  xori         s0, a5, 162
                  sltiu        s0, t0, 38
                  addi         a6, tp, -1370
                  srl          ra, t4, a1
                  xor          s7, sp, s8
                  xor          t1, zero, t4
                  sltiu        ra, a5, 1223
                  srl          tp, a3, t3
                  lui          t3, 301595
                  or           t0, a5, t4
                  srl          a2, s10, tp
                  sltiu        s3, a6, -609
                  xor          sp, s5, t2
                  nop
                  sub          a1, t1, s4
                  srai         s5, tp, 4
                  srl          s5, t3, s11
                  addi         s6, t5, -1354
                  slt          a2, gp, t3
                  xor          sp, t5, a3
                  ori          a7, s6, -1678
                  slti         sp, a1, -54
                  srli         a5, tp, 29
                  srl          zero, t0, s10
                  xor          s7, a4, a0
                  lui          s7, 914962
                  nop
                  sra          t4, a4, a2
                  nop
                  lui          s3, 444215
                  srai         tp, t0, 20
                  sltiu        s9, a6, -1236
                  nop
                  slli         zero, s0, 15
                  add          tp, s11, t2
                  srli         zero, s6, 8
                  addi         s0, a6, -1036
                  slt          sp, s3, tp
                  ori          a7, s7, 13
                  addi         ra, a3, -437
                  add          a1, a3, s8
                  slti         a1, t1, -945
                  slt          s3, a2, t0
                  nop
                  or           t3, t0, tp
                  or           tp, gp, s5
                  sltu         t1, gp, s0
                  xor          s5, s3, a2
                  sub          a2, a4, s10
                  or           t4, zero, s2
                  slli         s1, s5, 0
                  sra          tp, zero, a7
                  lui          a3, 599671
                  xor          a7, s4, t4
                  sltiu        t3, t1, -421
                  lui          gp, 998667
                  slti         tp, gp, -686
                  xori         s1, t3, -499
                  or           a6, a3, s11
                  srl          t1, t3, ra
                  add          s3, gp, s7
                  slt          zero, zero, a0
                  sub          s10, tp, a0
                  ori          s2, s3, 1198
                  srl          s2, a4, s7
                  slli         t5, s6, 27
                  nop
                  andi         a2, t5, 834
                  nop
                  slt          s6, s5, s10
                  nop
                  lui          a2, 477304
                  addi         s2, s11, -1662
                  addi         t0, t2, 1174
                  xor          s1, a6, s3
                  addi         a1, s0, 636
                  add          a7, s2, s6
                  slt          s9, t3, s11
                  ori          s7, s6, 458
                  srli         a2, s6, 3
                  addi         t5, a6, 554
                  slt          a4, t3, a5
                  add          s1, s4, s0
                  andi         s7, t6, 2016
                  srli         s8, s3, 7
                  xor          a6, tp, s3
                  srai         t3, a0, 14
                  or           s0, zero, s5
                  xori         s2, s7, -1503
                  ori          a5, s7, 51
                  auipc        s2, 1011792
                  add          tp, t5, s0
                  or           t5, a3, t4
                  sub          a4, t6, s3
                  srli         t0, s1, 15
                  auipc        s8, 109170
                  srl          a7, t1, s0
                  srl          s2, a4, a0
                  and          a6, a3, t6
                  sltiu        s3, s5, -1734
                  srli         tp, s7, 6
                  slti         t4, s7, 891
                  xori         s8, t4, 889
                  auipc        zero, 983679
                  ori          t4, s5, 1457
                  addi         a5, s10, 770
                  addi         gp, s8, -1558
                  add          s6, s4, sp
                  addi         a5, t4, -532
                  slt          tp, t1, s1
                  srl          ra, s6, tp
                  xori         s2, tp, -221
                  srl          a1, s2, s8
                  sll          a0, t0, t5
                  sll          s5, tp, s3
                  sra          tp, gp, s1
                  sra          s7, t2, s3
                  srl          a4, s3, sp
                  sltu         s2, s8, s5
                  srl          ra, t6, a2
                  sub          sp, t4, a1
                  or           a4, t2, t2
                  auipc        s6, 528826
                  slt          a4, t0, a7
                  nop
                  addi         a4, s5, 404
                  slli         s3, s11, 23
                  or           a5, t2, a5
                  andi         s7, sp, -1634
                  xori         a2, t0, -1394
                  nop
                  xori         ra, tp, 1782
                  add          a7, a7, a0
                  and          a0, s0, gp
                  add          a6, t0, s7
                  slli         a6, s7, 26
                  slli         a3, s5, 13
                  slti         t0, s0, -1379
                  andi         s1, s10, -1769
                  sll          a4, a4, s0
                  sub          s5, s2, zero
                  add          s10, a2, t5
                  srli         s8, t5, 15
                  sltiu        a0, zero, -516
                  slti         a2, tp, -218
                  xor          s5, s9, zero
                  srli         tp, t1, 23
                  add          s5, s9, a6
                  add          s1, s1, a4
                  add          s1, a0, s8
                  xori         s7, s11, -1377
                  or           s9, s4, a6
                  srli         s7, t0, 17
                  nop
                  addi         a4, s4, -1313
                  sub          t6, ra, a5
                  xori         tp, t6, -1606
                  xori         s8, s2, 1408
                  add          sp, s3, a5
                  nop
                  lui          sp, 853730
                  slli         s10, s5, 28
                  slti         s2, t1, -764
                  sltiu        gp, a2, 628
                  srl          a4, s7, s0
                  slti         t4, t0, 1448
                  xor          sp, a6, gp
                  auipc        s9, 680668
                  sll          s9, a0, a0
                  srai         s5, s11, 10
                  addi         t3, a1, -1020
                  srli         t4, t4, 24
                  add          s0, gp, s0
                  slli         gp, a6, 8
                  slli         t6, a5, 3
                  and          s10, t0, a7
                  lui          s7, 1029089
                  xor          a1, a6, sp
                  slli         a2, t2, 2
                  nop
                  add          a1, sp, s2
                  nop
                  sll          s6, tp, a7
                  sub          a7, s6, t2
                  andi         a0, s9, -1252
                  slli         s8, t3, 25
                  and          t6, s3, s8
                  or           sp, a1, zero
                  srli         s5, a5, 24
                  xori         a1, s10, 675
                  slt          s5, s5, t3
                  lui          a1, 996194
                  sub          s1, a2, gp
                  sll          a0, s2, t2
                  sltu         s10, a1, t1
                  sltu         a4, s0, s8
                  sll          t5, tp, t1
                  auipc        gp, 424620
                  slti         t3, tp, 575
                  xor          a0, t5, gp
                  sra          a0, s1, tp
                  nop
                  slt          a5, t1, s5
                  add          tp, s0, t3
                  ori          t4, a6, 711
                  sltu         a1, s7, a6
                  srai         s3, t4, 8
                  srl          t4, gp, a0
                  slti         s2, a3, -1906
                  sra          t4, s7, s8
                  add          sp, gp, gp
                  and          t3, s5, gp
                  xori         tp, tp, 1431
                  and          a6, t5, s10
                  nop
                  add          s10, s3, a0
                  srli         a4, a3, 24
                  srli         s1, t0, 12
                  sltu         s7, s3, s5
                  sra          s2, tp, t0
                  or           gp, a0, a2
                  sra          s6, tp, t1
                  xori         a4, t3, 276
                  xor          a6, a4, gp
                  sra          t0, s10, s0
                  srai         s9, a4, 3
                  addi         t1, t5, -383
                  nop
                  sltu         zero, a7, a2
                  xor          a6, t4, sp
                  sltiu        tp, zero, 746
                  srli         t5, a3, 27
                  auipc        a1, 821761
                  or           s9, s11, s2
                  slt          t6, a5, t6
                  addi         a5, gp, -941
                  sra          a4, s8, t1
                  auipc        gp, 231774
                  srl          s5, t0, a3
                  andi         a0, a4, -320
                  or           s3, a0, s0
                  andi         s2, s0, -785
                  sltu         a4, ra, gp
                  addi         s6, t4, -247
                  sra          s3, a1, a6
                  and          t6, s2, sp
                  add          t1, a7, s7
                  nop
                  slti         s0, s2, -1526
                  or           s8, s7, t3
                  sra          s3, t1, t1
                  srai         sp, t6, 31
                  sub          s8, zero, a6
                  add          a4, s1, s0
                  or           s0, sp, a4
                  nop
                  andi         s6, a6, -930
                  addi         s2, s6, 1025
                  ori          a5, s10, 1376
                  ori          s7, a3, 703
                  andi         s10, s11, -1620
                  xor          t0, ra, a3
                  andi         t6, s0, 802
                  sltu         s9, a0, t5
                  sub          t6, tp, s4
                  andi         tp, t4, -1573
                  or           a4, a1, zero
                  auipc        sp, 597992
                  sltu         s2, a1, t6
                  and          s9, s0, s3
                  xor          t0, t1, t5
                  sltu         s3, a1, t5
                  srli         a1, zero, 12
                  lui          s7, 517300
                  xor          a6, s4, t5
                  nop
                  nop
                  andi         s9, t3, 292
                  srli         s7, a1, 26
                  and          s10, gp, a5
                  srl          a6, s6, t4
                  auipc        t5, 638117
                  lui          a4, 222530
                  sub          s7, t5, s3
                  ori          sp, zero, -1200
                  srl          a2, a5, t0
                  slti         a0, a4, -1228
                  add          s8, t3, s7
                  andi         s8, s6, 847
                  srai         t5, s7, 18
                  sub          s1, ra, t1
                  and          s10, s7, t5
                  ori          zero, zero, 827
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           a2, 0xffffffff
                  li           s0, 0xffffffff
                  li           t4, 0x3c3c0ca7
                  li           s8, 0x24469e8c
                  li           a3, 0x80000000
                  li           s5, 0x0
                  li           s7, 0x32dfc84f
                  li           a7, 0x0
                  li           a6, 0x9611f18d
                  nop
                  addi         t4, a7, -1700
                  nop
                  nop
                  sub          a7, a7, s7
                  auipc        a2, 15195
                  lui          s8, 347041
                  sub          t4, s0, a7
                  addi         t4, s0, -1745
                  sub          s8, a6, s7
                  auipc        s7, 18835
                  addi         a5, a3, -1134
                  auipc        s8, 877193
                  auipc        a6, 197592
                  add          a2, s5, a7
                  nop
                  add          a5, a5, a5
                  nop
                  sub          s7, a7, t4
                  lui          a2, 613660
                  sub          s0, a2, a7
                  sub          a7, s7, s8
                  addi         a3, s8, -248
                  nop
                  addi         a6, s0, 1708
                  auipc        a3, 235198
                  nop #end riscv_int_numeric_corner_stream_9
                  srli         t0, tp, 11
                  lui          ra, 47566
                  slt          a4, a5, t6
                  sltu         t6, a6, s0
                  xori         s1, s11, -208
                  slti         a3, t0, -1970
                  or           s8, t5, s5
                  xori         s5, s9, -935
                  slti         a5, t2, 603
                  sltiu        t1, s1, 1158
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a2, 0xad7a8f1a
                  li           t5, 0x391968ae
                  li           s5, 0xdf8fdc4f
                  li           a7, 0x4d060f5d
                  li           a0, 0x80000000
                  li           s1, 0xefb14715
                  li           t3, 0x80000000
                  li           t0, 0x80000000
                  li           t1, 0xffffffff
                  lui          t3, 826234
                  auipc        s5, 794816
                  addi         a0, s1, -1755
                  sub          t3, t3, t3
                  addi         t3, t3, -934
                  lui          s5, 318791
                  addi         t0, a2, -1948
                  auipc        s1, 918785
                  lui          a5, 349525
                  add          a7, t1, t3
                  sub          t3, a2, s1
                  sub          a2, a0, a7
                  lui          s1, 923685
                  auipc        t0, 12703
                  lui          t5, 69236
                  nop
                  addi         t1, t0, -618
                  auipc        t0, 353682
                  addi         t1, a5, -1100
                  auipc        a0, 641992
                  sub          s5, a5, a2
                  nop
                  nop #end riscv_int_numeric_corner_stream_16
                  xori         a5, s6, 24
                  sltu         a7, t5, tp
                  srli         a5, s5, 16
                  or           a0, s8, sp
                  sltiu        s0, a6, -191
                  sltiu        a5, t2, 1942
                  lui          t3, 289133
                  add          t6, a6, zero
                  sra          t5, t2, s7
                  add          s7, a4, zero
                  srai         s3, t2, 22
                  srai         sp, a0, 30
                  srli         gp, s5, 20
                  srai         a7, s7, 16
                  lui          s8, 994964
                  addi         t6, gp, -1353
                  and          a0, a5, a1
                  slli         a6, s3, 11
                  ori          s6, t1, -1747
                  addi         ra, a5, 91
                  xori         s8, ra, 1535
                  lui          gp, 729754
                  srai         s8, s5, 12
                  and          a5, a2, tp
                  add          gp, a0, s9
                  sltu         t6, a7, s11
                  add          s3, s3, s6
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           t3, 0xffffffff
                  li           a4, 0xffffffff
                  li           tp, 0x80000000
                  li           a0, 0x0
                  li           t0, 0xffffffff
                  li           s9, 0x80000000
                  li           s8, 0xffffffff
                  li           t6, 0x4af697a5
                  li           s3, 0x0
                  addi         s9, a2, 2015
                  lui          a2, 538698
                  nop
                  nop
                  auipc        t0, 44871
                  nop
                  add          s8, t3, t3
                  sub          t6, a2, tp
                  sub          t6, s9, a0
                  nop
                  addi         a4, a2, 1553
                  sub          t3, a2, a4
                  sub          a0, t0, s8
                  addi         tp, a2, -758
                  addi         a0, t6, -333
                  sub          s8, a4, tp
                  add          s9, t3, t6 #end riscv_int_numeric_corner_stream_13
                  addi         zero, s1, 1663
                  or           tp, s8, s0
                  sltiu        s2, s3, 275
                  sltiu        t4, a2, 1015
                  srl          s1, a3, s5
                  lui          t3, 373194
                  or           s0, t4, a6
                  auipc        a2, 417807
                  lui          t1, 542247
                  srai         t1, s1, 20
                  srai         a0, s0, 17
                  srai         t3, s8, 1
                  ori          a6, s3, 534
                  srli         s1, zero, 19
                  sll          a7, s1, a0
                  slti         s8, s9, -427
                  and          a7, a2, a6
                  andi         sp, a3, 1406
                  sll          s10, t5, s9
                  lui          a5, 969735
                  sltu         sp, a5, sp
                  srai         sp, s10, 8
                  lui          t1, 657297
                  sltu         a4, tp, s9
                  or           s0, s2, s11
                  srai         t3, a6, 20
                  sub          s1, t1, sp
                  andi         s3, t6, 1955
                  sltu         s3, t3, t0
                  sra          a4, a3, s7
                  sll          zero, s0, gp
                  xor          a3, s8, t3
                  srai         t0, t3, 18
                  nop
                  and          a7, s8, s1
                  slli         s1, s7, 24
                  xori         tp, s1, -523
                  sub          gp, s8, s9
                  slt          a0, s3, t5
                  sltu         s10, gp, a4
                  sltu         a5, a4, sp
                  srli         a6, a6, 25
                  srli         s9, tp, 22
                  slli         t3, s7, 2
                  srai         sp, sp, 29
                  xor          ra, t6, a2
                  slt          s2, a5, t0
                  sltiu        a5, s1, -1022
                  slt          a6, a3, ra
                  xori         a3, t2, -208
                  or           zero, t1, t4
                  or           s5, tp, s4
                  or           s7, t5, a6
                  slti         s2, a4, 926
                  srli         t0, a3, 29
                  sra          a4, a6, s11
                  srai         t4, t0, 23
                  sra          gp, a0, t1
                  srai         ra, a4, 13
                  or           a1, t5, zero
                  srli         t4, s5, 19
                  sltu         a7, a1, a5
                  or           s6, a4, t1
                  auipc        t6, 827595
                  srl          a5, t5, a3
                  srli         ra, t1, 4
                  srai         a2, t2, 22
                  or           s6, t0, s9
                  auipc        t3, 400703
                  auipc        ra, 860380
                  or           t5, a2, s8
                  ori          sp, a2, 248
                  srai         tp, s5, 7
                  srai         a1, s6, 7
                  or           s5, t0, a4
                  srl          s0, sp, s1
                  sltu         sp, s11, s9
                  sll          zero, s11, a0
                  sll          a0, a5, ra
                  srli         s6, s9, 6
                  andi         t1, s3, 1866
                  slti         s1, sp, 429
                  add          sp, s1, s10
                  srai         a6, s1, 0
                  sll          s5, s5, s5
                  sub          t5, s2, tp
                  nop
                  srai         s5, s2, 1
                  auipc        sp, 713319
                  lui          gp, 520247
                  sra          s10, tp, a5
                  srli         a3, s11, 18
                  or           a0, t6, tp
                  ori          a3, a0, 732
                  sltiu        a7, s10, -1021
                  ori          sp, s3, 1254
                  srai         s10, a1, 24
                  slti         a4, s11, 66
                  addi         t3, s7, 444
                  srai         sp, s5, 12
                  srai         tp, gp, 18
                  sra          s5, s7, s7
                  andi         s1, s6, -767
                  nop
                  slti         a3, t0, -564
                  sltu         tp, a1, t3
                  sltiu        s5, s2, 1542
                  nop
                  auipc        a1, 880020
                  addi         t3, t1, -1036
                  srl          t6, s0, s9
                  nop
                  sub          s6, t6, gp
                  sub          t1, s7, t6
                  sltu         t4, zero, s6
                  sll          a0, a4, a2
                  sub          t3, sp, a0
                  sltu         a4, s2, sp
                  and          a3, s10, s10
                  xori         s7, sp, -57
                  xori         a5, s2, 972
                  ori          a2, a4, 990
                  srai         s10, s6, 1
                  ori          s6, t5, -615
                  andi         t5, t3, 1680
                  srli         gp, a4, 0
                  sub          tp, s8, zero
                  sub          a2, a7, t6
                  auipc        tp, 121372
                  add          zero, a6, t2
                  srl          a5, s8, a7
                  ori          s1, s8, 591
                  sub          s2, s8, t3
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t1, 0x4e1da9be
                  li           tp, 0x0
                  li           ra, 0x0
                  li           t3, 0xffffffff
                  li           s3, 0x450309d3
                  li           s9, 0x2112a297
                  li           s10, 0x0
                  li           a6, 0x0
                  li           a5, 0xd22fd480
                  nop
                  lui          a4, 39923
                  add          ra, t1, s10
                  sub          s9, s9, a5
                  sub          a5, a6, tp
                  auipc        ra, 732162
                  lui          ra, 824909
                  auipc        a5, 252491
                  sub          s9, a6, tp
                  addi         a6, tp, 1885
                  add          ra, a5, ra
                  auipc        a6, 528661
                  sub          t1, s10, a4
                  addi         tp, t3, 764
                  lui          s9, 683825
                  addi         a4, t3, -301
                  addi         t3, a6, -1149
                  auipc        s10, 763995
                  auipc        a6, 953122 #end riscv_int_numeric_corner_stream_15
                  srai         s5, a4, 31
                  auipc        sp, 59175
                  sltiu        s8, s2, 873
                  sll          s9, s4, t0
                  srl          sp, a7, s11
                  slt          s3, a5, tp
                  auipc        a6, 949527
                  slti         s7, a5, -1283
                  xori         s1, a6, -1660
                  andi         a4, s10, -709
                  and          s2, s8, t2
                  addi         t1, a0, 1313
                  slli         ra, s8, 22
                  xor          zero, tp, a6
                  addi         a7, a4, 1109
                  ori          t3, t4, 383
                  lui          t1, 747780
                  slli         sp, t2, 6
                  sll          tp, a0, a4
                  sra          s10, s6, t3
                  lui          s6, 216053
                  sltu         t6, a6, zero
                  slli         a5, sp, 11
                  sub          zero, ra, a4
                  ori          s3, s4, -1865
                  addi         s8, t6, -561
                  slti         a2, s7, -668
                  slli         s10, a4, 1
                  or           s8, s5, s5
                  slt          a7, t3, a5
                  auipc        a2, 282080
                  addi         a4, s11, 1665
                  and          gp, s5, s2
                  andi         a4, a5, 1075
                  slti         a4, t1, 222
                  addi         t4, s3, -639
                  slli         t6, s11, 15
                  lui          a0, 280643
                  srl          a1, zero, s11
                  slt          t0, a3, a1
                  lui          s6, 621281
                  nop
                  andi         a4, t3, -1606
                  sra          s9, a0, s11
                  add          s0, a2, s1
                  addi         a0, a0, 835
                  sra          s7, s8, zero
                  lui          t3, 1033691
                  and          a7, s8, t6
                  add          tp, a5, s1
                  xori         s6, s5, 725
                  xor          t0, a3, t6
                  lui          a3, 256411
                  slt          t0, a2, a6
                  sra          t3, s5, a2
                  addi         a7, a3, -1831
                  sltu         t0, s9, s5
                  sltu         s10, a3, s7
                  add          s10, sp, t1
                  addi         a0, s0, 723
                  xor          zero, s5, t1
                  sra          t6, t6, s2
                  sll          ra, s4, tp
                  nop
                  andi         t5, t4, -512
                  addi         a3, s2, -1396
                  sll          gp, s2, t0
                  or           ra, a2, a3
                  and          s6, t3, sp
                  xor          t5, a4, a2
                  slti         gp, a4, -1618
                  sra          s9, t0, a7
                  sltiu        t5, t3, -1912
                  and          s5, a1, s6
                  srai         a3, t6, 27
                  auipc        sp, 149125
                  add          a6, s11, a7
                  lui          s2, 97167
                  andi         a4, a2, 1655
                  sltiu        s5, s9, 1877
                  slt          s8, s4, t2
                  xor          t1, a3, s3
                  slt          s5, t3, t4
                  sra          zero, a3, sp
                  and          s2, s9, s1
                  sltiu        s2, s6, -41
                  xor          s7, a3, s11
                  lui          s8, 561522
                  and          a0, s10, s1
                  and          a1, s1, s7
                  slti         a3, a7, 1829
                  sra          tp, gp, sp
                  srai         sp, s4, 11
                  andi         a1, s5, 1097
                  xori         s10, a7, 620
                  sll          zero, t1, s9
                  slli         a5, a6, 30
                  ori          a2, a6, -725
                  ori          s3, s6, 487
                  xori         sp, s2, -689
                  add          s10, s1, t4
                  srli         a4, zero, 15
                  add          t4, a5, tp
                  srl          a7, t2, a3
                  xori         s6, sp, -1039
                  and          s0, s0, t6
                  sltu         a4, gp, t6
                  xori         t0, s6, 1546
                  andi         a2, a6, 1499
                  lui          s9, 813608
                  andi         s6, ra, -1017
                  sltu         a7, zero, s8
                  auipc        t4, 603552
                  slti         ra, a4, 524
                  sltu         a3, a2, gp
                  slli         a0, s8, 15
                  or           t1, a1, s10
                  srli         s1, s4, 0
                  sra          s2, t3, s1
                  sltu         tp, t6, a2
                  auipc        s5, 977712
                  srl          ra, a4, s0
                  auipc        s10, 207934
                  sltiu        s0, gp, -63
                  slt          s8, s6, s9
                  srl          gp, t3, a1
                  xori         a1, s1, -801
                  sltu         t4, zero, s3
                  add          a7, a1, a1
                  sll          t1, s11, t1
                  addi         s1, t2, -433
                  xor          t3, t4, t4
                  sll          ra, a3, a5
                  nop
                  srai         gp, t0, 25
                  srai         s5, s4, 9
                  addi         ra, gp, 1573
                  xori         t1, s1, 1953
                  andi         s0, t2, 1581
                  andi         a0, s0, -510
                  add          sp, tp, a1
                  addi         a6, t2, -442
                  addi         zero, s1, 1930
                  ori          t6, s1, -2025
                  andi         s8, t3, -774
                  xor          t1, s3, sp
                  xor          gp, s6, s3
                  sltiu        zero, t4, -1682
                  slli         s7, a2, 18
                  sltiu        t4, gp, 769
                  lui          s5, 612679
                  sltu         a1, s11, zero
                  slti         s5, s0, 877
                  sltiu        a7, a7, -11
                  sll          s6, a5, s10
                  sra          tp, s11, t3
                  sltiu        sp, s9, -1562
                  sll          a3, tp, s0
                  srli         t5, s4, 10
                  addi         a3, t5, -459
                  or           a3, t5, gp
                  slti         a0, t0, -546
                  sltu         s7, gp, a3
                  srai         s7, s11, 15
                  ori          t3, t0, -1595
                  sra          t6, t1, s1
                  sltu         t1, s6, s4
                  srai         s6, s6, 22
                  xori         s5, s11, -1816
                  slt          gp, a0, t0
                  slli         t0, t6, 11
                  sltiu        s2, a6, -1461
                  or           s1, a1, a0
                  andi         sp, s10, 170
                  ori          s3, tp, -384
                  or           a7, t6, a3
                  andi         a3, s0, -294
                  auipc        s5, 64152
                  sll          zero, t4, s3
                  sra          t0, s8, a3
                  srl          t0, t1, a4
                  or           s0, s4, t4
                  or           s1, s0, sp
                  sra          tp, tp, t1
                  and          s10, s10, t0
                  sll          t0, s4, s7
                  or           gp, s0, t0
                  sltu         t1, s11, tp
                  xor          s2, s1, s4
                  nop
                  srai         a7, sp, 2
                  srli         s10, t2, 1
                  add          t4, a0, t4
                  sll          sp, a4, t0
                  sub          s5, t0, s5
                  slli         t4, ra, 11
                  or           ra, a4, s5
                  sll          a5, s4, t0
                  xor          s1, a1, ra
                  sll          t4, t5, t2
                  srli         s9, s5, 0
                  sra          s3, s11, s6
                  nop
                  auipc        zero, 751543
                  sra          a7, tp, a6
                  sltu         t3, a0, s8
                  xori         a7, s3, 1056
                  andi         a3, a6, 1685
                  sra          a7, s3, a1
                  sub          a3, t4, s6
                  slt          tp, a5, s6
                  sll          a3, t6, s7
                  srai         s9, a5, 3
                  sltu         s8, sp, a3
                  sra          t4, s8, t4
                  srl          t4, a3, s11
                  auipc        zero, 696573
                  slti         a0, t3, 39
                  sra          t3, s0, sp
                  xor          a7, s7, a4
                  add          t3, s6, t5
                  slti         s9, s9, -1103
                  lui          t1, 196529
                  srli         s2, s7, 10
                  slli         ra, a6, 14
                  auipc        s9, 756163
                  sltiu        s3, sp, -1622
                  or           a3, t2, s5
                  slli         s9, sp, 30
                  sltu         t6, zero, s7
                  andi         s0, s3, 1855
                  lui          s8, 965040
                  ori          a5, t3, 1232
                  sub          a0, t3, a3
                  xori         s9, tp, -1371
                  srli         s3, s9, 12
                  xori         a6, t6, 188
                  srai         ra, a6, 28
                  or           s3, a5, a0
                  xor          a5, sp, t2
                  slli         a2, a3, 22
                  xor          s1, t4, tp
                  slti         s3, a0, -1253
                  or           s8, gp, s0
                  xori         s1, a6, 933
                  sub          t3, gp, t6
                  slt          t5, s7, a5
                  nop
                  srl          a2, t4, t3
                  srli         s6, t0, 5
                  sll          a3, s0, t1
                  ori          tp, s4, -892
                  auipc        a0, 227550
                  auipc        s8, 920567
                  srai         s10, a3, 9
                  addi         a1, a1, -439
                  slli         a5, a5, 18
                  srli         tp, s3, 16
                  slt          a4, s7, zero
                  add          zero, s1, t0
                  or           s6, s11, sp
                  xori         s2, a6, -1574
                  sltu         s1, s6, a7
                  or           t5, a3, a1
                  sll          a7, zero, s10
                  sub          s8, a0, t0
                  lui          s2, 880635
                  addi         zero, s10, 986
                  sub          t6, a5, t2
                  srl          t4, t0, gp
                  srl          s6, s7, s4
                  sltiu        s0, s1, -882
                  sll          a4, s3, ra
                  addi         s6, a0, 482
                  add          s7, t2, a3
                  slli         a1, tp, 11
                  auipc        s0, 439486
                  slti         s2, s2, -1459
                  lui          t6, 295954
                  sltu         s10, s0, s11
                  srli         t3, t5, 28
                  nop
                  sra          ra, s8, s4
                  xor          t0, s1, sp
                  xori         tp, s10, -1187
                  srli         sp, a2, 15
                  sub          s5, a6, s2
                  sll          a2, gp, s3
                  sub          s9, s5, t1
                  srl          t3, a5, s11
                  srai         s8, tp, 20
                  and          a1, tp, s10
                  srli         s0, tp, 17
                  auipc        t6, 8810
                  srli         zero, s10, 12
                  slt          t1, t2, a7
                  xor          a6, t3, a7
                  andi         s3, t3, -749
                  auipc        s0, 53314
                  lui          s6, 672987
                  slli         s0, t4, 3
                  addi         ra, s1, -1173
                  sra          a0, s0, s1
                  sra          t6, zero, s1
                  slti         a6, a7, 142
                  lui          gp, 53136
                  sltu         a6, a2, s10
                  or           ra, s6, t4
                  sub          ra, tp, ra
                  srli         t1, a5, 5
                  add          t6, t4, t3
                  lui          s7, 965833
                  auipc        tp, 16363
                  andi         zero, a7, -1986
                  sra          a4, s9, s3
                  ori          t0, sp, -1961
                  sltu         a3, a4, a3
                  slt          t5, t2, t4
                  srl          gp, s9, s1
                  lui          t4, 164411
                  lui          s10, 713278
                  srl          sp, sp, s11
                  lui          t3, 338997
                  or           s9, a6, a3
                  lui          tp, 91902
                  slli         zero, s6, 7
                  and          t4, a3, s10
                  sll          sp, a7, s10
                  ori          s10, s5, 460
                  srai         a6, s5, 22
                  auipc        s6, 336073
                  nop
                  lui          a4, 525294
                  xori         s6, t0, -1822
                  lui          tp, 205374
                  addi         s2, sp, 1041
                  or           a0, a4, ra
                  srai         sp, a4, 0
                  sub          a7, tp, s6
                  sub          s9, s7, t6
                  slli         a0, t6, 30
                  add          a6, s3, s3
                  slti         a7, s3, -1478
                  sub          s0, a0, sp
                  ori          s1, s11, -725
                  sltu         a1, a4, s6
                  srl          s8, a1, a5
                  and          s10, tp, gp
                  and          s0, s7, ra
                  sltiu        s9, a6, 512
                  or           a0, a7, t1
                  lui          t0, 720613
                  sub          ra, t6, a1
                  srli         zero, s2, 23
                  ori          s2, zero, 22
                  xor          a3, s11, s6
                  auipc        s1, 378354
                  sra          s2, s1, t5
                  add          sp, t4, s6
                  or           a5, s1, s1
                  sra          s6, s0, s6
                  xor          t4, s0, a2
                  srl          t4, s10, tp
                  srai         s0, s8, 10
                  sub          s2, s6, t4
                  slli         t6, s9, 6
                  srai         s10, s0, 6
                  sltu         t3, t2, t1
                  andi         t4, s7, -1416
                  slti         s10, a1, -1635
                  add          s5, a4, s2
                  srl          s6, s7, gp
                  slti         t4, t2, 1874
                  srai         a7, s7, 7
                  nop
                  and          a7, gp, s11
                  ori          t1, s10, -1187
                  sra          a5, zero, gp
                  sra          s6, t1, a7
                  nop
                  sra          s10, s9, s0
                  srli         gp, a1, 12
                  slti         a2, s9, -687
                  ori          a3, t2, 1007
                  xori         zero, a2, -1107
                  slti         s0, tp, 464
                  ori          s8, s0, -558
                  or           t4, ra, a3
                  or           a1, s4, a3
                  srai         s1, s7, 28
                  nop
                  srli         s7, a4, 8
                  add          s6, sp, s4
                  and          t1, a0, t4
                  sltiu        a4, s5, 1642
                  nop
                  xori         t5, a6, 737
                  slli         s7, a5, 14
                  auipc        a0, 529052
                  srl          a5, tp, gp
                  auipc        sp, 383293
                  addi         a0, s9, -1653
                  sll          s2, a4, sp
                  lui          s5, 190913
                  slli         t6, zero, 16
                  sltu         s1, a2, t3
                  lui          a3, 668347
                  xori         s5, t2, 127
                  add          ra, a5, t4
                  sra          sp, t4, s7
                  or           a0, a0, t3
                  srai         a6, t0, 0
                  srl          s8, s3, t2
                  xori         gp, a3, -338
                  and          a0, gp, s0
                  addi         a4, s2, 1582
                  add          a1, s8, t1
                  sra          s1, s4, t3
                  addi         a7, t5, 672
                  sra          s9, t2, s7
                  sltu         gp, t1, t1
                  sltu         a4, t1, s7
                  sltu         a1, t0, t5
                  auipc        tp, 378189
                  nop
                  or           a2, t6, a1
                  and          tp, a0, s6
                  sll          s5, a4, t4
                  auipc        a6, 921249
                  nop
                  sub          zero, t1, s7
                  auipc        a1, 585594
                  xor          s7, a1, s8
                  sub          s2, a5, s2
                  nop
                  sll          t1, s9, t3
                  xor          zero, gp, s4
                  slli         s1, s7, 13
                  xori         s6, a1, -1320
                  sll          t3, s10, s4
                  srai         a2, t1, 6
                  addi         t6, a7, 640
                  xori         a0, s9, -8
                  sltu         s3, sp, t0
                  xor          a4, a6, s5
                  sra          s10, sp, t3
                  nop
                  srai         a0, s3, 20
                  sra          s0, t3, gp
                  add          s7, s11, zero
                  slt          a0, a0, t4
                  xori         zero, s3, 326
                  srli         t3, a7, 9
                  srai         t5, a0, 12
                  slt          t0, s8, zero
                  or           s3, a1, t2
                  addi         a4, a7, 489
                  auipc        t4, 78239
                  xor          a7, t3, s8
                  sra          a7, s8, ra
                  nop
                  sra          s3, t2, s2
                  auipc        s9, 427726
                  slti         s2, a7, 1275
                  sra          a2, a3, t2
                  sra          t6, a0, s0
                  addi         t4, s5, 342
                  sub          zero, a1, s10
                  xor          a1, a5, s8
                  addi         s1, tp, -2020
                  srl          t3, s8, s6
                  addi         s3, a3, -355
                  auipc        a4, 849789
                  xor          s5, s8, t5
                  slt          gp, t1, s9
                  sub          a3, s10, a3
                  slli         a5, s8, 18
                  sltiu        gp, gp, -938
                  slli         ra, t4, 20
                  ori          s5, sp, 1271
                  addi         a1, s9, 2010
                  slli         s8, a2, 18
                  and          s9, s7, t5
                  srai         a6, t3, 18
                  addi         s3, s8, -1981
                  lui          s2, 578526
                  srli         s7, ra, 30
                  lui          t5, 175489
                  ori          s7, a5, 1616
                  ori          sp, s11, -135
                  sub          a2, s6, a3
                  sub          s6, a6, t3
                  ori          a3, s8, 428
                  slti         sp, s10, 1196
                  sra          a6, t1, tp
                  sll          a5, s11, ra
                  xor          tp, s0, ra
                  srai         a1, s5, 21
                  sub          zero, s10, s4
                  ori          sp, a3, 465
                  andi         a2, a4, 649
                  auipc        s2, 1015615
                  sra          a7, zero, s4
                  add          a6, s8, s8
                  sltu         t4, t1, a2
                  add          s9, s1, tp
                  sltu         ra, a2, a1
                  add          s9, a0, zero
                  auipc        ra, 953805
                  sltu         s3, s0, gp
                  srl          tp, s2, s8
                  slli         s5, s9, 27
                  add          s7, a2, sp
                  xor          gp, s2, a5
                  or           t5, s1, gp
                  and          gp, s0, s8
                  addi         t5, s0, -1484
                  lui          s0, 461693
                  srli         s5, s10, 4
                  lui          t4, 11896
                  xori         sp, ra, -1122
                  srai         t5, t0, 25
                  xor          a2, s4, sp
                  slli         a4, a3, 31
                  xor          sp, sp, s10
                  sltiu        s9, a5, 842
                  srli         s8, s5, 3
                  slti         s3, s3, -28
                  srli         tp, a3, 22
                  srli         s2, zero, 1
                  addi         s1, t5, 88
                  slti         t6, a3, -1766
                  slti         a5, s4, -610
                  ori          a4, s8, -43
                  sll          t0, a7, tp
                  and          t4, s0, t4
                  and          t0, s4, s9
                  sub          t1, t0, s0
                  sltu         s6, s0, s5
                  srli         t4, t0, 28
                  srl          s7, tp, s11
                  slli         s8, s10, 2
                  srli         s3, t4, 29
                  add          tp, sp, t3
                  xori         a0, s5, 1660
                  add          t0, a1, s0
                  or           a6, gp, s1
                  slli         s3, sp, 0
                  add          t1, tp, s9
                  or           t4, a0, s8
                  add          s3, s8, t6
                  and          a1, a0, s1
                  srli         s10, t2, 21
                  sltu         s2, t1, tp
                  auipc        sp, 387649
                  auipc        a0, 22223
                  sub          ra, a4, s10
                  or           s9, s7, t3
                  slt          a5, s10, a0
                  slti         s7, s1, -1054
                  addi         a7, t2, -792
                  sll          a3, a2, a0
                  and          t6, a3, t6
                  sll          t0, a5, s3
                  srl          t4, s2, a6
                  add          s5, ra, a5
                  sll          s5, tp, s10
                  or           a6, s8, a3
                  auipc        zero, 755671
                  srai         s10, zero, 14
                  sll          a3, a4, s9
                  andi         a5, s2, -884
                  nop
                  slt          t4, a1, a1
                  andi         a3, a7, -633
                  auipc        t1, 65220
                  xor          s9, a3, s2
                  auipc        s9, 206440
                  sll          s1, t5, a3
                  add          t0, s11, t5
                  andi         a7, t1, 1473
                  sub          a7, sp, s5
                  srai         s6, s4, 30
                  or           tp, s10, t5
                  sub          s0, ra, a0
                  or           gp, t6, zero
                  sltiu        s5, t1, 1332
                  xor          tp, s5, t2
                  andi         sp, t4, -639
                  sltiu        a6, s8, -1003
                  xor          s7, a4, t1
                  auipc        gp, 626419
                  srai         zero, s0, 3
                  andi         zero, s8, -1659
                  slli         s1, s1, 28
                  srl          s8, a7, t4
                  nop
                  slt          t1, s11, t2
                  sltu         s1, s3, a6
                  xori         a0, s8, 319
                  nop
                  srli         a3, a3, 31
                  addi         t3, s11, -1811
                  slli         a2, s4, 20
                  ori          s9, t2, -539
                  nop
                  sra          s6, zero, a1
                  or           a0, t4, a7
                  srli         t6, tp, 9
                  and          s0, s8, t0
                  srl          zero, a3, s4
                  slti         s6, s4, 1235
                  slt          zero, t4, s9
                  and          a3, gp, a7
                  sra          t4, a3, ra
                  srai         s2, a6, 5
                  nop
                  sltiu        s1, s0, 818
                  sll          s10, s4, s4
                  srli         a1, s0, 19
                  li           s8, 0xaa9a9370 #start riscv_int_numeric_corner_stream_10
                  li           t3, 0x8ad78962
                  li           ra, 0x80000000
                  li           s2, 0x80000000
                  li           sp, 0xbc70040b
                  li           s9, 0xffffffff
                  li           a4, 0x8875917e
                  li           s0, 0x80000000
                  li           s7, 0x80000000
                  li           a6, 0xffffffff
                  auipc        s8, 392624
                  addi         a4, s9, 1597
                  nop
                  lui          s0, 693975
                  addi         s8, s2, -1448
                  addi         ra, t3, -1352
                  lui          sp, 571565
                  addi         s2, ra, -1488
                  auipc        sp, 114466
                  lui          s9, 765609
                  lui          ra, 655734
                  nop
                  lui          a6, 193892
                  addi         a6, s8, 1021
                  nop
                  addi         a4, t3, -1191
                  addi         s2, s2, -1378
                  nop
                  addi         s8, t3, -1957
                  nop
                  addi         s9, s8, 1977
                  addi         t3, a4, 1212
                  nop
                  addi         s9, ra, -145
                  auipc        s0, 661659
                  nop
                  auipc        s9, 63093
                  auipc        t3, 212295
                  sub          t3, a6, sp
                  auipc        s2, 42719 #end riscv_int_numeric_corner_stream_10
                  sltiu        a0, ra, -1811
                  slli         s8, zero, 3
                  sll          s6, s6, a6
                  and          a2, gp, s1
                  or           t0, a2, s9
                  lui          t4, 463169
                  slti         t4, zero, 663
                  sltu         s8, a7, a6
                  sra          a3, s2, tp
                  srl          a5, tp, a3
                  sra          s5, t5, s3
                  ori          s6, t5, -1770
                  sltu         s9, s8, zero
                  slt          s0, s4, tp
                  srli         sp, s7, 20
                  srai         a4, a6, 11
                  xori         s6, t4, -1636
                  addi         s5, t5, -2012
                  srli         a4, t1, 8
                  addi         a3, s2, -609
                  add          ra, ra, t6
                  andi         t3, gp, -885
                  slli         sp, a1, 16
                  and          a1, s2, t0
                  sra          ra, s10, t4
                  ori          t1, tp, -17
                  slli         a5, s6, 5
                  and          s9, t2, t4
                  slt          a2, s6, s5
                  slti         a5, a3, -664
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t3, 0x0
                  li           s8, 0x80000000
                  li           sp, 0xffffffff
                  li           a4, 0xffffffff
                  li           t6, 0xffffffff
                  li           gp, 0x0
                  li           s1, 0x0
                  li           a7, 0x0
                  li           t5, 0x0
                  lui          gp, 372473
                  sub          t3, sp, t5
                  sub          a7, t5, s3
                  lui          s3, 680406
                  lui          gp, 244943
                  nop
                  addi         t5, t6, -1663
                  nop
                  add          t3, t3, t3
                  addi         t3, sp, 1685
                  lui          s8, 475391
                  addi         t6, a7, -796
                  auipc        sp, 886862
                  add          t5, s1, sp
                  nop
                  sub          s8, gp, a4
                  nop
                  lui          s1, 67467
                  lui          s1, 456556
                  nop
                  auipc        a4, 677137
                  sub          s1, sp, t6 #end riscv_int_numeric_corner_stream_4
                  or           t3, a2, a6
                  nop
                  auipc        s6, 189031
                  or           a6, s11, s1
                  sll          s0, s5, gp
                  slt          a1, s0, s3
                  andi         a4, s1, 690
                  add          s0, t5, t4
                  or           zero, s10, a5
                  sub          a7, a3, ra
                  slli         s3, t3, 12
                  add          s7, s11, a7
                  add          s8, t0, t6
                  andi         a6, ra, -895
                  lui          t6, 828232
                  slti         a2, s9, -1974
                  xori         s6, s4, -375
                  or           a5, s11, a6
                  add          s0, t1, t1
                  slti         t6, s11, 174
                  addi         s8, t6, 999
                  andi         s10, a7, 1441
                  auipc        ra, 145588
                  add          s5, s0, s1
                  nop
                  andi         a3, s7, -1480
                  srai         s10, t1, 30
                  sltu         a1, s4, a5
                  slt          ra, a3, zero
                  or           s1, t5, a7
                  add          t6, zero, a4
                  addi         s1, t4, 1634
                  andi         a7, s8, 1663
                  slt          s2, s9, a6
                  srl          ra, t3, t6
                  add          s1, s0, s4
                  addi         s6, a2, 569
                  lui          t6, 725723
                  sra          s8, t1, s9
                  slli         tp, s4, 9
                  add          t6, s1, a2
                  xori         a1, s9, -186
                  xori         t0, tp, 1469
                  srai         tp, t1, 30
                  lui          s8, 811235
                  and          ra, t0, a3
                  auipc        sp, 777419
                  srai         a4, zero, 23
                  nop
                  lui          zero, 106174
                  srl          a6, a7, a2
                  sltiu        s2, s1, -1759
                  andi         s8, t4, 1716
                  xori         a3, t1, -1797
                  slt          t1, ra, a5
                  lui          a3, 174248
                  slt          s10, s10, s1
                  sltu         a0, s4, t2
                  srai         t5, a5, 24
                  nop
                  or           s6, s2, gp
                  nop
                  xori         ra, s5, 1195
                  srl          a5, tp, t3
                  srl          s2, s1, s0
                  xori         t3, ra, 542
                  auipc        a5, 391119
                  srl          s1, t0, t5
                  auipc        s3, 627979
                  and          s0, t4, t6
                  xori         a5, s7, -1576
                  sub          t6, s6, a4
                  slli         a6, s8, 8
                  sll          s10, a2, s8
                  srli         zero, zero, 9
                  sra          s7, a1, s4
                  sltu         sp, a0, s6
                  sltiu        t5, t1, 575
                  srl          a0, s2, s5
                  addi         a0, s7, -382
                  srli         t5, a1, 13
                  add          sp, t3, a6
                  andi         s0, t0, 313
                  andi         s9, zero, 1730
                  xor          s1, sp, tp
                  or           a2, s7, t0
                  and          gp, a0, t2
                  lui          s10, 16467
                  lui          t4, 24795
                  auipc        s9, 979525
                  sltiu        s2, s8, -1717
                  add          s9, s2, tp
                  slti         s0, t2, 546
                  sub          a2, a6, zero
                  srl          gp, t0, s11
                  sltiu        s1, a2, -1623
                  sltiu        s8, s10, 710
                  andi         s1, s7, -315
                  andi         a2, t0, -988
                  srli         a5, a3, 5
                  sra          a4, t6, s7
                  or           a5, a1, s11
                  or           t6, a6, a4
                  ori          s6, tp, -17
                  auipc        t0, 947583
                  srl          a5, ra, gp
                  nop
                  xori         s0, t5, 832
                  xor          ra, a6, t0
                  slli         s9, tp, 15
                  slti         s10, s7, -1909
                  lui          s5, 385772
                  lui          s2, 1006148
                  sll          a3, s5, t5
                  srai         s6, a1, 22
                  ori          t3, a5, -1669
                  sll          t0, s10, tp
                  srl          s9, a6, t4
                  sll          gp, a2, s7
                  andi         gp, a3, -206
                  slt          ra, s6, s9
                  srli         t1, s1, 3
                  addi         s3, s4, 1448
                  slli         t5, s5, 23
                  nop
                  srl          s5, ra, a2
                  and          s10, s3, a6
                  xori         t3, gp, 1101
                  xori         ra, ra, 1278
                  addi         s1, s0, -1522
                  slli         a2, t0, 3
                  addi         s1, s8, 733
                  addi         ra, t4, 1536
                  add          zero, s11, s2
                  sub          t5, t5, s6
                  srai         tp, t0, 18
                  or           a1, tp, t2
                  nop
                  srl          s7, s2, s6
                  lui          t1, 146996
                  ori          t0, s7, -1775
                  xor          zero, sp, a3
                  or           t5, t0, a6
                  sub          gp, sp, a7
                  srl          sp, zero, t5
                  xor          t1, a5, s3
                  ori          t5, s2, 1863
                  sub          s2, s1, t4
                  sub          s10, s4, t6
                  slti         s3, a4, -187
                  auipc        s1, 728320
                  srai         s1, a1, 4
                  xor          s0, a1, s10
                  slti         ra, a3, -1415
                  sra          a6, s4, s4
                  sub          s8, s10, s0
                  andi         a4, s4, 851
                  auipc        tp, 99134
                  sra          a2, t0, t6
                  addi         t0, a2, -1134
                  ori          sp, a2, -2040
                  lui          a5, 680479
                  lui          s3, 799367
                  srl          s3, t4, s8
                  xor          zero, t3, a3
                  addi         a1, a0, -581
                  nop
                  srl          zero, a6, t6
                  and          ra, a6, t2
                  srli         a3, a7, 10
                  slli         s2, s8, 19
                  addi         s2, a0, 711
                  ori          s7, s7, 1452
                  sub          t6, a6, s3
                  addi         t4, s0, -449
                  xor          a4, s5, a6
                  xor          zero, t3, a5
                  sub          s5, a5, s8
                  srl          s6, tp, a5
                  nop
                  add          s2, ra, s7
                  slti         t5, a7, 1729
                  nop
                  andi         t5, tp, 1201
                  andi         s9, zero, 1425
                  sltiu        a2, s8, -1272
                  slt          a0, s2, t1
                  sub          t3, a2, t3
                  sll          tp, a2, t2
                  ori          gp, s10, 900
                  sub          a1, ra, a5
                  sra          s2, t5, s5
                  lui          s8, 18921
                  auipc        a0, 761829
                  sll          t6, zero, s5
                  auipc        s3, 416620
                  sltu         s5, s0, s2
                  srai         s0, t3, 9
                  srl          t6, t2, s8
                  slt          t5, s0, a7
                  slli         a5, s7, 22
                  auipc        a6, 999821
                  addi         a6, t3, -819
                  srli         s0, s8, 24
                  slti         a5, a1, 1566
                  xori         s10, t3, -988
                  addi         s7, a1, -1549
                  auipc        s3, 802675
                  sll          t0, t6, t6
                  sll          a0, t5, t4
                  nop
                  xori         s5, t6, -584
                  sra          a2, gp, s0
                  ori          s9, s7, -1750
                  xor          s3, a5, a0
                  ori          s7, s7, 536
                  and          s2, gp, t4
                  auipc        a5, 1046525
                  sra          t4, s4, s7
                  or           t4, a0, a4
                  srl          t4, a4, t2
                  srli         tp, a6, 30
                  andi         s3, t1, -1547
                  srl          t5, t6, gp
                  ori          tp, sp, -111
                  srl          ra, a5, a7
                  xor          zero, s2, t5
                  xor          sp, t1, s9
                  xor          s6, s11, s3
                  ori          s5, a6, 1086
                  auipc        s9, 309785
                  sub          s9, tp, gp
                  lui          s8, 260869
                  sub          s9, t6, gp
                  sltiu        a4, a2, -1859
                  xor          a7, a7, s0
                  and          s6, a6, a5
                  add          a2, sp, a3
                  srai         s1, s11, 4
                  sltu         sp, a7, s2
                  xori         zero, a3, 165
                  sub          a4, tp, t0
                  sltu         t5, a6, s1
                  lui          t3, 225695
                  nop
                  sltiu        a5, a3, 324
                  slli         s3, a4, 9
                  srl          sp, ra, a5
                  add          a1, a5, tp
                  auipc        s1, 1002787
                  auipc        t5, 969725
                  andi         t6, s0, -494
                  srl          sp, s10, a3
                  sra          s9, s9, a6
                  auipc        ra, 83404
                  sub          t0, t1, a4
                  srl          a5, sp, a1
                  sltiu        a0, t2, -1256
                  auipc        a5, 618902
                  lui          a7, 798916
                  add          s1, t2, s2
                  auipc        s6, 643488
                  slli         s1, tp, 11
                  slli         s7, a5, 6
                  srli         a5, s9, 25
                  andi         s1, t0, -1822
                  sltiu        a2, a1, -717
                  slti         a1, t5, 1135
                  andi         a4, zero, 53
                  and          t3, gp, t3
                  nop
                  slti         s7, t1, -384
                  or           gp, t1, t0
                  sub          a6, s10, s8
                  andi         t0, a2, 1134
                  slt          t6, t0, a7
                  srai         sp, s0, 19
                  sll          a3, tp, a3
                  ori          t1, s10, 1483
                  xori         s0, tp, -237
                  sra          t3, a1, s10
                  sll          s7, s7, sp
                  nop
                  or           s0, s11, zero
                  lui          a7, 458587
                  slt          a6, t0, t0
                  sltu         s0, a7, ra
                  slt          s1, t3, a2
                  sll          s5, s2, s5
                  nop
                  sll          s5, s10, a1
                  slli         a5, s5, 21
                  sltiu        ra, t4, 1902
                  sub          s8, a7, gp
                  sltu         gp, s5, zero
                  sub          s10, s11, a3
                  xor          s9, sp, a0
                  srli         s5, a2, 1
                  xori         a7, a3, -1534
                  slt          s5, sp, a6
                  slli         gp, s6, 8
                  sra          tp, s6, a3
                  sra          ra, ra, t6
                  add          t4, a4, s5
                  sra          s1, a4, a7
                  sltiu        t4, s1, 1219
                  sra          t4, s3, a5
                  xor          a3, s7, s1
                  nop
                  and          t1, s6, t2
                  or           a3, t4, a2
                  auipc        gp, 1012368
                  ori          zero, s8, 2005
                  slt          tp, a7, s4
                  add          a6, gp, ra
                  addi         a3, s8, 1166
                  ori          ra, a5, -1241
                  sra          s0, a2, t5
                  and          sp, s9, s4
                  addi         s1, a7, -1949
                  srai         t6, sp, 31
                  srai         a2, a3, 22
                  andi         a3, s0, -518
                  add          s3, t5, s6
                  addi         t4, t6, -1804
                  ori          a6, t3, 1488
                  xori         s2, t4, 1304
                  auipc        a7, 812443
                  xor          s3, ra, a2
                  slti         tp, zero, 2037
                  srli         tp, t3, 26
                  xor          zero, s1, sp
                  xor          sp, gp, t4
                  andi         t5, a5, 277
                  srli         s7, a2, 3
                  and          t3, s9, s8
                  ori          s10, gp, -1978
                  slt          tp, a0, s9
                  srli         s0, a2, 0
                  xori         s3, s8, -947
                  andi         a1, tp, 1551
                  sll          a7, t5, t3
                  auipc        s0, 280228
                  addi         a6, t1, -1299
                  and          a4, t3, a7
                  srl          gp, s3, sp
                  srli         a3, t4, 30
                  sll          s7, s2, s1
                  slli         s8, tp, 18
                  sra          tp, s5, zero
                  lui          gp, 590978
                  srli         a1, s0, 6
                  ori          a4, s4, -587
                  nop
                  add          tp, a3, s5
                  slti         a2, s9, -311
                  xor          tp, a1, a1
                  srli         s5, ra, 6
                  add          s8, s2, s2
                  andi         s6, s8, 2010
                  slli         s0, t3, 1
                  and          gp, a5, s11
                  add          t5, a7, s9
                  add          t4, s4, s2
                  andi         s6, s0, -1978
                  sub          t0, a7, s4
                  sub          s2, s9, t4
                  nop
                  slli         s10, s8, 22
                  sra          s3, a4, t6
                  addi         s10, s5, 521
                  and          s2, a5, s4
                  sra          s0, t1, t3
                  sltiu        s6, a1, -522
                  andi         a4, s1, -810
                  slti         tp, a0, -665
                  or           s7, a2, a2
                  srli         sp, t5, 1
                  sll          a4, tp, a1
                  or           ra, s6, s2
                  slli         s10, s9, 19
                  nop
                  nop
                  slt          t1, s0, a1
                  slti         a2, a0, 1779
                  sltiu        a3, t6, 240
                  and          t1, s3, s9
                  srl          s2, t4, t2
                  andi         s6, s8, -1196
                  slli         t6, tp, 7
                  nop
                  srli         a5, s1, 2
                  srai         t3, s1, 19
                  sub          sp, a6, t1
                  slti         s6, a5, 196
                  sltiu        s7, s3, 506
                  or           a5, tp, s6
                  nop
                  srai         s8, a1, 28
                  sltu         t0, a3, s0
                  sltiu        s3, s9, -1468
                  sra          zero, s3, s5
                  sltiu        a0, s1, -1767
                  sra          s7, s11, s4
                  slli         s9, a3, 7
                  slli         t5, s10, 28
                  or           s9, ra, t3
                  ori          t3, s4, 1902
                  sll          s3, s4, a0
                  and          gp, t2, t6
                  or           tp, t1, s3
                  sra          zero, s5, s1
                  andi         t6, s1, -1161
                  and          s10, s8, t0
                  or           a4, s3, gp
                  sltu         s1, a4, sp
                  sltiu        ra, s10, 1180
                  sltiu        s1, a4, 1725
                  ori          s7, a5, -223
                  xor          t6, sp, t0
                  sra          ra, a7, a0
                  srai         s10, a7, 29
                  andi         a4, s7, 890
                  slli         s8, t6, 18
                  srai         ra, t1, 10
                  slt          s0, a0, a4
                  nop
                  auipc        t4, 698870
                  srai         zero, a0, 22
                  sra          tp, a2, t0
                  xor          t5, s5, tp
                  slt          t1, tp, t4
                  sltu         s5, s2, sp
                  auipc        s9, 615904
                  or           s8, s3, s8
                  and          t1, a2, s5
                  sltu         s9, gp, s8
                  auipc        t0, 906275
                  sll          t4, t1, s0
                  or           tp, zero, s10
                  slti         a6, s10, -182
                  sltu         a1, s1, s10
                  sub          t5, a6, a0
                  srai         t0, t3, 17
                  add          a0, s8, s3
                  xor          s2, t4, a6
                  xori         s2, gp, 1360
                  add          a5, t4, a7
                  nop
                  slli         t0, s10, 11
                  sra          zero, a7, t2
                  lui          s1, 566948
                  auipc        a5, 782500
                  slt          t0, s9, s10
                  xori         t5, s10, -1339
                  auipc        ra, 715761
                  sltiu        t3, t4, -509
                  and          a5, a0, t0
                  lui          s2, 553897
                  sll          a2, sp, s11
                  slli         s10, a5, 25
                  sra          a3, s2, gp
                  sltu         s10, t1, t3
                  auipc        sp, 33522
                  slt          t3, s8, a1
                  srai         a3, a6, 26
                  sltiu        tp, ra, -1686
                  xor          t4, t3, t2
                  sll          a2, t4, s5
                  auipc        a2, 242341
                  slli         t3, zero, 24
                  nop
                  auipc        a4, 256909
                  auipc        s1, 771334
                  add          a7, s11, s11
                  add          a1, gp, s2
                  srl          ra, s3, t3
                  andi         tp, s4, 549
                  slli         t0, sp, 22
                  sra          t1, ra, t0
                  addi         s10, a0, 1913
                  xor          t5, s10, a5
                  sltu         t3, s5, s10
                  sltu         a5, s7, t5
                  slti         s1, t4, -163
                  addi         s8, t4, -1904
                  slt          a1, sp, t1
                  or           t3, t2, a6
                  addi         zero, s0, 1258
                  srl          t4, a5, s7
                  and          gp, t1, s2
                  slt          s2, t4, tp
                  srai         t0, t1, 13
                  sltiu        a6, gp, 873
                  slt          s6, a1, t4
                  add          a3, s5, s9
                  and          a0, gp, s8
                  slti         gp, s10, -2010
                  add          s2, ra, t6
                  sltu         t4, s10, gp
                  auipc        s10, 206756
                  add          s7, a4, a2
                  slti         s6, a0, -206
                  srai         t1, a7, 25
                  xori         s8, s2, 785
                  and          s9, s6, s5
                  slt          t1, t2, ra
                  or           t0, ra, sp
                  ori          t6, zero, -1066
                  auipc        a1, 361987
                  slti         t5, t5, -690
                  sra          a7, s7, s3
                  slli         s0, s11, 24
                  ori          sp, t0, -2033
                  ori          a4, zero, 1479
                  sltu         t1, t5, t5
                  sltiu        s3, a4, -1035
                  xor          s0, t2, sp
                  lui          t3, 821754
                  srai         s6, gp, 0
                  addi         s3, s11, -1038
                  auipc        gp, 485985
                  slli         t5, sp, 8
                  srl          s9, t0, s6
                  sltiu        gp, a6, -1240
                  and          s10, t6, tp
                  add          a3, a0, s5
                  or           s1, t3, a4
                  nop
                  or           t6, a3, a0
                  andi         s3, zero, -418
                  sltu         tp, a6, t0
                  xor          s0, gp, t4
                  xori         tp, a1, -319
                  slt          a6, a3, t6
                  xori         s2, t3, -627
                  ori          s1, s11, 462
                  sub          t6, s1, s4
                  andi         t3, s4, -538
                  srli         s9, s8, 30
                  sll          s8, a3, t3
                  srai         t3, t6, 13
                  add          a3, a7, t1
                  slti         a1, s9, 1345
                  srli         t0, a5, 11
                  slli         ra, s7, 21
                  srl          s2, s0, s10
                  xori         ra, s2, 1073
                  sltu         t3, t2, a0
                  nop
                  or           a7, s3, s4
                  sub          t3, t4, a5
                  sra          gp, s0, s7
                  xori         zero, a5, 2017
                  xor          ra, a4, s0
                  xori         a1, s3, -1138
                  and          a7, t4, t1
                  sltiu        s10, a1, -1894
                  ori          ra, s1, -480
                  srli         t6, a1, 29
                  xori         t4, t3, -2027
                  auipc        tp, 272920
                  sra          s1, a5, s7
                  sltiu        a4, s5, -491
                  xori         gp, s1, 1152
                  sra          t0, t3, t6
                  lui          a4, 177424
                  nop
                  sra          a0, gp, a6
                  andi         a5, s7, 645
                  sltu         t0, t2, s7
                  andi         ra, t6, -493
                  add          zero, a5, s5
                  slli         s9, t1, 30
                  ori          s9, s4, -747
                  lui          s2, 853804
                  or           t6, t0, s7
                  nop
                  nop
                  lui          t0, 579428
                  sll          sp, s2, s11
                  xori         a3, a7, 1647
                  sub          a1, a4, t5
                  srli         s6, gp, 4
                  srai         sp, s7, 24
                  sra          a0, t1, t1
                  sra          s1, s5, s9
                  nop
                  or           s3, s2, s6
                  sll          a2, a2, s5
                  slli         s3, t4, 8
                  xori         s9, a5, -1676
                  sub          s8, a7, sp
                  sltu         ra, s2, tp
                  lui          a1, 858228
                  addi         t0, s2, -944
                  srli         a5, t4, 7
                  andi         s7, t5, 2008
                  and          s8, a4, s4
                  add          ra, s1, t5
                  sra          s2, a7, t1
                  andi         tp, a0, -1750
                  xori         a7, s6, -1502
                  sra          s5, s2, t5
                  slt          t6, a6, s1
                  srli         a2, a5, 3
                  andi         s0, a0, -129
                  slli         a1, s1, 19
                  nop
                  addi         t3, s7, -1115
                  sra          a0, gp, t3
                  nop
                  sltu         zero, a4, a1
                  addi         ra, a0, 1457
                  xor          a3, s8, s4
                  add          tp, t5, gp
                  or           a6, a7, s6
                  srai         a2, t1, 24
                  auipc        s8, 831891
                  or           zero, t0, s5
                  xor          t0, s6, a6
                  xor          s9, t4, a1
                  lui          a3, 175633
                  slti         t4, s3, 368
                  sra          a0, s5, a3
                  slti         s6, sp, 1661
                  sra          a6, a1, gp
                  or           a6, a4, gp
                  auipc        t0, 710728
                  andi         t6, s6, 1014
                  or           s8, zero, s9
                  auipc        a4, 626902
                  and          s6, tp, s0
                  addi         s5, t1, 836
                  xor          ra, s4, t5
                  sub          s8, a0, a6
                  srli         t0, a4, 31
                  lui          a6, 923307
                  slli         zero, s5, 17
                  srai         s2, s4, 14
                  slli         s6, s2, 30
                  andi         s10, s8, 759
                  addi         a6, s10, -929
                  sltu         s3, s7, sp
                  and          gp, t0, a3
                  srai         s5, a7, 3
                  srai         s5, t3, 24
                  add          a4, s3, t5
                  or           a4, a4, t3
                  sra          t4, s4, s5
                  ori          a0, a2, -1549
                  ori          t5, s4, 676
                  add          s5, s4, a1
                  sltiu        s2, a4, -1844
                  sub          s0, t6, a6
                  la x20, test_done
                  jalr x0, x20, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x27, x7, zero
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x31, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x31, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x31, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x31, x18, ecall_handler
                  li x18, 0x1
                  beq x31, x18, instr_fault_handler
                  li x18, 0x5
                  beq x31, x18, load_fault_handler
                  li x18, 0x7
                  beq x31, x18, store_fault_handler
                  li x18, 0xc
                  beq x31, x18, pt_fault_handler
                  li x18, 0xd
                  beq x31, x18, pt_fault_handler
                  li x18, 0xf
                  beq x31, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x7, x27, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x27, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x27, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x7, x27, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x7, x27, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x7, x27, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
