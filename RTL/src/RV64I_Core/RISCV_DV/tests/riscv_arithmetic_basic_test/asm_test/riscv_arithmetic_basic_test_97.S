.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x51c9bffa
                  li x1, 0x600e8a2a
                  li x2, 0x4
                  li x3, 0xeadfd2e5
                  li x4, 0x88097a99
                  li x5, 0x0
                  li x6, 0xf63d84c2
                  li x7, 0x80000000
                  li x8, 0x4
                  li x9, 0x6
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x17, 0xd
                  li x18, 0x830acabe
                  li x19, 0xaeb311c3
                  li x20, 0x80000000
                  li x21, 0x4
                  li x22, 0xe
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0xc
                  li x27, 0xfb9d7f07
                  li x28, 0x0
                  li x29, 0x3
                  li x30, 0xf
                  li x31, 0x80000000
                  la x16, user_stack_end
main:             li           s6, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s11, 0x80000000
                  li           s4, 0x0
                  li           s5, 0x1c8bf9aa
                  li           t5, 0xffffffff
                  li           ra, 0x0
                  li           a7, 0x0
                  li           a5, 0xffffffff
                  li           gp, 0xffffffff
                  li           s9, 0x80000000
                  auipc        a5, 256384
                  auipc        s9, 105904
                  auipc        t5, 481213
                  add          gp, s9, a5
                  sub          t5, a7, t5
                  nop
                  addi         s4, s11, 983
                  auipc        a5, 22235
                  nop
                  auipc        s11, 76497
                  lui          gp, 1026972
                  auipc        a5, 768434
                  sub          s4, t5, s5
                  auipc        ra, 330613
                  lui          ra, 141225
                  add          gp, s11, a7
                  add          s4, s11, ra
                  auipc        s5, 472479
                  addi         a5, s11, 552
                  auipc        t5, 375099 #end riscv_int_numeric_corner_stream_2
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t6, 0x0
                  li           tp, 0xffffffff
                  li           s2, 0xffffffff
                  li           s4, 0x80000000
                  li           s6, 0xffffffff
                  li           a5, 0x80000000
                  li           t4, 0xeb5f108f
                  li           a2, 0x80000000
                  li           ra, 0x80000000
                  sub          a2, tp, t6
                  nop
                  sub          t3, t3, a5
                  sub          s2, s2, a5
                  nop
                  lui          t3, 438690
                  nop
                  nop
                  addi         a2, tp, 1234
                  addi         a5, a5, -303
                  add          s6, s6, t4
                  nop
                  lui          a5, 990261
                  addi         ra, s4, -1352
                  auipc        tp, 14832
                  addi         t4, s6, 520
                  lui          s2, 644943
                  lui          t6, 168151
                  addi         t3, s4, -540
                  auipc        a5, 307680
                  add          t6, s2, s6
                  add          a5, ra, a5
                  addi         t6, s4, -253
                  auipc        s2, 788387
                  nop
                  addi         tp, t3, -1679
                  lui          s4, 296502
                  nop
                  addi         t4, s2, 1915
                  auipc        a2, 941723 #end riscv_int_numeric_corner_stream_11
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s4, 0xffffffff
                  li           s10, 0x80000000
                  li           a5, 0xffffffff
                  li           t1, 0x8dfb38c9
                  li           a7, 0x0
                  li           s11, 0xffffffff
                  li           s6, 0x80000000
                  li           gp, 0x80000000
                  li           a1, 0x80000000
                  auipc        gp, 505064
                  lui          a5, 549694
                  lui          gp, 644477
                  sub          s4, s6, s11
                  lui          s11, 556039
                  sub          ra, t1, a1
                  lui          ra, 531798
                  nop
                  auipc        gp, 550875
                  lui          s4, 308042
                  nop
                  nop
                  lui          a5, 1046402
                  add          a7, a7, gp
                  auipc        ra, 689399
                  sub          t1, gp, a7
                  auipc        t1, 303899
                  auipc        s10, 946152 #end riscv_int_numeric_corner_stream_5
                  li           s10, 0xca5bbd21 #start riscv_int_numeric_corner_stream_14
                  li           s11, 0x70f5fc1a
                  li           s9, 0xffffffff
                  li           gp, 0xffffffff
                  li           t4, 0xffffffff
                  li           a0, 0x0
                  li           tp, 0x80000000
                  li           a1, 0xb14cafbb
                  li           s2, 0x0
                  li           s1, 0x7f933a43
                  nop
                  add          gp, s10, a0
                  lui          s1, 75701
                  lui          a0, 522996
                  sub          a0, a1, s9
                  addi         tp, s1, 589
                  lui          s2, 285184
                  sub          tp, s9, s2
                  add          s10, tp, s2
                  auipc        a0, 867022
                  addi         gp, s2, 1788
                  sub          s9, s10, s10
                  lui          tp, 845179
                  sub          gp, a1, s11
                  addi         s1, s10, 2036
                  auipc        s9, 450775
                  add          gp, t4, a1
                  add          a1, s11, s2
                  auipc        s11, 37140
                  nop
                  auipc        a1, 863327
                  add          s9, t4, t4
                  add          tp, s11, s1
                  lui          s11, 112348
                  addi         tp, s11, -1245
                  sub          tp, s10, a1
                  nop
                  sub          a1, s1, s2 #end riscv_int_numeric_corner_stream_14
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s10, 0xffffffff
                  li           t0, 0x0
                  li           ra, 0xffffffff
                  li           a5, 0xffffffff
                  li           s6, 0x1fad042a
                  li           a0, 0xbc2bd918
                  li           s3, 0x96de3a4a
                  li           s7, 0x0
                  li           a7, 0x5b41e012
                  addi         s6, s10, -2001
                  auipc        s6, 659734
                  lui          t2, 213185
                  lui          s10, 118269
                  sub          s10, a5, a5
                  nop
                  lui          s10, 1016290
                  lui          t0, 927793
                  addi         s6, t2, -1022
                  addi         a7, t0, -832
                  nop
                  nop
                  nop
                  nop
                  addi         ra, a0, 1902
                  lui          a0, 628278
                  auipc        t0, 973701
                  lui          t0, 877633
                  add          a5, t2, a5
                  nop
                  lui          ra, 457772
                  nop
                  lui          s6, 674855
                  nop
                  add          s10, s6, s6 #end riscv_int_numeric_corner_stream_10
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           a2, 0x0
                  li           tp, 0x0
                  li           ra, 0xffffffff
                  li           s6, 0x2706d969
                  li           s2, 0xa3f16737
                  li           t4, 0x80000000
                  li           s9, 0xffffffff
                  li           t3, 0x80000000
                  li           s4, 0x80000000
                  nop
                  auipc        s9, 729659
                  addi         s2, ra, 2042
                  add          a2, s6, ra
                  add          ra, t4, a1
                  add          s2, t3, a2
                  addi         s4, s4, 954
                  addi         tp, s2, -868
                  addi         s6, s9, -1735
                  nop
                  add          s6, tp, tp
                  add          a2, t4, t4
                  auipc        a2, 244243
                  sub          s4, a1, s2
                  auipc        a1, 512671
                  sub          a2, t4, t4
                  sub          s4, s9, s9
                  nop #end riscv_int_numeric_corner_stream_19
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t3, 0x0
                  li           t5, 0x80000000
                  li           t1, 0x8a3cdba3
                  li           s3, 0xffffffff
                  li           a1, 0x0
                  li           s5, 0x80000000
                  li           s11, 0xffffffff
                  li           a4, 0xffffffff
                  li           s7, 0xffffffff
                  nop
                  add          t5, s7, t6
                  addi         t3, t3, -928
                  nop
                  sub          s11, s3, t3
                  add          s5, a4, t1
                  auipc        a4, 772910
                  nop
                  add          a1, t3, t3
                  nop
                  add          a1, s11, t3
                  addi         s11, t3, -1339
                  nop
                  add          t5, t3, t1
                  auipc        s3, 103491
                  auipc        a4, 450157
                  auipc        a1, 909187
                  lui          s7, 51403
                  sub          a4, a1, t1
                  sub          s11, a1, a4
                  addi         s5, t3, -1785
                  auipc        t3, 919452
                  addi         s3, a4, 1275
                  lui          s7, 625171 #end riscv_int_numeric_corner_stream_9
                  xor          t6, s5, a7
                  sll          t3, t5, a3
                  sra          ra, s0, s8
                  lui          s0, 841440
                  and          tp, a4, t0
                  nop
                  ori          t1, s7, 1809
                  sltiu        a0, a6, 1324
                  xor          a4, s10, t0
                  sltu         s7, s8, s3
                  sub          ra, s9, s11
                  slt          s6, s11, sp
                  slti         zero, s5, 1966
                  sra          zero, a5, a1
                  sltiu        a5, s8, -544
                  srli         t4, t3, 25
                  addi         t0, s6, -1546
                  sltu         t4, s2, s3
                  sll          t2, t0, t2
                  xor          s11, ra, s2
                  andi         t6, s3, 1462
                  srai         s7, t6, 10
                  slli         s9, t1, 6
                  sra          a1, a7, s7
                  slli         s6, s0, 31
                  sll          s7, s5, s1
                  andi         s3, s4, 951
                  slt          a4, ra, s10
                  slli         s11, s4, 21
                  sra          t0, t3, a1
                  ori          t5, tp, -1150
                  auipc        s6, 764138
                  slti         s0, s10, 1080
                  sub          s1, gp, a5
                  sltu         s0, t0, t0
                  add          a2, s1, s2
                  xori         s2, a3, 1808
                  sub          t1, s5, t1
                  sltu         s10, sp, s0
                  srai         s11, a1, 9
                  lui          s8, 272153
                  sra          s1, s8, s8
                  ori          s9, s10, -715
                  slti         s11, a6, -356
                  slti         t0, t0, 846
                  sltiu        a4, tp, -2005
                  slti         t1, t5, -1667
                  xor          s4, a4, t6
                  add          tp, a2, a3
                  lui          s4, 239804
                  auipc        a1, 184190
                  sra          zero, s7, a1
                  slti         s8, t6, 308
                  and          a4, s11, sp
                  auipc        a2, 17147
                  srli         s7, a7, 0
                  addi         s5, sp, -1464
                  and          gp, a1, a2
                  add          s7, s9, s1
                  sltiu        t2, a5, -720
                  and          s11, s3, s9
                  slti         s10, t4, 1656
                  sra          a5, gp, ra
                  slti         a2, s3, 1845
                  sltiu        s1, t4, 1700
                  srai         a7, s5, 14
                  lui          s11, 419956
                  srai         a5, a2, 31
                  sll          t2, a6, a4
                  or           gp, s2, s5
                  srl          s7, a2, s7
                  slt          a7, s5, t0
                  andi         t4, s3, 1762
                  lui          s6, 93435
                  addi         t5, t6, -1295
                  sltu         a1, a5, ra
                  sub          s10, t3, t4
                  li           a7, 0x7f6aacb8 #start riscv_int_numeric_corner_stream_15
                  li           t3, 0x532c29ea
                  li           t5, 0xffffffff
                  li           s10, 0x80000000
                  li           s1, 0xfd8d60ac
                  li           s4, 0x80000000
                  li           s0, 0xffffffff
                  li           t6, 0x55648f71
                  li           a5, 0xffffffff
                  li           s6, 0x1468f89b
                  nop
                  lui          t6, 67928
                  nop
                  add          s10, t5, s1
                  auipc        s4, 1033896
                  sub          s0, t3, s10
                  nop
                  add          t6, s10, s10
                  sub          a7, t3, s0
                  lui          s1, 1041590
                  auipc        t5, 168477
                  add          a5, t6, s4
                  sub          s1, t5, s1
                  add          a7, s0, t3
                  lui          s0, 113061
                  addi         s1, t5, -571
                  addi         a5, t5, -410
                  nop #end riscv_int_numeric_corner_stream_15
                  srai         tp, a2, 28
                  ori          t6, t1, 521
                  addi         s0, zero, -604
                  sltu         s8, s8, a6
                  slti         s1, s9, 1655
                  ori          s0, t6, 880
                  andi         t3, t3, 1802
                  slti         s3, gp, -1553
                  sltiu        s6, t1, 909
                  addi         ra, t1, -3
                  sltu         s3, t6, s8
                  andi         s7, tp, 2031
                  srai         t1, zero, 2
                  srli         s0, s10, 29
                  slli         t3, a7, 19
                  srai         s6, sp, 3
                  sub          s1, s2, a2
                  ori          s11, s9, 1135
                  slt          t2, a1, s2
                  sub          t4, s2, a7
                  slt          s0, t3, t4
                  sub          s4, a1, gp
                  or           s6, a2, s10
                  sltu         s2, s11, a5
                  ori          t2, t1, -744
                  slli         a4, t4, 21
                  slt          a4, gp, s8
                  sltu         s8, a6, a6
                  srl          t2, t1, s0
                  sra          a1, a1, s0
                  andi         s11, s11, 1176
                  xor          s7, s0, s3
                  sltiu        s9, t4, -679
                  lui          tp, 29787
                  slti         t4, t3, 1771
                  slli         t6, s0, 21
                  nop
                  and          zero, sp, t4
                  nop
                  xor          s5, s1, s7
                  sub          a0, s6, gp
                  slti         zero, a7, 1813
                  srli         zero, t2, 22
                  add          a4, s11, s0
                  ori          a5, s11, -1954
                  lui          a7, 1001673
                  add          s9, s1, s4
                  sltu         a2, ra, ra
                  srli         s2, a5, 30
                  slt          s2, s8, t5
                  sltu         zero, s0, gp
                  sltu         a2, gp, a4
                  and          t2, a1, a1
                  slli         s0, s2, 30
                  and          t4, s4, s3
                  sltiu        tp, t4, -606
                  slt          t4, s0, t0
                  andi         t5, gp, -1172
                  nop
                  and          ra, sp, s6
                  lui          t1, 199724
                  slti         t1, s9, -1042
                  or           s3, a1, t3
                  ori          s2, t1, -777
                  slli         t3, t0, 0
                  nop
                  slli         t6, a5, 30
                  sltiu        zero, s9, 1233
                  slli         zero, tp, 22
                  lui          s0, 315454
                  lui          t6, 530459
                  addi         s3, t2, 349
                  srai         t2, s9, 30
                  sltiu        s6, t3, 190
                  auipc        s6, 342074
                  add          s8, a5, sp
                  slli         zero, s0, 16
                  sra          s6, a7, s1
                  or           s0, t6, a3
                  nop
                  srai         s7, s9, 8
                  srai         s10, s2, 8
                  sltiu        ra, s9, -328
                  lui          s8, 138862
                  or           t0, zero, s8
                  xor          s6, s5, t0
                  sltiu        t3, a7, 33
                  xor          s7, s3, a3
                  or           zero, s5, a2
                  and          a7, a0, a2
                  sll          t4, tp, sp
                  sltu         s3, t2, s1
                  sll          s9, s3, t0
                  add          a2, a0, s11
                  sub          s0, a0, gp
                  srai         s9, a1, 8
                  srli         t0, t6, 14
                  slli         a7, tp, 29
                  nop
                  srai         s10, ra, 15
                  addi         a7, gp, 1926
                  addi         s1, t4, -1112
                  add          a4, s5, s0
                  sltiu        s11, a4, 526
                  add          s6, s5, s2
                  ori          s5, ra, -1746
                  ori          t6, gp, -1786
                  slli         gp, a7, 31
                  addi         t4, s4, 764
                  ori          s6, s7, 759
                  or           s8, s1, sp
                  sll          gp, s10, sp
                  slli         tp, tp, 9
                  lui          t3, 418560
                  xor          s1, zero, s5
                  ori          a0, t1, -1976
                  slli         s10, t0, 17
                  sra          a5, a5, s0
                  lui          ra, 277199
                  srli         s9, s4, 20
                  srai         gp, a5, 2
                  sltiu        tp, sp, 627
                  srl          s10, s8, s9
                  srl          gp, ra, tp
                  sltu         a5, s9, s1
                  ori          t2, t0, -1453
                  add          a5, s1, s0
                  xor          t0, t5, tp
                  and          t3, s6, a0
                  and          s0, s2, t5
                  sltiu        s1, a1, 239
                  lui          s0, 703803
                  slt          s5, zero, s5
                  srli         s9, s7, 6
                  sltiu        s9, t3, 735
                  add          s6, a7, s0
                  slt          a5, s5, s8
                  sra          s10, t4, a1
                  sltu         t0, s7, s6
                  sltu         tp, t3, zero
                  sra          s8, a0, s11
                  sub          t0, s6, t4
                  xori         gp, t5, 663
                  sub          s8, a0, t1
                  sub          s5, t0, t1
                  or           s3, gp, s0
                  slti         t6, t0, -879
                  lui          ra, 209155
                  xori         s1, t2, -920
                  ori          tp, a3, -1890
                  srl          gp, ra, t1
                  srli         t6, s9, 26
                  lui          t6, 1045693
                  srl          a4, a3, a7
                  slt          s5, s9, s6
                  ori          s11, sp, 421
                  sltu         t2, s0, t5
                  sll          s6, s2, s0
                  slli         s5, ra, 25
                  add          a2, sp, t0
                  xor          s8, a3, t6
                  slli         t2, gp, 6
                  sll          a2, s0, s11
                  auipc        t5, 957418
                  lui          a0, 886804
                  sub          t5, t1, a4
                  auipc        t0, 81820
                  sltu         s2, s1, s8
                  srli         s10, tp, 25
                  add          t2, a1, zero
                  srai         s2, s10, 4
                  slli         t6, a0, 8
                  lui          s2, 253470
                  sltu         tp, t1, t4
                  xor          s9, s6, t4
                  slti         s5, a7, -1307
                  srl          t5, t2, s3
                  ori          s5, t6, 1811
                  srai         s11, a2, 14
                  add          a4, s10, a3
                  slli         s8, sp, 5
                  sltiu        s1, t5, 1002
                  srli         zero, a2, 26
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a7, 0x80000000
                  li           a1, 0xffffffff
                  li           gp, 0x0
                  li           s3, 0x80000000
                  li           a0, 0x0
                  li           s10, 0x5f6a63ea
                  li           t0, 0x0
                  li           t6, 0xffffffff
                  li           s0, 0x0
                  addi         t4, a0, 1096
                  add          gp, a0, t4
                  lui          t6, 140967
                  nop
                  addi         t0, a0, 653
                  sub          a1, gp, a7
                  add          s10, a1, s0
                  nop
                  auipc        s10, 560348
                  nop
                  nop
                  nop
                  nop
                  addi         s0, s3, -220
                  sub          a0, a1, a7
                  sub          t6, a0, s10
                  sub          gp, gp, t4
                  sub          a1, a0, t6
                  nop
                  addi         t6, t4, -89
                  sub          t4, a0, a0
                  sub          gp, t0, t6
                  addi         s0, s0, 1590 #end riscv_int_numeric_corner_stream_13
                  lui          s2, 268896
                  sra          s4, s0, gp
                  xor          t3, s8, s9
                  slt          s8, a0, s8
                  srl          t2, a7, a6
                  auipc        t3, 371386
                  or           t5, s9, a3
                  srli         t1, s3, 1
                  srai         s11, a2, 5
                  xor          a7, a5, a7
                  srl          a2, a4, t2
                  ori          t6, a2, 1086
                  and          t5, s11, a3
                  andi         s11, tp, 907
                  slli         s7, ra, 8
                  sra          s6, s11, s10
                  and          s7, a4, a4
                  xor          s8, s8, t3
                  sra          s3, t4, ra
                  lui          s6, 861697
                  sll          s7, a7, s3
                  xori         s5, s2, -1528
                  andi         s8, s5, 1741
                  xor          a0, a2, s8
                  sltiu        s4, a7, -775
                  or           a7, a6, t1
                  srai         zero, s6, 20
                  sltiu        t5, sp, 1377
                  srl          s1, s2, zero
                  slt          t1, s11, s2
                  srli         t3, s1, 7
                  auipc        t5, 937995
                  ori          t1, zero, -1360
                  lui          s1, 1029475
                  sll          s10, t0, a3
                  auipc        s2, 564262
                  sra          a1, s8, t6
                  auipc        a5, 900285
                  ori          tp, tp, -1904
                  slt          gp, s6, zero
                  slti         s2, a3, -1589
                  slti         a4, a6, -1957
                  sltu         s5, s4, a0
                  nop
                  xori         t5, s8, -1729
                  srl          a0, s4, t2
                  slli         s5, s6, 26
                  lui          t1, 1043181
                  slli         t1, s8, 14
                  sltiu        a5, s2, 1974
                  sra          s3, s11, a1
                  sra          a2, a0, a1
                  and          a5, s4, zero
                  nop
                  add          t6, sp, sp
                  xor          a2, s10, s9
                  sltiu        a5, t4, -529
                  sub          t4, a1, s6
                  or           s7, a2, s3
                  sub          s8, a1, a2
                  srai         t1, gp, 20
                  srl          a7, sp, t3
                  lui          s11, 684492
                  ori          s6, zero, -638
                  nop
                  slt          s9, t4, a6
                  xori         s9, s0, 1022
                  slli         s0, s2, 28
                  lui          s0, 359693
                  nop
                  add          t6, s8, a6
                  add          t5, zero, t1
                  sltu         s0, s7, t0
                  andi         a4, sp, -1553
                  add          s3, s4, t0
                  andi         a2, s11, 750
                  lui          t0, 245108
                  srl          s10, s2, s9
                  srli         ra, t2, 5
                  slt          a1, t2, ra
                  slli         s5, s9, 6
                  sltu         t4, zero, t4
                  add          s4, t5, s5
                  sll          s4, t2, s4
                  sltu         s5, sp, s4
                  auipc        s5, 47208
                  slt          t3, a0, t0
                  add          a5, a4, s6
                  slti         s3, zero, 1151
                  nop
                  ori          a2, a0, -1372
                  lui          a4, 147769
                  auipc        s1, 398407
                  sra          t2, a3, t5
                  add          s11, zero, t5
                  slti         s4, a1, 702
                  slt          s2, s6, s5
                  nop
                  and          t2, t0, t3
                  sltiu        s10, s5, -118
                  xor          t4, t6, s11
                  sll          a4, s1, t2
                  nop
                  srai         s5, t6, 6
                  nop
                  xori         s8, s4, 585
                  andi         zero, ra, 984
                  auipc        a7, 973793
                  andi         a1, s4, 1418
                  add          tp, s5, s3
                  sltu         s11, s11, ra
                  slti         zero, t4, 1513
                  srai         ra, t4, 14
                  lui          s2, 222466
                  sltiu        a7, t5, -662
                  andi         t5, gp, -117
                  xori         a2, s6, -1600
                  add          a4, a3, ra
                  nop
                  nop
                  slti         gp, zero, -1270
                  sra          t3, a2, tp
                  sltu         a4, a1, s4
                  andi         a5, s6, -1688
                  addi         s6, t2, -891
                  srai         s11, a0, 4
                  slti         zero, a2, 256
                  sub          ra, a1, s0
                  srli         zero, s11, 6
                  xori         tp, t3, -693
                  sll          s11, s8, t0
                  add          ra, t2, t6
                  add          s0, a5, t6
                  and          tp, tp, a2
                  sll          a0, a7, gp
                  xor          s3, s11, t2
                  sub          s1, a7, s10
                  srli         t1, t0, 28
                  xor          s6, s4, a3
                  ori          s10, s6, 132
                  add          a7, a3, a0
                  and          t6, tp, s8
                  auipc        a2, 105705
                  sra          gp, s6, s1
                  and          t4, s9, a1
                  srai         s1, a7, 8
                  sub          t6, a4, a4
                  auipc        s7, 62266
                  add          t5, s7, gp
                  addi         tp, s8, -721
                  xor          s0, zero, t0
                  and          s6, s0, t4
                  srai         t3, a6, 13
                  xor          s5, s10, s7
                  nop
                  xori         t3, s8, -965
                  or           a1, a7, gp
                  addi         t4, s6, -1388
                  slti         a1, s9, 1588
                  sll          a4, t4, s11
                  xor          t1, a2, a2
                  sra          zero, a3, t6
                  srli         t0, gp, 17
                  lui          t6, 732005
                  addi         s11, sp, 838
                  sltiu        a0, zero, -758
                  nop
                  srai         t3, s11, 13
                  slt          a2, a2, a5
                  slt          s9, zero, s3
                  sub          s2, a6, a1
                  slt          a1, s2, a4
                  sll          a1, t1, a3
                  add          s7, s1, ra
                  ori          ra, s6, 493
                  ori          gp, a0, -1015
                  srli         a7, ra, 18
                  xor          a4, s3, a6
                  lui          gp, 1009864
                  sub          s10, s1, s2
                  sra          t3, a5, s11
                  slt          s8, s2, s0
                  sub          s7, a3, t2
                  slli         t2, s5, 29
                  xor          t1, s11, s3
                  addi         t3, zero, -668
                  sub          tp, s8, t0
                  or           s9, a0, s9
                  sra          s6, s5, s4
                  slt          t5, a5, a4
                  sra          s8, a3, s5
                  xori         ra, a5, 1459
                  auipc        s6, 903543
                  srli         t6, a7, 6
                  sltu         s7, ra, t6
                  auipc        t5, 441545
                  add          s0, sp, s11
                  ori          a5, s7, -10
                  andi         ra, a0, 657
                  slli         a1, a4, 24
                  sll          s11, s9, s0
                  sltu         gp, s8, s0
                  slt          s10, s2, a2
                  xori         t4, s0, -1384
                  nop
                  nop
                  srl          a2, s4, a2
                  and          s0, t4, s1
                  srai         s5, t6, 11
                  and          ra, s11, s0
                  lui          s10, 582792
                  nop
                  slli         ra, zero, 8
                  slt          s4, a6, s9
                  nop
                  sub          gp, a5, tp
                  xor          gp, t5, t0
                  sll          s7, s8, t6
                  sub          s9, s1, sp
                  xor          a7, s2, s4
                  or           s10, s11, t1
                  sltu         s9, s3, t1
                  srli         gp, s10, 6
                  addi         t0, a3, -127
                  xor          t5, a2, zero
                  srai         s2, s7, 21
                  sll          t4, s9, t1
                  slli         s4, s6, 26
                  srli         a0, t1, 1
                  lui          s4, 106688
                  slt          s2, s3, a0
                  nop
                  srli         s9, sp, 11
                  srl          t4, s2, a3
                  sra          s10, s0, s2
                  xor          t6, s2, t5
                  ori          t5, s1, 1753
                  addi         t1, s1, -846
                  addi         t6, a0, -389
                  add          t3, s1, a2
                  slti         zero, gp, 365
                  slt          s11, s3, a6
                  sra          t1, t4, s0
                  andi         t4, a5, -818
                  sra          t4, t2, s8
                  sra          s7, a3, t3
                  slt          t0, s8, t1
                  srli         t2, t6, 5
                  srai         s1, s5, 6
                  ori          a2, gp, 1561
                  srai         t1, a7, 21
                  sll          a5, a0, s11
                  sll          t5, ra, tp
                  srli         tp, gp, 12
                  slti         s6, gp, 621
                  addi         s2, s2, -570
                  xor          s6, zero, a6
                  addi         t3, s10, -2047
                  sra          s10, s0, s5
                  sltiu        s9, s10, -1021
                  slt          s0, t0, s10
                  lui          t2, 493143
                  add          t3, s11, t5
                  lui          s9, 761852
                  srli         s7, s0, 31
                  lui          t6, 705063
                  srai         s5, a0, 26
                  addi         s10, a0, 926
                  sltu         ra, gp, t3
                  auipc        s3, 696503
                  add          a5, tp, t3
                  slli         a2, a4, 2
                  lui          t6, 334259
                  sub          t5, t5, a0
                  sltiu        gp, s6, 1449
                  and          t6, a3, a2
                  or           gp, a2, tp
                  or           s6, t6, s11
                  slt          ra, s8, s10
                  addi         s7, s7, -589
                  addi         t4, t1, -1358
                  addi         t2, s10, 907
                  srai         s11, s3, 29
                  xor          t0, s0, t4
                  add          gp, s0, a4
                  and          a5, s9, s8
                  sltu         t1, a5, s10
                  sltiu        a4, a2, 1478
                  and          s6, t1, s4
                  ori          zero, a5, 1275
                  auipc        s10, 322799
                  xori         t5, s8, 1731
                  andi         s8, a3, -707
                  slt          s2, t3, a6
                  sra          a7, s10, a3
                  nop
                  xor          s5, s9, s4
                  xori         s3, s10, -532
                  slt          s6, a3, ra
                  lui          s11, 513955
                  sra          a5, tp, ra
                  sra          tp, sp, a6
                  addi         a7, s9, -1518
                  andi         t3, s2, 1176
                  or           t5, a0, s4
                  slt          t3, ra, t6
                  sub          a0, gp, a6
                  sltu         zero, s3, s1
                  and          a0, ra, s5
                  sll          s4, t2, t1
                  and          gp, s7, a1
                  slt          t1, s8, s2
                  slti         t2, t5, -636
                  sub          s9, s10, a3
                  sll          s2, s4, a4
                  xor          t0, s5, t4
                  nop
                  xor          a1, zero, s6
                  xor          s1, t2, t5
                  sltiu        s0, a1, -495
                  sltiu        tp, t4, -296
                  ori          s6, a7, 731
                  sub          s10, tp, t5
                  xori         t2, s11, -1581
                  auipc        s1, 341023
                  xori         s9, t1, 1706
                  slli         t2, s11, 17
                  and          s9, a5, s1
                  lui          t1, 117976
                  xori         zero, zero, -1325
                  sra          s6, s1, zero
                  sra          t3, ra, t0
                  and          s3, s11, t5
                  sll          t3, t4, a4
                  xori         s0, t3, -1253
                  sra          ra, a3, t0
                  slti         ra, a0, -1115
                  andi         t6, a2, -1256
                  slt          s10, a5, a7
                  xor          s7, a0, a7
                  srli         a4, s7, 13
                  ori          s11, t5, 779
                  srli         s7, s9, 2
                  slti         s2, t6, 1087
                  ori          gp, s8, 1118
                  slli         tp, s8, 24
                  and          a2, a4, s0
                  srli         s4, a1, 7
                  sra          s7, a7, t4
                  ori          t3, s10, 80
                  slt          s9, s7, tp
                  slli         a0, a4, 7
                  add          s2, a5, a1
                  nop
                  nop
                  addi         a0, s6, 2002
                  xori         t1, s2, 849
                  sra          s5, a2, t4
                  addi         s5, s8, 348
                  xor          s8, tp, s4
                  xor          t6, s9, s3
                  addi         a4, s0, -749
                  or           s1, s11, a3
                  ori          s3, s10, -2033
                  addi         s9, s4, 397
                  srli         a2, s8, 2
                  srai         tp, s1, 0
                  auipc        a2, 712240
                  sub          t2, s8, t4
                  auipc        a2, 476666
                  srl          s11, s5, gp
                  xor          a0, a4, s1
                  slli         s6, s5, 9
                  auipc        a7, 94661
                  and          s1, sp, t5
                  slt          a1, a5, a1
                  or           s9, a7, s6
                  xor          s2, s10, s6
                  srai         s4, s7, 4
                  nop
                  auipc        tp, 2918
                  srl          tp, a1, t6
                  sltiu        t0, s5, -729
                  xori         s9, t0, -2043
                  add          s2, a7, t4
                  add          s3, s3, s8
                  nop
                  auipc        t5, 165139
                  srli         t4, t3, 0
                  xori         t6, a0, -1924
                  and          s2, a1, s5
                  auipc        t2, 96694
                  ori          s1, s11, 640
                  sltiu        s5, a6, 616
                  sra          s2, t0, s0
                  add          a1, t1, a0
                  sub          s6, ra, t4
                  addi         s6, tp, 1849
                  addi         s7, s0, -1144
                  addi         t6, s6, 413
                  ori          s3, a3, -1866
                  xori         s1, t0, 289
                  slti         t3, a0, 270
                  xori         s1, s6, -1327
                  srl          t4, t3, t1
                  nop
                  sll          t0, tp, s4
                  sll          t1, s7, a3
                  sltiu        s8, s2, -1692
                  lui          a1, 698727
                  xori         s0, t1, 592
                  sltu         t5, a7, s3
                  add          gp, s7, a6
                  sll          t3, s8, s9
                  and          t0, s10, s0
                  nop
                  xori         s5, a3, 1587
                  andi         zero, a1, -798
                  srl          ra, zero, ra
                  xori         s9, sp, 931
                  ori          gp, s6, -1195
                  sltiu        gp, a5, -2
                  xor          s4, t5, a3
                  slli         t1, a4, 8
                  slli         s5, s9, 22
                  or           t0, s8, sp
                  srli         s9, t2, 24
                  sub          s11, a6, t6
                  sra          s2, t4, s10
                  slli         t2, t1, 2
                  ori          t5, s0, 891
                  srl          s7, s1, ra
                  xori         s1, t3, 482
                  and          ra, a6, a3
                  sll          s8, s2, t1
                  and          t3, t2, s0
                  ori          gp, s7, -1767
                  and          t5, gp, ra
                  srli         zero, s3, 18
                  slt          s3, t3, a7
                  sub          zero, a0, t5
                  slli         t3, a2, 26
                  srai         s10, t1, 24
                  xori         s10, s2, -1553
                  andi         a5, gp, 1267
                  and          s8, sp, zero
                  sltiu        a0, s10, 737
                  addi         a7, t6, -440
                  sll          tp, s5, s1
                  addi         s8, a7, -1820
                  sub          s6, a2, s2
                  or           t3, t2, s5
                  addi         zero, t5, 1529
                  slt          a4, sp, a6
                  andi         t2, s3, -520
                  nop
                  slti         t0, a4, 1789
                  ori          s4, s0, 1498
                  or           t0, t6, s11
                  slli         ra, t0, 21
                  andi         t5, s11, -377
                  sltiu        t1, s6, -1539
                  sltu         s9, s8, ra
                  sll          t3, t5, sp
                  slt          s0, a0, s9
                  srli         t4, a6, 6
                  sub          a4, t3, s7
                  srli         t5, t0, 10
                  xor          s8, t5, s8
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           a0, 0x0
                  li           s0, 0x303bf95a
                  li           s2, 0xc23db85c
                  li           a5, 0x0
                  li           s6, 0x0
                  li           t3, 0xffffffff
                  li           t2, 0xffffffff
                  li           s10, 0x0
                  li           s3, 0x0
                  add          s3, s2, t3
                  nop
                  add          s3, s10, a0
                  add          a0, t3, s10
                  lui          a5, 618991
                  sub          s2, s9, s3
                  auipc        t3, 714710
                  add          s0, s3, s6
                  lui          s6, 550737
                  lui          t3, 7587
                  nop
                  addi         a5, a0, 1727
                  sub          s6, t3, t3
                  lui          s0, 542272
                  lui          t2, 659075
                  addi         s10, s2, 1551
                  addi         t2, s2, -2025
                  auipc        s0, 764650
                  lui          s3, 913721
                  auipc        s2, 262494
                  add          s3, s3, t3 #end riscv_int_numeric_corner_stream_4
                  xori         s7, t1, -664
                  sub          s5, t0, t0
                  srai         gp, a4, 27
                  xor          tp, s7, s1
                  xor          a2, t6, s7
                  sub          t6, s2, gp
                  sra          t2, s9, t1
                  ori          s8, s5, 1319
                  srai         t0, s5, 25
                  addi         a2, sp, 255
                  sltiu        s4, tp, -1598
                  sltiu        s7, t1, -778
                  srai         s11, t6, 18
                  sra          a2, t3, t0
                  srl          a4, s8, ra
                  srl          a2, gp, a4
                  and          t2, s10, s0
                  addi         s6, a6, 1756
                  sltiu        t3, a1, 2027
                  sltu         t2, s0, s0
                  or           t5, s10, s11
                  addi         s3, t2, -675
                  sra          s0, s8, gp
                  srl          tp, s6, s4
                  auipc        s2, 962796
                  or           s1, s7, s1
                  lui          s0, 505536
                  ori          s6, s11, 1742
                  srli         s0, a2, 6
                  auipc        t5, 306504
                  sll          a7, a2, s10
                  srai         a0, s2, 14
                  xor          a0, a4, zero
                  auipc        s8, 576148
                  auipc        a0, 968756
                  sltu         t5, t5, tp
                  lui          t4, 643118
                  sltiu        a4, t1, -1272
                  srai         s11, t6, 1
                  sltu         s5, a7, a6
                  sll          s9, a2, a7
                  srli         a2, a6, 31
                  auipc        s10, 558540
                  add          s11, a6, t3
                  nop
                  srli         zero, s3, 18
                  sra          ra, t2, t0
                  lui          a5, 598229
                  sub          ra, t5, s6
                  addi         a4, tp, -1906
                  and          a1, s8, a5
                  sra          s8, s10, t1
                  sltu         a2, t4, t5
                  slti         s11, a4, 1562
                  xor          s7, gp, s9
                  slti         s3, ra, -1532
                  nop
                  slt          a4, a6, s0
                  lui          a4, 947533
                  ori          gp, sp, 769
                  add          s11, a0, s1
                  srai         s5, s7, 27
                  and          a7, a4, ra
                  xor          a2, s6, a6
                  andi         t2, s10, 439
                  nop
                  xor          s10, a2, s11
                  srli         t2, s8, 16
                  srli         t3, s1, 19
                  slli         ra, s8, 17
                  sll          tp, a7, s5
                  slt          t2, zero, sp
                  sub          ra, a2, t2
                  addi         s6, sp, -746
                  auipc        s8, 904064
                  ori          s8, tp, 2045
                  sltiu        s5, a5, 1533
                  sub          tp, zero, t6
                  sltiu        s6, s6, 1914
                  auipc        s10, 389993
                  srl          t6, a2, ra
                  auipc        tp, 376865
                  or           s8, tp, s2
                  slt          zero, s0, t6
                  andi         t4, s10, -1449
                  or           zero, s9, ra
                  andi         t1, a3, -1503
                  slli         t3, t6, 10
                  xori         t3, s9, 266
                  srli         t1, t3, 18
                  addi         zero, s8, -1794
                  ori          s9, s4, -1105
                  andi         s0, t5, -1060
                  ori          t5, a5, -1928
                  auipc        gp, 561627
                  srli         gp, t4, 8
                  srli         s5, zero, 23
                  xor          gp, a4, t4
                  addi         t6, s1, 539
                  slti         a0, s7, 1576
                  or           t2, s1, t6
                  addi         s3, t5, -97
                  xor          s9, s10, s1
                  sltiu        a2, a3, 971
                  sltiu        s7, s4, 213
                  andi         t1, t1, 1481
                  ori          tp, sp, 1
                  sltu         zero, s10, t4
                  addi         s1, tp, -1081
                  sltu         a5, a7, tp
                  and          a0, a2, s4
                  slti         t5, a2, -1649
                  slt          s11, s0, ra
                  add          a4, s10, ra
                  slli         a5, s6, 10
                  nop
                  sltiu        a4, s8, 1685
                  sll          s6, s0, t6
                  sub          a0, s4, s6
                  sltiu        a1, s11, -1465
                  sltu         a2, a0, a2
                  srai         s4, s9, 11
                  andi         tp, tp, 1454
                  add          s7, t5, sp
                  nop
                  sltu         ra, a6, a0
                  add          a0, t1, s3
                  srl          t2, a0, t3
                  andi         s1, t5, -579
                  lui          t3, 333811
                  lui          t4, 942926
                  sltu         s8, s0, s1
                  xor          ra, gp, s11
                  sltiu        t3, a5, -727
                  nop
                  sltu         s10, ra, s10
                  srai         s8, a2, 27
                  sra          tp, s8, t2
                  srli         zero, t5, 25
                  sra          t1, tp, s9
                  xori         t2, tp, 6
                  srl          t5, t2, a5
                  sltu         t5, s1, s7
                  andi         s0, s10, -433
                  xor          t3, gp, t4
                  slti         a1, s6, 1362
                  and          s1, s10, a6
                  srl          a1, t4, t5
                  sra          t2, a5, ra
                  and          t2, t2, a4
                  ori          a0, sp, -785
                  srl          t2, a1, a4
                  andi         s1, t3, 1371
                  addi         t4, s0, -1694
                  addi         t5, s3, 621
                  srl          a4, s10, s4
                  add          s2, s6, s10
                  srli         t3, a6, 21
                  sltu         t5, a1, a2
                  sra          t2, tp, s7
                  xori         ra, s3, 472
                  xor          t2, a0, a6
                  srli         a4, s9, 19
                  add          t3, t1, zero
                  slli         s10, s5, 28
                  and          s8, a2, s10
                  srli         t3, t3, 27
                  sltu         tp, t5, a7
                  srl          ra, a0, s8
                  lui          a2, 1019657
                  auipc        s1, 212846
                  xor          s7, s1, a5
                  andi         s0, s0, 1789
                  slt          t5, s2, a1
                  slt          t3, a5, a5
                  slli         a2, a6, 28
                  slti         a2, a7, 1580
                  sll          s4, s0, a1
                  auipc        a5, 376017
                  auipc        s5, 272238
                  nop
                  sll          s7, s8, s2
                  xor          s2, gp, sp
                  ori          s2, a0, 1264
                  sltu         t3, t1, t3
                  auipc        a1, 714909
                  and          gp, s2, zero
                  add          ra, a6, s0
                  add          t4, s2, s11
                  auipc        t0, 218422
                  add          a7, ra, t0
                  srli         s5, a2, 26
                  srai         t6, t2, 1
                  or           zero, s1, t4
                  xor          s9, s0, a4
                  nop
                  srli         a0, s5, 19
                  srl          a4, a4, s3
                  nop
                  srai         s10, t2, 0
                  sub          t6, a2, s2
                  andi         s5, s11, 1234
                  sltu         a2, s10, a6
                  srl          t4, zero, t5
                  slt          a1, ra, zero
                  auipc        t4, 62104
                  lui          s2, 679926
                  addi         tp, s6, 501
                  ori          s6, s9, 1430
                  auipc        s6, 141446
                  xor          s10, a0, s0
                  slt          t6, a2, ra
                  sltu         t1, t3, s1
                  srl          t2, s0, a1
                  andi         zero, a0, -1654
                  auipc        s4, 37624
                  and          s3, s2, a3
                  sra          tp, gp, t1
                  srli         t5, a6, 19
                  lui          s5, 679006
                  slti         zero, t2, 1068
                  slt          a5, a7, a0
                  xor          a2, t4, t1
                  or           t6, sp, a5
                  addi         gp, a4, 1006
                  ori          s0, a6, 757
                  add          s3, a0, a3
                  lui          s1, 336131
                  or           s4, s7, s10
                  xori         s9, a1, 937
                  auipc        s7, 318097
                  add          s8, a7, a3
                  andi         a0, t0, -1590
                  andi         s8, ra, -1276
                  sltiu        a7, a2, -877
                  lui          t6, 811852
                  add          s9, s7, a1
                  and          t0, gp, a3
                  andi         a5, s5, 1019
                  srl          s8, t6, a3
                  slt          s8, a3, t4
                  xori         a5, s9, -523
                  and          s1, s5, t2
                  andi         a2, s1, 626
                  sra          a2, s5, s11
                  xor          s0, a1, a5
                  lui          zero, 380013
                  sub          s7, t4, s5
                  auipc        t0, 689021
                  nop
                  slt          t5, zero, sp
                  srl          s9, s10, s6
                  srai         s10, t6, 10
                  sub          s3, s1, s0
                  andi         s6, ra, 1395
                  slti         ra, s7, -1839
                  sra          a4, t4, t4
                  or           t0, ra, t5
                  nop
                  sltiu        s9, a3, 1045
                  sra          ra, t0, s8
                  addi         t2, t6, -1141
                  slt          s10, zero, s4
                  ori          zero, gp, 872
                  xor          s1, s2, s9
                  xor          tp, s6, a1
                  srl          a0, ra, t4
                  srli         t5, ra, 10
                  lui          tp, 1042665
                  srli         t4, t5, 21
                  nop
                  ori          t3, t5, -1013
                  srai         a4, a2, 23
                  lui          s8, 439088
                  addi         a4, tp, 451
                  andi         s9, gp, -211
                  ori          ra, t1, -1378
                  xori         s8, a5, 192
                  slti         s0, a0, -1050
                  auipc        a2, 567266
                  srl          ra, s2, s1
                  slti         ra, s4, 376
                  slt          s1, a4, s2
                  ori          t2, s0, 577
                  sub          s8, s6, s9
                  xor          s8, a7, t1
                  sltu         s1, s8, s11
                  lui          s4, 728643
                  lui          t3, 704353
                  add          a4, a5, gp
                  nop
                  slli         tp, gp, 3
                  nop
                  slli         s11, a5, 28
                  or           t1, s10, s6
                  li           s5, 0x8166e950 #start riscv_int_numeric_corner_stream_17
                  li           s0, 0x80000000
                  li           s2, 0xffffffff
                  li           s4, 0x617a62e
                  li           a0, 0xeea85c18
                  li           t1, 0xffffffff
                  li           t3, 0xffffffff
                  li           t6, 0x9c8e856d
                  li           s1, 0xffffffff
                  li           s8, 0x80000000
                  auipc        t3, 959191
                  nop
                  nop
                  addi         t1, s2, 495
                  sub          t3, s8, s1
                  add          t6, a0, t1
                  lui          s8, 511291
                  nop
                  add          s5, s5, s2
                  addi         s5, t6, -554
                  lui          t1, 756086
                  auipc        s5, 871584
                  auipc        t6, 168090
                  sub          s8, s0, s1
                  auipc        s1, 824032 #end riscv_int_numeric_corner_stream_17
                  sra          t4, s0, gp
                  srai         a1, sp, 14
                  and          s0, ra, a2
                  add          a7, s0, a2
                  sra          ra, s11, s0
                  sltiu        s6, a6, -845
                  sub          s8, t5, a5
                  or           s10, zero, a6
                  or           ra, t0, a0
                  slt          t3, s7, t4
                  add          gp, s8, a7
                  slti         t6, s11, -823
                  srl          a0, a1, t3
                  slt          zero, t1, s3
                  sll          s9, s11, t5
                  sltu         s8, t1, s10
                  nop
                  nop
                  nop
                  slti         t0, t5, 626
                  andi         t1, a2, 1150
                  srl          a0, a7, s6
                  xor          t6, s7, t1
                  sltiu        t2, s10, -880
                  sra          t4, sp, a1
                  add          a5, t2, a1
                  slli         s7, s7, 9
                  srli         s1, a5, 5
                  nop
                  and          t0, tp, s7
                  srl          gp, s8, s9
                  srai         zero, t5, 8
                  srai         t5, s7, 15
                  srai         s3, s10, 17
                  srl          tp, s2, sp
                  ori          zero, a3, 1207
                  nop
                  lui          a0, 451685
                  srl          a2, t4, gp
                  lui          a4, 724173
                  srl          t3, s0, t0
                  slli         a4, a7, 2
                  sub          t1, s11, t0
                  sll          s9, s2, a5
                  srl          s5, s10, s8
                  sll          a5, s4, s3
                  sltiu        s4, a1, -536
                  sltiu        gp, s7, 1022
                  auipc        t5, 329714
                  srl          ra, t1, s4
                  slti         s1, sp, -998
                  slli         s1, a1, 15
                  and          a4, s4, tp
                  ori          t5, a0, -355
                  srl          t0, t5, s11
                  sll          t0, s9, t0
                  sltiu        s9, s0, 1850
                  slt          s2, t5, s8
                  sub          a5, a3, t2
                  nop
                  sltiu        tp, s9, -72
                  lui          a0, 843789
                  add          s10, ra, s3
                  add          gp, a1, s10
                  auipc        s8, 199758
                  sll          s6, s3, s2
                  andi         s10, sp, 1941
                  xori         t3, a6, 1460
                  srli         t4, s11, 11
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s3, 0x0
                  li           ra, 0x80000000
                  li           t5, 0x0
                  li           a7, 0xffffffff
                  li           t4, 0x80000000
                  li           gp, 0x0
                  li           a1, 0x0
                  li           s0, 0xffffffff
                  li           s5, 0xc89520f9
                  sub          s3, s1, t4
                  lui          a7, 643952
                  addi         a7, ra, -601
                  lui          a1, 808445
                  sub          s5, s1, t5
                  lui          t5, 492717
                  nop
                  auipc        t5, 731024
                  add          s0, s1, t5
                  add          t4, s1, t4
                  auipc        s3, 89991
                  addi         s5, a7, 74
                  auipc        t4, 670124
                  auipc        s5, 565095
                  sub          s1, t4, s3
                  sub          t4, a1, s1
                  lui          s1, 771475
                  addi         t5, gp, -1721
                  auipc        gp, 502328
                  auipc        s1, 1015368
                  addi         s5, t4, -861
                  lui          ra, 701765
                  auipc        s3, 11548
                  auipc        s5, 796560
                  add          s5, s1, ra
                  sub          gp, a1, ra
                  nop #end riscv_int_numeric_corner_stream_0
                  ori          s8, s8, 1276
                  sll          t5, s6, ra
                  auipc        s5, 432510
                  slti         gp, s11, 1587
                  slli         ra, t0, 6
                  xor          t2, s10, sp
                  andi         tp, a4, 1754
                  and          s4, sp, a2
                  nop
                  andi         t4, a5, 1125
                  ori          a7, s8, -1017
                  slli         s9, t6, 28
                  add          s6, sp, tp
                  sll          gp, tp, s9
                  srai         a5, s5, 6
                  sra          s4, t0, sp
                  andi         t5, t6, -1382
                  auipc        s9, 953013
                  slt          s0, t0, s9
                  sltu         a1, ra, gp
                  nop
                  xori         a7, tp, 784
                  srli         t3, a5, 17
                  or           s5, s7, a7
                  xori         a7, s10, 811
                  sltiu        s4, t4, -142
                  xori         a7, a1, -368
                  lui          s7, 507654
                  slli         s2, s5, 16
                  srl          a1, a0, s8
                  slti         s3, t3, -1234
                  xor          gp, s9, sp
                  add          s7, a2, a6
                  slti         s5, s2, -2033
                  srai         t2, s11, 20
                  srai         t6, t3, 18
                  and          tp, s4, s3
                  sltu         gp, t2, t4
                  xor          t1, sp, s9
                  lui          zero, 510730
                  or           tp, tp, tp
                  lui          gp, 562043
                  sltiu        t6, t2, 1484
                  sltu         a4, s6, t2
                  andi         zero, sp, 1065
                  xor          t5, s10, zero
                  addi         t3, s10, -1967
                  auipc        a5, 387261
                  xori         t2, s0, -998
                  srli         s11, s8, 15
                  add          s2, a5, s5
                  andi         t5, s3, 1308
                  srai         a1, a4, 24
                  add          s7, s6, s10
                  add          a1, a2, a4
                  andi         s6, s6, -773
                  sra          s4, a6, t4
                  ori          t0, s9, 778
                  slt          a5, a5, a2
                  slt          tp, a0, a0
                  slli         a2, a3, 2
                  sub          t6, s2, a0
                  slti         zero, s4, -1340
                  sra          zero, a6, sp
                  ori          s8, a0, 442
                  srli         a7, t5, 20
                  ori          ra, s11, 451
                  add          a1, s10, tp
                  slti         s2, s10, -2014
                  and          s5, t6, s4
                  srai         a0, sp, 18
                  srai         s3, a4, 18
                  slti         a7, t2, -337
                  srai         a0, s10, 1
                  slt          s3, s3, s4
                  andi         tp, s4, 2016
                  ori          a4, t0, -397
                  xor          t1, s5, zero
                  srli         gp, s10, 23
                  nop
                  sub          t2, t3, s0
                  sll          s7, a7, sp
                  or           s3, sp, a7
                  or           gp, s5, s8
                  or           s0, s3, a2
                  xori         s1, s2, 1516
                  xori         t0, t6, -783
                  add          gp, s7, a5
                  sra          t4, a2, a2
                  sltu         s9, s0, s0
                  xori         s9, a3, 668
                  ori          gp, tp, 1990
                  andi         t3, s6, -744
                  slt          t5, s0, a6
                  andi         a5, a4, 160
                  xori         tp, a5, -25
                  slt          t1, s2, a1
                  slti         a4, s5, 852
                  andi         gp, s7, 1632
                  xori         s0, a3, 1764
                  srl          s2, a2, zero
                  or           tp, s2, a7
                  nop
                  sltu         t0, s5, tp
                  slti         s2, t3, 305
                  xori         t5, t4, -1839
                  sltu         s2, a3, a4
                  and          s6, gp, t4
                  addi         s2, s11, 1323
                  sub          t3, a6, s8
                  sltiu        s0, a7, 63
                  lui          zero, 468752
                  xori         a7, t4, 161
                  nop
                  lui          t1, 394764
                  lui          s1, 218256
                  slli         t0, t1, 31
                  srl          s10, s9, t3
                  srl          s10, s8, s3
                  nop
                  srai         t5, t2, 1
                  xor          t0, s9, a6
                  and          tp, a6, a0
                  and          a0, t0, s5
                  or           s9, a5, s8
                  slt          gp, a6, gp
                  slli         t4, a0, 11
                  xori         tp, a7, -67
                  srli         s10, a5, 4
                  srl          t0, a0, t0
                  or           t6, gp, tp
                  addi         s8, t4, -1001
                  ori          a4, ra, -41
                  nop
                  xori         s10, s7, -139
                  slt          s7, a5, t2
                  xor          t3, a5, s1
                  xor          t3, a7, t2
                  andi         t1, s8, 338
                  slti         s6, tp, 204
                  lui          tp, 658785
                  add          s9, s0, a1
                  and          zero, t4, tp
                  slt          a7, s3, t4
                  srai         zero, sp, 29
                  sra          s3, t1, t3
                  slli         t3, zero, 1
                  or           t6, t1, s3
                  xor          s4, s1, s4
                  srl          t3, s9, s7
                  addi         s8, s10, 147
                  srl          s9, s7, a2
                  addi         t2, s11, -756
                  nop
                  add          t0, s3, t3
                  ori          t0, ra, -1729
                  nop
                  sub          s1, a5, s2
                  xori         s11, s7, 529
                  or           t0, a3, t0
                  or           s5, a2, s6
                  slt          s0, t5, zero
                  and          s5, a4, t3
                  sll          t5, s7, a5
                  and          s5, ra, s10
                  slt          s7, t2, t5
                  xor          t6, zero, a7
                  lui          s4, 705578
                  add          s2, s5, s0
                  addi         s0, sp, -1943
                  andi         a2, s9, 237
                  xori         t1, t6, -1232
                  sltiu        s10, t4, -2008
                  xor          s10, a0, s11
                  srli         s5, a5, 23
                  nop
                  sltiu        gp, a4, -522
                  add          a0, t2, sp
                  sub          s5, a1, t2
                  or           s3, s1, t6
                  srai         s7, s7, 18
                  srai         a2, a7, 1
                  and          t5, s4, s7
                  lui          s1, 520937
                  lui          a0, 485502
                  slti         a0, t5, -1018
                  nop
                  auipc        ra, 1018232
                  nop
                  ori          s1, t1, -2019
                  slli         s3, s11, 25
                  or           s0, t2, s4
                  auipc        s10, 198974
                  lui          t6, 822381
                  sra          s4, a7, s9
                  sltu         t4, s4, a7
                  addi         t3, s0, -2006
                  srli         zero, s4, 12
                  slli         t3, a6, 7
                  xori         t3, gp, 33
                  auipc        gp, 704549
                  sltu         s7, s10, a3
                  xor          t6, s4, zero
                  ori          t2, s8, -1956
                  auipc        ra, 824976
                  andi         s6, t1, -1964
                  srai         t0, a0, 20
                  slt          gp, s0, a4
                  addi         t0, a1, -1972
                  nop
                  or           t6, s11, gp
                  sub          t4, t0, a2
                  slli         s8, s7, 22
                  slt          s2, s2, s2
                  slt          s5, s7, s10
                  sra          gp, zero, s10
                  sltiu        t0, a0, -484
                  add          a4, s4, ra
                  slli         s4, t1, 4
                  sltu         a7, tp, a1
                  or           a4, t4, s4
                  xori         s5, t1, 1078
                  sub          s6, s4, t5
                  or           s8, s1, s6
                  and          t5, a1, gp
                  auipc        s8, 519564
                  srai         t4, s3, 6
                  addi         a2, t3, 1471
                  xori         s11, s9, -600
                  lui          t0, 941352
                  slt          a5, t6, t0
                  srl          s3, a7, s4
                  srai         s5, t5, 1
                  addi         a1, a0, 1805
                  addi         s9, t2, 1029
                  slti         t5, s5, -1473
                  nop
                  sra          a5, t1, zero
                  nop
                  srai         s2, a3, 31
                  ori          a0, s4, 706
                  or           t1, a4, gp
                  sll          t2, s2, s8
                  slt          s6, s4, s0
                  sltu         t2, s11, s0
                  sub          a4, a6, s9
                  addi         s10, s6, 1212
                  ori          t6, s3, 678
                  ori          a4, s7, -233
                  slt          s4, t4, t1
                  sltiu        a5, a6, 1137
                  andi         zero, t3, -1772
                  srai         t6, zero, 29
                  lui          a2, 59632
                  xor          a5, s5, a7
                  xor          s1, t3, s3
                  srl          tp, t2, a7
                  slt          s3, t6, t6
                  srl          s6, s11, t2
                  andi         s5, s1, -1302
                  sltiu        s10, a5, -1012
                  srai         s3, s2, 0
                  add          s2, a3, a3
                  slli         a7, t1, 13
                  srai         s2, a4, 11
                  ori          s11, a7, -2000
                  ori          s6, s10, 1247
                  add          s10, t2, zero
                  auipc        zero, 79543
                  xori         a2, t0, 1724
                  sltiu        a7, a0, 1574
                  ori          s0, gp, 2016
                  sltiu        s3, ra, 1433
                  slti         s8, gp, 291
                  srai         s4, t2, 24
                  auipc        s6, 9634
                  sll          s0, a6, s2
                  add          s10, s9, s9
                  or           s5, sp, a7
                  sltu         t2, s11, s8
                  sltu         tp, s10, t6
                  lui          s0, 528846
                  lui          t5, 231026
                  sll          s6, t5, t4
                  addi         t5, a3, 1057
                  sll          t3, t0, sp
                  sltiu        a5, gp, -1778
                  srli         s4, t1, 15
                  auipc        ra, 917293
                  sltiu        s3, s0, -1904
                  andi         t0, a2, 912
                  xor          tp, t5, a3
                  xori         s2, zero, 838
                  slli         a5, a1, 6
                  and          s11, s5, t4
                  add          s1, a7, a5
                  andi         a1, s3, 214
                  sltu         s4, t4, tp
                  and          a2, a1, s2
                  srai         s7, zero, 16
                  ori          a7, s10, -841
                  add          zero, s9, a5
                  sll          s11, ra, s6
                  sra          zero, t5, a7
                  xori         s2, a1, 70
                  srl          t6, t2, a7
                  slli         a2, zero, 19
                  srl          t5, a6, zero
                  slt          s1, tp, sp
                  srli         a7, s5, 22
                  or           zero, tp, t4
                  xori         a4, a6, -297
                  or           zero, a7, s8
                  andi         s5, s10, -1416
                  add          a1, tp, a2
                  auipc        t4, 723681
                  sltu         t2, s1, s11
                  sltu         a4, s0, s5
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t4, 0x0
                  li           s5, 0x80000000
                  li           a0, 0x0
                  li           a4, 0xffffffff
                  li           t1, 0x0
                  li           a5, 0xffffffff
                  li           gp, 0xffffffff
                  li           t3, 0x80000000
                  li           s11, 0x1d68b7ae
                  lui          t3, 902755
                  sub          a0, a0, s9
                  add          s5, t3, a5
                  lui          t4, 427416
                  add          s11, a4, a4
                  addi         t4, s11, 1706
                  auipc        s9, 987512
                  lui          t4, 565973
                  add          t3, s5, a4
                  auipc        s11, 672976
                  nop
                  addi         gp, s5, 65
                  add          t4, s5, gp
                  lui          a5, 1035225
                  addi         s11, a4, 588
                  nop
                  lui          a5, 109168
                  addi         a0, t1, -627
                  lui          a5, 986853
                  nop
                  addi         t4, a4, 663
                  sub          t1, gp, s11
                  auipc        t4, 81164 #end riscv_int_numeric_corner_stream_8
                  sll          a7, s3, s11
                  sll          t0, s0, t6
                  sra          t4, t0, s6
                  nop
                  sltiu        s1, s6, 728
                  sll          t0, s8, s0
                  srai         s3, t1, 20
                  addi         zero, zero, 1429
                  nop
                  srli         t6, s6, 29
                  addi         s8, t5, -732
                  sltiu        ra, t6, -1239
                  auipc        s3, 298730
                  xor          t0, s10, a2
                  and          s10, a1, s5
                  sltiu        s1, s5, -573
                  srl          a4, s4, t2
                  sra          t2, t5, a7
                  slt          a7, t6, t2
                  add          zero, a7, s0
                  sra          ra, a1, s9
                  srl          s0, s11, a2
                  auipc        tp, 528104
                  slti         s1, sp, -1106
                  add          s0, zero, a5
                  srl          s11, a0, s10
                  sll          s5, a6, t5
                  add          s7, s9, a2
                  slti         a1, s10, 1776
                  andi         t5, a6, 1427
                  sltiu        s7, a1, 978
                  sra          s9, s7, ra
                  add          t3, s11, s1
                  auipc        s7, 125811
                  sltiu        s0, s0, -1055
                  sltu         s8, s10, a5
                  sltu         t4, a6, tp
                  ori          s0, s6, 1084
                  auipc        s11, 317078
                  srai         s0, a3, 16
                  srl          s11, s8, a6
                  xori         s1, s3, -374
                  lui          t0, 210403
                  ori          t0, s4, -461
                  slti         t6, t4, 755
                  sltu         t3, gp, s6
                  srai         s7, a7, 1
                  sltiu        a4, a1, -1198
                  slt          zero, t3, s10
                  xor          a1, t2, s0
                  srai         s9, a0, 1
                  nop
                  nop
                  slt          s3, zero, a3
                  xori         gp, s6, -1786
                  srai         t3, t1, 14
                  sub          s4, s8, a3
                  addi         t6, s2, 1612
                  slli         t6, a1, 3
                  nop
                  lui          t3, 932582
                  sltiu        tp, a5, 980
                  sra          t0, a5, s9
                  slli         a4, s1, 14
                  slti         s0, zero, -1106
                  add          a4, s4, a3
                  sll          zero, ra, a1
                  sltiu        s0, s6, 364
                  srli         s7, t0, 13
                  srl          s7, a7, s1
                  andi         a2, tp, -753
                  andi         s7, s9, -869
                  addi         s11, a4, 788
                  xori         s4, t0, 1634
                  lui          s9, 458530
                  sra          a5, gp, a0
                  xori         ra, s7, 1653
                  srai         a7, tp, 3
                  ori          a1, s7, -1323
                  slt          gp, s5, s0
                  sltiu        a7, gp, -1257
                  sub          s8, a0, a1
                  slt          tp, tp, zero
                  sub          s6, s6, t0
                  and          t1, a5, s4
                  xor          a5, a4, tp
                  sra          s10, a0, a7
                  addi         s5, t4, 1461
                  sll          s9, a7, a7
                  sltu         a5, t0, t0
                  nop
                  sub          s2, tp, t1
                  lui          s5, 291796
                  andi         s1, t3, -427
                  ori          a1, a2, -110
                  xor          s7, s4, t3
                  sra          t6, s10, s0
                  xori         s2, s4, 740
                  sltiu        a2, t2, -1868
                  lui          s7, 866235
                  sub          a0, sp, s2
                  sra          s9, s2, s10
                  slli         a7, a5, 0
                  sra          zero, t3, t6
                  lui          s6, 910347
                  srai         tp, s9, 3
                  sra          tp, t5, s7
                  auipc        s1, 978593
                  slti         s4, s8, 741
                  addi         s1, t2, 424
                  sll          t3, a3, s0
                  sltu         a7, a6, t3
                  srl          t0, s2, ra
                  nop
                  srli         s8, s7, 23
                  slti         t5, t0, 1375
                  slt          t6, sp, s11
                  ori          tp, s8, 381
                  nop
                  or           a5, s11, s4
                  slti         zero, s4, 1395
                  sll          s8, a6, s10
                  nop
                  slt          t3, a6, a2
                  slti         t5, a1, -777
                  nop
                  slli         s9, s9, 1
                  sltiu        s11, t1, -1368
                  xori         s10, t2, 1569
                  sltu         a0, a0, s3
                  sltu         gp, s4, a6
                  and          ra, a5, t1
                  sll          s11, s10, a2
                  slti         gp, s5, 1124
                  xori         s10, s10, -582
                  sub          a5, tp, s0
                  and          a5, s1, tp
                  sub          s7, s11, s9
                  sra          a2, t3, t1
                  sltiu        s4, s3, -907
                  ori          a7, gp, -525
                  sll          t6, t1, a2
                  xor          ra, t2, a6
                  lui          t1, 970112
                  andi         s10, s9, 116
                  addi         t6, a5, -180
                  nop
                  slt          t3, t3, a5
                  sltu         tp, a7, t0
                  sltu         s2, s3, s2
                  sll          a0, s7, s10
                  xor          s9, t2, ra
                  nop
                  srl          s11, s11, t1
                  addi         t2, gp, -1178
                  srl          t2, a6, tp
                  addi         t6, a3, -1754
                  xori         s7, s2, 1453
                  sltu         s1, s9, s9
                  addi         s10, t1, -1637
                  slti         s8, t3, 1093
                  xori         s3, a5, -511
                  addi         a4, a7, 1147
                  ori          a1, t5, -1273
                  sll          tp, s7, t3
                  srai         t0, s5, 13
                  slti         s0, a2, 1564
                  add          s1, s5, t2
                  ori          s5, a1, -1682
                  ori          tp, a5, -1890
                  slli         s9, tp, 1
                  sra          zero, s2, a4
                  sltiu        a0, a7, -1598
                  sll          t6, s4, tp
                  or           a2, s9, t0
                  srli         a5, t4, 7
                  addi         s0, ra, 382
                  sub          a0, tp, s0
                  sltu         s6, s10, t0
                  xori         zero, s0, -1819
                  srai         tp, sp, 8
                  nop
                  ori          t0, s11, -1324
                  xor          t2, s2, a7
                  xori         t6, t3, -5
                  srli         a1, t4, 30
                  andi         t5, s3, 1121
                  andi         t5, a5, -1495
                  xori         s6, s11, 1207
                  slli         a0, s9, 3
                  auipc        gp, 248048
                  or           s0, a4, a5
                  sll          s4, a7, s7
                  sra          s0, s7, t1
                  xor          s6, a6, s5
                  addi         s10, t0, -517
                  sub          t1, t2, zero
                  ori          a4, a7, -98
                  lui          s4, 485642
                  srl          s8, a6, a2
                  sra          s7, tp, t6
                  ori          s11, a0, -1215
                  sltiu        t4, s7, -1327
                  xori         a2, s8, 1499
                  nop
                  srli         s10, s8, 26
                  slt          s7, a1, s2
                  lui          ra, 653780
                  auipc        t5, 932706
                  slti         s5, a3, -461
                  sub          s4, a4, zero
                  and          t6, sp, a3
                  srl          s0, a4, sp
                  sra          s6, s7, tp
                  ori          s8, s3, 1485
                  add          t6, s2, s0
                  slt          s4, t3, t6
                  and          s7, t0, a5
                  slti         s7, t4, -1984
                  slt          s5, tp, t6
                  add          tp, tp, a4
                  lui          t3, 84681
                  or           s5, s2, a0
                  addi         s9, a1, -658
                  sub          a2, a2, a7
                  auipc        ra, 242067
                  auipc        gp, 979358
                  srai         s9, s2, 15
                  xor          s9, a2, s11
                  srl          s1, s3, t3
                  and          s9, gp, s10
                  sra          s3, s6, t2
                  srl          t4, s6, s8
                  sltiu        s1, s7, 1314
                  nop
                  srai         s5, t3, 29
                  ori          s3, t5, -908
                  add          s1, s8, a0
                  addi         s7, a0, -1253
                  xor          s7, tp, a1
                  lui          ra, 66695
                  srai         t3, ra, 0
                  sll          t1, a4, sp
                  srl          a4, s2, tp
                  andi         s8, s5, -423
                  slti         zero, a2, 1658
                  srl          tp, s3, zero
                  auipc        s10, 866996
                  ori          s4, t0, -44
                  sra          a7, tp, tp
                  xor          s1, t6, a3
                  slti         s6, s8, 1547
                  xori         t1, s3, 1280
                  sltiu        s3, ra, 799
                  nop
                  addi         a2, t2, -1364
                  add          t3, gp, s2
                  sra          ra, t5, a6
                  srai         s6, sp, 8
                  slti         s9, s8, -270
                  srli         tp, t4, 8
                  slt          s11, s4, a2
                  slli         t3, s9, 3
                  sltiu        a5, sp, 878
                  sltiu        ra, s5, -248
                  slli         s2, t5, 18
                  srli         t0, s2, 2
                  and          tp, t6, s3
                  srai         t2, t3, 19
                  sltu         t6, s3, s0
                  addi         t6, s10, 1767
                  sll          t3, t3, s5
                  srl          t0, t5, s9
                  ori          gp, t3, 1972
                  and          t2, a5, a7
                  lui          s7, 937378
                  addi         s0, ra, -1255
                  lui          t6, 302262
                  nop
                  srai         a5, s9, 10
                  slti         a7, a1, 32
                  slt          s6, s0, a6
                  and          s0, t1, a1
                  slli         t0, t5, 23
                  srli         t5, a2, 9
                  add          t0, a4, ra
                  xor          a5, s8, s7
                  xor          s3, t5, a5
                  srai         a7, s10, 6
                  sltu         s11, a1, a3
                  slli         t6, a7, 30
                  srl          s4, s4, t3
                  sub          gp, s5, s4
                  srli         gp, a4, 10
                  add          s4, s0, a5
                  xor          t6, t2, s8
                  xori         ra, a2, -427
                  xori         s9, s2, -245
                  xori         t0, s10, 1406
                  addi         s5, s9, -935
                  sub          t6, s10, t5
                  andi         t5, t3, -1020
                  sll          s6, a2, t2
                  srai         t0, a0, 16
                  slli         s2, a6, 12
                  srai         a0, a0, 20
                  sltu         t1, a0, t6
                  or           a4, s3, a5
                  sltiu        s1, s3, -490
                  sll          s3, t1, t0
                  sltu         ra, t6, s1
                  slli         a0, a7, 14
                  xori         t4, a2, -610
                  addi         s7, a6, 1338
                  sltiu        s8, tp, -678
                  sltu         tp, a1, a3
                  srai         s2, t6, 12
                  auipc        gp, 835226
                  srl          s7, zero, t5
                  xori         t1, t4, 88
                  slti         s7, a2, 164
                  or           s10, a2, s7
                  and          s0, s0, s10
                  xor          a0, a2, a7
                  add          t2, s3, s3
                  srl          t5, a2, tp
                  xori         zero, s11, 1444
                  ori          s5, ra, -1556
                  srli         s7, ra, 5
                  slti         s4, s0, 1275
                  sltu         s6, t3, s1
                  slli         a0, a7, 26
                  slt          zero, t0, a5
                  srli         t5, t4, 21
                  srli         t2, s11, 1
                  slt          t2, s6, s4
                  slt          s8, s5, t1
                  addi         t3, s9, 224
                  sub          gp, s1, t5
                  srl          t3, a5, a5
                  xori         s7, a5, 622
                  sub          s10, t5, s1
                  nop
                  slti         t5, zero, 109
                  ori          s4, s3, 1196
                  sra          ra, t4, a6
                  sltiu        a5, a1, -1433
                  lui          s11, 248817
                  and          s2, a1, s8
                  srai         s3, a6, 5
                  lui          tp, 1040394
                  lui          s10, 899744
                  slt          a5, t3, a1
                  sub          t2, s10, a5
                  srli         s8, t2, 15
                  slt          s10, tp, s2
                  srai         tp, t0, 27
                  or           zero, s10, s11
                  and          t0, t5, s2
                  sltiu        tp, t1, -1462
                  slli         a5, a4, 6
                  xor          t5, t4, t1
                  lui          gp, 718598
                  sub          a2, s1, tp
                  and          s7, sp, t3
                  srli         s7, s7, 10
                  srli         t0, tp, 5
                  lui          t4, 465532
                  add          a5, a6, t2
                  srli         t5, sp, 28
                  srl          s10, t4, s2
                  auipc        a7, 857636
                  add          s11, a0, a5
                  srai         t1, s2, 23
                  or           gp, a6, s8
                  slt          s6, s6, t6
                  nop
                  slli         s10, t5, 19
                  or           s8, a4, a3
                  auipc        t4, 542834
                  xor          a5, s7, a4
                  andi         t6, t3, -278
                  sltu         t6, s0, s11
                  ori          t2, s9, 1797
                  lui          s10, 627011
                  andi         t6, zero, -1530
                  andi         s9, sp, -968
                  xor          a4, s1, s10
                  slti         a4, s9, -1525
                  ori          t2, a7, 42
                  slti         zero, s3, -1492
                  sra          t5, s4, s11
                  slli         s9, s7, 2
                  slti         gp, a6, 1239
                  slli         zero, s4, 19
                  sra          a0, t0, a6
                  addi         a7, t0, -813
                  xor          t1, tp, s2
                  xor          s11, tp, s0
                  or           gp, sp, tp
                  ori          s11, t3, 351
                  andi         a2, t6, -1500
                  sub          s11, s7, a4
                  sll          ra, t2, sp
                  or           t2, sp, a5
                  slti         s4, s3, 572
                  sltu         a2, t6, s2
                  slt          s5, s6, t3
                  lui          t0, 796520
                  sltu         s5, t4, t0
                  sra          s4, s7, t3
                  lui          s8, 643160
                  slt          a5, s6, tp
                  slli         t6, s10, 24
                  sltiu        ra, sp, 1935
                  nop
                  slli         s11, a7, 7
                  and          a4, s2, s6
                  and          tp, sp, t1
                  sltu         a1, s1, s3
                  srl          s7, s3, s3
                  xor          t5, a1, t4
                  srai         s11, s9, 19
                  and          t1, t0, s5
                  sltiu        s7, a0, 518
                  sll          ra, ra, t5
                  and          s8, a2, a3
                  auipc        s10, 744987
                  or           tp, tp, t3
                  sra          gp, t1, t3
                  slt          gp, a4, t5
                  auipc        a0, 95403
                  add          a5, t0, s8
                  slli         s2, s4, 16
                  srl          s6, tp, a6
                  xori         a5, gp, 1033
                  srli         a0, a0, 9
                  addi         t6, a7, 475
                  add          s5, s6, s9
                  andi         s0, zero, -1339
                  ori          a2, s4, 184
                  sra          t4, s3, gp
                  slt          s8, ra, a4
                  ori          gp, s5, -201
                  and          a4, a5, a1
                  andi         ra, ra, 435
                  add          s11, s9, t4
                  and          s7, s11, t2
                  sub          s1, s4, t3
                  lui          a2, 34487
                  slt          s0, s0, a7
                  xori         gp, s3, -1488
                  nop
                  lui          s0, 183741
                  nop
                  sra          t4, s10, a6
                  lui          tp, 169488
                  nop
                  and          ra, t4, s4
                  lui          t3, 264910
                  slt          a0, a0, a4
                  srai         a4, s10, 12
                  ori          t4, ra, 1469
                  auipc        gp, 809335
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s7, 0x55521a08
                  li           s6, 0xffffffff
                  li           s1, 0x0
                  li           t1, 0x678fd18
                  li           t0, 0xffffffff
                  li           t2, 0xffffffff
                  li           a7, 0xffffffff
                  li           s11, 0x0
                  li           t6, 0x0
                  nop
                  auipc        t4, 834671
                  sub          t0, s7, s7
                  addi         t0, t4, 1234
                  auipc        t4, 92514
                  lui          s7, 346877
                  addi         s6, t4, 613
                  lui          t6, 257642
                  lui          t4, 986922
                  addi         s7, t1, 1432
                  nop
                  auipc        s6, 921099
                  addi         t1, a7, -2031
                  auipc        s11, 575117
                  sub          a7, s1, s1
                  sub          t6, s7, s6
                  lui          t4, 308942
                  add          t1, t2, s11
                  auipc        t1, 63912
                  nop
                  auipc        t2, 1034709
                  lui          s1, 827866
                  auipc        t6, 14793
                  auipc        t0, 499655
                  nop
                  add          s6, s1, s11
                  sub          t1, s7, a7
                  lui          t0, 119432
                  sub          s1, t1, s1 #end riscv_int_numeric_corner_stream_6
                  lui          s1, 526517
                  add          tp, s0, a2
                  xor          s4, sp, s3
                  auipc        a2, 629863
                  slli         a5, s4, 26
                  and          s8, t1, a6
                  xori         t2, s4, 1819
                  xori         a7, a1, -1832
                  sll          s7, sp, s3
                  sub          s10, t0, ra
                  auipc        a7, 423510
                  sll          a0, a7, a0
                  srai         t6, s0, 7
                  slti         s11, s6, -508
                  sltu         gp, s11, s1
                  ori          s8, s9, -403
                  srli         s10, t2, 10
                  slti         s8, sp, -1869
                  auipc        s11, 595151
                  xori         t4, a5, 1889
                  sra          a5, tp, t4
                  srl          a4, sp, a1
                  slti         a7, tp, 1443
                  add          t6, a1, t6
                  and          s9, s7, s8
                  srli         tp, s7, 14
                  slt          s7, sp, t2
                  sll          s10, tp, t6
                  slt          s0, s3, t4
                  sltu         a2, t6, t1
                  andi         t6, sp, -34
                  slti         s2, s7, 218
                  ori          t2, a0, 725
                  slt          s10, t5, a3
                  slti         s2, s6, -1999
                  add          s5, t5, t2
                  and          s11, gp, s5
                  xor          s7, t2, a2
                  slli         zero, gp, 2
                  and          t4, s1, a5
                  auipc        gp, 813074
                  sll          s1, t5, a1
                  sub          t6, t3, s4
                  auipc        s4, 197531
                  srl          s6, s11, s7
                  sll          s2, a0, s3
                  slli         zero, zero, 21
                  lui          t0, 643477
                  sltiu        zero, s11, -1754
                  srli         a1, a2, 18
                  andi         a1, s8, -278
                  slli         t1, tp, 13
                  sltiu        s9, s1, -482
                  xor          s7, ra, s8
                  sub          t5, t1, s2
                  or           gp, ra, t0
                  xor          t6, gp, s2
                  xori         s8, a2, -594
                  add          s4, tp, s10
                  xor          t5, a6, a3
                  slti         a7, s9, 1340
                  and          t1, s1, a3
                  srai         s5, t0, 21
                  sll          t2, a6, s7
                  auipc        s9, 240259
                  srai         s3, s2, 30
                  andi         tp, t4, -1065
                  sltu         s5, a1, zero
                  slt          gp, s9, s5
                  slti         s8, a7, -1899
                  sltu         s4, t1, t4
                  and          s4, s6, s9
                  auipc        s11, 51597
                  srai         t2, a5, 1
                  sub          a1, s4, t6
                  srai         t0, a7, 21
                  srli         s4, t3, 15
                  nop
                  nop
                  slli         s1, t6, 30
                  and          t5, a5, s4
                  xori         a5, a1, -1707
                  slti         s1, a4, -1210
                  sll          a4, a1, t3
                  srli         ra, t6, 30
                  or           t5, t5, s8
                  sltiu        tp, s5, -29
                  addi         t5, s2, -1791
                  srli         gp, t2, 18
                  xor          s1, a3, a0
                  sra          zero, a5, a2
                  sub          t4, s9, zero
                  sll          tp, s10, t4
                  sltu         t1, s2, zero
                  srai         t2, s1, 7
                  slli         s9, t0, 27
                  slti         t4, s9, 191
                  addi         t0, t4, 1060
                  srli         s4, s8, 19
                  nop
                  sltu         s6, a5, s7
                  xori         a0, ra, 1466
                  sub          s5, a2, s3
                  xori         a0, t0, -366
                  andi         s2, s4, -540
                  srli         tp, t2, 21
                  sltiu        s8, t2, 1794
                  add          s0, t6, s3
                  srl          s0, a7, ra
                  lui          a2, 512339
                  andi         s1, tp, 2006
                  addi         t0, t0, 1711
                  srai         t5, t2, 5
                  or           s5, zero, gp
                  slti         t1, a6, 1409
                  or           t4, s8, t4
                  slli         a4, a7, 4
                  or           s7, t4, t0
                  auipc        a5, 505648
                  auipc        s6, 540453
                  srli         s7, s1, 30
                  srl          s2, a6, t2
                  sub          tp, s6, ra
                  andi         a2, s2, -161
                  andi         a1, s10, -1061
                  lui          s1, 915469
                  nop
                  and          t3, s1, t6
                  sub          s11, t5, a1
                  sltiu        a2, a6, -1820
                  srai         t4, s1, 30
                  andi         s11, t4, -43
                  slt          a2, t6, s1
                  sltu         s11, s2, a5
                  nop
                  sltiu        s5, s7, -651
                  add          t6, s4, t2
                  and          t3, sp, t1
                  nop
                  sll          a7, s4, s0
                  xori         a4, gp, 602
                  or           t0, a7, s0
                  sub          s3, ra, a6
                  slti         s11, tp, -51
                  addi         t2, s1, -456
                  slt          zero, a5, t1
                  sltiu        s1, zero, -1017
                  srl          s0, s5, t1
                  add          s7, sp, s0
                  sll          a7, a4, s6
                  lui          s9, 876969
                  lui          gp, 757905
                  xor          tp, s11, a1
                  add          s6, s10, a0
                  srl          s2, s7, t0
                  srli         s1, a3, 21
                  or           gp, ra, s6
                  sltu         t4, a2, s1
                  slti         s1, s6, -18
                  sub          tp, s3, s4
                  ori          a4, gp, 1420
                  slt          t1, s10, s4
                  srai         s11, a7, 21
                  xori         a7, s0, -519
                  and          tp, t4, a1
                  addi         s5, a7, -214
                  xor          s7, s8, a4
                  and          s3, s7, s7
                  ori          t5, a5, -1162
                  srai         s5, a4, 27
                  sltiu        s7, t5, 1322
                  sltiu        s4, t3, 1583
                  add          s0, sp, a7
                  slt          a0, s0, t6
                  xor          s0, t6, s10
                  sra          s6, a3, t3
                  add          s1, a4, t5
                  sra          t3, t5, s3
                  sll          t0, s6, a2
                  nop
                  ori          s2, a7, 958
                  sll          t5, s10, s2
                  andi         s7, tp, 1739
                  slti         t3, zero, -872
                  ori          s8, a5, -56
                  ori          a0, a5, -156
                  sub          t2, s2, t1
                  lui          t2, 1029296
                  slt          a1, t6, t2
                  sll          a2, a7, s3
                  slli         s8, ra, 11
                  nop
                  xori         ra, a4, -740
                  or           s11, s1, t2
                  xor          gp, tp, s11
                  nop
                  sra          t0, a6, s7
                  srai         s9, tp, 8
                  srai         tp, sp, 19
                  lui          tp, 207761
                  nop
                  slti         t4, s8, -2002
                  ori          a2, s6, -1550
                  srai         t1, s1, 27
                  xori         s7, a1, 1400
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s7, 0x80000000
                  li           s0, 0xffffffff
                  li           s2, 0x80000000
                  li           t0, 0x0
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  li           s11, 0xffffffff
                  li           s3, 0xffffffff
                  li           t3, 0x0
                  lui          a1, 733002
                  nop
                  add          s3, a4, s2
                  add          s11, s2, s0
                  auipc        a4, 245717
                  lui          s3, 436564
                  nop
                  sub          s0, s3, a4
                  lui          s11, 934932
                  auipc        a5, 373988
                  lui          a1, 795690
                  add          t0, a5, s3
                  auipc        a5, 631894
                  addi         a5, s2, 353
                  sub          a4, s0, s2
                  nop #end riscv_int_numeric_corner_stream_18
                  sltiu        s10, s9, 1136
                  nop
                  slli         s11, zero, 8
                  add          a1, a1, s0
                  auipc        t3, 603292
                  slti         a1, s2, 1151
                  slt          t4, a7, a3
                  add          s2, s11, zero
                  nop
                  xori         s0, zero, 1449
                  ori          a7, s5, 278
                  srl          s0, a1, a3
                  srai         a7, tp, 24
                  sltiu        s4, s2, 118
                  srli         t5, a3, 22
                  lui          s4, 1002615
                  xori         s9, a1, -1934
                  slt          s4, a3, tp
                  auipc        t0, 976525
                  srl          s10, t1, s2
                  sra          zero, t4, sp
                  slli         t6, s9, 27
                  xori         s2, s9, 1640
                  slli         s1, gp, 2
                  slli         t1, t3, 14
                  sub          gp, a1, t5
                  sub          s9, a7, t6
                  add          a5, a0, s7
                  srli         ra, sp, 29
                  sltiu        ra, t3, -51
                  sltu         a7, a1, t6
                  xori         a2, t0, -45
                  auipc        s2, 235289
                  srl          gp, s8, t3
                  srl          zero, s1, s0
                  and          s1, gp, s9
                  sltiu        s9, t3, 604
                  sltiu        s7, ra, -723
                  sltiu        s1, gp, 1200
                  sra          a7, gp, s10
                  sub          s3, tp, s1
                  srai         s4, t3, 22
                  or           tp, s9, t4
                  addi         t3, zero, -459
                  auipc        a0, 1045614
                  andi         s5, ra, -361
                  sltiu        s7, s11, -1522
                  auipc        t5, 106343
                  sub          s8, tp, gp
                  srli         ra, a2, 29
                  add          t1, gp, s2
                  slli         a5, zero, 11
                  auipc        s0, 332201
                  nop
                  ori          a2, s0, -462
                  nop
                  srl          t2, s3, a5
                  addi         a0, a4, 955
                  sltu         a1, s1, s3
                  or           s1, gp, a6
                  nop
                  xor          s10, gp, a3
                  auipc        s4, 519107
                  sltu         a1, a6, s4
                  auipc        t1, 306356
                  ori          s5, a5, 1384
                  andi         a4, a0, 43
                  ori          a7, s3, -1606
                  slli         s11, s0, 13
                  or           s4, gp, tp
                  ori          s5, s5, -414
                  ori          s8, s9, -1659
                  ori          t0, sp, -1280
                  srai         a4, a4, 6
                  xori         s8, s1, 1417
                  addi         s9, t1, 1865
                  sub          s0, s9, a7
                  sub          s8, t2, s9
                  xori         tp, a2, 663
                  sltiu        a5, t0, 338
                  slli         s11, sp, 5
                  sub          a7, s6, s10
                  srai         s7, sp, 15
                  lui          zero, 390320
                  nop
                  sra          s7, t1, a5
                  sltu         s7, a3, s8
                  sub          s10, tp, s4
                  srli         t6, a1, 4
                  lui          t4, 97311
                  srl          t5, a1, a7
                  srl          tp, a4, a6
                  srai         a7, t2, 15
                  srl          s5, a6, s11
                  nop
                  sub          t5, s10, s10
                  xori         a0, ra, 703
                  sltiu        s6, s4, 768
                  srl          a5, a1, s10
                  lui          t3, 35733
                  ori          a1, a6, -1488
                  or           a7, s5, t3
                  addi         s5, a2, 551
                  xori         a4, s1, -126
                  addi         a5, s8, 1274
                  ori          t2, s5, 621
                  sltiu        s10, s5, -907
                  and          t3, s8, gp
                  andi         t0, s7, -750
                  sll          zero, s6, a4
                  addi         gp, ra, -1648
                  or           a0, s4, s5
                  slti         t0, a2, -1242
                  slti         s6, a6, 1716
                  nop
                  lui          s2, 634819
                  nop
                  srli         t5, s8, 7
                  andi         a7, s6, -1201
                  addi         zero, t0, 52
                  slli         t6, s3, 18
                  auipc        s7, 930421
                  sub          t6, tp, s0
                  nop
                  srli         s7, t0, 28
                  slt          s4, t5, t2
                  ori          s9, s9, 218
                  or           s7, t1, t3
                  addi         t4, s11, -2025
                  sra          s0, a6, tp
                  ori          s4, a6, -703
                  auipc        s3, 154472
                  xor          s5, s1, s7
                  auipc        a0, 883257
                  nop
                  add          s7, s8, a2
                  or           t6, a6, t4
                  slt          gp, s3, s4
                  addi         zero, s8, -652
                  slti         t6, t5, 1510
                  andi         a4, a3, -354
                  ori          s0, t6, -450
                  and          a4, t1, a4
                  lui          a5, 926790
                  or           s10, s9, s11
                  srai         s3, s0, 5
                  addi         s9, s10, -626
                  or           s8, s0, a0
                  sll          s4, s11, a6
                  lui          tp, 28236
                  auipc        s3, 69699
                  sll          zero, s8, sp
                  slli         t2, zero, 18
                  sra          s4, s8, s10
                  addi         t5, a2, -1066
                  slli         a5, s3, 15
                  srli         s1, s2, 28
                  andi         t6, a1, -439
                  sltu         a0, t2, s10
                  srai         t5, t4, 2
                  slli         tp, a7, 14
                  srai         t4, tp, 2
                  slli         s11, gp, 31
                  xor          s6, s11, s1
                  auipc        s0, 48341
                  or           s9, s2, a4
                  and          s10, s5, s9
                  sub          s2, a3, t0
                  sra          s8, s10, s4
                  ori          t6, s6, -1063
                  ori          t6, a2, 1279
                  sra          s0, a3, ra
                  addi         zero, s3, -611
                  and          s8, t3, t4
                  xori         s5, sp, -1401
                  and          tp, tp, s4
                  srai         s1, s7, 20
                  andi         t2, tp, -461
                  slli         t3, s4, 8
                  srl          a7, t1, s3
                  slt          gp, a3, t2
                  addi         a1, s2, 1419
                  auipc        s2, 561214
                  xor          a1, a2, a5
                  sll          a0, a4, ra
                  andi         a7, a3, -834
                  sub          s3, s9, a1
                  xori         s11, sp, -1182
                  or           a0, t6, t3
                  slli         zero, s9, 13
                  andi         a7, a3, 548
                  sll          gp, t5, gp
                  sub          zero, a7, s5
                  auipc        s9, 671025
                  auipc        a4, 334589
                  addi         a2, s2, -1714
                  auipc        s1, 469167
                  srl          a0, t2, t6
                  srai         s5, t5, 1
                  sltiu        s11, a2, -7
                  sltu         t2, s6, t2
                  srli         t0, s9, 11
                  sltiu        t0, s2, -1185
                  srl          zero, t3, s6
                  add          s9, a3, ra
                  sll          ra, s6, a6
                  xori         a5, a6, 998
                  srl          gp, s9, a2
                  xor          s6, t5, t6
                  sub          s6, s7, s5
                  or           s0, tp, t2
                  srl          zero, a6, tp
                  nop
                  nop
                  and          tp, t3, t6
                  sltu         s9, a0, a2
                  ori          t5, s7, 852
                  slt          a2, s0, s1
                  sll          ra, tp, s6
                  srai         s8, a1, 13
                  slti         s5, sp, -1780
                  ori          a7, zero, -2011
                  and          s8, a6, a7
                  slti         s2, s5, -355
                  andi         s2, tp, -363
                  slt          s1, a1, zero
                  xori         a1, a1, -209
                  slt          t2, s10, a2
                  or           s1, s8, a2
                  slti         a7, t3, -1341
                  sltu         s8, s5, s8
                  srli         t3, t2, 17
                  or           a5, a5, t2
                  slt          zero, a2, s7
                  lui          gp, 702764
                  srl          t2, t5, sp
                  srai         t0, s5, 14
                  nop
                  slt          t5, s6, sp
                  addi         a5, tp, 1525
                  auipc        ra, 400844
                  sll          gp, s9, tp
                  xori         t5, gp, -1729
                  sub          s3, s10, ra
                  and          t4, a6, a7
                  sltu         t4, t5, zero
                  lui          a4, 927919
                  sra          a7, a0, a1
                  sltiu        a7, s11, 400
                  srli         s8, s7, 22
                  andi         t3, t4, -54
                  sll          t4, s7, tp
                  lui          a7, 1008597
                  srai         a2, a7, 21
                  slti         t6, t0, 1726
                  slli         t5, gp, 18
                  or           s10, a0, s8
                  sll          s1, tp, t2
                  sra          s11, s10, s5
                  add          s10, t0, a6
                  auipc        t0, 433217
                  or           s10, t5, a0
                  slt          gp, a5, s6
                  xori         s10, a1, -1232
                  srai         a5, a3, 24
                  slt          s0, t3, s1
                  ori          gp, t5, 922
                  sll          s7, sp, t2
                  nop
                  sra          s5, a7, s5
                  xor          s6, a6, s2
                  srl          s10, gp, a5
                  andi         s8, t3, 65
                  addi         t6, a1, 2007
                  sra          gp, s4, s4
                  lui          s3, 980028
                  auipc        s6, 813311
                  add          s4, tp, a2
                  slli         s10, a2, 17
                  sub          s6, a2, s0
                  srl          t4, a7, s6
                  sra          a2, s10, sp
                  sub          zero, s3, a4
                  and          zero, t1, t1
                  sll          t1, s9, sp
                  xori         s9, t2, 1434
                  sub          s4, a3, gp
                  ori          a2, s0, 1896
                  or           s11, s8, gp
                  srl          a0, t2, a0
                  slli         s0, s0, 4
                  srli         a1, t4, 21
                  slli         s3, s5, 10
                  ori          s1, t4, 1472
                  andi         s2, t4, 697
                  sra          a2, t6, s6
                  slti         s10, s7, -643
                  sra          s0, a3, t2
                  srai         s7, a3, 26
                  or           a1, s4, s1
                  xori         t4, t4, 1221
                  srl          s8, t3, s9
                  add          s9, t6, a4
                  sll          s5, s1, t5
                  sll          s7, sp, a7
                  srai         s0, gp, 25
                  sltu         t6, t5, s7
                  srli         a0, a3, 16
                  slt          s0, s4, s0
                  sra          s7, s6, a0
                  or           t2, s6, gp
                  nop
                  or           s2, tp, s9
                  auipc        tp, 112705
                  sltu         s1, tp, a5
                  slti         s6, a1, 92
                  sub          s4, s4, tp
                  slt          s7, a0, a1
                  lui          s5, 539312
                  auipc        s7, 993430
                  slt          t4, s2, tp
                  sltu         s3, sp, a4
                  srli         s11, t3, 14
                  andi         a2, gp, -675
                  lui          t4, 826305
                  and          t2, t6, a3
                  andi         s9, a6, 1317
                  sub          t3, s1, s2
                  ori          tp, t6, 462
                  and          s0, s0, s6
                  slli         t6, tp, 5
                  srl          t6, a1, s9
                  andi         zero, ra, -1776
                  sub          s7, s8, a5
                  auipc        s2, 436138
                  ori          a5, a6, 197
                  auipc        s0, 246114
                  auipc        a5, 713188
                  or           s3, a3, s7
                  slti         t3, s5, -326
                  slt          t5, a4, s3
                  addi         t4, a5, -356
                  xor          t5, a5, sp
                  srli         zero, zero, 19
                  sll          t4, a6, t3
                  ori          tp, s11, 1169
                  andi         t6, a6, 905
                  lui          s4, 176268
                  addi         gp, s4, -499
                  sra          s11, a3, s8
                  andi         s0, s9, -1750
                  srai         a5, a7, 13
                  and          zero, a4, t3
                  nop
                  sltiu        t4, s1, -682
                  srai         s10, tp, 25
                  sra          a7, t2, a4
                  sra          a7, t5, s1
                  sltiu        s8, sp, 168
                  sub          s4, t2, a7
                  srl          t2, s1, a5
                  sub          s2, t1, a4
                  add          s4, a7, s8
                  slt          gp, s4, a0
                  nop
                  addi         s7, s11, -462
                  sll          s7, a5, s6
                  sltiu        s9, sp, 174
                  nop
                  sltu         s4, s3, a2
                  sltu         a5, a4, t3
                  add          t4, s1, gp
                  auipc        zero, 659897
                  and          a2, s9, s10
                  sltu         s8, s4, t5
                  lui          s2, 241636
                  srli         a4, t3, 23
                  sll          gp, zero, s4
                  and          t0, tp, a3
                  ori          a1, s7, 1904
                  slt          s11, t2, s10
                  xori         s3, a4, 407
                  xor          ra, s8, s10
                  srl          s3, s8, t4
                  srl          s3, a3, s6
                  slti         t6, zero, 146
                  slti         t2, t2, 897
                  auipc        zero, 673867
                  add          s9, s8, a1
                  and          a5, a5, s9
                  sltiu        a5, t3, -343
                  sll          t3, a2, s11
                  slli         s10, a5, 15
                  or           a7, s1, ra
                  slt          s1, zero, a4
                  andi         t1, a4, -1043
                  sub          a2, a6, gp
                  andi         t6, a3, 652
                  srl          t2, gp, a4
                  sltu         t0, a0, a6
                  add          a1, t6, t1
                  slt          a4, t6, t2
                  srai         s9, t1, 1
                  srli         a4, ra, 29
                  slt          a4, t1, sp
                  andi         a2, t5, 1265
                  sub          t4, t0, tp
                  sltu         t0, tp, a4
                  srai         s8, ra, 5
                  lui          t2, 827361
                  xor          t5, s1, a6
                  addi         s11, a1, -374
                  addi         t3, t2, -242
                  sltiu        t2, a5, -1412
                  xori         s11, a3, -1949
                  srl          s2, a5, s2
                  sra          a7, s10, a2
                  slli         s1, sp, 2
                  slli         t4, t0, 7
                  xor          t4, a4, a5
                  slti         gp, a7, 1055
                  sll          s7, s11, gp
                  slt          a1, s2, sp
                  ori          s8, tp, -380
                  sltiu        t4, a0, -1393
                  slti         s10, zero, -1300
                  xori         gp, ra, -18
                  slti         a1, t4, 809
                  add          ra, t6, a6
                  sra          tp, s8, t2
                  add          s9, a4, a5
                  addi         ra, a7, 1630
                  or           s4, t6, a4
                  slti         s3, gp, -418
                  add          a7, s7, t1
                  and          a4, s8, a5
                  andi         gp, tp, 0
                  add          s3, s3, tp
                  sub          s3, sp, t3
                  auipc        zero, 421616
                  addi         s4, zero, 618
                  slli         a0, t3, 30
                  or           t6, s0, s3
                  slti         s5, t6, 173
                  sub          s9, s11, s9
                  ori          s0, s1, -993
                  srli         a5, zero, 28
                  addi         s2, sp, -1027
                  srai         s9, tp, 5
                  andi         t0, s8, -256
                  sub          t4, s10, s9
                  nop
                  ori          s6, gp, -1536
                  ori          s5, s5, 79
                  sll          a7, zero, t3
                  andi         s1, a3, 815
                  or           a2, t2, s11
                  sltu         s8, sp, s2
                  slt          s1, a6, a7
                  slt          s8, a5, s3
                  andi         a7, a7, 33
                  ori          a5, t0, -1806
                  xor          s9, ra, a3
                  ori          s10, s7, 940
                  slli         t5, s11, 26
                  lui          a4, 767375
                  sll          s11, s4, zero
                  srai         a0, t3, 28
                  or           a2, s4, a0
                  sltiu        a2, a0, 1668
                  add          a0, s3, t3
                  srai         s7, a6, 30
                  addi         s8, t0, 1777
                  add          t4, t2, a5
                  slt          s4, tp, ra
                  sra          a2, tp, ra
                  slt          t6, a3, s11
                  andi         s4, t3, -16
                  sra          s11, ra, a3
                  sll          a7, a3, t4
                  srai         s6, s9, 9
                  xori         tp, s6, 576
                  sub          t0, t6, t3
                  add          a4, t6, s5
                  xori         s1, s8, -521
                  add          s5, ra, zero
                  xor          a5, s3, s5
                  sub          zero, s5, s3
                  srl          s3, s4, zero
                  sltiu        a1, t1, -2034
                  xor          s2, s1, t4
                  slt          s4, s0, a7
                  sltu         a7, s7, t4
                  srl          tp, s7, s11
                  xori         a4, gp, -1205
                  nop
                  sltiu        s7, s6, 1041
                  sra          s4, a2, gp
                  sll          t4, s10, s1
                  addi         a1, s1, 1684
                  and          t0, a4, s10
                  srli         s8, a0, 13
                  srl          t5, s5, t1
                  andi         s9, tp, -1160
                  add          s4, a5, sp
                  srai         tp, s3, 11
                  nop
                  srai         s3, s6, 18
                  srai         t3, s4, 29
                  sll          gp, t6, s4
                  ori          a5, a5, -845
                  and          a2, s9, a6
                  addi         s1, s3, -1125
                  and          a7, a7, s6
                  andi         zero, a0, 1906
                  slli         s6, s8, 22
                  ori          t0, gp, 523
                  xori         s6, s10, 797
                  srai         s4, t6, 31
                  addi         gp, s0, -1623
                  slt          a0, s6, s5
                  slt          s3, t6, a7
                  addi         t6, s1, -325
                  sll          s4, s9, t1
                  srli         a0, a7, 26
                  or           t6, s10, a4
                  ori          s0, s4, -308
                  slli         t0, ra, 11
                  slti         a4, s10, -72
                  and          s6, s8, a2
                  xor          gp, t6, s6
                  sub          ra, ra, s6
                  sra          gp, t5, s8
                  and          t6, a3, s11
                  slti         s2, a7, 94
                  addi         t1, a2, -22
                  srli         t1, s2, 15
                  addi         a7, s11, -351
                  srai         s5, s5, 14
                  sltiu        a0, s10, 201
                  slt          s10, gp, sp
                  addi         s4, s5, 480
                  sra          s8, sp, s1
                  srai         s5, zero, 28
                  slli         t1, t6, 23
                  lui          s7, 56839
                  auipc        s3, 593737
                  sltiu        s5, a0, -1394
                  ori          s0, t6, -311
                  srli         a0, s8, 10
                  xori         tp, s0, 421
                  srai         a5, s9, 31
                  andi         tp, s9, 638
                  or           a4, ra, a0
                  nop
                  sltu         ra, s11, a6
                  or           s10, s5, a0
                  nop
                  slt          s5, zero, zero
                  xor          a7, t0, s5
                  lui          a7, 157911
                  add          s7, a3, a6
                  sra          t5, zero, a6
                  srai         s2, a3, 9
                  and          s4, s2, s1
                  xor          t1, t6, a3
                  lui          s8, 105444
                  add          s5, s6, t2
                  xori         s6, t2, 1132
                  lui          t0, 32262
                  srai         a5, s3, 30
                  ori          s10, s3, -1109
                  addi         gp, t5, 432
                  nop
                  srai         s7, s9, 14
                  or           t5, t2, s11
                  srli         t4, a1, 30
                  sub          a0, zero, s11
                  addi         t4, t0, 1190
                  slli         s6, s11, 30
                  slti         a7, s5, 1882
                  srai         s11, s8, 10
                  sll          s0, a0, t4
                  srl          s4, t2, sp
                  or           t4, t6, s0
                  srl          s9, s0, tp
                  srl          gp, s3, t5
                  srai         a2, zero, 10
                  nop
                  xori         a0, a2, -30
                  slti         a7, a0, 679
                  or           s2, s1, s1
                  xor          s4, t1, a3
                  sra          ra, t5, a3
                  xor          gp, s2, t2
                  nop
                  srli         t3, s11, 10
                  and          a5, t4, s2
                  and          s0, s2, sp
                  slt          a0, s5, s5
                  lui          s9, 2347
                  slli         t2, t2, 0
                  addi         a2, a7, 187
                  nop
                  nop
                  slt          s0, s0, s10
                  srl          t5, gp, s2
                  sll          s11, s4, s10
                  xor          a5, s6, sp
                  slti         s0, a6, -341
                  sra          s3, s7, a2
                  sltu         s9, t4, tp
                  add          a7, zero, s7
                  xori         s4, t0, -160
                  lui          a2, 571660
                  srl          s4, a1, gp
                  slli         t4, s1, 9
                  or           s6, a6, s11
                  slt          a5, zero, t5
                  sltu         s11, a1, s3
                  add          ra, a4, s2
                  slt          a1, s5, gp
                  ori          t3, s6, -1875
                  or           a7, s11, zero
                  xori         t3, t0, -679
                  ori          t0, t4, 1955
                  sltu         t3, tp, s9
                  andi         s1, gp, 454
                  sra          a5, s5, t0
                  or           s11, a1, s3
                  or           ra, t4, s2
                  xori         t3, zero, 1814
                  sra          t0, s8, s0
                  ori          s9, s10, 911
                  ori          zero, a4, 313
                  xor          t5, a7, a2
                  slt          a0, a3, s0
                  slt          s11, a3, t4
                  slt          a4, tp, s3
                  or           s4, s10, s10
                  sub          t0, s11, ra
                  nop
                  nop
                  xori         s2, a0, -2019
                  lui          t0, 560698
                  nop
                  slt          s11, s2, tp
                  sll          t5, a7, t2
                  srl          s10, s2, t6
                  addi         t6, t0, -1571
                  ori          a1, t0, -1011
                  add          a5, s8, gp
                  andi         a4, a2, 961
                  ori          t1, a0, 731
                  slti         t0, ra, -511
                  srli         s9, a3, 21
                  auipc        a5, 160075
                  and          t5, tp, gp
                  srai         s4, s8, 6
                  xor          t1, a3, sp
                  srli         t6, s6, 15
                  nop
                  slli         s10, t2, 20
                  ori          ra, ra, -995
                  sltiu        t3, s10, 250
                  ori          s10, a2, 487
                  add          s3, tp, zero
                  sra          s10, t1, t6
                  addi         s3, a0, -759
                  nop
                  or           a4, t4, a2
                  srai         a7, t4, 2
                  auipc        a4, 152421
                  sltu         s6, s6, s0
                  xori         t4, tp, -1803
                  srli         s11, s0, 26
                  xori         zero, s4, -896
                  lui          a2, 781595
                  slti         s7, t3, -170
                  xori         t0, gp, 952
                  sltiu        s2, t6, 1815
                  and          a7, a6, s10
                  xori         tp, s0, 703
                  ori          t3, s5, -898
                  srli         ra, a0, 28
                  slti         a2, zero, 109
                  lui          s7, 436864
                  add          t2, t1, zero
                  nop
                  add          s9, a6, s6
                  xori         s9, t2, -1644
                  sub          a5, s4, a4
                  sra          t0, ra, s2
                  nop
                  srai         a4, s9, 24
                  sltu         s9, a3, s8
                  nop
                  srli         t6, s8, 31
                  andi         t5, s4, -132
                  and          s10, zero, t1
                  srai         t3, t0, 7
                  slti         a5, s10, 377
                  lui          t2, 1017264
                  sll          a4, t2, s0
                  slt          s7, s1, a1
                  sub          ra, a1, a7
                  srli         ra, a2, 22
                  sub          s0, t1, zero
                  lui          zero, 91806
                  slli         s5, a1, 25
                  sltu         s4, s2, tp
                  andi         t1, t4, -1573
                  sll          s3, s2, s10
                  sra          a0, a7, t5
                  lui          a1, 551700
                  xori         s2, a4, 1804
                  sra          a4, t6, s4
                  add          t2, a5, t2
                  andi         s11, s7, 1991
                  slti         a4, s5, 766
                  sra          s4, tp, t6
                  ori          s7, zero, -136
                  srai         s4, t5, 26
                  addi         ra, s11, 400
                  or           tp, s0, s11
                  srli         t0, s3, 31
                  srli         s2, t2, 9
                  sll          a1, a3, s11
                  slt          a7, s3, s4
                  add          ra, s11, zero
                  sltu         t5, t2, s2
                  add          a4, sp, t4
                  srai         s4, t3, 2
                  sltu         t1, s5, s7
                  ori          t1, a1, -318
                  slli         gp, s3, 5
                  sltiu        s1, a4, 192
                  nop
                  xor          t1, s4, s11
                  sltu         s0, s5, t2
                  sltu         s10, s4, s6
                  add          t2, s6, a6
                  add          s2, a2, sp
                  sra          s8, s11, s10
                  sltu         s9, a6, a4
                  sub          zero, t3, s0
                  auipc        tp, 322707
                  srl          t5, a5, a2
                  slt          ra, t4, a2
                  xor          zero, t0, zero
                  slti         s11, a2, 1920
                  and          s2, ra, a7
                  srl          a2, s5, s5
                  slli         s11, a5, 25
                  xor          t2, s5, t0
                  nop
                  sltiu        s8, a6, 968
                  or           a2, s3, t5
                  slti         s6, t1, 674
                  sub          gp, a5, a2
                  addi         t3, a5, 1475
                  nop
                  xor          t0, gp, s4
                  srl          gp, a6, s10
                  add          s10, s9, a5
                  auipc        s10, 99086
                  sra          a4, t5, tp
                  ori          s2, s5, 1305
                  nop
                  add          a7, s0, s1
                  srl          zero, tp, a3
                  sll          s1, a6, t6
                  sltiu        s4, t6, 452
                  andi         s0, tp, 130
                  add          ra, a2, s3
                  slt          t5, s9, a7
                  sll          a0, t0, t6
                  srai         t5, a1, 27
                  xori         s3, gp, -1190
                  lui          t6, 335042
                  slli         a2, s4, 0
                  xori         a0, s2, 1950
                  slt          s4, a3, s2
                  sub          t5, s9, a0
                  nop
                  sll          t4, s5, t4
                  slti         s11, t4, 1322
                  sltu         a0, s2, a0
                  ori          t0, t3, 1149
                  slti         s2, s7, 1386
                  slli         t5, ra, 0
                  add          s6, a3, s8
                  add          s8, s8, s10
                  srl          s11, a0, s11
                  auipc        t4, 864338
                  sll          a0, t4, ra
                  sll          a7, s11, a5
                  slti         a0, t3, -1929
                  and          a2, t0, t0
                  slti         t3, a5, 888
                  andi         a7, a6, -1019
                  or           s2, s7, a3
                  sub          a0, a0, a3
                  srli         a5, a2, 24
                  lui          t5, 123938
                  sltu         s0, gp, t1
                  auipc        a4, 580156
                  or           t3, sp, s7
                  slli         t5, s1, 26
                  lui          s7, 621090
                  srl          s6, s2, s4
                  andi         t0, t4, 1373
                  xor          tp, sp, a2
                  add          s0, a6, t4
                  nop
                  auipc        t6, 185572
                  slti         s11, gp, 1538
                  sra          gp, t6, s1
                  or           s2, s2, s5
                  slli         t4, s10, 30
                  slti         ra, s0, 791
                  slli         s6, a1, 10
                  xor          a0, t5, s4
                  sltiu        s6, a2, 2022
                  ori          a2, s2, -38
                  srl          t1, a6, s9
                  auipc        s7, 648767
                  slti         s11, t0, -563
                  srai         zero, s0, 10
                  sltiu        t1, ra, -179
                  sra          s2, t5, s7
                  slt          t1, a2, a0
                  srl          gp, a1, s5
                  sub          a7, t6, t4
                  slti         s0, t4, -1079
                  slti         s0, s2, -593
                  andi         a7, s1, -1851
                  srli         a1, a3, 25
                  sltu         s7, gp, s9
                  sub          ra, s7, s3
                  slt          t2, t0, tp
                  slli         s0, a0, 26
                  addi         s11, t1, 1832
                  slli         a4, gp, 16
                  lui          s10, 1014004
                  slli         s6, t3, 0
                  srl          t6, s0, s11
                  ori          a5, a5, -1471
                  lui          t1, 587394
                  and          zero, s7, s9
                  lui          s6, 633571
                  srai         t5, ra, 12
                  addi         a2, s4, -1804
                  addi         zero, ra, 627
                  sll          t5, t0, t5
                  slt          a2, s2, t6
                  sltiu        s0, t2, 1676
                  lui          t4, 950284
                  xor          a0, t1, a1
                  xor          t5, t0, s10
                  sltiu        t4, s3, 1070
                  auipc        s6, 237875
                  sll          t4, a1, s11
                  srl          a2, tp, a1
                  sra          s8, s4, s3
                  nop
                  sll          t4, s0, a2
                  slt          t3, s5, a3
                  xori         a5, zero, -1605
                  or           gp, a4, zero
                  slt          zero, t0, t6
                  addi         a4, a7, 179
                  add          s6, s2, zero
                  add          t6, s10, s4
                  xori         t0, t2, 1425
                  srai         s10, zero, 26
                  slli         ra, s6, 7
                  andi         a1, t6, -504
                  srai         zero, s4, 27
                  srl          s10, zero, zero
                  add          s11, ra, s7
                  sltiu        a7, sp, 1037
                  sltiu        a4, s5, -1683
                  slti         zero, t2, 1220
                  ori          t6, s7, -318
                  addi         t2, gp, -1247
                  xor          ra, s10, s5
                  sll          s9, t6, s8
                  sltu         a4, a6, s11
                  or           s9, t2, t6
                  add          t2, a3, s1
                  addi         a4, s6, 1492
                  slli         s9, s3, 17
                  sub          s7, a4, t0
                  sltiu        a0, a7, -1442
                  or           s9, zero, t4
                  sra          t0, s1, t5
                  srl          t5, a0, s6
                  addi         s7, tp, 162
                  slt          s11, t2, a7
                  lui          t6, 2032
                  xori         t5, a2, 1331
                  srai         a7, t1, 15
                  andi         s5, s8, 910
                  andi         s2, s3, 1095
                  srl          tp, tp, a2
                  srai         a5, t6, 20
                  lui          s2, 761493
                  andi         s0, s5, 1031
                  xori         t4, s6, 1828
                  sll          s9, s6, s3
                  addi         t2, t0, -642
                  sll          s5, sp, s6
                  sra          s5, a0, zero
                  and          s3, t6, zero
                  sll          ra, t0, a4
                  srli         t6, s9, 9
                  nop
                  xor          a7, a2, s7
                  slti         s0, t4, 898
                  srl          t5, tp, a2
                  sub          s5, t2, t6
                  xori         gp, t1, 1891
                  nop
                  or           s10, a7, s9
                  sltu         t1, sp, t3
                  nop
                  and          a0, a3, t0
                  xori         a7, a6, -87
                  sll          s3, t3, gp
                  nop
                  or           s0, a5, t3
                  xori         s3, t6, -1590
                  slt          t2, s0, t1
                  sll          a2, zero, a1
                  slti         s8, t0, 1791
                  sra          a5, s7, t5
                  add          a4, gp, ra
                  sra          s4, a2, s0
                  srli         t3, a2, 31
                  slli         s2, s5, 27
                  xori         s3, t4, 1850
                  slt          t4, a6, ra
                  lui          t4, 556393
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           a7, 0x121e06b3
                  li           s0, 0x0
                  li           s6, 0x0
                  li           t6, 0xffffffff
                  li           gp, 0x80000000
                  li           t1, 0xd13f92e7
                  li           a1, 0xffffffff
                  li           t0, 0x80000000
                  li           tp, 0xffffffff
                  nop
                  nop
                  lui          gp, 653905
                  lui          t0, 621579
                  sub          a7, t6, t6
                  sub          a1, s6, s0
                  sub          t6, s0, s0
                  addi         t6, tp, 1228
                  add          t6, t3, t3
                  nop
                  sub          t0, t0, s0
                  add          a7, t0, t1
                  nop
                  addi         t0, s6, -308
                  nop
                  add          a1, s6, t6
                  lui          t1, 982874 #end riscv_int_numeric_corner_stream_1
                  ori          tp, s0, 577
                  nop
                  slti         a5, s8, 1871
                  slt          t0, a5, t4
                  add          ra, s0, t3
                  slli         s8, s5, 21
                  sltu         gp, gp, t4
                  srai         a7, s5, 18
                  addi         t4, a3, -1719
                  srai         a4, a5, 26
                  addi         t1, t4, 1535
                  auipc        a5, 846023
                  sll          s0, t5, t6
                  add          a4, a1, s3
                  add          a0, s0, a6
                  sub          a5, s10, t4
                  srl          gp, a1, a6
                  and          s2, sp, a0
                  srai         a1, s9, 28
                  or           a4, s9, s2
                  xor          a1, a2, t6
                  slti         s4, t5, -1752
                  sll          tp, a4, s2
                  andi         s0, s6, 577
                  sltiu        t1, t6, -386
                  auipc        a1, 785983
                  addi         s2, t5, -1461
                  sra          tp, t4, a5
                  slti         a4, a5, 1194
                  srai         s2, a1, 12
                  sltiu        zero, s9, -1064
                  or           t6, t6, tp
                  srai         s6, t1, 24
                  nop
                  slti         tp, t0, -695
                  xori         s9, t4, 1228
                  nop
                  sub          gp, a7, s9
                  slli         tp, s9, 29
                  srl          gp, a5, s0
                  and          s6, a2, t1
                  lui          a7, 416654
                  srai         gp, tp, 10
                  srli         s1, a2, 2
                  srl          s1, t2, s8
                  sra          t0, s6, t0
                  slti         t4, t5, -1609
                  lui          s2, 136359
                  andi         s6, s11, 1926
                  slli         s9, s8, 9
                  sub          gp, s6, t5
                  andi         ra, zero, 1672
                  and          gp, s11, a7
                  srl          s0, s3, gp
                  add          s3, a3, s7
                  sltiu        s11, s0, -1550
                  sra          s7, a2, a4
                  srli         zero, a5, 24
                  slli         s2, t4, 12
                  and          a1, t6, s3
                  ori          s7, sp, -303
                  nop
                  sub          t3, s9, a5
                  xor          s1, a7, a4
                  and          t0, t4, s2
                  sra          zero, s1, s11
                  sra          s6, s0, sp
                  sll          s1, t0, s1
                  sltu         a2, s4, ra
                  slti         t2, a1, -2044
                  andi         a4, zero, 1240
                  sltiu        s3, t3, 1249
                  sub          s8, s5, s4
                  or           zero, a3, t6
                  nop
                  auipc        s5, 601939
                  slli         s11, t1, 16
                  andi         s4, zero, 608
                  andi         a2, s10, -739
                  nop
                  andi         s11, a7, 1647
                  sll          t1, ra, t2
                  or           gp, sp, t6
                  or           s11, t3, s6
                  addi         s3, a1, 1456
                  xori         tp, a1, 1314
                  add          t4, s9, s6
                  srli         s5, t2, 12
                  sll          t1, sp, gp
                  lui          s1, 955607
                  andi         a0, ra, -1527
                  sltu         s1, a0, s9
                  srai         s6, s0, 27
                  srli         a5, s8, 26
                  sltu         s5, s9, s7
                  slt          t3, sp, s6
                  slli         a1, gp, 3
                  slt          gp, a6, a1
                  ori          s8, s6, 1875
                  slli         a0, s7, 4
                  srli         s0, s0, 21
                  auipc        s2, 332756
                  slt          s5, a6, t5
                  addi         s7, a2, -1808
                  slli         s8, s5, 19
                  srl          t2, t3, s11
                  slli         t2, t6, 9
                  srai         s8, s5, 25
                  add          a1, t2, s8
                  srai         s1, s3, 4
                  sll          a7, a2, ra
                  or           s4, ra, a6
                  srai         s4, zero, 26
                  slli         t0, a7, 31
                  slt          s4, s1, s9
                  lui          zero, 247079
                  lui          s0, 974970
                  srli         a4, a7, 3
                  andi         t0, s7, -234
                  nop
                  and          a5, t4, s7
                  xori         s5, s5, -452
                  nop
                  andi         s4, s10, -1012
                  addi         zero, gp, 713
                  sltiu        s11, t5, 1818
                  slli         a0, a1, 0
                  xori         s4, a4, -1657
                  srai         s4, t4, 26
                  sltu         t6, t6, a4
                  sltiu        s6, s2, 726
                  auipc        a0, 934386
                  sll          t1, s4, s1
                  slt          a2, s4, s6
                  slli         a7, a3, 29
                  xori         a0, a6, 244
                  auipc        ra, 863155
                  and          a2, a6, tp
                  xor          t4, a6, t4
                  sll          t6, sp, s3
                  auipc        s6, 537138
                  addi         t1, s3, -609
                  sltiu        s5, s7, 1486
                  slt          tp, s11, s7
                  xor          s10, s2, s9
                  srl          s1, s8, t1
                  nop
                  srli         gp, t1, 2
                  srl          a2, t5, t0
                  srai         t2, zero, 24
                  and          t2, tp, s10
                  srl          t5, a2, t1
                  sltiu        a2, t4, 443
                  xor          a5, s6, ra
                  slti         s10, a4, -1474
                  sll          s1, t4, s3
                  sra          s9, t1, a2
                  sll          t0, s7, s11
                  add          ra, s0, gp
                  andi         s5, a5, 535
                  addi         tp, a0, 329
                  and          s2, t6, ra
                  sltiu        ra, s4, -1159
                  addi         s4, s1, 184
                  sltu         s5, a1, s1
                  sll          a1, a0, s10
                  sltu         a0, a2, a3
                  addi         t0, a3, -688
                  xori         s3, zero, 1880
                  srai         a0, s9, 13
                  sll          s11, a3, sp
                  sub          s5, a7, t4
                  xor          s5, s0, t5
                  add          s4, t1, ra
                  srai         t0, a2, 23
                  srli         s8, t5, 5
                  ori          t5, t5, -1036
                  sll          t2, s0, a4
                  xori         s8, a4, -1756
                  auipc        t0, 462451
                  or           s2, t5, ra
                  or           s1, s8, ra
                  or           s11, s6, t3
                  sltu         t6, a2, a6
                  slti         s0, s4, 1791
                  andi         s1, sp, 1022
                  xori         a2, a6, 240
                  xor          t6, a4, s3
                  andi         t0, s4, 910
                  sltiu        t4, s5, -658
                  srl          a0, s1, s2
                  slli         t3, tp, 22
                  slt          t2, s11, a5
                  auipc        s5, 436706
                  sll          s5, gp, a3
                  andi         s2, t5, -1651
                  lui          a1, 746749
                  slti         s6, s1, 934
                  ori          t2, s2, -1485
                  slti         t5, zero, -1263
                  sra          tp, t2, a3
                  sra          s9, s8, s0
                  sll          s1, a1, gp
                  sltu         zero, t3, s6
                  sll          s4, s10, zero
                  sll          a5, s1, s1
                  srli         a1, t4, 29
                  andi         a7, t3, 206
                  srl          a0, a7, s9
                  andi         tp, a0, -946
                  xori         a1, s0, 1719
                  auipc        t4, 370682
                  auipc        s10, 55646
                  srli         s7, a2, 4
                  lui          gp, 946582
                  ori          a1, s0, -699
                  xor          zero, s11, a2
                  sra          t6, t1, tp
                  lui          a1, 679410
                  sll          t0, t0, t2
                  auipc        s7, 620211
                  lui          s7, 456964
                  slt          a5, t2, sp
                  slt          gp, s1, t4
                  xor          t5, a5, a6
                  slti         s9, s3, 1944
                  slti         s2, a1, -1857
                  lui          a1, 521001
                  sltiu        a1, a2, -656
                  xori         t5, a0, -1076
                  andi         a2, s0, -852
                  slti         s6, t3, -1585
                  sltu         t1, sp, a7
                  srai         s6, sp, 12
                  slli         a7, s0, 30
                  sll          t5, s6, s0
                  sra          s7, t3, t2
                  ori          s4, t6, 599
                  lui          a1, 658229
                  slti         s4, s7, 1268
                  auipc        s6, 480680
                  sltu         s11, s3, s7
                  or           s4, s3, s9
                  auipc        s11, 1019897
                  sub          s4, t2, a1
                  sra          s0, a5, s8
                  slli         s9, a0, 30
                  sltu         t3, s1, s10
                  srli         s10, zero, 12
                  add          a2, a5, a6
                  auipc        gp, 765684
                  auipc        s1, 799939
                  slti         a1, t5, 1495
                  sltu         t2, s6, t0
                  xori         s9, s2, 871
                  srl          t6, s1, s1
                  ori          t5, t3, -1441
                  xori         t3, sp, 1233
                  xor          s5, t1, gp
                  sltiu        s6, s5, 1950
                  slli         a5, t5, 2
                  sltu         a2, s0, a4
                  addi         s1, sp, 597
                  sll          a1, sp, s3
                  sra          t0, tp, a1
                  auipc        a7, 4516
                  lui          a7, 567919
                  lui          t6, 876620
                  slli         t6, t4, 10
                  slti         a7, s11, 222
                  slti         s4, s6, 1520
                  sub          a1, s2, t0
                  addi         t3, ra, -202
                  sltiu        a5, s10, -174
                  srai         tp, a7, 12
                  srai         t6, a5, 8
                  sll          a1, tp, t2
                  slli         ra, t0, 13
                  sll          s3, a2, t4
                  sub          a1, a3, sp
                  ori          s0, s2, -970
                  xor          a5, gp, a7
                  addi         a4, s0, 1128
                  lui          s11, 987782
                  auipc        t2, 38845
                  ori          tp, s3, -1139
                  srai         t6, a4, 0
                  srli         t0, s5, 28
                  sub          ra, t3, s11
                  srli         a0, s9, 24
                  xor          t1, s1, t6
                  srl          s0, zero, s3
                  ori          t0, s9, 1205
                  sra          ra, a1, zero
                  ori          s6, s2, -1922
                  add          t2, a0, s11
                  slt          a5, t0, s6
                  addi         a1, s3, 789
                  ori          s1, s3, 1867
                  srl          a1, a6, a1
                  andi         s7, s3, -922
                  srai         s6, a2, 12
                  slt          s0, t4, a0
                  lui          a2, 298841
                  slti         s3, s8, -265
                  slti         s0, t0, -880
                  ori          t0, gp, -1630
                  ori          s6, t0, -1516
                  addi         t1, a5, 469
                  nop
                  sll          t4, a4, s5
                  auipc        s5, 575661
                  srli         a5, s7, 6
                  lui          t3, 699711
                  addi         a5, s3, 35
                  srai         ra, s0, 2
                  ori          s7, gp, -1942
                  sra          s4, a1, s11
                  sra          s11, s6, zero
                  slti         t1, s10, -1608
                  ori          s4, s9, 1055
                  and          s2, a6, a0
                  srli         t5, a4, 8
                  xori         t6, a7, 1816
                  ori          s4, s7, -1417
                  and          s0, t4, t3
                  sub          t6, t5, s6
                  auipc        s9, 527914
                  slli         t0, s4, 8
                  slli         a1, a4, 31
                  andi         s6, a1, 1264
                  addi         s4, sp, -1744
                  nop
                  lui          gp, 437955
                  auipc        t6, 380226
                  auipc        a5, 258937
                  addi         s9, a1, -1757
                  xor          s5, t5, s5
                  sltiu        s4, s8, 1134
                  slti         s7, t0, 1288
                  sltu         t2, zero, a7
                  sub          zero, t3, s0
                  nop
                  sltiu        s11, s7, 1968
                  sll          s5, a2, s3
                  slt          a5, s8, a5
                  xor          a7, t4, s10
                  and          a0, a5, s7
                  auipc        s0, 199764
                  sra          t0, s11, s2
                  sltu         gp, s8, t0
                  auipc        t4, 1002442
                  sltu         s9, s0, s11
                  addi         s5, s0, -1229
                  and          s7, a2, ra
                  srli         zero, s0, 10
                  sltu         t6, s6, t3
                  ori          a7, a3, 850
                  nop
                  slti         s2, zero, 725
                  sra          t1, a0, t0
                  slt          s9, ra, a5
                  xor          s9, s2, s4
                  slti         s1, s1, 1260
                  slli         tp, a3, 30
                  sltiu        s7, a6, 1083
                  sub          t2, s10, t2
                  xori         s10, s9, 146
                  xori         t4, a4, -352
                  sra          zero, s6, a1
                  slti         t0, t0, -43
                  or           t1, s9, t2
                  slt          s4, s9, a7
                  nop
                  srai         zero, s4, 8
                  nop
                  andi         s11, a4, -427
                  lui          t0, 577519
                  srl          s7, a6, a5
                  or           t5, t4, s8
                  sra          ra, s1, a0
                  add          ra, s11, ra
                  slti         a1, s3, -1365
                  slti         a0, a3, 474
                  andi         ra, t3, -20
                  sll          s3, gp, gp
                  andi         zero, a6, -688
                  sltiu        a2, sp, 648
                  slti         a2, a0, -280
                  slt          t3, ra, t2
                  sltiu        s4, s5, -11
                  lui          a7, 116200
                  sra          t6, zero, s11
                  auipc        a2, 45596
                  lui          s7, 704920
                  srli         s4, s0, 4
                  slti         a0, s2, -1730
                  srli         gp, s10, 21
                  srai         t2, s10, 1
                  srai         zero, t0, 5
                  srl          t2, gp, gp
                  xori         t1, a4, 655
                  slti         t1, t1, 1121
                  or           s6, s9, t5
                  ori          a7, sp, 1455
                  nop
                  ori          t2, a5, -1908
                  slli         s6, s1, 15
                  andi         a1, s4, -1495
                  lui          s6, 416085
                  srl          a0, tp, t1
                  sll          a1, gp, t3
                  srai         s0, t2, 3
                  sra          a7, s4, t6
                  srl          s2, t3, t6
                  slt          ra, s4, a1
                  srli         s7, s11, 5
                  addi         gp, a6, 1255
                  srli         s1, ra, 13
                  auipc        t3, 1002004
                  add          t6, a4, s9
                  lui          ra, 635251
                  sub          t5, t6, s3
                  slti         zero, s6, 637
                  xor          zero, a7, s3
                  xor          s6, s6, t3
                  ori          s9, a5, -720
                  lui          s0, 133314
                  srl          s7, t0, s3
                  addi         t6, a5, 1278
                  addi         t1, t1, -1050
                  nop
                  srai         t3, tp, 12
                  srli         a1, zero, 14
                  addi         t3, a1, -510
                  srai         s4, a3, 10
                  nop
                  xori         s9, t3, 572
                  nop
                  srl          zero, s6, t4
                  slt          gp, t4, s6
                  or           ra, a1, a2
                  xor          a1, t5, a1
                  slt          t2, s4, s11
                  slli         t0, s5, 1
                  xori         s10, t4, 184
                  lui          tp, 770953
                  sltu         tp, s6, s3
                  add          gp, a3, t2
                  srai         a2, s2, 19
                  sltu         a4, a2, s3
                  sll          s7, s9, a5
                  slt          s11, s8, s3
                  add          s9, s7, a4
                  or           ra, s9, a0
                  auipc        s7, 853925
                  srai         t5, s1, 23
                  auipc        s9, 418459
                  and          a5, t0, t5
                  add          t1, s9, gp
                  sltu         s11, s3, a4
                  srai         t2, a2, 21
                  sub          zero, s11, zero
                  slli         a2, tp, 20
                  or           s4, s10, t4
                  sll          s1, s7, t3
                  slt          a0, a6, s11
                  add          s10, s11, s0
                  xori         t0, t6, 1454
                  sltiu        gp, t1, 701
                  sltiu        t3, a3, 351
                  sltu         a2, a1, a1
                  and          s0, t6, s4
                  slti         tp, s11, 859
                  srl          a2, a6, zero
                  andi         s2, s0, -867
                  sub          zero, s3, gp
                  add          ra, s0, s4
                  srl          s9, gp, a4
                  add          t2, s3, ra
                  and          s10, a3, a4
                  or           t1, s5, a4
                  slt          a7, a6, a2
                  and          s6, t1, s11
                  sra          s5, t3, s1
                  andi         a1, t1, -449
                  nop
                  slt          t0, t3, a1
                  andi         t3, a0, -1161
                  sltu         gp, s8, a4
                  sltiu        t4, t1, -1465
                  auipc        s10, 551294
                  sll          s0, t6, s2
                  sra          t3, s1, t3
                  addi         ra, a4, 1851
                  andi         s10, tp, 210
                  sll          s8, tp, s0
                  add          s3, s8, t5
                  addi         s10, a2, 1192
                  slt          a0, s2, s9
                  addi         a4, s6, -1573
                  srli         zero, gp, 24
                  ori          zero, a2, -1061
                  srai         a2, a7, 29
                  sltu         s6, s9, ra
                  slt          tp, s7, a1
                  slt          ra, sp, s2
                  addi         a4, ra, 1206
                  addi         t2, s9, 1655
                  srl          s2, zero, s1
                  srl          a2, s0, t1
                  sra          s5, gp, s8
                  and          s1, s6, gp
                  srli         ra, t6, 2
                  slti         s0, sp, -1688
                  ori          tp, a2, -1597
                  sltu         t2, a3, s3
                  sltiu        s5, s3, 960
                  xor          t1, s5, a5
                  andi         s2, s5, -1234
                  ori          s9, t5, -284
                  or           s6, s2, a7
                  auipc        s11, 997585
                  slti         s3, s0, 736
                  slli         s3, s4, 31
                  and          s5, s0, a1
                  ori          s8, s9, -610
                  or           s5, sp, a2
                  auipc        a4, 182409
                  lui          tp, 329232
                  addi         s10, t5, 101
                  sub          s4, a2, sp
                  addi         t4, t3, 1798
                  xori         s10, a2, 1763
                  auipc        t6, 1000082
                  and          s7, a4, s7
                  slt          s7, a6, s3
                  xori         s9, s9, 1639
                  sltu         tp, s9, s6
                  auipc        s3, 687601
                  sra          a4, s0, ra
                  srai         zero, a3, 2
                  slt          a5, s8, s5
                  sub          t3, a4, a1
                  sub          a1, s0, t1
                  sltu         t0, sp, a5
                  addi         t2, a6, -1213
                  sra          a5, ra, s4
                  sltiu        t5, zero, 1566
                  xori         a2, a7, 289
                  auipc        a1, 748503
                  or           s11, s1, s11
                  auipc        a4, 961638
                  srl          s1, a6, s4
                  sltu         ra, a4, t3
                  auipc        s2, 106927
                  slli         t1, t6, 24
                  andi         t5, s7, -2029
                  add          t5, s6, t2
                  and          tp, zero, t2
                  xori         s5, s11, -1470
                  slt          s3, a4, sp
                  li           s6, 0x562001a3 #start riscv_int_numeric_corner_stream_7
                  li           t4, 0x0
                  li           s10, 0x80000000
                  li           a4, 0xd999072c
                  li           t6, 0x0
                  li           a1, 0xd8d8694f
                  li           a5, 0x80000000
                  li           s9, 0x0
                  li           gp, 0x80000000
                  li           t0, 0x80000000
                  lui          a4, 720104
                  addi         t0, s6, -676
                  add          t0, s10, s9
                  auipc        a4, 300331
                  lui          s9, 231263
                  nop
                  addi         s10, s6, 326
                  nop
                  add          s10, t0, s6
                  nop
                  auipc        s6, 659913
                  auipc        a1, 745567
                  add          s10, a4, s9
                  auipc        t6, 138005
                  add          t4, t4, s10
                  auipc        t6, 121132
                  sub          t4, s9, s10
                  lui          s6, 278348
                  add          s10, s9, t6
                  auipc        s10, 1032588
                  addi         t0, gp, -1506
                  addi         t6, a4, -1
                  nop
                  auipc        t6, 329114
                  auipc        gp, 208588
                  sub          s10, s6, a1
                  lui          t4, 978034
                  nop #end riscv_int_numeric_corner_stream_7
                  sll          t0, s10, a5
                  slt          s1, a7, a2
                  nop
                  lui          s9, 287124
                  slt          s0, a3, a5
                  xori         t0, t0, -793
                  sub          s7, gp, t5
                  sltiu        a1, a6, 561
                  slli         s3, sp, 11
                  sub          s8, a5, t6
                  srai         zero, ra, 10
                  srli         s10, sp, 12
                  srai         a5, s4, 15
                  slt          s11, t6, s4
                  slli         t0, s4, 13
                  slli         s8, sp, 7
                  xor          s8, t0, s5
                  sll          t1, s1, s11
                  slti         s9, s5, 257
                  xori         zero, a7, -542
                  srli         zero, s8, 19
                  slt          s0, sp, t3
                  sltu         s8, s4, s3
                  sltiu        gp, a7, -1297
                  sll          t2, t2, zero
                  sub          a1, s0, a0
                  srai         gp, t5, 10
                  ori          a2, a7, -111
                  addi         s2, ra, 1161
                  sra          s9, s8, s2
                  sll          a0, t0, s11
                  srli         s4, gp, 10
                  srai         s4, gp, 30
                  sltiu        s10, s3, 991
                  sltiu        s8, a0, -1453
                  lui          a0, 676910
                  slli         a4, a3, 6
                  addi         a1, a1, -927
                  auipc        ra, 940546
                  xori         s9, a4, -712
                  srl          t4, a4, t6
                  srl          s10, a2, s3
                  add          t0, t1, s10
                  lui          t6, 624759
                  srli         s3, gp, 3
                  sll          s2, ra, s1
                  slt          t0, t6, s4
                  sltu         a5, a6, s7
                  slli         s9, t4, 11
                  lui          a4, 196509
                  add          ra, s11, ra
                  slti         s7, a6, -613
                  or           s1, s4, s6
                  srai         s0, s2, 17
                  nop
                  srl          s3, t0, gp
                  srli         a4, a2, 18
                  srli         s10, a4, 10
                  sub          a2, a5, t1
                  add          ra, s0, s11
                  sltu         s5, a1, ra
                  auipc        s7, 536132
                  and          zero, t5, a5
                  slli         a0, t2, 28
                  or           a2, s9, s1
                  or           s1, ra, a3
                  srai         a1, tp, 18
                  srli         t5, s6, 10
                  sll          t6, a5, a7
                  slti         s3, s4, 1457
                  sra          a2, s0, a0
                  slli         a5, s9, 20
                  slli         s9, s8, 24
                  sll          t1, t4, a5
                  srli         s7, s2, 6
                  slli         t0, tp, 26
                  ori          t1, s9, -703
                  srl          s11, s7, s10
                  slt          a2, s6, t1
                  ori          s6, t0, 2020
                  or           s2, sp, t4
                  auipc        a0, 31440
                  slti         s7, t6, -779
                  slt          a0, s1, a3
                  sub          s10, s10, a0
                  slti         s9, s7, -347
                  srai         tp, s10, 29
                  slti         s2, a7, -422
                  srl          t3, t4, t0
                  sra          a2, t5, s6
                  slti         s8, s8, 1437
                  sltu         a7, a6, t6
                  auipc        ra, 209554
                  slli         gp, t1, 3
                  nop
                  nop
                  or           a7, tp, a0
                  xori         a2, t0, -179
                  slt          t5, s2, tp
                  addi         t4, s3, -99
                  slti         a0, s11, 212
                  sll          t0, s4, s5
                  slli         t6, sp, 8
                  slli         ra, s8, 10
                  lui          a1, 378081
                  sub          t6, a6, s9
                  and          s2, a1, t4
                  slli         zero, s5, 22
                  nop
                  xori         gp, a1, 587
                  auipc        a5, 1000559
                  sltiu        t5, s1, 1201
                  ori          s2, a0, -1575
                  sltiu        s9, s9, -996
                  sub          s8, zero, a1
                  srl          a4, s0, s2
                  sub          t1, s8, s4
                  auipc        s3, 657993
                  sll          s0, s7, a5
                  sub          ra, t3, gp
                  andi         s5, a2, -1834
                  srai         t3, ra, 3
                  and          t0, s3, t0
                  addi         a7, zero, -1164
                  slti         s9, a7, -1740
                  srai         s3, s2, 11
                  slt          gp, s5, a2
                  lui          gp, 764705
                  sll          s0, t5, s0
                  auipc        s3, 408064
                  ori          a0, t1, -2007
                  sll          tp, t3, a0
                  srl          t1, a2, t6
                  sltu         s0, s1, s2
                  andi         s0, s7, -1571
                  auipc        s4, 474636
                  slt          a2, a0, s6
                  or           t0, t6, a1
                  srli         s9, s3, 8
                  srli         gp, s5, 29
                  or           t4, a4, s10
                  srl          s8, s10, zero
                  or           s8, t5, s11
                  slli         t2, t0, 0
                  sltiu        zero, s4, -2035
                  sltiu        s3, s5, 1867
                  slt          a1, t4, t6
                  slt          a0, gp, zero
                  lui          s3, 949383
                  slti         s10, t6, -1511
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s10, 0xc4f746f2
                  li           s4, 0x80000000
                  li           s3, 0x80000000
                  li           s8, 0xaa34a8f5
                  li           a7, 0xffffffff
                  li           s11, 0xccfb2b31
                  li           t2, 0x0
                  li           ra, 0x736e30c7
                  li           s0, 0xffffffff
                  auipc        s11, 350541
                  addi         a7, s8, -423
                  lui          s4, 559211
                  add          s4, t2, s4
                  sub          s11, t2, s8
                  nop
                  sub          s4, t2, s10
                  nop
                  addi         ra, s0, 603
                  lui          t0, 812205
                  lui          t0, 756164
                  auipc        s4, 386690
                  lui          s11, 724218
                  auipc        ra, 819128
                  add          s3, s3, s3
                  nop
                  addi         s11, t0, 1778
                  lui          s10, 84069
                  add          t2, ra, s3
                  sub          s0, s0, s0
                  lui          ra, 937084
                  auipc        t0, 1014962
                  auipc        s11, 811726
                  sub          s3, s10, s10
                  add          t2, s0, s10
                  auipc        s3, 402287
                  sub          ra, s4, s3
                  auipc        t2, 932269
                  addi         s0, s0, -2020 #end riscv_int_numeric_corner_stream_16
                  slt          gp, s11, s1
                  ori          a2, a1, 90
                  xori         s0, zero, -1852
                  sll          s6, t1, t1
                  addi         s1, a7, 1225
                  andi         t4, a4, -141
                  ori          s6, ra, -43
                  and          t2, s9, a3
                  addi         t5, gp, 1461
                  srl          a1, s8, s1
                  slt          s10, zero, zero
                  sll          s2, t1, s3
                  sltu         a1, s4, s6
                  auipc        t1, 251883
                  add          s9, zero, zero
                  and          t0, t4, s5
                  srai         t4, a0, 24
                  nop
                  and          t5, a2, s0
                  sub          s7, t2, a1
                  sll          t5, s3, t0
                  sltiu        s7, t0, -716
                  addi         ra, s3, 746
                  add          s6, s0, sp
                  xori         s5, t0, 20
                  ori          t3, a6, -1333
                  andi         a4, a3, -1354
                  slt          tp, s2, s6
                  slli         a7, a3, 22
                  auipc        s9, 123387
                  slti         a0, s10, -1468
                  andi         a7, a0, -1568
                  andi         s3, s6, 874
                  ori          ra, t2, -208
                  sltu         t1, t0, s9
                  or           s3, a7, t3
                  auipc        s10, 375819
                  slti         a7, s4, 622
                  add          t6, t0, t4
                  auipc        a7, 173878
                  sub          s10, t2, s10
                  sltu         s0, s2, t5
                  xori         a4, s9, 1323
                  andi         t1, s2, -1370
                  sra          t1, s9, a7
                  lui          t2, 132409
                  andi         t6, s2, -901
                  add          s6, s10, t3
                  and          s10, t3, s7
                  xor          t6, sp, gp
                  sltiu        a0, zero, 2026
                  srl          t3, a2, a5
                  sub          t3, s7, zero
                  slt          a1, t1, s1
                  auipc        t6, 700238
                  andi         t1, s11, -1878
                  add          t0, t2, t2
                  sll          a5, s7, s3
                  lui          a0, 839136
                  auipc        s9, 960996
                  or           s1, t5, s11
                  xori         s10, s10, -1596
                  slt          s11, t6, a0
                  slti         s8, s0, 7
                  srai         s11, t1, 8
                  or           ra, a6, t1
                  sub          zero, a0, s4
                  slli         t2, s1, 4
                  xori         s6, s8, -873
                  slt          t2, a1, a3
                  add          t2, a2, t4
                  slti         a5, a6, 328
                  srli         s1, t6, 7
                  srai         zero, a0, 17
                  xori         a7, a7, 811
                  and          a5, sp, t5
                  slli         t4, s5, 22
                  slli         t5, a2, 12
                  slti         tp, a3, 940
                  nop
                  andi         s1, a3, 73
                  addi         s10, a3, 1139
                  auipc        s11, 747239
                  and          gp, a7, tp
                  sra          s6, s7, s0
                  xori         ra, t0, 809
                  sltu         s11, s2, a4
                  srl          t6, s8, a2
                  slli         a5, a6, 24
                  srai         t1, s10, 27
                  sltu         s8, t6, zero
                  auipc        a5, 776696
                  ori          s2, t1, -396
                  srli         s5, a0, 3
                  xor          a2, s9, ra
                  or           t2, sp, s6
                  sltu         s8, s9, t4
                  add          t1, a7, s1
                  sra          s8, s4, s1
                  andi         t5, a2, -1264
                  lui          s5, 674199
                  slt          t0, a1, s1
                  andi         s4, s10, 1766
                  or           t4, s5, s3
                  ori          s10, s7, 1756
                  lui          t5, 696547
                  sub          s9, s5, a5
                  slti         s10, t3, 43
                  srli         s9, s10, 29
                  slt          s1, t1, a7
                  addi         t2, t6, 1337
                  srai         s0, s11, 17
                  sltiu        s7, gp, 302
                  or           t0, s1, tp
                  and          a7, t4, a5
                  sll          t0, s10, t4
                  sltiu        s9, s2, -226
                  sra          t2, s9, s8
                  sltiu        tp, zero, -1887
                  sltiu        s1, gp, 1733
                  xor          s8, t6, s9
                  or           a2, s1, s2
                  slli         s5, s10, 0
                  xor          s8, t6, a1
                  sltu         s1, a4, tp
                  and          a7, gp, s2
                  xori         a7, s1, 1857
                  sltu         t4, s5, a3
                  add          a1, t4, zero
                  add          t2, s11, tp
                  addi         s9, a3, 464
                  andi         s0, s11, 1867
                  xori         gp, s9, -2013
                  add          t1, a2, t1
                  srli         t3, s9, 19
                  slt          s0, a0, a7
                  slt          s3, s9, a5
                  lui          t4, 115506
                  slt          s11, s10, s10
                  ori          s7, t5, 469
                  srli         s3, gp, 10
                  and          t4, tp, a5
                  nop
                  slti         gp, zero, 880
                  sll          a2, s3, t6
                  sltu         s7, a2, t0
                  andi         s10, t6, -837
                  sra          s3, a3, s1
                  sll          s9, t5, zero
                  slli         s3, a3, 30
                  lui          s0, 14739
                  srl          a7, gp, a1
                  sltu         t4, a4, tp
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s6, 0x0
                  li           s8, 0x1e8321d7
                  li           a0, 0x0
                  li           a2, 0x0
                  li           s3, 0xa2e9c35a
                  li           t0, 0x0
                  li           tp, 0x0
                  li           t6, 0xffffffff
                  li           a5, 0x80000000
                  add          s8, t2, t6
                  lui          s3, 824667
                  lui          a2, 550877
                  add          tp, t0, s8
                  sub          t2, t0, tp
                  auipc        s8, 327095
                  auipc        a2, 833447
                  nop
                  auipc        a0, 228292
                  lui          s6, 844343
                  lui          s6, 327090
                  add          tp, s3, s3
                  auipc        tp, 291965
                  auipc        s3, 194827
                  auipc        a2, 389466
                  nop
                  lui          tp, 174313
                  addi         s8, tp, -1243
                  addi         a5, s8, 509
                  nop
                  addi         s8, tp, 2038
                  add          a2, s3, a2
                  nop
                  auipc        s6, 870236
                  add          s3, a5, s6
                  lui          tp, 723269
                  nop
                  lui          t0, 394486 #end riscv_int_numeric_corner_stream_12
                  ori          s3, sp, -1929
                  andi         s11, s7, 1402
                  xor          t6, t4, s4
                  sll          s3, t4, s3
                  srl          t6, t6, t6
                  xor          s3, s6, s6
                  auipc        tp, 82906
                  lui          s0, 864396
                  srai         s11, s10, 10
                  or           a2, t4, s1
                  and          s9, a2, t5
                  xori         s3, tp, -340
                  sll          s10, t4, s1
                  slli         t4, s9, 7
                  slli         s4, a0, 11
                  auipc        a1, 792184
                  sra          s10, s10, s4
                  andi         t6, s3, -1914
                  and          s9, s2, s7
                  sra          s3, a7, s7
                  slti         s5, s2, 308
                  sra          t2, s5, s7
                  slti         tp, t3, -1062
                  addi         ra, s1, 762
                  auipc        a0, 55966
                  ori          s1, t2, 829
                  xori         a0, s6, -1103
                  andi         t6, a2, -898
                  sltiu        s5, t1, 331
                  slti         t1, a7, -297
                  sra          s0, s10, zero
                  slt          s1, a5, s11
                  slli         a7, s1, 23
                  sltu         s0, gp, s1
                  xori         t3, s8, -189
                  addi         t0, t4, 1980
                  ori          a7, a0, -967
                  srl          a0, t6, t3
                  sub          s8, t6, t6
                  sra          tp, s7, t2
                  srai         a0, a3, 7
                  sra          a7, a5, t1
                  xori         s10, t0, 185
                  xor          t4, t6, s3
                  slli         a1, t3, 18
                  srl          s5, s9, a4
                  auipc        t2, 468704
                  and          zero, t2, a0
                  or           gp, a4, t0
                  slti         s11, t5, 1686
                  andi         a0, a1, 763
                  slt          s0, a3, s9
                  slli         t4, s3, 25
                  xor          s8, a3, s10
                  add          a1, t3, a4
                  auipc        a7, 1045581
                  sltiu        s5, s9, 797
                  auipc        a5, 113893
                  nop
                  srl          a2, a2, a2
                  auipc        s9, 243847
                  srai         t4, s2, 2
                  sltu         s10, zero, a3
                  ori          gp, zero, -194
                  and          t3, t3, t4
                  lui          t6, 631855
                  srl          ra, a2, a7
                  sll          t5, s7, a5
                  xori         s4, s1, -617
                  sra          a4, s9, s9
                  sra          t2, t3, s6
                  lui          s5, 483225
                  sltiu        t4, t2, -2024
                  addi         t1, s3, -964
                  or           s9, tp, a5
                  xor          s5, t0, t6
                  sub          s6, s5, a4
                  andi         a5, tp, 1979
                  addi         ra, a5, -443
                  sltu         s6, a5, tp
                  slti         a2, t6, 1650
                  sra          s7, a2, zero
                  addi         tp, s4, 161
                  or           t6, t2, s3
                  srli         t4, s5, 5
                  slt          s6, tp, s10
                  ori          a1, s4, 188
                  andi         s1, t4, 70
                  ori          s7, t0, 741
                  slti         a2, a2, 557
                  sra          s1, s0, s9
                  srl          a1, s10, ra
                  nop
                  sub          t1, s8, t6
                  sll          gp, gp, t4
                  or           s9, s3, s3
                  ori          zero, t4, 1877
                  lui          s0, 467664
                  ori          gp, s0, -1524
                  sra          s4, s5, tp
                  xor          s0, t5, t2
                  sltu         s9, gp, t6
                  sll          tp, t0, t5
                  sltu         a5, s7, a3
                  xori         t0, t6, -791
                  slt          t0, a3, a3
                  sub          t6, s10, zero
                  sltiu        s11, tp, -1106
                  srai         s5, t1, 21
                  sub          ra, s5, zero
                  lui          s10, 985650
                  xori         s3, a5, -16
                  srai         t2, s8, 12
                  and          t4, s7, a3
                  srli         t1, s9, 1
                  lui          a4, 30514
                  slli         t4, s5, 12
                  ori          s1, a2, -1147
                  add          t4, a2, t0
                  xor          gp, a1, a4
                  addi         a5, a1, -161
                  and          a1, a6, a5
                  add          s9, ra, gp
                  sltu         s10, t4, a3
                  andi         s5, s8, -121
                  andi         t3, tp, -251
                  srai         zero, s1, 27
                  and          t1, s7, s4
                  slli         t5, s4, 11
                  srai         gp, a7, 0
                  lui          s7, 469947
                  xori         t1, s9, 1325
                  sub          s3, a2, a6
                  add          s7, a2, sp
                  sltu         t0, a4, s11
                  sra          a2, t5, a2
                  sll          a0, sp, s3
                  lui          s3, 449038
                  sltu         t5, tp, a1
                  srli         s1, ra, 15
                  or           s5, s10, tp
                  slli         a0, s7, 19
                  slti         a1, a3, -179
                  sltu         t3, s10, a3
                  slt          t1, a6, a0
                  sub          s10, t6, s4
                  auipc        s7, 956736
                  sltu         s6, t1, t1
                  sra          a0, a4, s3
                  slli         zero, t5, 28
                  andi         t2, s11, -310
                  or           t6, a7, tp
                  addi         t0, t3, 2047
                  nop
                  xori         a4, t5, 282
                  xori         s10, s10, -1465
                  sll          s1, s8, t3
                  sra          ra, t4, t3
                  auipc        gp, 205616
                  slti         tp, zero, -789
                  auipc        s3, 357337
                  lui          s8, 107187
                  nop
                  sltu         s7, s11, t6
                  sltu         a2, s6, s2
                  sub          s6, t2, s5
                  slti         s1, t0, -1600
                  xori         t1, a6, -1873
                  nop
                  add          a5, sp, a2
                  and          a2, a1, a6
                  andi         t2, s0, -1811
                  xori         a7, t6, -1357
                  xor          a2, t1, a2
                  and          s3, t0, zero
                  srli         s11, s1, 26
                  sll          s9, a1, a2
                  and          t1, s9, zero
                  andi         a4, s6, -317
                  add          a1, gp, t2
                  add          s5, t2, sp
                  sub          s2, s0, s7
                  srai         s1, a3, 5
                  auipc        s9, 832318
                  sltu         s8, zero, s10
                  sltiu        s1, s1, -293
                  or           s4, zero, t4
                  add          a1, s0, s1
                  sra          a1, t5, t1
                  slt          zero, a5, a7
                  nop
                  slti         s1, t2, -1088
                  srl          s1, a1, gp
                  sra          s9, gp, s2
                  xor          s3, t5, a4
                  srli         gp, s6, 18
                  sra          t2, s0, s11
                  andi         s2, a7, 1266
                  srai         s0, a2, 18
                  addi         gp, a6, -378
                  andi         zero, s11, -1798
                  add          a2, s5, s6
                  srli         s5, a6, 18
                  or           a5, zero, t0
                  sll          s6, a3, t5
                  sltiu        a5, s10, 9
                  slti         a5, gp, 1535
                  srl          s5, t6, gp
                  addi         s0, sp, -565
                  lui          a5, 72146
                  lui          zero, 931989
                  sltu         t5, s4, a4
                  sltu         s10, a1, a6
                  sltiu        a5, s1, 1074
                  slti         s9, s3, -581
                  sltu         t3, t3, a0
                  nop
                  or           s5, gp, a0
                  add          a1, a5, a5
                  slt          a1, a7, s7
                  nop
                  slt          s1, a0, s6
                  sll          a0, s8, a7
                  srli         t6, ra, 14
                  slli         s4, s8, 17
                  srli         s3, a4, 22
                  xori         a7, s8, 1588
                  nop
                  xori         t2, a6, -1954
                  lui          a1, 243568
                  sll          t1, tp, a6
                  nop
                  xor          a0, t2, a5
                  addi         s2, s10, 1125
                  add          t2, s11, a5
                  sltu         s1, gp, a1
                  add          s7, a3, a0
                  sra          s3, tp, t0
                  and          s2, tp, s11
                  nop
                  sub          s1, s5, s4
                  srai         t4, a4, 6
                  slt          t3, s5, s4
                  nop
                  sra          a1, t1, a4
                  slti         t0, s5, 343
                  xori         s1, s6, -1314
                  xor          s6, s2, s1
                  srl          s8, a6, a2
                  add          a5, s0, t4
                  slt          gp, s11, t6
                  sltu         t3, s10, tp
                  lui          s0, 528324
                  sltu         t4, t3, a4
                  or           gp, t2, a2
                  srl          a1, s0, s5
                  lui          t2, 839042
                  slti         a7, t0, 1088
                  slt          s2, gp, s9
                  sub          s2, s5, a7
                  addi         t0, ra, -1171
                  ori          t5, s10, -708
                  sll          tp, s5, ra
                  srai         s8, s7, 2
                  sub          t4, sp, a6
                  sub          t3, s8, a6
                  andi         a5, a2, 1548
                  and          s8, gp, t5
                  or           s0, t6, s7
                  nop
                  slt          gp, s2, t2
                  auipc        a7, 810946
                  sra          ra, s0, gp
                  sub          a5, s9, t4
                  slt          s4, s11, s3
                  sra          t0, zero, s8
                  sltu         a5, t2, t3
                  slt          a0, a2, gp
                  sub          t4, a0, t1
                  slt          t3, s9, a0
                  sltu         a7, gp, t0
                  slti         zero, a7, -1184
                  auipc        a4, 466905
                  add          a7, s3, a1
                  addi         gp, t4, 1863
                  nop
                  slti         s10, a0, 925
                  xori         t3, s5, 691
                  auipc        gp, 504280
                  sltiu        a7, a0, 105
                  slt          s5, t3, a1
                  sll          s0, t3, s10
                  slti         a2, s10, -226
                  slli         s1, zero, 19
                  lui          t1, 95534
                  addi         t6, a0, -1001
                  slt          t1, s6, ra
                  slli         s11, tp, 24
                  xor          ra, t2, a5
                  nop
                  and          a7, t1, s10
                  sra          s5, a2, sp
                  ori          a5, t4, 1702
                  add          s11, s2, s7
                  auipc        t4, 795352
                  or           ra, t5, a1
                  slti         s4, s0, 1086
                  srai         tp, s0, 15
                  sll          t2, t2, t5
                  sltu         a1, a7, t4
                  sltu         t4, s10, zero
                  sub          a5, s5, s6
                  srl          zero, ra, t5
                  auipc        gp, 974796
                  srli         s5, a4, 4
                  or           t6, t5, a1
                  srli         zero, s2, 24
                  srai         s6, t2, 28
                  addi         s7, gp, -159
                  srai         s6, tp, 16
                  sub          a5, s3, a5
                  addi         tp, s7, 1397
                  and          s6, t4, gp
                  lui          t3, 312339
                  xori         s4, s3, 1428
                  lui          s7, 502509
                  srli         a5, a6, 18
                  or           s2, s8, a3
                  xori         s3, t5, -1246
                  xor          t0, s1, t2
                  nop
                  slti         s10, t3, -1918
                  nop
                  sll          t3, s6, t5
                  or           a0, a2, a3
                  ori          a4, t4, 1340
                  lui          t2, 252792
                  auipc        a5, 936849
                  slt          s8, s7, a2
                  auipc        zero, 890015
                  slt          a2, t6, t0
                  slt          t0, s9, s11
                  slti         a2, s2, 1330
                  slt          a5, a4, s9
                  xor          s4, s5, sp
                  auipc        s0, 461774
                  lui          t4, 477538
                  slt          a1, t1, t6
                  slt          gp, s9, t0
                  add          t4, s9, a5
                  or           t3, t4, a5
                  add          ra, a5, a2
                  sltiu        s1, a0, -84
                  or           t1, t2, gp
                  addi         s11, a6, 405
                  lui          a2, 33419
                  addi         tp, s4, -1357
                  or           zero, t2, s9
                  nop
                  addi         s10, t3, 1412
                  slli         s7, zero, 27
                  add          s6, s10, a6
                  or           a7, tp, s0
                  sltiu        ra, a2, 1019
                  sub          s8, a1, t3
                  xori         s9, a1, -696
                  add          t3, t3, s8
                  sltu         a1, s5, a1
                  nop
                  slli         gp, t1, 28
                  slli         s3, s4, 5
                  sra          s1, s6, a6
                  sra          a4, s9, s3
                  lui          s11, 666318
                  auipc        tp, 433361
                  sll          s7, t2, s3
                  xori         s9, sp, 687
                  sll          s6, t0, s10
                  auipc        t1, 965231
                  sltiu        s9, zero, -458
                  slti         s3, a7, -1444
                  slt          t3, a7, zero
                  srli         t5, a7, 20
                  sra          s7, s0, a2
                  sra          a7, s6, s7
                  or           s11, t2, a5
                  sltiu        gp, t3, -735
                  nop
                  slti         s2, a4, -1774
                  slli         a1, t4, 23
                  addi         s4, s7, -563
                  auipc        a2, 871140
                  ori          s0, t3, 1866
                  or           s11, t5, ra
                  srai         s11, t2, 27
                  srli         tp, s7, 24
                  auipc        a2, 938697
                  auipc        s10, 183918
                  lui          a5, 977190
                  auipc        s9, 432437
                  xor          s8, t1, a6
                  sll          t5, s7, tp
                  addi         a0, s2, -534
                  sub          tp, a0, s4
                  sll          t3, s4, tp
                  slli         a5, tp, 17
                  xor          t3, s6, s9
                  lui          s9, 429348
                  sra          s7, a7, s6
                  ori          t0, sp, 1153
                  andi         t1, t5, 247
                  slti         a1, t6, -690
                  slti         t6, s9, -492
                  slli         a5, a2, 15
                  andi         t5, s11, -140
                  addi         ra, zero, -1347
                  srai         gp, gp, 0
                  srli         s10, tp, 17
                  addi         tp, a3, -1537
                  andi         s10, s11, 993
                  sltu         s1, t3, s3
                  slli         s11, t6, 25
                  srl          s4, s4, s1
                  add          s7, s0, t2
                  srai         t6, t4, 25
                  or           a0, s9, a2
                  nop
                  xori         t4, a3, -413
                  srli         t6, tp, 9
                  slli         s10, s5, 15
                  srl          ra, t5, a1
                  sra          ra, s0, s4
                  xori         t3, ra, -8
                  addi         t5, t5, -984
                  srai         s1, a4, 3
                  add          tp, s4, s10
                  srl          ra, s3, s7
                  auipc        s8, 532342
                  add          a7, sp, s3
                  ori          t1, a0, -558
                  xori         a5, s4, -547
                  or           t4, s1, s4
                  add          t1, a2, s10
                  sub          t6, s4, a7
                  sll          t3, s4, a7
                  nop
                  xor          s1, s1, s3
                  sltiu        tp, a2, 1857
                  slti         s6, a7, 1391
                  sra          s11, t5, s8
                  sltiu        t2, a5, 2003
                  slti         a7, t1, 1174
                  or           t4, s5, gp
                  sltiu        a0, s0, -1293
                  sll          gp, a4, a3
                  xor          gp, a4, a0
                  slt          s11, t5, a4
                  lui          s4, 1042078
                  slti         s11, s8, 1715
                  and          s5, a1, ra
                  sll          a1, t1, a0
                  or           s6, s6, t4
                  nop
                  xori         s10, a7, -2033
                  and          t3, tp, a3
                  sub          a5, t5, s0
                  add          t4, t3, s0
                  slt          s1, t6, gp
                  sltu         a5, s3, t5
                  xor          a5, s9, t5
                  sltu         a5, t2, s0
                  sltiu        s6, a4, -1497
                  sll          zero, s6, s11
                  srai         t4, tp, 1
                  srai         a7, a6, 20
                  or           t4, s9, s10
                  sltu         a2, zero, a1
                  sra          a0, sp, a2
                  srl          a2, s10, s10
                  srli         gp, s3, 6
                  sub          a0, s0, a1
                  ori          a2, s8, -1292
                  addi         s11, a6, 1293
                  srai         t2, t3, 19
                  ori          s7, s4, 366
                  sltiu        t6, s5, 1769
                  sll          gp, s0, s8
                  sra          s5, s0, ra
                  and          s8, s7, a6
                  andi         zero, a7, -1443
                  sltiu        s6, t3, -493
                  sltu         ra, sp, t1
                  or           ra, a1, s2
                  srl          s11, ra, t4
                  sub          s9, a2, a2
                  srli         a1, t6, 20
                  addi         tp, s11, -1574
                  sltu         s1, s8, t1
                  xori         tp, s9, 402
                  and          t4, gp, a2
                  xor          t3, a1, s11
                  xori         s5, s10, -161
                  slli         gp, s7, 23
                  srli         t4, t6, 3
                  nop
                  sltiu        s2, a4, -374
                  add          s9, s5, a4
                  ori          t0, t6, -368
                  lui          s1, 674338
                  slli         s7, s11, 25
                  sltu         tp, s3, t6
                  ori          s3, s0, 1481
                  xori         zero, t1, -954
                  andi         zero, s3, 1690
                  sltiu        a7, s0, -1476
                  srai         s9, t0, 29
                  xor          s0, s2, a5
                  slli         a7, s8, 8
                  srli         a4, a0, 22
                  addi         s9, t3, 2017
                  srli         s8, s7, 10
                  ori          s4, t6, 684
                  sra          s2, s0, t3
                  slt          s3, s3, t3
                  srli         s1, a1, 16
                  xori         s1, a6, 4
                  or           a0, t2, a2
                  or           ra, a1, s10
                  lui          a7, 556159
                  slti         a0, a3, -421
                  sub          s7, a3, s1
                  slt          zero, s8, t3
                  lui          a4, 38042
                  sra          s8, s11, t1
                  slt          s3, gp, a4
                  and          s4, s0, t1
                  addi         a7, t4, -996
                  auipc        a5, 246840
                  sll          s6, s10, s8
                  sra          a2, t2, a7
                  addi         a5, a2, 779
                  nop
                  slli         s11, s0, 20
                  sltiu        s1, s5, 1811
                  lui          s5, 510267
                  and          a2, t3, a5
                  xor          s5, t4, t3
                  and          t2, sp, zero
                  xori         s0, s0, 438
                  xori         a4, s8, 1598
                  and          t5, gp, t1
                  auipc        gp, 738488
                  and          s11, gp, t1
                  sll          s8, s11, a1
                  or           a1, a3, t5
                  srai         s7, s3, 31
                  srli         zero, s6, 15
                  sll          t3, gp, t0
                  sltiu        t3, gp, -1448
                  sub          t5, s5, s11
                  or           s0, a1, gp
                  sltu         s6, s6, a7
                  srai         s5, s9, 30
                  and          s11, s11, sp
                  xor          a2, zero, a6
                  srai         t5, sp, 24
                  xor          a2, a6, s2
                  slt          t2, t2, s10
                  auipc        s8, 937405
                  srli         s1, t5, 23
                  lui          s2, 239978
                  andi         a7, s0, 532
                  nop
                  sltu         s0, s2, sp
                  auipc        s11, 670800
                  slti         s6, s9, -405
                  nop
                  nop
                  xor          s7, zero, a7
                  srl          s7, t4, s7
                  sltu         t0, s8, t6
                  sll          a1, a6, a0
                  lui          s8, 113992
                  sltiu        a1, sp, -1653
                  slt          gp, zero, s7
                  add          s8, t1, s11
                  srli         s4, s1, 23
                  and          a5, sp, ra
                  and          a4, t4, s6
                  or           s4, s5, gp
                  srai         t2, a6, 2
                  srai         t0, a2, 16
                  sltu         ra, s6, a7
                  sra          a7, s6, ra
                  addi         s4, a3, -1335
                  andi         zero, zero, -1067
                  sltu         s3, s10, t5
                  and          t5, s2, a3
                  andi         tp, a2, 635
                  srl          s5, tp, t2
                  sll          a4, a4, s11
                  or           a2, t4, t1
                  and          t1, ra, s6
                  slti         gp, a2, 180
                  slti         s9, a6, -1802
                  and          s11, a6, t0
                  srl          s9, s7, s0
                  sub          t2, t3, a2
                  sltiu        a7, a1, -1731
                  addi         s9, tp, -689
                  slt          t2, a0, s4
                  sltu         t6, s9, t1
                  slt          s4, ra, t3
                  auipc        s7, 500390
                  srli         a2, t3, 10
                  xor          s7, s9, s11
                  lui          ra, 456287
                  add          t1, a6, t0
                  sltiu        a4, t0, 1090
                  auipc        t1, 734788
                  sltu         a7, a2, sp
                  sltiu        s1, t5, -1445
                  srl          s11, t3, s0
                  sll          s3, s4, t3
                  sra          tp, a7, sp
                  add          s10, a4, a6
                  andi         a4, t2, -345
                  ori          s8, s7, 148
                  sll          a0, t0, s9
                  sltiu        a7, t5, -1342
                  and          s7, sp, t4
                  srli         s1, a1, 25
                  andi         s1, a2, -324
                  or           s11, t6, a4
                  sltiu        s6, t1, 798
                  andi         a0, a7, 1516
                  slli         s0, a2, 21
                  srli         ra, a1, 20
                  and          ra, a3, t0
                  srai         zero, s7, 2
                  addi         t2, sp, -1667
                  slli         a4, a3, 6
                  sra          s9, s6, s4
                  sub          a1, s9, t2
                  srai         s0, s10, 1
                  slti         s4, t2, -146
                  xor          s5, a3, tp
                  ori          s0, tp, -60
                  addi         tp, gp, 892
                  and          t4, s7, s11
                  add          s0, s0, ra
                  sll          s8, a5, t5
                  auipc        s2, 942585
                  addi         s1, t5, -1580
                  andi         s3, s1, -213
                  srl          s2, s8, s10
                  xori         s9, s5, -1491
                  add          t6, t6, s6
                  or           a1, a4, a7
                  srai         a1, t2, 16
                  ori          s8, a6, -927
                  sra          a4, t5, s4
                  addi         t4, s1, -1518
                  add          s7, a7, s3
                  or           t6, a5, s3
                  or           zero, t1, t2
                  or           a5, s3, t4
                  lui          s0, 285508
                  and          s6, t6, a3
                  nop
                  lui          a2, 681839
                  ori          s5, t3, 1375
                  auipc        s4, 965763
                  srl          s9, gp, a0
                  or           zero, t3, sp
                  slli         a0, s7, 25
                  srli         gp, ra, 11
                  lui          s11, 748600
                  nop
                  ori          t1, a4, 199
                  andi         s5, t2, -1227
                  and          a5, s11, a4
                  slti         t1, zero, -972
                  srli         s4, s2, 31
                  sll          t0, t4, t3
                  ori          a1, s0, 807
                  and          s2, zero, s9
                  xori         ra, t4, -376
                  srai         a0, a0, 9
                  andi         s0, a3, 1888
                  srai         s11, gp, 23
                  srli         s5, s9, 21
                  addi         s11, s5, 1942
                  add          s11, s4, s5
                  and          a4, zero, gp
                  nop
                  and          s5, s11, s0
                  addi         tp, a2, -86
                  andi         ra, t6, -1370
                  sltu         a4, t4, s2
                  sll          zero, sp, a4
                  xori         gp, t1, -1732
                  andi         a2, s10, 1775
                  sll          t1, s0, s1
                  srli         s7, tp, 4
                  xor          s0, tp, t2
                  andi         a5, s8, -879
                  andi         ra, t3, 336
                  slli         t0, s5, 29
                  sll          s7, s9, a7
                  slli         s9, a0, 16
                  slt          s8, ra, s7
                  srli         t6, s2, 9
                  sub          gp, ra, a1
                  srli         tp, s1, 24
                  srl          s11, t6, a3
                  sll          t3, t3, t2
                  slli         ra, zero, 22
                  slti         s1, a7, 587
                  srai         a7, a0, 25
                  srli         gp, a7, 20
                  ori          s7, t5, -1314
                  slli         t3, a3, 5
                  sra          s9, a3, t5
                  slli         t1, s7, 22
                  sub          a5, a1, t2
                  ori          s6, s7, 1716
                  sll          s5, t4, s3
                  lui          a5, 1037304
                  srli         gp, s7, 9
                  and          s7, a4, s5
                  ori          a0, ra, 1599
                  sll          a7, a5, s6
                  slt          t2, t6, a1
                  nop
                  sltu         s5, gp, s3
                  addi         s6, s5, -1296
                  lui          t5, 708672
                  sub          t4, ra, a5
                  slt          s2, t4, s8
                  slli         s5, a5, 10
                  auipc        s4, 845081
                  srli         zero, s7, 25
                  srl          t5, s1, ra
                  sll          s9, t5, t0
                  sra          s6, s0, a4
                  ori          s2, a0, 479
                  srl          s11, tp, s1
                  sll          a5, a4, sp
                  auipc        a0, 144529
                  srl          t5, s8, s10
                  sub          s9, t3, s7
                  and          t2, s2, a0
                  slt          t4, s8, ra
                  sub          a4, t3, t6
                  sra          a5, s2, s2
                  and          a0, s9, t2
                  xori         s3, s10, 755
                  ori          t2, t3, 1548
                  lui          s11, 937236
                  ori          s10, t5, 686
                  andi         s7, t0, -1744
                  andi         tp, s8, -1679
                  add          t3, t5, t0
                  auipc        s2, 862852
                  sub          a1, s6, s1
                  addi         s11, t1, 495
                  addi         t2, t6, 1552
                  xor          a0, s3, gp
                  sub          s9, a0, gp
                  sub          a4, s1, ra
                  addi         a4, s9, -679
                  slti         tp, a1, 1396
                  slt          t4, sp, tp
                  auipc        t0, 268592
                  nop
                  sub          a4, t2, a7
                  sll          t0, t2, a1
                  sltiu        a4, t2, 2005
                  andi         s10, s10, -1701
                  xori         zero, s11, -158
                  xor          t4, a5, a3
                  or           t6, t5, a6
                  slti         s10, t1, 748
                  slli         t2, a6, 8
                  sub          s8, ra, s1
                  addi         zero, gp, -1947
                  or           s7, s8, t1
                  nop
                  andi         a7, ra, -459
                  add          t1, t1, t1
                  nop
                  addi         s5, s10, -1778
                  srli         s4, t2, 26
                  slli         s3, s6, 23
                  nop
                  xor          s9, s8, a3
                  sll          t5, gp, a4
                  and          s5, zero, a1
                  ori          ra, t0, 1161
                  andi         a7, s9, -1545
                  xori         t3, s3, -1252
                  sra          s11, a4, s7
                  slli         t5, a5, 5
                  xor          t1, a7, zero
                  sub          t4, t2, tp
                  sll          t3, s11, s8
                  or           s11, s8, s2
                  ori          a0, s9, -118
                  sltu         a0, a0, s2
                  slti         tp, zero, 1606
                  sub          t5, a7, s1
                  slti         s9, a5, -1435
                  lui          s4, 443836
                  srli         s9, s11, 5
                  auipc        a4, 185340
                  slt          a4, s7, s1
                  slti         a2, s7, -1771
                  srl          gp, s4, a6
                  ori          a5, zero, -1529
                  andi         s5, a6, 1685
                  sll          s6, a3, a3
                  sltu         s9, s10, a6
                  sltu         a0, gp, s11
                  srai         s10, s8, 28
                  srli         a1, a4, 25
                  slt          s2, s5, s6
                  addi         a0, gp, -1439
                  xor          a5, s3, s3
                  andi         ra, a0, -1632
                  slli         t4, t2, 27
                  sltiu        t0, s7, -798
                  sltiu        s7, s4, 951
                  andi         a7, gp, -1224
                  srli         s1, t5, 27
                  sll          s1, t1, s8
                  sltiu        t3, a4, -156
                  and          s0, t0, t6
                  or           t4, a7, s9
                  lui          a2, 708380
                  sll          s7, s4, s8
                  srli         a1, s0, 15
                  slti         s10, a7, -197
                  or           a4, a2, s6
                  addi         ra, s7, -988
                  slli         s2, t0, 29
                  srli         a7, t0, 30
                  slti         s10, tp, -1669
                  sll          t5, sp, gp
                  addi         s0, s3, 321
                  srai         t4, gp, 25
                  add          zero, a2, t5
                  sra          s1, s1, sp
                  slli         a4, s11, 28
                  srli         s8, t2, 8
                  add          s9, a0, s11
                  nop
                  andi         t5, a5, 1138
                  slti         s7, a2, 1367
                  auipc        s5, 870618
                  xor          a0, s4, s7
                  xori         tp, s11, 845
                  srli         t4, s8, 16
                  nop
                  or           a1, t1, s1
                  slt          t0, t4, a0
                  xori         t0, sp, 47
                  sub          s5, a5, t2
                  sltu         s5, a5, a1
                  srai         s7, t6, 4
                  auipc        s10, 1042652
                  addi         tp, a3, 1670
                  sra          a7, s10, s3
                  xor          a1, s8, a5
                  xor          s2, t2, t6
                  slti         s5, t2, -475
                  add          a7, t2, a0
                  auipc        a2, 395314
                  slti         s10, s7, -1217
                  xor          a1, t1, tp
                  auipc        s5, 616609
                  sub          t5, s0, s4
                  sra          s1, tp, t5
                  sub          s2, s4, a7
                  ori          zero, t6, -1914
                  sltiu        s10, gp, -1711
                  sltiu        t2, gp, -676
                  slli         gp, a4, 2
                  and          a1, t1, s6
                  sra          s8, s2, a5
                  sll          s6, a6, s11
                  ori          a5, gp, 1113
                  xori         zero, tp, 2047
                  sll          s3, s0, sp
                  nop
                  andi         gp, t4, -444
                  srai         t6, s6, 25
                  addi         a7, t5, -1693
                  slt          t3, s1, t5
                  and          t3, s3, s6
                  slti         t3, a5, 2010
                  slli         s9, s5, 8
                  addi         t6, a7, 2020
                  lui          s10, 646634
                  srl          s5, a0, a7
                  add          a0, t1, a3
                  add          s3, s7, a4
                  or           tp, a5, s11
                  add          s10, t4, t0
                  add          t3, gp, t3
                  li           t5, 0x9c313b89 #start riscv_int_numeric_corner_stream_3
                  li           t6, 0xffffffff
                  li           a0, 0x0
                  li           ra, 0xffffffff
                  li           a5, 0x0
                  li           t3, 0x0
                  li           t0, 0x80000000
                  li           s10, 0x80000000
                  li           a2, 0x0
                  li           t1, 0x0
                  nop
                  sub          s10, a5, t6
                  nop
                  nop
                  lui          t6, 507665
                  nop
                  addi         t0, t6, -1595
                  add          t6, a0, ra
                  auipc        ra, 127700
                  add          a0, ra, s10
                  add          ra, a5, ra
                  sub          t3, a0, ra
                  nop
                  sub          t0, s10, t5
                  add          a2, t3, a0
                  auipc        t5, 434277
                  nop
                  nop
                  add          t3, t6, a5
                  lui          ra, 1008860
                  add          t6, s10, ra
                  auipc        s10, 304857
                  lui          t3, 634753
                  sub          s10, t1, s10
                  lui          s10, 973330 #end riscv_int_numeric_corner_stream_3
                  slli         s1, s5, 13
                  xori         s0, a5, -363
                  slli         t0, s7, 11
                  auipc        t6, 543576
                  addi         s11, s5, 163
                  xor          s6, a4, s2
                  srl          t5, s2, s9
                  or           ra, t6, s7
                  slt          a7, zero, ra
                  srai         gp, a6, 3
                  addi         s3, zero, 137
                  srai         s10, a7, 2
                  srai         s9, a6, 20
                  auipc        gp, 643767
                  sra          t1, t2, t2
                  xor          s6, zero, zero
                  sltiu        s9, t0, 1436
                  srai         t3, s11, 13
                  srl          s8, gp, s3
                  xor          s10, s6, zero
                  srli         ra, t6, 12
                  srl          s4, s5, gp
                  srai         t5, t5, 26
                  or           s4, t3, tp
                  sub          a1, a0, a1
                  slli         a2, s0, 8
                  sltu         t0, t0, tp
                  xori         gp, t3, -54
                  ori          t6, s8, -951
                  srli         zero, s7, 14
                  xori         s11, s8, 333
                  auipc        a4, 53116
                  sltu         a4, zero, t3
                  lui          a7, 749663
                  slt          a5, t5, zero
                  add          s5, t6, a0
                  slti         a2, a5, 326
                  xor          s8, t5, zero
                  slti         gp, ra, -1301
                  srli         a1, t5, 30
                  srl          s2, a0, s0
                  xor          s11, a3, s9
                  sub          t6, t1, sp
                  sub          s0, a0, s1
                  auipc        s1, 88807
                  ori          a5, s9, -1985
                  andi         t2, t4, -125
                  ori          a1, s2, -1185
                  auipc        t1, 3238
                  sltu         t1, s9, s0
                  slt          a1, ra, s2
                  add          s4, a6, s0
                  sll          s10, a5, s5
                  sltu         a1, s0, s9
                  sub          zero, t3, t4
                  xori         s11, s1, -414
                  sub          s11, a4, s5
                  srli         s0, t1, 14
                  add          s7, t2, sp
                  srai         t4, s5, 30
                  srli         gp, s0, 0
                  add          s5, s9, ra
                  srli         s4, t3, 31
                  srai         s10, t3, 27
                  and          a4, a0, sp
                  sra          s4, a2, a6
                  or           s2, t2, t2
                  xori         a4, t3, 843
                  srai         t4, zero, 14
                  add          a4, t1, t4
                  xor          s6, s3, zero
                  ori          s7, a3, 533
                  slt          s8, s6, gp
                  slt          t3, s0, t6
                  andi         t6, t5, 829
                  slt          s3, a1, a0
                  nop
                  or           a4, t4, s4
                  xor          s0, s9, s9
                  slti         s8, s3, -1037
                  srli         zero, a1, 18
                  slli         t6, s0, 6
                  andi         zero, a7, -1191
                  sltiu        s5, tp, 726
                  xor          a1, s1, s7
                  sltiu        t0, t6, -1146
                  ori          t1, a1, 983
                  nop
                  srl          t2, s5, s10
                  nop
                  srli         t2, s2, 0
                  sll          s1, zero, gp
                  sub          s1, a4, a7
                  xori         a7, s9, -1489
                  sll          s5, t1, t3
                  sltu         t2, sp, s9
                  sra          t6, gp, t0
                  sltiu        t5, s8, -371
                  auipc        s10, 669477
                  and          t0, a6, t3
                  or           s0, s0, a5
                  sub          s10, a2, a7
                  nop
                  addi         a7, s5, -1038
                  addi         a5, s1, 690
                  sltiu        a2, s8, 818
                  srl          a4, a7, s2
                  xor          s10, a1, a2
                  add          t0, s3, t6
                  srai         t1, a3, 9
                  slti         s7, a6, 279
                  srai         a5, a1, 15
                  and          s2, a3, s9
                  nop
                  ori          zero, t3, 1598
                  ori          t6, s7, 932
                  srl          s4, t4, s3
                  addi         zero, zero, -720
                  sra          t6, zero, s7
                  ori          s11, t4, 817
                  srl          a4, a6, a4
                  slt          ra, s1, t6
                  slti         s11, s1, 91
                  xor          s10, sp, tp
                  srli         a1, s9, 8
                  slli         a0, a6, 0
                  nop
                  auipc        s5, 655190
                  xori         a2, s0, 739
                  auipc        t4, 1019469
                  srli         t4, t0, 7
                  or           s11, zero, zero
                  add          a4, s11, a2
                  xor          a1, zero, s10
                  slli         zero, t3, 1
                  xor          t1, t6, s2
                  slli         a0, gp, 31
                  xor          a4, s8, s2
                  or           a4, a6, s11
                  srli         a0, a4, 20
                  xor          s4, s3, a2
                  add          a0, a6, t5
                  srai         t6, s7, 22
                  sll          t3, s3, s7
                  xor          a2, zero, t1
                  andi         a1, ra, 145
                  srai         s2, t0, 23
                  srl          gp, s2, a2
                  andi         s0, s4, 1321
                  xor          t5, t4, a4
                  srl          s9, a5, ra
                  sra          s1, ra, s0
                  nop
                  sltiu        s0, a6, 1937
                  sll          zero, zero, s5
                  ori          s9, t1, 1063
                  add          gp, s6, t1
                  srli         s11, s2, 6
                  sltiu        t6, s5, 806
                  slti         s1, t6, 596
                  sub          a7, s3, s6
                  xor          a2, a5, a7
                  srl          a2, s1, s11
                  nop
                  and          t4, sp, a1
                  auipc        a5, 445668
                  slti         gp, s3, 1686
                  slt          s11, t1, s2
                  andi         s3, s4, -1270
                  sltiu        gp, s7, 622
                  xor          a5, t6, zero
                  or           t6, t0, s3
                  srl          a1, zero, s4
                  auipc        a0, 690775
                  ori          s11, s8, -457
                  sll          a7, s6, t6
                  slli         tp, s1, 24
                  slt          t2, s3, ra
                  or           gp, s9, a2
                  andi         t6, a0, -1156
                  xori         a4, s0, -1522
                  slt          t4, a1, tp
                  sltu         a4, t1, a1
                  andi         s10, s7, -1142
                  sra          a2, gp, s10
                  xori         t5, a0, -340
                  slt          t2, a5, s8
                  srai         t6, tp, 5
                  sll          t0, a4, s11
                  addi         zero, gp, -2023
                  andi         s11, a4, 233
                  add          t3, a0, s2
                  srl          a7, a0, t0
                  slli         tp, s7, 20
                  or           s11, ra, t1
                  slli         t1, a3, 26
                  xor          s9, zero, a0
                  lui          t5, 125618
                  and          s3, t6, a0
                  srli         ra, s1, 6
                  slli         s5, ra, 16
                  la x2, test_done
                  jalr x0, x2, 0
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x13, x16, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x25, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x25, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x25, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x25, x5, ecall_handler
                  li x5, 0x1
                  beq x25, x5, instr_fault_handler
                  li x5, 0x5
                  beq x25, x5, load_fault_handler
                  li x5, 0x7
                  beq x25, x5, store_fault_handler
                  li x5, 0xc
                  beq x25, x5, pt_fault_handler
                  li x5, 0xd
                  beq x25, x5, pt_fault_handler
                  li x5, 0xf
                  beq x25, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x16, x13, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x13, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x13, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x16, x13, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x16, x13, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x16, x13, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
