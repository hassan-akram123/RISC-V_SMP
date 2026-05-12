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
                  la x20, kernel_stack_end

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
                  li x0, 0x3
                  li x1, 0x8d24ff61
                  li x3, 0x80000000
                  li x4, 0x7
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xc
                  li x8, 0xf36c2a45
                  li x9, 0xc
                  li x10, 0xf8b490d5
                  li x11, 0x0
                  li x12, 0x9
                  li x13, 0x9
                  li x14, 0xfa17e395
                  li x15, 0x80000000
                  li x16, 0x27e6afa9
                  li x17, 0xe0630e8d
                  li x18, 0xf52370b6
                  li x19, 0xd3820a35
                  li x21, 0xd
                  li x22, 0x0
                  li x23, 0x2
                  li x24, 0x0
                  li x25, 0xa
                  li x26, 0xf21b4def
                  li x27, 0x0
                  li x28, 0xfd93ed0e
                  li x29, 0x80000000
                  li x30, 0x81680814
                  li x31, 0x1
                  la x2, user_stack_end
main:             li           s1, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           tp, 0x0
                  li           s3, 0x80000000
                  li           s6, 0x768eafd0
                  li           a5, 0x57fd20a0
                  li           a6, 0x0
                  li           s10, 0x80000000
                  li           s0, 0xffffffff
                  li           s2, 0xffffffff
                  li           s11, 0x80000000
                  add          a5, s1, a5
                  sub          a6, s10, s3
                  auipc        s0, 983697
                  sub          s10, s10, s6
                  add          s2, s11, s11
                  nop
                  sub          tp, s6, a6
                  nop
                  lui          tp, 533208
                  auipc        s3, 95898
                  auipc        s1, 275425
                  nop
                  add          s3, s1, a6
                  sub          s6, s10, s1
                  add          tp, s0, s2
                  add          s10, s3, a6 #end riscv_int_numeric_corner_stream_19
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0x1d06fe54
                  li           s5, 0x80000000
                  li           t4, 0x80000000
                  li           tp, 0xffffffff
                  li           s10, 0xcbe0fcb6
                  li           a6, 0xeb04824b
                  li           t3, 0x0
                  li           t6, 0x80000000
                  li           gp, 0x80000000
                  nop
                  add          t3, t6, s5
                  auipc        gp, 235443
                  auipc        t4, 622764
                  sub          gp, s5, gp
                  auipc        a6, 421271
                  auipc        tp, 434453
                  lui          a7, 65451
                  addi         gp, t3, -834
                  auipc        a6, 391775
                  add          tp, a7, a7
                  nop
                  addi         a7, gp, -329
                  lui          a6, 304758
                  add          t4, tp, a3
                  nop
                  nop
                  nop
                  add          s5, gp, gp
                  lui          a7, 799471
                  nop
                  addi         gp, a7, -1718
                  addi         a3, a7, -1333
                  sub          a6, s10, t4
                  add          t3, s10, tp
                  nop
                  nop
                  auipc        gp, 214904
                  sub          t3, gp, s5
                  lui          a6, 789464 #end riscv_int_numeric_corner_stream_4
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s9, 0x80000000
                  li           t3, 0x80000000
                  li           t2, 0xffffffff
                  li           s11, 0x0
                  li           s7, 0x5c7439b1
                  li           t1, 0xffffffff
                  li           a0, 0xffffffff
                  li           s1, 0x0
                  li           s0, 0x80000000
                  add          s1, s11, s11
                  addi         t3, s1, 78
                  addi         s9, s10, 1981
                  addi         t1, s9, -929
                  nop
                  addi         s0, s7, 1341
                  lui          s9, 204107
                  nop
                  lui          t2, 67613
                  add          s10, s1, a0
                  nop
                  sub          a0, s9, s9
                  lui          a0, 228521
                  auipc        s11, 738222
                  addi         s0, s9, -2035
                  add          s9, s1, t1
                  auipc        t3, 378623
                  add          t3, t1, t2
                  nop
                  addi         s10, s9, -64
                  auipc        s11, 998503
                  nop
                  add          s11, s11, a0
                  auipc        s10, 563201
                  sub          s7, a0, s7
                  nop
                  addi         s1, s7, -11 #end riscv_int_numeric_corner_stream_8
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a2, 0x7e178311
                  li           s6, 0xaf7f4e99
                  li           gp, 0x0
                  li           s2, 0x0
                  li           a3, 0x80000000
                  li           a4, 0x80000000
                  li           s5, 0x5ddaa348
                  li           t6, 0xffffffff
                  li           s3, 0x80000000
                  auipc        a2, 744775
                  addi         a4, t6, 155
                  nop
                  auipc        s6, 817645
                  add          s6, s5, a3
                  auipc        s5, 105284
                  addi         a2, a3, 1831
                  add          a3, a2, gp
                  add          gp, t6, s6
                  lui          s5, 608414
                  auipc        t6, 663524
                  nop
                  lui          s6, 251451
                  auipc        s2, 254717
                  addi         s3, s6, 158 #end riscv_int_numeric_corner_stream_14
                  li           s10, 0x562fa195 #start riscv_int_numeric_corner_stream_15
                  li           s1, 0xa2d2e846
                  li           s0, 0x80000000
                  li           s2, 0x80000000
                  li           t0, 0xb247a23c
                  li           s7, 0x80000000
                  li           s9, 0x0
                  li           s6, 0x21475cc3
                  li           gp, 0xffffffff
                  li           tp, 0x80000000
                  auipc        s9, 753456
                  nop
                  sub          s0, s7, gp
                  auipc        s0, 244581
                  addi         s0, s1, 1482
                  addi         s2, gp, 761
                  nop
                  auipc        s10, 250084
                  lui          tp, 536201
                  add          s9, s10, s2
                  addi         s1, t0, -1069
                  auipc        s1, 506285
                  sub          s6, s7, t0
                  nop
                  add          s2, s0, s9
                  auipc        s6, 965917
                  addi         s9, s10, 1982
                  nop
                  sub          s9, s2, t0
                  add          s2, s6, s2
                  add          s9, tp, s0
                  add          t0, tp, tp
                  nop
                  auipc        t0, 533321
                  sub          s6, s6, s2
                  nop #end riscv_int_numeric_corner_stream_15
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           t4, 0xffffffff
                  li           s1, 0xffffffff
                  li           a1, 0xd9323c23
                  li           s7, 0x0
                  li           s9, 0x80000000
                  li           a6, 0x80000000
                  li           s6, 0xffffffff
                  li           s0, 0x80000000
                  li           gp, 0x80000000
                  nop
                  lui          s1, 610614
                  lui          a1, 549652
                  lui          gp, 777909
                  nop
                  sub          a6, s1, a6
                  lui          s1, 941617
                  sub          s9, s9, a6
                  add          s1, a1, s6
                  addi         s6, s0, -1785
                  addi         gp, a1, 654
                  addi         s6, a6, -1365
                  auipc        gp, 1034113
                  nop
                  nop
                  sub          t4, s6, s9
                  add          s1, t4, s0
                  sub          s0, s6, gp
                  nop #end riscv_int_numeric_corner_stream_6
                  sra          a4, a4, s1
                  srli         s6, s4, 23
                  nop
                  or           s1, sp, t0
                  ori          s5, t2, -1070
                  and          a2, s3, tp
                  srl          s1, a5, a7
                  sub          s7, s4, s9
                  and          t4, s9, gp
                  andi         a1, s7, -280
                  andi         s10, a1, 862
                  slli         t0, s5, 28
                  sltiu        gp, s9, -436
                  nop
                  sll          a2, s10, s8
                  nop
                  sra          s3, s11, a6
                  sub          s10, t0, s1
                  addi         a3, tp, 402
                  add          s5, s8, t1
                  add          a6, s9, s9
                  sub          s7, s5, gp
                  srli         a3, s5, 30
                  lui          s1, 525715
                  slti         s1, s8, -468
                  addi         t1, s10, 1973
                  add          a3, a5, t0
                  sub          s6, s0, s11
                  ori          a1, a1, -1759
                  sub          s7, a7, s5
                  nop
                  sub          a2, t1, s5
                  and          s3, s8, s11
                  andi         s6, a4, 1050
                  sll          a3, t3, s6
                  slli         a1, s8, 5
                  srli         s2, t1, 5
                  sub          a3, s8, t0
                  auipc        a7, 78037
                  sltu         s8, sp, t1
                  srl          tp, t2, s3
                  sra          a5, a1, t3
                  and          a3, t1, a2
                  sll          s3, t1, s2
                  slli         s10, s0, 19
                  srai         s1, s1, 8
                  lui          s5, 289158
                  add          s6, s2, a7
                  or           s5, a4, a1
                  auipc        a1, 422053
                  and          t2, t1, t6
                  sll          s10, t1, sp
                  sltu         ra, s11, t2
                  add          a2, ra, s6
                  lui          gp, 276004
                  auipc        s9, 947678
                  xor          tp, t1, zero
                  auipc        s3, 854390
                  nop
                  srli         a1, a2, 24
                  sltu         a6, s1, a3
                  srai         s0, s8, 7
                  sra          gp, t3, a3
                  srli         s2, s10, 24
                  xori         s10, a3, 1640
                  addi         s10, t6, -235
                  srli         s6, zero, 18
                  sltu         ra, a2, s10
                  sltiu        s5, s8, 654
                  srai         s3, ra, 3
                  add          s9, zero, s1
                  add          zero, t0, s7
                  or           s5, gp, s2
                  auipc        s10, 229779
                  sltiu        a2, s3, -1234
                  nop
                  slt          s2, a3, s0
                  srli         s0, zero, 6
                  add          t1, s8, sp
                  add          s5, a4, s3
                  lui          a2, 783119
                  sub          t6, t5, s6
                  xori         t2, a0, -85
                  srli         a7, t4, 21
                  srai         s5, sp, 22
                  nop
                  auipc        s7, 852585
                  auipc        t0, 405848
                  add          ra, s11, t3
                  sub          s5, s6, s10
                  or           s2, t3, sp
                  srli         s10, tp, 16
                  slli         a4, a0, 21
                  sltu         t6, s0, gp
                  add          a3, t2, tp
                  xori         s10, s3, -389
                  andi         ra, s7, 1737
                  ori          s10, tp, -1156
                  slli         t6, gp, 3
                  srl          s7, s7, s4
                  sltiu        zero, t2, -1584
                  sltiu        ra, t5, -292
                  lui          s2, 840161
                  sltu         s3, t0, s7
                  addi         s3, s3, 1279
                  slt          a6, tp, s10
                  slt          t2, t4, s4
                  nop
                  add          s10, s6, s11
                  sll          s7, t6, s6
                  and          t0, a3, s6
                  nop
                  srli         a3, ra, 4
                  sll          t2, a5, s7
                  srli         s0, t4, 4
                  slti         gp, s2, 1611
                  ori          s1, t4, -789
                  srli         a3, t6, 25
                  sra          t4, a1, tp
                  slli         a7, t2, 25
                  andi         a6, t5, 430
                  xori         a7, t4, 817
                  auipc        s9, 41963
                  andi         a7, gp, -40
                  xor          s2, t1, s11
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           t2, 0x80000000
                  li           t4, 0x0
                  li           a4, 0x93f881fb
                  li           s5, 0x0
                  li           a2, 0x80000000
                  li           s11, 0x0
                  li           a7, 0x0
                  li           a6, 0xf397ae66
                  li           s9, 0x80000000
                  nop
                  lui          t2, 717384
                  add          t0, a6, t4
                  addi         a2, t0, -1617
                  nop
                  lui          a4, 887490
                  addi         t4, a2, -764
                  sub          s5, a4, s5
                  sub          s9, a2, t4
                  sub          s9, t0, t4
                  sub          a7, s9, s9
                  sub          t2, a6, a6
                  sub          s11, a6, t0
                  lui          a7, 346594
                  sub          s9, a6, t4
                  auipc        s5, 361795
                  auipc        s11, 496947
                  add          a7, s9, t2
                  lui          a7, 4488
                  sub          s11, s11, s9
                  sub          t0, t2, s5
                  sub          t2, t2, t0
                  lui          t4, 756074
                  lui          a6, 74883
                  addi         a2, a7, -1593
                  sub          a6, s11, s9 #end riscv_int_numeric_corner_stream_3
                  sll          s5, t2, s11
                  addi         s1, s4, -793
                  nop
                  and          t0, t5, sp
                  srl          s1, a6, t6
                  slli         t3, a3, 28
                  add          s3, s3, a5
                  srai         a5, tp, 8
                  sub          t1, zero, a0
                  lui          s11, 958584
                  or           t4, s7, s7
                  slt          a0, s3, t4
                  slli         a5, s7, 29
                  srli         a5, a0, 21
                  sltu         a7, s0, t1
                  srl          zero, s6, t0
                  add          s2, t2, a2
                  auipc        a7, 6929
                  srli         t6, t2, 30
                  slt          t2, s6, zero
                  sll          a5, a1, tp
                  and          s2, s11, s6
                  sltu         s3, tp, a0
                  slti         s11, t6, -1461
                  xor          a2, s10, s9
                  slt          t0, t5, s9
                  sra          s0, a4, t1
                  sra          a7, t2, tp
                  or           t4, s9, a4
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s10, 0xffffffff
                  li           s11, 0x7ccafdfc
                  li           s6, 0x0
                  li           t3, 0xffffffff
                  li           t0, 0x80000000
                  li           t1, 0x80000000
                  li           s7, 0xffffffff
                  li           a7, 0xfe16d1ae
                  li           a4, 0xffffffff
                  add          t0, s7, a0
                  lui          a7, 596786
                  auipc        a7, 76964
                  sub          t3, s11, t3
                  lui          a0, 993203
                  addi         s10, t0, -1894
                  auipc        s7, 37387
                  nop
                  sub          a7, a0, s11
                  lui          s11, 269699
                  lui          s7, 658489
                  lui          a0, 571387
                  auipc        s10, 19399
                  addi         t1, t3, 1548
                  sub          a0, a0, s10
                  lui          t3, 872853
                  nop
                  auipc        s7, 586769
                  nop
                  add          s11, t3, s11
                  auipc        s6, 659641
                  add          s10, t0, a4
                  sub          a0, s11, s11
                  nop
                  nop
                  sub          a0, t3, t0
                  add          t3, s11, a0 #end riscv_int_numeric_corner_stream_18
                  sltiu        s5, s9, -195
                  slti         t1, a0, -1823
                  andi         a7, s9, -452
                  sll          a2, t4, ra
                  sll          s3, a7, s8
                  sra          gp, ra, s1
                  srl          gp, s6, s4
                  addi         s9, s2, 109
                  nop
                  slli         zero, t0, 8
                  slti         a1, t4, -1192
                  sra          a5, a4, s11
                  add          s2, gp, a7
                  add          t6, a2, t2
                  sll          s8, s1, a1
                  add          tp, a6, a2
                  slti         s9, t4, 1155
                  nop
                  slli         s7, t5, 25
                  xor          s8, a0, a5
                  xori         s10, a2, -164
                  sltu         a3, s11, a0
                  or           t2, s11, s8
                  andi         t4, s4, -1340
                  slt          a4, a4, sp
                  lui          a6, 400801
                  xori         s10, a3, -292
                  sltu         t0, a3, s11
                  srl          a5, zero, s1
                  srl          a2, t2, s6
                  ori          t1, t4, -514
                  srai         s0, ra, 6
                  auipc        t0, 634227
                  ori          t6, s5, 571
                  slti         s5, t6, 536
                  andi         ra, t4, 1899
                  srl          t0, s6, s6
                  sltu         t4, s6, t1
                  srai         t3, s6, 31
                  srl          a0, a1, t4
                  srai         a2, a4, 1
                  sra          s2, a4, t1
                  xor          s5, t6, s8
                  andi         t1, s0, 250
                  srli         a6, s1, 23
                  lui          a4, 1001244
                  slti         gp, s8, 863
                  srli         s0, a1, 24
                  sra          t1, s7, s1
                  xor          t6, a5, s8
                  xor          s6, a6, s8
                  sltu         s8, t1, a4
                  sll          a2, a3, zero
                  add          s3, t5, ra
                  sltu         t0, a0, s10
                  sra          t2, gp, a6
                  sub          s1, a3, tp
                  sll          t0, a7, a5
                  srai         s11, tp, 0
                  slt          s0, t5, s11
                  auipc        s2, 881636
                  sltu         s6, s9, zero
                  srli         s6, a3, 24
                  and          a3, a2, a4
                  add          a1, zero, a1
                  srai         t2, t0, 0
                  srai         s6, s4, 21
                  andi         s2, zero, 215
                  addi         t0, tp, 26
                  xori         s6, s11, 1983
                  slt          t2, a6, s1
                  xor          a7, s0, s11
                  sltiu        t1, a7, 663
                  add          a1, t0, t1
                  andi         s10, t6, 1398
                  lui          s0, 244037
                  sll          t4, t1, s2
                  sub          s11, gp, t4
                  ori          a2, a3, 907
                  sra          a5, a4, s8
                  sll          a3, t4, s11
                  andi         tp, t6, -1861
                  lui          a4, 559037
                  xor          t3, t1, sp
                  addi         a0, t6, 93
                  nop
                  add          a0, s4, t5
                  lui          a2, 968922
                  lui          t3, 1026084
                  and          s3, s2, a0
                  sub          tp, a3, s5
                  xor          s0, a0, t6
                  slti         t6, a3, -704
                  srl          ra, s2, s2
                  slli         s0, a4, 14
                  add          t6, s3, a4
                  add          s3, t0, t2
                  nop
                  or           s7, a1, t1
                  ori          s7, s9, -1210
                  srli         s7, a4, 15
                  ori          s10, s3, -1670
                  sltu         s6, s3, t0
                  sltu         tp, s3, a6
                  srai         t2, s8, 22
                  sll          t2, s1, t6
                  srli         t3, s6, 18
                  auipc        t4, 235704
                  or           s2, a4, s11
                  sra          t4, s3, a1
                  andi         s8, a3, 607
                  slli         t1, s2, 4
                  lui          s3, 468800
                  srl          s8, t3, ra
                  xor          a3, a7, s10
                  sltiu        t4, s2, -1382
                  sltu         zero, zero, s4
                  add          a7, zero, a6
                  auipc        t3, 792590
                  slli         gp, a6, 23
                  nop
                  slt          s8, a2, s4
                  addi         t3, gp, 1739
                  andi         s0, s7, -1956
                  ori          t0, t6, -702
                  andi         a0, s3, -1788
                  ori          gp, s1, 1121
                  slti         s1, t6, 1230
                  addi         t1, a6, 169
                  slli         t0, t2, 20
                  ori          s8, s0, 1071
                  sll          a7, s1, t2
                  sra          a5, s9, t4
                  srai         a2, a7, 17
                  and          a5, s2, s2
                  srli         s11, sp, 27
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t1, 0xffffffff
                  li           a5, 0x0
                  li           a0, 0xffffffff
                  li           t6, 0xd70c8a31
                  li           a6, 0x552795dc
                  li           s5, 0xffffffff
                  li           s7, 0x80000000
                  li           s8, 0x0
                  li           s0, 0xd218810c
                  sub          t6, s7, s5
                  sub          a6, s7, a6
                  addi         s8, s1, -773
                  auipc        s7, 581358
                  auipc        s5, 950666
                  lui          s7, 543298
                  lui          a0, 560431
                  lui          a6, 256894
                  sub          s7, s7, t6
                  lui          t1, 124179
                  addi         a6, a6, -1928
                  addi         s7, s5, -409
                  lui          s1, 332604
                  sub          s7, t6, s1
                  add          s1, a5, s8
                  lui          s7, 723671
                  auipc        s8, 387234
                  nop #end riscv_int_numeric_corner_stream_9
                  srai         t3, a0, 12
                  xori         t2, s3, -1793
                  xori         t2, s5, -1699
                  add          s1, s11, s9
                  srl          a1, t4, ra
                  andi         a7, s7, -101
                  andi         t1, a7, 1803
                  slti         t3, gp, 383
                  lui          s10, 892312
                  sltiu        s8, a2, -1551
                  srli         s5, t0, 26
                  addi         a4, t2, -1013
                  xori         a5, s2, 268
                  xor          tp, a3, a7
                  and          tp, s6, t3
                  xor          s6, tp, t2
                  slli         tp, s3, 0
                  addi         gp, t6, 19
                  and          a5, a3, s2
                  nop
                  ori          ra, gp, 573
                  ori          s10, s7, 977
                  sll          t6, s0, a4
                  xori         t4, t3, -1815
                  sra          ra, t6, zero
                  sub          a1, s4, s2
                  srl          a0, s0, tp
                  add          a2, s2, gp
                  xor          a7, t2, s3
                  sltu         s5, t5, a1
                  slt          a7, zero, s7
                  auipc        s9, 702300
                  lui          zero, 658801
                  nop
                  andi         gp, s5, -1428
                  slt          a2, a2, zero
                  srl          s11, a3, s2
                  andi         a1, a2, 1107
                  srai         gp, a2, 22
                  add          s8, a3, s5
                  auipc        zero, 226827
                  andi         s1, zero, 1221
                  add          zero, s11, s9
                  slt          a0, a7, s6
                  andi         t4, t4, -1324
                  lui          s8, 104040
                  sra          tp, s11, t3
                  srai         s2, s0, 18
                  slti         s5, s8, -1090
                  sll          a5, s0, s7
                  nop
                  auipc        a0, 211516
                  auipc        s2, 700208
                  ori          a6, ra, 1349
                  add          a6, t5, a5
                  sll          a5, a0, sp
                  slti         s2, t5, 660
                  srli         s11, a7, 17
                  or           s1, a6, gp
                  ori          a3, s7, -1064
                  sltiu        a5, a4, -874
                  sltu         t1, s10, s4
                  slti         a4, s1, -628
                  addi         s9, s9, -1810
                  srl          t6, t6, t0
                  andi         s8, tp, 59
                  add          a7, a7, s6
                  sltu         s7, s3, t0
                  srai         t4, tp, 3
                  add          t6, a6, s1
                  srl          s1, s2, s1
                  auipc        s9, 1022970
                  xor          tp, a0, a0
                  nop
                  add          s3, a6, gp
                  sltu         s2, s10, s7
                  xori         ra, t1, 841
                  lui          s7, 633204
                  lui          a6, 716755
                  srai         a1, s3, 25
                  and          s6, sp, a3
                  slti         s7, s3, -1059
                  andi         a1, sp, -656
                  ori          a1, s6, -1085
                  srli         a0, s0, 12
                  sra          t6, t1, ra
                  auipc        ra, 450246
                  addi         a0, t1, -1159
                  auipc        a1, 919075
                  andi         s5, t1, -359
                  sltu         gp, s0, s0
                  sll          t0, t4, s11
                  or           ra, ra, a3
                  ori          s5, t6, 790
                  sll          t4, t0, a0
                  sll          s10, sp, s5
                  addi         s9, t3, 220
                  addi         s7, s11, -1513
                  srl          t6, ra, s10
                  sltu         ra, s11, t3
                  andi         s11, s7, -960
                  slt          t1, a6, zero
                  sra          s7, t1, t2
                  xor          s9, s11, a2
                  andi         a2, a1, -73
                  andi         s1, s8, -1858
                  sub          a7, a2, a4
                  srai         a1, t4, 19
                  xori         s11, a4, -1571
                  add          s1, s5, s6
                  sll          a0, t3, gp
                  sra          s6, s7, s2
                  andi         a4, a0, -997
                  sltiu        t2, s8, 1557
                  slli         t1, ra, 3
                  auipc        s0, 213038
                  nop
                  slti         a0, s2, -1450
                  xor          t1, s5, a6
                  and          gp, a6, a7
                  srai         t3, s3, 18
                  slt          t6, s1, a0
                  auipc        a0, 814826
                  auipc        s6, 818299
                  add          a1, s0, gp
                  ori          tp, a0, -632
                  nop
                  auipc        t6, 12143
                  sll          s3, t2, a7
                  srl          a7, t5, a5
                  andi         a0, s5, -1812
                  xori         a0, a0, -241
                  sra          t3, a0, a0
                  add          a5, s6, s8
                  xor          a5, s6, a3
                  addi         s5, s10, 311
                  srai         ra, tp, 15
                  andi         t4, t4, -133
                  sub          s3, t0, s1
                  ori          t2, gp, -589
                  slti         t4, s4, -700
                  ori          s0, t0, 1099
                  sll          s0, a3, s1
                  sra          zero, t6, a4
                  sltiu        s6, t6, 1983
                  sra          ra, s3, s7
                  srl          s10, a3, gp
                  slt          s2, s2, sp
                  sll          s10, t0, s6
                  xori         ra, gp, 130
                  sub          s1, t3, a6
                  sra          s11, a4, a1
                  add          a4, zero, sp
                  xori         s10, t1, -1145
                  or           a3, t3, t0
                  addi         s2, a3, -279
                  sltiu        s6, s11, 1364
                  add          ra, a7, s10
                  sll          t0, s8, t2
                  srai         s5, t6, 0
                  nop
                  sra          s11, a7, s1
                  ori          t4, a1, 1906
                  nop
                  sltiu        s0, s0, 706
                  ori          a1, s3, 138
                  lui          ra, 593661
                  slti         a4, t3, -670
                  sll          tp, t3, tp
                  sra          t2, a0, s4
                  slt          ra, a6, s8
                  or           a5, s2, ra
                  srai         s5, s10, 9
                  lui          a0, 202823
                  or           a5, tp, s1
                  and          gp, s6, a7
                  xori         s3, s8, 1807
                  sub          s3, s3, a2
                  srai         s7, a0, 15
                  auipc        s7, 232301
                  add          a3, s2, a7
                  xori         s5, s7, 1871
                  xori         a7, a7, 421
                  nop
                  srli         s1, s10, 0
                  sub          a5, a3, s8
                  sub          t3, ra, t2
                  xori         s5, s4, 712
                  ori          a6, s0, -1624
                  nop
                  or           s6, a1, s7
                  add          s3, s4, a5
                  sltu         s6, ra, t6
                  sltiu        gp, tp, 238
                  or           s10, t6, t5
                  sra          s6, s6, s10
                  sll          s10, gp, t2
                  auipc        t0, 467323
                  slti         s6, t4, -158
                  auipc        s2, 993243
                  and          s6, s10, t6
                  addi         t1, a3, -650
                  sra          a4, t0, s4
                  sll          t6, ra, s9
                  slt          s11, t1, a2
                  slli         s2, s9, 12
                  add          s0, s10, s2
                  nop
                  sltiu        ra, s0, 1855
                  ori          a2, a3, 644
                  andi         s3, a4, 1108
                  sra          t6, a0, t5
                  slti         a6, t2, 738
                  xori         a2, a2, 1550
                  addi         a5, a5, -25
                  sll          t1, t0, t3
                  nop
                  slti         s1, s2, 576
                  slti         t2, s9, -13
                  sltu         tp, s5, sp
                  and          t4, t6, gp
                  srai         a4, s2, 22
                  andi         a5, s6, 1890
                  lui          a4, 176474
                  srl          s6, s11, s0
                  add          t1, a6, a3
                  sub          a1, t4, t5
                  sll          a4, t5, a2
                  nop
                  srli         s8, s8, 7
                  srli         zero, s7, 24
                  add          s9, a3, sp
                  slt          t3, s11, t6
                  sltu         s3, a4, t1
                  lui          s8, 611458
                  ori          t0, s11, -1591
                  xor          t0, s8, s8
                  sll          t1, a1, a0
                  sub          gp, gp, s8
                  slti         s7, s1, 958
                  slt          a1, sp, s10
                  lui          s11, 985913
                  sra          s10, s7, s4
                  andi         ra, ra, 977
                  sltu         a2, a0, s5
                  sltu         s3, gp, s0
                  sltu         t6, t0, t2
                  and          a6, s8, s3
                  auipc        s6, 903645
                  ori          a7, s0, -193
                  ori          a7, s6, -1450
                  srl          a6, s11, tp
                  auipc        s7, 138131
                  slt          t1, s6, t5
                  sltiu        s5, s2, 167
                  srai         a0, a0, 20
                  sll          a7, s9, a7
                  xori         a1, s0, 1490
                  ori          t1, s6, 1365
                  slli         s8, a7, 27
                  sra          a5, t0, s7
                  xor          zero, sp, s10
                  srl          t0, a7, s2
                  slti         a7, a1, -315
                  xor          tp, a6, s8
                  addi         s1, t3, 244
                  sltiu        s5, t4, -1830
                  sltu         s9, s0, s10
                  add          a2, t2, s7
                  sltu         s2, ra, a2
                  srai         a6, s10, 5
                  slt          t4, t0, zero
                  srl          a7, a2, t0
                  srli         a3, s8, 8
                  slli         s6, t6, 18
                  sra          t2, zero, tp
                  srli         t4, s2, 28
                  ori          a5, gp, 2041
                  add          s9, tp, s6
                  auipc        t3, 962101
                  auipc        tp, 314467
                  slli         t2, s7, 18
                  sltiu        s11, ra, -1700
                  nop
                  srl          a4, tp, a0
                  nop
                  sra          gp, ra, s3
                  sltu         zero, s5, t3
                  add          s5, s6, t1
                  slt          t6, a4, a3
                  nop
                  xor          a3, gp, t6
                  sra          s2, zero, a3
                  nop
                  xor          a7, s7, t1
                  sub          s11, t1, t2
                  srai         s11, a1, 7
                  auipc        a4, 1000643
                  slt          t3, t2, a1
                  srli         t2, s4, 22
                  srai         t0, s9, 11
                  sltu         s6, a3, t3
                  xori         zero, s10, -1658
                  ori          s6, s9, 1937
                  andi         t1, a4, -1716
                  xori         s11, s2, 1998
                  slt          s7, s5, s7
                  add          t4, s6, a7
                  sub          s1, tp, t3
                  xori         s1, ra, -1930
                  lui          a7, 923746
                  sra          s1, s0, a2
                  sltiu        s9, a0, 960
                  addi         ra, s7, 1398
                  nop
                  lui          a4, 544048
                  xori         a0, s7, 689
                  srli         t3, sp, 16
                  lui          a0, 102471
                  srai         a2, t5, 15
                  srai         t1, a6, 0
                  xori         a5, s5, -692
                  slli         t2, s5, 21
                  xor          tp, s0, a6
                  srai         tp, s6, 17
                  lui          s5, 497013
                  xori         gp, s10, -68
                  sub          s9, a3, tp
                  slti         tp, s6, -1558
                  nop
                  slti         s3, a2, -878
                  nop
                  add          zero, s9, s5
                  andi         s0, s4, 502
                  auipc        tp, 768988
                  slli         s8, s9, 1
                  slli         s9, s0, 13
                  andi         t0, s7, 232
                  and          s5, tp, t0
                  add          a6, s2, s6
                  andi         s6, s6, 1649
                  srl          a3, t1, s0
                  sll          s7, t3, s1
                  or           a5, a4, s3
                  auipc        s6, 599765
                  ori          t6, s0, 945
                  addi         s6, sp, -1627
                  srli         s10, s1, 0
                  ori          t4, a2, -505
                  slti         s11, tp, -1587
                  addi         s8, s9, -450
                  sub          t0, s3, s9
                  add          t4, s6, s6
                  nop
                  sll          s8, a2, s3
                  addi         zero, a4, 368
                  sub          s2, s11, s6
                  andi         s2, t2, 1333
                  xori         s7, a7, 1724
                  slti         s0, s7, -1762
                  or           a5, t3, sp
                  and          t2, a7, t5
                  slt          ra, s7, t0
                  sub          t1, a4, gp
                  addi         t1, sp, 584
                  or           t3, t4, a5
                  lui          t1, 177362
                  sltu         a6, tp, tp
                  slt          gp, a5, t6
                  xor          s9, s11, s11
                  or           a4, s11, t1
                  lui          a2, 981225
                  srai         s0, s11, 1
                  and          a1, a0, gp
                  auipc        tp, 581726
                  xor          s10, s5, s7
                  add          ra, s8, s3
                  sub          s5, ra, a6
                  xori         s10, t4, 1142
                  addi         s1, a0, 281
                  slt          s7, t4, a7
                  sub          tp, s10, s0
                  xor          t2, a3, t1
                  sltiu        a2, s1, 1140
                  andi         gp, ra, 811
                  slt          t4, tp, tp
                  xori         s5, t5, 1194
                  sltiu        ra, a3, 1840
                  add          t0, sp, a3
                  sltiu        t1, zero, -1565
                  ori          a1, a1, -311
                  addi         t3, t2, -1178
                  nop
                  slti         t1, tp, 1430
                  xor          a1, a4, s10
                  auipc        s3, 859596
                  lui          s10, 838435
                  add          s6, s10, s2
                  sltiu        zero, s6, -712
                  slti         t6, s6, -1603
                  srai         tp, s11, 8
                  auipc        a1, 341539
                  sra          t3, a0, s5
                  auipc        s1, 326430
                  srli         s7, a3, 1
                  srl          a6, t3, a7
                  srli         a0, a7, 27
                  srai         a6, a0, 23
                  sltiu        s2, a2, 1046
                  or           a0, s4, a5
                  sll          t3, a3, t2
                  or           s9, s11, s10
                  lui          ra, 156521
                  lui          a6, 206161
                  srli         ra, a7, 7
                  xori         t4, zero, 364
                  addi         t6, s2, 2030
                  or           s10, t1, s0
                  srli         s3, t4, 31
                  srai         s0, a6, 6
                  slti         s11, gp, -1507
                  slt          a2, s5, a7
                  slli         a1, t4, 8
                  xori         s0, s9, -1206
                  sub          a0, t3, s9
                  lui          s0, 198645
                  slt          s0, s3, a0
                  slti         s9, s9, -1787
                  nop
                  xori         t2, t2, 471
                  addi         a5, tp, 1064
                  auipc        s10, 821665
                  xori         a4, s3, -692
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           a5, 0x0
                  li           a0, 0x435d65d5
                  li           s2, 0x2fa1e5b2
                  li           s0, 0x9348a05b
                  li           s5, 0x5ca63c14
                  li           s10, 0x0
                  li           a7, 0x80000000
                  li           s3, 0x80000000
                  li           t0, 0x0
                  nop
                  add          a0, t6, s5
                  lui          s5, 1035329
                  add          s5, s10, t6
                  add          a0, s3, a0
                  add          t0, s5, s10
                  lui          t0, 760371
                  addi         t6, s10, 1074
                  add          t0, s0, a7
                  add          t0, s5, s2
                  sub          s0, a7, s3
                  auipc        s0, 584543
                  sub          t0, t6, a5
                  nop
                  sub          a7, a0, s0
                  nop
                  add          s3, s0, a5 #end riscv_int_numeric_corner_stream_13
                  sra          a2, s11, a3
                  add          s5, a3, t4
                  and          s2, a4, a4
                  lui          t2, 571608
                  xor          s9, sp, t1
                  lui          a3, 258141
                  auipc        a4, 330433
                  nop
                  addi         s6, t1, 1513
                  srli         t3, ra, 27
                  xor          s0, s1, a7
                  and          s8, s8, a0
                  srli         t0, a7, 6
                  addi         ra, sp, -1693
                  sll          a7, gp, a1
                  sra          s3, s6, s2
                  sra          s8, s1, sp
                  srai         s9, a0, 9
                  nop
                  sltu         a7, s9, a4
                  auipc        a0, 63838
                  srai         t4, s3, 5
                  slti         s6, a3, -1467
                  srl          t3, ra, s9
                  slti         tp, a2, 644
                  lui          s9, 764582
                  or           t1, t1, s2
                  slt          s7, t5, a2
                  addi         s2, s9, 306
                  sll          t3, a0, a1
                  add          s3, t4, s10
                  lui          t1, 84996
                  srli         s0, s0, 28
                  auipc        t6, 803976
                  srai         s0, tp, 16
                  or           s0, t5, s1
                  slli         s1, s1, 29
                  srli         tp, a4, 4
                  slt          t0, s11, ra
                  and          gp, tp, t2
                  sltu         s11, a2, t2
                  andi         a7, a1, -421
                  slt          t2, s2, s7
                  sra          s0, a6, t0
                  sll          s2, s0, ra
                  xor          s2, t1, ra
                  xor          t3, ra, t1
                  auipc        s3, 409409
                  slti         s3, a6, 1791
                  ori          s9, s2, 1780
                  sll          s2, s1, s5
                  slli         a4, a5, 1
                  sltu         a2, a5, s3
                  sll          a7, s0, s8
                  slt          s9, s5, a0
                  srli         a5, tp, 17
                  addi         s0, t1, 1157
                  or           s3, a6, tp
                  sll          s0, t0, a7
                  sltu         s10, a2, s4
                  ori          t3, s7, -89
                  addi         a6, t2, 1295
                  sub          t2, a0, a0
                  nop
                  xor          t6, s4, t3
                  sltiu        a2, a6, 307
                  xori         t0, s3, 590
                  srl          a7, ra, a5
                  lui          s2, 886411
                  sltu         s5, t1, t0
                  sltu         s1, a5, s10
                  srli         t6, sp, 6
                  add          s11, s6, s7
                  or           s9, s10, t3
                  slti         zero, s5, -171
                  nop
                  sra          a7, a5, a5
                  sltiu        s1, t1, 1280
                  addi         t6, a4, 649
                  sltiu        s5, a7, 1575
                  add          s8, a6, s0
                  srl          a6, a6, a7
                  and          s6, a2, s10
                  add          s10, s2, ra
                  sra          gp, s5, t6
                  add          s8, s8, t1
                  srli         s6, t2, 29
                  addi         ra, t0, 1756
                  addi         t6, s5, -484
                  lui          s9, 51156
                  or           a5, tp, sp
                  nop
                  srl          s3, t5, a5
                  slli         t0, s10, 17
                  xori         s5, t2, -737
                  nop
                  add          t3, s9, a4
                  slt          a4, s3, s11
                  add          s1, a2, a5
                  and          a4, t2, s2
                  sll          zero, s7, s0
                  sra          t0, t2, s2
                  srai         ra, a1, 20
                  or           s2, s7, s5
                  slli         gp, ra, 7
                  sra          ra, s3, sp
                  srai         t4, t6, 29
                  sltiu        a1, s3, 1357
                  add          s0, zero, t3
                  sltiu        t3, t3, 1660
                  add          gp, s7, s7
                  sltiu        t2, s3, 1332
                  slt          s9, sp, sp
                  or           a0, s11, a2
                  auipc        s11, 607168
                  nop
                  auipc        a2, 854852
                  xor          s9, s4, t5
                  sll          s5, s9, a5
                  xori         a4, t5, 1709
                  sll          a7, sp, t3
                  ori          s2, t6, -1526
                  slt          a6, s0, s11
                  sub          a1, s1, gp
                  sll          s9, a2, s11
                  andi         s11, s10, 608
                  auipc        s3, 348440
                  srai         s0, tp, 14
                  sll          s8, sp, ra
                  sra          a3, s6, ra
                  srai         tp, s8, 23
                  andi         t0, ra, -640
                  xori         s11, sp, 1
                  slti         a2, a4, 1740
                  andi         s10, tp, -1540
                  sll          t3, s3, a6
                  xor          t3, sp, s6
                  sltiu        a0, s6, -687
                  nop
                  auipc        s2, 199998
                  xor          a5, s1, a2
                  sub          s10, t3, t0
                  srl          t6, zero, t3
                  slti         s9, s8, 4
                  slli         ra, a5, 15
                  srli         t3, a5, 25
                  auipc        s1, 190064
                  srai         gp, s6, 3
                  auipc        t4, 337207
                  sltu         s8, t0, s9
                  xori         a4, t2, -1385
                  xor          s9, s3, t6
                  add          s1, s3, t1
                  ori          t3, a2, -457
                  auipc        t4, 737326
                  sltu         a4, t1, s11
                  srai         zero, ra, 28
                  li           t1, 0x3c0abefd #start riscv_int_numeric_corner_stream_12
                  li           t4, 0xffffffff
                  li           a5, 0xffffffff
                  li           t3, 0x3d21e9aa
                  li           a6, 0x0
                  li           t0, 0x0
                  li           t2, 0xffffffff
                  li           s9, 0x80000000
                  li           s5, 0xffffffff
                  li           s8, 0xffffffff
                  auipc        t3, 815017
                  auipc        a6, 702859
                  add          s9, t3, t0
                  nop
                  addi         a6, a6, 258
                  nop
                  nop
                  sub          t4, s5, t3
                  auipc        t3, 941706
                  lui          a5, 406810
                  lui          t4, 163511
                  nop
                  lui          s5, 643836
                  addi         t4, s5, -1052
                  auipc        t2, 245940
                  lui          s8, 257694
                  sub          t4, s5, s8
                  sub          a5, t3, t4
                  auipc        s9, 174824
                  auipc        t0, 395505
                  add          s5, a6, a5 #end riscv_int_numeric_corner_stream_12
                  slt          gp, s6, sp
                  srli         t6, s9, 0
                  sltu         t3, a6, a0
                  xor          s7, s7, t6
                  sub          t0, s7, a2
                  auipc        s8, 330674
                  slti         gp, s5, 908
                  slli         a4, a1, 15
                  auipc        s6, 573719
                  srli         s11, s5, 1
                  ori          tp, s11, 1549
                  or           ra, sp, s3
                  srai         zero, t4, 8
                  sub          a6, a1, s9
                  xor          s1, s6, zero
                  and          s5, ra, s4
                  nop
                  or           t6, a3, ra
                  srl          s9, s10, t4
                  andi         s1, ra, 1488
                  sll          s2, tp, t6
                  xor          s6, s1, s7
                  slli         s10, s3, 3
                  xori         t6, a4, -366
                  srai         t6, a7, 18
                  xori         s6, s5, 784
                  xor          a4, a4, s8
                  or           s8, s3, s8
                  srli         s3, t1, 29
                  sub          t0, a1, s7
                  lui          t0, 744893
                  sra          t4, s6, t0
                  addi         a5, s2, 292
                  srai         s1, t1, 15
                  sub          a0, t5, s11
                  and          s2, zero, t6
                  add          s11, t1, s1
                  auipc        s5, 78994
                  ori          s9, a7, -618
                  or           tp, zero, s7
                  or           gp, a3, a2
                  add          t4, t2, t0
                  xori         gp, s2, -1287
                  xor          a3, zero, s4
                  xor          a6, a2, sp
                  srai         a4, t1, 13
                  srl          t1, t1, gp
                  add          s11, s0, t0
                  srl          s1, s11, t5
                  sltiu        a2, s7, -1649
                  srl          a4, gp, a6
                  nop
                  add          a4, zero, ra
                  auipc        a3, 649925
                  sltu         a2, t4, tp
                  auipc        a0, 940369
                  lui          gp, 478334
                  slli         t4, tp, 4
                  sra          a5, t2, s11
                  ori          s1, gp, -1112
                  auipc        gp, 741110
                  sltiu        a7, t4, 842
                  sltiu        t6, a0, 1010
                  srai         s8, sp, 18
                  and          t3, s11, t1
                  add          a2, tp, a5
                  xori         s10, s11, -1498
                  and          a5, t5, tp
                  nop
                  xori         s8, t2, -901
                  add          s8, t6, t4
                  and          t3, t3, s8
                  sll          a1, t4, s4
                  add          t3, s2, s6
                  xori         ra, s10, 587
                  or           s8, ra, sp
                  nop
                  slt          a3, s5, a6
                  andi         s2, s5, -967
                  srli         a4, tp, 4
                  srli         a3, a7, 24
                  srl          t0, a0, s9
                  srli         t2, tp, 19
                  slti         gp, ra, -1160
                  xori         s0, a2, 69
                  or           t0, a3, s2
                  xori         a1, sp, 76
                  sll          a4, s3, s10
                  sll          a0, a3, ra
                  add          s0, s3, t0
                  and          s2, a2, s3
                  addi         gp, s5, 606
                  srai         a2, a3, 31
                  xori         s1, s1, -1067
                  sll          t6, s5, s6
                  xori         s2, a3, 351
                  lui          s10, 502817
                  slt          a7, s5, zero
                  sll          a1, s8, a4
                  srai         a2, a2, 24
                  nop
                  sltu         a5, gp, a2
                  lui          t3, 511489
                  ori          s2, s6, 1932
                  xor          s8, ra, tp
                  srai         s2, t3, 1
                  nop
                  andi         s5, a6, -1550
                  andi         gp, t3, -1849
                  slt          a4, s0, t6
                  and          gp, s0, a0
                  sltu         t0, s11, t5
                  slt          a4, s4, t6
                  sra          a5, zero, s8
                  addi         a2, a6, -148
                  andi         t3, gp, -444
                  and          s7, a1, a4
                  nop
                  andi         zero, s1, -863
                  sra          s10, a6, gp
                  slt          s2, gp, s3
                  addi         ra, s5, 299
                  auipc        t2, 543390
                  slli         s3, t3, 19
                  xori         a1, s4, 2040
                  lui          s7, 527176
                  ori          t3, a0, 1938
                  slti         s11, s11, 943
                  srai         tp, t6, 14
                  slt          t6, a2, s2
                  add          s9, tp, zero
                  sub          s3, s4, a2
                  lui          a1, 721661
                  or           a2, s3, s0
                  auipc        a1, 790101
                  srl          s10, a2, s7
                  slti         s7, a0, 612
                  and          a6, t2, a3
                  andi         t0, s0, -417
                  ori          a3, t6, 1318
                  sltiu        t6, s7, -1899
                  srli         a7, s10, 1
                  or           t4, s1, a2
                  auipc        t2, 992408
                  nop
                  srli         s1, s11, 18
                  sltiu        s0, s3, -274
                  sltu         a1, t5, s1
                  addi         t3, t4, -641
                  slti         t0, a3, -1506
                  lui          zero, 654434
                  add          t2, t1, s8
                  sll          t4, a3, s8
                  srai         a2, t2, 6
                  slt          s8, s7, s5
                  sltiu        t6, a5, 1597
                  nop
                  andi         s8, t5, -1504
                  srl          t0, s11, a4
                  xori         t4, a0, -1249
                  sll          t3, a6, s10
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a6, 0xffffffff
                  li           s11, 0xffffffff
                  li           a0, 0xffffffff
                  li           t4, 0xeef78343
                  li           ra, 0x80000000
                  li           tp, 0x80000000
                  li           s5, 0xffffffff
                  li           a4, 0x0
                  li           a1, 0x0
                  add          a4, tp, a4
                  sub          a4, a0, t4
                  nop
                  lui          a6, 644451
                  auipc        ra, 766533
                  add          s5, a2, t4
                  add          a0, a2, a4
                  auipc        s11, 515509
                  sub          a1, s5, s11
                  add          tp, a0, a1
                  lui          ra, 86398
                  sub          t4, s11, a4
                  sub          a6, a4, t4
                  addi         tp, ra, -447
                  sub          a4, a2, a4
                  add          ra, a0, a0
                  addi         a6, a1, 255
                  nop
                  lui          a2, 536055
                  addi         s11, a2, -1939
                  sub          a6, t4, a2
                  auipc        s11, 71444
                  lui          a2, 38469
                  addi         a4, a6, 116
                  add          a4, a0, a2
                  auipc        t4, 918181 #end riscv_int_numeric_corner_stream_2
                  slti         s9, s11, -769
                  add          ra, t0, t2
                  lui          s5, 498432
                  xor          t2, t3, s4
                  sltiu        a4, s1, 1534
                  srl          a2, s4, a3
                  and          s0, a1, a0
                  sra          gp, gp, t2
                  srl          a5, s6, a5
                  andi         s6, s10, 409
                  slli         t4, t3, 13
                  srli         a6, sp, 30
                  slti         t2, a2, -822
                  lui          a3, 1045405
                  add          ra, zero, a2
                  xori         s0, a2, -621
                  srl          s11, a4, t2
                  addi         a5, s1, -1028
                  or           a7, zero, s11
                  slt          a7, a3, t5
                  srli         gp, sp, 20
                  addi         s11, s10, 103
                  or           a2, t1, s0
                  auipc        s7, 674821
                  srl          s10, a0, a3
                  auipc        s7, 725769
                  auipc        s1, 705900
                  srli         s8, ra, 8
                  slti         s11, a3, 1188
                  slli         s1, s4, 0
                  addi         s6, s0, -1813
                  slli         s10, s7, 29
                  sra          s10, s4, zero
                  and          a7, s8, zero
                  srai         a1, a5, 11
                  slt          s6, t5, t3
                  sll          zero, zero, t4
                  slti         a2, gp, -845
                  or           a3, a7, a4
                  sltiu        a6, s11, -289
                  sltu         a6, s4, gp
                  srli         a7, s7, 1
                  xor          gp, a3, s4
                  slti         s11, s0, -1741
                  sltiu        t1, a7, -1380
                  ori          s10, t5, 1093
                  sll          s10, t3, ra
                  sub          a2, s2, t5
                  auipc        s9, 136934
                  lui          a1, 1018251
                  slt          s11, s3, s8
                  slt          s7, t5, t1
                  ori          s9, s1, 1391
                  addi         tp, sp, 967
                  sltiu        a0, a1, -439
                  addi         ra, t6, -1379
                  auipc        a6, 418959
                  sll          a5, s0, t3
                  slti         ra, t4, -1122
                  ori          a1, a7, 1727
                  slti         t6, s6, 930
                  auipc        s7, 408124
                  srli         t6, t1, 11
                  and          gp, s0, gp
                  sltiu        s0, s6, -888
                  nop
                  lui          s9, 455523
                  or           t1, t2, ra
                  nop
                  srl          a4, s1, s11
                  slli         t1, s7, 2
                  or           t2, a0, s8
                  slli         t1, zero, 30
                  xor          s11, t5, a1
                  auipc        a4, 25684
                  xor          s9, s6, s11
                  xor          tp, a5, s1
                  sra          t3, t2, zero
                  slti         a7, zero, 839
                  xor          a6, a3, t2
                  xori         s2, a7, 1763
                  sra          t2, a4, t5
                  add          s7, a6, s7
                  ori          s7, t5, 1917
                  andi         a2, t1, 1716
                  xor          s8, zero, s1
                  slli         gp, t1, 30
                  add          s6, t2, s9
                  addi         s11, t2, -140
                  addi         a0, gp, 97
                  nop
                  sub          a5, s9, s3
                  slli         s10, a1, 10
                  sltiu        t4, s3, 776
                  nop
                  srai         s5, gp, 4
                  or           a3, t2, t5
                  add          a1, a7, ra
                  sltiu        t3, a5, 1795
                  slt          t4, s10, a2
                  xor          s6, a1, a4
                  or           a7, s2, s9
                  slti         a7, a4, -231
                  auipc        s9, 185041
                  lui          tp, 838673
                  sub          ra, s3, a6
                  add          t2, a7, zero
                  sub          s9, zero, ra
                  sub          t1, a0, s9
                  addi         tp, a2, 1984
                  sra          s7, t4, t0
                  andi         a7, ra, -1271
                  sra          a0, t3, sp
                  nop
                  sltiu        s3, a1, 1712
                  xori         t6, s7, 1446
                  ori          a2, t3, 250
                  sltiu        s6, t3, 1568
                  slti         s11, s6, -714
                  addi         s9, s1, 1526
                  srli         t0, t1, 30
                  addi         s9, s6, 1077
                  sltu         ra, s8, s10
                  nop
                  and          a7, s11, t3
                  xori         a5, t1, -1026
                  sra          t2, s10, s4
                  slti         a3, a7, -1414
                  srli         a5, s10, 6
                  srl          tp, t4, s2
                  slli         s5, s5, 18
                  andi         t6, a6, 930
                  add          s8, t5, t6
                  slli         s10, t0, 1
                  andi         a5, s3, 860
                  sltu         s0, t1, zero
                  srli         s10, t4, 18
                  slti         ra, t2, 1886
                  sltiu        a1, s1, -909
                  xor          a5, a5, gp
                  sll          a7, s9, s11
                  ori          s2, a3, 367
                  sra          t3, s9, a5
                  sltiu        s10, a2, 1751
                  sltu         a3, a5, a7
                  auipc        a2, 346657
                  addi         a3, a2, -969
                  slli         gp, s9, 22
                  slli         s7, a4, 11
                  add          s2, s9, zero
                  or           t0, a4, s4
                  sub          a5, t4, tp
                  auipc        a0, 854894
                  srai         a6, a6, 2
                  srl          a4, a7, t6
                  sltu         s1, gp, t6
                  add          t0, ra, a6
                  slti         s5, s10, -1959
                  sltiu        s6, s5, -544
                  add          s7, s11, s10
                  xori         s2, s9, -106
                  srli         a5, a1, 14
                  sub          t0, t2, t0
                  slt          zero, t0, s9
                  xori         ra, s3, -883
                  ori          t6, a7, -716
                  srai         s2, ra, 12
                  xor          s2, a4, s9
                  sltiu        s6, s4, -851
                  sra          t1, s8, s10
                  addi         s6, s8, -505
                  srai         s11, a1, 28
                  xor          a3, s7, a1
                  lui          s1, 654525
                  xor          a5, a1, sp
                  lui          t4, 779195
                  sra          ra, a4, a0
                  lui          s7, 782727
                  sltu         s10, t4, sp
                  or           t4, t2, t5
                  sltiu        s9, t4, 1184
                  slt          s10, s10, t3
                  srli         s1, s1, 16
                  sll          a7, a7, s7
                  addi         s5, sp, -1579
                  andi         s0, a3, -77
                  srai         t1, t2, 17
                  slti         s10, s6, 1799
                  addi         s7, a3, 671
                  slti         zero, a7, -894
                  and          s0, t5, s0
                  sltiu        s7, s9, 314
                  xor          a3, s3, t5
                  and          a3, t4, s7
                  sll          t1, a2, s6
                  xori         s7, tp, -898
                  sltiu        tp, s2, 1627
                  ori          a6, a6, 1408
                  sltu         a4, s8, t2
                  slti         s2, s11, -491
                  andi         s3, s3, 1567
                  ori          gp, s6, -1226
                  auipc        a7, 585921
                  nop
                  auipc        a2, 543295
                  sub          s0, t3, t0
                  srai         a1, t6, 18
                  sltiu        s1, s10, -835
                  srl          s1, t2, t0
                  sll          a7, s2, t1
                  sltiu        a1, ra, 395
                  srl          s6, a3, s0
                  auipc        s11, 840098
                  lui          a5, 414526
                  sub          s1, t3, t1
                  sll          s0, s4, a2
                  or           a5, zero, s1
                  slli         s3, a0, 0
                  xori         a6, tp, -896
                  sra          s9, s1, s7
                  slti         a3, t4, 726
                  sub          a0, s5, s9
                  sra          a3, s0, s11
                  srl          s1, t6, s9
                  auipc        s7, 1041690
                  xor          a4, s0, t2
                  ori          t6, ra, 996
                  add          a7, t6, a7
                  and          s6, s10, t4
                  slti         t4, t4, -1830
                  srli         a4, a7, 13
                  addi         t2, a6, -1893
                  sltiu        s5, t4, 1675
                  lui          a6, 994653
                  slli         a5, t0, 12
                  slt          s8, s2, s9
                  sltiu        a1, sp, 803
                  srl          s1, s10, gp
                  sll          a0, zero, a2
                  or           a1, s5, s2
                  sra          s11, s11, s8
                  srl          s2, s11, zero
                  add          s8, tp, t4
                  sll          t0, t3, a0
                  srli         s7, a3, 15
                  and          s1, ra, sp
                  and          gp, t1, a2
                  add          a6, s0, a1
                  sltiu        a4, a7, 1051
                  auipc        s2, 96804
                  srli         a6, s6, 15
                  slt          a1, a6, s7
                  sll          zero, a3, t6
                  srai         s9, s10, 0
                  ori          tp, s5, -537
                  slli         a5, s11, 23
                  addi         t3, s4, -1289
                  slli         t4, s9, 28
                  sra          zero, t3, t3
                  nop
                  sltu         s2, s1, s2
                  xor          a1, sp, t3
                  sub          a1, t6, s2
                  xori         s5, a0, 502
                  addi         a5, zero, -408
                  sub          s10, s0, s10
                  xor          s6, s10, t3
                  or           a0, a0, a2
                  sra          s9, s5, s10
                  andi         t6, t5, -1072
                  xor          a2, a5, t6
                  slli         t2, s4, 28
                  lui          s0, 694239
                  sub          a3, s4, tp
                  slt          t2, t1, t2
                  nop
                  srl          t6, a7, a6
                  srli         a7, a7, 30
                  addi         a2, t5, -1619
                  slti         a6, t5, 343
                  slli         a1, s8, 27
                  sub          tp, a2, a1
                  or           s8, a7, tp
                  srli         a6, s6, 28
                  andi         gp, s7, 498
                  srai         t1, s0, 24
                  xori         s5, t3, 462
                  nop
                  srli         t6, s11, 16
                  lui          t2, 433126
                  sltu         gp, a6, s3
                  nop
                  srli         a0, t0, 26
                  slt          s1, s3, t1
                  nop
                  ori          t0, s5, -754
                  sub          a6, s8, s5
                  srli         t1, a4, 0
                  sub          s2, s9, t2
                  and          s11, t6, zero
                  srl          s1, a2, a2
                  nop
                  xori         zero, s5, 1690
                  ori          t6, a3, -564
                  sra          s7, t0, s6
                  slt          zero, a6, a7
                  sltiu        a3, s9, 462
                  sltu         s9, tp, a6
                  nop
                  or           a7, s4, t4
                  sra          a2, a3, s9
                  addi         t0, ra, -1955
                  slli         zero, s8, 27
                  slt          tp, t5, s2
                  slti         t6, s2, -847
                  auipc        s9, 1032278
                  sub          t4, t6, t2
                  ori          s7, s10, -1974
                  or           s1, a1, s0
                  add          t1, a6, a1
                  sra          a3, s8, t6
                  slti         a7, s11, -1867
                  xor          zero, s8, s7
                  addi         tp, a4, -1681
                  addi         a5, zero, -1412
                  sll          ra, sp, s4
                  or           a6, a5, s3
                  add          t1, a1, a2
                  sltiu        s11, zero, -1450
                  sll          s7, s4, gp
                  srl          s3, a7, s5
                  srl          t1, s4, s11
                  xori         ra, t2, 1746
                  sll          s1, t4, s5
                  lui          s6, 688049
                  add          s5, s9, tp
                  nop
                  sltiu        t2, ra, 1812
                  sltiu        a0, s2, 597
                  lui          a6, 359805
                  srl          zero, s5, t1
                  sltu         a6, a0, ra
                  or           a6, s6, s1
                  auipc        s6, 941956
                  sub          a6, zero, a3
                  sra          s11, s2, zero
                  sll          t6, a3, s7
                  and          s1, sp, sp
                  sra          a6, s11, s3
                  xori         s5, s5, -256
                  nop
                  sltu         s2, t3, t1
                  sll          gp, sp, s8
                  sra          s2, ra, s3
                  sll          a5, ra, s10
                  ori          s3, t3, 449
                  slli         t4, gp, 1
                  add          s6, a3, sp
                  nop
                  slt          zero, s1, s2
                  nop
                  and          s0, zero, s10
                  and          a1, zero, t6
                  ori          t4, a0, -1591
                  srl          a4, t3, sp
                  auipc        s9, 252167
                  xor          s11, a4, s1
                  auipc        s11, 99554
                  sub          s3, s2, s8
                  slli         tp, t6, 22
                  sub          t3, gp, s3
                  srli         a2, a0, 28
                  auipc        s1, 753211
                  slti         a4, t0, 176
                  auipc        s0, 961252
                  slli         t3, s8, 4
                  lui          zero, 980110
                  slt          a6, s0, t6
                  sll          s8, a2, sp
                  ori          s7, a4, 569
                  sub          a6, s4, a1
                  sltiu        t3, s11, -1843
                  ori          t3, s6, -1352
                  sltu         s11, a0, t0
                  xor          a2, s0, t4
                  nop
                  nop
                  srli         a6, a5, 3
                  srl          s5, s11, a7
                  andi         s5, zero, -1641
                  xori         a5, a0, -1276
                  xor          t3, s0, s9
                  add          t1, ra, ra
                  slli         s1, s8, 11
                  slt          s10, sp, t0
                  andi         a5, s0, 688
                  slt          s3, s1, sp
                  sub          a1, s10, s8
                  srai         a4, t1, 14
                  andi         ra, s4, -36
                  add          t4, s7, a4
                  slt          s6, a7, a0
                  sltiu        t2, t0, -527
                  andi         s7, ra, -981
                  lui          s5, 141129
                  and          a0, a0, s4
                  xor          a6, gp, s3
                  nop
                  srli         s7, s7, 23
                  srai         a4, t2, 10
                  srai         t4, ra, 22
                  add          gp, s8, t4
                  or           s5, gp, tp
                  addi         s2, sp, -12
                  srli         t6, s10, 6
                  nop
                  nop
                  sll          t2, s11, a0
                  slti         s8, s2, -571
                  slli         s10, s9, 2
                  andi         t3, s0, 1042
                  andi         a7, t4, -2014
                  ori          zero, a6, 1880
                  or           s0, tp, s5
                  ori          s5, s9, -396
                  xor          a2, s1, tp
                  srli         ra, tp, 3
                  auipc        s10, 779602
                  and          s2, zero, s9
                  ori          s5, t2, 1830
                  lui          zero, 628892
                  xor          ra, gp, s9
                  lui          a3, 521555
                  ori          a4, t5, -1764
                  sll          s1, t6, t3
                  xori         t0, s11, 1462
                  sltiu        a3, a4, -496
                  nop
                  xori         s3, t1, -1581
                  slt          a0, s5, s2
                  andi         s10, s3, 1813
                  slti         t0, s6, 718
                  sra          a6, s6, zero
                  sra          s9, t1, gp
                  srl          s1, tp, a2
                  slti         a3, s9, -20
                  slti         s3, a6, 1668
                  and          t1, a5, t6
                  addi         s9, a1, 1955
                  sltu         s9, t0, s1
                  sltiu        t0, tp, 1962
                  sltiu        s8, s6, -43
                  nop
                  sltiu        a7, ra, -1954
                  srli         t6, t3, 17
                  slli         s10, s1, 6
                  andi         a6, a4, 14
                  slli         a4, a0, 27
                  xori         ra, s9, -1005
                  sltiu        t2, t2, -354
                  slti         a4, s6, 1633
                  add          t1, t5, t0
                  sltiu        gp, a0, -1111
                  slli         a5, s0, 16
                  srli         a4, s1, 4
                  addi         a7, a0, -1205
                  slti         s9, a4, 1867
                  nop
                  srli         s6, gp, 24
                  or           s7, a3, t1
                  sltu         a4, sp, s7
                  sltiu        a7, t0, -329
                  add          a4, t1, gp
                  sub          t0, a4, a2
                  srai         s10, a0, 30
                  sltiu        zero, s1, -1348
                  andi         s1, a3, -23
                  add          s10, ra, s6
                  ori          t2, t0, 484
                  srl          tp, t1, s8
                  or           s3, s4, s5
                  srli         s2, s11, 1
                  srli         a0, tp, 13
                  or           t4, s3, a5
                  sll          t6, a7, s9
                  sltiu        s10, s8, -1811
                  sra          a3, a6, zero
                  xor          a2, a2, s7
                  srai         s5, s9, 30
                  nop
                  ori          t2, a5, -1355
                  and          t1, a6, s6
                  xori         ra, t3, -418
                  slli         t3, t5, 2
                  slt          t3, ra, t1
                  slt          a2, s4, zero
                  sltiu        t6, ra, 1842
                  xor          a6, s1, t0
                  sll          a7, gp, s5
                  srli         a1, a3, 19
                  ori          a2, s0, 347
                  sub          t4, sp, a7
                  sub          s5, a3, s5
                  auipc        t2, 729576
                  slt          t0, tp, a3
                  srl          ra, s8, s1
                  and          a1, t5, a7
                  ori          a0, t0, -1880
                  srli         a0, s5, 18
                  nop
                  sltiu        a4, sp, 1820
                  lui          a4, 393476
                  sltiu        ra, t1, 1214
                  nop
                  sub          tp, a3, sp
                  slt          s10, t1, s2
                  sll          s0, a3, a6
                  sll          s2, tp, s10
                  andi         s11, a0, 725
                  add          a4, a2, a3
                  nop
                  lui          a7, 88401
                  sra          a1, a7, a0
                  srai         a1, a2, 25
                  slt          a6, s0, s0
                  srli         s9, s8, 26
                  sll          s1, s9, a2
                  slt          a5, s11, s11
                  and          t6, a4, tp
                  sub          t1, ra, s8
                  slti         s1, s6, 1024
                  sltiu        gp, s3, 1725
                  nop
                  slli         a1, a6, 24
                  srai         s0, s6, 5
                  srl          zero, a6, ra
                  auipc        a6, 278477
                  sltu         a1, s9, ra
                  sub          gp, s0, a7
                  lui          s9, 392730
                  nop
                  slli         gp, t0, 25
                  and          s3, s6, a0
                  addi         t3, a4, 1837
                  or           s1, a6, s4
                  add          t0, t4, zero
                  slti         t1, s10, -2032
                  sltu         gp, s0, t6
                  srli         s6, t2, 13
                  auipc        t0, 777802
                  ori          zero, s7, 2011
                  sltiu        s2, s9, -1523
                  srli         s11, a5, 7
                  sub          t0, a1, a0
                  addi         a0, a2, 542
                  lui          s9, 191189
                  nop
                  slli         s0, gp, 8
                  sltiu        a3, t4, 158
                  or           t6, a7, a5
                  nop
                  sub          a4, s6, t1
                  nop
                  xor          a0, a1, s1
                  lui          s1, 680768
                  nop
                  and          s0, a3, t0
                  sll          ra, a0, t1
                  xor          s5, s1, zero
                  sra          t6, a3, a1
                  ori          a3, a1, -1830
                  nop
                  sltiu        s6, s6, -1495
                  andi         ra, a6, -598
                  slli         a7, s6, 12
                  srl          ra, s6, zero
                  sltu         a1, s5, ra
                  addi         zero, s5, 1128
                  sltu         s10, a3, t4
                  sltiu        a0, ra, -1955
                  srl          t3, s8, a0
                  ori          s1, s7, 809
                  ori          a4, a7, -416
                  xor          a0, t3, t5
                  auipc        a1, 893359
                  or           t6, s11, s3
                  and          zero, s5, a4
                  xori         s9, s5, 1014
                  sltiu        ra, t0, 636
                  auipc        s6, 183382
                  sltiu        t0, a0, -879
                  sltiu        a3, s8, 1605
                  xori         s8, ra, -1977
                  auipc        a2, 326463
                  addi         gp, t0, 1360
                  lui          t4, 912903
                  nop
                  or           a7, s6, s0
                  and          t0, t6, s3
                  sra          a3, a5, s2
                  xor          t2, a7, s8
                  ori          a6, a3, -965
                  nop
                  xor          s7, s11, zero
                  slli         s6, s2, 0
                  or           a3, zero, zero
                  add          a5, a3, zero
                  sltu         s11, t0, t2
                  andi         a6, s6, 846
                  lui          s0, 683382
                  xor          s3, s6, a3
                  slt          t3, ra, gp
                  sub          s1, t3, sp
                  and          a0, a1, a5
                  and          s3, a0, sp
                  xori         a4, a6, -1475
                  slt          s5, s4, t6
                  sll          a0, a6, s3
                  or           t3, s6, s5
                  auipc        a4, 1033866
                  lui          s3, 630739
                  addi         a6, s5, 1785
                  and          a5, s3, a4
                  nop
                  slt          gp, t6, t3
                  sub          gp, s9, gp
                  nop
                  and          s3, t6, a6
                  and          zero, a3, s6
                  srai         zero, t2, 11
                  and          s6, s6, t6
                  xor          t0, s4, t1
                  sltu         t1, gp, s11
                  sll          a6, gp, a3
                  nop
                  slti         s5, a6, -1097
                  srl          a5, s5, t2
                  srli         a1, s6, 22
                  ori          s7, t3, -308
                  srl          s3, s0, a1
                  srli         tp, t0, 22
                  lui          t1, 177087
                  addi         a6, sp, -358
                  addi         s6, s2, -1756
                  slli         gp, s9, 6
                  xor          a5, tp, gp
                  addi         zero, s4, -1257
                  srai         s5, s2, 29
                  sra          a4, a6, t3
                  sltu         s7, s11, s9
                  slti         a4, t5, 2020
                  slti         s3, t1, -1338
                  slti         s7, a7, 1000
                  ori          s7, t2, -1032
                  sltiu        s1, a0, -1077
                  srli         s3, tp, 18
                  lui          s3, 854773
                  auipc        t1, 155991
                  slti         s6, t2, 72
                  srai         a0, a1, 12
                  sltiu        ra, s0, -1064
                  auipc        s1, 40004
                  slt          s7, a5, s3
                  addi         s5, t2, -61
                  slli         t0, ra, 3
                  nop
                  sltu         a6, a4, t0
                  srl          t3, t5, s10
                  xori         a7, s0, -1583
                  srl          s1, a1, s0
                  sltu         a2, a6, s6
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s0, 0x0
                  li           t0, 0x80000000
                  li           s7, 0xffffffff
                  li           s9, 0x80000000
                  li           s6, 0x5a65ebbd
                  li           s11, 0x80000000
                  li           gp, 0xff93d3fc
                  li           t2, 0x80000000
                  li           a7, 0xffffffff
                  auipc        s11, 310829
                  auipc        s6, 861369
                  nop
                  addi         a1, s9, -1383
                  addi         a7, a1, -837
                  sub          a1, a1, a1
                  add          t0, t2, t0
                  sub          s6, gp, a1
                  nop
                  addi         a1, s6, -1995
                  addi         s6, a1, -203
                  lui          s7, 245435
                  sub          s7, t2, s6
                  addi         t2, s6, -1441
                  lui          s7, 802300
                  auipc        s11, 847200
                  nop
                  auipc        s11, 696966
                  add          t0, t2, a7
                  add          s6, a1, s7
                  addi         s11, s9, -1126
                  add          s7, s6, s9
                  nop
                  lui          t0, 982083
                  add          s0, s6, s6
                  add          t2, gp, t2
                  addi         t0, s0, 1598 #end riscv_int_numeric_corner_stream_1
                  xori         a7, a5, -1574
                  sltiu        t0, s11, 936
                  sll          a0, t3, s7
                  xor          s10, t0, a0
                  slti         s5, a7, -967
                  sub          t0, s9, a3
                  nop
                  andi         t6, t6, 1305
                  slt          ra, s5, s10
                  or           a5, tp, t3
                  srai         a1, t1, 14
                  sltu         a6, s4, a3
                  auipc        a0, 269181
                  add          s1, s4, t2
                  sltu         a1, gp, a1
                  srli         tp, tp, 7
                  srai         s0, t2, 10
                  srai         a0, s6, 31
                  xori         s3, s5, -337
                  or           gp, zero, s6
                  addi         gp, s3, -1973
                  ori          t0, s10, 480
                  sra          a2, t6, s4
                  xor          s5, s8, s11
                  ori          s6, s9, 1456
                  srli         t6, s1, 22
                  nop
                  nop
                  or           a4, ra, a2
                  xori         t6, a4, 1892
                  sra          s7, a2, t1
                  addi         t6, a6, -80
                  ori          a5, a5, 806
                  and          s8, ra, t1
                  srli         a1, s11, 17
                  lui          s9, 166165
                  and          t3, s7, a4
                  sll          s2, t5, t1
                  slt          a4, a6, s8
                  addi         a7, s6, -762
                  srl          t2, t1, ra
                  add          a2, tp, gp
                  andi         s3, zero, 143
                  add          a7, s2, gp
                  slli         s2, a1, 26
                  or           s7, zero, a4
                  srli         a7, s8, 27
                  sltu         t0, t1, s8
                  sltu         s9, t0, t2
                  ori          a0, t2, -337
                  auipc        tp, 54882
                  xor          t1, a7, s1
                  nop
                  add          a1, a1, a7
                  slti         s1, s3, -1172
                  sltu         t4, a6, a2
                  addi         s8, zero, 61
                  and          t2, t5, s10
                  xori         zero, s10, 474
                  lui          gp, 460969
                  srl          gp, s5, s1
                  lui          t2, 116698
                  sub          zero, a2, t4
                  srai         a4, a4, 8
                  xor          s1, a7, ra
                  or           s10, s11, a5
                  slti         s3, s6, 1675
                  sub          s5, a5, tp
                  srai         s7, s8, 7
                  sltu         a3, a4, a2
                  lui          s8, 425162
                  ori          s8, s2, -486
                  auipc        t0, 196177
                  nop
                  srai         a4, s6, 9
                  sub          s10, a7, s9
                  slli         s7, s10, 19
                  srli         t4, t0, 20
                  andi         a3, t0, -313
                  slli         s9, zero, 4
                  auipc        s6, 180227
                  addi         s3, s4, 571
                  sltiu        s9, a0, 299
                  sltiu        gp, s1, -572
                  slli         s10, t5, 4
                  addi         s10, s4, 1322
                  sltu         ra, tp, t5
                  lui          a4, 632012
                  ori          a5, s7, 1318
                  slli         a5, s1, 8
                  sra          a4, t4, a3
                  xori         a1, a3, 1835
                  xori         s10, a7, -461
                  sltu         tp, s6, s3
                  srai         t4, a5, 31
                  addi         s11, s1, -1661
                  ori          a3, t5, -1205
                  andi         t2, a1, -9
                  slli         a6, ra, 3
                  sltu         s0, a3, s2
                  lui          ra, 165754
                  sra          s5, t1, sp
                  sub          t2, gp, s7
                  srl          tp, s8, s1
                  addi         ra, sp, -1114
                  slt          s11, s10, s8
                  add          zero, a4, t2
                  nop
                  srl          s7, t4, zero
                  srl          t1, s8, t0
                  sra          t0, a6, s9
                  add          a2, a1, s4
                  xor          s2, gp, s6
                  slt          a2, s3, s7
                  or           a3, t4, s10
                  and          zero, s3, a3
                  or           s7, a6, a1
                  sll          s10, s0, s0
                  sll          s1, s2, gp
                  lui          t1, 590604
                  slli         t2, zero, 21
                  xor          a4, s6, s11
                  sub          a2, a7, t4
                  slti         ra, a0, 1596
                  slt          tp, ra, t3
                  nop
                  or           t6, a5, t1
                  srai         s3, s11, 19
                  or           s8, t4, s4
                  sltu         a5, s5, s10
                  srl          s2, a2, zero
                  slli         t6, tp, 8
                  sltiu        a5, s1, -1344
                  sub          s10, t5, sp
                  add          t0, s6, ra
                  slli         s9, a1, 18
                  nop
                  and          t0, s0, s11
                  xor          t3, s6, a6
                  slli         s3, s0, 2
                  auipc        s2, 60515
                  srli         s3, ra, 24
                  lui          t1, 71224
                  slli         a1, t0, 10
                  or           t1, s6, a4
                  and          s6, s3, t3
                  sub          a2, s4, s9
                  or           ra, t4, t1
                  addi         s8, t0, 1476
                  srl          t6, a3, gp
                  slti         t4, s0, -1416
                  and          ra, sp, a1
                  sll          a3, s8, s4
                  or           a5, t4, s6
                  sltu         s11, s3, t5
                  slli         a7, a1, 4
                  or           s1, zero, s9
                  ori          s11, t2, -1910
                  andi         a7, sp, 1036
                  slt          s0, t5, a1
                  ori          t4, t5, 332
                  sltu         s6, a3, s5
                  sltiu        a2, s0, -1039
                  sra          s0, a0, t4
                  and          s1, a1, s7
                  and          a3, t6, t0
                  srl          a5, a4, sp
                  and          gp, t0, s5
                  lui          s11, 895727
                  sra          s10, s5, a7
                  addi         ra, s3, -1409
                  slt          s5, zero, s0
                  nop
                  sltu         s1, s4, s4
                  nop
                  lui          a3, 268358
                  slti         a6, gp, 1496
                  slti         a3, t3, -1769
                  slt          zero, gp, s1
                  add          s10, s8, a7
                  sll          t4, s11, s10
                  sub          s3, sp, s2
                  slli         a7, a3, 3
                  sll          s9, s4, s2
                  and          t0, s0, s7
                  ori          a1, t0, -484
                  lui          s5, 936873
                  srli         s11, sp, 16
                  add          s7, t1, a7
                  auipc        t6, 573631
                  srl          a0, s3, a3
                  sll          a5, ra, a0
                  auipc        a5, 228418
                  srai         s6, s0, 9
                  nop
                  sltu         s2, s11, sp
                  sll          s0, s7, s8
                  xori         s5, s9, 1406
                  srli         s11, ra, 25
                  sltu         s10, t1, s9
                  slti         t3, s5, 1994
                  sub          a5, zero, t1
                  sub          a7, a0, t3
                  sltiu        s7, s8, -1531
                  xori         t3, s8, -324
                  srli         s10, a7, 0
                  addi         t3, s9, -1188
                  sub          s8, s7, t4
                  and          s3, tp, zero
                  add          a1, sp, t3
                  xori         a3, s9, 794
                  slt          a5, sp, s5
                  sll          a6, t3, s3
                  xori         ra, t4, -532
                  srai         s8, t2, 16
                  auipc        t0, 865475
                  or           t3, a5, s4
                  sll          t3, t1, s2
                  lui          a1, 865987
                  srli         s3, s5, 15
                  auipc        s11, 467747
                  sll          t1, t4, zero
                  srai         s10, s3, 15
                  add          s1, a5, s7
                  srai         t4, s11, 2
                  add          a4, a2, a5
                  or           ra, a5, a0
                  xor          zero, a7, sp
                  andi         t2, sp, -37
                  or           s0, t5, t5
                  ori          a2, ra, 1763
                  xori         a7, t2, 328
                  andi         t6, s8, -879
                  xori         a7, s2, 848
                  sll          a4, s5, s3
                  sra          a5, a4, a0
                  srai         tp, a1, 26
                  and          t2, t4, s5
                  slti         s7, s4, -1590
                  sltiu        t0, t4, 118
                  nop
                  sltiu        s11, a6, 1398
                  slli         a3, s9, 12
                  sltiu        a4, t6, 40
                  slli         s3, a0, 30
                  andi         a7, s9, 1537
                  addi         a1, a1, 1341
                  lui          s8, 532449
                  xor          gp, s5, zero
                  sub          a0, s1, tp
                  and          s1, a7, a0
                  addi         tp, a7, -1677
                  xori         a2, sp, 1965
                  nop
                  andi         tp, sp, -796
                  andi         s3, sp, -313
                  sll          a5, a7, sp
                  slti         t4, t0, -591
                  sltu         t3, t0, tp
                  srli         ra, sp, 11
                  slt          a4, s4, s6
                  srli         s1, t2, 8
                  slti         t2, ra, -1822
                  andi         s2, s11, 274
                  sll          a0, a5, tp
                  and          t6, zero, gp
                  xori         s1, a6, -694
                  lui          ra, 166189
                  sltiu        ra, a3, -395
                  sra          s6, ra, a0
                  ori          a1, s4, 1123
                  slt          a0, s0, s6
                  sll          s5, s5, t5
                  andi         s3, a1, -1283
                  lui          s8, 898953
                  addi         a7, s3, -840
                  srl          s5, s10, s0
                  and          s5, t3, a0
                  auipc        s7, 102504
                  sub          s11, s2, a2
                  sub          s8, a2, a0
                  slli         tp, a5, 11
                  andi         s8, s2, 1882
                  sra          a3, a5, t4
                  sll          t4, a7, s5
                  lui          zero, 343079
                  addi         s2, s10, 1406
                  addi         zero, gp, -972
                  sll          s0, t6, t2
                  and          gp, t0, s4
                  sub          gp, s2, s11
                  slti         t0, a0, -598
                  sll          s0, a0, zero
                  slli         s5, a0, 16
                  and          a6, s2, a3
                  nop
                  sll          s10, a1, s0
                  or           a1, t6, ra
                  srai         a1, a0, 21
                  slt          zero, s5, s4
                  ori          a6, a3, 1464
                  srli         t4, s0, 8
                  xori         a3, s8, 200
                  sra          gp, s6, s3
                  and          a2, s8, ra
                  slti         tp, gp, -377
                  sltu         t2, s7, a0
                  lui          a3, 252681
                  auipc        s5, 975459
                  andi         gp, gp, -1733
                  andi         t2, tp, 1045
                  srl          a0, s7, s6
                  srli         s9, t6, 14
                  and          zero, a6, gp
                  ori          s10, s5, -581
                  lui          s8, 1016272
                  sll          tp, s7, s5
                  add          t2, s1, a7
                  auipc        t0, 471084
                  lui          a6, 214392
                  add          t2, a0, t1
                  addi         s7, a1, 923
                  sll          s10, t6, t2
                  ori          s5, a3, -1872
                  slt          s8, a3, s4
                  sub          s2, ra, s5
                  sra          s3, s4, s0
                  srai         s10, s4, 8
                  sub          s6, t1, sp
                  srl          t3, s10, a0
                  xor          a6, s1, a1
                  ori          s0, t2, -879
                  or           a1, ra, a2
                  srli         s0, t2, 6
                  sltiu        a0, t5, -733
                  srai         s6, tp, 25
                  addi         a0, s8, 667
                  addi         s7, s1, 1865
                  addi         t2, a1, -397
                  slli         a0, a6, 13
                  sltiu        t0, a5, -201
                  slli         a7, t3, 14
                  nop
                  xori         t2, a1, -1008
                  nop
                  sll          s11, a1, s0
                  auipc        gp, 373912
                  slt          s3, s8, s6
                  slli         s2, s7, 11
                  ori          t0, a1, 424
                  xor          ra, s10, a4
                  srli         a7, a5, 1
                  sub          s6, s6, ra
                  nop
                  slt          a7, t6, a0
                  or           a5, sp, s0
                  and          s0, zero, t5
                  add          t6, t3, sp
                  srl          s0, t4, s9
                  sra          s0, s8, s7
                  andi         t1, gp, 467
                  add          s6, s9, t1
                  slli         a7, a3, 18
                  sub          t4, tp, s4
                  sub          zero, s0, s3
                  or           zero, ra, t3
                  sub          s3, gp, gp
                  srai         a7, s2, 30
                  srl          t1, t6, s2
                  xor          s6, s7, tp
                  or           s0, t5, s6
                  lui          s2, 293241
                  srli         s0, a7, 14
                  sltiu        s0, t1, -1119
                  xori         s5, a7, 1331
                  srli         t2, ra, 5
                  slt          a3, a2, s5
                  auipc        a7, 524561
                  and          s3, t0, a6
                  slt          a5, s7, a1
                  addi         t0, a7, -1932
                  nop
                  sll          s1, s8, t0
                  ori          a6, gp, 356
                  nop
                  nop
                  lui          s5, 1015569
                  or           s3, s5, sp
                  sll          s11, sp, s8
                  sltu         s2, t5, tp
                  and          s10, tp, zero
                  sltiu        t2, sp, 238
                  sltiu        ra, a1, 1121
                  sltu         zero, a5, t0
                  add          s9, gp, s4
                  andi         t6, s0, 1341
                  sll          s2, s4, a4
                  nop
                  add          a0, s0, t2
                  sltiu        a3, s3, 1402
                  andi         a0, zero, -1075
                  xori         a1, t6, -1580
                  slli         a6, t6, 30
                  sltu         a3, s5, s6
                  sra          t0, ra, a7
                  addi         t6, s1, -1703
                  nop
                  addi         t4, s6, 1601
                  slti         a3, a1, 1443
                  lui          t3, 524906
                  slt          t6, s4, s4
                  xori         ra, s11, -1851
                  andi         s8, t5, -1365
                  srl          s5, a5, a3
                  xor          s5, a3, t4
                  andi         s0, s5, -244
                  srl          a2, t4, s2
                  lui          tp, 1036045
                  srai         s10, a5, 7
                  lui          ra, 922739
                  sltu         t4, a1, s5
                  slt          s2, a0, s6
                  sltu         a2, a4, a2
                  xor          a0, s4, t5
                  sll          s3, sp, a0
                  nop
                  addi         a3, t0, -879
                  lui          s7, 1023980
                  xori         s9, s11, 1898
                  sltu         s3, t2, t5
                  xor          s2, s2, t3
                  sub          a1, t6, s11
                  slt          a3, t6, a4
                  sltiu        a7, a4, 1764
                  slt          t6, t2, s8
                  slti         gp, s10, 665
                  slti         ra, s2, -2029
                  and          t3, s4, gp
                  addi         s3, gp, 1311
                  sltiu        a5, a1, 1214
                  sll          a3, s4, s10
                  slti         t1, s10, 1484
                  srli         t6, s9, 4
                  sub          t4, a3, tp
                  sll          a4, s4, a3
                  andi         t6, a6, -466
                  srl          s7, s8, s1
                  ori          s6, s5, 1264
                  slli         t1, gp, 11
                  and          a4, zero, t0
                  slli         t4, a3, 1
                  nop
                  ori          s9, t2, -1789
                  srli         s11, a7, 7
                  slt          tp, s3, ra
                  srli         a0, gp, 8
                  lui          gp, 157484
                  xor          a4, s8, s4
                  lui          s1, 854310
                  lui          s10, 799076
                  slt          s1, t4, gp
                  srli         s9, a1, 29
                  andi         s1, a4, -1993
                  sltu         a0, s3, a7
                  srli         t3, s10, 19
                  sra          zero, t3, gp
                  sll          s8, a3, s11
                  sra          s10, t0, s6
                  srli         s9, s10, 29
                  auipc        a5, 212423
                  srli         a7, s7, 21
                  slti         a4, s6, -1745
                  lui          a3, 448607
                  sub          ra, s4, a1
                  nop
                  srl          s2, s8, zero
                  and          s9, t6, t6
                  auipc        s8, 288466
                  sll          s7, t1, a2
                  srai         a6, zero, 13
                  addi         s2, s3, -1190
                  slti         tp, s8, 1347
                  addi         ra, s4, -314
                  add          s11, s6, s11
                  xori         s8, s9, 8
                  ori          a2, s3, 1114
                  sltu         s2, t0, tp
                  add          a6, a5, s1
                  xor          s10, a1, zero
                  add          t2, a2, s1
                  or           t6, a0, s5
                  ori          gp, a7, 395
                  slt          a3, t1, a2
                  srai         s7, s10, 6
                  auipc        a7, 636845
                  and          s0, a4, t4
                  auipc        t4, 545972
                  sra          a4, s6, t6
                  slli         a4, tp, 25
                  andi         s3, a7, 440
                  sub          s3, t1, t1
                  addi         gp, s9, -586
                  slli         ra, sp, 1
                  srl          ra, a7, a1
                  sltu         a7, t6, s5
                  slli         a1, s4, 6
                  ori          s2, s8, -1232
                  srai         s9, s5, 17
                  sub          zero, a7, t3
                  sra          s8, tp, a7
                  sub          s10, a1, ra
                  slli         s0, s11, 20
                  and          a6, t3, t5
                  xori         s3, tp, -142
                  srl          t3, sp, sp
                  sltu         a4, a0, s2
                  srl          t3, t5, s1
                  auipc        t4, 115094
                  addi         s8, tp, 942
                  andi         s5, s1, -978
                  lui          t6, 996832
                  slli         s11, a5, 30
                  srli         a2, s4, 25
                  auipc        a7, 720870
                  sll          a7, s10, a1
                  or           s0, s0, s11
                  slli         a1, s5, 26
                  srl          gp, t0, a4
                  lui          a0, 864578
                  xori         a4, t3, 541
                  or           a4, s9, t4
                  lui          s5, 301836
                  xor          a7, s3, t4
                  lui          a6, 868140
                  and          s10, t2, s5
                  sub          t0, t6, s7
                  srl          s6, s10, t2
                  xori         s1, s5, 1882
                  auipc        s5, 554191
                  srli         gp, s1, 19
                  sra          s10, t1, s5
                  ori          a3, s5, -1648
                  sra          ra, a0, s9
                  xor          s2, s3, gp
                  sll          a4, a1, s4
                  slti         a4, s9, 900
                  and          s10, a5, s0
                  slt          zero, s7, s10
                  and          t6, s5, sp
                  auipc        t4, 929264
                  srl          s6, s4, a0
                  nop
                  sll          t4, t5, a1
                  nop
                  sra          a0, t6, s9
                  sltiu        s9, t6, 1967
                  slt          t1, s8, t2
                  srli         zero, s8, 18
                  nop
                  srl          s11, tp, a1
                  add          a4, a4, s11
                  xor          zero, s3, s6
                  sub          ra, s0, t1
                  sll          t6, s0, a3
                  slli         s3, s2, 21
                  ori          s8, a7, 922
                  srai         s6, s7, 9
                  slt          zero, t0, a4
                  srli         tp, a6, 4
                  xor          gp, a0, s0
                  and          t4, s7, s4
                  ori          s10, gp, 2011
                  xor          t2, t1, sp
                  and          s7, a4, t5
                  addi         s9, a5, -1419
                  addi         a7, a0, -46
                  srli         ra, s2, 18
                  sra          t0, a0, s4
                  ori          a3, zero, -499
                  srai         t3, a7, 4
                  auipc        s7, 903614
                  sltiu        s2, t3, 1513
                  or           tp, s5, a4
                  sub          tp, tp, t6
                  sll          ra, tp, s5
                  sub          t3, a6, s7
                  andi         s0, a2, 560
                  srli         a3, s11, 0
                  add          a2, ra, s9
                  slti         a0, s1, 1635
                  slt          a7, ra, a2
                  or           a6, s3, a3
                  andi         s10, a1, 76
                  srl          s8, zero, s10
                  slli         ra, a0, 21
                  xor          a6, ra, s9
                  or           t4, s6, tp
                  addi         ra, t0, 1749
                  or           ra, s8, s4
                  sub          a2, a5, s8
                  slti         a6, s9, -1884
                  add          a6, a7, zero
                  or           s1, s2, t1
                  xor          zero, t3, s6
                  andi         t6, s9, -1855
                  addi         a3, a1, 1464
                  lui          zero, 796236
                  or           a4, ra, a5
                  xor          a0, s8, a1
                  auipc        t2, 11111
                  andi         t0, a1, 339
                  slli         a5, a3, 2
                  sltu         s10, s6, t1
                  ori          a1, s4, -1936
                  srli         s11, s11, 31
                  and          t2, a6, s0
                  sra          s6, s7, s0
                  srai         t2, a5, 13
                  xori         s11, a4, 47
                  sltiu        s5, a5, 102
                  xori         zero, s11, -1904
                  xor          ra, a3, a7
                  sltiu        t3, s10, -965
                  ori          t0, s4, 1542
                  and          ra, s8, a4
                  lui          ra, 209496
                  andi         s2, t5, -460
                  slti         t6, t4, -1813
                  sra          a2, s0, s3
                  slti         a5, t1, -1303
                  slti         a5, t4, 67
                  sra          s1, t5, t4
                  sltiu        t3, t1, -1571
                  nop
                  or           t0, tp, t4
                  andi         a3, ra, -90
                  xori         s8, a0, 800
                  or           a1, gp, gp
                  srl          s3, s5, s3
                  srl          s0, a3, s8
                  lui          gp, 87587
                  ori          s5, a7, 1296
                  sub          s11, t4, a6
                  nop
                  xori         s3, s5, 1718
                  or           a0, gp, s9
                  auipc        a1, 337040
                  and          s10, zero, t6
                  sltu         a6, t3, a3
                  sltu         s9, a5, t2
                  ori          t6, s2, 1387
                  slti         s10, a2, 365
                  xori         s11, t3, -1480
                  and          a2, s9, a4
                  slti         a6, t1, 339
                  add          s5, t1, s11
                  xor          zero, a1, s0
                  sltiu        t6, t3, 1238
                  sll          t4, a2, s10
                  lui          a4, 262289
                  sll          t1, t0, s8
                  xori         zero, s10, 202
                  addi         a1, s7, -2010
                  ori          s10, a7, -724
                  xor          s8, t1, tp
                  or           a4, a0, t2
                  or           t2, t4, s2
                  slli         s3, a5, 0
                  srli         s9, a7, 12
                  and          s11, s11, s5
                  srli         s1, s3, 21
                  andi         t1, zero, -1404
                  xor          zero, sp, a4
                  slti         s5, s10, -1255
                  ori          s5, s4, -767
                  slli         s11, a0, 27
                  slti         a2, gp, -406
                  xor          s9, s8, t0
                  andi         s10, sp, -1776
                  sltiu        s7, t1, -574
                  sll          t2, s2, t2
                  srai         s11, s9, 13
                  or           s0, ra, a7
                  auipc        tp, 813779
                  ori          t4, t0, -1958
                  xori         s5, t1, 1633
                  addi         a5, tp, 1356
                  srli         a3, t0, 21
                  xor          s3, t1, s1
                  srl          s6, tp, t4
                  sltiu        a5, gp, 450
                  or           ra, a0, a2
                  li           a5, 0x61be492b #start riscv_int_numeric_corner_stream_16
                  li           tp, 0xbbe03811
                  li           t0, 0x80000000
                  li           a3, 0x0
                  li           a2, 0xffffffff
                  li           s7, 0x80000000
                  li           s11, 0x80000000
                  li           s2, 0xffffffff
                  li           a4, 0xb5bbfbd7
                  li           s8, 0x0
                  add          t0, s11, s7
                  nop
                  nop
                  add          s11, tp, tp
                  add          tp, t0, s8
                  add          s2, s2, s11
                  sub          s7, s7, a5
                  addi         a5, s11, 141
                  addi         s8, s2, 1118
                  nop
                  lui          s2, 162608
                  nop
                  add          a4, a5, tp
                  nop
                  addi         a2, s8, -34
                  lui          s11, 350862
                  lui          a3, 453941
                  lui          s2, 1001007
                  nop
                  nop
                  nop
                  sub          tp, a3, a5
                  addi         s8, tp, -1885
                  nop
                  nop
                  addi         a5, tp, -1951
                  sub          a3, a2, tp #end riscv_int_numeric_corner_stream_16
                  srai         a3, gp, 17
                  nop
                  or           t0, a6, a4
                  add          s8, t2, a3
                  srl          tp, a6, zero
                  slti         s10, s9, 1774
                  srli         t1, s8, 31
                  sra          ra, a4, a5
                  slt          s11, t6, sp
                  xori         s0, s0, -1834
                  add          t4, s2, a5
                  ori          s6, a5, 960
                  slti         a5, a1, 1015
                  xori         a6, gp, -687
                  ori          t2, s1, 1638
                  xor          zero, s1, t6
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s3, 0x80000000
                  li           s5, 0xffffffff
                  li           s6, 0x80000000
                  li           s11, 0xffffffff
                  li           t3, 0xa77c514b
                  li           a2, 0xffffffff
                  li           a6, 0x6993b5e0
                  li           a7, 0x0
                  li           tp, 0x80000000
                  lui          tp, 311795
                  sub          s2, s11, s5
                  nop
                  lui          a2, 536801
                  nop
                  nop
                  lui          s2, 331588
                  nop
                  addi         tp, s3, -1711
                  lui          tp, 597331
                  lui          s2, 615218
                  auipc        tp, 193014
                  nop
                  auipc        s5, 579748
                  sub          s3, a7, s3
                  addi         s5, s3, 631
                  add          s3, t3, tp
                  lui          a7, 867660
                  lui          a2, 368564
                  nop
                  lui          t3, 459826
                  auipc        t3, 453529
                  lui          tp, 1023583
                  sub          s6, s5, a7
                  sub          s3, s3, a7
                  addi         s3, s6, -1094
                  nop #end riscv_int_numeric_corner_stream_11
                  xori         ra, s10, -280
                  nop
                  nop
                  sra          s0, s6, t4
                  srai         a1, s7, 20
                  nop
                  srai         s6, t0, 1
                  srai         gp, a3, 0
                  lui          a7, 753371
                  srl          s2, a4, t3
                  sra          s10, a5, t4
                  xori         s11, ra, -1480
                  slt          gp, gp, zero
                  srai         s10, t2, 31
                  srli         s2, a3, 3
                  add          s5, a7, s5
                  srl          a3, zero, s9
                  lui          s8, 742168
                  addi         a1, s6, -220
                  sll          s1, s4, a5
                  or           t4, a7, a1
                  ori          s2, t2, 265
                  srai         t4, tp, 1
                  srai         a2, tp, 2
                  sll          s3, gp, s9
                  sub          t1, s0, a6
                  nop
                  srli         s2, gp, 4
                  nop
                  xor          a2, t4, s0
                  sub          tp, gp, s7
                  srli         a2, t0, 2
                  add          t0, s5, s8
                  andi         a7, a7, 256
                  addi         a3, s1, 1029
                  slt          tp, a0, s2
                  xori         ra, s1, 510
                  xori         a4, s3, -1081
                  xori         s10, a3, -1883
                  sltiu        a0, a6, -866
                  addi         s7, s9, 1509
                  or           t0, t2, ra
                  andi         t4, s6, 1223
                  sub          s0, a4, a5
                  xori         gp, s4, 339
                  andi         a4, a3, -1095
                  add          s10, sp, t2
                  addi         t4, t6, -1954
                  or           s3, t0, sp
                  sra          a1, a3, s7
                  addi         a7, t2, -938
                  sltu         gp, t5, a0
                  and          a5, gp, tp
                  xor          a6, t6, zero
                  xor          gp, s0, a0
                  slt          gp, s10, t5
                  ori          s0, ra, 1924
                  and          s5, t4, s2
                  addi         gp, s2, 1540
                  nop
                  add          t1, sp, a3
                  xori         s7, s5, 1749
                  add          a1, tp, t6
                  sll          t0, sp, s4
                  sll          t4, s10, s6
                  slli         a1, a1, 26
                  addi         a7, t0, 866
                  add          gp, s2, t4
                  srai         t6, t1, 12
                  addi         s8, a5, 611
                  sltiu        a0, s7, -1496
                  andi         s11, ra, 1841
                  slt          a0, s0, zero
                  sltu         a0, s0, s6
                  sll          a2, s9, s1
                  sll          tp, sp, a1
                  sub          s5, t0, s11
                  nop
                  sltu         s10, t2, ra
                  add          s2, s9, t2
                  sra          ra, tp, a0
                  auipc        a2, 1028907
                  add          ra, t2, a5
                  slli         zero, a0, 11
                  slt          a3, a6, t1
                  srl          s8, zero, a3
                  slt          a6, s6, a1
                  nop
                  lui          s3, 351013
                  srai         t1, a6, 24
                  nop
                  lui          a2, 559323
                  sltu         a6, a1, a7
                  srl          s6, zero, t0
                  sltu         s0, s2, s4
                  srli         s1, ra, 20
                  add          t2, sp, t5
                  or           s5, t2, s3
                  and          ra, s0, s10
                  srli         a7, t1, 11
                  sub          gp, zero, s11
                  ori          ra, t0, -1599
                  add          s0, a5, s6
                  andi         tp, s10, -1383
                  andi         ra, a6, -1731
                  auipc        s2, 725323
                  srai         a0, ra, 18
                  and          s5, s3, ra
                  slt          t4, t5, s7
                  addi         t3, t2, -887
                  and          s5, s9, t4
                  nop
                  lui          zero, 253855
                  xor          s11, ra, sp
                  slt          s9, a7, a0
                  sra          tp, a7, zero
                  slti         s8, tp, -1806
                  slti         a5, t6, 785
                  lui          s9, 841204
                  slti         s1, a5, 1673
                  or           s2, t1, s5
                  and          s7, a2, sp
                  or           t0, s10, s7
                  sltu         t6, s3, t6
                  slt          a2, t4, t3
                  xor          t3, zero, s0
                  ori          tp, a5, -1599
                  xori         t6, a5, 1325
                  lui          s7, 639960
                  ori          s11, a1, 1099
                  sltiu        t4, a0, 559
                  sub          a3, a2, a5
                  or           s7, s0, a3
                  ori          s8, a5, 1064
                  sltiu        a2, s2, -1726
                  sltu         s8, s0, s2
                  or           t2, s6, t6
                  or           t6, s7, t4
                  sll          s11, a6, s5
                  xor          t2, t1, t2
                  sltu         s7, s2, a4
                  ori          t1, s2, -674
                  slti         s10, s4, 1249
                  ori          s0, a2, 429
                  srl          t1, t6, s9
                  and          s11, a7, ra
                  sltiu        t3, t0, -268
                  sll          a7, s1, t2
                  slli         s11, s5, 18
                  add          a0, s8, t3
                  auipc        t1, 664938
                  addi         a6, s3, -1146
                  sub          ra, a4, s11
                  lui          s7, 22714
                  xori         a3, s3, 1450
                  xori         zero, a5, -1297
                  xor          a0, gp, s8
                  lui          s9, 163116
                  slti         a2, s11, -940
                  sra          ra, tp, a0
                  srai         t4, t1, 10
                  srli         t3, s9, 13
                  addi         a4, s1, 141
                  srai         gp, t4, 1
                  sra          s3, s9, t5
                  sltu         s3, t1, s0
                  nop
                  or           s9, t5, a5
                  nop
                  add          t0, s5, s5
                  lui          t3, 749817
                  sra          t2, a3, s11
                  and          t0, s6, sp
                  sll          s2, t4, s11
                  andi         a0, t1, 1713
                  sltu         t4, a3, t5
                  xori         t4, sp, -1190
                  sltiu        s2, s3, 1340
                  ori          zero, t1, -608
                  srai         a2, a5, 25
                  sll          s3, s11, t5
                  sll          s5, s2, t5
                  and          s9, t0, t3
                  or           a5, t6, zero
                  srli         s2, t6, 5
                  ori          t0, a3, -1152
                  addi         s6, sp, -990
                  or           s9, gp, s8
                  sltu         gp, a6, s8
                  slli         t0, t1, 1
                  srai         a2, a2, 5
                  srl          a6, tp, s0
                  srl          s3, t3, s8
                  sub          t2, t5, s1
                  xori         gp, t1, -1589
                  auipc        a3, 663101
                  andi         tp, s2, 1376
                  auipc        t4, 727609
                  slti         s8, t4, 886
                  srai         a7, sp, 8
                  slt          s1, s5, a7
                  auipc        t3, 1048174
                  or           s9, a6, s6
                  and          s0, t5, s3
                  lui          s0, 1011210
                  and          t6, s4, tp
                  add          t2, t6, s1
                  auipc        a0, 936378
                  and          t1, a0, t6
                  sltu         ra, gp, a3
                  or           s7, s3, zero
                  srai         s1, s2, 4
                  slt          a6, a4, s10
                  addi         a7, a6, -437
                  srl          a1, a0, s8
                  srli         s3, s2, 16
                  or           a7, a1, a1
                  srai         tp, t6, 20
                  sub          s11, sp, s11
                  lui          t1, 1021684
                  slli         s11, s10, 4
                  auipc        tp, 147967
                  sub          s5, s8, t1
                  sltiu        a3, t6, 2001
                  srai         a5, a0, 18
                  sltu         s5, t1, s2
                  slti         a2, tp, -1224
                  srl          tp, s9, sp
                  sltu         a0, a7, a3
                  andi         t4, t0, -1490
                  addi         a5, s8, 199
                  ori          a5, a5, -943
                  slti         s5, a4, -857
                  lui          t1, 907856
                  andi         s10, a5, 814
                  sra          gp, s4, ra
                  lui          s0, 1037579
                  sltu         a4, s2, t3
                  sltiu        s9, a4, -399
                  sltiu        a1, a1, -631
                  sll          t2, a2, t6
                  slli         zero, t1, 22
                  slli         t2, a7, 30
                  srli         a4, t4, 13
                  sltu         s3, zero, s11
                  ori          t0, s7, -1572
                  sub          a5, a1, t3
                  or           t1, a6, t3
                  slli         a2, tp, 19
                  srai         s1, s5, 23
                  sra          ra, s5, s1
                  and          a5, a5, t1
                  srli         a0, t1, 9
                  sltiu        s2, s4, -1102
                  andi         s9, s2, 758
                  lui          t6, 909106
                  add          s8, tp, t4
                  sub          t4, t6, a5
                  and          ra, a6, t3
                  or           s7, tp, s0
                  add          a4, s8, s11
                  or           a5, gp, ra
                  lui          tp, 1007859
                  sltu         t3, a4, s6
                  srl          s5, t5, zero
                  sra          gp, t6, a6
                  srai         a1, s5, 20
                  slti         s11, s3, -1717
                  sll          zero, a5, s6
                  andi         a2, s3, -1210
                  sltu         s8, s4, sp
                  slli         s7, a2, 14
                  and          s2, ra, a5
                  srli         t3, a4, 29
                  srl          a3, s10, t1
                  srl          a0, s0, s2
                  or           t0, a6, ra
                  sub          t2, s4, ra
                  sub          a3, tp, ra
                  add          zero, t3, tp
                  srai         a1, a0, 29
                  and          s3, t1, a1
                  sltu         a6, t4, s9
                  srai         t4, t1, 17
                  srai         s6, t4, 24
                  add          gp, a5, t6
                  or           a2, a2, a2
                  sltiu        s1, ra, 556
                  ori          a2, s2, -1475
                  sra          ra, a7, ra
                  slti         a7, s9, -47
                  slt          zero, tp, s4
                  and          a1, a3, a1
                  auipc        s9, 488049
                  addi         gp, s0, 1641
                  sltiu        s11, s3, -1764
                  andi         t6, t2, -347
                  sltu         t0, s2, s5
                  slt          s5, s2, s4
                  sltu         gp, tp, t5
                  srl          s5, sp, t1
                  andi         s3, tp, -2012
                  srli         a7, a1, 2
                  xor          tp, s9, s0
                  addi         zero, s4, 558
                  xori         t6, gp, 1690
                  sltu         a3, tp, s1
                  srl          s5, a2, a3
                  sub          tp, s6, s11
                  sra          a2, gp, s0
                  sra          t6, s3, s10
                  ori          t1, s5, -814
                  nop
                  auipc        t2, 744581
                  addi         ra, s6, -1920
                  or           s1, ra, s7
                  sub          a1, s1, s3
                  sub          s0, a4, t1
                  sra          zero, t3, t4
                  slt          t6, s9, s9
                  ori          t1, t4, 1770
                  and          zero, t3, a5
                  nop
                  xor          s11, s7, s2
                  lui          a6, 706656
                  srli         s3, tp, 24
                  srl          a5, t3, s1
                  sltu         a6, s7, t2
                  andi         a3, t3, -2043
                  slti         s6, gp, -806
                  and          a3, a3, s3
                  xori         s10, a2, -1034
                  slti         a0, a1, 1370
                  srl          a2, s3, zero
                  or           a4, t0, gp
                  slti         a4, a6, 649
                  ori          t6, tp, 1298
                  sltiu        s5, a6, 2
                  or           s0, a4, a1
                  sub          t6, s11, s1
                  ori          a6, s2, -228
                  andi         t6, tp, 447
                  sltiu        s3, s0, 1414
                  sltiu        t3, a0, 1444
                  or           a7, s1, a1
                  srai         zero, sp, 12
                  ori          s1, ra, 1280
                  sltiu        s1, a5, -1838
                  lui          s2, 961059
                  add          s3, a6, a0
                  auipc        t4, 75873
                  slt          t6, s6, a7
                  slli         s10, t0, 30
                  sra          s11, a1, s1
                  slli         t0, t3, 5
                  auipc        s2, 468136
                  auipc        a1, 4839
                  srl          a5, t2, t5
                  slli         gp, t3, 15
                  sra          s3, a5, t0
                  li           gp, 0x97a666d3 #start riscv_int_numeric_corner_stream_5
                  li           s5, 0x80000000
                  li           t6, 0x80000000
                  li           s1, 0x80000000
                  li           s9, 0x80000000
                  li           t4, 0xffffffff
                  li           s2, 0x80000000
                  li           a3, 0x0
                  li           t3, 0xffffffff
                  li           s7, 0xffffffff
                  auipc        s5, 621777
                  auipc        s2, 652245
                  auipc        s7, 78235
                  sub          t6, t3, s1
                  auipc        s2, 637441
                  add          t4, s7, a3
                  nop
                  add          s7, s7, s2
                  auipc        s9, 156815
                  add          s1, a3, t6
                  add          a3, a3, t3
                  addi         s5, s2, 692
                  auipc        s7, 927417
                  add          s7, a3, gp
                  addi         a3, a3, -2003
                  addi         a3, s7, 1858
                  sub          s2, s7, t4
                  sub          gp, s9, s5
                  add          a3, s5, gp
                  lui          s7, 386605
                  nop
                  lui          t6, 16813
                  nop
                  lui          a3, 923198
                  auipc        s2, 146944
                  addi         s9, gp, 599
                  lui          s5, 97591
                  nop
                  lui          t4, 775950 #end riscv_int_numeric_corner_stream_5
                  auipc        s9, 632978
                  srai         s1, a2, 14
                  slli         tp, s1, 21
                  add          tp, a7, t0
                  slt          s1, sp, a2
                  auipc        s0, 82693
                  sltiu        s8, a3, -1553
                  xori         a0, s9, 692
                  srli         a5, a5, 4
                  srli         a2, s7, 10
                  auipc        s3, 780134
                  sub          a3, s3, s2
                  and          t0, a4, s10
                  sltiu        s6, a7, -1795
                  lui          s0, 510952
                  xori         a7, s3, -1332
                  slt          t1, t3, a6
                  srli         s7, t0, 22
                  and          s1, s2, t3
                  sltu         s8, t4, s8
                  sltiu        ra, a4, -1851
                  and          s1, a4, s11
                  slli         t0, a2, 15
                  xori         s10, t4, -1376
                  sltiu        t0, a6, 672
                  slli         a5, a0, 9
                  xori         a7, s9, 1505
                  slt          s9, a6, a0
                  slli         ra, s2, 25
                  slti         s11, a3, -1382
                  sltu         a4, zero, ra
                  add          a3, a2, t3
                  xor          t0, gp, t4
                  auipc        s1, 29979
                  slti         s8, a2, -1524
                  srl          s2, zero, tp
                  addi         a2, s5, -1382
                  sltu         a6, a2, s5
                  ori          ra, a2, 1860
                  slli         t2, a2, 7
                  slt          a6, sp, t2
                  xor          a5, s9, s5
                  srai         s9, t1, 29
                  sltu         s11, s5, s5
                  sra          s6, s2, a6
                  sltu         t2, s4, s5
                  sll          s2, t3, s8
                  ori          s0, t3, -1867
                  sltu         a0, a4, s5
                  ori          a5, s7, 460
                  lui          s5, 173226
                  srl          s10, s9, a1
                  andi         a0, a7, 358
                  sll          s6, t6, s6
                  ori          s9, s8, 956
                  srl          t3, a6, s7
                  or           s5, s8, a2
                  slti         t2, t6, 1200
                  xor          s7, a2, a2
                  andi         t0, t4, -474
                  sltu         s11, a2, s4
                  sll          tp, ra, a2
                  sltiu        a3, t3, -360
                  add          a2, s2, a4
                  slli         s10, t4, 22
                  sltu         s0, a3, sp
                  sub          a5, s7, t5
                  xori         zero, s2, -248
                  slli         a6, t4, 13
                  sub          a2, s1, a5
                  add          t2, a1, s4
                  sltu         gp, s10, s4
                  or           s3, s1, s11
                  auipc        t3, 80616
                  srl          s10, a0, t2
                  srli         a4, t4, 0
                  srl          s8, a5, ra
                  sltu         a4, t3, a1
                  sltu         s10, t2, s6
                  or           a3, s8, s5
                  auipc        s9, 428472
                  andi         s0, s8, -1217
                  ori          a6, a6, -325
                  xori         t4, s8, 397
                  andi         ra, a6, 739
                  sub          a5, a3, ra
                  slt          a4, t3, tp
                  slt          a5, sp, a7
                  andi         t6, t6, 663
                  sll          s0, t3, s9
                  andi         a6, s3, -1679
                  slt          t3, s9, a2
                  xor          a1, t4, a7
                  nop
                  addi         a1, s3, 1608
                  or           a4, t0, s8
                  andi         a0, a7, -408
                  add          ra, s1, s5
                  and          a7, s1, a5
                  lui          t0, 154267
                  slli         t3, t0, 31
                  srli         a6, s2, 26
                  nop
                  add          t4, t0, s4
                  xor          s1, s3, a5
                  or           t1, s2, t3
                  lui          t0, 1025211
                  add          s11, s1, a0
                  srli         s3, t5, 2
                  srl          s2, s5, t0
                  srl          a7, s8, t5
                  slli         a6, t4, 18
                  add          s11, s4, t6
                  sltu         s3, s0, t2
                  srli         t4, t2, 29
                  addi         t3, tp, -1696
                  sltu         a1, t4, s6
                  and          a2, a2, a0
                  srl          s1, t2, t4
                  sra          t4, s4, s9
                  slti         s3, a3, 565
                  add          s1, a4, s5
                  andi         a7, a5, 664
                  andi         ra, s1, 1097
                  slti         a1, t3, 660
                  nop
                  xori         a3, s10, 1427
                  srl          a1, s5, t4
                  srl          s9, a7, s6
                  addi         a0, a2, 1929
                  or           s9, a2, a2
                  xor          a3, a7, s11
                  sll          t6, s10, s4
                  sub          t3, s4, s2
                  add          s0, a7, tp
                  or           gp, s3, tp
                  srl          a5, t0, a3
                  and          s2, ra, s9
                  sra          t0, tp, s2
                  ori          a2, t1, 1129
                  add          a2, a3, a0
                  slt          a4, s2, tp
                  and          t1, t1, s1
                  addi         t3, s9, 12
                  sll          s9, t5, a3
                  slli         s6, a2, 26
                  add          s8, s7, a7
                  slli         t3, a7, 29
                  xor          a4, a7, s10
                  nop
                  sltu         s3, ra, t4
                  sll          s10, t6, t4
                  slti         a1, t0, 36
                  srli         a5, a3, 17
                  and          s3, tp, s0
                  srai         a6, a4, 10
                  andi         t6, s11, -1616
                  sltu         a4, t2, s11
                  or           t2, t1, a6
                  slti         a1, s4, 869
                  slli         t3, a6, 4
                  sltiu        a3, t1, 1193
                  ori          s3, t2, -1975
                  andi         s0, t0, -1120
                  or           t3, s1, a0
                  srl          t3, zero, a4
                  xor          s3, ra, a7
                  srli         a2, sp, 1
                  sltiu        ra, a3, 543
                  srai         a6, a6, 31
                  sltu         s7, sp, s9
                  ori          s7, t0, -887
                  auipc        tp, 522009
                  slli         s1, t4, 31
                  add          tp, a0, a1
                  slli         ra, s2, 31
                  auipc        tp, 633717
                  ori          t6, a7, -972
                  add          s2, t5, t5
                  srli         s1, a3, 17
                  sltiu        a2, s9, 959
                  srli         t3, s7, 4
                  sltiu        a1, a0, 561
                  sub          zero, t1, a4
                  xor          a7, a7, s9
                  sll          a7, a3, t4
                  andi         s3, s2, -1540
                  srai         a6, a2, 6
                  auipc        s6, 619825
                  or           a2, s2, s9
                  andi         s1, s3, -145
                  ori          s10, t3, 1664
                  sub          s10, t3, a6
                  xor          a4, s10, ra
                  auipc        a3, 382634
                  sll          zero, a3, a5
                  xori         s0, ra, 294
                  srli         s3, sp, 5
                  and          s10, a1, s9
                  andi         s6, t1, -1823
                  xor          s0, a6, t6
                  slti         s7, s11, -746
                  or           s1, a0, s6
                  slti         a3, ra, 1340
                  and          a5, s7, s6
                  sra          a0, s4, s11
                  sra          a4, s3, s6
                  sub          tp, s9, a3
                  slli         s2, ra, 6
                  sltiu        s7, gp, 690
                  xori         t2, t6, 1855
                  sub          a4, ra, s4
                  andi         t4, s11, -720
                  sra          t4, s5, t3
                  sltiu        a7, t3, 1070
                  sub          a7, t3, t2
                  sll          s5, t5, gp
                  slli         t4, ra, 0
                  slli         t4, t1, 22
                  or           t0, s7, a3
                  sltu         s10, a4, a4
                  sltu         t1, s6, tp
                  sll          zero, s1, a4
                  ori          s2, t2, 355
                  srl          s6, s11, ra
                  nop
                  sltiu        s1, a3, 1656
                  nop
                  sltu         t2, sp, a4
                  sltu         t4, s2, s1
                  xori         s6, s11, 1491
                  xor          a2, s4, a6
                  srai         t4, s4, 14
                  srl          s1, t3, t6
                  slti         a6, t3, 1500
                  srai         t1, s0, 30
                  lui          s6, 1045535
                  auipc        gp, 939572
                  sltiu        t1, s11, 1191
                  srl          a7, t5, s5
                  srli         s9, a6, 15
                  addi         a3, ra, 12
                  srai         a1, a2, 8
                  lui          a7, 454887
                  sltu         s5, a2, s11
                  nop
                  or           a1, tp, a2
                  auipc        tp, 1032559
                  ori          s6, a5, 1436
                  xor          s10, t0, zero
                  and          a4, s0, a7
                  slli         s3, sp, 31
                  lui          a4, 282574
                  srai         s6, a7, 14
                  slli         s3, t3, 7
                  auipc        s2, 669304
                  nop
                  ori          s3, a0, -481
                  sra          s11, a5, t1
                  sub          t3, gp, t5
                  andi         t1, s9, 126
                  addi         t4, tp, 513
                  slt          a5, s10, s11
                  xor          s6, a6, t3
                  slli         a3, a6, 5
                  add          s6, sp, s11
                  ori          a1, s0, 527
                  addi         t1, a5, 586
                  or           s3, zero, s11
                  sltiu        s3, s3, -616
                  addi         a4, tp, 1817
                  srl          a5, a7, a1
                  srli         a7, t1, 12
                  sltu         s11, s0, s10
                  add          a4, s0, a5
                  and          t2, a5, t5
                  slt          s6, t6, s11
                  nop
                  nop
                  srai         s11, s10, 31
                  addi         a3, tp, 89
                  nop
                  ori          gp, ra, -558
                  slt          s8, t6, ra
                  sll          a3, t0, s7
                  ori          s2, t2, 1101
                  nop
                  and          s6, s6, ra
                  andi         a6, sp, -1582
                  lui          a7, 776208
                  auipc        s7, 505503
                  or           s5, a2, s7
                  slli         tp, t1, 15
                  sll          s10, t3, a4
                  and          s2, s10, a2
                  auipc        t1, 290661
                  sltu         t3, ra, s8
                  and          a2, t3, t0
                  or           t4, t5, a7
                  slli         a7, t4, 27
                  slti         s0, ra, -678
                  nop
                  add          t6, a4, a4
                  sll          t2, s1, ra
                  sra          t3, t2, a3
                  sll          t3, s8, t4
                  srai         s3, s0, 24
                  nop
                  sltiu        a4, t0, -1038
                  slti         gp, t6, 1680
                  nop
                  auipc        a5, 1017732
                  and          t1, s9, t0
                  srli         a7, s0, 15
                  andi         a6, gp, 64
                  lui          s2, 367651
                  slli         a7, t6, 11
                  xor          t1, a5, ra
                  ori          gp, s3, -942
                  xori         s0, s9, -70
                  lui          a7, 996627
                  andi         t2, a1, 1257
                  slli         t4, s11, 8
                  nop
                  slt          a1, s10, s6
                  sll          t3, s10, s9
                  auipc        t6, 1031157
                  srl          t4, t2, gp
                  srli         a7, t4, 21
                  sltiu        s10, sp, 488
                  and          t2, t2, s10
                  srli         t2, t6, 24
                  sub          a7, s4, s2
                  srl          a5, t3, s4
                  xori         s10, s6, 1769
                  add          a6, t2, t4
                  lui          t3, 501265
                  srli         s3, a1, 16
                  slt          t2, zero, t1
                  slli         s8, a0, 4
                  sltiu        s0, t0, 797
                  sltu         gp, s10, a7
                  slti         tp, a2, 120
                  slti         gp, s10, 903
                  slt          s5, s7, a7
                  xor          t3, tp, s1
                  srli         s8, s2, 5
                  auipc        a2, 544270
                  lui          s9, 716295
                  slt          ra, a5, t3
                  sltiu        a6, a5, 1134
                  srli         a4, t0, 12
                  slt          t4, s10, t2
                  srai         tp, a6, 13
                  sltu         a4, gp, s2
                  sltiu        s1, s4, -1348
                  srai         ra, t4, 23
                  slti         s6, s2, -1007
                  and          s9, a3, s8
                  srai         s9, t4, 12
                  lui          s1, 332676
                  addi         t6, s4, 1013
                  addi         s5, tp, -61
                  addi         a3, s4, 1469
                  or           t4, zero, a7
                  srai         gp, tp, 13
                  slt          s7, a3, t0
                  auipc        gp, 681377
                  and          s2, s5, s11
                  sub          s5, a2, a1
                  srl          t2, s2, s8
                  auipc        t1, 290481
                  sra          ra, s11, a6
                  auipc        s3, 33652
                  andi         gp, a3, -594
                  srli         s11, sp, 12
                  sra          s3, sp, zero
                  sra          t3, tp, t2
                  or           s2, a5, t1
                  slli         a2, a7, 22
                  sra          s5, t1, t0
                  lui          t6, 104418
                  slt          s0, s2, a3
                  sll          t0, s8, s8
                  sub          a6, s10, s11
                  sra          s5, t2, tp
                  slti         a7, s10, -1221
                  xori         t2, s2, 1057
                  xori         t0, a6, 888
                  xori         a3, s5, 1243
                  sll          t2, s6, s1
                  sltu         s11, s4, s11
                  xor          s10, a0, t0
                  andi         s1, t1, 2026
                  andi         s6, a2, 1892
                  nop
                  addi         s7, s8, -1464
                  sltiu        s7, tp, 964
                  sltiu        a3, t2, 449
                  sltiu        a3, s3, 149
                  andi         s10, ra, 922
                  and          t4, s6, s2
                  auipc        a4, 669667
                  add          s6, t4, s1
                  addi         t2, sp, 1257
                  xori         gp, t1, 2004
                  andi         t3, sp, 404
                  auipc        s0, 162860
                  srai         a3, s2, 7
                  andi         zero, t0, 442
                  sltiu        t1, sp, 1249
                  auipc        tp, 553984
                  sltiu        a0, t6, -467
                  slli         s6, s11, 9
                  sltu         t2, t6, s10
                  add          s0, a4, a2
                  xori         s6, t6, -671
                  andi         t6, a7, -393
                  lui          s5, 102160
                  slli         s0, a7, 21
                  sra          s1, t3, s5
                  ori          a4, s11, 1710
                  srai         t2, t3, 3
                  srai         t6, s5, 6
                  sltu         a1, gp, a0
                  lui          s8, 348537
                  srl          ra, a7, gp
                  nop
                  add          a5, zero, s8
                  srai         s8, t3, 17
                  xori         s8, sp, -1129
                  slli         t6, s5, 25
                  or           a7, sp, a4
                  nop
                  addi         a7, s2, 417
                  srai         t1, t6, 17
                  srl          a4, a5, ra
                  slt          s3, t5, t1
                  slt          t3, a6, t4
                  srl          s5, s11, a5
                  auipc        a2, 487411
                  nop
                  addi         s9, zero, -454
                  sltu         zero, s7, s2
                  sub          s7, a3, s9
                  sltiu        s0, s9, -1543
                  srli         s1, t2, 18
                  srli         a6, a2, 15
                  sltu         t3, s3, t5
                  xori         s1, a6, -651
                  ori          s10, a3, -151
                  sra          tp, s7, tp
                  addi         a1, ra, -1690
                  sra          s11, a6, s4
                  sra          zero, s11, a3
                  sltu         t1, t5, tp
                  srai         a7, s10, 10
                  or           a6, s6, a6
                  or           s0, t1, a3
                  nop
                  andi         s0, s9, -1919
                  and          s3, tp, s10
                  sltu         s11, s9, s3
                  slti         a7, a2, -1251
                  nop
                  srai         s2, zero, 18
                  or           s5, t0, t2
                  sll          s5, s10, s6
                  andi         t1, a0, -778
                  or           ra, a2, sp
                  auipc        t1, 1028788
                  slti         t0, t6, 479
                  andi         a5, s10, 1561
                  andi         s1, s0, -628
                  slt          t3, a3, t2
                  sll          s11, a6, a5
                  sltu         a7, t5, s4
                  nop
                  nop
                  slli         a2, s8, 9
                  xor          a7, t0, gp
                  addi         s5, a6, -806
                  sub          s5, t5, a3
                  add          t6, t1, s8
                  srai         ra, s3, 18
                  srl          t6, s3, s6
                  or           t3, t2, a5
                  ori          ra, a4, -1068
                  ori          s6, a4, 1565
                  sub          a0, s8, s10
                  slt          s6, a2, s0
                  andi         t0, s11, -1651
                  sub          t2, ra, s0
                  slti         s9, s1, 957
                  xori         s3, s11, 1539
                  sltiu        a7, t1, -2001
                  sltu         a6, s8, s5
                  slt          a0, s0, a4
                  auipc        t4, 708622
                  add          t1, s10, gp
                  sra          a3, t2, sp
                  and          s11, a6, gp
                  slli         a0, t2, 17
                  xori         s8, s7, 691
                  slli         s0, s0, 4
                  sll          s11, tp, s11
                  srl          a4, s9, t6
                  sll          gp, s8, s3
                  and          t1, a7, s11
                  lui          s3, 816087
                  ori          tp, t6, 1912
                  sll          s5, zero, s3
                  sltiu        ra, s9, -823
                  xori         s11, t6, -1397
                  sra          a7, a6, s2
                  nop
                  lui          zero, 198400
                  and          t3, s0, s5
                  add          tp, a5, a4
                  sll          t2, s6, t6
                  sra          tp, s1, zero
                  lui          s9, 603109
                  srli         gp, ra, 27
                  srai         a2, s6, 23
                  xor          s9, s4, a5
                  sltiu        a6, s8, 1406
                  and          s7, t2, s4
                  sltiu        t1, s0, -769
                  sub          s3, s0, a2
                  slt          t2, s6, s9
                  or           t1, ra, a0
                  srl          t3, a5, t3
                  andi         a4, s6, 512
                  srl          s5, tp, t6
                  ori          s10, s0, 157
                  sltiu        zero, t1, -355
                  srai         a1, t0, 0
                  sll          a3, s10, s9
                  or           s6, t6, a1
                  slt          t6, a4, a2
                  and          a3, s7, s2
                  auipc        ra, 794435
                  add          a1, s5, a2
                  xori         t1, s1, -1359
                  auipc        s9, 194648
                  slli         a1, s3, 6
                  xori         a0, t4, -196
                  auipc        s8, 763130
                  srli         gp, s2, 29
                  slli         a1, ra, 17
                  andi         zero, s3, 1141
                  addi         a7, s2, 364
                  sltu         s9, s11, a7
                  xor          t1, s2, s6
                  sltiu        gp, s8, -1198
                  slli         t4, s2, 29
                  add          s1, s11, zero
                  sra          a0, s7, s7
                  andi         s11, a4, -1531
                  srai         a0, s10, 16
                  sltiu        t3, t0, 1101
                  srai         s11, s1, 7
                  slli         t2, a5, 28
                  sub          a3, t2, a4
                  xor          s1, t2, a3
                  slli         zero, s1, 13
                  ori          a7, t3, 190
                  srli         zero, gp, 5
                  sll          a2, t4, a6
                  srli         a6, s4, 13
                  slti         s0, t3, 555
                  ori          t2, a6, 1216
                  or           gp, s10, a7
                  slt          s8, t6, s6
                  sra          s7, s2, a0
                  lui          zero, 778109
                  slli         s11, s11, 13
                  srai         a7, a7, 3
                  srai         s8, s5, 9
                  srai         a0, s11, 20
                  andi         s7, t4, 250
                  srl          s6, t0, zero
                  srai         t4, s4, 14
                  srl          s10, a2, s2
                  and          gp, s9, s11
                  slti         s9, s7, 521
                  ori          a6, s1, 996
                  xori         gp, t6, -1145
                  ori          s10, s9, 822
                  lui          zero, 262433
                  sra          s11, s6, a5
                  nop
                  and          s0, t5, s7
                  srl          t3, a6, s10
                  and          s0, s3, sp
                  lui          a7, 908040
                  or           tp, t5, a0
                  sltiu        s3, a4, -680
                  xori         s6, s2, 1432
                  srli         t0, a6, 11
                  sub          s0, s10, s10
                  sltiu        a4, t3, 79
                  auipc        s5, 706446
                  lui          a1, 1009437
                  sll          ra, zero, a7
                  add          a1, s1, a3
                  xor          zero, a1, a6
                  slt          s8, s6, s7
                  add          a4, sp, s9
                  auipc        t3, 231198
                  sra          a5, t6, s7
                  ori          s8, s11, -110
                  sll          s0, t2, s4
                  slti         gp, s1, 1991
                  sltu         ra, a5, a5
                  srai         t4, s3, 8
                  srl          t6, s1, t5
                  sltu         a7, a3, t3
                  sltu         t4, t2, a0
                  slli         s11, a4, 5
                  sub          t1, s5, s5
                  srai         a5, gp, 5
                  addi         s3, s2, 1758
                  auipc        a7, 176446
                  sltiu        s11, a6, -1956
                  slli         gp, s3, 30
                  lui          a0, 793183
                  srli         s7, a3, 10
                  addi         ra, s5, 1023
                  sltiu        a2, gp, 672
                  xori         s0, a7, -1309
                  slli         s7, s10, 4
                  srli         s5, t4, 6
                  sra          t2, s6, t4
                  slti         a1, t2, -1999
                  slli         a0, s7, 29
                  auipc        a1, 762804
                  and          a3, t0, s10
                  or           a2, a2, s11
                  srli         a3, tp, 22
                  addi         a7, ra, -860
                  or           a3, gp, s7
                  nop
                  xor          t3, s0, sp
                  sltiu        gp, zero, 1476
                  srli         s0, t4, 16
                  sra          s10, a6, t1
                  addi         s1, a7, -227
                  ori          s3, sp, -64
                  srli         a3, a3, 11
                  sub          t1, t6, s6
                  auipc        s6, 493662
                  or           tp, a6, sp
                  srli         s10, t5, 30
                  slti         s11, a6, -314
                  nop
                  nop
                  sltu         t0, s5, tp
                  sltiu        s9, s8, -1558
                  and          gp, sp, s5
                  slt          gp, s6, zero
                  ori          s11, t4, -1073
                  sltiu        ra, s8, -1923
                  slt          a2, t1, a1
                  sltiu        t0, t0, 1917
                  andi         a5, t1, -1798
                  xor          a0, t4, s9
                  auipc        s3, 620389
                  sll          s2, a3, t1
                  and          t1, gp, a3
                  add          a4, s6, s5
                  slti         a1, s2, 795
                  lui          gp, 538078
                  andi         t3, a5, -639
                  slli         ra, a7, 5
                  srl          gp, s7, a5
                  andi         s11, s4, -617
                  srli         t6, ra, 30
                  nop
                  lui          s5, 243593
                  auipc        tp, 527526
                  srai         a1, t5, 16
                  lui          t3, 880718
                  srl          s10, sp, t4
                  srl          t4, a1, t5
                  srai         s6, s6, 21
                  xori         t4, zero, -1726
                  srli         s8, s4, 26
                  nop
                  srli         s9, a1, 28
                  srli         zero, s0, 2
                  lui          a7, 1030441
                  and          s6, a5, t3
                  or           t6, a3, t0
                  sra          a6, sp, ra
                  slli         s1, s8, 7
                  slt          a5, t5, s4
                  sltiu        a4, s3, -1058
                  ori          gp, a2, -1261
                  sltiu        s9, a7, -437
                  nop
                  ori          a1, t3, -12
                  auipc        s2, 1007757
                  sll          a7, a5, a0
                  sltiu        s8, a4, 1471
                  and          s5, t3, s2
                  nop
                  srl          t1, a1, t0
                  sltiu        s5, s8, -805
                  slt          s10, a0, a0
                  sltiu        t0, s4, -1371
                  andi         t6, s5, -706
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s9, 0x80000000
                  li           a0, 0x239bde96
                  li           s11, 0xf46ce4de
                  li           a7, 0xb5eed579
                  li           t2, 0x58165b4f
                  li           t0, 0xffffffff
                  li           s3, 0xffffffff
                  li           t3, 0x0
                  li           t4, 0xf6c618e3
                  addi         s2, s3, 1024
                  nop
                  nop
                  lui          s11, 510664
                  addi         s2, s2, -122
                  sub          t4, a7, t2
                  auipc        t3, 99811
                  addi         s11, t0, -1193
                  sub          t4, s11, t4
                  lui          s11, 525680
                  lui          s11, 689620
                  add          s9, a7, t4
                  auipc        a0, 375516
                  lui          t3, 726388
                  nop
                  add          t4, s2, t3
                  auipc        s2, 737945
                  nop
                  nop #end riscv_int_numeric_corner_stream_10
                  srai         a6, a1, 10
                  auipc        s0, 924828
                  xor          t3, s0, a3
                  ori          a5, s1, 1915
                  andi         s0, s11, 1282
                  nop
                  lui          t6, 481821
                  sra          s9, a3, t1
                  srl          a1, tp, a4
                  srai         a0, t6, 14
                  slt          t1, gp, a7
                  slti         s8, a7, -1402
                  andi         t4, s2, -1682
                  ori          gp, a6, -103
                  srai         s11, a0, 19
                  auipc        a0, 1021941
                  sltiu        gp, s4, -876
                  sra          s7, s11, s6
                  sll          t3, a0, s3
                  sltiu        t1, s7, 277
                  add          s9, a4, a2
                  and          t4, s9, s6
                  nop
                  auipc        a7, 716059
                  slti         a1, a2, 1730
                  xori         tp, s4, -1162
                  sub          s1, s9, t5
                  srl          t6, a0, t2
                  nop
                  slt          a0, t4, gp
                  sltiu        tp, sp, 1112
                  or           gp, a7, s2
                  sll          s11, s3, s6
                  addi         t1, s0, 235
                  and          a4, s8, s0
                  or           s3, s11, a5
                  slli         t4, s9, 10
                  xor          s3, t3, a3
                  slli         gp, t0, 10
                  sra          s8, a6, sp
                  xor          s8, t6, s0
                  ori          a3, zero, -969
                  xori         s6, a6, 1214
                  xori         a2, t5, 751
                  and          s8, t6, a6
                  srl          gp, s2, s5
                  add          s9, s4, s3
                  srl          s5, s7, gp
                  xori         t6, a1, 1421
                  slti         a3, a2, -169
                  xori         s0, t4, -433
                  sll          a3, t6, s7
                  srli         s9, a6, 27
                  nop
                  slli         zero, a4, 30
                  andi         a2, a6, 965
                  srl          a2, s10, a7
                  srli         s6, t6, 8
                  auipc        gp, 143733
                  srli         t1, s7, 26
                  xor          a6, s5, s3
                  addi         s3, a2, 64
                  xor          a3, s5, s7
                  slti         t1, s1, 1214
                  sra          t0, s9, ra
                  sll          s2, s9, s4
                  lui          a1, 637504
                  sltiu        s9, zero, -81
                  srai         s9, a2, 13
                  addi         s6, gp, 402
                  andi         t2, tp, 1911
                  xor          a4, s10, t6
                  sltiu        t0, a0, 1780
                  slli         a2, a4, 21
                  sltu         s3, a5, a0
                  sll          s8, a6, s9
                  andi         t4, ra, 821
                  srl          s10, tp, s9
                  sltiu        a0, t2, -1677
                  slli         ra, s6, 24
                  sra          s2, s1, t4
                  srl          zero, t2, a2
                  sub          gp, a5, a4
                  slti         s5, a1, 1184
                  andi         t6, a1, -1733
                  addi         s3, s10, 303
                  xor          t3, a0, a5
                  srli         gp, gp, 20
                  srli         a1, s10, 8
                  sll          a1, tp, s10
                  sra          s6, s1, t1
                  andi         s3, s7, -1952
                  lui          a6, 872208
                  sll          a5, t4, tp
                  add          zero, a2, s3
                  or           s1, ra, ra
                  andi         s7, s5, -1752
                  srli         s3, s9, 3
                  xor          t2, sp, s5
                  slli         t3, a2, 12
                  sll          a6, a6, t0
                  sll          t0, t3, t6
                  sltiu        s5, a1, 506
                  sra          s0, s3, sp
                  sltiu        t1, s1, -498
                  lui          tp, 1016602
                  xor          s10, gp, s11
                  slt          s10, t0, s9
                  lui          s1, 833084
                  srli         s9, zero, 2
                  sra          s7, tp, s9
                  add          a7, t2, s4
                  sll          s9, s11, a0
                  and          a1, gp, a0
                  slt          t3, s7, zero
                  sltiu        s5, s8, 1902
                  sub          t2, t5, s1
                  xori         s10, s5, 566
                  sra          s9, s0, t2
                  srai         a7, s6, 24
                  sub          s9, t5, s5
                  add          s1, s11, a2
                  and          s11, s9, s6
                  sltiu        a2, s3, 1138
                  lui          s5, 900532
                  andi         s10, sp, 1117
                  srli         a5, t1, 2
                  sub          a2, s10, s10
                  lui          s5, 880358
                  andi         s3, s10, 179
                  sll          s8, ra, s8
                  srli         s5, t2, 6
                  andi         zero, t6, -420
                  sll          s1, s0, a2
                  nop
                  slt          t1, t1, t4
                  nop
                  sll          s11, a6, gp
                  addi         s6, t1, -1201
                  lui          s10, 49670
                  srli         s6, a1, 4
                  sll          ra, s8, t4
                  xor          gp, s1, s10
                  and          s8, s2, s11
                  sll          a3, s6, s9
                  slt          a3, s4, a5
                  add          a1, sp, s3
                  srli         t2, t6, 18
                  addi         a6, s11, 1280
                  srai         a3, zero, 0
                  add          s0, s10, zero
                  sltiu        s9, tp, -1353
                  sltu         a5, s6, tp
                  sub          s11, t3, s8
                  xor          a4, s9, s5
                  auipc        ra, 390456
                  sll          a7, sp, a0
                  slt          gp, gp, s3
                  sltu         t4, a2, gp
                  nop
                  ori          s3, t1, 1159
                  srl          s11, a5, s2
                  addi         s2, ra, 160
                  slt          s0, s7, s3
                  xor          s7, s3, a0
                  nop
                  or           s6, s9, a2
                  andi         s10, a2, 341
                  ori          t4, t0, 226
                  nop
                  sltiu        s6, t3, 614
                  sltu         s7, ra, s4
                  or           a7, s6, s7
                  slli         s9, zero, 23
                  andi         tp, a4, 88
                  slti         tp, s1, 1697
                  and          s10, s9, t0
                  slti         a7, tp, -1279
                  auipc        s6, 547757
                  sra          a4, s6, a0
                  sltiu        s11, zero, -1501
                  slt          s10, t6, t3
                  or           s3, s7, t1
                  sub          a1, a3, s2
                  srli         t0, a7, 13
                  slt          tp, t1, t3
                  sra          s2, ra, a3
                  andi         t1, tp, -1666
                  srli         s3, a0, 9
                  and          zero, s9, s5
                  slli         s6, s10, 16
                  sltu         s5, zero, s4
                  xori         t2, s2, -1488
                  sll          tp, s3, s10
                  or           s8, t6, s2
                  xor          t4, a0, s9
                  nop
                  srai         s10, a2, 11
                  xor          t4, gp, s6
                  slt          s11, ra, s3
                  lui          s11, 543181
                  srl          s0, t0, s6
                  slli         a4, s11, 13
                  slt          a7, s2, s11
                  slli         s1, s9, 20
                  xori         a2, s3, -1221
                  srli         gp, s1, 29
                  slti         t6, tp, 2001
                  slt          ra, s8, a5
                  andi         t6, s2, 1146
                  nop
                  sltiu        gp, s0, 539
                  andi         s11, a0, -467
                  sltiu        s3, a4, -1064
                  xor          s6, t0, a4
                  andi         s10, s9, -1296
                  sub          s7, s4, s0
                  addi         t6, s2, -618
                  ori          s6, a7, 1133
                  sub          s6, t6, tp
                  xori         s0, t0, -683
                  andi         t0, gp, -302
                  or           s8, s3, a1
                  slt          s1, s3, gp
                  or           a3, s9, s0
                  srli         ra, tp, 7
                  sltiu        s2, s7, 571
                  xori         s6, s3, 1978
                  lui          ra, 683165
                  lui          a0, 266829
                  srli         t4, tp, 13
                  and          s1, t3, a5
                  sub          zero, t2, t2
                  sra          t3, zero, s10
                  ori          a0, s7, 1240
                  addi         ra, t4, 1843
                  slli         s5, s1, 3
                  sra          s11, t3, gp
                  sub          t2, a1, a5
                  add          s0, s8, s6
                  xor          t2, a0, a6
                  sra          zero, s8, s9
                  slli         s7, s4, 18
                  and          s11, s10, s1
                  srl          a3, tp, a3
                  srli         s8, t4, 21
                  and          s1, s2, s2
                  sub          s7, s1, a2
                  sra          a6, a0, a2
                  andi         tp, t4, 15
                  addi         s6, s1, 643
                  srai         t4, a2, 28
                  and          a5, s11, s11
                  nop
                  srli         s1, t1, 1
                  and          t2, t4, t1
                  ori          t6, s5, -98
                  srai         s11, s0, 26
                  auipc        s5, 320191
                  srl          s0, ra, gp
                  xor          s3, t1, s5
                  add          a3, s5, s1
                  srai         tp, s11, 14
                  sltu         zero, s0, t4
                  lui          t2, 530926
                  sub          tp, s9, a2
                  slli         a1, t5, 8
                  srl          s3, s7, s6
                  sltu         t2, t0, s1
                  sltiu        s7, sp, -580
                  sltiu        s10, s5, -1719
                  nop
                  sltu         s5, a5, t3
                  srli         a6, zero, 2
                  xor          ra, a5, t5
                  ori          a6, s0, -1982
                  xori         s10, s7, -1044
                  slti         t6, t0, -1733
                  sra          a7, s8, s1
                  sra          a0, sp, a3
                  and          s6, s11, s3
                  lui          t2, 453372
                  add          t4, ra, s7
                  auipc        a4, 351955
                  xori         t4, sp, -1856
                  sra          s2, s5, a4
                  slti         s9, a6, 348
                  sltu         t6, s0, zero
                  xori         s7, ra, 83
                  srai         s5, t1, 4
                  and          a6, tp, s7
                  slti         a1, ra, 308
                  sra          s0, a7, s0
                  andi         a0, t5, 542
                  ori          a3, t5, -1171
                  addi         s7, a1, -852
                  add          a6, s11, a0
                  slti         s1, tp, -1
                  slli         a0, gp, 29
                  auipc        s10, 1037524
                  slti         s6, t3, -505
                  or           tp, s3, t2
                  sltu         a2, tp, s6
                  ori          t3, s7, -127
                  srl          a5, t4, t0
                  andi         a2, t4, -905
                  addi         t1, s5, 1391
                  xor          tp, t5, t3
                  sra          s5, a2, a0
                  lui          a6, 302060
                  slli         t1, a6, 8
                  sub          s3, a6, a7
                  sltu         t1, t1, s6
                  lui          s7, 1001130
                  sub          a1, s10, a6
                  sltu         a1, s10, a5
                  auipc        a7, 194030
                  or           s10, tp, s8
                  srai         t6, zero, 17
                  slt          ra, s3, s4
                  srl          t4, a4, t3
                  slti         a5, a3, 1531
                  slti         zero, a1, -301
                  or           a0, a0, a7
                  slti         s1, zero, 921
                  srli         s5, a6, 6
                  slli         s11, s11, 31
                  andi         s2, s6, 1962
                  add          a7, s8, a4
                  srli         s8, a4, 1
                  srai         tp, s5, 26
                  xor          t6, a0, t4
                  xor          a2, a4, t3
                  or           zero, s2, s3
                  or           s2, s3, ra
                  sra          a7, tp, a2
                  sub          a5, a3, t3
                  ori          zero, t5, 484
                  lui          s9, 550187
                  xor          t3, sp, s10
                  and          t3, a0, t2
                  nop
                  srl          t3, sp, a5
                  auipc        s10, 443854
                  nop
                  xor          a5, s1, s6
                  slti         s9, a3, -286
                  sltiu        a3, a5, -334
                  sub          t2, s7, s3
                  or           t3, s9, a7
                  srl          a5, s0, t2
                  slli         t6, t3, 21
                  xori         gp, a2, -1264
                  slti         t4, a0, -1325
                  xori         a1, zero, -1517
                  xori         t6, t3, -1742
                  add          s2, t3, a6
                  or           a0, s4, t0
                  srli         s6, s4, 19
                  srai         t3, s3, 22
                  xori         t3, s4, 1962
                  auipc        s11, 698090
                  xori         s10, a3, -540
                  nop
                  xori         tp, t1, -420
                  xor          s10, s4, s8
                  and          s2, s4, a2
                  auipc        t6, 43444
                  auipc        zero, 162270
                  auipc        t0, 51182
                  xori         s10, s4, -1605
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a7, 0xffffffff
                  li           s3, 0x8ea7e3eb
                  li           s8, 0x80000000
                  li           a4, 0x594820aa
                  li           t6, 0xffffffff
                  li           t2, 0x0
                  li           s2, 0x34cf32e3
                  li           t1, 0x80000000
                  li           t4, 0x0
                  nop
                  sub          t4, a4, a4
                  lui          t4, 254384
                  auipc        a7, 196576
                  addi         s7, s2, 202
                  lui          s2, 69407
                  addi         a4, a4, -400
                  add          t6, s3, t6
                  nop
                  nop
                  addi         s8, t1, -737
                  addi         a7, a4, 1811
                  lui          t2, 474929
                  nop
                  sub          t4, a7, t2
                  add          s8, t1, t6
                  nop
                  add          t1, a7, s2
                  lui          a4, 623452
                  lui          t6, 915313
                  sub          a4, s7, t6
                  add          t2, t1, a4
                  lui          t4, 570453
                  sub          s3, s3, s3 #end riscv_int_numeric_corner_stream_7
                  or           t2, s3, a4
                  sub          a4, ra, gp
                  slti         t2, s6, 472
                  or           s7, a3, a3
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0x80000000
                  li           t6, 0x80000000
                  li           t3, 0x80000000
                  li           s0, 0x0
                  li           gp, 0x0
                  li           s8, 0x80000000
                  li           t1, 0xffffffff
                  li           a2, 0x80000000
                  li           tp, 0x0
                  nop
                  nop
                  addi         tp, tp, 992
                  addi         gp, t6, -505
                  add          tp, gp, t6
                  auipc        tp, 102866
                  lui          t3, 190834
                  add          s0, tp, t3
                  auipc        a2, 171514
                  sub          s8, t6, t3
                  add          a6, t3, s0
                  nop
                  sub          a6, t3, a6
                  lui          t2, 247871
                  auipc        t2, 325695
                  addi         t6, t3, 394
                  sub          s8, t3, a6
                  add          s8, a2, t3
                  nop
                  auipc        t2, 415691
                  nop #end riscv_int_numeric_corner_stream_0
                  srai         t0, s0, 24
                  sll          s1, sp, a5
                  xor          s1, t2, a1
                  sltu         a0, a4, s8
                  xori         a4, s8, -938
                  slti         s0, t0, -2025
                  srli         a6, t0, 23
                  sub          s5, a6, sp
                  slt          t1, t5, tp
                  xor          a3, s2, t1
                  xor          ra, t5, t0
                  srli         t3, a1, 3
                  xori         a2, zero, -1521
                  srli         s1, a7, 13
                  slt          s3, gp, sp
                  sub          zero, s2, t0
                  auipc        s0, 294256
                  sra          s0, s0, s6
                  and          gp, t4, a4
                  srl          s1, s2, t3
                  add          a3, t3, tp
                  slt          s7, s0, s10
                  sra          s8, a7, a3
                  nop
                  addi         t2, a1, 212
                  sll          t4, s9, s4
                  slt          s9, t4, a5
                  or           a0, s0, s4
                  nop
                  sub          a3, zero, t3
                  slli         s2, s8, 3
                  sra          a4, a0, s1
                  nop
                  andi         a2, s4, 967
                  slli         t2, s2, 0
                  and          s6, t3, a1
                  srl          t3, s8, s7
                  srai         t2, gp, 24
                  sltiu        ra, s3, -777
                  slli         t6, gp, 19
                  srai         t3, s2, 19
                  or           s3, gp, a1
                  addi         s10, s8, 1959
                  slli         a2, s1, 1
                  xor          a1, s11, s5
                  srl          s3, s6, t3
                  sltiu        a2, t6, -757
                  sltu         t1, tp, zero
                  auipc        t1, 134549
                  xor          s5, a2, a3
                  xor          s1, a5, t1
                  sub          t1, s4, gp
                  add          a7, a4, s6
                  ori          a3, t1, 1662
                  slti         tp, sp, 122
                  sra          a2, gp, t4
                  addi         zero, a6, -1447
                  addi         s8, s8, 495
                  sra          a6, tp, s4
                  auipc        t2, 268273
                  slt          s7, t6, s5
                  slti         s10, s1, 58
                  lui          t3, 371875
                  sltu         s8, s10, a4
                  addi         a7, s4, 1218
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a4, 0xb4a4a273
                  li           a2, 0x28cd676a
                  li           a6, 0xffffffff
                  li           s0, 0x789306f
                  li           a1, 0x0
                  li           s5, 0x80000000
                  li           s8, 0xffffffff
                  li           tp, 0x0
                  li           s11, 0x8f86630f
                  sub          a4, ra, s8
                  addi         s5, s0, 371
                  nop
                  nop
                  sub          a4, a1, ra
                  lui          a2, 1014412
                  add          s11, a4, a1
                  auipc        ra, 43265
                  auipc        a2, 693399
                  lui          a6, 304317
                  add          a4, a4, s11
                  sub          a2, a2, s11
                  auipc        a4, 922648
                  sub          tp, s5, a1
                  addi         a4, a1, -1231
                  auipc        a1, 835353
                  add          s0, a6, s11
                  lui          s11, 408647
                  nop
                  addi         a4, s0, 612
                  sub          a1, tp, s8
                  addi         tp, tp, -823
                  nop
                  sub          s0, s11, s0
                  sub          a4, a4, a4
                  auipc        a1, 490684
                  lui          ra, 975911
                  lui          tp, 174958
                  auipc        a4, 304956 #end riscv_int_numeric_corner_stream_17
                  addi         t1, s9, -1293
                  sltu         ra, tp, zero
                  srai         t2, sp, 7
                  slti         a6, ra, 1543
                  sltu         s8, t1, s3
                  add          ra, zero, s7
                  and          a2, s4, t6
                  or           a7, s7, a7
                  xor          s7, sp, t2
                  addi         t0, a2, -1358
                  or           s6, a1, gp
                  sltiu        s11, s3, 1446
                  sra          s3, s6, a7
                  and          t0, s3, gp
                  sra          t0, s10, a5
                  sltu         s3, gp, a7
                  auipc        t6, 849421
                  srli         zero, a1, 28
                  auipc        s11, 803457
                  and          a1, t2, t6
                  sra          s6, a4, t0
                  addi         a4, a2, 745
                  add          s0, a0, t2
                  addi         gp, t0, 1166
                  lui          s10, 804616
                  xor          tp, tp, s6
                  lui          t1, 311463
                  srl          s2, zero, t0
                  and          t0, t0, a1
                  xor          t4, a4, s5
                  and          s8, s3, s10
                  srai         s7, s9, 23
                  slli         s9, s11, 8
                  xori         s7, gp, 1646
                  and          s6, s1, a4
                  sub          t4, s0, s5
                  andi         s1, s2, -1685
                  xori         t0, a7, -1861
                  andi         a7, t5, -1572
                  andi         zero, zero, -1403
                  nop
                  nop
                  sll          t1, t4, t0
                  ori          s3, gp, 152
                  addi         s0, ra, 1243
                  addi         a5, s8, 1805
                  add          t4, sp, zero
                  and          t1, s1, s7
                  nop
                  ori          a3, a1, 939
                  srai         s3, sp, 9
                  or           s7, a2, s5
                  sub          s1, t6, t2
                  sll          a1, t6, t1
                  sub          ra, s3, a0
                  slli         tp, gp, 4
                  ori          gp, s4, 1478
                  sra          tp, t3, t3
                  sub          tp, t1, ra
                  auipc        a5, 1029465
                  xor          a0, s5, sp
                  sra          gp, tp, t0
                  sltu         t2, t0, t3
                  srl          s1, gp, s0
                  or           gp, a1, t6
                  sltu         a6, s2, a2
                  nop
                  sll          s9, s11, sp
                  andi         a3, s6, -1898
                  slli         t3, t1, 27
                  slt          t3, a5, gp
                  and          tp, t3, a3
                  auipc        t1, 257393
                  andi         ra, t5, -390
                  nop
                  slli         a1, t5, 0
                  sltu         a0, s3, t0
                  sltu         t1, t4, a1
                  auipc        s8, 939343
                  slt          a1, ra, a5
                  ori          a4, s7, 246
                  xori         t4, t0, 1993
                  ori          t0, ra, 1994
                  xori         gp, t3, 1891
                  srl          s10, a6, s10
                  lui          a3, 231521
                  lui          ra, 970884
                  nop
                  srai         s1, t6, 2
                  sra          t1, t6, s5
                  sra          t1, a2, sp
                  sltu         t6, gp, a3
                  srli         t3, a3, 6
                  slti         a7, s6, 1580
                  and          t6, s11, ra
                  xori         a4, s2, 973
                  add          a2, s4, t3
                  ori          s10, t1, 947
                  and          s1, s9, t0
                  auipc        ra, 20406
                  and          t2, t5, t1
                  andi         t4, t3, -90
                  sltu         s3, s11, a7
                  nop
                  andi         t6, s8, -1550
                  and          s1, zero, t4
                  slt          a3, s8, t6
                  sltiu        a0, t4, 620
                  slt          t0, s11, ra
                  or           a1, a5, s3
                  sltu         a5, s11, s5
                  srai         a5, a3, 21
                  slti         a0, s10, 766
                  and          a0, t0, gp
                  srli         a5, s8, 6
                  sltiu        a6, s11, 925
                  sltu         t3, s0, s9
                  sltiu        a2, ra, 1250
                  add          a4, s4, s9
                  add          gp, s10, t1
                  srai         a2, t4, 24
                  srl          a7, t0, t6
                  auipc        s11, 653732
                  xor          a6, s6, a5
                  sltiu        t3, a3, 1516
                  srli         a0, s7, 7
                  sltiu        s11, a1, -593
                  srl          a7, s3, tp
                  addi         s3, t6, -1486
                  lui          s8, 824912
                  add          s9, t2, s9
                  xor          s11, a5, a2
                  slt          ra, s8, t3
                  srai         s5, a6, 5
                  slt          t1, a0, s5
                  or           a6, a5, s4
                  auipc        a6, 252542
                  srai         t1, t4, 29
                  add          t0, s4, s1
                  auipc        s2, 233431
                  ori          s0, a3, 1969
                  slt          t3, t1, a6
                  slti         s1, a0, 2038
                  ori          a3, zero, -1220
                  sra          s7, t6, s0
                  slli         gp, t1, 18
                  or           s5, a1, t4
                  andi         s5, s8, 1441
                  sll          t4, ra, a2
                  slt          s7, ra, ra
                  lui          s3, 219845
                  sll          s11, t6, t1
                  lui          a1, 741953
                  add          s6, s2, s6
                  or           s8, sp, a6
                  andi         s6, t2, 1865
                  and          a1, s8, a7
                  sltiu        a1, t5, -282
                  sll          s6, t1, zero
                  xor          zero, t2, t3
                  xori         a4, s11, -2018
                  add          a0, s6, a6
                  sra          s6, a0, a3
                  sltu         s9, a2, s3
                  slti         a3, s3, 1263
                  sub          zero, s0, t3
                  sub          s1, s10, ra
                  sltiu        s2, t6, -235
                  ori          gp, a5, -755
                  xor          a5, s0, t2
                  and          s1, s2, s10
                  xori         s2, s0, 1220
                  xor          a5, t0, t3
                  srl          a7, s3, gp
                  andi         s8, t0, 2038
                  sub          t2, a3, t2
                  slti         t2, t4, 1710
                  ori          s2, a1, 532
                  sltiu        ra, a5, 1699
                  sltiu        t0, t5, 1199
                  sub          a1, s4, s8
                  xori         t2, a4, 406
                  or           s8, a5, gp
                  slt          s6, s4, tp
                  srli         s3, s5, 4
                  ori          t3, a5, 1623
                  ori          t6, t4, 663
                  slti         s2, ra, 1996
                  srli         a6, s1, 3
                  sub          a6, ra, a1
                  addi         a1, s4, -87
                  add          a1, s4, tp
                  sub          s7, t0, t3
                  srl          a4, s5, a0
                  sra          t6, t2, s5
                  sltu         a4, gp, s9
                  sltu         t4, sp, s10
                  srl          a1, a2, t5
                  and          t2, s10, t6
                  slti         s6, a6, -1071
                  andi         tp, t4, -1980
                  nop
                  slt          a4, t1, a7
                  lui          tp, 557592
                  lui          s11, 627815
                  sll          t3, t6, a2
                  sltu         s7, s0, t0
                  lui          a1, 770718
                  srai         a4, tp, 2
                  slli         t3, s11, 10
                  slti         zero, s7, 1911
                  sltiu        s6, s0, -931
                  slli         ra, t2, 24
                  lui          t3, 676569
                  and          zero, t0, a7
                  xori         gp, a1, -185
                  or           a1, sp, s4
                  add          a4, s6, t3
                  slt          a5, a4, s0
                  sra          s3, t3, t4
                  sltiu        s6, gp, 849
                  sub          a0, t3, t1
                  srli         s1, a3, 12
                  sra          a0, gp, a1
                  andi         a7, s3, -2007
                  add          tp, s0, s6
                  add          a7, s11, t5
                  srli         t0, gp, 29
                  srli         a4, a1, 24
                  or           t1, a1, t5
                  or           tp, tp, t1
                  srli         a3, a5, 9
                  slt          a4, s10, s11
                  slti         a6, s8, 1504
                  ori          s1, s10, -1636
                  srl          s3, s3, t2
                  auipc        tp, 693384
                  srai         s1, t1, 31
                  sltiu        a4, s2, -1012
                  srai         s2, s2, 24
                  nop
                  and          ra, s7, s8
                  nop
                  srli         ra, a4, 14
                  sltiu        s7, t0, -1849
                  xor          t4, a3, tp
                  andi         tp, s11, 1802
                  auipc        s10, 788873
                  ori          t1, s10, 585
                  add          t6, a0, t2
                  srl          a1, s11, sp
                  xor          s5, ra, tp
                  srai         s11, zero, 21
                  andi         t4, sp, -171
                  slt          s3, s1, ra
                  srl          a6, a6, a5
                  or           t3, s1, s3
                  slti         gp, sp, -1943
                  slti         tp, ra, 1146
                  nop
                  sltiu        a2, t6, -1361
                  slli         t0, s10, 4
                  add          s2, a1, gp
                  addi         s1, s2, -1806
                  add          s10, s4, gp
                  xor          zero, s2, t3
                  srl          ra, t1, sp
                  srli         a7, s8, 20
                  slt          a3, s0, t1
                  andi         s11, s6, -313
                  srai         s3, t3, 15
                  or           a7, s1, s5
                  ori          s9, t2, 1770
                  slti         s6, s3, 261
                  add          s7, s0, t3
                  sll          s1, s9, t6
                  slti         ra, t3, 438
                  xori         t2, s1, -1518
                  srli         t1, a0, 21
                  auipc        s6, 606468
                  xor          s9, t4, t4
                  sll          s10, s6, s0
                  lui          s10, 793912
                  add          s10, s3, s5
                  slti         s11, s1, 1300
                  srai         s8, t3, 30
                  nop
                  srl          s5, t1, s9
                  slti         a2, tp, -345
                  slli         s5, a6, 14
                  ori          s5, a7, 1933
                  andi         a4, a2, -1086
                  add          zero, s6, s7
                  xor          a3, s8, zero
                  addi         s9, a0, -1095
                  slli         s9, t3, 6
                  nop
                  addi         a2, t6, 1211
                  andi         zero, gp, 342
                  slti         s1, s5, -575
                  addi         s9, a5, 1938
                  nop
                  srl          ra, zero, a1
                  sltu         t1, ra, a5
                  sltu         s5, a6, gp
                  xori         t0, a1, -663
                  lui          a5, 54171
                  sub          a2, t3, a4
                  slti         s3, a0, 398
                  xori         ra, s0, -705
                  andi         ra, t4, -103
                  auipc        a0, 91711
                  ori          tp, sp, -1380
                  sltiu        s2, s5, -1077
                  sra          s7, zero, s3
                  sltiu        t3, s4, -565
                  slti         t1, t4, 749
                  srli         s9, a6, 13
                  srl          a4, a2, t1
                  srl          t4, a6, a5
                  srai         s2, t4, 8
                  slt          t3, s8, gp
                  slt          s10, s4, a3
                  srli         t2, s8, 19
                  auipc        t6, 484838
                  slli         s6, t4, 24
                  slti         t4, zero, 476
                  sltu         s7, t6, zero
                  slt          t0, ra, t4
                  slli         s8, a7, 15
                  slti         s0, t1, -64
                  nop
                  xori         s9, t4, -1151
                  sltu         s2, s4, t3
                  auipc        s0, 700280
                  srli         s7, s9, 14
                  sltiu        a5, a6, -1254
                  andi         s5, gp, 1071
                  xor          gp, a2, s3
                  xor          s6, s11, a2
                  andi         s9, zero, -184
                  srl          s11, t0, s0
                  xori         s6, sp, -337
                  srli         a0, a2, 8
                  slli         a4, s2, 1
                  addi         s9, a2, -1225
                  add          a5, tp, a7
                  andi         t0, s9, 67
                  slti         a7, s10, -1785
                  lui          a3, 986597
                  ori          ra, s10, -1574
                  nop
                  or           s9, tp, ra
                  slti         gp, gp, -1827
                  srai         s2, s5, 18
                  xor          t2, gp, s2
                  add          a7, s1, s10
                  lui          zero, 663384
                  srai         t1, t3, 19
                  slt          t2, a5, t4
                  sub          s6, s1, s2
                  srli         s10, gp, 22
                  slt          s8, a3, tp
                  slt          gp, a5, t0
                  sra          a2, sp, s3
                  sltiu        gp, s10, 1950
                  or           s0, a2, s2
                  sltiu        a6, a3, -1743
                  auipc        s2, 848912
                  srl          s0, a5, a7
                  slt          s6, a7, tp
                  xori         s2, a0, -1501
                  addi         a6, s5, 899
                  add          a6, t5, sp
                  slli         t3, s2, 9
                  ori          s2, a0, -1526
                  sra          s2, t0, a4
                  lui          s0, 116495
                  slti         s10, t1, -299
                  ori          s9, a2, 1430
                  andi         t6, ra, -1598
                  andi         s1, s10, 1550
                  sra          tp, s9, s3
                  and          s8, ra, a5
                  addi         t3, s6, 312
                  xori         s1, s6, 1651
                  or           t3, s9, a5
                  slli         s0, s0, 14
                  srli         s7, t3, 28
                  sub          t3, s4, zero
                  slti         s0, s6, 1314
                  slt          s11, a1, a4
                  or           s8, s10, t6
                  nop
                  slt          ra, t5, s7
                  sltu         a6, a5, s1
                  addi         a7, s1, -566
                  xor          a0, zero, s2
                  srai         s3, ra, 19
                  or           s2, s3, a6
                  addi         s0, a0, -1073
                  nop
                  srli         zero, t3, 8
                  sub          t4, s1, t2
                  or           t3, t4, s9
                  sra          s3, t1, t5
                  lui          a4, 768432
                  sra          t3, a4, s9
                  srai         s8, s1, 31
                  nop
                  xor          s2, s5, ra
                  xor          t6, a0, ra
                  xor          zero, s7, a7
                  addi         s3, ra, -1108
                  sltiu        s2, a4, 615
                  add          s0, a5, t2
                  srl          a2, a2, s3
                  slli         s11, zero, 2
                  slt          a5, s11, ra
                  sll          t4, t5, s11
                  xori         t2, a6, 2006
                  sub          s7, t4, s10
                  srli         s0, t2, 27
                  and          s2, ra, s4
                  or           tp, s9, t3
                  nop
                  or           s2, a0, t0
                  andi         t1, a0, 735
                  sltu         a3, zero, a5
                  add          gp, t0, s10
                  auipc        s2, 1027727
                  nop
                  auipc        s3, 421057
                  sltiu        t4, s3, 1046
                  sra          s7, s6, tp
                  srai         s3, s8, 6
                  srli         s10, a1, 23
                  lui          s0, 895623
                  lui          t4, 792762
                  slt          tp, gp, s2
                  slli         t3, t5, 21
                  lui          s2, 736733
                  andi         a5, zero, -1659
                  nop
                  slli         t3, s2, 20
                  nop
                  and          s5, s11, a5
                  andi         gp, s10, -1403
                  andi         t3, a5, -1522
                  xori         t6, s2, -825
                  add          s8, sp, s7
                  ori          t1, a7, -1164
                  srli         a2, sp, 4
                  slt          s8, a5, s8
                  and          t3, sp, a0
                  lui          t4, 749678
                  xori         zero, s8, -611
                  srai         s9, s1, 25
                  xori         t6, s4, -1130
                  auipc        a1, 760037
                  addi         a0, a6, 2043
                  srl          a3, tp, sp
                  srl          t4, t4, gp
                  ori          s6, s11, 410
                  sltu         a4, ra, sp
                  and          s5, s0, a7
                  sra          s1, a7, a1
                  nop
                  and          a2, t1, t6
                  sltu         t6, tp, t4
                  or           t0, s10, t2
                  xori         t4, a1, -943
                  addi         a5, s7, 1025
                  add          a2, a2, a3
                  srl          s0, a1, s7
                  sltu         s5, s4, t6
                  srli         a0, a5, 11
                  auipc        s7, 593957
                  srai         a0, s2, 12
                  xor          s2, tp, a7
                  or           a7, s7, t2
                  addi         s0, t3, -74
                  xori         a5, t3, -738
                  and          t6, a7, gp
                  srl          a4, a2, t5
                  slli         a2, s9, 12
                  xor          s6, a2, gp
                  addi         zero, t4, 476
                  sra          t1, t5, a0
                  lui          t0, 323725
                  add          a5, t0, t5
                  sub          s3, s7, s11
                  auipc        s9, 510927
                  nop
                  sltu         s1, s2, s0
                  sll          a5, a2, s10
                  add          zero, s1, s8
                  and          s11, s7, s10
                  slti         s11, t1, -397
                  sltiu        s6, s5, -289
                  slt          t0, t5, a0
                  xor          gp, s2, a2
                  srai         t3, t6, 31
                  sub          s2, a2, s7
                  srl          tp, s5, s4
                  srli         a5, t1, 17
                  addi         gp, zero, -677
                  xori         s2, sp, 683
                  lui          a7, 310075
                  srai         s7, t6, 3
                  sub          a6, a7, s0
                  add          s1, s5, a3
                  andi         a0, a4, -1755
                  add          tp, s2, s3
                  sub          s2, t1, ra
                  xor          s11, ra, s6
                  nop
                  xori         a3, tp, 1708
                  sub          a5, s10, a2
                  sll          s8, s2, a0
                  auipc        s9, 685926
                  or           t2, a4, t3
                  auipc        s7, 966116
                  andi         s7, s5, 1448
                  sltu         s3, s4, s6
                  auipc        s8, 110843
                  xori         zero, s9, 123
                  xori         tp, s7, -709
                  addi         t4, t6, 1612
                  or           s7, s1, t6
                  nop
                  xori         a7, s8, -1245
                  xori         s5, sp, -1602
                  srl          zero, t5, a1
                  ori          a3, s11, -1911
                  srai         tp, a1, 26
                  nop
                  andi         s10, t2, 1077
                  srai         s0, ra, 2
                  srli         t6, s0, 6
                  srl          a1, a2, s6
                  lui          s7, 688680
                  slt          s3, s7, a3
                  and          t3, s9, s2
                  andi         t3, s0, -1279
                  xori         s10, tp, 1315
                  sub          zero, a1, gp
                  sra          s8, a7, t6
                  xori         a7, sp, -1875
                  ori          a7, a3, -1371
                  slt          a4, s1, a7
                  srli         s2, s4, 30
                  xor          t1, s9, s2
                  srli         ra, s7, 13
                  ori          a7, s4, -756
                  or           t3, tp, s7
                  xor          s10, tp, s5
                  xori         t3, a4, -67
                  srli         a7, t0, 25
                  slt          a1, s1, s5
                  sub          s3, zero, t0
                  sra          s10, a2, s2
                  auipc        s5, 73180
                  auipc        tp, 270546
                  lui          s2, 295934
                  sltiu        s9, ra, 1912
                  srli         a0, a2, 17
                  sll          a0, s2, s0
                  andi         s9, a5, 402
                  and          a1, t2, s6
                  sub          s10, t1, t3
                  xor          s8, t6, tp
                  addi         zero, gp, -16
                  slti         s6, a5, 541
                  auipc        s0, 266788
                  slli         a2, a4, 10
                  srli         s8, a5, 15
                  sub          a4, ra, s9
                  srli         s9, a7, 20
                  lui          a6, 53579
                  and          a1, s9, sp
                  and          s3, a2, t4
                  sltu         ra, s7, gp
                  lui          s11, 694453
                  srai         s0, a0, 21
                  slti         t4, s1, -1301
                  sltiu        a4, s4, 235
                  sub          a7, a3, s6
                  and          s6, s0, a0
                  sltiu        s5, zero, 463
                  sll          tp, a0, s8
                  slli         s9, t6, 5
                  sra          zero, s8, ra
                  slt          a3, a0, a3
                  sll          a5, s0, a2
                  nop
                  andi         s0, zero, 708
                  lui          a2, 760347
                  and          t2, t5, s2
                  and          a3, ra, t3
                  auipc        ra, 1014765
                  sll          s0, tp, t2
                  and          t0, s0, s5
                  srl          s6, s3, t0
                  srli         a6, tp, 11
                  xor          s2, s8, t5
                  srai         a7, zero, 5
                  and          s7, s10, t2
                  slt          s5, t1, a6
                  slli         a2, s4, 21
                  sll          a5, s4, s11
                  ori          a3, s8, 1085
                  srai         ra, s11, 21
                  xor          a6, s11, s11
                  addi         a3, tp, 821
                  sra          s11, a4, tp
                  sll          a1, a2, tp
                  andi         tp, s0, 936
                  auipc        a4, 245904
                  xor          s6, t2, s5
                  xori         a2, a3, -1718
                  srl          s9, a4, t6
                  lui          ra, 785056
                  xori         gp, a6, -1371
                  lui          t0, 768783
                  slti         a2, gp, 1479
                  xor          s9, s7, a3
                  sra          tp, a3, sp
                  ori          t3, a2, -380
                  add          s5, t6, t2
                  sub          a0, s9, t1
                  add          s11, s0, s3
                  slli         zero, a6, 19
                  ori          a4, a1, 65
                  lui          gp, 1016414
                  auipc        t1, 178439
                  xori         s3, t2, -831
                  srl          ra, t6, ra
                  srl          s1, s4, a3
                  sub          zero, ra, t5
                  addi         a7, t5, -1157
                  and          ra, t0, a3
                  andi         a2, s11, -719
                  sltu         a6, t4, a5
                  ori          t2, s7, 815
                  sltu         zero, zero, a5
                  sub          a1, a4, sp
                  auipc        s6, 306525
                  sll          s11, a0, t3
                  sltu         s0, t0, s9
                  srai         s7, a6, 22
                  add          a7, t4, s11
                  addi         s3, s2, -1592
                  srli         a6, a0, 23
                  nop
                  sll          t1, sp, s6
                  srli         a1, s0, 20
                  sll          a6, a6, sp
                  auipc        t4, 705258
                  and          s3, t6, a3
                  and          a1, a5, t2
                  addi         zero, t6, 1496
                  sltiu        a6, t0, -57
                  and          s6, s8, a0
                  sltu         a5, t5, s2
                  xor          gp, s10, zero
                  nop
                  addi         s11, a3, 682
                  srl          s2, s11, a5
                  lui          tp, 513185
                  and          a0, a0, a5
                  or           a2, t1, s11
                  andi         s5, zero, -1523
                  srli         a3, t0, 10
                  slli         t0, s2, 2
                  ori          s2, s10, 773
                  or           a5, s5, sp
                  srli         a0, s4, 16
                  nop
                  srl          s11, t1, s2
                  srai         a2, t5, 3
                  slt          s5, a7, s8
                  lui          a0, 231381
                  slti         s0, s6, 895
                  auipc        tp, 270085
                  and          a1, t1, s10
                  xori         s7, s8, -1630
                  srai         t4, s9, 8
                  xor          t0, t3, t3
                  slti         tp, s1, -1022
                  sll          a4, t3, a7
                  sltiu        s11, s11, 231
                  slti         s9, t6, 1285
                  or           a1, a3, s1
                  slt          s2, s7, s8
                  addi         ra, t0, 1897
                  srai         a0, gp, 10
                  addi         s8, a3, 1344
                  sltu         t2, s2, s4
                  sub          s6, a5, s2
                  addi         a7, tp, 379
                  slt          a5, s5, a1
                  auipc        s10, 999463
                  xor          ra, s6, a7
                  slli         t1, a0, 18
                  sltiu        gp, t0, -1901
                  srli         a7, s3, 16
                  andi         a2, a1, -151
                  slt          t4, t0, s0
                  auipc        t4, 930263
                  add          t1, s0, a7
                  add          s0, a1, t4
                  srl          ra, s0, t2
                  sltiu        gp, tp, 90
                  auipc        a1, 228958
                  and          a7, s3, a1
                  sra          a5, t2, ra
                  andi         s0, s2, -1878
                  sltiu        ra, s5, -826
                  slt          t1, s4, a1
                  xor          a5, tp, t0
                  sltiu        a6, s7, -399
                  slt          s5, a7, t4
                  sltu         s0, a3, s5
                  and          a2, a1, zero
                  sub          s3, ra, tp
                  sltu         t4, a3, s2
                  sltu         s3, t4, a6
                  slti         tp, a5, 253
                  add          zero, t4, a0
                  andi         a2, s4, -1637
                  sub          a3, s6, ra
                  srl          a3, a4, t3
                  xori         zero, s9, 1026
                  slti         a6, s4, 1846
                  sll          t6, s10, s9
                  or           s1, a6, a6
                  slt          s8, sp, a7
                  slli         zero, tp, 30
                  sub          s9, s3, sp
                  andi         s5, a7, 722
                  andi         s8, s11, 1247
                  lui          s2, 790378
                  sub          a0, s9, t0
                  slt          a3, t2, gp
                  andi         a0, gp, -558
                  xor          gp, a7, t2
                  sra          s7, ra, s11
                  sltiu        s0, s5, -1583
                  srai         t0, a5, 19
                  srl          s10, gp, s11
                  and          s11, t1, a4
                  slti         t0, a1, -440
                  sra          t0, s10, s5
                  xor          s10, sp, t4
                  auipc        s0, 846736
                  andi         t2, t0, -228
                  sltu         zero, a6, s0
                  andi         a6, t6, 1896
                  sll          s6, a5, a1
                  sltiu        t4, a6, -1656
                  andi         t1, a0, 265
                  add          a6, a4, s7
                  andi         s6, s6, -2019
                  xor          zero, zero, a7
                  xori         s11, s11, -765
                  auipc        t6, 484514
                  andi         s2, s11, -2045
                  addi         s3, a4, 916
                  lui          s2, 728152
                  sll          a2, gp, a1
                  srl          a6, s1, ra
                  andi         s8, a2, -898
                  sltiu        t1, s10, -682
                  sltu         gp, s10, a6
                  or           t3, s8, t1
                  srl          s8, s3, a3
                  andi         s9, a1, -462
                  sltiu        s9, s10, 1443
                  ori          s2, s3, 846
                  or           ra, a5, t2
                  nop
                  andi         t4, ra, -451
                  sltiu        s5, t2, 1718
                  nop
                  sltiu        t3, s6, 1340
                  srli         t4, a2, 29
                  addi         s2, s6, 1228
                  or           s1, s0, s11
                  xor          s0, a7, a4
                  nop
                  xori         s0, s7, 323
                  auipc        a2, 847357
                  sub          a6, s6, a2
                  add          gp, t1, s6
                  sltiu        s10, a3, -822
                  or           t3, a0, s8
                  slt          s0, a1, a7
                  auipc        t3, 485126
                  nop
                  xor          a7, s7, t1
                  slli         s11, zero, 6
                  xori         s0, zero, 1355
                  slti         s6, t0, -447
                  andi         t4, a1, -931
                  nop
                  slti         a0, gp, 1841
                  addi         t1, a0, -1817
                  lui          s8, 278635
                  srai         a7, s1, 7
                  sltiu        s9, gp, 507
                  add          zero, t2, t0
                  sub          a7, a3, zero
                  nop
                  xor          s3, a3, gp
                  sltiu        t4, s1, 1527
                  srli         a1, sp, 27
                  slti         s3, a1, -509
                  andi         s5, s0, -1259
                  or           gp, s5, t6
                  srl          a2, s7, ra
                  srl          t6, t1, s10
                  sll          a0, a1, t0
                  sub          a2, a2, s10
                  sll          a2, s11, t6
                  srli         t0, ra, 24
                  nop
                  sltu         gp, s2, s5
                  lui          zero, 476455
                  srli         s9, t0, 11
                  nop
                  nop
                  slli         a1, ra, 15
                  andi         s1, s10, -313
                  srli         s10, t4, 12
                  slti         s11, a7, 832
                  andi         ra, t5, 260
                  ori          a3, ra, -257
                  add          t2, ra, a4
                  auipc        s5, 76581
                  xor          t4, a6, t1
                  andi         a6, gp, -1832
                  nop
                  lui          tp, 271282
                  andi         s7, ra, 1913
                  xori         s10, t2, -1016
                  lui          t0, 411506
                  srli         a2, a1, 1
                  nop
                  sltiu        t2, s7, -1933
                  sub          a2, t5, zero
                  sltu         a4, s3, t1
                  addi         a4, s3, -1892
                  addi         a7, a6, -1966
                  and          s2, a4, a1
                  sll          s2, s6, a4
                  andi         ra, t6, -1150
                  andi         s7, s9, -1445
                  lui          s3, 436161
                  srli         tp, ra, 3
                  slt          s1, s1, s5
                  lui          a6, 50106
                  slt          t6, s10, s3
                  srl          ra, s10, s11
                  add          ra, a3, zero
                  lui          s11, 803061
                  srai         a3, s5, 17
                  addi         a2, ra, -1818
                  slt          a4, s0, s8
                  srli         a7, s1, 29
                  sll          t3, s11, s9
                  srl          a3, a5, s5
                  or           s11, gp, sp
                  ori          s0, s0, -1782
                  or           t0, s11, s2
                  lui          s7, 194294
                  sra          s0, gp, s8
                  slti         t1, ra, -997
                  sltu         a4, s4, t3
                  srli         a4, s3, 19
                  add          t2, s9, a5
                  sll          zero, s7, s6
                  sub          s9, s5, a5
                  sltu         zero, s10, t3
                  or           a2, a7, a3
                  srli         s5, tp, 7
                  sltu         t1, s6, s3
                  or           s6, t0, s1
                  auipc        t6, 689204
                  srl          s10, t2, a3
                  add          a7, a4, s0
                  slt          a4, a1, gp
                  srl          a7, t5, s3
                  srl          a2, s6, zero
                  srl          a2, ra, t6
                  sltiu        s11, s8, 868
                  sra          zero, sp, a0
                  srl          a6, s3, s4
                  sltu         t0, ra, t2
                  srai         s3, s0, 8
                  sltiu        t6, t3, -524
                  sltu         a1, s3, s0
                  lui          a0, 28626
                  sub          t4, s6, s10
                  slti         zero, a1, 1806
                  srli         s0, a1, 15
                  ori          s11, ra, 2010
                  xor          a4, sp, s10
                  addi         t6, ra, -1437
                  slli         s9, zero, 17
                  slli         a4, s8, 28
                  xor          t1, s10, a5
                  srli         tp, s4, 27
                  and          t6, s0, zero
                  srl          a7, s10, t1
                  xor          a5, a6, a6
                  slt          s0, s1, a6
                  slti         t1, s6, 1643
                  xor          a4, ra, t0
                  sra          s8, s7, s2
                  slt          t6, t2, a5
                  addi         s2, sp, 84
                  andi         s1, s1, -136
                  sra          s11, s0, s3
                  ori          s1, s9, 1434
                  srai         tp, t4, 10
                  sltu         t6, s10, s5
                  srl          a2, s4, a2
                  slti         s10, s11, 854
                  xor          s2, a6, s6
                  sub          s1, a6, tp
                  ori          s2, s8, -1309
                  or           t1, s7, s1
                  lui          s2, 216243
                  sll          s3, s10, tp
                  nop
                  sub          t6, s2, t2
                  xori         s1, t5, 1346
                  sltiu        a0, s8, -1795
                  ori          t4, a0, 548
                  xori         s8, t4, -1764
                  slli         s1, zero, 23
                  slli         t3, zero, 8
                  nop
                  lui          a0, 1025688
                  sra          s5, t6, a5
                  xori         s2, a1, -1837
                  ori          t3, t4, -1420
                  auipc        a2, 290064
                  ori          s0, s5, -388
                  sltiu        t4, s8, -592
                  slli         t3, a0, 29
                  slti         s5, t1, 1652
                  andi         s11, a7, 215
                  or           a1, s2, gp
                  sub          t2, s11, s3
                  srli         s1, s9, 23
                  srli         a7, s6, 9
                  addi         s9, tp, -1633
                  ori          s6, t1, 1934
                  sll          zero, s9, s1
                  srli         s6, a1, 12
                  nop
                  sltiu        zero, t2, -456
                  xor          a1, s9, t4
                  slti         a5, a1, -1794
                  sub          s2, t2, ra
                  auipc        t2, 317236
                  nop
                  andi         s11, a1, 1404
                  ori          a0, s2, -944
                  sub          t0, t2, s0
                  xor          a3, t2, gp
                  srl          s6, zero, a1
                  srli         a5, t0, 30
                  or           s6, s9, a5
                  srl          s1, tp, t4
                  addi         a1, a5, 1565
                  auipc        tp, 409660
                  srli         t0, s6, 16
                  sub          s10, s3, t3
                  xor          s3, t5, t4
                  xori         a7, sp, -1605
                  and          zero, t6, a5
                  slt          s1, gp, a4
                  slti         t1, s4, -473
                  sltu         s11, s2, t2
                  or           a6, s11, s2
                  andi         s0, s8, -1822
                  sltiu        a5, s6, -14
                  add          t1, zero, sp
                  srl          a0, a0, a4
                  slt          a6, a1, t0
                  nop
                  andi         ra, t4, 2040
                  lui          s5, 813031
                  srai         s10, a7, 25
                  sub          t3, s6, sp
                  srl          s8, s5, s0
                  sll          t1, a0, s5
                  slti         a5, t4, 505
                  or           a6, t3, a7
                  sub          t6, s1, s9
                  or           tp, t1, t3
                  slti         gp, t6, -1540
                  srli         s6, a4, 5
                  add          t0, a3, s3
                  xori         s1, s0, -1460
                  xor          t2, s3, s5
                  add          ra, s6, t6
                  nop
                  sra          s8, s8, ra
                  slli         a0, s6, 14
                  or           t2, s1, a2
                  sltu         s6, s8, s2
                  addi         s11, ra, -71
                  xor          a5, s8, s3
                  srli         a7, a5, 12
                  sll          s0, zero, t1
                  xori         s0, t6, -1253
                  sra          s11, a5, a1
                  andi         s6, a1, 1353
                  slli         t4, t4, 25
                  xor          t2, t5, s6
                  srai         s8, a6, 15
                  auipc        t3, 561015
                  add          zero, s6, t0
                  slli         s9, a2, 3
                  sra          s2, ra, a1
                  sltiu        s0, a0, -1976
                  and          s5, a4, a3
                  auipc        t1, 72118
                  addi         a0, a3, 2008
                  lui          a4, 1012493
                  and          a0, s8, s5
                  sub          s9, gp, s10
                  addi         a7, s1, -147
                  sll          s1, s4, s5
                  xor          a5, s0, t1
                  ori          a0, zero, 1173
                  srai         s10, t4, 6
                  sltiu        a5, s6, 1284
                  xor          t4, s4, s0
                  or           t4, t3, s11
                  nop
                  srli         ra, zero, 4
                  xor          s9, s4, a7
                  slli         a3, t4, 21
                  and          a3, s6, tp
                  addi         s1, a0, -535
                  lui          t2, 972869
                  slli         t1, s5, 27
                  nop
                  sltiu        t4, a5, 543
                  slli         t0, s9, 2
                  sra          s11, t0, t4
                  sub          s0, s9, s6
                  xor          tp, s5, t3
                  andi         s3, s11, -1505
                  addi         a5, gp, -1742
                  slli         ra, s11, 9
                  and          s11, sp, t3
                  and          t6, s5, a2
                  nop
                  sra          t4, t3, a4
                  sltu         t1, t5, ra
                  srli         s7, s9, 18
                  add          tp, t4, sp
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x20, x2, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x26, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x26, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x26, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x26, x28, ecall_handler
                  li x28, 0x1
                  beq x26, x28, instr_fault_handler
                  li x28, 0x5
                  beq x26, x28, load_fault_handler
                  li x28, 0x7
                  beq x26, x28, store_fault_handler
                  li x28, 0xc
                  beq x26, x28, pt_fault_handler
                  li x28, 0xd
                  beq x26, x28, pt_fault_handler
                  li x28, 0xf
                  beq x26, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
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
                  add x2, x20, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x20, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x20, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x2, x20, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x2, x20, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x2, x20, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
