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
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x1
                  li x2, 0x80000000
                  li x3, 0xfb42e2fa
                  li x4, 0x80000000
                  li x6, 0x0
                  li x7, 0x1278ce85
                  li x8, 0x0
                  li x9, 0xf3dc2f70
                  li x10, 0x40d7ba7e
                  li x11, 0x6b1bce20
                  li x12, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xb2b6faec
                  li x16, 0xc
                  li x17, 0xc
                  li x18, 0xf7974b7e
                  li x19, 0x80000000
                  li x20, 0xcd5fe3c1
                  li x21, 0xfbdb4261
                  li x22, 0x67b8cd0c
                  li x23, 0x80000000
                  li x24, 0xd3a1b3b3
                  li x25, 0x9
                  li x26, 0x655ae58e
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0x61900358
                  la x5, user_stack_end
main:             li           s9, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s5, 0x80000000
                  li           s10, 0x80000000
                  li           tp, 0xffffffff
                  li           s4, 0x80000000
                  li           t5, 0x80000000
                  li           t4, 0xffffffff
                  li           s1, 0x0
                  li           t3, 0x80000000
                  li           a2, 0x0
                  addi         s5, t4, -1345
                  lui          s10, 996464
                  lui          t4, 558287
                  nop
                  add          s1, t3, s5
                  lui          s4, 282035
                  lui          s1, 891479
                  addi         t4, s9, -1327
                  sub          tp, s10, tp
                  lui          s1, 455893
                  lui          s10, 713036
                  lui          s4, 821988
                  nop
                  nop
                  addi         a2, a2, 1720
                  addi         s10, s10, -1639
                  nop
                  lui          t4, 721861
                  nop
                  lui          s9, 307541
                  nop
                  sub          t5, s9, s5
                  lui          s9, 203642 #end riscv_int_numeric_corner_stream_6
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           t3, 0x1bdd1658
                  li           s6, 0x0
                  li           s4, 0xee10bef6
                  li           t2, 0x4c1e2bcf
                  li           a1, 0xffffffff
                  li           gp, 0x0
                  li           s1, 0x80000000
                  li           s9, 0x80000000
                  li           t4, 0xf2e9ae2
                  nop
                  nop
                  addi         s7, s9, 43
                  add          s6, s7, t4
                  sub          s4, s6, s9
                  add          s4, s6, s1
                  addi         t4, t2, 874
                  nop
                  addi         t4, s1, -587
                  add          t2, s9, gp
                  add          gp, t4, s4
                  addi         gp, s1, -1746
                  auipc        s1, 388700
                  add          s4, gp, t4
                  auipc        t2, 771039
                  sub          t3, t2, t4
                  lui          s6, 638613
                  sub          t3, s6, t4
                  lui          t4, 252721
                  lui          s7, 426157
                  nop
                  addi         s4, s7, -731
                  auipc        t2, 396320
                  nop
                  addi         s7, t2, -1106
                  lui          t2, 639762
                  addi         s7, s6, 1845
                  add          a1, t3, s1
                  lui          s9, 392714 #end riscv_int_numeric_corner_stream_18
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t6, 0xffffffff
                  li           t1, 0xffffffff
                  li           s0, 0x80000000
                  li           s5, 0x0
                  li           a5, 0x80000000
                  li           s7, 0xffffffff
                  li           a0, 0x1af1cc09
                  li           t2, 0x0
                  li           s2, 0xffffffff
                  nop
                  nop
                  auipc        s1, 544722
                  lui          a0, 499241
                  addi         s7, s0, 771
                  addi         s0, a5, -167
                  nop
                  sub          a5, s1, s7
                  lui          t6, 604363
                  add          t1, s7, t2
                  add          t1, a0, a0
                  addi         t6, s0, -1055
                  sub          t2, t6, t1
                  add          t6, s0, a5
                  addi         s2, t6, 419
                  sub          t1, a5, a5
                  nop
                  nop
                  nop
                  nop
                  add          t1, s5, s2
                  addi         s2, s2, -1197 #end riscv_int_numeric_corner_stream_12
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s2, 0x4e8b0bad
                  li           gp, 0xffffffff
                  li           tp, 0x80000000
                  li           t3, 0xb7e47208
                  li           t6, 0x0
                  li           a7, 0x10d785e1
                  li           s11, 0xffffffff
                  li           s1, 0x3a8e70c2
                  li           a0, 0x0
                  add          tp, tp, gp
                  add          t3, s11, s2
                  addi         a0, a1, 1470
                  lui          t6, 908109
                  add          s2, s2, t6
                  auipc        tp, 809759
                  auipc        s11, 1041810
                  auipc        a7, 819884
                  lui          a1, 711485
                  sub          a7, tp, s1
                  add          tp, a0, t3
                  lui          t6, 191446
                  add          a1, t3, a0
                  auipc        a1, 998677
                  add          a1, s11, t6
                  addi         s2, a1, 776
                  addi         tp, t6, -632
                  sub          a0, a1, tp
                  lui          s1, 9118
                  lui          a1, 980759 #end riscv_int_numeric_corner_stream_3
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s3, 0xffffffff
                  li           gp, 0x0
                  li           s4, 0x80000000
                  li           s10, 0x7acd9754
                  li           t2, 0x97460c3d
                  li           s11, 0x80000000
                  li           ra, 0x0
                  li           a2, 0x2d494fd9
                  li           t6, 0x91643ea2
                  nop
                  nop
                  add          t6, a2, gp
                  lui          s4, 972508
                  sub          s10, s3, ra
                  auipc        t4, 485482
                  add          ra, s4, gp
                  auipc        ra, 165412
                  addi         ra, ra, -728
                  addi         t6, s3, 73
                  addi         gp, t4, -738
                  sub          t6, gp, t4
                  add          s10, s3, s4
                  addi         t2, gp, 565
                  lui          s3, 616528
                  lui          s11, 790440
                  addi         gp, t6, 1654
                  lui          s4, 435845
                  addi         s3, s3, -776
                  nop
                  auipc        gp, 41762 #end riscv_int_numeric_corner_stream_13
                  li           tp, 0xfa5323dc #start riscv_int_numeric_corner_stream_0
                  li           a1, 0xffffffff
                  li           a6, 0xffffffff
                  li           s6, 0x7d402d8a
                  li           s1, 0x80000000
                  li           t4, 0x0
                  li           t6, 0xbce19724
                  li           s11, 0xffffffff
                  li           s4, 0x80000000
                  li           s9, 0xffffffff
                  auipc        s1, 61467
                  auipc        s1, 992493
                  addi         a6, a6, 689
                  sub          s9, s6, s6
                  auipc        tp, 836284
                  addi         s6, a1, -240
                  nop
                  auipc        a6, 505146
                  addi         tp, a1, -944
                  addi         s11, s9, -578
                  nop
                  lui          a1, 257746
                  addi         a6, s9, 1636
                  auipc        s9, 649180
                  auipc        t4, 649085
                  lui          s9, 396368 #end riscv_int_numeric_corner_stream_0
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a6, 0xffffffff
                  li           a2, 0x80000000
                  li           a4, 0x80000000
                  li           a1, 0xffffffff
                  li           a7, 0x0
                  li           t2, 0xffffffff
                  li           s0, 0xffffffff
                  li           s9, 0x80000000
                  li           t1, 0xa8343f94
                  add          a1, a4, s4
                  addi         a1, s0, -1058
                  nop
                  sub          a2, a4, a4
                  lui          s9, 1001682
                  auipc        s0, 58700
                  addi         a7, a1, 1729
                  sub          s4, a6, a7
                  addi         a2, a6, -1393
                  lui          s9, 380420
                  sub          t1, s9, a7
                  auipc        a7, 47082
                  add          s0, s0, t1
                  lui          a2, 230549
                  auipc        a2, 51153
                  sub          a2, a6, s9
                  addi         s9, s9, 1639
                  lui          t2, 17360
                  nop
                  lui          s0, 340836
                  nop
                  nop
                  nop
                  nop
                  auipc        a2, 455984
                  lui          s9, 461965
                  nop #end riscv_int_numeric_corner_stream_9
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           a5, 0x0
                  li           s2, 0x33c7d4e2
                  li           a0, 0x8d7b6212
                  li           s5, 0x0
                  li           a1, 0x80000000
                  li           t5, 0xffffffff
                  li           s7, 0x6ed955ca
                  li           a2, 0x0
                  li           gp, 0x0
                  sub          a1, a0, s7
                  nop
                  add          a5, s5, s8
                  addi         gp, a1, -1626
                  lui          a5, 33662
                  add          s8, s7, a1
                  addi         s8, s2, -72
                  addi         s5, a2, -958
                  add          a1, a0, gp
                  nop
                  lui          a1, 972458
                  add          a0, t5, s8
                  auipc        s2, 704478
                  nop
                  lui          a0, 97584
                  add          gp, a1, s2
                  lui          a5, 179227
                  lui          a0, 822820
                  addi         s7, t5, -1524
                  auipc        a0, 1035965
                  nop
                  nop
                  add          a2, s7, a2
                  sub          a2, s7, a2
                  add          s7, gp, a1
                  lui          s5, 698323
                  nop
                  sub          s2, a5, s2 #end riscv_int_numeric_corner_stream_2
                  li           a2, 0x6a343ffe #start riscv_int_numeric_corner_stream_5
                  li           t2, 0x80000000
                  li           a0, 0xffffffff
                  li           s6, 0x80000000
                  li           t3, 0x73e659e1
                  li           s5, 0x80000000
                  li           a6, 0xffffffff
                  li           t5, 0xd83ff71e
                  li           t1, 0x80000000
                  li           t6, 0xad3c71cc
                  sub          t5, s6, a2
                  auipc        t3, 965550
                  addi         a0, t6, 999
                  nop
                  auipc        s6, 33059
                  add          a2, t2, t5
                  addi         s6, t3, -991
                  addi         t1, t5, 888
                  sub          t2, a2, t3
                  nop
                  lui          t2, 563515
                  add          t1, t6, s5
                  sub          t2, s5, a2
                  lui          s6, 102839
                  lui          t5, 1006558
                  add          t1, s5, a6
                  auipc        t2, 604383
                  add          t3, t5, a0
                  auipc        t2, 91244
                  nop
                  nop
                  lui          a0, 68115
                  auipc        t6, 204932
                  auipc        a0, 15674
                  nop
                  lui          a6, 583637
                  addi         t3, t1, 696
                  add          a2, t2, a6
                  addi         a6, t5, -995 #end riscv_int_numeric_corner_stream_5
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           gp, 0x0
                  li           s4, 0x80000000
                  li           t6, 0x80000000
                  li           a2, 0xffffffff
                  li           s5, 0x80000000
                  li           tp, 0xffffffff
                  li           s10, 0x80000000
                  li           a5, 0x0
                  li           t1, 0x80000000
                  add          gp, s5, a5
                  nop
                  sub          a5, s10, gp
                  lui          s4, 658795
                  lui          a2, 188590
                  auipc        a2, 1042834
                  lui          tp, 979173
                  addi         t6, a2, 1572
                  addi         t1, s6, 107
                  lui          t1, 246540
                  addi         gp, s6, 204
                  lui          t1, 650106
                  addi         gp, a5, -271
                  addi         gp, s4, 244
                  lui          t1, 775358
                  auipc        t6, 1015521 #end riscv_int_numeric_corner_stream_8
                  slti         tp, t4, -258
                  sub          s6, s7, a7
                  auipc        t3, 1022234
                  sra          a4, s10, ra
                  srai         s6, a5, 0
                  srl          ra, a6, s8
                  sra          s3, a3, s8
                  lui          t6, 360959
                  srai         a5, tp, 1
                  xor          a1, t1, a5
                  lui          a1, 797030
                  nop
                  ori          a5, a4, 1208
                  sra          a7, s9, s4
                  srai         a4, s1, 9
                  sra          s0, sp, a3
                  sltiu        a7, s0, -1471
                  addi         zero, tp, 1718
                  or           gp, ra, t3
                  srli         t6, s7, 6
                  xor          tp, a7, s0
                  srl          s4, s7, s0
                  nop
                  srai         s4, zero, 24
                  and          s5, s2, t4
                  nop
                  xori         s1, tp, -1038
                  srai         zero, a0, 2
                  nop
                  ori          s11, s7, 687
                  srli         s1, t4, 3
                  addi         t6, a7, 1053
                  andi         s4, t4, 1106
                  ori          s0, t6, -644
                  addi         t2, s10, 749
                  slti         s2, a5, -1101
                  srai         zero, a1, 4
                  slt          a2, a7, s1
                  xor          a1, sp, a3
                  slti         s0, a3, -1278
                  or           t6, s4, a7
                  srli         t6, a7, 30
                  andi         s2, a0, 1864
                  sub          s9, t5, gp
                  addi         t1, sp, -544
                  andi         a0, s5, -1734
                  srli         a7, s0, 28
                  srli         s6, a4, 14
                  slt          t5, zero, s8
                  xori         t5, s9, 2025
                  lui          s9, 282618
                  sltiu        s9, tp, -1186
                  slti         t3, s11, -1797
                  xor          a2, tp, t5
                  srl          a4, s11, s7
                  xori         s5, s10, 510
                  addi         a5, s10, 405
                  slti         a6, s2, 1936
                  sltu         s10, a0, s11
                  sltu         t1, s4, s7
                  add          t2, a6, t4
                  slli         s4, a2, 0
                  sll          s8, a5, tp
                  sltu         gp, gp, s2
                  sll          a1, a1, t6
                  add          t3, t3, s11
                  and          s3, s4, s7
                  auipc        t2, 756575
                  srli         t2, s3, 22
                  xori         a7, s1, 1452
                  sltiu        zero, t4, -464
                  sub          t6, s10, ra
                  srai         s5, a6, 0
                  sra          ra, sp, tp
                  srai         a2, a1, 23
                  srai         s7, a0, 15
                  srai         a5, t3, 1
                  ori          t4, a3, -1419
                  sll          s7, t4, t6
                  sra          s7, t5, ra
                  addi         s6, t5, -423
                  sll          s1, zero, a1
                  addi         s1, t3, 654
                  andi         t6, t5, -476
                  sra          s3, a5, t5
                  add          a4, s0, s8
                  or           a7, s5, s2
                  sll          s7, a7, t4
                  lui          t1, 562022
                  add          ra, t1, sp
                  sra          s5, t0, s8
                  add          s10, a7, s11
                  sub          s10, tp, s2
                  or           a5, s4, a2
                  sltu         s0, a3, s7
                  sll          a0, s9, a3
                  slti         s10, a0, -1639
                  slli         s10, a2, 29
                  ori          s2, t5, -1848
                  slli         ra, a0, 4
                  lui          a0, 58376
                  add          t4, a2, s9
                  srli         s3, sp, 17
                  lui          s0, 868838
                  srl          a0, t3, a1
                  or           s6, a6, s1
                  sll          s7, s10, sp
                  srli         tp, t4, 7
                  slti         gp, a3, 710
                  xor          a5, s0, s2
                  sll          a6, s6, t2
                  andi         a7, sp, -1858
                  slt          s2, s7, s1
                  andi         a2, s7, 1153
                  addi         gp, s3, 602
                  lui          s7, 478728
                  addi         s9, t3, 1198
                  lui          t2, 480176
                  sltu         s9, zero, zero
                  and          a6, t1, s7
                  xori         t1, a7, 290
                  add          a7, t0, t6
                  xori         a7, ra, -1453
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t6, 0x7308c205
                  li           a6, 0x80000000
                  li           s9, 0xffffffff
                  li           s0, 0x66eac2bf
                  li           s3, 0x37b09e81
                  li           t4, 0x4576b21
                  li           a0, 0xffffffff
                  li           s5, 0xa3c18a50
                  li           t3, 0x0
                  nop
                  addi         a0, t6, 467
                  auipc        t3, 493408
                  addi         s5, a1, 1797
                  addi         s9, a6, -709
                  auipc        s0, 61371
                  add          t6, s3, a0
                  auipc        a1, 702558
                  lui          s0, 108750
                  add          s9, a0, t4
                  sub          s3, a0, a0
                  auipc        t4, 329826
                  sub          t6, s5, a1
                  sub          t4, s3, s9
                  lui          t4, 700569
                  nop
                  add          s0, s5, s0
                  add          t6, s3, s3
                  addi         s9, t6, 217
                  lui          t3, 962899 #end riscv_int_numeric_corner_stream_1
                  add          a0, s9, t6
                  addi         a0, a7, -689
                  sll          s2, t5, gp
                  ori          a2, gp, 39
                  lui          t6, 712250
                  and          t1, s4, zero
                  srai         zero, a3, 1
                  lui          s4, 600349
                  slti         s11, s2, 1919
                  or           zero, s3, s10
                  ori          tp, t0, -1396
                  sltu         t1, a2, t2
                  or           s4, ra, t1
                  srai         ra, t5, 7
                  add          a1, t4, zero
                  andi         t5, s2, -1538
                  and          t4, s2, t6
                  or           a5, a4, zero
                  and          zero, t4, a7
                  or           t1, a1, s0
                  srai         t5, s7, 11
                  lui          a1, 322482
                  and          tp, s2, tp
                  srai         a6, a6, 9
                  auipc        s3, 750790
                  andi         ra, s1, -310
                  xor          t5, a1, a6
                  nop
                  sltiu        s8, a5, -1164
                  and          s1, s10, s3
                  addi         a4, a5, -1536
                  slti         a6, gp, -620
                  nop
                  addi         s6, s2, -1768
                  xori         t3, t0, -719
                  slti         t3, sp, -685
                  sra          s4, t3, t1
                  sltiu        a1, a7, -1956
                  or           s7, a4, tp
                  xori         ra, s5, -1637
                  sltiu        s1, t1, -1448
                  xori         a6, gp, -1105
                  nop
                  or           a6, sp, t0
                  xor          a5, tp, s7
                  sub          t1, s8, s1
                  slti         a4, gp, 1043
                  nop
                  auipc        t3, 764572
                  slli         s3, t2, 0
                  slt          a2, t5, s9
                  sltiu        zero, s5, 753
                  ori          a1, s11, -114
                  sub          a0, s9, ra
                  slti         s2, a6, 281
                  srl          a1, a2, s4
                  or           a6, a2, t2
                  slt          s6, a2, a6
                  sltu         a6, a5, gp
                  xori         t4, s4, 980
                  xori         s0, tp, -828
                  slli         a4, s4, 10
                  and          s9, t0, ra
                  xor          t4, s7, t2
                  xori         s4, t0, 1238
                  xori         tp, tp, 1234
                  slti         a1, s2, -423
                  xor          a0, s7, s10
                  and          t6, s8, s3
                  sra          gp, a3, a5
                  sll          t3, sp, s6
                  xori         t6, zero, -12
                  xori         a6, a2, 1780
                  auipc        s1, 649543
                  srli         s8, a6, 22
                  andi         gp, s8, 1906
                  ori          t6, s1, -1145
                  slli         tp, s10, 2
                  slti         tp, s6, 1682
                  slt          t3, a1, t1
                  srai         a5, a7, 6
                  ori          a5, s4, 1063
                  sltu         t1, s3, gp
                  slti         s2, a3, -1267
                  xori         s7, a0, -1231
                  auipc        s2, 538012
                  addi         s8, a1, -21
                  srl          s2, sp, sp
                  xor          gp, a4, s2
                  sll          t5, t0, a3
                  auipc        t1, 1018862
                  slt          s3, sp, a0
                  sltu         ra, a6, tp
                  sub          s3, s9, s10
                  sub          a5, t5, t5
                  ori          s7, s10, -367
                  srai         s10, a1, 20
                  sub          a0, t6, zero
                  lui          a4, 183355
                  srl          tp, t6, s6
                  ori          a5, s6, -584
                  sltu         a2, t2, s7
                  sll          s5, zero, a1
                  sub          s3, s6, s8
                  and          ra, s5, s10
                  xori         zero, a2, -1740
                  andi         s6, s10, 1547
                  add          a4, s7, ra
                  sub          tp, t2, s7
                  slli         gp, s0, 31
                  sub          s10, a6, s10
                  and          a2, zero, s9
                  slli         t2, t5, 29
                  auipc        zero, 486441
                  or           s4, s1, a0
                  slti         zero, sp, 1133
                  addi         a6, s3, -579
                  sub          s2, s4, a3
                  lui          t3, 240452
                  nop
                  ori          t2, s7, -198
                  lui          tp, 17032
                  nop
                  xori         s2, a4, 1142
                  or           s5, zero, tp
                  add          s2, s0, a2
                  sltiu        s3, t4, -166
                  sub          a0, s4, t6
                  sll          gp, a1, sp
                  xor          t5, a5, a1
                  srai         a5, s6, 6
                  auipc        a0, 814373
                  auipc        a0, 172698
                  and          s3, s3, a3
                  srli         s3, a1, 29
                  auipc        a6, 869148
                  add          a4, sp, s5
                  xori         a1, s5, -1561
                  sltu         a7, s8, a0
                  slti         t6, t0, -1031
                  andi         s3, t1, 523
                  lui          s9, 61286
                  sra          a2, a4, a6
                  sltu         t1, zero, s11
                  xor          s4, a7, t4
                  and          zero, s8, t5
                  ori          s3, s10, -134
                  slti         t2, s10, -1764
                  lui          ra, 808737
                  slli         a7, t0, 20
                  xori         t3, s11, -68
                  sltiu        gp, a6, -1221
                  xor          s9, s10, s0
                  srai         s3, t4, 25
                  srai         t5, a1, 29
                  srli         a7, t5, 31
                  nop
                  slti         a1, s5, -686
                  add          a1, a6, a0
                  sltiu        a2, s11, 771
                  xor          s2, s1, s3
                  and          s7, t0, t5
                  slt          s7, s5, sp
                  srai         a7, t5, 14
                  slt          tp, t3, s5
                  andi         s4, s7, 282
                  srli         s10, s1, 25
                  srl          s4, s4, s3
                  srli         t4, s11, 15
                  lui          s0, 345184
                  and          a4, s3, s9
                  lui          t4, 471579
                  sra          tp, t0, t5
                  lui          t4, 158622
                  nop
                  sltiu        s2, a0, 1195
                  ori          s0, t5, 1485
                  add          s3, a2, s6
                  lui          t4, 1003290
                  srai         tp, a5, 22
                  sra          s4, t4, gp
                  slti         t1, s4, -2046
                  slti         a7, zero, 849
                  sll          zero, s4, tp
                  xori         s7, ra, -1537
                  and          s8, s5, s3
                  sltiu        a7, t2, -522
                  nop
                  ori          t1, tp, -830
                  nop
                  srai         t6, t6, 7
                  addi         zero, t0, 1115
                  slli         t3, t3, 10
                  lui          gp, 637460
                  sll          ra, t2, t5
                  xori         gp, a6, 1457
                  or           s5, s10, t4
                  sll          t2, t2, ra
                  srli         s7, s2, 29
                  slti         a0, t5, 1093
                  nop
                  add          s8, t1, ra
                  srli         t2, s4, 26
                  sra          s11, s11, s7
                  lui          s5, 650022
                  or           zero, tp, zero
                  slti         tp, a3, 113
                  srl          a5, s8, s0
                  slti         a6, s10, -1476
                  addi         a5, ra, 1696
                  lui          a7, 61960
                  nop
                  xori         s5, t2, -2017
                  slt          s4, t2, t0
                  slti         gp, a0, -901
                  sll          t2, t0, a2
                  andi         a1, s6, 2022
                  xori         t5, s6, -46
                  addi         a6, t6, 1164
                  sltu         s7, t1, sp
                  sltu         s3, t6, a4
                  sltiu        s0, t5, -358
                  srl          a5, s3, s8
                  slt          s4, s2, t4
                  nop
                  sltu         s0, tp, a1
                  nop
                  sltu         t1, a2, s9
                  sub          t2, a1, s11
                  xori         t1, s8, -1776
                  sltiu        a1, a2, 33
                  and          s6, a7, s10
                  xor          t2, a3, ra
                  add          a5, a7, a5
                  slli         t4, s4, 24
                  srl          gp, t5, s9
                  or           s1, s5, s0
                  sra          s3, t0, a1
                  andi         t5, t0, 121
                  srai         t3, s1, 28
                  slli         t3, a5, 5
                  slt          t1, tp, t5
                  sltiu        tp, t0, 877
                  srli         zero, s8, 29
                  srli         a5, s9, 28
                  ori          s5, s4, -393
                  or           ra, gp, s8
                  slt          t6, t0, t2
                  srai         ra, s5, 17
                  andi         a0, a1, -806
                  lui          t1, 164331
                  srl          a7, s3, tp
                  sltiu        a1, s7, 633
                  srai         ra, a4, 13
                  srl          s5, tp, s6
                  lui          s8, 713950
                  sub          a4, s11, t1
                  or           a6, t0, ra
                  srl          s9, s6, tp
                  nop
                  srl          a1, t2, t0
                  sltu         t5, s0, a4
                  sltiu        gp, a6, -792
                  nop
                  slti         a2, s9, 25
                  lui          s4, 958039
                  slt          a4, a4, t4
                  slt          s6, tp, s7
                  sra          s5, a3, t3
                  nop
                  sub          gp, t2, t4
                  addi         t5, s5, 1413
                  xor          s0, a1, s5
                  ori          s9, s7, -803
                  add          s7, a7, s4
                  srli         t2, a5, 20
                  xor          s4, t4, a6
                  srli         a7, s10, 27
                  add          s6, tp, s4
                  srl          a1, s10, t6
                  srli         a7, tp, 0
                  slt          s0, a4, s0
                  xor          t5, sp, s11
                  add          s10, s11, zero
                  xori         tp, a2, -839
                  xori         s0, ra, 573
                  and          t4, t4, a6
                  or           s3, s9, zero
                  sra          s4, a0, tp
                  sll          ra, s5, s2
                  xori         s11, t6, 2015
                  add          s1, t2, ra
                  andi         a4, tp, -1014
                  srai         s8, s9, 14
                  nop
                  xor          s7, t0, t0
                  nop
                  add          s1, t1, s2
                  slli         t2, s4, 24
                  srl          t1, ra, t4
                  add          s1, t4, sp
                  sra          s11, s3, s8
                  sll          gp, a0, a7
                  add          t4, zero, s9
                  ori          a6, a1, -1369
                  sltu         gp, a5, ra
                  and          s4, sp, a0
                  sltiu        s6, s7, -302
                  ori          a5, tp, -754
                  ori          s6, a7, 1407
                  slt          t1, gp, sp
                  auipc        s0, 691029
                  andi         a2, s7, -1121
                  srl          s7, t2, s4
                  srli         t1, s7, 17
                  ori          a0, s11, 707
                  srl          t4, t2, a5
                  add          gp, s1, tp
                  xori         t4, a6, -1837
                  srl          s10, sp, a3
                  srl          s11, s1, t5
                  lui          t4, 294063
                  auipc        s10, 90450
                  slt          s9, t2, sp
                  sltu         gp, s8, a5
                  srli         t3, a3, 3
                  or           tp, s11, s2
                  and          tp, zero, s3
                  or           s3, s3, a0
                  slli         s11, t0, 20
                  andi         t6, s0, -1696
                  sra          a6, s9, a6
                  sltu         t1, t4, s1
                  and          t5, s10, s1
                  sltiu        s2, a6, -98
                  sltu         s8, a1, s2
                  slti         a1, a7, 1596
                  slli         ra, ra, 20
                  sub          t6, s1, t0
                  add          s3, a6, a5
                  sltiu        t3, s6, 1397
                  slt          a5, s5, ra
                  srli         t4, s7, 20
                  xori         s10, s11, -1055
                  nop
                  sra          tp, a4, a3
                  ori          s6, s10, -210
                  sltu         s0, ra, t0
                  lui          s5, 288959
                  auipc        zero, 14531
                  srai         s7, t1, 13
                  sltu         s8, s6, zero
                  sll          s1, gp, t6
                  andi         s8, s8, -1108
                  sltu         zero, a7, s4
                  andi         t4, s10, -1469
                  slli         a7, s6, 25
                  andi         s5, s10, 650
                  xor          s11, a2, a3
                  auipc        s5, 347318
                  sra          t5, ra, ra
                  add          t6, s9, a1
                  xori         t3, a0, 717
                  srli         tp, t2, 2
                  auipc        t2, 498259
                  lui          tp, 783529
                  xor          s0, a6, s3
                  andi         s10, s2, -1952
                  srli         ra, tp, 7
                  slt          s2, sp, gp
                  slli         a7, a1, 5
                  sltu         s3, a6, a2
                  lui          s11, 975254
                  srli         t2, gp, 28
                  or           t5, s3, s2
                  auipc        s7, 541398
                  srai         zero, s11, 21
                  addi         t6, s1, 148
                  sub          s3, a7, s3
                  srli         s2, a3, 23
                  xor          t2, a4, zero
                  andi         a5, t3, 1663
                  slt          a0, t2, s0
                  lui          a1, 346220
                  slt          a2, a3, a5
                  xor          s1, tp, a4
                  andi         s2, t5, -434
                  srli         s2, a0, 18
                  nop
                  slti         s1, tp, -990
                  sltu         a5, a1, t5
                  ori          t6, gp, 124
                  slt          s8, a2, s0
                  or           ra, s2, s1
                  and          ra, a3, s1
                  xor          a6, t2, a5
                  or           tp, s1, a7
                  auipc        a0, 443619
                  or           s5, gp, t2
                  xori         s3, t4, -594
                  slli         s2, s11, 14
                  sra          t5, a4, s6
                  xor          a4, s3, sp
                  auipc        s8, 140306
                  nop
                  or           a5, s7, zero
                  sll          a5, s1, a1
                  andi         a7, s10, 1166
                  and          ra, a3, a6
                  addi         t5, t0, -687
                  slt          a2, s0, s8
                  nop
                  slti         tp, a5, -664
                  sll          s11, s9, tp
                  lui          s6, 447567
                  lui          s0, 508044
                  slti         t2, t1, 314
                  add          ra, a2, a5
                  sll          t5, t5, s5
                  sll          t5, a3, t6
                  nop
                  xor          t2, a3, t4
                  andi         t4, zero, -922
                  sltiu        s11, tp, 1375
                  slli         ra, s4, 21
                  sub          a0, s4, s4
                  add          ra, s0, a1
                  lui          s9, 801657
                  ori          t1, s11, 1153
                  sltiu        s9, s0, 983
                  addi         zero, t3, -1496
                  addi         s8, tp, 791
                  andi         a6, s9, 1232
                  sub          gp, a3, s4
                  srl          t2, tp, gp
                  addi         s2, sp, 504
                  xor          a7, t1, a1
                  or           a4, a6, a3
                  sltiu        s3, s7, 538
                  slti         t3, sp, 257
                  slli         t3, s5, 14
                  srai         s5, a3, 3
                  sltu         s3, ra, t3
                  srai         tp, s4, 22
                  sub          a7, t0, a1
                  sll          t2, t2, t2
                  sltiu        s3, t4, -991
                  xor          t6, a6, s9
                  andi         t2, s10, -1180
                  add          s8, a1, a6
                  ori          gp, s6, -1986
                  slti         zero, s10, -821
                  ori          t4, s11, 2014
                  or           s5, s0, s10
                  slli         t5, t6, 29
                  and          s2, tp, a5
                  sltiu        t6, s9, 754
                  slti         t4, sp, -356
                  sub          a7, t3, a2
                  andi         a0, a5, 1873
                  xori         s10, a7, -764
                  sltiu        s7, s11, 269
                  and          s10, s4, s6
                  sltu         tp, t2, t1
                  slli         t4, t5, 19
                  slt          s8, s8, t5
                  srl          s10, a0, t2
                  nop
                  or           s11, s7, s1
                  sub          s7, sp, tp
                  auipc        s8, 918266
                  ori          s6, ra, 1376
                  sltiu        t4, t3, 912
                  sub          a4, t4, s10
                  sll          a2, a3, s0
                  or           ra, a6, a7
                  slli         t6, s6, 19
                  andi         s5, a7, 1864
                  addi         s5, t4, -495
                  srai         t4, a0, 7
                  srl          a0, a6, t0
                  slt          t6, tp, s10
                  or           s0, zero, t2
                  srli         s6, s4, 10
                  sltiu        s5, s8, 1283
                  sltiu        s11, t0, -1087
                  slti         s5, t5, -1447
                  xor          a2, s11, a5
                  ori          tp, s7, 1905
                  add          s5, a5, s9
                  slt          s7, s7, s8
                  xori         a7, a4, -1010
                  srl          a1, sp, a1
                  and          t3, a4, s4
                  nop
                  sra          s2, s4, a0
                  or           s10, s0, s1
                  srai         t4, a3, 6
                  sltu         s7, t2, s0
                  auipc        t1, 955049
                  sltu         a0, sp, sp
                  xori         s0, t0, 358
                  add          t1, a6, s5
                  xor          a6, t0, a2
                  slli         t5, s2, 22
                  auipc        t6, 752658
                  slti         t4, s5, 567
                  ori          s3, s2, -1384
                  srai         tp, s4, 20
                  lui          a0, 331921
                  sltu         s7, a6, s5
                  sll          s10, t4, s4
                  or           t4, s1, t4
                  and          a1, t2, s3
                  sltu         s0, s6, gp
                  ori          s4, s9, -523
                  sll          a0, a3, a5
                  and          a4, s0, t5
                  xor          s9, ra, t5
                  srl          t3, ra, t5
                  add          s1, s8, s9
                  sltiu        s8, tp, 1286
                  srli         a2, a4, 28
                  xor          a5, t0, s7
                  addi         gp, a4, 1477
                  srli         s0, a0, 7
                  or           a2, s11, s7
                  sub          zero, a5, a3
                  sltiu        s2, zero, -1049
                  add          t6, t4, s0
                  srai         s3, a6, 31
                  sra          t6, s3, a3
                  xori         zero, s9, 300
                  sra          s1, s4, a3
                  or           a0, ra, t6
                  sltu         a6, s8, ra
                  auipc        s9, 101789
                  xori         t4, s7, -256
                  srli         s2, a1, 2
                  addi         s9, s7, 1183
                  sub          t2, zero, t4
                  slli         a5, s7, 31
                  xori         s7, t1, 1758
                  srli         s5, s9, 13
                  andi         t6, sp, 1844
                  ori          s9, s1, 736
                  ori          s9, t0, -105
                  xor          s10, a2, a7
                  nop
                  and          t4, a0, t2
                  sll          s11, s6, t0
                  sltiu        zero, s10, -1184
                  lui          ra, 990244
                  sltiu        s3, s7, 192
                  addi         s3, s1, -302
                  sltu         a0, t2, a6
                  sltiu        a2, s3, 1035
                  slli         a0, s7, 12
                  addi         t2, zero, -1917
                  sltu         s10, sp, a3
                  nop
                  srl          s7, t2, s3
                  slt          s5, a1, s7
                  and          a0, s0, t4
                  srai         s3, a5, 17
                  addi         s3, a2, -1633
                  ori          a4, a3, -1670
                  sltiu        s0, gp, 1715
                  slti         tp, s10, 144
                  ori          a2, ra, 398
                  xor          s10, a3, s8
                  xori         a2, s11, -1060
                  sltu         zero, a1, gp
                  add          s11, s2, t5
                  add          t3, tp, zero
                  srai         a5, a7, 10
                  add          a0, tp, a6
                  auipc        s9, 341354
                  sltiu        t4, s5, 698
                  and          s9, s9, a0
                  srl          s9, a0, t0
                  srli         t4, a0, 0
                  andi         t3, t2, -1244
                  slti         t4, a6, 697
                  sltu         s3, ra, s11
                  sltu         a2, s9, gp
                  and          s6, tp, s5
                  or           a6, t3, a6
                  xori         s4, s7, -321
                  srli         s10, ra, 19
                  and          s1, ra, a7
                  srai         s3, a4, 1
                  ori          t3, s0, -314
                  sll          s9, t2, a3
                  srl          s11, a0, a2
                  xor          zero, s11, t1
                  slti         s10, zero, 119
                  lui          t5, 314040
                  andi         t6, t4, 922
                  or           a1, s4, a7
                  add          s11, ra, a6
                  sra          t2, a1, s11
                  srli         gp, a1, 5
                  ori          zero, s1, -502
                  srl          zero, a7, s7
                  ori          a1, a0, -1273
                  nop
                  or           t4, tp, a7
                  sra          s7, t4, ra
                  srl          s7, t1, s6
                  ori          zero, a1, -1501
                  lui          a1, 347478
                  srl          t5, a3, a6
                  add          s0, a1, s1
                  slli         s5, a5, 8
                  srl          s9, a2, a3
                  add          t2, t1, s7
                  xor          t3, gp, a1
                  lui          a7, 575501
                  sll          a5, s2, t0
                  srl          a0, s4, a5
                  slli         a4, t6, 23
                  srli         a7, ra, 13
                  slli         tp, s8, 28
                  sub          a2, t0, a0
                  srli         s0, a4, 13
                  slti         s1, a2, -804
                  slti         a0, s3, 566
                  srai         s7, s4, 28
                  add          s0, gp, s5
                  slt          a6, s5, t2
                  sra          zero, tp, s11
                  and          ra, s0, a0
                  ori          s0, tp, 1297
                  sltiu        a4, a5, 552
                  srl          t1, tp, t2
                  auipc        tp, 895299
                  slti         s11, gp, -174
                  srli         s7, zero, 6
                  srl          s8, a4, t3
                  sll          s7, s8, a6
                  sltiu        s5, a6, 812
                  xori         zero, a0, 1541
                  sltiu        s8, s1, 783
                  lui          s2, 605614
                  srai         a1, tp, 2
                  sltiu        a0, a6, 1973
                  slli         s7, t5, 13
                  add          a7, s5, a7
                  sltu         s7, s6, ra
                  srl          t5, a0, a2
                  nop
                  ori          a1, s10, -106
                  and          gp, s0, s5
                  nop
                  sra          s8, t1, s3
                  sltiu        s7, s1, -151
                  and          s5, s7, s9
                  sll          s0, a0, ra
                  xori         a6, sp, -1841
                  slti         s8, t2, 700
                  xor          a2, t1, zero
                  sltu         gp, a3, s3
                  slt          s0, a2, s10
                  nop
                  sub          s3, t5, t4
                  sub          zero, t6, s5
                  slt          a1, s1, s7
                  nop
                  sll          a1, t1, a3
                  nop
                  srli         tp, tp, 31
                  sll          zero, sp, a7
                  xori         s5, s3, 213
                  sra          s11, s8, s3
                  ori          s5, t6, -440
                  sra          s4, zero, s4
                  srai         a4, a7, 11
                  srl          s6, s8, s9
                  sltu         s11, t4, t5
                  sll          a1, t4, s2
                  slti         a7, sp, 306
                  or           s3, a5, a0
                  sltiu        s6, t6, 523
                  auipc        t3, 1017498
                  nop
                  srai         t5, gp, 23
                  srl          t2, a5, t6
                  sltu         t4, s4, t5
                  slti         a2, a2, 1806
                  slti         s10, s3, 1682
                  nop
                  addi         s5, s4, 891
                  xor          t6, t4, t5
                  srl          s1, ra, a3
                  nop
                  ori          a1, s0, -86
                  sll          s8, s6, s1
                  slti         s7, t1, -527
                  srai         a2, s0, 14
                  sltiu        s3, s1, -1210
                  srai         gp, a5, 22
                  nop
                  xor          t3, zero, t5
                  sltu         t3, ra, s5
                  srli         s10, tp, 6
                  sll          s10, t5, sp
                  add          zero, s8, s0
                  slli         s2, t6, 22
                  nop
                  and          t2, s11, a1
                  slt          t3, gp, t3
                  sub          t2, s8, tp
                  sll          t5, t2, zero
                  slli         s1, a5, 30
                  ori          s11, t4, -565
                  or           s7, a7, zero
                  auipc        s1, 330451
                  xori         a4, a6, 2047
                  or           t1, t2, zero
                  xor          s3, a0, t4
                  sltu         a4, t4, a5
                  sll          t2, a2, a3
                  lui          s3, 993494
                  sra          a7, s4, s10
                  srl          s8, t3, s3
                  slli         a2, a6, 27
                  auipc        s7, 727162
                  andi         t4, s8, -589
                  addi         s1, s5, -1042
                  lui          a6, 135922
                  xori         a5, s4, -1874
                  sltiu        s7, ra, -297
                  lui          s10, 874711
                  and          t2, s8, s6
                  srai         t1, s11, 21
                  or           tp, s7, s9
                  ori          a2, s0, -1986
                  ori          a2, t6, -1241
                  slli         gp, s5, 22
                  nop
                  nop
                  sltu         s1, t2, a1
                  sltu         a0, gp, a1
                  xor          gp, t1, s10
                  sltu         a4, s1, t6
                  srli         t2, ra, 20
                  sltu         t6, a6, zero
                  slli         tp, a1, 10
                  sltu         a5, t0, sp
                  andi         t4, s0, 1175
                  sltiu        t4, t5, 1618
                  slti         a6, a3, 510
                  xori         a6, t5, -1689
                  sra          s11, s4, a3
                  xor          a6, s0, s3
                  sltiu        s6, s0, 744
                  slti         t3, t5, -1497
                  sub          gp, s1, s7
                  slti         a7, s5, -1168
                  nop
                  sll          gp, a6, s3
                  srli         a4, tp, 8
                  slti         s10, a3, 1564
                  nop
                  lui          s10, 235253
                  ori          s11, s6, 924
                  srli         t1, s8, 20
                  nop
                  or           s8, t6, t3
                  sll          s2, t6, s5
                  sltiu        a4, ra, -528
                  srli         s2, a6, 12
                  xori         t5, a1, -1456
                  srl          a4, s0, s10
                  sub          a5, tp, a7
                  srai         zero, t4, 27
                  srli         t5, t3, 30
                  andi         s4, a6, 1799
                  slti         t4, s5, -1638
                  xori         s2, s1, -1673
                  addi         s1, a6, 283
                  addi         a6, a7, -275
                  addi         s9, t2, 1363
                  sub          a5, s5, gp
                  addi         s3, a1, 790
                  sra          t6, a0, a5
                  nop
                  auipc        s5, 870734
                  or           a4, t6, t5
                  ori          s6, a7, -1057
                  sltu         s1, t5, s5
                  or           s6, s0, a0
                  srl          s5, s1, a5
                  srl          s8, t1, s3
                  addi         s6, ra, 749
                  sub          s8, s6, s8
                  lui          t6, 158573
                  sltu         a0, s7, s3
                  xor          a5, a1, t4
                  sub          gp, a5, s7
                  srl          s0, s7, s6
                  addi         a1, t3, -843
                  sltiu        t1, s3, -161
                  srl          tp, s3, ra
                  slli         a4, s10, 29
                  srl          tp, t1, s2
                  slti         a6, t5, -1459
                  slti         s8, sp, -282
                  slti         tp, s2, 819
                  add          t2, a2, t0
                  slti         t3, s2, -862
                  sra          s1, a6, a4
                  xor          a5, a3, a4
                  xori         a1, s6, -261
                  srai         a2, t2, 7
                  and          s4, zero, t5
                  or           s5, tp, s6
                  or           tp, a7, gp
                  add          t1, s2, t1
                  or           s11, s5, t2
                  nop
                  slti         t3, s11, 1139
                  slti         t5, sp, 921
                  xori         s2, s3, -1532
                  lui          s7, 90941
                  or           s6, t2, t2
                  add          t6, t3, s5
                  srli         ra, a7, 8
                  sll          zero, s11, a5
                  ori          t6, t4, -1703
                  slt          t6, t2, a0
                  srai         a6, a6, 8
                  and          a6, t0, zero
                  sll          s5, s5, a7
                  and          s7, t2, s9
                  add          tp, s11, ra
                  sra          a4, a6, s8
                  xori         a6, s7, -1690
                  lui          gp, 823526
                  auipc        s6, 960378
                  andi         a5, s1, -1186
                  sub          a2, s4, a2
                  and          s0, t4, zero
                  srai         a2, a1, 30
                  xor          s6, t1, a1
                  auipc        a2, 835635
                  nop
                  srli         gp, a4, 23
                  sll          t3, a2, a6
                  addi         t3, s6, -2034
                  sub          a7, s1, s4
                  sll          s4, a7, s10
                  sltu         a5, t6, t1
                  auipc        s2, 390523
                  slti         t4, t5, -1925
                  xor          a2, s0, t3
                  sra          s2, s7, a5
                  slti         a4, a5, -1155
                  and          t6, a3, t1
                  lui          s9, 474182
                  sll          a0, tp, s4
                  xori         s3, a5, -788
                  sltu         t2, s10, t4
                  srai         t6, a7, 23
                  sltiu        tp, sp, 776
                  sll          t6, s6, a3
                  or           ra, s0, t2
                  srai         a2, zero, 4
                  slt          t2, s7, s6
                  andi         s7, s0, -1660
                  nop
                  auipc        a4, 45949
                  ori          t3, s5, -1286
                  sll          t5, s10, t2
                  xori         t3, t3, -1745
                  srli         t4, s11, 16
                  srli         s4, ra, 31
                  slli         s0, gp, 3
                  or           a4, s9, a3
                  slti         s5, a0, 128
                  add          s11, s0, a2
                  sll          s2, ra, t0
                  and          a7, s5, a1
                  sra          t5, s10, ra
                  ori          s3, gp, 613
                  ori          s10, a0, -1893
                  srli         t4, s2, 13
                  sub          s5, sp, t6
                  sltu         t6, a1, t6
                  sltu         s6, t2, t3
                  xor          s2, s11, a4
                  andi         a7, a5, 1035
                  auipc        a2, 821887
                  slti         a0, s7, 234
                  xor          s9, s11, s9
                  andi         s3, zero, -1970
                  sra          a1, a7, s4
                  add          a6, zero, t1
                  add          a7, a3, t2
                  srai         a0, t6, 0
                  srli         s11, s3, 10
                  srli         t1, s1, 20
                  or           s4, a3, zero
                  add          t2, t6, a1
                  auipc        a0, 183254
                  srli         s2, s8, 10
                  srli         t3, s9, 28
                  and          a5, a5, a6
                  sll          a1, s6, s0
                  srl          t6, gp, s1
                  add          tp, t4, tp
                  xori         gp, a4, -1311
                  slt          t5, gp, a4
                  sltu         s5, s8, t2
                  srai         s8, a3, 21
                  add          a0, a1, s5
                  or           s5, ra, t6
                  srai         s9, s7, 0
                  xor          s5, t6, a2
                  slt          s2, s3, t0
                  xori         zero, a7, 1358
                  and          s8, t0, t2
                  sll          s10, s0, s8
                  xori         t3, s3, 1947
                  ori          s5, s11, -752
                  sub          a2, a5, t2
                  sub          s5, a3, ra
                  ori          t3, a0, -1724
                  slli         t3, s5, 17
                  srai         s11, t4, 26
                  sltiu        a7, sp, 1311
                  add          a2, s6, s10
                  srai         a6, s4, 5
                  slli         a6, t0, 24
                  slti         s2, gp, 1867
                  xori         gp, s0, -1346
                  addi         gp, s6, 1474
                  srli         s10, s1, 2
                  lui          s6, 98677
                  addi         a5, t4, -708
                  xori         t4, s4, 89
                  sltu         s10, t3, s1
                  xor          s4, s4, a2
                  xori         s0, s10, -345
                  xori         s11, s4, -1371
                  ori          t3, t6, 326
                  sltu         t3, s0, t6
                  nop
                  srli         tp, ra, 21
                  andi         t4, s2, 619
                  slt          s8, a7, a3
                  sltiu        tp, s4, 1304
                  slt          s1, s6, t2
                  lui          a6, 73238
                  ori          t5, s3, 1210
                  add          s2, s11, s5
                  slti         s2, ra, 760
                  slli         gp, t1, 27
                  sll          a5, a2, gp
                  slli         a5, s3, 27
                  xori         a7, a7, -709
                  and          s1, a1, s0
                  sltu         s5, s5, t1
                  auipc        t5, 493152
                  srl          a1, sp, s8
                  srli         s10, s8, 28
                  slli         s8, a0, 7
                  srl          gp, s0, t5
                  auipc        s9, 142942
                  add          t2, t6, a3
                  srl          s5, s7, a2
                  srai         s11, s8, 31
                  add          t5, s2, s2
                  sra          s7, a2, s3
                  slti         a2, gp, -902
                  slli         a7, s3, 30
                  addi         s1, t4, -1283
                  sll          a5, t4, s9
                  sltu         t3, a5, t2
                  andi         s7, a5, 1438
                  srli         t5, s5, 16
                  ori          s7, s3, 149
                  addi         tp, t2, 18
                  srl          s1, s4, s6
                  andi         s3, t6, -1798
                  sll          a1, zero, t3
                  and          tp, s4, t0
                  xor          s1, a2, s2
                  sll          t4, t5, s0
                  or           s1, tp, t0
                  sra          t6, t3, sp
                  sll          t4, s4, s1
                  sltu         t4, tp, t1
                  srl          gp, a3, t3
                  sltiu        s4, s7, -516
                  ori          a7, zero, -1575
                  or           s1, tp, s8
                  ori          t1, t4, 1508
                  ori          a7, t5, -193
                  or           a4, t2, s5
                  or           zero, s4, a3
                  or           a1, a6, s1
                  slti         s2, zero, -398
                  or           zero, a3, t3
                  auipc        s8, 186545
                  addi         t5, s11, 1960
                  xori         s3, gp, 426
                  srl          s10, s9, t3
                  sll          s7, s2, t4
                  srl          s5, s4, s5
                  sltiu        s8, t6, 1233
                  slt          s1, s6, s11
                  nop
                  srai         a5, a3, 25
                  auipc        s3, 446678
                  slli         s0, a6, 13
                  lui          s5, 928591
                  sltu         s8, zero, a5
                  sll          s4, tp, sp
                  sra          s1, tp, ra
                  srai         t2, t3, 16
                  xor          s6, a5, tp
                  or           s3, sp, gp
                  sub          t4, t6, t6
                  or           s1, t3, t2
                  andi         a5, s3, 1052
                  slt          a5, gp, a0
                  sub          ra, t3, t5
                  nop
                  addi         t6, s3, -1929
                  xor          t4, t2, t6
                  sll          s0, a0, zero
                  sub          gp, t2, a7
                  sra          s7, zero, t5
                  sltu         a2, a0, s1
                  sra          a6, s3, t1
                  sltu         s8, t1, tp
                  slt          tp, a7, s2
                  sub          s9, s11, a5
                  srai         s11, t6, 11
                  sra          s4, t5, a4
                  sltu         a0, t1, t2
                  ori          s2, t0, 354
                  addi         s2, t0, 1362
                  srl          s6, a3, s3
                  add          t4, s0, ra
                  xor          a6, s11, a4
                  sub          s5, s4, a2
                  nop
                  auipc        s4, 421580
                  sra          a2, ra, t2
                  lui          s8, 216765
                  xori         t1, s0, 768
                  sra          a2, s6, s8
                  auipc        s11, 632866
                  xori         s1, s1, 1355
                  or           s10, zero, s11
                  sub          tp, a0, t1
                  addi         t3, tp, 1937
                  sltu         tp, s3, s2
                  sll          s0, t5, a4
                  slti         a5, s0, -168
                  sltu         a0, ra, a3
                  xori         s8, a7, 721
                  nop
                  ori          a2, sp, -1205
                  srl          t6, t4, s2
                  andi         a6, t6, 1498
                  sll          zero, gp, s8
                  xor          a6, s8, s8
                  andi         s3, a6, -680
                  sltu         s8, zero, s5
                  xor          s11, gp, gp
                  sll          s8, ra, a1
                  srl          ra, s6, gp
                  add          t3, s9, a4
                  auipc        a4, 363239
                  andi         t2, s10, 615
                  srai         a6, zero, 11
                  ori          s8, t6, -468
                  or           a5, t6, t4
                  lui          s8, 897058
                  or           s11, s6, s7
                  sltiu        s7, t4, 789
                  sub          s3, a0, ra
                  sub          a2, a5, s6
                  nop
                  or           a1, s3, a4
                  add          a0, s1, a2
                  sltu         t4, a3, zero
                  lui          a5, 896186
                  add          s3, zero, t2
                  slt          s2, a3, s8
                  nop
                  andi         t4, a5, -1901
                  slli         t6, s10, 12
                  sltu         zero, sp, a7
                  srai         a6, a0, 0
                  and          s10, a6, t3
                  ori          t4, sp, -1293
                  and          ra, s3, ra
                  sll          a0, t6, ra
                  ori          zero, ra, -451
                  ori          s8, t2, 527
                  xor          t5, t6, s2
                  ori          s6, a7, 1232
                  srl          s8, s3, a0
                  ori          t3, s5, -1782
                  auipc        t3, 722962
                  srli         a0, s6, 5
                  xori         a4, a6, 1467
                  or           a2, s7, s11
                  xori         t2, a0, -952
                  and          a7, t5, t5
                  srl          a7, s5, s6
                  xor          t4, t2, a2
                  srli         s6, s8, 17
                  slti         t4, a2, 513
                  sltiu        s8, a4, -1174
                  xor          a2, gp, s0
                  auipc        t1, 588863
                  and          a7, gp, s8
                  slli         ra, s5, 15
                  and          s3, t5, t0
                  auipc        a5, 279184
                  auipc        zero, 897074
                  srl          ra, s6, a2
                  lui          a5, 652683
                  auipc        zero, 880145
                  nop
                  sltu         t5, a1, a5
                  srl          s7, tp, sp
                  slli         gp, a3, 28
                  sub          ra, t0, a4
                  srl          s6, a1, s8
                  add          t3, sp, s3
                  or           zero, s10, a0
                  srai         s0, t1, 27
                  xori         s8, s10, -1283
                  and          s9, s10, a0
                  addi         s0, s9, -1933
                  srai         s9, s4, 17
                  srl          s8, s2, a1
                  andi         s1, tp, 1167
                  andi         t1, s0, 178
                  andi         zero, s11, -1581
                  or           a2, s0, a1
                  xor          s8, s9, a7
                  xori         s1, t1, -2019
                  slti         s6, t1, -502
                  slti         s1, s9, -1364
                  sra          s9, sp, a0
                  andi         t3, t3, -1345
                  sub          s3, s4, zero
                  addi         s4, t0, 1500
                  slli         s1, zero, 15
                  nop
                  slli         s0, s2, 12
                  xor          s9, tp, s10
                  nop
                  slt          s1, s0, a2
                  auipc        a6, 982074
                  addi         t5, a2, -559
                  sra          s3, a0, ra
                  sub          a0, a4, zero
                  add          ra, s11, s1
                  ori          a7, s7, -1798
                  sltu         a7, t3, a6
                  slti         t1, a0, 39
                  sltu         tp, s9, s5
                  xor          a7, s8, a6
                  xor          a0, s9, sp
                  add          gp, s2, t4
                  ori          a1, t0, 349
                  sltiu        s2, ra, -989
                  sub          s4, a6, s11
                  lui          t2, 749434
                  slt          a5, t6, t2
                  addi         gp, a4, 147
                  slti         s7, t2, -2017
                  srli         s7, zero, 15
                  lui          a1, 953697
                  xori         s11, gp, -735
                  srai         t1, t3, 10
                  addi         t4, s8, 679
                  srai         s6, t0, 30
                  slt          s3, t1, s7
                  xor          a2, s5, s0
                  and          zero, gp, s10
                  lui          s5, 476034
                  sra          s0, t4, t2
                  slti         t1, t2, 1584
                  nop
                  sltiu        s4, t3, -487
                  sll          s3, s9, s5
                  auipc        ra, 368904
                  srai         s5, a3, 13
                  xori         t4, s5, 489
                  andi         t2, a1, -978
                  lui          a5, 288392
                  add          s7, s9, t5
                  sra          a4, tp, a0
                  and          s6, s3, s11
                  slti         a1, t0, -1966
                  srl          s8, s7, t5
                  andi         a1, s6, -1400
                  auipc        s2, 554721
                  or           t1, s10, a6
                  and          s6, a1, t5
                  sra          s9, t6, sp
                  lui          gp, 666467
                  sub          s7, t0, s0
                  andi         a4, s3, -1148
                  sltiu        s6, t5, -1621
                  slli         s10, s2, 31
                  srl          s7, t0, t3
                  sub          a5, t5, sp
                  andi         gp, t4, -1697
                  srai         s9, t5, 30
                  slli         s7, t0, 25
                  or           s8, s1, zero
                  slt          a6, gp, t6
                  sltiu        s10, s0, -1776
                  add          tp, s1, s0
                  andi         tp, t6, -1879
                  auipc        s6, 211412
                  xori         zero, s9, 1689
                  sltu         s7, gp, s6
                  sltiu        ra, tp, -1862
                  nop
                  slli         gp, a2, 24
                  nop
                  srai         a1, tp, 23
                  sll          s0, a7, t2
                  or           s7, a6, zero
                  and          s1, t6, a5
                  ori          s3, zero, -1789
                  slt          a6, gp, ra
                  srli         t3, s4, 13
                  xor          s6, s8, s8
                  sltiu        s10, s10, -102
                  nop
                  lui          a4, 549897
                  nop
                  sll          t6, t2, t6
                  add          a7, s6, sp
                  sltiu        s0, s8, -1005
                  ori          t3, s9, 1605
                  or           s0, t0, a4
                  nop
                  sltu         t2, s5, t6
                  andi         t2, t5, 1003
                  add          tp, t4, s6
                  add          s3, a0, s3
                  and          s10, s2, s9
                  addi         zero, a2, 1206
                  sltu         s0, a3, a4
                  ori          t6, ra, 528
                  add          t3, s4, a1
                  xor          a7, t6, s9
                  sll          s0, zero, gp
                  sll          s9, t0, s7
                  and          a1, a5, s3
                  lui          s1, 519132
                  sltiu        a1, a7, -427
                  sltiu        s9, a1, 1890
                  srai         s7, s5, 13
                  xor          s11, t4, s0
                  sltiu        s0, a5, -382
                  or           t2, ra, s7
                  and          t6, t5, s9
                  add          s9, t1, a0
                  sub          s1, t3, a2
                  lui          a4, 248761
                  sub          s0, s1, s4
                  xor          a2, t5, t5
                  slt          a5, s0, a5
                  srli         t5, t0, 30
                  sltu         t3, a7, t4
                  xor          t5, a2, t5
                  sll          a4, a6, t6
                  sub          s9, zero, s8
                  sll          s1, sp, a5
                  srai         a7, s10, 19
                  auipc        gp, 476691
                  srl          zero, a4, a7
                  lui          s7, 646547
                  slt          s0, tp, t0
                  addi         ra, s6, -1735
                  add          s7, zero, a7
                  or           s9, t0, a5
                  addi         s5, a1, -1686
                  andi         a1, a7, 1576
                  and          a2, t1, s2
                  slti         t5, t6, -1340
                  and          s10, s5, a5
                  sltu         t2, s1, s6
                  or           a7, s0, s10
                  ori          s6, a7, -1991
                  srl          a1, t6, sp
                  addi         s1, s9, -1818
                  slt          s1, tp, ra
                  xor          gp, s0, s10
                  and          gp, a3, a3
                  sll          a6, s8, a5
                  sra          s1, s3, t1
                  lui          t3, 97893
                  or           s0, ra, s10
                  srl          a2, s11, t5
                  addi         zero, s9, -1098
                  sub          a2, a5, a4
                  slt          a2, a6, s3
                  nop
                  slt          a0, a1, s6
                  srl          a0, t3, a1
                  auipc        s1, 784063
                  or           t4, a1, t5
                  srl          a6, s0, t0
                  sltu         t6, a3, a1
                  nop
                  srai         t6, s8, 30
                  slli         a7, gp, 21
                  nop
                  slli         s5, s6, 9
                  srai         t6, s9, 10
                  xor          s2, sp, s9
                  nop
                  srli         t4, s6, 12
                  sub          a1, s0, a1
                  addi         t2, s3, -104
                  or           t1, s10, s5
                  sltiu        tp, s9, -1777
                  ori          s10, a7, 1883
                  and          s5, t1, tp
                  sub          zero, a6, s3
                  lui          ra, 513623
                  ori          a2, t1, -93
                  ori          t1, t1, 1250
                  sltu         s3, t1, a0
                  sltu         s5, a4, s1
                  addi         a7, s1, 1207
                  auipc        t1, 454065
                  ori          a7, a6, -669
                  srl          a5, gp, t0
                  srl          a7, a5, s1
                  srli         t5, s5, 17
                  sltu         a2, a2, zero
                  srli         t2, s7, 1
                  auipc        s1, 682752
                  sltu         s6, t5, s2
                  xor          s11, s10, s1
                  sltu         s7, s2, zero
                  slli         ra, a0, 23
                  slti         a0, s4, 672
                  or           s7, s1, s1
                  add          s9, s0, a3
                  srai         t6, t6, 4
                  sub          a7, a6, s6
                  slli         t6, t3, 20
                  ori          t4, a5, -1629
                  addi         s10, a2, 1343
                  slli         a0, t1, 8
                  and          s9, s3, a0
                  sltu         a1, a6, s4
                  sra          a1, s4, s11
                  or           ra, t3, t5
                  or           s3, s5, tp
                  slt          a6, s7, s9
                  and          t1, s10, t6
                  xor          a6, t2, t5
                  auipc        a7, 182850
                  slti         s4, a4, -1659
                  sll          t5, ra, t0
                  sltu         t1, t4, t5
                  ori          a0, a4, -675
                  auipc        s0, 434208
                  add          zero, a2, s1
                  sra          a6, ra, s0
                  srl          a6, s9, a5
                  auipc        s9, 434031
                  sra          t2, s8, a2
                  srli         t2, t2, 7
                  sub          s1, a2, s3
                  and          a0, s1, s7
                  slti         s6, t2, 1023
                  sll          a4, s3, gp
                  sll          t3, a6, a4
                  sltiu        s2, ra, 1048
                  and          ra, s1, a6
                  andi         ra, s4, -1858
                  slt          t1, a0, a6
                  srli         t5, gp, 4
                  srai         a6, a2, 11
                  slt          s4, s2, ra
                  srl          a1, s8, a2
                  sltu         s10, s9, a3
                  sra          t1, tp, a1
                  xor          s8, s1, s11
                  sll          s4, s3, s7
                  addi         s2, a1, 1473
                  andi         s7, a2, -2025
                  or           s10, a0, s10
                  slt          s3, t5, a4
                  xori         a0, a1, 504
                  auipc        zero, 137492
                  sub          s8, s6, a6
                  sra          t5, s6, t6
                  sltiu        t5, t4, 1051
                  slli         s5, t6, 18
                  nop
                  ori          s0, t2, -989
                  andi         s1, ra, -601
                  slti         zero, a5, -319
                  add          a1, s9, a3
                  add          ra, t3, a2
                  srai         s7, s9, 14
                  sra          a0, a6, t0
                  xor          s4, tp, a7
                  xori         t1, a2, -615
                  sltu         t2, a5, s4
                  slt          s4, s2, s4
                  sltu         t6, a5, t2
                  sub          s0, a5, a3
                  or           t2, s9, tp
                  sra          a4, ra, t6
                  slli         ra, t0, 22
                  slli         s10, a3, 28
                  sll          s10, s4, a5
                  srli         a6, zero, 18
                  sub          t1, s3, t1
                  andi         a2, a1, -1046
                  slli         a1, t3, 7
                  sltu         a0, t2, a5
                  sll          s7, a6, s7
                  srl          t1, t3, a7
                  auipc        ra, 360031
                  sub          zero, s3, a7
                  sll          a7, t5, t1
                  slti         s5, a2, 449
                  or           a4, a5, gp
                  slti         s6, a4, 2036
                  xor          s11, a3, a2
                  srai         a0, s2, 19
                  srl          zero, s6, s5
                  slli         tp, zero, 1
                  xor          t4, s9, a3
                  add          gp, s8, s6
                  srli         gp, s9, 2
                  slli         s0, s5, 19
                  and          t3, gp, a0
                  add          zero, a2, a7
                  xor          a4, a5, s6
                  slt          s10, s3, s6
                  srai         t1, s4, 3
                  xori         s10, s3, -766
                  slli         a0, s8, 6
                  ori          a2, gp, 34
                  slt          s1, s1, t3
                  srli         a4, a2, 22
                  slti         s9, s6, -400
                  ori          t5, s3, -1217
                  and          s0, t2, sp
                  srai         s2, s6, 17
                  and          t4, s8, s9
                  add          s5, tp, zero
                  andi         gp, s0, 1980
                  addi         s7, t4, -1201
                  ori          a2, t1, -1086
                  srli         a0, t5, 15
                  slt          tp, a0, s4
                  slti         t1, s9, -325
                  and          s2, s7, a0
                  sll          a0, s9, t6
                  or           a7, a2, t1
                  sub          t2, s1, a4
                  andi         a7, t0, 934
                  add          s1, a0, s1
                  ori          a0, s4, 1888
                  sub          a7, t6, tp
                  ori          t4, a1, 1860
                  slli         t3, a0, 4
                  sra          s2, t5, a7
                  add          a5, ra, s4
                  srl          t5, a7, a6
                  sltiu        t4, gp, 1146
                  lui          s4, 749877
                  sra          t4, tp, s1
                  or           ra, a4, s8
                  sll          t4, sp, s11
                  addi         s2, t0, -1538
                  xor          zero, s5, a6
                  sub          t4, s4, a5
                  addi         a1, s11, -1788
                  slti         a4, t5, -359
                  and          s10, a0, t0
                  xori         s5, a2, -591
                  add          t1, a6, s0
                  andi         gp, a1, 280
                  xori         ra, s8, 271
                  or           a7, s1, s3
                  xor          a4, s11, t5
                  sub          a0, zero, tp
                  slt          tp, s5, s1
                  sub          s5, s9, s6
                  nop
                  srl          t3, a5, t2
                  lui          a4, 172177
                  auipc        s2, 200420
                  slt          t4, a4, s8
                  slt          s8, s6, a5
                  sra          s8, a1, t3
                  xori         s1, a5, 1608
                  ori          s3, t3, -334
                  add          a0, a3, t2
                  lui          t1, 880634
                  auipc        a6, 883684
                  xor          s9, a0, s6
                  and          t2, t5, t3
                  andi         gp, s1, 500
                  sltiu        s3, t6, 1527
                  ori          t3, t2, -1443
                  slt          t5, s3, t6
                  and          s8, s3, a7
                  sltu         t3, t4, s10
                  xori         s10, t3, 1442
                  xor          a5, t3, t1
                  sub          a4, s9, s1
                  or           s10, s4, a3
                  lui          t5, 903165
                  srai         s8, t1, 13
                  sra          t1, a5, t0
                  srai         a7, t0, 20
                  lui          s4, 1027923
                  slt          t3, a7, t3
                  lui          a4, 349695
                  sll          a5, a4, t1
                  srli         a5, t1, 10
                  add          t5, sp, sp
                  addi         t4, gp, -392
                  sub          t4, s6, a3
                  slt          zero, zero, zero
                  sltiu        zero, s2, -1752
                  srai         s11, s7, 15
                  srl          t5, t4, zero
                  xor          s8, tp, s10
                  slli         t4, t3, 30
                  slt          s9, a0, a3
                  slt          a5, s6, s10
                  or           a1, t1, s7
                  xori         s7, s0, -1148
                  sub          ra, s11, s2
                  slli         t6, s1, 31
                  xori         gp, s11, 1769
                  ori          s8, s1, -33
                  slli         s10, s2, 26
                  add          s3, t5, t2
                  srli         s6, t2, 22
                  sltu         s6, s0, s7
                  lui          ra, 100906
                  auipc        t3, 524887
                  andi         s5, a1, -1010
                  xor          s11, a3, a5
                  andi         s4, s4, 1387
                  xor          s10, tp, s6
                  srai         s11, s10, 12
                  sra          s3, s9, a6
                  auipc        a0, 80107
                  andi         s7, s4, 472
                  srai         zero, a0, 9
                  lui          tp, 740099
                  sll          t1, a6, t6
                  xor          s2, s9, a2
                  xori         t5, a0, 937
                  nop
                  and          t4, a4, s2
                  andi         t6, t6, -1676
                  sltu         zero, ra, a6
                  sub          a4, s6, a2
                  sltiu        a7, a6, 1502
                  nop
                  lui          a0, 293524
                  andi         s5, s0, 1010
                  sll          s10, s7, s6
                  and          ra, t6, sp
                  slt          a2, a2, a1
                  sltu         s3, t6, a2
                  add          t2, tp, t0
                  srli         a6, t4, 13
                  andi         s9, a0, 530
                  add          a4, s6, s9
                  xori         s7, s10, 560
                  sll          s0, a4, s8
                  sub          s4, a0, s10
                  addi         s3, a3, 1080
                  lui          t3, 419658
                  auipc        t4, 741738
                  slli         ra, gp, 6
                  ori          s0, t2, 235
                  and          ra, t3, t0
                  sll          a1, a1, a7
                  nop
                  slti         s2, a0, -156
                  auipc        a0, 744641
                  nop
                  xori         t5, s5, 1
                  sltu         a5, gp, a0
                  sll          s5, s7, a4
                  slti         s2, s2, -385
                  nop
                  slt          s1, tp, a1
                  srai         s5, s4, 22
                  xori         zero, a5, 1736
                  add          t5, s6, s5
                  or           t5, t5, s9
                  ori          s6, s1, 1104
                  sra          s6, s3, s5
                  slti         a5, ra, 1163
                  and          s7, s3, s11
                  slli         s4, s8, 15
                  slli         s10, s11, 7
                  srli         ra, t2, 30
                  xor          t1, a1, a1
                  slli         s4, t4, 27
                  srai         t4, sp, 27
                  or           t6, a2, s5
                  add          t3, a3, a6
                  srli         s10, t6, 16
                  sltiu        t3, s1, 960
                  add          t3, t5, s10
                  auipc        a5, 807394
                  ori          s10, a4, 1033
                  sltu         a4, s3, t3
                  lui          t4, 120095
                  lui          ra, 36358
                  slti         s1, a5, -267
                  xori         s1, s0, 1094
                  srl          s7, s8, tp
                  sltiu        s5, a1, -138
                  ori          s5, a6, 2015
                  srl          a2, a0, a4
                  nop
                  slt          t5, t0, ra
                  or           s3, t2, t3
                  add          a4, a0, sp
                  sra          gp, zero, s11
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x0
                  li           a0, 0x0
                  li           a5, 0x80000000
                  li           s2, 0x80000000
                  li           gp, 0x80000000
                  li           s5, 0x80000000
                  li           s11, 0xffffffff
                  li           s0, 0xb7a0d4e8
                  li           s9, 0x80000000
                  addi         s7, a0, 1890
                  addi         s5, gp, -565
                  sub          s2, s2, s11
                  nop
                  sub          s9, gp, s11
                  nop
                  addi         s6, s11, -1141
                  lui          s0, 888505
                  lui          s6, 609081
                  auipc        s7, 164885
                  sub          s6, s0, s11
                  addi         s2, a0, -1831
                  auipc        s7, 871087
                  addi         s9, s2, 719
                  auipc        s6, 926786
                  addi         s6, s0, -1701
                  lui          s6, 587297
                  nop
                  lui          s2, 638319 #end riscv_int_numeric_corner_stream_19
                  nop
                  sltiu        s6, t3, -727
                  xor          a4, t5, gp
                  srl          a2, a1, t4
                  addi         tp, a2, 91
                  sll          s11, s2, a0
                  srli         s9, t1, 12
                  or           s10, s11, t2
                  srai         s6, s1, 21
                  sll          zero, s3, s6
                  xori         a0, a2, -421
                  srli         t1, s6, 4
                  sra          t1, a5, a2
                  slti         a0, ra, -2043
                  addi         a0, s8, -1411
                  srai         a6, zero, 20
                  addi         s8, a0, -326
                  add          s3, s4, s3
                  ori          s6, a3, 1835
                  slli         a6, s4, 19
                  sra          t5, s4, s10
                  slt          a1, t5, a2
                  sub          s5, tp, s10
                  slt          a4, t2, a6
                  addi         s6, t3, 530
                  srai         a2, a6, 0
                  and          a1, zero, a7
                  ori          t4, t4, 12
                  slli         ra, t4, 28
                  sltu         t5, s6, s0
                  slti         a0, t0, -982
                  auipc        s10, 831082
                  andi         a2, t6, 99
                  slti         s9, t4, -240
                  srl          s7, s9, a7
                  auipc        gp, 292955
                  sra          t4, s10, s3
                  slti         a1, s0, 1566
                  sra          s9, s1, gp
                  add          s10, t1, s6
                  sltu         t2, a4, s5
                  srli         s11, a5, 7
                  sltu         a1, s11, t5
                  sra          s7, sp, t3
                  nop
                  lui          s10, 8755
                  srl          t5, a0, t4
                  sltiu        t4, t5, -352
                  nop
                  slti         s5, s5, -1862
                  srli         ra, t1, 3
                  srai         ra, a6, 5
                  andi         s0, a5, -1543
                  slli         s8, a0, 24
                  nop
                  auipc        a6, 177999
                  srai         t5, s1, 20
                  sll          a2, a3, t0
                  sltiu        a1, s4, 668
                  sll          zero, t3, s2
                  and          s11, s11, a4
                  add          a5, s3, s4
                  auipc        s7, 603588
                  auipc        s8, 174990
                  ori          s10, t2, 1884
                  addi         zero, tp, 661
                  add          a0, s7, a7
                  auipc        s9, 678729
                  lui          s5, 527628
                  slt          t6, tp, t5
                  sll          s6, s0, s8
                  andi         a0, a1, 1644
                  add          s1, s1, t0
                  sltiu        tp, gp, 1589
                  nop
                  srai         a7, gp, 12
                  ori          t2, gp, -1448
                  srai         a2, s7, 31
                  auipc        s0, 979715
                  sltu         t6, tp, s9
                  sltu         a6, s11, t4
                  slti         a6, t6, -156
                  xor          t2, a5, s10
                  sltiu        s3, a6, -456
                  slti         a6, a1, -1149
                  nop
                  xori         s9, a3, 1912
                  xori         s8, a1, -146
                  srai         s0, a7, 12
                  and          a2, s10, s0
                  auipc        zero, 541143
                  slli         a1, t1, 7
                  xor          t5, a5, gp
                  slti         s6, s2, -1400
                  nop
                  srli         t3, s6, 30
                  add          s1, tp, s7
                  lui          a0, 518788
                  lui          ra, 60082
                  slt          t4, zero, a3
                  andi         a6, a7, 1198
                  srli         a7, s11, 14
                  slli         t6, a3, 16
                  xor          t5, a1, s5
                  xori         gp, s3, -1597
                  srai         t5, s5, 6
                  sub          t4, zero, s5
                  and          zero, s7, s6
                  sltu         s5, s5, s9
                  or           s4, s8, zero
                  lui          t3, 930954
                  srai         s8, t4, 11
                  add          s6, ra, a5
                  slt          t6, s8, a5
                  andi         s1, gp, -1732
                  andi         t4, s3, 596
                  add          s0, t2, a3
                  auipc        tp, 210253
                  sltu         t3, a0, s5
                  slli         s6, s5, 21
                  srli         s5, t5, 20
                  auipc        s11, 185355
                  auipc        a4, 1044313
                  sltu         a2, s9, t6
                  sra          a6, s7, t1
                  slti         a7, a7, 1223
                  sltiu        s4, s1, 1688
                  and          t5, t1, t2
                  and          s11, s5, t5
                  slti         a0, s0, 1754
                  addi         a4, t6, 1470
                  lui          gp, 206415
                  sll          t5, a1, a5
                  nop
                  lui          a4, 809587
                  xor          s3, a1, t3
                  or           a7, a7, tp
                  ori          s1, s3, -1686
                  or           s5, s7, a4
                  sltu         s4, s0, s4
                  andi         a6, s3, 856
                  xor          s11, s10, t2
                  sltu         ra, sp, t6
                  slli         t5, s0, 23
                  srai         t2, a7, 11
                  sltu         tp, s7, t5
                  xor          t6, t6, s1
                  or           t4, t3, s2
                  xor          s3, zero, s8
                  auipc        a6, 1001540
                  sub          ra, t1, t5
                  andi         s5, s10, -1106
                  sltu         s3, tp, t0
                  srai         gp, a6, 7
                  sltu         s3, s10, t4
                  or           a6, a3, a5
                  slti         s6, tp, 895
                  sub          a1, s6, s4
                  nop
                  add          a4, s4, a5
                  srai         s1, s1, 1
                  slli         a2, t1, 28
                  add          ra, s1, sp
                  add          s7, s3, t6
                  xor          s10, sp, s4
                  srli         gp, s7, 20
                  or           s1, s6, a3
                  sltu         t5, ra, gp
                  sltu         t5, a4, t3
                  slli         a6, a7, 25
                  ori          a5, a7, 690
                  slli         s3, s11, 26
                  srl          tp, a1, s9
                  slt          s7, s0, a1
                  lui          s7, 244382
                  sll          s9, s1, t3
                  sub          s3, s7, ra
                  srli         s8, s1, 26
                  sra          a7, s5, t0
                  srli         ra, s7, 16
                  auipc        t2, 648363
                  sltu         t4, a6, s3
                  xori         s10, t2, -815
                  and          a0, s6, t6
                  nop
                  sra          ra, t0, a3
                  sll          s11, t5, zero
                  xori         a7, t5, -1320
                  sll          s8, a1, s2
                  srli         s0, a1, 30
                  srai         t5, t3, 8
                  xor          a1, s2, sp
                  auipc        s4, 794044
                  andi         t3, t4, 1570
                  sltiu        s9, s5, 2
                  xori         a4, t6, -784
                  andi         t2, t3, -1189
                  auipc        t5, 763029
                  addi         a1, sp, -1533
                  srli         s9, t5, 25
                  xor          s2, s9, a7
                  sltu         s10, tp, zero
                  lui          a4, 908339
                  xori         a2, gp, -1763
                  lui          gp, 833743
                  ori          t2, s7, -545
                  nop
                  nop
                  lui          a2, 461384
                  srli         t3, s4, 8
                  sltiu        s8, t6, 1923
                  lui          a0, 31854
                  ori          s9, a6, -1400
                  add          s3, tp, gp
                  srli         s3, s9, 8
                  addi         s9, t1, -48
                  andi         t1, s5, -1526
                  or           s6, tp, s11
                  sll          gp, s3, s8
                  slt          tp, a1, a5
                  addi         s1, a3, -1441
                  or           gp, t2, t0
                  sll          s11, t1, s11
                  auipc        zero, 105597
                  sra          t2, a5, a5
                  sll          s11, t6, s3
                  xori         a1, t4, 275
                  srai         tp, s11, 27
                  srai         s5, gp, 23
                  addi         s5, s0, 1608
                  sub          s2, t5, a2
                  sltu         s11, a4, s3
                  sltiu        zero, s10, 1015
                  lui          s6, 504992
                  nop
                  srl          tp, t6, zero
                  lui          t5, 1035927
                  srai         s1, a6, 28
                  and          s1, s1, t0
                  sltu         s1, s9, s6
                  sll          ra, s2, a0
                  sra          s7, a7, t4
                  and          a1, a1, a2
                  and          s8, s11, s3
                  and          a5, a6, s4
                  xori         a2, ra, -854
                  or           a0, t6, t3
                  andi         tp, t6, 861
                  ori          tp, t0, 1375
                  slt          s9, t5, a6
                  sub          s4, s2, s2
                  srli         ra, s11, 24
                  slt          t4, a4, t4
                  nop
                  and          a5, a7, sp
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s10, 0x9b37e060
                  li           s1, 0xffffffff
                  li           a1, 0x0
                  li           t5, 0xffffffff
                  li           s6, 0x0
                  li           a0, 0x2d7a17e3
                  li           a4, 0xffffffff
                  li           s2, 0x2ee0c3c5
                  li           s11, 0x80000000
                  auipc        a1, 253592
                  lui          s6, 541222
                  add          s1, a0, s1
                  add          s11, t5, a1
                  auipc        t1, 606121
                  lui          t1, 967971
                  lui          a0, 556366
                  lui          s1, 269745
                  lui          a0, 813087
                  addi         t1, a0, -1194
                  nop
                  nop
                  lui          s10, 601695
                  auipc        s1, 888295
                  auipc        a0, 1046291
                  sub          s10, s6, t1
                  nop
                  add          a1, s6, s11
                  nop
                  lui          s11, 402402
                  addi         t1, s1, -1640
                  sub          s1, t5, s10
                  nop
                  sub          s1, s1, s11
                  auipc        s2, 259164 #end riscv_int_numeric_corner_stream_14
                  lui          a1, 731076
                  auipc        t4, 386142
                  srli         t6, s3, 14
                  nop
                  nop
                  sltu         t4, ra, a7
                  nop
                  auipc        s1, 708380
                  slt          gp, t0, a6
                  sra          a6, s10, zero
                  srai         s5, a6, 17
                  srai         s8, a0, 21
                  srai         t4, gp, 16
                  slt          a5, s11, s1
                  slti         s10, s5, -484
                  lui          s4, 255089
                  andi         t2, a4, 1396
                  sub          s10, a6, sp
                  xor          s9, a2, s4
                  and          s7, s4, t4
                  or           s3, a7, s7
                  sll          s11, t5, s2
                  slt          a5, s7, gp
                  slli         zero, s3, 16
                  add          s11, t1, s1
                  xor          s5, a2, t1
                  or           s0, a3, a7
                  srai         s2, a2, 13
                  xori         gp, a7, 904
                  slti         a4, a7, -690
                  sra          s9, s9, t1
                  slti         s2, s1, 1669
                  srl          t5, t6, tp
                  and          s8, s0, s2
                  and          t3, s11, s9
                  sltiu        t5, gp, -298
                  nop
                  sra          t5, s6, zero
                  lui          a4, 983645
                  auipc        gp, 601670
                  sub          t2, t2, a7
                  auipc        s9, 735349
                  add          s6, s4, s5
                  and          zero, s7, t6
                  srai         tp, tp, 30
                  srli         a1, a0, 26
                  slli         a1, tp, 25
                  srl          s4, a6, a7
                  andi         t2, ra, 601
                  slt          s4, t6, a6
                  slli         s8, a0, 16
                  or           t4, a1, a3
                  sub          a5, s11, s9
                  sltu         s3, s4, s5
                  xor          a2, zero, gp
                  addi         a6, s7, 198
                  sll          a2, t5, a6
                  or           s6, a3, a3
                  sltiu        s10, ra, 1726
                  ori          s1, s0, 1424
                  sra          a6, s2, ra
                  sltu         s9, gp, t0
                  andi         t4, s11, -836
                  auipc        t6, 237679
                  lui          t5, 846829
                  slli         a4, s7, 16
                  xori         a6, s1, -285
                  addi         t1, s4, -140
                  sltu         s8, s10, s8
                  nop
                  xori         a0, t5, 1043
                  nop
                  sll          s4, s2, s11
                  auipc        s9, 366091
                  xor          zero, t1, s1
                  srai         a1, t3, 7
                  sll          a6, a4, s2
                  srai         gp, s3, 8
                  slt          a5, s2, t6
                  lui          a2, 415508
                  slti         gp, tp, 1457
                  auipc        s8, 809123
                  xori         s2, t6, 1985
                  srai         a4, s3, 2
                  ori          t6, s10, 1854
                  and          s7, s4, s2
                  or           t3, s1, s8
                  andi         t6, a7, -964
                  addi         t5, s11, 58
                  sll          s9, t5, a5
                  slti         t3, a3, -1358
                  ori          a7, s2, 828
                  or           t5, t5, s11
                  xori         s8, a0, -21
                  slt          zero, s2, s10
                  auipc        a5, 999422
                  lui          tp, 557879
                  srai         a6, t0, 18
                  srl          s0, a6, s3
                  nop
                  slti         a0, t4, -1134
                  sub          s3, s3, gp
                  xori         a4, t6, -147
                  xori         s0, t5, -570
                  xori         t3, t0, -620
                  nop
                  add          s4, t1, a6
                  lui          gp, 760224
                  xor          s4, s2, s6
                  sll          s0, t0, s7
                  slt          s5, a7, s6
                  andi         t2, t3, 399
                  srai         a7, t4, 8
                  and          t1, s11, zero
                  sub          t4, zero, s9
                  xori         s10, s0, 592
                  auipc        s8, 793811
                  sra          s2, tp, a5
                  sll          s7, sp, tp
                  andi         a1, t0, -514
                  srli         ra, a1, 11
                  addi         a6, s4, 1751
                  andi         s9, a3, 212
                  auipc        s8, 407681
                  add          s0, s3, s0
                  xori         t6, a2, 1357
                  sll          a5, s6, s10
                  addi         s8, s7, -954
                  srl          zero, t2, a5
                  and          tp, s10, t2
                  or           t2, s10, a3
                  slli         s6, t1, 18
                  sra          s9, a1, s0
                  lui          a7, 116518
                  ori          s2, a3, -1159
                  sra          zero, t1, gp
                  sll          s0, tp, s1
                  auipc        t4, 280793
                  slti         s11, s4, -1341
                  andi         t5, a4, -255
                  sra          t1, s3, t0
                  slt          a4, a6, s4
                  addi         a7, s10, -1600
                  and          s7, t4, ra
                  andi         s2, s0, -1030
                  sltiu        a1, tp, 381
                  and          a6, t0, a6
                  sll          s8, a6, ra
                  ori          s10, s6, 155
                  slti         a4, a4, 1161
                  or           tp, s0, s5
                  or           a2, t2, s0
                  slt          a2, t4, a4
                  sltu         tp, t4, s9
                  add          s11, t6, a3
                  addi         s9, sp, -1473
                  slt          a5, s3, t5
                  sll          t3, s4, a5
                  nop
                  sltu         t2, t6, a0
                  srli         a0, t1, 10
                  nop
                  srl          s8, s4, s11
                  and          a5, s6, a1
                  lui          s8, 336713
                  addi         a6, sp, -910
                  lui          a5, 230041
                  add          a7, a5, s11
                  andi         s3, t0, -733
                  xori         t2, a4, 338
                  add          t2, sp, s3
                  srai         s9, a5, 9
                  addi         s8, a5, 52
                  xori         t5, s5, 917
                  sltiu        ra, s9, -1488
                  srli         a1, s6, 16
                  srl          s6, t1, s0
                  srai         s9, t2, 7
                  slli         s8, s7, 17
                  lui          s4, 969790
                  andi         s10, a4, -911
                  and          t2, a2, t5
                  sll          s2, s1, s3
                  srai         t6, s4, 27
                  addi         s2, t2, 1385
                  srai         s1, a0, 8
                  xori         t3, sp, 227
                  xori         s6, t3, 414
                  xor          s10, a7, t2
                  sra          s11, a5, s10
                  slt          a1, zero, a0
                  xor          s10, t1, s11
                  srli         s7, t3, 4
                  nop
                  slti         t3, zero, 325
                  srl          t3, s10, a6
                  slti         s9, s10, 776
                  auipc        gp, 754154
                  xor          t4, t0, a2
                  add          s10, s8, s9
                  ori          s9, a0, -1012
                  sub          a1, a3, t1
                  srli         a2, t3, 31
                  sltiu        s10, s11, 1171
                  sra          s3, t2, s6
                  andi         s1, s11, 1071
                  auipc        t4, 946458
                  xor          s3, s11, s2
                  add          a0, t0, t5
                  srl          s0, a4, a7
                  slt          s8, t2, ra
                  slti         s1, t2, 35
                  sltiu        a4, t6, 1059
                  auipc        t3, 439798
                  srli         t1, t0, 17
                  slti         t1, a2, -1522
                  sll          s8, zero, s1
                  add          s3, s3, a4
                  auipc        s6, 854910
                  auipc        a6, 315159
                  sltiu        a6, a6, 333
                  add          t1, t1, s11
                  ori          gp, s3, -634
                  sll          s6, tp, t2
                  lui          a2, 906748
                  and          s2, s10, s5
                  srai         t5, a5, 15
                  xor          s9, zero, zero
                  slli         s11, s0, 1
                  slti         a5, t6, 1013
                  addi         s9, tp, -739
                  sltiu        s11, s0, -164
                  ori          s6, s7, -1856
                  addi         s11, a7, 1877
                  srl          t1, s0, a7
                  lui          a5, 597526
                  and          s10, tp, a4
                  srai         s10, a6, 15
                  xori         s10, a6, -1753
                  or           a7, zero, t5
                  srl          t5, s10, s9
                  sra          s3, s8, a2
                  ori          s4, t2, -379
                  slti         t6, tp, -1012
                  andi         s4, t2, -1550
                  slti         s5, a1, -323
                  sra          t1, tp, s10
                  lui          s1, 648063
                  lui          s6, 865845
                  srli         a2, s1, 2
                  and          s2, s6, t6
                  xor          s1, t0, s3
                  or           s4, s7, a7
                  srai         t6, t0, 22
                  srai         t2, gp, 13
                  lui          s8, 472692
                  and          t6, sp, a1
                  slli         gp, t5, 11
                  and          tp, s8, a7
                  srai         s10, s3, 25
                  andi         s9, s5, -1003
                  slt          tp, s9, t4
                  lui          a6, 972240
                  and          a6, tp, a5
                  srl          t2, s3, s1
                  xori         zero, s0, 1541
                  xor          t5, gp, a1
                  srli         a5, s5, 17
                  and          a4, s4, ra
                  sltu         a7, t4, a2
                  sltiu        a5, t0, -217
                  nop
                  xor          s7, a5, t0
                  nop
                  ori          tp, s0, -448
                  sll          a2, a0, s3
                  sll          s2, a1, a3
                  srli         a5, sp, 26
                  sub          tp, s7, tp
                  ori          t6, s7, -1369
                  srl          s1, t6, s9
                  slti         t1, a3, 717
                  andi         s3, s6, 69
                  sltiu        s1, a6, -177
                  add          s5, s11, t5
                  sll          s7, sp, s0
                  slti         s7, s1, -1608
                  sub          s6, s0, s8
                  xor          t6, a2, gp
                  sll          s2, s0, s4
                  srl          t3, a2, s3
                  slti         a6, s0, -1389
                  xor          s10, a5, a7
                  sra          s3, t0, s1
                  xori         s9, t4, 491
                  sra          gp, tp, t6
                  sltu         s5, t6, sp
                  slt          s8, s9, a1
                  srli         s10, a4, 14
                  sltiu        ra, s7, 1450
                  xori         t1, t6, 1479
                  sltu         s4, s1, gp
                  xori         a2, s10, -1989
                  slti         t5, s0, 164
                  sub          a6, s3, t6
                  sra          t5, t3, s4
                  sub          a2, a6, s9
                  srai         a5, t1, 1
                  add          a6, sp, s10
                  xori         s7, a0, 1250
                  andi         s3, t5, -1176
                  slli         s6, t5, 23
                  addi         a7, tp, 1531
                  slti         s1, s3, 1915
                  add          s8, s1, s2
                  sltu         s11, a6, s2
                  nop
                  slt          a1, s4, s4
                  add          a4, gp, a7
                  sll          a6, t6, s9
                  sub          s10, sp, gp
                  slti         t2, s0, 2034
                  sltu         a0, t4, t3
                  xor          a0, s3, a2
                  auipc        s10, 150672
                  slt          s4, sp, ra
                  xori         s6, t1, -1630
                  sub          s11, s4, t3
                  xori         a4, sp, 156
                  sll          t5, t4, zero
                  sltu         s6, tp, s9
                  srli         t1, ra, 23
                  ori          tp, s4, -36
                  srli         s3, t4, 5
                  andi         s11, s4, -755
                  auipc        s4, 536355
                  slt          zero, t1, s10
                  nop
                  xor          a4, s11, ra
                  slt          t3, t5, t3
                  sub          s0, t0, s2
                  xor          a5, s6, s4
                  sll          s11, a1, a5
                  sub          s7, s5, a4
                  srli         t3, s4, 9
                  srai         s6, a7, 28
                  or           s0, t5, t6
                  srl          t6, s5, gp
                  sltu         s5, ra, s0
                  xor          a6, s8, s9
                  srl          s4, ra, s3
                  slli         s3, s6, 31
                  srai         s0, zero, 26
                  ori          s3, ra, -1768
                  ori          a1, t4, 834
                  slti         s11, t1, -1225
                  or           t6, s6, s5
                  srli         s6, s5, 19
                  and          s8, s0, s9
                  or           s10, s8, gp
                  addi         s10, a7, -1336
                  ori          s5, t4, -1060
                  sltu         s6, a5, zero
                  ori          a1, a6, -676
                  slti         s2, ra, -21
                  andi         a5, s9, -860
                  sub          t5, s5, s1
                  slti         s2, t3, 529
                  ori          s3, a2, -874
                  sltu         a7, s5, a6
                  ori          s8, s8, -1338
                  or           s1, ra, sp
                  srl          s2, a1, t0
                  nop
                  slti         t6, t3, 1865
                  xor          a1, tp, a2
                  li           s8, 0x1a29e95 #start riscv_int_numeric_corner_stream_10
                  li           s3, 0xccc911c9
                  li           a2, 0x0
                  li           s11, 0xffffffff
                  li           a0, 0x80000000
                  li           t2, 0x80000000
                  li           s10, 0x80000000
                  li           t4, 0x0
                  li           tp, 0x0
                  li           t3, 0xd61d6e58
                  sub          t3, s11, s11
                  nop
                  nop
                  add          s11, a0, tp
                  lui          t4, 661403
                  nop
                  nop
                  nop
                  auipc        s8, 836945
                  auipc        s10, 791634
                  lui          a0, 179459
                  addi         s3, a2, -164
                  lui          s11, 240796
                  auipc        s11, 439363
                  add          s11, s10, t4
                  add          t4, s11, tp #end riscv_int_numeric_corner_stream_10
                  srli         zero, sp, 11
                  ori          s6, sp, 1190
                  slti         t5, a7, -845
                  and          s6, t5, a1
                  sra          s5, t5, s4
                  sltiu        s2, a1, -553
                  xor          a7, t0, s2
                  add          tp, a2, a1
                  sltiu        s7, a3, 1065
                  xori         a6, ra, 1109
                  slli         a0, gp, 28
                  or           t1, s10, a0
                  lui          s10, 572388
                  slli         s11, t2, 11
                  lui          zero, 713649
                  sll          gp, t0, s7
                  ori          t4, s7, 952
                  add          tp, s1, a3
                  srl          s11, s6, s5
                  sltu         s10, zero, a4
                  xori         s10, a7, -1410
                  slti         ra, a2, -995
                  or           t6, s1, zero
                  sub          s1, a6, s0
                  xor          t1, s7, s4
                  lui          s4, 1036728
                  lui          gp, 1028185
                  sub          s10, s7, s11
                  lui          a1, 582653
                  srli         a0, t3, 25
                  xor          s5, a6, s0
                  sub          t6, s7, t0
                  srai         a6, a4, 12
                  lui          a6, 57339
                  sll          zero, s11, t4
                  slt          tp, t5, gp
                  ori          gp, a2, -1436
                  xor          s3, zero, t0
                  add          s3, a6, s2
                  auipc        a4, 260155
                  sltiu        a4, s11, -273
                  slt          zero, t2, s9
                  andi         t3, s11, -478
                  sll          gp, a3, a4
                  auipc        s2, 548257
                  sll          a7, s10, s8
                  xor          t3, t3, a0
                  nop
                  sub          a4, a3, a4
                  andi         a4, a0, -1171
                  sub          t1, s0, t1
                  sra          a6, a7, s4
                  or           tp, t2, sp
                  xori         s9, s1, 284
                  xor          t5, a0, ra
                  andi         zero, t2, 202
                  addi         s3, sp, -715
                  xor          a1, a6, a2
                  sltu         gp, s0, a0
                  nop
                  srai         a5, ra, 3
                  sll          a5, gp, s9
                  sltu         tp, a4, s8
                  sltiu        t4, s2, 273
                  slti         t2, t6, -1831
                  or           s2, t3, a5
                  ori          ra, t2, -1958
                  sltiu        tp, t6, -1768
                  lui          s2, 432876
                  srai         s9, s5, 26
                  ori          a0, s7, 1582
                  auipc        a4, 581645
                  ori          s10, t2, -261
                  add          s10, a1, gp
                  sub          s9, t3, s7
                  xori         t2, s2, -673
                  or           s9, t4, s4
                  srli         a0, a5, 1
                  slt          zero, s2, s9
                  sra          s5, zero, zero
                  lui          a7, 129160
                  ori          a7, a1, 536
                  slti         t2, t3, -2013
                  nop
                  ori          t4, s4, -239
                  sltu         gp, a6, t2
                  sra          s3, s2, t4
                  ori          a6, t0, 360
                  addi         t3, a7, 1636
                  srai         s5, t6, 21
                  sltu         gp, s8, a6
                  auipc        s10, 997603
                  nop
                  srli         zero, t3, 9
                  srl          a5, t6, a1
                  xor          t6, a6, a4
                  sll          s8, a4, s0
                  sltu         s6, s0, s5
                  or           gp, s9, a4
                  sub          t6, s1, gp
                  add          zero, s6, t3
                  xori         zero, zero, 1100
                  nop
                  srai         s3, gp, 15
                  sltu         a5, s11, t4
                  slt          a1, s8, a2
                  addi         a1, t2, 1111
                  nop
                  slli         s3, s5, 8
                  srli         t5, s9, 19
                  sltu         t6, s2, s4
                  ori          a2, s1, -1499
                  sltiu        s6, a2, 14
                  sll          s11, s11, t0
                  srli         s9, s0, 29
                  addi         tp, a0, 374
                  andi         s6, t5, -1918
                  sra          t3, s1, s7
                  sra          s11, s7, a5
                  sra          s7, a0, ra
                  addi         s5, s5, -946
                  or           s9, a4, a2
                  andi         s8, gp, 1118
                  sub          s4, t3, s9
                  slt          a5, a0, t6
                  srli         a6, t3, 12
                  andi         t3, gp, -189
                  xor          zero, sp, ra
                  lui          s11, 308238
                  sra          s10, s0, s9
                  sll          s6, s0, tp
                  add          s8, zero, t5
                  slli         a1, s0, 25
                  sltiu        s6, sp, 195
                  sub          s11, s5, t3
                  sub          t4, a5, t3
                  sra          s0, a3, s10
                  ori          s0, s0, 1181
                  slti         s7, t2, 1739
                  srai         s8, s11, 24
                  sll          a1, a5, s7
                  and          s1, s9, t4
                  sltu         t6, t4, s11
                  or           s7, s3, a6
                  xori         s0, t0, 1867
                  lui          tp, 1012537
                  sra          a2, a4, s4
                  xor          s11, s1, t6
                  and          s9, s1, a3
                  nop
                  auipc        s11, 736038
                  xor          t1, sp, sp
                  srl          s2, t0, s10
                  srl          s3, s10, t2
                  srli         a6, a4, 5
                  slti         s6, s8, -1741
                  srl          s0, t6, t5
                  addi         t1, s5, -700
                  andi         a6, s8, -655
                  sll          a7, s8, a1
                  nop
                  xor          a7, a1, a1
                  and          a1, s6, t2
                  slti         s6, s2, 490
                  xor          s10, s5, s4
                  add          s7, t4, t0
                  lui          t4, 1018989
                  nop
                  or           s11, s10, a5
                  addi         s6, sp, 1285
                  nop
                  slt          s1, s7, s0
                  slli         ra, t3, 24
                  slti         s10, s6, 1490
                  ori          s5, s1, 793
                  auipc        t4, 285305
                  sltiu        a5, a7, 1000
                  add          s5, t5, a5
                  nop
                  sltu         s0, a4, t2
                  slli         a7, ra, 1
                  slti         s1, s0, -1574
                  nop
                  sltiu        s10, t0, -2036
                  ori          tp, t6, -1311
                  lui          t2, 323150
                  sra          a0, sp, s1
                  sll          t2, a6, t1
                  and          s5, s9, s11
                  nop
                  sll          s5, gp, a6
                  xor          a2, s8, s5
                  sub          s3, tp, s0
                  sltu         a2, s2, tp
                  srli         s5, tp, 6
                  slli         s5, s4, 10
                  slti         s3, s10, 1054
                  srli         t5, t3, 26
                  nop
                  addi         a2, s1, 157
                  auipc        s0, 1041243
                  sltu         a1, sp, t0
                  slt          a5, t3, a4
                  and          tp, a6, a6
                  slli         s1, a2, 23
                  addi         t2, s9, -1463
                  sll          a1, s7, a6
                  and          a7, t4, s5
                  xor          a1, t4, s2
                  addi         s6, s4, 1776
                  nop
                  srli         t1, ra, 10
                  slt          s1, ra, zero
                  addi         t4, s11, -1447
                  srli         t5, t3, 25
                  add          t4, s4, t6
                  and          a0, a7, s8
                  auipc        t1, 97567
                  srl          t6, s10, sp
                  sltiu        t6, s5, 1605
                  sra          s0, a7, t4
                  add          s11, a4, t2
                  slt          s3, zero, s0
                  sll          a7, gp, s4
                  srl          a6, a6, ra
                  sltiu        a4, t6, 1721
                  srl          s2, a4, a5
                  srai         s7, zero, 5
                  xor          s5, gp, gp
                  lui          t1, 628873
                  xori         t1, ra, -1282
                  auipc        s4, 295430
                  srai         t4, s5, 27
                  sltiu        t3, sp, -1310
                  and          s3, a0, s0
                  addi         a1, a5, -267
                  sll          s4, ra, a0
                  sltiu        t3, tp, -872
                  and          t1, t2, sp
                  sltiu        s1, ra, 2002
                  auipc        s1, 125657
                  sltu         s0, s8, a6
                  srli         t5, sp, 5
                  slt          a7, a6, s2
                  or           s10, s8, a5
                  andi         s3, s5, -1043
                  srl          s7, a6, gp
                  lui          s9, 93397
                  lui          s8, 114474
                  sll          tp, gp, s0
                  lui          t6, 123367
                  slti         a4, gp, 1319
                  or           s3, s3, s10
                  slt          t4, a3, s0
                  nop
                  add          a2, a0, s7
                  sra          a5, t5, t3
                  sub          ra, t3, a6
                  addi         s4, t3, -883
                  addi         a4, a4, 533
                  xori         tp, t3, 322
                  xori         t6, gp, -700
                  sra          t2, a2, s4
                  srli         s0, tp, 13
                  add          gp, a7, s11
                  sub          s11, s8, ra
                  xori         tp, a7, -1695
                  sub          tp, s5, t1
                  xori         s9, s9, -1738
                  sub          zero, t3, s11
                  ori          s8, a6, -949
                  slti         s3, s1, 1766
                  sub          a1, t2, t3
                  lui          s8, 424284
                  xor          a7, zero, s8
                  srli         s10, s4, 5
                  ori          s8, a4, 464
                  lui          t5, 962613
                  srli         a7, a0, 23
                  and          t4, a6, a2
                  xori         a2, s8, 117
                  sltiu        t5, s5, -749
                  ori          t6, ra, -79
                  addi         a6, s7, 1679
                  lui          t2, 444888
                  auipc        t4, 750727
                  sltu         s6, a7, s9
                  srai         a7, s0, 2
                  lui          t2, 50032
                  xori         a5, s7, 37
                  srai         t3, s11, 6
                  slt          a2, s6, a4
                  ori          a6, t1, 1312
                  ori          a5, t4, 0
                  auipc        s9, 563624
                  auipc        a7, 29945
                  srai         s2, s0, 11
                  ori          a1, a6, -1912
                  srli         tp, a0, 3
                  sltiu        t4, s6, -1708
                  add          s1, s4, t3
                  xor          s7, t6, t5
                  srli         t1, s3, 6
                  ori          s10, s9, -949
                  xor          tp, s3, s8
                  addi         s1, a7, -1498
                  xori         t1, a3, -763
                  srli         s10, s7, 0
                  slti         gp, ra, 990
                  xori         s11, s5, 1860
                  add          tp, t0, sp
                  sltu         ra, s10, s4
                  sra          s8, a1, s1
                  slt          a4, zero, s1
                  ori          ra, s11, -1730
                  srl          tp, sp, s4
                  and          ra, ra, s5
                  lui          s5, 999839
                  and          t1, zero, tp
                  sltu         t5, t5, ra
                  and          tp, t4, s4
                  sltu         t6, t2, s6
                  add          s1, a0, a5
                  sra          s2, s9, sp
                  slli         a1, s8, 13
                  slt          a0, a0, s1
                  auipc        a2, 173599
                  sll          a0, sp, s9
                  slti         a1, t0, -665
                  sub          t4, s5, a0
                  sltiu        t6, t4, -360
                  or           s1, s11, s7
                  slt          s7, s6, t6
                  auipc        a2, 293127
                  slli         ra, t4, 0
                  lui          t1, 557603
                  andi         a1, a7, -831
                  slti         s10, sp, -877
                  sub          s1, zero, t5
                  sltiu        t3, a7, -1825
                  sra          s4, a1, t4
                  slti         s4, s11, 1181
                  ori          t2, ra, -821
                  sra          a7, t3, s2
                  slli         a6, zero, 9
                  addi         s8, a7, 453
                  sltiu        s10, a6, -1810
                  andi         tp, s5, -786
                  nop
                  sll          s1, t2, a1
                  srai         t3, sp, 18
                  srli         a6, t6, 2
                  sra          zero, s7, s5
                  sub          a2, s0, a2
                  addi         s11, s6, 1089
                  auipc        gp, 42146
                  slt          s4, s0, s2
                  srli         s10, s10, 18
                  sltiu        s9, t4, 54
                  srli         s9, a5, 30
                  ori          a7, a2, -366
                  ori          a6, ra, 242
                  sra          t6, s2, a1
                  andi         a0, s10, 1676
                  srl          gp, a6, s3
                  srl          s4, t0, s4
                  sra          a0, a4, t2
                  add          t2, a5, a6
                  or           s0, zero, a3
                  sll          s10, a6, s0
                  ori          a2, zero, 889
                  and          s1, zero, t6
                  lui          t2, 803013
                  sra          a1, s3, gp
                  or           s6, a6, t2
                  srl          t2, t5, zero
                  ori          t3, s8, 105
                  xor          s8, sp, sp
                  add          a5, sp, t2
                  srai         a6, tp, 2
                  xori         ra, s3, 1605
                  slti         t3, s9, -1975
                  xor          a6, t6, s10
                  xor          ra, t3, a1
                  slli         t4, ra, 3
                  ori          s7, a4, -480
                  auipc        tp, 958421
                  or           s11, tp, a7
                  addi         a0, s5, -1106
                  ori          a0, t3, 464
                  xori         t4, t5, 2036
                  auipc        s11, 658
                  ori          s11, a4, 679
                  sll          s0, a6, a5
                  and          s1, s5, t0
                  or           zero, t5, a6
                  auipc        s7, 1022393
                  lui          tp, 1043313
                  ori          s5, a3, 383
                  nop
                  sub          gp, s2, zero
                  srai         s2, zero, 1
                  slti         a0, t5, 1354
                  and          ra, tp, t4
                  srli         tp, a0, 10
                  auipc        s0, 99241
                  slt          t1, sp, sp
                  and          s10, t1, tp
                  slti         s4, a1, 1928
                  sltiu        t6, s8, -1598
                  xor          s4, a4, s7
                  slli         zero, s10, 29
                  sll          s4, s7, s2
                  or           s9, a6, tp
                  nop
                  andi         a1, s0, -473
                  andi         s0, a0, 1650
                  slti         a6, s6, 254
                  sltu         tp, t4, t4
                  srl          t4, s8, a7
                  lui          t4, 29723
                  nop
                  auipc        zero, 714798
                  ori          s4, ra, 1298
                  lui          s3, 1000567
                  lui          a6, 406563
                  and          s1, a7, t0
                  and          tp, s10, s5
                  ori          t4, a1, 1744
                  xor          t1, sp, t2
                  sll          s0, s2, s3
                  ori          t3, a6, -1757
                  and          a2, s1, zero
                  xor          s11, ra, s7
                  or           s8, tp, t3
                  addi         s7, s8, -1356
                  xori         gp, s10, 751
                  add          t6, a7, gp
                  xori         t4, s5, -1742
                  sltiu        s7, s8, 105
                  sltu         s4, a1, t0
                  add          ra, t2, ra
                  sll          a5, s7, s2
                  srli         s11, a3, 4
                  or           a2, s6, s2
                  nop
                  and          s5, s3, s5
                  srli         s5, s3, 13
                  sub          s0, t2, t1
                  slli         zero, s3, 5
                  sra          a7, zero, s2
                  nop
                  srl          t4, a5, ra
                  srai         t1, gp, 10
                  srli         ra, a1, 25
                  xori         a5, ra, 1169
                  slti         s5, s0, 1454
                  sub          s2, s2, sp
                  ori          zero, s9, -1783
                  xor          s3, s3, a0
                  sra          a0, s10, s0
                  sll          a1, s10, s0
                  slti         s1, t6, 822
                  sll          s11, s1, s7
                  ori          s7, a5, -134
                  xori         t6, a2, 1038
                  srli         s8, t3, 26
                  lui          a2, 465141
                  slt          a5, gp, a6
                  and          a7, a4, s5
                  srli         s3, t6, 8
                  add          s6, t1, a5
                  xori         s1, a7, -1682
                  sll          s2, a1, a2
                  sltiu        s3, s8, -37
                  slt          s7, a4, s2
                  nop
                  srai         s8, a3, 29
                  srai         a6, t5, 24
                  srli         tp, a4, 14
                  auipc        t1, 899014
                  add          s3, a6, t4
                  slli         s6, t2, 6
                  addi         s0, s7, -1058
                  xor          s2, a3, tp
                  lui          t5, 53303
                  add          gp, a0, a1
                  add          s4, t2, s4
                  srai         s4, a0, 8
                  andi         a5, t0, 984
                  srl          a1, t5, s8
                  sra          s2, s9, s1
                  sltu         a4, a1, t4
                  sll          a7, tp, sp
                  sltu         zero, s3, a4
                  xor          a2, s6, s2
                  slt          a6, s6, tp
                  slt          s2, s1, t0
                  sub          gp, a3, s2
                  sra          s5, t6, t1
                  ori          s5, a3, -1893
                  srl          a5, s1, gp
                  add          s3, s10, tp
                  srai         ra, t4, 25
                  xori         s6, t5, -1254
                  nop
                  ori          a2, s8, -1200
                  nop
                  and          s7, t2, s6
                  or           s0, s0, t4
                  nop
                  sub          a2, a7, a7
                  ori          a0, s1, -315
                  slti         s2, s8, -577
                  sub          t2, s7, a5
                  srai         s8, a7, 8
                  addi         s2, t0, 1669
                  nop
                  auipc        t4, 641422
                  sltu         t5, s2, s2
                  andi         a1, s11, 1712
                  auipc        s2, 109041
                  sltiu        a5, s11, 1136
                  andi         t6, gp, 1781
                  sll          a7, s1, s0
                  li           s7, 0xfd34e60a #start riscv_int_numeric_corner_stream_7
                  li           t4, 0x0
                  li           s10, 0xffffffff
                  li           t2, 0xffffffff
                  li           a1, 0xffffffff
                  li           s11, 0x0
                  li           a6, 0x6a45dea
                  li           s9, 0x80000000
                  li           s3, 0x0
                  li           s0, 0xffffffff
                  nop
                  add          s10, s9, s7
                  add          a6, s9, s7
                  add          a1, a1, s10
                  addi         a6, s0, 1881
                  lui          s11, 921832
                  addi         s3, a1, -1776
                  lui          s11, 723931
                  addi         s11, a6, -989
                  add          s7, s3, s0
                  nop
                  addi         a1, s10, -1933
                  sub          t4, s0, t2
                  sub          s10, a1, s3
                  nop
                  auipc        t4, 567041
                  add          a1, a6, t2
                  auipc        a6, 253451 #end riscv_int_numeric_corner_stream_7
                  slt          a4, t3, a2
                  sll          tp, tp, t2
                  srai         s9, a3, 14
                  srl          a7, s0, sp
                  nop
                  sub          t1, t5, a7
                  srai         gp, s5, 17
                  xori         t1, t3, 792
                  sll          s7, sp, a5
                  sub          t4, t0, s8
                  srl          s6, t4, s11
                  lui          a0, 319212
                  lui          a0, 852945
                  and          a0, s10, a1
                  sltu         t3, s8, s4
                  sub          s0, s2, s5
                  and          s11, s1, s1
                  slli         ra, s8, 18
                  lui          s3, 742814
                  sltu         gp, s11, a4
                  sub          s6, a3, a5
                  ori          a5, sp, -43
                  slli         t2, s4, 10
                  xori         s4, s9, 35
                  sra          a7, s5, sp
                  nop
                  srli         s8, t5, 25
                  sltiu        a1, t5, -1695
                  srli         tp, s4, 22
                  auipc        s3, 580469
                  sra          a5, a0, s3
                  slt          gp, t3, t4
                  sltiu        a6, s6, -1815
                  andi         ra, sp, -332
                  sltiu        t2, a4, -542
                  srai         s3, t5, 2
                  and          s11, s3, tp
                  xori         s5, s10, 2002
                  srai         s1, a1, 12
                  xor          s7, gp, t5
                  ori          zero, a6, -1008
                  slt          s11, s6, t1
                  srai         s9, zero, 1
                  srli         s4, t5, 25
                  andi         s0, t2, -812
                  nop
                  xori         a4, s8, -456
                  auipc        s10, 229378
                  addi         s8, t5, -1175
                  andi         gp, a4, 1281
                  xor          t1, s0, t6
                  nop
                  lui          t6, 451845
                  srl          s7, a6, a4
                  sra          t5, t3, a2
                  lui          s11, 642579
                  add          a7, ra, s7
                  sra          s11, s7, t2
                  sra          a0, a0, s1
                  auipc        tp, 630401
                  lui          tp, 746023
                  ori          a1, a2, 136
                  lui          s1, 796115
                  srl          s10, ra, s5
                  xori         s4, t4, -593
                  xor          a2, t3, sp
                  srl          s9, s10, s8
                  sra          t3, s4, t0
                  add          a4, t6, t1
                  srli         a0, zero, 9
                  xor          a2, s1, a4
                  ori          s0, t2, 282
                  sltiu        a5, s2, -822
                  add          s8, s8, t5
                  addi         s9, gp, 1674
                  xori         s0, t1, 290
                  sltiu        ra, s10, -883
                  sltu         a7, t0, s7
                  xor          s6, a4, s5
                  auipc        a5, 726491
                  lui          gp, 774274
                  and          a6, t5, s10
                  slt          a4, gp, s9
                  lui          t2, 649805
                  xori         s7, s7, -1858
                  auipc        a1, 769111
                  auipc        s11, 537764
                  xori         t3, s8, -734
                  add          s4, s0, s10
                  lui          tp, 1005348
                  sra          a4, t0, t2
                  add          t3, s5, t5
                  auipc        a1, 377533
                  srl          t4, s2, s6
                  sra          s11, s1, a7
                  sra          a0, t4, t2
                  xori         gp, t6, 1852
                  srai         s0, s4, 27
                  sltiu        a4, a1, 216
                  srai         t2, s0, 28
                  ori          a6, a3, -75
                  lui          a1, 1014048
                  add          gp, s6, s4
                  srl          t3, t4, s0
                  lui          s3, 372874
                  sltiu        s0, s1, -1767
                  addi         a0, s10, -179
                  lui          s1, 146940
                  li           t5, 0xeea84a84 #start riscv_int_numeric_corner_stream_4
                  li           s8, 0x394c399e
                  li           t2, 0x16eb3aa6
                  li           s4, 0x80000000
                  li           s7, 0xffffffff
                  li           a5, 0xffffffff
                  li           s2, 0x0
                  li           s11, 0x80000000
                  li           t6, 0xffffffff
                  li           t3, 0xcb15ef65
                  lui          s4, 888641
                  nop
                  addi         t6, s11, -225
                  add          s11, s7, t3
                  addi         a5, s8, -1971
                  lui          t5, 41644
                  auipc        t6, 813781
                  addi         s4, t2, -1948
                  sub          t6, s4, a5
                  nop
                  addi         s8, s11, 759
                  sub          s8, s4, s11
                  nop
                  add          a5, s2, s4
                  lui          s2, 55919
                  nop
                  lui          a5, 57858
                  auipc        s11, 11965
                  auipc        t2, 204429
                  lui          s7, 204467
                  sub          t2, s8, s4
                  addi         a5, t2, -1251
                  add          a5, s8, t3
                  addi         t5, s2, 1274
                  addi         a5, s8, 1605
                  sub          s4, s8, s2 #end riscv_int_numeric_corner_stream_4
                  auipc        s7, 782124
                  srli         t5, t5, 3
                  slt          s10, t5, s6
                  and          s10, s6, t3
                  sltu         ra, zero, a0
                  sra          s2, s3, a2
                  sra          a7, sp, a3
                  sltiu        s0, s9, 1383
                  nop
                  xor          a7, t3, s11
                  sll          s6, a3, s1
                  auipc        ra, 977937
                  andi         t2, t2, -1887
                  xori         tp, sp, 47
                  andi         a6, s2, -376
                  sub          t2, s4, t4
                  srli         s3, a2, 9
                  xori         ra, t5, 1718
                  ori          s3, t2, -1542
                  add          a6, a0, s5
                  slti         ra, ra, -1486
                  or           a5, a7, s2
                  lui          a6, 35857
                  and          gp, t6, t4
                  srl          s10, s2, a3
                  srli         a2, t3, 31
                  lui          ra, 1007849
                  xor          s0, t5, s3
                  srli         t1, a1, 11
                  ori          a2, t2, -582
                  lui          s8, 449417
                  sltiu        s4, a7, 1568
                  sub          s6, s7, s1
                  xor          a0, t4, a5
                  srl          a2, a7, s2
                  or           t3, ra, t3
                  and          t2, t0, a2
                  sltu         t4, s8, s10
                  ori          s1, s11, -1137
                  sub          a1, s3, sp
                  slt          ra, gp, t5
                  xor          a4, sp, s2
                  srai         a1, a4, 20
                  sll          s1, a4, s4
                  sra          ra, s8, ra
                  srai         s0, a7, 23
                  lui          s3, 864370
                  addi         s10, s8, -1915
                  srai         ra, t2, 4
                  add          s5, t4, sp
                  sltiu        s2, t2, -1770
                  add          gp, s11, a5
                  add          a5, a0, t1
                  lui          t3, 657684
                  sltu         s5, s3, a3
                  slti         s9, t0, -639
                  srai         a1, s1, 0
                  srl          a7, s11, tp
                  slt          a5, a4, t0
                  xori         a2, a4, 1572
                  srli         s0, s5, 10
                  sub          s4, t3, zero
                  lui          t3, 870375
                  srli         t6, s3, 30
                  lui          a4, 674901
                  sll          s5, tp, a3
                  andi         gp, a3, 1909
                  and          s4, a5, s0
                  sra          s7, tp, a0
                  or           s5, t2, s1
                  slt          s1, s3, s8
                  srli         t6, s4, 26
                  add          zero, t1, a5
                  srli         s0, s10, 2
                  auipc        s5, 571346
                  srli         gp, s5, 16
                  srl          s9, s9, gp
                  and          a2, t1, a7
                  andi         s2, t3, -584
                  xor          s9, a0, a5
                  add          a7, t2, s10
                  or           a5, a1, gp
                  slti         s4, s2, 784
                  lui          a7, 150362
                  slli         s3, ra, 0
                  sltu         s9, s6, a0
                  sub          a0, a3, t0
                  xor          zero, s2, sp
                  or           s0, s7, sp
                  xori         s2, zero, -247
                  srli         s11, a3, 7
                  xori         s3, a4, 1882
                  sltu         a6, s3, s4
                  and          tp, tp, ra
                  srli         t2, a4, 27
                  auipc        t2, 189973
                  and          s2, t1, ra
                  sub          tp, a1, s2
                  srli         s8, s9, 14
                  srai         t2, a5, 22
                  slli         ra, s0, 13
                  slli         tp, a3, 12
                  and          s7, s1, s4
                  add          a4, s7, gp
                  nop
                  nop
                  slt          s4, s2, s10
                  slli         t6, a5, 22
                  ori          s4, s8, 1685
                  sll          a7, s1, s3
                  srl          t1, a0, a1
                  xori         s1, t0, 252
                  slt          t5, sp, ra
                  nop
                  sub          s7, tp, a1
                  slli         s10, s3, 16
                  srai         s10, t2, 16
                  sltiu        a1, a6, 1433
                  xor          s7, a2, a4
                  slt          s2, t3, s0
                  add          a0, s4, ra
                  sub          a1, tp, a0
                  and          s7, s11, a7
                  or           s4, s10, t1
                  xori         a2, s6, -287
                  xor          s10, s10, a2
                  xori         s2, t2, 132
                  auipc        s8, 397063
                  and          t5, s2, t0
                  srai         s2, t1, 20
                  addi         s2, t2, 940
                  sll          s1, t3, ra
                  lui          a0, 311713
                  nop
                  sra          s8, a4, a0
                  sra          a7, a0, a2
                  ori          t5, gp, 110
                  ori          s11, gp, -1623
                  addi         gp, s11, 1611
                  xor          s6, t3, s6
                  sltu         t6, s10, s8
                  add          t3, a0, s7
                  sll          ra, s6, t4
                  xor          s11, s2, s4
                  add          t3, t0, a4
                  sltu         s3, a2, t5
                  srli         s8, s0, 31
                  sltiu        t4, a1, -1131
                  srai         t6, s2, 27
                  sra          s2, sp, t6
                  xor          s9, s1, tp
                  slt          t6, a1, t4
                  or           s0, s3, tp
                  sra          t5, s3, s1
                  sra          t6, a2, a1
                  nop
                  srai         a5, t5, 24
                  srli         s3, t4, 30
                  nop
                  xor          t3, s2, a7
                  srli         tp, t5, 9
                  srai         t5, a0, 20
                  andi         s9, s7, -436
                  sltiu        a2, s6, -690
                  lui          a4, 539010
                  slt          s4, tp, a4
                  xori         s10, t5, -625
                  and          t5, zero, a0
                  sub          a2, tp, s10
                  or           ra, zero, a7
                  slt          a1, t6, a2
                  nop
                  add          t5, a3, s9
                  xori         s10, t4, -741
                  sub          s11, gp, a1
                  slt          t2, a6, a2
                  srai         t1, s7, 30
                  add          s10, s4, zero
                  nop
                  xori         zero, s5, -1415
                  slli         s8, a0, 20
                  andi         tp, gp, 1513
                  andi         t3, s8, -1193
                  xor          a0, s2, s11
                  and          s10, s1, s4
                  xori         a1, s6, -1715
                  srai         a7, s3, 0
                  sll          tp, sp, s9
                  slli         t2, s7, 29
                  srl          t1, a4, s1
                  slli         a6, s9, 19
                  sub          ra, t2, t3
                  nop
                  slti         s4, s9, -1788
                  and          tp, a2, a5
                  sll          a0, s8, s6
                  slti         s11, a6, 529
                  and          s3, t0, t4
                  sltu         a4, t1, t6
                  xor          s6, t0, s0
                  slli         s3, a6, 18
                  or           s3, t6, s10
                  sltiu        t2, t5, -583
                  and          s4, t5, t3
                  srai         t4, s5, 11
                  addi         s4, sp, 756
                  sra          s6, a2, a5
                  sltu         s1, s7, a2
                  srli         t2, s3, 14
                  nop
                  srli         s5, s3, 27
                  sltu         t2, s2, t4
                  nop
                  auipc        s10, 56777
                  nop
                  slt          s4, zero, s7
                  srli         a6, a4, 22
                  and          a0, a1, s8
                  slt          tp, s7, gp
                  nop
                  srai         a6, s5, 13
                  or           s9, gp, s3
                  add          s7, t1, a4
                  and          t5, s6, s1
                  srli         s3, a5, 14
                  addi         s3, s0, -672
                  xori         s5, gp, -705
                  sra          a6, t5, a0
                  add          a5, s3, s1
                  sra          tp, s0, a5
                  srli         a4, s6, 13
                  sub          t6, a6, s7
                  addi         a7, t2, -1202
                  lui          s7, 36071
                  xor          a6, s9, zero
                  auipc        s7, 571820
                  xori         s8, ra, 957
                  and          a7, a5, s2
                  sltiu        s1, a2, -1541
                  sltu         s2, tp, tp
                  srl          ra, s2, a4
                  sra          s6, a4, s11
                  sub          a5, s7, gp
                  sltu         t3, t2, s9
                  xori         ra, s1, -240
                  srl          a2, a0, a5
                  slti         s4, t5, 1542
                  and          a6, s11, s9
                  lui          s8, 462163
                  xori         a7, t0, -1837
                  or           tp, s6, a0
                  sll          a4, s9, s6
                  slti         s2, s5, 1788
                  andi         t3, ra, -1900
                  slli         ra, a3, 30
                  slli         s7, tp, 20
                  lui          zero, 557863
                  ori          a0, a0, -1819
                  nop
                  sltu         s2, t1, s8
                  add          t2, s4, s11
                  addi         a2, t4, 1465
                  addi         s6, a5, 929
                  srai         s1, t5, 11
                  addi         a5, a7, -1805
                  srl          tp, s7, a0
                  ori          t4, s10, 506
                  srli         s5, s10, 16
                  sltiu        t5, s9, 875
                  addi         s5, t3, 1852
                  auipc        t6, 269720
                  add          a5, s9, zero
                  addi         s8, tp, 1834
                  sltiu        a1, t5, 223
                  srli         gp, s3, 9
                  ori          t1, sp, -2045
                  add          t3, a7, t3
                  add          a7, ra, s11
                  xori         s0, s5, -1767
                  addi         t5, s7, -972
                  auipc        t4, 990331
                  srli         t2, t3, 7
                  andi         a2, s2, -1155
                  sltu         t4, a1, a7
                  addi         s0, a0, 886
                  add          t6, t1, t3
                  srli         gp, s6, 5
                  sll          s8, t0, gp
                  sltiu        gp, s6, -109
                  xor          t4, s7, s4
                  slli         t6, t3, 18
                  slti         a7, t2, 551
                  add          s6, t2, a1
                  srl          a2, t1, t4
                  sltiu        a2, s1, 1994
                  srai         s2, s11, 29
                  and          a2, t4, gp
                  sll          a2, gp, a7
                  xor          s7, s8, a2
                  slt          s8, ra, t1
                  sra          a1, sp, sp
                  ori          s2, s5, -979
                  xor          a6, t3, tp
                  srl          s3, a7, zero
                  andi         a1, s5, 1265
                  sltiu        ra, a4, 1227
                  lui          a6, 596652
                  nop
                  slti         s11, a7, 1169
                  lui          zero, 867021
                  srai         a4, t5, 6
                  xori         a1, a4, -63
                  srl          ra, s2, s3
                  slti         t2, t4, -963
                  addi         a7, s4, 886
                  xor          s4, t2, s9
                  sll          s0, a2, s10
                  addi         zero, s3, 897
                  or           tp, s0, sp
                  xor          zero, a7, a7
                  lui          a6, 293622
                  xori         s6, s0, -669
                  addi         s1, zero, -417
                  slti         s4, s5, 1089
                  srli         a1, s10, 22
                  sra          t4, t2, a2
                  sll          s3, gp, a6
                  sltu         s4, s1, s4
                  lui          a2, 179696
                  add          t3, t1, s8
                  and          t6, s1, a2
                  sll          s0, tp, a5
                  or           s1, t3, s11
                  addi         s6, t1, -1139
                  sltu         a1, a7, ra
                  srl          a6, t4, tp
                  sub          s0, s9, zero
                  lui          s0, 452280
                  nop
                  srai         a5, s8, 14
                  sra          a4, s1, sp
                  lui          s8, 388728
                  addi         a7, s10, -1646
                  slt          t6, s2, s0
                  add          s2, t5, zero
                  or           a0, s2, s3
                  sra          t4, a3, t2
                  or           t3, t3, t6
                  xori         s4, t4, -852
                  slt          s7, gp, zero
                  sub          s6, a5, s6
                  slti         ra, a3, 1951
                  xori         s3, gp, 907
                  xor          t3, s7, ra
                  slti         s4, ra, 1661
                  xori         a5, s9, -1659
                  and          s0, s7, t6
                  srai         s11, s6, 5
                  ori          a5, t0, -691
                  addi         a6, a4, -1161
                  sll          t4, s10, t0
                  ori          zero, a4, 1069
                  lui          a5, 776515
                  andi         s9, s6, 1399
                  sra          s2, zero, gp
                  slli         s2, a1, 30
                  srli         s3, tp, 17
                  sub          t2, ra, s7
                  sra          t1, s0, t2
                  srli         a4, s1, 7
                  and          a5, t3, s5
                  ori          a1, s1, 1162
                  auipc        tp, 98909
                  srai         s4, s8, 29
                  addi         gp, a2, 1771
                  sub          t3, a5, s5
                  nop
                  sub          tp, s5, a0
                  ori          s8, s6, -1471
                  sltu         s11, s8, zero
                  xor          t1, s10, s2
                  xori         a7, sp, -319
                  nop
                  sll          a6, t5, s5
                  xori         a5, t6, -1993
                  andi         a0, s10, -1140
                  srli         s4, s0, 26
                  add          a7, tp, a1
                  srai         s3, t6, 4
                  sub          t3, sp, t0
                  ori          s10, s8, -826
                  xori         gp, a7, 1426
                  and          s3, t4, s6
                  andi         t1, t5, 511
                  ori          a7, sp, -402
                  srli         s3, a6, 17
                  auipc        s6, 620722
                  or           s0, s5, a6
                  srli         s5, s7, 9
                  slti         s4, t4, -1691
                  slt          t1, t3, zero
                  srai         s6, a4, 30
                  sltiu        zero, t5, 1922
                  auipc        s6, 561188
                  slli         gp, a4, 8
                  xori         a1, a2, -506
                  auipc        a6, 292949
                  or           s5, t2, t0
                  slli         t6, t2, 3
                  srl          t4, t3, t4
                  sra          s6, s5, t3
                  sra          t1, s3, a0
                  xori         s2, t2, 105
                  add          t1, s0, a5
                  nop
                  or           s5, a4, t6
                  andi         t3, t0, 1204
                  sub          s5, s10, s11
                  xori         a7, a6, -477
                  srli         s9, ra, 10
                  slt          s3, t1, s10
                  sra          s3, ra, s3
                  sltu         s6, ra, zero
                  or           a0, s5, sp
                  srli         s5, t3, 3
                  sra          t4, s7, a7
                  auipc        a2, 154492
                  nop
                  and          a6, zero, a6
                  or           ra, a4, t0
                  xor          s10, s8, t4
                  auipc        s7, 910986
                  addi         s9, a3, 1521
                  slti         s8, a4, -1980
                  sll          gp, s8, t2
                  slti         s7, a4, 533
                  sra          s0, a3, a3
                  or           s0, a7, a6
                  srai         gp, t5, 2
                  or           s4, a3, a7
                  xor          s1, s3, s8
                  and          s8, a1, s6
                  sltu         a1, a6, sp
                  slli         s4, a4, 31
                  xor          t5, s6, ra
                  xor          tp, t1, tp
                  lui          t4, 392614
                  sub          a0, s4, s2
                  slli         s8, a4, 8
                  ori          a1, ra, 1380
                  andi         s10, a1, 1468
                  or           s3, s2, zero
                  slti         t5, s6, -1712
                  srai         a1, a1, 10
                  and          zero, ra, t0
                  add          a2, s1, t3
                  srai         s11, s10, 9
                  xor          s1, t4, a5
                  lui          s10, 888756
                  andi         s0, a4, 1295
                  xor          s6, t4, a2
                  slti         s7, a3, -1488
                  sltu         a5, a7, s6
                  sll          s1, a7, s5
                  slt          tp, t0, sp
                  sltu         s11, sp, zero
                  lui          s0, 552096
                  sll          s4, a5, zero
                  add          gp, tp, a4
                  sra          t4, t6, s3
                  auipc        s1, 872993
                  xori         a6, a7, 237
                  auipc        t6, 974164
                  srai         a1, s9, 5
                  lui          s7, 841517
                  slti         s2, t4, 1676
                  auipc        s1, 1024889
                  srai         s9, s4, 9
                  addi         a2, a3, 1194
                  ori          s4, a1, 813
                  sll          a5, gp, t6
                  sltu         a0, a5, s0
                  slli         a5, t3, 23
                  slli         s8, s2, 4
                  add          a0, s10, t0
                  nop
                  sll          t6, t4, s6
                  slli         s4, s8, 24
                  nop
                  srli         a1, s9, 0
                  sll          t2, s3, s10
                  sll          s1, t4, t2
                  sll          s7, t1, tp
                  srli         s7, a4, 18
                  sra          s0, ra, t4
                  auipc        s3, 760726
                  slli         a2, a0, 23
                  sub          t6, a0, a4
                  sltiu        a7, s11, 34
                  slli         a5, a7, 28
                  sra          a7, s2, t6
                  sra          a0, s8, ra
                  sub          a0, s3, a5
                  add          s10, a7, a6
                  ori          s2, s4, 479
                  xor          s9, s1, zero
                  add          zero, zero, t1
                  sub          a1, s3, s4
                  srli         a2, t2, 10
                  xori         s10, t0, -545
                  srli         a2, gp, 30
                  lui          s5, 547417
                  sll          s2, a1, a5
                  addi         a4, a4, 961
                  sll          s7, s3, s1
                  ori          s7, a2, -1694
                  slti         s3, a7, 2033
                  sub          t2, sp, t3
                  srli         s0, s8, 26
                  sltiu        gp, s3, -1823
                  sltiu        t3, t4, 1707
                  srl          s3, a6, zero
                  sll          s1, zero, s1
                  ori          s2, s10, 621
                  ori          t4, t5, -1481
                  xor          t1, s0, s8
                  add          s10, t2, a5
                  sub          a4, zero, t3
                  or           t5, s9, a7
                  slli         t5, s9, 6
                  auipc        s2, 588872
                  sub          t5, tp, a2
                  sra          a2, a3, s6
                  xor          s0, s7, s3
                  andi         a4, a4, -316
                  sra          t2, s1, s4
                  slti         a6, tp, -883
                  slli         s5, s7, 19
                  and          t5, t4, t5
                  slti         s11, zero, 3
                  srai         zero, t1, 25
                  srli         a7, s2, 16
                  xori         s10, s11, 1001
                  slli         a7, s0, 29
                  slli         zero, s3, 11
                  andi         s5, t3, -1369
                  lui          a0, 200147
                  sra          ra, t0, a7
                  sll          s3, a1, a1
                  srl          s1, sp, s10
                  and          s7, sp, t0
                  sra          s4, s7, s0
                  andi         tp, s1, -16
                  slt          s8, t5, zero
                  sltiu        s8, a6, 555
                  slt          s4, t1, t5
                  slti         s1, sp, -1174
                  nop
                  srli         a4, t3, 26
                  andi         a5, s10, 1149
                  auipc        t4, 1026563
                  sub          t4, t1, t0
                  xor          a7, s2, t4
                  slti         s6, a1, 1687
                  slli         s0, t5, 21
                  add          s8, s4, s11
                  srai         zero, s10, 21
                  srli         tp, s3, 29
                  add          gp, tp, s5
                  lui          a5, 896933
                  sltu         s3, t3, a7
                  andi         a1, a7, 67
                  ori          t1, s11, 1933
                  xori         a2, s5, -966
                  slt          a1, t3, t5
                  slti         a4, t6, -1689
                  xori         a1, a2, -900
                  lui          tp, 173354
                  slli         a6, s5, 31
                  sra          s0, t2, s0
                  slli         a1, ra, 14
                  sltiu        s11, sp, -258
                  xor          s5, tp, tp
                  or           a5, s1, a3
                  xor          gp, a7, a6
                  xor          s4, s0, t5
                  srli         s2, tp, 14
                  srli         s7, a0, 7
                  srli         t3, t0, 21
                  sltiu        t2, s3, 527
                  auipc        a0, 11273
                  ori          a4, s8, -1053
                  lui          t2, 596686
                  ori          s7, sp, -1822
                  sltiu        s2, s11, 833
                  auipc        s4, 71219
                  add          t4, s8, sp
                  xori         a0, s7, -398
                  slt          s11, zero, a1
                  add          s10, t6, t0
                  addi         s9, t5, 1476
                  slt          t4, a2, s7
                  sub          a5, a1, a1
                  add          t3, a3, t0
                  addi         a1, t4, -653
                  or           s10, t3, t2
                  srai         s6, a7, 0
                  and          t5, ra, a4
                  xor          a1, t4, tp
                  andi         s10, a3, 241
                  lui          a0, 791135
                  sltiu        t3, s1, -1299
                  sll          t4, t1, s4
                  nop
                  sub          s10, s2, ra
                  addi         a2, t4, 2021
                  nop
                  andi         s0, s2, 1558
                  andi         s1, s0, 1468
                  lui          t4, 275677
                  and          t2, a4, t0
                  slti         t2, t5, -2038
                  xori         s8, a6, 124
                  xor          s2, s9, sp
                  sltiu        s0, a4, 940
                  andi         s8, t5, 26
                  slt          s7, gp, a0
                  slli         s3, s4, 24
                  srl          s11, t4, t0
                  sltiu        t2, s11, -246
                  xor          t3, s6, gp
                  sltiu        ra, s7, 947
                  andi         t2, a2, -209
                  or           s1, s6, t0
                  sltu         t6, s9, s2
                  lui          tp, 736257
                  sra          a2, tp, sp
                  nop
                  sltu         a6, a5, s5
                  sra          t1, s3, s2
                  lui          s5, 346605
                  sltu         a1, t6, zero
                  xori         t2, s9, -1824
                  slli         gp, s6, 1
                  slli         t2, a6, 25
                  andi         tp, sp, 1933
                  sll          t1, a1, a0
                  sra          t2, s1, s7
                  srai         gp, t0, 10
                  nop
                  addi         t1, a1, -314
                  sltiu        s9, t3, 712
                  or           t3, zero, s11
                  ori          a2, s10, -408
                  srai         zero, s0, 25
                  and          s11, t4, a1
                  sll          a4, s10, a2
                  sub          s6, a2, a1
                  or           s5, s8, a7
                  sub          t2, ra, t1
                  srl          s4, s11, s0
                  srli         t6, s1, 17
                  or           s5, zero, ra
                  auipc        t3, 244948
                  sra          a7, a3, s0
                  auipc        s9, 236805
                  sub          s3, s7, zero
                  srl          a0, a6, a5
                  srai         s3, s4, 0
                  or           a6, s5, t4
                  slti         t6, a3, -778
                  srai         s8, a7, 29
                  srli         s2, s0, 27
                  slt          t6, t3, s0
                  slli         a4, a0, 17
                  ori          t4, s9, 877
                  slt          a4, t6, t0
                  sll          a6, s8, zero
                  slli         a5, sp, 23
                  srai         s9, s5, 13
                  auipc        a2, 433345
                  sub          s1, a0, ra
                  sll          zero, s4, a1
                  sub          ra, tp, a4
                  sltiu        s0, s0, 7
                  sub          a7, s10, t1
                  nop
                  sra          s5, s2, a3
                  xori         s1, t5, 1764
                  sll          t5, tp, t0
                  addi         s8, t3, 1226
                  srai         a7, t2, 15
                  and          s0, sp, tp
                  sub          s6, a7, s1
                  srl          s9, t4, a0
                  srl          s10, a7, s3
                  sra          zero, s1, tp
                  sll          t3, s8, s5
                  and          s1, zero, s2
                  sub          a4, t0, s9
                  sub          s2, a3, tp
                  srai         gp, s5, 4
                  add          t6, s4, s4
                  slli         s2, s9, 6
                  auipc        a7, 390909
                  andi         tp, sp, 95
                  sub          t2, t6, s1
                  auipc        t5, 457232
                  srli         gp, s8, 22
                  sltiu        s0, s5, 1612
                  xori         gp, a5, -930
                  or           t6, a2, s7
                  srl          s0, t5, s8
                  slti         a6, a4, 377
                  srai         s2, s1, 9
                  slt          a2, a1, s4
                  or           t4, a1, s3
                  sltiu        s1, a2, 1836
                  sltu         t1, s5, a4
                  xori         s2, s10, -1327
                  sltu         s5, s8, zero
                  sub          a7, s8, t1
                  ori          t4, sp, 2039
                  sra          a6, zero, t1
                  sltiu        s7, t0, 1494
                  ori          t6, s0, -73
                  and          s4, a1, s11
                  xori         ra, s8, 760
                  add          a2, ra, s2
                  and          t5, t1, s0
                  and          a6, sp, s8
                  xori         s5, sp, -1283
                  xori         gp, zero, 1670
                  slt          gp, a1, t1
                  addi         t2, t4, -1481
                  srai         gp, a0, 10
                  and          s0, s3, s8
                  srli         a5, a6, 27
                  sra          s8, a2, t2
                  xori         a4, s4, -239
                  sltu         s0, t3, t5
                  srl          a1, zero, sp
                  sltiu        s8, a2, 736
                  sll          t4, gp, a0
                  nop
                  slt          t5, t3, s2
                  sub          a5, s3, a7
                  slli         s5, s0, 24
                  ori          t6, s11, -1437
                  sll          gp, t0, t5
                  lui          t3, 396640
                  ori          s11, gp, -1477
                  slli         s8, s5, 26
                  slt          s9, t4, s1
                  sltiu        t4, s5, 1025
                  ori          a2, a7, -1644
                  slt          t3, zero, tp
                  sltu         t2, s7, a3
                  slli         t6, s1, 4
                  slt          s9, t4, a6
                  sra          a7, s10, a4
                  or           s0, ra, s10
                  srl          s1, s11, t3
                  slli         s0, s0, 0
                  slti         zero, s2, -319
                  srli         s1, t1, 28
                  ori          s10, zero, 1854
                  xor          zero, a4, t2
                  and          a5, ra, t4
                  andi         s1, t4, -75
                  auipc        s8, 292706
                  sll          a2, t5, a4
                  nop
                  addi         s2, s7, -1292
                  auipc        s1, 718554
                  auipc        ra, 382202
                  nop
                  sltiu        s6, t0, 356
                  srai         s4, s6, 31
                  srai         a7, t0, 16
                  srli         s1, s8, 28
                  slli         s10, s3, 22
                  srl          s1, tp, s7
                  sltu         a5, a7, t6
                  auipc        a6, 633203
                  sub          a0, s2, t1
                  lui          t4, 877859
                  or           s10, t3, t0
                  srl          gp, a0, tp
                  srai         s3, t6, 16
                  ori          t5, s4, 1755
                  slt          tp, a2, s10
                  sra          tp, t0, s2
                  xori         a4, s1, -1506
                  nop
                  auipc        a5, 582990
                  add          zero, a7, s8
                  sltu         s10, s2, zero
                  xori         s6, s1, -1717
                  sltu         a5, t5, s9
                  nop
                  sra          a4, t2, s10
                  addi         s4, s4, 489
                  addi         t4, s4, -1173
                  auipc        t1, 633742
                  sltu         s3, t2, a3
                  slt          s11, s11, sp
                  slt          a4, s10, a3
                  lui          t1, 922060
                  sll          t3, s8, t3
                  ori          s0, s2, -154
                  sltiu        t1, t2, -600
                  auipc        s1, 809169
                  nop
                  sra          tp, s8, s10
                  slt          gp, a2, gp
                  nop
                  slli         tp, s10, 29
                  sltu         zero, t2, t4
                  srl          s1, zero, t3
                  and          tp, zero, t2
                  sltu         s7, s3, s0
                  slt          s2, t0, s4
                  andi         a1, t6, -789
                  or           a0, s6, t5
                  sltiu        a6, s11, 1561
                  andi         s1, t1, -916
                  ori          a4, tp, 1388
                  xori         a1, zero, -1672
                  sub          s7, a7, a2
                  slli         s7, s9, 28
                  nop
                  sltiu        a7, zero, 615
                  xori         s0, a2, -236
                  srli         s9, s4, 18
                  sll          a2, ra, a2
                  ori          t4, t0, 1441
                  addi         ra, a6, 1418
                  slli         t3, t0, 1
                  lui          gp, 245539
                  nop
                  sll          s11, s0, a1
                  addi         s3, s3, 643
                  srli         a1, t2, 22
                  slt          a0, tp, s8
                  srai         s2, t1, 22
                  sll          t4, a6, t1
                  slli         s6, s11, 17
                  andi         s9, s9, 1668
                  addi         a7, a1, 1778
                  srai         s4, t1, 11
                  andi         a2, a2, -1402
                  srli         ra, t3, 9
                  auipc        a2, 794982
                  auipc        s2, 642914
                  ori          a6, a0, -1808
                  sltu         t3, s11, s3
                  addi         a2, tp, 81
                  and          tp, a6, a7
                  and          s4, s0, zero
                  add          t1, s4, t4
                  or           a5, s7, a2
                  srli         s2, zero, 16
                  sltu         s7, a6, a4
                  xori         s4, t3, -1886
                  sltu         a6, a0, s1
                  sll          t1, s10, s0
                  sll          s8, ra, s9
                  srli         gp, s8, 5
                  auipc        s6, 496513
                  or           a4, a6, t5
                  srai         t6, gp, 11
                  and          a6, sp, t1
                  xori         t5, s4, 373
                  srai         s3, t2, 29
                  auipc        t3, 710823
                  xori         ra, s6, 140
                  sll          a6, s0, t1
                  add          t3, a5, a2
                  srl          s0, s10, t1
                  auipc        s4, 1030183
                  xor          a0, t6, t5
                  xori         s8, t4, 409
                  srai         s2, s7, 30
                  sltiu        t5, s7, 907
                  sub          s1, s2, s6
                  srl          a6, sp, s2
                  ori          a7, s1, 138
                  xor          s3, t6, tp
                  sub          s9, s7, a6
                  and          s6, s3, a6
                  sltiu        s0, s10, -1437
                  or           a4, ra, s5
                  nop
                  xor          s2, a5, t3
                  or           tp, ra, s8
                  srli         s7, t2, 23
                  srli         s1, a3, 24
                  sra          s8, s4, t6
                  and          t3, zero, t5
                  sll          a1, s6, a6
                  slli         s10, a1, 21
                  or           s11, s4, t6
                  slli         s3, a3, 24
                  slti         s5, s7, 1434
                  sub          t1, t3, a7
                  sra          zero, t2, s2
                  auipc        t5, 931964
                  or           t5, t6, a4
                  and          t4, t4, s7
                  sra          s6, a1, s5
                  and          s8, ra, s5
                  srai         s6, a3, 23
                  andi         a1, a5, -1578
                  nop
                  xor          ra, a7, a2
                  and          t5, s6, t4
                  auipc        s2, 420206
                  slt          s0, s6, s1
                  slli         s8, s7, 26
                  ori          a4, t5, -785
                  srli         tp, sp, 22
                  and          s3, sp, t1
                  nop
                  sltiu        s1, a1, 352
                  srl          s1, s5, s1
                  srai         s4, t5, 21
                  sltu         gp, gp, a6
                  sra          ra, t4, s5
                  slti         zero, t0, 1447
                  sltiu        s4, s10, 14
                  auipc        t1, 50537
                  and          s3, t6, gp
                  ori          a6, sp, -65
                  or           s0, a6, s7
                  sll          s8, s11, a4
                  sll          ra, a1, s9
                  and          t4, a1, a5
                  slli         a6, a2, 15
                  srai         a4, s5, 3
                  slt          ra, s4, a5
                  auipc        t2, 444927
                  auipc        a1, 995314
                  sltiu        s10, gp, 1377
                  sub          s11, sp, t0
                  xor          ra, t5, ra
                  slt          s0, s4, s8
                  slt          a1, t5, s7
                  ori          s11, s11, -1242
                  or           s7, s8, a6
                  or           s3, s11, t3
                  srl          s0, gp, a2
                  and          s2, sp, s1
                  slli         t1, t6, 13
                  sltu         s9, s11, a1
                  slli         gp, s10, 29
                  srli         t2, a0, 6
                  srl          gp, s0, s6
                  add          gp, a5, s0
                  addi         a7, t6, -1863
                  sll          t6, a1, s5
                  sltiu        tp, s5, -158
                  xor          a4, s5, a3
                  sltiu        s3, a5, 157
                  andi         t4, s10, -914
                  ori          a1, a7, 1560
                  srai         s0, a6, 23
                  ori          a7, s0, 881
                  xor          t2, t5, t0
                  lui          a7, 44356
                  add          a0, s1, t4
                  andi         s5, t0, 294
                  sll          s0, t6, s11
                  sll          s8, s10, s8
                  lui          a4, 567482
                  sltu         a4, s2, t0
                  sub          s4, t3, a0
                  srai         gp, a7, 5
                  andi         s8, s1, 834
                  ori          gp, s9, 1696
                  sltu         s4, a1, s3
                  auipc        t5, 38689
                  slt          s11, t3, s0
                  ori          t6, a4, -1730
                  sra          a2, s4, s3
                  or           t4, s1, s2
                  or           s3, s8, s11
                  xor          gp, s0, a7
                  auipc        ra, 444287
                  auipc        s1, 342711
                  sltiu        s8, tp, 219
                  srai         a6, s4, 5
                  sll          t3, a4, t4
                  sra          zero, a4, s0
                  lui          s10, 337258
                  srli         t3, a4, 13
                  and          gp, s11, gp
                  or           t3, s6, s11
                  xor          t1, t4, a5
                  slli         a6, t4, 24
                  sub          s7, sp, t3
                  or           s6, sp, gp
                  andi         tp, t5, -1099
                  sll          s3, a6, tp
                  srli         a7, a1, 23
                  lui          s2, 88188
                  srl          s4, s9, a3
                  and          s0, s11, zero
                  slli         a7, s4, 27
                  or           gp, zero, t5
                  slti         ra, s11, 134
                  ori          t2, t1, 1576
                  nop
                  slti         t2, s4, 669
                  andi         t6, s11, -1086
                  addi         s5, t2, -1732
                  sub          s9, a2, s1
                  slli         s2, t5, 29
                  sub          s2, s3, s0
                  srli         s2, ra, 28
                  srai         a1, t6, 4
                  srl          tp, s1, s7
                  sltiu        s8, t3, 1026
                  srai         tp, s4, 12
                  sra          a6, s0, tp
                  add          tp, s3, s9
                  or           s10, s11, t3
                  xori         zero, a1, 1147
                  srai         a6, a0, 22
                  and          t3, gp, tp
                  sub          t6, a6, s3
                  slli         t4, a2, 27
                  sltu         s4, s11, s4
                  and          t6, t6, sp
                  nop
                  sltiu        t2, s2, -365
                  sll          s2, a3, t1
                  and          s5, s7, a7
                  srai         a2, t5, 23
                  srai         a1, a3, 24
                  sub          t2, s0, sp
                  nop
                  lui          t4, 827219
                  xor          gp, t1, s3
                  slli         s5, t2, 21
                  slti         a1, s0, -1831
                  andi         s2, a6, 1104
                  lui          tp, 528893
                  xor          ra, a1, a3
                  lui          s4, 449245
                  and          s9, a0, t0
                  auipc        t2, 33178
                  sltiu        s9, s5, -1840
                  add          a4, s5, s1
                  lui          s11, 198875
                  slti         s9, s10, 410
                  nop
                  slli         s5, t1, 20
                  add          tp, gp, a6
                  slt          t3, t4, s10
                  or           ra, a5, t1
                  auipc        a0, 174650
                  addi         t5, zero, -824
                  slt          s0, a3, s6
                  srai         s1, a2, 15
                  slli         s3, t4, 28
                  sltiu        a7, t1, 1666
                  nop
                  slli         ra, s5, 0
                  sra          s9, s7, t5
                  xori         s2, s5, -620
                  lui          s4, 506526
                  sll          s0, s2, s11
                  sll          s11, s9, tp
                  or           s6, ra, a7
                  lui          a6, 857571
                  sltiu        s8, s6, -163
                  xor          s5, a5, t5
                  sll          s0, s11, t2
                  sra          s7, s7, gp
                  or           s11, gp, sp
                  slt          s7, gp, s11
                  slli         s7, a0, 31
                  srl          s1, t6, a7
                  srai         s7, t3, 27
                  sub          zero, sp, t5
                  xor          a0, s5, a7
                  lui          s0, 174407
                  xori         t6, a7, -320
                  slt          s6, t3, t0
                  srai         a7, t2, 28
                  auipc        s1, 501642
                  slt          s4, a5, tp
                  sra          s7, s7, zero
                  sltiu        t6, a2, -964
                  andi         a5, tp, -1594
                  slti         a2, a7, -661
                  andi         s8, tp, 749
                  sub          t3, t2, a7
                  xori         a7, s5, 1104
                  slti         a2, s11, -39
                  sltu         s3, t3, t1
                  sub          t3, s0, a2
                  slli         s5, a5, 26
                  ori          s6, a7, -1643
                  and          t3, s2, t1
                  xori         s11, s9, 46
                  addi         s5, t0, -1267
                  xor          a7, a4, s10
                  slli         s1, a4, 27
                  sltiu        a2, sp, 108
                  slti         a6, s5, 1127
                  sltu         a7, zero, a3
                  addi         s4, s7, 1612
                  srli         s5, t3, 29
                  sltu         s4, s9, a1
                  xori         s10, gp, -1710
                  ori          gp, t4, -1731
                  lui          a4, 28093
                  slt          s10, s7, s8
                  srl          a7, zero, gp
                  sltiu        s11, t0, -457
                  and          t3, s3, s6
                  sltu         s11, s10, s7
                  lui          t2, 598755
                  ori          s7, a1, 1366
                  nop
                  nop
                  andi         t2, t1, 1763
                  srl          t6, zero, a1
                  ori          t3, t0, 1991
                  addi         s1, s9, 1167
                  sltu         a4, a1, s4
                  srai         s9, tp, 25
                  and          t5, t1, t3
                  xor          ra, zero, a3
                  sra          s2, t0, s8
                  srli         t6, t3, 1
                  auipc        s0, 958672
                  add          s7, t6, a6
                  nop
                  srai         a1, ra, 26
                  nop
                  sltu         s11, t5, s9
                  slli         t3, tp, 15
                  sltiu        t5, s10, -156
                  sra          a5, t2, s7
                  sll          t6, a0, s2
                  slli         t5, s5, 23
                  xori         s6, a5, -147
                  lui          s6, 299199
                  add          a7, s6, a1
                  andi         s3, ra, 1854
                  slt          a7, s1, s2
                  andi         t6, a0, 271
                  lui          ra, 303736
                  slt          t6, s2, s10
                  sra          gp, t1, s9
                  srai         a1, t5, 26
                  nop
                  slli         ra, a2, 2
                  sub          a5, gp, a4
                  sra          a1, t3, t0
                  addi         a6, sp, -877
                  add          s2, s1, t3
                  nop
                  or           ra, t2, sp
                  xori         a1, t6, 898
                  srli         t1, s1, 4
                  slt          zero, a1, a7
                  sltu         t2, a0, t5
                  srl          s2, a5, s1
                  andi         t1, ra, -1788
                  nop
                  xor          a5, a4, t2
                  slti         zero, s8, -206
                  sll          s11, s7, sp
                  sll          a2, a0, tp
                  lui          zero, 576255
                  srli         a2, s2, 11
                  add          s5, s9, s1
                  slli         a4, s4, 1
                  sub          s6, t1, s9
                  sltiu        t6, a6, -571
                  slti         ra, t0, -925
                  nop
                  nop
                  addi         ra, a2, -596
                  srai         s8, s11, 11
                  xori         a4, ra, -1539
                  addi         a1, a0, 1320
                  ori          s3, s7, 5
                  slt          ra, s1, a2
                  add          t3, s3, tp
                  sltiu        zero, tp, 839
                  and          gp, a2, t2
                  xori         a0, t4, -706
                  sll          a0, a6, s4
                  srai         a4, gp, 19
                  nop
                  xor          s10, s0, s8
                  sltiu        t3, t0, -133
                  andi         s10, t3, 1391
                  xori         t1, a2, -705
                  slli         s11, t2, 27
                  addi         t6, a7, -1689
                  xor          s11, t3, gp
                  slt          a7, tp, s1
                  and          t1, s8, s1
                  sltu         s11, a3, s3
                  slli         zero, s6, 26
                  sra          s6, s5, s10
                  ori          t6, t3, 1905
                  sltiu        gp, t1, 817
                  or           t6, s8, sp
                  srli         s2, ra, 20
                  sub          t1, t3, s5
                  xori         s7, a1, 209
                  or           s11, a6, t0
                  sltiu        t4, a1, -193
                  slti         ra, s3, 927
                  sltiu        ra, a0, 728
                  slt          s1, ra, sp
                  xor          s6, tp, s2
                  xori         t3, s2, -360
                  lui          a2, 859017
                  sra          t6, t5, a2
                  or           s7, t2, s6
                  srli         t6, tp, 13
                  auipc        s8, 780146
                  or           a6, t2, t1
                  andi         a2, s10, -1920
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s2, 0x0
                  li           s8, 0x80000000
                  li           s4, 0x80000000
                  li           a5, 0x0
                  li           ra, 0x827f129c
                  li           s0, 0xea89d7a
                  li           t3, 0x7bef983
                  li           a7, 0xcddece1e
                  li           s10, 0xdefd7856
                  lui          s8, 386061
                  addi         s4, a7, -1039
                  sub          a7, s0, a4
                  nop
                  add          t3, a5, s10
                  sub          s8, a7, a7
                  addi         s0, s4, 1389
                  addi         a7, t3, 266
                  addi         a4, t3, 1170
                  nop
                  nop
                  addi         s4, a4, 923
                  auipc        ra, 891019
                  add          s0, s8, a5
                  sub          s0, s4, a7
                  add          s8, a7, s4
                  auipc        a4, 615916
                  add          s4, s4, s4 #end riscv_int_numeric_corner_stream_17
                  addi         t4, t6, 1112
                  nop
                  slti         s1, s2, 1291
                  and          s2, s10, t6
                  nop
                  sub          t1, a4, s3
                  nop
                  sub          ra, a7, s0
                  sll          a5, t6, s10
                  add          t2, a3, s5
                  auipc        t5, 302676
                  srli         s7, s6, 10
                  sll          a1, a7, t3
                  slli         zero, s1, 23
                  sub          a7, a3, t4
                  srl          a7, s10, a2
                  add          s5, a4, a7
                  nop
                  slti         t2, s4, 260
                  and          t6, t0, s8
                  or           t4, a2, a2
                  sub          s1, ra, s5
                  srl          a2, t3, a3
                  add          s5, s8, s10
                  sll          t5, s1, s3
                  srli         s11, t1, 26
                  srai         zero, t4, 5
                  sltiu        s11, a3, -95
                  srl          s3, t5, s11
                  addi         s10, s8, 310
                  srl          t1, a6, a4
                  sltiu        gp, s2, -1858
                  nop
                  addi         t2, s0, 1795
                  srl          s0, a2, a5
                  slt          s7, a6, s6
                  lui          a0, 944737
                  sll          s6, a0, t0
                  or           a6, sp, s5
                  srai         s5, t3, 16
                  and          s9, a7, a7
                  srl          s10, s11, s2
                  sra          t3, s9, s11
                  add          s2, zero, ra
                  nop
                  sra          s5, s7, a7
                  srai         t6, s3, 19
                  sra          s3, t2, a6
                  auipc        t4, 1021355
                  sra          s5, s2, s6
                  slt          a2, a7, t0
                  or           s7, t5, a4
                  and          s11, s11, tp
                  sra          gp, s2, a7
                  slli         t5, sp, 26
                  slli         a4, zero, 14
                  and          s11, ra, s1
                  ori          t4, s7, -818
                  sll          zero, a0, a1
                  nop
                  and          s0, a5, t6
                  slti         s11, s7, -2011
                  sub          a5, t5, t4
                  sub          s10, s5, s7
                  sll          a0, zero, t2
                  srai         s3, a0, 31
                  sub          s9, a5, tp
                  xor          s2, a2, s2
                  srai         a2, s5, 3
                  add          s10, s10, t6
                  andi         s2, s2, -306
                  slli         a0, s3, 26
                  ori          ra, t1, 47
                  srli         t4, s7, 19
                  nop
                  sltiu        a7, t6, 1762
                  slli         t2, a3, 2
                  addi         s8, sp, -1937
                  nop
                  lui          a4, 981359
                  srli         a6, tp, 12
                  addi         t5, t6, -1058
                  andi         s9, a6, -1054
                  and          s1, s8, sp
                  nop
                  slt          s2, t3, s9
                  auipc        a4, 801576
                  addi         zero, sp, -589
                  srli         a5, s1, 20
                  sra          a0, s1, s7
                  nop
                  sub          gp, a5, s4
                  sub          a4, a4, s4
                  sub          t2, a7, t0
                  lui          s1, 214267
                  lui          s3, 804023
                  slt          a5, a2, t5
                  srai         a5, s7, 7
                  andi         ra, a7, -738
                  sltiu        a6, sp, -28
                  nop
                  andi         s5, a4, -1579
                  slti         gp, a6, 1914
                  auipc        s2, 624051
                  sub          zero, s1, s6
                  srl          gp, a0, zero
                  sra          s0, tp, s6
                  slli         a6, a1, 22
                  sll          s6, s7, t2
                  nop
                  and          s2, s3, a5
                  slti         s11, s8, -1431
                  sll          s9, t2, s7
                  sll          t1, s2, s7
                  sll          ra, t3, t2
                  slt          a7, s8, s4
                  sra          s9, t3, s1
                  add          t6, gp, a3
                  addi         tp, a7, -102
                  or           a7, s7, s2
                  lui          s2, 134824
                  add          tp, s8, s11
                  xori         s4, s2, 40
                  srai         tp, s5, 23
                  and          t5, s10, a0
                  sra          a4, t5, a7
                  auipc        t2, 706394
                  srl          s6, s9, t2
                  andi         a6, a0, 752
                  srli         s9, tp, 3
                  nop
                  ori          s5, zero, -1363
                  andi         a0, s10, -34
                  slti         tp, a1, -1981
                  auipc        gp, 872034
                  xor          a2, a1, t1
                  lui          a5, 646899
                  slt          s8, s2, a4
                  slt          s9, a0, s1
                  slti         t4, s5, 1686
                  auipc        t6, 991008
                  andi         ra, a3, 616
                  slt          s4, a4, s2
                  srai         a7, s4, 14
                  sltu         s3, sp, s10
                  srai         t1, s11, 23
                  srl          t2, a1, t4
                  sltiu        t1, a2, -729
                  auipc        a4, 584413
                  or           a5, s7, s8
                  xori         s10, s9, 1839
                  sll          s7, sp, s11
                  slt          a0, tp, t4
                  lui          s1, 303044
                  srai         s5, t4, 27
                  srai         a0, s4, 20
                  nop
                  srai         t6, t5, 31
                  auipc        s7, 338046
                  xor          t4, t2, s10
                  lui          s6, 940353
                  ori          s0, gp, 392
                  sra          s1, tp, gp
                  nop
                  ori          a0, a6, 1359
                  sltu         s4, a7, s9
                  sub          s2, a2, s8
                  sltiu        s10, t5, -206
                  xori         t4, a5, -1365
                  xor          t2, a7, s9
                  slt          t1, t6, a1
                  slt          t2, a5, a2
                  andi         s11, t5, -2044
                  and          s10, tp, s5
                  andi         s5, t6, -234
                  slti         s3, s4, -506
                  xor          gp, s9, s9
                  addi         s0, a4, -1845
                  andi         s0, a6, 1704
                  sltu         s8, t1, s0
                  srl          t1, s2, a0
                  sub          t4, t1, t4
                  xor          t3, t4, tp
                  auipc        s11, 15104
                  ori          a7, s3, 1924
                  sra          s3, s10, s7
                  srai         s1, s8, 16
                  sll          s10, s4, s11
                  and          a1, s7, s10
                  srl          tp, t2, s9
                  sltiu        gp, a5, -749
                  addi         a0, s1, 254
                  srai         s4, gp, 22
                  nop
                  nop
                  sltiu        t6, a4, -963
                  slli         s6, s4, 12
                  xori         s7, t1, 1151
                  nop
                  sltiu        a6, a1, -810
                  srai         a6, s8, 19
                  and          tp, a2, a2
                  xor          s11, s8, s2
                  add          a5, gp, zero
                  sll          s2, t4, s10
                  ori          s5, s11, 1588
                  ori          s7, gp, -940
                  slti         s11, s1, -409
                  sll          s8, a1, s9
                  xori         s4, s10, 113
                  auipc        t5, 73685
                  lui          s1, 900235
                  slt          s7, s3, s10
                  srl          s9, t1, s7
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t5, 0xffffffff
                  li           t1, 0x127108fb
                  li           s7, 0x0
                  li           a5, 0xac8d72f3
                  li           a0, 0x80000000
                  li           s11, 0x58b5a360
                  li           t4, 0xffffffff
                  li           a6, 0x336b76db
                  li           s10, 0x0
                  addi         s7, t4, 849
                  sub          a0, t5, t5
                  auipc        a6, 507928
                  nop
                  addi         ra, ra, -1559
                  add          t4, s7, a0
                  lui          a6, 334406
                  addi         a6, a6, 1656
                  addi         ra, t1, 1102
                  sub          t4, a0, a5
                  sub          s10, a6, s11
                  nop
                  add          t5, a5, a6
                  sub          t5, s11, t5
                  addi         a5, s10, 2034
                  lui          s10, 874137
                  sub          a5, a5, ra
                  addi         s10, ra, 272
                  addi         a6, t1, -1581
                  add          a0, t1, t5
                  add          t4, s11, a0
                  add          t4, s7, a5
                  lui          t1, 996144
                  add          s7, a0, s11
                  nop #end riscv_int_numeric_corner_stream_15
                  srl          t4, a6, t3
                  and          a0, tp, a7
                  srl          s7, sp, a5
                  srai         s5, t2, 8
                  addi         t3, s10, 56
                  xori         s3, s10, 1032
                  xori         a7, s0, 606
                  sltiu        t5, ra, -825
                  xori         t4, t5, -1693
                  xori         a2, s2, -662
                  and          s4, s1, a2
                  sub          t5, t0, s8
                  or           a2, t3, s2
                  sub          s7, sp, ra
                  auipc        ra, 208885
                  sltiu        s10, s5, -429
                  nop
                  andi         a1, s5, -1159
                  or           a2, a3, s1
                  add          a4, s6, a4
                  add          t6, t2, a7
                  auipc        s1, 529969
                  sll          s9, a7, t6
                  srli         s5, a4, 15
                  slti         s6, s7, 1169
                  addi         t4, a2, 1476
                  xori         a0, a7, -105
                  sub          t2, a4, zero
                  auipc        s11, 42653
                  slti         s0, s0, -1365
                  ori          s0, t2, 1
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s9, 0x13e03f98
                  li           s5, 0x0
                  li           s2, 0x0
                  li           t2, 0x130f483
                  li           a2, 0x0
                  li           s11, 0x8d9b46bb
                  li           a4, 0x80000000
                  li           a1, 0x0
                  li           s8, 0xffffffff
                  sub          t2, a4, a2
                  auipc        a5, 18686
                  nop
                  lui          a1, 747972
                  sub          t2, a1, a1
                  add          s9, s9, t2
                  lui          s8, 106424
                  auipc        s8, 115789
                  addi         t2, s8, -951
                  auipc        a1, 772616
                  addi         a2, s11, 1662
                  lui          s11, 909109
                  nop
                  nop
                  auipc        a1, 906354
                  auipc        t2, 265558
                  lui          t2, 52975
                  sub          a1, a2, a5
                  sub          s2, a5, a5
                  auipc        a1, 499805
                  addi         s5, s5, -929
                  nop
                  auipc        s8, 681201
                  lui          a5, 355146
                  add          s11, a1, s9
                  auipc        s9, 403293 #end riscv_int_numeric_corner_stream_11
                  addi         s2, t2, 1041
                  lui          a6, 1048312
                  slli         zero, s2, 27
                  slli         s4, t2, 22
                  sltiu        t3, gp, -1594
                  andi         s0, s5, -604
                  ori          a6, s4, 284
                  slli         s4, s7, 7
                  srl          s5, s11, s7
                  andi         s6, s5, -1252
                  slt          s0, ra, t3
                  ori          s7, s5, -40
                  sltiu        a0, t4, -806
                  slt          a0, a4, s7
                  nop
                  srli         tp, t6, 3
                  slti         t3, gp, 128
                  srli         s4, s1, 25
                  andi         a7, sp, -752
                  auipc        s2, 711164
                  sll          t1, s4, s11
                  xori         a4, sp, 1921
                  nop
                  srl          a0, sp, a6
                  slt          gp, t4, t1
                  auipc        ra, 253639
                  ori          t3, t4, 43
                  slti         s11, t1, -1193
                  srai         s6, a0, 16
                  addi         s4, a1, -1015
                  lui          s4, 1039425
                  srai         s6, a0, 11
                  slt          s8, a1, s3
                  srai         s4, s11, 31
                  sll          a5, t3, zero
                  xori         a2, gp, -1274
                  xori         s4, s2, -731
                  slli         s10, t4, 16
                  sll          a2, s10, sp
                  xori         s10, sp, -1931
                  srl          s8, t1, s3
                  srl          s6, s2, s1
                  auipc        s0, 461513
                  auipc        t6, 981357
                  sltiu        ra, s2, 75
                  ori          s8, s2, 982
                  srl          tp, t3, tp
                  auipc        a0, 855285
                  or           a7, t4, a4
                  nop
                  slt          s5, s7, a7
                  auipc        ra, 102511
                  ori          s2, ra, 1822
                  lui          a6, 569699
                  slli         s6, a6, 22
                  slt          s11, a6, s6
                  auipc        s10, 227891
                  srl          s8, s3, s0
                  xori         s7, t3, -61
                  sra          s10, s3, a1
                  srli         a2, t2, 18
                  slt          s11, a1, s11
                  sll          gp, s10, a3
                  sll          a2, t1, a3
                  andi         t1, a5, 640
                  or           a6, a6, t0
                  and          s11, a1, t2
                  xori         a0, s2, 1852
                  add          a0, s8, s5
                  srli         s9, gp, 27
                  srli         s8, t3, 6
                  xori         a7, s0, -1684
                  slt          s1, s5, a7
                  slti         a7, s2, -1444
                  sltiu        s2, t0, -1917
                  sub          s9, t4, zero
                  and          s3, s10, t1
                  srai         a5, gp, 21
                  addi         s3, t6, -448
                  sub          s10, a0, t2
                  sltu         tp, s11, s1
                  addi         a5, a2, -868
                  slt          a2, a5, t5
                  or           a2, s0, s10
                  srl          s10, s4, a2
                  add          s6, a3, t5
                  addi         t6, s4, 1062
                  or           zero, t5, a0
                  andi         tp, s0, 1470
                  addi         t3, gp, -1875
                  slt          s8, a6, t1
                  sub          t5, a7, s5
                  slti         zero, s11, 1739
                  and          s3, a4, a2
                  auipc        t4, 155975
                  sub          s11, t2, a2
                  nop
                  sub          a1, s6, s4
                  xori         zero, a3, -712
                  srli         t6, a7, 10
                  sub          gp, a6, a2
                  sub          zero, s11, s8
                  add          a6, a4, t1
                  ori          t3, a4, -658
                  sltu         zero, s1, sp
                  lui          s11, 422935
                  sll          gp, zero, s4
                  srai         s5, a2, 9
                  slti         s7, gp, -1685
                  lui          zero, 824359
                  srl          s1, s2, a0
                  sub          a1, s10, s6
                  nop
                  nop
                  sll          a1, t6, s1
                  sltu         a4, tp, a5
                  srl          t4, a2, s9
                  slti         s11, s7, 288
                  lui          s10, 758123
                  slti         a6, gp, 217
                  addi         s5, s0, -1157
                  xor          s1, a3, t2
                  sub          a5, a7, a5
                  nop
                  ori          zero, a1, 1665
                  xor          s8, t5, t4
                  addi         a1, s8, 1682
                  nop
                  xor          tp, ra, t2
                  auipc        t3, 25007
                  lui          a5, 738819
                  add          t6, s1, tp
                  auipc        t3, 87008
                  srli         s0, ra, 25
                  sll          s3, sp, a6
                  sltiu        ra, s3, 131
                  sltu         s9, zero, a6
                  nop
                  andi         s10, a6, -422
                  slli         s2, s6, 12
                  sltiu        s8, t5, -1172
                  slli         ra, s2, 22
                  nop
                  lui          t1, 933286
                  slt          a1, ra, a3
                  ori          a6, a1, -1102
                  sll          a1, a3, s0
                  andi         s8, a3, 1781
                  sll          tp, t3, t3
                  srl          a6, s1, t0
                  nop
                  srai         gp, a5, 13
                  and          a5, a4, t0
                  lui          s9, 360726
                  slt          zero, a7, s7
                  srai         a4, s0, 28
                  or           s6, a3, t3
                  srl          tp, s5, t1
                  addi         a5, s1, -721
                  auipc        t3, 644798
                  sltu         zero, s11, s0
                  auipc        a2, 131710
                  sltiu        a0, s4, -378
                  srl          s8, s10, gp
                  add          a4, ra, s3
                  xori         a7, t4, -1550
                  slti         s0, s2, -1755
                  sra          ra, t3, a5
                  slti         s9, t3, 596
                  xor          s9, s4, t2
                  or           s5, s10, s3
                  xori         s5, s11, -152
                  srl          t6, s8, a0
                  sub          s9, zero, t3
                  nop
                  andi         zero, t4, -1762
                  add          t1, s0, s10
                  addi         zero, a2, 328
                  addi         a5, s3, -374
                  srli         s3, s5, 24
                  srai         zero, s0, 5
                  sra          s11, a5, zero
                  srai         a7, t5, 7
                  andi         a5, ra, -963
                  lui          s1, 613812
                  xor          s2, s8, s9
                  slli         zero, t3, 27
                  xori         t4, s5, -1427
                  slli         t3, a0, 15
                  sub          t1, a5, s0
                  slt          a2, a2, zero
                  sll          s8, tp, t2
                  addi         a6, tp, -46
                  andi         s5, zero, -322
                  add          s2, s6, a2
                  sub          s11, ra, a7
                  auipc        s0, 407670
                  sltiu        t3, s7, 1275
                  slti         t1, t0, -970
                  nop
                  add          s0, t1, a5
                  srai         a2, a7, 12
                  or           s2, s8, sp
                  srl          a6, a6, s6
                  or           a5, a0, s8
                  sll          ra, a3, s0
                  ori          s2, s2, -713
                  auipc        s1, 523298
                  lui          t6, 417954
                  slti         s8, a2, 235
                  sltiu        t5, s0, 697
                  srl          s6, s0, gp
                  or           zero, s8, t5
                  andi         a6, a4, 1914
                  sra          s1, a5, s9
                  slli         t5, s6, 16
                  ori          a1, s7, 166
                  srai         s4, sp, 22
                  sra          s3, s9, s7
                  add          gp, t1, s3
                  lui          ra, 841041
                  auipc        s4, 639302
                  add          s7, t2, s8
                  srli         s4, a6, 0
                  slli         a4, a3, 17
                  srli         t4, s0, 14
                  add          s6, t2, sp
                  srai         t2, a7, 4
                  xori         a5, s9, -1736
                  slt          s7, s7, s11
                  ori          a2, s10, 379
                  lui          a7, 680095
                  srli         a1, t3, 23
                  slt          a2, s4, s8
                  slt          t4, s8, s8
                  lui          s6, 364483
                  andi         s8, s10, -296
                  srai         a7, tp, 14
                  sltiu        ra, t6, -1113
                  lui          tp, 139016
                  srli         a6, a7, 11
                  srai         t6, sp, 14
                  andi         s3, s6, 1374
                  sll          gp, zero, s9
                  nop
                  sll          t2, s6, s7
                  xor          s5, tp, zero
                  srl          gp, s1, s9
                  auipc        s8, 1029934
                  sltiu        t6, a3, 1451
                  sra          a4, t2, t3
                  add          t4, s2, a6
                  slt          s7, t0, zero
                  sltu         t4, tp, t3
                  lui          s6, 1042791
                  xor          t2, s4, a2
                  slli         s9, sp, 25
                  sub          a4, s7, ra
                  slli         s1, a6, 22
                  or           t6, s11, s4
                  lui          s10, 341829
                  xori         a7, s10, 1703
                  add          a1, sp, s5
                  andi         a1, s7, -569
                  add          a6, t1, sp
                  xor          a2, t0, s2
                  addi         s3, sp, -89
                  addi         a6, t3, -1034
                  xor          a1, sp, s8
                  sll          s10, s0, s9
                  ori          s5, s9, 1871
                  sltiu        s6, s8, -420
                  auipc        a6, 98223
                  srai         s8, a5, 26
                  srli         a4, zero, 10
                  xor          a6, ra, t5
                  slli         a4, t3, 22
                  or           t4, t2, s10
                  andi         s8, a6, 1607
                  lui          s5, 46411
                  nop
                  or           t3, a7, s1
                  xori         ra, a3, 1271
                  addi         s11, s9, 1095
                  sltu         a0, s1, s7
                  srai         s1, zero, 6
                  auipc        s11, 153864
                  add          a2, t5, t1
                  sll          s4, s11, a7
                  lui          t2, 741746
                  slli         s11, ra, 3
                  srai         a1, a3, 2
                  slli         s1, s6, 21
                  srli         a7, s6, 26
                  sra          a2, a3, s9
                  ori          a5, zero, 178
                  addi         s3, s10, -274
                  or           s7, t5, t2
                  ori          s4, s0, -214
                  srli         a6, a5, 4
                  xori         s7, a6, -1110
                  slti         tp, a5, -1226
                  andi         s7, sp, 1726
                  or           t3, s10, t6
                  auipc        a4, 261525
                  srli         t5, s8, 28
                  slt          s4, a1, gp
                  andi         s1, a6, -1928
                  sub          a7, s0, gp
                  sll          t3, s11, t0
                  srl          s10, t5, t3
                  sll          s9, s3, a6
                  xor          a0, t4, t1
                  auipc        s10, 807382
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           a4, 0x3f606e64
                  li           t1, 0xb9c187fa
                  li           a5, 0x0
                  li           t4, 0x80000000
                  li           a0, 0x0
                  li           s4, 0xffffffff
                  li           gp, 0x80000000
                  li           s8, 0xfb8f5cff
                  li           t5, 0xffffffff
                  lui          t4, 163889
                  lui          t5, 539354
                  sub          t1, t5, t1
                  nop
                  nop
                  lui          t5, 372987
                  add          s8, t5, gp
                  auipc        t1, 1001682
                  add          a4, a5, t1
                  auipc        t4, 567965
                  addi         t1, t1, 1127
                  nop
                  nop
                  add          t4, t5, t4
                  lui          tp, 935559
                  add          t4, t1, t4
                  add          t4, t4, a5 #end riscv_int_numeric_corner_stream_16
                  add          t6, ra, t4
                  slti         a0, s11, 625
                  slli         s2, sp, 19
                  ori          s7, s7, -1555
                  sltu         a4, s4, s10
                  or           s2, a5, s8
                  or           tp, a4, s0
                  slli         t6, a1, 24
                  andi         s5, ra, 1429
                  srli         s2, t2, 23
                  sub          s6, t1, t6
                  sll          t3, s4, gp
                  addi         s8, s2, -1139
                  srl          s9, ra, s3
                  ori          s11, s1, 561
                  nop
                  sub          s4, zero, zero
                  sltiu        s5, zero, 1564
                  sltu         s4, s3, s0
                  slli         zero, a3, 26
                  srli         a5, t1, 29
                  sub          t1, a3, t6
                  xor          t4, a7, s10
                  ori          t3, t5, -493
                  srai         s8, a6, 7
                  lui          a6, 1023697
                  slt          s4, a0, a7
                  srl          a4, s10, s6
                  ori          a7, s11, 923
                  slt          t4, t2, s11
                  ori          a4, a5, 1037
                  andi         s10, t6, 1655
                  sra          a1, t3, a3
                  nop
                  slli         a4, t4, 25
                  srl          s3, s3, tp
                  slt          s1, s2, t1
                  sltu         s1, a5, ra
                  slli         s10, s11, 31
                  sra          gp, s10, s4
                  and          a0, s2, s1
                  sra          s2, t0, a2
                  srl          s10, t1, s0
                  xori         t1, s5, -499
                  sra          s1, s9, sp
                  sll          t1, a1, a3
                  srli         t4, s4, 25
                  sub          s9, t6, gp
                  slti         tp, tp, 1964
                  sub          a4, s5, t0
                  slli         t4, a7, 18
                  addi         a5, a7, 543
                  andi         a2, a6, -588
                  xor          a4, s9, s9
                  srai         s0, a0, 17
                  sll          gp, s7, t5
                  lui          s8, 348531
                  xori         s8, s5, -899
                  srai         a1, sp, 6
                  add          s3, s2, a4
                  add          t2, sp, ra
                  nop
                  srl          t5, t5, a0
                  and          a5, tp, a5
                  srli         a1, a5, 21
                  or           zero, t4, gp
                  and          a5, a2, a5
                  addi         zero, s2, -468
                  sll          s2, s5, s5
                  ori          s8, t5, 16
                  sub          a6, t6, a2
                  sub          t1, t4, a1
                  slt          s2, sp, a7
                  srli         a4, a4, 2
                  and          t5, a3, a5
                  or           t6, a1, t2
                  sll          a7, a0, s10
                  lui          s11, 738362
                  addi         s9, t0, 1430
                  auipc        a4, 3612
                  sra          tp, t4, t4
                  sltu         a0, a1, zero
                  slt          s1, t0, ra
                  auipc        t2, 79692
                  lui          t5, 465125
                  and          s3, a4, t1
                  auipc        a1, 906067
                  srl          s4, s4, s9
                  sra          gp, sp, s9
                  srli         tp, t2, 27
                  or           a7, s0, s8
                  nop
                  srl          t4, s9, s4
                  addi         s2, t4, -2036
                  slt          t6, a2, s5
                  lui          t2, 769141
                  andi         s5, sp, 206
                  slt          a1, s7, a1
                  srl          t2, s10, t5
                  add          ra, s0, a4
                  srai         t4, a7, 6
                  srli         a1, s0, 28
                  xori         s1, s4, 1667
                  sra          s8, gp, s10
                  sltu         t3, a4, a5
                  andi         t5, s6, -1699
                  or           t2, t0, s1
                  slli         s8, t5, 0
                  sltiu        t4, ra, -1605
                  xor          tp, t5, t1
                  slt          t2, t0, a5
                  nop
                  add          a2, t5, tp
                  addi         s7, s1, 612
                  addi         a4, a2, 1272
                  srl          s0, t0, a0
                  sra          gp, a3, t5
                  sltu         s7, t0, sp
                  srl          t6, s9, s7
                  auipc        s4, 299058
                  sltu         a6, a4, a1
                  nop
                  srai         a7, s7, 20
                  srl          a1, s5, t2
                  sll          s9, a4, s7
                  sll          t2, a0, s11
                  xori         t5, s1, -1340
                  sltiu        s1, a7, -1711
                  sra          s2, s9, s6
                  nop
                  srl          s3, s11, s2
                  lui          a4, 941728
                  xori         ra, a6, 174
                  sub          t3, ra, s6
                  sub          ra, s9, ra
                  add          t4, a5, s5
                  auipc        t6, 416878
                  xor          s5, s7, s11
                  nop
                  srl          s10, a2, a0
                  sub          zero, a1, s6
                  sub          s6, s0, a6
                  ori          s7, s3, -681
                  lui          a7, 115281
                  sra          t4, s6, s7
                  or           s0, s10, s6
                  or           a5, a6, tp
                  xor          t4, s2, a2
                  andi         t5, a6, -1019
                  addi         gp, tp, -1683
                  slt          zero, s3, tp
                  srl          s8, s10, zero
                  slli         t1, zero, 11
                  andi         s10, s1, 582
                  srli         s3, sp, 22
                  srli         s2, t5, 18
                  srai         t6, sp, 21
                  lui          s2, 228974
                  sltiu        gp, s1, -1001
                  slli         t3, a0, 6
                  and          a6, s4, tp
                  auipc        t5, 796994
                  andi         s3, a6, 1887
                  addi         s11, s4, 966
                  slli         a0, s4, 15
                  lui          t2, 483501
                  xori         t1, a0, -832
                  xori         gp, t0, -752
                  xor          ra, t4, zero
                  sub          t4, s11, a3
                  sll          t2, s10, t3
                  slt          s4, s2, zero
                  sltu         s1, s5, s1
                  nop
                  andi         zero, t5, -174
                  srli         a1, s3, 31
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x13, x5, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x30, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x30, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x30, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x30, x20, ecall_handler
                  li x20, 0x1
                  beq x30, x20, instr_fault_handler
                  li x20, 0x5
                  beq x30, x20, load_fault_handler
                  li x20, 0x7
                  beq x30, x20, store_fault_handler
                  li x20, 0xc
                  beq x30, x20, pt_fault_handler
                  li x20, 0xd
                  beq x30, x20, pt_fault_handler
                  li x20, 0xf
                  beq x30, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x5, x13, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
