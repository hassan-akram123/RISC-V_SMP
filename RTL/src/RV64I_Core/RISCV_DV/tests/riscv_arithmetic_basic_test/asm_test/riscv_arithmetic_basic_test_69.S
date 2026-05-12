.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0x19f2864b
                  li x1, 0xfd539c2d
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x52ceaebf
                  li x5, 0x80000000
                  li x7, 0x38917a47
                  li x8, 0x0
                  li x9, 0xf235a9b0
                  li x10, 0xc3bd1cca
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x0
                  li x15, 0xd
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x3b23e87b
                  li x19, 0x80000000
                  li x20, 0x1d6f8784
                  li x21, 0x80000000
                  li x22, 0xd
                  li x23, 0x80000000
                  li x24, 0xfaa234a7
                  li x25, 0x2
                  li x26, 0x0
                  li x27, 0x94ee5c79
                  li x28, 0xf5d2325c
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x14, user_stack_end
main:             li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s11, 0x80000000
                  li           s1, 0x0
                  li           t0, 0xb22b3786
                  li           ra, 0x80000000
                  li           a2, 0x0
                  li           t4, 0xaeeb7db7
                  li           s10, 0xffffffff
                  li           gp, 0xd613e1ad
                  li           s3, 0x80000000
                  nop
                  sub          a2, s3, t6
                  lui          s3, 301099
                  add          gp, gp, s3
                  add          ra, s11, t4
                  sub          t0, t6, ra
                  add          s10, t0, s11
                  sub          ra, a2, gp
                  add          t6, gp, s1
                  nop
                  lui          s1, 2726
                  lui          t0, 422067
                  nop
                  nop
                  sub          ra, t4, a2 #end riscv_int_numeric_corner_stream_11
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a2, 0x80000000
                  li           s8, 0x0
                  li           s9, 0x80000000
                  li           gp, 0xb0b86f1f
                  li           s11, 0xffffffff
                  li           t0, 0xffffffff
                  li           s7, 0xcd87b7a7
                  li           s5, 0x80000000
                  li           a6, 0x80000000
                  sub          a2, a6, s5
                  addi         s8, s7, 1314
                  auipc        s9, 591815
                  add          gp, s1, s1
                  nop
                  nop
                  add          s11, s11, s8
                  add          t0, s9, s9
                  auipc        a2, 600457
                  addi         s8, a6, -1933
                  nop
                  add          s11, a6, s1
                  addi         s1, s5, 1083
                  sub          a2, s8, s5
                  addi         t0, a6, -156
                  lui          gp, 900085
                  sub          s8, s1, s5
                  nop
                  addi         s5, s1, 975
                  add          gp, s7, t0
                  sub          s1, a6, s1
                  add          s1, s1, s5 #end riscv_int_numeric_corner_stream_0
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           s0, 0xffffffff
                  li           a6, 0xffffffff
                  li           gp, 0xffffffff
                  li           s3, 0x80000000
                  li           t2, 0xb62eb986
                  li           s5, 0xc01065f8
                  li           t4, 0x0
                  li           s11, 0x80000000
                  li           ra, 0xffffffff
                  sub          s5, s11, s3
                  add          s0, t0, a6
                  auipc        a6, 891810
                  sub          t2, s11, s5
                  add          t2, s0, t0
                  auipc        t4, 114828
                  auipc        s11, 819441
                  nop
                  sub          s0, gp, t2
                  auipc        ra, 712613
                  lui          t4, 12098
                  addi         t0, t4, -909
                  lui          a6, 907990
                  add          s3, s5, s5
                  auipc        t4, 922182
                  nop
                  auipc        t2, 305736
                  add          t0, s0, gp
                  add          t0, t0, s0
                  auipc        gp, 706395 #end riscv_int_numeric_corner_stream_3
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t2, 0x8cea05ae
                  li           t4, 0x80000000
                  li           s1, 0x0
                  li           a3, 0x0
                  li           a7, 0xffffffff
                  li           a5, 0xb8cc907b
                  li           s11, 0xffffffff
                  li           gp, 0x0
                  li           s4, 0xffffffff
                  lui          s1, 795185
                  add          a3, a7, t2
                  sub          a5, t4, s1
                  lui          s1, 915926
                  lui          a3, 128634
                  sub          s1, gp, a5
                  add          s4, s4, a7
                  nop
                  nop
                  sub          a3, a5, s2
                  add          a3, t4, a3
                  sub          s11, s11, gp
                  sub          t2, s2, gp
                  auipc        s2, 1024502
                  lui          t4, 320470
                  add          t2, t4, a7
                  auipc        gp, 799661
                  lui          t4, 678781
                  sub          s1, s4, t4
                  sub          s4, gp, t2
                  nop
                  sub          t2, gp, s1
                  auipc        a3, 558976
                  auipc        a3, 461442
                  sub          a7, s11, gp
                  nop
                  addi         s1, a5, 609
                  sub          t2, s11, s1
                  sub          t2, s11, s11 #end riscv_int_numeric_corner_stream_9
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  li           a5, 0x80000000
                  li           s9, 0xffffffff
                  li           t0, 0xf8fac442
                  li           s8, 0xffffffff
                  li           tp, 0xffffffff
                  li           s1, 0x0
                  li           ra, 0x80000000
                  add          s0, s1, t4
                  nop
                  nop
                  nop
                  nop
                  sub          s1, a5, t0
                  sub          a5, t4, t0
                  addi         tp, s9, 1722
                  addi         t4, s8, 433
                  nop
                  auipc        ra, 13978
                  sub          s8, s9, t4
                  auipc        s1, 286253
                  addi         ra, t4, 6
                  nop
                  nop
                  nop
                  auipc        s1, 1042173
                  sub          t4, s0, s8
                  auipc        s1, 805798
                  auipc        a5, 663939
                  nop #end riscv_int_numeric_corner_stream_13
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s2, 0xffffffff
                  li           tp, 0xffffffff
                  li           s11, 0xffffffff
                  li           t4, 0xcd93d16e
                  li           sp, 0x5fa8e887
                  li           ra, 0xe1701e19
                  li           a7, 0x80000000
                  li           s1, 0x80000000
                  li           a6, 0xffffffff
                  lui          sp, 508345
                  auipc        tp, 404441
                  addi         a7, gp, 1427
                  addi         t4, s11, -1427
                  lui          sp, 917185
                  addi         s11, sp, -1708
                  lui          gp, 491442
                  auipc        s2, 773062
                  sub          a6, s11, sp
                  lui          s1, 288443
                  sub          t4, tp, ra
                  nop
                  add          s11, sp, a7
                  sub          s2, a6, a7
                  auipc        sp, 500969
                  auipc        ra, 320439
                  auipc        a6, 1005666
                  lui          s11, 680452
                  add          s11, a6, sp
                  addi         tp, tp, -115
                  addi         s11, t4, -1499
                  add          a6, s11, s1 #end riscv_int_numeric_corner_stream_14
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           tp, 0x80000000
                  li           ra, 0x80000000
                  li           s8, 0xffffffff
                  li           s10, 0xffffffff
                  li           s7, 0x0
                  li           t6, 0x0
                  li           gp, 0xffffffff
                  li           sp, 0x80000000
                  li           t0, 0xffffffff
                  lui          gp, 840370
                  add          sp, gp, s10
                  sub          t0, s8, s8
                  sub          s8, s7, s7
                  addi         tp, ra, -746
                  nop
                  addi         s7, s8, -692
                  lui          tp, 683368
                  add          ra, s8, gp
                  addi         sp, s7, 1736
                  add          s7, tp, gp
                  auipc        tp, 686730
                  lui          gp, 792427
                  lui          a5, 622395
                  add          gp, t0, tp
                  auipc        t0, 1013969
                  sub          s10, sp, sp
                  sub          s10, s10, sp
                  sub          t0, t0, s10
                  addi         gp, gp, -1364
                  nop
                  lui          t0, 475868
                  add          a5, s8, tp
                  addi         t6, s8, 812
                  nop #end riscv_int_numeric_corner_stream_18
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           t3, 0x0
                  li           s11, 0xffffffff
                  li           a6, 0x80000000
                  li           s5, 0x80000000
                  li           sp, 0xffffffff
                  li           a0, 0x80000000
                  li           s0, 0x4e52cf36
                  li           t5, 0x77bf9a40
                  li           t4, 0x25d0df10
                  auipc        t5, 1023430
                  sub          t4, s1, t5
                  nop
                  addi         t4, s1, 1582
                  add          t5, s1, s1
                  sub          a0, a0, t5
                  addi         sp, s5, -1070
                  addi         t4, a6, 1156
                  lui          s0, 924150
                  auipc        t3, 289508
                  addi         t4, s11, -624
                  auipc        t4, 1004125
                  addi         a6, s11, 528
                  add          s11, s1, s5
                  auipc        s1, 285804
                  addi         a0, t4, 1298
                  addi         s0, sp, -692
                  auipc        s5, 510923
                  lui          sp, 54619
                  auipc        s0, 554744
                  nop
                  add          a0, s1, a0
                  nop
                  nop #end riscv_int_numeric_corner_stream_7
                  li           t0, 0xeaccf34d #start riscv_int_numeric_corner_stream_10
                  li           a7, 0x0
                  li           s10, 0x80000000
                  li           t5, 0x80000000
                  li           gp, 0x0
                  li           s3, 0x17cee357
                  li           s6, 0xd949f7cb
                  li           t3, 0x80000000
                  li           s2, 0x80000000
                  li           tp, 0x50c3e925
                  add          s10, t5, t5
                  sub          t3, t5, t0
                  addi         s6, t3, 303
                  nop
                  auipc        s6, 879419
                  sub          s10, t3, s3
                  nop
                  sub          s2, tp, s10
                  nop
                  auipc        t3, 300099
                  auipc        a7, 397029
                  add          tp, s10, t3
                  add          t0, tp, s6
                  add          a7, t3, s2
                  addi         s3, s3, -954
                  nop
                  addi         tp, s3, -355
                  lui          s2, 761434
                  lui          s6, 1015500
                  auipc        tp, 342362
                  add          tp, a7, tp
                  addi         s3, t3, -960
                  add          t5, a7, gp
                  nop
                  add          s10, t0, tp
                  add          t3, s3, s6
                  add          t3, gp, t5
                  sub          tp, t3, a7
                  lui          s10, 1039115
                  nop #end riscv_int_numeric_corner_stream_10
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t5, 0xa1fa9ca9
                  li           s1, 0x0
                  li           a0, 0xffffffff
                  li           s9, 0x80000000
                  li           t4, 0x80000000
                  li           a2, 0x80000000
                  li           sp, 0xa107186b
                  li           s0, 0x80000000
                  li           s3, 0x0
                  sub          s3, s9, s0
                  auipc        sp, 153006
                  auipc        s1, 257184
                  lui          a2, 1003653
                  nop
                  sub          s6, t5, t4
                  nop
                  addi         t4, a0, -1813
                  lui          s9, 170106
                  nop
                  lui          s1, 323526
                  addi         t5, t5, -488
                  add          s9, a2, s6
                  addi         s9, s6, -1990
                  add          a2, t4, sp
                  add          a2, a2, s6
                  auipc        s3, 25826
                  nop
                  nop
                  addi         s3, s0, -1565
                  nop
                  sub          t5, s9, s9
                  nop
                  addi         s0, t5, 1159
                  addi         t4, a2, -361
                  nop #end riscv_int_numeric_corner_stream_12
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           t6, 0x45bdc719
                  li           t5, 0xffffffff
                  li           s2, 0x80000000
                  li           s11, 0x80000000
                  li           t0, 0xffffffff
                  li           t3, 0x80000000
                  li           s4, 0x66b110e7
                  li           ra, 0x0
                  li           gp, 0x0
                  nop
                  addi         s4, a0, -786
                  nop
                  nop
                  add          ra, gp, a0
                  nop
                  sub          t5, ra, s4
                  addi         t0, gp, 823
                  auipc        t5, 328366
                  add          s2, gp, s4
                  auipc        s4, 558445
                  lui          t6, 252133
                  lui          t5, 226689
                  lui          s4, 912371
                  addi         a0, s11, -1827
                  add          t6, s4, s11
                  lui          s4, 483974
                  addi         gp, t5, 1367
                  add          s2, t0, ra
                  add          t5, t0, s4 #end riscv_int_numeric_corner_stream_2
                  sub          t4, s5, sp
                  srli         t0, gp, 10
                  addi         a6, a7, -1119
                  xor          s1, t5, s3
                  auipc        s5, 306079
                  nop
                  ori          a2, s7, 295
                  srai         t2, s9, 21
                  or           s5, a3, s1
                  lui          s1, 624593
                  addi         s9, s7, -967
                  xor          ra, s7, t0
                  sltiu        s0, s8, 935
                  ori          s1, t5, 908
                  sra          gp, zero, t5
                  sltiu        t5, s1, 719
                  srli         s6, s6, 15
                  lui          s2, 112162
                  sltiu        s10, a7, -1689
                  sll          zero, s5, t0
                  sll          a6, s11, t1
                  srai         s0, s6, 14
                  xori         a2, a1, 1191
                  ori          tp, s0, -1532
                  auipc        s9, 749470
                  or           zero, a0, t1
                  lui          s11, 5596
                  slt          sp, tp, tp
                  sra          a7, ra, s3
                  srli         sp, t4, 25
                  sub          s5, sp, s0
                  slt          a2, a3, s5
                  srl          tp, a7, a7
                  sra          s6, s3, s4
                  srai         a5, a4, 13
                  andi         tp, tp, -764
                  sltu         s5, s3, s8
                  add          t5, a3, s10
                  slti         t6, t5, -337
                  sub          gp, a6, a1
                  add          a2, ra, t6
                  add          s6, s5, s11
                  sltu         s11, a0, s8
                  sub          t6, s4, t3
                  xori         t2, t4, -1633
                  srl          gp, a4, s2
                  ori          sp, t1, -745
                  ori          s3, s4, 429
                  srai         s4, s8, 31
                  srai         a7, t4, 31
                  auipc        s6, 348677
                  slti         a0, t4, -532
                  srai         a5, t0, 11
                  srai         t6, zero, 21
                  or           t6, s8, s11
                  sll          a7, t6, t0
                  srai         tp, tp, 30
                  sub          a6, a5, s11
                  ori          s0, zero, 1106
                  slt          a7, s0, a2
                  add          s5, ra, a0
                  slti         ra, a5, -1918
                  nop
                  ori          t6, sp, 217
                  sub          t4, s6, s11
                  nop
                  xori         t0, t1, -109
                  add          t3, s11, sp
                  sltiu        s2, s9, -1715
                  add          s10, a2, s5
                  xor          s5, a4, t1
                  sra          s4, s8, zero
                  sltiu        a3, t5, 802
                  xor          s0, s8, s10
                  sra          s10, s5, zero
                  xori         s9, a7, 1764
                  xor          s4, a2, s4
                  andi         a5, a4, -1250
                  srl          s9, t3, a2
                  andi         zero, s6, -660
                  addi         s2, a7, 941
                  sra          tp, t6, s3
                  slti         s0, s3, 265
                  andi         t6, t1, 858
                  slli         t3, s9, 27
                  sub          a6, t4, s7
                  and          s9, t4, t3
                  srl          t6, t4, s2
                  ori          s7, s8, 1135
                  lui          a3, 160383
                  sltu         t5, s2, zero
                  auipc        a3, 268965
                  sub          ra, tp, s6
                  srli         ra, gp, 5
                  slti         a7, a0, 878
                  addi         t6, s11, -1991
                  or           t3, t1, s1
                  andi         a5, s11, -1456
                  sll          a5, s1, s10
                  srl          t2, s4, tp
                  lui          s6, 185023
                  srli         s8, s2, 28
                  sub          a6, s11, a3
                  slti         a2, s3, 1902
                  addi         s11, t5, 1835
                  sub          s3, a6, s2
                  xor          a5, tp, s3
                  slli         s0, t4, 12
                  lui          zero, 970022
                  ori          s9, s10, -1244
                  ori          s2, s0, 206
                  srl          s2, t1, s7
                  and          t3, s3, tp
                  sra          s6, sp, a4
                  srli         a6, gp, 3
                  slli         a7, t4, 6
                  sltiu        s9, s11, -1670
                  sll          s5, t0, t1
                  slli         a6, s11, 20
                  sltu         s8, tp, gp
                  xori         sp, a4, 295
                  slti         t4, a3, -1119
                  ori          s3, ra, -1462
                  slli         t4, s11, 3
                  add          a3, s8, t0
                  slti         zero, a6, 1077
                  sll          s6, ra, sp
                  lui          s3, 54944
                  sltu         tp, sp, a6
                  add          s4, t6, t3
                  slli         zero, s11, 0
                  xor          a7, s1, t5
                  addi         ra, t4, -1495
                  ori          t4, s8, -1319
                  andi         a6, s3, -605
                  slli         t3, t3, 18
                  add          s5, s5, a6
                  slti         zero, s1, 740
                  addi         t4, a7, 17
                  sll          a3, t6, a1
                  sra          t0, s1, s8
                  xori         s5, s0, -1000
                  sll          gp, sp, t1
                  slli         s2, s11, 28
                  sra          a3, t4, a7
                  or           s6, t2, s2
                  srl          s1, t3, a5
                  andi         t6, a4, 1500
                  auipc        s9, 101984
                  nop
                  srli         a6, s8, 16
                  xor          t0, s5, a0
                  auipc        s5, 445165
                  sra          a3, t6, s6
                  sll          s10, t4, sp
                  and          zero, tp, a3
                  add          s8, sp, a5
                  auipc        ra, 798514
                  slli         s1, a0, 7
                  or           t3, s3, t2
                  slli         t4, a6, 26
                  xor          a2, a7, s7
                  sll          s8, s0, a6
                  addi         a2, ra, 1898
                  or           s7, s7, s2
                  addi         s0, a1, 1709
                  nop
                  ori          gp, s0, 1593
                  addi         t4, a0, -642
                  addi         s3, a1, -528
                  srli         a6, s0, 17
                  auipc        zero, 903656
                  slti         s7, gp, -1249
                  sra          a3, s0, tp
                  or           a6, a5, a7
                  and          t6, t4, s11
                  or           s1, s0, sp
                  sltu         t0, s4, t3
                  ori          t3, s9, -721
                  srl          s1, s8, a4
                  sub          zero, t3, gp
                  sll          s6, s3, a0
                  slti         tp, s7, -641
                  nop
                  srai         a7, s2, 29
                  sltiu        s8, s4, 1958
                  addi         tp, s1, 1967
                  sltu         s11, tp, a3
                  slti         s7, s7, -407
                  nop
                  slli         t2, gp, 21
                  xori         s10, t6, -1196
                  slli         s1, s2, 27
                  or           s2, t4, sp
                  sltu         gp, s7, sp
                  srl          a6, a6, s10
                  srli         t5, sp, 25
                  add          s0, a5, a4
                  lui          t5, 789143
                  and          s8, s9, a2
                  slli         a0, a4, 22
                  lui          a5, 697221
                  nop
                  xor          s11, a6, a5
                  or           sp, a6, gp
                  sltu         t0, s11, a6
                  sll          ra, s9, ra
                  andi         s9, a4, 841
                  slt          a2, t5, a4
                  srai         gp, zero, 8
                  or           s5, s4, s3
                  xori         a2, s0, 692
                  lui          sp, 300536
                  addi         t4, s4, 410
                  lui          a7, 397595
                  lui          ra, 671981
                  ori          s0, t0, -2036
                  ori          s1, tp, -1211
                  add          sp, zero, t1
                  sltiu        s8, a2, 878
                  srl          s1, t0, a4
                  xori         a3, s8, -882
                  slt          a0, t5, t3
                  srli         tp, t1, 1
                  auipc        t4, 1015855
                  slli         zero, s7, 13
                  and          a0, s1, s9
                  srai         t4, t2, 21
                  lui          s7, 119483
                  sub          tp, t4, a3
                  sltu         s7, s6, zero
                  andi         s3, a1, 560
                  srli         ra, t4, 23
                  xor          t2, s9, tp
                  sltu         s6, s10, s10
                  sltiu        s4, a3, 735
                  or           s9, s1, t1
                  srai         s3, s5, 11
                  sltiu        s4, s9, 1355
                  slti         a6, a5, -178
                  xor          s8, s8, s6
                  or           s0, a4, t1
                  sltu         s10, s11, a6
                  slt          s11, a2, s2
                  add          a2, s8, a4
                  sra          ra, a2, a7
                  auipc        t4, 173628
                  ori          s0, s11, 904
                  xori         s3, s7, 1857
                  sub          s9, s10, a2
                  xor          sp, s6, s6
                  sltu         s3, t3, s10
                  nop
                  addi         s10, s9, 1733
                  addi         t2, s8, 1331
                  sra          s4, a5, s2
                  slt          s10, t5, s9
                  slt          s10, s2, t3
                  sra          s11, s11, s5
                  sltu         a0, t2, t2
                  lui          a2, 119650
                  srl          a3, zero, s9
                  ori          s9, t5, -523
                  andi         s3, t2, 1547
                  sra          s9, s6, zero
                  sub          t5, a5, gp
                  andi         s3, s7, 1396
                  srl          s10, ra, a6
                  srli         a3, s5, 13
                  sltiu        t3, ra, -693
                  addi         a0, s9, 116
                  sll          s2, sp, s4
                  sll          a0, a1, tp
                  nop
                  ori          a7, s7, -570
                  sub          s10, a2, t3
                  or           a0, a5, a3
                  sub          zero, t3, a5
                  slli         a0, a0, 18
                  and          a2, sp, a7
                  slli         s9, s7, 0
                  sltu         t3, s11, t4
                  or           s6, s5, a7
                  sra          s8, s8, t6
                  and          a2, s10, s10
                  slli         t0, s1, 6
                  ori          s4, s1, 1327
                  sll          a5, a1, s3
                  auipc        t4, 1033680
                  ori          s11, s5, 1648
                  slli         t3, t2, 13
                  lui          gp, 336516
                  sll          a2, t4, a1
                  andi         a3, s11, 472
                  sltu         s10, a0, s3
                  sltiu        s4, s4, 995
                  sra          s7, a1, s7
                  slli         a2, a7, 1
                  or           gp, s7, s11
                  srli         t0, zero, 25
                  andi         t6, t0, -1626
                  ori          s5, a0, 317
                  srl          a7, t0, a5
                  sra          s7, a3, tp
                  srai         s9, t5, 15
                  ori          s3, t5, 1988
                  srl          a3, tp, t4
                  sll          ra, t6, t0
                  andi         ra, s2, -1104
                  and          a2, s3, a2
                  nop
                  addi         a7, s8, 1503
                  add          t2, s7, s8
                  addi         zero, s3, 976
                  sll          a6, s9, s0
                  sltu         ra, a4, a7
                  srli         t6, t3, 25
                  srli         s2, s5, 0
                  slt          tp, s6, t3
                  nop
                  slli         s4, gp, 27
                  slt          s9, t4, a5
                  sra          a6, s4, s1
                  slli         a0, ra, 0
                  sra          t0, s4, a1
                  sltu         a5, a3, zero
                  addi         s2, t2, -1133
                  sll          s6, s5, ra
                  auipc        gp, 172775
                  andi         gp, s10, -1619
                  xori         t4, a4, 817
                  xor          a6, zero, sp
                  xori         s11, t3, -298
                  lui          t2, 313082
                  slt          s6, a0, s6
                  slti         t3, s8, 375
                  auipc        s8, 67754
                  nop
                  auipc        s6, 267622
                  slt          t5, s1, a0
                  andi         s0, sp, -1608
                  slli         t2, a7, 29
                  srli         s11, s8, 7
                  sltiu        a0, a1, 1397
                  srli         t4, s3, 11
                  xori         s7, a1, -1986
                  srli         tp, t2, 12
                  nop
                  add          t0, s2, gp
                  auipc        t0, 357064
                  slli         t6, s3, 11
                  sltiu        t4, a1, -202
                  sub          t0, a6, t3
                  srai         t3, s10, 8
                  nop
                  and          a5, ra, t2
                  srl          s6, s0, tp
                  nop
                  or           t2, s9, a6
                  xor          s11, s7, s5
                  sltu         t5, a3, gp
                  xori         s8, t3, 1829
                  sll          tp, t6, a4
                  and          s3, s0, s7
                  sub          a7, s7, t4
                  andi         ra, sp, -1490
                  srai         ra, gp, 3
                  add          zero, a3, gp
                  sub          a0, t6, zero
                  slli         s0, tp, 5
                  nop
                  sltu         t6, a6, s5
                  xori         t6, t2, -634
                  ori          t6, a4, -1604
                  sra          s6, s9, t1
                  ori          s5, s0, 755
                  add          s0, sp, ra
                  andi         t5, a4, -732
                  auipc        t0, 232259
                  addi         sp, zero, 126
                  auipc        s7, 941320
                  xori         a3, s5, -1375
                  or           sp, a7, a0
                  sltu         s2, a3, s4
                  sll          s1, s9, a2
                  auipc        tp, 51054
                  slti         sp, s8, -1825
                  xori         t5, s11, -168
                  nop
                  nop
                  sra          s9, a1, a0
                  slli         t4, t2, 15
                  sll          s3, zero, a3
                  lui          zero, 210434
                  nop
                  sltiu        a3, s2, -2004
                  sll          s6, tp, s1
                  sltu         a3, sp, ra
                  nop
                  auipc        s11, 902161
                  and          s3, s0, a4
                  auipc        t5, 998235
                  or           a2, tp, a6
                  andi         s0, t3, 1777
                  xori         s0, s10, -242
                  sra          sp, s4, t2
                  slti         a5, sp, -1302
                  andi         sp, a2, -925
                  srai         s9, s5, 11
                  sll          a3, a6, s1
                  sltu         s5, s10, zero
                  ori          s5, t3, -1824
                  sra          a0, s10, a3
                  xor          a2, a5, zero
                  slt          s0, t3, t3
                  andi         s3, s3, 820
                  lui          t3, 325722
                  auipc        t5, 498912
                  slli         s11, t2, 2
                  slli         s7, sp, 18
                  addi         t0, s7, 529
                  nop
                  ori          s9, sp, 1574
                  xori         a6, tp, -972
                  sra          s2, a2, t2
                  and          s4, a4, a3
                  andi         s5, tp, 1591
                  andi         a6, s4, 847
                  slti         s0, s1, -1903
                  lui          ra, 612994
                  addi         tp, gp, 985
                  lui          s6, 918092
                  sll          s7, s3, a2
                  sltu         t3, s8, s9
                  addi         s0, s6, 116
                  sll          s11, zero, s7
                  slli         s9, s1, 26
                  andi         a5, s11, 1172
                  slti         s1, s5, -651
                  sltu         gp, s6, tp
                  andi         s11, s6, -1911
                  lui          t5, 100052
                  srl          t2, a6, s3
                  xor          gp, s5, a3
                  slli         s10, s6, 15
                  sra          t4, a1, a1
                  slli         a2, s7, 28
                  sltu         t2, t4, s8
                  nop
                  srli         t3, a5, 1
                  sltiu        s10, ra, 364
                  sub          s7, tp, zero
                  ori          s1, s1, 662
                  srai         t5, s7, 11
                  add          s0, t3, s10
                  srai         zero, s1, 12
                  slt          s8, a7, s0
                  srai         a7, t1, 2
                  sltu         s3, s2, a5
                  or           t0, gp, t3
                  srli         s8, s4, 27
                  srai         gp, s3, 27
                  lui          a6, 592469
                  or           a7, s1, tp
                  and          s7, ra, a5
                  sub          s5, s9, s0
                  slt          t3, t0, t4
                  and          a2, s6, s0
                  addi         s1, s10, 688
                  srl          s0, a3, s11
                  slti         sp, t3, 1783
                  auipc        a0, 313294
                  sub          a3, s6, s8
                  slt          a2, a7, t0
                  sll          s0, a1, s5
                  sra          s2, s3, s2
                  sltu         s7, tp, a2
                  xori         s7, ra, 1291
                  sub          tp, s1, zero
                  sltiu        s7, s10, -1044
                  sltu         s8, ra, s8
                  ori          tp, gp, 531
                  and          s11, t1, s11
                  andi         a2, s9, 1156
                  sltu         s2, gp, a2
                  slti         s7, t3, 1292
                  srl          zero, a4, s6
                  sra          s4, sp, a6
                  xor          s8, s6, sp
                  srli         a5, tp, 30
                  sub          s2, s4, s2
                  sub          a3, zero, s10
                  nop
                  slt          t6, t4, ra
                  slti         t4, t4, 626
                  sltiu        s3, s10, -803
                  andi         t3, s10, -63
                  lui          s10, 821923
                  sll          sp, s6, a6
                  sll          s9, a2, gp
                  srl          t6, s9, a0
                  slli         s8, a7, 18
                  srl          a0, ra, gp
                  slli         a2, tp, 17
                  andi         gp, t1, 430
                  sltiu        s4, a0, -267
                  xori         a2, t0, 1002
                  ori          zero, s4, 1134
                  xor          zero, t4, a0
                  srai         s3, t3, 20
                  sltu         t6, s8, s9
                  srl          s5, t4, s1
                  auipc        s1, 684160
                  srl          a3, t0, s4
                  sub          zero, a1, gp
                  add          a5, t1, s9
                  slti         t0, a7, -1306
                  lui          gp, 383093
                  nop
                  andi         s4, t1, 447
                  lui          a0, 1019377
                  sll          sp, sp, t6
                  sltiu        s7, t2, -950
                  sub          tp, s5, t0
                  and          t0, t6, a3
                  srai         t6, s0, 29
                  and          zero, tp, t6
                  or           s10, zero, s0
                  sltu         tp, s4, s2
                  xori         gp, t6, 1653
                  or           s4, tp, a2
                  srli         a5, t3, 20
                  slli         s8, s8, 21
                  sub          tp, t4, s10
                  slti         t4, tp, 913
                  sltu         s6, t1, s8
                  auipc        s1, 240655
                  ori          gp, t2, -1274
                  sra          a7, a6, s4
                  and          s2, ra, t6
                  xor          a6, s11, a6
                  sll          a3, a6, s11
                  or           t2, zero, s0
                  srl          a7, s1, s7
                  srai         t4, s1, 28
                  srl          s4, s0, s8
                  srai         ra, t6, 5
                  or           s5, s8, t6
                  xor          s10, t1, t5
                  srai         s2, t2, 28
                  sltiu        t3, s11, 253
                  sub          s2, tp, ra
                  slli         a0, a0, 6
                  srai         t2, s5, 15
                  addi         s1, s7, -145
                  or           gp, t3, s10
                  sll          zero, s8, ra
                  slli         s3, s4, 6
                  auipc        a2, 53991
                  sub          a3, s4, s10
                  slli         t4, a1, 16
                  and          gp, a6, a0
                  addi         a5, s11, -1475
                  ori          s7, s4, 1819
                  or           a5, t6, a3
                  sltiu        t0, a2, 1570
                  srai         s10, t1, 20
                  slti         tp, s8, -1998
                  or           ra, t3, s0
                  sub          s11, s6, t5
                  andi         s3, s6, -666
                  sll          a2, tp, t0
                  or           s10, s3, t0
                  auipc        zero, 67047
                  slt          s4, s5, t5
                  nop
                  lui          s5, 103027
                  auipc        gp, 1005881
                  ori          a6, s7, 1860
                  srai         t3, a0, 7
                  slti         t2, s0, 240
                  slti         t0, s9, -1409
                  addi         gp, a7, -1112
                  slt          a3, a3, t5
                  slti         t0, t0, -436
                  or           s3, t4, s10
                  xori         t3, gp, 1274
                  andi         s3, t1, -1393
                  slt          t3, a1, s0
                  srl          tp, t5, s0
                  or           s6, a4, t2
                  ori          t5, s7, 24
                  slli         a3, a1, 9
                  sll          t4, sp, zero
                  sltu         t4, a3, s10
                  sra          s6, a0, tp
                  srl          zero, tp, t5
                  sra          s2, s11, t1
                  xor          s3, s0, s6
                  xori         s0, a1, 1266
                  slt          s6, s8, s3
                  srli         a6, t6, 10
                  xor          ra, sp, s8
                  add          t4, s1, s7
                  srl          t2, a2, a5
                  or           a2, s11, t4
                  add          a2, s7, a3
                  andi         s3, s5, -1609
                  slti         t3, s8, -554
                  and          s11, sp, t1
                  lui          t2, 6810
                  slli         s0, s1, 23
                  sltu         zero, t0, ra
                  xor          s6, ra, a7
                  nop
                  srai         a0, zero, 13
                  slt          s11, a1, s8
                  srl          sp, t6, t6
                  nop
                  auipc        s3, 691064
                  auipc        s11, 932943
                  slli         s10, s10, 13
                  srli         t5, s0, 24
                  srl          gp, s11, t5
                  srl          t0, s11, t4
                  sll          s9, s8, a2
                  ori          gp, t0, 1125
                  sub          a3, t4, a3
                  sll          s5, t3, s7
                  addi         s6, gp, -328
                  srli         t6, s0, 12
                  slti         s0, a3, -1516
                  nop
                  slti         a3, s8, 896
                  ori          t5, s8, -1841
                  srai         s2, tp, 1
                  sra          s8, t0, t4
                  and          a3, s3, t6
                  slti         s7, a5, -1004
                  slti         s5, a5, 318
                  and          a2, s5, s2
                  srai         s8, t6, 0
                  xori         s8, t3, -1649
                  or           s5, gp, s11
                  lui          a0, 345327
                  sltu         t4, sp, s4
                  srai         a3, sp, 19
                  sltu         gp, ra, s5
                  sltu         a5, a0, s6
                  srl          s7, a7, sp
                  srl          t4, a1, s7
                  slt          a7, t5, s8
                  or           s7, s6, t1
                  nop
                  lui          ra, 956017
                  andi         s6, s10, -333
                  srli         t4, zero, 2
                  nop
                  xor          s2, s7, s2
                  sltu         tp, a4, s8
                  add          a3, t6, t4
                  ori          a7, a3, -1511
                  add          s7, t0, t2
                  ori          s0, s7, 1832
                  srli         s9, gp, 8
                  slli         s2, t2, 5
                  auipc        zero, 371234
                  add          s2, s5, a5
                  xor          t2, s1, tp
                  sltiu        s2, t0, -1575
                  and          s9, a2, s5
                  add          a2, a5, a3
                  nop
                  or           s0, zero, tp
                  sltiu        t0, t0, 480
                  ori          t3, t1, -567
                  lui          t2, 394741
                  sltiu        a3, s11, -1303
                  slti         s10, a3, 1862
                  srl          ra, a2, s9
                  sub          a5, s10, t5
                  xor          tp, a1, gp
                  auipc        s4, 786035
                  add          t2, s9, t0
                  sub          s2, gp, zero
                  lui          a6, 777654
                  or           s1, s0, a1
                  slt          s0, s3, s6
                  sll          s8, t0, s4
                  ori          a5, t5, 678
                  addi         s8, t1, -1341
                  slti         a2, s10, -1469
                  sltiu        sp, s7, -1512
                  slli         a6, a2, 15
                  lui          s2, 131937
                  xor          s2, t3, a4
                  or           a2, s8, s2
                  addi         a0, s11, -808
                  addi         t4, a7, 1701
                  nop
                  and          a6, a5, a1
                  auipc        a3, 352863
                  slti         zero, a1, -1347
                  srli         s2, s1, 14
                  ori          sp, zero, 1555
                  srli         s3, s9, 26
                  xori         t6, s6, 868
                  nop
                  slti         s0, zero, -686
                  sra          t6, s6, tp
                  sub          t6, t6, a2
                  sub          zero, s3, t4
                  sll          s8, a0, a7
                  srli         s11, s0, 13
                  xori         a0, s4, 1671
                  addi         a0, s3, -71
                  addi         s1, s10, -393
                  or           t3, s10, ra
                  xor          a6, a5, s2
                  slli         s1, a3, 29
                  auipc        s5, 831434
                  xor          a2, tp, t6
                  slti         gp, t5, 1398
                  sra          a3, t4, t2
                  slt          a6, s5, s6
                  ori          s10, s4, -1091
                  slli         s1, s2, 11
                  srai         a0, t3, 17
                  or           gp, a2, a4
                  nop
                  xori         s9, s9, -101
                  xori         s9, s7, 189
                  srli         s8, s8, 21
                  xor          gp, a4, s3
                  srl          a7, a6, sp
                  addi         tp, t4, 394
                  and          t0, s3, s5
                  srai         s0, a0, 21
                  add          gp, a3, a0
                  or           t4, s4, sp
                  lui          t6, 212767
                  ori          a2, t1, -1906
                  slli         a7, s3, 19
                  add          s0, a6, a3
                  addi         s7, s2, -1687
                  xor          s1, s3, ra
                  xori         t4, t4, -1692
                  add          s6, sp, t6
                  sra          a0, a4, t1
                  auipc        s5, 755006
                  slti         s0, ra, -1070
                  sra          a5, tp, t4
                  slti         t4, s1, 1641
                  ori          gp, s2, 857
                  srai         a6, s0, 23
                  ori          t4, s8, 309
                  and          t2, s8, a7
                  addi         s4, a5, -1193
                  srli         t0, s5, 29
                  srl          ra, s3, s2
                  sltu         a7, tp, s10
                  andi         s10, t3, 1475
                  or           s10, a6, s7
                  srai         s4, s5, 19
                  xor          s9, sp, a1
                  sltu         a0, s4, s3
                  ori          s1, a7, 832
                  srli         t3, a7, 25
                  xori         s3, a5, -355
                  nop
                  addi         a7, t3, 1091
                  slt          s7, a6, s1
                  xori         sp, s7, -1277
                  sltu         s7, s7, t6
                  lui          s7, 564762
                  xori         s10, t0, -1795
                  add          s2, s4, a5
                  slli         s10, t0, 4
                  and          a5, s9, s0
                  slti         s4, gp, -424
                  slt          a7, ra, t5
                  or           a7, a5, s11
                  nop
                  sra          t0, a5, s9
                  xor          a5, ra, a1
                  sltu         t4, s6, s11
                  or           sp, s1, s5
                  ori          ra, t4, -1102
                  and          t6, s11, s9
                  sltiu        t4, a7, 1537
                  and          a3, s6, t1
                  srl          sp, a6, t3
                  slt          s10, a1, a2
                  sub          s1, s0, s9
                  auipc        a2, 327166
                  ori          s5, t4, 1842
                  sra          a5, s5, t4
                  sra          s0, s8, s9
                  ori          s7, s9, -1935
                  sll          a6, t1, a5
                  xor          a5, t4, a6
                  auipc        t0, 848262
                  and          s3, a1, s1
                  sltiu        s2, s5, -1975
                  srli         a3, a0, 24
                  nop
                  slli         a0, s10, 1
                  slti         a2, s4, 1447
                  sltu         a2, t5, tp
                  auipc        s0, 967009
                  lui          gp, 46297
                  srai         t0, tp, 14
                  srl          sp, a3, s5
                  sltiu        ra, s11, -301
                  add          a7, s0, s3
                  slt          a2, a7, a1
                  srli         s0, t5, 16
                  sltiu        s7, ra, 965
                  sll          s9, t4, s4
                  slli         s3, t6, 28
                  slli         tp, t1, 22
                  or           a6, s1, s6
                  xor          t5, s6, s6
                  sltu         s6, s3, zero
                  addi         s2, a0, 913
                  slli         ra, sp, 25
                  sll          s0, s6, zero
                  ori          s8, s7, 1778
                  sltu         zero, a5, s4
                  sltu         a3, a1, t3
                  srl          zero, tp, a1
                  and          s6, a4, tp
                  add          a2, t1, t0
                  slti         s1, t5, -1416
                  lui          s2, 779167
                  ori          a7, a1, -687
                  slt          s11, tp, s7
                  srai         s4, t4, 16
                  nop
                  slli         gp, s6, 31
                  ori          t3, zero, -993
                  xori         s9, s0, -1438
                  sra          s7, s7, a4
                  lui          a2, 53470
                  sltiu        t3, s8, 1354
                  sltiu        t2, a7, 1438
                  sltiu        t5, a3, 1776
                  sra          s7, s1, tp
                  auipc        t3, 560190
                  nop
                  add          gp, t2, s9
                  slt          a2, a5, t5
                  slt          t4, s7, s5
                  srl          a3, t3, t4
                  andi         s9, a3, -1797
                  srai         t2, s2, 22
                  slt          tp, s4, a2
                  add          s4, t2, a0
                  srl          t0, s10, zero
                  lui          a0, 467446
                  srli         s7, s2, 28
                  sll          s3, s2, a6
                  sltiu        s7, s7, 607
                  xori         s4, s11, 39
                  srai         ra, a0, 12
                  sltiu        s9, a6, 418
                  andi         a6, zero, 1693
                  srai         s1, s4, 28
                  xor          tp, t2, s10
                  sub          t0, sp, sp
                  li           s1, 0x32134440 #start riscv_int_numeric_corner_stream_4
                  li           t6, 0xd598fa9d
                  li           a6, 0xb93c0a56
                  li           s4, 0x0
                  li           s6, 0x80000000
                  li           s8, 0x80000000
                  li           s10, 0xffffffff
                  li           s3, 0xffffffff
                  li           t5, 0x2c5fb81
                  li           t0, 0x0
                  nop
                  nop
                  auipc        s10, 282820
                  addi         a6, t0, 1109
                  add          s3, s1, s1
                  nop
                  auipc        s6, 455100
                  add          s8, s1, a6
                  lui          s4, 34620
                  sub          s6, t5, s8
                  lui          t0, 96087
                  sub          s3, s1, s10
                  auipc        s1, 701419
                  nop
                  sub          s3, s6, s1
                  add          s4, s3, a6
                  addi         t6, s6, 21
                  nop
                  add          s10, t0, s1 #end riscv_int_numeric_corner_stream_4
                  addi         zero, a7, -639
                  sltu         s6, a2, s4
                  slt          t2, a5, t0
                  sll          s5, a4, t3
                  andi         a0, s2, 968
                  addi         s1, s1, 444
                  sll          s3, s0, s8
                  or           a7, tp, a4
                  srli         t4, a0, 12
                  and          zero, s10, a2
                  and          t6, s10, t2
                  and          a5, s5, t5
                  sltu         s2, sp, tp
                  and          t0, s11, t2
                  srai         s9, a0, 11
                  xor          a3, s1, s2
                  addi         t4, s2, -34
                  slti         t4, a6, 105
                  srai         s8, t0, 24
                  sub          s9, a3, t1
                  sra          t4, t3, a2
                  addi         s3, s4, -326
                  srai         s3, t1, 19
                  srl          tp, s6, t5
                  srl          tp, s7, a6
                  lui          s4, 966315
                  slt          a7, t1, a4
                  ori          s6, s9, 586
                  srl          s1, sp, a5
                  slt          zero, a4, t2
                  and          t3, t3, a7
                  srai         t6, s3, 24
                  sltu         ra, t0, gp
                  sltu         s6, t3, s5
                  sltu         s1, t4, sp
                  lui          s8, 606884
                  sll          gp, s2, s8
                  sll          a6, s2, s5
                  add          ra, a7, s9
                  sub          ra, a1, t3
                  srai         s2, s6, 15
                  sltiu        a2, sp, -196
                  lui          ra, 660816
                  xori         s1, s9, -174
                  auipc        t5, 228433
                  andi         sp, t0, -1072
                  sltiu        a2, gp, 1727
                  sltiu        s2, a0, 1375
                  andi         a0, s1, 824
                  sll          t5, a3, a3
                  addi         a7, s1, 233
                  nop
                  addi         gp, s9, -1774
                  sll          s3, gp, s3
                  and          a3, s1, t0
                  addi         zero, s10, -997
                  slt          s8, a7, s9
                  sltiu        a0, s6, 1356
                  slt          s11, s9, a3
                  add          s7, s1, s0
                  add          t6, s1, a3
                  slt          t5, gp, a3
                  auipc        t4, 233919
                  or           a5, s9, sp
                  ori          s0, sp, -922
                  addi         s5, tp, 1862
                  auipc        s10, 155061
                  ori          s5, t3, -1864
                  xor          a2, t5, s10
                  xori         s3, s10, -1215
                  sltu         ra, t5, s5
                  sll          s6, s1, a4
                  add          a2, a3, a2
                  sltiu        a6, t3, 1622
                  sra          s6, s5, t4
                  slt          s7, a5, s8
                  srli         s2, s2, 2
                  addi         sp, a5, -873
                  add          s3, a4, a7
                  or           t0, t3, a6
                  add          a3, s4, s10
                  sub          s8, a2, a1
                  auipc        sp, 324058
                  sra          zero, t0, t2
                  addi         s7, t4, 1327
                  auipc        a7, 915773
                  slti         s7, s6, -327
                  srai         s2, s2, 24
                  slli         sp, s3, 3
                  sll          s11, tp, s2
                  add          s9, t4, t1
                  srl          s7, a5, a4
                  srai         ra, tp, 8
                  srai         t5, a6, 22
                  xor          t3, s1, t3
                  and          a2, t5, a0
                  add          s11, t5, a4
                  sra          s1, tp, tp
                  nop
                  slt          a5, ra, s9
                  xor          tp, zero, a6
                  lui          a7, 622859
                  slli         sp, t1, 30
                  srl          s8, s3, s11
                  sll          a2, t2, gp
                  sltiu        a0, a2, 1213
                  srli         a6, a7, 8
                  add          t3, gp, s3
                  sltiu        s1, ra, -504
                  srai         s9, sp, 11
                  auipc        s1, 759519
                  andi         a6, s10, -339
                  lui          a7, 147878
                  and          s3, t4, ra
                  slti         s11, s0, 1983
                  xori         sp, sp, -1363
                  lui          ra, 973349
                  addi         s9, t4, 1937
                  or           t5, s8, t4
                  ori          t2, t3, -1480
                  srl          t3, s8, s1
                  xori         a3, s1, 686
                  addi         ra, a6, -1029
                  add          tp, t6, s9
                  ori          tp, s11, 300
                  sub          s8, s9, t3
                  srl          a0, s6, a1
                  addi         ra, s0, -1339
                  slt          s6, t1, t5
                  add          s9, ra, a4
                  nop
                  srl          a7, a0, t4
                  or           a2, s2, tp
                  addi         t3, ra, -739
                  xor          s10, t1, s3
                  andi         gp, sp, 364
                  xori         a5, s6, 132
                  add          s5, s0, s1
                  srli         a5, t3, 12
                  add          gp, s0, sp
                  add          t6, a4, a5
                  sll          s0, gp, s8
                  auipc        t5, 314408
                  lui          t2, 284083
                  sll          s5, a1, t6
                  sltiu        tp, s10, -1627
                  slli         s2, t1, 9
                  auipc        a3, 839511
                  slt          t5, a6, t0
                  add          a7, s2, s6
                  sra          a5, sp, t3
                  add          s2, t4, t1
                  andi         a6, t0, -1903
                  add          s11, t1, s3
                  add          a2, a2, s6
                  addi         a3, s9, -169
                  or           s1, s1, s3
                  srai         s9, a2, 19
                  sltu         t4, a2, t3
                  xor          a2, ra, t5
                  sll          a2, s6, t1
                  slt          ra, s1, t1
                  sll          s3, s6, a1
                  auipc        t5, 7315
                  add          t4, t4, a3
                  slti         s11, s9, 483
                  add          s7, t3, a1
                  srl          s5, tp, t0
                  xori         t2, s7, 683
                  nop
                  ori          a3, s4, -1195
                  nop
                  slt          sp, a1, s9
                  slli         s6, a4, 4
                  sub          a5, t4, tp
                  sra          s4, s11, s7
                  slli         a0, t3, 7
                  sra          a2, a6, a7
                  sltiu        ra, zero, 1790
                  lui          a6, 1045715
                  sltu         t3, s11, s11
                  slti         s8, a4, 967
                  sltiu        a5, a3, 1817
                  slt          a3, gp, t3
                  srai         gp, a0, 12
                  addi         s9, s8, 31
                  slti         s10, s3, -872
                  nop
                  addi         s6, t1, -194
                  xori         s4, s4, -849
                  lui          s8, 969063
                  sltu         t0, a3, sp
                  srli         sp, t6, 13
                  sll          a2, s9, s11
                  slt          a0, t5, ra
                  and          t5, s3, a4
                  or           t5, ra, a4
                  xori         s5, s10, 1716
                  sll          s6, a1, s1
                  sll          t5, s10, ra
                  nop
                  or           ra, zero, t5
                  lui          s2, 68237
                  slt          ra, sp, s4
                  or           s7, s8, t6
                  srl          s5, t5, t4
                  xori         s8, a7, -810
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           s10, 0x80000000
                  li           s3, 0x80000000
                  li           s6, 0x80000000
                  li           tp, 0x0
                  li           sp, 0xffffffff
                  li           s2, 0x896eeeda
                  li           a6, 0x0
                  li           s5, 0x0
                  li           s0, 0x80000000
                  add          s10, s3, s2
                  add          s2, s3, tp
                  add          a6, s3, s0
                  lui          s6, 434729
                  sub          gp, s3, s6
                  nop
                  sub          s10, s5, s0
                  sub          s2, s10, gp
                  nop
                  nop
                  add          gp, s2, a6
                  addi         s0, s6, 992
                  sub          s3, s3, s5
                  nop
                  auipc        s5, 133533
                  sub          s6, s5, s5
                  lui          s10, 886640
                  sub          tp, gp, s10
                  auipc        s3, 352297
                  lui          s3, 379166
                  addi         a6, s5, 1377
                  sub          gp, s5, s0
                  nop
                  add          gp, gp, s3
                  nop
                  lui          s10, 655264
                  sub          a6, s10, s5
                  nop
                  auipc        gp, 360254 #end riscv_int_numeric_corner_stream_16
                  add          s0, a2, s3
                  or           s9, a6, t0
                  or           a3, t4, a0
                  auipc        t4, 606025
                  srai         t3, s2, 10
                  slli         t3, gp, 13
                  add          t6, zero, a1
                  xor          s11, t5, s2
                  and          a7, t2, a2
                  andi         t6, t3, -123
                  andi         t0, a3, -1851
                  ori          s5, a7, -262
                  slli         s2, a3, 20
                  sll          a3, t2, ra
                  addi         s11, s8, -1355
                  nop
                  sll          s4, t5, s8
                  xori         a2, t4, -115
                  slt          a5, s4, t1
                  sra          t4, s9, a4
                  srl          s10, a4, a3
                  sub          s7, gp, s2
                  ori          a2, s4, -899
                  srai         a3, a0, 23
                  andi         a0, t4, -1606
                  xori         a0, a2, -946
                  srli         s4, t0, 23
                  nop
                  sltiu        s2, a2, -988
                  srai         s3, s4, 18
                  slti         s5, s9, -1091
                  sll          s10, a4, s2
                  and          a3, t0, a4
                  ori          s8, s6, 555
                  slt          t2, t4, s6
                  slt          t5, a6, sp
                  slti         t4, s1, 1724
                  add          s10, t0, s2
                  sub          a7, a4, tp
                  sra          a3, a5, s3
                  srl          t4, a5, s10
                  srai         gp, a3, 24
                  ori          t6, t0, 489
                  or           t4, t1, a4
                  xor          s1, s4, tp
                  srli         t6, t5, 22
                  srl          t6, t2, s10
                  or           a3, a4, tp
                  or           s10, s10, a7
                  ori          zero, a7, -1236
                  slli         zero, a2, 15
                  sll          a6, t4, tp
                  addi         s0, tp, -974
                  slli         tp, tp, 24
                  srai         s6, tp, 2
                  ori          t6, s2, 1129
                  andi         s3, zero, -1048
                  sra          t5, a0, t6
                  sra          t4, s8, t0
                  srli         zero, s9, 10
                  srl          s5, ra, a6
                  sll          t0, s1, zero
                  ori          a6, tp, -1314
                  slt          s5, ra, ra
                  and          a6, s8, ra
                  srl          s11, t4, s0
                  ori          s9, a5, -1645
                  sltu         tp, a1, tp
                  or           gp, t1, s10
                  nop
                  slli         t3, s1, 17
                  auipc        t4, 277541
                  slti         s4, zero, 531
                  srli         a7, t6, 21
                  srai         t3, zero, 1
                  sltu         s4, s0, a5
                  addi         a7, zero, 1793
                  xor          gp, t0, a4
                  srli         s8, s8, 12
                  sltu         zero, s6, a2
                  auipc        tp, 549691
                  andi         t5, s4, 217
                  add          s8, s4, t1
                  srai         t0, s1, 1
                  addi         t5, a1, 1211
                  add          s10, s8, zero
                  xor          a3, s6, s2
                  srli         s2, s0, 13
                  slli         a3, zero, 28
                  andi         ra, a1, 1545
                  slt          t0, a5, s4
                  andi         s5, a1, 708
                  srai         s6, a6, 21
                  addi         ra, s6, -1766
                  slt          s10, t3, a1
                  sltiu        t4, s5, -1832
                  add          t3, ra, a2
                  and          zero, s6, a1
                  or           gp, t5, zero
                  xori         a6, s0, -485
                  srli         t6, s9, 18
                  li           ra, 0xa437b73f #start riscv_int_numeric_corner_stream_5
                  li           s5, 0x7505021c
                  li           s10, 0x0
                  li           tp, 0x80000000
                  li           t4, 0x80000000
                  li           s11, 0x80000000
                  li           gp, 0xffffffff
                  li           t3, 0x4e11b825
                  li           s3, 0x0
                  li           s1, 0x0
                  auipc        tp, 934922
                  addi         tp, gp, -37
                  addi         s3, s10, -919
                  add          t4, ra, s11
                  addi         gp, ra, 1381
                  lui          t4, 467342
                  nop
                  nop
                  add          t3, s3, s11
                  auipc        gp, 1010977
                  addi         t3, s10, 1156
                  lui          ra, 315721
                  auipc        s3, 959300
                  auipc        t3, 784084
                  auipc        s10, 652269
                  addi         s11, ra, 15
                  nop
                  auipc        t3, 337753
                  add          s5, ra, s10
                  add          t4, gp, s1
                  lui          s11, 868806 #end riscv_int_numeric_corner_stream_5
                  xor          zero, t5, a3
                  slti         a6, sp, 391
                  or           s11, ra, s7
                  add          a7, sp, t4
                  srli         zero, t4, 31
                  srai         s10, a6, 11
                  sra          s2, t6, a4
                  andi         t0, gp, 1265
                  sltiu        s9, s11, 428
                  xor          s8, s10, t0
                  auipc        t2, 346714
                  sra          t4, s6, zero
                  xor          a3, t1, s4
                  sub          s3, s3, tp
                  add          s3, a4, s0
                  and          s0, s0, a6
                  auipc        s3, 173765
                  slli         a2, ra, 20
                  add          s8, s8, a3
                  lui          a6, 939902
                  addi         a6, sp, 1438
                  addi         a3, s10, 1422
                  auipc        t2, 177541
                  srl          a0, s6, s11
                  slti         t4, s3, 1011
                  slt          s0, t3, s11
                  srai         t6, s4, 22
                  xori         s11, ra, 1374
                  sra          s6, s1, ra
                  sub          s2, s6, t1
                  nop
                  sra          a2, s3, t6
                  slti         s4, a4, -261
                  sll          zero, t0, s9
                  nop
                  sra          a7, s3, t4
                  xor          a7, a6, t0
                  auipc        a2, 856902
                  slt          t2, t2, a6
                  add          t4, t1, s1
                  or           s1, a1, a4
                  or           t0, a3, a2
                  sll          a3, tp, a5
                  sltiu        a3, s5, -709
                  sltu         gp, s5, a2
                  nop
                  sltu         s3, t1, gp
                  add          s11, s0, s3
                  sltiu        s9, s11, 1907
                  and          s6, a0, s10
                  sll          ra, a5, t5
                  lui          a0, 152610
                  add          a7, s3, a0
                  xori         s4, a2, -369
                  sra          a0, t3, s7
                  or           tp, s5, s10
                  addi         tp, a1, -4
                  srl          a3, t6, s11
                  slti         t4, a4, 599
                  srai         s1, s1, 16
                  sub          s6, a5, a6
                  lui          s8, 1023382
                  srl          gp, s5, s9
                  slli         ra, s10, 11
                  add          sp, t5, s0
                  ori          a0, s3, -1292
                  srli         a2, s8, 3
                  lui          t6, 1001006
                  sub          a5, t1, a4
                  srai         s9, a4, 28
                  addi         s9, t5, 930
                  add          t3, zero, s2
                  nop
                  add          s11, t4, t3
                  sub          s5, s5, sp
                  slti         s6, a2, 1751
                  nop
                  sub          s2, s9, s6
                  xori         s11, gp, -248
                  sltiu        a3, gp, 984
                  xor          t6, zero, t5
                  xori         s3, a2, 311
                  or           s4, s8, a3
                  srli         sp, s8, 12
                  sra          s8, s9, a3
                  or           zero, s2, a6
                  add          zero, t5, s4
                  andi         s0, s6, 559
                  slti         s9, t1, -585
                  lui          s11, 883903
                  and          s4, t2, gp
                  sub          s6, ra, t6
                  lui          t4, 110706
                  sltu         s8, a3, t0
                  xori         s3, ra, 832
                  ori          t0, s7, 1294
                  sltu         s0, s11, t3
                  slli         s1, ra, 6
                  lui          t0, 141789
                  ori          s3, s6, 1802
                  sltu         sp, a1, a0
                  slt          s8, s4, gp
                  sra          a3, s8, t1
                  srai         s2, t4, 14
                  auipc        a7, 586216
                  slt          s2, t1, sp
                  add          a5, a4, s5
                  xori         tp, s6, -248
                  slti         s1, s11, -1893
                  srli         s1, s1, 1
                  sltiu        t6, tp, 1925
                  srli         s10, s6, 0
                  andi         a3, a2, 489
                  xori         a2, a1, 1574
                  sltu         tp, s8, t2
                  andi         s6, t1, -1967
                  xori         s6, t2, 444
                  xor          gp, s6, s11
                  sll          s4, s10, a6
                  sltiu        s5, gp, 1436
                  sra          s2, a1, gp
                  slti         a0, ra, -1203
                  sra          a5, tp, a3
                  sll          t4, a1, t2
                  addi         tp, t3, 643
                  sltu         a6, t6, sp
                  sltu         a6, a1, t4
                  slt          s6, ra, t0
                  xor          s3, s3, t0
                  xori         a6, a6, -1759
                  auipc        s5, 640402
                  xor          s2, s4, s1
                  addi         s4, s8, -1616
                  nop
                  or           t4, t5, s3
                  srli         s10, a4, 2
                  addi         tp, t4, 803
                  nop
                  or           a2, s10, s3
                  slti         s6, t3, 845
                  nop
                  and          t5, s5, tp
                  slti         s1, ra, -410
                  slli         sp, ra, 17
                  add          s7, s0, t0
                  sll          zero, s0, a2
                  sra          t4, a6, a2
                  ori          s1, t6, 95
                  slt          s1, a1, sp
                  xori         a7, a4, 1307
                  slli         s5, a1, 9
                  lui          a7, 903758
                  and          s5, t2, t1
                  sub          a2, s10, s11
                  xor          s0, t5, s0
                  auipc        s8, 136044
                  and          a2, a6, s0
                  sra          s1, a4, s6
                  ori          t3, a3, -427
                  and          a7, t2, s9
                  ori          t2, s7, -788
                  srli         t0, a7, 6
                  sltiu        sp, t3, -1289
                  srai         s10, s9, 6
                  add          t3, a4, a4
                  xori         t4, a1, 911
                  sll          s9, a3, a0
                  sll          s4, s1, t4
                  andi         tp, a2, 1151
                  sll          t5, tp, a3
                  srli         a0, s7, 18
                  sub          a5, s6, a4
                  sub          a5, a0, s10
                  or           a3, gp, s5
                  srl          ra, a0, zero
                  sra          s11, s9, s0
                  sltu         s6, t4, t4
                  ori          s8, s0, 971
                  slli         t6, a3, 5
                  auipc        a6, 893565
                  nop
                  andi         tp, a4, -1839
                  sub          s9, s5, a6
                  sltu         s7, s7, a7
                  slt          s3, a0, gp
                  xor          a2, zero, a1
                  xori         s4, ra, -228
                  nop
                  sra          a0, ra, s5
                  and          zero, t5, s3
                  andi         s9, t1, 979
                  xor          zero, a3, s7
                  auipc        s9, 137131
                  xori         a6, s11, -155
                  srl          a3, tp, s5
                  slt          sp, s9, s7
                  slli         s10, t2, 27
                  or           a3, a1, gp
                  sll          s9, s4, t6
                  sltiu        a6, s10, -608
                  sll          a7, t3, a3
                  auipc        s10, 665205
                  nop
                  xori         s9, a4, -1846
                  add          tp, ra, t2
                  and          t4, s11, a4
                  sltiu        s11, a1, 1400
                  sltiu        ra, t0, 1315
                  lui          s2, 937596
                  ori          tp, sp, -976
                  sub          a2, zero, s11
                  sltu         t0, s8, a1
                  sub          s0, t6, s6
                  sltiu        s10, s6, 904
                  sub          gp, a0, t4
                  andi         s6, a7, -145
                  nop
                  addi         t2, t5, -1068
                  or           zero, t0, s4
                  sltiu        tp, a3, -1536
                  andi         ra, s2, 1765
                  xori         t6, s2, -462
                  slt          a5, s10, sp
                  andi         s9, a2, 1582
                  and          s3, a2, s11
                  and          a6, a2, tp
                  xori         s1, t6, 771
                  sll          t3, a3, gp
                  and          s7, a4, s11
                  andi         a0, t0, 1757
                  slli         s11, ra, 14
                  and          zero, s5, a0
                  slti         a3, t0, -1295
                  slt          a5, s7, t1
                  sltiu        s0, a7, 1667
                  xori         t4, sp, -1791
                  sltiu        t3, s2, 113
                  slti         s7, t4, -820
                  nop
                  srli         gp, t4, 19
                  sll          s10, a3, tp
                  nop
                  srai         s11, tp, 15
                  srai         s3, tp, 7
                  and          gp, t1, s3
                  srai         s7, t1, 29
                  nop
                  nop
                  srai         tp, s9, 24
                  sltiu        gp, s3, -1701
                  lui          t4, 280118
                  sub          a2, s3, gp
                  addi         s3, t0, -580
                  addi         s4, ra, -1415
                  addi         zero, a0, -1471
                  srai         s0, s3, 27
                  sltiu        gp, gp, 298
                  srli         s5, a0, 2
                  xor          a0, s4, a0
                  add          s8, a0, a0
                  slti         t5, t5, 1986
                  addi         t0, s9, 1059
                  sub          s5, s8, s6
                  xori         s10, ra, -1685
                  auipc        a2, 490862
                  slti         t5, a2, -1997
                  andi         a3, t5, 1087
                  slti         s5, tp, 880
                  sub          a7, a1, t5
                  auipc        t4, 419074
                  slt          s6, s9, s7
                  srl          s9, zero, s6
                  auipc        sp, 328767
                  sub          s1, ra, sp
                  addi         t3, ra, 1960
                  srai         a7, t4, 0
                  slti         s11, ra, -844
                  or           a2, s6, t0
                  nop
                  addi         a3, gp, 160
                  srai         s0, t2, 5
                  nop
                  srl          tp, t1, t3
                  srli         t2, s2, 1
                  xor          t5, t6, t1
                  srai         s8, a4, 7
                  xori         a7, s3, -1399
                  or           s8, s3, a7
                  srai         ra, t0, 21
                  or           s0, a6, s7
                  slli         t0, s8, 17
                  auipc        sp, 42059
                  addi         s5, a1, -801
                  or           s8, sp, t6
                  lui          a2, 53108
                  slti         s2, t0, -1013
                  slti         s9, s11, 1699
                  or           s1, tp, zero
                  add          s7, t5, a7
                  sll          gp, t4, s2
                  ori          a6, a0, 1781
                  or           a7, s0, s8
                  slti         gp, t3, -488
                  addi         s3, s8, 1491
                  lui          tp, 934347
                  ori          s2, t3, -1787
                  srai         a5, a5, 15
                  slt          a5, t0, s7
                  lui          t2, 829763
                  xori         s3, gp, 612
                  slt          gp, s3, s4
                  and          s5, gp, a4
                  slli         t5, s7, 2
                  lui          gp, 650583
                  srl          t3, s7, s9
                  slt          s7, s3, t5
                  slli         t0, t5, 16
                  sra          s2, sp, t6
                  srai         t4, s10, 19
                  andi         tp, gp, -347
                  nop
                  li           t4, 0xb54030df #start riscv_int_numeric_corner_stream_17
                  li           ra, 0xd0d586f4
                  li           s11, 0xffffffff
                  li           t6, 0x7fccb4a6
                  li           s5, 0xffffffff
                  li           a2, 0x89b524ea
                  li           s6, 0x0
                  li           s1, 0xffffffff
                  li           s9, 0x0
                  li           gp, 0x80000000
                  nop
                  lui          t4, 967759
                  lui          gp, 1016522
                  addi         t4, s6, -1414
                  addi         ra, s1, 987
                  lui          t4, 185368
                  addi         t4, t4, 1680
                  lui          t4, 1002911
                  sub          s9, s1, s6
                  add          s6, s9, t6
                  auipc        s6, 279762
                  nop
                  add          s1, s1, t6
                  addi         a2, s6, -1622
                  lui          s6, 809365
                  nop
                  nop
                  add          t6, s1, s6
                  auipc        s6, 593717
                  auipc        s6, 563291
                  addi         s6, gp, 1319
                  sub          t4, s11, s11
                  lui          gp, 638804
                  sub          gp, s6, s1
                  auipc        s1, 485431
                  sub          s6, s9, s1
                  lui          s11, 139701 #end riscv_int_numeric_corner_stream_17
                  sltu         s9, s10, a2
                  ori          a3, s4, 1230
                  and          t5, s5, a0
                  slti         gp, t4, -991
                  sltiu        s8, s0, 552
                  slti         a2, s9, -78
                  xori         tp, t1, -213
                  add          a7, zero, s9
                  or           s10, a6, t3
                  or           zero, s8, t3
                  addi         s3, a0, 444
                  sll          t6, s1, t4
                  or           t4, s5, gp
                  ori          s10, ra, 1367
                  sltu         s6, gp, s9
                  srai         s10, t3, 23
                  slt          ra, s5, a5
                  xor          s0, gp, s2
                  nop
                  ori          ra, t5, 820
                  sltiu        a5, s7, -1287
                  auipc        t0, 1044814
                  xori         a0, s1, 1661
                  sra          a0, s0, s9
                  ori          a7, t1, -1439
                  srai         s11, a4, 16
                  auipc        s11, 136019
                  xori         a0, s8, 924
                  sltu         t6, s7, zero
                  srai         t4, a6, 4
                  xor          s11, sp, a2
                  slt          s10, s3, a0
                  slti         s3, gp, -361
                  srl          s2, t0, a4
                  slli         t4, s5, 13
                  slt          s11, s6, s10
                  addi         s10, zero, -59
                  sltu         gp, s2, sp
                  slti         tp, a5, 874
                  ori          sp, s1, 737
                  xor          tp, s7, a3
                  sltu         s10, t6, a3
                  nop
                  srai         s6, gp, 18
                  srai         a5, a5, 12
                  or           a6, s4, t3
                  sll          s4, a1, s10
                  sub          t0, t4, s11
                  sub          s7, s10, zero
                  auipc        a0, 320647
                  xori         t0, a6, 326
                  addi         s7, a0, -1725
                  sra          a7, zero, t3
                  srli         ra, a4, 26
                  auipc        s6, 193867
                  lui          ra, 476057
                  ori          t5, s1, -567
                  xori         s11, a5, 1714
                  sra          t5, s10, s9
                  srai         t4, a1, 11
                  lui          s6, 82683
                  addi         s7, a0, -620
                  srl          a0, t1, s8
                  sra          s9, a6, s1
                  addi         s3, a0, 1638
                  addi         s10, t1, -75
                  andi         sp, t4, 439
                  sll          s1, s3, t5
                  sra          t2, s3, ra
                  srai         s6, s11, 23
                  sltu         s3, ra, ra
                  sltiu        a2, a0, 1816
                  slt          s1, ra, a1
                  xori         a2, a5, 1760
                  srai         s5, s3, 24
                  srli         t3, gp, 11
                  ori          s7, s11, 1526
                  andi         s1, s6, 1655
                  slli         s8, a6, 14
                  sra          s5, t6, a2
                  xori         a7, a5, -1355
                  slti         t2, t2, 1036
                  or           ra, t0, s7
                  sra          s1, t0, t6
                  slt          t0, t1, a1
                  sub          sp, a6, s6
                  or           a5, a2, a5
                  and          s4, s1, s10
                  srl          s2, s7, s5
                  or           t3, a6, a0
                  srai         a2, t3, 11
                  xori         a2, s7, 1922
                  srli         a3, t2, 20
                  sltiu        s0, gp, 1028
                  sub          zero, t6, s6
                  sub          s5, s5, a7
                  xori         gp, s8, 916
                  add          s11, a1, sp
                  and          a2, s1, a4
                  add          t3, a6, a1
                  sltiu        s0, zero, 1414
                  nop
                  and          a6, t0, s1
                  auipc        s1, 880401
                  sltiu        t0, a1, 674
                  sub          s2, t1, a2
                  slt          a2, a3, t5
                  sub          s8, s3, s11
                  addi         t5, ra, 548
                  slti         t6, ra, 1552
                  slli         zero, t2, 6
                  srl          s2, zero, a0
                  xori         a3, s10, -1161
                  or           a0, s3, s5
                  add          t3, t5, s6
                  lui          a6, 961726
                  andi         t4, s7, 226
                  lui          gp, 12991
                  xori         s11, t0, 285
                  srli         zero, sp, 7
                  and          a6, t6, s0
                  sra          t2, t6, s6
                  sll          t3, s8, tp
                  slli         tp, t0, 20
                  add          s2, a7, t4
                  xori         t3, s10, -1668
                  add          a3, a3, s8
                  add          a3, a4, s11
                  slt          a7, s9, a6
                  and          t5, a6, a6
                  sltiu        a2, a0, 66
                  andi         s6, a0, 669
                  and          a7, s2, a2
                  xor          sp, sp, sp
                  add          s0, s11, t1
                  or           t0, t5, s11
                  xor          tp, t0, sp
                  ori          a5, s5, -390
                  addi         a5, t3, 463
                  sra          s6, s7, s9
                  slli         a2, s5, 27
                  addi         t6, t3, 1531
                  ori          gp, t2, 1392
                  add          t4, s11, zero
                  slt          t2, ra, s2
                  nop
                  sltu         s9, a0, t0
                  nop
                  sll          s1, sp, s6
                  slt          a0, ra, s8
                  andi         s3, t1, -79
                  sra          a7, t5, s1
                  or           gp, gp, s7
                  sltiu        t6, s5, -897
                  auipc        s6, 701173
                  xori         s4, t3, -1315
                  xori         s10, a3, 1883
                  auipc        s2, 713958
                  sub          s3, t1, s5
                  slli         a3, t5, 30
                  addi         s0, s8, -38
                  ori          s11, sp, -339
                  andi         tp, sp, -1159
                  sub          s6, ra, t6
                  slt          t5, s6, a7
                  xori         s4, a4, 1329
                  slli         a2, sp, 30
                  and          t4, ra, s3
                  ori          s1, zero, 1623
                  sltiu        sp, a4, -1027
                  and          t6, s1, t0
                  sltiu        a5, s1, -339
                  andi         s9, t6, -700
                  addi         ra, t0, -1761
                  or           gp, t4, tp
                  nop
                  sub          s9, a1, gp
                  srai         s8, t5, 12
                  slt          s4, s8, s8
                  sll          a7, a6, sp
                  sub          tp, s7, a2
                  and          s7, tp, t1
                  ori          tp, a0, -1838
                  sll          a0, t6, s3
                  add          s11, a6, a6
                  srai         s9, a3, 18
                  xori         a5, t3, 1388
                  and          s0, a0, a7
                  auipc        a6, 696096
                  sub          a6, a3, s3
                  auipc        s7, 356097
                  slti         s5, s11, 543
                  srli         s1, t4, 21
                  srai         t5, a2, 15
                  ori          s7, t0, 325
                  nop
                  slt          a2, s8, a2
                  srli         s6, a7, 7
                  srli         s1, s8, 14
                  slti         s8, s5, 440
                  add          s10, s0, tp
                  andi         s3, tp, -1848
                  add          t0, s3, a6
                  addi         a7, a5, -765
                  sra          s9, s6, a6
                  andi         gp, s4, 1948
                  sltu         s10, a2, a1
                  srli         s9, s0, 2
                  andi         a6, a1, 1175
                  lui          tp, 240658
                  sltu         a2, t1, t4
                  nop
                  slti         zero, s9, -1747
                  and          s4, a1, a7
                  slt          s7, sp, s0
                  slli         t2, s2, 26
                  lui          a7, 78664
                  xor          s6, s1, s6
                  srai         tp, a1, 19
                  srai         gp, t3, 25
                  addi         t4, t1, -1536
                  xori         s3, t2, -255
                  addi         t4, ra, 982
                  addi         t3, gp, -1562
                  addi         s9, s1, -1734
                  or           s3, a7, s3
                  sra          s1, t3, a3
                  nop
                  andi         s3, s7, -694
                  auipc        s4, 810786
                  xor          ra, t3, t6
                  sltiu        sp, s10, 936
                  sub          a5, s3, gp
                  and          s0, t1, a3
                  addi         s4, ra, 1535
                  auipc        s6, 476961
                  add          a5, s1, s10
                  srli         s4, t3, 17
                  andi         zero, s0, 565
                  add          s4, s3, tp
                  ori          t4, a2, 611
                  srli         s0, a7, 17
                  sltiu        ra, s5, 582
                  sltiu        a2, s11, -869
                  lui          a7, 661778
                  srli         a3, t0, 7
                  sub          s11, s9, t6
                  slti         s5, s7, 1891
                  xor          a2, a3, t0
                  xor          s10, t0, a7
                  nop
                  ori          t3, zero, 40
                  or           gp, s2, t1
                  sltu         a3, s10, a4
                  sra          t6, s0, s1
                  sltu         s3, s4, a7
                  auipc        tp, 103582
                  sltiu        s5, a5, -659
                  ori          t4, a5, 805
                  slti         s10, a5, -1344
                  srai         t5, a3, 7
                  sra          t2, zero, s1
                  srl          sp, s8, sp
                  addi         zero, t1, 2010
                  ori          s6, s7, 1439
                  slli         s0, t0, 28
                  or           s4, gp, s7
                  sltiu        a6, ra, 108
                  sltu         s9, t4, s8
                  addi         s3, zero, -624
                  slti         s4, s10, -1641
                  nop
                  addi         t3, a0, 484
                  andi         s0, s9, -736
                  srai         s7, s8, 17
                  auipc        s11, 203702
                  and          zero, s10, a4
                  slli         s1, t0, 25
                  sltu         s2, s5, t4
                  srl          s11, a0, a4
                  xori         s4, s1, -1819
                  sltu         t0, t4, a5
                  andi         s1, a3, 1013
                  and          ra, s0, s11
                  add          t2, s8, t2
                  or           t3, a1, t3
                  or           s5, s5, t3
                  slt          s4, t5, s3
                  and          s1, t2, t2
                  sltiu        s7, t4, 597
                  auipc        gp, 921055
                  sltu         a6, s9, s1
                  and          s9, gp, a7
                  andi         t6, a5, -617
                  andi         s2, a4, 888
                  srai         t2, a4, 31
                  slti         t4, s5, -888
                  sra          t4, a5, s8
                  srli         s4, ra, 6
                  srl          t5, tp, a0
                  sub          s4, a7, t6
                  xor          s2, zero, a5
                  xori         a3, a4, -82
                  add          a6, gp, t6
                  srai         s7, s6, 18
                  srl          a0, s5, s5
                  nop
                  and          t6, s4, a4
                  addi         a3, s1, 927
                  andi         s10, t6, 731
                  srai         s5, s10, 9
                  addi         t4, a3, -376
                  sll          sp, tp, t2
                  add          s3, tp, t0
                  and          s4, t6, s8
                  or           a5, s0, t4
                  srl          t3, s5, t6
                  lui          a3, 132575
                  sltu         s1, s5, s6
                  slli         s4, t6, 16
                  sub          s1, sp, t2
                  andi         t5, s9, 809
                  and          ra, a7, s9
                  auipc        ra, 168931
                  sll          t4, s2, s8
                  srli         s8, t6, 2
                  sra          ra, a2, a7
                  sll          t2, a5, a1
                  add          s8, a3, t1
                  sll          a7, t0, s4
                  sltiu        a0, s0, 1704
                  sub          s9, s0, a0
                  and          t3, s1, s1
                  andi         s1, zero, 658
                  nop
                  sra          s0, t2, gp
                  and          s1, a3, s9
                  nop
                  srli         a6, zero, 2
                  ori          a7, a7, 1667
                  sub          a0, a3, s8
                  srli         a2, ra, 12
                  slti         s11, tp, -36
                  slli         s2, a3, 26
                  sltu         s0, t2, a4
                  addi         s9, t4, 585
                  sll          s11, s1, ra
                  or           t5, s8, t2
                  nop
                  xori         s11, t5, 423
                  srli         s9, s2, 27
                  sltiu        s7, t3, -557
                  add          a7, a0, a7
                  srl          a3, s2, t1
                  auipc        s11, 166757
                  xor          s3, s7, s1
                  andi         s6, a1, -385
                  add          ra, s10, a3
                  srl          a0, s5, a3
                  addi         a5, s4, 1124
                  sra          s7, t3, s6
                  and          t2, a5, s1
                  sltu         s5, s5, t4
                  addi         s5, s0, -580
                  slti         s9, tp, 1644
                  andi         a6, s1, 1989
                  nop
                  sub          s1, s7, ra
                  srl          s1, ra, s1
                  and          t3, s1, t3
                  srl          a2, s10, a6
                  auipc        s2, 208788
                  and          s3, ra, t4
                  slli         s5, sp, 27
                  or           gp, a1, a3
                  srai         sp, s10, 13
                  srai         s9, s7, 23
                  or           t5, a1, s3
                  sub          s11, s4, a7
                  andi         gp, gp, 334
                  slt          t6, a2, ra
                  addi         s8, t2, 1527
                  srai         sp, t6, 27
                  or           s10, s4, ra
                  srl          ra, t5, s9
                  andi         s1, t4, 828
                  slti         s6, a1, -1989
                  sub          tp, t1, gp
                  sltu         s1, gp, s11
                  sltiu        s4, t2, -864
                  srl          sp, a0, a0
                  andi         t0, gp, 1847
                  xor          s6, a2, sp
                  slti         s8, s5, -900
                  and          s9, gp, t5
                  srai         a6, t4, 3
                  addi         a7, s8, 136
                  sltu         s11, zero, a0
                  or           t4, a1, s6
                  srai         s10, t6, 15
                  srai         a0, t6, 14
                  lui          s6, 556767
                  add          s9, a3, s6
                  slli         a5, t3, 18
                  slt          a3, a0, t5
                  lui          s4, 889837
                  srai         tp, a4, 0
                  lui          a0, 451974
                  sra          t4, s7, a2
                  xori         s5, zero, -1053
                  sltu         t5, s10, s8
                  sub          s8, a2, t1
                  slli         tp, a7, 14
                  addi         s5, s11, -1920
                  xor          s3, a7, s0
                  or           s3, s1, a2
                  auipc        s2, 291378
                  slti         sp, a6, -169
                  slti         s10, t0, 1650
                  lui          s8, 455383
                  sra          s7, t4, s7
                  xori         tp, s5, -1764
                  srli         t6, s10, 10
                  slt          a6, t0, s2
                  slli         s1, t4, 30
                  srl          t6, s0, a1
                  srai         sp, s7, 3
                  lui          a6, 577683
                  srai         sp, t0, 30
                  srl          s3, sp, t0
                  slt          s0, a0, s2
                  lui          ra, 489711
                  sra          s1, a7, t3
                  or           s1, s3, s0
                  slli         t2, a4, 0
                  srli         s2, zero, 14
                  or           tp, a4, a7
                  sltu         ra, a0, a3
                  add          s1, ra, a5
                  sltiu        s0, s9, 1758
                  andi         a0, tp, -402
                  srai         a3, t5, 16
                  sub          ra, s0, t0
                  xor          t4, a5, s1
                  sra          t2, a1, sp
                  sltiu        s4, ra, -757
                  xor          gp, s0, a7
                  xori         s3, ra, -1972
                  ori          a5, s1, -1443
                  xori         t5, a3, 591
                  or           t3, a0, ra
                  auipc        t0, 92946
                  sra          ra, a1, gp
                  slli         s10, t2, 31
                  xori         s3, s8, -1323
                  sltiu        a2, s9, 292
                  sll          s10, s2, a1
                  addi         ra, t6, -529
                  ori          s0, s3, -1093
                  sub          s7, sp, s5
                  xori         gp, t5, -691
                  andi         a7, ra, 732
                  sltiu        s10, s3, 136
                  slti         s5, a6, -1138
                  srli         s11, t3, 13
                  sltiu        a2, s9, -1165
                  srai         tp, t3, 11
                  slli         a5, s5, 12
                  sub          s9, s9, tp
                  srl          zero, s2, tp
                  sll          s10, zero, t5
                  sltiu        s0, a2, 1219
                  sra          t6, s11, a3
                  sra          s10, a0, t6
                  auipc        t0, 523076
                  slli         s9, s4, 8
                  sub          s8, t0, tp
                  xor          t0, t2, a1
                  sltu         s8, a3, s11
                  srl          t4, ra, s7
                  ori          s3, s7, 492
                  sltiu        sp, s10, 1275
                  srl          t6, gp, t6
                  ori          gp, s9, -1940
                  sra          t2, a6, s8
                  srl          gp, s10, s11
                  lui          a2, 802436
                  sltu         t4, s3, a4
                  nop
                  auipc        t2, 97114
                  srli         s1, gp, 1
                  addi         zero, t2, -1465
                  lui          zero, 523409
                  srli         t0, s5, 5
                  xori         s4, t5, -1775
                  and          t6, t4, s10
                  sub          zero, a5, s4
                  sltu         a7, a1, t3
                  slt          s8, s4, ra
                  slli         t2, a7, 12
                  nop
                  auipc        t3, 131074
                  addi         a7, a2, -423
                  slti         t4, t0, -1014
                  sll          a5, t2, a5
                  xor          s4, a0, a1
                  add          tp, a5, a1
                  xori         s2, t1, -904
                  andi         a5, s2, -26
                  xor          t5, gp, a1
                  sll          a2, t3, sp
                  add          ra, s0, a5
                  andi         s3, s3, -1033
                  auipc        t2, 327084
                  add          s10, s8, s10
                  sub          tp, s7, s2
                  srli         t5, s11, 29
                  ori          s11, s6, -304
                  andi         a6, gp, 350
                  and          t4, ra, s7
                  andi         s10, t6, 1125
                  sra          ra, a1, t5
                  srai         s1, s0, 30
                  sltiu        t4, tp, -629
                  sltiu        a0, t3, 652
                  ori          s1, a6, -737
                  xor          zero, s0, s0
                  xor          s1, s3, t1
                  auipc        s7, 776843
                  lui          t0, 387361
                  slli         zero, s2, 10
                  lui          t4, 1017655
                  srl          s3, a5, t6
                  srai         gp, t0, 1
                  ori          s4, s6, -371
                  nop
                  srli         t5, a1, 25
                  sra          s4, ra, a3
                  srai         s10, s8, 5
                  slli         t4, s8, 7
                  ori          t3, t0, -1207
                  or           zero, t1, s3
                  sltiu        s0, a5, -738
                  srai         s9, a0, 26
                  lui          zero, 874946
                  nop
                  sra          s11, s5, tp
                  slt          s0, s7, s11
                  sltu         gp, a3, s8
                  add          a2, s0, s8
                  xor          s9, a7, a1
                  auipc        s3, 752506
                  sltiu        s0, s3, 1798
                  addi         a2, t6, -632
                  ori          s7, t3, -523
                  or           t5, s6, sp
                  lui          s11, 94465
                  slti         t6, s4, -1050
                  srai         s6, t3, 14
                  sub          t3, t2, a0
                  nop
                  slt          t2, t6, s9
                  add          zero, a3, s0
                  srl          t2, a7, s3
                  or           t5, s7, s5
                  lui          s0, 830125
                  and          t4, a6, a0
                  srl          a5, s9, s7
                  auipc        s11, 710141
                  andi         gp, s8, -1525
                  andi         s9, tp, -1472
                  auipc        t2, 454041
                  slt          a5, t5, s3
                  slti         t3, sp, 776
                  sub          s10, s3, gp
                  and          s7, t2, a7
                  sll          s10, s6, t6
                  or           ra, t6, a6
                  sltu         s10, t1, a6
                  ori          s5, s10, -743
                  lui          s4, 564802
                  sra          t6, a1, t4
                  srli         s4, s0, 29
                  xor          s10, t5, s4
                  sltu         t3, s4, s4
                  and          s0, t6, s8
                  slli         s1, s7, 31
                  srl          s8, s11, s6
                  auipc        gp, 486400
                  xor          s4, s6, a0
                  sll          t6, t4, s1
                  and          s9, a4, s2
                  xori         s2, s3, 1463
                  srai         s3, a2, 25
                  add          t0, s10, s7
                  auipc        t6, 1013747
                  slti         zero, sp, -1852
                  auipc        a2, 602995
                  andi         s1, t5, -1327
                  add          a5, t4, t5
                  sltiu        t4, s7, 1017
                  auipc        t5, 724504
                  lui          a5, 84029
                  auipc        s6, 1035175
                  sltu         s0, tp, sp
                  srli         s4, a0, 9
                  slli         s7, s4, 15
                  xor          t4, ra, t3
                  sltu         t6, gp, s2
                  addi         s1, t4, 545
                  ori          a5, s4, -467
                  slti         s9, a6, 749
                  slli         s3, s4, 9
                  xori         s4, a5, -609
                  auipc        s0, 653965
                  and          a7, s6, s1
                  and          s9, s9, a6
                  slti         a6, s3, -800
                  andi         s10, sp, 865
                  sub          sp, t5, t1
                  sltu         sp, t1, t0
                  and          zero, tp, t2
                  xori         ra, a5, 1159
                  ori          sp, t3, 1701
                  and          sp, s9, t2
                  andi         a0, t5, 1429
                  or           t3, s11, t2
                  sra          t3, s10, a2
                  sltu         s5, t6, t2
                  xori         t5, s11, -1639
                  or           s10, a3, s7
                  xor          s6, ra, s8
                  addi         s10, zero, 1461
                  and          s2, s3, t5
                  nop
                  srli         t3, s8, 18
                  or           a0, t2, t2
                  srli         zero, s1, 10
                  slli         t6, t0, 10
                  xor          a6, s5, a6
                  sub          a6, gp, zero
                  sra          s2, s0, a6
                  and          s4, s11, s7
                  srai         s1, s1, 12
                  ori          s7, s7, -1173
                  sll          s8, a4, s9
                  andi         sp, t3, 1087
                  nop
                  sltiu        t5, t4, -1405
                  srai         s10, gp, 10
                  auipc        t6, 115732
                  slli         s7, s10, 30
                  srli         sp, a5, 17
                  sltiu        t0, tp, 379
                  srai         a5, t2, 4
                  srai         t2, s9, 12
                  andi         t6, t2, 2027
                  nop
                  auipc        a3, 787451
                  sltiu        s7, a7, -1824
                  xor          t0, t6, t2
                  slt          t6, sp, s11
                  addi         gp, s4, 762
                  add          a2, t2, t1
                  slti         s8, a5, 538
                  xor          t5, a4, s7
                  lui          t0, 283395
                  add          gp, t4, s3
                  xor          s2, a4, s5
                  add          s4, zero, t6
                  lui          t0, 716446
                  auipc        s1, 813958
                  and          t0, ra, s2
                  sub          sp, s8, sp
                  ori          s5, a1, -1785
                  slt          s1, a0, s6
                  xor          s10, tp, a4
                  nop
                  add          t2, a3, s2
                  andi         s11, s6, 124
                  srl          t5, a1, a6
                  slt          a0, t3, a1
                  sltu         tp, s8, t2
                  addi         tp, s5, -1769
                  lui          a3, 496504
                  slli         t4, s3, 11
                  sltu         s0, s3, s6
                  sub          s5, a6, s5
                  xor          s2, t3, s3
                  srl          zero, tp, s8
                  and          tp, s6, ra
                  addi         t6, s2, 415
                  xori         zero, s2, -1459
                  andi         sp, s3, 1491
                  slti         s7, tp, -314
                  sltiu        t3, s7, -1965
                  slt          s11, s4, t3
                  srl          ra, sp, s2
                  and          a0, s3, tp
                  sltiu        s3, s4, 1170
                  slli         s9, t1, 24
                  srl          a5, s2, s10
                  slti         t0, sp, -504
                  srli         t4, s10, 4
                  sub          t0, s4, a4
                  sll          s6, s8, a2
                  sltu         a6, sp, t5
                  slt          t0, s9, ra
                  slt          s11, a7, s10
                  srai         s4, ra, 25
                  and          s6, a4, a6
                  sll          ra, a1, t6
                  xori         s11, s9, -641
                  andi         t4, sp, -425
                  sltu         s5, s11, a3
                  xor          t0, zero, s3
                  lui          t5, 473955
                  srli         t6, t5, 27
                  andi         t0, zero, 1619
                  xori         s0, s11, -1449
                  sub          t6, s1, s6
                  sltiu        t2, gp, 1346
                  sltu         s7, a4, s4
                  andi         t6, gp, -1077
                  srli         s10, t0, 21
                  sltu         t5, t1, a3
                  addi         sp, t6, -331
                  xori         t4, t0, 1641
                  xor          s7, t4, t4
                  andi         a3, a1, -1484
                  srl          a0, s4, s5
                  and          s4, s3, t6
                  sltu         zero, gp, a0
                  sub          s9, a7, s9
                  addi         s1, t1, -837
                  sltu         gp, a4, s11
                  auipc        s11, 806222
                  ori          tp, s6, 747
                  srl          ra, s4, sp
                  auipc        s4, 1032788
                  or           s11, s10, t3
                  slt          s0, s0, a7
                  auipc        s8, 557267
                  slli         s5, t1, 31
                  srl          s8, t5, s2
                  sra          ra, gp, s7
                  nop
                  slli         s6, t5, 2
                  sub          ra, s9, t6
                  srli         ra, gp, 25
                  add          t3, s4, s9
                  addi         s9, s9, -867
                  xori         a5, a6, -1539
                  slt          ra, a4, s3
                  xor          s8, gp, a7
                  slli         t4, a4, 19
                  ori          t0, s5, 1467
                  addi         s5, zero, -584
                  srli         s8, s10, 27
                  auipc        s7, 1028650
                  srai         s7, a6, 11
                  sltiu        t0, a0, 799
                  ori          sp, s11, 544
                  and          a2, s7, t3
                  sll          s11, a1, a7
                  slti         tp, s7, 31
                  andi         s10, a7, 69
                  xori         s5, t1, -1303
                  srai         a6, a4, 23
                  nop
                  andi         s1, s10, 44
                  andi         a5, s6, 255
                  slli         a5, t5, 14
                  andi         a6, s4, 72
                  srl          s9, s4, s2
                  andi         a2, t2, 1844
                  xor          s7, a5, a6
                  slli         s3, ra, 8
                  auipc        gp, 945541
                  nop
                  sltiu        t5, a1, 339
                  addi         t3, a2, 565
                  sra          sp, s0, t3
                  sltu         s1, sp, a6
                  xor          s9, s4, t5
                  slt          s0, t0, a7
                  add          t2, t6, s5
                  slti         a5, t6, -203
                  addi         ra, zero, 210
                  or           s0, s4, gp
                  slti         a3, s10, -1693
                  sltiu        s6, a1, 962
                  sll          sp, tp, t5
                  ori          s9, gp, 1042
                  slt          s8, s5, zero
                  addi         s10, t5, 218
                  auipc        t4, 729624
                  xor          t5, tp, s11
                  add          s3, tp, s1
                  srl          s8, t4, ra
                  srli         s8, a0, 4
                  nop
                  xor          s7, t5, a5
                  sra          s6, a3, ra
                  sltu         s11, ra, gp
                  slti         s10, s5, -324
                  andi         a7, a0, -649
                  srli         s1, s7, 12
                  lui          s9, 124205
                  addi         a2, t0, -1854
                  andi         a5, a4, -1005
                  slt          t3, a4, s1
                  add          a3, a2, s8
                  xori         a6, s1, 558
                  add          zero, t1, s7
                  srl          s9, t4, s5
                  nop
                  srai         s6, t5, 25
                  addi         a3, a1, 1675
                  add          s2, s1, t0
                  sll          a6, a1, s9
                  auipc        a0, 962149
                  or           s8, s9, tp
                  slt          a0, s2, s7
                  xori         s5, a2, 149
                  srai         t0, a7, 17
                  xor          s11, t2, a0
                  sra          a6, t6, a5
                  and          ra, a4, s3
                  sll          s11, a5, s11
                  or           gp, s9, t0
                  or           a7, a6, s6
                  lui          a6, 112983
                  and          s10, gp, t6
                  lui          t6, 702818
                  lui          t0, 151499
                  sll          s0, t2, a0
                  or           a7, t2, t5
                  xori         tp, s2, 412
                  sra          s5, tp, s8
                  or           s3, sp, ra
                  sra          gp, s10, s1
                  slli         sp, s9, 30
                  srai         t4, t1, 19
                  sltu         a0, s2, a6
                  addi         s10, s0, 584
                  nop
                  srli         s7, gp, 15
                  sub          t4, ra, t5
                  add          a0, a7, s8
                  ori          t4, t3, -1921
                  lui          s4, 601255
                  xori         s10, a4, 1298
                  sltu         a2, s5, s6
                  slli         s0, s11, 3
                  slt          s3, t0, gp
                  slli         s8, a0, 29
                  slli         s9, s8, 3
                  sub          s7, t3, a4
                  nop
                  srli         a3, s4, 20
                  sltiu        ra, s8, 1729
                  srli         s2, s9, 23
                  add          a5, s11, t2
                  slli         t0, s2, 20
                  sltu         t6, t3, s5
                  addi         s4, t6, 1377
                  sll          s7, ra, a6
                  slli         s9, a0, 7
                  nop
                  srai         s5, a0, 31
                  auipc        s5, 423422
                  or           t4, t1, zero
                  srli         gp, s8, 28
                  sub          s1, a4, s7
                  lui          s6, 562390
                  andi         t6, s10, 4
                  srl          t3, a2, a4
                  xori         t5, t0, -1844
                  sltiu        a6, s1, 933
                  addi         t4, a6, -1615
                  lui          a3, 815655
                  sub          t0, a4, s3
                  sll          t2, s10, t3
                  srl          zero, s5, s8
                  sra          s8, s10, sp
                  lui          t4, 166111
                  sra          s7, a1, s5
                  or           s3, t4, zero
                  andi         t4, s9, 1541
                  slli         sp, s2, 10
                  add          a5, a0, t6
                  add          s0, a6, s3
                  slti         t0, s8, -257
                  and          gp, a0, a7
                  lui          a5, 276725
                  sltiu        t3, t0, -1948
                  sltiu        s5, s10, -1600
                  slli         t6, a5, 29
                  sll          s6, s4, s10
                  andi         s0, s0, 912
                  sll          gp, s5, s3
                  srai         a3, s8, 25
                  ori          a2, s3, -432
                  nop
                  srl          a7, s2, t2
                  andi         s10, t4, 1146
                  and          t5, s8, s9
                  srli         t3, s10, 24
                  slli         t0, a6, 14
                  sub          s3, gp, s11
                  slli         s6, a5, 19
                  addi         s3, zero, -2024
                  ori          s4, a3, 1903
                  sltu         tp, a0, s7
                  lui          s4, 185804
                  slli         gp, t3, 24
                  srli         s4, a4, 28
                  srai         a6, t1, 12
                  xori         tp, s5, 611
                  auipc        t4, 1040504
                  srai         gp, s8, 5
                  lui          a6, 223836
                  xor          a5, t5, t6
                  add          a6, a7, s1
                  ori          t5, a4, 409
                  ori          t3, t1, -928
                  or           s4, a6, gp
                  or           s10, a3, a5
                  xori         zero, ra, 1460
                  nop
                  auipc        s11, 334954
                  slti         ra, s3, 1723
                  andi         a2, s1, -902
                  sub          a6, t2, s3
                  srl          s10, s9, a6
                  srli         a2, t4, 30
                  sra          s0, a5, s10
                  sll          s0, sp, a2
                  and          s5, s8, t5
                  or           s0, tp, s5
                  auipc        s1, 468716
                  sll          t6, t0, a3
                  xor          ra, a7, a3
                  slt          zero, s0, t6
                  sltiu        s6, a7, -1673
                  sltiu        s8, s4, -1845
                  srl          tp, t1, a2
                  sll          gp, zero, s0
                  srli         tp, a7, 24
                  or           s2, t2, gp
                  srl          ra, t6, s10
                  or           a0, s3, s5
                  slt          a5, s5, t6
                  and          t4, a6, a7
                  sltiu        zero, sp, -652
                  and          a6, a5, tp
                  auipc        a3, 53111
                  xor          s6, t4, t5
                  slli         s4, ra, 8
                  xori         sp, t6, 282
                  sra          s2, t2, t5
                  slti         gp, s8, -1536
                  or           a3, s6, s0
                  srli         tp, t2, 29
                  lui          gp, 459657
                  slt          gp, t3, a3
                  slti         a2, ra, -746
                  andi         s8, t3, 828
                  slli         s1, t3, 31
                  lui          sp, 433318
                  slti         sp, s5, -1154
                  xori         t0, zero, -240
                  sra          s9, a1, s3
                  sltiu        a0, gp, 667
                  xor          s5, s3, a7
                  srl          a7, t4, a0
                  srai         s0, sp, 31
                  auipc        gp, 96261
                  xor          s9, s8, s3
                  xor          s6, a0, s11
                  nop
                  srli         s1, s1, 15
                  auipc        t5, 405682
                  srl          s4, s4, a2
                  slli         s11, a1, 17
                  and          s10, s7, s10
                  sltiu        zero, a4, 91
                  slt          s8, t2, s11
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t3, 0xba45a451
                  li           t4, 0x0
                  li           a6, 0x0
                  li           t6, 0x861f50d6
                  li           s11, 0x80000000
                  li           s1, 0x0
                  li           sp, 0x0
                  li           s6, 0x80000000
                  li           s9, 0x80000000
                  add          s1, sp, s11
                  add          t6, t4, s11
                  sub          a6, s6, t4
                  nop
                  lui          a6, 550250
                  nop
                  add          s9, s6, a6
                  nop
                  add          s9, t6, s9
                  sub          s9, t4, sp
                  add          sp, sp, s9
                  lui          t5, 452281
                  sub          sp, s6, s11
                  auipc        s11, 448351
                  add          sp, t5, s9
                  auipc        s6, 423623
                  addi         t4, a6, 666
                  add          t3, s6, sp
                  add          s11, s6, s6
                  auipc        t4, 615479
                  auipc        t5, 53677
                  add          s1, s9, t4
                  sub          s1, s9, a6
                  addi         s6, sp, 581
                  auipc        s1, 340551
                  sub          s11, a6, s11 #end riscv_int_numeric_corner_stream_1
                  slt          t5, a6, t0
                  srli         t0, a4, 0
                  slti         t4, t5, -754
                  sll          s3, t1, zero
                  sltu         s0, sp, a6
                  lui          gp, 692850
                  add          sp, s7, sp
                  sltu         sp, a3, ra
                  sll          zero, a2, s8
                  slt          s0, s2, s10
                  nop
                  slti         t0, tp, -867
                  slti         gp, s8, -965
                  or           s1, s0, t5
                  ori          a0, s11, 1354
                  srl          s1, t4, s9
                  sltu         gp, t5, s5
                  xori         a6, s3, -425
                  ori          a7, s11, -241
                  srli         t4, s11, 13
                  xori         t4, a5, -628
                  sltu         a0, s11, s6
                  sltiu        s5, s8, -2003
                  sltiu        a3, a3, -1358
                  sub          a0, zero, t2
                  addi         s7, s8, -1926
                  sra          s0, s10, s2
                  srl          s4, s11, s3
                  andi         s1, s9, 2044
                  srl          a6, t0, a3
                  srai         s6, s0, 25
                  sra          a0, a5, s8
                  slti         t2, s8, -1668
                  lui          tp, 802218
                  lui          t2, 944110
                  and          a5, t5, s7
                  ori          s11, s11, 1430
                  slt          a5, s8, gp
                  addi         a2, gp, -855
                  lui          s7, 240354
                  or           a2, a6, s0
                  andi         a3, t3, -1645
                  ori          t3, gp, -1499
                  andi         s10, t3, -904
                  slli         s8, t3, 3
                  andi         a2, gp, -843
                  add          t5, zero, s7
                  add          t3, s7, s8
                  lui          t0, 547770
                  nop
                  sra          s3, t6, s1
                  srai         a3, t5, 27
                  auipc        ra, 906937
                  lui          t4, 413265
                  xori         s7, t3, -272
                  and          a0, zero, t5
                  sltiu        sp, s10, 96
                  xor          sp, s2, zero
                  slti         s6, ra, 348
                  andi         s8, s8, 1231
                  lui          gp, 260686
                  sltu         t0, a0, zero
                  xori         s6, t4, 1689
                  andi         gp, s3, -1218
                  slti         a0, s9, 1357
                  andi         a2, s4, 63
                  xor          s3, sp, gp
                  andi         ra, a3, 666
                  sll          a0, s7, a1
                  srli         s2, t0, 11
                  lui          a0, 39879
                  nop
                  auipc        gp, 573832
                  nop
                  srli         s7, s2, 7
                  xor          t6, a7, t3
                  lui          s10, 807505
                  or           s8, s11, s4
                  slti         ra, ra, 898
                  sll          s8, t3, a5
                  sltu         s4, ra, s4
                  xori         tp, s3, 333
                  and          s8, t2, s11
                  srli         s10, sp, 10
                  lui          sp, 243329
                  slt          s3, a2, s2
                  slt          a2, s2, s5
                  slli         zero, a3, 18
                  auipc        a0, 24800
                  sll          t6, a4, s8
                  srai         s1, a4, 12
                  add          t3, s11, a6
                  sub          t3, a4, zero
                  slt          zero, s6, s11
                  srl          a3, t5, t4
                  sra          t4, s4, a1
                  srai         tp, s6, 8
                  sub          s6, a4, gp
                  add          s0, s5, s0
                  nop
                  addi         s3, a4, -96
                  add          a3, a0, t1
                  lui          s1, 823084
                  srli         a6, a4, 5
                  sltiu        s10, s6, 443
                  or           a3, zero, sp
                  srai         gp, a6, 24
                  xori         sp, a6, -1375
                  auipc        a5, 587077
                  ori          a7, zero, 640
                  andi         s8, s10, 488
                  auipc        a0, 712670
                  srai         tp, t3, 4
                  addi         ra, t1, 777
                  sltu         s6, tp, s7
                  srl          a2, t6, a7
                  ori          ra, t3, -204
                  and          s3, a3, tp
                  or           s2, s8, t3
                  sltiu        s5, a2, -1496
                  slli         s10, s1, 10
                  addi         s4, s5, 484
                  slli         t4, s3, 25
                  addi         gp, a6, -687
                  and          s0, s11, s3
                  sltu         a2, s6, a4
                  or           sp, a7, ra
                  lui          s3, 971084
                  sub          s3, a0, a5
                  slli         t6, s3, 11
                  auipc        a3, 693017
                  sll          s1, s2, a0
                  sra          s3, a4, zero
                  sltu         tp, t1, s11
                  srai         s9, a6, 13
                  or           t5, s8, t5
                  sub          ra, gp, t4
                  andi         zero, s4, -581
                  and          t4, t6, a7
                  sltiu        s11, a0, -729
                  slti         a6, a3, 1759
                  sub          a2, t2, s10
                  slli         a7, t3, 4
                  slti         a3, tp, -1410
                  lui          s4, 195221
                  slt          tp, ra, s2
                  xori         t3, t1, 929
                  sltu         ra, a0, a1
                  add          a0, t0, a2
                  srli         a7, s6, 1
                  srl          s4, ra, a7
                  slt          s3, t2, a7
                  sltiu        tp, s5, -644
                  lui          gp, 601296
                  sltu         a3, a4, s5
                  xor          a2, s2, t2
                  slt          tp, s0, tp
                  auipc        s6, 630880
                  and          t4, tp, t2
                  lui          a7, 997338
                  add          t0, s0, t4
                  ori          a7, s1, -349
                  srli         a5, t3, 10
                  srai         a7, s9, 10
                  or           s7, s0, a7
                  srl          a5, t1, t0
                  slt          t0, tp, t5
                  srai         t5, s1, 19
                  andi         t3, a3, 1128
                  xori         t4, s11, 1072
                  add          s2, s1, t6
                  slli         a3, a7, 19
                  sll          sp, t3, t5
                  srai         t4, tp, 15
                  auipc        t4, 191064
                  sra          s8, s7, a7
                  sltu         s2, zero, t2
                  srl          t2, s8, tp
                  or           a7, t6, a2
                  srl          t2, s10, ra
                  srli         s8, a1, 23
                  add          s11, s7, s3
                  sltu         s8, tp, s1
                  nop
                  auipc        s11, 945098
                  auipc        ra, 808326
                  auipc        t6, 478645
                  sub          a0, s11, s4
                  sltu         s5, s5, s11
                  slti         t4, s8, -340
                  sltu         s4, t2, s9
                  slt          t5, s0, t3
                  slti         a3, t4, 1714
                  add          s7, a0, t4
                  or           a7, s8, tp
                  slt          s8, t6, t3
                  sltu         t6, gp, s4
                  srl          a3, a7, t0
                  andi         t2, s9, -754
                  sub          s3, a6, a5
                  sra          s0, a1, zero
                  xor          s6, s11, a1
                  sra          s4, a7, ra
                  nop
                  sltiu        s5, s3, -290
                  andi         t6, a3, -935
                  andi         t6, a6, -773
                  srli         sp, s9, 23
                  sll          t3, a4, s2
                  sra          a5, s10, s9
                  add          a0, sp, a3
                  srl          s4, s6, a3
                  slti         s5, a4, 1473
                  nop
                  srli         sp, t5, 1
                  or           s1, s8, s8
                  or           s1, t3, sp
                  sll          s10, a6, a6
                  add          s2, a4, s2
                  slti         t5, a1, 284
                  srai         a5, t6, 4
                  slti         s8, gp, 1694
                  sltu         s6, t0, s10
                  xor          a7, s4, s5
                  auipc        sp, 829339
                  auipc        s7, 88519
                  or           s3, a2, s4
                  xor          s2, t5, a4
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           t6, 0x7d1c23f5
                  li           t3, 0x80000000
                  li           s4, 0x0
                  li           t0, 0x0
                  li           s10, 0x9efd1523
                  li           ra, 0x0
                  li           s5, 0x80000000
                  li           s3, 0x80000000
                  li           s6, 0x80000000
                  auipc        s3, 541341
                  auipc        s1, 816611
                  lui          s1, 738646
                  add          t3, t3, ra
                  sub          t0, s3, s1
                  addi         t0, s5, -2007
                  add          t6, ra, s6
                  add          t3, s5, t0
                  lui          s5, 119824
                  add          s10, s5, ra
                  add          s1, s3, t6
                  lui          s5, 53610
                  lui          s1, 637468
                  add          s6, t6, s6
                  addi         s1, ra, 211
                  nop #end riscv_int_numeric_corner_stream_19
                  sub          t4, a3, t1
                  slti         s6, s3, 1826
                  xor          s6, a2, a5
                  xori         a3, ra, 1818
                  slli         a3, ra, 20
                  slli         a2, s7, 14
                  sub          a7, s1, a3
                  add          gp, s4, t4
                  slti         t4, sp, 1272
                  nop
                  slti         s9, s6, -813
                  auipc        s4, 270691
                  add          gp, t4, s11
                  sltu         tp, s0, t5
                  slt          gp, s3, a5
                  sra          s4, s7, s4
                  sub          a7, t5, s8
                  addi         s3, s2, 344
                  addi         s2, t3, 1830
                  ori          a0, s11, 1206
                  srl          s4, s10, s4
                  sra          gp, zero, t4
                  addi         tp, s1, -1640
                  sra          s11, sp, tp
                  sll          s8, a5, a3
                  srai         t6, t4, 2
                  and          a7, t4, t2
                  nop
                  sub          t4, t1, a5
                  or           s8, a0, t6
                  slt          s8, s5, a5
                  slti         zero, s10, -454
                  ori          a7, s8, -1925
                  sra          t6, s10, s6
                  nop
                  nop
                  srli         t5, t2, 9
                  nop
                  sll          a0, tp, a2
                  slt          s5, a4, s1
                  xor          tp, t6, a7
                  lui          s4, 385714
                  andi         a6, s9, 1633
                  sub          t2, a4, a0
                  xor          a6, sp, a3
                  addi         a2, a1, -12
                  xori         a5, s4, 1051
                  nop
                  slli         s6, s10, 17
                  add          t4, s8, s1
                  lui          s1, 865503
                  srli         t0, s0, 29
                  sltiu        t2, zero, 62
                  ori          a5, gp, -26
                  nop
                  sll          s10, t0, s5
                  lui          a2, 571064
                  nop
                  andi         a5, a4, 1395
                  xori         s1, a7, 1236
                  add          s4, a2, t6
                  sltu         s7, s0, a1
                  add          a6, t2, s8
                  nop
                  auipc        s11, 439125
                  auipc        ra, 542993
                  slt          t2, t1, s11
                  sltu         a0, sp, s10
                  srai         s2, s10, 0
                  sltu         a3, s5, a4
                  sra          s8, ra, a5
                  srli         s3, s10, 31
                  sra          s7, a5, sp
                  slli         s0, t6, 7
                  slli         t0, s8, 4
                  srli         s2, a1, 7
                  srai         a3, t5, 26
                  sltu         s7, a5, t3
                  sltiu        s6, t0, -988
                  sub          a6, a6, s6
                  xor          t3, sp, t2
                  slli         s0, s11, 16
                  slti         t0, t2, 1516
                  ori          a5, s4, -1572
                  andi         a2, s8, 460
                  sltiu        s4, a6, 1899
                  sra          t3, a6, a7
                  add          a2, tp, a7
                  srai         s10, s11, 11
                  sltu         s2, s6, t0
                  srli         a0, s4, 27
                  slli         s0, s6, 4
                  slli         s1, s6, 1
                  sra          a5, t1, s9
                  sltu         a0, s9, s2
                  srai         s9, a6, 13
                  andi         s4, s6, 1395
                  srai         gp, s5, 8
                  srli         a7, s2, 19
                  srli         tp, tp, 0
                  sll          s8, a4, s1
                  and          s4, s8, t5
                  srl          a3, s11, t4
                  slli         a2, ra, 6
                  or           a3, a6, a5
                  xori         s0, t6, -546
                  xori         t2, s3, 1751
                  srai         s8, a7, 18
                  srli         ra, a4, 23
                  addi         a2, a5, 1556
                  or           a5, a3, a1
                  srl          s10, ra, a2
                  nop
                  srl          a7, ra, s9
                  sra          s0, t0, t0
                  auipc        zero, 513981
                  sub          a3, t5, tp
                  sll          s0, sp, gp
                  andi         s6, s4, -1310
                  andi         sp, t6, -1799
                  slti         a7, s9, -1304
                  add          t6, s11, t3
                  sltiu        a0, t2, -761
                  sub          s6, a6, s2
                  andi         t6, s2, 1685
                  lui          t0, 591451
                  addi         t4, t0, 250
                  add          t6, s10, zero
                  and          a2, s8, s3
                  nop
                  sltiu        a3, gp, -282
                  srl          s0, s10, a4
                  sltiu        s1, t5, -1899
                  srl          ra, t4, a3
                  slt          s4, t5, t2
                  slt          sp, t6, s11
                  srai         s9, t4, 30
                  slt          s8, tp, t2
                  andi         a0, ra, -319
                  andi         ra, sp, 915
                  srli         ra, s9, 21
                  slt          s5, t0, s2
                  sub          t3, s3, s7
                  ori          s3, s4, -1494
                  xori         a6, a6, -1315
                  sub          s10, s4, s8
                  sltiu        a3, s0, -308
                  xor          a2, s0, t5
                  slti         s0, a7, -1111
                  sll          t0, a2, s0
                  lui          s9, 720266
                  slti         s5, t3, -1718
                  nop
                  ori          s5, t2, 1236
                  addi         gp, a2, 595
                  sltiu        s3, s8, -52
                  sltiu        s7, s5, -802
                  xori         s4, s5, -1003
                  srli         a2, s10, 21
                  auipc        ra, 240837
                  srli         s4, s0, 3
                  slti         zero, t2, -1498
                  add          zero, s6, s1
                  addi         s4, s9, 52
                  sltu         a0, gp, t2
                  and          s0, s5, s0
                  auipc        s0, 542345
                  slli         tp, t4, 24
                  lui          a7, 117603
                  addi         s0, s3, 1526
                  sltu         s5, gp, a0
                  sltu         t2, t4, s11
                  ori          a0, s8, 779
                  xori         s3, s0, -1094
                  nop
                  nop
                  xori         t5, t0, -615
                  slti         t5, s1, -231
                  nop
                  xor          tp, s11, a3
                  slli         t4, gp, 17
                  srl          s6, s2, s9
                  add          zero, s7, a1
                  or           t2, a1, t2
                  sll          s5, gp, a2
                  addi         t5, a3, 1846
                  sub          s11, s7, s1
                  nop
                  srli         tp, s6, 30
                  slt          t3, s8, s7
                  add          t5, sp, s3
                  srli         a7, s10, 2
                  nop
                  lui          a7, 184864
                  sll          a2, t6, a6
                  srl          s9, ra, sp
                  lui          tp, 298377
                  srli         tp, t2, 17
                  andi         s4, s8, -1661
                  or           s2, a4, s9
                  or           s9, s0, a1
                  slli         s11, a3, 31
                  nop
                  sltiu        t5, s11, -1848
                  or           t2, a7, a1
                  sltu         a5, sp, s9
                  sll          t6, t4, t0
                  addi         s5, t0, 2035
                  andi         s7, s9, -675
                  ori          gp, a4, -795
                  andi         s5, s4, 1613
                  slti         a0, a1, -763
                  sub          t2, s7, t3
                  ori          s7, a5, -59
                  sltu         a0, tp, s9
                  srli         t6, sp, 22
                  or           s6, t4, sp
                  sltiu        t4, s6, -1350
                  srai         s8, s7, 23
                  sltiu        gp, s2, 1693
                  auipc        s10, 665720
                  or           s9, a1, s9
                  xori         s0, s4, -1313
                  srl          t6, t2, a0
                  sll          s1, s2, a0
                  add          t6, s3, s6
                  and          s2, s6, s2
                  srai         s9, t2, 0
                  slli         sp, t0, 8
                  sltu         s10, t2, a1
                  addi         t5, t2, 413
                  lui          s1, 484901
                  slt          t4, s2, s5
                  andi         tp, s4, 125
                  sra          s5, s3, a5
                  srai         s3, s5, 1
                  or           s11, s4, a7
                  add          a3, s1, a5
                  nop
                  andi         t0, tp, 1780
                  addi         a3, s6, 1026
                  andi         a0, a0, 1437
                  xor          t6, t1, zero
                  xori         zero, gp, -2018
                  srai         s11, s9, 12
                  slli         s4, a4, 1
                  sra          s3, a6, s0
                  nop
                  and          t5, t4, t4
                  addi         a5, a5, 1649
                  slli         gp, a7, 26
                  slti         s2, t0, 303
                  andi         a3, s2, 221
                  andi         t4, a5, -893
                  auipc        s5, 656315
                  sra          s7, sp, t6
                  add          a0, sp, s3
                  lui          s4, 163714
                  slti         gp, s5, 1309
                  sra          s0, t1, s5
                  slt          s6, s6, zero
                  or           s2, gp, s2
                  sltu         s11, a4, s9
                  or           gp, tp, a6
                  sra          ra, s10, a3
                  srli         s0, t1, 16
                  ori          s8, s3, -248
                  srai         zero, ra, 23
                  sltu         s11, s1, t6
                  sra          t6, a1, tp
                  sub          t5, a3, a3
                  andi         t3, a4, 745
                  addi         t0, s5, 1134
                  srai         t4, a6, 4
                  andi         s9, s5, -219
                  xori         t6, t5, 642
                  sra          a2, s9, a7
                  srli         a7, s11, 18
                  sltu         s7, zero, a7
                  sltu         s10, s10, s1
                  slli         a3, s1, 4
                  xori         s2, s9, -530
                  sltu         tp, s11, a7
                  addi         s4, s1, 1484
                  srai         a0, t6, 29
                  or           ra, t5, tp
                  nop
                  srl          a2, a5, a2
                  sltu         a0, t3, a6
                  addi         t0, s11, 108
                  sltiu        a2, t5, -1150
                  sll          s5, gp, s1
                  xori         a2, s3, -458
                  sra          s3, a2, a3
                  slti         s11, s9, -832
                  sra          s4, s4, a7
                  addi         tp, gp, -1590
                  and          s0, sp, a7
                  add          s1, s1, ra
                  sll          t2, zero, s11
                  add          a5, s4, ra
                  srli         s3, t6, 11
                  sub          t5, a4, s7
                  add          a7, s11, s3
                  srli         s5, s8, 29
                  addi         t4, s1, -1304
                  ori          a0, ra, 1334
                  srl          s0, s3, s4
                  sra          s11, t2, s2
                  sub          t6, s6, a7
                  sub          a5, a3, s11
                  srli         s6, a3, 16
                  srai         ra, t3, 21
                  sll          t5, a0, s8
                  sltiu        t5, t2, -1409
                  sll          s2, a3, s3
                  lui          t3, 698016
                  xori         a6, t3, -1925
                  xor          a3, t0, t1
                  add          s5, s1, tp
                  or           s8, t6, t4
                  lui          s3, 434897
                  srai         s6, zero, 1
                  andi         ra, a4, -1967
                  sltiu        a3, sp, 233
                  and          s3, a1, s6
                  andi         t0, a5, -1283
                  ori          gp, a1, 405
                  auipc        gp, 718520
                  ori          a5, t4, 1176
                  and          s2, a3, zero
                  sltiu        a5, a3, -495
                  lui          a5, 806406
                  srl          a5, a3, s0
                  lui          t5, 308030
                  xor          t4, s8, t6
                  auipc        gp, 993470
                  or           zero, s3, a5
                  add          tp, s4, t3
                  addi         s3, tp, -1575
                  sll          a3, s3, sp
                  add          a7, s5, a3
                  sll          zero, gp, s7
                  xori         gp, zero, -310
                  xori         a7, t6, -1902
                  sub          sp, s11, s2
                  lui          s1, 675636
                  srl          t5, gp, a4
                  xor          s11, a6, t0
                  xori         s10, s10, -457
                  or           t4, t0, t1
                  andi         s7, s9, -169
                  andi         a3, a0, -788
                  sltiu        a7, a2, 493
                  auipc        s2, 382757
                  sll          s8, s7, a0
                  sub          t4, t2, s7
                  and          s8, gp, s9
                  ori          sp, a4, -1730
                  nop
                  xori         s2, a0, 1972
                  auipc        s4, 761704
                  ori          s3, zero, 711
                  sub          s6, s11, zero
                  ori          a5, t6, -237
                  srl          a0, s4, tp
                  addi         a0, tp, 1036
                  slt          s7, t1, t5
                  and          ra, s5, a0
                  sra          s4, a7, t0
                  srl          zero, a7, s7
                  slt          gp, zero, t2
                  ori          s5, t1, 1882
                  lui          t6, 285164
                  xor          s10, s9, s0
                  srli         s9, a0, 23
                  slli         s8, s3, 25
                  slt          a2, t5, s7
                  sra          a3, a0, a2
                  sltu         t2, gp, a4
                  and          tp, s10, a1
                  xor          s3, t0, ra
                  auipc        s0, 987205
                  add          t5, a1, s8
                  sub          t3, s10, a6
                  andi         t5, a2, 569
                  sll          s1, s10, a3
                  andi         a0, t5, 1827
                  xor          s4, s10, t1
                  nop
                  xor          s5, a7, a0
                  xori         t0, a5, 1590
                  add          t2, s10, a4
                  sub          s11, a3, s10
                  sll          s8, s7, a6
                  auipc        s0, 277702
                  slt          s6, t0, a6
                  slli         t6, sp, 0
                  ori          s6, ra, -1542
                  srai         a5, sp, 13
                  andi         gp, s9, 607
                  nop
                  srl          gp, t2, t6
                  slti         gp, ra, 734
                  srli         s5, s11, 24
                  slt          a6, a4, t6
                  srai         t5, s2, 11
                  slli         a0, a5, 22
                  auipc        s3, 515926
                  sltiu        t3, s4, 236
                  or           t0, tp, s10
                  srl          s0, s11, zero
                  srai         t2, a1, 24
                  srli         zero, a7, 8
                  sltu         s8, t4, t5
                  add          t5, t3, s11
                  sra          s2, a3, s1
                  sltiu        t5, t5, 1458
                  slli         sp, a1, 2
                  and          s8, s0, a5
                  slli         s2, s5, 24
                  slt          tp, ra, a7
                  srl          s1, s5, a1
                  and          a6, s6, zero
                  xori         s11, s5, 98
                  or           tp, s10, s6
                  srli         s9, s3, 8
                  sub          s8, s4, t4
                  srli         zero, sp, 17
                  sra          s10, t3, a3
                  auipc        s6, 398577
                  nop
                  ori          a3, t5, 272
                  ori          a7, t0, -1438
                  nop
                  lui          ra, 784125
                  ori          s1, a0, -1386
                  srai         t0, t0, 14
                  slti         s6, s0, -94
                  and          s0, s0, s2
                  srli         a6, t2, 30
                  sltu         s6, s10, t1
                  slt          t6, ra, s10
                  sra          a5, s1, a2
                  sra          t3, t2, s7
                  sltiu        t6, s6, 1874
                  sltiu        gp, t1, 188
                  slli         a6, s8, 26
                  auipc        ra, 278640
                  andi         sp, a2, 1858
                  add          a6, a5, a1
                  ori          s11, a2, 585
                  add          s5, a7, a1
                  srl          t4, t4, tp
                  slt          a7, s7, tp
                  slli         s0, a2, 11
                  nop
                  andi         a7, t4, 1563
                  xor          s0, s3, tp
                  sra          tp, s4, a2
                  ori          t2, s2, 1600
                  xori         t5, tp, 1462
                  srli         s3, s2, 27
                  srli         s11, t2, 5
                  srai         ra, s10, 27
                  auipc        t4, 567647
                  auipc        a2, 587970
                  or           s7, t4, a5
                  sll          s0, a6, s7
                  or           s3, tp, s9
                  srai         s11, sp, 12
                  srli         s10, sp, 6
                  srl          t4, a4, gp
                  sll          tp, s5, s11
                  srai         a0, a6, 5
                  srli         s3, s7, 12
                  slt          zero, s8, a0
                  slti         s10, t4, -130
                  srl          t6, t4, t5
                  ori          t3, s2, 963
                  ori          s3, s9, -837
                  srli         s0, t4, 2
                  and          a2, s4, t0
                  addi         a5, s5, 1166
                  sll          t4, a1, s1
                  auipc        tp, 781404
                  sll          a7, s4, a6
                  sll          t2, s3, a3
                  add          s8, t6, t1
                  andi         a2, a7, -1
                  ori          s3, t3, -1721
                  add          t5, a1, sp
                  sub          s9, t1, s3
                  srai         s8, t3, 8
                  and          a3, s5, t6
                  ori          s6, a0, 1648
                  sra          a6, s9, t6
                  and          gp, s2, t1
                  sll          s1, s10, gp
                  add          s7, t2, zero
                  sltu         s6, ra, s10
                  sub          s6, s1, s0
                  slti         s11, zero, -1517
                  or           s11, a2, t5
                  nop
                  sltu         s6, ra, t6
                  xor          ra, s6, ra
                  srai         a5, t2, 24
                  sltu         ra, s0, t3
                  slli         s3, s5, 21
                  add          s5, s10, a2
                  xor          t5, a0, t2
                  slti         t2, a2, -754
                  add          a3, gp, t1
                  srai         s2, s10, 28
                  sltiu        t5, a1, -1432
                  sltiu        t0, s8, 1000
                  ori          s3, s11, 1908
                  sra          t6, a4, s1
                  nop
                  and          s9, t1, sp
                  lui          ra, 302805
                  and          a0, a3, gp
                  ori          a3, s1, 2034
                  slt          s0, t2, s5
                  slt          s2, t6, t3
                  auipc        t3, 32465
                  srl          s3, t3, s6
                  slt          a7, a6, s7
                  sltiu        t5, t0, 1028
                  slti         ra, a0, -1557
                  srl          s7, a4, s10
                  sra          t5, a4, a0
                  or           a2, t5, a3
                  lui          tp, 534647
                  sltiu        s11, a6, 1014
                  add          s1, t2, s11
                  addi         t3, s0, -1657
                  srai         t4, a3, 27
                  sub          t4, s11, a2
                  auipc        t5, 427865
                  ori          t2, t2, -427
                  srli         ra, s5, 9
                  srli         t2, s1, 21
                  srai         ra, s5, 27
                  xori         a6, t5, 1583
                  sra          ra, a6, tp
                  sub          a7, t4, a2
                  nop
                  sltiu        zero, a0, 171
                  sltiu        s6, gp, -1765
                  xor          a2, s3, t3
                  nop
                  srai         s9, tp, 8
                  and          sp, s4, sp
                  srl          s6, s10, s1
                  srl          a2, a4, t2
                  srai         ra, s0, 17
                  slt          s4, s10, s8
                  sub          s0, a4, s8
                  xor          s1, sp, sp
                  and          t0, ra, t0
                  slli         t5, s7, 20
                  sltiu        a3, s9, -731
                  auipc        s0, 516728
                  add          s8, ra, s3
                  ori          s0, t0, 1184
                  and          s9, s2, s2
                  nop
                  slt          a2, a6, s11
                  slt          a0, s0, a3
                  slli         sp, a5, 0
                  srai         s7, s8, 4
                  or           s2, a4, gp
                  ori          sp, t5, -1141
                  sltiu        ra, a1, 1452
                  xori         a3, ra, -1962
                  slti         a5, s1, -967
                  srli         a6, t1, 20
                  srli         t5, t0, 30
                  slti         s4, a0, 446
                  sltiu        s6, t5, -55
                  slli         s3, ra, 30
                  srl          s3, ra, a2
                  srai         s6, sp, 22
                  xor          s6, a1, sp
                  or           s1, t2, s2
                  srai         a0, t2, 9
                  or           sp, ra, s2
                  sltiu        a5, t6, 267
                  xor          s0, a5, a6
                  xor          a6, a1, t2
                  srai         ra, a3, 2
                  addi         a0, t0, 1602
                  addi         t6, a2, 1666
                  nop
                  lui          s1, 287567
                  xori         a3, a5, 1509
                  sub          a3, gp, a2
                  or           a7, a3, a1
                  slti         s9, t2, -684
                  auipc        a2, 84263
                  ori          zero, a6, 977
                  xori         sp, s8, 1719
                  sub          t6, ra, sp
                  srli         t3, a5, 18
                  srli         tp, s11, 16
                  add          a3, s6, t3
                  slli         a2, s10, 22
                  addi         t0, s1, -680
                  xori         a6, a2, -1979
                  slti         s2, s5, 1110
                  sll          ra, a1, a3
                  sltiu        s11, t0, 1389
                  slli         t4, s0, 15
                  slt          tp, ra, a1
                  add          a0, s8, t4
                  slti         s2, a7, -2039
                  srl          s0, s3, t1
                  slt          t0, ra, s1
                  slli         sp, t1, 22
                  ori          s6, s6, 506
                  ori          t3, s0, -123
                  sltiu        a5, s6, 1436
                  srli         s1, s9, 1
                  or           s6, a2, s9
                  sub          s4, t4, s9
                  srli         t2, tp, 5
                  srai         a3, tp, 11
                  andi         s9, t0, -932
                  srai         tp, zero, 7
                  sra          tp, s9, t6
                  srli         s4, s5, 24
                  srai         s5, ra, 28
                  lui          a3, 645515
                  auipc        s11, 788000
                  add          s4, s7, ra
                  nop
                  srai         s4, s3, 13
                  add          s0, a0, s3
                  sltu         s7, sp, s6
                  slti         t0, gp, -735
                  nop
                  addi         ra, t5, 201
                  srl          zero, t5, a5
                  srai         s5, s9, 23
                  sltu         a6, t4, a4
                  srli         s9, t3, 5
                  srl          t2, s2, s10
                  srl          t6, s3, t2
                  srli         s10, s10, 0
                  auipc        t5, 76571
                  sltiu        s2, s4, 1347
                  slt          gp, a7, s4
                  sltiu        s10, a6, -1545
                  sra          a7, a1, zero
                  slli         t2, t6, 26
                  srai         zero, zero, 3
                  add          s7, t1, a5
                  sltu         a5, a0, zero
                  srli         s3, s9, 2
                  nop
                  slli         s4, t6, 8
                  srai         t4, ra, 17
                  ori          s8, s7, -132
                  addi         a0, gp, 1737
                  srl          t5, s5, a3
                  lui          gp, 344203
                  and          t6, a0, t0
                  andi         a3, a1, 1850
                  andi         s6, a4, 353
                  lui          a2, 1030840
                  slti         t3, s9, -987
                  ori          s7, s0, 1840
                  sub          s4, t1, a3
                  andi         a5, t4, 1534
                  xor          a6, a6, s1
                  sltiu        s10, t1, -766
                  add          t0, gp, s7
                  and          a6, tp, tp
                  srli         t4, a3, 5
                  and          t5, t6, a2
                  nop
                  sub          a2, t5, tp
                  auipc        sp, 481369
                  xori         s10, s3, -1203
                  nop
                  or           a3, s8, s2
                  srai         a3, s10, 14
                  sll          a0, s10, gp
                  xor          a3, sp, t6
                  slt          s10, s5, sp
                  sra          s6, s9, t1
                  sll          sp, ra, s11
                  sltiu        t4, sp, 69
                  ori          t0, s6, -974
                  auipc        a7, 626455
                  andi         s2, t5, -778
                  xor          a5, a4, a4
                  srli         gp, a3, 27
                  lui          s11, 699803
                  ori          t4, a3, -1552
                  srl          a2, ra, s11
                  nop
                  sltiu        t5, t3, 298
                  sra          t6, s7, t5
                  srli         t6, s1, 19
                  slli         t0, s1, 4
                  xori         zero, a3, -1795
                  xor          a2, s11, tp
                  andi         t2, a5, 257
                  ori          sp, t6, -830
                  ori          t4, s9, -379
                  srli         a0, t2, 7
                  nop
                  sub          a5, a0, s8
                  sltu         zero, a1, a1
                  auipc        s9, 347756
                  lui          t3, 464038
                  or           s7, t0, t3
                  srai         a0, s10, 22
                  sll          s3, s2, t0
                  slti         a5, t0, 1453
                  srl          a7, t0, s8
                  slli         s9, s8, 18
                  slli         a2, a6, 19
                  andi         t3, t4, 784
                  ori          zero, t1, -152
                  lui          s7, 655881
                  srli         t2, a3, 17
                  ori          sp, a5, -63
                  sltiu        t0, t5, -1007
                  ori          s2, a0, -1235
                  slti         a5, t0, -1616
                  slli         a5, s8, 2
                  xori         t0, s8, 1387
                  auipc        zero, 687423
                  slli         sp, a4, 10
                  nop
                  ori          s10, s3, 1644
                  nop
                  andi         s10, a3, -1866
                  auipc        s10, 508539
                  and          tp, a3, gp
                  sub          t0, s4, a5
                  auipc        a2, 297652
                  slti         s9, sp, 522
                  sltiu        tp, s2, -1155
                  addi         s1, sp, -1128
                  and          s1, a3, t0
                  slt          t3, a7, a2
                  sltu         s5, t0, sp
                  sra          a6, tp, tp
                  ori          tp, gp, -1189
                  auipc        t5, 779421
                  sra          a6, s0, tp
                  add          sp, a0, a0
                  and          a6, s8, s10
                  srl          s5, t2, a3
                  slli         tp, s3, 1
                  xori         ra, a7, -1193
                  slli         s11, a1, 27
                  xor          t6, s2, gp
                  xori         tp, s8, -783
                  add          t5, zero, ra
                  sll          s8, t4, t5
                  xori         zero, t2, 1798
                  slt          a6, a5, t3
                  andi         gp, s2, -819
                  srai         ra, s3, 24
                  srai         s0, sp, 16
                  add          sp, a6, a1
                  sll          s1, s4, a1
                  sub          zero, a3, s5
                  slt          s0, s10, a4
                  xori         t0, a1, -740
                  sub          gp, t0, tp
                  ori          gp, a3, 1772
                  ori          s6, tp, 641
                  sra          gp, a5, t0
                  srli         ra, a0, 22
                  addi         t6, a3, -1440
                  slti         s7, t5, 880
                  srli         s0, t2, 9
                  lui          a0, 819224
                  sra          s10, a5, a7
                  sltu         t2, s4, a6
                  srai         t4, a3, 13
                  xor          a5, a4, t4
                  xor          s1, s5, s2
                  auipc        t3, 174748
                  ori          s11, s7, -1538
                  lui          s6, 600625
                  sltu         s0, a2, t6
                  sll          a7, a0, s2
                  sra          a0, t6, s2
                  nop
                  srl          a0, a0, s2
                  xori         t0, gp, -502
                  sub          sp, t2, sp
                  srai         s2, t4, 30
                  addi         a6, t2, 1331
                  slti         a5, a5, -1507
                  srl          t0, zero, ra
                  nop
                  sltu         a3, s5, s9
                  addi         s4, s7, -1119
                  lui          s11, 1010447
                  sra          s0, t5, t1
                  ori          a6, s3, -224
                  srli         s9, s2, 14
                  auipc        tp, 1015453
                  addi         t6, t6, -254
                  addi         s4, a6, -436
                  slt          s8, s11, a7
                  sltu         t5, a6, s0
                  sltu         s3, s6, a1
                  sub          a2, t0, a4
                  ori          s5, s0, 1996
                  slti         a7, t3, -124
                  lui          t5, 816257
                  andi         a0, a4, 1946
                  sll          s5, a3, s6
                  slli         s9, t2, 13
                  andi         a0, gp, -1545
                  lui          s10, 126438
                  andi         s7, s9, -311
                  srl          sp, t6, a2
                  or           s7, tp, a5
                  sltu         t3, s10, s9
                  srli         s4, a3, 17
                  andi         a7, zero, -1372
                  and          s7, t1, zero
                  slli         s7, t1, 13
                  and          t3, ra, s5
                  add          s3, a7, s0
                  sltu         t6, a6, s2
                  sltiu        a6, a1, -610
                  sltiu        s10, s8, 1614
                  slti         t5, tp, 380
                  slli         zero, a0, 13
                  and          s10, t6, zero
                  andi         a5, t1, -537
                  addi         t3, t0, 1374
                  sltu         a5, t4, zero
                  xor          s7, a2, t0
                  sltiu        s3, t3, 961
                  sltiu        s6, s1, -259
                  xor          zero, s8, s8
                  addi         s7, s7, -1748
                  add          t2, sp, zero
                  srl          a6, s0, s6
                  lui          s2, 167760
                  nop
                  sra          t2, s3, t4
                  slti         s8, s8, 1891
                  srai         s3, s1, 17
                  andi         s2, t6, -124
                  slt          a3, a2, t5
                  slt          s4, t2, s7
                  srl          s8, a3, a7
                  srai         zero, t4, 29
                  srai         s10, a1, 27
                  slti         s5, s0, 1747
                  slli         s1, a7, 23
                  slti         s9, a3, 1693
                  lui          t2, 82202
                  slt          s2, t1, s9
                  srli         s5, s9, 13
                  xori         t0, s7, 1853
                  slti         s3, s0, -1809
                  auipc        t3, 565662
                  srli         s5, s8, 31
                  xori         gp, gp, 5
                  srl          a5, t0, a7
                  slli         s8, t0, 12
                  slti         t3, a3, -467
                  add          t4, a6, t6
                  andi         a3, t0, 1905
                  slli         gp, s5, 16
                  and          t3, zero, t4
                  slt          s10, s1, gp
                  sll          s3, t2, s5
                  xori         a2, t0, 1581
                  srli         a7, t3, 19
                  or           s1, zero, s4
                  srai         t2, a7, 17
                  sra          gp, t4, gp
                  lui          s6, 313344
                  add          s7, t5, s4
                  ori          a0, tp, -1204
                  sltu         zero, t2, s9
                  sltiu        a6, a4, -1599
                  xor          a0, t1, t0
                  xor          s7, a7, ra
                  sub          s7, s9, a2
                  auipc        t4, 586171
                  xori         a7, t6, 738
                  xor          t4, s2, s7
                  srai         gp, s0, 3
                  xori         tp, a1, 118
                  srli         s11, ra, 7
                  nop
                  addi         t4, a3, 954
                  sltu         s8, t6, s2
                  sltu         gp, sp, t5
                  andi         s1, s10, -772
                  srai         t4, t4, 9
                  and          s0, zero, s5
                  ori          t0, s10, 1539
                  sltu         t4, s0, t5
                  slli         s7, s7, 10
                  slli         t3, t5, 0
                  add          s0, s0, a5
                  or           s5, s11, a0
                  sub          gp, t1, t5
                  slt          t5, s1, s7
                  xor          t5, a1, sp
                  andi         s1, a6, 1612
                  xori         a7, s11, 1038
                  sra          s2, s2, tp
                  sra          ra, t1, t0
                  ori          s7, s9, -1168
                  sub          s8, s5, s10
                  or           s0, a4, t6
                  srl          a3, t0, zero
                  srli         s1, t1, 14
                  sub          s2, s7, a2
                  sltiu        s10, s1, -4
                  or           a6, a3, a0
                  addi         s11, s4, 870
                  sra          t3, t4, s5
                  andi         s4, sp, -1598
                  slt          t3, a6, s7
                  xori         zero, tp, 582
                  xor          a0, s11, a5
                  slli         s4, t5, 29
                  and          s10, a6, zero
                  nop
                  xor          tp, s3, s1
                  sll          s2, s5, a1
                  nop
                  srli         sp, t5, 1
                  lui          s7, 312576
                  sub          s10, a5, t1
                  sltiu        s10, a1, -901
                  xor          s1, s11, zero
                  srl          s0, a1, s8
                  sra          t0, s4, t5
                  sub          sp, a3, a5
                  sltiu        t2, t3, 1948
                  andi         a2, s0, 1150
                  sltu         s8, s3, t3
                  auipc        a5, 935612
                  nop
                  and          s3, tp, s6
                  xor          t4, a2, t1
                  andi         s5, t5, -15
                  sra          t2, a4, a3
                  slt          t4, t4, a7
                  or           a2, sp, s0
                  sll          s5, t1, a2
                  srai         s10, a6, 19
                  srl          ra, s4, a6
                  slti         a7, t1, 1492
                  slli         t2, t5, 29
                  slli         t0, gp, 1
                  xori         t3, sp, -25
                  or           s5, s11, a2
                  xori         s10, a4, 928
                  sll          s2, tp, ra
                  srl          tp, a4, s9
                  slti         t4, s11, -1817
                  nop
                  add          t5, t4, s9
                  auipc        a2, 284813
                  ori          s8, a5, -781
                  xori         s7, t3, 1106
                  sra          a6, s11, s10
                  slti         s9, s5, 310
                  or           zero, a7, t5
                  auipc        s11, 636912
                  nop
                  slli         zero, a3, 0
                  slt          s4, tp, s8
                  add          s4, sp, a1
                  slt          zero, a4, s11
                  sub          a0, s10, s11
                  srai         zero, s1, 29
                  sltiu        s4, s10, 829
                  srli         t6, s2, 18
                  lui          a6, 971811
                  srl          s10, sp, a2
                  sub          t6, a2, a6
                  sltu         a7, t5, a7
                  add          s1, s5, a5
                  andi         s8, s9, -122
                  ori          s2, ra, -344
                  addi         ra, a4, -1569
                  xori         s11, a7, 183
                  srai         s11, tp, 31
                  xor          a7, s2, a3
                  sltiu        s5, ra, 1573
                  slli         s4, a0, 28
                  sra          s4, a0, s8
                  ori          s8, t6, -1876
                  srl          tp, t0, t6
                  andi         tp, t5, -1079
                  ori          t5, s8, -1804
                  lui          zero, 849768
                  xor          ra, s8, s2
                  ori          s2, a7, -2
                  sll          t0, a2, t5
                  slti         gp, s1, -367
                  addi         a7, s6, 27
                  ori          t0, s1, 63
                  sltiu        s7, sp, 214
                  srli         sp, t6, 3
                  or           a7, a6, s11
                  sltiu        gp, t6, 2028
                  srai         a3, a7, 1
                  and          s9, s11, s8
                  ori          s9, s9, -9
                  slt          a6, a4, ra
                  slti         t2, s10, -1725
                  slt          t3, zero, t1
                  ori          gp, t4, -1186
                  xor          s4, s2, a2
                  ori          gp, t5, -1331
                  srl          ra, tp, t4
                  srli         ra, a6, 21
                  sltu         a6, s1, a1
                  or           t4, a0, s7
                  slli         s1, t0, 1
                  srai         sp, a4, 8
                  sll          s7, t1, s9
                  srai         s2, t3, 5
                  ori          s7, a3, 1274
                  slti         t3, t5, -663
                  slti         t0, a2, -1283
                  sll          a7, a4, t3
                  xori         s11, t4, 987
                  slli         s8, s11, 12
                  addi         a7, t1, 447
                  lui          s11, 963150
                  sll          tp, s11, s7
                  sltiu        t3, s11, -536
                  xori         s8, sp, -1445
                  xori         s0, s3, 1425
                  srai         s0, a1, 2
                  sra          s3, s8, t0
                  xori         gp, a6, -481
                  sra          s1, a7, t0
                  slli         ra, s5, 24
                  lui          gp, 150950
                  xori         a0, a3, 1999
                  lui          s0, 817424
                  sll          s8, s4, gp
                  xori         s6, t3, 279
                  sll          s9, a0, a2
                  slli         s10, t6, 26
                  sltiu        s7, s7, 1113
                  sltu         a7, s1, s8
                  or           t0, t3, t3
                  slli         t6, tp, 30
                  srli         t2, a2, 21
                  srli         a0, ra, 22
                  slli         a0, t5, 11
                  slti         zero, t2, -1981
                  xori         a5, a0, -1388
                  nop
                  xori         zero, zero, 1214
                  srai         s3, a1, 14
                  xor          zero, t5, a7
                  slti         sp, a4, -110
                  addi         s7, t4, -482
                  and          a0, t3, t5
                  sub          ra, ra, a5
                  add          a2, a4, s9
                  auipc        s0, 118407
                  srai         s1, s8, 21
                  addi         s5, s4, 1239
                  sra          gp, s11, a0
                  slt          s1, s2, t2
                  andi         a3, a6, -1954
                  xor          s11, s4, s10
                  srli         t3, s5, 31
                  add          s1, t2, tp
                  xor          s5, s9, t1
                  lui          s1, 770767
                  lui          t4, 469173
                  lui          gp, 317874
                  sub          s3, zero, s2
                  sra          s9, s5, t4
                  nop
                  sltiu        s3, s0, 868
                  and          a7, s1, gp
                  auipc        t2, 832584
                  xori         s9, s8, 1662
                  slti         a6, a4, 1289
                  sltu         t0, a3, t2
                  slli         s4, s10, 18
                  add          ra, s0, a6
                  srli         t3, t5, 29
                  srl          t0, sp, s9
                  sltu         t3, s8, s6
                  slt          t4, s6, s1
                  sll          sp, a5, a3
                  srli         gp, tp, 26
                  and          t0, a0, t4
                  ori          s7, s9, -388
                  and          t0, a4, ra
                  sll          t5, s2, s5
                  lui          tp, 872819
                  srli         t5, s3, 18
                  sltu         a5, tp, t3
                  ori          sp, a0, -903
                  xori         s8, s10, 1785
                  add          s2, s0, t2
                  slti         a2, s5, -1551
                  andi         s8, s4, 1944
                  ori          zero, a0, -1388
                  slt          s10, s0, a4
                  slli         s8, s0, 20
                  sltiu        t6, a3, 477
                  or           t5, s10, a3
                  slli         gp, s4, 30
                  sub          s2, ra, t5
                  sub          t5, a6, s6
                  xori         zero, t1, -384
                  slt          a0, sp, a4
                  sra          a5, a0, s10
                  or           a0, t1, t1
                  srli         a2, t5, 24
                  sll          s1, s4, tp
                  srli         tp, s4, 22
                  sltu         t3, a2, s7
                  and          t6, t2, s3
                  slli         t6, t3, 1
                  slti         a5, s8, -341
                  sltiu        s7, s1, -25
                  or           s2, s9, a6
                  sub          t4, a4, a4
                  ori          a6, sp, -1588
                  sll          a0, t0, t6
                  nop
                  nop
                  srl          t2, t4, s10
                  slti         t5, t3, 825
                  lui          t5, 93326
                  srai         t6, tp, 17
                  and          s0, t2, s0
                  srai         a3, s8, 26
                  andi         tp, a0, -565
                  srai         s2, s0, 28
                  sub          s7, s1, a1
                  addi         t3, t5, 1116
                  add          a3, a0, s10
                  and          t6, a7, t6
                  and          a7, s10, a0
                  slt          s0, s10, a5
                  and          t3, s2, s0
                  sra          s9, zero, t1
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x80000000
                  li           s0, 0x80000000
                  li           a5, 0x0
                  li           s7, 0xffffffff
                  li           s5, 0x80000000
                  li           t2, 0x0
                  li           a6, 0xffffffff
                  li           t0, 0x0
                  li           s8, 0x614d29aa
                  nop
                  add          s5, a7, s0
                  lui          s8, 293967
                  sub          s8, s5, t2
                  sub          t2, a7, s5
                  add          a6, a5, s5
                  add          t0, t2, s7
                  auipc        s5, 387089
                  add          s8, s0, s7
                  sub          a6, s5, s7
                  add          a6, t2, t2
                  addi         a6, t2, -578
                  sub          t2, s10, s10
                  auipc        s8, 111773
                  lui          a7, 653540 #end riscv_int_numeric_corner_stream_15
                  and          t6, s2, t0
                  srl          s7, a7, s2
                  srai         s8, s10, 22
                  sltu         s3, s2, t3
                  sll          s7, s0, s10
                  addi         a0, s8, -1409
                  and          t3, sp, sp
                  slti         gp, s5, -1354
                  xor          s10, a3, a1
                  srl          s11, s9, s5
                  and          s10, t2, s3
                  slti         a2, s3, -1447
                  srai         gp, a7, 16
                  xor          a5, s0, a5
                  sra          a7, a4, a2
                  sltu         t5, s8, s7
                  or           a5, t5, a4
                  ori          s11, a5, -2013
                  lui          a5, 365141
                  sra          s5, s10, t5
                  xor          t4, tp, a4
                  slti         gp, t3, -535
                  or           s1, a7, zero
                  and          s7, a7, s6
                  auipc        sp, 662855
                  addi         tp, s0, -1479
                  xori         t5, t3, -413
                  sltiu        s4, t0, 1396
                  addi         s6, zero, -1386
                  add          a2, t1, a4
                  sltiu        a0, a7, -1779
                  and          s0, a0, a3
                  and          s7, a1, s4
                  sub          t2, s5, zero
                  lui          a0, 739650
                  xor          tp, t0, a6
                  xori         a0, s9, 910
                  addi         gp, tp, -1184
                  auipc        s3, 1027966
                  ori          s9, a5, -619
                  lui          t3, 492474
                  sltiu        s2, t2, 1478
                  sll          s9, s7, s7
                  sltiu        t0, a6, -1676
                  li           a2, 0xe4bcd391 #start riscv_int_numeric_corner_stream_6
                  li           a0, 0xffffffff
                  li           t2, 0x3f3ff70
                  li           s9, 0xffffffff
                  li           a3, 0xffffffff
                  li           t5, 0xffffffff
                  li           sp, 0xffffffff
                  li           s0, 0xffffffff
                  li           tp, 0xffffffff
                  li           s5, 0xffffffff
                  add          a0, sp, a0
                  sub          t2, s5, t5
                  lui          t2, 410361
                  auipc        t2, 596500
                  sub          tp, a2, tp
                  sub          a0, t5, s9
                  auipc        a0, 1035379
                  add          a3, s0, a2
                  addi         s0, t2, 1853
                  addi         t5, s5, 453
                  auipc        t5, 35901
                  auipc        sp, 223755
                  add          t2, s9, tp
                  auipc        a2, 279364
                  add          a3, t2, s0 #end riscv_int_numeric_corner_stream_6
                  andi         t0, s10, -691
                  or           a6, s4, s8
                  slti         t5, sp, -1214
                  add          s1, s8, ra
                  ori          sp, s9, -151
                  ori          t6, s7, 341
                  or           s3, s4, t0
                  auipc        s7, 927558
                  slli         zero, t3, 24
                  sub          gp, t5, t4
                  xori         sp, s11, -346
                  srl          s5, t5, t4
                  slli         a7, a5, 10
                  xori         s10, sp, 643
                  sll          s1, t2, t2
                  or           t2, s9, a2
                  srai         t0, s10, 9
                  sub          t2, t3, t2
                  sltiu        s6, t3, -466
                  srai         gp, s7, 24
                  sltiu        s5, t5, 251
                  xori         a0, s8, -1735
                  nop
                  sub          s3, zero, t3
                  slli         s3, s10, 11
                  sltu         t3, t0, t0
                  or           t3, s4, t2
                  slli         s4, t0, 24
                  sltu         sp, s5, t4
                  slti         t6, s1, -1191
                  sltiu        t3, t2, 1682
                  and          s0, s0, a3
                  xori         s0, a6, 895
                  xor          t4, a4, s7
                  add          s9, a4, t1
                  srai         s9, s0, 22
                  slti         t3, t1, -41
                  srai         s9, s4, 2
                  sltu         s6, sp, gp
                  addi         t3, ra, 1589
                  slli         a3, s8, 5
                  slt          zero, s8, a6
                  slti         a0, s10, 1531
                  addi         a2, s7, -598
                  nop
                  srli         a2, s0, 15
                  lui          s4, 145197
                  add          s9, s2, s7
                  auipc        s11, 467372
                  sra          s4, t2, s8
                  slli         a2, ra, 6
                  srl          a0, s4, t0
                  add          s2, a5, s3
                  srli         s6, tp, 12
                  sll          zero, s2, gp
                  addi         s6, s3, -1217
                  lui          a2, 50473
                  slti         ra, s9, -1873
                  ori          t3, t2, -1337
                  auipc        t3, 717310
                  slt          t2, ra, t6
                  slt          s1, s9, t1
                  sll          t3, sp, a3
                  or           a0, a3, t3
                  addi         s7, a6, 1720
                  and          t6, a4, s1
                  andi         t4, t1, -749
                  addi         t5, t2, 1572
                  xori         t0, a4, 232
                  andi         a2, s2, -879
                  sra          zero, a5, gp
                  srai         tp, s1, 7
                  sltiu        a7, zero, -544
                  srai         t6, s11, 1
                  or           s6, s7, a1
                  addi         t0, ra, 892
                  auipc        s3, 255339
                  slli         s1, s3, 0
                  srli         s10, a0, 8
                  sltiu        s6, s8, 1045
                  andi         zero, s2, -430
                  sltu         a5, tp, s7
                  slt          t6, s7, s0
                  addi         s3, sp, 723
                  slt          a3, a3, a4
                  add          t5, t6, s9
                  andi         tp, t3, 1673
                  sra          s8, a1, s5
                  auipc        t0, 47205
                  or           t6, s9, s9
                  addi         s7, a5, -2046
                  lui          s4, 113785
                  sub          t0, tp, s8
                  slli         gp, s0, 9
                  sra          t0, a5, s8
                  sub          t6, s3, a1
                  srl          s10, a3, a4
                  andi         s8, a5, -1865
                  slti         s9, a2, 947
                  xor          s2, s1, tp
                  nop
                  xor          a0, a5, s5
                  nop
                  ori          s8, a6, 579
                  xori         s1, t6, 1724
                  sra          t0, t4, t3
                  lui          tp, 601386
                  sll          a7, a4, a7
                  add          t6, a2, t5
                  xor          a0, t4, s3
                  sltu         a2, s6, s8
                  sll          t4, s11, t2
                  srai         s0, t1, 12
                  slti         t2, a5, 1628
                  slli         tp, a4, 7
                  sll          s6, a6, s3
                  auipc        s9, 995731
                  nop
                  slt          s8, t1, s4
                  xor          a5, a5, s9
                  sub          s10, s10, t3
                  and          s8, a0, ra
                  sltiu        s3, s7, -1571
                  slt          a5, s11, zero
                  sub          s11, s7, s6
                  xori         s5, sp, -933
                  xori         s3, t6, -1629
                  or           a0, s4, a0
                  sltu         tp, a2, a7
                  andi         zero, s1, 599
                  or           s0, s10, sp
                  sub          s5, s11, t6
                  and          sp, s5, ra
                  slti         a5, t0, -1825
                  xor          s4, s8, a0
                  nop
                  slti         t0, t5, 2030
                  lui          s0, 375366
                  or           gp, a3, t6
                  sltu         s1, s5, zero
                  srai         s7, s3, 28
                  lui          a7, 817457
                  sltiu        a3, s11, 674
                  sll          t5, t3, a5
                  srl          t0, a5, a0
                  slli         ra, t4, 4
                  srli         t3, tp, 18
                  nop
                  sra          s9, s8, s6
                  lui          a3, 698335
                  nop
                  sll          a7, a7, s5
                  srli         s3, a7, 9
                  lui          ra, 660168
                  xor          t2, s9, ra
                  or           s4, s6, s0
                  sub          s9, s0, s10
                  xori         t0, s7, -499
                  add          t2, ra, a3
                  xori         s4, s6, 1213
                  ori          s7, a3, 1030
                  xor          s7, a1, t5
                  add          t3, sp, a0
                  addi         s11, t2, -1979
                  sltu         s4, a2, s0
                  ori          s2, t1, -1821
                  andi         a7, t3, -728
                  auipc        ra, 1018483
                  xor          gp, s11, s9
                  addi         s11, a7, 1369
                  sub          s11, t2, s2
                  xor          s11, a4, a7
                  lui          ra, 556922
                  or           s5, s5, t2
                  ori          ra, t1, -1603
                  auipc        a2, 213881
                  srl          a7, sp, t5
                  lui          tp, 31078
                  and          s3, t6, a4
                  sltu         s8, sp, a1
                  sll          s11, a2, s11
                  and          a5, t4, a6
                  srai         t0, a7, 6
                  sra          a2, s8, s8
                  sub          t6, s5, a2
                  slli         s6, a5, 19
                  slli         sp, a2, 23
                  add          s6, s2, t4
                  srli         t2, a2, 23
                  sltu         s10, a0, a4
                  srli         s8, a4, 22
                  xori         t2, a7, 1806
                  srli         a2, a5, 18
                  slti         s11, t2, 1141
                  xori         a3, s8, -1975
                  srai         t6, a6, 16
                  sra          ra, s3, t5
                  nop
                  xor          s6, t3, a4
                  auipc        a0, 235864
                  sub          s11, ra, t3
                  add          s7, s3, s6
                  and          s4, a5, s0
                  xori         s1, a0, -1423
                  slli         tp, s9, 23
                  auipc        t5, 802844
                  slli         s0, s10, 1
                  auipc        a6, 412478
                  and          s1, s5, sp
                  srai         s5, s10, 20
                  nop
                  auipc        a0, 464289
                  sra          s6, a5, t5
                  slti         t6, s5, -1510
                  sltiu        t2, s2, 719
                  and          a2, a6, s2
                  xor          t3, ra, s8
                  sltiu        s0, a1, -1653
                  nop
                  slti         a2, a5, 1389
                  srli         s6, s6, 11
                  slti         a0, s9, 1869
                  addi         zero, t6, 1877
                  slli         s3, s7, 15
                  sll          a7, a6, a6
                  ori          t5, s11, -1259
                  sra          tp, a3, s7
                  sltu         sp, t4, t1
                  xor          t2, gp, a6
                  xor          t6, t6, t3
                  slli         t5, s5, 30
                  add          zero, tp, s9
                  sltu         s2, t4, t3
                  or           s0, s5, s11
                  sub          s0, s2, s10
                  sltu         s5, s1, a6
                  or           t6, tp, s8
                  lui          a6, 391639
                  lui          s4, 968363
                  sltiu        s7, t0, -40
                  xori         zero, a7, 1211
                  sltiu        s9, t6, 1891
                  sll          s11, a2, t3
                  add          s2, s9, gp
                  and          a3, t6, s3
                  xori         s5, a1, -1419
                  auipc        s5, 260734
                  sltu         ra, t4, a3
                  slli         sp, s1, 24
                  sll          s5, t4, s2
                  srl          a6, t0, gp
                  slti         a7, t2, -237
                  slt          sp, t2, s5
                  srli         t6, a2, 20
                  or           a6, t4, t3
                  auipc        a6, 276957
                  auipc        a3, 658241
                  nop
                  and          tp, s7, t5
                  sltu         s7, tp, a4
                  nop
                  srli         ra, s11, 21
                  sra          s9, t0, a1
                  sll          s2, s7, t5
                  srli         a0, t3, 19
                  andi         gp, t5, 1122
                  auipc        ra, 290754
                  addi         s9, sp, -1041
                  slt          t5, a2, s5
                  sltiu        gp, t3, 230
                  andi         s1, s11, 719
                  slli         t4, t6, 20
                  sra          sp, sp, a5
                  sll          ra, t6, a5
                  sltiu        sp, a7, -329
                  and          t3, s4, tp
                  or           t2, sp, a2
                  srl          t0, t5, ra
                  auipc        t4, 730439
                  auipc        s2, 42638
                  srl          sp, s5, t0
                  sra          t5, a5, a1
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s1, 0x0
                  li           a5, 0x80000000
                  li           s11, 0x0
                  li           a3, 0x0
                  li           s9, 0x80000000
                  li           a2, 0x0
                  li           t0, 0x85bd0ac2
                  li           s0, 0x80000000
                  li           a7, 0x0
                  auipc        s11, 207341
                  add          s1, a3, tp
                  add          a7, s0, s0
                  add          s1, s0, tp
                  auipc        a3, 835943
                  auipc        a5, 456204
                  lui          s1, 183277
                  sub          s0, t0, tp
                  addi         s1, a5, -1730
                  sub          t0, s11, tp
                  add          s11, a7, a3
                  lui          s9, 70024
                  sub          a7, tp, s0
                  lui          a5, 873949
                  addi         s0, a3, 573 #end riscv_int_numeric_corner_stream_8
                  sra          zero, a0, s7
                  auipc        s10, 423592
                  slli         t4, a4, 14
                  sra          ra, t2, s0
                  sra          a2, s3, t3
                  slt          s7, a4, a7
                  slti         t6, t5, 1571
                  sll          s0, a4, s9
                  lui          sp, 785207
                  slti         gp, ra, 611
                  ori          t5, t0, 1788
                  sub          s9, s7, a7
                  lui          s2, 193195
                  srai         zero, t1, 10
                  xori         t5, s0, 1909
                  sll          t3, sp, s6
                  lui          s9, 884281
                  slt          ra, t3, t4
                  and          a5, a5, s3
                  sltu         s7, zero, s5
                  srai         t2, sp, 12
                  xor          s7, s10, t3
                  xor          s11, t1, gp
                  sltu         s6, a5, t6
                  sltiu        sp, s11, 1311
                  nop
                  sll          s5, t2, s9
                  xori         a5, a7, -2017
                  sltu         tp, a7, zero
                  slli         a5, a2, 28
                  sub          s0, a6, a0
                  andi         s0, s4, -366
                  srai         a3, a6, 16
                  sra          gp, s2, s5
                  sra          s1, a6, a1
                  sra          t0, s1, s8
                  srl          a2, s10, t1
                  xori         a0, a0, 126
                  and          ra, s1, t5
                  or           a7, s8, t5
                  slti         a5, t2, 1718
                  sll          s2, tp, a4
                  addi         s3, t6, 641
                  srai         t5, s10, 15
                  srli         s11, a5, 15
                  or           ra, s5, sp
                  sra          t6, t3, a5
                  nop
                  slti         s8, t6, 96
                  sub          t3, t1, s3
                  nop
                  srai         s7, zero, 7
                  auipc        t6, 655980
                  sll          s1, s5, t5
                  srai         s0, a0, 26
                  sll          s8, a1, a3
                  ori          t5, t6, -1485
                  nop
                  auipc        zero, 491304
                  sltiu        t2, a2, 66
                  srli         t5, a0, 27
                  srai         t2, s11, 15
                  xor          s6, t1, s2
                  srli         a3, t6, 31
                  xori         s1, a7, -1513
                  lui          s3, 423277
                  lui          tp, 353887
                  slli         sp, s10, 20
                  sub          t4, t6, s10
                  sltiu        sp, s5, -262
                  srli         s9, s4, 2
                  or           gp, a0, s5
                  or           gp, s0, s7
                  or           s2, s11, s9
                  srai         t5, t0, 27
                  addi         sp, s6, -1011
                  auipc        s8, 428391
                  xor          a2, zero, a3
                  srl          t3, s7, s10
                  nop
                  lui          s7, 430410
                  andi         s8, s5, 1278
                  addi         s3, s2, -945
                  ori          s1, sp, 496
                  auipc        s1, 777035
                  sra          zero, sp, s7
                  andi         s5, s2, 440
                  add          t6, s10, a3
                  srai         a5, a2, 6
                  sltu         s11, s2, s9
                  andi         sp, t4, -812
                  or           t6, a2, a4
                  sub          tp, a0, a5
                  sll          t4, ra, a6
                  slti         a7, gp, -1388
                  srli         s6, a0, 8
                  add          s6, t0, s9
                  srai         s11, s2, 18
                  xori         s8, gp, -737
                  slt          a7, t3, a2
                  xori         t0, s4, 1780
                  sra          s8, sp, a2
                  sll          s7, t6, s6
                  sra          a2, s6, a5
                  sltu         ra, a7, gp
                  sub          a2, s4, t5
                  slli         t0, t5, 21
                  xori         t6, a2, 1221
                  xor          t3, zero, t2
                  srl          tp, a2, a3
                  sub          s1, s11, s10
                  srai         s8, s1, 16
                  auipc        a7, 326800
                  srli         a3, t2, 13
                  sra          a0, t2, tp
                  xori         a7, s2, 480
                  or           t6, t2, ra
                  sll          a6, zero, a5
                  slti         a0, a1, 1168
                  lui          s6, 248354
                  slti         a2, a0, 201
                  xori         a0, s11, 78
                  xor          t4, a0, a0
                  lui          a5, 266406
                  auipc        t3, 77094
                  sltu         a3, s8, a6
                  sub          a6, a0, s11
                  srli         a7, t5, 1
                  nop
                  sra          t3, s6, s7
                  and          s3, t6, a6
                  or           a2, a2, s7
                  and          sp, s2, s10
                  srl          ra, s9, s8
                  srai         sp, s6, 29
                  srli         sp, s8, 29
                  sltu         s10, a0, sp
                  srli         t3, t4, 31
                  sltiu        t5, t6, -1659
                  sltu         zero, s2, s11
                  sltiu        t3, s4, -1126
                  slti         a3, s7, -1146
                  and          s11, t1, t0
                  slt          a5, s1, s4
                  auipc        gp, 558944
                  nop
                  sub          zero, t6, zero
                  sll          a7, s9, a3
                  slli         s11, a5, 24
                  or           s4, s3, sp
                  ori          a3, s7, -1467
                  slt          t2, t3, t0
                  slli         s7, a7, 2
                  addi         s5, s3, -2019
                  and          zero, sp, a1
                  srai         s11, s1, 15
                  auipc        a7, 465286
                  srli         s1, a6, 30
                  sltu         t0, a4, s6
                  andi         gp, s5, 270
                  sltiu        a7, a7, 1607
                  auipc        s11, 976172
                  nop
                  andi         t3, s2, -1653
                  srai         s4, s3, 28
                  srl          s0, sp, s5
                  sra          s2, s7, a0
                  or           t2, gp, a2
                  sltu         s8, t4, ra
                  addi         t2, t3, 852
                  slli         s4, ra, 30
                  sll          ra, a2, a1
                  sll          gp, s5, t0
                  sll          s0, s5, s10
                  ori          s8, s3, 99
                  auipc        s11, 340512
                  or           s2, s0, a4
                  addi         s5, s0, 1878
                  srli         ra, s9, 15
                  slli         s9, t3, 14
                  nop
                  sub          zero, zero, t4
                  slti         a5, t1, -1142
                  xori         zero, sp, -1898
                  xor          s5, ra, s4
                  or           tp, t2, tp
                  and          s8, t1, t6
                  auipc        s0, 297598
                  srli         t5, a1, 27
                  slti         a0, s4, 108
                  lui          gp, 150236
                  sltiu        a3, a4, -310
                  auipc        t0, 1005706
                  sll          s0, s9, t2
                  lui          s3, 651992
                  sltiu        s8, a2, -1726
                  ori          s6, s6, -1095
                  xor          s1, s5, t0
                  and          t4, s8, s10
                  auipc        s7, 158534
                  srai         s9, s0, 23
                  xori         tp, sp, -1176
                  xori         t5, a3, -688
                  andi         gp, t3, 1474
                  slt          tp, s4, a7
                  srli         s1, s9, 4
                  sub          s6, a0, a0
                  sltu         t3, tp, t6
                  srli         s11, a1, 18
                  or           s9, t0, a1
                  xor          s3, zero, sp
                  lui          a5, 255037
                  sltiu        a6, sp, 1757
                  sltiu        sp, a4, -341
                  slli         a3, a3, 17
                  srli         a0, s1, 8
                  ori          ra, a0, -1562
                  lui          s1, 532794
                  slti         s9, t3, 536
                  andi         zero, s8, -612
                  lui          a3, 193019
                  srl          gp, a5, s0
                  ori          t5, sp, -560
                  addi         sp, t4, 1016
                  sltu         s5, tp, s0
                  lui          a2, 955637
                  xori         t0, a7, 259
                  slli         s7, zero, 25
                  addi         sp, s5, 1015
                  srli         s3, a0, 15
                  slli         t3, s4, 16
                  srai         a6, s1, 20
                  xor          s3, s9, sp
                  and          a5, s5, s5
                  sra          t5, s3, s9
                  nop
                  ori          s5, s0, 1899
                  sltu         s5, s0, s5
                  xori         t4, s6, -49
                  addi         s7, a3, 1829
                  lui          s3, 398416
                  or           t5, s8, s2
                  sub          a5, t3, gp
                  srli         t2, s10, 9
                  addi         a2, s8, -921
                  sltiu        s0, s11, 628
                  andi         s7, a5, 383
                  nop
                  or           t4, ra, sp
                  andi         t0, t6, 1509
                  sltu         s4, t6, a4
                  add          s8, t0, t2
                  sra          a5, t5, sp
                  or           t5, t1, t5
                  and          s7, s3, t2
                  xor          s7, a4, s6
                  slt          s5, t5, s6
                  sll          zero, sp, t1
                  andi         tp, a5, -2031
                  sltiu        t4, gp, -1704
                  xor          a0, t5, s1
                  slt          t6, s6, s1
                  sltu         s7, t0, t1
                  xor          gp, s2, t2
                  slti         sp, tp, 2
                  srli         s0, s7, 11
                  ori          ra, s0, 1701
                  nop
                  srai         a2, s1, 9
                  ori          s7, t0, -1755
                  srli         t3, s3, 27
                  srai         s1, a2, 11
                  ori          zero, s8, -436
                  addi         t3, sp, -1261
                  srli         t6, zero, 30
                  sll          t3, s10, s3
                  and          s2, a2, s4
                  andi         s5, t2, 818
                  nop
                  srai         s3, s7, 15
                  auipc        s9, 699869
                  srli         s9, sp, 18
                  andi         s6, s1, 936
                  lui          t0, 894064
                  and          sp, t4, s1
                  and          a5, tp, s5
                  sll          gp, t6, s11
                  slti         s9, a0, -752
                  srl          sp, s8, a1
                  srl          gp, s3, t4
                  nop
                  lui          s2, 945775
                  xor          s1, a1, t6
                  slli         s6, s6, 21
                  nop
                  nop
                  nop
                  xor          s9, s3, t6
                  or           tp, s1, a7
                  srl          a5, a6, a6
                  add          t6, zero, a3
                  auipc        gp, 340854
                  lui          t2, 332282
                  slt          zero, s10, s5
                  lui          sp, 988603
                  add          a7, s9, s5
                  sra          t4, s10, s8
                  nop
                  lui          s3, 12059
                  sll          a7, s0, s5
                  add          s1, t2, s2
                  slt          t0, s4, gp
                  srai         s5, zero, 8
                  slt          s6, t0, s7
                  srl          a6, sp, gp
                  xor          s1, s1, t1
                  nop
                  slt          s1, t1, zero
                  xori         s0, zero, -976
                  slti         t6, a2, 681
                  srli         a5, a3, 31
                  sltiu        s4, s10, 821
                  or           s1, t4, tp
                  srli         s5, a0, 5
                  sll          t3, s3, s0
                  srl          gp, s3, t4
                  sltu         a5, s9, t6
                  add          s0, s3, tp
                  or           t0, s8, t5
                  nop
                  ori          s10, a1, -1898
                  srai         tp, s10, 21
                  srl          s4, s2, s10
                  sltu         t5, sp, zero
                  srli         s3, a1, 30
                  slli         t4, s6, 22
                  xor          zero, ra, zero
                  sub          a2, a2, a5
                  slti         t5, s4, 1703
                  and          s5, s4, t4
                  xori         sp, a1, 146
                  and          a0, s6, s8
                  sltu         s0, s6, s0
                  auipc        a7, 981052
                  srli         s4, s4, 21
                  sltiu        s10, s11, 487
                  add          a7, a7, s3
                  slli         a6, ra, 17
                  sub          a5, ra, a0
                  sub          a7, a2, tp
                  addi         t2, s1, -782
                  xor          a3, a5, s0
                  sltu         t3, t5, s11
                  slli         gp, s5, 14
                  lui          gp, 815585
                  xor          a2, tp, s0
                  add          s9, a0, t2
                  add          t3, t2, t0
                  xor          t4, gp, a1
                  srl          s10, a0, s9
                  add          a3, s6, t1
                  srl          gp, s3, sp
                  srl          a5, s4, a0
                  add          a7, s0, s1
                  sub          s6, s5, s5
                  add          s7, ra, t2
                  addi         s6, tp, 737
                  or           s5, a6, s3
                  or           s5, s5, s5
                  xori         s11, t5, 500
                  slt          ra, a0, s4
                  and          s3, a7, s6
                  addi         a5, gp, 1078
                  slli         t3, s6, 0
                  or           s9, t4, s0
                  srl          sp, t5, s6
                  sra          a7, t6, a4
                  andi         s3, tp, 1641
                  or           s11, a5, a4
                  sltiu        s7, a2, 1177
                  auipc        s0, 72129
                  slli         s7, a5, 27
                  lui          s9, 316573
                  add          s6, gp, gp
                  slt          ra, a2, t3
                  auipc        t2, 199575
                  lui          s11, 337
                  ori          gp, a5, 171
                  srl          s4, s10, s2
                  and          s3, s10, s9
                  lui          a0, 199168
                  srai         a6, a0, 21
                  srli         a5, s1, 27
                  nop
                  srli         s9, s6, 20
                  addi         t2, s9, 1815
                  srli         t2, t5, 20
                  xor          t0, s6, gp
                  xor          s3, t0, s6
                  nop
                  or           s8, tp, zero
                  add          s3, t5, a5
                  or           t0, t0, a5
                  srl          t5, t3, s8
                  xori         tp, s10, -668
                  add          t3, a6, s2
                  sltiu        s8, t3, -1286
                  or           ra, s10, s4
                  ori          s4, s8, -1227
                  add          s0, s4, t4
                  slli         s10, a6, 2
                  xor          s0, sp, a5
                  and          sp, s9, s10
                  nop
                  xor          t5, s2, s11
                  slli         s5, s1, 4
                  sltu         a5, a0, t6
                  add          zero, a4, s2
                  or           t2, a0, t3
                  sll          s5, ra, s1
                  sltu         s11, t4, a1
                  or           a0, zero, t6
                  sll          s8, s7, t6
                  xori         a7, a1, -169
                  and          s5, s7, t0
                  srl          s2, t1, t3
                  sltu         t6, s0, s10
                  lui          s9, 357906
                  nop
                  slli         gp, t4, 21
                  xor          s5, a3, s0
                  srli         a6, s0, 3
                  add          s9, tp, t0
                  srl          s6, a2, a4
                  andi         s1, s5, -1896
                  or           t4, s8, s7
                  slli         zero, ra, 27
                  add          s1, gp, sp
                  xor          a5, t5, gp
                  xor          s8, gp, a1
                  xori         gp, a5, 377
                  sub          a3, a5, s4
                  ori          s1, s2, -1425
                  addi         s5, ra, 391
                  xori         s5, t6, 440
                  srai         s10, a5, 23
                  andi         t2, s0, 171
                  srl          t5, s7, t1
                  addi         s9, zero, 824
                  slli         t4, t5, 3
                  addi         gp, gp, 399
                  lui          s5, 680391
                  srai         s0, a5, 22
                  sltiu        gp, t0, 361
                  xori         a7, a2, 1283
                  slli         zero, a2, 29
                  srli         a2, t6, 28
                  slti         t6, a1, 984
                  srl          a7, a5, t3
                  auipc        t4, 382291
                  sra          t6, a1, a5
                  slti         t4, gp, -587
                  srl          a7, a7, s11
                  slli         t2, a1, 21
                  srai         gp, t4, 24
                  srl          s3, t1, s6
                  addi         s2, s10, 9
                  auipc        s7, 250178
                  sub          t3, s3, s6
                  srli         zero, tp, 8
                  auipc        s6, 103886
                  slt          t6, a7, zero
                  xori         a5, s1, 1667
                  srli         t4, gp, 14
                  sub          t4, s6, s9
                  srai         a7, a2, 8
                  nop
                  or           gp, a3, gp
                  xori         a0, s9, -181
                  xori         s4, s4, -329
                  and          a6, a2, a0
                  and          s3, s2, a2
                  srl          s0, a5, sp
                  xori         s7, t1, -1645
                  sll          s5, s4, s2
                  sra          a2, t1, s2
                  and          t0, s5, s2
                  srli         t6, t0, 22
                  slt          ra, s5, s8
                  srl          a6, t4, s1
                  slt          s7, t6, s4
                  nop
                  xor          s4, s2, s2
                  sub          t5, s2, t4
                  andi         s5, tp, -795
                  srli         t3, s8, 6
                  slli         s2, s1, 0
                  srai         a6, sp, 24
                  srl          t5, a6, gp
                  or           a7, a3, t5
                  srl          a0, t3, s3
                  sub          zero, t2, a3
                  xor          a5, a2, a5
                  slt          s9, s6, t0
                  srl          t5, s5, s9
                  lui          s0, 740
                  and          sp, a7, s8
                  sll          s6, s9, t1
                  sltu         a6, a2, zero
                  lui          a5, 1033479
                  sra          ra, a5, s6
                  xor          s10, a2, t5
                  addi         t6, s5, -1717
                  srl          s5, t4, t0
                  sltu         s0, t1, s1
                  sll          s7, a5, t3
                  sub          a0, t2, s6
                  andi         s4, s6, -1641
                  xori         a7, t6, 927
                  ori          tp, s3, 121
                  srai         s5, t0, 15
                  sltiu        ra, sp, 139
                  srl          t4, a1, a3
                  sll          s6, t0, t2
                  sltiu        s9, zero, -906
                  nop
                  sub          a0, t5, t1
                  lui          a6, 103635
                  sltu         a0, t6, a1
                  xor          s0, s5, t3
                  slli         s2, a4, 26
                  or           s4, s6, a1
                  lui          a5, 633509
                  xor          s1, s10, tp
                  add          s6, a5, t5
                  sltu         a5, a2, s8
                  ori          s5, s6, -1970
                  add          s0, a0, s9
                  sra          t3, tp, sp
                  xor          a3, s2, s6
                  srai         a0, s11, 2
                  or           tp, a7, s6
                  addi         sp, ra, -1356
                  or           t3, a0, a3
                  srli         a6, tp, 17
                  sll          a7, t0, s1
                  srli         t6, s10, 9
                  srl          s1, s4, t1
                  slt          s10, tp, sp
                  add          s4, a0, a5
                  sll          a0, a6, a1
                  sra          s11, s4, a0
                  xor          t5, s7, a0
                  sra          s11, t0, a1
                  slli         s5, s11, 6
                  srli         t2, t6, 6
                  slli         a2, s0, 13
                  slti         s9, s0, -616
                  addi         s0, t5, -1598
                  or           sp, a4, s5
                  ori          a6, s10, 1325
                  slti         a6, tp, -1723
                  sll          a2, s5, a0
                  or           a7, a5, s1
                  addi         t4, s2, -137
                  srai         a6, t2, 17
                  srli         t4, a5, 3
                  nop
                  sll          zero, t1, a2
                  slli         a2, a1, 3
                  nop
                  slt          tp, sp, a1
                  srl          gp, s1, s9
                  srli         s2, a4, 3
                  slt          s11, a0, a2
                  sltu         s7, t2, a4
                  lui          a7, 570410
                  sltiu        s9, a0, -407
                  addi         a7, ra, -552
                  sll          a0, a1, s8
                  sra          a0, t1, t6
                  slti         s2, zero, -1735
                  slti         a2, s2, 1822
                  addi         a6, s9, 1955
                  sub          gp, a0, s4
                  sra          t2, a4, t4
                  ori          t2, tp, 1971
                  auipc        a3, 293081
                  slli         s5, t5, 0
                  auipc        sp, 556857
                  addi         t5, t0, -1730
                  add          t4, ra, t6
                  ori          tp, ra, 42
                  auipc        s0, 101292
                  lui          a0, 907685
                  ori          s0, s0, -1648
                  sltiu        ra, s8, 421
                  add          a0, t2, s6
                  slli         t2, t4, 5
                  addi         a3, t2, -4
                  nop
                  lui          s5, 464532
                  slt          s8, s6, s9
                  xori         s7, s6, 68
                  srai         a2, s1, 24
                  xori         a5, a2, 1078
                  sltu         a3, a4, t4
                  or           s7, sp, ra
                  andi         t4, t4, 290
                  ori          t0, s5, -85
                  slti         s3, zero, -1823
                  srai         a2, t0, 26
                  or           t2, sp, t6
                  sll          t4, s7, sp
                  slt          gp, a3, t4
                  nop
                  sll          s7, a7, t2
                  sra          t2, ra, s7
                  srl          s10, sp, s11
                  sll          a0, s7, s5
                  ori          t4, t3, -540
                  sub          s1, s10, a6
                  and          a6, zero, s9
                  xori         a7, s8, -1346
                  xori         ra, s3, -1963
                  srl          s10, s4, s1
                  slt          s4, a0, tp
                  srli         a0, s3, 27
                  sll          s10, a5, t4
                  auipc        a5, 749484
                  nop
                  xori         s10, t5, -911
                  sltiu        s8, a7, -1723
                  andi         s8, t3, 1254
                  lui          s8, 694680
                  nop
                  nop
                  xori         s0, t0, -420
                  addi         a6, t3, 643
                  sltiu        t0, a2, -2048
                  slt          gp, sp, s6
                  and          ra, t3, ra
                  xor          s4, s5, t2
                  sra          t3, s5, s1
                  srli         a3, t0, 10
                  and          a5, s6, a2
                  andi         s10, a5, -463
                  auipc        s8, 179635
                  sltu         s1, t4, s7
                  sra          s11, t6, a0
                  sra          a6, zero, t1
                  slti         tp, t0, -1819
                  ori          t3, t0, -247
                  addi         s10, a6, 1020
                  sra          tp, s8, s7
                  srai         tp, a4, 7
                  srai         s5, s2, 21
                  andi         a5, sp, -1055
                  srl          t6, s9, t6
                  add          t5, a3, s8
                  and          s4, s0, a3
                  add          s3, t2, s10
                  and          t4, t3, a3
                  sltiu        s2, a6, 1068
                  slti         s0, t3, 429
                  andi         t4, t2, -1526
                  slt          a0, a5, t1
                  lui          s8, 60791
                  addi         tp, a4, -1560
                  xori         a7, a1, -325
                  nop
                  sltu         a5, s10, s1
                  xor          a5, a3, s5
                  slli         a3, ra, 7
                  addi         s3, t0, -1551
                  and          t2, s11, a0
                  xor          t5, a0, tp
                  and          tp, s0, s4
                  srl          s0, t5, a0
                  ori          s9, t2, 683
                  srai         t4, a4, 6
                  sltu         s3, t5, s2
                  sll          s4, a1, zero
                  srli         s1, a0, 18
                  srl          a7, t2, s5
                  slti         s10, s0, -1868
                  xori         s9, t6, 1621
                  slt          s9, s3, t0
                  sub          tp, s0, ra
                  ori          s3, ra, -647
                  auipc        s6, 839210
                  slli         a2, t5, 7
                  addi         a2, s5, 1804
                  sub          s7, t3, s11
                  sra          t6, a6, t4
                  lui          s1, 106921
                  xori         s1, a7, 1989
                  ori          a6, s11, 1257
                  ori          s0, a5, 1103
                  sltu         a5, t5, a3
                  slli         zero, a4, 22
                  add          a5, t6, s3
                  auipc        s6, 37881
                  sra          s3, a0, s7
                  auipc        ra, 228390
                  sltiu        ra, a7, -1260
                  addi         s5, a0, -1610
                  addi         s7, a1, -289
                  sltiu        a5, t6, 227
                  add          a2, a1, a1
                  slti         t4, s6, 364
                  sub          zero, s2, t2
                  srai         t2, a2, 23
                  andi         s3, t2, -298
                  xor          s11, s5, s6
                  andi         a6, a5, -1828
                  sub          s3, s4, t1
                  sltiu        s7, a0, 127
                  sltu         gp, t1, s3
                  sra          tp, s2, s4
                  sltiu        s1, s3, -799
                  nop
                  xor          a7, s11, s6
                  slli         s7, s4, 12
                  add          t3, t4, a1
                  srl          t4, a7, s0
                  slt          t6, a7, t2
                  auipc        s4, 545497
                  xori         t2, tp, 135
                  lui          s10, 106833
                  sltiu        t2, t0, -1972
                  addi         a6, a5, -308
                  srli         s7, t2, 6
                  nop
                  xori         t4, s0, -502
                  nop
                  xori         ra, a6, 1550
                  andi         s11, s6, 97
                  or           t4, t5, t2
                  addi         s3, s11, -1798
                  sub          a5, t2, a4
                  sltiu        s3, a0, -498
                  slti         s5, s8, -100
                  xori         a5, a3, 1045
                  slt          s3, a4, s5
                  slli         s6, tp, 29
                  nop
                  srl          a6, s9, t1
                  nop
                  xori         zero, zero, -878
                  srli         t3, tp, 13
                  sra          s2, s0, a5
                  xor          s6, t1, t1
                  auipc        s1, 487331
                  sll          s0, t1, s8
                  andi         s2, s6, -1447
                  srli         t6, s10, 31
                  xor          t5, t0, t3
                  addi         s9, s6, 469
                  sltiu        a0, s3, -1634
                  auipc        s10, 644651
                  addi         t3, t1, 1673
                  xor          s9, t5, a4
                  or           s9, s10, s7
                  slt          tp, tp, s6
                  slt          a5, s7, s3
                  add          s0, ra, t2
                  slli         a5, t5, 21
                  xori         a7, ra, -933
                  auipc        s11, 10686
                  add          gp, gp, t1
                  xori         t2, s10, 448
                  sltu         s10, gp, zero
                  srli         s9, ra, 5
                  slt          s2, t2, s10
                  nop
                  add          tp, t5, t4
                  add          s11, s1, t4
                  slt          sp, s3, t3
                  xor          tp, a7, t2
                  sub          a7, s11, a5
                  ori          s10, s11, -547
                  slti         a2, a2, 1433
                  andi         t4, s5, -449
                  ori          t3, s0, -374
                  andi         t3, a2, -1207
                  sltiu        s4, sp, 1512
                  addi         t3, t0, -1618
                  and          t2, s5, a6
                  auipc        s6, 949253
                  addi         s11, gp, 1263
                  srli         s3, a4, 16
                  slli         s0, a7, 16
                  xor          gp, s9, a5
                  srl          s0, t4, s2
                  la x11, test_done
                  jalr x0, x11, 0
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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x6, x14, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x18, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x18, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x18, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x18, x27, ecall_handler
                  li x27, 0x1
                  beq x18, x27, instr_fault_handler
                  li x27, 0x5
                  beq x18, x27, load_fault_handler
                  li x27, 0x7
                  beq x18, x27, store_fault_handler
                  li x27, 0xc
                  beq x18, x27, pt_fault_handler
                  li x27, 0xd
                  beq x18, x27, pt_fault_handler
                  li x27, 0xf
                  beq x18, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x14, x6, zero
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
                  add x14, x6, zero
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
                  add x14, x6, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x14, x6, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x14, x6, zero
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
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x14, x6, zero
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
