.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x951cfa18
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xf95d59f6
                  li x4, 0x4
                  li x5, 0x5
                  li x6, 0x3
                  li x7, 0x0
                  li x8, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xf77ce3f3
                  li x12, 0xfdaa753e
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xfe941f50
                  li x16, 0x0
                  li x17, 0x1
                  li x18, 0xfe25b4a4
                  li x19, 0x69313c75
                  li x20, 0x80000000
                  li x21, 0xf8adceb6
                  li x22, 0x0
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xf3464e8b
                  li x27, 0xa
                  li x28, 0x80000000
                  li x29, 0xff59a8a1
                  li x30, 0xfc4f73dd
                  li x31, 0x80000000
                  la x9, user_stack_end
main:             li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a2, 0xffffffff
                  li           t2, 0xffffffff
                  li           a5, 0x0
                  li           a7, 0x80000000
                  li           s2, 0x80000000
                  li           ra, 0xffffffff
                  li           s0, 0x80000000
                  li           a1, 0x0
                  li           s8, 0xc327fd1c
                  sub          s8, a6, s0
                  addi         s8, ra, 1196
                  lui          a7, 912047
                  auipc        s2, 954097
                  nop
                  lui          a1, 605968
                  add          a5, a2, s2
                  lui          t2, 126803
                  auipc        a7, 629952
                  addi         a7, a1, -1280
                  lui          a1, 174286
                  addi         t2, ra, 178
                  sub          s0, a2, ra
                  add          s2, a6, a1
                  nop #end riscv_int_numeric_corner_stream_18
                  li           s6, 0xc6cf6b0f #start riscv_int_numeric_corner_stream_17
                  li           s10, 0x0
                  li           a5, 0xc8c70621
                  li           s4, 0xffffffff
                  li           s8, 0xffffffff
                  li           a4, 0xa5ec8c05
                  li           a6, 0x80000000
                  li           t6, 0x0
                  li           tp, 0xffffffff
                  li           s2, 0x0
                  add          s4, s8, a5
                  auipc        s2, 326713
                  nop
                  lui          a4, 635607
                  add          s2, s6, t6
                  addi         t6, t6, -428
                  addi         tp, s2, 143
                  lui          a4, 603623
                  lui          s2, 627113
                  add          tp, s4, tp
                  auipc        s10, 962566
                  nop
                  sub          s10, tp, a4
                  auipc        t6, 89185
                  auipc        tp, 382857
                  nop
                  sub          s2, a6, t6
                  add          s2, s8, tp
                  nop
                  add          s8, t6, tp
                  sub          a6, s10, s2
                  auipc        s6, 318354
                  auipc        a5, 357698
                  addi         s6, t6, 536
                  add          a4, s4, s4 #end riscv_int_numeric_corner_stream_17
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           t2, 0xcfa4d404
                  li           tp, 0x37e3369e
                  li           t3, 0xb95946d5
                  li           s0, 0xffffffff
                  li           s5, 0x80000000
                  li           sp, 0x58e7b48
                  li           a1, 0xffffffff
                  li           s8, 0x1c1870c9
                  li           a4, 0xacd77bf4
                  lui          a1, 467597
                  addi         tp, t3, -1835
                  add          t3, t3, t2
                  sub          s0, t3, s3
                  nop
                  lui          s5, 751703
                  lui          tp, 274215
                  nop
                  sub          t3, t3, a1
                  add          tp, s8, s5
                  add          s5, a1, t2
                  lui          t3, 193510
                  nop
                  addi         sp, a4, -663
                  lui          tp, 272552
                  sub          a1, a1, tp
                  nop
                  sub          s5, tp, s8
                  lui          tp, 18009
                  lui          a1, 1027361
                  auipc        t2, 572197
                  auipc        s3, 770828
                  nop
                  add          a1, t3, s0
                  nop
                  auipc        t3, 719607 #end riscv_int_numeric_corner_stream_15
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s2, 0xf73ee952
                  li           s8, 0x0
                  li           t4, 0x80000000
                  li           t5, 0x335d1e15
                  li           s5, 0x0
                  li           a2, 0xffffffff
                  li           a4, 0xffffffff
                  li           t1, 0xffffffff
                  li           t3, 0xa5b35167
                  nop
                  lui          t3, 116661
                  nop
                  sub          s2, a0, a2
                  auipc        s5, 833749
                  addi         a2, a4, -1801
                  lui          a2, 351655
                  sub          t5, t5, a4
                  sub          s2, s5, a0
                  sub          s8, s8, t3
                  sub          t4, s2, s5
                  addi         a2, t5, 431
                  lui          s5, 763065
                  sub          t1, t4, s5
                  nop
                  sub          s2, a2, a2
                  add          t3, a0, s5
                  nop
                  add          t4, s8, a0
                  auipc        a4, 732864
                  auipc        t5, 82154
                  sub          t4, t3, a4 #end riscv_int_numeric_corner_stream_2
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a1, 0xffffffff
                  li           s6, 0xffffffff
                  li           t4, 0x8d8b65d1
                  li           s10, 0xf7a97184
                  li           gp, 0x90114ac7
                  li           a6, 0x0
                  li           a4, 0xffffffff
                  li           s11, 0x80000000
                  li           a2, 0xffffffff
                  auipc        s10, 292664
                  lui          a1, 136875
                  nop
                  addi         s6, gp, -905
                  auipc        s10, 802571
                  add          a6, s6, s6
                  addi         t0, s10, 561
                  add          a4, a6, t0
                  nop
                  auipc        gp, 344654
                  sub          s11, t0, a1
                  add          s11, s6, gp
                  nop
                  nop
                  nop
                  auipc        s6, 322340
                  sub          t0, t4, a2
                  add          a2, t4, gp
                  add          t0, s10, t4
                  auipc        s10, 942488
                  sub          a4, a6, a2
                  sub          s11, gp, t0
                  auipc        s6, 445053
                  lui          a6, 519733 #end riscv_int_numeric_corner_stream_1
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s8, 0x80000000
                  li           s5, 0x0
                  li           a4, 0xffffffff
                  li           s6, 0xffffffff
                  li           t0, 0xffffffff
                  li           a2, 0x80000000
                  li           tp, 0x0
                  li           a5, 0x0
                  li           a0, 0x12342ac9
                  sub          t0, a2, s5
                  nop
                  add          s8, t0, s6
                  auipc        a5, 84480
                  lui          s6, 18865
                  nop
                  nop
                  auipc        a5, 391849
                  lui          t0, 893928
                  nop
                  addi         tp, a5, -1598
                  sub          t0, s5, s5
                  lui          s8, 760801
                  sub          a0, s8, s8
                  add          s0, a5, s0
                  sub          s0, s8, a2
                  nop #end riscv_int_numeric_corner_stream_4
                  andi         t0, a1, 345
                  addi         a5, a1, -1834
                  auipc        t3, 860362
                  nop
                  addi         s2, s9, 1868
                  xori         s2, t0, 1557
                  srl          t0, s4, s8
                  xor          tp, s0, a1
                  nop
                  sub          a1, s5, s0
                  nop
                  srl          t1, s7, s6
                  addi         a0, a7, -630
                  xori         s8, gp, -1611
                  srl          s2, s8, t2
                  sltu         s2, s4, gp
                  sltu         t4, a7, t0
                  and          sp, s2, s3
                  sltiu        a4, gp, -1350
                  slli         s10, a6, 27
                  srli         s2, s2, 6
                  sll          s4, sp, a2
                  srai         ra, s9, 18
                  andi         t2, t5, 69
                  slti         s5, s11, 669
                  srai         s3, s9, 6
                  andi         t6, s9, 1688
                  sub          tp, a0, zero
                  add          tp, t3, a6
                  or           sp, s5, s8
                  add          a0, t3, a0
                  add          t3, a6, s2
                  addi         t5, a6, 1483
                  addi         s0, t0, 1507
                  sltiu        tp, t6, 2022
                  sll          s8, sp, s10
                  and          t1, t5, t1
                  xori         zero, tp, -727
                  or           t5, tp, a7
                  slti         t5, t6, 844
                  sltu         gp, tp, t1
                  nop
                  xor          s5, s6, a0
                  sll          ra, gp, a4
                  sltiu        gp, t5, 398
                  sltiu        a0, s8, -138
                  and          a1, a7, t6
                  add          a5, s5, s7
                  slt          s6, s6, s5
                  sltu         t2, s8, a3
                  addi         s3, t6, 270
                  slli         a2, a6, 23
                  sltiu        tp, s0, -1773
                  addi         s2, s11, -1095
                  lui          gp, 836013
                  sltu         gp, a2, a5
                  addi         t2, s6, 321
                  slti         sp, s2, -1561
                  srli         s5, s9, 29
                  nop
                  xori         a0, s3, 1060
                  sub          gp, a0, s6
                  slti         ra, s6, 741
                  xor          sp, a2, s8
                  nop
                  srai         t0, ra, 23
                  add          a5, s2, a7
                  nop
                  auipc        s6, 496277
                  auipc        tp, 582948
                  sub          tp, s2, s4
                  srl          s5, sp, s1
                  or           a1, s7, t1
                  addi         a6, t0, 1421
                  add          a5, a7, t4
                  andi         s5, sp, -169
                  or           s6, s8, a3
                  srli         gp, t3, 1
                  sub          s9, t3, a0
                  add          s3, tp, zero
                  slt          t5, t2, a0
                  srl          tp, a6, s11
                  srai         a6, t0, 19
                  lui          t5, 128454
                  auipc        a6, 755462
                  srl          s0, t6, t6
                  slti         s9, ra, -1455
                  xor          s10, sp, t2
                  xori         t3, s11, 1675
                  slti         s4, t2, -1543
                  xori         tp, sp, 1158
                  auipc        s11, 869859
                  sltu         sp, s8, a2
                  sltu         t3, t3, s7
                  slti         ra, s7, 396
                  or           a6, a0, s2
                  slli         a2, t4, 21
                  sub          gp, a2, tp
                  slli         a5, sp, 29
                  sub          gp, t0, ra
                  slt          s6, t4, t0
                  sra          s9, a1, a7
                  ori          s4, s1, -814
                  xori         a7, s7, 1688
                  or           a6, a1, s5
                  andi         s9, t2, 681
                  srl          gp, t1, t1
                  xor          zero, tp, a3
                  slti         t5, sp, -1188
                  nop
                  slli         a0, s1, 14
                  sltu         zero, a2, t5
                  sub          s10, t4, s0
                  sra          a1, gp, a6
                  nop
                  addi         a2, s2, 586
                  sub          s6, a5, s10
                  slti         gp, s2, -660
                  andi         a7, tp, -289
                  sra          a5, a3, zero
                  andi         t2, a3, 1593
                  sra          a1, a0, s1
                  and          s5, a5, s11
                  sub          ra, s1, tp
                  andi         s11, s8, -189
                  add          s9, ra, s5
                  slt          a1, s2, t4
                  srai         a1, a6, 12
                  auipc        a6, 658329
                  add          s2, s7, t4
                  sll          t4, a4, a3
                  sltu         a1, s2, s9
                  addi         t2, zero, -394
                  slt          t4, t2, t6
                  slli         s10, ra, 16
                  lui          s11, 586594
                  sltiu        t4, t2, -1273
                  srai         s8, a6, 8
                  andi         t1, s2, 196
                  slti         tp, s3, 954
                  auipc        a7, 256378
                  sltu         a0, t2, t0
                  lui          s9, 570130
                  sll          s0, s7, t4
                  xor          s5, s8, s7
                  add          a4, s0, t2
                  slti         s0, sp, -858
                  slt          s8, s9, s7
                  xor          s10, s6, t3
                  xor          zero, zero, s7
                  xor          s4, t4, a5
                  or           a0, t4, a0
                  xori         t1, a2, 1915
                  andi         s9, a2, 449
                  sub          s9, s3, t2
                  slti         t0, s11, -1106
                  xori         a5, s10, 1848
                  sltiu        a0, s2, -729
                  srli         t4, s10, 25
                  xori         zero, a2, 1410
                  ori          sp, zero, -760
                  sra          t1, t6, s3
                  sra          tp, t3, gp
                  ori          s4, a2, 984
                  srli         s5, t4, 22
                  nop
                  addi         t1, s3, 1546
                  slti         a1, a0, 1890
                  or           s6, t0, t5
                  addi         s8, s6, -52
                  srai         a7, tp, 1
                  auipc        s5, 344099
                  sltu         t0, tp, t2
                  nop
                  auipc        t1, 63610
                  sltu         s9, a4, ra
                  and          s5, zero, t0
                  srl          gp, t5, t0
                  or           s5, s9, a7
                  ori          s10, s3, 770
                  xor          t5, sp, a4
                  auipc        a6, 659581
                  or           a2, s7, a4
                  ori          s6, a6, 1741
                  sll          s8, a1, a6
                  xor          t6, a2, t5
                  add          t1, s8, a0
                  srai         s6, s6, 26
                  slt          t4, a7, a6
                  ori          tp, s7, 324
                  andi         s10, a5, -657
                  ori          ra, s1, -1047
                  xor          s11, sp, s8
                  srl          t0, ra, a0
                  and          t2, t5, s4
                  slt          s8, t2, gp
                  sltu         a7, a5, t1
                  nop
                  nop
                  sltiu        a6, a6, 324
                  xor          a1, a3, a7
                  sra          a6, t1, a2
                  add          t1, tp, t2
                  sra          s3, t5, a6
                  slli         t1, s10, 14
                  add          s6, a7, a2
                  slli         s10, t0, 27
                  sltiu        s8, sp, -595
                  xor          s10, s3, a4
                  sltiu        a6, s11, 963
                  sra          ra, s10, t3
                  slli         a0, t3, 6
                  sltu         t0, a7, s1
                  nop
                  lui          a4, 228647
                  srai         s4, a1, 7
                  xori         a6, tp, 332
                  addi         s11, sp, 523
                  slt          t2, tp, s9
                  sltu         t3, a0, s2
                  srl          t0, t0, a7
                  auipc        tp, 5921
                  nop
                  slt          s9, s6, t6
                  nop
                  sll          t6, a6, zero
                  sltu         s2, s9, a4
                  sltiu        a0, a1, 360
                  srai         a7, a5, 6
                  sub          a7, t3, t2
                  srai         s9, a7, 23
                  add          ra, tp, s9
                  sll          t1, s5, a3
                  sra          s2, s10, a4
                  xor          s4, t1, s3
                  slli         s4, t2, 17
                  sll          t6, t3, tp
                  slt          s11, s1, s10
                  addi         tp, t6, -1619
                  add          a7, a7, t0
                  and          t5, a0, zero
                  andi         s0, sp, 283
                  auipc        s5, 350063
                  slli         t0, s1, 26
                  srai         t6, s4, 22
                  ori          tp, t5, 1984
                  srai         s4, s0, 30
                  xori         s9, t1, 1335
                  sra          a2, s10, t3
                  auipc        t0, 373059
                  slti         t0, s0, 1307
                  slti         t4, a7, -920
                  andi         s10, a4, 372
                  lui          s8, 822846
                  nop
                  sll          t2, s9, a4
                  slt          s4, t2, s6
                  or           a0, t4, s10
                  slti         a1, s5, 177
                  sltiu        t1, zero, -1395
                  xori         a2, s10, -1452
                  srai         a4, s1, 6
                  xor          a6, t3, t3
                  xori         a4, ra, 1999
                  slti         a2, t1, -824
                  sll          t2, a6, a7
                  and          a1, a5, tp
                  sub          a5, a5, t2
                  srli         s0, s10, 7
                  sltu         t5, t4, a6
                  sub          a2, gp, s1
                  srl          s5, s1, t6
                  addi         s4, s9, 1193
                  sltu         tp, a3, s3
                  srl          zero, s3, a7
                  and          ra, s1, ra
                  andi         sp, t3, 852
                  auipc        a1, 284999
                  auipc        s8, 576708
                  xori         s3, a0, -1590
                  nop
                  ori          s11, t2, -551
                  nop
                  sll          s5, s8, s1
                  slt          a7, a7, t6
                  xor          s3, s5, a2
                  slt          gp, t5, s2
                  or           s8, s7, tp
                  sub          sp, t4, a4
                  slti         t2, s11, 42
                  and          tp, sp, a2
                  ori          t2, s8, 1459
                  xor          s4, a5, s1
                  auipc        sp, 1043457
                  slt          t4, a4, s5
                  or           t5, s8, t4
                  slli         a6, a2, 31
                  srli         t4, t4, 21
                  or           t0, t5, gp
                  sll          s8, zero, a2
                  add          s2, sp, t5
                  andi         s11, t5, -122
                  slt          t3, t5, t1
                  sltu         sp, s10, t4
                  nop
                  ori          a7, s3, -1565
                  andi         t5, ra, 1105
                  sltiu        s6, s3, 1340
                  sltiu        t4, a3, -1040
                  sltiu        ra, s9, -919
                  ori          a6, t2, 824
                  addi         s4, s9, -722
                  andi         t4, t4, 1289
                  srli         s9, a7, 16
                  srai         t4, s5, 23
                  xor          a5, a5, s10
                  xori         s5, t2, -1157
                  sll          sp, s9, sp
                  add          s3, s7, s7
                  andi         sp, a1, -1840
                  sll          t6, s5, a0
                  lui          a0, 465811
                  srl          a4, zero, s5
                  sra          sp, a7, a6
                  addi         a4, s6, 2028
                  sub          s2, sp, s0
                  sltu         s5, a0, gp
                  srl          t5, s1, a3
                  sltiu        s4, a1, -806
                  xori         s2, s0, 633
                  srl          s5, t2, t6
                  sra          s5, a0, t3
                  or           s2, s8, s8
                  sub          a5, s2, s3
                  sll          a5, s3, t3
                  sltiu        s9, a4, 1900
                  xor          a7, s4, s2
                  xori         t1, s0, -977
                  srl          s3, a0, s0
                  xor          t3, a0, t5
                  andi         t6, t2, 290
                  slt          a1, s1, t3
                  ori          a2, a1, -1199
                  ori          s6, t1, 1154
                  sltiu        s6, a4, 937
                  srli         t2, t5, 5
                  sltiu        a5, s8, 36
                  ori          a1, tp, -473
                  or           a5, t0, s5
                  xori         s8, s1, 1961
                  srli         s9, ra, 27
                  nop
                  srli         a2, s10, 18
                  andi         a4, t6, -1924
                  sltu         s8, s11, t5
                  srl          a0, s10, a3
                  ori          s6, gp, 1268
                  nop
                  sll          s5, ra, t1
                  srl          s10, t6, s5
                  xor          gp, tp, t2
                  lui          s0, 226547
                  lui          a1, 677572
                  srl          s10, s3, a4
                  sra          s2, a7, s3
                  sll          s8, t2, t0
                  sub          s2, tp, a4
                  slli         a2, s2, 31
                  sra          a2, s8, s5
                  andi         a0, s10, -1731
                  sll          a7, t5, s9
                  xori         s9, zero, 1106
                  andi         s10, s8, -1492
                  ori          t3, s8, -314
                  nop
                  slt          s11, gp, s6
                  srl          t0, t6, t0
                  srli         a5, a7, 14
                  sub          gp, sp, gp
                  slt          a4, s10, ra
                  and          gp, t0, s11
                  slt          sp, s10, s6
                  srli         a0, s7, 10
                  lui          zero, 800423
                  lui          gp, 630547
                  andi         t1, s8, -18
                  slli         t3, s7, 20
                  addi         s11, s0, 202
                  andi         t3, s0, -1083
                  nop
                  and          s8, t3, t2
                  srli         s5, t4, 30
                  slti         a6, a1, -219
                  slli         t5, a0, 1
                  xor          s10, a4, a1
                  nop
                  xor          s8, gp, s5
                  add          a7, zero, s2
                  srl          sp, s4, t4
                  srai         a6, t1, 7
                  andi         t5, a4, -643
                  xor          ra, t2, t2
                  or           a4, s4, t5
                  sra          a5, s3, t4
                  sltiu        a2, t0, 1613
                  sltiu        a2, gp, -33
                  andi         t0, t2, 642
                  ori          t2, t5, 1113
                  slti         zero, s10, 1925
                  sll          s8, t0, s5
                  slli         s10, s10, 16
                  lui          t2, 239310
                  sll          t3, s11, a6
                  and          s0, a6, s9
                  add          t0, a5, s9
                  addi         s5, t2, 1156
                  srli         tp, s10, 17
                  nop
                  andi         s6, a5, 2036
                  sltu         t3, t3, tp
                  srli         ra, a6, 16
                  sub          a1, s2, a6
                  slt          t6, a0, s9
                  slti         t6, s1, 1945
                  add          s11, a1, a6
                  auipc        s8, 768380
                  lui          a2, 758081
                  slli         s2, s8, 26
                  sll          s10, a2, a4
                  sltiu        t4, s4, -634
                  slt          a5, s3, s4
                  srai         a5, s0, 25
                  andi         t2, s8, -1268
                  and          s8, s11, t2
                  srai         s2, s5, 30
                  auipc        tp, 1016011
                  sltu         s2, s7, s5
                  xori         a4, s7, 1152
                  xori         ra, t5, 672
                  nop
                  or           s5, s7, s10
                  xori         a6, s6, -321
                  lui          a4, 413661
                  srl          s6, s6, s2
                  andi         zero, s0, -1541
                  ori          ra, ra, -977
                  auipc        s10, 12315
                  sltiu        t6, gp, -1964
                  add          s6, a6, s8
                  lui          s8, 600004
                  sra          t4, s2, tp
                  addi         sp, t4, 1500
                  slti         t1, sp, 1700
                  auipc        t4, 604649
                  sltiu        s0, a4, -628
                  add          s10, t4, s3
                  slti         t0, a0, -781
                  auipc        sp, 363822
                  lui          s11, 113681
                  and          a4, s1, s7
                  srli         t5, tp, 20
                  slti         s10, zero, -1697
                  slli         tp, s6, 19
                  xori         a5, a3, 1663
                  and          t1, s6, s11
                  xori         s5, a5, 1960
                  auipc        s8, 791827
                  srai         s10, s1, 15
                  srai         zero, s8, 2
                  or           a0, t3, s0
                  srli         t5, s3, 21
                  or           a0, t4, s6
                  lui          a1, 174666
                  sltu         s3, ra, s10
                  add          s8, s0, t5
                  srli         s6, a7, 5
                  sltu         a4, zero, s6
                  slti         s9, t6, -237
                  auipc        a5, 507438
                  srai         t6, ra, 18
                  lui          a0, 11488
                  xori         tp, s11, 149
                  xori         t6, t0, 1660
                  sra          s6, a0, t4
                  srli         s4, a5, 27
                  slti         t3, s7, 97
                  ori          s0, t2, -1043
                  sub          s5, a5, s11
                  ori          s9, gp, -1497
                  and          s8, s9, s0
                  ori          s2, s9, -1111
                  nop
                  andi         t3, s1, -99
                  sra          a6, s11, s4
                  slli         a2, gp, 3
                  xori         a1, a4, 1050
                  sltu         s10, a5, s3
                  and          gp, s11, a6
                  ori          s6, a2, 626
                  auipc        s4, 9517
                  slli         s9, s2, 14
                  sltiu        s4, a4, 1312
                  slt          gp, s6, a4
                  sltu         t2, ra, zero
                  slli         a5, s9, 16
                  sub          sp, t3, s9
                  sub          a0, s10, s5
                  srai         a4, zero, 7
                  auipc        a1, 992592
                  srli         a5, a4, 16
                  sll          s9, s6, s4
                  addi         ra, a3, 1972
                  srl          a5, t2, t5
                  xor          t4, s8, t1
                  auipc        s6, 5980
                  xori         gp, gp, 1365
                  ori          s3, s6, -382
                  srl          t5, t2, t0
                  auipc        t6, 1003155
                  lui          gp, 812791
                  sll          gp, a1, a3
                  or           s0, s0, s10
                  xori         a1, a6, 1675
                  sltiu        tp, s6, -531
                  slt          s10, a5, a5
                  auipc        t0, 285069
                  slti         s6, s10, 1309
                  xor          sp, t5, t0
                  or           s2, a5, s11
                  srli         a0, a2, 22
                  sub          t2, s6, t0
                  sub          t5, a7, a4
                  and          s6, t3, s7
                  sll          s3, s9, a1
                  sltu         s11, tp, a6
                  addi         a4, s5, -473
                  andi         a0, s1, 1799
                  srl          tp, s5, a5
                  srai         t2, s6, 4
                  sra          s5, t5, s3
                  slt          zero, s9, a7
                  and          s11, tp, s4
                  slli         t0, s11, 23
                  xori         ra, a1, -1643
                  auipc        s9, 785037
                  nop
                  add          s5, s0, s4
                  slt          s8, ra, t2
                  sub          t4, a6, gp
                  andi         gp, a6, 451
                  srli         ra, s2, 31
                  nop
                  sra          t4, s10, a6
                  xor          s8, s6, s8
                  or           s0, t5, s4
                  ori          s3, a7, 1161
                  lui          t1, 617405
                  srai         s2, s1, 15
                  addi         gp, t1, -84
                  srai         t3, t1, 13
                  slti         s4, s11, -869
                  slt          t1, a5, a5
                  or           sp, a4, s2
                  srli         s8, a4, 22
                  nop
                  slli         s3, s9, 13
                  ori          s8, a4, -576
                  add          s11, t1, t3
                  slli         a6, a2, 16
                  ori          s0, ra, 301
                  lui          zero, 649351
                  srai         sp, t1, 27
                  and          s5, a1, a3
                  srli         a4, s2, 26
                  sra          tp, t0, s3
                  sub          t2, s7, ra
                  andi         s9, gp, 1216
                  srli         s2, s9, 23
                  xori         t2, a2, -1265
                  addi         s10, s0, -666
                  or           s8, s4, a7
                  slt          a0, sp, s11
                  and          s5, a7, a1
                  slt          t3, a6, s4
                  xor          a1, t5, s7
                  add          t2, s8, t6
                  addi         s6, ra, -1350
                  or           s6, a0, s11
                  add          s9, a4, s6
                  ori          s9, s4, 540
                  sltu         tp, s1, gp
                  andi         s10, s6, -113
                  andi         s10, s8, 722
                  slli         zero, s8, 11
                  slti         s3, a7, 480
                  andi         ra, a2, 994
                  sltiu        t4, t5, 1180
                  ori          s3, s3, -1257
                  add          a0, t4, t5
                  nop
                  slli         zero, a0, 28
                  lui          s11, 526455
                  sll          ra, s11, t5
                  srl          a5, s9, t0
                  slti         a1, s8, -1693
                  slti         a1, zero, 288
                  slt          t5, s3, s9
                  lui          s2, 780563
                  xor          s0, s2, a7
                  srl          s10, s8, s0
                  andi         a0, t4, -245
                  ori          s0, t4, 221
                  or           tp, t1, t1
                  sra          s2, a6, t1
                  slti         gp, t2, 483
                  slt          s4, ra, tp
                  sra          t1, zero, s6
                  nop
                  srl          t2, a4, t5
                  add          a1, s9, gp
                  slti         a7, s1, 676
                  srli         zero, s0, 1
                  srl          a0, sp, tp
                  sll          s4, a2, s1
                  sra          s4, a4, tp
                  addi         s0, a2, 626
                  addi         sp, t3, -2012
                  sltu         a0, t6, t6
                  auipc        ra, 162602
                  ori          t5, t2, 1046
                  and          t1, t6, a0
                  srli         s8, s1, 4
                  addi         t3, s4, -2014
                  add          s2, s0, s10
                  or           a6, a2, t2
                  slli         s2, s5, 16
                  sub          t3, ra, s2
                  srli         a7, t3, 2
                  srai         t6, t0, 7
                  sub          t5, t3, tp
                  xori         a0, s7, -1620
                  addi         s8, t1, 1344
                  andi         s0, a2, 832
                  sub          t6, t0, s3
                  auipc        sp, 809865
                  addi         s9, s6, -1131
                  sll          s11, s10, a7
                  sltiu        s5, s1, -1457
                  srai         t3, zero, 5
                  and          zero, a2, s5
                  lui          a7, 602772
                  srl          t5, t5, s8
                  srli         t6, a3, 4
                  slt          s11, sp, t5
                  sltiu        s2, s7, 236
                  andi         s10, s1, -514
                  auipc        s6, 89277
                  slli         s3, s5, 5
                  nop
                  xori         gp, a2, -1897
                  srai         t5, s5, 8
                  xor          t4, a1, s9
                  srli         tp, t0, 29
                  sltiu        t4, sp, 1180
                  sub          s10, ra, s6
                  sltiu        s11, a2, -1314
                  nop
                  and          s5, s2, s5
                  sub          s2, zero, a3
                  xor          s9, t1, s0
                  andi         gp, t5, 790
                  and          s8, s1, s2
                  slti         t5, tp, 1718
                  srl          s6, s4, a6
                  srli         t1, tp, 18
                  lui          s0, 35691
                  slli         s4, t1, 13
                  sll          s11, t5, a4
                  sll          a1, sp, a1
                  sltiu        s11, t3, 81
                  srli         a0, t2, 0
                  xori         gp, a5, -910
                  auipc        a0, 431985
                  slt          s9, s2, a4
                  srl          a4, s2, t5
                  sra          t3, s6, s6
                  slti         s11, ra, -1349
                  sltiu        sp, t5, -1084
                  add          a6, t1, s4
                  slti         a1, a6, -130
                  andi         ra, tp, -758
                  srai         a4, s9, 26
                  slti         s6, t0, -1318
                  sltu         a5, tp, s3
                  slt          t4, s7, gp
                  slt          s10, s6, a6
                  and          t5, t2, sp
                  or           zero, t3, s9
                  nop
                  andi         s9, s0, -77
                  slli         t0, tp, 7
                  add          s0, t3, s11
                  xor          s10, s6, s8
                  xor          a7, ra, t2
                  andi         a5, t3, 945
                  srai         t0, t6, 4
                  sll          a0, a0, t6
                  sub          s10, a0, zero
                  addi         s11, t2, -1794
                  lui          t2, 254566
                  auipc        s2, 1001397
                  sltu         t2, s4, s11
                  addi         s6, t6, -1536
                  ori          s0, s0, 1276
                  xori         t3, s4, 1512
                  slli         sp, ra, 8
                  sll          s5, s3, a0
                  srl          s2, t6, t5
                  andi         t5, s11, 1396
                  slt          ra, a7, a6
                  srl          s10, s4, s9
                  andi         tp, s8, 776
                  sll          t2, s1, tp
                  lui          t4, 929300
                  slli         t3, s9, 11
                  sub          s6, ra, s1
                  add          a1, s11, t6
                  sltiu        t3, a4, -1367
                  sll          ra, gp, a0
                  sra          a1, a0, a4
                  auipc        a7, 174047
                  sltu         sp, s0, sp
                  sltiu        a4, a2, 52
                  sub          t5, s3, s7
                  slti         a6, a4, -430
                  sub          a5, s8, s5
                  xor          t0, s0, s0
                  sltiu        a1, a3, -1272
                  addi         t1, s3, 1729
                  auipc        sp, 454333
                  xori         a6, a7, 640
                  andi         s5, s2, 285
                  srai         t6, a6, 31
                  or           a7, t3, a5
                  and          ra, a2, s5
                  auipc        t5, 297473
                  srl          ra, s10, t3
                  slti         a2, t1, -1306
                  srli         t4, s10, 17
                  lui          a5, 217588
                  auipc        s11, 545867
                  add          a5, a6, gp
                  xor          s2, s4, s6
                  sltiu        gp, s9, -1045
                  xori         s8, s9, 41
                  ori          tp, s1, 797
                  add          t6, s1, t2
                  or           s10, s2, ra
                  nop
                  slti         a2, a4, 1225
                  sra          s0, t3, t2
                  lui          a1, 981125
                  slt          sp, sp, a3
                  xori         ra, s0, -1367
                  andi         s6, s2, -295
                  sltu         t0, s1, s3
                  ori          a7, a4, 1816
                  srai         zero, s7, 20
                  slli         s3, s2, 27
                  auipc        gp, 164122
                  sltu         s5, ra, t5
                  slti         a6, a7, -353
                  sltiu        s4, zero, 990
                  srl          a2, a1, s1
                  xor          ra, s4, s9
                  sra          gp, t6, a3
                  ori          a1, s9, 955
                  or           s2, a6, s11
                  sra          s11, t0, t4
                  srl          a1, a5, zero
                  addi         a7, s7, -664
                  srai         a5, a5, 10
                  xori         a4, ra, 1477
                  srli         a6, t5, 27
                  sltu         t6, s1, t5
                  or           s0, t0, sp
                  and          s5, s11, s3
                  xori         a4, a0, 846
                  sub          tp, a6, s5
                  xor          tp, t3, a0
                  andi         s0, ra, 1963
                  and          t2, s11, a3
                  auipc        s9, 291155
                  sll          t5, a1, s7
                  and          a6, s8, sp
                  sltiu        s9, s6, 725
                  xori         s8, s7, 1664
                  auipc        zero, 939369
                  add          a1, s6, s2
                  or           a1, ra, a2
                  slli         sp, t0, 21
                  srli         s6, zero, 1
                  and          s2, s0, t4
                  srai         ra, s9, 1
                  and          ra, a7, s3
                  addi         s6, a0, -1790
                  slti         a5, a7, 1522
                  sra          t0, s7, s11
                  slli         ra, a7, 27
                  srai         s10, s1, 11
                  sltu         s10, sp, s5
                  add          a4, a6, s9
                  xori         a7, s3, -1863
                  slt          s10, s2, a3
                  xori         a4, s1, 1007
                  auipc        t3, 202988
                  sra          s4, t6, t5
                  add          s4, s6, sp
                  sra          a4, a6, s3
                  srai         sp, a6, 23
                  ori          s10, t5, -116
                  and          s11, s3, tp
                  sll          s2, a2, a3
                  auipc        t1, 685271
                  ori          s5, a6, -1224
                  sltiu        s0, a2, 1618
                  slti         t6, t2, -1835
                  and          a7, a7, t5
                  slli         sp, t4, 10
                  srai         a4, t6, 2
                  srl          a0, a4, s4
                  nop
                  slt          a2, s7, t6
                  srli         t6, ra, 27
                  slli         s6, t5, 1
                  sra          t0, s3, a1
                  srl          t4, t6, s3
                  srli         s9, s9, 23
                  or           s2, s10, s0
                  and          t4, s9, a1
                  and          s5, t0, a1
                  srli         t3, a7, 27
                  slt          s9, s1, s10
                  sra          zero, t6, a4
                  xori         s11, s4, 1289
                  andi         sp, t3, 621
                  slt          ra, a0, s1
                  srli         a4, a4, 20
                  and          a5, t3, s7
                  sltiu        s10, ra, -896
                  ori          a0, t1, -446
                  srai         a1, s3, 11
                  sltu         s4, a0, s4
                  addi         s6, a5, 403
                  srl          s9, s6, s8
                  srl          gp, a6, a0
                  nop
                  xor          t2, a4, s9
                  ori          a5, tp, 44
                  add          a5, s9, s7
                  xori         s8, t3, -807
                  slt          a5, s1, a0
                  add          gp, s7, a0
                  sltiu        a1, a0, 1422
                  sltiu        s4, a7, 2040
                  lui          a5, 50330
                  sltiu        zero, a5, -1751
                  xori         s8, a4, -390
                  addi         t4, a3, -599
                  addi         t1, a1, 330
                  add          a6, gp, s8
                  xori         gp, s2, -770
                  or           a4, s6, s8
                  xor          s10, t2, a2
                  lui          s11, 174562
                  sll          t6, s1, a4
                  sra          s6, s4, ra
                  slt          t2, s7, a4
                  srli         zero, s11, 23
                  srli         a4, sp, 14
                  sltiu        s11, t6, -126
                  slt          t5, s2, gp
                  sll          s6, s3, a6
                  srl          t4, s2, a4
                  sub          a0, s10, s7
                  sll          s6, zero, sp
                  sltiu        tp, s11, -1798
                  sll          s2, a4, s11
                  xor          s3, s4, a6
                  srai         s6, s4, 6
                  andi         a4, t6, -1899
                  sra          s2, s9, s2
                  slli         gp, s8, 31
                  slti         a6, s1, 1398
                  and          a2, t4, a2
                  xori         s6, gp, -825
                  or           a1, ra, s11
                  srli         t6, s9, 22
                  srai         t3, s10, 8
                  lui          t5, 563696
                  auipc        s11, 530208
                  or           s9, a2, a0
                  srli         a0, s1, 21
                  lui          t3, 360155
                  srl          s0, tp, s7
                  xor          ra, s2, t5
                  add          a2, tp, a3
                  andi         t0, s3, 1165
                  xori         a2, s2, -1340
                  ori          a2, s7, 1142
                  sltu         tp, a7, s6
                  sltu         s6, s9, s9
                  slli         t3, a6, 21
                  nop
                  auipc        a7, 582230
                  sltu         a7, sp, t0
                  andi         sp, a3, 1843
                  slli         a4, a3, 31
                  xori         s2, s4, 1074
                  andi         s9, t3, 933
                  xor          a1, sp, a2
                  add          a1, t4, s9
                  nop
                  lui          s11, 378708
                  andi         t5, s4, -1244
                  srl          t0, zero, s8
                  addi         t5, s3, -1480
                  xori         s0, a3, 801
                  slli         ra, a1, 17
                  sub          s2, a0, zero
                  slti         s8, zero, -1268
                  auipc        s4, 737651
                  sltu         a4, s1, sp
                  slli         t5, zero, 10
                  xor          gp, t4, s5
                  addi         t1, t1, -989
                  or           t4, t3, a4
                  slti         zero, s1, -31
                  slli         gp, s10, 6
                  srai         zero, a2, 10
                  xor          s0, s0, s2
                  auipc        gp, 768337
                  and          s5, tp, a7
                  add          a4, s3, s0
                  sltiu        t2, s3, 1252
                  slt          a2, t2, gp
                  xor          s11, a3, t1
                  sra          zero, a2, s9
                  addi         s10, a2, 402
                  slti         s4, s7, 1300
                  nop
                  xor          s0, s5, s9
                  srai         s8, sp, 31
                  or           s0, s5, a6
                  slli         a0, s8, 15
                  sltu         s10, a1, s0
                  auipc        t5, 615227
                  srai         t5, gp, 25
                  xor          t0, a4, t3
                  auipc        s5, 484388
                  srl          gp, t4, s4
                  add          s0, s4, t1
                  xor          tp, a6, s1
                  slli         t1, t2, 8
                  or           s5, a4, t2
                  sltiu        t4, t5, -49
                  srl          zero, s4, s2
                  slt          a4, t6, t1
                  xori         t0, a5, 247
                  xori         tp, t4, -1128
                  sltiu        t3, t2, -775
                  sltu         s10, t3, a5
                  sra          s4, t1, a5
                  lui          gp, 104586
                  slti         a7, a5, -2039
                  sra          a0, s2, a5
                  nop
                  slli         a1, s8, 25
                  slt          s6, s6, s10
                  ori          t5, s4, 774
                  xori         ra, s10, -741
                  srli         s8, t4, 9
                  lui          ra, 944696
                  sub          s10, a2, s6
                  sll          a0, t4, a2
                  nop
                  or           s11, s7, t1
                  xori         s8, s2, -757
                  ori          s9, s1, -826
                  nop
                  ori          t1, a2, 859
                  sll          a7, ra, ra
                  add          a0, s3, t4
                  ori          t5, t3, -1694
                  slli         a5, gp, 29
                  sra          a6, s7, s2
                  slti         t3, s0, 838
                  srl          ra, s0, a7
                  slt          s3, s7, a5
                  or           t4, a4, t5
                  sub          s3, s6, s0
                  xor          t0, a6, s2
                  sra          zero, t5, s8
                  and          s0, s11, a4
                  srli         s6, s8, 23
                  srl          gp, t6, ra
                  srli         t2, s9, 29
                  and          s3, s7, a4
                  srl          a1, t5, t6
                  slt          s6, t6, t0
                  ori          a6, s6, 256
                  sltiu        t1, t5, -183
                  sltu         zero, t3, s4
                  xori         a7, s4, -1924
                  lui          t1, 395083
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s11, 0x767503e7
                  li           sp, 0xffffffff
                  li           t4, 0x80000000
                  li           gp, 0x97e5af29
                  li           s10, 0x0
                  li           a0, 0xffffffff
                  li           ra, 0x7e44166b
                  li           s6, 0xffffffff
                  li           s8, 0x80000000
                  addi         s8, gp, 1322
                  addi         tp, tp, 40
                  add          s10, s8, gp
                  addi         tp, t4, 242
                  sub          tp, s11, tp
                  add          s10, a0, t4
                  sub          sp, t4, ra
                  auipc        s6, 845725
                  add          s10, tp, s8
                  sub          s10, s10, s8
                  add          t4, a0, a0
                  auipc        tp, 702156
                  sub          s10, a0, s8
                  add          tp, a0, s8
                  add          s6, s11, tp
                  addi         a0, t4, 1593
                  add          tp, s10, s6
                  add          s11, sp, ra
                  lui          s6, 904892
                  auipc        ra, 412972
                  lui          tp, 559896
                  sub          ra, s6, s6
                  nop
                  lui          gp, 448196
                  lui          t4, 851693
                  sub          gp, s8, s6
                  nop
                  add          s6, tp, a0
                  lui          t4, 825933
                  lui          s6, 245187 #end riscv_int_numeric_corner_stream_16
                  sltu         t3, t5, a2
                  srli         s5, a3, 30
                  slli         t3, s4, 24
                  sll          t0, gp, s4
                  auipc        zero, 914405
                  lui          a5, 259975
                  add          a1, a0, s3
                  xor          t1, s7, a4
                  sltu         zero, a5, a2
                  sltiu        s11, t1, -1344
                  sll          a4, a0, t2
                  add          ra, s5, a7
                  xor          a7, a3, s7
                  and          s0, s4, s5
                  and          a6, sp, s4
                  srai         s0, tp, 21
                  addi         s5, t2, 1189
                  xor          zero, t5, s5
                  addi         a0, tp, -439
                  slli         sp, t0, 16
                  auipc        a6, 616485
                  sra          s5, a7, zero
                  and          a2, s8, s8
                  srl          a5, t0, zero
                  slli         s5, ra, 8
                  sub          tp, s2, s4
                  srl          sp, a7, s3
                  sltiu        t0, s10, 1161
                  slti         a2, a6, -646
                  sll          s5, s7, s6
                  slti         ra, sp, 1596
                  auipc        zero, 497375
                  sra          s10, t5, a5
                  srl          s10, t1, t4
                  slli         a6, s1, 5
                  auipc        tp, 522539
                  add          t2, gp, s8
                  sub          t0, a7, s7
                  xor          s11, a1, s5
                  lui          s6, 722723
                  slt          s2, s11, tp
                  sub          s3, s0, a7
                  slti         s3, t2, 269
                  slt          t4, a4, s11
                  srli         a1, tp, 14
                  nop
                  ori          a1, s6, -1296
                  auipc        a0, 584356
                  add          a2, a2, s11
                  xor          s8, t0, a4
                  slti         sp, s9, 663
                  sll          a5, a2, a1
                  slti         s2, t0, -115
                  slli         a7, s6, 1
                  andi         a0, a7, -107
                  sub          a5, a4, a5
                  xori         gp, gp, 1207
                  sub          t2, s0, s3
                  addi         tp, a3, -112
                  sltiu        s10, sp, -1976
                  or           a6, t6, a0
                  srli         t0, a7, 19
                  lui          t1, 838982
                  slti         sp, s1, -108
                  ori          a2, s9, -1852
                  or           a0, a7, t1
                  slli         s10, a7, 5
                  xori         gp, t6, -661
                  slt          t5, zero, s3
                  lui          t6, 108671
                  srl          a2, a5, s6
                  sltiu        tp, a6, -1686
                  slt          sp, t1, s5
                  lui          sp, 391064
                  auipc        tp, 976651
                  sra          s4, s10, s11
                  sll          a0, s6, a3
                  and          a1, a0, s6
                  ori          a7, s11, -2027
                  slli         s10, s4, 24
                  slti         a5, s6, 447
                  sra          a6, t2, a2
                  xor          gp, t1, t2
                  auipc        t3, 84789
                  and          t2, s7, s6
                  sll          a2, a3, s7
                  srai         a4, ra, 13
                  slli         a1, gp, 16
                  srli         ra, t6, 25
                  auipc        t1, 570154
                  nop
                  sub          s10, a6, s2
                  slti         s4, a2, 1839
                  add          t0, t6, a1
                  srai         a6, a6, 25
                  auipc        t5, 756121
                  slt          s10, tp, ra
                  sltu         a6, tp, a0
                  addi         s0, s8, 1943
                  sltiu        s10, tp, -754
                  sll          t0, a0, s2
                  sra          s11, s0, s8
                  andi         s0, gp, -1140
                  addi         sp, t5, 410
                  xori         s3, t0, 1511
                  nop
                  add          a0, s2, tp
                  srai         t5, a4, 19
                  sll          zero, tp, s10
                  sltu         tp, t2, t2
                  auipc        a1, 703034
                  sltu         a4, s5, t0
                  nop
                  andi         t6, s8, -1488
                  addi         sp, t4, -238
                  slti         a6, s1, 1339
                  lui          a4, 619860
                  lui          a2, 1028651
                  sra          sp, s6, a5
                  sll          s8, a2, t0
                  and          a2, a2, s0
                  andi         a6, zero, 1574
                  nop
                  auipc        s0, 849585
                  xori         a0, s7, 1553
                  srai         s2, ra, 26
                  sltiu        a2, t0, 1795
                  sll          a4, s8, s6
                  or           a6, s6, a5
                  sltiu        t1, a7, -1912
                  nop
                  sra          a6, s3, a0
                  xor          s3, t3, t5
                  andi         ra, a5, 1577
                  auipc        s0, 202132
                  srl          s0, s2, s11
                  add          sp, a3, t3
                  or           s0, t0, a7
                  xor          a5, tp, s6
                  slli         t6, a4, 7
                  xor          t4, a1, a0
                  srai         t2, s11, 24
                  lui          s10, 304350
                  srli         ra, ra, 5
                  andi         zero, t6, 1304
                  slti         s2, s1, -711
                  sltiu        ra, t4, -442
                  auipc        t0, 551758
                  sltiu        a0, s8, 188
                  sltu         s0, s5, s8
                  lui          s2, 890309
                  lui          t4, 52682
                  sltiu        t5, s2, -1564
                  sll          sp, s2, a5
                  slti         t4, s3, -449
                  srai         a4, a0, 4
                  andi         s3, s10, -977
                  auipc        a5, 312301
                  or           tp, s7, s10
                  srai         gp, t0, 3
                  andi         gp, a4, -1059
                  lui          s11, 990888
                  xor          t5, ra, s10
                  xor          ra, t3, s2
                  sll          a4, s6, t6
                  srai         t3, zero, 28
                  sll          a2, a2, s11
                  sltu         s9, s9, a5
                  srl          ra, s2, a5
                  sll          a1, s11, a7
                  ori          s10, s0, -777
                  lui          a2, 612863
                  srl          tp, gp, sp
                  slt          s6, a6, a5
                  slt          s11, t4, t1
                  auipc        t1, 908122
                  sub          s10, t5, s2
                  sra          s2, a5, t0
                  sltiu        s10, t5, 1197
                  ori          s8, a6, 1243
                  slt          s9, t5, s5
                  sltiu        a1, tp, -228
                  andi         t5, sp, 1344
                  nop
                  lui          t3, 362212
                  or           t5, sp, t6
                  slli         t1, gp, 13
                  or           s6, s0, s5
                  sll          s0, t5, s0
                  add          s10, tp, s6
                  sra          s0, s2, a5
                  xori         a5, s7, 144
                  srai         a4, s0, 18
                  srai         a2, a0, 12
                  andi         s2, sp, -845
                  ori          a4, s1, 1821
                  slt          s3, t1, s0
                  add          sp, a2, s6
                  auipc        t2, 390096
                  xori         t6, t2, 1510
                  xori         t6, s3, -512
                  ori          s0, a2, 281
                  sltiu        t6, ra, -663
                  sll          s3, s11, t1
                  andi         t5, t1, 1868
                  slti         a6, s6, -105
                  addi         s3, tp, -607
                  sltu         tp, s4, s2
                  lui          a7, 230556
                  and          s9, tp, s10
                  or           a6, s4, a5
                  or           sp, ra, t1
                  nop
                  ori          t6, a0, -38
                  lui          s11, 953737
                  sub          tp, s6, s9
                  sll          s6, s2, s8
                  sra          s3, sp, s6
                  sltiu        t1, s3, 1506
                  xor          t5, s10, s0
                  sll          s0, t2, a6
                  ori          s2, s6, 524
                  nop
                  slti         s2, t0, -975
                  slt          s2, t4, s6
                  xor          t1, s3, a1
                  sra          t2, sp, s3
                  slt          tp, s4, tp
                  addi         s5, a2, -324
                  or           s0, zero, s4
                  srl          s10, t6, gp
                  slt          t5, sp, t6
                  srl          t5, a7, t6
                  sltiu        s3, t1, -791
                  xori         a6, s5, 1325
                  slt          tp, s8, a4
                  sltiu        a7, a0, -1554
                  srl          a2, s6, s6
                  sll          a7, s10, s7
                  sub          a5, s9, ra
                  andi         gp, gp, 854
                  slti         a5, s1, -1369
                  xori         s2, s5, -1359
                  sltiu        t1, a2, 22
                  and          t3, a5, s4
                  srai         a1, s2, 12
                  xor          s8, s5, s0
                  sub          t0, t2, s0
                  or           zero, s5, zero
                  andi         s6, s10, -343
                  auipc        t1, 401094
                  lui          t0, 76618
                  srli         a6, s4, 1
                  and          a0, t1, gp
                  sub          a6, t5, t0
                  srl          a0, s4, a0
                  nop
                  sra          a4, t5, t1
                  and          gp, t0, s5
                  sltu         t1, ra, a0
                  sltiu        s6, a2, 2005
                  addi         s0, a6, -185
                  auipc        t2, 655865
                  lui          t1, 372426
                  addi         s6, t0, 23
                  sub          t2, s0, a2
                  sra          s3, a5, s1
                  srli         s2, s5, 10
                  nop
                  slt          tp, a7, a4
                  slt          s3, a5, t1
                  sltiu        t4, ra, -1206
                  add          s3, t3, a7
                  and          t0, s0, t2
                  srli         zero, s0, 30
                  srai         t0, s0, 0
                  sltiu        t0, gp, -1941
                  ori          t3, s6, -1415
                  slt          s10, s4, s6
                  sub          s5, t4, t1
                  slli         t4, t5, 9
                  sll          zero, s9, t5
                  auipc        a0, 19546
                  ori          s9, s11, -1716
                  andi         s8, s8, 1812
                  slt          tp, s1, a4
                  sll          a6, s1, t1
                  lui          zero, 268584
                  xori         t1, t6, -801
                  slti         s4, s11, 1685
                  sra          a0, t2, a5
                  srli         a6, a6, 15
                  and          a0, t4, t0
                  and          s3, s10, a7
                  sra          tp, t4, tp
                  xor          a4, a1, s8
                  addi         a7, s4, 173
                  sltu         t6, s9, s7
                  slli         s9, t2, 1
                  lui          t0, 186217
                  lui          s6, 949566
                  sll          a7, t0, s7
                  lui          a7, 697827
                  slli         t1, t6, 31
                  sll          s3, ra, s9
                  sra          t4, t2, t1
                  slti         t0, t4, -1578
                  sub          a0, s5, sp
                  slti         a4, a7, 1108
                  slti         a1, s7, -674
                  sltu         t3, tp, tp
                  add          a1, a1, a3
                  srl          a5, s0, a0
                  lui          t4, 906523
                  add          s0, s0, s10
                  srl          a6, a4, sp
                  xori         t6, s7, 970
                  srli         tp, a7, 19
                  sll          t2, a1, s1
                  sub          s5, s1, s11
                  and          s4, t0, t4
                  add          gp, s11, s2
                  auipc        a2, 135431
                  srai         t2, zero, 7
                  xori         a1, s3, 28
                  srl          s4, s10, s5
                  and          tp, a3, t0
                  srl          t2, a7, s6
                  slti         a1, t5, 530
                  lui          gp, 974726
                  slli         s3, s9, 26
                  sra          s4, s3, sp
                  srai         a7, a3, 9
                  sub          s10, s6, t2
                  slli         t1, s2, 25
                  and          t1, a3, s1
                  sra          s8, gp, a2
                  lui          t5, 174705
                  slti         t0, s7, -723
                  sll          tp, t4, s0
                  xor          t2, tp, s8
                  xor          s4, t0, t6
                  srli         t1, s11, 18
                  sll          t6, t5, t2
                  slli         s2, s4, 5
                  add          s3, s1, a4
                  sltu         gp, a1, s8
                  nop
                  addi         t5, ra, -61
                  sltu         a0, a6, s7
                  srai         s9, t2, 16
                  srl          a2, a4, ra
                  sub          s2, zero, t4
                  or           zero, t5, a3
                  xori         t1, s7, 430
                  lui          s3, 484686
                  or           t5, a1, tp
                  slli         a1, gp, 9
                  addi         sp, s3, 1645
                  add          a5, s10, s1
                  nop
                  slli         s6, a0, 2
                  and          s10, a7, s2
                  auipc        t4, 410057
                  sltiu        t0, a7, 282
                  sll          a7, s10, s11
                  auipc        t0, 510539
                  sll          t1, t0, t2
                  or           t1, a2, s10
                  or           a5, a3, s4
                  andi         zero, s9, 856
                  nop
                  xori         t5, s0, 1891
                  auipc        s3, 206180
                  sll          s10, s9, t2
                  sra          sp, s3, tp
                  slli         a7, s2, 24
                  sltu         t1, s4, s6
                  slt          t2, zero, s6
                  nop
                  sra          ra, t1, t0
                  xori         a2, zero, -1884
                  sll          ra, a7, sp
                  sll          a5, a7, tp
                  auipc        sp, 543910
                  and          a6, gp, t6
                  ori          s2, s7, -1920
                  srai         s9, a2, 29
                  sub          s11, s0, s3
                  sra          s3, t3, a5
                  sltu         a2, s4, s2
                  auipc        t6, 956128
                  lui          t6, 991175
                  auipc        s2, 816094
                  slli         a1, s8, 1
                  srai         a7, a7, 20
                  sub          s5, s8, s3
                  lui          s9, 365934
                  srai         ra, s11, 16
                  sub          gp, tp, t5
                  xori         sp, s11, 37
                  and          s8, s11, t0
                  sll          s6, a7, t1
                  addi         zero, t4, 1317
                  srai         s10, t2, 31
                  addi         a4, a2, 1739
                  ori          s4, a3, -1880
                  nop
                  slli         a7, s10, 16
                  xori         s8, s1, 370
                  sub          zero, s11, s7
                  slt          gp, t4, a6
                  add          a5, s11, s9
                  xori         s10, t6, 271
                  or           zero, a5, a1
                  lui          s9, 852556
                  addi         a5, ra, -527
                  and          s9, t0, a1
                  nop
                  srl          a7, s2, s0
                  or           a6, a3, tp
                  ori          t0, a3, 1546
                  addi         t1, a6, 112
                  add          a0, s10, a3
                  sltiu        s4, a5, 726
                  slli         t1, t2, 4
                  andi         t6, a5, -1435
                  slt          tp, s6, a3
                  xori         t0, s4, -478
                  slti         t4, a1, 766
                  or           s5, s2, ra
                  srli         t5, s3, 24
                  srl          s5, s4, t6
                  and          t1, a3, s7
                  srli         s8, a5, 9
                  sra          gp, s8, gp
                  auipc        s3, 257373
                  or           t2, zero, gp
                  slti         a6, t0, -1077
                  srai         a0, a6, 17
                  sltiu        t4, tp, 1375
                  sltiu        a0, a7, 1911
                  auipc        t3, 130377
                  sltu         t4, gp, a7
                  xori         t4, t1, -998
                  and          a7, t0, a5
                  add          s3, t0, a6
                  ori          s6, s8, -348
                  srai         a4, t2, 31
                  and          sp, a4, ra
                  add          s4, s2, tp
                  sll          t1, zero, s2
                  lui          t1, 962874
                  lui          s4, 236526
                  srai         ra, a1, 31
                  and          gp, gp, t6
                  auipc        a6, 296826
                  xori         t0, s0, 130
                  sub          sp, s3, a7
                  xori         tp, a7, -1276
                  sltiu        s4, s3, 1714
                  and          s10, s10, ra
                  slli         s5, sp, 6
                  slt          s3, sp, s9
                  srai         t3, s5, 15
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x80000000
                  li           t6, 0x80000000
                  li           s0, 0xcaa1d234
                  li           a0, 0x0
                  li           t0, 0x0
                  li           s5, 0x80000000
                  li           a4, 0x80000000
                  li           s6, 0xffffffff
                  li           s9, 0x2c0fb242
                  auipc        gp, 592548
                  lui          a7, 343928
                  auipc        a7, 997368
                  addi         a7, s6, -146
                  sub          a4, a7, s5
                  lui          s9, 389466
                  auipc        a0, 305623
                  auipc        s0, 958261
                  nop
                  sub          t0, a0, s6
                  add          gp, a7, a4
                  lui          s0, 691136
                  add          gp, gp, s0
                  nop
                  sub          s0, s5, s9
                  addi         t0, t0, 964
                  sub          a4, s9, s5
                  lui          gp, 628303
                  add          gp, a0, a0
                  add          s9, s0, t0
                  auipc        gp, 479251
                  lui          t0, 616493
                  sub          a4, t0, s9 #end riscv_int_numeric_corner_stream_12
                  sll          t5, sp, t2
                  sltiu        t0, s9, -768
                  andi         sp, s8, 1929
                  xori         a7, tp, -97
                  sltiu        t5, a6, -790
                  srli         a7, s11, 26
                  sll          s9, a6, ra
                  slti         a2, a5, 862
                  srl          t3, s5, s2
                  and          t2, a6, s11
                  and          a6, t3, s3
                  srai         a7, s7, 19
                  add          a5, t0, s4
                  xori         t3, s3, 1442
                  slti         t5, zero, -623
                  slt          a5, ra, gp
                  auipc        ra, 918153
                  srl          s9, t3, sp
                  slli         s11, zero, 18
                  sltiu        s0, s0, 903
                  auipc        s11, 307893
                  and          a7, a0, s2
                  xori         a6, a3, 1928
                  or           a0, t1, ra
                  slti         t6, t3, -1282
                  andi         t5, t4, -1238
                  auipc        ra, 98911
                  xor          t5, ra, a0
                  ori          t6, t4, -934
                  sltu         s3, t1, s11
                  sltu         s2, a7, t5
                  ori          a5, t0, 282
                  and          a7, a4, a3
                  and          ra, s11, s4
                  sub          gp, a2, s2
                  or           t3, a7, s11
                  slti         s9, t6, -986
                  andi         tp, ra, 443
                  andi         t6, a2, 518
                  sltu         a7, a2, a2
                  nop
                  sltu         a2, a3, a3
                  sltu         ra, a4, t0
                  lui          a1, 130139
                  srai         s11, t6, 29
                  and          a1, t6, t0
                  sra          t1, gp, s3
                  xor          sp, s10, a0
                  slt          s5, t3, s5
                  srli         s5, s5, 16
                  sll          s6, a1, a7
                  add          sp, a3, a2
                  srli         t0, t5, 18
                  ori          ra, a7, -390
                  sltu         s5, t6, t1
                  add          a6, ra, gp
                  srl          s4, s8, s0
                  nop
                  sub          s2, s0, ra
                  lui          t3, 544560
                  srli         gp, t6, 14
                  lui          s11, 36164
                  and          a7, sp, s2
                  srli         s5, s7, 3
                  and          t5, t4, t2
                  add          s2, tp, s11
                  or           gp, sp, s8
                  slli         s10, a3, 16
                  sltiu        a7, gp, 435
                  srai         t0, gp, 28
                  andi         zero, gp, 1385
                  nop
                  lui          t3, 476276
                  sltu         t3, tp, t3
                  ori          t2, tp, -1586
                  sltiu        s9, s8, 325
                  srli         a1, a4, 6
                  slti         a4, s5, -1658
                  xori         t2, a7, 1471
                  addi         s4, t3, 704
                  xor          s10, t0, s8
                  sll          ra, ra, sp
                  slli         a0, s2, 28
                  xor          a6, t2, a1
                  auipc        a6, 591301
                  add          a7, a5, s10
                  and          t4, s3, zero
                  addi         a6, tp, -1952
                  add          s0, a3, s3
                  sltu         t6, s6, t1
                  nop
                  slt          t6, a4, a2
                  nop
                  auipc        s6, 287531
                  slt          sp, a0, t3
                  ori          sp, s2, 1898
                  sra          t1, s11, t2
                  and          a6, t1, s5
                  and          a4, t1, s1
                  andi         a0, gp, 1245
                  auipc        s9, 215038
                  sll          t2, t4, s1
                  srl          sp, t2, gp
                  sltiu        s0, a0, 603
                  sll          s3, t2, s5
                  srai         s2, gp, 5
                  srli         t6, s6, 3
                  xor          s8, a2, s3
                  nop
                  sltu         a4, s9, gp
                  xor          s0, t6, a6
                  slt          s8, s2, s7
                  sll          a0, s11, s9
                  auipc        t6, 600572
                  and          s0, zero, s9
                  and          t4, s3, t0
                  slti         s4, s11, 1950
                  nop
                  sra          t0, tp, s6
                  xori         s0, a5, 1543
                  addi         s6, s0, -334
                  slli         t4, t1, 5
                  sub          t6, s6, t2
                  xori         t2, a6, 1742
                  srai         gp, t1, 17
                  slt          s9, a7, s1
                  sub          a5, t2, t2
                  slti         t4, a3, -1252
                  ori          s2, s3, -490
                  addi         a5, s2, -423
                  lui          s0, 570736
                  sra          s11, s7, s8
                  srli         a6, t6, 1
                  ori          s4, a0, -1874
                  srai         a2, sp, 24
                  lui          a5, 52454
                  ori          t3, a4, 1450
                  sltu         a5, tp, t1
                  auipc        s4, 737136
                  or           sp, a5, s0
                  andi         a2, t4, -316
                  addi         s10, s10, 494
                  andi         sp, t6, 137
                  srai         t0, s3, 24
                  and          a7, s4, s8
                  or           t2, s1, s10
                  ori          a6, s3, 1377
                  add          zero, a2, t6
                  add          a1, s1, s0
                  and          s8, s3, a2
                  lui          tp, 494515
                  add          s4, s5, a5
                  andi         s10, s0, -1988
                  and          a7, s8, s2
                  and          s6, s4, tp
                  sltu         t0, t0, s0
                  addi         s6, t1, 855
                  andi         s5, t6, 1455
                  auipc        s9, 709055
                  or           s5, t1, s9
                  slti         ra, ra, -798
                  nop
                  sub          sp, a3, s0
                  slti         s3, s8, 1293
                  sll          s0, s1, s9
                  andi         s2, a0, 1740
                  lui          s6, 992313
                  auipc        a0, 656134
                  andi         s5, gp, 1537
                  sltiu        t1, s10, -1463
                  xor          s8, s0, a0
                  srai         s11, s3, 20
                  sll          t6, s3, tp
                  srl          a4, a7, a3
                  sra          a2, a1, a0
                  srli         s8, s6, 28
                  xori         s2, a5, 1943
                  sub          a7, a0, t2
                  sub          s0, sp, s1
                  srl          t2, a3, a5
                  ori          a7, a0, -136
                  sltu         sp, s1, a4
                  auipc        gp, 56563
                  xori         t4, s10, -1572
                  xori         s0, s11, 1913
                  slti         a5, s11, -325
                  andi         a4, t6, 977
                  addi         a0, t4, 1624
                  addi         s10, a1, -450
                  sltu         s0, t2, a7
                  or           a2, s1, gp
                  lui          t5, 778077
                  sltu         a6, t6, s3
                  lui          s8, 714467
                  slli         tp, a5, 8
                  auipc        s6, 488801
                  nop
                  slti         ra, zero, -85
                  sll          t0, s9, s5
                  sltiu        s8, t0, -1357
                  or           gp, s4, t5
                  srli         t0, s9, 18
                  add          a7, s0, a1
                  sub          s4, s3, a4
                  auipc        t2, 507502
                  auipc        t6, 742898
                  sra          s5, ra, s11
                  andi         a4, ra, 222
                  add          a0, t3, a6
                  sra          sp, s2, s3
                  auipc        a2, 217006
                  sltu         s10, s2, gp
                  and          t3, s4, s7
                  srai         t6, tp, 19
                  slli         t3, gp, 4
                  srai         ra, s3, 15
                  sltiu        t6, a2, 833
                  sll          a7, s5, s11
                  ori          a5, a3, 1817
                  xor          s0, t6, t0
                  and          t2, s7, tp
                  slt          t2, a1, a1
                  andi         sp, sp, 1075
                  nop
                  or           s11, t1, t0
                  or           s5, t5, t3
                  and          tp, s4, s10
                  slti         a5, t5, -264
                  andi         tp, s7, -524
                  sltiu        s10, s9, 155
                  add          s0, s7, s10
                  slt          a6, a0, t1
                  sltu         a6, s10, t3
                  sll          zero, t0, a0
                  nop
                  ori          s2, s1, 1713
                  srli         t1, a6, 22
                  sltu         s0, s3, s3
                  slt          t6, a7, t6
                  nop
                  andi         sp, s5, -1555
                  sub          s2, s9, s4
                  sltiu        t1, s1, 695
                  addi         t4, t0, -30
                  sll          s11, s10, t1
                  slli         s6, a2, 7
                  auipc        t4, 631596
                  slti         s5, s5, 1981
                  sltiu        t4, s1, 754
                  ori          zero, tp, -223
                  srli         a4, a7, 20
                  sltiu        s3, tp, -842
                  andi         t4, a2, -1230
                  nop
                  xori         t0, a5, -1431
                  sltiu        gp, a4, 1870
                  srl          s10, t6, t4
                  slt          ra, s2, a7
                  sll          s11, a6, a4
                  andi         s9, t1, -258
                  andi         ra, s4, -1730
                  sltiu        t0, s5, -797
                  nop
                  lui          s10, 675305
                  xor          s3, a0, zero
                  and          s10, a1, s11
                  lui          s4, 868622
                  andi         a4, a5, -1610
                  and          a1, a2, s11
                  sltiu        t6, a7, 1578
                  addi         s8, s6, -1367
                  andi         s3, t6, 1355
                  andi         a4, a7, 1591
                  slli         s4, a6, 16
                  lui          s10, 800273
                  sll          a6, s10, s5
                  slli         a2, s0, 8
                  srl          t5, s8, a5
                  slt          tp, s1, a2
                  sra          s9, t1, a2
                  sltiu        a1, s6, 138
                  sll          t3, gp, s5
                  ori          a7, t2, 375
                  ori          a0, a2, 622
                  or           s5, t4, t6
                  sll          gp, t3, a2
                  and          tp, zero, s3
                  nop
                  and          t5, s11, t4
                  nop
                  srli         t1, a3, 9
                  or           s6, a3, s3
                  xori         s5, s8, -2037
                  addi         a0, t0, 1345
                  srl          a5, t2, ra
                  and          s6, s4, s0
                  srl          s10, a5, t2
                  nop
                  sll          s2, t2, gp
                  srli         a7, s11, 30
                  srli         gp, s7, 27
                  srai         a5, t1, 9
                  or           a4, s9, s4
                  andi         a6, s3, 1615
                  srl          s0, t6, a1
                  sub          t0, a3, a4
                  nop
                  addi         a1, t6, -331
                  sub          s2, ra, a5
                  xor          t3, a0, a3
                  sub          a5, a0, a7
                  or           zero, a0, gp
                  sra          a1, a5, t1
                  sra          s9, t1, sp
                  or           t0, a6, s1
                  andi         s9, t4, 401
                  or           a6, s0, s6
                  srai         tp, t1, 30
                  xori         zero, a0, 628
                  xori         t2, s0, -27
                  srli         s2, a4, 15
                  slli         t5, s4, 16
                  srl          t3, zero, t3
                  srli         s6, s7, 13
                  sra          t3, a7, s5
                  addi         ra, tp, 1072
                  addi         s2, a7, -1449
                  srli         a2, gp, 28
                  lui          t6, 559149
                  and          a7, a2, s5
                  andi         t3, a5, -420
                  sub          ra, s3, a5
                  xori         zero, s11, 124
                  srli         s8, tp, 3
                  ori          s6, s6, -1008
                  slli         t6, s7, 11
                  sra          gp, t4, t3
                  srl          s3, t5, t2
                  sra          a2, t4, ra
                  slti         s0, s0, 1411
                  xor          a5, t3, s11
                  slli         s9, t6, 3
                  nop
                  sltiu        s8, s2, 785
                  sra          t2, t3, s3
                  sltu         t1, t4, a3
                  srli         t6, a0, 5
                  sra          a5, t1, s10
                  xor          a0, a4, t4
                  sll          gp, s10, s0
                  ori          s0, t0, 1293
                  slt          a6, s4, s7
                  slti         s10, a6, 1277
                  xori         s9, a1, 788
                  addi         a5, s5, -651
                  sltiu        a4, a5, -1789
                  sub          s9, a5, gp
                  and          a1, s2, a1
                  andi         s0, a7, -1209
                  slt          t4, t4, s1
                  slli         t0, ra, 8
                  ori          a2, s1, -1751
                  andi         s5, t3, 1086
                  addi         t6, s1, 634
                  sra          gp, tp, t1
                  nop
                  andi         s9, a7, 941
                  andi         sp, ra, -1064
                  auipc        t2, 867769
                  srai         a5, a1, 6
                  slti         s0, a5, 1245
                  srai         t0, tp, 27
                  slli         a7, a1, 12
                  ori          a2, s9, -1149
                  sub          a0, gp, s6
                  slli         a2, t5, 15
                  and          a1, a2, s1
                  sll          s6, s7, t4
                  andi         t1, s9, 981
                  xor          a5, a1, s7
                  srai         a7, a4, 25
                  xor          s3, s4, s11
                  and          a2, a1, s1
                  addi         zero, s0, -1200
                  and          a6, s0, sp
                  sltiu        t0, s8, -148
                  add          s9, s6, a3
                  srli         tp, s10, 24
                  lui          a1, 54924
                  sltiu        t0, t3, -959
                  auipc        t4, 76094
                  slli         a6, s10, 16
                  sub          s6, t1, a7
                  sra          t0, s7, t5
                  andi         t4, a1, 752
                  addi         t6, a7, -1462
                  ori          t0, t5, -1956
                  add          a0, t1, gp
                  xori         a5, s8, -1188
                  sub          a1, s10, a3
                  srai         sp, s5, 27
                  sub          a2, a2, s8
                  srli         s5, t3, 24
                  sub          s8, s6, s11
                  sltiu        t4, s3, -1314
                  lui          gp, 788145
                  andi         s10, s4, -1903
                  andi         gp, a3, 1637
                  slti         a2, t0, -401
                  ori          a6, ra, -668
                  xor          s8, s10, s9
                  and          gp, gp, ra
                  nop
                  sltu         a7, a3, a5
                  xor          t5, a2, t1
                  xori         tp, t3, 468
                  auipc        a6, 58962
                  sll          gp, s3, s7
                  slt          s3, t1, s5
                  or           zero, s3, s5
                  addi         zero, t1, 1596
                  sltiu        t2, gp, -1282
                  slli         s11, a2, 20
                  slti         sp, s8, -1649
                  slti         t4, s4, 1076
                  and          s2, sp, t6
                  or           t6, t0, s1
                  auipc        s2, 751583
                  xori         a0, a4, 1503
                  sub          zero, t4, s10
                  srli         t5, s0, 24
                  sra          a4, a6, a3
                  or           s4, t4, sp
                  slti         s6, a4, 199
                  lui          a0, 145773
                  xori         s5, a0, 1294
                  sub          a1, s4, t4
                  add          a7, s6, s6
                  add          s11, t1, s8
                  sll          a7, s6, a0
                  xori         a1, t6, 99
                  or           ra, t6, s8
                  sra          a6, s0, s3
                  andi         s5, t3, 1080
                  and          t6, a6, t3
                  andi         s10, s8, -391
                  sltu         a5, a5, s6
                  addi         s8, gp, 1000
                  slli         tp, tp, 15
                  addi         t6, s11, 456
                  srl          t2, ra, t5
                  addi         t0, s2, 1176
                  nop
                  lui          a5, 376978
                  srl          t5, a6, t2
                  auipc        ra, 211385
                  slt          t6, s11, s7
                  and          t3, s3, a6
                  nop
                  srli         s3, ra, 10
                  slti         a7, a5, 819
                  xor          s6, s2, s4
                  andi         s8, t0, 521
                  slti         s2, tp, -488
                  lui          s2, 170890
                  slti         t0, s10, 53
                  addi         a1, sp, -1905
                  srl          s6, a1, t1
                  slti         tp, s5, -1541
                  and          a7, s7, zero
                  lui          s6, 361777
                  lui          t3, 876702
                  srli         a4, a5, 22
                  nop
                  and          s9, s7, s11
                  sltiu        t2, s2, 1903
                  sub          s6, t6, s0
                  auipc        ra, 169322
                  sll          t6, s11, a5
                  lui          a2, 106742
                  xori         a4, t4, 647
                  andi         tp, t6, 746
                  slti         tp, a5, -1670
                  ori          s5, a6, 1233
                  andi         a2, a3, -1512
                  sub          s0, t0, a2
                  sltiu        s0, a0, 75
                  xor          a6, gp, s7
                  add          s10, a0, s10
                  xori         t5, a7, 712
                  add          s11, s0, a0
                  lui          tp, 960219
                  slti         a0, t1, 1751
                  slt          s8, gp, a3
                  xor          t1, t2, a7
                  addi         s8, sp, -1851
                  or           a6, s11, t4
                  nop
                  sltiu        a6, t2, 1693
                  sra          s3, s11, s2
                  andi         s8, s3, 1356
                  slti         a5, a2, -320
                  srli         s8, s8, 17
                  ori          t6, a5, -1060
                  srl          a7, tp, a4
                  auipc        t6, 862791
                  xori         s3, s2, 1722
                  slt          s9, s9, s0
                  or           a4, s2, gp
                  slli         s5, s7, 6
                  add          t5, s9, t4
                  srai         a5, t6, 10
                  andi         s10, ra, 553
                  or           s0, ra, tp
                  auipc        s9, 155430
                  and          t1, zero, a5
                  or           a0, s4, s0
                  xori         s9, s3, -650
                  addi         ra, s11, 1259
                  sub          a0, a0, t3
                  ori          s11, gp, 825
                  auipc        t0, 460302
                  sra          s10, s10, ra
                  slti         a4, t2, -100
                  and          a5, t6, a4
                  srai         t3, t3, 27
                  xor          s8, a0, s5
                  ori          a2, s10, -1629
                  add          a5, sp, a7
                  slli         s10, t1, 12
                  auipc        a6, 327835
                  sltu         a2, t6, s9
                  srli         s8, a0, 0
                  auipc        a7, 377278
                  slt          s8, tp, a4
                  slt          ra, s2, ra
                  srl          s8, s6, t4
                  slti         s4, a4, -649
                  andi         s3, s1, 1431
                  slli         s8, s8, 25
                  xor          ra, t1, s9
                  slt          t0, sp, s2
                  xori         a4, t2, 659
                  srli         s3, a3, 8
                  srl          a5, s6, s2
                  andi         a4, t0, -872
                  sltiu        s9, s1, 529
                  sra          t5, t4, s11
                  srai         a0, s11, 17
                  addi         zero, s5, -116
                  slti         ra, s9, -1481
                  xori         t0, s4, 1345
                  and          s10, s3, s2
                  andi         s0, t0, -1016
                  or           a7, s6, a7
                  slti         s6, a4, 1875
                  auipc        a7, 960009
                  srli         a2, t3, 10
                  srl          s5, tp, a5
                  slt          t3, sp, s11
                  slt          t4, t0, s10
                  ori          a5, t6, 1839
                  xor          s10, t0, a3
                  ori          s6, s7, 1709
                  and          ra, a6, s10
                  xor          a2, t1, a1
                  addi         t5, s1, 1589
                  sll          s3, s2, s9
                  lui          t2, 373
                  slti         t4, t6, 2003
                  slti         tp, tp, 1127
                  slt          a0, a2, s10
                  lui          s3, 150225
                  slt          s0, t2, s8
                  slli         s5, a5, 19
                  sra          t5, s3, a6
                  slt          t0, gp, a7
                  add          t4, sp, t5
                  nop
                  or           a5, tp, sp
                  ori          ra, a1, 1245
                  andi         tp, gp, -795
                  sll          t6, s11, zero
                  sltu         t4, s1, s3
                  srli         a0, a5, 19
                  sra          t3, t0, a4
                  xor          s8, s5, s1
                  sltu         a1, s2, t4
                  sltu         zero, s1, s4
                  sll          t0, t0, t6
                  srai         s9, s2, 25
                  slt          sp, a0, a0
                  sra          gp, a0, t3
                  srli         s10, a6, 29
                  nop
                  sll          a4, zero, s10
                  lui          s2, 981292
                  slt          s4, s6, sp
                  slti         s2, s2, 205
                  srl          a6, s2, t2
                  sub          s8, zero, a6
                  sll          s4, t1, a7
                  xori         s2, a5, 549
                  slli         s2, s8, 28
                  slti         sp, a7, -435
                  sra          t6, t2, a4
                  slt          tp, s8, t3
                  slli         a7, t1, 3
                  andi         t0, a4, 798
                  xor          t5, a4, t0
                  and          a0, s1, a1
                  lui          a7, 185855
                  or           s11, a2, s4
                  nop
                  andi         a0, tp, -1471
                  ori          t2, s8, 143
                  slti         t0, ra, 1848
                  addi         s3, a7, -573
                  sra          s4, s10, t1
                  xori         tp, t2, 1403
                  xori         t1, a1, 8
                  srli         t1, t1, 30
                  addi         s3, s6, 882
                  sltu         tp, t1, s3
                  andi         s8, s11, -1256
                  xori         t3, a2, 1396
                  lui          t6, 36760
                  sltiu        s9, a3, 882
                  ori          s8, zero, -1001
                  and          s6, s2, t1
                  ori          t5, t1, -768
                  ori          t2, s3, 649
                  srai         s4, ra, 13
                  add          a0, a4, t1
                  and          a5, t0, s11
                  srl          s10, a2, a5
                  xori         s10, t4, -322
                  xor          s2, gp, a4
                  sub          t2, sp, t5
                  srl          t1, a5, s9
                  sra          s10, tp, a3
                  lui          a2, 740334
                  add          a5, a2, s7
                  slti         t2, t0, -1704
                  sll          t0, t6, a5
                  srai         s4, s9, 5
                  slti         a6, sp, -1897
                  addi         t2, t0, -1665
                  sub          s5, s5, gp
                  andi         t2, s11, 120
                  sltu         s2, s1, t0
                  auipc        t5, 1024527
                  slli         t1, t6, 0
                  sll          t5, a1, s6
                  nop
                  nop
                  slt          tp, ra, s4
                  add          s0, s4, s3
                  sltu         sp, a3, ra
                  srl          s6, a6, a1
                  srl          t5, s0, gp
                  sltiu        a2, s3, -1459
                  srl          gp, s1, t6
                  sra          a7, a3, s0
                  ori          t6, s8, 349
                  ori          t4, a7, 1372
                  add          t6, zero, t1
                  xor          a5, t2, t5
                  or           tp, a4, s10
                  sltiu        s6, s0, -1508
                  srai         s9, s6, 0
                  auipc        a4, 469697
                  slt          s9, s7, s6
                  xor          s2, s11, s0
                  and          s2, s8, a2
                  addi         ra, t2, 1718
                  andi         a4, s4, -425
                  andi         s0, s0, 532
                  sub          s3, t2, t2
                  srl          a2, ra, s1
                  nop
                  xori         a6, t0, -902
                  ori          s0, gp, -1119
                  srai         a5, s8, 23
                  auipc        t4, 1011124
                  ori          a2, a3, 515
                  nop
                  sra          t5, a3, t6
                  auipc        s4, 482309
                  nop
                  xori         gp, zero, -601
                  srli         s2, tp, 9
                  lui          s0, 803555
                  xor          t0, gp, s10
                  and          a1, gp, a0
                  slti         s10, s3, 1123
                  or           a0, t3, a0
                  andi         s10, gp, 445
                  srl          sp, t5, t6
                  srli         s6, t2, 23
                  nop
                  sltiu        s0, t0, -1571
                  slti         s2, t6, 341
                  sub          t1, a7, s4
                  srl          sp, a7, t2
                  slli         s0, a1, 31
                  sra          a0, s2, s11
                  srl          t4, a6, t0
                  ori          a0, s4, 1546
                  lui          t1, 857371
                  slt          s9, a1, a2
                  sltu         a7, ra, a6
                  andi         a2, a1, 570
                  addi         zero, s7, -1600
                  slli         t4, t3, 31
                  slti         a7, a3, -564
                  srl          t0, s6, a4
                  srai         t0, t6, 6
                  andi         s4, s7, -117
                  slli         a5, zero, 24
                  or           s8, s9, t5
                  srli         t4, s9, 26
                  srl          s10, s2, tp
                  slti         a2, a2, 1744
                  add          t3, s3, a2
                  srl          s5, a0, s0
                  slti         s0, t5, 1297
                  auipc        gp, 204529
                  and          s2, s4, s4
                  xor          t3, a6, s1
                  xor          a2, s8, s0
                  srai         a1, a7, 27
                  addi         a7, a4, 763
                  sltiu        gp, sp, 1390
                  lui          a2, 683980
                  slt          a5, a1, s9
                  slti         s2, a5, -1722
                  sltiu        ra, t6, -1545
                  slt          s6, t6, s2
                  nop
                  sll          s8, a5, a4
                  andi         s11, t5, 588
                  addi         a1, zero, -262
                  srli         a6, tp, 25
                  slti         t2, ra, -11
                  slt          ra, s0, gp
                  srl          zero, a0, s4
                  add          s2, a4, t1
                  sub          s0, s1, a3
                  srai         gp, a0, 0
                  sub          s2, tp, a3
                  add          a5, t3, s10
                  slti         a2, s5, -483
                  addi         s0, ra, 1018
                  auipc        s8, 238593
                  srl          a1, s5, a1
                  slt          s8, t0, t5
                  srl          t2, a1, t4
                  sub          a4, gp, gp
                  srai         a1, t4, 29
                  sub          s0, s11, a6
                  andi         sp, a6, 242
                  slli         s3, s8, 10
                  slt          t3, a1, a0
                  addi         s3, zero, -533
                  sll          t1, t2, t4
                  slti         a5, s3, -1556
                  slti         s0, t4, 521
                  and          t4, s3, a6
                  slli         gp, t1, 2
                  ori          s9, a2, -924
                  xori         a7, s2, 1663
                  slt          s8, s8, s3
                  lui          t3, 370095
                  sll          s6, ra, s1
                  sub          s0, a5, t2
                  sra          s2, t0, zero
                  xor          a4, t2, gp
                  ori          a7, t5, -608
                  xor          ra, s7, s4
                  srli         t2, tp, 25
                  addi         sp, t2, -778
                  or           s0, zero, a5
                  andi         t5, t4, 225
                  sra          s4, t0, a4
                  andi         t3, ra, 554
                  sub          s10, gp, a5
                  auipc        t5, 747964
                  srl          s0, t3, zero
                  sub          t0, t1, gp
                  sub          s10, s3, t1
                  nop
                  srli         s2, s10, 28
                  srl          s4, sp, a7
                  auipc        a4, 647205
                  sll          s4, s10, t6
                  sltiu        t5, gp, -1457
                  nop
                  nop
                  slli         sp, t5, 31
                  sltiu        gp, s9, 330
                  addi         sp, s10, -917
                  slti         s4, a6, 1797
                  addi         tp, a4, -1588
                  sra          s9, a5, ra
                  srai         a2, t4, 11
                  slt          s9, t5, s9
                  lui          sp, 415114
                  srli         tp, sp, 21
                  sll          s0, s7, t3
                  srai         s9, a7, 23
                  sub          s8, s4, a7
                  slt          t6, s11, s10
                  srai         s6, t3, 10
                  sltu         s10, gp, a0
                  add          a2, t3, a5
                  andi         s3, t4, 99
                  slt          a5, s0, t4
                  and          s6, s11, s9
                  sll          sp, sp, s5
                  nop
                  sub          s4, a6, t3
                  addi         zero, s11, 380
                  sltiu        t1, a7, -1138
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t3, 0x2b1cfa73
                  li           a4, 0x0
                  li           s10, 0xffffffff
                  li           s5, 0x0
                  li           a5, 0xf1e1493b
                  li           gp, 0xffffffff
                  li           s4, 0x0
                  li           t4, 0x92c1154e
                  li           ra, 0x38da40e5
                  lui          t2, 112545
                  nop
                  addi         t4, t3, 878
                  addi         a5, a5, -1057
                  addi         a4, t3, -1577
                  addi         t2, s5, 457
                  add          t4, gp, s4
                  nop
                  auipc        s10, 167949
                  sub          ra, a5, gp
                  auipc        gp, 333709
                  lui          gp, 831303
                  add          s4, t4, s5
                  nop
                  auipc        s5, 8
                  nop
                  nop
                  lui          t4, 145589
                  add          a5, t3, ra
                  sub          s5, t4, gp
                  sub          gp, a5, s5
                  addi         a5, a5, 863
                  add          t4, a5, s5
                  add          a4, gp, a4
                  add          s10, a4, t2 #end riscv_int_numeric_corner_stream_0
                  andi         gp, a3, 465
                  sltiu        t4, sp, 1492
                  add          t6, ra, a3
                  sra          sp, a7, a1
                  srl          s9, t4, gp
                  srli         s0, a5, 24
                  and          s10, t4, t1
                  sltu         t5, s5, a5
                  nop
                  or           s4, s11, s5
                  srai         a5, a7, 18
                  slti         t2, s1, -527
                  nop
                  srl          s2, tp, t6
                  slti         t1, s5, 1198
                  or           t5, tp, s4
                  addi         t3, s7, 1307
                  and          sp, s4, s8
                  slt          a2, s3, s9
                  and          t6, s4, a0
                  and          a4, t2, s8
                  srli         t6, s3, 31
                  auipc        s0, 357498
                  srai         s9, s5, 30
                  or           zero, s1, t2
                  sltu         t0, sp, a0
                  sltiu        s2, t4, -634
                  add          t5, a7, ra
                  add          s4, a1, t0
                  add          s11, zero, a2
                  or           gp, a3, a1
                  lui          s6, 587500
                  sub          s0, t3, s8
                  nop
                  or           sp, a3, a3
                  sub          s3, a4, s3
                  xor          s11, s0, a1
                  sltiu        a1, a6, 1873
                  addi         t5, zero, 128
                  auipc        s6, 1021569
                  xor          t4, s10, t6
                  srl          s8, t1, t6
                  slli         s2, t6, 14
                  xori         s2, gp, -279
                  xori         s6, s4, 991
                  nop
                  auipc        s9, 630011
                  sub          s2, a5, s1
                  add          s6, s6, s7
                  addi         s3, ra, -1866
                  sltu         t4, t4, a2
                  sltiu        t0, t3, 1092
                  and          a2, s7, s7
                  slli         a5, s8, 23
                  srli         s8, s10, 9
                  addi         a4, s4, -1858
                  add          t5, t6, s4
                  xori         a2, tp, -1085
                  sub          ra, s10, t6
                  sltu         a4, a3, ra
                  slli         gp, t2, 26
                  srl          a7, a5, tp
                  add          a5, t6, s3
                  addi         s9, a3, 1018
                  add          a0, s6, a1
                  slti         zero, s1, -621
                  slli         s10, s11, 19
                  sll          t1, a0, s10
                  srl          s11, s6, s2
                  sll          s10, s3, a3
                  lui          gp, 581765
                  andi         s3, a6, 393
                  andi         t0, s4, -1540
                  xor          s6, s2, ra
                  or           t6, a3, t6
                  sll          a2, a0, s9
                  andi         t5, t6, -1425
                  xor          s2, gp, s2
                  sltiu        sp, s8, -1558
                  ori          s10, s5, -1674
                  sltiu        t0, ra, 1942
                  nop
                  sltiu        sp, a0, 1197
                  sll          s6, t1, gp
                  and          gp, a6, s8
                  nop
                  srai         a5, t4, 30
                  ori          s3, t4, -1710
                  lui          gp, 812902
                  srl          t1, a4, t0
                  sra          t2, gp, gp
                  srai         t0, sp, 21
                  auipc        s8, 94626
                  andi         t1, tp, 1364
                  xor          tp, s7, a0
                  and          a4, s0, s3
                  ori          s9, sp, -1383
                  addi         zero, a2, -923
                  sub          s8, a7, ra
                  sub          t0, t5, s8
                  xori         tp, s2, 879
                  slti         t4, a0, -1102
                  sra          a4, s6, s3
                  nop
                  or           t5, t1, t4
                  sltiu        s3, t2, -499
                  srai         a2, a2, 22
                  addi         s8, s8, 580
                  slti         tp, s4, -302
                  addi         ra, t2, 1400
                  srli         t1, s6, 1
                  nop
                  sub          a0, t3, s11
                  or           a7, s0, a7
                  lui          a4, 1002421
                  and          s4, a7, sp
                  auipc        t6, 820076
                  lui          s6, 773159
                  sub          t2, t0, s1
                  slt          s5, s9, s11
                  slti         s8, t2, -442
                  auipc        s0, 685024
                  xori         a4, s6, 1209
                  or           s4, a2, a0
                  slti         t4, s7, 398
                  and          s0, a7, s5
                  andi         t1, a5, -155
                  and          tp, s9, s7
                  slti         s2, s9, -344
                  slti         a1, s10, 1161
                  sltiu        s0, t5, -156
                  xor          t1, a2, a4
                  srl          s10, tp, s5
                  addi         a5, s3, 1492
                  sra          t1, t1, s0
                  lui          t4, 192290
                  addi         a4, a5, 1552
                  addi         s10, gp, -338
                  sltu         a5, tp, t0
                  srl          t0, s2, gp
                  srl          gp, s8, a1
                  andi         t5, a1, -1402
                  sltu         zero, a6, t4
                  addi         t0, t1, 143
                  sltu         a6, t5, s0
                  addi         s2, a7, 284
                  auipc        sp, 108921
                  nop
                  add          a2, a7, ra
                  srai         a0, a5, 30
                  slli         a1, s4, 11
                  srli         t6, gp, 31
                  sll          a2, t0, t1
                  slli         s4, t6, 14
                  srli         t4, a0, 18
                  sll          a2, t0, s2
                  sub          t3, ra, s1
                  or           tp, s10, s7
                  srli         t6, t0, 8
                  srl          ra, a0, s5
                  xori         s10, s1, -17
                  addi         a6, a0, -2002
                  slt          gp, t1, s0
                  add          t4, t3, a2
                  sll          t6, t1, s9
                  nop
                  lui          s10, 330873
                  sll          tp, ra, tp
                  auipc        s4, 556469
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t6, 0xffffffff
                  li           sp, 0x80000000
                  li           t5, 0x831e6744
                  li           t2, 0x87564658
                  li           ra, 0x86009373
                  li           t0, 0x80000000
                  li           gp, 0xffffffff
                  li           t1, 0x80000000
                  li           s5, 0x310584a2
                  add          s5, sp, a7
                  nop
                  addi         t0, sp, -1692
                  auipc        t2, 265727
                  auipc        t5, 91431
                  lui          t1, 536990
                  nop
                  nop
                  sub          sp, t6, a7
                  add          t1, t1, t6
                  sub          t0, ra, t2
                  nop
                  auipc        t2, 665838
                  addi         ra, t1, 1740
                  addi         ra, ra, -1409
                  lui          sp, 746743
                  lui          t0, 187821
                  addi         t6, a7, -977
                  sub          gp, t2, t2
                  add          t6, t5, t5
                  add          a7, sp, sp
                  lui          a7, 912436
                  lui          t2, 269808
                  addi         s5, a7, 1458
                  nop #end riscv_int_numeric_corner_stream_11
                  xor          a1, sp, t0
                  sra          t6, s6, s11
                  addi         s4, gp, -855
                  slt          s0, t0, a1
                  sub          zero, t6, s5
                  sltu         sp, s10, s5
                  srai         t5, a2, 15
                  srai         t3, s9, 28
                  and          sp, a1, s11
                  or           a7, a1, a1
                  lui          s5, 727183
                  ori          t2, a1, -1899
                  sltiu        s10, ra, 993
                  sra          a7, s2, t5
                  nop
                  sub          t1, s5, a4
                  sub          t6, gp, s1
                  xori         tp, tp, 752
                  slli         a2, s4, 22
                  sltiu        a7, ra, -845
                  andi         tp, t6, -469
                  andi         t5, s1, 1843
                  sra          s5, t1, t6
                  xor          t4, t1, t3
                  xor          ra, a6, zero
                  srli         s5, t1, 8
                  srli         s11, zero, 4
                  addi         s5, s8, 328
                  srli         s10, s0, 25
                  slt          ra, zero, s10
                  srli         a5, t5, 22
                  auipc        t4, 203129
                  sltiu        gp, tp, 784
                  ori          s9, ra, 1338
                  auipc        a5, 108456
                  srai         a5, a5, 9
                  add          sp, tp, a6
                  andi         s3, zero, 1677
                  ori          s3, t4, 1027
                  sll          a6, s0, s1
                  addi         s8, tp, -940
                  slli         ra, s4, 17
                  auipc        a6, 345965
                  srli         s6, t5, 23
                  sltu         ra, t1, t3
                  nop
                  nop
                  xori         a7, a5, -367
                  or           s5, s1, s6
                  sltu         a4, s11, ra
                  add          t5, t3, t1
                  sltiu        sp, tp, -1773
                  slti         t3, s7, 1162
                  srai         s8, s6, 16
                  sra          a7, t5, a0
                  xori         s10, s2, -1561
                  and          t0, t4, s11
                  srai         t2, s11, 25
                  xori         tp, s2, 1767
                  sltu         t1, t3, a6
                  sltu         t1, s0, s8
                  ori          t4, t1, -1661
                  andi         a6, t0, 1492
                  lui          zero, 934844
                  ori          s5, t1, -251
                  xor          s2, s11, s11
                  srl          a2, a0, t3
                  addi         sp, sp, 1470
                  or           s0, tp, s8
                  slt          ra, a0, s2
                  sra          a0, ra, a1
                  slli         t3, s7, 15
                  andi         t2, s1, -1594
                  sltu         t6, s5, s6
                  slt          sp, t6, s1
                  sltu         tp, ra, t6
                  or           ra, s4, ra
                  lui          gp, 968237
                  nop
                  sltiu        a4, a4, -367
                  xor          s9, a1, a0
                  add          a1, a4, a1
                  slli         zero, a2, 0
                  srli         zero, a2, 29
                  auipc        t6, 198166
                  auipc        a1, 69509
                  xor          t1, t5, t0
                  auipc        a7, 64666
                  sll          s4, tp, a5
                  xor          a5, s10, s10
                  ori          a4, t5, -1030
                  sll          s3, s4, s3
                  sltiu        s10, s7, -309
                  slli         a7, s9, 31
                  srli         t4, a3, 5
                  slli         s5, s5, 30
                  xor          a2, s6, t6
                  nop
                  or           tp, a0, t4
                  nop
                  addi         s10, s5, -1551
                  slti         gp, s10, -1889
                  srl          s11, a3, s8
                  lui          a2, 900992
                  sltiu        t4, sp, 1711
                  srai         t2, s7, 13
                  and          zero, s7, s5
                  sll          sp, s9, s11
                  andi         s8, t1, -521
                  and          s3, s5, s9
                  addi         s0, a2, -1396
                  sll          zero, t4, s7
                  slti         s4, a7, -205
                  slli         t0, sp, 24
                  auipc        s0, 584797
                  sll          sp, s4, s0
                  sltiu        t6, s10, 1607
                  lui          s5, 966768
                  sltiu        a2, t3, -1877
                  xori         a1, s3, 592
                  add          sp, a5, a6
                  sltu         s10, s3, a7
                  addi         s8, sp, -1108
                  srai         a6, a0, 13
                  xor          a2, zero, s7
                  sra          t4, a5, a5
                  sltu         ra, gp, s9
                  lui          s0, 998505
                  lui          s3, 547946
                  slti         sp, a5, -416
                  sra          gp, s11, t0
                  and          s3, a4, a2
                  add          a2, a6, s0
                  auipc        tp, 796583
                  lui          t6, 708214
                  srli         t0, zero, 5
                  nop
                  slti         a1, s6, -1839
                  and          a6, s2, a5
                  auipc        s0, 191358
                  slt          t0, s2, a7
                  add          ra, a1, gp
                  sll          s4, s5, a3
                  andi         s10, a1, -479
                  slli         gp, a3, 28
                  add          t4, s1, s2
                  srai         s2, t0, 29
                  slti         s3, s9, 1062
                  nop
                  lui          s11, 221397
                  or           t2, s8, a7
                  srai         gp, a5, 13
                  sra          t1, tp, s0
                  or           sp, s3, t6
                  srli         s0, a3, 25
                  andi         t1, t6, 2033
                  lui          a2, 1019448
                  srl          a2, a1, a5
                  lui          a0, 974228
                  srai         gp, a4, 20
                  sltu         s4, sp, a2
                  srli         s11, s2, 21
                  srai         t3, s3, 0
                  sltu         a7, s9, zero
                  addi         t0, t4, -1067
                  ori          s5, t6, -732
                  srl          s10, t5, s10
                  sll          t2, s2, t4
                  or           a5, s5, t4
                  auipc        s11, 987484
                  slti         a7, s5, -209
                  slti         t0, t0, -36
                  ori          a7, a3, -762
                  xori         s4, a3, 624
                  sub          a1, s2, a3
                  andi         s0, gp, -1430
                  lui          t1, 690312
                  ori          a0, ra, -1344
                  xor          a4, s11, s4
                  srli         t3, s11, 27
                  nop
                  nop
                  auipc        s9, 59095
                  or           a6, ra, a0
                  sll          s11, s8, t6
                  sltu         gp, a3, zero
                  srli         s4, t0, 18
                  slti         a4, s2, 880
                  slli         a2, s1, 16
                  srai         t0, t5, 25
                  auipc        s9, 210704
                  srl          a4, s2, a7
                  srai         t5, s8, 0
                  nop
                  and          t0, a5, gp
                  xor          a0, ra, s6
                  add          t2, a3, a1
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0xffffffff
                  li           sp, 0x80000000
                  li           t1, 0x80000000
                  li           s5, 0xffffffff
                  li           a6, 0xe3f0a01d
                  li           t2, 0x80000000
                  li           s0, 0x80000000
                  li           tp, 0x80000000
                  li           s8, 0x80000000
                  auipc        t2, 670111
                  auipc        s0, 1033755
                  lui          a6, 287448
                  sub          s5, s8, tp
                  add          s11, s11, s5
                  addi         tp, t5, 617
                  addi         t2, sp, -314
                  addi         sp, t5, -234
                  add          t2, s5, s11
                  sub          tp, s11, t5
                  sub          s11, tp, a6
                  sub          s8, t5, t2
                  lui          t5, 972220
                  nop
                  lui          s5, 1040355
                  auipc        s5, 231105
                  nop
                  auipc        a6, 265013
                  addi         sp, t1, -1042
                  add          s8, s0, t1
                  auipc        s5, 96114 #end riscv_int_numeric_corner_stream_9
                  andi         a0, a0, -1728
                  nop
                  auipc        s9, 437065
                  add          s9, tp, t3
                  addi         s10, s8, 922
                  auipc        s8, 817028
                  or           t0, s9, s1
                  sra          s5, s2, s1
                  or           ra, t5, a1
                  slti         sp, s5, 1572
                  sltiu        t6, s5, 986
                  and          s2, t2, a3
                  lui          s6, 903113
                  or           sp, a6, s11
                  srai         s0, s6, 0
                  nop
                  srai         t3, s1, 0
                  and          t3, s2, a1
                  xori         s11, a2, 712
                  add          zero, t6, s2
                  slt          t5, s3, sp
                  xori         t4, t3, -1445
                  nop
                  sra          s9, t3, gp
                  xori         t2, s7, 541
                  ori          t6, t5, 1316
                  xor          s2, t5, s0
                  sub          sp, tp, s4
                  slti         s9, s11, 642
                  xori         a0, t2, -443
                  andi         t2, s1, 1244
                  add          a1, t4, a0
                  slti         gp, gp, -1605
                  xor          ra, s4, s4
                  ori          s9, a7, -1662
                  sra          s2, s5, s3
                  add          t4, s9, a0
                  srl          s5, s1, zero
                  srl          zero, s2, s11
                  sub          s6, s5, a5
                  slli         ra, s11, 2
                  slti         sp, a7, 103
                  slt          s10, s0, a6
                  nop
                  srai         t6, s9, 29
                  srli         s8, a3, 30
                  srai         t4, ra, 4
                  addi         s9, s4, -1371
                  ori          s11, t3, 175
                  auipc        tp, 488095
                  lui          ra, 668268
                  srli         t0, a3, 25
                  nop
                  sll          t6, s2, a0
                  sltu         s6, s0, a7
                  sltu         t0, ra, t4
                  srli         s5, sp, 23
                  srl          a5, a0, zero
                  sll          s5, ra, s5
                  sll          zero, s9, s8
                  slti         a4, t5, 1305
                  slt          gp, a2, sp
                  auipc        s8, 62912
                  slli         t6, s3, 2
                  xori         s2, s8, -319
                  xor          a6, a0, t1
                  addi         t4, a2, -245
                  or           s10, s0, t0
                  srai         s2, s3, 2
                  srli         t5, s10, 15
                  lui          ra, 433472
                  xor          s10, s3, t5
                  sll          t1, s8, a0
                  xori         a2, s10, -1404
                  srai         s5, s11, 16
                  nop
                  srai         a0, zero, 10
                  ori          a4, a4, 1380
                  sra          ra, s9, a7
                  srl          s0, ra, s0
                  xor          t2, s7, s7
                  auipc        t6, 977202
                  xor          s3, s0, zero
                  slti         t3, a4, -964
                  sra          t1, s3, t0
                  srai         a6, s11, 24
                  slli         tp, s2, 24
                  or           t2, t6, a2
                  slli         s5, ra, 8
                  srli         s5, t1, 31
                  add          ra, ra, tp
                  nop
                  nop
                  nop
                  xori         t3, zero, 1260
                  sltu         ra, a3, t4
                  and          s6, s10, a4
                  sra          zero, t5, s6
                  slli         zero, s10, 19
                  sltiu        t1, gp, -485
                  auipc        s2, 1006611
                  srai         s2, s10, 12
                  lui          t1, 613763
                  sll          s4, t3, t1
                  auipc        zero, 443283
                  xor          zero, t3, t3
                  auipc        a7, 173711
                  andi         tp, ra, -216
                  sub          s10, ra, tp
                  ori          s9, s1, -1543
                  andi         a0, a4, -1352
                  andi         t6, s9, -1966
                  srai         a2, s3, 12
                  srli         a7, a2, 4
                  sltiu        a6, s0, -151
                  ori          t6, t4, 172
                  auipc        a1, 438923
                  srl          zero, a2, sp
                  ori          s11, gp, -1070
                  slti         a2, s9, -1928
                  ori          s2, zero, -1885
                  sltiu        ra, t6, -537
                  xor          tp, t4, a4
                  srai         s2, s2, 0
                  sra          gp, a2, a4
                  andi         s4, s7, 1347
                  sll          zero, sp, ra
                  slti         a5, t6, -1169
                  sll          s5, a3, s0
                  slt          s10, t6, gp
                  addi         a5, t3, 743
                  andi         ra, a7, -678
                  and          s3, a5, s8
                  sub          s0, s0, s3
                  lui          sp, 659316
                  ori          zero, t0, -2026
                  or           t3, sp, t4
                  add          a0, zero, t4
                  or           s11, s7, s2
                  sltiu        ra, s3, 890
                  andi         a5, a7, -325
                  or           a6, s8, s1
                  sra          s9, t5, a4
                  or           t0, s3, a3
                  and          t2, s10, s9
                  andi         zero, s2, -1664
                  add          a6, a4, a7
                  add          s4, a1, tp
                  sub          s3, gp, s3
                  sra          a0, t0, s3
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           t6, 0xffffffff
                  li           s9, 0x80000000
                  li           t5, 0x80000000
                  li           tp, 0x609fc664
                  li           a1, 0x80000000
                  li           a4, 0x9e137b4d
                  li           a5, 0xffffffff
                  li           a7, 0xffffffff
                  li           s8, 0xd285d5e4
                  lui          s8, 673639
                  lui          a4, 359652
                  lui          a4, 23481
                  auipc        t6, 778025
                  auipc        tp, 959065
                  lui          s8, 723739
                  auipc        a1, 345434
                  addi         a7, a7, 1978
                  auipc        t5, 632707
                  add          a1, a5, a1
                  lui          a7, 465087
                  add          t5, s9, s0
                  addi         a1, a7, -2037
                  add          a4, t5, a7
                  auipc        s0, 724436
                  add          s9, tp, a4
                  sub          t6, t5, a7
                  addi         a4, a4, -1207 #end riscv_int_numeric_corner_stream_6
                  auipc        a0, 391914
                  sltu         a5, s6, a0
                  slli         t3, t1, 17
                  addi         a7, t3, 1459
                  lui          s4, 362999
                  and          sp, s3, t6
                  or           a0, s5, s1
                  ori          s2, t6, 230
                  sub          s10, s6, s5
                  sra          a6, t0, t6
                  nop
                  xor          gp, a2, s8
                  nop
                  srli         s5, a4, 23
                  or           zero, t0, s0
                  sll          t3, tp, s10
                  lui          s3, 195367
                  slli         a0, t0, 27
                  slti         tp, ra, 914
                  ori          t4, a0, -944
                  auipc        t4, 155720
                  and          s11, sp, a3
                  srl          t6, s5, a4
                  slli         s6, t2, 26
                  nop
                  sltiu        s4, s2, 1932
                  sltiu        a0, a0, -1071
                  xor          t0, s1, a4
                  xor          t5, s7, s5
                  slti         a4, a7, 359
                  add          a7, t2, s10
                  sll          a2, s3, s8
                  andi         a1, t5, 1900
                  nop
                  ori          a1, t5, -1204
                  add          s11, s2, a4
                  sra          s10, s5, s1
                  xori         ra, a3, -1760
                  ori          tp, s4, -1886
                  sub          s9, s4, s1
                  andi         gp, zero, 1064
                  srai         ra, sp, 18
                  and          t3, t3, a5
                  or           a5, t6, s11
                  sltu         s3, s3, s2
                  nop
                  lui          s0, 216041
                  xori         a2, a2, 295
                  slt          s8, s1, s2
                  lui          s2, 773076
                  srl          s3, s1, a4
                  srl          s8, a4, s8
                  srai         s2, s6, 3
                  slli         t3, zero, 30
                  srl          s3, s6, s1
                  andi         s5, t2, -2018
                  srl          tp, s4, a7
                  sll          s2, t1, s5
                  sltiu        s8, s10, -1721
                  lui          t1, 280025
                  slti         s2, s7, 570
                  nop
                  srli         s10, t4, 11
                  sltu         a1, a5, s3
                  sub          s8, s10, s5
                  xori         gp, a0, 667
                  xori         a0, a2, 1531
                  slti         a5, s8, 1205
                  sll          a1, t6, s4
                  lui          s10, 861761
                  xor          a6, a4, t6
                  or           t1, a2, a5
                  and          s2, a6, s0
                  xor          s8, s2, s1
                  addi         a4, tp, -802
                  srl          t3, t5, a0
                  nop
                  srai         a5, t0, 16
                  add          s10, s9, a4
                  slti         s8, a2, 1544
                  auipc        zero, 511831
                  sltiu        a7, t1, 1744
                  ori          s11, a2, -368
                  and          s0, a4, t3
                  xori         s0, a7, -68
                  srli         a2, s11, 4
                  and          t2, s3, a6
                  srli         s9, s11, 6
                  srl          a2, a2, t1
                  srli         t1, s9, 22
                  srli         s6, zero, 22
                  sltiu        s8, zero, 1701
                  sll          t0, t2, a7
                  and          tp, a1, ra
                  ori          s9, tp, -667
                  srai         a4, s7, 22
                  andi         a2, t0, -1834
                  sll          s10, sp, a5
                  addi         t3, a7, -1595
                  andi         a5, s5, -156
                  slli         t0, a6, 9
                  auipc        a0, 1025799
                  srl          zero, s7, t1
                  auipc        t1, 1041682
                  sltiu        t3, ra, -979
                  sltiu        a4, a7, -771
                  srl          zero, t2, tp
                  slti         s4, a5, -247
                  nop
                  ori          s5, s11, -234
                  srli         t0, s8, 19
                  srl          t5, a1, t0
                  sll          ra, zero, t5
                  srl          a7, s4, s6
                  sll          t2, tp, s7
                  sltiu        t6, s0, 1270
                  xori         s11, tp, 2017
                  slti         s4, a4, -367
                  xor          s3, ra, a7
                  ori          zero, a7, 403
                  srai         s9, ra, 10
                  ori          a4, tp, -1674
                  xori         t2, a4, -1920
                  xor          a5, s2, s11
                  slti         gp, t1, 690
                  srai         s8, a6, 26
                  sltiu        t0, a1, 560
                  nop
                  sll          t3, t6, a1
                  addi         t0, a6, -634
                  and          tp, a2, s7
                  nop
                  ori          s0, a0, -1800
                  sltiu        s3, t0, -889
                  sltu         t0, s4, a2
                  auipc        a4, 282836
                  lui          t5, 925011
                  sltiu        s3, ra, -766
                  ori          t5, ra, -171
                  nop
                  andi         a0, t0, -1472
                  slti         s4, ra, 1428
                  srli         t2, s10, 29
                  ori          a1, s3, 1999
                  xori         s5, s2, 1878
                  srai         s0, sp, 21
                  nop
                  slt          s3, s9, s10
                  addi         s9, a2, 1965
                  sub          a7, ra, a3
                  sub          t1, a6, sp
                  srl          t5, a3, a6
                  slli         gp, tp, 20
                  srl          a6, a0, t3
                  sll          s4, s8, tp
                  sltiu        a4, a1, -848
                  srli         s3, t0, 27
                  slli         s4, a6, 14
                  slt          sp, a3, t5
                  sub          a0, a2, s1
                  nop
                  sll          ra, s3, t1
                  and          t6, t6, sp
                  and          zero, a3, t1
                  ori          t4, a5, 457
                  sltiu        t5, s11, -185
                  ori          s8, s10, -908
                  sra          s3, t5, s11
                  ori          zero, t2, 464
                  auipc        a0, 455742
                  or           a6, s7, s6
                  xor          s6, s4, zero
                  addi         s9, s4, 766
                  sub          zero, t6, s3
                  xori         s11, s6, -330
                  addi         t6, a5, -117
                  sll          t2, s4, ra
                  addi         s3, t6, -714
                  ori          s3, t3, 1862
                  xori         tp, s6, -585
                  lui          t4, 662935
                  auipc        s3, 658443
                  addi         s9, a5, -1785
                  ori          s11, s1, 1679
                  auipc        t1, 548062
                  sltu         t5, t2, a4
                  lui          s9, 921336
                  slli         a2, t6, 21
                  slli         s9, sp, 28
                  nop
                  sltu         t4, ra, t1
                  sra          s5, ra, t2
                  andi         a4, zero, -1510
                  slt          s3, s4, s9
                  sltu         tp, sp, a4
                  and          s6, gp, s7
                  xor          t1, t3, t3
                  lui          s4, 473041
                  sltu         t5, s5, t5
                  xor          a4, t1, t3
                  srli         s11, ra, 26
                  slti         a1, a4, -846
                  srl          t4, zero, a7
                  sltiu        t5, s0, -849
                  sll          t6, ra, s1
                  xor          s8, s4, t0
                  srl          t5, sp, s7
                  srli         a1, a4, 28
                  auipc        s3, 469391
                  srai         a6, t2, 25
                  sll          tp, a1, a6
                  add          a4, t5, tp
                  or           s3, t4, t6
                  auipc        gp, 434423
                  sra          a6, sp, s4
                  xor          s5, a6, s0
                  slti         a0, ra, 561
                  sub          a6, t4, sp
                  nop
                  and          s2, t1, s6
                  slt          s0, s1, gp
                  srl          t1, s0, tp
                  xori         a1, a3, -76
                  and          s11, t6, a6
                  sltu         s3, gp, t5
                  sub          t0, s3, sp
                  add          s8, a7, t1
                  add          gp, t1, t0
                  ori          s5, s9, 654
                  sll          s6, s10, a7
                  sltiu        t4, s8, -939
                  or           sp, t4, t6
                  sub          s9, a5, sp
                  xori         s9, t3, 1918
                  srai         a1, a2, 21
                  srl          t0, t3, s9
                  slti         zero, t4, -680
                  sltu         zero, s2, tp
                  srai         zero, zero, 5
                  or           t3, t6, a3
                  sll          s10, a6, t5
                  xor          s0, s7, s2
                  nop
                  sll          a4, s3, a7
                  sll          zero, t0, s9
                  nop
                  sll          sp, a7, s2
                  ori          s2, s11, 1321
                  xori         tp, s6, -1052
                  xori         s8, a7, 1538
                  xor          t0, a4, t1
                  sll          s9, t5, s4
                  sltiu        gp, sp, -1163
                  srli         a4, a1, 21
                  slli         t0, s11, 13
                  auipc        gp, 742414
                  auipc        s6, 106876
                  srli         a7, t3, 14
                  add          a0, sp, t5
                  srli         gp, t1, 16
                  srai         t2, t3, 7
                  srli         s3, s0, 1
                  sra          s10, gp, a7
                  auipc        a4, 417923
                  and          s5, a4, s10
                  addi         gp, s5, -1308
                  sll          s10, a2, a4
                  slli         t3, s6, 29
                  xori         a4, a5, 1501
                  sra          tp, a6, s5
                  slli         gp, s10, 28
                  nop
                  add          s9, t2, t6
                  add          t0, s6, s1
                  ori          t6, s7, -1231
                  slti         t3, gp, -658
                  sll          a6, t0, s8
                  srli         a7, a3, 23
                  slli         gp, a5, 10
                  nop
                  sub          s10, t6, ra
                  auipc        sp, 655387
                  ori          tp, zero, 893
                  andi         s10, t0, -1780
                  or           a6, s4, t4
                  andi         a4, tp, 693
                  ori          a7, s0, -26
                  and          s11, t6, s5
                  slti         ra, gp, -622
                  xori         a2, a5, -1465
                  or           t2, a0, s6
                  and          ra, a0, s7
                  add          gp, s9, s2
                  auipc        s8, 365480
                  addi         tp, tp, 872
                  xori         a6, t2, 673
                  xor          a2, t5, t5
                  sltu         sp, s11, a4
                  add          t4, s8, a0
                  srli         a0, s9, 0
                  slti         tp, s9, -557
                  sub          s5, t5, s0
                  slti         gp, s2, -583
                  slti         s0, s5, -1945
                  srli         a5, s10, 31
                  nop
                  xor          a2, s9, s0
                  srai         t5, a5, 30
                  ori          t1, s0, -279
                  srl          t6, tp, tp
                  andi         a1, zero, 408
                  auipc        s5, 873094
                  ori          t2, t0, 753
                  auipc        s5, 503271
                  sltu         t4, a2, s5
                  sub          tp, t3, t3
                  sub          t6, a6, ra
                  slt          s3, a4, s8
                  lui          t0, 193255
                  lui          sp, 241572
                  ori          a5, t5, -425
                  sub          s4, s8, s11
                  slti         zero, s7, -670
                  sra          t5, s8, t3
                  and          tp, t0, a0
                  and          a2, sp, s11
                  sub          s2, t4, s5
                  srai         ra, a0, 15
                  srai         ra, t1, 23
                  sltiu        sp, t2, -568
                  or           s8, ra, s7
                  srli         s5, s2, 12
                  sll          a4, t5, s3
                  xori         gp, a0, 1291
                  or           a4, a5, sp
                  andi         s4, s0, 1371
                  srli         a2, zero, 17
                  auipc        s2, 378826
                  slti         t4, t0, -1014
                  slt          t0, s5, t2
                  auipc        s2, 966982
                  xor          sp, s1, a0
                  add          a5, t1, t2
                  andi         t1, s6, -1139
                  xori         s9, s2, -1541
                  sll          s0, s4, s7
                  nop
                  sub          s8, t1, a4
                  lui          a1, 93266
                  auipc        s3, 190444
                  nop
                  sll          a0, s3, a7
                  sltu         s10, s3, a2
                  xor          s6, s7, sp
                  slt          t5, s8, s1
                  ori          t0, s9, 1955
                  slli         a7, ra, 17
                  auipc        s0, 145254
                  auipc        t6, 606368
                  slti         t0, t4, 514
                  sltiu        s11, t1, -562
                  auipc        s3, 16271
                  slli         a4, a0, 6
                  slli         a4, s3, 3
                  slli         a2, t4, 6
                  nop
                  sub          t0, t3, s5
                  slli         a2, a1, 3
                  xor          t2, gp, a6
                  nop
                  xor          s5, s8, zero
                  ori          s3, s6, 49
                  auipc        zero, 1020257
                  add          s9, s10, s0
                  ori          sp, a1, 1101
                  srli         a0, s0, 19
                  addi         s10, sp, -611
                  or           s3, sp, ra
                  sltiu        s9, t1, 1840
                  ori          a5, s0, -1483
                  slti         t2, t6, 1894
                  addi         s0, a3, 146
                  slli         s0, a3, 28
                  or           zero, t5, gp
                  sub          a7, zero, s0
                  andi         s10, t4, -1026
                  slt          a6, a4, a5
                  lui          s10, 884714
                  sltu         t5, t5, ra
                  addi         a7, ra, -1324
                  auipc        a7, 137017
                  auipc        a1, 1003974
                  srl          sp, tp, s6
                  sltiu        s6, s0, 1304
                  srl          t4, gp, t1
                  or           tp, a5, s0
                  sra          s4, t4, a3
                  slti         s10, s9, -323
                  slti         zero, s3, -1594
                  lui          a1, 227927
                  addi         a6, s8, 1388
                  sll          gp, a3, s6
                  sra          s11, a5, s7
                  andi         a0, t3, -562
                  sltu         a5, tp, s1
                  sub          zero, t3, t4
                  lui          t1, 663937
                  srl          a5, s0, ra
                  sll          a7, s4, s4
                  andi         t0, gp, -202
                  sra          s9, s10, t4
                  add          s9, gp, s2
                  sltiu        ra, s6, 110
                  slt          zero, s1, s5
                  auipc        gp, 274802
                  srli         s10, s1, 2
                  ori          s11, a2, -189
                  sra          tp, gp, ra
                  srl          a5, a1, t2
                  add          t5, t4, s5
                  xor          s10, tp, sp
                  slli         t3, t0, 1
                  sra          a1, s11, a2
                  slt          t1, s5, s10
                  srl          a2, t2, sp
                  slti         a2, s7, 1119
                  srli         a4, gp, 26
                  sltu         t4, s6, s3
                  auipc        s2, 602750
                  slli         s4, t6, 7
                  add          t4, sp, t1
                  xori         a1, s8, -1043
                  slti         t5, s7, 1217
                  and          t1, a1, t5
                  nop
                  sra          a6, a6, s1
                  xori         zero, s4, 1227
                  sll          s8, s10, s5
                  nop
                  srl          t3, t3, s1
                  nop
                  add          a4, gp, s1
                  xori         sp, a2, -784
                  lui          a5, 927178
                  xori         t1, s9, 1969
                  srl          s10, zero, a6
                  sll          s3, t6, a2
                  ori          t1, s6, -516
                  sub          a1, s5, s5
                  xori         tp, t2, -599
                  lui          a0, 373999
                  add          a5, a5, s7
                  or           a1, s8, tp
                  slti         s6, s6, -1052
                  srai         s6, zero, 22
                  srai         s10, ra, 31
                  srai         a1, s11, 4
                  sltu         ra, s7, a6
                  srli         s11, a6, 21
                  sltu         zero, a3, t0
                  and          s9, a3, s2
                  sltu         t5, ra, a0
                  and          s3, t1, t6
                  srli         t2, t2, 27
                  nop
                  lui          t0, 191300
                  nop
                  sltu         s10, a3, t6
                  sub          t2, gp, t5
                  sub          t3, t0, s8
                  nop
                  xor          s11, s5, ra
                  slti         s3, a5, -154
                  andi         s9, a1, 236
                  or           t0, t1, a7
                  lui          s0, 707178
                  andi         zero, s5, -759
                  sltu         a0, s0, t2
                  xor          t4, a5, ra
                  slti         gp, s8, 573
                  slli         zero, s10, 5
                  sltu         s9, sp, gp
                  sub          s11, s7, s11
                  sll          a1, tp, t3
                  or           a4, ra, s7
                  srl          tp, zero, s10
                  sll          t2, s0, a4
                  sra          t1, s8, s11
                  xori         a1, a1, 825
                  nop
                  sra          tp, s8, s11
                  slt          a1, a5, s9
                  lui          a5, 140002
                  slli         s11, s6, 13
                  add          sp, zero, a0
                  xor          a1, sp, s6
                  srai         s4, s2, 15
                  srli         zero, a0, 31
                  or           s9, t6, s4
                  add          t2, t2, t1
                  srli         s9, s2, 12
                  sltu         s4, s7, a6
                  add          s8, s3, s4
                  srl          a0, zero, a7
                  srl          s10, gp, t0
                  srl          ra, t3, zero
                  srai         t6, s10, 21
                  xor          a5, t5, s6
                  sltu         a7, a2, a2
                  lui          zero, 73982
                  srai         a0, tp, 23
                  or           s8, s0, s10
                  or           t1, s4, s10
                  srl          a1, t6, ra
                  xori         s2, a3, 1763
                  srli         s4, a6, 31
                  slt          t4, a6, s7
                  slt          tp, t6, a5
                  sll          gp, t1, t5
                  auipc        t1, 675155
                  sra          a6, t6, t4
                  andi         a1, s2, -309
                  sub          t0, s6, a5
                  srl          s8, sp, s8
                  addi         a7, gp, -1198
                  slli         s2, a0, 18
                  andi         s10, s8, 1729
                  and          t0, gp, s4
                  sltiu        gp, zero, -1798
                  xor          a7, t6, s1
                  sra          s4, a0, t1
                  sll          s4, s0, t6
                  addi         a1, ra, -1801
                  sltu         sp, t3, s6
                  srai         s10, s2, 22
                  slli         s8, s4, 0
                  sltu         t6, a0, s4
                  slt          s4, s8, s10
                  srli         s8, s7, 0
                  lui          a7, 916009
                  ori          ra, s11, -1103
                  srli         t0, tp, 7
                  sltu         a0, sp, s6
                  sra          s5, s8, t2
                  slti         a2, a2, -755
                  add          t0, a5, s2
                  sltu         s10, s5, a7
                  slt          a1, s3, ra
                  slti         ra, a0, -814
                  auipc        a5, 1038494
                  srl          s0, a6, s6
                  srai         a5, a0, 16
                  addi         t5, t6, -439
                  sll          s10, tp, s8
                  sub          a6, t4, s7
                  xor          t3, s5, t6
                  srli         t4, a1, 14
                  srli         a4, sp, 20
                  slli         tp, s5, 10
                  slt          s8, ra, zero
                  sra          a0, a5, s1
                  srl          s10, s11, t6
                  slt          t1, s2, t2
                  and          t3, t3, t0
                  and          sp, s11, t5
                  slt          a0, s0, s6
                  slti         s9, s4, -1649
                  xor          s11, tp, zero
                  add          s8, t2, a4
                  srli         s4, s2, 18
                  sltiu        s4, t4, 1642
                  srai         t1, t0, 18
                  sra          a2, t4, s6
                  srl          a1, a7, a2
                  srai         s2, s4, 30
                  sra          gp, t0, ra
                  andi         a2, a3, 393
                  xori         a0, s4, 414
                  or           a5, a0, s8
                  add          a7, gp, a7
                  sra          s11, s0, t2
                  lui          a5, 479316
                  ori          s8, s2, 1851
                  addi         s3, s0, 1808
                  sra          tp, sp, t4
                  sltiu        a6, s11, -1241
                  srai         s9, s1, 25
                  nop
                  add          gp, a6, s4
                  slli         a7, s9, 9
                  sltiu        s2, a6, -1902
                  srai         sp, a5, 8
                  sra          a0, a6, s0
                  slti         s10, s1, 20
                  srl          t6, s10, a5
                  sub          s11, a6, s1
                  slti         s5, t6, 1192
                  add          a2, a3, s5
                  sltu         t6, s2, a3
                  and          a1, s3, t4
                  ori          ra, s2, -1440
                  or           ra, sp, t4
                  sll          gp, t4, s2
                  andi         t2, a3, 1371
                  ori          zero, s7, -1871
                  ori          s3, t2, -1900
                  srl          t1, a3, a6
                  sltu         a7, sp, s10
                  srai         s0, t6, 10
                  srli         a7, a4, 15
                  slti         gp, t3, 1467
                  xor          a0, sp, s7
                  slti         t2, s10, 1401
                  srai         t6, a3, 26
                  or           t3, gp, t1
                  slli         a5, t4, 16
                  sll          s6, s5, tp
                  srl          s2, a0, s1
                  slli         s0, a2, 9
                  auipc        s3, 372902
                  andi         s10, sp, -1855
                  srai         s3, a7, 30
                  srli         t5, t3, 6
                  sltiu        s0, t4, -1743
                  andi         ra, s6, -348
                  sra          zero, t4, s9
                  ori          sp, a2, 1189
                  sll          a1, s0, t6
                  slt          s9, s11, t6
                  sll          ra, t4, s0
                  ori          zero, t0, -268
                  and          s10, zero, s10
                  srl          t4, t6, t0
                  srli         s2, s3, 7
                  or           ra, t1, t1
                  slli         t1, t6, 15
                  addi         s9, a5, -1238
                  sra          gp, s9, sp
                  nop
                  xori         a2, s10, 225
                  slli         t3, t5, 13
                  sltiu        s0, s3, 440
                  ori          s5, s9, 372
                  slt          a6, a5, t1
                  sra          s5, a2, s0
                  and          s9, a2, a5
                  xori         a7, s0, 979
                  sll          tp, s9, s3
                  addi         gp, t1, -1171
                  slli         t1, sp, 29
                  srl          t2, s1, a5
                  add          s11, s4, t0
                  addi         t0, t4, 1449
                  sltiu        t6, s11, 1495
                  lui          t2, 27753
                  slli         s3, s1, 19
                  sltiu        s6, t2, 1478
                  sra          a0, s11, ra
                  srai         s8, s2, 17
                  slli         t3, t4, 21
                  or           a2, t3, a4
                  slti         a6, s11, 522
                  andi         s5, s2, -424
                  sra          s6, t4, a2
                  auipc        s2, 970679
                  srli         t1, s6, 1
                  srli         s3, s11, 5
                  sub          s2, s9, s4
                  srai         a1, a7, 19
                  slt          a7, a4, s6
                  addi         a2, s8, -1238
                  and          s5, a7, s5
                  addi         s11, t1, -449
                  sltiu        s11, ra, -1901
                  slt          t2, a2, s9
                  sub          s10, a0, a6
                  auipc        a4, 418617
                  or           a2, a5, s11
                  auipc        gp, 784374
                  slt          a7, t6, a5
                  sll          s11, sp, a6
                  sra          sp, s7, s4
                  xor          t2, s3, a1
                  sub          a4, s9, s6
                  andi         zero, s5, -1302
                  slli         s0, t2, 15
                  add          t0, s0, t6
                  lui          s10, 427454
                  srli         sp, t2, 5
                  srai         tp, t5, 24
                  slli         s3, gp, 24
                  addi         sp, a5, 346
                  sll          a7, a4, t3
                  xor          ra, a6, s10
                  sltu         s6, t4, s1
                  sll          gp, s9, t3
                  slli         a1, s2, 14
                  srai         s2, ra, 15
                  slti         s10, t5, -1148
                  sll          a4, a5, s2
                  sltu         s11, t5, a4
                  add          t0, s10, a0
                  auipc        s10, 886529
                  sub          ra, t4, gp
                  sra          s2, s9, a3
                  sub          a4, s6, sp
                  lui          a1, 543375
                  xori         s2, tp, -303
                  srli         s0, t3, 5
                  slti         a2, a0, 1617
                  or           s9, a0, t5
                  or           s3, zero, a2
                  add          t1, a2, s8
                  auipc        s2, 210509
                  srli         s4, a0, 24
                  srai         s0, gp, 24
                  sll          s0, t0, s3
                  slli         s8, a1, 8
                  ori          s10, t0, -1846
                  addi         s10, s4, -243
                  sltu         gp, t0, a4
                  slt          a0, ra, s11
                  sltu         a1, ra, s6
                  add          s2, s7, a6
                  lui          a2, 511035
                  sll          a7, a0, a2
                  lui          s6, 117857
                  sltu         s11, t3, t2
                  sltiu        s11, t4, -1540
                  add          gp, t5, s1
                  and          a2, s4, a3
                  xor          a6, t6, s4
                  add          zero, t3, a5
                  nop
                  slti         s5, a4, -894
                  lui          s10, 756901
                  sll          s4, zero, s5
                  sub          gp, s8, t3
                  addi         s3, t0, -440
                  srli         gp, a4, 6
                  slli         s2, sp, 25
                  xor          t5, ra, s4
                  add          t3, t5, a2
                  xori         zero, s11, -610
                  addi         t2, s2, -1420
                  andi         s6, s0, 422
                  slli         s0, t4, 28
                  auipc        t5, 185989
                  sra          a7, a2, s3
                  slti         zero, t0, 1344
                  srl          t3, s4, s11
                  andi         a2, a4, -784
                  sll          zero, s1, s2
                  andi         sp, sp, 1701
                  xori         a7, a4, -1352
                  slti         s10, s6, 8
                  sub          s10, gp, a0
                  srli         s3, s2, 12
                  auipc        t0, 665618
                  ori          s9, s11, -1195
                  sub          t1, a1, t5
                  nop
                  nop
                  addi         a2, s2, -956
                  addi         a1, t0, 142
                  sltiu        a5, t6, 1011
                  xor          t4, s6, tp
                  addi         t5, s1, -1288
                  and          a5, sp, t4
                  ori          s0, s1, 1083
                  or           a4, sp, a3
                  xori         a2, s11, 125
                  sub          a2, s4, s5
                  slt          t2, a2, t3
                  sltu         a1, a3, a7
                  sll          t4, s5, t5
                  ori          t0, gp, 1434
                  xor          t4, s8, a5
                  auipc        s6, 130419
                  srli         s4, tp, 3
                  sltu         s4, a4, t5
                  auipc        s9, 803467
                  srl          t2, s6, t6
                  nop
                  nop
                  lui          a2, 344209
                  nop
                  sub          s5, s11, t0
                  andi         a1, t3, -1154
                  slti         a5, s4, -140
                  andi         a7, s4, -1818
                  andi         a4, tp, 673
                  add          sp, a0, s11
                  and          s8, t5, gp
                  nop
                  andi         s5, gp, -475
                  lui          s8, 283318
                  xori         t3, zero, 220
                  slt          a2, s3, tp
                  slli         a5, a7, 17
                  nop
                  srai         ra, s9, 2
                  add          zero, s0, a3
                  slti         s6, a2, 554
                  slli         s10, s3, 10
                  lui          s0, 1007921
                  lui          s6, 135791
                  sll          s11, a3, s5
                  auipc        s3, 224625
                  andi         a1, s9, 1237
                  xori         s8, gp, 160
                  lui          a1, 703085
                  and          tp, s1, t2
                  lui          a4, 233415
                  sub          zero, t4, s9
                  and          s8, s8, s2
                  andi         gp, s5, -634
                  addi         a7, s0, -6
                  addi         tp, s7, -1254
                  sra          t0, s1, gp
                  srli         s0, t5, 27
                  lui          a4, 1048496
                  or           ra, t6, s6
                  slli         a5, a1, 20
                  andi         t6, tp, -1453
                  ori          a2, t4, -1091
                  addi         t4, gp, 1400
                  or           s5, t0, s9
                  sltu         s0, s2, s11
                  nop
                  andi         s10, s1, 1525
                  slli         s10, ra, 6
                  sltiu        zero, s4, -1023
                  andi         a5, tp, 367
                  srl          s6, a0, s4
                  or           t2, a7, t4
                  nop
                  srai         s0, s7, 25
                  nop
                  slli         tp, a7, 19
                  slli         t5, s0, 11
                  sltiu        s0, s9, -935
                  sra          ra, t1, s2
                  srai         s5, t1, 22
                  srli         s4, a5, 1
                  addi         s5, s1, 1807
                  srli         s5, s2, 21
                  add          a7, t5, a2
                  nop
                  addi         a7, sp, 364
                  xori         tp, s1, -919
                  nop
                  srai         a6, a1, 22
                  srli         sp, t3, 11
                  srai         a2, a0, 30
                  sll          a2, sp, s8
                  srai         s4, t4, 25
                  andi         s3, a6, 838
                  add          s8, s10, t6
                  srai         s2, gp, 2
                  auipc        t2, 67997
                  srl          s4, gp, a0
                  xori         ra, s11, -1840
                  xori         t6, a5, -1566
                  sltu         s6, tp, a7
                  sra          sp, a7, s3
                  and          s6, s5, s7
                  or           s11, s2, sp
                  sltu         s2, t4, s7
                  nop
                  xor          t6, s11, zero
                  sltiu        t5, a5, -1220
                  lui          t4, 994756
                  add          t1, t4, t6
                  slti         a5, s4, 251
                  sltiu        sp, t3, -1417
                  auipc        s4, 927874
                  xori         t6, s3, 431
                  and          s6, s3, t3
                  slli         t2, s10, 17
                  nop
                  sltu         t6, s4, s5
                  addi         s2, sp, -1598
                  sra          s6, s10, gp
                  nop
                  slti         s9, s4, -2022
                  and          t6, s8, s2
                  nop
                  xor          a7, gp, ra
                  sltu         s8, t0, a4
                  lui          a6, 725676
                  andi         s5, t6, -1015
                  sub          s4, s5, a0
                  andi         t2, sp, 977
                  srli         s10, t2, 8
                  auipc        a1, 777017
                  srl          a7, a2, a4
                  and          sp, tp, ra
                  srai         s4, s8, 24
                  sltu         t5, s8, t1
                  slt          s10, a6, a5
                  nop
                  sub          gp, s7, t6
                  slti         zero, s9, -265
                  andi         a0, s3, 1776
                  slli         s4, tp, 19
                  sltu         s3, s3, s9
                  xor          ra, tp, s10
                  auipc        t2, 1009896
                  ori          s5, a5, -1354
                  addi         a2, t2, 1210
                  sra          s6, t0, t1
                  xori         s10, a3, -1665
                  slt          t6, a0, gp
                  xor          s8, a5, s9
                  andi         s0, t5, -90
                  andi         a2, t6, -1425
                  xor          s3, sp, a3
                  srai         a6, s5, 21
                  or           gp, s8, t6
                  srl          s2, s0, s6
                  andi         s3, gp, -1145
                  and          sp, a4, zero
                  or           t4, sp, a2
                  srai         s9, a3, 13
                  srai         a6, ra, 15
                  sra          s11, t5, s10
                  srai         a2, t1, 4
                  ori          s6, s2, -128
                  lui          s8, 565017
                  lui          s2, 545173
                  add          s6, t3, s7
                  srli         t0, s5, 10
                  sltiu        a1, a3, 1001
                  sll          s4, a2, s6
                  auipc        a2, 226644
                  sub          t0, t1, sp
                  slli         t0, s3, 18
                  auipc        t1, 591976
                  sll          sp, s9, t4
                  xor          zero, gp, a5
                  sltiu        a7, zero, -344
                  srl          t4, t4, s10
                  lui          a4, 664427
                  slti         s9, s3, 181
                  xori         s11, s7, -1896
                  slt          t0, tp, t5
                  srl          s10, s11, s5
                  sub          t6, s7, tp
                  sub          sp, gp, t5
                  and          s10, s10, a1
                  ori          s11, t0, -110
                  addi         s2, s10, 1180
                  sltiu        t1, t5, 208
                  srai         s11, s4, 3
                  or           a4, a6, a5
                  add          a1, tp, s5
                  srai         a7, t1, 20
                  ori          t2, s3, -1432
                  addi         sp, zero, 1452
                  slti         t2, s3, 1564
                  sub          a6, a7, a3
                  add          s2, s4, s10
                  sra          s4, s10, ra
                  slli         t4, s8, 20
                  srai         a1, a7, 18
                  sltiu        tp, a0, -1422
                  sub          t2, s6, s3
                  slli         s6, t0, 17
                  andi         t6, s10, -1954
                  xori         t3, zero, 447
                  xor          t2, s2, a2
                  auipc        s5, 101225
                  slt          t5, s0, s2
                  lui          s9, 458173
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s6, 0x60187ea3
                  li           a6, 0x0
                  li           tp, 0x0
                  li           s3, 0x531ac93e
                  li           s10, 0x0
                  li           s11, 0x0
                  li           t4, 0xd3ed8b8c
                  li           ra, 0x0
                  li           sp, 0x0
                  lui          ra, 377111
                  sub          sp, s11, a6
                  add          s11, s6, sp
                  addi         s3, s3, 440
                  lui          ra, 685611
                  sub          sp, a6, t4
                  auipc        a6, 105244
                  sub          s11, tp, tp
                  auipc        s6, 709156
                  nop
                  lui          s3, 553545
                  nop
                  auipc        gp, 594494
                  sub          ra, ra, sp
                  add          sp, s3, gp
                  add          gp, tp, t4
                  addi         ra, s3, 569
                  add          s10, t4, s6
                  add          gp, a6, gp
                  nop
                  auipc        s11, 625356
                  nop
                  lui          sp, 194715
                  auipc        s6, 792964 #end riscv_int_numeric_corner_stream_19
                  sll          a0, a2, ra
                  auipc        s11, 361885
                  sll          t0, a7, s1
                  nop
                  slli         s10, t4, 17
                  xor          s2, a7, t2
                  add          a1, t2, t6
                  slli         a4, s3, 1
                  lui          a4, 513407
                  xor          s11, s6, t6
                  lui          s9, 50188
                  sltiu        zero, gp, 221
                  nop
                  xori         t5, s8, 764
                  nop
                  xor          a4, t3, t1
                  addi         a1, a5, 2024
                  sltiu        s4, t3, -1454
                  sltiu        s9, t4, 2008
                  or           s8, t4, s1
                  sub          s3, t4, s4
                  slt          s5, t1, gp
                  srai         gp, tp, 27
                  sub          ra, s11, a4
                  sll          s3, s6, t5
                  srl          s0, t1, a7
                  sub          a0, sp, t1
                  sltiu        a6, t5, -725
                  srai         s4, zero, 9
                  auipc        sp, 209786
                  nop
                  sltu         a0, a1, s5
                  xori         s8, t6, -970
                  sub          t6, a0, a0
                  srai         s4, t6, 25
                  andi         s3, s10, -279
                  sub          t3, s11, a1
                  ori          sp, s10, -1905
                  nop
                  sll          zero, s7, a0
                  xor          a6, s7, gp
                  andi         sp, s8, 1171
                  andi         s11, s10, 1755
                  add          tp, t1, s8
                  xori         s10, a7, -1695
                  nop
                  auipc        tp, 642942
                  xori         a2, t4, 1727
                  and          t0, s7, s7
                  sltu         s0, s6, t5
                  nop
                  srl          s5, t4, a3
                  sra          t0, s3, s1
                  slli         a6, a0, 7
                  ori          s5, t1, 869
                  addi         s10, t1, -1718
                  sra          t0, t0, t2
                  auipc        zero, 394802
                  xor          a6, t2, t4
                  srai         a0, tp, 19
                  ori          s9, s11, -1195
                  addi         t2, s3, -1732
                  srl          s4, s2, s3
                  or           tp, a1, t3
                  ori          s5, t2, 109
                  and          t2, t3, t5
                  auipc        t0, 588765
                  or           s4, s2, a5
                  sra          s9, a0, s2
                  slti         s5, gp, 1056
                  slti         s10, s8, -257
                  sltiu        sp, s6, 1939
                  slti         s8, t2, -239
                  addi         t2, a5, -1337
                  ori          a7, t5, 171
                  andi         s9, s9, 71
                  nop
                  srl          s10, a2, s10
                  srai         t0, t5, 31
                  and          s11, s6, a5
                  sltu         s3, t5, tp
                  and          a2, a5, s7
                  andi         t3, sp, -1597
                  srli         t2, s3, 22
                  ori          t2, s9, -1219
                  srl          s2, t4, s3
                  srl          t3, s2, tp
                  srai         t2, t5, 20
                  add          t4, a5, t4
                  andi         gp, t3, -1835
                  sltu         zero, a0, t4
                  sltiu        s4, t4, 1
                  lui          s11, 329813
                  srli         s5, s7, 16
                  xori         t1, t6, 1467
                  xor          a5, a7, ra
                  sltu         t0, s9, s10
                  sll          a0, a3, s6
                  xor          s5, t4, s10
                  srl          a5, t1, s9
                  sll          t3, a3, s4
                  sub          t0, sp, s2
                  sltu         a7, a0, tp
                  and          tp, s1, t0
                  xori         s5, s6, 1836
                  nop
                  sra          s6, a7, zero
                  or           t2, a4, s3
                  xori         a0, tp, -1049
                  slti         s3, s3, 56
                  xor          a4, t2, t5
                  xori         a0, s0, 314
                  xori         t5, s3, 1904
                  slti         s3, a2, 1873
                  xori         a7, s6, -982
                  andi         a7, s2, -1097
                  xor          s5, zero, a5
                  sub          ra, s0, a3
                  addi         a0, a2, -1425
                  andi         t1, s4, -645
                  add          t2, a4, s11
                  srl          sp, t4, s0
                  ori          a4, t6, -1821
                  slli         s3, a0, 10
                  sltu         s11, t1, s2
                  srl          s8, s7, t6
                  sltiu        s8, s3, 1718
                  srli         s6, gp, 9
                  lui          zero, 665127
                  sra          a0, zero, a4
                  auipc        t1, 642369
                  slti         t2, s9, 1579
                  ori          a1, tp, -1967
                  slt          s0, a7, s1
                  srai         a5, s8, 17
                  addi         t0, s7, 1559
                  xor          s2, s9, s10
                  srli         a4, s7, 18
                  sll          a4, s0, s9
                  and          t2, a2, gp
                  sra          s10, s9, a5
                  or           a7, t6, t5
                  sra          sp, tp, t4
                  sub          s6, t6, a5
                  xor          t1, s3, a0
                  or           t2, a2, ra
                  addi         a5, a2, 1184
                  addi         t2, a0, -381
                  sll          s8, s10, s6
                  andi         t3, a7, 458
                  sltu         t5, t2, s10
                  sll          zero, t3, t2
                  sub          t1, s6, t3
                  or           a0, a4, t0
                  xor          a2, a3, t6
                  slli         a7, zero, 15
                  slti         t4, s8, 3
                  sra          a7, tp, tp
                  slli         s4, s11, 0
                  sltu         t4, a1, a5
                  srai         t0, s2, 30
                  addi         s9, t1, -205
                  andi         a4, s9, -600
                  add          zero, s0, s5
                  nop
                  and          s6, a0, a3
                  sltiu        s3, s10, -74
                  xor          s6, zero, tp
                  andi         s3, ra, 400
                  slti         a7, s8, -434
                  srl          ra, s8, s9
                  add          s10, s6, s11
                  nop
                  andi         a7, s0, 828
                  xori         zero, s3, 494
                  add          t4, ra, s6
                  andi         t4, s3, -1565
                  slt          gp, a6, t0
                  srl          gp, a6, a3
                  nop
                  srli         s9, s11, 10
                  add          a0, t6, t5
                  slli         s2, s10, 3
                  nop
                  sub          s4, s10, a0
                  or           a2, a2, a1
                  slli         a6, gp, 8
                  or           t0, t2, t0
                  slli         a5, s8, 24
                  srli         t4, s4, 17
                  or           s9, a0, t0
                  nop
                  xori         s8, a1, -823
                  sra          s9, gp, s10
                  xor          t3, a5, a5
                  slli         t1, t3, 14
                  or           s2, s1, t5
                  auipc        gp, 1031637
                  addi         s3, s7, -601
                  srai         a1, t0, 9
                  add          s0, tp, t3
                  addi         s10, tp, -102
                  sub          t5, s2, a5
                  add          t1, s0, sp
                  sub          tp, t0, tp
                  or           a4, s4, t1
                  nop
                  xori         t1, t3, 89
                  auipc        a5, 784667
                  sltu         s8, s4, t6
                  add          gp, a3, a0
                  sra          a4, t0, a6
                  xori         t1, s2, -707
                  sra          ra, s8, sp
                  srli         a0, tp, 24
                  slt          s9, s10, a2
                  andi         s9, t3, -1786
                  ori          a5, t2, 759
                  or           s0, s1, s4
                  srl          t0, zero, a2
                  xori         t1, a0, 449
                  lui          a0, 839364
                  sub          a7, s7, a6
                  sra          t3, t3, t6
                  slt          s3, t4, ra
                  sltiu        a1, t0, -390
                  slti         sp, zero, -1170
                  slt          t5, a3, s2
                  add          a5, gp, s0
                  sll          a6, s11, a1
                  srl          t2, t6, a6
                  sll          t5, t6, s5
                  sltiu        s11, t5, 2023
                  and          t1, t5, ra
                  or           a1, s8, a5
                  srl          a7, tp, t3
                  srli         gp, s4, 14
                  srli         s11, a5, 30
                  nop
                  or           s5, a0, t0
                  srli         s4, gp, 2
                  sll          t5, s6, t6
                  sltu         t0, t4, s3
                  slt          a6, a4, s0
                  auipc        s5, 315322
                  slt          s10, s4, s3
                  sll          a5, t4, t1
                  addi         s5, s6, 1115
                  sltiu        t4, t6, -966
                  sll          s4, s5, t3
                  and          tp, t5, s6
                  slti         tp, s3, -1972
                  andi         s6, a1, 1180
                  sra          s9, t5, s8
                  andi         t2, s9, -1946
                  srli         s6, s8, 15
                  sll          a4, a2, s2
                  slt          tp, t5, tp
                  xor          s2, s3, sp
                  nop
                  auipc        a6, 924374
                  slt          a1, s0, t3
                  addi         zero, s8, -1732
                  sll          t3, a7, s4
                  auipc        t2, 98995
                  sltiu        sp, s4, 1288
                  sub          a2, s4, t6
                  slti         ra, a6, -1276
                  slti         t5, tp, 912
                  li           t6, 0x9b41c62c #start riscv_int_numeric_corner_stream_5
                  li           t3, 0x767b343c
                  li           s10, 0x0
                  li           s2, 0xffffffff
                  li           s5, 0xffffffff
                  li           a7, 0x80000000
                  li           t0, 0xffffffff
                  li           s0, 0x0
                  li           a1, 0x0
                  li           tp, 0xffffffff
                  addi         s5, t3, 1268
                  sub          t0, tp, a7
                  auipc        s2, 928382
                  auipc        a7, 529828
                  add          t3, a7, a1
                  lui          t3, 373593
                  addi         s5, tp, -66
                  lui          s0, 700515
                  sub          a1, t3, s0
                  auipc        t6, 501347
                  nop
                  nop
                  auipc        s2, 286176
                  auipc        tp, 641936
                  lui          t0, 498933
                  lui          s2, 70903
                  nop
                  add          tp, s10, a1
                  sub          s0, tp, a1
                  add          a7, tp, tp
                  auipc        a1, 205876
                  addi         s2, tp, 404
                  lui          tp, 602050 #end riscv_int_numeric_corner_stream_5
                  sll          ra, gp, t5
                  sub          a0, s5, gp
                  sra          t3, s9, s1
                  and          s4, s7, ra
                  sra          s2, a2, s5
                  ori          t3, tp, -475
                  srai         t3, s1, 4
                  or           ra, a0, sp
                  and          tp, s3, t1
                  add          a1, a4, tp
                  xori         t4, s9, 511
                  ori          t5, tp, -176
                  srl          s5, s4, t6
                  sub          sp, tp, s5
                  and          s0, t3, a2
                  sltiu        s2, s7, -1759
                  auipc        ra, 726899
                  srl          t3, s11, s4
                  sub          t1, t3, s3
                  andi         a4, t1, -334
                  andi         a6, t3, -1982
                  or           s5, t2, s0
                  sub          t6, a5, a5
                  sltu         tp, t5, s5
                  slli         ra, t5, 27
                  lui          s3, 409906
                  sltu         t1, s9, s6
                  lui          a6, 481807
                  add          a1, t4, s0
                  srli         s3, t0, 1
                  andi         s9, s5, -842
                  sub          s10, t4, s0
                  sll          t2, a3, s5
                  addi         s4, a7, 1260
                  sra          a1, a5, s10
                  slti         s8, a2, 1752
                  and          a7, a0, t1
                  srai         a7, sp, 7
                  or           t6, t1, t5
                  ori          s8, s8, -819
                  srli         a6, sp, 24
                  or           s10, gp, s9
                  ori          a5, s1, -736
                  auipc        t0, 50621
                  xori         s2, a4, 43
                  nop
                  ori          t1, a1, 742
                  andi         t5, ra, 1453
                  slli         s4, sp, 6
                  sltu         a0, a4, t3
                  slli         a4, a5, 26
                  slti         gp, s8, -28
                  xor          zero, t3, s4
                  addi         a5, s6, 641
                  lui          s3, 691180
                  auipc        t0, 183370
                  add          t5, ra, t6
                  lui          t2, 296742
                  sra          s11, zero, zero
                  nop
                  or           a2, s4, a2
                  addi         s10, s1, -918
                  sltu         t2, a5, ra
                  add          s4, tp, zero
                  sub          sp, sp, a1
                  sltu         s10, a6, t5
                  xori         t3, s5, -1110
                  sltiu        s0, ra, -1313
                  lui          t1, 440238
                  xori         t2, s4, -1091
                  srl          a2, t2, a2
                  and          t5, s9, t6
                  sub          sp, s0, sp
                  auipc        t4, 294375
                  slt          t1, a6, s0
                  sra          s6, t5, s4
                  andi         a2, s6, 556
                  sra          a7, a6, s3
                  srli         a5, t1, 16
                  srl          t2, t2, a1
                  slti         gp, t2, -1193
                  xor          s4, a1, t2
                  auipc        a7, 891670
                  xor          s10, s6, s2
                  sra          s2, s6, t1
                  sltiu        s3, s11, 567
                  auipc        a1, 46597
                  ori          s0, t4, 726
                  sll          a4, sp, t1
                  sll          t6, a7, t0
                  addi         s10, zero, -561
                  add          a4, s5, a3
                  nop
                  andi         a7, zero, 890
                  and          s6, t1, a1
                  auipc        t0, 537538
                  sltu         t6, sp, s9
                  slli         a5, t2, 12
                  or           a1, ra, s5
                  or           a0, a0, s7
                  srai         s6, s2, 23
                  sub          s9, gp, t3
                  srli         t6, s6, 23
                  auipc        gp, 902713
                  srl          zero, a4, s0
                  srl          ra, s2, t3
                  srl          a1, s9, s11
                  srli         a7, s9, 31
                  ori          s5, s6, 660
                  add          t4, a5, a4
                  srai         s8, a5, 31
                  xori         a7, a1, -139
                  lui          t2, 392544
                  ori          s8, s9, -1259
                  nop
                  sll          a6, a0, s0
                  and          a0, t5, s10
                  and          sp, a1, s4
                  slti         a7, s8, -644
                  auipc        a1, 26696
                  addi         a1, a7, -930
                  slti         zero, a7, 1497
                  addi         t2, s10, -273
                  or           t0, s8, s8
                  and          a0, a6, s6
                  and          t6, a6, s8
                  addi         s11, a7, -965
                  auipc        s6, 991644
                  srl          s10, a6, s1
                  srl          s0, t6, s3
                  and          t1, t0, t1
                  auipc        a0, 134800
                  or           t3, s6, t3
                  sll          a2, t5, s5
                  lui          gp, 831500
                  and          sp, a7, sp
                  auipc        a4, 463302
                  ori          ra, tp, -434
                  addi         tp, s3, 1367
                  slt          gp, s4, tp
                  sra          s10, zero, s5
                  sltu         tp, a3, s6
                  lui          s10, 243550
                  addi         t2, t1, -951
                  sltu         s11, tp, t1
                  slti         s10, a5, -1723
                  or           a5, a1, sp
                  sltu         a5, a5, s1
                  or           a7, t5, t6
                  slli         t6, t4, 5
                  sltiu        t5, s0, -1023
                  srli         ra, a7, 3
                  nop
                  slti         s5, t6, -1161
                  ori          a1, s0, -1149
                  srl          t1, a4, a0
                  srli         s3, sp, 7
                  add          gp, ra, s3
                  srl          s10, s7, t1
                  or           t5, t0, a2
                  srli         s4, t6, 18
                  srl          s8, a1, t3
                  and          s10, s2, tp
                  add          ra, a6, s0
                  slli         s8, t5, 16
                  andi         a4, gp, -1270
                  slt          s3, a1, tp
                  andi         s2, s11, 208
                  addi         a4, a1, -1510
                  srai         a7, s10, 22
                  lui          s3, 910693
                  andi         t2, t5, 932
                  xori         s3, t5, -1828
                  sll          zero, a5, a0
                  slt          s4, a4, s0
                  andi         a4, a1, 306
                  add          s3, a2, s3
                  or           t1, sp, tp
                  slti         a1, t0, 1386
                  srli         a4, tp, 2
                  add          t5, a4, s8
                  auipc        t6, 620019
                  srli         s5, s6, 11
                  xor          s9, t6, a0
                  slli         gp, t3, 16
                  sltu         t3, tp, t5
                  srli         sp, t6, 17
                  lui          a4, 74527
                  slti         t2, ra, 1643
                  srai         t5, t0, 26
                  slti         s10, s5, -245
                  slt          s2, s11, a6
                  and          s3, s6, s8
                  slt          t0, t0, s5
                  addi         s6, t6, -583
                  xor          s0, t0, t1
                  slt          t2, t0, s7
                  ori          a5, s11, 828
                  auipc        a6, 817476
                  srai         t4, s9, 7
                  nop
                  sltu         s5, s5, t0
                  sltu         a7, s11, s1
                  sltiu        t4, a5, -148
                  slt          a0, s4, t6
                  or           s11, s11, s4
                  and          s5, a4, a7
                  nop
                  auipc        gp, 1039677
                  or           s6, s6, t2
                  ori          s5, s2, -1459
                  srli         s5, a1, 22
                  srl          s2, s10, gp
                  andi         s3, s9, -338
                  add          s4, s7, s1
                  sltu         sp, tp, s6
                  srli         t0, s3, 12
                  auipc        t1, 211358
                  sltu         tp, a6, a4
                  lui          zero, 731330
                  nop
                  slli         s0, t5, 7
                  srai         a1, a4, 25
                  slt          gp, a2, t0
                  srl          t0, s9, a3
                  slti         tp, zero, -440
                  slli         s2, s6, 6
                  srai         a2, a2, 19
                  sub          a0, zero, sp
                  srli         sp, t3, 8
                  nop
                  srai         s0, s1, 16
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t5, 0x80000000
                  li           t2, 0xffffffff
                  li           s9, 0xffffffff
                  li           s11, 0xbf33f87f
                  li           sp, 0x731f3a60
                  li           s0, 0xa7206899
                  li           s8, 0x0
                  li           s4, 0xffffffff
                  li           t1, 0xc672df02
                  lui          t5, 229139
                  auipc        t1, 814329
                  auipc        s4, 464179
                  sub          t6, s11, t6
                  auipc        s4, 1022234
                  auipc        sp, 409403
                  lui          s4, 910684
                  add          s0, t1, s11
                  add          s8, t6, t6
                  lui          t2, 870759
                  addi         t5, t1, 437
                  sub          t5, s0, t6
                  addi         t1, s4, 1185
                  nop
                  auipc        s9, 786593
                  lui          sp, 915893
                  addi         t6, s0, -551
                  add          t5, t5, s0
                  sub          t5, t2, t2
                  sub          sp, sp, s9 #end riscv_int_numeric_corner_stream_7
                  sra          s5, a0, t1
                  or           t4, s4, s9
                  and          s4, t3, tp
                  and          s2, t4, s0
                  sltu         ra, s9, a3
                  add          t5, gp, s6
                  and          s11, t0, ra
                  slli         t1, s9, 28
                  andi         a7, s3, -1400
                  lui          t3, 372000
                  and          a1, a3, s1
                  xori         ra, a5, -1203
                  add          sp, s2, s5
                  sltu         t1, t3, s5
                  srl          s0, s10, s0
                  sra          a0, zero, s5
                  sll          t4, s1, s11
                  andi         t4, s11, 1699
                  or           a5, a5, s8
                  srl          tp, s8, s7
                  sltiu        s4, a6, 506
                  sltiu        a2, t1, -1201
                  auipc        t3, 562845
                  xor          t6, a6, a0
                  addi         s4, a7, -1751
                  or           sp, t4, sp
                  xor          a7, s3, s7
                  xor          s4, s5, t3
                  srl          a6, s11, a1
                  add          a1, a3, a0
                  ori          a4, s9, -52
                  sub          s9, a7, s3
                  slt          t5, s2, s4
                  nop
                  add          ra, s0, s0
                  slt          s4, sp, tp
                  andi         tp, t3, 1684
                  andi         s9, t6, -846
                  xor          t6, a5, s8
                  sltu         a0, s7, a6
                  and          s8, t1, gp
                  and          s5, s3, a2
                  sub          a5, s6, s11
                  sll          s10, s9, s1
                  sltu         a0, s4, s1
                  sltiu        t5, a0, 760
                  lui          s0, 136291
                  sltiu        a1, t0, 66
                  slt          tp, t3, ra
                  slt          t3, a2, gp
                  srl          t2, a4, t5
                  slt          s6, a7, zero
                  andi         t6, a3, 245
                  sub          sp, s2, t0
                  slli         s11, t6, 30
                  sra          a0, t4, t2
                  srl          s9, ra, a6
                  or           t4, a0, s2
                  add          a5, s0, s2
                  srai         t6, t4, 31
                  lui          s8, 873161
                  andi         t3, t4, 970
                  slti         zero, a6, -1507
                  ori          s11, a4, 900
                  and          tp, a4, a1
                  add          s11, s0, a6
                  sll          a1, a2, a1
                  sub          t6, a6, a0
                  auipc        s10, 717356
                  ori          s10, s7, -1626
                  slti         a0, t0, 1636
                  sub          t4, a3, a5
                  sltiu        s2, s2, 1649
                  sltu         gp, t3, a3
                  srli         s0, t5, 11
                  lui          a6, 498328
                  sll          gp, s8, s2
                  nop
                  lui          gp, 990518
                  slt          ra, t1, zero
                  srai         s0, ra, 21
                  srl          a7, a0, s2
                  sltiu        t6, s10, 630
                  srl          gp, t4, ra
                  sll          t3, a6, s5
                  and          t3, a0, a4
                  srl          a7, tp, ra
                  srl          s3, s7, t6
                  xor          a1, t1, s10
                  slli         s6, t1, 26
                  sub          t1, t6, gp
                  nop
                  and          t4, t1, a1
                  and          t6, t6, s6
                  srl          s5, a3, s1
                  add          t1, s4, t5
                  sra          a7, a3, s0
                  and          t3, t0, tp
                  srli         t5, gp, 2
                  sltiu        gp, s11, -443
                  srai         t5, a5, 1
                  sll          s3, a6, t5
                  auipc        s2, 501345
                  andi         t6, s1, -1669
                  lui          a2, 792835
                  lui          t6, 1017723
                  sra          s2, s0, s10
                  srli         t0, ra, 30
                  sll          t0, t5, a7
                  auipc        t0, 538692
                  ori          a5, s9, -1782
                  ori          t6, t4, 622
                  sltu         t5, a5, s0
                  auipc        a5, 381405
                  auipc        s8, 192183
                  sltu         s10, s0, t2
                  and          tp, s10, a5
                  sltiu        t6, a2, 1383
                  add          a5, s6, a1
                  srli         a1, sp, 17
                  addi         s2, a6, -1275
                  sll          t3, s5, tp
                  sra          s2, s11, a6
                  slt          a6, s2, s1
                  auipc        t0, 410412
                  or           ra, s2, s1
                  lui          t1, 833623
                  xori         t0, a2, 1202
                  srai         s5, t3, 27
                  slt          s10, s3, t0
                  auipc        s6, 234777
                  addi         a0, s9, 70
                  xor          t6, a6, t2
                  srai         a5, t4, 3
                  nop
                  srai         t4, zero, 6
                  sra          a4, a4, s1
                  slt          gp, s4, t5
                  lui          t6, 188325
                  xor          t4, a6, t3
                  srai         a1, zero, 17
                  slt          t0, s4, s2
                  and          s6, s5, s11
                  sll          s9, a5, s9
                  sub          t2, s1, a5
                  auipc        t5, 513978
                  xor          a4, s1, t5
                  sll          t1, s8, tp
                  srai         t1, gp, 13
                  sltiu        gp, zero, 1103
                  auipc        t6, 222207
                  sra          a1, a7, ra
                  addi         tp, a0, 185
                  srli         s6, t4, 25
                  auipc        a5, 897712
                  srai         s0, t4, 15
                  xori         a5, a2, 1172
                  addi         t2, a0, 789
                  sll          t2, s11, s8
                  addi         zero, s9, -1460
                  slt          t1, t2, t4
                  sltiu        t0, a4, -964
                  lui          s4, 578623
                  xor          t4, tp, t1
                  andi         a5, ra, -464
                  slt          s9, a2, t6
                  andi         a4, s2, 1120
                  or           t3, ra, s0
                  srai         s6, s1, 25
                  slt          s6, sp, s11
                  add          s0, s3, t3
                  sll          t6, t4, gp
                  slt          a5, s1, s1
                  slli         a4, t2, 31
                  srl          t6, t4, a5
                  or           s10, zero, sp
                  lui          a0, 120598
                  lui          t2, 709032
                  lui          s9, 417682
                  ori          s11, t6, -177
                  srli         a0, s10, 10
                  sll          a7, s8, s5
                  andi         a1, t1, -959
                  sra          s11, s2, t1
                  sra          a0, s8, t4
                  sltiu        a6, t1, -2048
                  andi         zero, s8, -593
                  or           s8, gp, a1
                  sltu         t2, s2, s4
                  srl          a0, a2, tp
                  add          gp, t4, a3
                  srli         s9, s1, 5
                  sltu         s9, t2, s3
                  and          s6, s0, a1
                  srl          gp, a3, s4
                  add          a7, t3, s9
                  sra          sp, sp, a1
                  slti         s2, s1, -1477
                  slti         t1, s3, 1908
                  xori         zero, sp, -1281
                  nop
                  andi         t0, s6, 796
                  sra          s11, s4, s8
                  sll          tp, a5, t0
                  or           zero, a7, t2
                  add          s5, s3, ra
                  srl          a2, gp, s6
                  and          s0, gp, a5
                  add          t3, a7, t0
                  srai         zero, s3, 17
                  ori          sp, s7, -816
                  slli         t3, s4, 23
                  or           t6, t1, sp
                  slti         s0, gp, 1230
                  lui          s3, 668645
                  slt          a6, t0, s10
                  slt          s0, s1, s3
                  srl          a5, a7, s5
                  sltiu        s5, s1, -1407
                  sra          sp, t6, s7
                  sltu         s8, t0, s7
                  and          a0, zero, s9
                  nop
                  andi         t4, s10, -1434
                  andi         a1, s11, 762
                  and          a4, t2, s8
                  nop
                  auipc        s3, 172816
                  or           s9, t0, s7
                  sra          t6, t0, a7
                  andi         t0, a2, -130
                  srai         t0, sp, 23
                  li           t6, 0xc1eedca3 #start riscv_int_numeric_corner_stream_10
                  li           s4, 0xbe87d771
                  li           t2, 0x0
                  li           s3, 0x0
                  li           s9, 0x0
                  li           s0, 0x0
                  li           s11, 0x4431d61c
                  li           a6, 0x80000000
                  li           a2, 0x80000000
                  li           a1, 0x2bafece2
                  sub          s3, s9, s9
                  auipc        s3, 814173
                  lui          s9, 176051
                  sub          a2, s3, s11
                  nop
                  addi         s3, a6, 1405
                  lui          t2, 284881
                  auipc        s11, 247341
                  auipc        s0, 536294
                  auipc        s9, 990161
                  auipc        s11, 334302
                  auipc        a2, 415470
                  auipc        t6, 648149
                  addi         t2, s3, 848
                  add          s11, s4, s4
                  sub          a6, s0, a2
                  add          s3, s3, s0
                  addi         s3, s3, 1030
                  nop
                  add          s0, a2, t6
                  add          a1, a1, a6
                  add          t6, s3, a2
                  sub          a6, s11, a1
                  lui          t6, 14494 #end riscv_int_numeric_corner_stream_10
                  sltiu        a5, s3, 466
                  or           t0, a5, t4
                  add          s5, s0, a4
                  and          sp, a7, a1
                  srl          a6, gp, s0
                  nop
                  xori         a7, t5, 1111
                  srai         t1, t3, 6
                  slti         a1, s2, 894
                  sub          a4, ra, t2
                  xor          t4, a2, s0
                  slti         s6, a6, -656
                  lui          s5, 982067
                  sltu         t4, s6, s3
                  srli         tp, a2, 30
                  lui          s9, 295912
                  srli         a5, s9, 23
                  xori         a2, a2, 1044
                  ori          t3, s11, 146
                  slt          s2, s7, sp
                  slli         sp, a0, 20
                  srl          t2, sp, a0
                  srli         s5, zero, 28
                  ori          a4, ra, 1105
                  or           s11, s6, s7
                  srli         t0, s7, 16
                  sra          a5, t2, tp
                  sll          a6, gp, a4
                  srli         a6, s10, 7
                  xor          a0, tp, s2
                  lui          a7, 179548
                  auipc        t3, 1015171
                  lui          a0, 130862
                  sltu         a0, s3, sp
                  addi         s8, a2, -1848
                  or           gp, t3, s0
                  xor          s3, a1, a4
                  srli         t6, t5, 8
                  sltu         zero, t6, a3
                  srli         a4, s9, 21
                  and          tp, t2, s10
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a5, 0x80000000
                  li           s5, 0x80000000
                  li           a0, 0xffffffff
                  li           t3, 0x0
                  li           a6, 0x80000000
                  li           s8, 0x80000000
                  li           a7, 0xfaa19195
                  li           s9, 0x0
                  li           t5, 0xa33d3213
                  nop
                  sub          s9, t5, s8
                  sub          a0, t5, a5
                  auipc        s11, 741073
                  lui          s5, 703726
                  add          a7, t3, a0
                  sub          a6, s9, s8
                  nop
                  sub          t5, t3, s8
                  nop
                  auipc        s8, 373753
                  sub          a6, a7, s5
                  add          s11, s5, a0
                  nop
                  auipc        t5, 717806
                  auipc        s9, 882381
                  lui          a5, 677833
                  add          a7, s9, a5 #end riscv_int_numeric_corner_stream_3
                  auipc        t3, 809831
                  and          a2, s9, s10
                  sra          t1, s1, t4
                  srai         sp, t2, 29
                  sltu         t3, s0, s10
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           t1, 0xffffffff
                  li           a4, 0x4a78459c
                  li           s11, 0x9a98e4b0
                  li           a0, 0xffffffff
                  li           a1, 0x0
                  li           t4, 0x4aafa990
                  li           s8, 0x3cf097d0
                  li           t2, 0x80000000
                  li           s0, 0x80000000
                  addi         s0, s4, -875
                  nop
                  sub          s4, a4, t1
                  lui          a1, 805327
                  addi         a4, s8, 501
                  add          s4, s11, t1
                  lui          a0, 776960
                  nop
                  addi         a0, s8, 50
                  nop
                  add          s0, a1, a0
                  auipc        s8, 480252
                  nop
                  auipc        s0, 454617
                  sub          s0, a4, s0
                  auipc        s8, 313013
                  addi         a4, t4, 1861
                  add          s11, a0, s0
                  nop
                  auipc        t4, 835164
                  addi         a1, a4, -2019
                  sub          s8, t2, s8
                  sub          s11, a0, a0 #end riscv_int_numeric_corner_stream_8
                  srl          t5, s6, s0
                  add          t6, s7, a1
                  slli         s0, s11, 0
                  auipc        gp, 11402
                  slt          s0, s5, gp
                  sub          t5, s11, gp
                  slli         s4, t2, 22
                  sll          t0, gp, s9
                  nop
                  srl          tp, sp, t3
                  or           s11, t0, s0
                  srai         a4, a2, 23
                  xor          t6, t5, s9
                  or           zero, a1, a6
                  xor          s10, s1, t4
                  srli         a2, s1, 7
                  xor          s2, s1, s3
                  srai         s5, t4, 20
                  xor          s6, a0, a1
                  auipc        sp, 509775
                  slt          s2, s6, s1
                  sltu         s3, s1, t4
                  lui          a5, 181470
                  slli         gp, s7, 25
                  and          s8, a1, t4
                  sltu         a7, a7, t6
                  slt          s3, t1, a0
                  sltu         t3, s7, tp
                  lui          a0, 283510
                  sltiu        s11, t6, 78
                  slli         sp, s10, 26
                  auipc        s8, 391533
                  sll          a5, s2, a1
                  add          zero, s9, s5
                  or           a7, a4, s11
                  sltu         a5, a2, s0
                  or           s4, s4, s4
                  addi         a1, s1, -818
                  sltu         t6, ra, a4
                  srli         t2, sp, 12
                  and          a4, t5, t4
                  and          s0, tp, ra
                  srli         zero, a1, 10
                  ori          a1, a3, -397
                  srli         s2, t4, 25
                  sltiu        zero, a5, 410
                  sub          t3, t1, gp
                  slt          ra, a3, zero
                  srl          s5, ra, t3
                  xor          s11, s9, t4
                  addi         t3, s0, -145
                  sltiu        t0, s4, 1517
                  xori         s3, s11, 1209
                  sltu         a0, s1, t0
                  ori          t4, gp, -31
                  slt          s4, s8, a5
                  srli         s5, zero, 22
                  and          gp, s3, tp
                  lui          a6, 982671
                  andi         s11, a3, -1326
                  andi         s6, s5, 1819
                  srli         s6, ra, 13
                  srli         t2, t4, 21
                  add          s6, t2, sp
                  auipc        a6, 36685
                  xori         t2, t0, 1966
                  srl          a4, a6, s10
                  sub          zero, s2, s5
                  add          s3, s4, s9
                  slli         a7, a5, 2
                  sll          a4, t1, s8
                  xor          gp, t6, s10
                  slt          s0, a4, t4
                  sltiu        t5, tp, 1571
                  sub          s11, t0, s9
                  auipc        sp, 19501
                  add          s5, t3, s6
                  addi         a5, s6, -1343
                  or           s10, s6, s3
                  auipc        t5, 980563
                  srai         s0, t1, 13
                  add          s10, s8, sp
                  add          zero, s3, s2
                  xor          s4, ra, a5
                  auipc        t1, 433210
                  sltiu        a7, tp, -730
                  xori         s5, a2, 1570
                  sltiu        zero, sp, 1196
                  slt          a1, s1, t2
                  ori          ra, s3, 1511
                  sub          a1, zero, zero
                  or           a4, s7, a5
                  nop
                  lui          a1, 445939
                  lui          s3, 968876
                  or           t2, s3, t4
                  slli         t5, t1, 2
                  and          sp, a6, t2
                  addi         a1, t6, -1125
                  ori          t4, t5, -1243
                  and          t1, a2, s7
                  ori          a1, s11, 794
                  addi         zero, a5, 352
                  and          a2, s0, a3
                  srli         s9, t6, 30
                  xor          t4, a6, t2
                  xori         s6, a0, -1777
                  slli         s0, a0, 20
                  xor          a0, t5, s8
                  nop
                  srli         a1, a0, 28
                  srli         s9, t2, 27
                  srl          gp, a4, s2
                  sll          s0, t2, s3
                  sltiu        s4, t0, 1771
                  nop
                  sll          zero, a1, s10
                  srli         t1, t0, 18
                  sub          s9, a7, t4
                  sltiu        s11, tp, -508
                  lui          a1, 974363
                  sll          tp, s8, a3
                  xor          gp, a6, s4
                  slli         sp, sp, 24
                  sltu         a7, a4, s0
                  xor          zero, s4, t3
                  nop
                  addi         s10, sp, 351
                  or           t1, a2, s6
                  srai         s6, t5, 26
                  xori         t1, t2, 1585
                  add          s3, gp, sp
                  or           s5, t0, s5
                  nop
                  srai         s0, t0, 18
                  slt          s0, a5, s5
                  srai         s11, t6, 25
                  slt          s6, zero, s5
                  sub          a0, s1, zero
                  sll          tp, sp, t3
                  or           s5, s2, s11
                  xor          t0, ra, gp
                  srl          a4, t5, a5
                  and          s10, t5, s11
                  slli         s3, a7, 0
                  xori         s11, s3, -707
                  sltiu        gp, a6, 740
                  or           a0, sp, a2
                  sll          s9, sp, a0
                  sub          s10, s3, ra
                  or           t4, t4, t0
                  add          a4, a2, tp
                  sltiu        t1, s1, -5
                  and          a5, s3, zero
                  addi         a1, tp, -1694
                  srai         t0, sp, 3
                  sll          gp, t0, a1
                  addi         t0, t2, 484
                  srai         s3, a4, 20
                  or           s10, a0, s7
                  sra          s8, tp, gp
                  addi         s3, t5, 1467
                  sltu         s10, a7, tp
                  srl          a7, s9, t4
                  xori         s4, ra, -1203
                  xor          t0, t2, tp
                  addi         t2, s11, 433
                  sltiu        t6, t4, -340
                  auipc        gp, 188150
                  andi         s6, s7, -737
                  add          gp, s0, gp
                  sll          t1, s5, s11
                  xor          s9, a0, a6
                  sll          a6, t4, a4
                  auipc        a7, 528912
                  slt          a6, a0, a0
                  xori         s11, a4, 418
                  sra          a4, a6, s5
                  srl          gp, a6, a4
                  sltu         t3, gp, t3
                  slli         s11, sp, 6
                  addi         gp, t6, -482
                  slli         gp, a7, 2
                  add          s4, s7, t0
                  lui          t2, 894923
                  ori          s2, s4, -1834
                  sra          s0, t6, s3
                  add          a6, a2, a6
                  andi         a6, s9, -1253
                  srli         gp, s10, 0
                  auipc        t2, 460622
                  slti         a5, zero, -1645
                  slli         a6, s2, 30
                  and          s11, a3, a1
                  addi         ra, s3, -996
                  slli         ra, zero, 26
                  ori          a4, a6, 1913
                  xori         s8, gp, -500
                  addi         s5, s4, 1631
                  sltiu        s5, a7, 1516
                  ori          t6, ra, -898
                  xor          a4, a3, s4
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           gp, 0x0
                  li           t6, 0x80000000
                  li           s4, 0x80000000
                  li           s8, 0x80000000
                  li           s5, 0x80000000
                  li           a7, 0x8288b7b5
                  li           a1, 0x49095658
                  li           t4, 0xffffffff
                  li           a0, 0xb21c0b7c
                  lui          s4, 97875
                  add          gp, a1, t4
                  auipc        a1, 39591
                  add          s4, s5, t6
                  lui          gp, 416303
                  auipc        s8, 149200
                  sub          a0, a0, a0
                  lui          s4, 371025
                  addi         s5, a0, 228
                  sub          s4, s5, s4
                  nop
                  add          t6, a0, s4
                  lui          t6, 474720
                  sub          t6, s5, s5
                  sub          a7, t4, s5
                  auipc        a1, 510318
                  add          s4, t2, a0
                  sub          s8, a7, t2
                  lui          t2, 535125
                  add          s4, t4, a1
                  auipc        a0, 267806
                  sub          t4, a0, a7
                  nop
                  add          s4, t4, s8
                  lui          t4, 268980
                  nop
                  nop
                  addi         gp, gp, -185
                  add          s8, s4, a0
                  add          t6, t2, s8 #end riscv_int_numeric_corner_stream_13
                  addi         zero, a7, -384
                  slt          a0, t5, s6
                  nop
                  slti         a4, s2, -1894
                  sub          s4, t5, a4
                  sltu         a5, t4, a6
                  sra          t2, gp, t0
                  sll          s5, s11, s2
                  srai         ra, s6, 13
                  xori         tp, a0, -273
                  srl          s3, a0, s2
                  nop
                  sra          gp, s4, s11
                  ori          t1, s10, -950
                  lui          t4, 600497
                  sltu         s9, tp, t4
                  sra          s2, a4, s7
                  srai         sp, t3, 30
                  and          s10, a4, tp
                  nop
                  sub          a4, s3, ra
                  srai         a6, s1, 2
                  srai         a5, a2, 8
                  and          a0, t5, t3
                  slti         a1, t3, 36
                  addi         s0, t3, 863
                  slli         s5, gp, 19
                  slli         a6, t4, 4
                  or           gp, a0, s1
                  xori         a0, zero, 1655
                  sltu         a6, a2, ra
                  or           a2, a6, a0
                  slt          t0, a6, s0
                  add          s6, a4, s0
                  sub          a1, s10, t5
                  slt          s5, s9, s9
                  srai         t3, gp, 14
                  slti         t0, a2, -1583
                  auipc        t0, 818003
                  xor          a7, s0, s1
                  sltu         ra, t1, tp
                  ori          ra, s5, 1357
                  xori         a0, s7, 247
                  sra          s10, s9, sp
                  sub          gp, sp, t1
                  slt          s6, a6, s7
                  xori         t6, s1, 1280
                  slt          s5, t6, s3
                  and          a0, zero, a1
                  andi         a6, gp, 50
                  slti         s0, a6, -57
                  srli         ra, s4, 6
                  sra          t3, a5, t2
                  sub          tp, s10, t2
                  sltiu        s10, a4, -746
                  srl          a5, s1, s2
                  addi         t1, s6, 1723
                  slti         s8, sp, -1564
                  sra          s3, t6, a3
                  sltiu        tp, t3, 804
                  slti         gp, a3, -1635
                  slti         a5, s8, 1331
                  sltiu        s0, a2, -103
                  srai         s9, a7, 20
                  ori          s5, t6, 1821
                  lui          a1, 440557
                  sltu         a7, a3, s5
                  lui          s11, 5988
                  and          ra, s2, sp
                  add          s9, a6, t3
                  and          a0, a0, zero
                  srai         a2, t5, 9
                  sra          s2, s11, a5
                  xor          s0, s5, s6
                  srai         t5, a2, 25
                  slti         a1, a3, -1661
                  slt          ra, t6, s2
                  xori         t2, t6, 153
                  sltu         tp, t3, zero
                  xor          s2, a2, t0
                  xori         t5, t1, -1193
                  andi         s0, t5, -752
                  srli         s11, s3, 22
                  sltu         t2, s8, t4
                  auipc        tp, 123120
                  xori         s0, t5, -134
                  xor          a1, t4, s6
                  sub          a4, a5, s3
                  slt          a6, a0, s0
                  xori         a7, s4, -580
                  xor          t0, t5, s1
                  sub          a5, a2, gp
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s0, 0xdf5df4be
                  li           tp, 0x80000000
                  li           s8, 0x0
                  li           ra, 0xffffffff
                  li           sp, 0xf3d0128a
                  li           a4, 0x80000000
                  li           a7, 0xffffffff
                  li           t2, 0xffffffff
                  li           t0, 0x0
                  lui          s0, 333242
                  add          t2, tp, a7
                  lui          s0, 834232
                  sub          s0, t2, s8
                  auipc        sp, 227924
                  sub          sp, s0, sp
                  addi         ra, t0, 1377
                  nop
                  lui          sp, 323084
                  nop
                  addi         a7, a7, 1560
                  add          s8, a4, s0
                  nop
                  sub          t0, t0, t0
                  add          t2, ra, ra
                  auipc        sp, 260995
                  lui          t0, 801633
                  auipc        s0, 192890
                  add          ra, t0, sp
                  sub          s0, s0, a7
                  auipc        ra, 180558
                  sub          sp, sp, a4 #end riscv_int_numeric_corner_stream_14
                  sltu         t0, sp, t4
                  sltu         a1, a4, a4
                  xor          a1, t5, t4
                  srl          gp, t4, a5
                  xor          a6, a4, s6
                  lui          ra, 13287
                  srai         t1, gp, 5
                  or           a5, s0, a4
                  or           t6, tp, sp
                  and          tp, s3, s4
                  srl          a1, t3, s7
                  nop
                  andi         s3, t6, -239
                  sltiu        a1, s7, 699
                  nop
                  or           ra, sp, a6
                  add          t4, zero, s2
                  srl          t2, a1, a6
                  nop
                  nop
                  slt          a1, s7, t2
                  sra          a1, a5, t2
                  auipc        ra, 64942
                  ori          gp, s3, -716
                  and          s6, a1, s2
                  or           s2, s8, zero
                  add          zero, t5, a4
                  srl          t4, s11, s8
                  xor          s5, a1, zero
                  add          a2, t1, a5
                  addi         s6, t5, -264
                  ori          s6, a0, -1747
                  slt          a5, s11, a6
                  slt          s11, a6, t1
                  srl          ra, t2, a6
                  sltu         tp, s4, zero
                  andi         s3, s4, -40
                  slti         s2, s6, 1606
                  add          s0, s6, s0
                  sltu         a5, a4, sp
                  nop
                  ori          s11, s5, 1581
                  slt          s3, s3, a2
                  sltu         a5, s5, t5
                  ori          a6, s11, 1894
                  sll          zero, t2, s7
                  srl          s6, s7, s1
                  slt          s10, s2, a0
                  auipc        s5, 959151
                  auipc        s6, 801156
                  and          t3, a7, a2
                  sltu         t6, t1, gp
                  sra          a1, s6, s1
                  srl          a6, gp, tp
                  sll          s9, s6, zero
                  slt          a4, s11, a4
                  sll          a7, s8, s10
                  slt          s9, sp, s0
                  or           s11, s4, s5
                  sltu         t0, t4, a6
                  slli         s2, a2, 22
                  sra          s11, a6, s0
                  and          s10, s6, s0
                  xori         gp, s3, 1151
                  and          s3, s2, t3
                  srl          t5, s0, t0
                  auipc        s5, 628230
                  and          s9, a0, gp
                  sltu         s4, a2, t5
                  srl          gp, s9, s1
                  addi         s11, a0, -1253
                  slti         sp, t6, -536
                  nop
                  slti         s9, a1, -51
                  ori          a7, a3, 1691
                  slli         t4, t3, 15
                  nop
                  srl          t4, s3, s11
                  srl          tp, a6, s2
                  add          t0, a4, s8
                  ori          s9, s10, -1623
                  and          s3, s6, zero
                  sll          s4, a7, s2
                  xor          t2, zero, s10
                  lui          s10, 342875
                  ori          s11, a6, 748
                  srl          a6, a7, s0
                  slli         t4, s5, 17
                  sltiu        s4, a1, 495
                  sra          t6, a4, s4
                  auipc        a5, 121377
                  add          t5, a7, t4
                  srl          s9, s0, s4
                  sub          s5, t5, s6
                  sub          s2, sp, s0
                  slli         tp, a3, 10
                  srl          s5, s5, a4
                  xor          t3, s6, t0
                  xor          t1, t0, a3
                  srl          a2, s9, s2
                  sll          s3, a0, a3
                  xor          t4, t4, a0
                  auipc        s8, 1020427
                  srl          s9, s1, a3
                  sltu         s4, ra, t6
                  xor          tp, s1, t4
                  srai         a1, s5, 19
                  and          zero, a3, t0
                  andi         s9, s2, -1585
                  sub          a0, s0, s8
                  slli         s2, s11, 7
                  andi         a2, t6, 1124
                  xori         a7, s6, -1835
                  ori          s3, a3, -719
                  lui          ra, 966768
                  xori         gp, a7, -1924
                  srai         t5, s3, 16
                  andi         t5, a7, -1849
                  or           t3, s5, a5
                  add          s0, sp, s3
                  xor          t6, s1, a4
                  sub          s2, a2, a7
                  xor          t4, s9, s8
                  xor          s5, s11, t4
                  srl          t5, s6, s9
                  and          s4, sp, zero
                  xor          a2, a3, tp
                  sll          a6, t6, t6
                  srl          s4, t3, s6
                  srli         t6, sp, 29
                  srl          a7, t4, s0
                  addi         t5, t5, 1629
                  la x13, test_done
                  jalr x0, x13, 0
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x23, x9, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x14, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x14, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x14, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x14, x18, ecall_handler
                  li x18, 0x1
                  beq x14, x18, instr_fault_handler
                  li x18, 0x5
                  beq x14, x18, load_fault_handler
                  li x18, 0x7
                  beq x14, x18, store_fault_handler
                  li x18, 0xc
                  beq x14, x18, pt_fault_handler
                  li x18, 0xd
                  beq x14, x18, pt_fault_handler
                  li x18, 0xf
                  beq x14, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x9, x23, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
