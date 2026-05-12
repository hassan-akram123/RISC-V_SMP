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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf5e77c04
                  li x2, 0xc
                  li x3, 0x80000000
                  li x4, 0x9a80ff7f
                  li x5, 0xf0ea5cbd
                  li x6, 0x1
                  li x9, 0x7
                  li x10, 0x0
                  li x11, 0xf4e64e12
                  li x12, 0xa
                  li x13, 0x80000000
                  li x14, 0xe
                  li x15, 0x3
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0x89b853e1
                  li x19, 0x7
                  li x20, 0xa15e4cb0
                  li x21, 0x0
                  li x22, 0xf4a03aca
                  li x23, 0x0
                  li x24, 0xf59d7f6d
                  li x25, 0xf356de6e
                  li x26, 0xf78e2504
                  li x27, 0x7fbd2e9b
                  li x28, 0x0
                  li x29, 0x29c83ff0
                  li x30, 0x80000000
                  li x31, 0xf18d75d0
                  la x8, user_stack_end
main:             lui          zero, 778827
                  sub          sp, t4, s1
                  slt          s7, s9, a2
                  la           a3, sub_2
                  xor          tp, sp, t6
                  addi         a3, a3, -702
                  andi         a2, t2, 132
                  addi         s11, s6, -1428
                  bge          s7, a0, main_j2 #branch to jump instr
                  slt          sp, gp, a0
main_j2:          jalr         ra, a3, 703 #jump main -> sub_2
                  la           s5, region_0+741 #start riscv_load_store_rand_instr_stream_0
                  sb           ra, -22(s5)
                  lh           s10, -51(s5)
                  sb           t4, -36(s5)
                  sltu         zero, s7, t4
                  lh           t3, -3(s5)
                  sw           ra, 11(s5)
                  nop
                  lh           t3, -13(s5)
                  sb           t1, 10(s5)
                  sb           s9, -15(s5)
                  slti         s3, a5, 1824
                  nop
                  lhu          a3, -3(s5)
                  srai         s8, s6, 3
                  lbu          t5, -7(s5)
                  xori         a6, zero, 928
                  xori         ra, s6, 1882
                  sb           s1, -50(s5)
                  auipc        a1, 460315
                  nop
                  lb           t5, 34(s5)
                  sb           sp, -55(s5)
                  lh           t4, 5(s5)
                  sb           t5, -58(s5)
                  sb           t4, -34(s5)
                  auipc        s3, 50901
                  and          t0, a2, s1
                  sb           t3, -31(s5)
                  lb           a3, -62(s5)
                  lbu          s10, -3(s5)
                  lbu          ra, 63(s5)
                  sb           s11, -51(s5)
                  xori         a0, t1, 1139
                  lbu          a2, 26(s5)
                  slt          s3, s2, a6
                  lbu          s3, 48(s5)
                  and          a5, ra, a4
                  andi         a7, a3, 1557
                  lb           gp, 53(s5)
                  lui          a3, 802150
                  srai         a1, t0, 17
                  lb           t1, 8(s5) #end riscv_load_store_rand_instr_stream_0
                  srai         t1, a4, 26
                  ori          s1, s4, -1895
                  add          s9, t5, s9
                  lui          ra, 49982
                  la           s3, sub_1
                  xor          t1, a3, a6
                  addi         s3, s3, 961
                  srli         s1, tp, 29
                  bltu         zero, s11, main_j1 #branch to jump instr
                  andi         a1, s10, 1242
main_j1:          jalr         ra, s3, -961 #jump main -> sub_1
                  lui          a3, 433389
                  sltiu        s2, t1, 1075
                  addi         a4, s3, -1798
                  sltiu        t5, s2, 1298
                  srl          a1, tp, sp
                  slli         s2, s2, 18
                  sll          zero, t5, s1
                  or           s3, t1, a3
                  sub          s6, s0, ra
                  and          tp, s11, tp
                  add          a1, t6, t2
                  add          zero, zero, a3
                  slt          s8, s0, t0
                  srl          t0, s8, a5
                  sll          a6, s5, a0
                  xor          tp, tp, a3
                  or           s2, s1, t2
                  ori          a6, s0, -650
                  srl          s8, t2, ra
                  bge          gp, s10, 39f
                  andi         a4, t1, -1032
                  beq          a5, t5, 37f
                  sub          s11, a1, a7
                  ori          a2, s9, 46
                  slt          s6, s0, s5
                  lui          a7, 823067
                  bgeu         s10, s8, 47f
                  bge          t0, s10, 38f
                  slti         t1, s7, 248
                  auipc        t0, 609376
                  lui          t3, 659698
                  bge          s11, a2, 49f
                  nop
                  srli         a1, t4, 17
                  sll          gp, a6, t6
                  sltiu        s11, zero, -342
37:               lui          ra, 831510
38:               ori          tp, ra, -211
39:               xori         tp, s0, -2016
                  srli         a0, s5, 24
                  auipc        s11, 960454
                  lui          a1, 692902
                  sra          sp, t4, s5
                  nop
                  xor          a7, t1, zero
                  srl          s11, zero, t4
47:               srai         s8, a4, 12
                  sll          a7, s2, a2
49:               sll          s11, a6, a1
                  sltu         gp, s2, s11
                  slli         gp, s5, 13
                  nop
                  slti         s6, t2, 1754
                  sltiu        a1, s6, -947
                  sll          sp, t6, s10
                  andi         tp, t5, 1563
                  bgeu         a3, a7, 64f
                  bltu         t6, t2, 65f
                  srli         s1, t2, 12
                  slti         gp, a2, -610
                  srai         t6, s3, 13
                  or           s9, t3, s3
                  bne          ra, s0, 68f
64:               bltu         a3, t3, 68f
65:               blt          t0, s2, 67f
                  sub          a4, sp, a2
67:               slt          t0, a7, t4
68:               addi         a1, s8, -940
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            nop
                  addi         s0, s0, -56
                  andi         a5, t1, -1073
                  sub          s3, s10, zero
                  sltiu        a0, zero, 646
                  sra          a3, a4, s0
                  sw           ra, 4(s0)
                  srai         a1, s10, 17
                  xor          s9, a7, sp
                  sltiu        sp, s9, -771
                  auipc        t6, 942157
                  sltu         s5, a1, a7
                  and          a3, s8, s10
                  sltu         a7, a4, t6
                  blt          s5, t4, 10f
                  auipc        s1, 79003
                  sra          a7, sp, s2
                  slt          t1, s6, s10
                  slti         s7, a5, 59
10:               srli         tp, tp, 31
                  sll          s8, tp, a2
                  or           zero, s9, t3
                  andi         zero, s11, 1500
                  sub          a6, s0, t2
                  bltu         a1, t3, 28f
                  bgeu         s11, zero, 28f
                  srli         s9, t2, 19
                  or           ra, ra, s10
                  and          s1, a4, s0
                  ori          sp, gp, 489
                  bne          t6, s1, 22f
22:               or           t5, a1, t6
                  bne          t4, s3, 32f
                  srli         t1, ra, 7
                  srli         a0, a2, 30
                  addi         s7, s11, -93
                  add          s11, gp, s7
28:               slti         s1, s9, -1380
                  blt          a7, s11, 38f
                  sltu         s11, a2, ra
                  add          s9, s5, s9
32:               and          a1, a0, sp
                  sll          t3, s8, a7
                  sll          ra, a5, t0
                  xori         s5, gp, -75
                  bltu         s7, s2, 51f
                  add          gp, a5, a5
38:               srli         a0, a5, 7
                  srli         t1, s7, 1
                  sra          a3, s2, s8
                  beq          s0, t2, 51f
                  auipc        s5, 390989
                  slti         s6, gp, 1316
                  slt          s2, a3, s9
                  xor          t5, s6, a0
                  ori          s6, a7, 1173
                  sll          a2, a0, s3
                  xor          a4, a3, sp
                  xor          s1, t0, ra
                  sltiu        s3, s7, -1875
51:               sll          s3, s2, t0
                  sltiu        a5, ra, 952
                  sltu         a7, s10, s3
                  and          s2, s10, tp
                  slt          t0, a7, s10
                  and          a3, t1, a0
                  sltu         t6, s5, t3
                  bge          a5, a0, 66f
                  andi         t5, s0, 172
                  sltiu        ra, t6, -411
                  auipc        ra, 763510
                  blt          t6, a0, 72f
                  sub          s6, s8, t1
                  srai         s10, t3, 22
                  srl          ra, a2, a2
66:               srli         s1, ra, 17
                  andi         t1, s3, 84
                  sll          gp, a5, a5
                  lui          a5, 397448
                  addi         t4, a2, -1073
                  ori          a7, t1, -494
72:               or           a4, s0, ra
                  sltu         t6, a7, s6
                  bgeu         t0, t6, 76f
                  srai         a6, s1, 29
76:               andi         t3, tp, 91
                  and          s3, a3, zero
                  add          a1, s10, a6
                  lw           ra, 4(s0)
                  addi         s0, s0, 56
                  sll          a2, sp, s9
                  addi         t5, zero, -1909
                  addi         t0, s8, 503
93:               addi x25, x1, 1
93:               jalr x25, x25, 0
sub_3:            srai         t6, t2, 20
                  ori          s8, ra, 1673
                  nop
                  addi         s0, s0, -8
                  xor          a5, s6, s5
                  srli         s7, sp, 5
                  sw           ra, 4(s0)
                  sltu         s6, sp, ra
                  auipc        a6, 995424
                  add          s10, a5, tp
                  srl          tp, s6, s1
                  srli         a7, s7, 9
                  la           s8, sub_5
                  auipc        t1, 435398
                  srli         tp, a5, 31
                  slti         t6, a3, 1233
                  addi         s8, s8, 831
                  sltiu        s9, t1, 121
                  xor          a4, s3, t3
                  bltu         ra, a1, sub_3_j5 #branch to jump instr
                  lui          s11, 39411
                  xor          s3, sp, a7
sub_3_j5:         jalr         ra, s8, -830 #jump sub_3 -> sub_5
                  srli         sp, t6, 30
                  and          s6, s0, ra
                  sltiu        t1, s2, -252
                  la           s1, sub_8
                  sub          a3, a4, a1
                  addi         s1, s1, -1001
                  srai         a5, a5, 13
                  addi         s10, a0, 614
                  sltiu        t0, s4, -274
sub_3_j6:         jalr         ra, s1, 1002 #jump sub_3 -> sub_8
                  slt          a3, s1, s11
                  srai         a6, a3, 29
                  sltiu        s9, s10, 1627
                  nop
                  sltiu        tp, t0, 113
                  sll          t1, s0, s8
sub_3_j7:         jal          ra, sub_6 #jump sub_3 -> sub_6
                  la           a2, sub_7
                  lui          sp, 605716
                  add          t1, sp, s11
                  srli         s6, s9, 0
                  addi         a2, a2, -568
                  slli         t4, s9, 11
                  srli         zero, sp, 30
                  addi         a1, s4, 815
                  addi         t4, t1, 987
                  bltu         a3, t3, sub_3_j8 #branch to jump instr
                  andi         t5, gp, -196
sub_3_j8:         jalr         ra, a2, 569 #jump sub_3 -> sub_7
                  auipc        s5, 47195
                  auipc        a4, 70399
                  slt          a3, s5, zero
                  srl          a6, t1, a3
                  la           t5, sub_4
                  andi         s6, sp, 296
                  nop
                  addi         t5, t5, -528
                  add          s9, t2, s5
                  beq          s9, a5, sub_3_j9 #branch to jump instr
                  sltiu        t1, a0, 1985
sub_3_j9:         jalr         ra, t5, 529 #jump sub_3 -> sub_4
                  add          s11, s10, t2
                  addi         s2, t1, -452
                  addi         a1, a5, 1419
                  auipc        t6, 51589
                  or           s8, t3, t3
                  bne          s1, s11, 9f
                  srai         t4, tp, 12
                  xori         a3, tp, -1209
                  xor          a1, s3, s0
9:                andi         ra, sp, 313
                  and          s6, t5, t0
                  lw           ra, 4(s0)
                  addi         s0, s0, 8
                  nop
                  slli         zero, a5, 3
79:               addi x24, x1, 1
79:               jalr x24, x24, 0
sub_5:            blt          sp, a4, sub_5_stack_p
                  auipc        s6, 320394
                  andi         a5, s8, 495
sub_5_stack_p:    addi         s0, s0, -32
                  slt          s3, t1, s5
                  sw           ra, 4(s0)
                  addi         a1, gp, -443
                  srai         t1, a2, 25
                  auipc        sp, 660490
                  lui          a7, 723887
                  srli         s11, t3, 6
                  sra          a4, s2, t4
                  and          t5, s4, s1
                  sub          a3, a2, s5
                  andi         s2, t6, -893
                  or           s7, t2, tp
                  andi         s2, s1, 191
                  addi         a5, t3, 1566
                  la           a0, sub_10
                  andi         t4, s11, 8
                  addi         a0, a0, -80
                  add          sp, t6, s4
sub_5_j10:        jalr         ra, a0, 80 #jump sub_5 -> sub_10
                  and          s8, s10, a6
                  andi         t3, s0, -923
                  sra          s6, t5, tp
                  xori         a5, s9, -304
                  sltiu        s6, zero, -1067
                  ori          s6, s9, 1617
                  andi         sp, gp, 347
                  lui          t1, 875108
                  xori         t4, a1, -517
sub_5_j11:        jal          ra, sub_9 #jump sub_5 -> sub_9
                  srai         s3, a0, 31
                  srai         t1, a3, 24
                  sltu         s1, a0, t5
                  addi         t4, s2, 855
                  slt          a1, sp, s1
                  beq          a1, a1, 7f
                  andi         s7, a7, 1171
7:                xor          a6, a4, s3
                  srai         t6, s6, 2
                  and          a5, a5, t3
                  andi         t0, a6, -2037
                  lw           ra, 4(s0)
                  lui          t3, 170805
                  slli         a4, a0, 20
                  addi         s0, s0, 32
                  slt          t5, gp, t0
49:               addi x18, x1, 1
49:               jalr x18, x18, 0
sub_2:            sra          sp, ra, t3
                  addi         s0, s0, -60
                  sw           ra, 4(s0)
                  ori          s7, s7, 1380
                  andi         s10, a7, 1005
                  auipc        s9, 1031091
                  xori         a5, s2, 531
                  sub          a5, tp, t6
                  xori         s6, s9, 800
                  sub          s6, s10, a4
                  or           a3, s7, t1
                  xori         a1, sp, -549
                  bne          s5, tp, sub_2_j4 #branch to jump instr
                  xor          s2, t2, a3
                  xori         s2, gp, -1441
                  slli         s1, zero, 28
                  addi         s3, a0, 588
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  la           sp, region_1+1559 #start riscv_load_store_rand_instr_stream_17
                  sb           sp, -858(sp)
                  lhu          a7, -153(sp)
                  srli         t6, s1, 23
                  sub          s7, a2, s0
                  sra          s10, s10, a7
                  sub          s11, tp, a5
                  or           s11, t4, s10
                  lb           s1, -828(sp)
                  sltiu        a5, s11, 1891
                  sll          s10, ra, s3
                  xori         s9, s11, 1352
                  addi         t0, sp, 1489
                  sltiu        s8, t0, 736
                  srai         t1, a1, 5
                  sltu         s7, a0, a0
                  lw           zero, -563(sp)
                  lb           t0, 336(sp)
                  sb           t4, -1202(sp)
                  sb           s5, 180(sp)
                  lbu          t0, -369(sp)
                  lb           s7, 436(sp)
                  sltiu        s7, t4, -279
                  slti         s7, a6, -505
                  sh           tp, 267(sp)
                  xori         t5, a7, 331
                  srl          s8, a3, s3
                  andi         gp, a5, -1028
                  sra          t3, s8, gp
                  lh           s8, -187(sp)
                  lhu          s6, -693(sp)
                  srai         a1, s0, 9
                  sb           s2, -925(sp)
                  addi         a1, t3, -659
                  sh           s0, -245(sp) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_0+886 #start riscv_load_store_rand_instr_stream_0
                  xori         t6, a6, 797
                  addi         a4, s11, -506
                  sll          a2, zero, t0
                  sll          a1, s1, t3
                  sll          t0, a2, s1
                  lb           ra, -51(sp)
                  sb           a3, 61(sp)
                  lui          ra, 890077
                  lbu          t3, 51(sp)
                  and          t5, a7, t4
                  xori         a1, t5, -1242
                  sltiu        t5, a6, -1903
                  sb           s1, -21(sp)
                  lui          zero, 1019684
                  srai         t3, s0, 5
                  slt          s10, a2, gp
                  sb           gp, 9(sp)
                  srai         s3, t6, 10
                  ori          a2, s3, 1317
                  lb           a5, 3(sp)
                  lb           t5, -16(sp)
                  slt          s5, gp, a3
                  ori          a0, a7, -1544
                  lh           ra, -40(sp)
                  or           t0, a6, a1
                  lb           t4, 40(sp)
                  lb           s7, 55(sp)
                  add          t5, zero, s9
                  andi         t4, a2, -272
                  lb           a5, -48(sp)
                  ori          a2, s10, 1227
                  lb           t6, -43(sp)
                  lbu          ra, 55(sp)
                  sb           s6, 47(sp)
                  sub          ra, a2, a0
                  srai         s1, a7, 9
                  ori          s11, a7, 575
                  sh           s1, 56(sp)
                  sra          s3, s7, s3
                  lbu          gp, 49(sp)
                  lbu          t0, 33(sp)
                  xor          t1, s11, t6
                  lb           gp, 25(sp)
                  sltiu        ra, a4, 107
                  sra          a0, t3, s1
                  lbu          gp, -63(sp)
                  addi         a7, s7, 974
                  lw           tp, 62(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1894 #start riscv_load_store_rand_instr_stream_11
                  slli         a2, s10, 19
                  lbu          t5, 61(sp)
                  lui          a4, 20909
                  slt          t0, s7, s6
                  add          zero, s0, a1
                  andi         s2, s11, 112
                  sltiu        ra, s6, -276
                  srli         a7, s11, 15
                  sll          gp, t4, s4
                  lh           a7, 2(sp)
                  lbu          a0, -52(sp)
                  and          tp, s1, ra
                  lhu          a7, -10(sp)
                  sb           gp, -23(sp)
                  addi         t3, t3, 1524
                  slli         tp, s2, 23
                  sh           s10, -16(sp)
                  lb           s5, 23(sp)
                  addi         s6, s0, -891
                  sb           t2, -41(sp)
                  sb           a7, -55(sp)
                  sll          a3, s2, s7
                  lhu          t3, -56(sp)
                  lbu          s3, -63(sp)
                  andi         t6, s6, 1327
                  sra          t0, t0, a5
                  sub          s3, a5, t1
                  sb           t5, 47(sp)
                  add          s9, a1, t4
                  or           s9, s6, a5
                  slti         zero, s2, 667
                  sb           s9, 1(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1883 #start riscv_load_store_rand_instr_stream_4
                  lb           s1, 14(sp)
                  lhu          a1, 11(sp)
                  lbu          s8, 4(sp)
                  lb           a5, -8(sp)
                  or           a2, t5, t6
                  lui          a2, 594624
                  xori         s8, s1, 428
                  sltu         gp, s5, t1
                  nop
                  lh           t5, 11(sp)
                  lh           s11, -7(sp)
                  sb           a3, 1(sp)
                  srli         s5, s2, 19
                  lbu          t1, -12(sp)
                  sltu         s9, a7, t6
                  addi         s2, t1, -164
                  lb           s9, 10(sp)
                  add          s10, tp, s10
                  slt          s5, sp, a2
                  xori         t5, a0, 719
                  sltiu        a0, s8, -466
                  srli         s3, s3, 28
                  and          zero, a0, s4
                  slt          s9, gp, a4
                  or           t6, s2, s5
                  lhu          t1, -9(sp)
                  srai         a3, a4, 3
                  sh           a1, 5(sp)
                  xor          t1, s1, a3
                  lbu          a1, -2(sp)
                  lbu          a4, -14(sp)
                  lb           s6, 8(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1521 #start riscv_load_store_rand_instr_stream_13
                  lb           a0, 15(sp)
                  sh           a4, -15(sp)
                  sb           a5, -10(sp)
                  lb           s1, 14(sp)
                  sb           a5, -10(sp)
                  lhu          s8, 9(sp)
                  sra          ra, s0, s8
                  lbu          s7, 3(sp)
                  sb           sp, 11(sp)
                  lh           s9, 9(sp)
                  sltu         t6, s10, a2
                  lbu          a2, -2(sp)
                  lbu          s3, 6(sp)
                  sub          s11, a4, t6
                  lb           a6, 2(sp)
                  lb           a0, 4(sp)
                  lb           a1, 4(sp)
                  sb           s4, -7(sp)
                  add          t5, gp, tp
                  lb           s1, 0(sp)
                  nop
                  sb           s11, 6(sp)
                  lhu          s2, -1(sp)
                  add          s3, t2, s8
                  sra          t0, t3, tp
                  sb           tp, -15(sp)
                  lbu          s10, 0(sp)
                  sb           s5, -10(sp)
                  lb           a2, 9(sp)
                  lb           a7, -2(sp)
                  lhu          t4, -15(sp)
                  sh           zero, -13(sp)
                  lb           s6, -6(sp)
                  lh           a4, -5(sp)
                  srai         a0, tp, 19
                  sh           t6, 9(sp)
                  sltu         a3, s7, a7
                  lbu          s2, -8(sp)
                  sltiu        s5, t0, 17
                  lbu          a4, 2(sp) #end riscv_load_store_rand_instr_stream_13
                  la           s5, region_1+1045 #start riscv_load_store_rand_instr_stream_9
                  andi         ra, a0, -829
                  addi         tp, t5, 114
                  lbu          s9, 0(s5)
                  lb           sp, -12(s5)
                  or           zero, s7, a4
                  xor          tp, a1, t0
                  ori          s2, t2, -545
                  sll          s7, t6, a2
                  lw           t0, -13(s5)
                  sb           s9, 12(s5)
                  or           sp, t4, s5
                  slli         s2, s2, 13
                  lbu          t5, -4(s5)
                  sll          s1, a5, t5
                  sub          s2, s10, t4
                  nop
                  and          a6, a2, a7
                  addi         a6, s4, 446
                  add          t6, s5, sp
                  and          a5, ra, t4
                  slt          gp, s2, t4
                  lb           t1, 12(s5)
                  sw           s1, -9(s5)
                  lh           t4, 1(s5)
                  sh           t4, 13(s5)
                  xor          ra, t3, s8
                  srli         s9, s3, 0
                  sb           s9, 4(s5)
                  slt          sp, a7, t1
                  slli         s10, t4, 23
                  xor          a7, ra, s1
                  ori          a0, a1, 362
                  sltiu        ra, a4, -1693
                  lhu          s9, -9(s5)
                  andi         a0, gp, -774
                  nop
                  lbu          s2, 8(s5)
                  lb           a0, -15(s5)
                  lbu          s2, -9(s5) #end riscv_load_store_rand_instr_stream_9
                  la           t1, region_1+1596 #start riscv_load_store_rand_instr_stream_3
                  srl          s3, s6, t2
                  sb           a6, 2(t1)
                  ori          s11, t1, 1294
                  lhu          s3, -12(t1)
                  slti         s6, a3, 1120
                  sb           s6, 7(t1)
                  lb           a3, -3(t1)
                  sh           ra, -12(t1)
                  xori         ra, tp, 167
                  lb           gp, 14(t1)
                  lbu          s1, 11(t1)
                  xor          tp, tp, a5
                  lbu          t6, 9(t1)
                  sltiu        sp, s6, 1961
                  sra          a6, t1, s3
                  xori         s9, t5, -746
                  srai         t6, t6, 13
                  auipc        s8, 102670
                  xori         s9, s8, 1422
                  lbu          a1, 14(t1)
                  and          a0, gp, zero
                  nop
                  lhu          t4, 12(t1)
                  xor          s2, s1, s7
                  lhu          sp, 8(t1)
                  lbu          t4, 7(t1)
                  or           a2, s11, a1
                  add          s2, zero, s4
                  or           s5, sp, a1
                  sh           s8, 0(t1)
                  auipc        a0, 583982
                  lb           t5, -15(t1)
                  lbu          s10, 9(t1)
                  sub          ra, a5, s11
                  and          s11, a7, t0
                  lbu          a4, 11(t1)
                  slti         s1, a1, 1995
                  or           s10, s7, sp
                  sltu         s7, s2, a7
                  sb           zero, 0(t1)
                  slli         s10, sp, 9
                  sb           a5, -16(t1)
                  sh           sp, -12(t1)
                  add          a1, s3, a1
                  lb           a6, -9(t1)
                  add          s2, s2, s0
                  xori         t0, t5, 1494
                  lhu          gp, 0(t1)
                  sh           t2, 2(t1)
                  sb           a0, 1(t1)
                  lh           s6, -8(t1)
                  sb           a5, 9(t1)
                  lbu          s5, 3(t1)
                  lb           s5, -10(t1)
                  lb           a4, 5(t1) #end riscv_load_store_rand_instr_stream_3
                  la           a2, region_0+752 #start riscv_load_store_rand_instr_stream_15
                  sub          t1, s8, a6
                  srl          s5, a3, a0
                  sub          a7, a3, s10
                  addi         s5, t3, -1331
                  lb           a7, -303(a2)
                  lbu          t1, 751(a2)
                  sll          gp, s9, s4
                  lbu          a6, 413(a2)
                  auipc        a6, 156270
                  sub          s8, gp, a3
                  lbu          s3, 1211(a2)
                  slt          s1, gp, s3
                  sb           s1, 909(a2)
                  addi         sp, s4, 613
                  lui          a0, 57600
                  lbu          a0, 914(a2)
                  slt          s7, s4, a4
                  andi         s1, t4, 1293
                  lb           t6, 393(a2)
                  add          s3, t1, gp
                  lw           a0, 1072(a2)
                  or           s11, t6, s9
                  slti         s1, a1, 1292
                  sll          s3, s7, a1
                  auipc        a5, 1039586
                  slt          a4, a6, a2
                  lbu          s3, -416(a2)
                  lw           a0, -116(a2)
                  nop
                  lui          t6, 300355
                  lh           s7, 578(a2)
                  lhu          t5, 1102(a2)
                  sb           s11, 1126(a2)
                  lb           t5, 882(a2)
                  lh           s8, -332(a2)
                  xor          s8, t1, t6
                  lui          s2, 231141
                  sw           s1, 524(a2)
                  sh           a2, 784(a2)
                  lb           t4, 976(a2)
                  or           t3, s7, t4
                  slt          a5, t4, a0
                  lbu          zero, -629(a2)
                  nop
                  slti         zero, gp, 111
                  sb           s0, 1098(a2)
                  lbu          t4, -515(a2)
                  lw           a0, 1124(a2)
                  srli         t5, t6, 28
                  ori          zero, s8, 1357
                  lhu          s9, 1074(a2)
                  sltu         a7, t4, tp
                  sb           t2, 1197(a2)
                  add          sp, s10, s9
                  lbu          sp, -191(a2) #end riscv_load_store_rand_instr_stream_15
                  la           t6, region_1+991 #start riscv_load_store_rand_instr_stream_8
                  slti         zero, a0, 275
                  sb           s0, -6(t6)
                  sw           t5, 9(t6)
                  andi         a7, a6, -724
                  sb           s3, 2(t6)
                  auipc        s10, 784308
                  sb           s5, -8(t6)
                  lbu          tp, -9(t6)
                  srl          a2, a2, s4
                  srai         s7, s3, 7
                  addi         s6, a7, 654
                  add          tp, s4, a7
                  srli         s10, s3, 18
                  sb           t5, 16(t6)
                  lbu          tp, 0(t6)
                  sltu         ra, t2, a0
                  lw           t1, -3(t6)
                  ori          s1, s2, 1046
                  srai         s5, t2, 23
                  lbu          a0, 1(t6)
                  lbu          s9, 10(t6)
                  auipc        a6, 689024
                  lb           t3, -1(t6)
                  slti         a4, a6, 418
                  sw           s2, 1(t6) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1895 #start riscv_load_store_rand_instr_stream_7
                  sh           a2, 9(sp)
                  sb           s8, 2(sp)
                  lbu          zero, 10(sp)
                  lbu          a6, -2(sp)
                  auipc        tp, 597945
                  lbu          t5, 12(sp)
                  lb           t1, -5(sp)
                  srli         t1, t6, 21
                  slt          a1, t2, s2
                  lbu          s8, 2(sp)
                  sb           s10, -8(sp)
                  sh           s0, 9(sp)
                  xor          gp, a0, gp
                  lui          a3, 835194
                  sb           s1, -13(sp)
                  sub          s7, t2, sp
                  add          a2, a5, s3
                  lhu          a6, -5(sp)
                  lbu          t5, 4(sp)
                  srai         gp, s4, 30
                  sll          t4, sp, a3
                  sb           zero, 5(sp)
                  lb           s2, 8(sp)
                  srai         a4, s5, 17
                  lb           ra, 8(sp)
                  sh           t5, 11(sp)
                  or           a2, t2, s2
                  lw           s8, 5(sp)
                  lb           s3, -16(sp)
                  add          t5, t6, a5
                  sw           a2, -3(sp)
                  auipc        ra, 827427
                  sll          t4, s0, t4
                  lh           a7, -13(sp)
                  lb           t1, -16(sp)
                  sltiu        s6, t5, -866
                  sh           t6, -13(sp)
                  sltu         a6, s11, s3
                  addi         s8, a4, 535
                  sb           t4, 10(sp)
                  lhu          a7, -5(sp)
                  andi         a1, s6, 1869
                  lbu          t3, -4(sp)
                  lbu          t4, -13(sp)
                  lb           s5, -14(sp)
                  lbu          a4, -11(sp)
                  srai         a4, s4, 25
                  lbu          s5, -12(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1755 #start riscv_load_store_rand_instr_stream_6
                  sltu         s2, gp, a4
                  lh           ra, -175(sp)
                  sub          s6, a4, t1
                  andi         a4, t3, 546
                  nop
                  lhu          t3, 99(sp)
                  sra          t5, t4, s0
                  addi         s6, t1, 1303
                  srai         t4, tp, 20
                  slli         s3, t5, 13
                  auipc        a3, 791812
                  and          a1, s10, tp
                  sb           s9, -206(sp)
                  add          t6, ra, tp
                  nop
                  sltu         zero, t5, s2
                  sb           s1, 78(sp)
                  sh           a0, -99(sp)
                  andi         s3, s4, 881
                  sltu         s11, a7, a7
                  sll          zero, a6, s6
                  srl          ra, t1, t1
                  lbu          t1, 95(sp)
                  sb           s8, -134(sp)
                  lb           s5, 10(sp)
                  or           tp, s11, t5
                  srl          s1, t1, a1
                  nop
                  add          s8, gp, s5
                  lbu          gp, 72(sp)
                  lbu          s10, -236(sp)
                  lbu          tp, 64(sp)
                  nop
                  xori         a5, t1, -1754
                  lhu          a5, -3(sp)
                  slli         s11, s0, 19
                  lhu          a1, -217(sp)
                  or           a7, a2, a1
                  xor          gp, a4, t3
                  lb           zero, -70(sp)
                  lbu          s9, 200(sp)
                  lb           s8, -189(sp)
                  sltiu        s3, s7, 1289
                  srl          s6, t5, a0
                  srli         t3, zero, 31
                  sh           a5, 193(sp)
                  slti         zero, t2, -572
                  sb           s0, 74(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s3, region_0+1514 #start riscv_load_store_rand_instr_stream_1
                  nop
                  slti         s7, s3, 951
                  lb           sp, -1105(s3)
                  sltu         t1, t4, s6
                  nop
                  xori         a4, a5, -1384
                  lui          a2, 742018
                  sb           s3, -813(s3)
                  sb           s6, -118(s3)
                  lhu          t3, -1070(s3)
                  lhu          s9, -654(s3)
                  sra          s11, s8, t6
                  ori          s7, ra, -183
                  sb           s7, -331(s3)
                  lbu          s9, -585(s3)
                  or           a1, s6, t6
                  ori          a4, a5, 1358
                  lbu          sp, -423(s3)
                  and          gp, t6, t2
                  sh           a6, 136(s3)
                  sltu         s1, s0, s0
                  lb           a7, 15(s3)
                  lb           a1, -1028(s3)
                  auipc        a3, 531598
                  sll          s6, s5, ra
                  xor          t0, gp, s9
                  nop
                  lbu          s9, -1344(s3)
                  sb           a5, -927(s3)
                  addi         gp, tp, 1191
                  nop
                  lhu          a4, -802(s3)
                  sb           a1, 371(s3)
                  lb           t3, -614(s3)
                  or           a4, s0, a7
                  add          s9, s11, gp
                  andi         a7, a5, -1521
                  nop
                  lhu          a1, 226(s3)
                  lb           zero, -1510(s3)
                  lb           s8, -372(s3)
                  xor          t6, s8, a5
                  lb           a6, 131(s3)
                  addi         t6, gp, 1883
                  slt          ra, s3, a7
                  auipc        a2, 970858
                  lb           s5, -169(s3)
                  sll          s1, s11, tp
                  lbu          t4, 116(s3)
                  lbu          t0, -563(s3)
                  slli         s6, t1, 17
                  xor          t4, s10, tp
                  lb           a2, -271(s3) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+1314 #start riscv_load_store_rand_instr_stream_16
                  lb           s11, 627(gp)
                  srai         s11, s5, 1
                  lw           a1, 170(gp)
                  srai         s8, s8, 21
                  sw           sp, -82(gp)
                  lb           t6, -480(gp)
                  lhu          t0, -922(gp)
                  auipc        a2, 521490
                  sb           s5, 682(gp)
                  lb           t5, -1253(gp)
                  lbu          a3, -615(gp)
                  slti         s11, t4, 403
                  addi         tp, s6, -1418
                  lhu          a1, -460(gp)
                  sb           a7, -387(gp)
                  srli         a4, a0, 0
                  lb           a6, -1257(gp)
                  sltu         t5, s5, a1
                  and          s2, t3, s2
                  lui          s3, 584697
                  sb           a3, -293(gp)
                  sh           a0, -66(gp)
                  srai         t1, ra, 18
                  sb           a3, 621(gp)
                  lh           t6, -398(gp)
                  or           s7, s9, ra
                  nop
                  lb           sp, -710(gp)
                  lb           s3, -1045(gp)
                  sb           t0, -462(gp)
                  sra          s10, t5, sp
                  or           t6, s2, a3
                  andi         tp, t1, -1687
                  lw           s7, -162(gp)
                  srl          s6, s11, sp
                  and          a2, a3, ra
                  auipc        t6, 473810
                  lb           s7, -152(gp)
                  add          s3, s9, a7
                  lbu          s6, -622(gp)
                  sb           s0, -753(gp)
                  sw           a1, -538(gp) #end riscv_load_store_rand_instr_stream_16
                  la           sp, region_0+1055 #start riscv_load_store_rand_instr_stream_12
                  slt          t5, s10, s3
                  sltu         s5, t1, s7
                  sltiu        s6, a2, 469
                  add          a2, t3, a1
                  srli         s2, s9, 5
                  auipc        s7, 242375
                  xori         s9, a7, 1006
                  nop
                  lh           a1, 3(sp)
                  lb           ra, 186(sp)
                  sltu         s11, a0, t3
                  srli         a5, a0, 25
                  lb           a4, 113(sp)
                  lb           zero, 32(sp)
                  add          t6, s7, t3
                  sra          a1, t6, s1
                  lhu          t1, 167(sp)
                  lh           zero, -35(sp)
                  sh           s11, 13(sp)
                  slt          s1, tp, t3
                  sw           s1, 205(sp)
                  sb           a1, -5(sp)
                  andi         t6, a5, -831
                  sw           a3, 221(sp)
                  sra          a3, sp, s3
                  slli         t3, s6, 15
                  lb           s1, 66(sp)
                  and          t5, zero, a7
                  srli         zero, t6, 28
                  sltu         s3, sp, s7
                  lbu          s1, 40(sp)
                  sltiu        s3, t3, -1538
                  sh           s0, 239(sp) #end riscv_load_store_rand_instr_stream_12
                  xori         a1, sp, 47
                  sltiu        s2, t1, 780
                  sll          s5, s10, s1
                  srl          a2, ra, a7
                  or           s8, t0, s10
                  or           zero, s0, a7
                  nop
                  beq          s9, t6, 9f
                  bgeu         s2, a4, 22f
9:                bltu         t1, ra, 13f
                  srai         t4, s8, 13
                  bgeu         t0, tp, 19f
                  srai         s7, t2, 28
13:               srli         t1, a1, 31
                  bgeu         a3, a3, 16f
                  srli         s9, tp, 20
16:               lui          s3, 9416
                  auipc        s5, 808500
                  and          s5, t2, s8
19:               beq          a1, s6, 22f
                  sub          t6, a1, s3
                  bne          tp, a7, 38f
22:               beq          t0, a1, 37f
                  sra          s11, tp, s10
                  addi         s11, t4, 415
                  slti         s2, a7, 1052
                  addi         s5, a2, 496
                  sll          ra, t4, s5
                  andi         s9, s7, 446
                  slli         s10, s11, 26
                  bgeu         t4, t4, 43f
                  slti         a4, t6, 1099
                  xor          a3, s4, ra
                  and          s7, s7, s1
                  and          tp, a6, a4
                  bgeu         a3, s11, 55f
                  bltu         a6, a4, 41f
37:               xor          s8, s11, sp
38:               lui          t5, 524929
                  bne          t6, t5, 59f
                  bne          s5, s9, 44f
41:               beq          s3, s10, 47f
                  sub          gp, a3, t6
43:               ori          a1, t6, 26
44:               or           s7, a3, t4
                  bgeu         tp, t4, 47f
                  srli         gp, ra, 19
47:               xor          a4, s11, s8
                  bne          s10, t6, 59f
                  slli         s9, t2, 2
                  addi         a7, s5, -1119
                  andi         gp, a1, -972
                  andi         s10, t1, 1488
                  blt          s5, a2, 69f
                  sub          s1, s4, ra
55:               andi         t5, zero, -611
                  bltu         s5, a2, 57f
57:               ori          a5, s0, -35
                  auipc        s1, 974979
59:               beq          a4, s3, 69f
                  xori         a3, zero, 612
                  bltu         a5, a6, 80f
                  slt          a6, tp, a3
                  slli         gp, s7, 29
                  auipc        a0, 394740
                  slti         s10, s9, 1038
                  sra          a2, s8, zero
                  slt          a4, s0, zero
                  slli         a3, s5, 24
69:               nop
                  nop
                  beq          s10, a5, 89f
                  addi         t5, ra, -28
                  blt          t5, t0, 79f
                  lui          t6, 915573
                  bne          a7, a0, 90f
                  sra          sp, t4, a0
                  slli         a2, s6, 21
                  slti         t1, t6, 1284
79:               andi         s7, s3, 649
80:               bne          a5, t4, 90f
                  sltu         s11, s0, s11
                  sra          a0, t1, a2
                  nop
                  bge          t2, t4, 90f
                  sll          t5, sp, a1
                  auipc        s2, 282737
                  lui          s11, 366842
                  sltiu        s9, a4, 110
89:               srai         s11, s11, 20
90:               slt          s5, sp, a2
                  slti         s8, a5, 241
                  ori          a5, t4, 388
                  auipc        gp, 252201
                  beq          s11, s4, 113f
                  bge          s10, zero, 107f
                  beq          t5, s7, 97f
97:               auipc        a3, 941071
                  xori         t4, a3, -1460
                  xori         t3, s0, -225
                  slli         s3, a0, 19
                  or           s3, s4, s1
                  blt          gp, t4, 105f
                  addi         a1, gp, -1878
                  blt          sp, t3, 107f
105:              slt          s7, a3, zero
                  bne          t3, t5, 112f
107:              lui          s8, 405548
                  xor          t0, t4, s2
                  bgeu         a2, t6, 112f
                  sra          t4, s7, t1
                  sra          a1, s10, t4
112:              slt          t1, s0, a4
113:              bne          ra, a3, 127f
                  sll          t3, t6, a7
                  lui          zero, 250001
                  sub          s7, t2, sp
                  blt          t1, a1, 120f
                  bgeu         s10, t3, 135f
                  sra          s1, s0, a1
120:              bge          a2, a5, 122f
                  bne          s5, s7, 141f
122:              slt          s9, s6, s6
                  srli         s3, s11, 8
                  slli         s9, t5, 9
                  bltu         a1, s1, 141f
                  srl          t6, a0, t1
127:              sub          t0, t3, a7
                  nop
                  or           a7, s5, tp
                  slli         zero, gp, 27
                  bge          s11, s11, 151f
                  or           zero, a7, s2
                  xori         t1, a1, -1665
                  bne          s1, s8, 138f
135:              bge          t0, a1, 150f
                  addi         a6, a4, -1866
                  sltiu        t6, a1, -933
138:              sll          a5, s7, t5
                  bltu         s11, s5, 158f
                  slt          s3, a1, t3
141:              and          t3, t3, t5
                  add          a5, s2, a5
                  or           a7, a6, a6
                  xori         s11, a4, 681
                  sltu         a5, s9, gp
                  sltiu        s5, s4, -1840
                  xori         s1, t6, -749
                  sra          s2, t4, a2
                  slt          a6, s1, a2
150:              sub          s10, zero, a1
151:              bltu         a7, s0, 161f
                  auipc        s5, 131130
                  auipc        a6, 517766
                  slli         ra, t6, 14
                  andi         a2, a5, 954
                  nop
                  slt          a7, a1, a6
158:              sub          a3, a0, t6
                  add          a0, s4, s5
                  and          ra, a4, s4
161:              sltu         a7, t6, a0
                  bne          s8, zero, 180f
                  andi         t4, t5, 375
                  lui          ra, 826677
                  srl          t6, a7, s9
                  sll          tp, t0, s0
                  andi         a2, a1, 1471
                  blt          t3, s9, 171f
                  xori         s8, s3, 51
                  and          s1, s9, s0
171:              beq          a5, gp, 183f
                  sltu         gp, a1, sp
                  andi         s5, s5, -230
                  xori         s6, tp, 856
                  sltiu        s3, s10, -1578
                  ori          t5, a4, 2016
                  slt          t1, s0, t5
                  sltu         t1, t6, gp
                  beq          s0, a4, 185f
180:              auipc        t3, 88601
                  srai         t6, t4, 5
                  or           s11, a1, a7
183:              xor          s11, zero, s11
                  and          a7, s9, a7
185:              and          t3, a4, s4
                  and          s8, a2, s9
                  slti         a2, s5, 282
                  slti         a3, t4, 1539
                  slli         s6, s2, 12
                  sltu         s2, t0, s9
                  xori         s6, a1, 1408
                  andi         s2, t5, 1524
                  sll          s11, a7, a7
                  lui          s7, 872884
                  add          a5, s1, s2
                  or           a1, zero, t3
                  srai         t3, s1, 20
                  slli         s5, s7, 25
                  sltu         s1, s0, t3
                  blt          s5, t3, 201f
201:              slti         a4, s0, 340
                  sub          a1, zero, t6
                  bltu         s6, a6, 204f
204:              bge          s4, s5, 206f
                  bge          t1, t3, 209f
206:              addi         zero, t2, 1674
                  sll          a4, s10, s3
                  xori         s8, t0, 1820
209:              and          s2, a1, s4
                  lui          t1, 534016
                  addi         s1, zero, -937
                  beq          s0, s10, 217f
                  beq          t4, a3, 223f
                  and          a4, s9, gp
                  addi         zero, gp, -1803
                  sub          t3, a6, a4
217:              andi         t6, gp, 522
                  slt          s11, s11, s4
                  sra          a3, s1, a7
                  add          s1, s2, t4
                  bne          t4, tp, 223f
                  addi         s7, s3, 958
223:              xor          a1, s11, s9
                  nop
                  and          a1, s1, tp
                  and          s9, s8, s1
                  bge          t4, t6, 240f
                  beq          s4, sp, 243f
                  sltu         s9, a5, a3
                  srli         t4, s7, 4
                  sll          s2, t4, s3
                  ori          a5, t1, 135
                  lui          a5, 690222
                  slt          a4, s2, t0
                  bgeu         sp, a3, 241f
                  srai         gp, a5, 22
                  xori         a3, a2, -1709
                  add          s8, a7, sp
                  slli         sp, s2, 17
240:              andi         s11, s3, 1792
241:              auipc        a1, 653386
                  auipc        t5, 1012936
243:              bne          t0, t3, 254f
                  srl          s9, t0, a0
                  bne          gp, t1, 264f
                  sra          s3, zero, a7
                  and          ra, tp, t1
                  slli         a4, s10, 28
                  slt          a1, a5, s7
                  or           t5, t0, s1
                  bne          a0, a3, 259f
                  beq          s4, s2, 258f
                  slt          s11, a1, a5
254:              lui          a1, 913426
                  slt          t0, s1, s9
                  srai         t6, a5, 5
                  or           s6, s6, s9
258:              beq          t1, a3, 262f
259:              bne          s9, s2, 278f
                  sltu         t4, s11, s4
                  sltu         a1, a3, s1
262:              xor          a0, s6, gp
                  andi         t6, s6, 27
264:              or           t4, s0, s6
                  addi         a7, s11, -1460
                  ori          s7, s7, 1273
                  sltiu        t4, s5, 1696
                  slt          a6, s8, s11
                  auipc        s10, 267234
                  slt          ra, sp, s5
                  lui          a2, 417503
                  or           s10, ra, t3
                  sll          tp, a4, t4
                  slti         s7, t3, 907
                  bltu         s7, s8, 281f
                  xor          t3, s0, a7
                  beq          s3, sp, 291f
278:              blt          zero, s11, 293f
                  slti         gp, a7, 1894
                  sra          a1, s0, sp
281:              andi         a4, s7, -750
                  sub          a2, ra, a3
                  bgeu         s1, s11, 285f
                  bge          a0, a6, 285f
285:              addi         s3, s5, -1289
                  sra          a2, s11, s3
                  auipc        a2, 732761
                  bge          t3, t1, 300f
                  sub          t0, zero, s6
                  bltu         s7, s6, 310f
291:              sra          a1, t6, s3
                  or           s3, t1, tp
293:              slti         t3, a5, 434
                  and          s11, s9, t3
                  addi         ra, a3, 112
                  srai         a1, t0, 21
                  sll          s3, t3, t3
                  srl          a7, a6, s4
                  slt          s9, t4, gp
300:              or           gp, a2, t5
                  sltu         tp, t4, tp
                  auipc        t6, 420712
                  bgeu         t5, t4, 319f
                  srli         s7, s7, 9
                  srl          a0, a4, a2
                  sub          a4, s4, t2
                  srli         zero, s10, 2
                  slli         a5, tp, 19
                  slti         t5, a4, 321
310:              addi         s1, t4, -1263
                  xori         s11, zero, 810
                  ori          a4, gp, -1992
                  bge          a6, a0, 316f
                  bltu         s10, s8, 325f
                  sub          ra, s5, s9
316:              sra          t6, a3, s7
                  lui          t3, 102786
                  bne          t3, a3, 320f
319:              andi         a2, t3, -1681
320:              slti         gp, a2, -518
                  or           a5, s1, s9
                  slli         t3, s5, 25
                  add          s9, t4, a1
                  slt          s1, s2, s11
325:              slti         sp, s3, 1932
                  srl          s8, t5, t6
                  sra          s11, s8, s5
                  slli         a5, s10, 23
                  and          a2, a4, a3
                  add          s2, t6, s10
                  xor          s8, sp, zero
                  slli         t5, s7, 11
                  slli         t5, s4, 3
                  xori         zero, ra, 1426
                  slt          a2, t5, s5
                  add          s11, s6, t0
                  bgeu         s3, s3, 354f
                  slti         tp, s9, 1126
                  bgeu         s1, s3, 349f
                  srl          gp, a3, t6
                  nop
                  sra          tp, t6, gp
                  ori          s7, t3, -2016
                  slti         t5, a7, -1645
                  srli         s3, a1, 13
                  and          s3, a7, s7
                  srli         a3, s6, 26
                  blt          s3, s10, 351f
349:              srl          t4, s11, t1
                  bne          t0, t1, 356f
351:              sll          ra, a1, a7
                  srai         s9, s6, 18
                  beq          t1, sp, 356f
354:              andi         a0, s10, -1310
                  srli         s10, t1, 6
356:              bne          tp, a2, 375f
                  auipc        tp, 395095
                  sll          s2, t4, s1
                  sub          s2, s7, a3
                  sra          s5, s2, a4
                  xor          s6, t4, zero
                  bltu         ra, ra, 372f
                  ori          zero, s0, -926
                  lui          zero, 809924
                  sltu         t4, a7, ra
                  xori         s1, s9, -466
                  bltu         t5, tp, 385f
                  blt          s3, s2, 372f
                  bge          s9, s0, 384f
                  srl          s1, a6, sp
                  bgeu         t4, tp, 391f
372:              slli         s5, ra, 1
                  beq          t1, a4, 378f
                  sll          a2, s4, s1
375:              sltu         a1, s3, s5
                  slti         s11, t3, 799
                  sra          s8, a4, s8
378:              beq          a7, gp, 386f
                  bltu         t6, ra, 380f
380:              nop
                  ori          a2, zero, -1218
                  bge          a7, gp, 384f
                  bltu         s10, s5, 396f
384:              xor          sp, s7, ra
385:              bne          s1, a2, 396f
386:              or           s11, s5, t6
                  bne          t1, t4, 395f
                  nop
                  srl          s11, a6, s9
                  sltu         s3, s2, a0
391:              srl          s6, t1, a1
                  bltu         s2, s7, 404f
                  blt          s1, a6, 412f
                  slti         t4, s9, -1725
395:              blt          s10, a0, 412f
396:              bne          a0, s4, 399f
                  nop
                  auipc        gp, 679857
399:              srai         t4, sp, 12
                  sub          a0, a3, s0
                  add          s2, a3, s3
                  srai         s3, t5, 19
                  or           sp, s8, s4
404:              sra          a2, ra, a3
                  sltu         t6, s2, t5
                  xor          zero, s3, t2
                  andi         ra, s5, 784
                  xori         a3, s8, 376
                  srli         zero, a4, 15
                  or           gp, gp, s0
                  addi         s7, a1, 734
412:              sltu         s5, s9, gp
                  xor          a3, tp, s2
                  lui          s6, 587707
                  sltu         s6, s8, gp
                  beq          a2, s4, 422f
                  sltu         zero, s3, a6
                  beq          a2, s8, 424f
                  bne          s2, t6, 420f
420:              srl          tp, t5, s10
                  andi         s11, a4, -1683
422:              bge          s8, s1, 437f
                  beq          t5, t4, 443f
424:              sltu         tp, s11, t2
                  srai         a2, s7, 7
                  bge          t0, tp, 430f
                  addi         zero, s7, -1283
                  nop
                  beq          s5, t3, 432f
430:              blt          a1, sp, 432f
                  andi         t1, s7, -961
432:              blt          ra, t4, 442f
                  nop
                  auipc        a4, 200146
                  sub          a2, s7, s0
                  bgeu         t2, a0, 455f
437:              nop
                  addi         s3, s9, 1996
                  sra          t6, t0, a7
                  srai         a0, zero, 18
                  slli         t3, s3, 8
442:              xor          zero, sp, ra
443:              xor          a0, a0, s11
                  bltu         s3, sp, 448f
                  sub          s7, a3, s11
                  lui          t6, 981336
                  slt          s2, t5, t3
448:              sltiu        a2, sp, -1080
                  andi         a6, s9, 1380
                  sub          a7, t6, zero
                  bgeu         t2, t5, 454f
                  bltu         s4, s8, 457f
                  slli         a6, s7, 19
454:              or           t4, a6, t6
455:              sltiu        a4, s6, 278
                  or           s9, t6, sp
457:              sltu         s11, s7, s6
                  ori          sp, tp, -344
                  bgeu         a3, s1, 472f
                  slli         s1, t0, 17
                  beq          a1, s6, 476f
                  bne          a5, s7, 478f
                  blt          a0, s3, 483f
                  sltiu        a3, s11, -1867
                  bltu         t1, s5, 467f
                  xor          a7, s2, t0
467:              or           s11, t1, a6
                  lui          t3, 492923
                  xor          s9, sp, s8
                  blt          ra, s7, 472f
                  bne          a5, a6, 477f
472:              and          a1, s1, s0
                  bltu         tp, s3, 487f
                  nop
                  beq          a0, t1, 476f
476:              bgeu         a0, s11, 494f
477:              add          a1, a0, s7
478:              bne          a5, tp, 488f
                  sll          ra, s3, a2
                  bgeu         s3, t4, 486f
                  slli         a5, a6, 18
                  blt          gp, ra, 492f
483:              lui          s3, 135400
                  slli         zero, s2, 15
                  auipc        t5, 499260
486:              sltiu        a4, s9, 1278
487:              sub          s10, t3, a7
488:              sra          a4, t4, a3
                  srli         a1, s10, 15
                  slti         t4, t2, 1787
                  ori          a3, s9, -361
492:              srai         tp, t0, 27
                  srli         s10, s0, 27
494:              slti         s7, a4, -1115
                  addi         s1, s7, 858
                  blt          t2, s3, 502f
                  addi         ra, t3, -1138
                  bgeu         a3, t1, 515f
                  slt          a5, a6, tp
                  bne          t0, a7, 501f
501:              srli         s3, s7, 6
502:              bltu         t3, s7, 516f
                  lui          t1, 876287
                  sltiu        s6, s11, 934
                  add          s11, s4, tp
                  srai         a5, s2, 3
                  slli         t3, a2, 6
                  sra          a5, a6, t4
                  auipc        a1, 607489
                  lui          t0, 796218
                  nop
                  ori          a1, a3, 1293
                  slti         a4, a1, -1141
                  blt          s3, sp, 515f
515:              srl          zero, s10, t4
516:              sub          zero, a3, a4
                  auipc        a7, 48659
                  srai         s3, a6, 14
                  srai         a5, tp, 24
                  andi         t3, s0, 1044
                  srai         t6, t2, 24
                  xori         t6, a2, -881
                  bltu         sp, t2, 526f
                  and          sp, a4, s8
                  or           a0, s8, s11
526:              bne          a0, sp, 530f
                  lui          t5, 123161
                  sltu         t3, t5, a5
                  bltu         a6, s5, 549f
530:              or           sp, gp, s0
                  slti         t6, t1, -1617
                  slt          s8, s5, s10
                  addi         s11, t1, -954
                  srai         a7, sp, 9
                  srl          s2, s8, a6
                  sltiu        t1, sp, -92
                  bgeu         a6, a4, 547f
                  sltu         t5, a7, t4
                  sub          s8, a1, a4
                  la           s10, region_0+110 #start riscv_load_store_rand_instr_stream_14
                  sub          a7, a5, s11
                  srl          t1, s9, t5
                  lh           s11, -10(s10)
                  sub          s7, a1, s11
                  slt          s11, s1, s7
                  sb           gp, 9(s10)
                  sltiu        a6, t6, 716
                  sltu         s6, s3, a4
                  sb           a5, 16(s10)
                  sub          t3, sp, s4
                  add          ra, s3, s9
                  or           a3, ra, s1
                  slti         a0, s4, -1199
                  srai         t0, s4, 6
                  lb           zero, 11(s10)
                  andi         s6, s9, 398
                  sb           t5, 6(s10)
                  sltu         sp, gp, sp
                  sh           a5, 2(s10)
                  and          a2, s4, s3
                  and          gp, sp, a1
                  slt          s7, s4, s8
                  sra          a6, s11, gp
                  sh           s2, -2(s10)
                  sb           a1, -13(s10)
                  sb           t0, 1(s10)
                  nop
                  lbu          a3, 6(s10) #end riscv_load_store_rand_instr_stream_14
                  lui          s11, 65282
                  srl          t6, t3, s3
                  srli         s9, a4, 31
                  bge          t1, a7, 559f
                  andi         t6, sp, 580
                  bne          a2, a7, 553f
                  or           s8, s7, gp
547:              bne          s1, s4, 566f
                  srl          t1, t4, a1
549:              and          zero, s4, ra
                  ori          t3, a1, -385
                  nop
                  bge          s11, sp, 563f
553:              sub          a4, gp, t1
                  slli         t5, s6, 20
                  auipc        ra, 185610
                  andi         t1, s6, -1916
                  or           t5, t3, s4
                  ori          a4, a6, -640
559:              bgeu         s6, s0, 579f
                  add          t4, t2, a1
                  add          s7, s3, zero
                  sra          s3, zero, ra
563:              bne          t6, s6, 568f
                  bgeu         t5, a2, 566f
                  sra          tp, sp, s1
566:              xor          s1, a2, a2
                  sltu         s7, s10, s3
568:              blt          s7, s3, 583f
                  bgeu         s0, a4, 572f
                  nop
                  slti         gp, s7, -1063
572:              sra          s1, a7, t2
                  bltu         s3, a1, 577f
                  addi         s8, s8, 1763
                  srl          a3, a6, ra
                  slli         t3, zero, 1
577:              srl          s3, t6, s6
                  ori          s8, t4, -106
579:              bge          tp, gp, 598f
                  xor          s3, s0, s0
                  andi         tp, s2, -1200
                  sub          t4, a1, s8
583:              sra          t1, a3, s1
                  sra          sp, a6, t3
                  bne          a1, t6, 598f
                  slti         a7, t6, -290
                  bne          s3, s2, 590f
                  sub          a4, s2, s11
                  bgeu         t3, s6, 591f
590:              sltu         a6, s6, s0
591:              bgeu         gp, a5, 593f
                  bne          s10, t1, 610f
593:              add          t6, a3, a2
                  lui          a5, 554679
                  nop
                  or           a2, s10, a2
                  srai         a6, s9, 6
598:              xori         a7, t1, -194
                  sll          s5, a0, t0
                  xor          t6, a7, s7
                  lui          s3, 746636
                  sra          s11, s4, s7
                  add          s5, a7, t4
                  bltu         s2, t1, 610f
                  bne          s5, t4, 617f
                  slli         t1, sp, 20
                  slti         t3, a0, -700
                  sub          t5, t6, s5
                  sra          a5, s4, t1
610:              bgeu         t2, s2, 625f
                  lui          s9, 577133
                  add          a2, t6, s4
                  xori         a5, a0, 1446
                  xori         s5, s1, 325
                  beq          t2, s2, 623f
                  bge          tp, a2, 622f
617:              sltu         s5, t0, s2
                  bge          t4, s1, 624f
                  nop
                  auipc        a3, 339633
                  beq          zero, s3, 622f
622:              slt          tp, s5, sp
623:              add          zero, s7, a7
624:              slt          s7, zero, s4
625:              slti         ra, s2, -681
                  slt          s2, a5, ra
                  sll          s1, a3, s4
                  ori          tp, a3, -1416
                  ori          gp, s6, 265
                  auipc        tp, 511829
                  srli         s6, s3, 30
                  sltu         a1, s6, t1
                  xor          a3, a6, a3
                  auipc        t0, 960612
                  and          sp, a2, s9
                  sll          a4, t4, ra
                  bne          s9, s6, 655f
                  srli         gp, s4, 18
                  bgeu         t4, s6, 645f
                  sub          zero, a1, t3
                  sltu         a3, t2, a1
                  srli         s1, s6, 27
                  ori          a6, a1, -1437
                  slli         a3, a4, 25
645:              lui          t4, 668281
                  and          s3, s0, a5
                  andi         t3, s11, -524
                  bgeu         tp, a2, 651f
                  or           t4, gp, s5
                  srl          s3, s8, a3
651:              slt          tp, a1, s11
                  bltu         t1, a4, 671f
                  auipc        a7, 630494
                  addi         sp, zero, -1480
655:              sll          a6, s8, s3
                  addi         zero, s5, 1538
                  slti         gp, tp, 1319
                  slt          a4, s5, gp
                  sub          s9, s11, s2
                  xori         a7, a4, 1220
                  bltu         s2, a2, 676f
                  bge          s7, sp, 677f
                  slt          s11, s8, a6
                  auipc        t4, 155101
                  srli         ra, s11, 12
                  and          s1, a2, s2
                  bne          s5, gp, 686f
                  slli         s3, sp, 23
                  slt          zero, a0, t4
                  xori         a1, sp, 630
671:              add          s5, a1, s3
                  bne          gp, t4, 685f
                  ori          s1, s5, 626
                  andi         s2, t1, -1193
                  bgeu         t4, a3, 687f
676:              beq          s2, t2, 693f
677:              bne          s9, s1, 682f
                  sll          tp, t2, t0
                  sra          zero, a7, s0
                  or           t6, a5, s0
                  lui          s2, 615374
682:              srli         zero, s1, 16
                  ori          s8, s11, 1547
                  nop
685:              beq          s5, t5, 705f
686:              auipc        a3, 1001152
687:              addi         a6, s1, 1249
                  slli         t3, ra, 12
                  xor          a5, a0, s11
                  or           a7, sp, a4
                  slti         s2, s6, 1694
                  slli         s7, s0, 12
693:              srl          s9, s1, tp
                  or           t3, s5, s7
                  beq          t3, s0, 711f
                  beq          a7, t6, 700f
                  bne          t6, s9, 700f
                  add          ra, t6, t6
                  lui          s5, 131532
700:              lui          s9, 246428
                  bge          s9, s0, 705f
                  srli         t0, s3, 11
                  andi         a0, s5, -1636
                  srl          a3, zero, s1
705:              addi         s2, gp, 1478
                  srli         s11, a3, 5
                  slti         a7, t6, 1928
                  ori          a3, s2, 1729
                  auipc        a5, 186260
                  lui          tp, 778115
711:              slli         s5, a5, 21
                  sltiu        s7, s9, 269
                  lui          t0, 331567
                  beq          s7, t1, 728f
                  sll          a2, a6, gp
                  slt          t0, s10, s0
                  blt          s3, t5, 737f
                  sll          a7, s0, a4
                  sltiu        s5, a3, 169
                  srl          s1, zero, t0
                  sub          t0, s2, a1
                  bne          a6, s7, 724f
                  andi         s1, s11, 574
724:              addi         t5, s6, -1414
                  slt          tp, t1, t3
                  addi         s3, t2, -794
                  bne          a3, a5, 730f
728:              and          t3, a5, a5
                  sra          t0, tp, s11
730:              add          s3, a1, s10
                  xori         a4, s8, 736
                  sltu         s7, s5, s5
                  srl          zero, s11, s7
                  xori         s11, tp, 1373
                  srai         a0, gp, 7
                  nop
737:              sub          a1, a5, t5
                  srai         a2, a3, 30
                  beq          a0, s7, 740f
740:              srai         s10, t4, 14
                  or           t4, t0, s0
                  or           a1, s11, s5
                  sltiu        t5, a6, -485
                  and          t6, a0, s6
                  xori         zero, t0, 910
                  lui          t3, 58682
                  ori          ra, a0, -840
                  bne          sp, t5, 758f
                  sltu         a7, s3, s9
                  or           t6, s4, s11
                  slt          s1, s0, zero
                  andi         a1, a3, 1219
                  srli         s3, t3, 12
                  bgeu         s0, a0, 756f
                  addi         t1, s7, -412
756:              sub          a1, s10, s6
                  slli         a0, a6, 14
758:              srli         a2, s9, 4
                  auipc        a1, 813723
                  srai         t4, s1, 0
                  lui          tp, 181808
                  or           s1, a0, s5
                  and          a5, a5, gp
                  or           a5, t5, t5
                  auipc        s9, 648721
                  blt          s3, sp, 777f
                  slti         t5, t2, 609
                  bgeu         s10, a4, 778f
                  srli         tp, s5, 16
                  blt          t3, tp, 772f
                  xori         s9, s9, 1094
772:              add          s9, a2, a6
                  xori         a6, a6, 620
                  bgeu         t0, tp, 790f
                  srl          s11, s3, a3
                  and          a3, s1, s10
777:              bgeu         s0, s5, 791f
778:              addi         t1, s9, 262
                  nop
                  sub          a5, s8, zero
                  sltiu        sp, s9, -298
                  srl          sp, gp, t3
                  ori          t6, a6, -581
                  sub          s3, t6, s3
                  addi         ra, s3, 26
                  blt          t2, a7, 792f
                  auipc        s1, 796006
                  bge          s2, a7, 798f
                  lui          a1, 770332
790:              and          s5, a6, t6
791:              sub          ra, s3, a2
792:              and          a6, a5, s3
                  slli         a5, t4, 10
                  slti         s2, s4, -1959
                  add          zero, a6, s3
                  addi         s11, s5, -1044
                  slti         t1, t2, -1147
798:              or           s8, s4, s7
                  bgeu         ra, a5, 805f
                  sra          s8, t6, a1
                  sltu         a2, a7, a3
                  xor          s1, s5, s2
                  andi         s11, s9, -635
                  beq          gp, a4, 807f
805:              srli         a2, s5, 25
                  auipc        ra, 305478
807:              lui          a6, 673351
                  add          a6, ra, gp
                  slli         t1, t6, 21
                  srl          a1, s7, t1
                  blt          t0, t5, 819f
                  addi         t4, zero, -519
                  auipc        s10, 806938
                  blt          s9, s2, 827f
                  bne          t6, t5, 816f
816:              sra          s6, s7, a5
                  andi         a2, t6, 669
                  blt          a7, a0, 823f
819:              auipc        t4, 69805
                  srl          sp, t0, a7
                  xori         tp, t2, -1755
                  sra          s1, t1, zero
823:              srl          s9, s10, t2
                  slli         a0, t6, 15
                  bltu         a1, sp, 829f
                  beq          t5, zero, 845f
827:              xor          s1, a6, t3
                  sltu         a6, ra, s3
829:              blt          a4, a3, 840f
                  bge          a7, a1, 832f
                  andi         s10, t3, 894
832:              lui          s6, 996359
                  and          s5, a5, zero
                  xor          s1, s3, s10
                  blt          s3, zero, 836f
836:              slti         s2, s10, 1841
                  sll          t6, a1, a5
                  sra          s11, a3, t2
                  bne          a5, s0, 842f
840:              bltu         a4, ra, 842f
                  add          s6, s4, tp
842:              blt          s0, s9, 845f
                  srli         a5, s4, 8
                  auipc        t3, 120651
845:              add          s1, tp, s6
                  sltiu        a4, s2, 5
                  ori          a4, t1, 51
                  sub          s2, s5, s8
                  bge          a4, s9, 867f
                  nop
                  srl          t1, s1, s11
                  sra          s5, t2, t6
                  srli         t6, a0, 31
                  beq          s9, a2, 869f
                  sltu         s7, t5, t0
                  xor          a6, a7, a2
                  xor          a7, a4, s11
                  slt          s10, s4, gp
                  and          a0, a1, s4
                  andi         a5, a4, -1205
                  xori         a3, s6, 2012
                  sub          a2, a7, zero
                  sltiu        t4, zero, -945
                  blt          zero, t1, 879f
                  srl          s1, a2, t0
                  xori         s9, a6, 623
867:              xori         s7, s9, 1469
                  beq          a2, t3, 887f
869:              xor          tp, s10, a2
                  auipc        s6, 245666
                  bltu         t0, ra, 883f
                  ori          a3, a5, -1082
                  slli         s2, s3, 6
                  bgeu         s3, tp, 894f
                  sll          tp, a2, gp
                  sltiu        a6, s10, -1265
                  sltiu        s2, s3, -1935
                  slt          t5, t5, s11
879:              srai         s9, s4, 30
                  lui          t6, 420821
                  blt          gp, a2, 901f
                  bge          sp, s8, 899f
883:              ori          t3, t0, 1028
                  xor          a1, gp, a6
                  slli         t4, s0, 31
                  sub          t4, a1, s4
887:              bltu         t2, s0, 897f
                  slti         a3, a5, 503
                  ori          a6, s10, -1802
                  addi         s9, a1, -58
                  sll          s3, s1, s11
                  xori         s5, s9, 634
                  sll          a5, a3, t4
894:              srai         s8, zero, 25
                  sltiu        s11, t1, -444
                  and          s6, t6, s5
897:              sltu         s3, s9, s11
                  sltiu        t0, t4, -667
899:              srai         a2, s1, 17
                  and          s10, a2, a7
901:              bne          s2, s8, 905f
                  slli         a5, s0, 30
                  slti         s8, t3, -1811
                  sra          ra, a6, tp
905:              srli         ra, t2, 0
                  beq          a6, sp, 912f
                  or           zero, zero, s3
                  addi         t5, tp, 319
                  xor          a3, s3, s5
                  or           s2, t4, s5
                  bltu         t6, tp, 913f
912:              bltu         sp, a6, 917f
913:              slti         a1, t2, 43
                  bne          a3, zero, 932f
                  ori          s1, t5, 360
                  bne          t3, sp, 919f
917:              srli         s3, t3, 27
                  slti         a1, s2, -1905
919:              blt          t4, sp, 929f
                  slt          sp, s5, t1
                  slli         s8, t2, 5
                  srai         t3, gp, 19
                  beq          s11, t2, 925f
                  sltiu        s10, s7, 1917
925:              sltu         s11, gp, t4
                  bge          gp, a3, 930f
                  bgeu         s5, s11, 928f
928:              sra          t5, a3, t1
929:              bne          t2, tp, 935f
930:              sltiu        s1, s6, 1771
                  add          s11, t2, s3
932:              bgeu         a6, s8, 951f
                  andi         t3, s7, -1835
                  or           s7, s8, t3
935:              slli         zero, t2, 5
                  sltu         gp, s9, zero
                  andi         ra, gp, 1738
                  blt          zero, t3, 940f
                  lui          t4, 178329
940:              addi         a2, t1, -2027
                  nop
                  bltu         a6, sp, 950f
                  nop
                  sub          zero, t6, s8
                  srl          a4, gp, s9
                  and          a2, a3, s5
                  nop
                  slti         s11, tp, 1574
                  andi         s3, s6, -856
950:              ori          a1, ra, -226
951:              slti         t4, t5, -1655
                  addi         a0, s0, 618
                  sll          ra, s3, tp
                  and          t5, s1, gp
                  lui          s11, 906887
                  srli         s2, s3, 25
                  addi         a2, sp, -800
                  blt          s2, t1, 969f
                  srl          a2, gp, a5
                  add          s3, s7, t6
                  and          ra, tp, t6
                  bgeu         s2, s10, 965f
                  or           t0, t2, a4
                  bne          s10, a5, 974f
965:              lui          tp, 697668
                  bge          t0, a0, 970f
                  slli         s9, s8, 15
                  slli         t4, t1, 29
969:              addi         a7, t5, -1729
970:              auipc        a7, 762185
                  bge          a1, s6, 990f
                  add          a5, s9, s5
                  addi         t5, tp, -33
974:              xori         a0, a1, 1784
                  slti         a6, zero, -539
                  and          t6, a1, ra
                  beq          t2, a2, 978f
978:              sll          a0, a7, zero
                  slt          t6, tp, s7
                  slli         tp, s6, 29
                  lui          s3, 322083
                  blt          a3, s11, 997f
                  ori          s7, s8, 62
                  and          a6, s4, a3
                  nop
                  sub          t0, t5, t6
                  srl          a0, s9, s10
                  bge          a1, t0, 990f
                  sra          sp, s0, s0
990:              srai         s3, zero, 26
                  sra          a0, s1, s3
                  slli         s10, a2, 2
                  sltu         a3, s9, s5
                  slli         tp, t4, 28
                  srli         a7, s3, 12
                  blt          t4, gp, 999f
997:              ori          a0, t6, 1729
                  sltu         zero, t2, t2
999:              ori          a6, s0, 920
                  nop
                  sltiu        a5, tp, 1975
                  slti         s5, t1, -1851
                  andi         a6, a5, 150
                  addi         a4, s1, 279
                  srl          a5, s10, zero
                  slt          t1, a1, tp
                  srai         t1, ra, 22
                  sra          s6, t0, a4
                  auipc        s7, 122898
                  or           a4, tp, a4
                  add          a1, t1, a4
                  add          t5, t1, t2
                  beq          gp, s9, 1033f
                  sltu         s1, t3, s0
                  slti         t4, zero, -1518
                  bge          s7, tp, 1029f
                  xor          s5, s10, tp
                  srli         s3, t4, 15
                  srl          s3, ra, t5
                  add          zero, tp, tp
                  sra          s6, t3, s9
                  and          s7, t0, gp
                  auipc        sp, 183386
                  bne          a2, ra, 1040f
                  bgeu         s7, zero, 1042f
                  sll          a2, s1, a7
                  beq          s7, s1, 1042f
                  srl          a6, s6, zero
1029:             or           t3, s10, a7
                  andi         s3, a0, 541
                  slti         s6, a6, 659
                  addi         t3, a0, -1693
1033:             andi         a7, s2, 139
                  srli         a6, zero, 7
                  sll          gp, zero, s10
                  add          a7, s3, a2
                  bne          t2, t2, 1051f
                  auipc        s10, 1011057
                  add          s10, a7, a7
1040:             blt          s2, s11, 1060f
                  srli         s5, s3, 28
1042:             lui          s3, 250289
                  srl          t0, s0, a6
                  sll          a1, t1, sp
                  xori         t6, s5, 1926
                  bgeu         a5, s7, 1052f
                  bltu         sp, t5, 1053f
                  and          a7, tp, s2
                  slli         a2, s9, 24
                  or           t1, s6, gp
1051:             ori          t4, sp, 875
1052:             slti         s1, gp, -873
1053:             ori          t4, gp, 1412
                  and          tp, s9, s8
                  bltu         s4, a2, 1067f
                  sltu         a4, a7, t3
                  beq          t5, t0, 1063f
                  addi         s8, t0, -28
                  and          t3, s2, s7
1060:             add          a2, a3, s8
                  srai         s7, s8, 15
                  bgeu         ra, s7, 1073f
1063:             addi         a6, a6, -746
                  ori          s7, a3, 545
                  srl          a2, s0, s2
                  or           t5, a3, s9
1067:             addi         sp, t2, -1329
                  add          a5, sp, s3
                  auipc        zero, 665269
                  srli         a7, a4, 8
                  blt          t2, t5, 1079f
                  add          s1, s3, a5
1073:             sub          gp, a5, t2
                  ori          s9, s10, -1297
                  sra          s10, s7, a4
                  sub          s6, s10, t6
                  or           s5, gp, t5
                  nop
1079:             sra          s5, tp, t6
                  slt          s3, a7, s7
                  srai         t4, sp, 29
                  and          a0, t5, s3
                  sub          s8, a7, t6
                  sltiu        t3, s10, 1471
                  bge          s1, a7, 1100f
                  xor          s1, s7, t3
                  srai         s2, t5, 9
                  nop
                  auipc        sp, 905884
                  or           t3, gp, a5
                  sltiu        ra, s3, 1476
                  xor          gp, t5, s11
                  sll          a4, a2, s2
                  sltu         s1, a7, sp
                  ori          a4, zero, -1987
                  sll          s1, s4, s3
                  srli         a3, s6, 15
                  sll          s7, s3, a1
                  bge          a4, s8, 1116f
1100:             srli         a3, t6, 24
                  slti         s9, t3, -1810
                  srl          s5, a0, s5
                  auipc        t3, 994648
                  xori         s5, s8, 1911
                  lui          a4, 1020164
                  bge          t0, a7, 1107f
1107:             srli         a7, s11, 22
                  ori          s3, s9, -475
                  and          s2, t5, a5
                  srli         t1, a2, 3
                  auipc        s6, 465743
                  add          a0, a5, t3
                  and          s10, t0, s8
                  bltu         s6, t3, 1116f
                  sll          sp, a7, zero
1116:             slt          t3, t0, sp
                  nop
                  bltu         s10, s4, 1128f
                  beq          s8, sp, 1123f
                  bgeu         s3, s2, 1126f
                  beq          a7, a5, 1123f
                  addi         t1, s4, 661
1123:             sll          a1, s0, t3
                  andi         gp, t6, 1963
                  and          gp, a1, ra
1126:             bne          s6, s5, 1141f
                  slti         s1, a1, 299
1128:             slli         a4, s11, 22
                  srai         ra, s0, 20
                  xori         s7, a5, -1883
                  bgeu         a1, a6, 1150f
                  and          sp, s5, t6
                  beq          s0, a6, 1153f
                  sra          gp, t0, a7
                  srli         s3, s6, 31
                  srai         s11, gp, 6
                  sll          a7, a5, t4
                  bgeu         ra, a2, 1140f
                  slti         s7, tp, 1849
1140:             xori         a0, s3, -1868
1141:             bgeu         gp, a7, 1145f
                  sltu         s9, s8, s2
                  bne          s11, s3, 1148f
                  bne          s6, t0, 1158f
1145:             sltu         s9, s11, zero
                  sll          s9, a2, sp
                  add          s3, tp, s7
1148:             srl          s5, tp, t6
                  bge          s10, s2, 1165f
1150:             slt          tp, a3, s7
                  auipc        a2, 880765
                  bgeu         ra, gp, 1158f
1153:             srai         s5, a0, 8
                  xor          gp, t0, s5
                  add          tp, s7, a6
                  andi         s1, zero, 1500
                  srli         s8, t0, 8
1158:             srai         s11, t6, 0
                  sll          zero, gp, a1
                  slt          a3, a5, s11
                  sltu         a5, s11, a3
                  srai         s1, s9, 30
                  add          t3, a4, t4
                  slt          gp, s6, s9
1165:             bltu         s8, a4, 1178f
                  auipc        s6, 954205
                  sub          s11, a6, s11
                  or           s9, s2, s9
                  beq          a4, s7, 1172f
                  srl          s3, t4, sp
                  ori          sp, a7, -843
1172:             or           s10, ra, t0
                  sll          s2, s10, t0
                  bne          a3, a6, 1177f
                  sll          s10, a3, s1
                  sltu         s3, ra, a1
1177:             sltiu        a5, s3, -877
1178:             ori          a3, s5, 533
                  bgeu         gp, t3, 1182f
                  slti         t1, a0, 21
                  slt          s10, sp, t3
1182:             sub          gp, s1, t4
                  bge          a4, t3, 1184f
1184:             srai         tp, tp, 25
                  sub          s9, a1, s3
                  slt          s2, t0, s2
                  bne          t5, s5, 1206f
                  beq          a6, a6, 1198f
                  slti         a5, tp, 759
                  auipc        zero, 737818
                  or           t3, a2, a6
                  beq          t2, t3, 1204f
                  lui          a5, 1013464
                  xori         ra, ra, 1350
                  bgeu         s9, s8, 1215f
                  xori         t6, a4, 1185
                  beq          t4, a2, 1215f
1198:             srli         s10, a3, 16
                  and          t3, a5, zero
                  beq          a2, t0, 1216f
                  bge          s4, s5, 1209f
                  srai         t4, s10, 18
                  andi         t6, s11, 1822
1204:             xori         tp, s1, -862
                  sll          s6, s7, a4
1206:             bne          a4, t0, 1221f
                  bne          s11, zero, 1226f
                  or           t3, s11, s2
1209:             bge          a0, a7, 1229f
                  slti         gp, a3, -1039
                  slt          t0, t5, s7
                  add          s8, s9, zero
                  sll          s3, t0, a7
                  bgeu         s3, a4, 1219f
1215:             beq          t4, a5, 1219f
1216:             blt          s1, sp, 1219f
                  bne          s8, t4, 1231f
                  slt          tp, s3, a7
1219:             bgeu         a0, s1, 1222f
                  beq          s0, t4, 1223f
1221:             srli         s9, t5, 6
1222:             sub          t3, s11, s4
1223:             auipc        t4, 136845
                  add          a1, s5, t4
                  auipc        t1, 136164
1226:             bne          s0, tp, 1228f
                  xor          gp, s10, s11
1228:             srl          t4, s8, a1
1229:             sll          sp, s2, s3
                  xor          tp, t3, t2
1231:             bgeu         a5, zero, 1246f
                  sll          sp, s5, zero
                  srai         s8, t6, 24
                  beq          t6, s5, 1240f
                  srl          a0, t0, s8
                  bgeu         s5, t1, 1248f
                  bgeu         t4, t3, 1250f
                  srai         tp, sp, 12
                  bgeu         ra, s4, 1249f
1240:             nop
                  sra          gp, t1, s4
                  slti         t0, a3, 1105
                  ori          t5, s6, 230
                  bne          zero, a5, 1248f
                  blt          t3, s11, 1263f
1246:             and          t6, s4, t1
                  bne          s11, a5, 1249f
1248:             slti         s6, gp, 120
1249:             xor          t5, a6, s8
1250:             sll          t6, a5, a0
                  slti         t5, s10, 1703
                  addi         t3, s7, 1553
                  ori          a4, a5, -1774
                  nop
                  or           a1, ra, t5
                  auipc        a3, 674094
                  bge          s5, s4, 1268f
                  srli         s3, s7, 15
                  slti         a7, s10, -714
                  lui          a3, 856279
                  sltu         t3, s2, s9
                  or           a1, t6, zero
1263:             and          t1, s11, a3
                  srli         s3, s7, 2
                  nop
                  sub          t6, s6, s0
                  nop
1268:             auipc        t6, 581084
                  or           t1, a7, tp
                  sub          s8, a2, a6
                  ori          tp, s1, -530
                  addi         a6, t5, -714
                  auipc        t5, 800167
                  auipc        s8, 656554
                  sltu         t0, s11, s1
                  add          ra, s4, s7
                  sra          s3, s7, ra
                  srai         a7, s5, 23
                  bltu         a4, t3, 1285f
                  or           s6, a0, zero
                  srli         a0, a4, 28
                  sll          zero, a7, t1
                  auipc        s1, 752313
                  sltu         a6, s8, s7
1285:             bgeu         gp, t4, 1286f
1286:             slti         s10, a1, -1714
                  andi         a6, a6, 396
                  beq          s5, a3, 1290f
                  and          s11, s6, t1
1290:             bne          s11, s0, 1309f
                  andi         zero, s1, 466
                  srli         a0, a1, 14
                  and          gp, ra, s10
                  sll          tp, s1, gp
                  bgeu         a5, s9, 1296f
1296:             sra          a5, ra, zero
                  sub          s5, s0, s8
                  and          t1, s7, a5
                  slli         sp, gp, 16
                  srli         s6, a4, 14
                  or           t0, s4, t1
                  add          t3, t4, s6
                  sra          s5, s0, s11
                  add          a1, a6, a7
                  addi         a0, t5, 359
                  nop
                  lui          t5, 238191
                  slti         s3, s2, -546
1309:             lui          ra, 190126
                  xori         a7, a3, -1168
                  addi         a3, s7, -1401
                  sub          t3, a3, a3
                  andi         ra, a1, -998
                  sub          s7, a1, ra
                  slt          a2, a5, a1
                  srli         s8, t3, 30
                  slti         gp, s2, 685
                  lui          tp, 249721
                  blt          s8, s3, 1329f
                  or           a1, s3, s5
                  srli         s1, zero, 16
                  bltu         a0, t5, 1339f
                  andi         gp, s10, 1728
                  ori          a4, a6, 1204
                  andi         s5, ra, 1173
                  blt          tp, gp, 1346f
                  bge          s5, s6, 1333f
                  bgeu         ra, a3, 1342f
1329:             andi         tp, a3, 1265
                  sll          a2, s1, s1
                  bge          a3, s4, 1335f
                  sltu         s6, s10, a7
1333:             slli         s2, s10, 29
                  slli         tp, a4, 23
1335:             auipc        s6, 1034345
                  auipc        t4, 212330
                  srl          s5, t2, s5
                  add          t3, s3, a5
1339:             sub          t6, t5, a1
                  add          s11, gp, s0
                  bgeu         a2, tp, 1357f
1342:             nop
                  sll          s3, t5, t3
                  bne          s6, s10, 1350f
                  srl          zero, t5, a5
1346:             srli         t6, s8, 14
                  bltu         t5, a1, 1355f
                  sub          t1, sp, s2
                  srai         a4, a7, 8
1350:             slt          a4, gp, t0
                  slt          a3, t6, zero
                  srl          s11, t0, s11
                  andi         s10, a3, -28
                  nop
1355:             sub          gp, s8, sp
                  sltiu        s11, a5, 1808
1357:             srl          s3, a4, a5
                  xor          a4, t1, t5
                  ori          a3, a7, 792
                  xori         s9, a2, -564
                  xori         t4, t5, -250
                  sltiu        sp, a5, -1156
                  bge          zero, t0, 1366f
                  add          a5, t4, s6
                  slt          a3, a4, s3
1366:             slli         a2, a6, 20
                  bgeu         s0, t4, 1379f
                  sra          s9, a2, tp
                  xori         a3, s0, 1490
                  sll          sp, a1, s2
                  sll          a6, a7, gp
                  srl          zero, s8, s8
                  ori          tp, a2, -1293
                  xor          t1, gp, a0
                  slt          a5, a4, t1
                  sub          s2, ra, s11
                  lui          s3, 686388
                  slt          s2, s9, tp
1379:             andi         s2, s6, -407
                  or           s6, s7, t3
                  xori         a5, a3, -148
                  ori          t5, s8, 981
                  blt          s11, s2, 1386f
                  srl          t3, t1, a0
                  srli         a1, zero, 9
1386:             ori          a6, gp, 1955
                  bgeu         t1, a7, 1391f
                  and          s7, a0, ra
                  blt          s3, s9, 1399f
                  ori          s10, a1, -942
1391:             slti         t3, s4, -1265
                  blt          t1, a3, 1402f
                  slli         s6, ra, 26
                  xor          t6, s7, s9
                  slli         gp, t1, 7
                  slt          t3, a2, t5
                  slli         ra, tp, 30
                  slti         gp, s4, 1735
1399:             sll          a6, s4, t0
                  sltu         ra, ra, sp
                  nop
1402:             andi         s6, t4, 2036
                  slti         zero, a1, -208
                  or           ra, a4, s4
                  or           s9, s4, t0
                  andi         a6, a6, 1997
                  addi         a0, t2, 1013
                  andi         sp, a1, -143
                  bge          a4, t1, 1428f
                  nop
                  ori          a4, t2, -1803
                  xori         sp, s4, 130
                  bge          a3, a7, 1415f
                  beq          s2, s8, 1420f
1415:             add          t0, s8, s6
                  sub          t6, s0, zero
                  and          t0, ra, s10
                  blt          t6, t3, 1433f
                  nop
1420:             beq          a6, a7, 1421f
1421:             or           s1, s4, s1
                  slli         s11, s3, 22
                  slt          s10, ra, a5
                  slti         sp, s11, 1922
                  add          t0, a4, a4
                  srai         t1, s8, 13
                  bne          a7, s4, 1428f
1428:             xori         s6, s0, -1555
                  slt          a7, a1, a0
                  sltu         a5, zero, s4
                  lui          s9, 550868
                  srli         a5, a0, 25
1433:             slt          a0, s9, a0
                  sra          sp, s4, s11
                  andi         s8, a1, -722
                  lui          tp, 624345
                  and          a7, s3, t2
                  slti         a5, t3, -1404
                  slli         t5, gp, 5
                  srli         a3, s7, 22
                  add          t4, t2, gp
                  srli         t3, a3, 13
                  and          t5, s8, a3
                  blt          s10, a0, 1459f
                  sub          t4, s3, a4
                  bne          s1, a0, 1459f
                  sra          a3, a2, s0
                  srl          a4, t1, a4
                  sra          gp, a7, s5
                  and          a0, a7, s3
                  or           a5, t3, s4
                  ori          s6, a6, 1095
                  bge          s1, a4, 1471f
                  xor          t3, s1, a2
                  bltu         s0, s10, 1460f
                  srli         a6, s0, 15
                  bltu         t0, s8, 1463f
                  sub          a0, t3, s4
1459:             slt          zero, a4, a2
1460:             bge          s5, s9, 1477f
                  slli         s6, a1, 16
                  blt          ra, t1, 1473f
1463:             sltiu        sp, t3, -213
                  xor          ra, s6, t2
                  andi         s1, s9, -102
                  srl          tp, s5, tp
                  xor          t3, a1, t5
                  bne          s8, t1, 1470f
                  slli         s3, s9, 20
1470:             xori         a6, tp, -1052
1471:             addi         s8, s0, 1028
                  sll          zero, a1, a0
1473:             sra          zero, s3, t3
                  sltu         t4, a1, a4
                  sub          t6, t1, t3
                  sltu         a0, zero, sp
1477:             and          a3, a0, s10
                  blt          s6, s0, 1498f
                  srli         t4, t3, 17
                  slli         s3, s7, 8
                  or           gp, a5, s0
                  sra          ra, a4, s3
                  auipc        s5, 589893
                  bne          a2, ra, 1504f
                  srai         s10, t1, 16
                  srli         ra, a1, 9
                  srai         a7, tp, 13
                  add          s2, s11, gp
                  srl          s6, a7, a5
                  ori          a3, a4, -338
                  slti         s10, s8, 1642
                  beq          s3, sp, 1511f
                  nop
                  bgeu         s5, t5, 1497f
                  sll          s7, a5, a6
                  slti         s2, s10, 855
1497:             slt          t0, t3, t1
1498:             sub          a5, sp, t3
                  or           t6, t2, t4
                  nop
                  bltu         a2, a1, 1503f
                  bgeu         s2, a0, 1517f
1503:             bge          a1, s1, 1509f
1504:             ori          s10, gp, 1404
                  ori          sp, a2, -1565
                  lui          s10, 627515
                  srli         zero, a5, 29
                  sub          a0, s3, t2
1509:             srai         a2, s4, 0
                  bltu         zero, s8, 1521f
1511:             xor          s10, s10, s9
                  srli         s11, t2, 2
                  bgeu         t4, s6, 1517f
                  xor          a2, a6, a6
                  and          a6, a6, s6
                  nop
1517:             bge          s10, a3, 1521f
                  slli         ra, gp, 22
                  srl          a0, s8, zero
                  srai         gp, t3, 14
1521:             slli         a1, s4, 4
                  sub          a1, sp, a2
                  srli         s8, s5, 28
                  blt          s9, t4, 1526f
                  and          gp, a1, ra
1526:             blt          s11, gp, 1528f
                  auipc        a4, 489310
1528:             sll          t0, gp, s5
                  addi         a6, sp, 1098
                  srl          s10, a7, gp
                  blt          ra, a2, 1544f
                  sltiu        t6, a7, -1137
                  slli         t3, s2, 2
                  sub          a2, s2, s11
                  bne          t4, s10, 1537f
                  sltu         a4, a4, s1
1537:             bge          s0, zero, 1553f
                  blt          t0, a7, 1539f
1539:             sltiu        a1, t3, -737
                  beq          zero, s6, 1559f
                  xor          zero, s11, gp
                  srli         a6, s5, 12
                  ori          s1, gp, 1522
1544:             sltiu        zero, a2, 637
                  srl          t6, t4, a7
                  add          a5, a5, gp
                  srli         s5, s1, 30
                  sra          s10, a0, t1
                  sltiu        s8, a7, 1241
                  ori          a5, a7, 1655
                  beq          a5, zero, 1557f
                  andi         tp, a4, 1282
1553:             xori         s8, s2, 292
                  srli         sp, t4, 3
                  slti         t0, s4, 1462
                  and          t5, a7, tp
1557:             xor          t4, s7, a3
                  xor          a5, s3, sp
1559:             bne          s10, t4, 1560f
1560:             sll          a0, a5, ra
                  sltiu        a5, s8, 663
                  sra          t0, s6, t5
                  or           a1, s0, zero
                  slti         gp, s9, -1550
                  beq          s8, a0, 1568f
                  blt          ra, s4, 1569f
                  ori          a0, s0, -1526
1568:             sra          s10, a5, s7
1569:             addi         s2, a1, 767
                  ori          t1, s10, -1651
                  xor          t6, t5, a0
                  add          t4, t5, t6
                  bge          t6, t5, 1581f
                  and          s2, s8, s11
                  sra          s3, t0, ra
                  srl          t0, s0, s7
                  srli         tp, s1, 31
                  or           sp, t1, t0
                  or           zero, gp, a4
                  bne          sp, a0, 1590f
1581:             blt          zero, s3, 1593f
                  nop
                  xor          a7, a5, a0
                  beq          a4, a5, 1594f
                  slli         t6, s4, 31
                  auipc        ra, 885517
                  beq          tp, s2, 1602f
                  auipc        a1, 211401
                  nop
1590:             lui          s5, 752270
                  addi         a6, s1, 1451
                  xor          s7, t4, a4
1593:             slt          a7, zero, zero
1594:             sltu         a7, s2, a1
                  and          s7, tp, s4
                  sra          s2, a6, a1
                  sra          t4, s3, a5
                  addi         s8, s1, -301
                  add          a7, a5, a5
                  add          s3, s0, sp
                  and          a3, s7, t3
1602:             sll          a6, s5, s1
                  addi         t3, s4, 1263
                  sltiu        t4, zero, 729
                  srl          s6, a4, t3
                  auipc        a0, 26973
                  andi         tp, a7, 1981
                  blt          t4, a1, 1628f
                  sub          s5, s2, t0
                  bne          s2, a7, 1629f
                  sltiu        t3, zero, 104
                  blt          s0, s1, 1618f
                  slli         a4, t1, 14
                  bne          s1, s6, 1617f
                  sll          s8, s11, s7
                  srl          a3, a6, t1
1617:             addi         s6, s1, 251
1618:             auipc        s1, 854645
                  and          tp, t3, s8
                  blt          s2, s2, 1640f
                  addi         a7, t6, 285
                  sra          s6, s2, s7
                  bltu         s3, tp, 1628f
                  or           s5, t1, s4
                  andi         sp, s3, 6
                  sll          zero, t2, s5
                  lui          a1, 565488
1628:             nop
1629:             auipc        t1, 558543
                  nop
                  slti         a4, a2, 1644
                  bltu         a4, s1, 1646f
                  sll          a6, gp, a1
                  sltu         a2, s1, t6
                  lui          s7, 546016
                  sll          a3, a2, s0
                  bge          t0, a2, 1654f
                  sub          a3, gp, s3
                  bgeu         a2, t1, 1657f
1640:             addi         a2, a3, 1342
                  slli         t3, s3, 31
                  sra          sp, t3, a2
                  sll          a1, a0, s3
                  xor          a6, a2, s2
                  andi         sp, a2, -671
1646:             srai         a4, zero, 0
                  bge          t0, tp, 1662f
                  or           t6, t4, ra
                  add          ra, s7, s3
                  xori         s9, tp, 1015
                  lui          gp, 885003
                  nop
                  sra          t1, a2, gp
1654:             srli         s2, a4, 26
                  sll          t0, sp, t3
                  xori         tp, s3, 440
1657:             and          s7, s8, a5
                  lui          s5, 296655
                  sll          t3, s10, a0
                  slli         s9, s7, 24
                  bge          sp, tp, 1675f
1662:             ori          sp, t5, -1352
                  srai         s6, s7, 13
                  auipc        t3, 885861
                  slt          tp, t0, s3
                  bltu         s5, s7, 1668f
                  ori          a0, tp, 1021
1668:             sltu         tp, a1, t5
                  bge          s9, a2, 1673f
                  ori          a1, ra, -35
                  bge          s5, s0, 1673f
                  slti         tp, t2, 357
1673:             srli         a7, a2, 11
                  xor          s9, s8, a1
1675:             xor          t1, a7, a4
                  srli         t1, s1, 10
                  blt          s7, s6, 1680f
                  and          t6, a2, t6
                  srli         a0, s10, 17
1680:             sub          s1, t0, a0
                  bgeu         t0, a7, 1689f
                  slt          a0, s4, a5
                  or           s3, a5, s11
                  nop
                  or           s1, s1, t3
                  srl          t3, s11, s4
                  slti         a3, a7, -595
                  nop
1689:             andi         t5, zero, 176
                  slt          t0, sp, sp
                  slli         a6, s0, 21
                  sltiu        a6, t2, 113
                  add          a5, tp, t2
                  blt          s11, s0, 1695f
1695:             beq          t2, s5, 1696f
1696:             bne          t3, t2, 1701f
                  bge          ra, ra, 1715f
                  addi         s11, t3, 245
                  sltu         s1, tp, t3
                  add          s3, s2, ra
1701:             bne          t6, a5, 1711f
                  ori          t4, tp, -1100
                  sltiu        s1, s8, -19
                  and          t6, gp, gp
                  blt          s9, t2, 1715f
                  bge          a4, t5, 1712f
                  or           a2, s0, tp
                  srai         s10, a0, 6
                  srl          s8, s6, s11
                  or           a1, t2, s2
1711:             bge          s4, s10, 1730f
1712:             sll          sp, t0, s0
                  slt          zero, s2, zero
                  bltu         s7, s7, 1730f
1715:             add          s7, t4, t3
                  sltu         a1, s1, a0
                  xori         s8, s2, -1009
                  slti         t4, s0, 1915
                  add          t5, tp, s6
                  slt          s2, ra, s0
                  add          t6, a6, a1
                  auipc        a6, 115781
                  beq          sp, s10, 1735f
                  andi         t0, a2, 1096
                  and          ra, ra, zero
                  andi         s2, a6, 844
                  slti         s1, t2, -542
                  nop
                  bne          a2, s2, 1740f
1730:             auipc        a2, 587519
                  and          t3, s5, tp
                  slti         s5, t1, 1256
                  beq          s9, s1, 1739f
                  srl          a6, s1, s0
1735:             blt          gp, s10, 1755f
                  sltiu        s1, s0, 1854
                  addi         a4, a4, 1630
                  lui          a2, 611317
1739:             nop
1740:             sub          ra, t0, s10
                  blt          s5, t1, 1744f
                  add          sp, tp, a6
                  srl          t5, a6, t2
1744:             lui          a7, 931920
                  xori         s2, s8, 1295
                  bne          s9, zero, 1750f
                  bge          t4, sp, 1767f
                  srl          a5, a2, s9
                  beq          a1, t2, 1752f
1750:             slt          s10, a0, s5
                  auipc        a6, 856447
1752:             ori          s5, s9, 1307
                  slt          a2, t1, s3
                  auipc        s6, 267036
1755:             lui          ra, 798911
                  sltu         s3, a5, s7
                  srli         t6, s8, 9
                  sub          tp, a5, s7
                  sll          a2, s9, a0
                  or           t0, s11, s4
                  bne          s7, s6, 1780f
                  bltu         s1, s4, 1779f
                  add          s9, zero, s3
                  andi         s3, s8, -1721
                  xori         a0, t2, -1950
                  xori         zero, s9, -732
1767:             bgeu         t0, s0, 1782f
                  xor          s2, a6, zero
                  bgeu         t0, a2, 1775f
                  nop
                  bne          s1, s3, 1784f
                  bne          a1, s3, 1774f
                  sll          s2, t5, a2
1774:             lui          a1, 781945
1775:             slt          s9, t3, s7
                  beq          a6, a6, 1781f
                  lui          s11, 50784
                  bge          s4, t2, 1780f
1779:             addi         a3, a7, 193
1780:             addi         s3, t6, -1141
1781:             slt          ra, t2, t3
1782:             xori         a6, s3, 1244
                  sltu         t5, a2, s7
1784:             bge          a6, a4, 1790f
                  sra          s2, t2, s3
                  srl          tp, s3, a5
                  sltu         s5, s8, s4
                  beq          t2, s8, 1791f
                  sub          a7, gp, a5
1790:             sra          a0, a0, a6
1791:             sub          a7, a1, s6
                  srai         sp, t0, 21
                  sub          s11, s1, s4
                  sltu         s3, a0, t0
                  ori          a4, s11, 965
                  addi         s10, a3, 44
                  slli         s7, zero, 10
                  slt          t6, s0, s8
                  auipc        ra, 267810
                  srl          a4, a5, a6
                  srl          t4, s5, a2
                  lui          s1, 728113
                  slt          a0, a2, s9
                  bge          a4, a3, 1824f
                  bltu         ra, a0, 1824f
                  addi         a5, s5, -1569
                  ori          s5, t0, -537
                  bgeu         t0, ra, 1818f
                  sltiu        ra, s8, -1286
                  blt          gp, s2, 1826f
                  sltu         t3, s8, t0
                  xori         a5, s3, 354
                  slli         s6, t0, 5
                  xori         a7, t4, -182
                  srli         a6, ra, 18
                  sll          t1, zero, a7
                  sltiu        t4, s6, 1597
1818:             srl          sp, a3, a3
                  bge          a7, tp, 1832f
                  sra          a7, a3, s4
                  nop
                  beq          s5, ra, 1837f
                  auipc        t5, 11624
1824:             srai         t6, ra, 9
                  srli         s8, t2, 16
1826:             srai         s1, t5, 1
                  sub          tp, a5, a0
                  ori          a5, a4, 1585
                  add          a3, t5, s8
                  addi         s7, s3, -826
                  xor          a4, s4, s4
1832:             lui          sp, 429268
                  sub          t5, s7, s11
                  beq          s2, s1, 1836f
                  sltiu        s11, a1, 522
1836:             blt          s7, a6, 1838f
1837:             srl          a2, s9, zero
1838:             srl          t6, s10, t2
                  lui          sp, 542597
                  srl          t5, t5, s2
                  and          s2, a0, gp
                  xor          s6, t0, a2
                  srai         a1, s6, 31
                  andi         s8, s10, 327
                  srai         a1, sp, 9
                  beq          s8, t2, 1856f
                  or           a1, t2, t1
                  sltu         t0, a7, ra
                  and          s9, s6, a1
                  blt          t3, t5, 1864f
                  nop
                  or           t3, a6, a3
                  srl          t6, s7, s6
                  add          sp, s4, s6
                  beq          t1, a2, 1863f
1856:             bltu         tp, s8, 1862f
                  srl          a1, t5, s0
                  srl          s9, s2, zero
                  sub          a1, gp, t1
                  blt          s9, zero, 1877f
                  add          a2, a3, s4
1862:             ori          sp, s4, 1579
1863:             add          tp, s7, ra
1864:             add          s6, t0, a5
                  sra          s8, s11, s10
                  nop
                  slti         t3, a2, -936
                  or           t6, gp, s8
                  srli         a2, t3, 29
                  addi         s3, s1, -656
                  nop
                  ori          a0, a0, 809
                  sltiu        a7, s1, 88
                  srli         s5, s9, 30
                  srl          a5, ra, t2
                  sra          t3, s2, s1
1877:             bne          s9, s1, 1878f
1878:             srl          t6, a1, s4
                  bne          a4, a3, 1898f
                  ori          t4, sp, -1104
                  addi         a2, s5, 1194
                  and          a0, s8, s4
                  lui          t6, 366149
                  ori          s8, a1, 1473
                  bne          t6, s2, 1905f
                  add          a6, a0, t5
                  add          t3, a0, t2
                  bltu         a2, sp, 1899f
                  addi         s2, s5, 645
                  or           t4, s4, s0
                  bge          zero, t6, 1892f
1892:             auipc        tp, 305344
                  beq          sp, ra, 1899f
                  bne          gp, gp, 1912f
                  sra          t6, s9, t3
                  bltu         a3, s7, 1899f
                  sra          s9, s0, s11
1898:             srli         s10, a2, 10
1899:             and          a0, t0, t1
                  bge          s6, sp, 1912f
                  and          tp, t4, t1
                  bge          s11, zero, 1906f
                  bgeu         t1, s10, 1907f
                  slti         t3, t3, 1974
1905:             or           t6, a1, s0
1906:             and          s6, a7, gp
1907:             ori          a0, s0, -1514
                  auipc        sp, 413430
                  sltiu        s8, s6, 206
                  sltu         s10, s0, gp
                  and          t1, s9, t1
1912:             or           s11, s6, s3
                  slt          s9, s8, a6
                  nop
                  srai         t3, a1, 10
                  slt          s9, t0, a4
                  sra          s9, t2, a7
                  ori          a4, t6, 678
                  srli         s1, a7, 0
                  add          t6, a5, t4
                  srli         a4, s10, 7
                  lui          a3, 917434
                  sub          t6, a0, a1
                  addi         s1, a2, 437
                  xor          s6, t6, gp
                  or           a4, gp, s0
                  srl          s7, s3, s5
                  xori         s7, a4, -503
                  sra          a7, s11, tp
                  xori         a4, s10, -1374
                  auipc        a4, 1010028
                  xor          t6, tp, s10
                  sll          t5, s1, s4
                  bgeu         a2, s4, 1949f
                  bge          a0, s9, 1938f
                  nop
                  auipc        s10, 631685
1938:             bgeu         t4, s5, 1940f
                  and          sp, s3, s2
1940:             slli         tp, s9, 18
                  sltu         t4, s3, tp
                  blt          t4, s4, 1959f
                  srai         s2, s8, 16
                  sltu         s5, s0, sp
                  sub          t3, a2, s1
                  bgeu         t5, t5, 1949f
                  ori          t4, s10, -1844
                  or           gp, s0, s9
1949:             sltu         t1, a0, s6
                  blt          a6, s1, 1951f
1951:             blt          s3, tp, 1971f
                  sltu         s2, tp, a6
                  sra          a3, s5, t3
                  blt          t2, a6, 1972f
                  slti         s2, a4, -1319
                  slti         a6, ra, 1518
                  bge          t2, s0, 1967f
                  blt          t5, s9, 1966f
1959:             srai         s5, a7, 0
                  beq          gp, s3, 1963f
                  sltu         s6, a6, a6
                  srai         t6, s8, 25
1963:             slt          zero, t1, a4
                  ori          a4, t4, 882
                  ori          t1, ra, -540
                  la           sp, region_1+677 #start riscv_load_store_rand_instr_stream_10
                  sb           t4, 8(sp)
                  sb           s11, -4(sp)
                  sh           s2, -3(sp)
                  sb           a1, -14(sp)
                  srai         t3, t4, 16
                  lhu          t3, 7(sp)
                  lui          a0, 970788
                  lh           s2, -13(sp)
                  sb           s11, -8(sp)
                  lb           t4, 6(sp)
                  sltu         t5, t2, s9
                  add          s9, ra, ra
                  lh           t6, -7(sp)
                  andi         t3, t6, 1731
                  andi         a0, s8, 1061
                  sb           s9, -7(sp)
                  lb           s11, -12(sp)
                  lb           a7, -7(sp)
                  lbu          s11, -5(sp)
                  lui          s11, 311008
                  srl          s7, s5, s3
                  sb           s2, -13(sp)
                  lhu          s3, -13(sp)
                  srai         s7, s5, 3
                  auipc        a7, 383978
                  sltu         a3, a1, a4
                  add          t1, s11, ra
                  sh           a5, 13(sp)
                  lb           s2, -14(sp) #end riscv_load_store_rand_instr_stream_10
1966:             bgeu         s5, sp, 1980f
1967:             sub          a2, s0, a2
                  srli         t5, tp, 6
                  lui          a4, 175583
                  sltu         t3, s6, t6
1971:             sra          s10, s1, t2
1972:             slli         a6, t0, 7
                  sll          a2, ra, s11
                  xor          gp, a2, s1
                  bge          s4, a6, 1976f
1976:             sltiu        a2, t4, -1200
                  and          s7, s9, s6
                  andi         s3, t6, 78
                  lui          zero, 223428
1980:             bne          s3, gp, 1999f
                  sltiu        t3, a0, -302
                  beq          a7, s5, 1994f
                  slt          s6, s1, a3
                  sll          s6, a4, s2
                  srl          s11, t6, s11
                  xori         t1, a4, -1220
                  bne          a2, a4, 2003f
                  and          a7, ra, zero
                  bne          ra, s4, 1999f
                  slti         t6, s11, -794
                  xori         a2, t6, -1491
                  xori         s11, a7, -350
                  xori         s7, s9, -1519
1994:             slt          s10, s11, s1
                  xori         a2, s0, -733
                  srl          s3, t3, t5
                  beq          s2, t2, 2012f
                  or           tp, a6, s10
1999:             srl          s11, tp, ra
                  and          zero, s0, sp
                  srl          t0, t1, s10
                  srli         s3, sp, 9
2003:             nop
                  srl          s7, t1, s6
                  xor          a2, tp, sp
                  and          a2, s5, s9
                  lui          a4, 920956
                  slt          tp, a5, t4
                  nop
                  andi         s7, s3, -606
                  slti         s6, t3, -682
2012:             xori         s7, s6, -1387
                  or           a6, t5, s3
                  andi         s11, s4, 1859
                  srli         t5, a1, 27
                  or           a5, s8, sp
                  blt          t2, a5, 2036f
                  and          a3, a4, s1
                  sltiu        t5, s4, -1651
                  addi         s6, gp, 493
                  slli         s11, t0, 12
                  sll          a0, t5, t0
                  beq          gp, s4, 2028f
                  auipc        s7, 530643
                  xori         sp, zero, -1187
                  srai         s8, a5, 21
                  srl          tp, a2, s9
2028:             xori         a7, s11, -650
                  xor          t1, a6, s10
                  bgeu         s0, tp, 2032f
                  sub          sp, s11, s3
2032:             blt          a4, t6, 2034f
                  addi         t4, t0, -376
2034:             add          a5, s0, t0
                  andi         s3, s0, 378
2036:             nop
                  xor          t4, a5, a7
                  add          s11, a3, t3
                  addi         t4, s9, -1148
                  srli         a1, a5, 16
                  nop
                  blt          s9, s11, 2045f
                  sra          gp, t2, t2
                  auipc        t4, 366515
2045:             srli         s5, s10, 31
                  xori         s7, s1, -977
                  auipc        s10, 516984
                  slli         a2, s11, 28
                  sll          t3, t2, s6
                  auipc        a7, 664197
                  auipc        tp, 923230
                  slti         s9, a5, 1965
                  slti         sp, a0, 650
                  bne          s7, t2, 2069f
                  slt          a6, a2, s9
                  slti         t6, s0, -1464
                  slli         zero, a4, 24
                  sra          s11, s9, s3
                  addi         s6, s3, -360
                  add          sp, t1, a2
                  srai         s7, s7, 19
                  add          s3, gp, s2
                  sltiu        s3, s0, -1605
                  or           s11, t0, s2
                  bge          t5, s3, 2071f
                  bge          s9, tp, 2086f
                  sltu         a6, t4, s9
                  ori          t6, s2, -600
2069:             sltiu        s10, a2, -1339
                  andi         s2, s3, -278
2071:             blt          sp, t6, 2075f
                  andi         ra, gp, 1925
                  slli         t1, s9, 30
                  sra          a3, t2, s1
2075:             srli         t6, t1, 7
                  beq          s5, t4, 2082f
                  bgeu         tp, t3, 2081f
                  srl          t0, s6, s5
                  nop
                  slti         a2, s6, -1896
2081:             sra          t3, s1, a6
2082:             bgeu         a7, s1, 2095f
                  andi         s2, s3, -1181
                  sltu         a7, t3, s1
                  sltu         s11, s10, s5
2086:             or           t0, t2, s2
                  la           sp, region_1+77 #start riscv_load_store_rand_instr_stream_2
                  lbu          s1, 300(sp)
                  add          gp, s8, sp
                  sh           sp, 1589(sp)
                  slt          s2, a6, a0
                  sb           s11, 22(sp)
                  sb           a1, 1354(sp)
                  lb           s7, 1458(sp)
                  srl          s3, s11, a5
                  sub          a1, sp, zero
                  auipc        a3, 1022451
                  lb           zero, 1866(sp)
                  srli         t3, gp, 12
                  auipc        s2, 742801
                  lh           a3, 1617(sp)
                  lb           s5, 161(sp)
                  sb           s10, 496(sp)
                  lb           a3, 824(sp)
                  sb           s11, 986(sp)
                  lh           a3, 1553(sp)
                  sra          s5, s11, a3
                  nop
                  lbu          t1, 901(sp)
                  xori         a1, s6, -73
                  sltu         a0, a0, a7
                  lui          s8, 936717
                  slli         zero, s0, 30
                  xori         t4, t1, -654
                  auipc        t1, 199948
                  srli         s2, gp, 29
                  auipc        s3, 889229
                  lb           zero, 1830(sp)
                  lb           s10, 1298(sp)
                  lb           zero, 372(sp)
                  and          t6, s9, s4
                  or           s9, a4, ra
                  sb           s1, 1620(sp)
                  nop
                  slti         zero, s1, -1041
                  lh           s7, 1731(sp)
                  lbu          a2, 1750(sp)
                  lh           tp, 995(sp)
                  sb           t5, 258(sp)
                  andi         t1, s5, 257
                  lbu          a7, 1299(sp)
                  lb           zero, -60(sp)
                  add          a2, gp, a1
                  lb           s7, 1459(sp)
                  andi         a0, s6, 977
                  xori         zero, s3, 640
                  lw           ra, 459(sp)
                  sub          t4, s0, s1
                  lw           t5, 339(sp)
                  lhu          s1, 337(sp)
                  slli         t0, t0, 9
                  lbu          s3, 732(sp)
                  lbu          s8, 698(sp)
                  srl          s5, s11, s0
                  lb           a3, 1440(sp) #end riscv_load_store_rand_instr_stream_2
                  ori          t1, t3, 1271
                  slti         s8, a4, -40
                  slti         gp, gp, 1660
                  auipc        gp, 243077
                  xor          s9, gp, a1
                  and          s11, tp, a4
                  sll          t4, a5, zero
                  xori         s2, s4, -770
2095:             sll          a0, a7, s11
                  lui          a2, 13664
                  sll          t6, s11, t1
                  slli         a0, s2, 30
                  srli         ra, tp, 9
                  beq          a2, s10, 2106f
                  beq          a3, a5, 2112f
                  srl          s7, a7, s11
                  and          t4, s9, a7
                  srai         t4, a4, 19
                  srl          zero, s6, s10
2106:             blt          t5, s8, 2110f
                  add          a7, t5, t3
                  nop
                  add          zero, s7, t1
2110:             addi         a3, t5, -1413
                  sltiu        a6, t3, 655
2112:             xor          s7, s0, a5
                  sra          a3, s1, ra
                  ori          s1, s11, 34
                  srai         s7, ra, 10
                  nop
                  bltu         t5, zero, 2123f
                  sub          s9, a3, s0
                  bltu         zero, t2, 2130f
                  sltiu        s3, t4, -1445
                  beq          a1, s7, 2138f
                  lui          a5, 68550
2123:             and          zero, tp, t3
                  srli         a5, a6, 8
                  sll          a3, a7, t5
                  ori          s3, sp, -610
                  slt          a3, tp, zero
                  slt          s5, s3, s2
                  slt          s10, s3, s8
2130:             sra          sp, a3, s11
                  srai         s10, t0, 29
                  slti         sp, t6, -1026
                  ori          t6, t4, -912
                  andi         s7, t3, 1524
                  addi         a5, t3, 300
                  xor          s11, s11, t3
                  bne          ra, a0, 2150f
2138:             slt          s2, t6, a3
                  auipc        s9, 524782
                  slti         ra, s5, 2034
                  slt          s7, s10, t0
                  nop
                  andi         t3, t5, -1561
                  sltiu        gp, s9, -1473
                  sra          s10, a7, t6
                  sub          tp, s0, t2
                  sltu         s7, t6, gp
                  xori         zero, s9, 532
                  lui          a3, 627748
2150:             slt          t0, t6, a1
                  slli         gp, zero, 0
                  lui          a6, 456632
                  andi         tp, t6, 1263
                  lui          s5, 867641
                  xor          tp, gp, a4
                  sltiu        t3, s2, -1229
                  lui          gp, 150609
                  bne          s10, s9, 2177f
                  bne          s3, a5, 2177f
                  sltu         t3, a5, s8
                  sll          t4, t2, a3
                  nop
                  and          a0, s6, a1
                  slti         a7, a5, 1852
                  sltiu        a3, s11, 643
                  sub          ra, s11, t3
                  beq          t1, t0, 2168f
2168:             blt          s0, s2, 2170f
                  or           sp, a3, ra
2170:             srai         t4, s4, 19
                  and          a1, a6, s3
                  blt          tp, t5, 2174f
                  xor          t0, s2, s2
2174:             srai         a5, t3, 20
                  bge          tp, a4, 2187f
                  slt          sp, s7, a4
2177:             bne          s7, s9, 2178f
2178:             add          a2, tp, t2
                  slt          s3, a6, a2
                  xori         t3, s8, -485
                  ori          a6, a3, -645
                  and          a7, s8, s8
                  slli         s2, gp, 17
                  srai         t3, s10, 22
                  add          a1, s6, s8
                  and          s3, s6, a2
2187:             ori          a4, a0, 1857
                  blt          a6, ra, 2208f
                  la           a5, region_1+55 #start riscv_load_store_rand_instr_stream_5
                  lbu          s7, 1635(a5)
                  and          s5, t3, s2
                  sb           a1, 1548(a5)
                  and          zero, a4, s10
                  lh           a7, 883(a5)
                  lb           a7, 840(a5)
                  sh           s7, 231(a5)
                  srl          a2, s9, t3
                  andi         t5, s7, -1040
                  sub          t6, s3, a6
                  sw           s10, 333(a5)
                  sltiu        a3, ra, 527
                  lbu          s6, 1839(a5)
                  srai         s2, t5, 6
                  sltiu        a1, a3, 1244
                  lb           tp, 928(a5)
                  sw           s7, 1753(a5)
                  sh           s11, 593(a5)
                  andi         tp, s9, -1112
                  lbu          s11, 349(a5)
                  and          s8, ra, a2
                  slt          t6, s5, s5
                  slli         t6, s1, 23
                  slli         gp, zero, 11
                  sw           t2, -23(a5)
                  lb           sp, 695(a5) #end riscv_load_store_rand_instr_stream_5
                  sra          a3, s6, a6
                  bltu         t0, t2, 2209f
                  bge          s6, a0, 2206f
                  sll          a4, s9, a4
                  bgeu         t0, s6, 2203f
                  sub          s7, s3, ra
                  addi         a4, t1, 1652
                  slt          s2, t2, s6
                  srl          s9, t0, t4
                  slti         t4, t6, 1644
                  srai         s1, a7, 3
                  bltu         t5, ra, 2204f
                  and          zero, s6, t5
                  bltu         zero, s6, 2212f
2203:             ori          s7, s9, -2028
2204:             auipc        s3, 493102
                  sub          t5, s10, ra
2206:             nop
                  bge          a3, s4, 2213f
2208:             sltu         s5, a6, a2
2209:             sltiu        s6, s4, 1352
                  lui          s3, 526406
                  xori         a6, a3, 1938
2212:             auipc        a4, 303626
2213:             nop
                  srai         s6, t6, 22
                  sub          tp, tp, t5
                  bgeu         s1, zero, 2230f
                  sub          s9, a2, s10
                  xori         ra, a5, 1569
                  bltu         t3, t5, 2222f
                  bgeu         zero, sp, 2235f
                  ori          s5, t0, -1699
2222:             slt          ra, t2, t0
                  sll          s7, s11, a4
                  srai         a1, a6, 11
                  sra          a1, a3, ra
                  slli         a6, s11, 28
                  addi         t6, s7, 1422
                  slti         ra, t6, 1304
                  andi         s11, a5, 802
2230:             xor          zero, t4, zero
                  sra          a2, t4, t4
                  slt          a5, s1, sp
                  sra          a4, a2, t2
                  bltu         a5, s11, 2254f
2235:             xori         a7, gp, -850
                  andi         s10, a4, 215
                  and          a1, sp, gp
                  slli         sp, t6, 22
                  sll          a1, a7, s6
                  bne          ra, s3, 2243f
                  slli         t3, a5, 2
                  nop
2243:             slt          s1, t2, s2
                  sll          s5, t1, a1
                  add          zero, t6, s10
                  bne          s5, zero, 2262f
                  bgeu         t5, s9, 2255f
                  add          s10, a6, s4
                  beq          s6, s7, 2254f
                  xor          a4, s1, zero
                  ori          a2, t4, 776
                  and          a2, sp, t3
                  bltu         s9, tp, 2256f
2254:             ori          t4, a4, 307
2255:             or           a1, a0, a6
2256:             xori         t1, a1, -149
                  bgeu         t5, a2, 2263f
                  bgeu         s8, sp, 2260f
                  sra          s7, s0, a2
2260:             slt          zero, a6, s1
                  srli         s9, t5, 18
2262:             nop
2263:             or           s3, tp, ra
                  bne          s6, a0, 2281f
                  and          s9, t5, t5
                  srl          gp, sp, s5
                  bgeu         s7, s2, 2286f
                  add          s11, zero, s1
                  sra          a6, gp, s1
                  slt          a2, s6, s3
                  slti         s7, a5, 938
                  sra          s9, zero, t5
                  xor          s11, s3, t2
                  nop
                  xor          s5, a6, a1
                  ori          a5, a4, -29
                  andi         a1, s3, 995
                  xori         s9, t2, 570
                  sltiu        s3, ra, -699
                  bne          a0, a7, 2298f
2281:             or           a3, s3, t4
                  addi         t4, s5, 90
                  beq          t4, a4, 2299f
                  srai         t5, sp, 28
                  nop
2286:             xori         a4, a2, -1494
                  nop
                  nop
                  add          s11, sp, a2
                  xori         tp, s3, -1167
                  bge          s2, t6, 2301f
                  andi         t1, tp, 635
                  srl          s10, s7, s5
                  bltu         a2, t3, 2314f
                  lui          s9, 921522
                  ori          a2, t5, 334
                  beq          sp, s5, 2312f
2298:             add          s6, a4, tp
2299:             sltu         ra, a0, s10
                  sltu         t0, t2, s6
2301:             srai         s2, s6, 15
                  sll          s1, s7, t0
                  xori         t4, s10, 1262
                  or           a7, sp, s6
                  srai         t1, s2, 29
                  add          a1, t4, t0
                  bne          a5, s8, 2309f
                  beq          a4, t2, 2311f
2309:             srli         a5, gp, 30
                  or           s7, a0, zero
2311:             slt          sp, t1, t0
2312:             sll          s8, s9, s0
                  addi         s11, s0, -871
2314:             sub          ra, sp, t3
                  bge          t3, t5, 2319f
                  blt          a0, a3, 2317f
2317:             ori          gp, a3, 439
                  andi         s9, a6, 132
2319:             xor          s10, s1, t3
                  andi         s11, a5, -1640
                  srl          s8, tp, s8
                  slli         s8, t0, 21
                  bgeu         s0, s1, 2337f
                  xor          s10, t6, s0
                  auipc        s5, 56950
                  bltu         sp, a3, 2328f
                  and          ra, s2, t0
2328:             slt          t1, t5, s7
                  srai         zero, a6, 22
                  bne          a4, s4, 2342f
                  and          tp, a4, tp
                  srl          s1, a1, s10
                  slt          a0, a1, s0
                  sltu         zero, a5, a3
                  sra          t0, t3, a7
                  beq          s1, a6, 2340f
2337:             bne          a3, ra, 2357f
                  ori          t6, sp, 1235
                  xor          t4, s8, tp
2340:             ori          t4, s11, -1950
                  sll          a4, t2, s8
2342:             sll          s6, t6, s11
                  xor          a5, s11, zero
                  slli         s3, s5, 22
                  lui          s8, 688876
                  sll          s1, t3, s6
                  xor          t1, t2, a1
                  or           gp, s6, tp
                  addi         zero, ra, -784
                  slli         t5, a1, 26
                  xori         a2, s9, 755
                  auipc        tp, 458463
                  bltu         s9, a0, 2356f
                  auipc        t4, 357683
                  auipc        s11, 921046
2356:             srl          t1, tp, s11
2357:             sra          a6, s1, a5
                  addi         a2, s6, 1605
                  blt          s2, s0, 2364f
                  sll          s3, s6, zero
                  andi         a0, tp, -117
                  srai         a4, s0, 25
                  sltiu        a3, s11, 1257
2364:             addi         a0, s3, 972
                  srli         s7, ra, 13
                  lw           ra, 4(s0)
                  slti         a4, a5, 1542
                  addi         s0, s0, 60
                  andi         s1, s1, -485
3131:             addi x11, x1, 0
3131:             jalr x11, x11, 0
sub_1:            and          t3, a7, s9
                  bgeu         s9, a1, sub_1_stack_p
                  andi         gp, gp, 1495
sub_1_stack_p:    addi         s0, s0, -64
                  sw           ra, 4(s0)
                  add          s1, zero, s4
                  or           tp, a0, zero
                  auipc        zero, 623747
                  la           s6, sub_3
                  srai         s9, ra, 3
                  addi         s6, s6, 277
                  addi         s2, t6, 1916
                  add          a2, a0, t4
                  and          a6, gp, a4
                  slti         t1, tp, -527
                  and          a3, s2, a3
                  or           s5, t2, a1
                  sra          a1, t6, t0
                  lui          a2, 523493
                  beq          a0, s9, sub_1_j3 #branch to jump instr
                  ori          s10, a1, -1909
sub_1_j3:         jalr         ra, s6, -276 #jump sub_1 -> sub_3
                  sltu         a2, a4, t1
                  addi         t1, s1, 106
                  sll          a6, a1, tp
                  auipc        a0, 854689
                  and          s9, a2, t4
                  xor          a3, sp, a6
                  bgeu         s4, s11, 16f
                  sra          ra, zero, s2
                  sra          s5, a2, s5
                  blt          t5, s3, 16f
                  blt          s6, s10, 17f
                  nop
                  sll          s3, t1, t1
                  srli         s11, t2, 14
                  sltu         a6, t3, s4
                  nop
16:               add          s1, s7, a1
17:               slti         a1, t0, -1705
                  lw           ra, 4(s0)
                  addi         s0, s0, 64
                  sll          t3, gp, s11
                  slti         s1, a0, -1551
                  or           s9, a5, a4
                  addi         t4, a7, -451
                  xor          s10, a0, s4
                  ori          t0, t0, -513
                  slli         s3, a3, 25
                  or           a5, s7, tp
50:               addi x5, x1, 0
50:               jalr x5, x5, 0
sub_10:           ori          gp, t5, -650
                  nop
                  sra          s6, s6, gp
                  xor          t4, s4, a0
                  sltiu        t3, s11, 321
                  addi         s0, s0, -56
                  srl          gp, a5, a3
                  and          s1, tp, a5
                  sw           ra, 4(s0)
                  and          a1, a4, a3
                  sra          a0, s7, tp
                  andi         s7, a6, 62
                  la           s11, region_1+1439 #start riscv_load_store_rand_instr_stream_3
                  lb           s2, 8(s11)
                  sb           t6, -13(s11)
                  sb           s9, -10(s11)
                  xor          s5, s7, s1
                  sll          a5, sp, s10
                  auipc        a0, 565773
                  lbu          a2, -10(s11)
                  slti         s5, s7, -1967
                  lb           s2, -13(s11)
                  lbu          ra, -6(s11)
                  sb           a4, -5(s11)
                  sw           s5, 5(s11)
                  srai         t3, s6, 27
                  auipc        s3, 209551
                  lb           a3, 11(s11)
                  lb           s6, -5(s11)
                  sh           ra, 1(s11)
                  sb           t3, 4(s11)
                  addi         s7, a5, -1665
                  ori          a6, sp, -747
                  sltu         a5, tp, a6
                  lb           a1, 6(s11)
                  andi         ra, t6, -1484
                  sb           s10, 6(s11)
                  sb           s3, -6(s11)
                  lb           a0, 6(s11)
                  lh           zero, -13(s11)
                  sll          tp, s9, gp
                  lb           ra, 3(s11)
                  sb           t5, -8(s11) #end riscv_load_store_rand_instr_stream_3
                  la           ra, region_1+1023 #start riscv_load_store_rand_instr_stream_1
                  lb           t5, 11(ra)
                  srli         t5, a2, 15
                  or           t5, s8, t2
                  lb           s1, 64(ra)
                  lb           t1, 31(ra)
                  addi         s11, tp, 453
                  sw           sp, 45(ra)
                  lb           sp, 38(ra)
                  sw           s11, 33(ra)
                  or           s11, s5, t0
                  sb           tp, 56(ra)
                  lbu          a0, 2(ra)
                  srli         gp, t1, 6
                  sb           t6, -23(ra)
                  lb           a3, -4(ra)
                  lh           a3, -9(ra)
                  lbu          a6, 24(ra)
                  slli         t0, a6, 4
                  or           s3, s5, zero
                  addi         s8, a7, -1678
                  sltiu        s8, s10, -1061
                  lui          s10, 163016
                  sb           s4, 38(ra)
                  srli         t4, s9, 24
                  sll          s11, ra, t3
                  sltiu        s8, t3, 1008
                  sb           ra, 22(ra)
                  sb           gp, -35(ra)
                  or           s10, s6, a0
                  lb           gp, 63(ra)
                  nop
                  srl          a5, s7, t5
                  auipc        s2, 229764
                  lb           a0, 35(ra)
                  lbu          t6, -13(ra)
                  lh           t5, -21(ra)
                  slt          sp, s4, a7
                  addi         t3, t0, 946
                  lw           a6, 41(ra)
                  sh           a4, -33(ra)
                  nop
                  slt          t5, a7, s11
                  lbu          a6, -6(ra)
                  lui          zero, 242750
                  lw           gp, -47(ra)
                  lhu          s3, -13(ra)
                  sb           a2, 23(ra)
                  sb           a1, 3(ra)
                  slti         s11, tp, -1553
                  xori         a2, t3, 1870
                  and          s7, s3, tp
                  sh           t2, -45(ra)
                  lb           a2, 44(ra)
                  nop
                  lb           s6, -4(ra)
                  lui          tp, 1020893
                  andi         s5, a0, -1644
                  lh           a6, -1(ra) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+675 #start riscv_load_store_rand_instr_stream_0
                  nop
                  sh           s11, 9(sp)
                  sltiu        t4, a2, -1948
                  srai         t5, s11, 7
                  auipc        s2, 27422
                  add          s2, tp, a2
                  sh           t1, -43(sp)
                  xori         ra, s7, 427
                  auipc        a6, 499524
                  sb           a3, 44(sp)
                  lui          a7, 560602
                  slt          s7, s10, t3
                  sb           t4, 55(sp)
                  lbu          s5, -2(sp)
                  lh           s7, 15(sp)
                  nop
                  auipc        s6, 107722
                  lb           s3, 6(sp)
                  slt          tp, s0, t3
                  add          t1, a7, t4
                  sra          a1, t6, t0
                  srl          t5, a5, s7
                  sb           t6, -26(sp)
                  sra          a7, a1, s10
                  and          gp, a0, t6
                  add          s1, t3, a0
                  sll          a0, a3, s1
                  ori          a1, t2, 584
                  sltiu        a6, s2, 98
                  lui          t3, 648179
                  ori          a0, s3, -1822
                  sltiu        s2, a2, 1261
                  srli         t0, sp, 30
                  xori         s11, t1, -1493
                  lb           s10, 18(sp)
                  nop
                  lb           tp, 16(sp)
                  sll          ra, t5, a4
                  sw           s4, -19(sp)
                  sb           s3, -36(sp)
                  sb           zero, -64(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+871 #start riscv_load_store_rand_instr_stream_4
                  sh           zero, -17(s11)
                  sltiu        a1, tp, 943
                  addi         s9, a6, -732
                  auipc        s7, 675154
                  or           s5, s8, zero
                  sb           s4, 2(s11)
                  sw           t0, 1(s11)
                  lh           gp, 41(s11)
                  sub          s2, s8, a4
                  sb           t5, -58(s11)
                  xor          t0, gp, s7
                  nop
                  sb           s0, -46(s11)
                  lw           a1, -19(s11)
                  lb           a5, -59(s11)
                  lw           t4, 49(s11)
                  lhu          sp, -15(s11)
                  sb           a2, -56(s11)
                  lb           tp, -12(s11)
                  lbu          s2, -29(s11)
                  addi         gp, tp, 954
                  lb           t0, 37(s11)
                  lhu          zero, 1(s11)
                  lhu          s8, -9(s11)
                  sh           a7, -53(s11)
                  sw           t3, 45(s11)
                  sh           s5, -35(s11)
                  sltu         a6, a6, s3
                  sb           tp, -54(s11)
                  lb           tp, -28(s11)
                  srai         t3, zero, 15
                  lbu          a1, -57(s11)
                  xori         t0, a6, 373
                  lbu          tp, -46(s11)
                  lbu          gp, -61(s11)
                  lbu          s7, 50(s11)
                  sb           s9, -24(s11)
                  lhu          a4, -53(s11) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+268 #start riscv_load_store_rand_instr_stream_5
                  addi         a1, zero, 588
                  lb           s7, 15(sp)
                  sb           t6, 13(sp)
                  andi         s11, t2, 1452
                  sltiu        s8, s2, 1061
                  nop
                  slt          tp, t5, t1
                  lbu          ra, 4(sp)
                  sb           t6, -1(sp)
                  slli         s1, s1, 26
                  lbu          s6, -3(sp)
                  lbu          s5, 1(sp)
                  sll          t3, s3, s3
                  lh           s10, 8(sp)
                  sh           ra, -6(sp)
                  sb           s5, -7(sp)
                  sb           s5, 1(sp)
                  lbu          t5, 9(sp)
                  sh           a0, 14(sp)
                  sb           t5, 1(sp)
                  lb           a6, -16(sp)
                  lbu          t4, 2(sp)
                  slti         s3, a4, -1080
                  srli         a7, a1, 10
                  lbu          a5, 1(sp)
                  lb           ra, 0(sp)
                  slti         s6, a3, 87
                  lb           a1, 13(sp)
                  sub          a7, t4, a3
                  lhu          s1, -14(sp)
                  lb           s7, 10(sp)
                  lb           s6, -9(sp)
                  sub          zero, a4, s4
                  sb           a5, -7(sp)
                  lbu          s3, -7(sp)
                  sb           a2, 8(sp)
                  sb           t3, -15(sp) #end riscv_load_store_rand_instr_stream_5
                  slli         s10, s2, 16
                  bne          a6, gp, 4f
                  beq          gp, s7, 3f
3:                add          ra, s0, t6
4:                auipc        a7, 652397
                  and          t0, ra, t4
                  srai         t4, s5, 29
                  srl          t4, t5, a7
                  srl          zero, s2, a6
                  beq          t1, a5, 11f
                  bge          t0, a6, 11f
11:               srai         s11, a7, 14
                  srl          a5, s9, s8
                  blt          s1, t3, 19f
                  xor          gp, s6, t3
                  lui          a4, 253178
                  slli         a5, s4, 1
                  srai         t5, s1, 1
                  ori          gp, a4, -836
19:               xori         s9, t0, -1195
                  sub          t0, a2, a2
                  beq          a0, a7, 27f
                  blt          t5, t6, 30f
                  bne          s0, s2, 25f
                  or           a6, t4, a1
25:               and          s10, s1, s10
                  sra          tp, a4, t4
27:               srai         t3, ra, 30
                  sll          s1, s11, sp
                  bne          a0, ra, 39f
30:               bgeu         s1, a2, 32f
                  blt          s4, s11, 47f
32:               slt          zero, gp, gp
                  sll          a7, a6, t5
                  slti         tp, s6, 178
                  slti         a0, s4, 801
                  slti         s5, s8, -1285
                  and          t0, gp, t5
                  or           sp, s2, a5
39:               slt          a5, s10, a1
                  addi         s5, s1, 1679
                  auipc        a0, 267618
                  slti         a0, gp, 471
                  or           s7, t4, s9
                  srl          ra, a1, a3
                  bltu         tp, t2, 60f
                  and          t5, t3, a4
47:               blt          tp, a6, 61f
                  sltiu        s7, a5, -970
                  sltu         a4, t3, a4
                  xori         t1, tp, 1226
                  ori          a0, sp, -1934
                  srl          a3, t5, a7
                  bge          s10, a5, 61f
                  xor          a3, a5, t5
                  bge          a1, a0, 63f
                  bge          s1, a1, 72f
                  add          a5, a6, gp
                  ori          t3, s0, -855
                  srli         s9, s10, 11
60:               srli         a0, s5, 28
61:               add          t3, gp, gp
                  xor          t0, sp, s1
63:               beq          s9, s6, 83f
                  srai         tp, s4, 15
                  srai         t5, s2, 21
                  bne          a7, a7, 70f
                  sltiu        a1, sp, -455
                  sll          t4, a3, s8
                  sub          a7, s5, ra
70:               bne          s0, a3, 83f
                  ori          s10, t0, -827
72:               srai         ra, s2, 6
                  auipc        a0, 453841
                  ori          s3, s9, -1380
                  bge          a5, s7, 82f
                  sub          ra, a1, t4
                  or           t1, s7, t3
                  slt          a7, a6, t5
                  beq          t3, t3, 80f
80:               sltiu        sp, s5, 1638
                  lui          t3, 774268
82:               sltiu        s11, t6, 443
83:               blt          a4, s11, 96f
                  addi         s5, s4, -1544
                  nop
                  bgeu         tp, s3, 99f
                  xori         t3, t6, 1619
                  bge          s5, s5, 103f
                  slt          a6, a7, a5
                  nop
                  bgeu         s0, gp, 97f
                  sltiu        s8, s3, 372
                  xori         t0, s4, -1372
                  or           a1, s0, t6
                  slti         t5, s6, -2046
96:               srai         sp, s11, 5
97:               bgeu         s0, a3, 113f
                  xori         a4, a2, 1884
99:               xor          a5, s1, sp
                  bgeu         gp, t6, 104f
                  xor          t3, ra, a0
                  sra          a1, a4, s6
103:              bge          a0, zero, 113f
104:              nop
                  sll          s7, a4, s7
                  srai         s7, t1, 31
                  or           s9, a4, t6
                  addi         t3, gp, 106
                  bgeu         s2, s8, 119f
                  ori          s8, s5, -1527
                  bgeu         tp, s0, 125f
                  slti         s9, s11, 1240
113:              beq          t2, s1, 123f
                  or           t0, s0, s10
                  auipc        s7, 192641
                  xori         t0, a5, -109
                  addi         t4, t4, -1529
                  auipc        a6, 792379
119:              sltu         s1, t1, a2
                  sltu         tp, zero, ra
                  xor          s2, s9, t0
                  sra          tp, a0, gp
123:              slti         s2, s10, 1057
                  bne          a5, a6, 132f
125:              bltu         sp, zero, 132f
                  beq          a5, a3, 132f
                  xori         s5, s0, 27
                  or           s1, t6, s1
                  andi         a2, s3, -1425
                  srli         s5, ra, 26
                  sll          s7, t1, s11
132:              blt          a7, zero, 136f
                  bltu         sp, t5, 137f
                  xori         s2, t0, 1338
                  auipc        ra, 373068
136:              auipc        a7, 773745
137:              sra          a0, s2, s10
                  and          s3, s7, a3
                  bltu         a0, a1, 147f
                  bgeu         a2, s3, 142f
                  auipc        t0, 428390
142:              bne          s8, t6, 162f
                  slti         a1, a1, 642
                  beq          t0, sp, 160f
                  xori         s3, s7, -165
                  auipc        s11, 194101
147:              and          s6, t2, gp
                  lui          t3, 286390
                  beq          gp, t3, 159f
                  bltu         t1, s2, 163f
                  nop
                  bltu         a3, t3, 158f
                  addi         s8, s2, -54
                  sub          t4, t3, s0
                  bne          s9, s0, 169f
                  srai         a0, s4, 24
                  xori         s6, s5, -1565
158:              nop
159:              xori         t3, s1, 274
160:              andi         s11, t5, -302
                  slt          tp, t3, a5
162:              srai         zero, s2, 13
163:              slti         a3, a4, -1531
                  nop
                  sltiu        s11, sp, -17
                  bgeu         s10, s5, 167f
167:              slti         s11, s10, -1471
                  slti         a6, ra, -1294
169:              blt          s0, t6, 184f
                  slli         s6, s9, 12
                  sltu         s3, tp, a0
                  bltu         ra, s6, 185f
                  sll          s3, t2, s0
                  bltu         a5, gp, 175f
175:              and          sp, t5, s1
                  or           a0, t2, zero
                  slt          s5, s9, sp
                  ori          s2, a3, -1733
                  ori          gp, a3, 425
                  and          a2, a4, s10
                  srli         zero, s9, 18
                  auipc        s2, 258703
                  slti         s6, s5, -1298
184:              sra          ra, a5, s7
185:              sll          s2, a1, a2
                  lui          sp, 957430
                  lui          s3, 602510
                  sltu         t4, gp, s1
                  xor          s7, s8, t5
                  bgeu         s3, t4, 193f
                  xori         s1, t6, 1967
                  bltu         a0, s5, 208f
193:              or           s10, zero, a4
                  addi         s11, ra, -1274
                  slt          s9, s10, a5
                  lui          a7, 126143
                  sll          s1, s3, s7
                  srli         s10, s10, 7
                  slli         s8, s0, 20
                  slli         a7, t2, 17
                  srli         tp, tp, 18
                  add          a7, a7, a1
                  ori          s10, t5, -824
                  sltiu        sp, s0, -1624
                  lui          a5, 769291
                  and          s5, a7, s10
                  xor          a0, s7, t5
208:              addi         sp, a4, 696
                  slti         s7, s6, -99
                  add          t3, gp, sp
                  xor          s8, s8, a0
                  and          s5, s7, s6
                  or           a6, t3, tp
                  slti         a2, t4, -1897
                  ori          s7, s9, 929
                  lui          s11, 920098
                  nop
                  srl          a5, s9, s7
                  slt          t6, a4, s1
                  bge          s4, s6, 228f
                  srl          gp, s2, s2
                  auipc        s7, 204366
                  xori         s7, s4, 785
                  slt          s11, a1, s0
                  lui          t5, 884311
                  nop
                  add          t0, a5, s2
228:              bge          zero, t2, 241f
                  auipc        t4, 68682
                  beq          a4, s3, 231f
231:              bne          s11, a1, 237f
                  bge          s7, s1, 246f
                  lui          s7, 297442
                  sltiu        a5, t6, 1178
                  bge          a5, gp, 237f
                  srli         a6, a4, 24
237:              or           t6, s0, t5
                  bne          s8, t1, 248f
                  xor          a5, s8, a2
                  auipc        a1, 203713
241:              sll          tp, a3, s1
                  or           s11, t6, s0
                  ori          s1, t3, -1710
                  srli         s7, a3, 11
                  and          s5, a2, tp
246:              beq          t2, s1, 248f
                  sra          t5, t5, t2
248:              slti         s2, s1, 1216
                  srai         a7, s10, 1
                  nop
                  nop
                  bltu         s3, a2, 267f
                  ori          a6, s7, -1590
                  auipc        a1, 1046005
                  sub          s1, a6, s2
                  auipc        t3, 594089
                  srli         s3, s4, 15
                  sll          s10, t0, s5
                  sra          tp, t1, a7
                  andi         sp, zero, -913
                  add          s6, s4, s5
                  xori         a2, a6, -583
                  or           s6, s7, s5
                  slti         gp, a6, -931
                  xor          t5, a2, sp
                  bne          a5, a6, 282f
267:              sra          t5, a4, s11
                  sra          ra, ra, t4
                  la           t6, region_1+1237 #start riscv_load_store_rand_instr_stream_2
                  sb           s9, -43(t6)
                  slli         a1, t4, 24
                  sb           s6, 11(t6)
                  nop
                  lui          s6, 539203
                  srai         a1, ra, 3
                  or           t0, a2, s11
                  xori         a1, zero, -281
                  sb           ra, 14(t6)
                  lui          s9, 943569
                  slli         t1, tp, 18
                  sb           a3, 60(t6)
                  slti         s2, s9, 397
                  lbu          s3, -46(t6)
                  sb           a2, -58(t6)
                  xori         a1, s3, 813
                  srli         s3, s11, 30
                  sltu         s8, s6, a6
                  sltu         t3, a0, s2
                  slli         a7, a5, 1
                  lhu          s2, 17(t6)
                  sub          s5, s6, t6
                  add          gp, s6, t4
                  add          gp, a3, gp
                  sw           ra, -9(t6)
                  srl          s9, sp, a7
                  sb           s3, 5(t6)
                  xori         t0, sp, -1085
                  sb           t3, -14(t6)
                  sb           gp, 32(t6)
                  lbu          gp, -28(t6)
                  xor          s3, s0, t3
                  lb           a4, 24(t6)
                  lbu          s6, -20(t6)
                  sltu         s10, a3, gp
                  sb           tp, 8(t6)
                  ori          s8, t2, -915
                  add          t5, s8, a6
                  slti         gp, t0, 304
                  sw           tp, -1(t6)
                  lbu          s7, -22(t6)
                  lbu          s2, 36(t6)
                  lbu          s2, -35(t6)
                  addi         a0, a5, 215
                  lhu          s9, -5(t6)
                  andi         a3, s4, 1907
                  lb           s8, -23(t6)
                  lbu          s5, 48(t6)
                  auipc        s6, 578071
                  lhu          s6, -61(t6) #end riscv_load_store_rand_instr_stream_2
                  ori          s8, a3, 1840
                  slli         a5, s5, 4
                  lui          zero, 317222
                  slti         a0, s0, -440
                  srl          t6, a1, a6
                  xori         a5, s8, -199
                  sll          ra, ra, s2
                  bge          t5, s1, 277f
277:              xori         sp, s11, 1458
                  slli         a1, a1, 15
                  addi         gp, a5, 195
                  lui          sp, 495177
                  sltu         a5, tp, zero
282:              addi         t5, t3, -698
                  sltu         s6, sp, a4
                  blt          zero, a6, 294f
                  addi         s2, gp, -1045
                  sll          a7, t4, s4
                  slt          s9, s5, t3
                  sltu         a2, t0, s5
                  xor          t6, a6, ra
                  xori         s11, a6, -1899
                  sub          t5, tp, s6
                  bltu         s8, s4, 308f
                  or           t5, t5, t2
294:              xor          t3, s8, t5
                  bne          t0, a6, 308f
                  bltu         s11, a3, 302f
                  nop
                  bltu         zero, s10, 301f
                  lui          t3, 910740
                  xor          a3, s9, t5
301:              bltu         a2, sp, 316f
302:              sra          t6, s2, t3
                  sltu         a3, s4, a4
                  lui          s3, 1013840
                  or           s7, s10, t5
                  bltu         a2, a7, 312f
                  sra          t3, s9, s11
308:              sra          s3, s4, a1
                  sll          sp, a5, tp
                  ori          a6, a4, 1406
                  add          s5, zero, a5
312:              slli         t0, s9, 24
                  bltu         s10, s10, 315f
                  sra          t3, a7, a7
315:              srai         a7, tp, 2
316:              add          s11, s10, s7
                  slli         s8, ra, 3
                  bltu         a7, t0, 333f
                  bltu         t4, s2, 327f
                  slt          t5, t4, t6
                  bge          s1, s9, 322f
322:              bne          zero, t6, 336f
                  sltiu        ra, a1, -1147
                  srai         s2, t5, 24
                  xori         zero, t4, 1726
                  sra          t6, s4, a7
327:              ori          t4, t6, -943
                  or           a7, a7, a2
                  slt          a1, t2, a7
                  or           zero, a2, a6
                  bltu         ra, sp, 351f
                  slti         a1, t0, 538
333:              bltu         s11, s11, 341f
                  or           a0, sp, t5
                  addi         s1, a5, -184
336:              nop
                  or           a3, s9, a6
                  slli         t0, s10, 12
                  slt          s7, a5, s2
                  ori          a0, t4, 1916
341:              nop
                  sll          a3, gp, a2
                  sra          s2, s6, ra
                  or           gp, a1, tp
                  slt          s10, t2, s9
                  bne          a3, tp, 353f
                  add          a2, s11, s1
                  ori          s6, s4, 536
                  sll          a1, sp, zero
                  lui          s9, 773769
351:              and          ra, s11, s5
                  add          tp, tp, a6
353:              slli         gp, a2, 18
                  xor          s6, a7, a2
                  slti         s6, s11, -1302
                  nop
                  slt          a0, tp, a1
                  or           s5, gp, s1
                  andi         s6, t4, -287
                  slli         tp, t5, 24
                  add          t3, s10, a0
                  srli         s8, s9, 20
                  sra          t5, a2, sp
                  bge          a7, s8, 377f
                  srli         sp, t0, 22
                  beq          t1, t1, 370f
                  sub          a4, t6, t0
                  andi         s6, a3, -922
                  add          ra, s6, s3
370:              bgeu         a2, s11, 380f
                  addi         t6, a1, 1769
                  xori         t6, a7, 1320
                  sra          s2, a1, t4
                  beq          t3, gp, 390f
                  sra          s9, s2, gp
                  slli         tp, s0, 4
377:              nop
                  add          s11, t0, t3
                  or           a3, s2, a5
380:              slt          a4, a7, a0
                  sltu         t4, s9, t3
                  beq          s4, s2, 390f
                  bne          a5, a7, 385f
                  nop
385:              xori         s11, t2, -716
                  andi         gp, a2, 278
                  sra          sp, s9, zero
                  srai         ra, a2, 7
                  bne          zero, a1, 391f
390:              and          s6, t5, t3
391:              beq          a3, s10, 405f
                  sltu         a3, t2, t6
                  xori         a5, t4, 1574
                  slti         ra, a1, -1214
                  slti         s2, tp, -1407
                  add          s2, t2, s9
                  srai         s2, t2, 14
                  slti         t3, s10, 1831
                  srai         a0, s10, 30
                  slti         a1, t0, -1971
                  beq          tp, tp, 407f
                  sltiu        a3, t1, -761
                  lui          zero, 761241
                  slli         s7, a2, 26
405:              and          t0, ra, a3
                  sltu         s1, s10, t5
407:              nop
                  ori          a7, t2, -1375
                  or           t6, s9, s7
                  addi         s8, s0, 926
                  slti         s11, a0, -997
                  srl          a1, t6, s4
                  slti         s8, t1, 536
                  xor          gp, s9, s10
                  srai         s2, s8, 29
                  srli         a7, a2, 23
                  srai         a4, t4, 14
                  andi         s6, t0, -1355
                  sll          a5, t1, t4
                  sltu         s5, s8, zero
                  add          a0, t3, a7
                  andi         s11, s7, -1777
                  bltu         a0, a4, 436f
                  slti         zero, s10, 179
                  beq          gp, a7, 426f
426:              sra          s10, s10, tp
                  lui          a0, 827362
                  sub          t1, s11, sp
                  sltu         s11, s0, s9
                  slli         t6, s4, 25
                  bltu         s7, ra, 435f
                  slli         a6, s8, 30
                  blt          a7, ra, 443f
                  and          a7, t3, s7
435:              bne          a0, a2, 451f
436:              sra          s1, s5, t4
                  slt          s11, zero, a5
                  addi         a0, zero, -595
                  auipc        t4, 858342
                  sltu         a7, a3, s3
                  addi         t1, t0, -1478
                  sll          t5, zero, a1
443:              sub          t4, t6, a1
                  slti         a3, s5, -439
                  xor          a2, s0, s2
                  bltu         s1, zero, 456f
                  auipc        sp, 500846
                  sll          t3, t0, t2
                  auipc        t4, 1033270
                  sltu         s3, a6, a4
451:              xori         s11, s5, -1748
                  sub          t4, a6, a7
                  srai         s1, s9, 12
                  slli         sp, s9, 21
                  and          s8, ra, s0
456:              slt          zero, s0, t4
                  sub          s1, t2, zero
                  sub          s3, t2, ra
                  slt          s7, s3, a2
                  slli         t5, s11, 9
                  sltiu        t4, a4, -1810
                  blt          a6, s3, 472f
                  slt          zero, t2, s4
                  sub          a0, ra, s1
                  slti         s3, sp, -1337
                  add          s2, a0, t3
                  srli         t5, t4, 12
                  or           t0, sp, a3
                  bge          t3, a2, 473f
                  lui          sp, 82407
                  sll          s3, t2, t3
472:              sra          a5, tp, s7
473:              sub          t6, s10, s5
                  nop
                  sub          t6, zero, t0
                  slt          a7, s2, s8
                  xori         s1, a4, -1969
                  sltiu        s6, t3, 723
                  andi         a6, zero, 1889
                  xori         s2, ra, 199
                  sra          s9, a0, a2
                  addi         a3, s4, 1874
                  lui          s5, 863145
                  bltu         s1, a2, 485f
485:              bge          t3, ra, 498f
                  beq          s11, t4, 488f
                  xor          a0, s4, s10
488:              auipc        s5, 202810
                  sub          zero, s8, s7
                  xori         a2, s4, -1820
                  bne          a2, t3, 493f
                  bltu         t6, a7, 500f
493:              xori         a1, a6, -480
                  andi         t5, a3, -99
                  add          a6, t1, a4
                  nop
                  nop
498:              sub          s1, tp, s1
                  ori          s11, a2, -1678
500:              or           s7, t3, sp
                  addi         t1, s3, 1520
                  sltiu        s1, ra, -729
                  xori         s11, zero, -716
                  auipc        a5, 355255
                  srl          a5, t6, t3
                  srai         a2, t2, 19
                  sltiu        t0, a7, 1581
                  bgeu         s5, a0, 522f
                  ori          s10, s8, -913
                  ori          ra, a5, 818
                  sltiu        s9, ra, -1301
                  sltu         t5, s11, a4
                  xori         t4, t4, 1159
                  sltu         s3, s2, t5
                  xori         s11, s0, -647
                  xor          t6, a6, s11
                  addi         s3, s10, -227
                  xor          s3, a1, a6
                  beq          s1, zero, 525f
                  beq          gp, s11, 535f
                  andi         t6, t6, 699
522:              slli         a2, s0, 23
                  and          gp, t4, a2
                  sra          t1, t1, s5
525:              slti         a6, t3, 409
                  bne          t1, tp, 527f
527:              xori         gp, t2, 1798
                  beq          t0, a5, 536f
                  slt          gp, a5, s9
                  sltu         s2, s10, t1
                  xori         zero, s2, -425
                  bgeu         ra, t1, 540f
                  andi         t0, s9, -1741
                  sub          ra, s9, s1
535:              xori         s2, tp, -728
536:              sub          a7, t0, ra
                  bltu         a4, s2, 553f
                  andi         s6, s11, -995
                  auipc        gp, 704143
540:              xor          a6, t0, s3
                  beq          s1, a1, 547f
                  beq          a4, a1, 552f
                  nop
                  nop
                  srai         t4, zero, 11
                  ori          t4, a0, 1382
547:              sltiu        a0, a6, 746
                  sll          t5, t3, s2
                  sltu         t1, s1, s3
                  slt          a4, s3, t0
                  lui          ra, 480749
552:              auipc        s5, 34433
553:              blt          a0, s9, 568f
                  sub          a5, a5, s10
                  srl          s5, sp, t3
                  or           s1, t5, t6
                  sll          tp, a1, t1
                  or           a2, s6, t0
                  xor          a3, tp, a7
                  bltu         sp, a4, 580f
                  add          t6, t1, a6
                  sltu         s9, s2, a0
                  ori          sp, zero, 1371
                  and          gp, gp, s5
                  bgeu         a4, t1, 571f
                  auipc        t1, 927972
                  blt          tp, a1, 574f
568:              beq          a4, s5, 584f
                  addi         s8, ra, -696
                  or           a7, t3, s2
571:              xori         s9, a5, -205
                  xor          t5, a6, s7
                  slti         a1, tp, -1273
574:              andi         a2, t3, -1619
                  sll          s1, t4, t1
                  add          s8, t4, tp
                  sltiu        gp, t6, -41
                  srai         t5, zero, 9
                  add          a3, s1, a7
580:              addi         s9, a0, 1688
                  add          s10, t3, s5
                  beq          ra, t3, 598f
                  lui          s3, 685942
584:              srl          s1, a2, ra
                  sltu         s5, s1, a5
                  beq          a5, s3, 600f
                  sra          a5, tp, s1
                  auipc        gp, 573758
                  srl          gp, gp, s5
                  srli         a0, s3, 25
                  auipc        s10, 694674
                  lui          s1, 470356
                  sra          s9, ra, sp
                  srli         a5, t3, 18
                  nop
                  ori          s9, a6, 1430
                  slti         a7, a7, 393
598:              slti         zero, s2, 405
                  nop
600:              beq          s7, s8, 603f
                  beq          sp, s4, 603f
                  xori         t3, a7, 122
603:              bltu         s4, a2, 604f
604:              bge          a5, s10, 617f
                  lui          a4, 799858
                  addi         t4, t0, -554
                  slt          s6, zero, a1
                  sltiu        s2, s1, -1752
                  addi         t4, a3, 50
                  blt          t2, a6, 614f
                  sltiu        a1, s6, 1865
                  auipc        a7, 522394
                  sltiu        gp, s6, -596
614:              nop
                  sub          s6, a3, a3
                  and          zero, a3, t5
617:              auipc        gp, 882187
                  beq          t5, t0, 631f
                  beq          s10, a2, 620f
620:              bge          a6, s0, 630f
                  add          s3, zero, a0
                  srai         a2, s3, 29
                  and          s9, a4, t3
                  add          ra, a4, sp
                  sltu         s8, zero, s1
                  sll          ra, t6, t2
                  sltiu        t6, a2, -1456
                  srai         a0, s5, 9
                  slli         t6, s0, 5
630:              xor          t5, sp, s0
631:              sltu         a0, a2, ra
                  lui          gp, 425257
                  bne          t1, a0, 639f
                  sll          s3, t2, a6
                  bge          s9, s10, 637f
                  add          t0, s2, s4
637:              sub          a0, s2, s11
                  beq          t1, s10, 653f
639:              sltiu        s6, gp, 251
                  or           a7, a5, a4
                  sra          s3, zero, s10
                  bne          s4, s5, 650f
                  srai         a5, tp, 10
                  addi         s8, zero, -70
                  slli         s1, a3, 23
                  beq          s8, a3, 656f
                  andi         s6, t4, 1547
                  lui          s2, 827049
                  sra          t6, a6, s2
650:              addi         zero, s2, -341
                  sra          s1, t5, a0
                  bgeu         a3, t0, 668f
653:              xori         a3, zero, 1648
                  nop
                  auipc        sp, 988670
656:              srl          a6, s1, s11
                  slt          sp, tp, sp
                  sltiu        s9, s3, 1061
                  lui          s1, 290737
                  or           s3, tp, s8
                  auipc        s2, 496718
                  andi         s2, a0, -1073
                  ori          t5, t6, 643
                  sltiu        sp, s1, -1669
                  bge          ra, ra, 673f
                  slt          s10, gp, sp
                  sub          a6, t5, t3
668:              sub          a3, t3, s10
                  sltu         t0, a5, t1
                  srli         a4, a1, 9
                  nop
                  sltu         s8, a4, a2
673:              slli         ra, a6, 24
                  addi         a5, s9, 1135
                  add          tp, a4, t6
                  and          a2, a2, t4
                  add          a0, a1, s4
                  sltu         a3, s4, s3
                  bne          sp, a5, 680f
680:              and          t5, t3, t1
                  beq          a4, tp, 694f
                  beq          t3, s10, 688f
                  xor          t1, s6, s7
                  srl          t5, s9, s5
                  slli         a4, t4, 17
                  sll          tp, t5, s4
                  blt          s11, s5, 689f
688:              lui          a1, 636216
689:              slti         t4, a5, 1194
                  sra          t1, t3, s4
                  sltu         s11, sp, t6
                  slli         sp, s10, 25
                  xor          a6, s9, s1
694:              ori          s3, t6, 97
                  auipc        s8, 210536
                  addi         a4, s2, 1454
                  srl          a2, a2, a3
                  sra          s9, s9, t4
                  auipc        gp, 38730
                  blt          ra, a7, 714f
                  sll          ra, s3, gp
                  bne          a6, s4, 718f
                  or           tp, t5, s9
                  bgeu         sp, t2, 707f
                  sltu         s11, t0, t1
                  sltu         s3, s0, s2
707:              bgeu         t6, s9, 717f
                  slli         s2, a5, 30
                  sll          t6, t5, s4
                  slli         a6, t1, 15
                  xori         gp, a6, 416
                  srl          a7, gp, s3
                  sub          s1, t6, t1
714:              sub          a7, s5, s4
                  beq          t6, tp, 729f
                  sra          a1, a1, s10
717:              lui          t4, 371860
718:              slt          t5, t1, t1
                  sltu         a7, s5, a4
                  bgeu         t6, t4, 724f
                  slt          tp, a7, a2
                  slli         a7, s0, 2
                  srl          sp, sp, t4
724:              bgeu         s0, a1, 737f
                  auipc        t4, 234414
                  sltiu        s2, a0, -258
                  beq          t6, a4, 735f
                  bgeu         sp, s6, 741f
729:              bltu         s1, s6, 733f
                  sra          t6, s8, t3
                  slli         a2, s8, 1
                  slti         t1, a6, -293
733:              addi         s10, t4, 970
                  xor          a2, s7, a7
735:              sub          zero, a4, t0
                  xor          t5, s7, s6
737:              sub          s7, s4, gp
                  sra          gp, a1, a4
                  bgeu         t2, t1, 755f
                  auipc        t6, 505703
741:              slti         s7, a5, -1388
                  andi         a6, s7, 1386
                  blt          s10, s6, 750f
                  sltiu        s1, a2, -1637
                  bltu         a1, t3, 746f
746:              slti         t0, gp, 1496
                  bltu         s6, t5, 749f
                  bne          t5, t3, 754f
749:              srl          s11, a3, s4
750:              srli         tp, ra, 9
                  lui          s3, 953995
                  xori         s7, t0, -1528
                  slli         s5, a4, 18
754:              srai         s11, a0, 12
755:              slt          t5, t1, ra
                  bge          sp, t2, 771f
                  or           a2, a3, s2
                  sub          t1, s0, a2
                  sll          t4, t6, a1
                  xori         a7, t2, 1224
                  bltu         a7, t3, 781f
                  or           gp, s5, a3
                  srai         t5, tp, 3
                  srl          a7, a4, s9
                  sra          a5, s9, s0
                  and          t3, s10, t3
                  srl          a5, a1, s8
                  sub          tp, t2, a0
                  blt          t4, gp, 789f
                  slli         s10, t6, 10
771:              ori          sp, s1, 1286
                  xor          t6, a2, s9
                  andi         s8, t1, -2036
                  blt          s10, t4, 787f
                  auipc        s1, 902353
                  xori         s1, s5, -1495
                  srli         s5, s5, 18
                  bge          s4, sp, 791f
                  ori          t6, sp, 947
                  addi         s10, s2, 1405
781:              bge          s1, s7, 791f
                  slti         a0, s7, 231
                  srl          a7, ra, s7
                  sub          ra, a1, gp
                  slli         s1, t4, 7
                  auipc        gp, 182194
787:              sll          a2, t4, a5
                  beq          s3, a5, 790f
789:              xor          t3, a2, sp
790:              srli         a4, a4, 18
791:              slti         zero, s9, 207
                  nop
                  auipc        a2, 16327
                  xori         t4, a0, 266
                  andi         t6, a5, -1119
                  and          s10, s6, s3
                  sll          a2, t2, s11
                  slt          t3, a4, a7
                  srl          a4, ra, s10
                  lui          s5, 803007
                  xori         s3, t2, 817
                  auipc        gp, 405209
                  bge          a2, a6, 809f
                  beq          a6, gp, 818f
                  sltiu        sp, s6, -2003
                  srl          t5, s4, a0
                  auipc        s11, 20688
                  slt          s11, s9, s8
809:              srli         gp, a3, 3
                  slli         zero, s2, 28
                  xor          a4, t5, ra
                  bgeu         s9, s0, 819f
                  sll          tp, s0, a3
                  auipc        sp, 327799
                  add          tp, t4, gp
                  srli         s2, s1, 9
                  sra          a0, sp, s3
818:              srli         s3, t4, 13
819:              blt          t3, t3, 822f
                  nop
                  bge          t2, t5, 822f
822:              sll          a7, sp, a0
                  srli         s10, t5, 23
                  lw           ra, 4(s0)
                  sll          s2, a1, a3
                  addi         s0, s0, 56
                  and          s1, a2, s6
                  xori         t1, t4, -894
1101:             addi x24, x1, 0
1101:             jalr x24, x24, 0
sub_7:            andi         a2, t2, 239
                  sub          s5, s3, s9
                  slli         a4, a4, 31
                  addi         s0, s0, -60
                  srai         s3, t2, 0
                  sltiu        s3, s4, 1116
                  sw           ra, 4(s0)
                  lui          t4, 856317
                  la           sp, region_1+1830 #start riscv_load_store_rand_instr_stream_1
                  srl          a0, a7, a0
                  lbu          t5, -185(sp)
                  sh           a3, -38(sp)
                  xor          a1, a7, a3
                  lui          gp, 199282
                  sra          zero, s8, s10
                  slt          t1, s5, s4
                  sub          zero, t1, a6
                  nop
                  lhu          a6, -30(sp)
                  andi         a4, s11, 1925
                  lbu          t1, -176(sp)
                  lb           tp, -45(sp)
                  lui          s9, 210218
                  andi         gp, zero, -1844
                  lbu          a2, 43(sp)
                  sb           s10, 113(sp)
                  sb           gp, -218(sp)
                  sb           s5, -225(sp)
                  lb           s1, -132(sp)
                  sb           a0, 0(sp)
                  slti         s1, a4, -989
                  ori          a5, tp, 975
                  lh           t1, 42(sp)
                  sw           s4, -134(sp)
                  lbu          a0, -191(sp)
                  lb           t5, -201(sp)
                  sh           s7, -172(sp)
                  lbu          ra, -159(sp)
                  auipc        s10, 680241
                  auipc        s6, 884782
                  sltu         t0, t3, a7
                  lbu          s9, 111(sp)
                  slli         s6, s9, 15
                  lb           a1, 104(sp)
                  auipc        s2, 660903
                  lb           a4, 166(sp)
                  sb           gp, -185(sp)
                  sltiu        t5, t3, -164
                  lui          s10, 311276
                  lb           t4, -231(sp)
                  lbu          t6, -221(sp)
                  sll          s2, tp, sp
                  sltiu        a7, a1, -1137
                  addi         s3, a2, -1150
                  lw           t5, 6(sp)
                  lhu          s2, -142(sp)
                  ori          s10, gp, -212
                  lbu          t3, 85(sp)
                  lui          a3, 325835
                  slti         s10, s11, -851
                  lbu          t6, -28(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+1610 #start riscv_load_store_rand_instr_stream_0
                  lhu          a3, -1558(t0)
                  lbu          a2, -780(t0)
                  addi         a0, a7, -1119
                  sb           s11, 78(t0)
                  sh           s2, -786(t0)
                  sll          a3, s0, a5
                  sb           s7, -383(t0)
                  addi         ra, sp, 675
                  slt          a2, s8, t6
                  sltiu        s6, sp, -401
                  lb           s1, -1363(t0)
                  lw           a3, -110(t0)
                  sra          ra, zero, s0
                  lh           t3, -472(t0)
                  sub          zero, ra, gp
                  addi         a2, ra, -195
                  lb           s10, -971(t0)
                  lbu          a5, -796(t0)
                  add          s1, gp, s1
                  srai         a4, tp, 27
                  slti         t4, a7, 468
                  sltu         s3, a1, s10
                  srl          tp, a1, t4
                  slli         tp, t1, 28
                  slt          s6, t5, s8
                  lb           t5, -1020(t0)
                  sltu         a0, a4, a5
                  lw           sp, -1274(t0)
                  lui          t4, 642505
                  sltiu        s8, a4, -28
                  lhu          ra, -584(t0)
                  sh           s8, 40(t0)
                  xori         s9, a7, 1007
                  srl          s3, s4, s4
                  lui          s11, 662377
                  xor          a4, gp, s2
                  and          a5, gp, s10
                  xor          t1, s0, sp
                  lbu          a6, -298(t0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1832 #start riscv_load_store_rand_instr_stream_2
                  slt          ra, t0, ra
                  lbu          t1, 9(sp)
                  sltiu        s7, s0, 1570
                  sb           t5, -3(sp)
                  nop
                  sb           t0, -4(sp)
                  lb           a7, -2(sp)
                  nop
                  andi         s5, t3, -522
                  xori         s6, a1, -1282
                  sra          s6, sp, a5
                  ori          gp, s5, 985
                  lb           s1, 10(sp)
                  lbu          tp, -1(sp)
                  srl          t3, s2, t5
                  lhu          a0, -8(sp)
                  srl          s3, a1, t4
                  addi         s11, s6, 1685
                  lhu          t4, -10(sp)
                  lbu          a0, -9(sp)
                  auipc        s3, 509892
                  ori          s8, tp, -1205
                  auipc        t1, 146571
                  xor          a6, t1, s3
                  add          gp, a2, t2
                  lhu          a6, -2(sp)
                  sltu         a4, gp, s5
                  lb           a5, 11(sp)
                  lbu          t1, 13(sp)
                  xori         zero, t2, 1070
                  sub          ra, s4, ra
                  lbu          s5, -9(sp)
                  srai         zero, a3, 16
                  lhu          a4, 16(sp)
                  srl          t0, a5, t5
                  lbu          s1, -14(sp)
                  sb           t6, 16(sp)
                  sb           s8, -7(sp)
                  lb           s2, -15(sp)
                  slti         s8, a0, 125
                  sw           t0, 4(sp)
                  sb           a4, -8(sp)
                  srai         a3, a6, 3
                  lbu          a6, 12(sp)
                  auipc        s11, 901367
                  sb           s8, 16(sp)
                  sb           t1, 9(sp) #end riscv_load_store_rand_instr_stream_2
                  blt          a6, s5, 12f
                  sub          s11, a6, a2
                  sra          sp, a0, t3
                  bne          t6, t3, 7f
                  bltu         sp, t3, 13f
                  nop
                  srl          tp, a0, a1
7:                nop
                  slt          a2, a4, a0
                  nop
                  sltiu        gp, s0, -724
                  srl          s2, tp, t6
12:               srl          a4, a2, ra
13:               blt          s11, t2, 18f
                  lui          t5, 138914
                  slti         s11, s5, -92
                  srl          s3, ra, ra
                  lui          s1, 151763
18:               bgeu         s11, s0, 36f
                  andi         tp, s3, 856
                  srli         t1, t2, 0
                  slti         t6, a5, 1216
                  srli         s7, a3, 27
                  srl          a0, t2, s9
                  add          t1, s9, a3
                  blt          a7, a6, 35f
                  xor          t3, t6, s0
                  beq          t0, a5, 47f
                  or           t4, gp, a4
                  sltiu        s6, s11, 1701
                  auipc        s2, 529657
                  or           s3, s10, gp
                  slti         s7, tp, 924
                  sra          a1, s8, t5
                  nop
35:               bne          t3, a3, 47f
36:               and          a1, s7, s7
                  slt          t3, s7, s7
                  slli         s11, zero, 31
                  sll          t6, t5, s1
                  auipc        s10, 879310
                  ori          s7, t5, 572
                  and          a4, gp, a6
                  sltu         zero, s7, s1
                  sra          s7, t0, s1
                  xori         zero, zero, 1505
                  slt          a1, s6, a6
47:               bne          t1, s3, 62f
                  add          s11, zero, a2
                  srli         a2, s2, 15
                  slti         s8, a5, 451
                  srli         a2, a5, 4
                  srl          s6, s3, t4
                  ori          a6, ra, 104
                  bne          a0, s3, 55f
55:               xor          s2, s3, t1
                  beq          zero, s7, 59f
                  sltiu        t3, s10, 1668
                  or           t5, t6, t6
59:               bltu         a1, sp, 66f
                  sra          a6, a7, t2
                  auipc        sp, 483213
62:               bne          a6, s3, 64f
                  ori          s11, s10, -173
64:               bltu         t4, t6, 76f
                  nop
66:               xori         s10, a7, -1679
                  andi         s11, zero, 1493
                  xor          ra, sp, a0
                  slti         ra, s11, 1931
                  srl          t6, zero, s2
                  slt          s10, s4, sp
                  auipc        zero, 458802
                  nop
                  beq          s5, s2, 84f
                  and          tp, sp, tp
76:               addi         a4, a3, 1181
                  lui          s5, 802699
                  nop
                  bne          s4, s7, 95f
                  srl          s7, s2, ra
                  auipc        s8, 778317
                  andi         a2, t0, 1063
                  bne          t6, s10, 85f
84:               blt          a1, ra, 88f
85:               and          a3, a0, s11
                  add          t4, s11, s11
                  sltiu        s9, t0, 679
88:               blt          s5, t0, 94f
                  addi         s10, s0, 68
                  xori         a7, t2, 2044
                  slli         sp, t1, 24
                  bgeu         a3, a7, 94f
                  andi         gp, s10, -990
94:               srai         a6, t3, 0
95:               andi         a1, a4, -41
                  beq          s2, t4, 100f
                  srli         a7, gp, 8
                  and          a4, ra, a1
                  sub          s2, sp, tp
100:              beq          a2, s6, 118f
                  sub          t3, s1, a0
                  and          s2, a5, s4
                  nop
                  xor          s9, s10, a2
                  addi         a7, sp, -1290
                  slt          s7, a1, s9
                  bltu         sp, t1, 117f
                  addi         s8, s3, -1516
                  and          t1, t0, s10
                  bgeu         s4, s8, 123f
                  xor          ra, a4, a0
                  sltu         t6, s8, ra
                  xori         a2, s7, 865
                  nop
                  andi         s9, a2, 960
                  sll          s3, a1, s11
117:              srli         ra, s7, 3
118:              bltu         s11, a5, 122f
                  or           t3, sp, zero
                  addi         a6, a4, 853
                  srai         t3, a7, 16
122:              beq          t4, t6, 138f
123:              xor          t5, a1, a0
                  or           a0, tp, s11
                  srli         t6, s1, 25
                  lui          s7, 335439
                  addi         gp, t1, -670
                  slti         t1, s2, -1390
                  xori         s3, zero, -1443
                  add          a7, sp, s11
                  sub          s11, t6, s8
                  sra          s1, ra, gp
                  andi         s6, a0, 351
                  ori          a4, t0, 332
                  blt          a6, t0, 149f
                  srl          s11, s2, s8
                  ori          t0, s9, 247
138:              srai         t3, sp, 4
                  bgeu         a7, a5, 148f
                  add          sp, t4, a2
                  lui          ra, 370048
                  lui          sp, 227336
                  add          a3, a5, a3
                  andi         a5, s0, -1667
                  ori          gp, s9, 296
                  addi         ra, s2, 1775
                  andi         s3, a4, 952
148:              srl          s5, a6, t6
149:              sltu         t4, s6, t5
                  nop
                  sltu         a1, t1, t1
                  sltiu        a3, a7, -977
                  sltu         a0, t4, a0
                  sltiu        t3, s6, 1790
                  srli         sp, s2, 10
                  xor          a2, s8, t4
                  beq          t2, tp, 165f
                  bltu         gp, s6, 167f
                  sltu         a5, zero, sp
                  slti         s3, a3, -637
                  addi         s9, gp, -1268
                  or           s8, a3, s7
                  auipc        t1, 541356
                  bgeu         s7, t4, 179f
165:              bltu         t5, s7, 175f
                  sll          t0, a3, s9
167:              bgeu         a2, s2, 185f
                  sub          s9, s10, s8
                  bge          a3, sp, 173f
                  srai         s11, t4, 3
                  or           a4, s2, s10
                  bne          s2, s7, 185f
173:              sltu         t1, a0, tp
                  bgeu         s11, a5, 176f
175:              beq          s3, s8, 179f
176:              slt          t6, t3, tp
                  srai         s5, s8, 13
                  or           t4, ra, a7
179:              bltu         s6, a1, 182f
                  andi         t3, s1, -1517
                  slt          s1, sp, tp
182:              sltu         s9, t3, s8
                  bge          tp, a0, 187f
                  xori         a3, s1, 1746
185:              nop
                  xori         s8, t2, 1380
187:              lui          s8, 609082
                  bltu         s11, s8, 195f
                  ori          t4, s1, -586
                  slt          s9, s0, a5
                  srl          a3, t2, a5
                  nop
                  slti         a1, s1, 1625
                  sltiu        s11, ra, 721
195:              slli         s1, s7, 3
                  and          t5, a5, t4
                  sll          t3, tp, s10
                  srai         t0, a4, 16
                  beq          sp, a7, 208f
                  sub          zero, t2, a2
                  slt          tp, sp, s9
                  srli         s3, s10, 4
                  slt          t1, a6, s4
                  sltu         s5, t3, ra
                  slli         s10, tp, 18
                  bltu         s7, s11, 218f
                  bltu         t4, a4, 219f
208:              sub          t4, t3, a6
                  lui          a3, 875111
                  xor          tp, a0, a3
                  andi         t3, a5, 1882
                  srai         s8, a4, 15
                  xor          a4, s0, s7
                  auipc        s7, 500269
                  sub          t1, s4, s10
                  and          a0, ra, a6
                  sub          a6, s8, t6
218:              sra          a6, s3, s11
219:              andi         s1, s7, -1822
                  sra          a6, s2, a5
                  blt          a0, s0, 239f
                  xor          a4, a0, s6
                  beq          s6, t0, 239f
                  bltu         a1, a2, 232f
                  bge          a6, zero, 229f
                  bne          s2, s1, 235f
                  and          a1, a2, s4
                  srl          s6, t0, s2
229:              sltu         ra, sp, s9
                  sll          gp, t2, tp
                  ori          a2, t2, -1126
232:              nop
                  srli         t3, t4, 26
                  beq          a7, t2, 246f
235:              xori         sp, s1, 1803
                  blt          s6, s0, 250f
                  or           s6, a1, s1
                  sltu         ra, s3, s9
239:              slti         s10, a4, -1571
                  xor          t0, a6, s8
                  bge          a6, s7, 243f
                  bge          a5, t1, 258f
243:              bltu         a0, t0, 253f
                  slli         t3, t4, 26
                  slti         s6, zero, -878
246:              srl          ra, a6, t2
                  addi         a0, s3, 482
                  andi         t1, a2, -1368
                  xor          t1, s1, t3
250:              or           a7, t1, t5
                  srli         zero, s0, 5
                  addi         tp, s4, -1462
253:              sub          a6, s9, a5
                  slt          s10, a0, gp
                  blt          t3, a2, 256f
256:              and          ra, gp, s2
                  sll          a1, s7, s3
258:              xor          a5, s2, t6
                  bgeu         a4, s5, 279f
                  or           t4, t0, a0
                  ori          t5, s5, 436
                  slti         t4, sp, -416
                  slti         s7, s5, 1654
                  beq          s8, s0, 266f
                  bgeu         a5, a4, 275f
266:              beq          s6, t3, 271f
                  sltiu        s2, t4, -1974
                  sltiu        a1, a0, 261
                  sltiu        s11, a4, -629
                  slti         s11, s6, -1149
271:              slli         s5, a2, 24
                  slli         t0, t4, 10
                  slt          s9, s0, t6
                  ori          s6, t3, -1845
275:              sltiu        a1, a2, -831
                  addi         s6, s4, -1276
                  auipc        a3, 118068
                  bne          sp, gp, 287f
279:              or           t6, s0, ra
                  add          zero, s4, s2
                  or           s5, s4, zero
                  addi         s10, t6, 1846
                  or           t0, t1, s0
                  sub          t1, sp, t0
                  lui          gp, 475014
                  slli         s11, s3, 29
287:              auipc        s9, 860463
                  slli         a7, a7, 14
                  sltu         s3, s10, sp
                  blt          s11, t1, 296f
                  sra          s7, sp, t1
                  add          s3, t1, zero
                  bge          t1, a7, 308f
                  slli         t6, a1, 31
                  sltiu        s10, s11, 281
296:              bge          a5, s7, 308f
                  auipc        a7, 404202
                  add          s3, a6, s11
                  lui          zero, 297628
                  andi         s5, t4, 39
                  and          a1, a4, s4
                  nop
                  bgeu         t2, a4, 307f
                  lui          gp, 815104
                  add          a7, t0, a7
                  or           sp, s3, tp
307:              sltiu        s2, t0, 870
308:              and          t3, t4, a0
                  srai         t4, a4, 8
                  or           a4, s8, s6
                  srai         t6, a4, 27
                  add          s6, s1, s2
                  slti         ra, s9, 1754
                  slli         t6, a3, 20
                  beq          s2, a5, 317f
                  sra          gp, gp, s3
317:              sltu         a2, a0, t2
                  bne          t4, s7, 324f
                  srli         t6, t0, 24
                  addi         a2, ra, -1857
                  add          s6, s1, gp
                  bltu         t4, a0, 326f
                  slli         a7, s5, 23
324:              srai         gp, t4, 9
                  bne          s5, s2, 328f
326:              blt          sp, a4, 336f
                  slli         s5, t2, 12
328:              xori         a5, a2, -1979
                  or           tp, t0, zero
                  andi         s2, a2, 1764
                  sll          a3, s5, t2
                  srai         t6, t2, 18
                  addi         s1, gp, 1334
                  sub          a5, a3, a2
                  bne          a7, a6, 351f
336:              sll          s1, a0, a2
                  bge          zero, a3, 346f
                  and          t1, s10, s4
                  bge          s8, a6, 348f
                  addi         s3, gp, 1791
                  addi         s10, s0, 314
                  blt          a4, s7, 344f
                  sll          t6, a4, gp
344:              slt          a5, t6, t3
                  auipc        s6, 442991
346:              add          s6, s10, t3
                  slti         a1, a3, -1469
348:              or           s9, s1, a1
                  sll          t5, s4, ra
                  sub          t1, s5, a0
351:              add          s6, s8, s7
                  add          s1, a6, tp
                  andi         t5, a3, 23
                  srli         t1, s7, 18
                  bge          tp, ra, 362f
                  sll          t6, a5, a5
                  lui          t0, 703674
                  slli         s2, ra, 13
                  sub          s8, s1, a7
                  sub          s1, t2, s0
                  or           t6, s10, a5
362:              lui          s2, 860014
                  andi         a2, s4, -1927
                  blt          s6, a5, 374f
                  srl          tp, zero, s9
                  slt          s10, a6, a7
                  xori         a4, zero, -1425
                  sra          s10, t0, t3
                  and          s3, t2, a5
                  xori         t4, sp, -1964
                  xori         a5, a2, -1643
                  ori          s10, s2, 35
                  xor          s3, a4, a0
374:              srai         s7, a0, 17
                  ori          t1, a3, -396
                  and          a5, s5, gp
                  and          t1, a3, a3
                  lw           ra, 4(s0)
                  sub          t4, ra, ra
                  addi         s0, s0, 60
                  and          t3, s10, ra
                  add          a0, t3, s6
532:              addi x27, x1, 0
532:              jalr x27, x27, 0
sub_4:            addi         s0, s0, -64
                  sltiu        t1, s8, -1556
                  sw           ra, 4(s0)
                  addi         s11, s8, -581
                  or           s6, s10, s10
                  addi         t3, a2, -1951
                  andi         s10, s7, -317
                  sltu         a3, s5, a7
                  bge          s3, s8, 14f
                  lui          t6, 65283
                  sltiu        t5, t1, -1375
                  ori          s11, ra, 796
                  sltu         s3, s6, a0
                  srl          a3, s6, a3
                  bne          t1, s6, 14f
                  nop
                  ori          ra, s9, -327
                  auipc        t5, 221446
                  slti         a4, s2, -887
                  slt          ra, a0, t1
14:               lui          zero, 120898
                  sll          ra, t5, a3
                  nop
                  bgeu         s5, a1, 33f
                  blt          t1, sp, 32f
                  and          a3, s7, zero
                  auipc        t5, 953189
                  or           s2, a0, t6
                  auipc        a4, 100767
                  lui          a0, 766024
                  auipc        s9, 1035089
                  add          a6, s3, s2
                  sltu         t5, a2, s3
                  or           a4, s4, s7
                  bltu         t4, s1, 32f
                  bge          s10, t4, 42f
                  bne          a3, tp, 33f
                  lui          a3, 726586
32:               bltu         a1, s4, 50f
33:               nop
                  sra          a4, s9, t2
                  sll          a0, s6, a2
                  beq          s5, s3, 47f
                  bgeu         tp, t2, 50f
                  bge          t2, ra, 50f
                  bne          t0, t3, 50f
                  and          sp, a3, s8
                  srai         t3, s1, 15
42:               and          t5, s5, a6
                  sra          t1, t6, s10
                  sub          s9, t4, t3
                  slt          t3, s6, s6
                  sll          s8, s8, a1
47:               bgeu         s7, s4, 50f
                  bge          s2, t2, 50f
                  nop
50:               auipc        a2, 24597
                  sra          a1, s1, s6
                  lw           ra, 4(s0)
                  srl          s2, t2, a4
                  srli         s7, ra, 28
                  sub          s10, s6, a4
                  addi         s0, s0, 64
                  sra          t1, s2, s3
64:               addi x18, x1, 0
64:               jalr x18, x18, 0
sub_6:            sltu         t6, s11, zero
                  beq          t2, s7, sub_6_stack_p
                  sll          t5, a4, a2
sub_6_stack_p:    addi         s0, s0, -64
                  sw           ra, 4(s0)
                  ori          s1, gp, -493
                  xor          s8, gp, t1
                  bgeu         s9, s1, 9f
                  ori          s2, a2, 1523
                  sltiu        s3, a7, 958
                  xor          tp, s1, a4
                  slli         a5, s7, 29
                  andi         s2, a4, -1037
                  nop
                  slti         a0, sp, 32
9:                sltu         a3, s8, s8
                  xori         s6, ra, -385
                  lw           ra, 4(s0)
                  nop
                  addi         s0, s0, 64
                  slti         t0, t2, 468
                  xori         a6, a1, 19
22:               addi x19, x1, 0
22:               jalr x19, x19, 0
sub_8:            slt          tp, t3, sp
                  and          sp, a2, t0
                  sll          s8, s11, s10
                  addi         s0, s0, -40
                  sw           ra, 4(s0)
                  sltiu        gp, s6, -413
                  ori          s11, a7, -1452
                  slti         t6, a2, -1230
                  addi         gp, s8, 167
                  la           s1, region_0+1675 #start riscv_load_store_rand_instr_stream_2
                  sltu         a6, a6, a5
                  lbu          s7, -55(s1)
                  slti         a1, t1, 468
                  sh           t5, -29(s1)
                  srli         s10, t3, 18
                  lui          s6, 731546
                  lb           s8, 48(s1)
                  sh           gp, 15(s1)
                  add          a5, t6, t0
                  xor          a6, s9, zero
                  srai         a6, t4, 27
                  lbu          sp, 30(s1)
                  lb           t1, -40(s1)
                  lb           zero, 43(s1)
                  srl          s3, s0, tp
                  slt          a1, s7, s2
                  sh           a2, -51(s1)
                  nop
                  lhu          s7, 31(s1)
                  or           t5, s4, gp
                  ori          a5, t6, -64
                  and          t1, s10, a4
                  sh           tp, -23(s1) #end riscv_load_store_rand_instr_stream_2
                  la           s10, region_1+1384 #start riscv_load_store_rand_instr_stream_1
                  and          gp, s10, s2
                  auipc        a6, 855474
                  lbu          s11, 37(s10)
                  lui          a2, 735207
                  sub          a2, a5, sp
                  lbu          a5, -77(s10)
                  or           s1, s5, zero
                  sb           ra, -209(s10)
                  sb           s5, -96(s10)
                  lbu          a1, 132(s10)
                  sh           zero, -214(s10)
                  slt          a1, s7, sp
                  lb           t0, 75(s10)
                  lh           sp, 88(s10)
                  xori         a2, s6, -360
                  sb           t5, -22(s10)
                  lbu          zero, 94(s10)
                  lui          t4, 786160
                  auipc        t0, 526041
                  xor          gp, a1, s2
                  sltiu        t6, s10, 542
                  or           s5, s1, t0
                  lui          a4, 164486
                  lw           a7, -224(s10)
                  srai         t3, t6, 18
                  sb           a1, 94(s10)
                  nop
                  or           a6, s3, t0
                  lh           a3, -108(s10)
                  sb           t3, -123(s10)
                  auipc        sp, 411141
                  lh           s7, -226(s10)
                  lhu          a3, 42(s10)
                  slli         t4, a3, 5
                  or           a3, s8, s1
                  xor          s7, s0, ra
                  lh           a6, -256(s10)
                  lhu          gp, -12(s10)
                  sb           s1, -7(s10)
                  lbu          t5, 151(s10)
                  auipc        s5, 539151
                  xor          t1, s5, s4
                  lhu          a7, 58(s10)
                  lhu          s6, -40(s10)
                  slt          ra, tp, a4
                  sltu         sp, a5, a1
                  slli         sp, tp, 29
                  lb           t1, -75(s10) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_0+211 #start riscv_load_store_rand_instr_stream_3
                  andi         t6, s6, -1929
                  andi         a4, sp, -1626
                  xor          gp, a2, s3
                  add          sp, s11, gp
                  sb           a0, -25(a6)
                  ori          a1, a0, 850
                  and          s9, ra, t1
                  slli         s7, a0, 21
                  nop
                  lb           t6, -139(a6)
                  slti         t3, ra, -1116
                  and          t4, s11, s2
                  srl          s9, s0, s0
                  sb           s5, -9(a6)
                  sh           s4, 225(a6)
                  sll          s10, t2, a7
                  lbu          a4, -13(a6)
                  srli         t1, gp, 20
                  sltiu        t4, zero, -706
                  sw           t3, -115(a6)
                  lh           a4, -207(a6)
                  sb           s8, -197(a6)
                  slti         s5, sp, -637
                  lw           s10, 197(a6)
                  xor          gp, a4, s5
                  sll          t3, a1, sp
                  lbu          t0, 176(a6) #end riscv_load_store_rand_instr_stream_3
                  la           a2, region_0+1996 #start riscv_load_store_rand_instr_stream_6
                  sh           s6, -2(a2)
                  sb           s4, -3(a2)
                  srl          a1, a1, t4
                  lbu          t6, -5(a2)
                  slli         a3, a2, 12
                  lui          a5, 211542
                  srl          sp, s8, s2
                  sb           ra, -1(a2)
                  lb           s6, -15(a2)
                  sub          tp, t3, s10
                  addi         a5, s4, 451
                  sub          a0, a2, a0
                  sltiu        s7, sp, -1722
                  auipc        s5, 64731
                  slti         t1, s8, -381
                  sra          a7, a1, s6
                  sltu         s11, tp, s4
                  lw           t0, -16(a2)
                  lui          a7, 535201
                  srai         t5, t4, 12
                  xor          ra, s3, s2
                  srl          s9, s1, a0
                  add          s7, zero, s0
                  lb           t0, 3(a2)
                  andi         tp, t2, -1665
                  nop
                  srl          t3, a4, t3
                  lb           s5, -11(a2)
                  lb           t0, -1(a2)
                  lw           s5, -12(a2)
                  and          a0, ra, t0
                  addi         gp, a6, 1786
                  lbu          zero, -15(a2)
                  sb           s7, -3(a2)
                  lbu          s3, 3(a2)
                  auipc        t1, 348377
                  lh           s6, -2(a2)
                  lbu          tp, -15(a2)
                  sub          t5, s10, t2
                  lbu          a5, -11(a2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1512 #start riscv_load_store_rand_instr_stream_5
                  lw           s9, -40(sp)
                  slt          t6, t2, s0
                  sub          s11, t6, t6
                  or           tp, t2, s4
                  lbu          s11, 19(sp)
                  xor          a5, a0, s4
                  lb           t4, 23(sp)
                  xor          a0, s3, t0
                  lbu          s3, -23(sp)
                  addi         gp, sp, 1173
                  lhu          s7, -46(sp)
                  slli         t1, sp, 30
                  add          t5, s2, s7
                  sh           gp, -60(sp)
                  sb           a2, 31(sp)
                  slti         a4, s5, -120
                  sb           a6, -17(sp)
                  and          s9, t0, zero
                  sra          a6, s6, ra
                  lhu          a7, -6(sp)
                  andi         t1, t3, 91
                  sra          t1, t4, s0
                  auipc        a2, 882752
                  lbu          s10, 24(sp)
                  srai         a0, s4, 1
                  sh           s8, 6(sp)
                  lbu          s2, 6(sp)
                  sub          s9, t6, t6
                  lb           t3, -27(sp)
                  sb           s5, 26(sp)
                  lbu          s9, 4(sp)
                  add          s2, s3, t5
                  sb           s2, 42(sp) #end riscv_load_store_rand_instr_stream_5
                  lui          zero, 705246
                  bltu         tp, t3, 3f
                  addi         sp, s2, -2045
3:                sltu         t4, t6, s6
                  and          a6, s3, gp
                  bge          s2, s9, 8f
                  slt          a1, sp, a4
                  ori          a1, a4, 1595
8:                xor          a3, a1, s10
                  andi         s11, t5, 1194
                  srai         a3, t1, 5
                  add          a1, s5, a5
                  bne          t6, t6, 15f
                  lui          t3, 244728
                  slli         s1, s1, 11
15:               and          a0, t1, ra
                  sub          t1, a0, t6
                  srli         a4, a4, 18
                  blt          a6, s0, 38f
                  sub          t0, s8, a2
                  and          s2, s0, s10
                  slti         a2, s7, 1288
                  or           s10, t2, t6
                  slt          t3, t5, t4
                  srai         t1, a5, 12
                  lui          t6, 32417
                  srli         a1, a3, 26
                  ori          t1, a3, 1971
                  sltu         t1, s0, s4
                  or           s10, a7, gp
                  srai         s3, s3, 13
                  bltu         t0, sp, 50f
                  srl          t0, tp, t2
                  and          a4, gp, s2
                  xor          tp, s1, a3
                  sltiu        a6, s4, 1107
                  sra          s6, a1, a6
                  slt          s5, s11, zero
38:               addi         s11, t3, -213
                  auipc        s5, 859357
                  add          s3, s2, s3
                  add          s3, a4, t2
                  bgeu         s0, a2, 49f
                  lui          a3, 618213
                  add          a0, s2, t1
                  bne          gp, t3, 53f
                  bge          s5, t3, 63f
                  bne          s10, t2, 52f
                  slli         t0, s10, 21
49:               beq          a6, t2, 56f
50:               sub          t1, s10, t2
                  ori          gp, s3, -1689
52:               addi         a4, tp, -55
53:               slli         tp, a0, 17
                  slti         t6, t0, -1726
                  srl          s1, t3, a2
56:               srl          s5, zero, s4
                  bgeu         s6, t0, 72f
                  andi         t5, a2, 1834
                  sltu         s5, s10, tp
                  bne          t2, s1, 63f
                  auipc        t6, 500591
                  sltiu        gp, s0, -1036
63:               sll          zero, a7, t5
                  ori          a1, s3, -363
                  or           zero, a3, a1
                  ori          s2, sp, 1105
                  auipc        sp, 292882
                  ori          a2, a7, -1140
                  srl          a4, t5, a6
                  srli         gp, s11, 8
                  or           t4, a0, a6
72:               slt          t0, t1, s6
                  sltu         t3, s10, gp
                  nop
                  bne          t2, a4, 90f
                  srli         a7, t3, 28
                  sub          s11, s2, a6
                  sltiu        t1, s6, -1738
                  slli         ra, a4, 28
                  ori          sp, a0, 1738
                  xor          a1, t5, ra
                  bne          s2, a2, 98f
                  srli         t3, a5, 20
                  sra          s9, s0, a2
                  slt          ra, s6, a3
                  add          s8, s8, s11
                  sltu         s10, s4, s5
                  add          s1, s4, s2
                  andi         a0, s1, 1657
90:               sra          s1, zero, s7
                  blt          t1, a2, 109f
                  andi         t0, t3, 1389
                  andi         tp, a3, -255
                  sltu         a0, t3, s6
                  nop
                  sll          t3, s2, s11
                  addi         s7, t1, -167
98:               bge          zero, t5, 106f
                  bge          s1, s8, 112f
                  blt          t5, t1, 111f
                  xori         a7, s6, 746
                  addi         t5, a5, 1419
                  ori          t3, t6, 443
                  andi         a3, a7, -723
                  srl          a4, t0, a1
106:              nop
                  srl          s5, a3, s2
                  beq          a6, a5, 125f
109:              sub          s6, a0, t5
                  auipc        t0, 20410
111:              ori          s2, a6, 1243
112:              xori         t1, gp, 146
                  bge          ra, tp, 125f
                  srai         s11, t6, 4
                  srai         a1, a5, 23
                  sltu         a5, s2, s0
                  sll          sp, t2, t5
                  slti         gp, s11, -1725
                  andi         a4, s1, 369
                  slti         s9, t4, -1037
                  bgeu         s2, a4, 132f
                  xori         a0, s5, 378
                  sra          s6, s5, s5
                  bltu         a2, a3, 138f
125:              auipc        a4, 988601
                  lui          s7, 84767
                  addi         zero, a0, -442
                  xori         a6, s6, 1420
                  ori          s1, s11, -272
                  auipc        a1, 402674
                  sltu         t1, t1, s6
132:              sra          ra, a2, a1
                  auipc        a5, 370491
                  sltu         gp, s3, a5
                  sltu         a2, t1, zero
                  lui          t0, 401060
                  srl          a3, ra, a1
138:              xori         s5, s3, 886
                  bgeu         s2, t3, 144f
                  lui          t1, 663236
                  ori          s1, s9, -479
                  blt          a4, s9, 150f
                  bltu         s5, a1, 158f
144:              bgeu         gp, t2, 161f
                  sltiu        t6, a5, -478
                  or           gp, a7, sp
                  addi         s8, t0, -2015
                  bge          a7, a2, 155f
                  bltu         a4, a2, 156f
150:              sub          t0, t0, s3
                  srli         s3, zero, 21
                  sra          tp, s9, tp
                  bge          s8, t2, 157f
                  slli         s9, t0, 21
155:              slli         t4, ra, 21
156:              bltu         t0, a2, 174f
157:              or           a4, s9, a7
158:              sub          a7, s4, s1
                  ori          s9, t6, -1137
                  ori          s10, zero, -1152
161:              sltiu        a1, a3, 569
                  sltiu        tp, a5, -553
                  andi         sp, s1, 1329
                  add          s6, s0, t1
                  and          zero, s1, t2
                  slt          a5, s1, s10
                  sub          s1, zero, t5
                  nop
                  xor          sp, s6, zero
                  or           s2, s1, zero
                  xori         gp, t6, -2023
                  nop
                  beq          s7, s10, 190f
174:              slli         t3, a3, 24
                  bge          s5, ra, 178f
                  blt          ra, a6, 195f
                  sub          s8, s6, tp
178:              xori         s7, a6, 673
                  lui          s9, 229308
                  slli         a7, a2, 29
                  srli         t5, t3, 29
                  slli         tp, t0, 15
                  addi         gp, a5, 728
                  ori          t4, zero, 680
                  beq          t4, t5, 190f
                  bgeu         t3, s9, 197f
                  blt          t6, a7, 204f
                  bge          s0, s11, 201f
                  bge          a1, gp, 192f
190:              xor          s3, t2, t6
                  slli         zero, s4, 17
192:              add          a6, s9, s11
                  sltiu        a4, s3, 512
                  blt          t4, s7, 201f
195:              slt          s5, a3, a1
                  bltu         t4, zero, 208f
197:              lui          sp, 1002339
                  srli         s2, s0, 9
                  bge          t4, a6, 210f
                  sra          s1, s9, s3
201:              add          a5, ra, s2
                  sub          t0, s2, s2
                  beq          s7, a0, 207f
204:              slt          a4, a0, zero
                  slt          s9, s8, t2
                  auipc        s5, 830517
207:              blt          s1, a1, 223f
208:              bgeu         a1, t5, 216f
                  auipc        gp, 568789
210:              ori          s5, a7, 1168
                  or           s2, a3, a1
                  bne          s2, s7, 229f
                  xor          zero, t3, s8
                  bne          s4, a5, 228f
                  bgeu         sp, t0, 220f
216:              srli         s9, t2, 18
                  add          s6, tp, s9
                  srl          ra, s3, t5
                  srl          s10, s6, gp
220:              srli         s5, gp, 17
                  bltu         s10, a6, 229f
                  srli         zero, t5, 14
223:              beq          s3, a1, 238f
                  ori          s10, t5, -118
                  slt          s2, a3, s5
                  sll          zero, a7, s3
                  bge          zero, a7, 234f
228:              sltu         sp, a4, t0
229:              sltu         s9, a3, s10
                  slti         tp, t2, 1200
                  sltu         a1, s9, s1
                  xor          a3, s8, sp
                  add          a5, s0, s10
234:              sub          s1, s1, a0
                  xor          s3, s7, a7
                  or           s2, a3, t2
                  auipc        zero, 335563
238:              bge          s9, a6, 253f
                  beq          a6, s4, 247f
                  bgeu         t6, a6, 247f
                  bne          s11, t4, 256f
                  sltu         a3, sp, s5
                  lui          t0, 88079
                  xori         s3, s8, 1002
                  bltu         a4, s3, 263f
                  sra          t0, a0, s7
247:              slt          t6, t0, t4
                  sra          a0, t5, gp
                  blt          ra, s7, 269f
                  bge          a4, s5, 252f
                  xori         a1, t6, -1267
252:              auipc        a6, 818481
253:              bge          s4, s9, 260f
                  auipc        t0, 170296
                  beq          zero, s9, 273f
256:              or           s1, a7, t0
                  slti         s2, s2, 1914
                  bgeu         a5, t3, 261f
                  bgeu         s3, gp, 278f
260:              sll          tp, s2, sp
261:              xori         ra, t4, 172
                  auipc        a6, 394330
263:              auipc        s10, 957858
                  bgeu         t5, a3, 282f
                  bgeu         ra, a5, 273f
                  bltu         a4, s9, 284f
                  nop
                  srli         ra, s5, 23
269:              sub          s2, t0, a7
                  nop
                  ori          s7, a1, 160
                  sltu         a5, s4, s8
273:              nop
                  and          a7, a7, s4
                  lui          s2, 155047
                  sub          t4, t6, a4
                  blt          zero, t6, 291f
278:              xori         s5, s10, 836
                  sra          a5, s8, s0
                  sub          s8, s3, a5
                  blt          s3, s9, 285f
282:              xor          t0, s7, a4
                  srai         t5, s2, 27
284:              add          zero, t6, s4
285:              blt          t0, zero, 300f
                  bltu         a4, tp, 306f
                  sub          a3, a1, a5
                  xor          s10, s10, s7
                  sra          s11, t6, a7
                  slti         s6, t5, -2027
291:              andi         gp, a5, 1497
                  bne          t4, gp, 299f
                  sltiu        s9, a4, -1708
                  slt          t3, s5, ra
                  srli         s10, a1, 19
                  sll          gp, ra, a4
                  srai         gp, t0, 25
                  sra          sp, s4, s1
299:              nop
300:              bne          s9, a2, 311f
                  nop
                  slt          ra, a7, s3
                  and          s8, a5, t0
                  srai         sp, s10, 0
                  nop
306:              auipc        a6, 763966
                  andi         a3, a6, -942
                  bltu         s5, a5, 319f
                  bgeu         a5, t0, 312f
                  sra          s2, s1, t6
311:              sltu         s5, t4, s1
312:              bltu         a2, a6, 327f
                  bltu         t5, t2, 316f
                  sra          a7, t3, s10
                  xori         a5, tp, -336
316:              addi         s2, a0, 1518
                  slt          s1, a3, t4
                  srli         t0, tp, 12
319:              auipc        s11, 92257
                  bne          gp, a0, 322f
                  ori          s1, a3, 736
322:              sltiu        t0, s11, -1158
                  xor          s11, t4, tp
                  or           zero, s6, a3
                  or           s5, tp, sp
                  bne          a7, s9, 333f
327:              ori          s10, a2, -1104
                  srl          s1, ra, t2
                  andi         a6, s3, -405
                  nop
                  slti         t5, s11, 254
                  srl          s10, a1, t1
333:              srai         a1, s0, 23
                  andi         zero, sp, -1922
                  add          s2, t0, s2
                  srai         a7, t0, 9
                  srl          a1, zero, s1
                  bge          s4, a0, 341f
                  xor          a1, ra, s3
                  sll          a7, t3, tp
341:              bltu         ra, s0, 348f
                  lui          s8, 920813
                  sltu         a7, s6, gp
                  bgeu         s10, a1, 352f
                  srai         s11, a3, 17
                  sltu         t0, a2, s2
                  slli         a1, gp, 23
348:              xor          s2, s5, t6
                  srli         a1, a1, 30
                  ori          t3, a6, -1076
                  slti         s2, s2, -45
352:              beq          t3, s8, 367f
                  beq          s11, s6, 370f
                  sltiu        tp, t4, -1448
                  bltu         a0, t1, 360f
                  or           s9, sp, s4
                  bltu         a2, s10, 365f
                  andi         ra, a6, 887
                  sltiu        a3, s3, 1373
360:              lui          t6, 738763
                  or           s1, s3, tp
                  bge          gp, s8, 379f
                  sll          s5, s4, a5
                  auipc        t5, 931284
365:              nop
                  add          a7, sp, a0
367:              sltiu        t3, s9, -1844
                  sll          gp, t0, a2
                  xori         s1, a6, -1891
370:              srli         a7, t0, 24
                  and          a6, s10, s7
                  xori         s11, a7, -775
                  add          a4, t5, s9
                  srai         a1, t1, 26
                  xori         s8, t3, 971
                  andi         t5, t1, -1812
                  sltiu        s6, a7, 23
                  xor          s11, s0, t4
379:              sll          t5, t5, s11
                  slli         s2, a3, 20
                  bne          s11, t5, 394f
                  blt          sp, t1, 389f
                  auipc        a1, 498478
                  slti         sp, t6, 1680
                  lui          s6, 146553
                  srl          s2, a3, zero
                  xor          a4, t4, s3
                  srl          gp, a3, s3
389:              andi         a5, t5, 1659
                  auipc        s10, 1037863
                  srl          a6, t4, s11
                  or           a7, a1, a6
                  slti         s10, s6, 1788
394:              sltu         s10, a3, s8
                  slti         t1, s3, 11
                  bgeu         sp, s7, 408f
                  srai         t6, s11, 12
                  sll          s6, s0, t0
                  sll          s7, a1, s11
                  and          tp, s7, s0
                  slt          sp, t1, s11
                  beq          s11, t1, 407f
                  blt          a3, ra, 420f
                  sra          s6, sp, s8
                  bge          s10, s1, 421f
                  lui          zero, 734340
407:              ori          s5, a0, -969
408:              ori          s5, a2, -1869
                  sra          tp, s5, a7
                  slli         zero, s6, 18
                  or           s8, tp, a1
                  beq          s10, t1, 415f
                  or           zero, s6, a0
                  xori         t0, a2, -65
415:              blt          t5, t1, 422f
                  andi         t6, t6, -1729
                  and          a7, a0, s0
                  lui          s11, 937413
                  auipc        gp, 244767
420:              sltu         s2, s5, t0
421:              bge          s3, s6, 429f
422:              bltu         a1, a7, 430f
                  sub          s10, ra, s0
                  sltiu        a4, s4, -1867
                  bltu         sp, s2, 445f
                  xori         s9, s9, -145
                  sltiu        t3, s7, -1199
                  lui          t1, 530875
429:              or           zero, a5, s5
430:              sltiu        sp, sp, -1945
                  bgeu         s9, a4, 433f
                  blt          t1, a7, 439f
433:              addi         s10, s7, -22
                  ori          zero, sp, 318
                  srli         t1, t1, 2
                  addi         a4, a5, 472
                  nop
                  ori          t1, a5, 815
439:              sltu         s10, a1, a1
                  beq          s3, s4, 455f
                  bge          sp, t3, 453f
                  bgeu         t4, a2, 459f
                  xori         a4, t6, -597
                  addi         t4, a5, 602
445:              bltu         a4, s4, 449f
                  sltiu        s9, s8, 1849
                  sltu         s7, a4, a3
                  addi         s1, s7, -1604
449:              srli         t4, sp, 2
                  nop
                  blt          s10, t6, 454f
                  srli         s1, s1, 5
453:              lui          t0, 80031
454:              bltu         t4, s8, 461f
455:              add          a4, s9, t6
                  addi         s10, t1, 1505
                  bge          zero, s1, 476f
                  slti         ra, a0, -65
459:              slt          s2, s10, zero
                  sll          gp, a3, t2
461:              bne          t5, s7, 479f
                  addi         t3, ra, 241
                  or           s11, tp, a7
                  ori          t3, a6, -958
                  slli         a7, t2, 9
                  bgeu         t0, t5, 473f
                  bne          t3, a4, 482f
                  nop
                  sltu         s10, s2, s1
                  nop
                  slt          s11, a5, s5
                  srli         a2, s3, 16
473:              srli         t5, t4, 27
                  sll          t5, s11, s10
                  xor          tp, s5, t4
476:              sub          s8, a4, a4
                  srai         a2, a6, 16
                  slli         t3, s9, 4
479:              sub          a1, a0, a3
                  and          a5, t5, s10
                  sub          a3, t0, s7
482:              blt          s2, s11, 497f
                  xori         sp, a2, 843
                  srli         zero, s0, 5
                  srl          a6, a5, s1
                  blt          a4, t0, 503f
                  srai         a5, sp, 27
                  bltu         zero, a2, 496f
                  and          t0, a6, s8
                  bgeu         a5, a4, 501f
                  sll          s8, gp, t6
                  bgeu         a5, s2, 497f
                  slti         a1, s8, 724
                  lui          a3, 406374
                  sub          s7, s8, s10
496:              xori         a1, a5, 311
497:              slli         a0, a2, 11
                  srai         s6, ra, 5
                  auipc        a4, 515458
                  xor          s7, s5, tp
501:              add          a1, gp, ra
                  beq          a7, s7, 516f
503:              sub          zero, sp, zero
                  bgeu         t4, a6, 509f
                  sra          t4, s2, t4
                  auipc        s2, 32543
                  srai         s1, s9, 14
                  andi         t4, ra, 948
509:              bge          t0, a5, 522f
                  lui          t5, 216524
                  sub          t0, s8, t6
                  srai         a1, zero, 22
                  sub          zero, s5, s11
                  sltu         t5, a3, a0
                  blt          s4, t0, 518f
516:              add          s3, a1, s10
                  srai         a6, t3, 29
518:              sll          s7, s8, s8
                  bne          s9, s8, 530f
                  xor          t6, a6, t6
                  slt          t3, s1, sp
522:              slt          a2, s8, s2
                  sltiu        t3, sp, 997
                  andi         a3, a3, 1996
                  and          s10, t0, sp
                  sll          s3, zero, s9
                  xor          a4, s10, a7
                  srl          zero, a0, a1
                  slt          s9, t1, t4
530:              bge          s0, s11, 547f
                  addi         s9, a2, 1397
                  addi         a3, s0, -1193
                  srai         sp, t4, 29
                  andi         a5, tp, -699
                  beq          zero, s6, 551f
                  and          t3, a4, gp
                  xor          t1, s11, a1
                  bne          s4, t0, 556f
                  srl          s2, t2, s0
                  beq          s0, t5, 555f
                  andi         a7, a5, -1228
                  bgeu         t1, a6, 561f
                  bgeu         s4, t3, 546f
                  sltu         s3, zero, a3
                  sltu         ra, s10, t0
546:              lui          a0, 553106
547:              sub          t5, t3, a0
                  slti         t5, sp, 1660
                  blt          s9, a7, 567f
                  slti         sp, s9, -976
551:              and          a6, s4, s10
                  sub          tp, s0, a0
                  sltu         s6, s7, s7
                  beq          a1, a1, 561f
555:              sltiu        t3, s8, 1813
556:              srli         s11, s7, 28
                  srai         t3, a7, 8
                  sub          t1, a6, s3
                  xor          t5, s10, s11
                  beq          a3, s6, 577f
561:              xori         zero, s7, -1998
                  add          gp, tp, a3
                  xori         a7, a0, 1820
                  or           a4, ra, tp
                  slti         a7, a0, -1207
                  blt          a4, t1, 579f
567:              bne          s10, s6, 572f
                  and          t0, a3, t1
                  auipc        a7, 544359
                  sltu         s10, sp, s0
                  srli         a7, a7, 4
572:              sltu         gp, s9, s8
                  andi         s10, a3, 891
                  addi         a0, a3, 49
                  sll          gp, a3, s6
                  sub          s7, s10, a1
577:              sltu         s5, s2, sp
                  sll          a7, a6, a5
579:              blt          s8, s2, 594f
                  sra          s8, a2, s9
                  auipc        a3, 510686
                  lui          t4, 782127
                  xor          zero, s4, s6
                  sub          sp, s11, s11
                  andi         t0, s1, -1662
                  ori          s8, s2, 421
                  nop
                  sra          t1, a3, t5
                  auipc        a7, 554988
                  xor          t4, s11, s5
                  slti         ra, a6, -1432
                  sltu         a6, zero, a3
                  add          zero, t0, a6
594:              auipc        t6, 636632
                  nop
                  sltiu        a5, a3, -1969
                  and          t6, s11, ra
                  bltu         t1, ra, 606f
                  ori          ra, s3, -1494
                  blt          t5, t5, 611f
                  sub          s11, zero, s11
                  addi         t6, gp, 1727
                  lui          t3, 401165
                  srli         s5, a1, 14
                  sra          s9, tp, a7
606:              sll          a0, s6, s2
                  sra          s6, s6, a4
                  bne          t0, s4, 625f
                  srl          t4, t5, s6
                  srli         tp, s8, 14
611:              auipc        s9, 850725
                  xori         t6, s10, -324
                  add          a1, t5, s8
                  addi         a4, s4, 1982
                  slli         s3, t5, 10
                  auipc        t6, 115911
                  srai         t1, tp, 9
                  srl          ra, a2, s7
                  bgeu         s2, sp, 621f
                  bgeu         s0, t6, 636f
621:              sltu         t3, a0, a5
                  auipc        a5, 476642
                  slt          a4, t2, t5
                  nop
625:              and          s10, sp, a7
                  ori          s2, tp, 559
                  or           s11, a6, a3
                  slli         s6, a7, 6
                  and          s2, s6, s3
                  srli         a6, a7, 26
                  ori          a4, a7, 1841
                  sltu         s7, t4, a6
                  andi         gp, t1, -1890
                  or           s6, tp, s4
                  bgeu         a7, a5, 652f
636:              bge          sp, s9, 643f
                  xori         a3, t5, 229
                  sub          s5, s4, s3
                  andi         s6, s4, -1997
                  slti         s2, t4, 1185
                  bltu         t2, s4, 648f
                  bgeu         s5, t1, 656f
643:              bge          a7, t1, 651f
                  sra          s3, s6, a6
                  blt          s2, a1, 649f
                  slt          a6, s11, a6
                  slli         tp, s6, 15
648:              bne          s1, s6, 653f
649:              slli         a2, s6, 2
                  ori          s5, s5, 1707
651:              auipc        a5, 355785
652:              slli         s1, s7, 24
653:              and          s7, sp, a2
                  blt          tp, s8, 669f
                  sltiu        t3, zero, 1327
656:              and          s9, s2, ra
                  srl          s5, s11, t2
                  xori         t4, t0, 737
                  ori          s11, s10, -1116
                  xor          a7, zero, s0
                  bne          t3, s4, 673f
                  bgeu         a1, t4, 665f
                  bge          s9, tp, 666f
                  slti         t1, t0, 50
665:              srai         t1, t3, 28
666:              add          t0, tp, a7
                  sub          s6, a7, a5
                  srai         s8, t0, 20
669:              sra          ra, s4, tp
                  blt          s0, t3, 677f
                  or           a2, a4, a7
                  bne          s5, a0, 690f
673:              bne          s2, s0, 684f
                  bltu         gp, s1, 694f
                  andi         s5, s8, -2029
                  slli         s10, t6, 26
677:              addi         s2, a5, -53
                  bgeu         t5, a4, 686f
                  ori          a1, s4, -855
                  bge          t4, s5, 691f
                  bne          sp, a5, 701f
                  lui          a7, 736734
                  slti         t0, a5, -1343
684:              blt          t5, s4, 687f
                  slti         a7, zero, -590
686:              and          s5, t3, s7
687:              xor          s9, tp, s9
                  addi         s3, a3, 659
                  sltiu        a7, zero, 800
690:              srai         t6, s0, 4
691:              slli         s1, s3, 29
                  ori          s9, t1, -1036
                  srl          a2, s7, s0
694:              nop
                  sltiu        s7, s11, 266
                  bne          a1, s5, 711f
                  bgeu         s11, t2, 716f
                  beq          zero, a0, 711f
                  xori         s6, ra, 309
                  beq          tp, a0, 708f
701:              bne          a5, t3, 708f
                  nop
                  bne          a6, s9, 710f
                  ori          a3, zero, -881
                  ori          t4, a1, 165
                  or           t0, s8, t4
                  srai         sp, s1, 27
708:              andi         s6, a0, -2031
                  sub          s5, s8, a5
710:              slli         s10, tp, 5
                  la           ra, region_1+436 #start riscv_load_store_rand_instr_stream_4
                  add          t4, t3, a3
                  srai         t4, ra, 24
                  ori          a3, a2, 1444
                  and          tp, s11, a7
                  srli         s8, a4, 25
                  sll          s6, s3, t2
                  lbu          s10, 7(ra)
                  srli         s1, a0, 5
                  lb           s3, 1211(ra)
                  addi         s3, s0, -1464
                  srl          a7, s7, tp
                  sb           sp, 1012(ra)
                  slti         s6, s2, -1617
                  lhu          a1, -168(ra)
                  slli         a4, t2, 21
                  lbu          t5, 524(ra)
                  lb           s7, 172(ra)
                  ori          s6, a0, 1425
                  lh           a6, -380(ra)
                  sb           t2, 764(ra)
                  srai         a0, t3, 10
                  lbu          t0, 236(ra)
                  sh           t4, 1432(ra)
                  ori          zero, s10, -1298
                  sb           a2, 631(ra)
                  lbu          a0, -65(ra)
                  srl          t6, t2, s11
                  lui          zero, 754212
                  add          t5, s5, s0
                  sb           s10, 128(ra)
                  auipc        a5, 282151
                  ori          s10, s8, 1939
                  sub          t4, s0, t6
                  add          a2, a5, s1
                  sll          t1, s2, a5
                  lb           s7, -133(ra)
                  sltiu        zero, s5, 73
                  lh           s10, 1388(ra)
                  sb           a2, 233(ra)
                  lw           t6, 1096(ra) #end riscv_load_store_rand_instr_stream_4
711:              nop
                  nop
                  auipc        a4, 373219
                  auipc        s5, 729540
                  sra          a1, a2, s1
716:              beq          s11, s4, 731f
                  add          s2, s6, sp
                  bge          s4, a4, 720f
                  sltu         s3, a4, s8
720:              sub          t6, s6, s5
                  srli         gp, s5, 24
                  srli         s6, t2, 0
                  bgeu         t4, s5, 728f
                  bge          gp, a0, 740f
                  beq          a0, a7, 733f
                  sll          ra, s9, t4
                  sll          sp, ra, t3
728:              bltu         tp, s0, 740f
                  nop
                  sll          sp, t1, a1
731:              bgeu         s0, s4, 748f
                  sll          t4, t0, s7
733:              slt          a3, s8, a2
                  srai         s10, s5, 0
                  la           sp, region_0+702 #start riscv_load_store_rand_instr_stream_8
                  sb           gp, -99(sp)
                  srai         a5, t3, 19
                  addi         a3, t4, 798
                  lb           s3, 47(sp)
                  sh           s2, 108(sp)
                  lhu          s1, -94(sp)
                  auipc        a4, 998503
                  auipc        s9, 161309
                  sh           s3, 28(sp)
                  sw           s8, 54(sp)
                  sh           zero, 136(sp)
                  sh           t1, 32(sp)
                  ori          s2, sp, -799
                  sltiu        t5, a3, -1127
                  nop
                  lh           a4, -106(sp)
                  lb           s5, 117(sp)
                  slti         tp, a5, 1957
                  slt          a3, t2, s8
                  lhu          ra, -158(sp)
                  xori         a4, s6, -888
                  sltu         zero, s11, sp
                  srl          tp, s8, a7
                  ori          t6, s7, -1803
                  lh           a5, -138(sp)
                  xor          a6, a5, tp
                  lbu          a7, 150(sp)
                  lbu          s1, -66(sp)
                  srl          s8, tp, a6
                  srai         t5, ra, 17
                  sltu         t6, a5, s9
                  slt          a4, s6, t6
                  lbu          s7, 228(sp)
                  xor          s3, t1, tp
                  lhu          a3, 104(sp)
                  slt          t5, sp, a0
                  nop
                  lh           a2, -88(sp)
                  sra          a5, a2, ra
                  lbu          s1, 125(sp)
                  slli         a4, a3, 17
                  lbu          s7, 206(sp)
                  lb           t5, 21(sp)
                  sh           t3, 156(sp)
                  sh           zero, 200(sp)
                  srli         tp, t5, 25
                  xor          a7, t4, s5
                  sltiu        t6, a3, 341
                  lh           t5, -34(sp)
                  sb           sp, 213(sp)
                  slti         a5, a3, 509
                  lbu          s9, 28(sp)
                  lb           s8, -85(sp) #end riscv_load_store_rand_instr_stream_8
                  sltiu        s2, t4, -702
                  auipc        s1, 271210
                  add          ra, zero, s10
                  slti         s3, t6, 1184
                  addi         gp, s1, 1721
740:              add          sp, t3, t5
                  slt          s2, s10, a1
                  add          t0, a4, s0
                  lui          a1, 282156
                  andi         t5, a2, 981
                  sltu         a4, a0, t4
                  blt          a1, s5, 760f
                  srai         a0, zero, 2
748:              bne          t1, t0, 765f
                  and          t0, a2, zero
                  lui          s7, 178332
                  ori          a3, a3, 278
                  beq          a6, t0, 767f
                  slli         zero, a7, 12
                  bne          s7, s4, 761f
                  slti         a6, ra, -149
                  ori          s8, a6, 305
                  bgeu         t2, zero, 760f
                  slti         s3, s2, 82
                  or           s6, s5, s9
760:              xori         s2, a3, 744
761:              xori         s8, a0, -282
                  and          t3, t2, t0
                  bne          s8, s10, 781f
                  xori         ra, a0, 1843
765:              sltu         t0, t3, t3
                  beq          s2, s10, 784f
767:              bltu         a0, t4, 778f
                  nop
                  xori         t4, a7, 1197
                  ori          t5, s6, -351
                  or           s1, s2, s2
                  sub          s11, a0, s4
                  srai         t0, tp, 4
                  xori         s11, s5, -646
                  slti         a5, s2, -1097
                  sll          s11, s3, zero
                  xor          t1, sp, a4
778:              addi         tp, t1, 314
                  slli         s6, s2, 0
                  srl          s3, s1, t1
781:              slti         s11, a1, -602
                  srai         a2, a5, 10
                  bne          s0, zero, 786f
784:              blt          t1, a1, 791f
                  sra          a5, s7, a4
786:              lui          sp, 249876
                  lui          a0, 486400
                  srai         s2, s3, 4
                  ori          t5, a0, -1810
                  add          t4, tp, gp
791:              sll          s5, s4, a0
                  bne          s5, s8, 800f
                  bltu         s2, s10, 810f
                  beq          a4, s9, 798f
                  slt          gp, t1, a5
                  xori         a2, t5, -655
                  bge          s3, s2, 802f
798:              blt          a4, sp, 810f
                  slli         a5, s7, 20
800:              bne          t0, s0, 816f
                  bge          t1, s6, 815f
802:              auipc        s2, 342992
                  andi         s5, s11, 1126
                  bne          sp, s7, 812f
                  nop
                  sltiu        a2, t2, 186
                  lui          t3, 326967
                  bne          a1, zero, 815f
                  auipc        a2, 120070
810:              ori          s5, a2, 802
                  srl          s6, s8, s7
812:              bgeu         a2, s4, 827f
                  add          t5, t1, sp
                  ori          a1, a4, 259
815:              sra          a3, zero, s2
816:              bne          s9, ra, 818f
                  auipc        a1, 515232
818:              srli         s8, tp, 31
                  or           s5, a0, t4
                  sll          s5, s9, t0
                  beq          t0, ra, 832f
                  addi         zero, s10, -1648
                  nop
                  bgeu         s6, t3, 841f
                  sltu         s9, s0, s7
                  bge          a4, a4, 834f
827:              sltu         s7, gp, a2
                  and          t3, t3, s4
                  sltiu        s6, t2, 1927
                  sltiu        sp, s11, 1132
                  blt          t2, a1, 842f
832:              bne          tp, s10, 835f
                  addi         sp, a6, 744
834:              sltiu        s2, a3, 1933
835:              sltiu        a2, s8, 1205
                  sra          gp, s3, t5
                  andi         s8, t6, 1290
                  ori          s3, a7, -1950
                  or           s1, s1, s0
                  la           sp, region_0+1340 #start riscv_load_store_rand_instr_stream_7
                  lbu          t0, 0(sp)
                  slti         t6, a7, -1815
                  xor          a2, s10, s9
                  xori         s9, t1, -1024
                  lbu          t3, -53(sp)
                  add          s1, s6, t5
                  andi         s6, s6, 915
                  andi         s3, t3, 713
                  xor          t6, s6, s0
                  sltiu        s10, s3, 115
                  sltiu        t0, a5, -923
                  lbu          s3, -23(sp)
                  ori          s3, s5, -2007
                  sltu         s5, s5, gp
                  srli         a0, a4, 26
                  lbu          a2, -8(sp)
                  addi         s6, a7, -1050
                  sb           s3, -7(sp)
                  xor          s2, s7, a6
                  slt          s11, t1, t3
                  sll          a1, s10, s1
                  xori         t0, s1, -105
                  sll          a2, a2, t4
                  and          a5, t3, a0
                  addi         a7, s5, -1266
                  xori         tp, zero, -1138
                  lui          t6, 799644
                  lb           a3, 10(sp)
                  sltu         s7, t1, gp
                  lui          zero, 712783
                  sb           s2, 48(sp)
                  srl          tp, s0, s11
                  sb           s3, 37(sp)
                  nop
                  lb           zero, 39(sp)
                  lbu          s6, 42(sp) #end riscv_load_store_rand_instr_stream_7
                  sltu         zero, s7, sp
841:              xori         t6, a7, 985
842:              auipc        zero, 793286
                  bltu         a2, s8, 858f
                  sltiu        t1, s10, -1524
                  or           s10, ra, a4
                  xor          t3, t6, a4
                  sltiu        s2, s6, -743
                  andi         a7, sp, 2039
                  srl          t0, t4, a4
                  srli         ra, a4, 1
                  add          tp, a4, t1
                  sll          s1, a2, s6
                  xor          t1, tp, a4
                  addi         tp, a6, -838
                  sltiu        a7, s1, -918
                  and          zero, a5, a0
                  bgeu         a7, s7, 864f
858:              slti         a3, t6, -1480
                  lui          a3, 650699
                  sll          tp, a2, sp
                  auipc        a4, 876307
                  slti         s5, s9, -1947
                  xor          zero, s2, a5
864:              xor          s9, s1, s6
                  or           s7, a7, t1
                  sltiu        s10, s1, -1431
                  blt          a2, a3, 884f
                  ori          s1, a3, -1064
                  srl          s1, t1, a1
                  slli         t0, t0, 27
                  srli         tp, gp, 29
                  slt          t4, t3, a0
                  nop
                  slt          t5, s0, s6
                  andi         s3, s4, 1039
                  sra          t1, sp, a4
                  bltu         gp, tp, 896f
                  xor          t0, a7, a3
                  auipc        s10, 483063
                  slt          t3, sp, t6
                  andi         a4, a5, 1175
                  add          a5, s1, tp
                  blt          s7, sp, 887f
884:              sltiu        t4, s9, 841
                  sll          t3, a2, t4
                  sll          s10, t6, a2
                  la           sp, region_1+1662 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, -11(sp)
                  sltiu        a5, a0, -675
                  lb           ra, -16(sp)
                  lbu          a3, -9(sp)
                  lbu          ra, -2(sp)
                  sb           zero, 5(sp)
                  lbu          s1, -16(sp)
                  sltu         ra, ra, s11
                  sltu         a3, s1, a2
                  slti         t1, s3, 1513
                  sw           s1, 10(sp)
                  lb           a3, 12(sp)
                  sb           t6, -1(sp)
                  slti         s1, a3, -1830
                  and          zero, t0, t6
                  and          s7, t2, zero
                  nop
                  and          s5, s8, t1
                  lui          tp, 284291
                  srl          a6, s0, t5
                  sb           a5, -9(sp)
                  and          ra, t5, t0
                  and          a2, s2, a1
                  sb           a0, 3(sp)
                  sub          ra, a3, gp
                  lui          s11, 808153
                  sra          a4, s8, zero
                  lw           a2, -6(sp)
                  lh           t0, -10(sp)
                  lbu          t3, -9(sp)
                  lb           a2, -7(sp)
                  lhu          s6, -8(sp)
                  sb           s3, 7(sp)
                  srli         tp, s2, 12
                  lh           s2, -4(sp)
                  sh           s5, 10(sp)
                  sb           s4, 0(sp)
                  lh           s9, 4(sp)
                  lhu          a1, -14(sp)
                  lb           a3, 2(sp)
                  lbu          s7, -4(sp)
                  nop
                  lbu          s11, -11(sp)
                  xori         a2, t0, -406
                  lbu          a5, 8(sp)
                  sb           s4, 7(sp)
                  sub          s11, a0, sp
                  andi         a2, s5, -999
                  and          s1, s10, s3
                  lbu          s8, 13(sp)
                  ori          t3, s6, -1597
                  lhu          s2, -6(sp)
                  sra          a6, s6, a6
                  lhu          s10, 10(sp) #end riscv_load_store_rand_instr_stream_0
887:              beq          s10, a2, 907f
                  sltiu        t5, a2, 382
                  nop
                  bne          a0, s1, 893f
                  sra          s2, a5, tp
                  sltu         a2, t2, t4
893:              lui          s8, 13812
                  addi         t4, a5, -218
                  slt          s10, t6, gp
896:              slli         a4, a5, 12
                  lui          t5, 727628
                  blt          a5, a1, 905f
                  sltu         zero, t1, s10
                  srl          s9, s4, a0
                  sltu         s7, s1, t4
                  sll          t1, a1, a1
                  sub          s10, a6, a5
                  xori         gp, s6, 1024
905:              xori         t6, t3, 841
                  slli         t0, t5, 5
907:              blt          a0, a0, 910f
                  slli         t0, a5, 7
                  bltu         a1, s8, 927f
910:              srli         s8, zero, 14
                  and          s5, s2, t1
                  srli         s7, t3, 2
                  or           gp, a5, a1
                  sll          s5, a1, ra
                  lui          s10, 694582
                  lui          gp, 650513
                  xori         t5, zero, -1139
                  auipc        zero, 776799
                  lui          tp, 747345
                  add          a3, a3, tp
                  addi         a2, tp, -1586
                  srai         t1, s11, 16
                  nop
                  and          s7, s6, a3
                  or           ra, s9, s9
                  addi         s3, ra, -264
927:              auipc        t0, 543611
                  bltu         s11, s5, 943f
                  sltiu        s11, a6, -1353
                  bge          a0, sp, 938f
                  slti         a5, s3, -1589
                  and          a7, s10, t1
                  sub          gp, s8, t3
                  srai         a4, t3, 0
                  sll          s2, t3, t1
                  nop
                  srl          s2, gp, t6
938:              sltiu        s8, s0, -858
                  slli         s2, a1, 14
                  sub          s7, s9, s10
                  xori         tp, a3, -719
                  andi         gp, s0, -2015
943:              and          a3, t2, a3
                  bgeu         t0, a1, 949f
                  slt          gp, s4, gp
                  bltu         t6, s10, 964f
                  xori         gp, t4, 163
                  xor          a3, s3, s11
949:              bne          t6, s6, 954f
                  blt          a1, a4, 967f
                  bltu         s7, s4, 964f
                  andi         t4, s11, -501
                  bltu         tp, a6, 960f
954:              sll          s8, a6, a3
                  xor          t0, s3, tp
                  slti         s11, gp, 480
                  srl          s7, sp, a5
                  srai         a0, t3, 0
                  blt          s2, t3, 964f
960:              sll          s5, a2, a4
                  srai         gp, a6, 23
                  lui          s10, 317961
                  ori          t5, s11, -177
964:              bge          sp, a4, 977f
                  sltiu        zero, a6, 122
                  add          a0, tp, s4
967:              and          t1, a0, t5
                  blt          s4, s7, 973f
                  srl          a0, s9, tp
                  bge          s11, s6, 973f
                  slt          sp, s6, t1
                  xori         zero, t4, 873
973:              slt          s10, sp, a3
                  xori         t0, t3, 230
                  nop
                  slt          a5, a3, zero
977:              lui          t1, 887337
                  bge          a2, s0, 993f
                  srli         s10, a3, 0
                  xor          s3, s3, s9
                  blt          a6, a0, 989f
                  sltiu        tp, a5, 1427
                  xori         t4, tp, 1128
                  srai         a6, a2, 9
                  nop
                  auipc        tp, 158127
                  blt          gp, t1, 1005f
                  add          a6, t4, t5
989:              andi         t0, t0, -967
                  srl          a3, s1, t2
                  sltu         s7, s10, t2
                  slli         a4, s8, 27
993:              srli         t5, s2, 17
                  sra          a0, a2, s11
                  slt          a7, gp, a3
                  sll          t0, a3, a6
                  sltiu        s6, zero, -1905
                  sra          t1, t6, a7
                  slti         s6, s2, -703
                  blt          gp, a0, 1008f
                  add          t1, zero, s11
                  xori         t6, gp, 398
                  blt          a2, t3, 1020f
                  sltiu        s7, a2, 1195
1005:             sltu         s10, s5, t3
                  bltu         s0, s6, 1020f
                  bne          s2, s7, 1014f
1008:             bltu         gp, s11, 1027f
                  nop
                  addi         s2, t4, -1102
                  sltu         s8, a5, gp
                  sltiu        sp, gp, -934
                  ori          s2, ra, -1505
1014:             lui          s2, 795133
                  bgeu         a7, t3, 1030f
                  sub          s6, zero, gp
                  ori          t1, s2, -493
                  bgeu         t0, tp, 1035f
                  slt          a6, t2, t1
1020:             sub          t6, sp, a4
                  andi         s6, s6, -1275
                  sub          a4, a6, ra
                  or           t1, gp, s3
                  nop
                  nop
                  andi         t6, t6, 1949
1027:             beq          s5, gp, 1030f
                  sll          tp, t0, s10
                  slt          zero, a1, s5
1030:             lui          t3, 749284
                  auipc        t5, 1025665
                  srl          s2, s9, s10
                  lui          t5, 705974
                  sltiu        t3, tp, -1363
1035:             srai         a1, t2, 29
                  and          a2, gp, zero
                  lui          t4, 192820
                  srli         t0, s11, 17
                  srai         t3, a6, 21
                  srl          s1, t2, a3
                  sltu         t0, s8, s10
                  and          a6, a3, s0
                  bgeu         t6, a6, 1050f
                  bne          gp, a4, 1062f
                  beq          ra, a6, 1056f
                  bge          t4, s11, 1053f
                  xor          s10, a1, s11
                  sra          s2, s11, s10
                  srli         s11, gp, 28
1050:             sra          s9, t4, gp
                  bne          t6, s5, 1054f
                  slti         ra, s0, 1816
1053:             sll          ra, s7, s0
1054:             and          sp, a4, s11
                  addi         a0, a0, -1348
1056:             nop
                  ori          tp, a2, -1853
                  srai         a0, t5, 28
                  andi         t5, a5, 1962
                  srli         t1, a1, 17
                  xori         a1, s7, 492
1062:             slt          a0, t4, a6
                  and          a4, t2, a0
                  xori         s1, s11, 1896
                  beq          sp, zero, 1076f
                  and          a2, t4, s2
                  sll          s8, t6, t3
                  sll          a0, s1, s0
                  srai         zero, t0, 21
                  blt          s0, s8, 1087f
                  blt          t1, t3, 1079f
                  xor          t3, t0, t3
                  lui          sp, 368281
                  bltu         s6, a6, 1086f
                  bge          s11, a1, 1091f
1076:             bge          sp, a7, 1080f
                  beq          s0, s0, 1079f
                  sub          sp, s10, s10
1079:             bne          s0, s7, 1099f
1080:             lui          s8, 519872
                  bne          s2, sp, 1096f
                  bltu         ra, gp, 1089f
                  bgeu         t1, t5, 1090f
                  or           t0, a6, s8
                  slti         zero, zero, -2016
1086:             xor          t1, a5, a4
1087:             srli         tp, s2, 8
                  srli         t4, a5, 17
1089:             andi         s6, s9, 686
1090:             beq          s3, t6, 1101f
1091:             srai         t4, t0, 17
                  lui          s3, 688283
                  xor          t3, s9, s0
                  bge          s9, s4, 1099f
                  xor          a5, t4, tp
1096:             slli         a3, ra, 25
                  andi         zero, a7, -167
                  slt          s3, s3, s9
1099:             blt          sp, s8, 1101f
                  sra          a1, t0, gp
1101:             srl          a5, a5, zero
                  srli         sp, t2, 31
                  xori         s7, s4, 1998
                  nop
                  xori         a4, a5, 2015
                  srli         sp, a1, 19
                  xori         a7, t6, -1340
                  sltu         tp, s1, a5
                  slt          s1, zero, t3
                  lui          a6, 500747
                  sltu         s9, s9, s1
                  nop
                  xor          zero, a3, t2
                  xori         zero, s5, 1789
                  bltu         a0, zero, 1122f
                  srli         ra, tp, 12
                  bltu         s8, t6, 1135f
                  add          s3, s6, a7
                  lui          sp, 435739
                  and          t5, s2, ra
                  auipc        a0, 115482
1122:             nop
                  srli         a3, a2, 25
                  bltu         s5, t4, 1127f
                  auipc        s8, 624170
                  xori         a7, gp, -670
1127:             slt          t5, s9, t4
                  auipc        s1, 192159
                  ori          s2, tp, 1805
                  or           s3, s5, a0
                  beq          s6, t1, 1146f
                  sll          a3, s2, ra
                  and          a1, s8, a6
                  lui          a6, 1790
1135:             addi         a0, s1, 1839
                  bne          a2, s10, 1151f
                  sra          t4, zero, a4
                  xor          ra, s7, a5
                  sra          a1, s9, a2
                  beq          t6, ra, 1156f
                  beq          a0, t6, 1144f
                  auipc        t5, 658113
                  nop
1144:             srai         s11, t0, 30
                  beq          t0, a6, 1157f
1146:             slli         sp, a5, 22
                  and          s6, t0, a1
                  sltu         s9, sp, a1
                  srl          s1, s2, a4
                  ori          a2, t0, 1597
1151:             add          a2, a6, s9
                  sltiu        t0, a5, -753
                  and          a6, t6, s6
                  andi         sp, t1, -2027
                  beq          t4, a6, 1170f
1156:             slli         tp, s9, 15
1157:             xori         t3, s6, 38
                  addi         s9, gp, -1335
                  slli         a2, zero, 10
                  bltu         s1, s5, 1179f
                  sltu         gp, t6, t6
                  bltu         a5, a5, 1176f
                  bne          s11, a6, 1166f
                  sll          tp, s9, t0
                  srli         t1, a4, 3
1166:             ori          tp, t1, -575
                  xor          s6, a5, a3
                  and          zero, s9, ra
                  sll          a4, s2, a5
1170:             or           t3, s10, t1
                  bgeu         a0, a0, 1185f
                  srai         s9, t6, 24
                  and          t4, t4, s5
                  beq          zero, a6, 1185f
                  srl          a7, a1, t0
1176:             bne          s7, s6, 1184f
                  add          a0, s0, a0
                  ori          a1, s4, -1903
1179:             sltu         s6, ra, s10
                  ori          t4, a5, 489
                  sub          sp, a3, tp
                  xori         t0, s8, -764
                  bne          a2, a6, 1185f
1184:             srli         a6, tp, 3
1185:             srai         s6, t1, 16
                  nop
                  xor          t0, s2, a3
                  lw           ra, 4(s0)
                  lui          s10, 180048
                  srl          t0, a4, t1
                  xor          a1, a0, gp
                  addi         s0, s0, 40
                  auipc        s7, 852781
1566:             addi x4, x1, 0
1566:             jalr x4, x4, 0
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .region_0,"aw",@progbits;
region_0:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x7, x8, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x6, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x6, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x6, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x6, x17, ecall_handler
                  li x17, 0x1
                  beq x6, x17, instr_fault_handler
                  li x17, 0x5
                  beq x6, x17, load_fault_handler
                  li x17, 0x7
                  beq x6, x17, store_fault_handler
                  li x17, 0xc
                  beq x6, x17, pt_fault_handler
                  li x17, 0xd
                  beq x6, x17, pt_fault_handler
                  li x17, 0xf
                  beq x6, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x8, x7, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
