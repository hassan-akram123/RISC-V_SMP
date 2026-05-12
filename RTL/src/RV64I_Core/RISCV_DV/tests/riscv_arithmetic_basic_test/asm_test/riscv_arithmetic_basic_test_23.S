.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0xb4a651b5
                  li x1, 0x0
                  li x2, 0xb45f5718
                  li x3, 0x0
                  li x4, 0x36f239cf
                  li x5, 0x80000000
                  li x6, 0xf8ccd57a
                  li x7, 0x80000000
                  li x8, 0xc81e8066
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0xa
                  li x12, 0x22a53d5d
                  li x13, 0x2
                  li x14, 0x9236fff4
                  li x16, 0x80000000
                  li x17, 0xd
                  li x18, 0x14990ae8
                  li x19, 0x80000000
                  li x21, 0x96c9575c
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x2
                  li x25, 0xf97739de
                  li x26, 0x0
                  li x27, 0x285057e4
                  li x28, 0xc
                  li x29, 0xe
                  li x30, 0x0
                  li x31, 0xfbfb8925
                  la x20, user_stack_end
main:             li           ra, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x80000000
                  li           s9, 0xffffffff
                  li           t6, 0xffffffff
                  li           s3, 0x0
                  li           a1, 0x950e598
                  li           s5, 0x0
                  li           t3, 0xffffffff
                  li           t5, 0xffffffff
                  li           s1, 0x929072e8
                  lui          s1, 213078
                  lui          s1, 553244
                  add          s1, t5, ra
                  add          s3, ra, a1
                  lui          s3, 1043613
                  nop
                  auipc        s1, 125822
                  addi         ra, a1, -1121
                  sub          a7, s9, s9
                  addi         a1, a1, -2009
                  lui          ra, 818177
                  addi         s1, s1, -1351
                  sub          t3, ra, s9
                  auipc        t3, 602109
                  addi         a1, s5, 1519
                  add          t3, a7, t3
                  auipc        s1, 529149
                  add          s3, t5, t5
                  add          s5, a1, s3 #end riscv_int_numeric_corner_stream_15
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s2, 0xffffffff
                  li           s1, 0xa044208
                  li           a1, 0x0
                  li           a6, 0x80000000
                  li           a7, 0x80000000
                  li           gp, 0xffffffff
                  li           a2, 0x80000000
                  li           t4, 0x0
                  li           s10, 0x80000000
                  nop
                  add          t3, s2, s1
                  addi         a1, a1, 1161
                  nop
                  add          a1, gp, a1
                  sub          a1, s10, a6
                  auipc        t3, 54062
                  auipc        a2, 1015045
                  lui          s10, 522027
                  addi         s2, s1, 1556
                  auipc        a2, 803036
                  addi         s1, a7, -1902
                  add          a2, a2, a7
                  add          s10, t3, s10
                  auipc        t3, 254657
                  lui          t4, 338023
                  nop
                  lui          a1, 333266
                  nop
                  add          a6, a7, s10
                  sub          t4, t3, s2
                  add          s2, s2, t3
                  nop
                  auipc        s2, 228758
                  nop
                  addi         s10, t4, 1849
                  lui          a1, 977803
                  lui          gp, 350332
                  sub          t4, gp, a1 #end riscv_int_numeric_corner_stream_13
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           ra, 0xc224e985
                  li           s11, 0x80000000
                  li           a4, 0xffffffff
                  li           a7, 0xffffffff
                  li           s9, 0x1369e6b1
                  li           a6, 0x0
                  li           t0, 0x80000000
                  li           t1, 0x80000000
                  li           s10, 0x80000000
                  lui          s10, 901228
                  addi         t0, ra, -517
                  sub          s11, a7, s11
                  lui          s11, 459179
                  add          s10, a4, t0
                  auipc        s9, 80389
                  auipc        a4, 100110
                  add          ra, ra, t1
                  lui          t6, 888754
                  auipc        s11, 213361
                  lui          t0, 245298
                  sub          t6, ra, a7
                  auipc        t0, 418427
                  addi         ra, t6, 1889
                  lui          t0, 11391
                  auipc        s10, 946268
                  add          a6, a6, a4
                  nop
                  add          t6, s10, t0 #end riscv_int_numeric_corner_stream_17
                  li           ra, 0xa06f4946 #start riscv_int_numeric_corner_stream_9
                  li           t1, 0x80000000
                  li           a7, 0x8482f316
                  li           t6, 0x0
                  li           s5, 0x80000000
                  li           tp, 0x0
                  li           s8, 0x80000000
                  li           gp, 0x0
                  li           s9, 0x7f82900b
                  li           s10, 0x80000000
                  auipc        tp, 648481
                  add          ra, gp, tp
                  sub          t1, t1, t6
                  addi         s8, t6, 231
                  auipc        a7, 598996
                  add          tp, s10, gp
                  add          tp, ra, gp
                  lui          s8, 829140
                  sub          s10, s5, s9
                  nop
                  addi         s5, a7, -1261
                  addi         t1, t1, 581
                  add          s10, tp, ra
                  add          s9, t6, s8
                  auipc        s8, 512259
                  sub          ra, s5, s5
                  addi         s5, t6, 1555
                  addi         a7, t1, 884
                  sub          s9, s9, a7
                  sub          t6, s9, s8
                  sub          s8, gp, gp
                  lui          s10, 887348
                  sub          s10, s10, a7
                  auipc        s9, 837898
                  auipc        a7, 804247
                  addi         s5, s10, 1268
                  nop
                  sub          s10, a7, tp #end riscv_int_numeric_corner_stream_9
                  li           s10, 0xafb83191 #start riscv_int_numeric_corner_stream_7
                  li           s8, 0x80000000
                  li           ra, 0x0
                  li           a3, 0x80000000
                  li           s7, 0x0
                  li           t3, 0xffffffff
                  li           gp, 0x80000000
                  li           tp, 0x80000000
                  li           s5, 0x68c17338
                  li           a7, 0xe44f245f
                  nop
                  addi         ra, ra, -114
                  sub          ra, s8, a7
                  auipc        gp, 211688
                  auipc        ra, 434103
                  add          tp, s8, s8
                  auipc        s7, 514640
                  sub          s5, a7, a7
                  lui          tp, 78033
                  auipc        gp, 35911
                  lui          ra, 938752
                  lui          t3, 883052
                  sub          ra, ra, a3
                  sub          ra, s5, a7
                  sub          s8, s5, s7
                  sub          s10, s10, gp
                  add          tp, s7, s5
                  nop
                  lui          s7, 261750
                  add          s5, t3, a3
                  nop
                  lui          s7, 223826
                  auipc        a3, 425028
                  sub          a3, s10, ra
                  nop
                  add          s8, s7, gp
                  add          tp, s7, s10
                  nop
                  sub          t3, a7, s10 #end riscv_int_numeric_corner_stream_7
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t6, 0xffffffff
                  li           t2, 0xffffffff
                  li           s3, 0x0
                  li           t1, 0x0
                  li           a4, 0xffffffff
                  li           t3, 0x80000000
                  li           s10, 0xe4eed2dd
                  li           s8, 0x569d587c
                  li           s6, 0xffffffff
                  nop
                  addi         a4, t1, -1282
                  sub          a6, s10, t1
                  add          t1, a6, t2
                  addi         t6, s6, -1271
                  addi         s8, s6, 1556
                  sub          s8, t6, s3
                  auipc        t2, 99095
                  lui          s10, 837487
                  lui          t6, 422510
                  auipc        s6, 31065
                  add          a4, s6, s6
                  add          s10, s10, t6
                  lui          t2, 27139
                  add          t2, t6, s8
                  addi         a6, s3, -516
                  addi         t6, t2, -788
                  lui          s6, 447074
                  lui          a6, 853613
                  sub          s6, t3, s8
                  auipc        t6, 609334
                  auipc        t6, 11385
                  nop
                  nop
                  lui          a4, 463018
                  addi         t2, t6, 1468
                  nop #end riscv_int_numeric_corner_stream_14
                  li           s3, 0x439e9bf3 #start riscv_int_numeric_corner_stream_10
                  li           t0, 0x80000000
                  li           s7, 0x80000000
                  li           s10, 0x0
                  li           t6, 0x0
                  li           tp, 0x0
                  li           t4, 0xffffffff
                  li           a2, 0x0
                  li           a3, 0xffffffff
                  li           sp, 0x347129b
                  auipc        s3, 711838
                  lui          s10, 898021
                  add          tp, s10, s7
                  auipc        tp, 1002937
                  auipc        a2, 1027848
                  add          t0, s7, tp
                  nop
                  lui          s10, 23976
                  lui          s7, 1027470
                  sub          a2, s3, a2
                  nop
                  sub          s7, t4, s3
                  add          tp, sp, t4
                  lui          s3, 862515
                  auipc        t6, 884145
                  nop
                  lui          s10, 891364
                  nop
                  lui          s3, 683259
                  auipc        a3, 195515
                  add          tp, t6, t6
                  addi         s7, a3, 2039
                  add          s10, sp, tp
                  addi         tp, tp, 618 #end riscv_int_numeric_corner_stream_10
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s2, 0x0
                  li           s3, 0x0
                  li           ra, 0xca40af84
                  li           gp, 0x58b7b840
                  li           t0, 0x80000000
                  li           a6, 0xc3555f4b
                  li           tp, 0xac48209e
                  li           s10, 0x0
                  li           t4, 0x80000000
                  nop
                  nop
                  auipc        s6, 174025
                  auipc        tp, 235952
                  auipc        t4, 583406
                  addi         t0, tp, -1517
                  addi         t4, t4, 230
                  sub          ra, t0, gp
                  nop
                  auipc        gp, 135971
                  addi         tp, s2, 939
                  auipc        s2, 109942
                  lui          s3, 682707
                  auipc        a6, 677059
                  nop
                  sub          gp, a6, t0
                  sub          ra, t4, gp #end riscv_int_numeric_corner_stream_5
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           sp, 0x80000000
                  li           s2, 0x0
                  li           s3, 0xf93d8d4
                  li           t2, 0x0
                  li           s7, 0xffffffff
                  li           a4, 0x80000000
                  li           t1, 0x80000000
                  li           s1, 0x0
                  li           a2, 0x85af8473
                  nop
                  add          a4, a4, a4
                  auipc        s1, 189729
                  addi         s2, s3, -1349
                  nop
                  lui          t1, 789464
                  addi         a2, t2, -1198
                  addi         s2, t1, -1868
                  addi         s3, s7, -746
                  auipc        s1, 95129
                  sub          a4, t1, t1
                  sub          s1, sp, a4
                  add          s7, sp, sp
                  nop
                  auipc        t2, 371606
                  add          t1, t2, s6
                  addi         s1, sp, 1207
                  sub          sp, a4, t1
                  lui          s7, 333865
                  auipc        s6, 898347
                  addi         s7, s3, 1002
                  add          sp, s2, s2 #end riscv_int_numeric_corner_stream_3
                  andi         s9, t3, -754
                  sra          t6, a4, s8
                  or           a7, t2, s3
                  sll          s2, a0, tp
                  lui          ra, 142071
                  xor          a7, t3, s0
                  ori          a6, t1, 1782
                  srl          t3, ra, a1
                  or           zero, s10, tp
                  xori         s5, t6, -1280
                  ori          t6, t0, -1919
                  ori          s7, t5, 786
                  ori          a1, t4, -88
                  slti         s6, s6, -1708
                  sra          s1, s5, s0
                  slti         s8, s11, 1094
                  xor          t1, a5, s1
                  xor          gp, s6, s8
                  sub          a3, s3, a7
                  or           a3, ra, s0
                  lui          a1, 151653
                  sll          a2, a0, t2
                  sub          t3, t6, t6
                  ori          a3, t1, 970
                  or           gp, t2, a3
                  sll          t3, a1, s2
                  sll          s11, tp, a7
                  srai         t6, s8, 21
                  auipc        s6, 286937
                  sll          a7, gp, s11
                  slt          a3, s3, s7
                  srli         s11, ra, 28
                  slli         s11, tp, 7
                  slli         s8, sp, 20
                  xori         s1, s4, 1379
                  add          gp, a3, s7
                  xor          s10, s7, t6
                  sra          s6, t1, a7
                  slli         t3, t1, 25
                  addi         t0, s7, 1499
                  add          a7, zero, a7
                  sub          a3, t1, a7
                  lui          s0, 179857
                  addi         s7, s6, -2040
                  srl          a2, a1, a0
                  srl          zero, s6, s5
                  lui          ra, 31484
                  auipc        gp, 965622
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t1, 0x0
                  li           t6, 0x80000000
                  li           a6, 0x9db95021
                  li           s10, 0xffffffff
                  li           a7, 0xa90d493b
                  li           t4, 0xffffffff
                  li           s6, 0x80000000
                  li           s2, 0xffffffff
                  li           s0, 0xffffffff
                  auipc        t1, 521024
                  nop
                  sub          s2, s2, s10
                  addi         s6, t6, -83
                  sub          t4, t4, a6
                  nop
                  addi         a7, s5, -1820
                  lui          s6, 865968
                  sub          t6, s6, s10
                  addi         t1, t1, -1812
                  auipc        s0, 564982
                  addi         a6, a7, -1298
                  sub          t6, s0, s5
                  addi         a7, t4, -4
                  sub          s10, t4, t6
                  add          s0, t6, s10
                  sub          t6, s10, a6
                  add          s5, s0, s5
                  lui          t6, 792520
                  auipc        s5, 248006
                  lui          a7, 1041006
                  add          s0, s6, a7
                  add          t4, s5, s5
                  sub          a7, t1, a6
                  sub          s5, s2, t6
                  nop
                  add          s6, t4, s6 #end riscv_int_numeric_corner_stream_11
                  sltiu        s7, s7, -1708
                  srai         a6, s7, 26
                  srai         t1, t4, 27
                  srl          s2, a4, s8
                  addi         a6, a1, 992
                  srl          t0, zero, s7
                  xori         s2, s9, 1134
                  xori         t2, zero, -101
                  sra          a7, a3, s8
                  lui          s3, 44729
                  sll          gp, gp, s1
                  add          ra, t1, t1
                  srl          a7, t3, a4
                  andi         s9, s0, 1122
                  andi         t0, s1, -4
                  sub          zero, gp, gp
                  add          s6, a4, tp
                  lui          a2, 728685
                  sra          t5, a1, sp
                  sltiu        t0, tp, -1541
                  slli         t4, s7, 5
                  add          s6, t4, s4
                  and          a2, a3, t1
                  sltu         s8, s7, a7
                  add          a2, zero, gp
                  xor          ra, s9, zero
                  andi         ra, a3, -1548
                  nop
                  srli         ra, zero, 0
                  sltiu        t2, s9, 936
                  sub          s7, t0, a7
                  sub          t0, t5, s6
                  sra          s3, a5, a2
                  nop
                  ori          s10, s0, 150
                  srli         s5, t6, 9
                  srl          s0, a3, s3
                  srai         t2, s4, 27
                  slt          tp, t6, s6
                  and          s9, t6, t5
                  sub          s1, s0, s6
                  srl          t4, a4, a0
                  auipc        a3, 227132
                  andi         a7, ra, 1666
                  sub          a3, s11, a4
                  slt          t2, a4, zero
                  sltiu        t6, t3, 1150
                  srai         a2, a1, 11
                  or           gp, tp, t0
                  nop
                  sll          s8, s3, s7
                  slli         s7, s10, 27
                  srai         gp, t3, 25
                  srai         t1, s8, 5
                  slti         s1, s10, 45
                  srai         s6, s0, 20
                  srai         zero, a2, 27
                  sltu         a6, s2, s9
                  ori          a7, s8, 410
                  and          gp, s4, s6
                  slli         t3, s8, 30
                  nop
                  slli         s2, s11, 19
                  srl          s8, t1, a4
                  sll          a4, t1, s8
                  xori         ra, a4, -1672
                  xor          a4, s3, s3
                  sltiu        s6, a0, 810
                  addi         t5, gp, -981
                  or           a2, a7, s11
                  slli         t3, s8, 22
                  and          s9, a3, ra
                  sra          a3, tp, t3
                  and          s6, zero, a6
                  sra          s5, t5, tp
                  or           s1, a0, a4
                  addi         a2, t4, -1337
                  lui          t4, 1003857
                  srai         t6, tp, 22
                  lui          s8, 156234
                  srli         a6, s9, 11
                  nop
                  sltu         s5, sp, a3
                  and          s0, zero, a3
                  add          s7, zero, a2
                  srli         a7, a0, 11
                  auipc        s0, 302584
                  or           t1, s4, a4
                  auipc        t4, 604232
                  nop
                  sltu         s11, t2, t2
                  sltiu        s10, a0, -181
                  srai         s0, s6, 22
                  or           t2, a3, s0
                  nop
                  sra          t5, a0, a4
                  sltu         a7, t5, s6
                  auipc        t2, 1020249
                  sltu         s11, t5, s4
                  sltu         s10, zero, zero
                  slti         a6, zero, 1432
                  slti         s5, s2, -1790
                  slti         sp, t5, 1130
                  slli         t6, zero, 25
                  srl          a6, tp, a1
                  srl          s8, s2, a7
                  slt          s5, a5, t5
                  srai         s2, s2, 16
                  ori          tp, a5, -799
                  slti         tp, zero, -301
                  andi         s10, s11, 1165
                  srli         a6, t0, 23
                  auipc        s7, 903958
                  ori          s11, s4, 1964
                  slti         s11, a2, 1115
                  slti         a6, zero, 242
                  add          s7, a5, s9
                  xori         a3, s1, -1308
                  sra          t2, t2, s3
                  sub          s2, a2, s5
                  auipc        s5, 560737
                  slli         tp, s2, 9
                  andi         t2, t3, 597
                  srli         t0, t5, 26
                  sltu         a2, t5, s2
                  addi         t6, s4, -871
                  xor          sp, s0, a5
                  sra          s9, s1, s10
                  xor          t3, a2, s7
                  and          tp, a3, s8
                  sll          a1, a7, zero
                  andi         t4, s5, 715
                  srl          a3, a1, t2
                  andi         s9, s10, -348
                  slli         sp, t4, 6
                  ori          a2, t0, -438
                  srai         s3, a2, 22
                  slti         t1, t1, -1650
                  sltiu        s10, s2, 626
                  slli         s11, zero, 26
                  xori         s0, s0, -1959
                  sub          s9, a1, s0
                  srai         t2, a5, 2
                  srli         s3, a2, 25
                  srai         sp, s6, 19
                  auipc        t6, 707663
                  sra          s3, a3, s5
                  xori         t1, s2, 1450
                  lui          s3, 887679
                  xor          t3, t4, t4
                  or           t5, s7, tp
                  slt          s0, sp, a5
                  andi         a3, s5, -2008
                  sra          s1, s6, tp
                  srli         s11, a6, 22
                  and          ra, zero, a0
                  sub          a3, s7, s7
                  addi         t5, t0, 655
                  srl          a3, t3, t2
                  sra          t5, a1, t1
                  auipc        t2, 145377
                  slti         s3, sp, 1937
                  slli         sp, s11, 21
                  sltu         s6, tp, ra
                  add          a4, t4, s1
                  nop
                  xor          t1, s7, s11
                  srai         t6, s4, 14
                  xori         gp, a3, -684
                  sll          a7, t0, t1
                  sub          gp, t2, s8
                  or           gp, gp, s3
                  sra          t1, a2, tp
                  xor          t3, t2, t6
                  sltu         s7, s10, t3
                  xor          a3, s3, t4
                  slt          t4, t2, s6
                  or           a2, t6, t6
                  addi         a1, s8, 50
                  slli         s10, a1, 15
                  srli         s0, t4, 23
                  xor          t1, gp, ra
                  ori          s10, sp, -553
                  slti         s11, zero, -795
                  add          a4, s5, sp
                  srl          s6, s11, a6
                  srl          t2, ra, s6
                  sra          t3, gp, ra
                  slt          t4, s4, s1
                  nop
                  xor          s2, a0, t4
                  sll          s8, s8, s11
                  add          s9, t3, s7
                  auipc        s7, 82582
                  nop
                  srli         a4, zero, 19
                  nop
                  sub          a7, s1, zero
                  sub          t4, s5, s9
                  add          t0, a2, a2
                  nop
                  andi         s10, a3, 172
                  slti         s6, s1, -1695
                  sltiu        t3, a3, -1804
                  sltu         s9, a3, sp
                  sub          zero, s1, a7
                  ori          s1, s6, -800
                  slt          s6, a5, sp
                  auipc        s2, 613049
                  slli         t6, sp, 12
                  addi         t5, ra, -1812
                  ori          a1, sp, 741
                  srl          s2, t5, s8
                  sra          a7, s0, ra
                  auipc        sp, 135095
                  ori          t0, s7, -1956
                  nop
                  srli         a6, a2, 19
                  sltiu        ra, s6, -1530
                  sltiu        a4, t1, 235
                  sub          s6, ra, t2
                  sra          zero, gp, s1
                  and          s1, a6, t4
                  srai         t0, a6, 21
                  and          gp, s4, s4
                  srl          t4, t5, t6
                  andi         s8, a6, -1210
                  addi         s3, s11, 781
                  nop
                  addi         t3, a1, 316
                  slli         a6, s2, 1
                  sltu         a6, a6, t6
                  or           s6, a6, tp
                  auipc        s11, 597686
                  or           t0, s3, s0
                  sub          t1, s1, ra
                  addi         a4, a5, 308
                  xor          a2, s8, s2
                  or           s1, t1, a1
                  or           t5, a6, a0
                  sltu         s6, a2, t0
                  sltu         s10, s5, a5
                  or           s1, s7, t5
                  nop
                  srai         a1, t6, 16
                  slli         s1, a3, 14
                  andi         a1, gp, 1291
                  auipc        t1, 159917
                  or           s5, gp, s9
                  add          t1, t0, s10
                  slti         t1, zero, 1122
                  srl          t1, t3, s5
                  slli         t1, a0, 22
                  xor          a6, a1, s5
                  nop
                  slti         a1, gp, 1864
                  sub          gp, a2, a4
                  srli         a3, zero, 7
                  ori          zero, s8, 554
                  slti         a6, s8, -1216
                  lui          t0, 993464
                  slli         s11, a4, 6
                  lui          t0, 315140
                  slt          s2, ra, a6
                  ori          s0, t1, 438
                  slli         t5, s1, 19
                  lui          zero, 945044
                  and          gp, a4, a5
                  lui          t6, 1047887
                  xor          s11, a0, a2
                  slli         a7, s0, 5
                  srl          t5, s0, a0
                  sltu         s10, a0, a2
                  slti         a6, t2, 496
                  addi         s6, s2, -895
                  nop
                  nop
                  sll          t1, a6, s10
                  srai         a6, s2, 29
                  sub          t5, t4, s1
                  or           a7, a6, s4
                  xor          ra, s10, s3
                  srli         s7, s8, 3
                  slti         s6, gp, 1181
                  sltu         s1, s3, t6
                  srl          a2, s6, zero
                  and          a3, a2, zero
                  srli         s7, a0, 9
                  andi         t4, a2, 304
                  sub          sp, s3, a2
                  slt          s8, s1, tp
                  addi         a2, t4, -707
                  sub          s10, a7, s1
                  andi         s7, a2, 1546
                  ori          sp, t1, 533
                  sltiu        s3, s9, 1045
                  slli         sp, a7, 7
                  sltu         t2, gp, s1
                  auipc        ra, 327249
                  srl          a7, t1, s1
                  sltiu        s7, s2, 264
                  srl          s11, a2, a1
                  addi         s9, s11, 12
                  lui          a6, 918600
                  or           t0, t5, sp
                  slli         s5, t6, 29
                  xori         t4, a6, -1158
                  sltu         a4, sp, s5
                  xor          tp, s9, tp
                  nop
                  add          s6, sp, s5
                  slti         a4, s2, 65
                  sltu         t3, zero, a5
                  andi         a1, a1, -1037
                  addi         s3, a7, -1128
                  or           a3, t1, t0
                  andi         s10, a0, -2013
                  xor          s3, sp, t3
                  sll          t3, tp, t4
                  xori         zero, a2, -1496
                  xori         a2, s0, -1382
                  sub          t2, tp, s5
                  sll          s0, s6, t1
                  sub          s1, a3, a0
                  nop
                  srl          s1, t4, s1
                  sltu         t6, s1, s8
                  or           a4, s10, s7
                  ori          a6, s7, 439
                  srai         s3, sp, 15
                  slt          t2, a1, a3
                  sub          zero, a0, s1
                  slt          gp, s3, s8
                  sll          a6, s10, a1
                  slti         s6, s8, -1131
                  sra          tp, t1, sp
                  sltiu        a6, s3, -623
                  addi         a7, a4, 433
                  sltiu        gp, s7, 605
                  sra          s0, t6, t6
                  srai         s11, s4, 24
                  nop
                  srl          s0, t4, s5
                  ori          s3, s11, 706
                  srl          s5, a1, a6
                  srai         s6, t1, 15
                  slt          a2, s5, ra
                  andi         s0, s1, -1571
                  and          t5, t4, a3
                  nop
                  or           gp, t0, t0
                  addi         t5, t3, -1443
                  andi         zero, t1, 304
                  xori         t1, a2, -1093
                  srai         s2, s4, 12
                  xori         t1, a3, -1491
                  slti         s8, s8, 1107
                  slti         s10, s5, 581
                  slti         a7, s7, -630
                  addi         s9, a7, -935
                  sll          s7, a0, a7
                  sra          gp, s7, zero
                  slli         a6, s0, 7
                  slli         zero, zero, 12
                  add          a3, a6, s10
                  and          s9, a2, s7
                  nop
                  slti         sp, s9, 1103
                  sltiu        t1, s8, 633
                  srli         s7, t6, 30
                  xor          s5, gp, tp
                  xor          s9, zero, ra
                  srai         s0, t4, 29
                  slt          t1, t4, s8
                  slli         s2, s7, 0
                  sltiu        a1, tp, 1984
                  sra          a3, s5, t5
                  addi         t1, t2, -706
                  auipc        t4, 1011077
                  xor          t1, t4, t6
                  nop
                  sub          a4, ra, s5
                  sub          t3, t0, tp
                  add          s2, s6, s5
                  slt          zero, t4, a5
                  slt          t1, s6, s11
                  or           t0, gp, t2
                  xor          s9, s8, s10
                  slli         t3, s10, 13
                  or           t1, t4, a7
                  addi         s6, a6, 566
                  nop
                  add          a4, ra, t1
                  and          s6, a7, s6
                  sra          gp, zero, s0
                  sll          t3, s5, a0
                  sltiu        s2, s4, 986
                  add          a2, t4, t3
                  slli         s10, t2, 16
                  xori         s0, t4, -664
                  sra          s1, a0, s5
                  auipc        s6, 646514
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s3, 0x7f7b77ee
                  li           a3, 0x0
                  li           a7, 0x80000000
                  li           a4, 0xcc56b768
                  li           s1, 0x0
                  li           tp, 0x6faa099b
                  li           s5, 0xa82d76f5
                  li           s9, 0x80000000
                  li           t3, 0x0
                  addi         tp, a7, 1624
                  sub          a4, a3, s5
                  sub          s5, tp, a3
                  sub          s10, s10, s10
                  lui          s1, 481167
                  lui          s9, 155969
                  add          s3, s5, s5
                  add          s10, a7, a7
                  nop
                  sub          a3, s9, a3
                  auipc        s3, 174679
                  lui          s3, 54442
                  addi         a7, s10, 836
                  addi         t3, s9, 1988
                  add          s1, a3, a3
                  addi         s10, a7, -1135
                  add          a3, s3, s3
                  sub          s3, s1, s1
                  sub          tp, s1, tp
                  lui          t3, 150831
                  lui          t3, 254536
                  addi         a4, tp, -1917
                  auipc        s1, 959083
                  sub          t3, s3, s9
                  lui          s3, 769269
                  lui          s10, 1001085
                  sub          s9, a7, t3
                  addi         a4, s3, 1772
                  auipc        t3, 421207 #end riscv_int_numeric_corner_stream_1
                  slti         t4, t5, -1674
                  sltiu        s8, ra, 644
                  or           t5, gp, a3
                  srli         s2, gp, 9
                  sra          t3, tp, gp
                  andi         a6, t0, 288
                  addi         a1, s5, 1678
                  nop
                  slli         t6, s8, 1
                  sub          s11, sp, a3
                  auipc        a7, 198523
                  srli         t6, a7, 25
                  ori          a6, t6, -1610
                  lui          s10, 170447
                  sltiu        s2, s3, 808
                  andi         s10, a2, -136
                  auipc        s11, 11785
                  add          s9, s6, t2
                  andi         t0, t0, -489
                  andi         a4, s4, 1019
                  sra          t1, t2, s1
                  xor          a6, s3, s9
                  or           s1, s11, s9
                  and          s0, t3, s6
                  sra          t3, a0, a4
                  sra          s0, s3, t6
                  add          s3, t1, zero
                  slti         a4, s10, -199
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           gp, 0xffffffff
                  li           s9, 0x80000000
                  li           s3, 0x87a0bd6d
                  li           a6, 0x0
                  li           t1, 0xffffffff
                  li           a3, 0x0
                  li           sp, 0xffffffff
                  li           s5, 0xe4f22a29
                  li           tp, 0x80000000
                  addi         gp, t1, -1722
                  lui          a3, 56091
                  addi         t1, s1, 1794
                  lui          t1, 545262
                  addi         sp, s3, -400
                  auipc        s5, 266312
                  sub          t1, t1, s1
                  addi         gp, s1, -1531
                  add          t1, sp, gp
                  sub          s3, s1, gp
                  addi         s3, s5, 96
                  nop
                  lui          tp, 1041460
                  lui          s1, 490271
                  nop
                  auipc        s5, 167025
                  sub          tp, s1, a6
                  lui          t1, 457900
                  add          s9, s5, t1
                  addi         tp, a6, 1755
                  nop
                  lui          s9, 403084
                  add          sp, s5, t1
                  sub          sp, t1, s9 #end riscv_int_numeric_corner_stream_4
                  slli         s8, s5, 0
                  auipc        t1, 806805
                  addi         a7, t3, -363
                  xori         s1, s11, -457
                  srl          a4, s9, s10
                  xori         s0, a2, -850
                  and          a6, s11, s1
                  xori         a3, s1, -573
                  xor          a4, s5, t2
                  andi         s1, a5, 1068
                  xori         s10, a4, 1251
                  srl          ra, t4, s3
                  slt          s1, a2, sp
                  xori         sp, t5, -375
                  xor          a4, t6, s1
                  slli         sp, a6, 4
                  li           s8, 0x61812a7c #start riscv_int_numeric_corner_stream_16
                  li           t3, 0xffffffff
                  li           a2, 0xeb41f822
                  li           gp, 0x3263fb25
                  li           a1, 0x0
                  li           t6, 0xffffffff
                  li           t5, 0x0
                  li           s2, 0xd41d729
                  li           t1, 0x80000000
                  li           t0, 0x80000000
                  nop
                  addi         gp, t1, 1040
                  auipc        t6, 974517
                  lui          a1, 200670
                  lui          s8, 576012
                  add          a1, a1, s8
                  add          s2, gp, gp
                  nop
                  sub          a1, t5, gp
                  sub          t1, t5, s8
                  nop
                  nop
                  sub          a1, a2, s2
                  nop
                  nop
                  nop
                  lui          t6, 130556
                  lui          gp, 559611
                  add          t1, t6, a1
                  addi         t1, a1, 132
                  lui          s8, 373321
                  sub          t5, t5, a1
                  nop
                  sub          s8, s2, gp
                  lui          gp, 43650
                  auipc        s2, 542652
                  addi         s2, t0, -122
                  auipc        t3, 480498
                  addi         t0, gp, -1177
                  addi         gp, a2, -1988 #end riscv_int_numeric_corner_stream_16
                  slt          tp, tp, gp
                  slli         a4, a0, 22
                  xor          s1, a4, t1
                  srl          s7, sp, ra
                  sll          t2, s0, t2
                  srai         a7, s0, 23
                  and          s10, s8, t2
                  xori         t3, ra, -742
                  srl          zero, s11, a3
                  nop
                  srai         s6, a5, 2
                  and          s1, s0, t3
                  sra          t6, s4, s5
                  xori         t1, t0, 1716
                  srli         s10, s8, 17
                  nop
                  nop
                  xori         s11, s3, 1122
                  slli         t0, a3, 29
                  srl          s10, t6, s0
                  srli         ra, t0, 15
                  and          t1, t2, s3
                  nop
                  andi         gp, a6, 1340
                  ori          s9, s1, 1812
                  or           gp, s10, t1
                  add          s5, a1, a5
                  slt          sp, a0, s3
                  nop
                  slli         t1, s2, 26
                  and          t0, s4, a7
                  nop
                  slli         s6, a2, 16
                  srl          t0, t0, t5
                  sltiu        a6, s8, -617
                  sltu         s1, a4, t6
                  lui          s6, 351424
                  sltiu        s9, s9, 845
                  slti         a7, sp, -208
                  ori          a2, t0, -1745
                  sltiu        a4, s5, -685
                  srli         a2, s6, 6
                  sltu         s7, s5, a3
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s0, 0x80000000
                  li           a1, 0x0
                  li           t2, 0xffffffff
                  li           s10, 0x80000000
                  li           t6, 0x0
                  li           t5, 0xe359bc82
                  li           a3, 0x5d88d8e9
                  li           gp, 0xffffffff
                  li           a6, 0xffffffff
                  add          t4, gp, t6
                  nop
                  lui          t6, 902410
                  nop
                  sub          t5, t5, a3
                  sub          a1, t2, t5
                  addi         a3, t4, -1354
                  add          a1, t5, gp
                  lui          t2, 440099
                  lui          t6, 996878
                  nop
                  lui          s10, 635365
                  auipc        t4, 749118
                  auipc        t5, 813370
                  nop
                  sub          gp, s10, s10
                  lui          t5, 398618
                  auipc        s10, 274441
                  add          a6, t4, s10
                  sub          gp, t6, s10 #end riscv_int_numeric_corner_stream_0
                  xor          t5, a0, sp
                  lui          gp, 901613
                  auipc        a3, 492084
                  slli         zero, a6, 30
                  sll          s7, t0, a6
                  slt          a2, t6, t0
                  sll          sp, a2, s1
                  slt          a6, a2, tp
                  and          t5, a2, s10
                  ori          a2, a6, -321
                  xor          tp, a3, a5
                  addi         s0, zero, -202
                  ori          s11, t2, -1168
                  sub          t4, gp, a6
                  sltu         t1, t6, t6
                  andi         s0, t5, 216
                  xori         a6, a7, 901
                  slt          a3, t1, a2
                  slt          a6, s11, s8
                  srl          s11, a1, s3
                  or           sp, a6, t3
                  srl          a4, t6, s11
                  andi         t6, s4, -2045
                  auipc        a2, 270260
                  xor          a3, zero, t4
                  ori          s6, a1, -1161
                  sub          gp, s1, a0
                  andi         t0, a2, -704
                  andi         t4, s1, 1075
                  ori          s2, a7, -1136
                  slli         s5, s4, 29
                  slt          zero, a2, s1
                  ori          sp, zero, -1145
                  slti         t4, t5, 134
                  srl          t2, a6, sp
                  sub          t0, s6, a1
                  nop
                  nop
                  sub          s3, a3, a5
                  slti         t2, gp, -1916
                  sub          s2, t3, zero
                  sltu         gp, s0, s8
                  auipc        s8, 52162
                  and          a2, a5, a3
                  srl          a1, a0, s5
                  andi         s3, zero, 103
                  nop
                  slli         s1, s5, 29
                  sub          s11, t0, tp
                  srl          a3, s7, t4
                  nop
                  slt          a1, s1, a6
                  slli         t0, a4, 30
                  lui          t0, 862549
                  sll          s7, t3, t6
                  srl          t0, a0, a1
                  srl          a7, s3, a5
                  ori          ra, t6, 336
                  sll          sp, s1, t1
                  srai         s1, tp, 22
                  auipc        s11, 106277
                  sra          ra, zero, t1
                  and          s1, a6, s0
                  andi         s5, s3, 1888
                  slli         a3, a1, 7
                  slli         s7, t1, 16
                  sltu         t6, s1, ra
                  srli         tp, s0, 14
                  xor          s2, zero, s2
                  slli         s10, ra, 18
                  xori         zero, s2, 889
                  xor          ra, s7, a4
                  or           gp, a2, s6
                  and          s3, s10, sp
                  slt          t2, a0, a6
                  ori          a2, s2, -1293
                  auipc        a1, 945815
                  or           t1, s7, tp
                  sll          a1, s5, a2
                  ori          a4, sp, -2048
                  ori          sp, a5, -336
                  sub          t5, t1, t4
                  and          gp, s5, a7
                  xori         sp, a1, -129
                  sra          t0, a7, s5
                  srli         t2, sp, 31
                  slti         s1, t3, -595
                  andi         s6, a1, -1838
                  sra          s7, a2, s8
                  sra          t1, s0, sp
                  auipc        s2, 685777
                  slli         s10, s4, 28
                  addi         t1, a5, 1472
                  auipc        t0, 779457
                  srli         s8, a4, 31
                  andi         s1, a3, -581
                  or           a1, s2, a5
                  sll          a3, gp, s4
                  sltu         gp, s2, ra
                  nop
                  ori          s1, a6, -1485
                  add          s8, s5, s2
                  add          sp, t3, zero
                  auipc        t4, 265069
                  srl          gp, t2, s9
                  slli         ra, t0, 13
                  sll          t0, s3, t4
                  xori         t6, a3, 771
                  add          ra, zero, a0
                  sltu         t5, s10, ra
                  slli         sp, zero, 1
                  sll          s1, s7, t3
                  srai         t0, t6, 3
                  sll          s8, t5, a6
                  auipc        s5, 111816
                  sltiu        s1, gp, -1301
                  addi         t1, t4, 1311
                  sub          s10, sp, a4
                  sll          t4, s5, a4
                  sub          t3, t3, gp
                  xori         s1, t0, 835
                  sub          s11, a6, a5
                  or           sp, ra, t4
                  sltiu        s2, s7, -1470
                  add          s8, a7, s5
                  srli         a7, a7, 18
                  and          zero, s10, a1
                  add          a2, a7, s4
                  add          t5, s0, a2
                  sll          a3, s11, t3
                  or           t1, s3, t2
                  srli         s9, t2, 27
                  sltiu        sp, a6, 2014
                  add          a3, a7, a2
                  auipc        a1, 340748
                  nop
                  sll          s9, tp, a2
                  addi         tp, s6, 481
                  addi         s10, a1, -679
                  andi         a6, t3, 1202
                  sra          s10, zero, s0
                  and          a4, s8, s9
                  srai         s1, a1, 10
                  and          gp, s2, a6
                  lui          s11, 555187
                  xori         s2, gp, -276
                  srai         t0, sp, 24
                  sltiu        s8, t1, -1453
                  srli         s7, a1, 29
                  srai         a4, s3, 13
                  sll          a1, a5, t4
                  lui          s6, 850848
                  srai         t3, a5, 11
                  add          a1, s4, s9
                  sltu         s1, t0, sp
                  addi         s5, a5, -892
                  sltiu        sp, a6, 1517
                  srai         t2, s2, 27
                  and          s0, gp, tp
                  andi         zero, t2, -1500
                  sltu         s8, s2, t0
                  sub          t3, t6, s3
                  slti         gp, s7, 1433
                  auipc        t5, 381893
                  nop
                  and          t0, a3, t4
                  andi         t6, s9, 1031
                  slti         s7, t5, -134
                  sub          zero, t2, s9
                  xor          s6, a4, s3
                  and          s2, ra, gp
                  add          a1, a6, a1
                  srl          gp, t1, s0
                  or           s8, t2, a1
                  sub          s7, zero, sp
                  addi         a3, t1, 1988
                  ori          zero, t0, -1557
                  auipc        s10, 4703
                  and          t2, sp, t1
                  or           a2, a6, s2
                  xori         s3, ra, 374
                  slli         s2, s6, 14
                  lui          t5, 604557
                  add          t3, gp, t5
                  sub          s9, zero, sp
                  lui          s8, 438721
                  andi         a3, s8, -810
                  xor          a6, s6, a4
                  sll          t1, t1, s0
                  addi         a6, a4, 1857
                  nop
                  sltiu        a6, s1, 1012
                  srl          s11, s6, sp
                  slli         sp, s11, 21
                  nop
                  slli         a7, t4, 31
                  auipc        s11, 999787
                  sltu         t6, ra, s5
                  slt          s9, zero, s9
                  srli         s3, a3, 0
                  slt          t3, a5, s7
                  andi         s11, a3, 172
                  sra          ra, t1, s7
                  srl          s2, s11, t6
                  xor          a3, t5, sp
                  add          s3, a4, a3
                  sub          s7, t1, s0
                  auipc        s8, 235083
                  xor          t0, s7, tp
                  add          a2, sp, s10
                  nop
                  slli         t3, s9, 7
                  srli         a6, a1, 3
                  lui          s6, 64685
                  srai         a6, sp, 27
                  slti         a3, a4, -679
                  sub          s6, s5, s0
                  sub          s10, s2, a7
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           sp, 0x24da8248
                  li           t3, 0xffffffff
                  li           gp, 0xffffffff
                  li           a3, 0x12d81cbe
                  li           s9, 0xffffffff
                  li           t0, 0xe0b9927c
                  li           s6, 0x0
                  li           s1, 0x80000000
                  li           s7, 0x34c75d8d
                  add          s6, s6, t0
                  lui          s6, 850708
                  nop
                  addi         a3, t6, -1676
                  sub          s7, t3, s1
                  addi         a3, s7, -1332
                  addi         sp, t0, -855
                  addi         s6, gp, -172
                  addi         sp, s9, 444
                  addi         s1, a3, -1287
                  sub          gp, t0, t3
                  addi         s7, s9, 1036
                  add          t3, a3, s9
                  lui          s9, 52514
                  nop
                  add          s7, t6, t6
                  add          s1, a3, gp
                  auipc        t0, 344678
                  add          sp, gp, s6
                  sub          s1, t6, t3
                  lui          gp, 1030288
                  auipc        sp, 450280
                  auipc        s1, 988527 #end riscv_int_numeric_corner_stream_12
                  sltiu        s9, gp, 777
                  sltu         s8, a1, a1
                  xori         tp, a0, 308
                  xor          tp, t1, tp
                  srai         a6, a6, 21
                  or           sp, s7, a0
                  sra          a6, a0, t6
                  slt          s2, t2, a3
                  nop
                  sub          a4, a0, a6
                  sltiu        s6, t2, 543
                  auipc        s11, 44242
                  nop
                  xor          t4, t3, s5
                  nop
                  ori          t6, s7, -1767
                  sll          s3, t0, s5
                  add          a6, t2, t3
                  slti         s6, t0, 629
                  add          tp, s3, t5
                  sll          t3, s2, a6
                  and          t5, tp, t6
                  sltu         zero, t1, t2
                  ori          s7, ra, -1332
                  sra          gp, a7, s0
                  sltu         t1, t1, a4
                  slti         t0, t0, 509
                  ori          s11, s4, 300
                  slti         t3, sp, 645
                  add          t4, s2, t0
                  xori         s9, s11, -535
                  sra          a6, a1, tp
                  and          s1, a6, t4
                  andi         s7, s1, -52
                  sra          s8, s6, t3
                  sll          s7, s1, a5
                  sltiu        s5, s10, -423
                  sltu         tp, s3, tp
                  add          s8, a1, a4
                  slt          s0, t6, s7
                  sltiu        s8, a4, -1277
                  srli         t4, s4, 21
                  or           s6, s0, s7
                  srl          s7, a6, a7
                  or           t6, t6, s4
                  xori         zero, sp, -1787
                  ori          t4, t5, -275
                  and          t5, s2, a0
                  auipc        t3, 12524
                  sra          t0, t1, a4
                  sll          t2, s2, s0
                  srl          a1, s0, s7
                  sub          s5, a5, s4
                  xori         s7, s4, 21
                  lui          zero, 148002
                  slti         a2, t5, -1509
                  lui          t6, 130455
                  sll          t6, s10, s2
                  add          zero, ra, gp
                  and          s10, gp, gp
                  lui          s7, 710259
                  slt          t1, t0, a3
                  auipc        s6, 35177
                  addi         t5, s4, 569
                  xori         s7, s6, -1956
                  sub          gp, s11, s3
                  sltu         s8, t2, s3
                  sra          s11, s3, a3
                  nop
                  xor          s7, t3, t6
                  nop
                  srl          zero, s2, t4
                  or           t4, t4, s4
                  nop
                  and          s8, t2, s8
                  add          a4, t6, t6
                  or           s11, s10, a0
                  andi         t6, ra, 1391
                  or           a7, s5, a3
                  andi         a2, t6, 64
                  sll          a3, t6, s4
                  srli         t3, zero, 7
                  xor          t3, a3, a5
                  slti         s2, gp, 590
                  sra          s10, t2, s2
                  and          gp, a6, s6
                  srl          sp, a5, t0
                  slt          s6, s5, t3
                  add          a1, ra, tp
                  sra          s6, s5, s0
                  sll          sp, s0, zero
                  sra          a3, a4, t6
                  srli         t5, s8, 6
                  xori         t1, a0, 1747
                  nop
                  sll          s1, t4, s2
                  andi         s7, s1, 32
                  srai         s9, a6, 20
                  sub          ra, t2, a3
                  addi         t3, s9, 1927
                  srli         tp, s3, 11
                  xori         s6, s6, -1229
                  and          sp, a2, a0
                  andi         ra, a3, 17
                  sltiu        t5, a3, 292
                  add          ra, t1, a0
                  addi         a2, s9, 1219
                  xori         t3, s4, 43
                  srli         s0, s3, 16
                  srli         t4, t6, 10
                  slli         a1, t6, 1
                  auipc        t6, 968259
                  xori         s8, a3, 1140
                  lui          a4, 988491
                  and          a3, s4, t0
                  add          t0, s2, t2
                  srl          t1, s6, tp
                  lui          t4, 405604
                  sltu         t4, s9, s10
                  slt          a6, s7, ra
                  and          s3, t2, t0
                  sltu         s6, a4, a4
                  sltiu        gp, tp, -952
                  auipc        s11, 34096
                  auipc        t3, 603864
                  sub          s5, s9, a2
                  slt          a4, tp, s9
                  sltu         a6, s8, s7
                  add          gp, s0, s4
                  xori         tp, a2, -98
                  and          t4, t4, tp
                  xor          a3, s5, s11
                  sll          a4, s8, s3
                  sll          a3, a1, gp
                  srai         t0, t4, 14
                  sra          t3, s3, a4
                  andi         a6, s2, 101
                  andi         s10, a5, -95
                  addi         t5, s10, 1057
                  srli         t4, s3, 27
                  addi         t5, tp, -1938
                  slli         zero, a5, 4
                  and          t4, s1, s8
                  and          a2, s1, s11
                  slt          s3, a0, a1
                  sll          t1, ra, sp
                  srli         s2, s11, 25
                  srai         s1, t2, 14
                  sub          a2, a1, t6
                  sub          s0, zero, gp
                  slti         s1, s2, 56
                  add          a7, tp, a0
                  srl          a4, s7, a5
                  addi         a7, t6, -43
                  slt          a6, s10, s10
                  nop
                  sub          sp, t5, t6
                  slli         s3, s7, 22
                  sltiu        s10, a5, -1231
                  and          a1, s8, t5
                  addi         tp, t1, 1201
                  srl          s0, s7, s2
                  andi         a2, gp, -1618
                  or           a3, s6, t6
                  andi         a3, s3, 1883
                  addi         s6, t6, 663
                  slli         s3, t5, 12
                  sra          s1, a0, s10
                  ori          t1, a1, -1423
                  andi         s0, s0, -1441
                  slt          a2, s8, a0
                  nop
                  slti         a4, zero, 2023
                  srl          s1, s1, a7
                  sltiu        s2, s0, 199
                  sub          t2, s8, t3
                  srli         s6, zero, 13
                  srli         s9, t6, 25
                  slti         sp, s11, 1632
                  lui          a3, 918317
                  addi         s3, a2, -463
                  sltu         a3, t2, a1
                  nop
                  xor          t4, a7, sp
                  slti         t5, t5, 276
                  srli         a2, s1, 5
                  nop
                  nop
                  xori         tp, a4, -950
                  sub          tp, s3, s10
                  nop
                  xori         s3, s9, -2027
                  srl          s6, t6, a4
                  ori          s10, t2, 829
                  auipc        a4, 532131
                  addi         s0, a3, 1452
                  or           gp, a3, sp
                  nop
                  slt          s9, sp, s3
                  sra          a1, s8, s9
                  sll          a6, s11, t0
                  sltu         t6, t3, s2
                  sll          gp, s8, a0
                  xori         ra, a1, 102
                  srli         gp, s10, 29
                  addi         s11, t5, 1092
                  srai         t3, s1, 12
                  sltiu        a3, a1, 1556
                  xori         sp, t6, -319
                  xori         zero, t4, -715
                  addi         a7, s0, -1829
                  slt          t0, a5, s6
                  sltu         s11, s8, a1
                  srai         t4, zero, 18
                  addi         a2, a0, 450
                  andi         t5, s6, 2021
                  nop
                  slli         s8, t4, 17
                  ori          a3, tp, -1378
                  sltu         s7, s6, s1
                  sub          s9, zero, t5
                  sltiu        gp, t2, -1457
                  srl          a7, a1, a0
                  slt          s7, s1, a0
                  add          tp, gp, ra
                  xor          s9, tp, s2
                  srl          tp, sp, t4
                  sltiu        s10, s3, -143
                  xor          s0, t3, t4
                  xori         ra, a3, -1018
                  nop
                  xori         s7, a4, -1813
                  xori         a4, a0, 1116
                  slt          a3, t4, s0
                  auipc        t6, 385788
                  and          s6, a0, t6
                  sltu         s2, s10, t5
                  auipc        a4, 262352
                  srli         a2, s1, 24
                  lui          zero, 523950
                  andi         ra, t3, -151
                  sll          t2, s6, s8
                  or           s2, s1, a3
                  xori         a6, a0, -454
                  and          s2, t6, a6
                  or           s2, s7, t4
                  and          a6, s8, s8
                  xor          a6, s7, tp
                  addi         s7, gp, -1572
                  sltu         t6, t3, s5
                  sub          t6, zero, s0
                  slli         t6, t3, 23
                  xor          a1, t4, t4
                  auipc        a1, 323345
                  add          s6, t2, s9
                  lui          s9, 61482
                  slli         s9, s3, 0
                  srli         s2, t5, 14
                  sltiu        a6, sp, 1042
                  addi         t3, s7, -1343
                  lui          s3, 200241
                  auipc        t1, 247347
                  add          s8, s4, s8
                  srai         a6, s5, 5
                  add          s2, t6, t6
                  lui          s5, 1019673
                  slli         gp, s1, 24
                  nop
                  slti         sp, a0, -966
                  srai         t3, s7, 31
                  nop
                  xor          a4, a1, gp
                  or           s7, s2, sp
                  addi         s10, s9, -1645
                  slt          t1, zero, t6
                  sltiu        a3, a0, 824
                  slti         s0, t2, -1395
                  add          s11, zero, ra
                  sltu         t6, a4, s1
                  add          s3, t6, a7
                  lui          a3, 891872
                  srli         a2, s1, 27
                  or           s8, s2, a5
                  and          t1, gp, s3
                  slti         s11, a4, 528
                  addi         tp, a1, -1841
                  andi         t3, t2, -1
                  lui          s2, 298138
                  srli         s1, tp, 4
                  nop
                  lui          gp, 639164
                  and          s7, a4, s9
                  add          t1, t3, a4
                  slti         s1, s11, -1169
                  sll          a7, t1, a4
                  sll          a3, t2, a4
                  slli         s2, ra, 9
                  ori          s3, a1, -679
                  and          s11, s4, s0
                  and          a4, t2, t6
                  sll          t1, s7, t5
                  slli         a6, s0, 8
                  sll          t3, s4, s9
                  sll          s5, t0, a6
                  and          t5, ra, a7
                  lui          sp, 126621
                  addi         s3, t6, 854
                  addi         s2, t1, -1289
                  sll          t5, a2, a2
                  sltiu        a3, s5, -80
                  ori          t6, s0, -1573
                  srli         s11, zero, 0
                  slti         s1, a1, -25
                  slli         s1, s9, 27
                  andi         a7, ra, -722
                  andi         a6, sp, 884
                  srl          s3, s0, s11
                  lui          zero, 708101
                  nop
                  xor          tp, s2, a3
                  sra          a3, s4, a3
                  and          t6, s5, a1
                  slti         s1, s4, -610
                  xori         gp, s2, -510
                  and          s9, a2, a2
                  sra          sp, s4, a0
                  ori          s3, t0, 2006
                  slti         tp, t6, 1339
                  xor          a4, a4, t2
                  slti         s6, t2, -1250
                  srai         s3, s11, 7
                  srl          a4, s2, a7
                  auipc        t6, 636410
                  auipc        s3, 417073
                  sra          t4, s3, a5
                  add          t0, a4, a5
                  auipc        a2, 692520
                  or           s5, a7, ra
                  sra          t2, a6, a4
                  and          s9, s11, a3
                  ori          a4, s9, -811
                  sltu         s1, s9, a6
                  ori          s8, a3, 1542
                  srli         t0, t1, 19
                  auipc        t0, 920056
                  ori          s0, t4, 351
                  slli         a2, t3, 6
                  andi         s5, gp, 1345
                  xori         t6, a5, 1614
                  sltu         s5, t6, zero
                  andi         a3, a6, -1125
                  ori          s6, zero, 1357
                  srai         sp, t5, 27
                  sra          s3, t6, s1
                  srl          tp, a4, s10
                  auipc        s11, 39806
                  sltu         a1, s10, a7
                  slt          t0, t3, t3
                  slli         a4, a1, 27
                  xor          s1, s2, sp
                  srai         a4, gp, 27
                  slli         a7, ra, 5
                  or           s5, a4, t1
                  addi         t6, sp, -236
                  srli         a7, a6, 26
                  srai         zero, s2, 27
                  slli         s10, t1, 16
                  xor          s9, tp, zero
                  srai         s0, t2, 19
                  sltiu        sp, t5, -102
                  addi         zero, s0, -1231
                  sll          t0, s4, sp
                  srai         t3, s11, 25
                  slli         s1, a1, 13
                  sll          s0, gp, t1
                  sra          tp, a6, t0
                  sra          s10, t6, s8
                  addi         s9, s2, -298
                  srl          s5, a3, s2
                  sltu         t0, sp, s0
                  srai         t6, t6, 11
                  sra          zero, t1, a4
                  sll          s6, a5, s10
                  sub          a4, tp, a6
                  xor          ra, t1, s6
                  add          a4, tp, a3
                  srai         tp, t2, 8
                  srli         s9, a4, 23
                  add          s2, zero, a7
                  xori         a2, a6, -1972
                  addi         gp, s2, 1490
                  andi         t5, t4, -596
                  sltu         tp, t4, a1
                  sltu         s10, s11, s2
                  add          t0, sp, s6
                  slli         a6, zero, 31
                  and          t4, s7, s1
                  xor          t2, s8, s8
                  nop
                  lui          a4, 888734
                  add          s5, a2, s9
                  srai         a1, gp, 9
                  slti         s5, a0, 1819
                  ori          s8, a0, -1369
                  sra          tp, t1, t0
                  sll          t3, a7, t5
                  srl          t1, a3, a6
                  add          t3, a3, t6
                  ori          sp, a4, -1592
                  ori          a7, s10, 1461
                  sra          s3, s8, s0
                  sltiu        ra, zero, 1133
                  addi         s6, t3, 1247
                  sra          tp, t2, a6
                  and          t5, t3, s2
                  srai         sp, a3, 30
                  sltiu        tp, a7, -558
                  nop
                  srli         s6, s11, 28
                  add          s5, s11, a5
                  nop
                  and          a2, t2, t3
                  sltiu        a7, t5, -36
                  srli         s6, s0, 8
                  nop
                  sltu         a2, s4, a2
                  lui          t6, 281778
                  slt          a7, s6, t1
                  ori          gp, t1, -1650
                  lui          tp, 929515
                  slti         s3, s6, 971
                  andi         s7, a6, -1138
                  xor          s9, s9, sp
                  add          s3, a5, s9
                  srl          t6, gp, s9
                  and          s5, zero, gp
                  srl          s5, s4, a4
                  sll          s2, s3, ra
                  and          t1, gp, a6
                  xor          t3, a3, a7
                  slt          gp, a5, s7
                  slti         a7, a4, 1650
                  or           a2, a3, zero
                  add          s1, t4, a1
                  andi         a1, s5, -1786
                  addi         s0, a2, 1739
                  andi         s6, a4, 202
                  slli         t5, s2, 22
                  add          t0, a1, s6
                  sra          t0, s3, s6
                  sub          t6, t2, s0
                  add          t4, s10, t1
                  nop
                  srli         a1, zero, 20
                  slli         a2, s3, 19
                  or           t0, s1, a1
                  andi         zero, a3, -1403
                  slli         t2, a3, 26
                  srl          tp, t4, s2
                  add          t3, s8, a4
                  srl          t1, s0, s9
                  xor          s6, s3, t3
                  slli         t5, tp, 12
                  slti         t4, t3, -128
                  xori         a7, tp, -60
                  lui          a4, 912919
                  slli         ra, t4, 7
                  auipc        zero, 228401
                  sltiu        s7, t3, -682
                  nop
                  slli         t0, s6, 27
                  nop
                  xori         t4, s0, 444
                  srli         gp, t3, 28
                  lui          s3, 693174
                  lui          a3, 337599
                  srl          a6, s0, t6
                  sub          t2, zero, a1
                  ori          a6, a0, 554
                  lui          t3, 347063
                  slli         s9, ra, 4
                  sltiu        t0, t6, -1158
                  auipc        t1, 944994
                  srl          s2, s4, a4
                  slt          t2, a3, a1
                  nop
                  slti         s6, zero, 1588
                  add          tp, s2, sp
                  lui          s2, 64436
                  addi         gp, a7, -1907
                  or           gp, t5, s8
                  sltu         s3, t4, t5
                  srli         a6, t1, 23
                  or           s1, s2, ra
                  srl          sp, t3, gp
                  sll          s3, gp, s10
                  add          t3, s0, a0
                  or           s1, a5, t3
                  ori          a7, t4, -1448
                  addi         s6, t5, 872
                  sra          a4, s2, t3
                  add          gp, t0, a5
                  lui          a6, 396441
                  sra          a2, zero, s4
                  xor          tp, s6, a6
                  slti         t2, a0, -1941
                  nop
                  slti         a2, tp, -927
                  srai         s7, a1, 14
                  add          t6, s2, zero
                  xori         s9, a3, -1187
                  slti         sp, ra, 1399
                  sub          s8, t3, s0
                  srl          s3, s9, s7
                  add          s5, t4, s5
                  sltu         a4, a6, a6
                  sll          ra, tp, t0
                  xori         a2, s11, -1484
                  lui          a2, 745830
                  sub          s9, gp, zero
                  sll          s0, t1, tp
                  auipc        s8, 34313
                  slti         t5, s6, 94
                  auipc        a7, 420252
                  sltu         t6, gp, s11
                  ori          s10, a0, -970
                  addi         a6, s2, 661
                  lui          s1, 594403
                  slti         t3, zero, -1021
                  slli         t1, a4, 17
                  srli         s3, sp, 0
                  sll          s6, a0, s5
                  add          s2, t2, t3
                  sltu         sp, s6, s4
                  andi         a2, sp, -1507
                  sltiu        t5, a4, 1536
                  slt          tp, t3, sp
                  addi         s6, t1, -1068
                  sltu         gp, s9, gp
                  srli         a3, s5, 10
                  srai         a7, s2, 29
                  sll          s1, s6, a2
                  slt          zero, s4, s1
                  xori         t0, zero, -846
                  nop
                  sra          t4, t2, s5
                  andi         a2, a7, -1270
                  sll          t0, a3, s11
                  sll          t3, a0, t1
                  ori          t3, a5, -487
                  slli         zero, s1, 26
                  sll          zero, a1, s9
                  sub          s9, s11, t4
                  sltu         zero, zero, t3
                  ori          s11, s4, -667
                  slti         t1, s1, -1460
                  sltu         sp, gp, s2
                  lui          a2, 542123
                  addi         s2, a4, 1412
                  sra          s3, s4, s1
                  srl          t2, s6, s6
                  slli         t6, t1, 26
                  ori          a4, s6, 1570
                  add          gp, s2, a5
                  sub          s1, a7, t3
                  sltiu        t0, a4, 1694
                  addi         gp, a1, 305
                  sltu         tp, zero, zero
                  xor          s10, a1, s11
                  lui          s11, 307312
                  srl          s8, sp, t5
                  slti         a2, a3, -495
                  xori         a4, s5, -1004
                  sltiu        s5, s2, -596
                  srl          ra, t0, s7
                  sltu         s8, gp, t1
                  sll          a3, t2, ra
                  sltiu        a3, a2, -629
                  xor          t3, t5, a2
                  lui          t0, 306800
                  ori          t3, s0, 346
                  sub          a1, ra, s3
                  sltu         t4, a0, t1
                  lui          a3, 633137
                  ori          s7, t6, -706
                  lui          t3, 216915
                  srl          s2, t4, s3
                  srli         a2, t0, 9
                  andi         a7, t6, -905
                  srl          a2, s0, gp
                  auipc        gp, 515500
                  sltu         t1, t5, s5
                  srl          a3, t1, t3
                  ori          sp, t2, -244
                  nop
                  ori          s0, s11, 919
                  add          s8, t6, t2
                  sltu         s5, s11, t1
                  addi         t6, a5, -1141
                  xori         s10, s9, -1235
                  sltu         zero, s5, t6
                  auipc        s10, 1005675
                  lui          s11, 770121
                  srai         zero, s5, 21
                  lui          s5, 505632
                  sra          t3, a2, t3
                  sll          t4, s9, s2
                  srli         gp, sp, 11
                  xori         sp, s10, 797
                  auipc        t6, 858340
                  slli         zero, a3, 9
                  add          t4, t4, ra
                  xori         sp, s7, -1528
                  sltu         s3, s7, a4
                  srli         t0, s10, 13
                  slt          s11, t2, s9
                  sltiu        zero, s10, -258
                  or           s8, tp, t2
                  add          a4, a3, a5
                  srl          gp, t2, a0
                  auipc        a3, 274508
                  srl          zero, sp, t1
                  slt          s10, zero, s9
                  add          a2, t3, zero
                  or           s5, gp, ra
                  or           s1, t0, t0
                  nop
                  andi         t5, a7, 1322
                  sll          s7, t5, s1
                  xor          t4, s4, tp
                  addi         s1, a1, -285
                  lui          s11, 15596
                  auipc        a3, 272513
                  srl          a6, t2, t5
                  xori         sp, a6, 1772
                  slli         sp, t3, 7
                  srai         t3, t0, 1
                  addi         s6, t6, 985
                  sltu         s2, t3, zero
                  addi         a3, zero, 1856
                  nop
                  slti         s6, a0, -1639
                  xor          t6, t6, s9
                  srai         a3, t0, 5
                  srai         a6, a7, 26
                  slt          t4, t6, t6
                  srl          a7, a4, gp
                  addi         s6, s0, 910
                  slt          s7, s9, t6
                  sll          s6, sp, a7
                  lui          s1, 1013492
                  sub          t6, t0, s6
                  sltiu        s3, a5, 1321
                  or           s6, gp, a1
                  ori          s2, t2, -257
                  or           t6, sp, a1
                  lui          s9, 795477
                  xori         tp, s7, 1790
                  auipc        t0, 304938
                  slti         gp, a5, 1211
                  sub          sp, t2, zero
                  add          s2, s6, a2
                  auipc        s3, 119521
                  sll          s9, sp, t0
                  sll          s8, s3, t0
                  srli         s1, t1, 17
                  and          t5, gp, a6
                  srl          s7, t3, t4
                  srl          s1, s0, s10
                  and          s11, a2, zero
                  ori          tp, s9, -634
                  srli         t3, a3, 1
                  andi         s1, a5, -1027
                  srai         a2, t1, 7
                  srai         s0, ra, 2
                  slli         ra, gp, 26
                  lui          s0, 251056
                  or           a1, s10, gp
                  add          zero, a2, s7
                  lui          t0, 315509
                  sltiu        s7, s8, -565
                  srli         t1, s11, 18
                  slt          s11, a4, s3
                  lui          t3, 858332
                  sltiu        s8, tp, -210
                  sub          t5, s2, s0
                  xori         s8, t6, -1653
                  add          s11, sp, t1
                  slti         a3, s6, -724
                  slti         t6, t4, 1760
                  nop
                  xor          s2, s1, a3
                  slli         t0, s1, 11
                  sltu         s0, s8, s4
                  slt          a4, s9, a7
                  srl          t6, a0, a6
                  sll          zero, s7, s2
                  ori          t2, s5, -1413
                  sll          t3, s7, s1
                  sll          s7, t1, s11
                  srl          a6, s10, t2
                  slt          ra, s7, s2
                  sltiu        t1, sp, 102
                  slli         s7, s1, 5
                  addi         t1, t3, -1768
                  add          s11, sp, tp
                  slli         s9, zero, 18
                  srai         s9, a4, 23
                  ori          a4, s4, 844
                  srl          zero, t0, a2
                  ori          s0, s4, 1191
                  srai         ra, s3, 20
                  sltiu        a3, a2, -566
                  and          s3, s11, t5
                  slti         a6, a2, -275
                  or           zero, t2, sp
                  sll          s6, s1, s3
                  addi         a4, a2, -1355
                  srl          s0, s8, tp
                  xor          tp, tp, t3
                  auipc        tp, 883259
                  ori          s11, t1, 32
                  sltu         a3, t6, sp
                  xor          t0, a4, sp
                  srai         t4, a1, 6
                  srli         s1, s3, 8
                  sltiu        a3, t5, 588
                  sll          a2, a2, t6
                  sub          zero, t1, s2
                  srl          tp, t5, a6
                  andi         t2, t0, 196
                  slli         ra, s0, 14
                  slt          t5, ra, s2
                  lui          a6, 894411
                  slti         t1, s10, 1730
                  srai         a2, a0, 8
                  ori          s1, sp, -1419
                  and          s1, t2, t2
                  andi         t6, a5, 1133
                  and          a6, s2, s2
                  addi         s0, a7, 467
                  and          tp, t4, s7
                  srai         s10, s5, 18
                  lui          t3, 833028
                  and          a1, s6, t4
                  sra          t2, t2, ra
                  ori          s10, t6, -1097
                  xori         s6, s10, 707
                  add          t5, s4, a3
                  srl          t4, a6, s4
                  and          a4, s3, s2
                  slti         ra, s5, 718
                  sra          s2, a2, s4
                  and          tp, t1, s1
                  andi         a3, s9, 1605
                  lui          s5, 586157
                  slt          gp, s5, t0
                  srli         s6, a3, 19
                  add          s1, a4, a6
                  addi         s0, ra, 934
                  and          s2, s0, s5
                  or           s1, s4, a2
                  srai         t5, a3, 13
                  add          t6, s11, a7
                  add          a2, s2, s9
                  and          a7, s1, s1
                  auipc        s0, 154961
                  addi         s6, t2, 1271
                  srai         t3, a7, 16
                  sra          zero, t1, s0
                  sltiu        a7, t5, 690
                  xor          t0, s4, sp
                  add          t0, s4, a3
                  slti         ra, t3, 1376
                  ori          s0, a4, 37
                  sll          a7, zero, s8
                  slli         t0, s0, 7
                  or           s10, a4, a1
                  and          s6, s2, s2
                  sltiu        s3, a3, 1837
                  srli         a3, tp, 0
                  sra          t5, t4, t0
                  auipc        a3, 366517
                  srli         a4, tp, 20
                  auipc        s0, 771476
                  slli         a1, s11, 31
                  andi         sp, ra, -37
                  nop
                  auipc        t6, 670123
                  xori         t6, s8, 1376
                  sub          ra, sp, s0
                  add          a6, tp, gp
                  sltiu        s9, zero, -1764
                  nop
                  lui          s0, 582263
                  srai         t0, s7, 25
                  srl          s9, zero, zero
                  xori         zero, s4, -97
                  srli         a3, t4, 30
                  or           zero, t6, a6
                  sra          sp, t2, t2
                  xori         tp, s8, 1259
                  auipc        t3, 557970
                  sub          s1, a3, s4
                  nop
                  slti         s3, sp, -368
                  add          tp, s9, s3
                  ori          a2, s5, 1033
                  srl          sp, t3, a5
                  andi         t5, t1, 1478
                  sltu         a1, s2, a5
                  slt          t6, a1, s6
                  slti         s5, s0, -427
                  and          t6, t6, a5
                  andi         a6, a3, -1446
                  sltiu        t0, s1, -1867
                  sltu         zero, t2, s10
                  slti         s6, s11, -1966
                  and          tp, s7, t6
                  sra          t1, gp, s9
                  slti         s9, ra, 1232
                  srli         s2, t0, 0
                  slli         s8, zero, 19
                  slti         s3, t0, -1028
                  sltu         s6, a7, a0
                  lui          s0, 542374
                  sltiu        a3, s11, -1018
                  slti         a7, t5, -475
                  sltiu        a3, ra, -473
                  ori          a3, a6, -1904
                  sltiu        a1, t5, -1132
                  auipc        s9, 994956
                  sltu         t3, t1, t6
                  and          a7, a1, t5
                  sll          a2, tp, t5
                  slt          s0, ra, gp
                  slt          t3, a4, a4
                  slt          s5, s4, tp
                  nop
                  xori         t1, s3, 775
                  srai         a7, t1, 19
                  and          s0, a7, t1
                  and          t2, s8, ra
                  lui          s11, 281780
                  sub          sp, t0, t5
                  andi         s11, s9, 1243
                  add          sp, sp, s5
                  sll          t4, s7, a1
                  sll          t3, s6, t3
                  sltiu        a3, t1, -1122
                  srl          t2, a2, sp
                  sltu         s6, a7, gp
                  and          a1, s0, t4
                  and          s7, s2, gp
                  or           a7, s1, ra
                  srli         a6, s3, 14
                  srai         t6, s3, 14
                  sub          s10, s10, a4
                  slli         t3, s5, 19
                  sll          sp, s7, t2
                  sltiu        s3, a6, 1431
                  slli         s2, s10, 9
                  or           gp, s6, s3
                  lui          s0, 618940
                  ori          sp, t6, -726
                  nop
                  andi         s6, a1, -1148
                  srli         a1, s2, 6
                  xori         s2, t4, -1349
                  addi         s1, s2, -1040
                  sub          s6, s10, s9
                  auipc        a6, 743849
                  slli         s8, s3, 0
                  auipc        zero, 391421
                  auipc        s9, 594344
                  auipc        gp, 215109
                  srli         a4, t0, 11
                  srai         a1, t1, 18
                  srai         zero, s7, 8
                  and          s9, s4, s0
                  and          a6, t0, t2
                  slti         s0, a7, -938
                  srl          s8, s9, s3
                  auipc        s6, 525870
                  or           a3, t2, s10
                  slli         zero, t3, 28
                  srl          ra, a0, t1
                  nop
                  srai         a2, zero, 0
                  sub          t2, t5, tp
                  and          t2, t5, t0
                  lui          t4, 363580
                  auipc        t4, 352629
                  or           gp, zero, a3
                  srli         a4, t3, 25
                  and          s2, s11, t4
                  ori          t1, t4, -1461
                  nop
                  sra          a6, t0, t4
                  add          s7, t0, a0
                  or           a1, t1, s8
                  xori         zero, a3, -1870
                  slt          t4, t2, s9
                  and          a2, a2, s5
                  sltu         s3, t3, t6
                  add          t4, s3, a6
                  slli         a1, s5, 0
                  sltiu        t5, s11, 486
                  add          t5, a4, s0
                  add          s1, a0, s0
                  sub          t6, zero, t1
                  sub          s3, s5, a4
                  ori          a4, sp, 127
                  xori         s8, s9, 1171
                  addi         t1, s8, -899
                  slti         s1, a5, 350
                  nop
                  xori         s5, zero, 555
                  srai         s3, s11, 30
                  xori         s3, t1, -2012
                  auipc        t4, 768726
                  slti         s10, s6, -246
                  sra          s9, a3, t1
                  sltiu        a7, s11, -299
                  sub          t6, a3, s11
                  auipc        s9, 786119
                  slli         s11, a5, 12
                  nop
                  slti         sp, s2, -1459
                  nop
                  add          t1, a5, s5
                  slti         t4, t5, -414
                  sll          t2, t3, t0
                  slti         ra, a5, 1001
                  xor          a6, gp, a6
                  andi         t4, s1, 1864
                  sltiu        s5, s8, 1217
                  xori         a6, ra, -975
                  andi         s2, a6, 1027
                  sll          t0, t2, s6
                  srl          s8, t3, s11
                  and          a7, a3, s4
                  andi         t3, tp, 531
                  sltiu        s8, t5, 697
                  xori         a7, t1, -2013
                  xor          s9, t1, a4
                  addi         s10, zero, -293
                  xor          t2, a5, s3
                  slti         tp, s6, -1259
                  or           s10, sp, t6
                  sll          a7, a2, t1
                  slt          s10, s7, gp
                  sub          s1, a3, zero
                  nop
                  sltu         ra, t6, s8
                  ori          a2, sp, -1627
                  sltu         s0, a0, gp
                  or           a4, tp, tp
                  slt          s0, a1, tp
                  slti         t1, a3, -177
                  srl          a7, a7, s5
                  addi         s10, a3, 1591
                  ori          s5, s1, -1059
                  addi         a4, a3, 1141
                  ori          t0, a1, 1974
                  or           t6, s8, s9
                  or           s9, a6, s4
                  srli         s0, s8, 27
                  nop
                  ori          gp, t1, 1294
                  auipc        t3, 143470
                  sll          s10, s6, t3
                  add          s10, s1, s9
                  sra          s1, s10, s0
                  andi         t1, sp, 1445
                  sltiu        s3, a6, -1745
                  slli         t0, t3, 18
                  srli         a6, a3, 21
                  srai         s3, s4, 28
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t3, 0x0
                  li           t5, 0x0
                  li           gp, 0x0
                  li           tp, 0x0
                  li           t1, 0xce6c8b60
                  li           s8, 0x80000000
                  li           s5, 0x80000000
                  li           ra, 0x80000000
                  li           sp, 0xffffffff
                  add          t3, s8, t0
                  lui          t5, 816965
                  lui          t0, 430143
                  nop
                  sub          s5, gp, gp
                  auipc        s8, 821305
                  lui          ra, 879722
                  lui          ra, 334311
                  auipc        s8, 1015049
                  add          t1, s8, t5
                  addi         t1, tp, -959
                  sub          t3, sp, s5
                  add          t3, t1, sp
                  sub          t5, gp, t1
                  auipc        sp, 172045
                  addi         ra, gp, -573
                  auipc        t3, 738916
                  auipc        ra, 219861
                  auipc        t5, 83833
                  addi         tp, t5, 46
                  auipc        ra, 476054
                  add          t5, s5, t3
                  sub          tp, t3, t5
                  nop
                  lui          t5, 753936
                  nop
                  add          s5, s5, tp
                  addi         t5, t1, -900
                  addi         s8, t3, -531
                  auipc        t1, 101740 #end riscv_int_numeric_corner_stream_8
                  or           t2, s5, t0
                  srli         s5, t4, 12
                  xor          a7, t4, s8
                  sll          a4, t2, s3
                  lui          zero, 24080
                  sltu         a3, t4, t0
                  sra          a4, gp, t5
                  nop
                  add          s6, zero, s2
                  lui          s6, 583402
                  andi         t3, a0, -589
                  andi         sp, a4, 912
                  sltiu        s9, s0, -409
                  xor          s11, a7, s2
                  slt          s2, a0, ra
                  and          a4, s8, a4
                  sltiu        t4, a2, 175
                  srai         s5, s0, 1
                  ori          t0, a6, 645
                  srli         t1, s4, 23
                  xori         s2, s0, -669
                  srai         s11, t5, 2
                  auipc        s2, 422042
                  sll          t0, t4, s6
                  ori          a3, ra, -353
                  srl          s3, s9, s8
                  srl          s9, s7, s10
                  sltu         zero, sp, a7
                  and          a6, s3, s3
                  or           s5, s0, gp
                  sub          s0, sp, s7
                  sltu         s3, a3, s0
                  sltiu        ra, s9, -2028
                  xor          s10, zero, a5
                  lui          s1, 265118
                  nop
                  lui          a4, 574013
                  srai         s3, s11, 15
                  slli         gp, tp, 28
                  xor          s11, a0, a3
                  andi         a1, a4, 1210
                  slli         t2, s3, 29
                  sll          t6, tp, s10
                  slli         s5, s0, 6
                  sra          s7, t4, a2
                  srl          sp, a7, s0
                  srai         s7, s6, 19
                  addi         a6, gp, 1943
                  sll          t5, a0, s7
                  slli         s7, s5, 13
                  xor          ra, t3, a2
                  srai         a2, t0, 29
                  and          s6, a0, t3
                  srli         a7, s7, 29
                  srai         t6, s1, 26
                  sub          gp, s10, t4
                  srai         t5, s2, 1
                  srai         a3, t0, 21
                  and          t4, zero, a2
                  slt          s11, a7, s2
                  srl          t3, t4, t4
                  srl          t0, t0, s4
                  add          s11, a4, s2
                  xor          gp, s8, zero
                  add          a2, zero, t3
                  srai         s3, t3, 24
                  addi         tp, a4, 1341
                  xor          s2, t3, a0
                  lui          t6, 1031514
                  and          s2, gp, s5
                  srai         s7, t1, 30
                  srl          t0, a7, t3
                  add          tp, t0, t0
                  nop
                  or           t4, t5, a0
                  and          t0, s2, s1
                  slt          a3, s0, t6
                  addi         s11, gp, -708
                  nop
                  ori          t4, t3, -1156
                  xori         s1, s10, 1079
                  sltu         gp, a1, t4
                  sra          zero, t0, s6
                  srl          s3, a4, a2
                  slli         sp, t6, 6
                  sra          s8, zero, s9
                  ori          t1, t3, -1941
                  xor          s9, s3, a7
                  sra          s1, t1, ra
                  andi         a1, s0, 824
                  add          s7, a1, t3
                  srli         s3, a5, 6
                  sltu         t3, s11, gp
                  slt          t0, t4, s2
                  addi         a6, s0, -1338
                  add          t5, a1, a7
                  add          s2, a3, a2
                  sll          t2, s7, a4
                  sra          s8, s10, s2
                  add          s0, t4, t2
                  nop
                  slt          a7, s3, ra
                  nop
                  sub          tp, ra, tp
                  sll          t2, tp, t3
                  lui          s1, 890741
                  nop
                  srl          a3, a2, t1
                  and          t6, s2, t0
                  slt          a3, a6, s2
                  or           t5, gp, a7
                  and          t0, zero, s2
                  addi         sp, s1, -371
                  sra          a3, s3, t4
                  xor          s0, s4, t5
                  addi         s10, s4, -1173
                  lui          s5, 393084
                  slt          gp, a3, t6
                  srai         s3, t6, 12
                  addi         t6, t0, 76
                  sra          t1, s6, s0
                  sub          t3, gp, s5
                  andi         gp, t4, -1624
                  slti         t0, s10, -508
                  slti         a2, a1, 1763
                  sll          s1, t3, a0
                  lui          s8, 416580
                  addi         t1, t4, -1117
                  ori          s11, a4, 1499
                  xor          zero, t1, s10
                  add          s8, s0, s7
                  sltu         sp, s0, s11
                  addi         t4, a1, 1287
                  ori          gp, sp, -661
                  addi         s1, a3, 1101
                  and          zero, a3, a1
                  sltu         t5, ra, t3
                  nop
                  add          t4, s11, s9
                  auipc        s7, 617182
                  auipc        t5, 1008535
                  slt          t4, t4, a4
                  ori          a7, t6, -1044
                  addi         s8, t0, 1705
                  slti         t5, ra, -1011
                  auipc        sp, 875099
                  slt          tp, a6, t1
                  addi         s2, a0, 700
                  auipc        ra, 546220
                  slti         s9, s10, 230
                  sra          a7, s4, t1
                  slti         s9, t4, 1898
                  sub          s10, a0, t4
                  or           t4, s9, gp
                  xori         s5, a4, 75
                  sltiu        t0, t5, 370
                  addi         t0, s4, 505
                  add          a1, sp, s8
                  srai         s1, a5, 20
                  andi         s3, gp, 761
                  sltiu        t3, t5, 245
                  slt          s3, s9, t4
                  add          s2, s5, s6
                  srai         s1, s6, 13
                  auipc        a3, 234286
                  or           s10, ra, a2
                  sltiu        s11, sp, 1877
                  sub          sp, a2, s3
                  auipc        s6, 266598
                  xori         ra, s4, -971
                  slli         t2, s7, 10
                  or           s7, a4, gp
                  sra          s1, t5, s8
                  addi         a4, s9, -1097
                  slli         a7, s0, 26
                  slti         s7, a6, 1406
                  addi         t2, tp, 434
                  srl          s2, s5, gp
                  xori         t0, ra, 1366
                  slt          t3, a0, a0
                  sll          tp, a4, s4
                  slti         s0, sp, 1689
                  xori         t2, t2, -1771
                  auipc        t2, 811638
                  or           s7, s10, a3
                  add          ra, s1, ra
                  sltu         t5, t0, t6
                  xori         sp, s2, 673
                  srai         s2, a5, 8
                  ori          a1, sp, 1038
                  slti         a7, s8, -936
                  srai         sp, s3, 18
                  sra          s11, a3, a6
                  sra          s9, gp, t4
                  sra          ra, t1, t1
                  auipc        zero, 705468
                  srli         a4, tp, 9
                  auipc        t0, 804518
                  slli         s7, t5, 0
                  slli         s2, t3, 21
                  ori          s7, t3, -1670
                  slt          a7, a5, t6
                  sra          s8, s6, s7
                  slli         t6, s5, 30
                  add          gp, sp, t5
                  nop
                  add          s7, a7, a0
                  nop
                  andi         s9, t0, -1582
                  srai         s5, a0, 22
                  sra          sp, s0, a0
                  xor          t6, s5, gp
                  nop
                  add          ra, t5, t1
                  add          t3, s11, s11
                  ori          zero, s11, 730
                  sltiu        s6, s8, 1687
                  sltu         s9, s11, s3
                  andi         a3, s9, 131
                  srl          s9, s5, zero
                  add          s11, a2, a3
                  and          s7, t2, s1
                  xori         a3, s4, -1123
                  or           sp, s6, t4
                  slli         s6, a4, 23
                  ori          s10, s0, -632
                  srli         a4, s1, 5
                  sub          t0, a4, s10
                  and          a4, a6, s9
                  slli         s5, s2, 14
                  ori          t5, s10, 248
                  slli         s10, zero, 18
                  auipc        ra, 217695
                  lui          a7, 740307
                  xori         s5, gp, -1213
                  sltu         t3, s7, tp
                  addi         t2, s1, 289
                  andi         tp, t5, 1168
                  xor          s11, s3, s9
                  srli         gp, a2, 19
                  slt          t3, a2, gp
                  addi         t5, gp, 92
                  add          s1, t1, t5
                  slli         s0, a4, 7
                  slti         ra, s10, 881
                  auipc        s3, 866107
                  lui          t4, 1008658
                  ori          t1, s7, -218
                  nop
                  xor          t3, t5, s8
                  auipc        gp, 575129
                  sra          tp, a3, a0
                  sub          s6, a6, t1
                  lui          t5, 838226
                  addi         s10, t4, 1009
                  xor          sp, a3, s10
                  slli         s0, t6, 22
                  slli         s3, sp, 14
                  add          gp, s10, t2
                  addi         t0, t2, -242
                  or           s3, s8, s0
                  srli         a2, s0, 3
                  slli         s7, s0, 25
                  xor          a4, a3, s3
                  sub          ra, a0, sp
                  addi         s5, t2, 412
                  sltu         a1, s2, a6
                  srli         s5, s6, 7
                  addi         a3, a0, -1324
                  auipc        a7, 805118
                  add          t0, zero, s6
                  add          s3, sp, a1
                  sub          tp, ra, s9
                  auipc        s11, 101050
                  ori          s11, zero, -1461
                  srai         s2, s10, 3
                  xor          t3, a2, tp
                  sra          a1, gp, a6
                  slt          s2, s11, a3
                  add          a7, t5, a2
                  and          t3, s11, s9
                  add          s11, s11, t2
                  srli         s3, tp, 9
                  srli         t3, t3, 17
                  xori         t3, t2, 222
                  lui          a4, 628459
                  slt          t1, s1, s6
                  addi         s10, t3, -703
                  slli         t1, a1, 15
                  sltu         gp, s10, a4
                  ori          a4, a6, -1630
                  lui          gp, 620938
                  ori          a3, sp, 1185
                  sub          s0, sp, s7
                  addi         s11, s2, -1806
                  slti         a3, s3, 1624
                  auipc        t3, 840639
                  or           a4, s1, t4
                  sll          sp, s8, a4
                  addi         a1, a4, 258
                  srli         s0, a0, 20
                  srai         s9, s6, 20
                  and          a1, t6, s6
                  and          zero, a1, s3
                  addi         t3, ra, 496
                  srl          s2, s0, s11
                  and          a1, t2, a7
                  and          a4, gp, s2
                  slli         t0, gp, 11
                  auipc        s6, 901917
                  addi         s9, gp, 1355
                  slti         s9, a3, 439
                  sltiu        s9, s11, 643
                  sll          t6, a4, a3
                  and          t2, s9, s1
                  or           s0, a3, s6
                  addi         a3, s1, -1566
                  xori         tp, t4, 25
                  srai         zero, a0, 8
                  sra          s1, s0, a1
                  srli         a7, a4, 3
                  lui          s7, 508906
                  addi         ra, t0, 717
                  srli         t4, a4, 27
                  sub          a4, s4, s3
                  addi         t5, s4, -1559
                  and          s5, t1, gp
                  add          a1, s5, t0
                  and          s2, gp, t5
                  srl          t4, a3, t5
                  sltiu        a6, a6, 1648
                  sra          t2, s5, s7
                  and          t5, s1, tp
                  sltu         tp, s0, t1
                  sra          s5, s6, s10
                  slti         t2, a1, -1012
                  srl          t1, a0, s1
                  sra          s8, t4, s9
                  sra          zero, zero, a7
                  srl          a7, t1, t0
                  slti         s5, a2, -306
                  xori         ra, a7, 473
                  sra          s0, t2, gp
                  xori         s3, zero, -1557
                  slli         a3, s7, 8
                  addi         s2, sp, 2023
                  or           a1, s3, t1
                  srai         gp, s0, 26
                  add          t1, s3, t2
                  srl          s7, t3, sp
                  slti         t4, s3, 1587
                  ori          ra, s7, -1517
                  andi         sp, t2, 1027
                  sra          t1, s2, s8
                  sltiu        a4, s0, -300
                  sltiu        zero, t6, -741
                  xor          zero, s10, s0
                  nop
                  xori         s10, s4, -842
                  andi         s2, a6, 1485
                  sra          s2, s4, a2
                  srl          s10, s0, zero
                  sub          t2, s1, s0
                  xor          s5, t4, t4
                  lui          a4, 433548
                  and          s10, s0, a4
                  slti         t3, t3, -1423
                  sltiu        a3, s0, 575
                  slli         t2, s4, 25
                  srli         t6, t4, 17
                  slti         s11, t1, 327
                  srl          a7, a5, t4
                  auipc        gp, 159140
                  slti         ra, a4, 1089
                  ori          s11, a4, -1717
                  srai         t1, s1, 3
                  lui          a1, 592052
                  slti         s11, s1, 516
                  lui          t1, 939865
                  addi         gp, tp, 344
                  srl          s0, a1, s9
                  sub          t3, a3, s4
                  xor          t5, s6, s4
                  lui          t4, 402984
                  sra          a1, gp, zero
                  slti         s10, a2, -1906
                  sltiu        s8, t5, 489
                  auipc        a1, 536227
                  sll          tp, t5, s3
                  and          t6, a1, s11
                  sltu         t4, s10, t6
                  lui          t1, 272344
                  sll          s6, s10, a2
                  sltu         s7, t2, a7
                  or           s8, a5, s8
                  sltiu        a6, a4, -1575
                  ori          a7, s10, 1038
                  or           s6, t2, sp
                  nop
                  and          s2, t2, s7
                  and          t6, zero, ra
                  sltu         tp, s4, a7
                  and          s11, s6, t2
                  sub          s1, t2, s9
                  or           a4, a5, s3
                  xori         s2, s2, -1485
                  or           t4, a2, s6
                  srai         s2, t4, 22
                  lui          sp, 997908
                  slti         a3, s5, -462
                  andi         sp, s11, -600
                  lui          a7, 719540
                  or           t0, zero, tp
                  slli         t1, t3, 10
                  nop
                  srli         s1, s6, 21
                  add          s1, a2, t6
                  nop
                  andi         s11, s6, 314
                  and          t0, t0, s9
                  andi         t2, s2, 156
                  nop
                  add          a4, gp, t1
                  sub          zero, s7, t6
                  slli         a6, a4, 13
                  sll          sp, a6, t5
                  xor          s6, t0, a5
                  xori         a1, ra, 391
                  srai         a6, t1, 22
                  sltiu        s8, a2, -525
                  lui          t2, 868504
                  srl          sp, t3, a6
                  or           zero, a0, zero
                  sltiu        t4, t2, -1212
                  lui          a7, 872796
                  slt          s0, t3, s10
                  or           sp, s6, a6
                  ori          ra, t1, -648
                  xor          ra, ra, t6
                  xori         a4, s7, -629
                  srai         s8, a5, 11
                  sra          s11, s11, a4
                  nop
                  sltu         sp, gp, s1
                  sub          t6, a0, t1
                  addi         s7, s0, -2041
                  sll          t2, s5, s8
                  sltu         s11, s9, t4
                  or           s5, t5, s9
                  srai         s6, a0, 12
                  sltiu        sp, a5, -1853
                  nop
                  ori          zero, ra, -992
                  slti         s9, t5, 1019
                  lui          s9, 830945
                  andi         s7, s11, 1259
                  addi         t3, ra, 169
                  srli         s1, s5, 9
                  add          sp, sp, s6
                  or           ra, s9, a1
                  slti         t5, s6, -1695
                  sra          ra, s5, s5
                  xor          a6, s6, a0
                  xori         s1, tp, 1719
                  xori         a1, sp, 192
                  add          a7, ra, a5
                  slt          t4, t1, t4
                  slli         t0, s7, 24
                  andi         t6, s3, -145
                  and          t4, a6, s5
                  slt          a4, t2, s8
                  sub          s5, a4, s0
                  ori          s3, s4, 1602
                  sltu         s1, s10, s1
                  srai         t2, sp, 20
                  auipc        s2, 686583
                  srli         s3, t3, 20
                  addi         s10, gp, -1620
                  andi         t0, s0, -2030
                  slt          t2, a4, a7
                  sltiu        t1, t0, -941
                  sltiu        t6, a5, -1556
                  srli         a6, s10, 11
                  nop
                  add          a6, s0, a7
                  xor          gp, t4, a3
                  srai         s10, s11, 10
                  sltiu        s9, a0, 1860
                  srl          a4, a2, ra
                  sll          s10, a6, s11
                  slt          t2, t2, s9
                  sltiu        s11, t3, -834
                  addi         s9, a4, 401
                  slt          s6, t3, t3
                  add          t2, s6, s1
                  ori          s2, a3, -1539
                  and          gp, t2, tp
                  sltu         s1, s6, s6
                  addi         ra, s1, -1133
                  ori          a2, t0, 1645
                  sub          s7, s2, t2
                  add          a4, s4, zero
                  nop
                  srai         s5, tp, 19
                  xor          a3, s2, zero
                  andi         a4, t0, 1309
                  nop
                  add          ra, t0, s4
                  sll          t3, s11, s10
                  andi         sp, s5, -164
                  auipc        zero, 876464
                  add          s1, t4, s9
                  sltu         a1, s4, s9
                  sltiu        s0, s1, 248
                  srl          gp, s8, s1
                  sll          s5, t3, tp
                  and          t1, s4, s2
                  and          t2, s1, tp
                  srai         a3, s4, 21
                  sra          s10, s10, t4
                  sra          a1, a6, t2
                  andi         s9, s6, 982
                  srai         s10, t2, 25
                  lui          s11, 630278
                  srai         a7, ra, 0
                  and          zero, a6, t3
                  ori          t6, a5, -1514
                  add          a3, t4, s4
                  and          gp, s7, t1
                  and          t3, zero, t4
                  sub          s10, tp, s6
                  xor          t6, s11, s10
                  sltiu        t3, s7, -1158
                  auipc        s5, 89401
                  sra          t6, t3, t1
                  sll          gp, a1, t5
                  slt          t0, s3, zero
                  xor          s5, s4, s4
                  srai         a6, a1, 22
                  slli         a1, s3, 24
                  nop
                  or           t2, tp, t2
                  sub          s5, s3, a2
                  sll          tp, a3, s3
                  srai         a3, zero, 5
                  slt          t5, s7, t0
                  add          s1, a7, s1
                  srli         a3, a2, 6
                  sll          s8, s7, s4
                  sub          s8, ra, ra
                  addi         s5, t4, 1850
                  xori         t3, t5, -579
                  srai         s9, a6, 12
                  add          tp, a1, a0
                  xor          a6, s7, a1
                  srli         s6, s6, 18
                  and          t0, s6, t1
                  sub          t0, s2, sp
                  slti         zero, a1, -1866
                  slti         t0, t2, -56
                  and          t1, s5, zero
                  xor          t4, t2, t4
                  sll          a2, s9, s5
                  addi         s7, gp, -777
                  add          a3, s3, t0
                  nop
                  andi         s9, s4, 2007
                  sub          tp, tp, s10
                  sub          s8, s3, s0
                  slt          s11, s9, s9
                  sra          s10, t4, s6
                  slt          t4, t4, s5
                  add          s9, t4, ra
                  nop
                  srli         t6, t5, 12
                  sll          gp, s4, s0
                  srai         tp, gp, 22
                  or           s1, a4, gp
                  sll          a6, s2, s1
                  xor          ra, t0, a1
                  nop
                  xori         tp, a1, -903
                  sra          s1, t2, a1
                  add          s11, s3, s5
                  add          ra, s7, s4
                  xori         zero, s1, -505
                  and          t2, ra, a6
                  sll          t1, a2, a1
                  slt          s5, t1, a3
                  xori         t0, s0, -610
                  slli         a1, a0, 24
                  slli         s0, s8, 10
                  srli         s1, t2, 22
                  addi         sp, s9, 1351
                  auipc        s8, 689591
                  xori         s7, t6, 1798
                  andi         a6, a5, 1517
                  srl          ra, a1, a7
                  xori         zero, s7, -1125
                  sra          a4, s1, ra
                  sra          a3, tp, t3
                  srli         a6, t5, 19
                  sltu         tp, a7, a6
                  and          t2, s10, s2
                  slt          s8, t5, tp
                  ori          s3, a2, 1425
                  srli         ra, s11, 24
                  add          t0, a5, a4
                  slti         a1, s5, 599
                  ori          s8, t1, 1864
                  sra          s1, s5, t4
                  srli         a4, ra, 6
                  addi         zero, a0, 325
                  andi         sp, t6, -955
                  add          s11, a3, t3
                  andi         a3, zero, 1410
                  or           t3, s10, t6
                  addi         s3, t3, -173
                  slli         s3, a0, 4
                  nop
                  lui          s10, 777257
                  slti         t3, s5, 1322
                  and          s6, s9, t2
                  xori         zero, a5, 676
                  add          t4, a5, s7
                  sub          s0, a1, a5
                  andi         s11, s6, -1546
                  slli         t1, t4, 11
                  nop
                  lui          t4, 140088
                  or           s10, s11, s5
                  sra          a2, a4, t6
                  srl          a6, t0, a1
                  sltiu        s9, s10, 1488
                  sltu         s7, zero, t6
                  ori          ra, a5, -1169
                  slti         a2, ra, -380
                  slli         a3, t4, 20
                  lui          ra, 891449
                  add          a4, t6, s0
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s11, 0x80000000
                  li           s7, 0x80000000
                  li           a3, 0x0
                  li           sp, 0x64839cb3
                  li           s8, 0x8fc5d06f
                  li           a1, 0xccdd06b0
                  li           t4, 0x0
                  li           t5, 0x80000000
                  li           t2, 0xffffffff
                  nop
                  lui          s7, 803169
                  nop
                  addi         t2, t1, -604
                  lui          s11, 840920
                  nop
                  lui          t2, 514122
                  auipc        t5, 26885
                  lui          s8, 293964
                  sub          s11, s11, s11
                  sub          a1, t4, t2
                  sub          s8, sp, t2
                  lui          a1, 479880
                  nop
                  lui          t5, 207636
                  sub          a1, s11, t4
                  auipc        a1, 218083
                  auipc        a3, 836428
                  add          s11, sp, t1
                  nop
                  addi         s7, a3, 644
                  addi         s11, s11, -1277
                  auipc        t4, 175656
                  lui          t1, 988692
                  addi         t1, t5, -1747
                  add          a3, s7, t4
                  addi         t4, t1, -1261
                  lui          s7, 752725
                  lui          t1, 13397 #end riscv_int_numeric_corner_stream_2
                  andi         s5, t5, 419
                  xor          s11, ra, t5
                  xor          a3, a5, t5
                  xor          t3, sp, a1
                  slt          s11, t3, t6
                  add          s0, t6, s5
                  srai         t3, t5, 28
                  addi         s0, gp, 971
                  sll          t4, a4, a5
                  ori          t3, a0, 1441
                  xor          s5, s3, t0
                  sll          gp, s8, t1
                  nop
                  srli         gp, t0, 0
                  lui          t1, 807255
                  srl          a7, ra, a1
                  ori          t5, s6, 1445
                  sll          a6, s6, t3
                  nop
                  xor          a4, a5, s3
                  addi         s0, gp, -710
                  slli         t0, s11, 20
                  slli         s3, s3, 23
                  andi         a7, gp, -257
                  sub          s6, t1, a6
                  auipc        sp, 218857
                  srl          zero, t3, ra
                  nop
                  auipc        t0, 920289
                  srli         t6, a0, 21
                  srl          t2, a3, t1
                  slli         s10, s11, 25
                  or           s9, t2, s5
                  add          a3, a5, a5
                  andi         s6, a5, -825
                  sltiu        a2, s2, 1416
                  slti         a4, s10, -296
                  sub          s9, t3, s4
                  slti         a1, s11, -2024
                  addi         s7, a0, 210
                  slt          t3, sp, t5
                  ori          t3, s2, -411
                  xori         a3, ra, -672
                  sltu         ra, t6, tp
                  sra          t5, s5, t2
                  nop
                  sltu         s9, s10, t6
                  slti         s11, ra, -1574
                  sub          sp, sp, s1
                  slti         a1, sp, -1144
                  sltu         s2, a3, a1
                  and          t5, t2, a4
                  andi         s3, a6, 873
                  nop
                  sltu         a3, a7, a1
                  ori          s0, t2, -951
                  sub          t4, a6, s5
                  ori          s5, a3, -1036
                  and          ra, ra, s8
                  addi         s9, s4, -802
                  or           a2, s1, s6
                  srl          t3, t2, s4
                  nop
                  srai         a4, ra, 19
                  sltu         t1, t5, zero
                  xori         a4, ra, -1961
                  srl          gp, s11, s9
                  slti         s8, ra, -74
                  auipc        t6, 382028
                  add          s1, t3, t4
                  slt          t0, s9, s5
                  ori          sp, s7, 681
                  sltu         s5, s11, t3
                  srli         s7, s1, 29
                  sltiu        t0, a1, -1511
                  and          tp, a3, t0
                  nop
                  xori         s7, a6, -1818
                  slli         s11, s5, 28
                  srai         tp, a3, 5
                  nop
                  sltiu        t0, s2, -1802
                  slti         s9, t1, 651
                  addi         s6, s9, -227
                  sra          s8, a2, s6
                  ori          a1, zero, 1667
                  sltu         a3, a2, s0
                  sub          t2, t4, s1
                  slli         gp, s3, 23
                  lui          t1, 687221
                  slt          s8, s4, a1
                  sltiu        sp, s9, 1766
                  xori         s0, ra, -806
                  nop
                  srli         s2, ra, 29
                  ori          gp, a4, -478
                  slti         t5, t4, -1834
                  srli         a7, a4, 7
                  sra          s1, a3, t5
                  sltu         t6, s8, s1
                  addi         t2, sp, -815
                  lui          a4, 710279
                  xori         a3, t1, -1476
                  slli         a2, s7, 30
                  slt          s7, t4, t2
                  or           t6, t5, s1
                  ori          t4, s11, 152
                  and          s11, a0, a3
                  srl          s7, t6, t4
                  and          s5, t2, zero
                  slt          t0, s8, s8
                  auipc        tp, 342115
                  slli         t1, t4, 12
                  xori         t2, t2, -2015
                  sltu         s5, s7, a2
                  sra          t6, t3, gp
                  auipc        tp, 473474
                  sll          gp, a0, t2
                  sltiu        a7, a3, 715
                  auipc        a1, 321446
                  srl          t5, a7, a5
                  slt          s10, s0, s3
                  srai         tp, s2, 29
                  srl          a6, t0, s4
                  nop
                  slti         a6, a7, 206
                  srl          s9, tp, s1
                  andi         tp, a3, -1814
                  xor          t0, s8, t6
                  nop
                  ori          a7, s11, 1944
                  sltu         t2, s2, a7
                  sltu         s7, ra, s9
                  xori         gp, zero, -763
                  and          ra, t3, zero
                  add          gp, t5, a2
                  sll          s2, sp, s3
                  xor          tp, s4, a4
                  slt          a7, a4, s2
                  or           s0, s2, s9
                  auipc        s9, 281587
                  nop
                  slt          a1, t3, t1
                  ori          s0, s10, 1114
                  sub          s6, s1, s1
                  srli         gp, a3, 25
                  sll          ra, t6, sp
                  slti         gp, t3, -1541
                  add          a3, t0, t5
                  xor          a3, a0, t0
                  ori          a3, s6, 1050
                  srl          s2, a3, s6
                  nop
                  slti         a3, s10, -1207
                  sub          t1, t6, a3
                  add          t3, s11, a6
                  slti         tp, a0, 464
                  srai         s2, s3, 10
                  srl          s11, ra, gp
                  srli         s9, t4, 14
                  lui          a3, 144269
                  and          s7, tp, a2
                  srl          ra, zero, s6
                  andi         s11, a3, -318
                  slti         a1, a7, 1560
                  sub          s0, tp, a1
                  sll          a7, s11, a3
                  and          s10, s11, s6
                  ori          s8, s11, 1706
                  slt          t1, ra, gp
                  sltiu        s7, a1, -570
                  srai         s7, a3, 7
                  srl          zero, t5, s9
                  or           s7, a5, a6
                  andi         t1, a3, 1659
                  srli         a6, a7, 13
                  sltiu        s10, a6, 94
                  slt          s7, t6, t5
                  or           s2, a2, gp
                  auipc        t4, 557852
                  srl          sp, tp, a5
                  slli         zero, t0, 6
                  xor          t4, a4, sp
                  lui          zero, 818281
                  sltu         s3, s2, t4
                  add          t2, t4, s5
                  sll          s3, s2, ra
                  slti         t3, t4, 1567
                  xori         sp, a4, 1169
                  slli         a6, s5, 18
                  and          s2, t4, zero
                  sra          a3, a7, a4
                  sub          a4, gp, s5
                  srli         s7, s1, 1
                  sub          a2, t3, s10
                  srl          a4, gp, a3
                  xori         a6, t0, 539
                  xori         t3, a5, 1642
                  andi         s11, a6, 1907
                  and          s5, s6, s9
                  xor          s7, a0, a4
                  addi         a4, a1, 811
                  or           a2, s1, s3
                  add          ra, s3, s8
                  sltu         t2, t3, t2
                  ori          a3, s4, -1450
                  nop
                  addi         a7, s0, -1658
                  sra          t0, gp, s1
                  or           s1, s3, zero
                  srai         a7, t6, 12
                  srl          s5, s6, t5
                  srl          s0, t2, a1
                  xor          ra, sp, a7
                  sub          a6, zero, s9
                  lui          t1, 824982
                  xor          s1, sp, gp
                  and          t3, zero, zero
                  lui          t3, 800296
                  sltiu        t4, t3, -749
                  sub          a6, a0, a2
                  srl          t0, t3, t1
                  slli         a3, tp, 24
                  nop
                  or           s7, s6, gp
                  lui          t3, 944215
                  srl          a3, zero, s8
                  lui          s7, 981345
                  add          s11, s4, gp
                  add          a3, tp, s1
                  srai         a6, s3, 7
                  ori          a6, ra, 1449
                  srai         t6, s2, 3
                  nop
                  slti         s9, a6, -227
                  sll          a3, s5, t3
                  lui          t3, 944296
                  add          t2, t2, a3
                  addi         ra, a4, -1576
                  sltiu        ra, sp, 1411
                  slt          t1, t3, s7
                  srai         a2, s4, 31
                  or           s0, a4, s8
                  add          s1, t6, t3
                  lui          ra, 369947
                  sub          gp, t3, zero
                  slti         t2, s6, 1230
                  srli         tp, a2, 21
                  add          s3, a5, s4
                  xor          s7, s10, t0
                  addi         t2, t6, -1205
                  sub          t6, ra, s1
                  nop
                  sub          s11, ra, t4
                  nop
                  srl          gp, a0, a5
                  xor          s1, s7, a7
                  addi         zero, t2, -641
                  and          a6, s3, a2
                  auipc        ra, 50620
                  srai         t5, s4, 29
                  sll          s7, a4, a6
                  addi         a4, a2, 1507
                  sll          zero, t2, a3
                  sltiu        t3, ra, 17
                  ori          a1, a5, 718
                  nop
                  nop
                  addi         s1, zero, 1902
                  sll          s2, ra, gp
                  addi         s3, t2, -400
                  slli         s8, a6, 5
                  andi         s1, a2, -1140
                  andi         ra, a1, 1101
                  or           a4, tp, a3
                  sll          zero, a4, ra
                  sub          s11, t6, t3
                  slli         t1, a4, 4
                  srl          s8, a1, s1
                  sltu         s10, s5, s6
                  auipc        s11, 911872
                  srl          a7, a5, s1
                  andi         tp, a2, -1978
                  slt          s5, s5, s9
                  srai         t4, s8, 2
                  or           s0, s8, s0
                  andi         s10, sp, 1693
                  xor          ra, t3, s2
                  srli         a1, a2, 23
                  ori          t6, t5, 22
                  ori          t2, t1, -552
                  lui          s7, 719350
                  sltiu        t4, a1, -1470
                  or           s10, s2, t5
                  sub          t4, s4, tp
                  andi         s7, t0, -1198
                  and          s8, a1, zero
                  or           a4, t4, t5
                  slt          t0, zero, s5
                  addi         t3, a2, 1086
                  addi         s10, sp, -1932
                  sltiu        sp, s5, 914
                  ori          a4, t0, -1357
                  sltu         s5, zero, a3
                  srai         a2, s8, 30
                  andi         t0, s10, 346
                  sltiu        s1, s8, 2034
                  nop
                  addi         s9, s4, -957
                  and          a7, a7, gp
                  ori          gp, t4, -386
                  xori         ra, s11, 1578
                  add          sp, a6, t3
                  add          tp, s5, a5
                  srli         a3, s3, 21
                  xor          a7, a4, t0
                  sltu         s2, zero, zero
                  addi         a2, a2, -453
                  or           a2, s4, a5
                  auipc        zero, 17733
                  sltu         s6, t1, a1
                  andi         a2, t4, 500
                  sltiu        t1, gp, -1311
                  add          a2, s1, t1
                  slt          s7, s5, t3
                  add          a3, s10, t5
                  nop
                  ori          sp, sp, 1049
                  andi         s11, a1, -1515
                  xori         s9, t1, -725
                  lui          s3, 752100
                  or           a2, a7, a3
                  srai         gp, s10, 7
                  auipc        a7, 86775
                  slt          t1, zero, t5
                  slt          s3, s8, sp
                  xori         t2, a5, 668
                  xor          a6, zero, t0
                  lui          t3, 834488
                  sltiu        a1, s3, 243
                  auipc        s0, 86764
                  lui          a2, 6090
                  add          t4, a0, s6
                  xori         t3, s6, 1033
                  andi         s10, t1, 989
                  sll          a4, s1, s6
                  slti         a6, t2, 1095
                  addi         s1, s0, 1218
                  srl          sp, s5, t5
                  sub          s7, s7, gp
                  sra          t0, t0, a3
                  srl          s3, s5, a3
                  srai         s6, s1, 9
                  srai         s5, zero, 19
                  srl          s5, s7, s9
                  add          t2, t3, ra
                  srli         s5, a2, 5
                  sra          s5, s2, t5
                  slt          t5, gp, gp
                  sra          t6, a4, a7
                  xori         s5, t3, -1128
                  xor          s9, gp, s5
                  slti         s8, s4, 165
                  slti         s0, gp, 903
                  srl          tp, a2, a2
                  slt          s9, s1, t5
                  srai         t0, t5, 23
                  or           gp, a2, sp
                  sll          s5, s5, a4
                  or           t0, t3, a5
                  andi         a6, s6, -1301
                  srli         a1, s10, 24
                  xori         s7, s6, -354
                  sll          s10, s0, a7
                  andi         s8, s0, -1239
                  andi         t5, t0, -1631
                  xor          t3, t3, a4
                  auipc        s10, 342994
                  and          s7, a2, a3
                  sltiu        a3, s5, 1130
                  and          s8, s4, a7
                  slli         s5, a5, 10
                  sltiu        sp, ra, -1387
                  srai         s3, a0, 19
                  auipc        sp, 452698
                  srl          t6, s8, zero
                  slti         a6, t0, 731
                  sltu         s9, s11, zero
                  auipc        a4, 268340
                  andi         a4, a5, 1546
                  xor          a3, s7, a7
                  xori         s6, t2, -1096
                  sltiu        t3, s7, -1956
                  srli         t6, a0, 17
                  auipc        s8, 397223
                  sltu         ra, a7, a5
                  sub          gp, s6, s3
                  slt          s11, s11, s6
                  addi         a4, a5, 1727
                  xor          t0, s5, s10
                  or           s9, tp, t1
                  sltu         a4, t3, a6
                  srai         s0, a6, 20
                  addi         s3, t4, -1938
                  sltiu        a4, a4, -1078
                  xori         t6, s2, -1341
                  sra          t0, s7, gp
                  lui          a6, 379119
                  slt          s6, ra, gp
                  sub          zero, a2, s3
                  srai         a6, t4, 26
                  add          a3, a4, a7
                  ori          s0, a3, -816
                  sll          t0, s11, t3
                  slt          s5, t0, zero
                  xor          t4, t0, s5
                  or           s10, s11, t3
                  and          a4, s7, a5
                  srli         a2, a5, 0
                  or           s6, s9, t1
                  slt          tp, s8, s5
                  slli         a4, s0, 0
                  xor          tp, ra, t2
                  xor          t5, s0, a7
                  ori          s5, s2, 1807
                  srl          s9, a5, sp
                  addi         a1, sp, 212
                  auipc        t6, 577211
                  slt          t3, s5, t0
                  sll          s6, t0, s4
                  or           s0, s0, sp
                  addi         t0, a4, -1942
                  slti         a6, s9, -739
                  add          a1, s2, a2
                  slti         s1, s8, 536
                  slli         s8, t6, 20
                  xor          t1, s8, t1
                  slli         zero, t1, 27
                  or           tp, a4, s8
                  sub          t6, zero, a1
                  srli         s8, s4, 0
                  lui          a3, 625484
                  sltu         gp, s8, a7
                  sltiu        s2, a1, 600
                  xori         s9, t0, -1344
                  slt          ra, a0, t2
                  slli         zero, t3, 25
                  srai         s7, a7, 2
                  srl          s1, s2, ra
                  or           s10, s10, t1
                  and          a4, a0, a3
                  srl          a2, a1, s10
                  auipc        s7, 523651
                  lui          gp, 732047
                  slti         gp, t4, -1057
                  or           t6, t3, s10
                  addi         a7, s11, 776
                  auipc        a4, 977630
                  addi         t6, s1, 1560
                  slti         s9, a1, 253
                  lui          s1, 144073
                  slti         t2, s5, -2000
                  and          t3, s1, s6
                  srli         t4, t1, 24
                  slli         t2, a3, 10
                  and          a3, a6, s7
                  addi         a6, t0, -234
                  ori          ra, a6, -920
                  sll          s2, sp, a6
                  slt          s9, s8, t1
                  srl          ra, zero, s11
                  sra          t5, s2, t5
                  srli         t2, t6, 4
                  sll          s9, ra, t1
                  slli         a2, sp, 31
                  srli         t5, a6, 8
                  ori          a4, t4, -1286
                  slli         a2, s0, 10
                  nop
                  nop
                  sub          sp, s3, s0
                  lui          s10, 414385
                  srli         a4, a1, 5
                  xori         s2, a6, -1278
                  sll          zero, t1, a3
                  and          s10, a4, s11
                  srli         s2, t5, 17
                  slli         t2, s0, 0
                  sll          t4, a0, a7
                  srai         s5, a2, 0
                  lui          t0, 359108
                  slt          s1, a4, s2
                  or           s6, a7, gp
                  slli         s3, t4, 7
                  sra          a7, s10, s2
                  slti         t1, s4, 1219
                  sll          a6, s5, s10
                  sltu         t0, t0, gp
                  lui          a2, 45682
                  sra          s5, s8, s7
                  srl          s3, s2, t5
                  srl          ra, a2, a2
                  sltiu        s3, sp, 1366
                  addi         s0, a6, 1390
                  sub          ra, s4, gp
                  and          t6, a3, s4
                  slli         tp, a2, 23
                  or           t1, s10, t5
                  and          gp, a7, ra
                  srl          s5, s5, s9
                  srl          s11, s11, s6
                  sub          t2, s1, s6
                  sub          sp, sp, s2
                  sll          tp, t1, a2
                  and          s7, s9, s10
                  srli         s7, t2, 16
                  xor          sp, a7, s11
                  sll          s1, s4, a4
                  and          s1, t5, a7
                  slti         s2, t2, -1604
                  addi         t2, s1, 1903
                  auipc        t3, 121755
                  lui          s10, 1015558
                  sltiu        a3, t6, -1738
                  andi         a3, s3, -956
                  sra          t0, s0, a4
                  xori         s7, s0, 1150
                  xor          s1, a1, t3
                  srli         s6, a3, 6
                  slti         s3, s11, -1459
                  nop
                  xor          s0, s5, a6
                  srai         s5, s10, 9
                  add          t5, gp, s5
                  ori          ra, t6, 1719
                  sub          gp, s8, a0
                  sll          s7, a1, a5
                  sub          t0, sp, zero
                  sltu         a7, tp, zero
                  addi         zero, a0, -1303
                  ori          t4, s2, -1134
                  and          gp, a4, s11
                  srli         s7, a3, 16
                  sub          a6, t1, zero
                  and          s2, s9, s9
                  sltiu        t2, t4, 891
                  slti         t4, t2, 1553
                  nop
                  addi         t5, a1, 212
                  add          s0, t4, a3
                  add          t6, s0, a0
                  xor          tp, zero, a1
                  srl          t1, t3, s4
                  xori         s7, t2, -916
                  lui          a2, 198633
                  xori         a2, s9, -769
                  xor          s7, s9, t0
                  sub          s8, s5, a2
                  andi         a6, a5, 1997
                  add          s2, s0, s0
                  add          s1, t2, a6
                  slli         t0, sp, 5
                  slli         ra, a0, 6
                  and          s2, t0, t6
                  xor          s9, a4, t2
                  slli         gp, a3, 27
                  nop
                  ori          s6, s8, 1005
                  xor          t6, gp, t4
                  lui          t1, 173757
                  sltiu        a3, s8, 1760
                  auipc        tp, 146164
                  srai         t0, a0, 17
                  sltiu        s5, a6, -912
                  andi         sp, s4, 637
                  srl          a6, s11, t0
                  addi         t3, a0, 1993
                  and          s1, s9, a3
                  srai         s11, s7, 9
                  sltiu        t4, ra, 1579
                  add          a4, t2, s9
                  slti         ra, zero, -1008
                  sll          s7, t5, s5
                  add          t6, s5, s0
                  srl          a1, s6, s10
                  slt          t0, s8, zero
                  addi         t1, s9, -582
                  xori         s2, zero, 218
                  slli         s6, s1, 4
                  sll          a6, t2, s0
                  lui          s11, 531649
                  lui          t2, 677496
                  sra          a2, a5, t3
                  slli         tp, t6, 0
                  ori          gp, t5, 952
                  or           a7, sp, a1
                  slti         s5, ra, -1299
                  and          s9, zero, s9
                  andi         zero, a4, 1577
                  addi         a3, s0, 446
                  xori         a4, s1, 94
                  xor          a3, ra, t3
                  auipc        s10, 806269
                  slt          s10, a4, s8
                  auipc        s3, 664846
                  addi         a6, t2, -1825
                  xor          a3, t0, s10
                  srl          t2, s8, t2
                  xori         s2, s9, -975
                  slli         a6, t6, 19
                  lui          s5, 350055
                  sra          tp, a7, s9
                  nop
                  sltiu        s2, a3, -252
                  add          s7, zero, s6
                  sll          a6, a4, t2
                  add          s6, t4, zero
                  srli         a6, s2, 18
                  sra          zero, t4, t1
                  nop
                  auipc        s1, 977230
                  nop
                  slli         a2, t3, 30
                  ori          s2, s1, 1631
                  nop
                  sltiu        s8, a5, 1787
                  srai         a4, t2, 13
                  add          t1, s11, t5
                  add          t5, a0, a7
                  sll          s10, s10, s9
                  ori          tp, s7, 261
                  sltiu        s7, s0, -128
                  add          a4, a2, t5
                  srli         s2, s11, 5
                  lui          tp, 265683
                  sub          t0, t0, s6
                  sltu         t4, sp, t6
                  slt          s7, s1, t5
                  sltiu        s10, s0, 688
                  slli         s2, gp, 26
                  xor          a3, a1, a6
                  lui          ra, 513838
                  sltiu        ra, s7, 1361
                  sltiu        t2, s6, 1404
                  nop
                  auipc        s3, 150698
                  slti         s9, s5, 3
                  slt          ra, ra, zero
                  slt          t3, t5, a1
                  sll          a4, a2, a0
                  ori          s5, sp, 1880
                  slli         s1, s4, 16
                  or           s7, a6, s0
                  sltu         a6, t2, a5
                  sub          sp, t0, a3
                  xori         s0, a1, -925
                  slti         t6, a4, 1125
                  lui          s10, 14834
                  slti         s11, a7, 1974
                  slli         t3, s0, 2
                  slli         s2, t4, 18
                  slti         sp, t3, -482
                  and          t4, a7, s6
                  and          s2, s10, ra
                  and          a7, tp, s1
                  andi         a3, t0, -283
                  addi         a1, s9, -1179
                  lui          sp, 499085
                  slli         zero, s0, 1
                  or           sp, s2, a4
                  xori         s2, zero, 1229
                  sub          t1, a4, t4
                  xori         a3, ra, -1882
                  andi         t0, s11, -1457
                  xori         s5, s7, -1787
                  xori         s3, gp, -1978
                  srli         s3, a6, 22
                  lui          s2, 892922
                  auipc        s5, 512956
                  auipc        s8, 384086
                  slt          a3, a0, t1
                  srl          tp, gp, s2
                  slt          t2, a3, a3
                  nop
                  add          s5, a3, a0
                  ori          a3, t3, -1945
                  sub          a6, a5, a0
                  andi         s1, t6, 1190
                  sltu         gp, a4, s5
                  slti         s5, ra, -672
                  sub          s3, a7, zero
                  add          t1, gp, s2
                  slt          t2, t4, s0
                  srai         s11, a1, 0
                  sltiu        s0, t1, -1850
                  addi         s0, s5, -116
                  sltu         t5, t5, t4
                  slti         a7, ra, 1896
                  sltiu        a6, s5, 731
                  slti         t2, a0, 970
                  sub          t6, s3, tp
                  slt          s1, tp, tp
                  sll          zero, a7, s7
                  xor          sp, s6, t6
                  xor          s6, gp, s8
                  sltiu        s5, t1, -907
                  add          s0, t0, tp
                  ori          s2, a4, 1566
                  sltiu        t0, tp, -534
                  srli         a4, a0, 7
                  addi         t0, tp, 854
                  nop
                  srai         tp, gp, 8
                  sra          s11, s10, t6
                  xori         t6, s8, -374
                  sltiu        t4, s6, -1829
                  srai         t1, t5, 4
                  auipc        s6, 31595
                  sub          s6, s9, zero
                  auipc        a6, 163012
                  srl          t2, t4, gp
                  sra          a2, s8, s4
                  or           s2, s4, a5
                  lui          s5, 266554
                  and          a7, s1, zero
                  xori         ra, t2, -1123
                  add          a3, s4, a0
                  srli         s11, t6, 4
                  add          s9, t6, s10
                  lui          a7, 337280
                  srai         a3, s8, 29
                  sltiu        s0, a2, -1703
                  slli         a2, s0, 27
                  addi         a2, t1, -1400
                  sub          a3, t5, a4
                  andi         a6, s5, -2015
                  lui          t5, 199961
                  srli         t0, tp, 14
                  slt          a2, a7, t2
                  sltiu        s1, s3, 1382
                  sra          t2, a0, a2
                  srli         zero, s6, 16
                  srli         s1, s0, 16
                  andi         s1, s0, -771
                  sltiu        s2, s5, 2029
                  xor          ra, a6, s4
                  auipc        s7, 26093
                  srl          gp, s5, s2
                  or           sp, t0, s5
                  lui          t2, 661779
                  lui          s1, 488221
                  lui          s8, 64786
                  add          ra, s10, s11
                  srli         s0, s1, 29
                  add          zero, s11, s2
                  sll          tp, s9, s0
                  sltiu        s5, t1, -438
                  slli         a4, t1, 1
                  nop
                  srl          t5, s6, t3
                  slt          t4, t1, s4
                  ori          tp, t5, 86
                  ori          s8, s2, 274
                  lui          t3, 842310
                  andi         ra, s2, 263
                  addi         a1, s8, 811
                  srl          s3, ra, t0
                  sll          t3, t1, t0
                  srli         t4, t6, 4
                  xori         s2, a7, -1710
                  srai         a6, s0, 2
                  ori          s11, t4, 1113
                  sll          gp, t1, zero
                  xori         a7, s9, 1369
                  xori         sp, s9, 979
                  srli         t2, gp, 21
                  xori         t6, s2, -1807
                  and          zero, t0, t4
                  add          a6, s8, a0
                  nop
                  slli         s5, s6, 17
                  slti         t6, s11, 977
                  sll          a1, s7, t0
                  xori         s2, s8, 807
                  xori         gp, a5, 1240
                  srai         a6, a5, 12
                  add          ra, t5, s1
                  slli         t4, s2, 7
                  xor          s0, t2, a7
                  slti         a1, a6, -234
                  ori          a4, a4, -62
                  addi         s11, gp, -649
                  slt          s11, a0, gp
                  slli         a4, a7, 2
                  sra          t0, t3, sp
                  slli         gp, sp, 8
                  andi         t1, a2, -1322
                  ori          a1, ra, 2043
                  add          t3, t5, t4
                  andi         t3, t1, -1310
                  ori          sp, s8, 780
                  sll          gp, s4, a3
                  auipc        t5, 53371
                  srai         s7, t4, 1
                  srl          t4, a4, zero
                  slti         t0, a0, -240
                  slti         t0, s2, -1215
                  xori         s7, t2, 884
                  nop
                  sltu         t2, s11, s1
                  auipc        zero, 605064
                  auipc        s11, 54677
                  and          gp, t3, tp
                  ori          s0, t1, -239
                  sltu         s7, s11, a3
                  xori         zero, a0, 1657
                  xor          zero, s3, zero
                  xori         s10, t2, -40
                  auipc        a2, 96564
                  slli         s11, s0, 28
                  addi         t0, a3, -753
                  srl          a4, t5, a5
                  slti         s6, t2, -1664
                  slti         t0, s1, 777
                  xor          s6, ra, sp
                  and          t3, a4, gp
                  srli         a1, t3, 12
                  srai         a2, s10, 21
                  sra          s7, s8, t0
                  sra          sp, t4, a7
                  nop
                  slt          a1, t1, s7
                  sltiu        s5, a4, 1033
                  xor          tp, t2, t1
                  sltu         a7, t5, s3
                  slli         t4, a5, 8
                  slli         s5, s9, 17
                  sltiu        t0, s7, -751
                  xor          s10, t4, zero
                  and          gp, s9, s0
                  nop
                  and          a6, a2, t0
                  sltiu        s5, a6, 930
                  andi         t6, s9, 1184
                  xor          s0, s8, s6
                  auipc        s7, 665715
                  slt          s9, a4, a0
                  ori          ra, s9, -850
                  slli         s11, s6, 16
                  slli         s1, s4, 11
                  andi         t3, gp, 1913
                  lui          t0, 487015
                  slt          a2, s3, a3
                  add          s10, a2, s2
                  srl          s10, s11, s3
                  and          t0, a7, t0
                  lui          zero, 671729
                  sltu         t1, t3, t0
                  lui          a1, 265061
                  nop
                  nop
                  addi         ra, t4, -1745
                  sra          s1, s8, sp
                  srai         tp, s3, 27
                  ori          t6, s11, -1701
                  sltu         s8, zero, s9
                  and          t2, t4, s0
                  sra          s0, s6, s3
                  sll          a2, s6, s1
                  nop
                  nop
                  xori         a1, t0, 932
                  ori          a3, t4, -1522
                  addi         s6, s11, 846
                  slli         s7, t3, 7
                  ori          t0, t4, 1703
                  sltu         s5, s6, a5
                  addi         s0, s5, -1590
                  slti         t1, s0, -1146
                  or           s2, a1, a6
                  xori         a2, t1, -571
                  sub          t0, s6, s5
                  sra          s11, s2, s4
                  xori         s10, t0, -1584
                  slt          t0, s5, s10
                  sll          a2, a1, sp
                  srai         s2, t5, 11
                  lui          t2, 326515
                  nop
                  sltu         s3, a0, a1
                  srl          s5, zero, t5
                  slt          t0, a5, s8
                  lui          t2, 327790
                  sltu         ra, s11, s4
                  sub          a4, s8, s11
                  sltu         s9, a2, t6
                  auipc        s0, 28496
                  add          ra, t2, s5
                  add          a2, tp, t6
                  srli         t6, s7, 7
                  sra          a1, s0, s0
                  sra          t6, t1, a7
                  addi         tp, s5, 460
                  slti         s11, ra, 292
                  srl          gp, a4, t4
                  sra          t6, s1, a6
                  lui          t1, 225443
                  sra          s3, s10, s10
                  xori         t0, a7, -1169
                  lui          t3, 755162
                  sltu         s7, tp, ra
                  xor          s0, s8, a4
                  sltu         a3, s8, a4
                  sll          gp, s0, s1
                  sra          gp, a1, t1
                  addi         s11, s1, -1257
                  sltiu        s5, a5, -1693
                  xor          gp, a0, a0
                  or           t0, s5, a5
                  srli         t1, a1, 28
                  ori          s10, s1, -1629
                  addi         a6, t5, -1868
                  addi         s1, sp, -1842
                  sll          s11, s6, s2
                  and          t5, s11, s3
                  add          a2, gp, a1
                  sra          a1, sp, s3
                  and          zero, s8, t1
                  ori          a4, zero, -692
                  sltiu        a7, zero, -254
                  sub          t1, a2, s7
                  slt          a7, t1, gp
                  lui          t5, 445579
                  sltiu        a6, s7, 1493
                  sltiu        a3, s6, -149
                  addi         a6, a7, -1622
                  slt          s1, a6, s11
                  auipc        t3, 310505
                  nop
                  addi         a1, gp, 1075
                  srli         a1, sp, 23
                  and          gp, zero, s7
                  sll          gp, a0, t2
                  xor          t3, s6, a4
                  srl          s1, s11, s10
                  sra          a4, tp, t6
                  add          t2, t4, a6
                  sub          a7, t6, a6
                  sltiu        s5, a2, 129
                  srli         s3, s2, 31
                  lui          s1, 784258
                  sltiu        sp, ra, -1170
                  nop
                  ori          t1, t5, 1171
                  xori         s11, t4, -1248
                  xori         s8, t5, 1507
                  andi         s11, s5, 285
                  slti         a4, a3, -826
                  and          a1, a3, t6
                  sub          s10, t0, a0
                  slti         a1, s10, -547
                  slt          t3, sp, s8
                  or           a2, a7, t3
                  addi         s10, s0, -1609
                  sltiu        a7, t4, 1804
                  xori         s2, s2, -96
                  srl          t1, t2, s8
                  xor          gp, a3, t5
                  auipc        s6, 482934
                  ori          s8, s10, -1204
                  sll          tp, t0, s8
                  srl          t3, s2, gp
                  srli         t1, t0, 16
                  sltiu        s9, gp, 301
                  sltu         sp, s0, a6
                  srli         s2, s8, 21
                  slli         a7, s10, 19
                  slti         s9, a1, 1925
                  ori          s2, t0, -1831
                  sll          a2, s7, zero
                  sra          t5, t6, s6
                  lui          a7, 192985
                  srai         a3, t6, 11
                  sltu         ra, t3, s7
                  sltu         s3, s5, s0
                  sltu         tp, a4, t3
                  sltu         s6, a4, s8
                  slli         ra, a0, 24
                  or           t1, tp, s8
                  sub          t0, a3, ra
                  slt          s9, t5, a5
                  sub          t1, t0, t1
                  sltiu        ra, t6, 1577
                  xor          s1, ra, s10
                  srai         a6, a4, 1
                  xor          a4, a3, sp
                  srai         s11, s8, 0
                  xor          s0, s6, t5
                  xor          t4, s4, s7
                  andi         t6, s7, 74
                  xori         s9, s3, -41
                  auipc        s11, 929012
                  slti         t2, t1, 1047
                  sll          s3, s8, ra
                  sltu         gp, s11, a6
                  lui          s7, 423333
                  slli         gp, s4, 10
                  sltu         s11, s6, t4
                  or           gp, s3, s9
                  or           s1, s10, s7
                  auipc        t5, 361303
                  slti         t2, s0, -869
                  slti         a1, a1, 524
                  srl          s8, s1, t5
                  sltiu        s7, a6, -1034
                  add          a3, t2, zero
                  auipc        t2, 1044524
                  srai         zero, zero, 22
                  slli         a2, a4, 22
                  addi         sp, s6, -535
                  slti         s9, a7, 1874
                  sra          t3, s1, a4
                  srai         sp, sp, 17
                  slli         s0, t1, 12
                  sltiu        s8, a0, -1442
                  slti         zero, a2, -1231
                  auipc        sp, 772768
                  add          t6, s0, s11
                  slt          a2, ra, t5
                  auipc        tp, 925401
                  srai         t0, t2, 22
                  sltu         a7, s11, s1
                  sub          sp, s3, zero
                  xori         s1, a5, -1874
                  slti         zero, zero, -1151
                  srli         s2, t5, 14
                  lui          t2, 629393
                  andi         t2, a7, -32
                  nop
                  sll          ra, a1, s9
                  sltu         a6, t3, t0
                  add          a7, t5, tp
                  xori         s2, t6, -1968
                  sltu         tp, s0, a3
                  slli         t6, a0, 15
                  xor          sp, s8, s4
                  xor          t3, s5, s9
                  sltu         tp, t3, s4
                  sll          ra, a6, a6
                  sltu         t6, tp, sp
                  and          a2, s10, t5
                  sltu         s3, a4, a7
                  nop
                  or           s6, a0, t6
                  andi         a2, t0, -1365
                  xor          a7, ra, a4
                  nop
                  sltu         a1, t3, s6
                  auipc        sp, 18359
                  srli         s5, zero, 24
                  sll          t6, a1, s11
                  add          a1, a5, gp
                  sra          t2, a0, a0
                  andi         s11, a0, -599
                  slt          s5, s8, t0
                  sub          zero, ra, a6
                  xor          zero, tp, s2
                  srl          s2, a4, ra
                  auipc        a6, 177011
                  sub          sp, s8, s7
                  slti         t2, a6, -61
                  sltiu        s1, a6, 1764
                  add          s7, s3, a2
                  slli         s0, s3, 10
                  xor          a4, t2, t4
                  srai         a2, s11, 3
                  slti         a7, t6, 1363
                  srai         s1, s11, 23
                  sltiu        gp, s10, -1286
                  auipc        t0, 586362
                  auipc        t2, 191774
                  xor          s1, s7, t3
                  or           a1, a2, s9
                  srli         t4, s5, 13
                  sra          s11, s0, t5
                  sltiu        s7, a0, 502
                  slli         t3, t1, 10
                  sub          a3, ra, s4
                  sub          a3, a6, a1
                  srli         a7, zero, 23
                  add          s6, s11, s5
                  andi         t0, a6, -1065
                  srl          s2, s6, a7
                  addi         gp, t3, 2026
                  ori          t1, t5, -1759
                  srli         sp, t3, 0
                  sll          t4, ra, t5
                  srl          s8, s5, s1
                  sra          t6, sp, t5
                  auipc        ra, 49875
                  ori          ra, t4, 815
                  xori         tp, a5, -814
                  xor          s10, a2, a1
                  slli         a2, a1, 19
                  xor          s1, s2, t0
                  slli         ra, t5, 15
                  srl          s10, a6, a2
                  ori          s5, s1, -176
                  sltu         t5, tp, a1
                  sltu         a3, s9, s5
                  srli         s0, s0, 11
                  nop
                  slli         a3, s9, 9
                  or           s7, s10, t0
                  ori          ra, s0, 7
                  ori          zero, s9, 432
                  ori          zero, gp, 1111
                  sra          s3, s6, a6
                  slti         t2, sp, 1393
                  srl          a3, tp, a6
                  srli         a4, s11, 17
                  srai         s6, s1, 30
                  xor          a4, a7, a1
                  sltiu        s11, s9, 1715
                  andi         t5, ra, -43
                  sltu         t4, s0, a6
                  sltu         sp, s1, s2
                  sub          ra, t4, s10
                  srl          s11, tp, s6
                  slti         t6, a0, -1209
                  auipc        s5, 915853
                  srai         sp, sp, 19
                  srl          s3, sp, t0
                  addi         t5, a6, -234
                  srli         zero, s11, 31
                  andi         t4, t4, -1502
                  nop
                  slti         s7, s5, -332
                  ori          t5, s4, 1562
                  srai         t2, tp, 21
                  sra          s9, gp, a0
                  sra          a2, a7, a2
                  sra          s7, t1, s0
                  lui          s6, 679914
                  andi         a2, s11, 423
                  slti         a2, s2, -1341
                  ori          s6, s7, -1891
                  sra          a4, s1, s4
                  sra          s7, a0, a1
                  auipc        a7, 429646
                  nop
                  sltiu        s2, tp, -312
                  srai         tp, s8, 0
                  and          sp, s8, s6
                  addi         t0, ra, -673
                  slt          t0, a5, s1
                  auipc        a7, 948325
                  sub          s5, a4, t1
                  slti         s6, a6, 347
                  lui          t6, 685048
                  srli         gp, s2, 5
                  sltu         ra, t2, s6
                  sra          s2, t2, t5
                  slli         a7, s0, 23
                  sub          s10, t3, t3
                  and          a1, t3, a7
                  sltu         t6, zero, s7
                  auipc        sp, 948840
                  slt          s0, a3, gp
                  ori          t3, t5, -792
                  addi         a6, s11, 508
                  sltu         a7, s7, s5
                  ori          ra, a4, 1528
                  sra          t3, zero, s3
                  srl          s1, t6, a0
                  ori          ra, ra, -1014
                  srli         t1, s5, 4
                  ori          tp, a5, -587
                  slti         s5, sp, 1927
                  xori         a6, a3, 606
                  ori          s7, t1, 1334
                  lui          a7, 951590
                  slti         s10, s2, 96
                  srai         t5, t4, 21
                  xor          s11, s10, t1
                  srli         t5, s11, 4
                  xori         ra, sp, -193
                  lui          t3, 903003
                  addi         a2, gp, 63
                  sltiu        s2, s8, 673
                  slt          s0, sp, t1
                  sub          zero, t1, a7
                  sltu         t2, t5, a7
                  sltiu        s2, t0, -455
                  sra          t2, s1, t5
                  srl          sp, a3, s9
                  ori          s10, a6, -277
                  lui          s6, 141189
                  slti         sp, tp, -88
                  auipc        t0, 380144
                  sltiu        a2, ra, -1802
                  srl          a3, s10, a1
                  addi         tp, t5, -163
                  sll          ra, a1, ra
                  slt          t2, s6, t1
                  sltiu        s2, s0, 603
                  ori          a3, t2, 346
                  add          ra, a5, t3
                  sll          s8, s1, s10
                  addi         t4, s9, -853
                  sltu         zero, s8, ra
                  slli         a7, sp, 17
                  sra          a7, s9, s8
                  and          a3, a2, a1
                  sll          tp, tp, s3
                  slt          s7, s7, a4
                  sub          a7, s4, tp
                  sll          t3, s2, s11
                  sltiu        tp, ra, -1555
                  sra          t2, a6, t5
                  sub          s1, s4, t1
                  xor          t5, a3, t0
                  auipc        s6, 297191
                  nop
                  srl          ra, s4, s8
                  xor          sp, a0, t6
                  nop
                  add          t1, t2, zero
                  srli         t6, t3, 11
                  addi         gp, s10, -275
                  xor          sp, s8, sp
                  slti         t2, s7, -422
                  and          t2, sp, a3
                  slti         a6, a7, -460
                  xori         a2, a6, -1177
                  lui          a2, 131406
                  xor          s3, t0, t0
                  auipc        t2, 929546
                  addi         t2, t1, 580
                  auipc        s11, 919174
                  slti         s3, t0, 558
                  slli         s5, t0, 11
                  sltiu        s5, s1, -756
                  andi         zero, t3, 276
                  srl          t6, s7, a3
                  sub          s3, a3, ra
                  sll          s7, s3, t2
                  sra          t1, t2, s11
                  sltiu        s7, tp, 1620
                  sll          t2, gp, t4
                  sltiu        t5, s9, 616
                  ori          zero, a2, 1471
                  and          s1, s8, t6
                  slli         a2, gp, 2
                  andi         t3, t3, 121
                  srli         s3, t6, 3
                  xori         s3, s9, 973
                  and          s11, t1, t1
                  nop
                  andi         s6, s7, -1476
                  srai         s2, tp, 30
                  sll          s2, t6, t2
                  slt          s6, a0, ra
                  sltiu        s3, s8, -1418
                  lui          a1, 6324
                  slli         t0, s1, 21
                  auipc        t2, 626911
                  sltiu        a1, s5, 1309
                  sra          t2, a5, s4
                  slt          tp, ra, a1
                  addi         s9, a0, 1511
                  add          s6, s3, sp
                  andi         t2, zero, -1216
                  ori          zero, t2, 1630
                  sll          s8, t6, sp
                  addi         tp, s5, -1785
                  nop
                  lui          a6, 518734
                  slt          t5, gp, t0
                  xor          s3, sp, gp
                  srl          t2, a5, t0
                  slli         a7, t5, 26
                  sll          a1, a4, ra
                  auipc        gp, 837022
                  sra          s2, t2, s3
                  sltu         gp, t4, t4
                  slt          t1, s7, s4
                  auipc        t5, 296593
                  sltu         t6, a5, t2
                  ori          a4, gp, 1202
                  xor          sp, t5, a2
                  srl          a7, a1, s4
                  xor          t6, s5, sp
                  sltiu        zero, s3, -1209
                  srai         t2, t6, 7
                  auipc        t2, 550894
                  add          a1, sp, a3
                  auipc        t5, 999405
                  sub          t2, a4, s2
                  srai         t1, t3, 29
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a4, 0x80000000
                  li           a6, 0xffffffff
                  li           tp, 0x80000000
                  li           t2, 0x0
                  li           s6, 0x80000000
                  li           s5, 0x80000000
                  li           s11, 0x959134fc
                  li           t1, 0x8155cce5
                  li           gp, 0xffffffff
                  addi         gp, s8, 1795
                  nop
                  lui          s5, 848569
                  sub          s6, t1, s6
                  lui          t1, 487425
                  auipc        t2, 95786
                  addi         a6, tp, -1902
                  nop
                  auipc        s11, 31385
                  addi         s11, a4, 1722
                  add          t2, s6, a4
                  addi         s5, t2, -1848
                  nop
                  add          gp, gp, s5
                  addi         t2, gp, -1751
                  lui          a6, 951976
                  addi         gp, s8, -990
                  auipc        gp, 228745
                  sub          tp, t1, s11
                  lui          s11, 469629 #end riscv_int_numeric_corner_stream_19
                  slti         s10, s5, 1927
                  add          a4, t1, ra
                  addi         s8, ra, -347
                  sra          a3, gp, t1
                  add          s8, a2, a1
                  or           a4, s11, a6
                  nop
                  and          s0, t5, a6
                  xor          s9, zero, t4
                  xori         a4, gp, -375
                  sltiu        s6, zero, -734
                  sltu         s0, s7, t2
                  lui          s1, 963969
                  sltiu        t6, t4, -1462
                  xori         sp, t4, 85
                  slli         t0, t1, 5
                  xor          t5, s3, zero
                  srai         t2, ra, 14
                  lui          a1, 222307
                  srai         s0, s2, 14
                  srli         t6, t0, 20
                  slt          s9, tp, s3
                  add          a6, s6, ra
                  or           gp, a1, ra
                  slli         s10, t1, 18
                  srai         t5, t2, 19
                  sra          t6, sp, s4
                  xor          a3, t4, sp
                  and          a1, a4, a0
                  srli         t1, s2, 11
                  ori          t0, s9, 1677
                  auipc        s5, 264877
                  sltiu        t0, s4, 1100
                  srl          s7, s5, a7
                  and          t6, t6, s11
                  lui          ra, 295510
                  and          s11, gp, s0
                  sll          s10, s4, a0
                  sra          a2, a4, s4
                  and          t0, s4, a0
                  xor          sp, t3, t2
                  sltiu        sp, a2, 743
                  nop
                  srai         s10, s3, 27
                  xor          tp, t3, s1
                  auipc        s8, 657042
                  sub          s2, a1, ra
                  sll          a6, a4, sp
                  add          t1, t4, s4
                  or           gp, s4, s3
                  add          ra, a1, t0
                  slt          tp, s1, s9
                  sltiu        s5, s11, 426
                  lui          s3, 852674
                  srl          s10, tp, t0
                  sra          t1, a7, t4
                  nop
                  sub          gp, ra, s7
                  slt          s11, t3, s8
                  srli         s5, tp, 5
                  andi         t6, t1, -1765
                  xor          t6, tp, s2
                  sub          t3, s8, t1
                  auipc        s2, 132658
                  sltu         a1, s9, t5
                  xor          t3, s3, s1
                  srai         tp, ra, 28
                  and          a4, t6, a3
                  srl          a6, t5, s5
                  slti         zero, t2, -996
                  ori          s9, a3, 666
                  lui          s0, 803945
                  or           sp, zero, a6
                  slli         s1, s7, 24
                  ori          a6, t1, -300
                  srl          t0, s11, s7
                  slt          a4, a6, s8
                  srai         t2, t3, 15
                  slt          t0, t1, s8
                  ori          t2, t0, 107
                  and          s0, s4, ra
                  xor          sp, s2, t3
                  lui          zero, 578045
                  sltiu        t4, a7, 1778
                  xori         s1, s9, -1855
                  slli         ra, sp, 26
                  andi         t2, s10, 1820
                  sra          t4, s6, tp
                  nop
                  xor          sp, s3, s9
                  sltu         s10, gp, a3
                  addi         tp, s1, -431
                  and          a2, t1, t4
                  ori          tp, t5, 383
                  add          s0, s10, t3
                  and          s5, t6, s5
                  sltu         s10, a4, t3
                  srai         t3, s10, 26
                  ori          s0, t1, -1049
                  srli         s0, s7, 9
                  sra          t4, t5, a7
                  srai         s2, t2, 30
                  nop
                  srai         t5, s8, 3
                  slt          ra, s4, a6
                  srli         t3, t2, 6
                  slt          zero, t4, s6
                  and          s6, t0, a0
                  sub          s1, s6, t6
                  or           s5, a3, t2
                  or           ra, s8, s6
                  lui          t6, 388894
                  srl          t1, s7, zero
                  slti         s11, a2, 1421
                  srli         t5, t1, 2
                  sltiu        s10, a0, -500
                  lui          s6, 871748
                  ori          sp, t3, -931
                  slti         a7, zero, 274
                  ori          t3, s6, -930
                  sltu         gp, t3, a7
                  sll          s3, a4, t0
                  slli         zero, s6, 12
                  andi         sp, s7, -443
                  xori         a1, t0, -1989
                  and          t2, s5, s7
                  slti         a3, s1, 1564
                  slti         a1, s5, -114
                  sub          tp, s2, s10
                  xor          s7, t0, gp
                  auipc        sp, 658220
                  andi         s11, a0, -1987
                  slti         s11, s11, 1990
                  lui          s2, 351829
                  and          s6, t2, a3
                  srai         s2, a1, 13
                  srai         t0, t0, 27
                  ori          s5, a1, 1708
                  srai         t1, sp, 2
                  xori         zero, t5, -637
                  and          s10, t6, s1
                  sub          gp, s11, gp
                  sra          gp, a0, s4
                  srl          a3, s7, ra
                  and          s3, ra, t4
                  andi         s8, t2, 59
                  sltiu        s1, t4, -1880
                  and          s7, s4, a4
                  sltu         t5, a1, gp
                  sltiu        s7, s10, -836
                  sltu         a1, ra, a1
                  slti         s7, a6, -288
                  slti         t3, a3, 391
                  andi         a1, s11, 2006
                  sll          t6, a1, a1
                  sll          s2, s5, s9
                  nop
                  sub          s1, t1, s0
                  slti         a7, s11, -38
                  or           s1, gp, t6
                  ori          t6, t0, -67
                  sra          s0, a3, a5
                  add          gp, s8, s2
                  slli         a3, s11, 26
                  slli         gp, s11, 29
                  slti         gp, sp, -515
                  and          ra, s6, tp
                  sll          s8, a3, t0
                  srai         zero, a3, 13
                  sltu         t0, a2, s0
                  slti         t2, t0, 311
                  lui          sp, 55125
                  xor          s11, a5, gp
                  sll          t0, t1, s7
                  srai         s6, s6, 4
                  sll          s5, s4, a3
                  addi         zero, s0, -190
                  srai         s2, s7, 6
                  srai         a4, sp, 0
                  srai         t4, tp, 10
                  add          t1, a4, sp
                  sll          a6, s9, a6
                  sub          ra, ra, a1
                  sra          a3, t1, t5
                  srl          s1, a0, t4
                  or           s9, t1, t2
                  sub          t4, t5, a0
                  sll          a1, t4, a0
                  add          a4, a7, s1
                  srl          s5, s4, s2
                  add          a1, t2, t1
                  ori          s9, s7, 143
                  xori         a1, t3, -1302
                  srai         s1, tp, 12
                  sltu         a1, s5, zero
                  sltu         t6, s8, s8
                  slli         t6, a5, 22
                  slli         s10, s9, 2
                  addi         s11, s11, 1883
                  ori          a7, sp, 518
                  sltiu        s11, t0, -1224
                  srl          s0, zero, s0
                  add          a3, t1, a6
                  slt          t6, a2, t3
                  sra          a1, t3, a6
                  srai         s11, sp, 13
                  slti         a2, tp, 407
                  sltu         t1, s1, s9
                  sll          t5, zero, a1
                  or           sp, a4, s0
                  nop
                  xor          t0, s10, a3
                  lui          gp, 484394
                  srli         s6, t5, 25
                  sub          ra, t3, s4
                  auipc        zero, 894792
                  sra          s1, s3, s9
                  srl          t4, a7, a5
                  slt          t0, s7, s8
                  ori          s1, s7, 737
                  sltiu        tp, s7, 586
                  and          s7, s6, t5
                  slli         t0, t4, 14
                  ori          zero, a4, 355
                  slli         s10, s0, 4
                  slt          a1, a5, t6
                  sltu         s1, t0, ra
                  sltu         s10, a7, t0
                  slti         zero, s1, 228
                  ori          a3, a5, 1727
                  srli         s9, s0, 15
                  and          s1, s7, t2
                  lui          sp, 830705
                  ori          s0, a3, -1084
                  slti         sp, s11, 1768
                  auipc        sp, 539355
                  nop
                  nop
                  andi         s5, s1, -1920
                  slt          ra, a4, t0
                  srl          t6, t0, t2
                  slt          s6, sp, a5
                  slt          s6, sp, t1
                  slt          t3, t0, t2
                  ori          s11, s7, 1559
                  slt          tp, s11, s7
                  xor          t2, sp, s3
                  srai         s8, a3, 23
                  sra          s8, t4, a5
                  slli         a7, s3, 29
                  sub          t6, t2, s5
                  sltu         s2, t2, s10
                  slt          s0, s8, gp
                  slli         s3, a0, 5
                  sltiu        a2, s6, 688
                  auipc        a6, 292705
                  sltu         a3, s8, a6
                  nop
                  sltiu        zero, tp, -1124
                  sra          t4, t1, t2
                  andi         ra, s1, -1649
                  or           s7, a3, a3
                  and          tp, t5, a4
                  slt          s5, s2, t5
                  xori         s7, s7, 1554
                  srai         zero, t4, 28
                  sll          s1, t5, s2
                  addi         t5, t6, -768
                  and          s2, t1, a1
                  xori         tp, tp, 622
                  srai         a1, a0, 14
                  xor          t5, sp, s3
                  sll          s5, s10, t5
                  nop
                  and          s3, s11, t3
                  ori          tp, t5, -64
                  sltiu        t0, t3, -1230
                  xori         sp, t0, 1040
                  sltu         s1, t3, zero
                  sra          s1, s3, a3
                  auipc        s3, 697310
                  xori         s6, a1, -317
                  srli         s7, a2, 19
                  slti         s11, a7, 1213
                  slli         sp, s2, 26
                  srli         t6, s5, 23
                  slli         s7, s0, 29
                  slli         a4, a2, 0
                  sll          s1, t0, t5
                  xor          s6, a2, s8
                  sltiu        s5, a4, 1680
                  andi         gp, t5, 1814
                  slli         a1, s0, 7
                  andi         t6, t6, 554
                  add          a1, s0, s5
                  xor          t2, a2, a4
                  slt          s9, zero, s5
                  andi         a2, s4, 601
                  or           a1, a0, t6
                  nop
                  nop
                  add          s8, s1, t6
                  or           a3, a3, t2
                  xori         zero, s9, -670
                  slli         s1, s4, 24
                  sltiu        a7, ra, 1671
                  sltiu        t0, s5, 1055
                  srai         s9, a6, 29
                  srl          a7, t0, a1
                  and          t1, tp, s5
                  or           s10, s11, t3
                  xori         zero, a5, 1569
                  auipc        s10, 921320
                  slli         s3, t4, 2
                  slti         s7, a7, -1575
                  add          s1, s0, s11
                  lui          s8, 238806
                  slt          s1, a7, tp
                  ori          s8, s5, 212
                  and          s10, s7, t1
                  sltu         a3, s11, a1
                  auipc        s3, 568274
                  andi         tp, s9, 664
                  andi         s6, t4, 924
                  andi         a3, s8, 354
                  nop
                  slt          ra, t6, a7
                  andi         s5, t0, 179
                  sltu         t4, s2, t5
                  andi         s0, a6, 1983
                  sra          s2, a0, s11
                  add          s9, a2, a0
                  sltiu        tp, s6, 830
                  slti         s3, s11, 422
                  xor          s5, t2, s3
                  sub          t0, a3, t2
                  sltu         t1, a4, s11
                  add          t0, a5, t2
                  srl          t4, s6, a3
                  nop
                  and          a7, s8, a5
                  srli         a3, t4, 7
                  add          t2, s3, sp
                  xor          t3, a1, a4
                  slt          t0, t1, s5
                  addi         t4, s9, 1120
                  srli         gp, s2, 24
                  slt          a1, t6, a6
                  sub          s2, t0, s10
                  sltiu        s6, ra, 1754
                  xori         t0, a6, 340
                  srl          ra, t3, t5
                  sltiu        a4, t2, -613
                  slti         zero, tp, 777
                  andi         t2, t2, -1354
                  add          s0, s1, s7
                  sll          a2, a0, gp
                  auipc        t4, 327064
                  andi         s8, s4, -512
                  lui          t3, 762500
                  andi         ra, t3, 266
                  andi         s7, t2, 1033
                  srli         a6, s1, 22
                  sll          zero, t3, t1
                  sll          t0, s3, a5
                  slt          t2, s8, a3
                  slti         s9, ra, 489
                  or           a1, s1, s5
                  slt          s5, s5, t5
                  srl          s11, tp, t5
                  lui          a2, 392592
                  sltu         a6, s8, s0
                  auipc        t4, 444823
                  auipc        t5, 436482
                  auipc        gp, 816155
                  andi         s8, s10, -1559
                  sltiu        t6, t6, -420
                  xor          gp, s8, a3
                  sra          gp, tp, t5
                  add          s1, s6, s0
                  slt          s1, ra, gp
                  srli         s1, t5, 24
                  slt          s8, a3, s5
                  xor          s9, sp, sp
                  sub          t0, gp, tp
                  srai         s8, a0, 18
                  srl          s2, gp, s7
                  srl          t4, a4, t1
                  andi         sp, a1, -1844
                  srli         a1, s3, 26
                  sra          ra, a2, s8
                  sltiu        t0, s1, -1486
                  lui          a1, 941172
                  slti         a3, s8, -696
                  sub          gp, t3, t4
                  or           t2, a0, a3
                  sub          a4, s6, a4
                  srl          a4, a4, t3
                  and          s2, t4, s5
                  lui          s0, 597503
                  slt          a7, a1, s1
                  sltiu        t3, a6, -723
                  nop
                  or           t1, t0, sp
                  ori          s8, zero, -1332
                  lui          t1, 292755
                  add          t1, s10, s5
                  andi         zero, s4, -20
                  ori          s5, s11, 1343
                  srai         s9, t6, 11
                  auipc        a3, 492636
                  addi         zero, t6, -878
                  xor          t5, s1, a2
                  sltu         t2, a5, a7
                  srli         ra, sp, 19
                  add          s9, s11, s0
                  srl          s3, zero, tp
                  slti         s6, ra, -1275
                  nop
                  sll          ra, a2, t2
                  sltiu        a6, a5, 1502
                  srli         ra, sp, 5
                  slti         s9, ra, 611
                  nop
                  srai         a4, a2, 2
                  slli         s10, a1, 28
                  sltiu        s1, tp, -656
                  add          s9, t6, t5
                  sra          s0, a2, s10
                  and          s0, s6, gp
                  xor          a4, s5, a5
                  sltiu        a1, a6, 1994
                  sltu         s6, s10, a6
                  slti         s11, a7, 318
                  or           s7, s5, a0
                  sltu         s1, a1, s6
                  auipc        t5, 922599
                  sltu         t0, ra, a5
                  slli         s5, ra, 16
                  or           s9, t4, a4
                  sll          a6, s3, a2
                  sltu         t5, a6, s3
                  sltiu        ra, t6, -666
                  slli         s1, s6, 11
                  xori         s5, t0, -1223
                  slti         a6, t4, 809
                  sub          t0, s4, s11
                  addi         a6, t3, -791
                  auipc        tp, 3507
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           t4, 0xf12623ba
                  li           ra, 0x80000000
                  li           a4, 0x0
                  li           t5, 0x80000000
                  li           s7, 0x80000000
                  li           a2, 0xffffffff
                  li           t2, 0xefbbf9b
                  li           s1, 0xffffffff
                  li           a6, 0xb5a3f590
                  nop
                  lui          ra, 237110
                  lui          t2, 222195
                  nop
                  add          t5, ra, t5
                  sub          s5, t2, s1
                  auipc        a6, 308833
                  auipc        s7, 548438
                  addi         a2, a4, 42
                  add          t4, t2, a2
                  lui          s1, 679325
                  sub          s1, ra, t5
                  sub          s1, a4, ra
                  auipc        s5, 229384
                  sub          t4, s7, s1
                  add          ra, t4, s7
                  auipc        t5, 462982
                  lui          t5, 639843
                  sub          a4, t2, t5
                  lui          s1, 649182
                  auipc        ra, 68551
                  sub          a4, s5, s1 #end riscv_int_numeric_corner_stream_18
                  sra          s7, a7, a2
                  sra          s2, a7, s9
                  auipc        s6, 764593
                  xori         a3, s7, -1940
                  srl          t0, t1, s8
                  slt          t6, s6, s6
                  lui          a4, 376746
                  auipc        s3, 711066
                  sra          t3, s11, s0
                  xor          s11, s1, s7
                  xor          a4, a4, s6
                  srai         ra, s6, 3
                  sll          t1, s10, s9
                  sltu         s8, t2, gp
                  or           tp, s5, a4
                  xor          s9, s5, s10
                  slt          sp, s3, gp
                  sra          a7, ra, s8
                  lui          tp, 874755
                  xori         s2, s8, 18
                  xor          sp, t5, a0
                  add          zero, s1, a4
                  lui          a2, 417224
                  nop
                  nop
                  add          s2, a2, t0
                  sub          t1, sp, sp
                  nop
                  slti         s3, a1, 415
                  andi         gp, s7, -1779
                  slti         tp, tp, 1151
                  addi         s6, s4, -1684
                  srl          a1, a6, gp
                  andi         a2, s8, 90
                  slli         gp, sp, 28
                  add          s2, s8, s0
                  xor          gp, t3, t0
                  sltiu        ra, a1, 1031
                  or           a7, s1, s3
                  lui          s1, 368691
                  slti         zero, a2, 218
                  slti         s9, t5, -411
                  lui          s10, 945293
                  or           s7, s11, s5
                  ori          s3, s1, 1845
                  sltiu        s6, s5, 1659
                  lui          a2, 277464
                  sltu         a6, tp, sp
                  ori          a6, s10, 201
                  ori          s3, a2, 359
                  slti         t5, a7, -1813
                  addi         s11, zero, -225
                  sltiu        t2, a7, 843
                  andi         s6, t4, -1327
                  lui          s1, 733798
                  slt          a3, a2, a3
                  srai         s0, ra, 2
                  xori         s5, a1, 402
                  nop
                  and          s7, s1, t5
                  sub          s5, s7, a5
                  sll          a7, a6, t5
                  sltu         s11, s9, s9
                  ori          a1, t1, 1299
                  nop
                  srl          a7, s3, a6
                  nop
                  sltiu        zero, a1, 1698
                  slti         s10, s0, -1080
                  lui          a4, 172405
                  srl          zero, gp, a5
                  auipc        gp, 792445
                  sll          a3, s7, sp
                  srli         gp, tp, 31
                  slli         s3, t1, 1
                  sll          t5, t4, a4
                  addi         a7, a7, 334
                  auipc        s3, 713534
                  lui          gp, 626919
                  xor          a4, a7, s9
                  slti         ra, tp, -165
                  ori          s6, a3, 1395
                  sltu         t5, a4, a0
                  lui          s5, 453389
                  sltiu        a7, s6, -276
                  slti         t3, a5, 275
                  sltu         s6, s11, s11
                  sll          s8, t4, s7
                  and          s1, s10, a3
                  auipc        sp, 926393
                  addi         s2, s11, -196
                  sltiu        s9, a3, 427
                  sltu         s1, s7, s5
                  slti         t0, zero, 1920
                  ori          t5, s6, 1334
                  sltu         a4, t4, s11
                  or           s10, s2, tp
                  sll          s1, s3, a6
                  sltu         t2, ra, t0
                  sub          t2, s3, s10
                  auipc        s3, 6598
                  sltu         s5, a5, ra
                  sltiu        s8, gp, 1387
                  srai         gp, s8, 18
                  slt          a1, t3, t1
                  xori         a3, tp, -1025
                  srai         t5, t5, 3
                  add          t6, gp, ra
                  ori          t4, a6, 1535
                  srai         a3, s2, 17
                  or           a1, a1, t1
                  add          s10, t3, s9
                  or           t0, s3, a2
                  srai         s11, t2, 20
                  andi         s6, a6, -1103
                  andi         t6, ra, 1958
                  sll          t6, a0, s4
                  slti         t2, a1, -1932
                  srl          s11, a4, a3
                  lui          s1, 936226
                  nop
                  and          a7, zero, a5
                  srai         s10, s0, 18
                  srli         a6, t5, 14
                  slti         t3, a1, 1288
                  xori         s9, s3, 1707
                  addi         s5, a0, -902
                  slt          t1, a3, a5
                  slt          zero, tp, t2
                  sll          s10, tp, t6
                  slti         s5, a3, -1976
                  srl          t3, t6, s6
                  sra          sp, a4, a2
                  ori          t6, t2, 1939
                  srai         a2, zero, 23
                  sll          t2, a6, a1
                  ori          s11, s2, 1197
                  ori          s7, sp, 43
                  srli         t4, s3, 18
                  slt          t2, s3, s2
                  andi         s2, s2, -237
                  add          s3, a3, a5
                  nop
                  slt          t1, a6, a1
                  ori          t6, s2, -512
                  nop
                  srl          s8, a7, ra
                  add          s0, a6, a6
                  sub          s7, tp, a5
                  sll          t6, sp, t4
                  ori          t2, a2, 627
                  xori         s11, a4, -1544
                  sll          zero, s3, a2
                  slti         s0, a1, 1105
                  sltu         a1, sp, t2
                  srl          t4, a6, a1
                  andi         t3, zero, -1909
                  andi         s0, t0, 1195
                  auipc        s5, 1007443
                  and          t1, s11, t4
                  slti         t5, s4, 1090
                  slli         a3, gp, 11
                  xor          zero, s3, t0
                  add          a7, a2, s9
                  slt          a2, zero, t3
                  addi         s2, a2, 1063
                  addi         gp, tp, -711
                  auipc        s11, 607024
                  sub          s5, t6, a3
                  sub          tp, tp, s8
                  xori         s0, t1, -266
                  slt          a6, tp, ra
                  sltiu        t2, s0, 940
                  nop
                  add          t1, a0, t2
                  slli         t4, s11, 22
                  srli         a2, s6, 17
                  xor          tp, a4, a2
                  addi         a1, sp, 1455
                  and          s0, s8, sp
                  add          a4, a6, t1
                  and          s8, t5, s2
                  srai         s6, s1, 26
                  or           gp, a5, a3
                  sltu         s9, a4, s9
                  andi         s1, t3, -797
                  sub          t3, t2, s7
                  slli         s5, a7, 31
                  slli         t2, a1, 2
                  sub          s2, t2, t1
                  sub          a6, s4, s7
                  lui          zero, 270140
                  sub          a3, a7, a2
                  add          ra, t4, a4
                  add          s11, a1, s5
                  or           a2, t6, s1
                  or           tp, a2, s8
                  srli         t5, gp, 2
                  add          t4, t0, a1
                  srl          s11, s3, a6
                  and          s0, a1, sp
                  sub          s5, t6, s7
                  sub          gp, s10, gp
                  lui          s2, 995347
                  slt          t6, s8, a7
                  srl          t2, s1, s5
                  srai         tp, s0, 10
                  slt          s2, s10, t0
                  xor          tp, s3, s7
                  sltu         s11, t4, s5
                  xori         t1, t6, -1939
                  nop
                  lui          s8, 786847
                  addi         a7, s10, 1155
                  sll          t5, s5, t5
                  add          a2, ra, s2
                  srli         s8, t6, 18
                  srl          s2, t3, s8
                  andi         tp, s0, -1627
                  nop
                  or           s0, gp, a4
                  ori          zero, a5, 1204
                  srli         t6, a3, 29
                  sra          a6, tp, ra
                  auipc        t3, 578933
                  ori          s1, t2, -924
                  sltu         a2, t0, a4
                  sll          t0, t4, s9
                  or           s3, s8, s5
                  or           s8, t4, zero
                  or           s8, t5, s10
                  slt          s6, a6, s3
                  xori         s10, t2, 995
                  slti         zero, a2, -381
                  andi         t3, a3, 1574
                  auipc        s2, 737910
                  nop
                  srl          t2, t0, s1
                  sub          s9, t2, tp
                  sltiu        s2, a0, -1365
                  sub          a7, s0, t6
                  ori          t2, s4, 813
                  nop
                  add          sp, t0, t5
                  andi         t2, a4, -1653
                  auipc        s11, 788748
                  or           tp, tp, s1
                  sltu         s8, s3, a0
                  slli         s5, zero, 5
                  xor          sp, s2, t5
                  addi         a1, t4, -406
                  slt          s7, s3, t2
                  sub          t5, s11, s4
                  sll          s11, a6, gp
                  slti         s8, s1, 933
                  sra          a7, ra, t6
                  sll          zero, a0, zero
                  ori          t2, a5, 1003
                  nop
                  and          t1, t4, a2
                  and          s1, a6, sp
                  addi         ra, a0, 48
                  add          a4, s9, a7
                  nop
                  srai         a4, s10, 4
                  srl          t2, s10, a6
                  xor          s1, a3, s11
                  sra          s0, s5, t4
                  srl          a1, s0, t2
                  slti         a2, ra, -1815
                  sub          t2, a5, s5
                  slli         a1, zero, 29
                  andi         t1, t4, 696
                  sltiu        a1, t0, -1915
                  add          s10, s10, gp
                  xor          a7, s8, s6
                  slt          t0, s10, s7
                  addi         s10, a1, -374
                  srli         t4, s11, 21
                  slti         t5, t0, -611
                  srli         s0, a5, 20
                  or           s6, t5, a4
                  lui          t0, 787866
                  slti         s7, a5, -554
                  srai         a4, tp, 18
                  srai         sp, a0, 31
                  andi         t0, a0, 178
                  sll          a1, s6, s6
                  andi         a3, s1, 532
                  sltu         s2, a4, a3
                  srl          s5, s6, gp
                  auipc        a4, 127747
                  srli         ra, s3, 31
                  sltu         s7, s3, sp
                  slli         s0, s3, 6
                  add          s2, t4, s0
                  sub          s11, a2, ra
                  or           t3, s3, sp
                  srli         t6, t0, 17
                  add          ra, s10, a7
                  srli         s7, s9, 29
                  xor          t6, ra, sp
                  add          t5, s1, tp
                  lui          s9, 407542
                  lui          t6, 977832
                  nop
                  xori         sp, s2, -1483
                  sra          s7, a4, tp
                  or           s5, t3, ra
                  sra          t6, a2, t3
                  auipc        s1, 505597
                  addi         a7, s4, -262
                  nop
                  sltiu        a4, a3, -692
                  ori          t6, a5, 404
                  addi         gp, s4, 451
                  sra          a2, a1, t1
                  or           gp, s1, t6
                  ori          t1, tp, 1776
                  sltu         t4, a0, t2
                  srai         t1, a4, 3
                  andi         s6, t2, 1088
                  slti         t0, a6, 1229
                  slti         s9, a2, -571
                  ori          t0, s0, 1499
                  and          a3, gp, a3
                  srai         a7, s6, 15
                  sub          s7, t0, zero
                  srli         t4, a6, 19
                  sltiu        zero, a7, 80
                  slli         s0, ra, 29
                  or           gp, s7, s8
                  srai         s5, a3, 8
                  nop
                  andi         t4, t5, -226
                  xor          a2, t2, sp
                  slti         t6, t2, 1010
                  or           s3, s8, a3
                  slti         a1, t3, 1173
                  lui          tp, 153474
                  or           s6, a5, gp
                  slt          a7, t4, s1
                  sltu         s11, t4, a7
                  srli         s10, t0, 22
                  slti         sp, s3, 745
                  andi         a1, s11, -1617
                  slt          a2, a3, s1
                  and          s7, a5, s6
                  sra          s5, t2, t1
                  ori          gp, a7, 1941
                  srai         t2, zero, 21
                  addi         s6, a2, 1116
                  xor          s1, a3, a3
                  slli         a4, a1, 3
                  sll          a3, a2, s1
                  ori          a6, t4, -1221
                  andi         s1, s10, -1279
                  xori         s11, a0, -1841
                  sll          t6, a0, t6
                  srli         t6, s0, 5
                  add          s3, a2, t4
                  sltiu        t0, t6, 224
                  slli         a3, s11, 2
                  auipc        a6, 703414
                  xori         ra, s2, 1504
                  andi         s1, s3, 315
                  ori          a4, s0, 1627
                  addi         a7, s10, -388
                  sll          s5, a1, a2
                  andi         t3, tp, 1799
                  slli         a1, t3, 14
                  sub          t2, a1, s0
                  xor          s7, s0, a3
                  srli         t6, gp, 23
                  xori         s9, s5, 1820
                  srl          t2, s11, a1
                  xor          tp, s7, s0
                  srai         zero, s2, 30
                  and          t2, a6, ra
                  sra          a3, a6, gp
                  addi         a4, a5, 1331
                  sra          s10, t1, s7
                  and          t5, s8, gp
                  srai         s7, t6, 3
                  slli         a2, a0, 21
                  ori          t6, sp, 27
                  sub          a6, t2, t2
                  srl          s5, a0, s0
                  srai         t2, t5, 29
                  andi         s10, a1, 1279
                  add          ra, ra, s6
                  slli         s2, s11, 27
                  slli         s1, a2, 1
                  or           t0, a7, a7
                  slt          s2, zero, s0
                  add          a7, t0, s6
                  lui          a3, 324248
                  auipc        s3, 759787
                  or           t2, t0, s1
                  sltiu        a2, a3, -926
                  nop
                  sltu         t2, t3, s0
                  add          s1, sp, a6
                  or           a2, a6, a0
                  srli         t1, s4, 19
                  xori         a3, a5, -1075
                  sll          a1, a2, s1
                  nop
                  ori          t5, tp, 315
                  slti         t6, s6, -1631
                  slt          sp, t6, t5
                  srl          s7, sp, t2
                  and          t6, s9, ra
                  ori          gp, a4, 1279
                  slt          a2, s0, sp
                  slti         a4, s9, -1547
                  sltiu        s1, t1, -911
                  andi         t1, s6, 251
                  srl          t6, s10, s10
                  andi         s10, t4, -537
                  sub          t5, zero, a4
                  lui          s2, 127310
                  addi         t3, a4, 757
                  slli         ra, t2, 20
                  add          t4, t6, s11
                  slti         t0, s5, 46
                  sra          s9, t6, a7
                  srl          t3, gp, t5
                  addi         t0, t0, 932
                  slli         s9, s4, 25
                  add          s11, gp, t1
                  nop
                  lui          sp, 222148
                  and          tp, s6, s8
                  slti         s10, a5, -12
                  ori          s8, s7, 269
                  addi         a1, s6, 380
                  addi         s3, s6, -779
                  and          a3, a7, a3
                  sltu         t6, s9, s3
                  slt          a4, s11, t5
                  slti         s6, a3, -918
                  add          a7, zero, s9
                  auipc        a6, 205294
                  slti         a1, a3, 1010
                  auipc        s9, 759159
                  sltu         s10, a4, a1
                  xori         t5, s5, 815
                  srai         t3, ra, 1
                  add          s8, a1, s3
                  lui          tp, 459551
                  addi         zero, s7, 1832
                  slti         t4, ra, -1074
                  xori         zero, ra, -326
                  sub          t4, a3, sp
                  sra          a2, t5, zero
                  slti         t5, a3, 1245
                  slt          s2, s2, t0
                  sub          a1, t0, a6
                  sub          s6, t5, s3
                  slt          a3, s10, a7
                  srai         ra, t0, 10
                  sra          zero, s7, a5
                  slli         a7, a5, 13
                  sltu         s2, t2, s11
                  srli         t2, t6, 18
                  sltu         s7, t3, a5
                  lui          t6, 800536
                  nop
                  slt          s5, s1, ra
                  addi         s10, a5, 1268
                  ori          ra, s6, -1639
                  or           s9, s1, s3
                  xori         a2, s0, -1361
                  ori          s0, t4, -1343
                  sltu         ra, s10, s1
                  sltu         a7, s9, gp
                  sltu         s0, a5, a2
                  auipc        s7, 825478
                  auipc        a3, 220632
                  slli         s8, s5, 12
                  and          a4, s6, a5
                  nop
                  lui          t2, 524829
                  add          zero, a6, a0
                  and          t4, s8, s10
                  sltu         s2, s6, a0
                  lui          ra, 363389
                  and          t1, s4, s0
                  srai         sp, sp, 16
                  srli         s2, a6, 4
                  lui          t5, 120332
                  andi         t4, s8, 916
                  nop
                  auipc        t5, 1018712
                  ori          s5, s10, 163
                  sltu         a1, a0, s3
                  sltiu        s1, s11, -976
                  srl          t0, s8, s2
                  slli         s0, a2, 23
                  and          t3, s8, gp
                  sra          a2, gp, s9
                  or           t6, s11, s5
                  srli         sp, tp, 5
                  sra          gp, a5, s2
                  sra          ra, a3, s5
                  srl          s7, sp, t3
                  or           t4, tp, ra
                  sra          s6, t6, a3
                  xori         s5, t6, -1981
                  and          a7, s7, s6
                  sra          s3, s2, s9
                  auipc        s8, 981349
                  add          s5, ra, t5
                  slti         a4, s8, -866
                  sltiu        t0, a3, -615
                  sltiu        s11, s2, -1260
                  srli         t2, a5, 8
                  xori         s1, s11, 1701
                  or           t6, s2, t5
                  slti         ra, a3, 1458
                  xor          s3, s1, a5
                  lui          a7, 3122
                  sll          gp, gp, s4
                  sub          a7, tp, gp
                  xori         tp, s11, 1167
                  xori         s2, s0, 585
                  srl          a1, t5, sp
                  add          a6, s2, t4
                  srai         a7, a0, 25
                  lui          s0, 371440
                  auipc        t0, 429346
                  srli         a7, t3, 30
                  sub          gp, a0, s4
                  sltiu        s7, s10, 1825
                  sll          gp, t0, t5
                  or           s9, s11, t1
                  andi         a3, t1, -1066
                  sltu         a6, s3, t1
                  sltu         ra, s1, t4
                  xor          a7, tp, s0
                  add          t1, a5, s11
                  sra          a2, a5, t2
                  nop
                  ori          s8, s11, 1334
                  srl          s3, s10, a6
                  srai         s1, gp, 6
                  srl          zero, t5, tp
                  srl          t5, s5, t3
                  srl          s9, s4, a3
                  ori          s9, a0, -1246
                  sltu         tp, t4, s6
                  srai         s10, s4, 16
                  srai         t5, gp, 29
                  sltiu        tp, tp, -2043
                  ori          t3, zero, -487
                  sltu         s0, sp, s6
                  auipc        s5, 487759
                  ori          s2, s3, -1186
                  slli         t2, s6, 1
                  lui          a7, 980194
                  slti         t3, ra, -361
                  slti         s6, a0, -121
                  srai         t2, s3, 9
                  auipc        sp, 445
                  slli         t4, s11, 24
                  srli         sp, a6, 21
                  sll          sp, a0, s2
                  sub          a3, s10, ra
                  nop
                  slti         s2, s3, 912
                  sltiu        a2, s5, 1692
                  add          a2, zero, t1
                  xori         s1, a2, -897
                  sll          t2, a0, s2
                  sll          t2, s11, ra
                  or           a6, t1, s0
                  sra          a1, t3, s9
                  sub          tp, a5, gp
                  sra          s3, tp, t1
                  slti         t2, a1, -1417
                  sltu         s1, t0, s7
                  srai         a4, s9, 15
                  srl          s9, s3, gp
                  srai         a3, t1, 17
                  lui          s10, 303616
                  srli         s0, s8, 5
                  xori         a4, t2, 216
                  or           t6, ra, s6
                  xor          t6, s8, s4
                  sra          a2, s5, a6
                  and          t4, s7, ra
                  slli         t5, a6, 26
                  sll          zero, s4, s1
                  srli         t5, t1, 20
                  srl          t3, s4, s11
                  ori          s2, a5, 744
                  andi         s11, s2, -477
                  srl          s10, zero, s5
                  sll          s1, s0, s3
                  lui          zero, 92447
                  sub          a7, s11, a6
                  andi         a4, a1, -666
                  xor          t6, s7, a4
                  xor          a4, s10, s2
                  lui          a7, 131376
                  sltiu        s9, zero, 1752
                  slti         a6, s3, 1124
                  addi         t2, a3, -1880
                  slli         a3, t3, 22
                  sltiu        s3, t6, -1590
                  sltiu        a7, s10, 1484
                  srl          t0, a7, s1
                  sub          t3, s6, s0
                  slli         t6, a5, 5
                  srli         zero, t1, 4
                  sra          a7, ra, s9
                  slli         s6, s9, 16
                  sra          s9, t0, a3
                  and          s3, ra, a2
                  lui          t4, 193346
                  addi         s5, a5, -1192
                  srai         ra, a6, 30
                  slli         a1, s11, 19
                  slt          s1, a6, ra
                  srai         s8, s1, 17
                  sltu         s3, s3, a1
                  sll          tp, a1, t3
                  srl          tp, s0, s7
                  sub          s10, s8, ra
                  auipc        t5, 568237
                  slli         a7, a2, 25
                  sub          s1, s1, a1
                  and          t0, s6, t6
                  addi         a7, a4, -183
                  srl          t3, t2, a7
                  ori          tp, t6, -1094
                  srli         s10, s8, 2
                  srai         s11, s3, 8
                  srai         t3, ra, 20
                  slti         t3, s10, 143
                  srai         s11, s5, 14
                  sll          s9, t2, ra
                  and          a7, s1, tp
                  slt          a7, s6, ra
                  sub          s5, s5, t4
                  slti         ra, sp, 596
                  sra          zero, t5, gp
                  nop
                  xor          t3, t1, t6
                  sra          tp, a5, ra
                  xori         gp, t1, -1191
                  andi         ra, sp, 788
                  lui          a6, 620288
                  or           s3, a1, s9
                  slti         a4, a6, 487
                  lui          t5, 361169
                  srli         a1, a0, 10
                  sltu         s7, a6, a0
                  slti         tp, s5, -1304
                  slt          a4, s0, s10
                  slli         t2, s9, 26
                  sltu         s10, s2, a5
                  sltiu        s10, ra, 921
                  xori         t6, s3, 482
                  slli         zero, a6, 6
                  slti         s7, s4, 783
                  nop
                  xori         t1, zero, -508
                  sra          s6, s11, s7
                  slti         a6, t0, -98
                  nop
                  or           s11, a1, s4
                  lui          s11, 966782
                  slti         s10, s6, -69
                  addi         sp, a1, -1775
                  nop
                  slli         a6, s0, 23
                  srli         s9, s6, 12
                  andi         s5, a1, -1951
                  addi         ra, s4, 1455
                  srai         t4, t5, 29
                  srl          ra, t3, s10
                  sll          a1, t2, s11
                  srai         t1, s0, 28
                  sll          a1, t2, a3
                  or           t3, s0, s6
                  xor          a1, s11, a7
                  slti         s6, t5, 633
                  and          t3, s2, ra
                  srai         a3, zero, 14
                  lui          sp, 965771
                  sll          s3, a5, a3
                  add          s3, s10, s5
                  lui          s2, 179798
                  srai         t0, s10, 23
                  auipc        tp, 526235
                  sll          s8, s2, s11
                  and          t3, t5, a0
                  add          s11, t6, s2
                  xor          tp, t1, sp
                  addi         s10, s6, 1214
                  sll          s8, a7, s0
                  sll          a3, a4, s11
                  andi         t0, a7, -772
                  sub          a6, tp, a0
                  and          s5, t4, ra
                  add          zero, s11, s10
                  sll          t0, a0, t0
                  add          s8, t2, tp
                  ori          zero, s11, 1415
                  xori         t6, s8, 641
                  or           a7, a5, t5
                  ori          s1, gp, 1991
                  sltiu        s5, s1, -1723
                  lui          tp, 363782
                  slt          t1, s7, a0
                  slli         s5, s5, 0
                  slli         s9, t5, 1
                  slli         t3, s3, 26
                  sll          t6, s9, t2
                  andi         t2, s0, -137
                  auipc        a4, 338045
                  slt          t3, s9, a0
                  srai         t5, t6, 3
                  srl          s6, s0, s9
                  lui          a6, 226504
                  add          tp, s4, a0
                  srai         t4, a7, 8
                  addi         t2, zero, -1700
                  slli         s11, s9, 4
                  slli         s11, s7, 28
                  sra          t2, t2, s4
                  and          ra, s5, s8
                  slti         a1, sp, 1777
                  sra          a4, s10, s5
                  slti         s5, a4, -1679
                  ori          t1, a4, -1639
                  xor          s9, s5, a2
                  sltiu        s1, tp, -116
                  xori         ra, a2, -1939
                  andi         t1, a7, -1233
                  slli         t3, s4, 23
                  sra          s10, s5, a6
                  nop
                  sub          s5, t3, t2
                  srai         t3, a3, 7
                  auipc        a6, 936742
                  or           s3, s10, s7
                  sltiu        t5, sp, -1442
                  and          sp, s7, t3
                  srli         s2, s0, 20
                  nop
                  ori          zero, a4, -655
                  andi         s9, s6, 1914
                  srl          ra, a3, t3
                  or           a2, t3, a3
                  or           t1, s8, s10
                  or           s8, a2, gp
                  ori          s0, ra, 764
                  sltiu        a3, t2, -408
                  ori          t2, s5, -86
                  srl          a4, a4, t2
                  auipc        tp, 1009456
                  auipc        ra, 955484
                  addi         s8, t0, -770
                  auipc        t2, 566556
                  sub          ra, sp, t0
                  add          t0, t1, a2
                  srl          s3, s3, a4
                  sltu         gp, a2, s0
                  xor          s5, a6, a3
                  sll          t1, a7, t6
                  addi         t4, s2, 1041
                  lui          a3, 86161
                  auipc        a3, 731796
                  srl          s0, s10, s7
                  andi         ra, t6, -363
                  xori         a6, zero, -349
                  lui          s1, 632669
                  xor          ra, gp, t1
                  xor          tp, t1, s2
                  xor          t4, a4, s7
                  ori          s2, s10, 1497
                  and          t5, s8, sp
                  ori          t5, a6, -1041
                  and          t6, a0, t3
                  sub          s11, s3, a5
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           t4, 0xb2899ce
                  li           s9, 0xaab2320d
                  li           s2, 0x0
                  li           s8, 0xffffffff
                  li           s11, 0xb4423b8b
                  li           t5, 0xffffffff
                  li           s1, 0x0
                  li           a2, 0xffffffff
                  li           a3, 0x80000000
                  addi         t5, sp, -1121
                  nop
                  add          s11, s1, a2
                  nop
                  lui          s11, 347415
                  addi         a2, t4, 1392
                  addi         t4, s8, -833
                  auipc        s2, 542551
                  add          s1, s11, t5
                  addi         t5, a2, -1159
                  sub          s8, t5, t4
                  lui          t4, 893076
                  auipc        s1, 853131
                  nop
                  add          s9, t4, s11
                  add          s8, t5, s8
                  lui          a2, 819389
                  add          sp, a2, a3
                  add          s1, sp, t5
                  lui          s8, 760846
                  sub          s11, s9, sp
                  auipc        sp, 300230
                  addi         a2, a3, -140
                  addi         s2, s8, -1446
                  sub          s2, s2, a2
                  addi         sp, s8, -1374
                  nop
                  lui          s1, 141328 #end riscv_int_numeric_corner_stream_6
                  srli         a3, a3, 2
                  andi         s3, s2, -750
                  auipc        s3, 1030974
                  auipc        sp, 625830
                  srli         a6, a7, 14
                  auipc        sp, 170959
                  xori         a7, a7, 403
                  srai         tp, s1, 16
                  and          ra, ra, ra
                  srl          ra, s10, a6
                  auipc        t0, 699208
                  slli         zero, s9, 7
                  srai         s5, gp, 8
                  sltiu        s0, a2, -416
                  auipc        tp, 407018
                  sub          s2, t5, a1
                  addi         s6, t6, 276
                  sll          s2, a2, t6
                  xor          s10, s11, t0
                  sltu         s11, a1, ra
                  slti         s2, t0, 420
                  nop
                  xori         s9, a3, 1891
                  lui          t2, 348166
                  add          s0, gp, a1
                  sra          s2, s2, a1
                  sltu         gp, a2, a4
                  sub          s8, s2, a3
                  xor          s3, s5, a6
                  srai         gp, tp, 19
                  lui          a4, 425996
                  slt          t6, s11, tp
                  addi         s3, s7, 1245
                  nop
                  sub          s9, s6, t4
                  nop
                  xor          sp, t3, ra
                  srl          t3, t6, s8
                  add          tp, t3, a7
                  slti         t3, s5, -1971
                  sltiu        s9, a2, -731
                  slli         ra, s0, 14
                  sltiu        a2, s0, 1074
                  srai         gp, s2, 9
                  srai         a4, s2, 8
                  srl          s8, a7, sp
                  nop
                  srai         s11, s8, 19
                  slt          s3, a1, zero
                  slti         t2, a0, -1864
                  xori         s10, sp, 1438
                  and          s7, sp, s7
                  ori          a3, t0, -1714
                  slt          a6, s1, zero
                  xori         s1, s6, -858
                  ori          a4, sp, 1814
                  sll          t1, s5, t0
                  addi         ra, a7, -867
                  andi         s10, ra, 1860
                  ori          s0, s9, 2009
                  sltiu        a3, s1, -1209
                  slti         t2, t2, -1622
                  srli         s9, a6, 8
                  slti         ra, gp, -731
                  srl          sp, t4, s5
                  add          gp, gp, t2
                  srli         a4, a7, 15
                  xor          a4, t1, t0
                  sra          s8, s5, t5
                  or           s10, a5, t5
                  add          t0, s9, a0
                  xor          s9, t5, a1
                  slli         s3, s10, 3
                  andi         a7, s8, -529
                  slt          s2, sp, a6
                  and          t2, s9, t5
                  srli         a2, s1, 31
                  lui          t0, 336938
                  xor          s7, s8, s1
                  sra          zero, s0, ra
                  srai         s11, a5, 11
                  slti         s11, s2, -1652
                  ori          s5, s7, 54
                  sub          t1, s0, s1
                  addi         s0, a2, 612
                  ori          a4, s9, -1380
                  xori         a7, t4, 1552
                  xor          a2, s5, gp
                  xor          a6, s1, sp
                  la x10, test_done
                  jalr x0, x10, 0
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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  add x15, x20, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x23, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x23, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x23, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x23, x18, ecall_handler
                  li x18, 0x1
                  beq x23, x18, instr_fault_handler
                  li x18, 0x5
                  beq x23, x18, load_fault_handler
                  li x18, 0x7
                  beq x23, x18, store_fault_handler
                  li x18, 0xc
                  beq x23, x18, pt_fault_handler
                  li x18, 0xd
                  beq x23, x18, pt_fault_handler
                  li x18, 0xf
                  beq x23, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x20, x15, zero
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
                  add x20, x15, zero
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
                  add x20, x15, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x20, x15, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x20, x15, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x20, x15, zero
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
