.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 0
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xe72f1ed9
                  li x2, 0xa3ec1eac
                  li x3, 0x1
                  li x4, 0xfd899a57
                  li x5, 0xf2774468
                  li x6, 0xb7f1babc
                  li x7, 0xebb0f07
                  li x8, 0xd
                  li x10, 0xcfbe5926
                  li x11, 0xc96da3bd
                  li x12, 0xfa76344e
                  li x13, 0xf9efcbde
                  li x14, 0xff007bb1
                  li x15, 0x0
                  li x16, 0x0
                  li x18, 0x80000000
                  li x19, 0xfa350fbc
                  li x20, 0x5
                  li x21, 0xd
                  li x22, 0xb
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xa4b919d7
                  li x26, 0xa
                  li x27, 0x80000000
                  li x28, 0xf3dc559c
                  li x29, 0x4
                  li x30, 0x80000000
                  li x31, 0xc
                  la x17, user_stack_end
main:             la           t6, sub_1
                  xor          s9, s9, s3
                  xor          a5, s8, t4
                  addi         t6, t6, -772
                  sra          zero, t3, t4
                  srl          s4, s7, t6
                  bgeu         a7, t2, main_j2 #branch to jump instr
                  lui          s7, 543984
main_j2:          jalr         t5, t6, 773 #jump main -> sub_1
                  srli         gp, zero, 25
                  la           a4, sub_1
                  slt          s0, s9, s2
                  and          a6, s2, a5
                  xor          a1, t1, a3
                  and          s3, s5, t1
                  sltu         s4, s3, a7
                  srl          a2, a5, s10
                  addi         a4, a4, -149
                  xor          t1, a2, ra
                  slli         t2, sp, 30
main_j3:          jalr         t5, a4, 150 #jump main -> sub_1
                  la           sp, region_1+331 #start riscv_load_store_rand_instr_stream_0
                  sh           tp, 43(sp)
                  slti         a6, tp, 988
                  sh           zero, 19(sp)
                  lb           a2, 56(sp)
                  lb           t5, 52(sp)
                  sltu         s2, a4, t6
                  sb           s5, -46(sp)
                  lh           a4, -61(sp)
                  sb           s2, -24(sp)
                  and          s2, t2, t5
                  slti         t2, zero, 1516
                  sw           t5, 13(sp)
                  lbu          gp, 42(sp)
                  lb           a5, -6(sp)
                  sb           t6, 31(sp)
                  lbu          s10, -4(sp)
                  sh           t4, -37(sp)
                  addi         t3, a3, 429
                  sub          a3, gp, t4
                  lb           a6, 20(sp)
                  lw           t3, -15(sp)
                  xor          s9, t5, a3
                  lbu          s3, 24(sp)
                  sll          t3, s4, s9
                  lbu          t2, -12(sp)
                  lbu          s7, -49(sp)
                  lbu          t6, -13(sp)
                  sb           t6, -30(sp)
                  xor          s0, t5, a0
                  lb           zero, 58(sp)
                  sb           s5, 34(sp)
                  lh           s7, 23(sp)
                  sh           a3, 27(sp)
                  srli         s7, s1, 31
                  sb           s6, -32(sp)
                  add          s3, a0, s4
                  lb           t3, -52(sp)
                  lui          s3, 943860
                  slt          a3, a0, gp
                  sw           gp, 49(sp)
                  ori          tp, s8, -1432
                  sh           s6, 17(sp)
                  srl          a3, s8, s2
                  lh           a5, 43(sp)
                  sh           t1, -53(sp) #end riscv_load_store_rand_instr_stream_0
                  lui          gp, 4898
                  srli         t3, s1, 22
                  andi         a0, s2, -1524
                  srai         s9, s10, 2
                  sltu         a4, a0, s5
                  andi         t0, zero, 1154
                  sll          s10, t4, tp
                  sltiu        t2, ra, -512
                  srl          sp, t4, a7
                  xori         gp, s3, 1392
                  auipc        a1, 476088
                  andi         gp, s1, 841
                  lui          t2, 896305
                  slti         a6, s0, -1792
                  sltu         t2, s8, t1
                  srl          s5, a0, s5
                  la           t3, sub_2
                  addi         t3, t3, 223
                  addi         s8, s5, 872
main_j1:          jalr         t5, t3, -222 #jump main -> sub_2
                  sltu         s11, a4, s9
                  srl          s7, ra, s6
                  sltiu        s3, a3, 1641
                  auipc        ra, 172716
                  add          s2, t1, gp
                  ori          a1, ra, 339
                  andi         a6, ra, 1875
                  ori          gp, gp, 672
                  andi         a2, a4, 1930
                  srai         a3, sp, 3
                  andi         a1, zero, 1039
                  add          a6, t5, s5
                  nop
                  sltu         t5, zero, s8
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            lui          s9, 150788
                  ori          s4, zero, -1133
                  auipc        t1, 236500
                  addi         a7, a7, -16
                  xor          s9, sp, s6
                  or           s7, s7, a3
                  sw           t5, 4(a7)
                  andi         s9, t0, 199
                  sra          a0, a6, s5
                  srai         t1, s2, 19
                  add          s9, t5, s4
                  sltu         a0, a2, t3
                  xor          a1, t2, s1
                  andi         s4, s5, -67
                  and          a1, tp, t5
                  sra          a0, ra, ra
                  or           s5, t6, ra
                  add          s4, t5, ra
                  addi         s11, s7, 804
                  add          a3, s6, a7
sub_5_j8:         jal          t5, sub_6 #jump sub_5 -> sub_6
                  slli         a5, a5, 17
                  slt          s10, a1, t1
                  sub          s3, s8, t3
                  srli         a0, t6, 10
                  bgeu         gp, t6, 5f
5:                sra          gp, zero, s6
                  or           t4, a7, s8
                  beq          s4, s1, 16f
                  xori         t1, tp, 887
                  blt          a7, s6, 18f
                  bltu         a4, a5, 18f
                  sra          a0, gp, a3
                  xori         s9, t1, -1230
                  bne          s1, a6, 18f
                  add          t4, a1, t5
                  sub          t4, sp, a3
16:               ori          s0, a7, 1323
                  slli         t5, s10, 21
18:               srli         t0, s0, 17
                  slli         s11, t5, 24
                  xor          t4, s3, t3
                  or           t0, t6, s6
                  sll          sp, s6, s11
                  addi         s3, a7, 536
                  lw           t5, 4(a7)
                  ori          s5, t3, 1017
                  addi         a7, a7, 16
                  andi         s4, sp, -1777
49:               addi x12, x30, 1
49:               jalr x12, x12, 0
sub_6:            bgeu         s6, s9, sub_6_stack_p
sub_6_stack_p:    addi         a7, a7, -12
                  lui          t0, 1006144
                  sw           t5, 4(a7)
                  and          t1, s0, a5
                  sll          zero, s4, s11
                  or           s2, t5, a6
                  slti         a3, t6, -1640
                  xori         s8, tp, -1529
                  xor          a6, zero, s6
                  la           tp, sub_7
                  nop
                  add          s2, zero, a3
                  addi         tp, tp, 790
                  andi         t2, tp, -636
sub_6_j9:         jalr         t5, tp, -789 #jump sub_6 -> sub_7
                  xori         s4, t2, -2044
                  sub          a6, tp, ra
                  sll          zero, t4, gp
                  slti         a1, gp, 502
                  andi         a2, s1, 450
                  slt          tp, a4, s6
                  sub          s8, a4, s10
                  or           a1, sp, s0
                  la           a5, sub_7
                  addi         a5, a5, -359
                  srli         a3, a6, 1
                  lui          a0, 779399
sub_6_j10:        jalr         t5, a5, 359 #jump sub_6 -> sub_7
                  addi         t2, t3, -1806
                  and          tp, s9, t2
                  auipc        t5, 872510
                  sltu         tp, a0, a1
                  and          zero, tp, s1
                  beq          s0, s5, 11f
                  blt          t5, tp, 21f
                  blt          s6, a4, 16f
                  xor          a4, ra, a7
                  auipc        s2, 801772
                  sub          s0, s2, a0
11:               srai         ra, s10, 13
                  bltu         t6, sp, 31f
                  addi         s3, t4, -361
                  and          s8, sp, s9
                  beq          t4, a1, 17f
16:               ori          s4, a2, 267
17:               srai         s5, a7, 24
                  sra          s7, s11, t6
                  srai         t0, s1, 18
                  slli         t3, s11, 23
21:               auipc        s0, 650718
                  add          a3, gp, t1
                  sll          s4, a1, a6
                  slli         a4, a2, 5
                  sra          s11, a5, a0
                  blt          s9, s10, 33f
                  lui          a6, 932904
                  bne          a0, t4, 48f
                  srl          t6, a7, t1
                  sll          t0, a3, s1
31:               srli         a6, a6, 19
                  xori         t4, sp, -61
33:               sll          s7, t5, a4
                  lui          tp, 169105
                  srl          s5, s3, a3
                  bltu         t4, s10, 49f
                  lui          t1, 637514
                  bltu         t3, t0, 41f
                  add          s3, t0, a0
                  slt          t0, s5, t4
41:               sltu         s11, s10, a3
                  lui          t5, 719913
                  xori         t3, s5, -675
                  srai         s7, a2, 20
                  srai         t2, s11, 18
                  bne          a7, t0, 53f
                  sll          a0, s5, s10
48:               bgeu         a1, t6, 52f
49:               xori         s3, a2, 1085
                  bltu         t2, a0, 65f
                  slti         s11, s2, 257
52:               sll          t3, s9, ra
53:               add          a0, t0, tp
                  beq          t1, s2, 65f
                  add          a5, a2, t5
                  auipc        tp, 468254
                  sub          s3, s4, gp
                  srl          s0, a2, s0
                  andi         ra, a2, 647
                  lui          t4, 356660
                  srli         s9, s9, 11
                  sll          t4, a0, gp
                  sll          s10, gp, s11
                  beq          a7, s3, 65f
65:               sra          a1, t0, s9
                  lw           t5, 4(a7)
                  slli         t6, s6, 5
                  addi         a7, a7, 12
                  add          s7, s10, a1
                  addi         s4, gp, 140
                  xori         s10, tp, 540
                  andi         t6, s7, -1505
                  srl          s0, s7, s6
                  slti         a2, sp, 206
104:              addi x20, x30, 1
104:              jalr x20, x20, 0
sub_7:            addi         a7, a7, -20
                  srli         a4, tp, 4
                  sw           t5, 4(a7)
                  sra          s7, a2, a1
                  and          t3, t4, zero
                  xori         t2, s10, -506
                  sll          s4, s7, t6
                  la           a0, sub_8
                  sra          t0, a2, t6
                  srl          s0, zero, s5
                  addi         a0, a0, 35
                  nop
                  bgeu         sp, a6, sub_7_j12 #branch to jump instr
                  slti         a5, a0, -1297
                  add          t2, s3, t4
sub_7_j12:        jalr         t5, a0, -34 #jump sub_7 -> sub_8
                  ori          a0, s5, 662
                  sll          a4, t0, a4
                  la           t4, sub_9
                  sltiu        a4, t3, -86
                  srli         a5, s2, 19
                  addi         t4, t4, -124
                  lui          a4, 683321
                  blt          a2, a0, sub_7_j13 #branch to jump instr
                  sra          s7, s8, s2
                  xori         s2, s2, 1255
                  auipc        a3, 782131
sub_7_j13:        jalr         t5, t4, 125 #jump sub_7 -> sub_9
                  la           s8, region_0+326 #start riscv_load_store_rand_instr_stream_0
                  srai         s3, s4, 25
                  lbu          a2, 2(s8)
                  sb           s4, -6(s8)
                  slti         a4, s4, -1111
                  xori         gp, t5, 1484
                  lbu          t3, 12(s8)
                  sh           a0, 10(s8)
                  srli         s0, s11, 18
                  sll          s4, ra, a1
                  lb           t6, -15(s8)
                  lb           a0, -1(s8)
                  lh           t2, -8(s8)
                  lbu          s4, 12(s8)
                  lb           t0, -9(s8)
                  auipc        s0, 129295
                  sb           ra, -5(s8)
                  ori          ra, a0, 506
                  lb           a0, 14(s8)
                  sb           s2, 11(s8)
                  auipc        a2, 875847
                  sb           s7, 3(s8)
                  lbu          a3, 7(s8)
                  ori          t6, t1, -1759
                  addi         s10, s1, 1506
                  lbu          s4, 1(s8)
                  lw           gp, 10(s8)
                  slti         s3, s3, -174
                  lbu          s2, 13(s8)
                  or           a2, tp, t5
                  xor          a5, a2, s7
                  sh           zero, 6(s8)
                  lb           s7, -13(s8)
                  slti         ra, s4, 1550
                  or           ra, sp, tp
                  lb           t3, -7(s8)
                  srli         s5, t4, 28
                  sll          t5, s6, s7
                  ori          tp, a3, 1928
                  lbu          t6, 8(s8)
                  lhu          s11, -14(s8)
                  or           s7, a6, s11
                  lb           s9, 9(s8)
                  nop
                  sh           ra, 0(s8)
                  sltu         sp, s9, s4
                  lbu          a6, -9(s8) #end riscv_load_store_rand_instr_stream_0
                  ori          a4, t1, 1056
                  bgeu         s4, s9, 5f
                  lui          t6, 1015668
                  sltiu        s2, ra, 1011
                  xor          zero, a5, t3
5:                ori          ra, t0, -443
                  andi         t0, a3, 845
                  sra          s8, s3, t5
                  sub          s4, s8, a5
                  or           t6, t1, a3
                  srl          a6, ra, s8
                  or           t4, t1, t4
                  or           a3, t3, s2
                  auipc        s7, 897588
                  bgeu         a4, s6, 24f
                  bgeu         s3, a0, 24f
                  xori         t4, t4, 1461
                  add          ra, s1, t3
                  srli         a3, s7, 28
                  addi         s9, s3, 1617
                  slt          t3, t1, t0
                  slti         a1, s10, 154
                  slti         t2, a7, 968
                  xori         t0, s3, -450
24:               sltu         s10, t6, s6
                  sub          s10, t4, a2
                  auipc        s7, 93824
                  bne          s1, s9, 41f
                  srli         t3, a2, 18
                  bge          tp, a6, 49f
                  xor          s9, tp, s11
                  blt          s2, t0, 36f
                  bltu         t2, a6, 48f
                  xor          s0, a1, a1
                  addi         a2, a5, 1361
                  srai         t3, s10, 17
36:               bge          t2, a4, 53f
                  andi         s4, s9, -647
                  and          t2, gp, a3
                  sll          gp, t4, t4
                  sub          a2, s5, s0
41:               sltiu        a2, a5, -1802
                  sll          s3, s8, s0
                  bgeu         ra, t6, 52f
                  xori         s4, t5, -720
                  addi         s3, s0, 1083
                  lui          s11, 965096
                  slli         s8, sp, 13
                  la           t4, sub_9
                  addi         t4, t4, -20
                  and          gp, s7, zero
                  add          tp, s4, t5
                  sra          a2, s11, t2
                  srl          a4, t4, s2
                  addi         a2, a7, 1146
sub_7_j11:        jalr         t5, t4, 20 #jump sub_7 -> sub_9
                  sra          a5, a0, a2
                  auipc        t2, 359208
48:               andi         a3, s9, -648
49:               bgeu         tp, s8, 50f
50:               lui          s5, 254397
                  slt          s10, t0, s10
52:               blt          a2, s6, 72f
53:               add          t0, s2, gp
                  and          t5, s4, a4
                  slti         ra, tp, -1000
                  or           a1, s8, s0
                  blt          s6, t4, 74f
                  ori          t6, a2, 784
                  srli         a3, t2, 25
                  bge          s2, tp, 61f
61:               or           s7, a3, s4
                  bgeu         zero, s8, 70f
                  and          t3, tp, zero
                  addi         a6, t6, 1692
                  sub          a5, a1, a3
                  bltu         sp, zero, 70f
                  srl          t2, s2, t1
                  ori          t5, s4, 792
                  sra          s8, a5, t5
70:               bgeu         t1, t2, 73f
                  or           a2, s8, s9
72:               srli         s3, zero, 29
73:               bne          s6, a5, 89f
74:               add          ra, ra, a5
                  sub          a0, s2, a4
                  sll          t2, zero, zero
                  sltu         t6, a6, s0
                  beq          s10, s0, 90f
                  sll          t4, a0, s0
                  slli         a1, t1, 1
                  sub          gp, t4, zero
                  xori         s0, a5, 665
                  nop
                  add          zero, s11, t0
                  xori         t5, s11, 989
                  xori         tp, ra, -964
                  slli         s9, a6, 22
                  beq          t5, s4, 101f
89:               srli         gp, s10, 3
90:               nop
                  sub          s0, a2, t4
                  sltu         s4, s1, a4
                  sltiu        a4, s1, 1965
                  lui          ra, 381413
                  slti         t6, t6, 1840
                  sltu         a6, a4, s1
                  slti         a2, a4, -152
                  sltiu        gp, s8, 1221
                  blt          sp, t1, 119f
                  xori         s9, t2, 1803
101:              nop
                  bne          a6, s7, 105f
                  sra          ra, a6, s0
                  srli         sp, s10, 29
105:              or           a6, s1, s5
                  blt          a2, zero, 121f
                  addi         s8, s7, 1732
                  andi         a0, s10, 793
                  sub          s4, zero, a2
                  xori         s11, zero, -546
                  srai         a5, a3, 23
                  bne          s1, a0, 130f
                  sltiu        s3, t6, 1869
                  addi         a1, a6, -1531
                  or           a3, a4, gp
                  bge          t4, s1, 133f
                  slt          zero, t3, a4
                  nop
119:              or           t5, gp, s11
                  srli         zero, s11, 29
121:              bltu         a5, s4, 130f
                  slti         s2, tp, 1903
                  ori          a2, s10, -435
                  and          a3, tp, a3
                  slli         s9, s7, 10
                  lui          s0, 635368
                  srl          a4, tp, t6
                  slt          a3, t4, a6
                  beq          s6, a0, 135f
130:              andi         s2, zero, -1722
                  sltiu        t5, t2, 836
                  or           t6, a2, s6
133:              slt          a1, t2, s6
                  lui          a0, 81440
135:              ori          gp, a6, -1419
                  sra          a4, s0, a1
                  bge          t0, s1, 141f
                  and          s11, s2, a4
                  and          a4, s4, tp
                  sltu         s9, s6, t6
141:              beq          s9, s11, 158f
                  srli         s8, a5, 8
                  srl          a4, s7, t0
                  slti         s3, a0, 961
                  nop
                  bne          zero, ra, 159f
                  add          s0, s9, a6
                  beq          ra, zero, 159f
                  bltu         s6, s11, 167f
                  srli         a6, t5, 4
                  srli         t3, s10, 6
                  slti         t1, t4, 665
                  andi         t1, s7, 1232
                  slti         s0, a3, 1255
                  bltu         a5, s11, 167f
                  srl          t4, a0, s10
                  xor          s5, s8, a5
158:              or           a6, s10, s10
159:              slti         s2, t0, 658
                  sra          s9, a3, s5
                  bne          sp, sp, 171f
                  sltu         s10, s11, s4
                  blt          a1, t0, 169f
                  ori          s4, s5, 609
                  srl          s3, s3, s1
                  xori         a5, s8, 7
167:              xor          s5, s6, a1
                  beq          s1, a2, 171f
169:              srl          s10, a0, s11
                  auipc        s5, 194633
171:              ori          s2, t2, -27
                  lw           t5, 4(a7)
                  nop
                  nop
                  addi         a7, a7, 20
                  xor          s2, s1, t0
                  sltu         a6, a4, s10
                  add          a2, t1, s2
                  xor          s9, s0, a2
                  srai         a1, s1, 28
                  addi         t1, s6, -1677
267:              addi x21, x30, 0
267:              jalr x21, x21, 0
sub_1:            add          ra, a2, zero
                  and          s2, sp, a5
                  slli         t1, s10, 3
                  and          tp, a2, s2
                  lui          zero, 861847
                  sra          sp, t2, t1
                  addi         a7, a7, -12
                  sub          tp, zero, s9
                  sw           t5, 4(a7)
                  sll          a5, a7, t4
                  srl          s2, s7, s6
                  slt          s8, s2, a0
                  srl          t4, a7, t1
                  xori         a1, a6, 608
                  lui          a2, 323991
                  slli         t4, a6, 27
                  la           t0, sub_3
                  slti         t4, a1, -787
                  sltiu        t2, s4, -211
                  lui          a1, 788741
                  addi         t0, t0, 550
                  sltiu        sp, a4, 1007
                  addi         t2, t2, 1541
sub_1_j4:         jalr         t5, t0, -550 #jump sub_1 -> sub_3
                  slti         s9, s5, 2005
                  bge          s9, s9, 21f
                  add          s11, s10, s10
                  srli         tp, s6, 23
                  addi         ra, zero, -1841
                  auipc        a3, 512829
                  ori          s0, zero, 1093
                  nop
                  and          t3, s10, gp
                  beq          s5, s4, 35f
                  slt          s4, s1, s4
                  andi         ra, t1, 539
                  and          zero, s9, s0
                  slli         t1, s1, 14
                  sra          sp, a2, a0
21:               xori         ra, a1, 33
                  andi         t4, a5, -936
                  sra          s10, t3, gp
                  xori         s8, s10, 1900
                  bgeu         t3, a0, 33f
                  sltu         s11, zero, s11
                  auipc        s9, 930860
                  bltu         t4, s6, 41f
                  addi         s11, zero, 1322
                  lui          ra, 603607
                  and          sp, t0, a5
                  addi         a1, s2, 790
33:               slt          zero, t4, a1
                  bge          s5, a6, 47f
35:               xor          sp, s3, a4
                  ori          t1, a1, -1094
                  add          t0, t6, a3
                  xori         sp, gp, -830
                  slti         t2, a5, 1045
                  bgeu         a0, gp, 44f
41:               auipc        a2, 580370
                  sltiu        s3, t3, 1805
                  sltiu        tp, a2, -1380
44:               sra          s10, a0, sp
                  andi         t0, s1, -329
                  or           s0, a6, t3
47:               beq          a1, t4, 62f
                  sltiu        s3, s10, 1670
                  and          s9, s3, t2
                  sll          a6, s7, s10
                  sltu         s0, s3, tp
                  add          a2, sp, s7
                  sub          a2, s7, s2
                  or           a1, s8, s9
                  or           a1, a6, a3
                  auipc        s9, 936371
                  and          a6, t3, a4
                  bne          s6, t1, 65f
                  sra          t3, tp, s6
                  sll          zero, s11, t4
                  blt          s3, t3, 79f
62:               andi         t4, a7, -1149
                  bne          s2, t5, 70f
                  srli         zero, s1, 28
65:               xori         a1, s3, -1421
                  srli         a6, s1, 23
                  add          s5, t0, sp
                  la           sp, region_0+1486 #start riscv_load_store_rand_instr_stream_0
                  lhu          t0, -1032(sp)
                  ori          s10, t0, -959
                  sll          t1, a5, s6
                  lb           t5, 213(sp)
                  lbu          t2, -1155(sp)
                  lb           a0, -101(sp)
                  sb           a7, 359(sp)
                  sb           sp, -563(sp)
                  or           a3, s9, a7
                  srai         a3, t1, 10
                  xor          ra, s7, s0
                  lbu          s2, -1413(sp)
                  sra          s11, s3, sp
                  lb           s8, -552(sp)
                  lw           s0, -342(sp)
                  xori         s3, ra, 70
                  lb           s3, 151(sp)
                  lhu          zero, -508(sp)
                  and          t4, s2, s5
                  sra          gp, zero, s10
                  lh           ra, -826(sp)
                  add          gp, s1, a2
                  sw           t3, 338(sp)
                  andi         s11, ra, 1651
                  slt          t0, s4, tp
                  lb           s4, -1397(sp)
                  lui          a4, 461877
                  lh           t5, 308(sp)
                  lbu          s4, -131(sp)
                  srli         s11, s8, 24
                  sll          t6, a5, s5
                  srli         s7, ra, 9
                  lb           s8, -1252(sp)
                  auipc        a3, 369482
                  lw           t1, 150(sp)
                  slti         tp, s9, -1047
                  lb           t3, -628(sp)
                  and          t6, gp, s5
                  lb           s5, -267(sp)
                  addi         a3, s2, 215
                  srai         s7, a1, 11
                  sltiu        t0, t2, -207
                  sll          ra, tp, sp
                  lw           zero, -470(sp)
                  sb           t3, -259(sp)
                  slt          a1, s6, s10
                  lbu          ra, 266(sp)
                  lh           t5, -1234(sp)
                  xor          s3, s8, a0
                  xori         ra, t6, -561
                  srai         s10, a6, 2
                  and          s8, t4, s7
                  addi         a5, s8, 874
                  lb           t3, 421(sp) #end riscv_load_store_rand_instr_stream_0
                  slti         s7, a7, -138
                  nop
70:               bgeu         t0, s9, 87f
                  lui          s11, 259953
                  addi         s4, s9, -615
                  andi         s11, a0, -244
                  nop
                  andi         a6, s2, 34
                  sltu         s0, s10, t3
                  add          tp, t4, t3
                  srl          s10, a6, t2
79:               blt          t3, a7, 87f
                  and          sp, s4, t2
                  add          s0, s4, t1
                  slti         sp, s9, -1733
                  bltu         s7, s0, 85f
                  bge          s3, t2, 88f
85:               beq          s3, s10, 102f
                  andi         sp, s6, -632
87:               blt          sp, t3, 98f
88:               sltu         s5, s3, a3
                  sra          a5, a0, a6
                  andi         sp, s3, 597
                  beq          t2, s1, 96f
                  srl          s5, t4, s11
                  bne          a2, zero, 103f
                  andi         s11, s1, -197
                  xor          a2, s3, a7
96:               bgeu         a0, t5, 101f
                  ori          s4, t1, 1155
98:               andi         a6, a1, -621
                  bge          a7, t6, 102f
                  srai         t2, zero, 22
101:              auipc        s11, 499651
102:              sltu         t1, t3, t1
103:              and          s11, tp, a7
                  sra          a3, sp, s8
                  addi         t5, a3, -1288
                  nop
                  bltu         s0, a4, 114f
                  add          s5, a2, t5
                  bgeu         s9, s10, 121f
                  add          s4, s10, s6
                  sra          t5, a1, tp
                  lui          t2, 27236
                  blt          t2, s0, 117f
114:              andi         s10, s0, -753
                  nop
                  slli         a4, s7, 17
117:              auipc        s10, 638027
                  bgeu         s6, t3, 127f
                  sub          t6, ra, s7
                  slt          t6, ra, t2
121:              sra          a2, a5, s0
                  xor          s7, a5, s1
                  blt          s5, t3, 143f
                  blt          sp, s2, 130f
                  bge          s6, tp, 143f
                  slli         t3, s2, 14
127:              and          ra, sp, t0
                  blt          t5, sp, 148f
                  srl          a1, s3, t0
130:              srai         a3, s4, 3
                  bltu         a6, s7, 134f
                  bne          t0, t6, 134f
                  andi         t3, a2, -1527
134:              sltiu        s4, s9, 1194
                  bne          s8, a3, 146f
                  bltu         s10, s6, 140f
                  srai         t2, ra, 30
                  beq          zero, a5, 146f
                  bgeu         s5, s6, 145f
140:              or           s9, s4, s4
                  xori         t0, tp, -1784
                  addi         t5, t6, 1054
143:              sltiu        tp, t5, -588
                  srl          s0, s6, t6
145:              slti         a6, t4, -1047
146:              xor          s0, a2, ra
                  addi         t0, t4, -2022
148:              auipc        ra, 885552
                  andi         s3, a0, 1203
                  lui          t4, 603681
                  sltu         s9, a1, a4
                  nop
                  add          a0, sp, s11
                  srl          s11, ra, t5
                  srai         t6, s11, 31
                  blt          t6, s4, 169f
                  xori         s5, s9, -1075
                  srli         a0, gp, 5
                  bge          t0, t0, 177f
                  srai         s3, ra, 10
                  nop
                  nop
                  nop
                  srl          s0, a7, tp
                  sltu         ra, t0, s0
                  or           s2, s3, a0
                  srai         t5, t2, 26
                  srli         a0, t5, 28
169:              slt          s3, t2, a7
                  bge          a4, s4, 177f
                  add          s8, a1, t6
                  nop
                  auipc        s11, 115328
                  srli         t4, a4, 12
                  sub          sp, s0, t0
                  andi         a0, a6, -2038
177:              addi         s11, t1, -587
                  slli         t4, s11, 4
                  srli         t0, sp, 17
                  andi         ra, a6, -1567
                  beq          s5, ra, 184f
                  or           a2, s0, t6
                  addi         s8, t5, -1954
184:              andi         zero, s4, -1447
                  lw           t5, 4(a7)
                  sub          a3, s9, s7
                  srl          t4, t1, s2
                  addi         a7, a7, 12
                  and          t2, t2, t3
263:              addi x24, x30, 0
263:              jalr x24, x24, 0
sub_2:            sra          s9, a3, s0
                  andi         a2, t0, -563
                  sltiu        s10, tp, -95
                  beq          sp, s3, sub_2_stack_p
                  or           sp, a7, s1
sub_2_stack_p:    addi         a7, a7, -20
                  sw           t5, 4(a7)
                  nop
                  srl          a6, s1, zero
                  ori          s7, a4, -1027
                  nop
                  la           s0, region_0+1540 #start riscv_load_store_rand_instr_stream_14
                  srai         s7, s8, 22
                  slt          s9, tp, s11
                  srl          sp, s4, a1
                  sltiu        t1, a2, 1992
                  sb           a2, 155(s0)
                  xor          t4, t2, ra
                  lbu          s11, 5(s0)
                  and          a3, sp, s5
                  lw           tp, 104(s0)
                  sh           s3, 96(s0)
                  lhu          s10, -12(s0)
                  lb           t3, 192(s0)
                  sh           t4, -10(s0)
                  lb           t2, 233(s0)
                  or           a6, s10, tp
                  lb           ra, -187(s0)
                  xori         s10, tp, -1835
                  slli         a4, a1, 7
                  lh           s11, 126(s0)
                  sb           zero, 216(s0)
                  xor          a6, t3, a4
                  sb           s7, -255(s0)
                  sltu         a6, a2, s0
                  lui          sp, 292631
                  xor          s2, s6, s11
                  lui          a3, 856320
                  lui          a5, 15546
                  or           gp, s8, t2
                  lhu          t0, -40(s0)
                  lui          a0, 877486
                  sub          s2, t2, a5
                  sltiu        s8, s4, -1534
                  slti         zero, t1, 1545
                  sub          s5, t5, s6
                  auipc        tp, 223981
                  lb           s10, -255(s0)
                  lhu          zero, 114(s0)
                  slli         ra, a0, 7
                  sb           ra, -17(s0)
                  and          a5, s5, ra
                  sb           t1, 85(s0) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+1723 #start riscv_load_store_rand_instr_stream_2
                  and          t6, zero, a7
                  lbu          t0, -395(sp)
                  xor          t6, s9, s3
                  sll          t1, t6, s7
                  lh           s9, -1163(sp)
                  slli         t3, sp, 17
                  lh           t3, 61(sp)
                  andi         t3, t0, 12
                  lb           s5, -614(sp)
                  slt          t4, s2, s5
                  lbu          t4, 184(sp)
                  slti         ra, gp, -21
                  lb           s5, -1051(sp)
                  sb           a6, -856(sp)
                  or           gp, t6, a1
                  sb           s8, -1384(sp)
                  sltiu        a6, s11, -1982
                  lb           t2, 114(sp)
                  sb           a1, 10(sp)
                  sb           s1, -269(sp)
                  slt          zero, a3, tp
                  lbu          t0, -1522(sp)
                  lui          s4, 525083
                  xor          a5, a1, t3
                  lbu          tp, -1667(sp)
                  lbu          t5, 81(sp)
                  slt          t5, zero, sp
                  slli         s2, t3, 8
                  auipc        a0, 984195
                  slti         s3, t4, 1365
                  srli         ra, s7, 22
                  slli         t1, s0, 2
                  lui          s2, 395453
                  sltu         s3, gp, s4
                  lbu          a6, -1299(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_1+1017 #start riscv_load_store_rand_instr_stream_11
                  slli         t0, sp, 16
                  ori          t6, a1, -965
                  or           gp, a3, t1
                  sltiu        gp, s9, -2001
                  add          gp, s5, a1
                  nop
                  lb           ra, 34(s3)
                  lb           gp, 120(s3)
                  or           a3, a3, s2
                  slt          a5, s0, s2
                  slti         s2, s6, -1691
                  sb           s4, 256(s3)
                  srai         a5, s7, 23
                  sra          a1, a0, s5
                  xor          s2, a7, s11
                  ori          s11, s5, 1206
                  srl          a4, s11, a1
                  and          s5, a7, t0
                  or           t2, s0, s1
                  and          tp, s6, a2
                  nop
                  srli         s2, ra, 0
                  lbu          s8, -254(s3)
                  addi         t4, s8, 42
                  lh           t3, -87(s3)
                  slti         sp, s5, 1136
                  lh           s5, -27(s3)
                  lb           t5, -214(s3)
                  sb           a5, 46(s3)
                  add          s7, a6, t1
                  lb           t2, -152(s3)
                  lbu          tp, -208(s3)
                  lbu          a6, -186(s3)
                  sub          t3, t6, t0
                  auipc        t5, 803961
                  add          t0, a5, s11
                  sltu         s7, sp, a3
                  sb           s7, 251(s3)
                  sh           s6, -55(s3)
                  ori          a3, s11, -689
                  slli         a4, a1, 2
                  and          t6, t6, t6
                  lui          a4, 664648
                  lb           sp, 50(s3) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+1570 #start riscv_load_store_rand_instr_stream_0
                  lhu          tp, 12(sp)
                  slt          tp, s1, gp
                  slti         a1, a1, -512
                  sra          zero, s3, s7
                  sub          s0, t6, s1
                  srl          a1, t6, s9
                  xori         t1, t4, -1101
                  lbu          t4, 16(sp)
                  srl          a3, t3, s5
                  add          s9, a7, s9
                  lb           t4, -10(sp)
                  addi         s5, s8, 1806
                  lui          a6, 88589
                  ori          t6, s10, 1906
                  lhu          t6, 6(sp)
                  sltiu        gp, a7, 928
                  andi         t1, s10, 555
                  lhu          ra, 12(sp)
                  srli         s5, s7, 14
                  lhu          a1, -16(sp)
                  andi         gp, sp, 1911
                  sltu         s4, s9, a4
                  and          a3, s5, t1
                  lb           a4, -11(sp)
                  xori         s10, t1, -661
                  slli         a5, s5, 12
                  xor          s0, s5, t0
                  lbu          s4, 0(sp)
                  sltiu        a4, s6, 1177
                  sw           sp, -14(sp)
                  lh           tp, 12(sp)
                  sub          a1, s5, a0
                  lh           t5, 6(sp)
                  sll          s10, zero, zero
                  lbu          s10, 9(sp)
                  slti         s0, t3, 1848
                  lhu          t4, -4(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+1638 #start riscv_load_store_rand_instr_stream_8
                  lbu          tp, 14(a3)
                  srai         s9, t5, 14
                  srai         gp, s1, 29
                  lui          a2, 965893
                  sub          s5, a5, t0
                  lb           tp, -38(a3)
                  lb           a2, 38(a3)
                  addi         a6, a1, 133
                  auipc        s4, 832638
                  srli         tp, t1, 16
                  lui          s0, 953709
                  ori          s8, t4, 1268
                  lw           a0, 18(a3)
                  lw           s11, 38(a3)
                  and          a5, t2, sp
                  lb           s7, -60(a3)
                  lw           s11, 42(a3)
                  lhu          t0, 12(a3)
                  addi         s0, sp, 884
                  slt          s7, s4, a2
                  lh           s10, 32(a3)
                  lbu          s3, -3(a3)
                  lbu          t4, 19(a3)
                  sh           s5, 50(a3)
                  lb           ra, 57(a3)
                  lb           t6, -23(a3)
                  slt          a0, tp, tp
                  sltiu        t5, a6, 1412
                  sb           t3, -27(a3)
                  lbu          a2, -62(a3)
                  lb           zero, 49(a3)
                  lui          s5, 708809
                  nop
                  lbu          a5, -15(a3)
                  sltiu        tp, a1, 1979
                  lbu          ra, 48(a3)
                  lb           tp, 1(a3)
                  sh           a6, -22(a3)
                  lhu          t0, -4(a3)
                  sb           a0, -63(a3)
                  lh           tp, 14(a3)
                  auipc        s11, 584547
                  sltiu        t6, a3, 553
                  lui          s9, 888854
                  lbu          s2, -9(a3)
                  sh           a3, -22(a3)
                  lb           s9, -23(a3) #end riscv_load_store_rand_instr_stream_8
                  la           s2, region_1+1265 #start riscv_load_store_rand_instr_stream_6
                  lb           t3, 54(s2)
                  and          a0, s0, s11
                  or           t5, s6, a0
                  and          s5, a0, a7
                  slli         a1, s4, 15
                  srl          s8, s10, a3
                  lbu          s11, -54(s2)
                  sra          a4, s3, s10
                  sb           zero, -24(s2)
                  ori          s3, a5, -276
                  slt          s7, a1, zero
                  lbu          t5, 40(s2)
                  slt          s3, a5, a6
                  srl          sp, a6, a5
                  lh           a5, 41(s2)
                  nop
                  or           a0, a7, ra
                  sra          a5, s9, a0
                  or           s7, t1, a0
                  sll          t6, s0, t6
                  auipc        t0, 228352
                  sra          t5, sp, gp
                  sb           t3, -46(s2)
                  sb           gp, -28(s2)
                  srli         t6, a5, 6
                  lui          sp, 41060
                  and          zero, t4, a0
                  lbu          t6, 45(s2)
                  srl          a3, a2, gp
                  lb           s0, -2(s2)
                  sll          t1, ra, a0
                  sll          s3, s0, a3
                  sltiu        t6, s8, -898
                  srai         s7, s6, 6
                  xori         s10, t3, 798
                  sb           t1, -40(s2)
                  sll          s7, t2, tp
                  sll          t5, s8, t5
                  xor          ra, s4, a5
                  sh           a4, -37(s2)
                  addi         t2, s1, 1954
                  lb           gp, -17(s2)
                  lbu          tp, -38(s2)
                  lbu          a2, -60(s2)
                  sb           gp, -44(s2) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_0+796 #start riscv_load_store_rand_instr_stream_9
                  lui          ra, 802869
                  addi         tp, t2, -2001
                  srli         a5, a5, 10
                  sltu         s11, t4, s7
                  xor          s2, s5, a4
                  sll          s7, a7, s0
                  auipc        s3, 293006
                  srli         a3, a1, 18
                  sb           a5, 229(t6)
                  add          zero, t2, s4
                  sltiu        t3, a4, 864
                  andi         s3, s11, 194
                  sb           s10, 122(t6)
                  xor          a4, a3, s10
                  sra          a0, a5, s9
                  lui          s4, 394019
                  lui          gp, 176438
                  lb           s4, -11(t6)
                  srli         a6, sp, 21
                  lbu          a0, -30(t6)
                  sw           a2, -88(t6)
                  lbu          t1, -11(t6)
                  andi         s2, s6, 301
                  lbu          ra, 199(t6)
                  slti         s4, s11, -154
                  lhu          s3, -36(t6)
                  addi         s8, s0, 1135
                  add          t1, s10, t5
                  xor          s0, t6, a5
                  sw           zero, 84(t6)
                  sb           s4, 123(t6)
                  lbu          t5, 157(t6)
                  add          t2, s0, a6
                  lh           t1, -154(t6)
                  sb           t6, 94(t6) #end riscv_load_store_rand_instr_stream_9
                  la           s9, region_1+599 #start riscv_load_store_rand_instr_stream_4
                  sw           gp, 45(s9)
                  sltiu        t6, t0, 555
                  andi         zero, s7, 1799
                  sb           t4, 14(s9)
                  sltu         tp, s0, a0
                  srli         a2, sp, 2
                  xori         tp, gp, -1029
                  lb           s7, 12(s9)
                  sb           a3, -33(s9)
                  lbu          s8, -18(s9)
                  sra          t5, a5, a6
                  and          t2, s9, tp
                  lw           s3, 57(s9)
                  xor          gp, t2, s11
                  lhu          a3, -13(s9)
                  or           a0, gp, s8
                  sltiu        a1, s2, -719
                  srl          s10, a6, t1
                  lbu          a0, 56(s9)
                  sb           t1, -51(s9)
                  sltu         s11, t2, t6
                  ori          t4, gp, -307
                  sra          t5, s4, s2
                  sh           a0, 25(s9)
                  lhu          t1, 11(s9)
                  lbu          s5, -34(s9)
                  lui          s7, 188612
                  lb           t3, 52(s9)
                  andi         sp, a0, -984
                  sltiu        gp, zero, 135
                  lb           gp, 10(s9)
                  lui          a6, 128884
                  lb           t5, -24(s9)
                  lbu          s7, 6(s9)
                  sll          a3, s4, gp
                  ori          sp, t3, -1914
                  lbu          s11, -6(s9)
                  lbu          t0, 46(s9)
                  sltiu        a3, t6, 1226
                  sw           s0, 5(s9)
                  lui          s2, 640473
                  lb           a5, 38(s9) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1399 #start riscv_load_store_rand_instr_stream_3
                  sltiu        s0, t5, -1985
                  addi         s11, s5, -334
                  lhu          s11, -529(sp)
                  srl          s10, t0, s1
                  lh           a3, 311(sp)
                  sltiu        ra, a4, -26
                  lbu          gp, -730(sp)
                  sb           a4, -276(sp)
                  nop
                  auipc        t0, 636147
                  srai         a6, a4, 8
                  add          t1, t1, s2
                  lh           ra, -193(sp)
                  lb           t0, -516(sp)
                  auipc        a3, 1000205
                  lw           t2, -267(sp)
                  sb           a6, -484(sp)
                  lbu          gp, -560(sp)
                  srl          gp, s0, a4
                  sub          s7, a7, t3
                  andi         t0, tp, -1166
                  slt          a4, s5, a4
                  sb           s4, -262(sp)
                  sb           s6, -325(sp)
                  and          a6, t2, s3
                  or           s2, s2, a6
                  add          tp, t1, s9
                  sb           s11, -80(sp)
                  sra          a6, gp, s1
                  lbu          t4, -1226(sp)
                  srai         a1, ra, 23
                  auipc        s3, 847683
                  sw           s10, 321(sp)
                  andi         a5, a7, 74
                  lbu          s11, 2(sp)
                  add          s0, t0, s4
                  lh           t0, -207(sp)
                  srli         a2, s10, 12
                  auipc        a0, 22612
                  auipc        t3, 418236
                  lh           a1, -117(sp)
                  lbu          t1, 364(sp)
                  lhu          s2, -73(sp)
                  andi         a2, a7, -604
                  sb           a6, 211(sp)
                  lbu          zero, -1326(sp)
                  slt          zero, s1, t4
                  srl          a3, a0, a1
                  sb           t5, 27(sp) #end riscv_load_store_rand_instr_stream_3
                  nop
                  srl          a1, t2, t4
                  sub          zero, t0, a2
                  auipc        s9, 740843
                  sra          t4, tp, ra
                  blt          t5, s0, 11f
                  slli         s5, ra, 24
                  slt          s8, t0, s2
                  slli         a0, sp, 29
                  addi         t1, t0, -846
                  bne          a6, t3, 11f
11:               srl          s0, s3, s4
                  bltu         a4, s10, 14f
                  slti         t4, s11, -201
14:               addi         gp, a3, -797
                  xori         t6, a2, -1792
                  and          a5, a6, s8
                  srli         a1, a4, 5
                  xori         s10, s11, 1733
                  ori          ra, s0, -1397
                  sra          t6, a0, t3
                  bgeu         s5, s0, 32f
                  auipc        s7, 1012776
                  add          ra, s2, s2
                  xor          t3, t4, t0
                  lui          s0, 877020
                  bltu         a7, a5, 35f
                  nop
                  bge          s2, s2, 34f
                  xor          s2, zero, s6
                  sltiu        a4, s8, -1378
                  sltu         s11, a5, t6
32:               slli         a4, s0, 19
                  slti         s8, t0, -1639
34:               add          t0, a4, s1
35:               or           s0, a2, t5
                  or           s8, a1, t0
                  slti         a2, s4, -1619
                  srai         a2, t4, 18
                  add          s7, a7, s2
                  or           t6, s7, s8
                  or           t1, t0, s9
                  slli         a6, s5, 0
                  ori          t1, tp, 1067
                  and          s9, a5, a1
                  bgeu         a1, t3, 48f
                  sll          a3, a1, t2
                  addi         a0, sp, 1616
48:               sub          t5, s2, a4
                  auipc        zero, 472756
                  and          tp, ra, s1
                  slti         t4, t2, 472
                  blt          s11, t0, 67f
                  auipc        s9, 587265
                  addi         ra, s1, 1293
                  xori         gp, s0, -133
                  addi         s8, a7, 528
                  slt          a0, t5, s10
                  sra          t4, a1, a7
                  sra          tp, t2, s1
                  add          gp, t0, a3
                  or           s11, sp, s5
                  srai         t1, a6, 27
                  xor          s2, s10, s3
                  srli         s5, a7, 17
                  blt          sp, t4, 78f
                  beq          t0, a6, 85f
67:               bltu         t1, s6, 77f
                  xori         t5, s2, -174
                  bgeu         t6, s9, 78f
                  sll          s3, s3, s8
                  slli         t5, t1, 15
                  sll          s4, a1, s7
                  sub          tp, s9, a3
                  or           a0, a0, s9
                  la           s4, region_0+687 #start riscv_load_store_rand_instr_stream_10
                  sb           a4, 0(s4)
                  lh           s3, -3(s4)
                  sw           a2, 13(s4)
                  lbu          s10, -10(s4)
                  lbu          s9, 12(s4)
                  andi         s0, s0, 386
                  lbu          a3, 10(s4)
                  sb           a3, 14(s4)
                  lui          t6, 113051
                  lb           t4, -8(s4)
                  slt          s5, s9, s5
                  and          a1, s10, s9
                  srai         zero, s1, 5
                  sra          s0, tp, s7
                  slli         t3, t1, 13
                  lbu          t3, -12(s4)
                  lb           a5, 11(s4)
                  xori         s2, a2, 1652
                  lb           t4, -6(s4)
                  lhu          a5, -11(s4)
                  srai         t5, zero, 20
                  lbu          s0, 0(s4)
                  addi         s2, s10, -1136
                  sra          t5, a5, s3
                  auipc        sp, 180757
                  lw           t3, -3(s4) #end riscv_load_store_rand_instr_stream_10
                  sltiu        sp, s4, 1845
                  and          s10, a4, s7
77:               srai         ra, a4, 23
78:               slti         s4, a1, -524
                  xori         tp, s10, -1353
                  ori          sp, s3, 134
                  lui          t0, 752782
                  sll          s3, t6, t0
                  bltu         a2, zero, 91f
                  xor          s8, gp, a0
85:               add          s2, s3, s0
                  ori          t5, a1, 1453
                  sltu         sp, s5, gp
                  nop
                  lui          a2, 515066
                  xor          sp, s2, tp
91:               sub          s4, t2, t6
                  add          a6, a5, a2
                  slli         a1, a7, 8
                  xori         a6, s10, 1856
                  auipc        s5, 696244
                  auipc        t0, 443542
                  bgeu         s1, a2, 117f
                  beq          sp, t5, 116f
                  sltu         gp, s7, s4
                  andi         t0, a6, -1390
                  or           a6, t0, zero
                  bne          s1, s5, 104f
                  slti         s10, a6, -475
104:              slli         tp, zero, 2
                  andi         a0, gp, 704
                  srl          s3, a6, t5
                  bltu         a6, s3, 126f
                  and          s7, a2, a0
                  addi         t4, s6, -14
                  lui          s11, 515988
                  sra          s9, tp, s8
                  sltiu        ra, s0, -919
                  sub          ra, s1, s7
                  sltu         s9, a7, s0
                  sub          s3, s10, s5
116:              srli         s11, s6, 31
117:              auipc        s2, 586166
                  bne          t4, sp, 119f
119:              sll          s7, s5, t0
                  auipc        t4, 859585
                  slt          t1, a4, t4
                  ori          s8, tp, -759
                  bge          a3, a7, 126f
                  blt          t5, s5, 136f
                  xori         s3, a4, 1026
126:              xori         sp, sp, -1850
                  slti         t1, s5, -1746
                  sltu         t5, tp, a4
                  slli         a5, a2, 14
                  beq          s8, a1, 144f
                  bgeu         tp, a7, 147f
                  blt          t5, a0, 143f
                  beq          s10, s0, 149f
                  or           t5, s0, t1
                  auipc        a4, 403187
136:              lui          s3, 279688
                  sra          s2, s2, a3
                  xor          s2, s6, s6
                  srl          s8, gp, s4
                  andi         a1, s2, 1206
                  sltiu        t6, s3, -1160
                  bltu         s11, s5, 159f
143:              or           a3, s10, s11
144:              beq          t2, a1, 146f
                  srli         s3, s10, 21
146:              and          t1, t6, t2
147:              sltu         ra, a6, ra
                  ori          ra, zero, 1728
149:              srai         sp, s2, 5
                  slli         t4, a7, 28
                  and          s0, ra, ra
                  andi         ra, s0, 1760
                  slli         t0, t6, 0
                  sltiu        t4, t4, -679
                  ori          a5, zero, 1803
                  ori          a3, zero, 1767
                  sub          tp, s6, a5
                  sub          a2, sp, tp
159:              srai         t1, s11, 11
                  sub          s5, zero, sp
                  lui          gp, 72956
                  bne          a1, zero, 170f
                  srai         ra, t2, 30
                  bltu         sp, t2, 176f
                  nop
                  bgeu         t2, gp, 169f
                  andi         t0, sp, -1675
                  beq          a4, a0, 175f
169:              slt          a1, s0, s5
170:              sltu         t4, a5, a0
                  beq          s11, t5, 179f
                  slli         s4, t1, 15
                  sltiu        s10, s3, -1548
                  srli         sp, s11, 2
175:              or           a6, s8, t1
176:              bne          t3, t4, 182f
                  slti         t4, a6, 822
                  sra          t1, s1, s4
179:              beq          zero, a7, 190f
                  slli         tp, gp, 15
                  addi         s5, t1, 242
182:              slt          sp, t0, t2
                  addi         ra, a6, 1875
                  bgeu         a1, t2, 204f
                  add          s2, a7, s7
                  sra          t0, a4, a5
                  sra          s10, t1, sp
                  slti         ra, a7, 715
                  bltu         s9, t0, 205f
190:              xori         s11, t5, 10
                  lui          s7, 78325
                  bgeu         s3, tp, 210f
                  blt          s9, a1, 194f
194:              slt          a1, t6, s10
                  sltiu        s10, t5, 211
                  slti         s3, s8, -1274
                  lui          a6, 9107
                  blt          t5, s11, 201f
                  auipc        t3, 146597
                  slt          t5, a6, s4
201:              lui          s10, 21166
                  srl          ra, ra, a0
                  slt          gp, s3, zero
204:              sra          s8, s11, t3
205:              sra          t4, s9, s8
                  srai         tp, a4, 14
                  sltiu        s2, a0, 1385
                  bgeu         t3, t6, 210f
                  or           t6, s3, s10
210:              sub          t1, s11, ra
                  bgeu         s11, s10, 230f
                  beq          a4, a2, 224f
                  srli         t3, s0, 17
                  sra          s0, t3, a5
                  auipc        t5, 813756
                  and          gp, t4, s5
                  ori          t4, a7, -102
                  sra          sp, s3, t6
                  slt          s4, a0, s8
                  slt          t3, t6, s9
                  auipc        zero, 674412
                  srl          ra, s7, gp
                  bne          t2, zero, 226f
224:              bgeu         a5, a5, 243f
                  nop
226:              srli         a1, a7, 18
                  sltu         t1, tp, t6
                  slt          s7, s7, s2
                  sltiu        s5, t1, -322
230:              blt          s11, a7, 232f
                  slli         s9, s6, 9
232:              add          s0, t5, s9
                  slli         a6, s0, 2
                  sll          s10, s0, s4
                  srai         a4, s7, 4
                  sra          gp, s2, gp
                  auipc        t0, 742599
                  bltu         t2, t6, 246f
                  or           t2, s8, tp
                  sll          a0, tp, tp
                  slti         s7, t2, -370
                  nop
243:              srai         sp, a7, 0
                  srai         zero, s1, 12
                  srl          t2, t5, s8
246:              sll          s7, sp, zero
                  xor          zero, t1, a0
                  srai         t5, s8, 13
                  sra          s5, t3, a2
                  sra          t3, a1, t5
                  and          a0, tp, s2
                  add          a4, sp, s5
                  slti         a0, s5, -2005
                  xor          ra, t6, sp
                  slt          s9, sp, s1
                  srai         t3, t0, 25
                  blt          s4, a4, 260f
                  addi         s11, a3, 1015
                  bltu         s5, a2, 261f
260:              bge          s1, s1, 277f
261:              bge          s9, a4, 275f
                  bgeu         s11, s9, 277f
                  or           a6, sp, zero
                  srai         t6, s2, 13
                  sltiu        s8, s0, -1996
                  slti         t0, tp, -844
                  sltiu        zero, s6, -418
                  auipc        gp, 927742
                  bltu         s8, sp, 280f
                  auipc        a6, 151767
                  slt          t4, a6, s11
                  sltu         a0, s3, s2
                  bltu         t5, zero, 282f
                  srli         s10, sp, 11
275:              bge          a4, s11, 276f
276:              nop
277:              sltu         a2, t2, ra
                  slli         t4, a5, 13
                  bltu         s10, a0, 292f
280:              sltu         t4, s3, ra
                  addi         a0, a2, 1584
282:              ori          t1, a4, -1008
                  and          zero, s10, s4
                  srli         s7, s6, 30
                  srai         zero, s8, 0
                  srli         a3, zero, 15
                  srai         gp, s9, 16
                  srai         sp, a2, 1
                  bgeu         a3, a2, 299f
                  add          s5, s4, s9
                  sltiu        s3, t1, 1637
292:              ori          a0, s9, -596
                  sra          a3, a3, s2
                  slli         tp, tp, 7
                  nop
                  slli         s0, t5, 20
                  auipc        t1, 9272
                  nop
299:              and          s10, t3, t2
                  addi         t2, a7, 162
                  blt          t1, a4, 307f
                  sub          s7, s7, t5
                  blt          t0, a7, 312f
                  sll          gp, s8, a2
                  blt          sp, t1, 312f
                  and          s3, t6, s6
307:              nop
                  sll          s11, gp, s4
                  beq          t1, a6, 325f
                  slli         s2, gp, 16
                  slti         s7, t5, 1813
312:              addi         a6, t5, -795
                  or           s4, s11, s4
                  sltu         t5, tp, s7
                  or           ra, t5, s11
                  slt          t4, t5, t0
                  add          t1, tp, s6
                  srli         a1, s0, 27
                  andi         tp, tp, -358
                  bgeu         a2, s11, 332f
                  sub          t2, ra, a2
                  sra          ra, a0, t3
                  nop
                  sltu         s4, s1, s10
325:              beq          s2, a0, 337f
                  and          s11, s7, t0
                  addi         a6, s10, -706
                  beq          zero, s5, 346f
                  sltiu        ra, s6, 1392
                  srl          ra, t5, sp
                  add          zero, s6, gp
332:              sub          s7, a6, s5
                  or           t4, a7, a1
                  xor          a4, t2, ra
                  add          gp, s6, zero
                  ori          a0, tp, 131
337:              blt          s5, t4, 349f
                  lui          a0, 194065
                  add          t1, s6, s7
                  bge          s4, t4, 342f
                  slli         t0, s7, 11
342:              bge          s6, a4, 357f
                  srl          t3, a2, zero
                  sll          a2, zero, t0
                  blt          s6, t6, 364f
346:              sra          s11, t4, a6
                  ori          tp, a2, 845
                  andi         t3, t2, -1946
349:              slt          s3, t4, s11
                  srli         tp, s10, 7
                  srl          ra, s11, a2
                  sll          s11, s4, s6
                  auipc        t5, 211730
                  ori          zero, t2, 961
                  srli         s4, t0, 18
                  lui          t3, 336331
357:              srli         t4, tp, 8
                  bge          s2, s3, 374f
                  bge          t3, a5, 365f
                  xor          s5, s3, s0
                  blt          s6, a1, 364f
                  sll          a2, a0, a2
                  lui          a6, 299441
364:              xor          s0, s8, s10
365:              bne          a6, sp, 368f
                  xor          t5, a5, t2
                  sub          sp, s0, s10
368:              bge          s4, tp, 377f
                  bne          t0, a0, 385f
                  add          s2, s0, s11
                  and          s0, t1, sp
                  sltu         a1, a1, a4
                  or           a3, s2, a0
374:              sra          t6, t2, a6
                  srl          s7, t4, s3
                  add          sp, a5, s10
377:              blt          a5, a4, 386f
                  and          zero, tp, t3
                  beq          s2, s11, 399f
                  bgeu         sp, a6, 391f
                  ori          t2, s6, 1036
                  sra          t6, a3, t6
                  addi         t0, s0, 941
                  blt          s11, s9, 387f
385:              srli         t4, s11, 10
386:              blt          a4, s11, 387f
387:              and          a0, s4, tp
                  auipc        a2, 271912
                  sltu         a4, t3, gp
                  sra          s3, a3, ra
391:              sll          ra, s8, gp
                  beq          s5, a5, 394f
                  andi         s0, s6, 412
394:              bltu         s7, s3, 407f
                  sll          s0, t6, s5
                  sll          gp, s0, a0
                  sltiu        s3, a2, 1843
                  bltu         t5, a7, 405f
399:              srai         t6, tp, 9
                  andi         s0, t4, 1094
                  xor          gp, zero, a2
                  lui          a0, 855940
                  sra          t5, a2, s3
                  and          s11, a1, s5
405:              beq          s4, a1, 407f
                  slt          zero, s11, t4
407:              and          sp, t0, a0
                  bltu         t1, t2, 422f
                  la           s3, region_1+13 #start riscv_load_store_rand_instr_stream_7
                  ori          t3, t6, 1258
                  sb           t6, 451(s3)
                  sw           gp, 1291(s3)
                  slt          tp, s8, t2
                  or           gp, a0, t6
                  lhu          a5, 705(s3)
                  sb           s1, 484(s3)
                  sra          s9, s1, s4
                  srl          s7, s8, a0
                  auipc        t2, 225923
                  lbu          t6, 789(s3)
                  lb           t5, 506(s3)
                  and          a4, t5, s8
                  srai         t0, t1, 8
                  lbu          a0, 1668(s3)
                  lb           s0, 396(s3)
                  or           zero, tp, s9
                  lw           s10, 311(s3)
                  andi         s10, s7, 1029
                  srli         a2, s1, 4
                  sb           t0, 1597(s3)
                  auipc        t6, 351886
                  lui          t6, 776429
                  lbu          t1, 176(s3)
                  slti         s5, s6, 1720
                  sltiu        a0, t2, 1563
                  lui          a3, 889873
                  add          s5, s9, gp
                  lb           s11, 988(s3)
                  srl          t2, s10, s11
                  lh           s8, 1681(s3)
                  xori         a6, s4, 988
                  nop
                  srl          a6, a3, a3
                  lbu          t6, 1018(s3)
                  auipc        gp, 555478
                  add          gp, t6, s9
                  or           a5, s3, a7
                  lbu          t2, 1836(s3)
                  sh           t6, 677(s3)
                  lh           t2, 585(s3)
                  slti         a6, tp, 966
                  xori         a1, t1, 1752
                  sb           s11, 1190(s3)
                  lbu          tp, 1404(s3)
                  slli         s4, a0, 19
                  lbu          t3, 617(s3) #end riscv_load_store_rand_instr_stream_7
                  ori          t5, tp, 1264
                  or           s8, a0, s1
                  or           a5, t2, a6
                  nop
                  sltiu        a5, a3, -1771
                  andi         t1, gp, 1880
                  srai         t1, s9, 6
                  auipc        zero, 569807
                  sltu         gp, a3, s8
                  bgeu         a6, t1, 424f
                  bltu         s8, s6, 429f
                  add          s9, a3, a6
                  slti         a6, tp, -863
422:              addi         tp, a1, 613
                  andi         s9, t2, -1666
424:              xori         s2, t0, -956
                  bge          a1, t6, 444f
                  slt          zero, s0, a2
                  and          a1, s8, a7
                  bgeu         t3, t5, 436f
429:              bge          s3, s9, 430f
430:              addi         s9, a6, 246
                  blt          a7, ra, 439f
                  sltu         s8, t5, s8
                  xori         tp, tp, -1871
                  sra          t2, s7, t5
                  slli         t5, s6, 21
436:              slli         ra, t2, 12
                  sltiu        s4, s8, 1937
                  blt          sp, sp, 455f
439:              slt          s4, a1, s5
                  bne          a5, t5, 451f
                  xor          a0, t2, a6
                  and          t5, s7, a6
                  or           s3, s2, s5
444:              sra          a5, s7, a3
                  srl          a3, t6, a5
                  beq          s8, s7, 454f
                  bltu         zero, a6, 461f
                  xor          tp, sp, s0
                  ori          s5, gp, 514
                  slti         t5, a4, 971
451:              beq          s7, s5, 463f
                  bne          a0, sp, 468f
                  srl          a3, s11, sp
454:              sltu         s0, a2, ra
455:              xor          s7, s10, s5
                  andi         s9, t6, -940
                  slli         t0, s6, 14
                  sltiu        ra, tp, 1197
                  sll          s10, a1, s4
                  bltu         s5, t4, 479f
461:              and          gp, a5, tp
                  srl          s2, s11, a6
463:              xori         a5, a5, -1432
                  xor          s10, s7, s9
                  bgeu         a3, s2, 473f
                  lui          sp, 334822
                  sra          s10, gp, s5
468:              ori          s7, t6, -282
                  addi         t2, a3, -724
                  nop
                  blt          s11, s5, 473f
                  addi         s11, a6, -970
473:              bne          a2, s9, 476f
                  andi         t5, a0, -1959
                  sll          s3, t1, t4
476:              xori         t1, s9, 1040
                  sub          s10, zero, s8
                  bne          a5, a1, 495f
479:              bge          s2, s11, 488f
                  beq          s11, s2, 487f
                  add          t6, a6, a0
                  srli         t5, a4, 6
                  sll          s9, s10, a2
                  and          s10, tp, a0
                  nop
                  sltu         s9, a0, s1
487:              bltu         s5, a2, 496f
488:              bgeu         t2, s9, 491f
                  bne          s4, gp, 508f
                  add          a2, s4, a3
491:              auipc        s3, 940757
                  beq          t0, gp, 493f
493:              xor          t4, s3, t3
                  blt          t2, t1, 504f
495:              srl          t1, a4, s1
496:              beq          s6, s6, 499f
                  sltiu        ra, a2, 800
                  sll          t4, tp, t5
499:              xori         a5, s3, 218
                  nop
                  auipc        a5, 722673
                  auipc        s5, 277634
                  ori          s3, a6, 1330
504:              bge          t3, s2, 506f
                  srli         t3, a1, 5
506:              slt          s4, t0, a1
                  addi         s9, s6, -1446
508:              sub          t0, s8, gp
                  nop
                  andi         s2, t6, 1661
                  add          t5, a6, a2
                  blt          s4, t3, 532f
                  bge          s8, gp, 514f
514:              bgeu         s1, a0, 527f
                  bltu         a7, sp, 526f
                  sltiu        a6, a4, -1688
                  xor          t4, s3, a2
                  or           a0, t6, s8
                  slli         zero, a2, 17
                  nop
                  xori         s0, a5, 293
                  srli         zero, a1, 15
                  bgeu         a1, a0, 525f
                  bgeu         t3, a1, 539f
525:              sub          a6, t6, a1
526:              sll          s8, t3, a5
527:              beq          a0, t5, 533f
                  bgeu         t5, t1, 540f
                  blt          zero, a2, 545f
                  bge          zero, ra, 536f
                  beq          t4, a4, 542f
532:              sltu         t1, t5, a7
533:              xori         s5, t5, -1123
                  bne          s1, a1, 552f
                  ori          t4, zero, -1952
536:              slli         a1, sp, 17
                  slti         sp, s6, -609
                  srl          t3, sp, t3
539:              or           ra, zero, s5
540:              beq          t5, a2, 546f
                  auipc        ra, 684430
542:              auipc        s3, 214085
                  add          s10, a0, s2
                  bgeu         s11, t1, 547f
545:              andi         ra, s0, -1875
546:              auipc        s5, 701735
547:              andi         t6, s6, -377
                  bge          zero, t2, 559f
                  slli         a2, t3, 9
                  or           ra, t3, a4
                  sra          s0, t2, t4
552:              bgeu         s5, s4, 554f
                  add          gp, s3, t2
554:              bne          t5, t6, 573f
                  beq          s5, t1, 575f
                  addi         t4, s8, 1256
                  lui          a6, 876345
                  srl          s3, a6, s2
559:              or           t5, a6, t3
                  slt          s8, s4, ra
                  bgeu         s11, s8, 567f
                  srl          a0, t5, s8
                  bltu         tp, t3, 577f
                  sltu         a1, t6, s0
                  sub          s8, s11, a3
                  slti         s11, s4, -158
567:              nop
                  slt          s7, t5, t0
                  sll          t4, a3, s1
                  lui          a5, 762024
                  srli         s8, s1, 3
                  la           t2, region_1+208 #start riscv_load_store_rand_instr_stream_1
                  nop
                  lbu          sp, 9(t2)
                  lb           zero, -170(t2)
                  sh           s9, -146(t2)
                  lbu          a0, -1(t2)
                  sb           ra, 21(t2)
                  lh           zero, 144(t2)
                  sltu         t4, s9, t6
                  sltu         t5, t1, tp
                  and          s0, t6, a7
                  xori         zero, tp, 1845
                  add          ra, a6, t6
                  lui          s8, 867947
                  addi         s2, ra, -1820
                  srai         s7, a6, 4
                  ori          a1, sp, 245
                  lbu          s0, 93(t2)
                  lb           t4, -18(t2)
                  sra          zero, s1, t5
                  add          a6, s4, s5
                  sb           s5, -151(t2)
                  lw           a5, -16(t2)
                  sb           t6, -78(t2)
                  and          s11, tp, s2
                  lb           s9, 193(t2)
                  andi         s7, s11, -855
                  lbu          t3, 173(t2) #end riscv_load_store_rand_instr_stream_1
                  lui          t2, 545530
573:              blt          s6, a1, 588f
                  auipc        ra, 590333
575:              srl          a0, s1, t6
                  and          t6, a0, a3
577:              bgeu         tp, s10, 584f
                  srl          a4, s7, a5
                  slt          s2, a3, a2
                  auipc        s11, 898763
                  ori          t5, a2, 824
                  or           t2, t4, a0
                  lui          s0, 56152
584:              nop
                  xori         s2, s8, 847
                  slti         tp, s11, -301
                  sltiu        s8, tp, -1396
588:              slt          s4, s10, sp
                  xori         tp, gp, -1820
                  andi         a1, ra, 1500
                  nop
                  sll          a6, a6, s0
                  blt          s4, s8, 612f
                  srli         gp, a3, 26
                  nop
                  slt          a2, s3, t6
                  xori         gp, s4, -1947
                  andi         t0, a5, -1134
                  andi         s4, a1, -686
                  bgeu         gp, s8, 611f
                  nop
                  auipc        s11, 780113
                  addi         s8, s2, -1296
                  lui          a5, 530781
                  sub          sp, s3, t2
                  blt          a4, s8, 616f
                  slti         s5, tp, 1561
                  lui          s3, 77964
                  slti         a6, t1, 1734
                  blt          a7, s7, 613f
611:              srli         s7, t2, 4
612:              sub          t3, a5, s2
613:              add          tp, s5, gp
                  andi         ra, zero, -404
                  srli         s9, s6, 1
616:              slti         s2, s7, -486
                  sltiu        a4, a3, 871
                  sltiu        a0, t1, 1192
                  or           a2, a1, t5
                  srli         zero, t6, 4
                  slt          a5, a7, s0
                  beq          s10, zero, 623f
623:              slti         s0, a3, -2030
                  blt          gp, a6, 625f
625:              xori         s5, s5, -1536
                  sra          t4, t2, s8
                  srl          s10, ra, t0
                  add          s10, s1, sp
                  bne          s4, t5, 637f
                  xor          ra, s7, t2
                  sll          s5, s4, a0
                  bge          tp, a5, 644f
                  srli         s5, t1, 24
                  add          s0, a3, sp
                  sltu         a5, s4, s6
                  add          a0, s8, t1
637:              sra          s11, s11, zero
                  sll          a1, s6, ra
                  slti         a3, gp, -1478
                  xor          a4, t1, t4
                  bgeu         t6, t3, 650f
                  ori          s11, a7, 1534
                  lui          t4, 77767
644:              slli         s5, a5, 25
                  slt          gp, a0, a1
                  andi         tp, s2, 1653
                  slli         s9, t3, 3
                  srl          s0, s0, a4
                  blt          s5, ra, 662f
650:              srai         s8, s6, 2
                  srli         tp, s8, 2
                  srl          a3, gp, a6
                  srli         a4, s5, 15
                  bne          a5, s5, 666f
                  slt          s7, s4, a6
                  bgeu         s0, s4, 664f
                  sra          t3, ra, s2
                  slt          a3, zero, s8
                  slt          sp, a3, tp
                  sll          a1, a1, s9
                  bgeu         s1, t0, 663f
662:              sll          zero, t1, t1
663:              and          a1, s11, t1
664:              srli         ra, a5, 23
                  srli         s7, s7, 14
666:              bne          s9, a1, 669f
                  sll          a1, a5, t1
                  sltiu        s2, s8, -423
669:              and          t4, s6, gp
                  lui          t5, 262982
                  srli         t3, t5, 1
                  auipc        s8, 291935
                  addi         t5, zero, 1884
                  sub          a3, s10, t2
                  auipc        s4, 653854
                  auipc        s10, 308421
                  srai         s2, a6, 29
                  sra          s4, a7, a5
                  sltiu        a3, sp, -1913
                  srai         a1, s7, 5
                  or           s3, t0, a7
                  sltiu        t2, s2, -338
                  slti         s9, zero, 1286
                  nop
                  bge          a2, a3, 701f
                  bltu         ra, s2, 688f
                  sll          sp, s1, s3
688:              sub          s4, a3, a4
                  beq          sp, a4, 707f
                  beq          s2, a0, 699f
                  bgeu         s0, a7, 708f
                  sll          t2, a4, a3
                  srl          a6, a4, sp
                  xori         a5, a2, 426
                  addi         a5, a7, -178
                  xor          a5, s10, a7
                  srl          t1, a7, a6
                  addi         a3, a6, 291
699:              sub          a6, s9, t0
                  beq          t0, s3, 716f
701:              add          t1, a0, t2
                  andi         gp, tp, -994
                  srai         t6, s10, 25
                  srl          a6, s6, ra
                  slti         a4, s3, -653
                  beq          s7, a4, 709f
707:              bltu         t5, a2, 710f
708:              srl          a3, zero, t4
709:              srai         s8, a3, 11
710:              srl          tp, sp, ra
                  sltu         sp, t0, a5
                  blt          t3, s1, 724f
                  lui          a4, 980026
                  bge          s1, a7, 725f
                  addi         t2, sp, 2035
716:              srli         s8, s0, 18
                  addi         gp, t2, -330
                  sltu         s2, t4, t6
                  sll          gp, s7, tp
                  addi         zero, tp, -1601
                  sltu         s10, t2, a5
                  sub          s10, s1, s4
                  bgeu         s1, s4, 725f
724:              andi         s9, t0, -1959
725:              andi         ra, a1, -1905
                  blt          t1, t2, 728f
                  blt          gp, s3, 739f
728:              bge          s9, t6, 736f
                  ori          a4, gp, -1308
                  or           ra, ra, s2
                  sltiu        gp, a2, -1610
                  sra          a4, t1, s1
                  beq          s2, a1, 739f
                  sub          sp, t0, a2
                  xor          t0, a2, s9
736:              bne          s11, s6, 745f
                  add          s7, t1, a0
                  srli         s5, t2, 20
739:              sltiu        a4, t6, 1588
                  slti         s2, s8, -1556
                  sltiu        t2, t1, -1229
                  slt          s2, s10, s1
                  sra          a5, a5, sp
                  sub          s4, gp, s0
745:              andi         t0, s6, -602
                  addi         s8, a7, 552
                  sltiu        s0, s5, -1909
                  bgeu         s3, t3, 749f
749:              beq          tp, s0, 750f
750:              andi         gp, a1, -103
                  and          s10, t0, a6
                  bgeu         a1, a1, 768f
                  sra          sp, t2, s8
                  bltu         a1, s3, 771f
                  sub          s7, a1, s9
                  and          gp, a2, t0
                  slti         ra, t6, 1032
                  or           t2, a1, a4
                  addi         a4, t0, 238
                  blt          s8, t6, 775f
                  bgeu         t0, zero, 780f
                  bne          s3, s8, 776f
                  add          t1, a4, tp
                  ori          tp, a5, 334
                  slti         a6, a1, 1490
                  auipc        t3, 584499
                  sub          a4, s9, t1
768:              slli         gp, gp, 12
                  blt          a6, s6, 777f
                  xori         s8, a6, -241
771:              sll          t0, a6, s5
                  or           t6, a5, s2
                  add          t6, t0, s2
                  and          s7, a2, s2
775:              lui          t4, 460594
776:              sltu         t5, t3, sp
777:              bltu         t2, t3, 779f
                  beq          s10, t2, 789f
779:              srl          t5, a3, a3
780:              bgeu         s3, a1, 799f
                  sll          ra, s0, a4
                  sll          s2, a0, t6
                  slli         t0, a2, 27
                  bgeu         s2, s6, 797f
                  bgeu         s11, tp, 801f
                  lui          s8, 563129
                  bgeu         a7, a6, 805f
                  bne          a6, s1, 791f
789:              bne          zero, a7, 796f
                  srl          a2, t2, t0
791:              xori         a3, a0, 829
                  blt          s3, s3, 802f
                  bltu         s11, s6, 813f
                  andi         ra, t1, 394
                  srli         s5, s11, 27
796:              sub          a4, t5, s0
797:              nop
                  beq          s8, a6, 804f
799:              add          s7, a6, s4
                  srl          ra, t2, s6
801:              or           a6, a4, s11
802:              sltu         s0, t5, s9
                  bltu         sp, s6, 812f
804:              srai         s11, a2, 25
805:              srli         a6, s8, 24
                  ori          s8, sp, -171
                  sra          s2, s7, s9
                  lui          a1, 458109
                  or           s11, t1, sp
                  or           t0, gp, a3
                  sltiu        a5, zero, 1441
812:              sltiu        s11, t2, -2009
813:              sra          t0, gp, s11
                  beq          s10, s5, 831f
                  slti         s10, s1, -594
                  sltu         t3, zero, s2
                  sra          t6, s2, t6
                  beq          s5, gp, 819f
819:              srli         s3, s5, 6
                  addi         a1, t4, -718
                  sltu         a2, t5, t0
                  auipc        s0, 839746
                  add          a1, s6, t0
                  sra          s2, a4, s4
                  xor          t2, t3, a1
                  blt          t4, s5, 840f
                  srai         a4, t4, 10
                  sltu         a0, a2, s4
                  slli         a2, t6, 12
                  add          a3, sp, s0
831:              slli         t1, sp, 3
                  bne          s4, s5, 843f
                  lui          s4, 516495
                  sub          t2, a3, t0
                  xor          t5, s4, t3
                  add          a6, a4, t4
                  srl          s9, gp, s11
                  sltiu        sp, s7, 1899
                  slt          a0, s1, s0
840:              addi         t2, zero, -1023
                  slt          s7, a7, a6
                  sra          t5, a0, t4
843:              xor          t0, s9, s10
                  srai         t5, sp, 27
                  bltu         s1, s0, 861f
                  or           s4, t2, tp
                  sltiu        s2, s5, -892
                  bltu         t1, s2, 867f
                  bgeu         tp, zero, 857f
                  bgeu         t1, t2, 862f
                  sra          a6, t5, s9
                  slli         s0, gp, 26
                  ori          a4, ra, -922
                  sra          s2, a4, t6
                  srai         a4, zero, 10
                  sll          s9, s0, a1
857:              beq          t3, ra, 859f
                  srai         t0, t1, 27
859:              xori         ra, s10, -644
                  lui          t2, 887082
861:              slli         s7, tp, 30
862:              slti         sp, s10, 1916
                  nop
                  nop
                  add          t0, sp, s10
                  sra          a2, a5, a6
867:              addi         s5, s2, 902
                  srli         t6, s10, 27
                  beq          zero, s0, 882f
                  ori          t6, s8, -1419
                  slt          gp, t3, gp
                  xori         a6, t4, 488
                  andi         s0, s7, 242
                  andi         s4, tp, 1908
                  ori          a3, a7, -321
                  sra          a6, ra, t5
                  or           sp, s0, a4
                  add          zero, a3, s7
                  srl          zero, t4, a1
                  srli         a0, t0, 14
                  xori         t6, t1, -1109
882:              slti         a3, t1, -994
                  sltiu        a5, s10, -1874
                  auipc        sp, 457433
                  sltiu        a0, a5, 933
                  addi         s9, s2, -119
                  andi         s11, s4, -2002
                  bne          s6, sp, 897f
                  lui          a0, 252382
                  add          s3, s3, s0
                  sltiu        s3, a6, -784
                  srai         s7, t5, 1
                  beq          a0, s1, 895f
                  beq          a6, t5, 900f
895:              sll          tp, a4, t0
                  addi         t4, t4, -772
897:              srl          sp, s2, gp
                  andi         s7, t0, 805
                  ori          s9, a1, 1952
900:              sll          s10, a4, a0
                  srai         a2, zero, 22
                  bne          s5, s4, 917f
                  slt          t1, t3, s11
                  addi         t3, s1, 1093
                  nop
                  ori          a1, t1, -798
                  la           s4, region_1+1488 #start riscv_load_store_rand_instr_stream_5
                  nop
                  lh           s10, 204(s4)
                  srli         s2, a5, 2
                  lh           t2, 48(s4)
                  sb           s5, -234(s4)
                  ori          a1, gp, -1587
                  lh           s10, 10(s4)
                  lbu          t2, -256(s4)
                  lbu          zero, -169(s4)
                  sltiu        t1, t6, 1451
                  sb           a7, -223(s4)
                  srl          t3, t6, t2
                  lb           t3, 231(s4)
                  srli         s3, s0, 22
                  auipc        a3, 197949
                  lhu          s5, 188(s4)
                  lbu          s8, -85(s4)
                  sb           s7, -115(s4)
                  lbu          t5, -68(s4)
                  sw           a3, 188(s4)
                  srli         t6, gp, 9
                  sh           t0, 66(s4)
                  slt          a5, ra, t2
                  sh           s2, -232(s4)
                  sb           a5, 108(s4)
                  sh           s6, -78(s4)
                  lb           t6, 190(s4)
                  sltiu        s2, a6, 1363
                  sb           a7, -17(s4)
                  sb           t1, -239(s4)
                  sb           s9, -202(s4)
                  add          gp, a3, t0
                  and          a1, t3, a7
                  sh           a5, -40(s4)
                  xor          a5, s8, t4
                  lb           t3, -27(s4)
                  lb           gp, 111(s4)
                  lhu          ra, 28(s4)
                  addi         s11, s2, 1732
                  lb           s3, 122(s4)
                  sll          t4, s8, s8
                  sw           a3, -76(s4) #end riscv_load_store_rand_instr_stream_5
                  lui          s7, 972873
                  slt          s5, s9, t1
                  xori         t1, s5, -996
                  lui          s7, 1023845
                  andi         ra, a6, -552
                  sltu         a4, zero, a3
                  andi         s10, s9, -985
                  xori         s7, a0, 1053
                  ori          zero, a1, -148
                  and          s5, t6, s3
917:              bne          s10, t5, 919f
                  srl          s10, s1, a6
919:              andi         s4, s3, -383
                  addi         t1, t4, 1408
                  addi         t6, t4, 1496
                  beq          t6, s8, 938f
                  bltu         t0, a4, 931f
                  srli         a3, zero, 26
                  slti         t1, ra, -1472
                  andi         sp, s9, -1861
                  lui          s5, 986232
                  beq          t0, s5, 931f
                  sra          a0, s4, s2
                  sra          t6, a7, s11
931:              ori          a1, a0, 28
                  bne          zero, t0, 942f
                  slli         a2, a1, 11
                  srai         s10, t4, 23
                  and          a5, a0, t1
                  srai         t4, s4, 1
                  srai         t2, a7, 11
938:              xori         s10, a6, -1584
                  bne          ra, s9, 942f
                  xori         tp, a4, 1261
                  bltu         s0, s3, 953f
942:              sub          t4, t4, ra
                  beq          s11, t3, 950f
                  slli         a3, s8, 27
                  addi         t5, ra, -1882
                  xor          a1, a5, t6
                  srai         a4, t6, 3
                  beq          t2, gp, 968f
                  addi         a3, a2, 288
950:              sll          ra, t3, a5
                  beq          a4, s10, 957f
                  ori          s8, t1, -1876
953:              bne          s4, t6, 962f
                  sra          t3, ra, t6
                  xori         s7, s2, -981
                  srl          s7, t4, t3
957:              xor          a3, t5, t1
                  bltu         tp, a4, 977f
                  srai         tp, a0, 4
                  nop
                  or           t2, s3, a3
962:              ori          a1, a5, 898
                  blt          s1, a1, 964f
964:              srl          s11, t3, a0
                  la           sp, region_1+1019 #start riscv_load_store_rand_instr_stream_13
                  srai         a2, sp, 5
                  sra          s10, s10, s10
                  sb           s1, 72(sp)
                  xori         s10, a5, -385
                  sb           s7, 165(sp)
                  lb           a0, 190(sp)
                  slti         a4, t3, -510
                  lhu          t6, 101(sp)
                  and          t1, s0, t2
                  lb           a1, 88(sp)
                  sb           a4, -245(sp)
                  sb           tp, 161(sp)
                  lbu          t1, -184(sp)
                  or           s9, t5, tp
                  sll          t5, a2, a3
                  srli         t3, s8, 14
                  lui          s0, 784193
                  slli         s4, a0, 23
                  or           s3, a5, sp
                  lh           a5, -11(sp)
                  nop
                  lw           s7, 177(sp)
                  sb           t0, -154(sp)
                  or           t1, s5, ra
                  or           s5, a2, s5
                  addi         s2, a1, -1650
                  slti         s11, s0, -770
                  sb           sp, 4(sp)
                  slt          t0, a2, t0
                  lbu          t0, 227(sp)
                  slt          s8, s3, a3
                  sub          a2, t4, s7
                  ori          gp, sp, -1786
                  lh           s9, -115(sp)
                  sb           s7, -245(sp) #end riscv_load_store_rand_instr_stream_13
                  beq          s9, s8, 968f
                  lui          s2, 516820
                  add          sp, a1, a4
968:              or           s7, a2, a3
                  slti         gp, s1, -1402
                  xori         s3, t1, 548
                  bge          t6, s11, 982f
                  auipc        t0, 1022085
                  auipc        s0, 226704
                  or           sp, a2, t5
                  addi         t3, s11, 16
                  addi         s3, ra, -1846
977:              srli         s9, zero, 11
                  bgeu         t4, s3, 996f
                  bgeu         s8, gp, 982f
                  and          s2, a0, a3
                  beq          a6, s6, 990f
982:              auipc        tp, 572225
                  bltu         s11, a1, 985f
                  bne          s8, s5, 997f
985:              andi         s8, s4, 287
                  nop
                  xori         s4, gp, -1248
                  srai         gp, s5, 13
                  srli         s10, s9, 1
990:              bne          ra, gp, 1009f
                  xor          s5, t0, t4
                  bgeu         s10, s2, 1009f
                  slti         t3, a7, 893
                  xor          a1, a4, t5
                  beq          s3, t2, 1003f
996:              srl          s11, s4, zero
997:              blt          t0, s1, 1017f
                  slt          a1, a5, t0
                  bne          t5, a4, 1000f
1000:             slti         a3, a5, 656
                  beq          a1, s11, 1009f
                  slt          a5, a2, s3
1003:             addi         s4, a5, 969
                  addi         s11, a6, -530
                  bltu         s2, a4, 1008f
                  auipc        s9, 545071
                  bne          a2, s1, 1009f
1008:             ori          t2, s7, -1046
1009:             bge          a5, s4, 1011f
                  srli         a2, t5, 12
1011:             sub          t3, a4, t3
                  sra          sp, a3, t2
                  bge          t1, s4, 1016f
                  srai         s8, s7, 23
                  beq          ra, a5, 1025f
1016:             add          gp, s7, t4
1017:             sll          s0, s2, s11
                  slt          s7, a5, a4
                  bge          a0, a3, 1038f
                  auipc        s5, 281254
                  xori         s5, s10, -100
                  lui          a5, 760889
                  or           t2, zero, a1
                  xori         a4, sp, 1524
1025:             bne          a1, tp, 1041f
                  sra          s4, t5, a6
                  sltiu        t3, s6, 1077
                  bge          s3, a1, 1042f
                  sra          s3, t0, tp
                  sra          s4, s8, s9
                  beq          gp, a3, 1043f
                  sll          zero, s0, t0
                  sll          t4, t2, t2
                  xor          a6, zero, s3
                  add          t3, a3, s8
                  slt          a4, s5, t5
                  nop
1038:             srli         s2, a6, 13
                  sltu         a1, t5, t4
                  sub          a0, a1, s8
1041:             sra          a5, s2, ra
1042:             srl          s8, ra, s3
1043:             sltiu        t6, zero, -1224
                  ori          a3, s2, -838
                  ori          tp, gp, -864
                  slt          s7, s2, tp
                  add          a0, s6, t3
                  or           a6, a3, a3
                  bge          s9, t1, 1055f
                  bge          s2, s4, 1057f
                  or           s0, a0, t6
                  add          s2, a3, s0
                  beq          s4, s9, 1054f
1054:             or           t4, tp, s8
1055:             and          t2, t1, t1
                  bne          s10, t2, 1065f
1057:             srl          tp, a1, s1
                  and          t1, a4, a2
                  bne          t2, s11, 1070f
                  bltu         s11, a1, 1072f
                  add          a4, s1, s6
                  xori         tp, gp, 266
                  bne          a5, s2, 1069f
                  sltu         gp, a4, s11
1065:             ori          t0, a6, 1385
                  ori          a4, s6, -1519
                  or           s2, s11, gp
                  or           tp, s9, a2
1069:             ori          t4, s7, 1489
1070:             xori         tp, s3, -1095
                  lui          t1, 619326
1072:             addi         s3, s4, 598
                  sub          s9, t6, t0
                  bgeu         ra, a6, 1092f
                  auipc        a2, 405368
                  sltu         t2, sp, t5
                  slt          sp, s1, zero
                  srl          t5, s2, t3
                  sra          gp, zero, t3
                  auipc        ra, 426776
                  xor          s4, a7, a0
                  ori          a5, a6, 1275
                  sltu         a2, s8, t2
                  srai         a2, a1, 22
                  slti         a1, a3, 794
                  bge          t2, a3, 1102f
                  bgeu         a1, s1, 1098f
                  slt          s5, t5, s6
                  sll          s0, zero, t6
                  slti         a1, ra, -1292
                  lui          a6, 366794
1092:             sltu         a3, t1, a4
                  ori          t6, a1, 1638
                  beq          tp, s4, 1109f
                  srli         t4, s1, 24
                  sll          t3, s3, t6
                  sra          a4, t2, s7
1098:             slt          t2, zero, a4
                  add          ra, a2, t5
                  sll          a4, a1, a5
                  slt          a5, s9, a3
1102:             bne          a0, zero, 1105f
                  sra          t0, t4, t1
                  xori         t1, ra, -1396
1105:             bne          a3, s3, 1116f
                  lui          s4, 850485
                  sub          tp, t5, t5
                  srai         s0, ra, 27
1109:             srli         tp, t6, 7
                  srl          s5, zero, gp
                  xori         zero, a2, -100
                  xori         gp, s6, -239
                  slli         a3, a2, 23
                  or           a3, sp, t0
                  xori         t5, ra, -1042
1116:             or           s11, s9, zero
                  and          t4, s2, t1
                  slt          t2, gp, tp
                  sll          t4, a2, t3
                  sra          s9, gp, s10
                  bne          t3, sp, 1122f
1122:             add          s5, s0, t1
                  nop
                  blt          a7, t1, 1138f
                  and          s11, tp, a3
                  blt          s4, s0, 1136f
                  sub          ra, s9, t3
                  blt          zero, s8, 1146f
                  xori         ra, zero, -318
                  add          t2, a5, t2
                  slli         sp, s11, 26
                  srai         t3, s0, 24
                  andi         s4, a3, 2020
                  nop
                  and          a1, t6, t3
1136:             sltu         s10, a7, t3
                  ori          t2, s10, -1722
1138:             srai         a3, s1, 31
                  sub          a6, a7, s4
                  bne          s4, t5, 1146f
                  xor          a3, s8, sp
                  sltiu        zero, a5, -1626
                  bge          a1, t4, 1162f
                  beq          a0, t0, 1157f
                  sub          s11, ra, a0
1146:             sll          a3, s2, s6
                  addi         s0, a4, 1270
                  auipc        t3, 1021069
                  sltu         ra, t4, s9
                  auipc        s11, 444059
                  auipc        s7, 198933
                  bgeu         s10, s1, 1155f
                  andi         gp, a2, 1419
                  sltu         s4, s10, s0
1155:             srai         tp, zero, 1
                  slli         t1, gp, 29
1157:             add          t0, s2, s3
                  lui          sp, 149589
                  add          a1, s11, t6
                  srai         t3, s11, 19
                  xor          t0, s11, a1
1162:             xor          sp, t1, s3
                  sub          gp, a0, s10
                  sll          t0, t3, ra
                  nop
                  bltu         s0, s11, 1169f
                  sra          a0, s6, t5
                  slli         s8, gp, 14
1169:             bltu         t0, s5, 1189f
                  slli         a2, tp, 30
                  slli         a2, s5, 23
                  ori          t5, t2, 1209
                  sll          a2, s5, gp
                  sra          a6, s0, t3
                  bne          s11, a6, 1183f
                  blt          s2, s0, 1183f
                  auipc        a4, 408334
                  srl          s7, ra, a1
                  ori          s5, a6, 132
                  bne          s6, s5, 1182f
                  xori         s10, s0, -630
1182:             andi         t6, s2, 1753
1183:             add          a0, s7, a4
                  srli         s11, t5, 29
                  or           gp, a2, t5
                  srl          zero, ra, s2
                  beq          s9, a5, 1202f
                  slli         a3, t0, 12
1189:             addi         a2, t6, -1385
                  srl          t1, s1, t6
                  addi         s0, s5, 328
                  and          t1, s5, s3
                  and          t3, t0, a1
                  srl          t3, s4, s3
                  blt          t6, gp, 1196f
1196:             bge          a5, sp, 1215f
                  add          t5, t4, t1
                  sll          t1, tp, s8
                  sltiu        gp, t0, -305
                  srli         t1, s2, 4
                  lui          s8, 181307
1202:             sltiu        a0, s3, 1398
                  sltu         s8, s1, gp
                  srai         a5, a4, 0
                  lui          t0, 826710
                  auipc        s10, 398037
                  srl          a3, s10, a1
                  addi         t5, a5, 127
                  srl          s5, s2, t0
                  bltu         t0, s8, 1218f
                  nop
                  bge          s5, s3, 1224f
                  sra          s9, s1, a3
                  sra          ra, s7, t1
1215:             auipc        s5, 905197
                  addi         s2, s7, 238
                  srl          s0, s7, t2
1218:             ori          a6, a5, -1292
                  slli         s0, s10, 4
                  srli         s5, a3, 7
                  nop
                  nop
                  bne          t2, s11, 1234f
1224:             auipc        ra, 263138
                  beq          t5, t2, 1241f
                  bne          ra, a6, 1232f
                  sll          t4, s8, a4
                  and          t1, s1, t1
                  sltiu        t2, a3, -761
                  bgeu         s10, a4, 1247f
                  slt          s5, a4, a0
1232:             addi         a3, tp, 2046
                  lui          t6, 233983
1234:             xori         a5, a6, 440
                  sra          sp, zero, s11
                  slli         ra, t3, 14
                  andi         s8, a3, 408
                  slli         gp, s1, 10
                  ori          a1, s6, 1575
                  addi         zero, t0, -37
1241:             blt          t5, a0, 1243f
                  bge          s9, s8, 1258f
1243:             blt          gp, a3, 1252f
                  sra          sp, s10, t5
                  auipc        a0, 292348
                  srl          t3, s1, ra
1247:             blt          gp, t0, 1259f
                  srl          tp, s9, t2
                  and          s10, s2, s7
                  srli         s4, sp, 31
                  blt          s4, s8, 1260f
1252:             ori          t1, s3, -1510
                  srli         s4, s2, 31
                  sll          t2, a1, s7
                  andi         zero, s3, -1962
                  sltu         t5, s11, s10
                  or           a3, s9, tp
1258:             beq          s2, t0, 1260f
1259:             addi         s2, a5, -1832
1260:             slt          a2, a7, s7
                  xor          s2, zero, ra
                  sub          tp, t5, a7
                  slt          a4, a0, s5
                  sra          t4, s2, t1
                  bgeu         a0, t2, 1280f
                  slli         s9, s3, 29
                  xori         a1, a2, 1055
                  bltu         gp, t5, 1282f
                  sra          sp, s3, s8
                  slli         s7, s7, 19
                  nop
                  nop
                  ori          a3, s1, 1571
                  beq          a1, tp, 1276f
                  sll          t1, t4, a0
1276:             sltiu        ra, s1, 239
                  nop
                  bgeu         s1, tp, 1294f
                  srli         zero, zero, 8
1280:             bltu         s0, s4, 1293f
                  and          s11, s3, s8
1282:             bge          sp, a5, 1288f
                  srai         a0, s6, 24
                  srl          s11, t5, ra
                  addi         s7, a2, 2009
                  xor          t3, a6, s2
                  bne          a2, t2, 1298f
1288:             add          s9, a6, s9
                  bgeu         s9, s7, 1295f
                  sra          t2, s2, a5
                  bltu         a0, s5, 1294f
                  auipc        t4, 465814
1293:             slt          s2, sp, t0
1294:             bgeu         sp, s6, 1295f
1295:             blt          t2, a4, 1314f
                  and          zero, a6, a6
                  srai         a2, s2, 30
1298:             srli         s8, a7, 11
                  sll          s9, t3, zero
                  slt          s2, s7, a7
                  slti         s0, a0, -231
                  xori         gp, s5, -2008
                  sub          gp, t4, t4
                  srai         ra, s9, 7
                  add          t5, s3, ra
                  srl          t1, a2, s0
                  xori         s9, ra, 1550
                  bge          s7, zero, 1320f
                  bgeu         s8, s10, 1312f
                  srli         t3, s8, 12
                  bltu         s6, zero, 1313f
1312:             bne          a0, s1, 1313f
1313:             bltu         a2, s9, 1333f
1314:             add          s3, a7, s2
                  xori         s0, tp, 761
                  bne          a4, a5, 1333f
                  xori         zero, tp, -612
                  bne          a1, a4, 1327f
                  sra          s3, a5, t3
1320:             slli         s4, s4, 24
                  slti         gp, a2, -1571
                  srai         t4, a5, 15
                  srli         s11, s4, 5
                  slli         ra, t2, 17
                  nop
                  sll          a5, s2, s1
1327:             slli         a2, a5, 2
                  sll          s2, a2, t5
                  addi         t0, tp, 1364
                  sra          t0, s8, t0
                  beq          s8, t0, 1341f
                  bgeu         a0, s7, 1340f
1333:             sub          tp, zero, s6
                  bltu         s6, a1, 1353f
                  or           s8, a0, s4
                  add          t6, s5, s9
                  sll          s5, s2, s1
                  or           ra, t2, zero
                  beq          a3, a2, 1355f
1340:             xori         t4, s1, 224
1341:             slti         t3, s1, -1745
                  addi         s2, a0, -1985
                  slt          t6, a3, t5
                  srl          s8, gp, s7
                  lui          s3, 671598
                  lui          s3, 243368
                  blt          t3, s8, 1356f
                  nop
                  blt          a6, t4, 1356f
                  srl          t2, gp, a4
                  srli         s4, t3, 11
                  or           t4, a2, a7
1353:             srli         a3, sp, 15
                  lui          s10, 404918
1355:             nop
1356:             sll          ra, s9, a6
                  srli         gp, s2, 5
                  srl          a4, s8, t4
                  sltiu        a5, s0, 1807
                  srai         s2, a0, 13
                  auipc        s7, 507355
                  sltiu        s3, t5, 835
                  sub          t2, t1, t5
                  sltiu        a6, s8, 212
                  xori         s0, t5, -2033
                  xor          s3, t5, a7
                  and          a3, t5, t0
                  xor          s7, a5, t5
                  lui          t0, 540692
                  beq          a1, a2, 1382f
                  bge          s8, s1, 1382f
                  sub          s3, t1, a3
                  bne          t6, t3, 1376f
                  beq          s8, s0, 1376f
                  addi         s4, ra, -1613
1376:             sub          s5, t2, s2
                  sra          ra, s9, s10
                  sub          s9, t1, a5
                  addi         t5, zero, -402
                  bltu         s7, s10, 1388f
                  slt          t0, s0, a3
1382:             nop
                  srli         s3, s2, 14
                  bne          t2, s2, 1402f
                  lui          zero, 788791
                  xor          t5, s10, s4
                  slti         zero, s5, -1386
1388:             blt          a7, s5, 1399f
                  bgeu         t1, s3, 1409f
                  xor          s9, s0, s9
                  xori         a4, s5, -800
                  beq          s9, a6, 1401f
                  sltiu        t3, a4, -163
                  srl          ra, s2, s10
                  addi         t6, s3, 1937
                  add          t2, s3, a7
                  or           t5, s11, a4
                  beq          t0, a3, 1410f
1399:             srl          s10, t1, t1
                  or           t3, s5, a6
1401:             slt          zero, s5, sp
1402:             srai         t0, a0, 0
                  ori          t1, a0, -2007
                  slli         sp, a0, 29
                  addi         a6, a5, 462
                  bne          s0, a1, 1417f
                  and          a3, ra, s10
                  nop
1409:             nop
1410:             or           s10, s1, s2
                  andi         s4, s7, -1961
                  xori         ra, s4, 562
                  ori          t4, a5, 872
                  beq          zero, t5, 1432f
                  bltu         sp, t0, 1434f
                  sltu         t1, t2, a6
1417:             beq          t1, s4, 1427f
                  ori          a1, t6, 1942
                  addi         t0, s7, 1988
                  andi         s9, t6, 519
                  lui          s2, 221383
                  slti         a6, a5, 1537
                  srli         a3, s0, 2
                  sltiu        a1, a1, -1316
                  sltu         s2, a4, t2
                  blt          s3, a5, 1442f
1427:             sll          s11, a2, s0
                  add          s4, sp, s6
                  bne          s3, s6, 1431f
                  srai         a1, t5, 4
1431:             auipc        a2, 198004
1432:             lui          a2, 114933
                  xori         gp, s5, -1800
1434:             slli         s3, s8, 20
                  and          s0, s3, t5
                  or           tp, s10, a2
                  sltu         t3, a7, s1
                  or           s10, t0, s7
                  bltu         a6, a0, 1448f
                  bltu         zero, s4, 1446f
                  auipc        a6, 661164
1442:             bne          s4, s2, 1444f
                  bgeu         s0, s0, 1459f
1444:             sltu         t4, s8, s0
                  bge          s6, gp, 1447f
1446:             xor          s4, ra, a7
1447:             add          t1, t0, sp
1448:             auipc        s10, 291485
                  xori         t6, t3, -210
                  slt          t3, a5, t0
                  slt          a4, t1, s6
                  bltu         ra, a4, 1453f
1453:             bgeu         s5, s4, 1459f
                  bgeu         t4, s8, 1457f
                  add          t3, a6, t2
                  ori          sp, s10, -1499
1457:             lui          a1, 363118
                  bne          s11, s10, 1461f
1459:             andi         ra, t4, -1606
                  slti         a2, a2, -66
1461:             and          s7, t1, s0
                  bgeu         gp, s5, 1477f
                  bge          t6, s10, 1471f
                  sltu         s7, sp, a2
                  lui          s0, 474825
                  bge          t4, a0, 1485f
                  or           s11, t1, t0
                  bge          a1, a6, 1480f
                  bltu         a2, t6, 1483f
                  bltu         tp, t2, 1487f
1471:             srli         s2, a4, 27
                  ori          s0, tp, -1030
                  add          t6, a0, s0
                  srli         a2, s9, 30
                  srli         ra, ra, 22
                  bge          t6, a3, 1484f
1477:             blt          s4, t1, 1480f
                  blt          t6, s9, 1485f
                  sltiu        t6, a7, -1927
1480:             beq          s8, s11, 1493f
                  sub          gp, gp, ra
                  srl          t1, s10, s5
1483:             add          sp, ra, ra
1484:             sltiu        s9, ra, -1579
1485:             nop
                  slt          a0, s1, a4
1487:             addi         s10, s6, 1780
                  bgeu         t4, a1, 1489f
1489:             addi         s10, t0, 1863
                  bltu         a5, a6, 1500f
                  xor          t0, a7, a4
                  sltiu        tp, zero, 187
1493:             sltu         tp, t2, t3
                  bne          s3, sp, 1505f
                  andi         s2, a4, -444
                  or           a0, s5, s2
                  blt          t4, s1, 1499f
                  sltu         a6, s7, s2
1499:             srai         s9, zero, 1
1500:             slli         ra, t1, 10
                  lui          t1, 840495
                  srl          a0, a0, a5
                  srli         s2, a5, 19
                  or           s5, s9, a2
1505:             and          a2, s9, s6
                  bltu         s8, s8, 1524f
                  beq          a3, a1, 1526f
                  slli         sp, a1, 16
                  sra          t2, t3, t0
                  slli         s8, s5, 22
                  andi         a1, s8, 130
                  bne          tp, sp, 1524f
                  bne          t1, t2, 1532f
                  bne          a5, s11, 1530f
                  bgeu         t1, a3, 1527f
                  bne          a4, tp, 1519f
                  nop
                  sra          a3, s10, s11
1519:             slt          s0, t5, zero
                  lui          a3, 700528
                  slti         sp, t3, -1207
                  add          s2, ra, a2
                  slt          a3, s2, a0
1524:             sltu         a5, s4, s6
                  nop
1526:             sll          a1, a5, t2
1527:             slti         s8, a3, 203
                  xor          gp, t2, s8
                  sltiu        s10, s2, 30
1530:             bltu         gp, a7, 1544f
                  slli         tp, t4, 12
1532:             bne          zero, t3, 1541f
                  xor          a3, t1, gp
                  nop
                  ori          a1, a1, 807
                  sra          tp, s7, t3
                  srai         a0, s7, 18
                  sra          a6, t6, a5
                  slt          t2, s7, a4
                  sltiu        a2, s5, 1042
1541:             srl          s2, t1, t2
                  auipc        t6, 783531
                  lui          a3, 948524
1544:             ori          tp, s1, -486
                  xor          a4, ra, t0
                  sltu         a0, s3, a3
                  ori          s9, t6, 1749
                  slti         s2, a3, -72
                  beq          s8, tp, 1555f
                  bne          s2, s0, 1556f
                  xori         t5, a7, 1706
                  bge          s5, t2, 1561f
                  srli         sp, s1, 20
                  bne          tp, tp, 1555f
1555:             sll          s3, s0, s10
1556:             sra          a3, s5, s9
                  srai         t3, s4, 30
                  sub          t4, s8, a1
                  slti         a2, s3, 349
                  ori          a2, s4, -1092
1561:             addi         a4, t0, 338
                  slti         t1, t1, -1627
                  nop
                  or           s8, a5, s10
                  srai         t0, s0, 1
                  nop
                  srli         a1, s2, 21
                  sra          s11, a3, t4
                  slli         zero, a7, 29
                  or           a5, s2, s4
                  sltu         s2, t2, t5
                  sll          s8, a1, s7
                  sra          t6, a1, a0
                  sub          a5, s2, t2
                  sll          s10, s11, a6
                  xori         t5, t0, -654
                  slti         a6, a4, -866
                  slti         s5, tp, -590
                  sll          tp, t3, t6
                  srl          t3, s4, s5
                  andi         a0, t6, -456
                  srai         s4, t2, 20
                  nop
                  slt          s8, s8, a1
                  srai         s9, s3, 31
                  sltu         s4, t0, s5
                  srli         t2, s5, 4
                  srl          s9, t6, t4
                  sra          a6, s0, t6
                  sra          s10, s3, a6
                  sra          t0, a7, t1
                  auipc        s4, 40914
                  bltu         s2, s3, 1601f
                  nop
                  xor          zero, tp, a2
                  nop
                  blt          s0, t3, 1617f
                  auipc        s10, 385663
                  blt          t1, a6, 1602f
                  addi         t0, a3, -392
1601:             slli         a3, s6, 11
1602:             nop
                  slt          a2, zero, s2
                  bltu         a7, a7, 1607f
                  srli         s9, a1, 10
                  lui          t4, 984681
1607:             slt          s3, s8, s5
                  and          ra, s5, t4
                  sub          t5, a5, a6
                  add          a5, a0, a5
                  srai         a3, t1, 2
                  andi         t2, s9, 916
                  sltu         t3, a5, s6
                  ori          s7, s7, 1967
                  addi         t0, s9, 1200
                  beq          s8, gp, 1623f
1617:             bne          s10, a0, 1633f
                  addi         s0, s1, 835
                  xor          zero, s6, t5
                  srli         s11, t3, 6
                  ori          s2, a0, -403
                  slli         s0, s7, 6
1623:             ori          t6, t2, -333
                  or           a2, s6, s7
                  bge          s9, t1, 1627f
                  andi         gp, a4, -1855
1627:             and          a2, tp, s11
                  bne          t0, t0, 1639f
                  sltiu        s11, t1, 285
                  srli         s2, s8, 17
                  addi         s9, a4, 1127
                  auipc        a4, 114683
1633:             blt          s1, a1, 1635f
                  slti         s11, s11, 1508
1635:             sltu         s10, sp, s2
                  bge          tp, s3, 1644f
                  srli         s9, gp, 9
                  bltu         a5, t6, 1655f
1639:             sra          a1, s2, s10
                  slli         a6, t6, 10
                  auipc        ra, 462329
                  sll          a5, sp, t3
                  bne          s8, a6, 1658f
1644:             and          s7, a2, t0
                  slli         s2, s0, 13
                  lui          zero, 291108
                  slt          t4, s0, a0
                  nop
                  lui          t0, 176087
                  ori          ra, t0, 658
                  xori         s3, s9, 1498
                  add          a3, s5, a7
                  bge          s5, a4, 1654f
1654:             or           s5, t0, s3
1655:             xori         tp, s8, -1536
                  or           a0, t0, s3
                  sra          s10, t3, s0
1658:             sltiu        tp, t6, 1714
                  sltu         t5, t0, t5
                  srl          a3, s10, t5
                  srli         t4, ra, 27
                  xor          a4, sp, a6
                  and          s3, s4, s0
                  sub          tp, a5, a4
                  nop
                  nop
                  srl          s2, t0, a6
                  blt          s4, t5, 1681f
                  sra          s7, s11, ra
                  nop
                  lui          sp, 357912
                  bltu         t1, t3, 1691f
                  lui          t0, 650924
                  srai         s11, s2, 16
                  nop
                  srli         t2, a3, 7
                  add          sp, s10, a1
                  add          s5, ra, ra
                  sub          sp, a4, s4
                  beq          zero, s6, 1689f
1681:             xori         s7, t6, 811
                  bge          t1, zero, 1694f
                  xori         s3, s11, 1688
                  sltiu        s7, s11, -899
                  beq          s7, t2, 1688f
                  slti         tp, a5, 2043
                  addi         s2, s5, 1650
1688:             slli         a3, a2, 17
1689:             sltu         a1, gp, sp
                  srai         t3, a6, 15
1691:             srli         sp, t5, 13
                  srli         a4, s8, 23
                  xori         a1, tp, 1488
1694:             bne          a3, a5, 1696f
                  addi         s5, s7, -1486
1696:             bgeu         t1, a6, 1709f
                  bne          a7, t6, 1700f
                  blt          ra, t2, 1713f
                  srli         s4, s2, 7
1700:             bltu         a1, t6, 1718f
                  srli         a3, t5, 20
                  sltiu        t6, s10, -1477
                  srl          a5, s1, t5
                  lui          t6, 957430
                  srai         s9, s11, 25
                  auipc        t0, 915816
                  sub          s9, t1, t2
                  sltu         t3, t2, t6
1709:             bne          sp, t3, 1726f
                  srli         a6, s6, 18
                  ori          a0, gp, -446
                  addi         ra, t5, -1070
1713:             addi         a4, t6, -209
                  srl          sp, a1, s9
                  bgeu         a3, s3, 1716f
1716:             nop
                  beq          a4, zero, 1728f
1718:             slt          t1, s2, zero
                  blt          t4, a7, 1735f
                  nop
                  slti         t6, a6, -513
                  sra          sp, s8, s5
                  sltiu        s2, s4, -72
                  bltu         t3, t5, 1733f
                  bge          tp, a5, 1731f
1726:             beq          tp, zero, 1738f
                  slti         s7, tp, -994
1728:             sll          s7, a5, s6
                  srli         a3, s4, 17
                  add          zero, a7, s0
1731:             sub          s4, s0, a4
                  sltiu        a2, s7, -1280
1733:             blt          s9, s8, 1735f
                  and          s0, t0, tp
1735:             and          s4, zero, s6
                  sltu         s8, t4, a0
                  and          a0, a2, a5
1738:             nop
                  beq          s6, s1, 1741f
                  lui          t2, 763977
1741:             xor          zero, gp, s9
                  bne          a0, t3, 1758f
                  srli         s7, s1, 8
                  bge          t4, s5, 1763f
                  andi         t2, s7, 1177
                  addi         a3, a6, -401
                  add          a1, a5, t3
                  nop
                  sll          t5, t5, s1
                  beq          a3, a5, 1761f
                  sub          a3, zero, zero
                  srli         sp, t2, 18
                  lui          s5, 516863
                  sltiu        a3, zero, 1518
                  ori          a4, t6, -1120
                  slli         sp, ra, 30
                  xori         t1, zero, 1722
1758:             auipc        a1, 819357
                  and          a6, s1, a3
                  bge          s7, s11, 1763f
1761:             bgeu         a2, s11, 1769f
                  and          a6, s11, t5
1763:             and          t3, ra, s1
                  nop
                  la           sp, region_1+303 #start riscv_load_store_rand_instr_stream_12
                  lb           s11, 1047(sp)
                  srli         a6, s9, 24
                  sb           a1, -208(sp)
                  lh           s3, 1447(sp)
                  addi         s2, t1, -48
                  sb           t2, 212(sp)
                  sll          s9, t6, sp
                  lh           a3, 1409(sp)
                  lbu          a5, 980(sp)
                  slli         s2, a6, 21
                  lb           s5, 161(sp)
                  lbu          zero, 477(sp)
                  lbu          gp, 762(sp)
                  xor          ra, a0, s1
                  lbu          zero, -82(sp)
                  srl          t1, ra, t6
                  lb           gp, 1146(sp)
                  add          gp, a7, s0
                  lbu          s10, 680(sp)
                  lbu          tp, 1292(sp)
                  sltiu        tp, a6, -1737
                  lhu          a1, 1509(sp)
                  sb           t1, 454(sp)
                  lb           s5, 1272(sp)
                  srai         t3, sp, 16
                  xor          s2, t3, t1
                  srl          s4, t3, s11
                  sub          s3, ra, s10
                  xori         a2, a6, 1051
                  lbu          s0, 1538(sp)
                  lb           a4, 775(sp)
                  lbu          t4, 146(sp)
                  sb           t6, 552(sp)
                  lh           s7, -187(sp)
                  sb           t2, 1198(sp) #end riscv_load_store_rand_instr_stream_12
                  or           s3, gp, a4
                  addi         t5, a4, -1294
                  xor          t3, t0, tp
                  ori          a1, sp, 412
1769:             sub          tp, a2, t4
                  and          t5, sp, gp
                  andi         t6, s3, -823
                  srai         t5, t2, 29
                  xor          s11, s11, s8
                  blt          s1, s11, 1782f
                  xori         a6, t0, 2028
                  beq          t6, t4, 1783f
                  xori         s2, t4, -2041
                  auipc        t3, 869541
                  blt          s8, a0, 1780f
1780:             bne          t1, s5, 1794f
                  xor          t4, s3, s10
1782:             sub          s4, sp, a3
1783:             ori          a6, t0, -1737
                  beq          s8, t2, 1790f
                  srli         a2, t6, 15
                  ori          gp, sp, 1916
                  slt          t1, a5, a7
                  sltu         a1, gp, sp
                  nop
1790:             or           s5, s3, a2
                  sltiu        t6, s6, 1441
                  bgeu         s8, a6, 1802f
                  nop
1794:             blt          s5, a0, 1814f
                  beq          t5, t6, 1798f
                  srli         a0, s2, 8
                  nop
1798:             ori          zero, ra, 217
                  slli         a2, a5, 21
                  or           a4, a2, t5
                  slli         zero, s5, 13
1802:             lui          s3, 345775
                  bne          t3, s6, 1806f
                  bgeu         t1, tp, 1807f
                  xor          a6, s8, ra
1806:             nop
1807:             addi         s0, zero, -441
                  xor          s2, a3, t2
                  add          t6, t3, s1
                  bltu         t5, gp, 1816f
                  slt          s7, a0, s9
                  sltiu        t1, sp, -859
                  ori          sp, a3, -1125
1814:             or           a0, s2, s11
                  auipc        s7, 470606
1816:             slli         a4, t3, 6
                  nop
                  xori         a3, t1, -1199
                  sub          a0, a2, s1
                  sll          a1, t6, s1
                  slli         s0, zero, 23
                  add          a3, a0, t4
                  xori         s0, s4, -958
                  srli         s5, a4, 22
                  sll          s0, t6, a0
                  bne          s11, s2, 1835f
                  sltu         s4, zero, s1
                  srai         t3, a5, 27
                  and          s4, tp, zero
                  bltu         s5, t1, 1848f
                  addi         t1, t0, 1562
                  srai         s4, a5, 30
                  slli         s2, sp, 23
                  slti         sp, a6, -1759
1835:             bltu         a2, s10, 1837f
                  slt          zero, s1, t2
1837:             bltu         s6, s0, 1853f
                  xor          t0, a0, s5
                  andi         t0, t1, 1616
                  srai         zero, s11, 29
                  addi         s8, sp, 1055
                  srl          t6, s6, t5
                  slti         s7, gp, -2037
                  xori         a0, gp, -1694
                  and          zero, a6, t5
                  bne          s0, s4, 1862f
                  srl          a2, s3, a0
1848:             andi         s8, a5, -500
                  auipc        t4, 914262
                  bgeu         s6, s10, 1862f
                  sltu         t6, zero, s0
                  bltu         s7, ra, 1871f
1853:             xori         a5, a3, 1160
                  sub          s3, s6, s7
                  slti         t5, a3, -571
                  sub          tp, t0, s3
                  beq          t3, s10, 1869f
                  ori          a2, s2, 1075
                  xor          t4, t4, gp
                  bge          sp, s6, 1874f
                  xor          s3, s7, sp
1862:             srli         a6, t2, 31
                  srli         t0, s8, 9
                  andi         a3, a6, -145
                  sltu         s10, t6, s7
                  auipc        t6, 675538
                  addi         a0, s4, -1223
                  sltiu        s5, t2, 1376
1869:             bgeu         s7, s11, 1871f
                  sll          ra, a3, s5
1871:             xori         t1, tp, -1998
                  sra          s9, a3, s8
                  addi         s4, a0, -436
1874:             ori          t2, t3, 1545
                  sltiu        a4, sp, -1307
                  andi         a1, s2, -831
                  xori         t3, a3, -1118
                  sub          t4, a5, gp
                  xori         t0, gp, 431
                  or           t3, s10, t3
                  srai         tp, s10, 8
                  blt          s1, s11, 1883f
1883:             bne          zero, t2, 1902f
                  sltu         s9, s8, a6
                  lui          ra, 290770
                  sra          t3, s6, s5
                  bge          s0, a0, 1893f
                  add          a5, t2, ra
                  add          s2, s10, s7
                  bge          a4, s4, 1900f
                  addi         t3, a1, -1839
                  add          a4, t4, s7
1893:             slli         s2, t3, 28
                  and          s5, zero, t5
                  addi         t1, t5, -788
                  slti         a5, t0, 1639
                  beq          a5, s8, 1917f
                  sub          s8, s5, s9
                  add          s5, s10, s11
1900:             auipc        t2, 914427
                  bltu         gp, ra, 1916f
1902:             bltu         s2, sp, 1910f
                  or           s8, s2, s1
                  bge          a1, a7, 1911f
                  bne          s11, s11, 1922f
                  nop
                  ori          a2, gp, 592
                  ori          a1, s2, 1514
                  sltiu        t3, a5, 105
1910:             andi         s3, t2, 911
1911:             bltu         a0, a4, 1912f
1912:             bltu         s3, s1, 1923f
                  xori         s5, t6, -995
                  srl          t4, s2, a2
                  xori         s11, s1, -1036
1916:             sll          s3, t1, s10
1917:             addi         t2, a7, 510
                  srl          tp, s8, s10
                  slti         a5, s8, 821
                  beq          a4, t2, 1928f
                  ori          t3, s4, 448
1922:             lui          t5, 685037
1923:             sub          s9, t1, a1
                  add          t0, t2, a4
                  lui          sp, 260304
                  andi         t0, s10, 340
                  andi         t0, a4, -1095
1928:             blt          tp, sp, 1930f
                  andi         a4, s9, -1638
1930:             addi         t2, gp, 156
                  srai         a5, s2, 20
                  and          t4, a5, s8
                  sltiu        a2, s4, -556
                  slti         zero, t6, 860
                  and          zero, s8, ra
                  slt          a1, s4, s10
                  blt          s11, t0, 1945f
                  andi         s10, a0, -1861
                  lui          t6, 209977
                  bgeu         t1, a3, 1945f
                  auipc        a6, 477846
                  xor          s7, a4, ra
                  nop
                  addi         s4, t1, -1153
1945:             xor          s8, a6, a2
                  lw           t5, 4(a7)
                  andi         sp, a1, -1540
                  addi         a7, a7, 20
                  slti         ra, a3, -1165
                  sra          s2, zero, t0
2564:             addi x10, x30, 1
2564:             jalr x10, x10, 0
sub_3:            srai         t0, zero, 24
                  bgeu         t1, a3, sub_3_stack_p
                  srli         ra, zero, 8
                  sll          s5, ra, s7
sub_3_stack_p:    addi         a7, a7, -60
                  sw           t5, 4(a7)
                  xor          sp, zero, a7
                  addi         s4, sp, -701
                  la           a4, sub_4
                  add          a0, s9, s10
                  addi         a3, s8, 399
                  auipc        a2, 600481
                  addi         a4, a4, -514
                  and          s4, t4, s1
                  bgeu         s10, ra, sub_3_j5 #branch to jump instr
                  nop
                  ori          s11, s5, -728
sub_3_j5:         jalr         t5, a4, 514 #jump sub_3 -> sub_4
                  srli         s8, a7, 1
                  auipc        a0, 697967
                  la           s11, sub_4
                  xori         a6, s10, -946
                  add          s5, a3, gp
                  andi         a1, t6, -1139
                  addi         s11, s11, -784
                  srai         a1, s7, 17
                  ori          a3, t0, 544
sub_3_j6:         jalr         t5, s11, 785 #jump sub_3 -> sub_4
                  sltu         s2, s10, a0
                  ori          sp, a5, 1211
                  sll          ra, t1, a4
                  xor          t3, t4, t6
                  or           s11, s7, a7
                  beq          t2, s3, 21f
                  sra          s7, s1, s4
                  lui          s3, 928040
                  srl          s0, a5, a5
                  lui          a6, 392777
                  blt          s3, zero, 22f
                  nop
                  sll          t2, t5, a1
                  lui          t1, 147973
                  xori         a2, sp, 1557
                  or           t3, tp, s2
                  auipc        a1, 814349
                  sra          s9, zero, s0
                  add          zero, s4, s7
                  xori         s3, t0, 61
                  and          t5, t0, s0
21:               sub          t1, a6, a3
22:               sltiu        s7, a5, 327
                  ori          sp, sp, -881
                  or           a2, s2, a1
                  and          t2, s4, a7
                  bge          s0, s8, 27f
27:               nop
                  nop
                  and          t6, s8, t1
                  auipc        a5, 494533
                  lw           t5, 4(a7)
                  sltu         t1, a0, sp
                  sltu         s8, a5, t4
                  addi         a7, a7, 60
                  slli         s2, s5, 12
                  srai         t4, sp, 21
                  sub          a1, s0, a7
                  ori          t0, s8, -1346
67:               addi x7, x30, 1
67:               jalr x7, x7, 0
sub_9:            nop
                  bge          t0, s4, sub_9_stack_p
                  andi         s5, s8, 899
sub_9_stack_p:    addi         a7, a7, -64
                  lui          s5, 887698
                  sll          a6, a3, s4
                  sw           t5, 4(a7)
                  sra          s2, a5, a4
                  la           t0, region_0+1592 #start riscv_load_store_rand_instr_stream_2
                  lb           a5, -195(t0)
                  lb           tp, 249(t0)
                  nop
                  slli         s10, s3, 3
                  sh           sp, 218(t0)
                  sb           tp, -201(t0)
                  lb           t5, -13(t0)
                  lb           gp, 65(t0)
                  sra          a5, s3, s2
                  and          t2, gp, t0
                  lhu          s0, 192(t0)
                  lbu          gp, -93(t0)
                  and          a4, s2, s3
                  sb           gp, -57(t0)
                  lb           s10, 182(t0)
                  lw           gp, 220(t0)
                  andi         s4, t1, -352
                  srl          s0, s3, tp
                  lhu          t3, 4(t0)
                  sb           a5, 83(t0)
                  lbu          a4, 191(t0)
                  nop
                  lui          zero, 165110
                  auipc        a3, 875412
                  addi         t2, s11, 598
                  sb           s11, 240(t0)
                  lw           zero, -100(t0)
                  lui          a5, 221817
                  lh           s2, 36(t0)
                  lhu          s4, 244(t0)
                  or           a0, zero, t5
                  sltu         s8, s11, s9
                  lb           s5, 237(t0)
                  sltiu        t6, s1, -501
                  sb           tp, -204(t0)
                  lb           tp, -65(t0)
                  sra          t2, sp, s4
                  lbu          a5, 175(t0)
                  lbu          tp, -99(t0)
                  lbu          s5, -146(t0)
                  xori         tp, s5, -189
                  lh           s11, 256(t0) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+290 #start riscv_load_store_rand_instr_stream_1
                  lbu          zero, 6(sp)
                  lui          a0, 445002
                  andi         t6, a6, 301
                  lw           zero, 10(sp)
                  lbu          gp, -9(sp)
                  lb           a1, 14(sp)
                  lhu          t4, -2(sp)
                  srl          s4, a5, sp
                  lb           a5, 6(sp)
                  and          zero, t2, s3
                  srl          s2, t0, s2
                  xori         s5, a5, 988
                  slt          ra, s4, s6
                  sb           t5, 16(sp)
                  sltiu        ra, s1, -514
                  sub          a0, ra, t6
                  sh           a1, -12(sp)
                  srli         s7, gp, 26
                  sh           s6, 16(sp)
                  sb           s8, 4(sp)
                  lhu          a6, 14(sp) #end riscv_load_store_rand_instr_stream_1
                  sub          s0, a5, a3
                  addi         s11, s2, 209
                  slti         a1, a6, 1002
                  beq          s2, t1, 8f
                  bgeu         t3, zero, 17f
                  addi         t3, a1, 1694
                  xor          s10, t6, gp
                  sltu         a1, a1, zero
8:                nop
                  sra          s8, s1, s5
                  bgeu         zero, a3, 19f
                  sra          t1, a2, zero
                  lui          s2, 599520
                  srl          s10, s5, s3
                  or           t0, s7, a2
                  bgeu         s7, a7, 22f
                  add          s2, s7, s11
17:               srli         a3, sp, 30
                  bne          sp, t6, 26f
19:               sltiu        s10, s8, 470
                  srai         s3, s5, 23
                  add          t1, t5, a4
22:               bltu         t5, s3, 27f
                  slli         s7, a1, 23
                  and          s11, s0, gp
                  xori         s5, a2, 157
26:               xori         tp, tp, -165
27:               andi         t4, s1, 648
                  sltu         gp, s8, s3
                  xor          a1, t0, s4
                  bgeu         s10, sp, 33f
                  sltiu        a2, zero, -1793
                  srl          s8, t6, s8
33:               and          a6, a7, a1
                  slti         s10, tp, -117
                  and          t6, t0, t4
                  xori         a6, s11, 1773
                  lui          t0, 706359
                  add          t3, t6, a5
                  and          t5, s3, a6
                  slti         s7, s0, 1534
                  srli         s5, s11, 23
                  beq          a4, t3, 53f
                  sltu         a6, a2, sp
                  sra          tp, t5, a1
                  srai         t3, ra, 5
                  sltu         a5, s11, s3
                  srli         s8, s3, 15
                  srl          s10, a5, t2
                  slt          a3, s8, s8
                  xori         t0, tp, -139
                  nop
                  or           a4, t5, t2
53:               lui          t0, 507585
                  srl          t5, t1, gp
                  andi         a3, t2, -910
                  slti         s0, s0, -11
                  slli         a0, s11, 2
                  srli         t4, s8, 30
                  blt          s6, tp, 70f
                  bltu         s4, a0, 70f
                  srai         t0, a5, 10
                  bgeu         s2, a0, 76f
                  ori          s7, t0, -1370
                  nop
                  bge          t1, t4, 80f
                  sub          s4, a0, ra
                  bne          s2, s1, 85f
                  sub          t3, s1, ra
                  sltiu        s9, a7, -690
70:               or           a5, s4, s10
                  auipc        a1, 689547
                  bgeu         a1, s4, 82f
                  xor          a6, s7, tp
                  sltu         s0, ra, sp
                  lui          t0, 619476
76:               slti         t0, a0, 401
                  srli         s5, t6, 27
                  lui          s10, 330024
                  blt          t2, s2, 91f
80:               nop
                  slli         t2, s5, 12
82:               sra          s9, zero, zero
                  srl          a6, ra, ra
                  add          t1, a6, a4
85:               nop
                  add          t0, t2, a5
                  sll          t1, s3, s6
                  xori         s10, s3, -1978
                  andi         s5, t2, -1048
                  add          a5, a2, a6
91:               beq          s8, s0, 98f
                  slt          zero, s4, s3
                  beq          s1, s7, 113f
                  sltu         tp, s11, s5
                  bne          t3, s1, 115f
                  lui          t6, 697326
                  srl          t3, s7, s11
98:               xor          a5, t3, ra
                  bltu         a7, s7, 102f
                  srl          sp, ra, t0
                  auipc        t1, 426912
102:              xor          t5, a1, a2
                  sltu         zero, s11, a7
                  andi         a4, a1, 1090
                  slti         a3, s7, 1959
                  bgeu         t0, a1, 119f
                  slli         s9, t1, 5
                  beq          a4, zero, 123f
                  nop
                  slt          s11, t0, a7
                  slt          a0, s6, a0
                  xor          sp, a5, s4
113:              srai         s7, s6, 26
                  sll          a2, s11, s7
115:              ori          s2, s3, 1324
                  xori         a0, t0, -1776
                  blt          s0, a0, 130f
                  add          s8, a3, s1
119:              lui          t4, 214024
                  addi         t1, sp, -796
                  bltu         s1, s6, 127f
                  nop
123:              nop
                  addi         tp, s7, 73
                  slli         t2, t4, 0
                  xori         zero, t4, 174
127:              slti         t6, s10, 1964
                  blt          s7, s7, 146f
                  add          s10, a4, a2
130:              or           a6, s8, zero
                  or           s9, ra, s5
                  bgeu         t0, t3, 144f
                  bltu         s10, s7, 147f
                  blt          s3, sp, 149f
                  xori         s9, s6, 396
                  srl          t4, a3, s4
                  slt          a5, sp, s5
                  xor          s0, a3, t6
                  sra          a0, zero, ra
                  bge          t5, s2, 148f
                  auipc        s9, 844134
                  auipc        sp, 987634
                  or           zero, s11, s8
144:              sltiu        sp, sp, -687
                  sltiu        s7, a3, -1850
146:              sll          a3, t0, s5
147:              auipc        t2, 704269
148:              nop
149:              and          t0, t4, s9
                  bgeu         s8, t6, 169f
                  slt          a4, s10, zero
                  bge          tp, s5, 163f
                  xori         tp, s3, -395
                  sltiu        t1, t5, -2041
                  sra          a1, sp, s8
                  addi         s0, ra, -1946
                  srai         a1, t0, 24
                  and          s0, t4, s8
                  and          a4, a5, sp
                  bltu         zero, a1, 172f
                  srli         s7, s1, 28
                  srl          tp, t3, a0
163:              sub          sp, s2, a0
                  xor          s4, t4, a4
                  addi         s3, t1, 1262
                  xor          a5, t6, ra
                  bgeu         a6, s1, 172f
                  sra          gp, a3, a3
169:              sub          a2, s3, ra
                  srai         a3, s4, 19
                  sltiu        s2, a4, -164
172:              lui          gp, 3841
                  bge          sp, s3, 178f
                  sltiu        a4, s11, 182
                  slti         ra, s1, 509
                  add          t0, zero, s0
                  andi         s4, sp, 563
178:              sll          t6, a7, a0
                  lui          s0, 302623
                  sltu         t6, s6, t0
                  bne          a3, a2, 194f
                  and          tp, zero, a3
                  slli         a1, s10, 10
                  slli         a5, a1, 17
                  bne          s2, a7, 203f
                  sltu         t6, t0, s9
                  add          a5, a2, t1
                  andi         t0, sp, -1013
                  and          s8, a7, a3
                  bne          s7, s6, 203f
                  srli         ra, s6, 14
                  xori         a6, a7, -296
                  bgeu         a7, a6, 204f
194:              srli         s5, a7, 2
                  ori          ra, t4, -2022
                  add          s8, s6, a2
                  bge          sp, s5, 216f
                  xor          t6, t3, s7
                  sll          a5, a0, s9
                  slti         t6, gp, 1543
                  srli         t2, zero, 3
                  slli         a3, t6, 6
203:              srl          t1, s3, s11
204:              srli         gp, gp, 27
                  or           s7, s11, s11
                  ori          t5, ra, -1308
                  slti         s10, t3, 1879
                  sub          t1, tp, a4
                  bge          t2, t5, 221f
                  sra          s9, s5, s5
                  srl          t6, a4, s1
                  auipc        a1, 869354
                  sll          a5, t1, s7
                  beq          s10, t3, 222f
                  lui          t2, 237310
216:              srl          a5, sp, tp
                  slti         t1, a4, -1768
                  beq          a2, t0, 228f
                  sltiu        t2, s2, -750
                  sltiu        s5, s3, -1634
221:              and          gp, a6, s6
222:              xori         s9, a5, -1216
                  sra          s9, a5, tp
                  slt          s9, s11, s3
                  beq          t4, a4, 228f
                  xori         s2, a2, -214
                  auipc        s7, 868148
228:              xori         a1, t5, 1552
                  bne          a0, gp, 238f
                  bge          a4, s5, 248f
                  bltu         t4, s11, 239f
                  slli         s5, a3, 24
                  bltu         a3, t3, 253f
                  addi         tp, s11, 1590
                  srl          sp, s8, tp
                  sltiu        s0, a4, -1672
                  srl          a5, s4, a6
238:              srli         a4, a7, 10
239:              xori         a5, tp, -2041
                  auipc        t6, 280993
                  blt          t2, s10, 247f
                  addi         t0, a4, -1676
                  srli         s7, s1, 2
                  blt          t5, s3, 264f
                  ori          a4, sp, -1576
                  nop
247:              addi         t6, t4, 1702
248:              sltu         t2, t2, s11
                  slt          s0, t0, a7
                  slt          zero, s5, s10
                  blt          zero, a3, 264f
                  add          ra, sp, a7
253:              slt          gp, s6, s7
                  blt          a0, a6, 269f
                  xori         zero, sp, -1298
                  sll          s3, s5, t1
                  andi         t4, s11, 1073
                  add          t4, t1, a2
                  xor          a6, a0, t5
                  sltu         s2, a5, s5
                  sub          s10, zero, t6
                  sra          a4, gp, s1
                  ori          s3, a6, 2040
264:              sltiu        a3, sp, 1972
                  sub          a0, a4, s7
                  auipc        a4, 219133
                  beq          ra, a7, 274f
                  xor          s10, t1, s11
269:              bne          a7, t1, 280f
                  bltu         tp, t0, 285f
                  andi         s7, s7, -355
                  ori          s0, t1, 1751
                  lui          ra, 995815
274:              srli         t1, s8, 6
                  xor          t0, a5, s11
                  srai         a6, s5, 2
                  slli         s9, sp, 16
                  or           gp, t4, a2
                  add          s0, ra, s9
280:              sltu         a4, t5, s4
                  slti         s5, a7, -695
                  beq          t5, s1, 289f
                  bgeu         t1, t5, 297f
                  xor          t3, s0, s5
285:              blt          a3, a1, 299f
                  or           s7, s5, gp
                  xor          ra, s0, sp
                  bne          sp, s4, 303f
289:              bltu         s9, s1, 292f
                  beq          ra, a1, 300f
                  sltiu        tp, s6, -756
292:              auipc        a0, 103022
                  xor          t4, s6, zero
                  bgeu         a1, sp, 305f
                  and          t1, s1, t1
                  andi         s4, ra, 778
297:              bge          t5, s0, 316f
                  sub          a4, tp, s8
299:              slt          t1, sp, a7
300:              bltu         t1, a7, 307f
                  bge          s8, s2, 313f
                  or           s9, s2, tp
303:              slli         a1, t1, 26
                  auipc        s8, 470411
305:              sltu         t2, sp, s9
                  la           a4, region_1+108 #start riscv_load_store_rand_instr_stream_0
                  auipc        a1, 916670
                  lbu          s3, -9(a4)
                  sltu         a0, a6, tp
                  lbu          s5, -16(a4)
                  add          s3, a0, a3
                  sb           s5, -13(a4)
                  sb           ra, 5(a4)
                  lb           a3, -3(a4)
                  addi         a2, t4, -764
                  ori          t2, a1, -907
                  sb           tp, 11(a4)
                  srl          t3, a6, s0
                  lbu          a2, -5(a4)
                  sltiu        s9, s6, -483
                  srai         s4, a1, 10
                  or           s8, a5, t1
                  lh           s10, 14(a4)
                  or           sp, a5, s0
                  slti         s3, a7, 1377
                  sh           t4, -14(a4)
                  addi         a6, zero, -1953
                  srai         s4, a2, 7
                  lb           s7, -13(a4)
                  sub          sp, s11, t1
                  lhu          gp, 0(a4)
                  xor          s7, s5, zero
                  slti         a5, a4, 1541
                  srai         t3, a6, 5
                  slti         s2, t1, 1617
                  sb           ra, 6(a4)
                  xor          s2, ra, s0
                  sltiu        ra, s3, -1689
                  srl          t5, sp, s7
                  srli         s4, gp, 7
                  sub          gp, s2, a1
                  xori         a3, s1, 469
                  lbu          t3, 3(a4) #end riscv_load_store_rand_instr_stream_0
                  slti         sp, a5, 319
307:              sltu         t1, t4, a7
                  srl          s0, a0, zero
                  bgeu         tp, tp, 324f
                  srli         s2, s0, 17
                  and          a2, s0, s1
                  bgeu         sp, t3, 332f
313:              bgeu         s5, a6, 324f
                  bgeu         s2, sp, 332f
                  bltu         ra, s0, 326f
316:              auipc        t6, 876581
                  and          s4, t0, t3
                  bgeu         gp, a0, 329f
                  sra          s9, s7, t1
                  xor          s4, ra, a7
                  add          a5, s2, s6
                  sltu         t4, a0, s11
                  andi         s10, s9, -1450
324:              xor          s2, gp, s3
                  nop
326:              srli         s10, gp, 1
                  srli         gp, ra, 26
                  auipc        a5, 806496
329:              auipc        gp, 714848
                  slli         a6, s10, 13
                  and          s8, s8, a3
332:              srai         gp, t6, 8
                  nop
                  bltu         a7, a1, 340f
                  beq          s2, s3, 340f
                  bltu         t6, a5, 343f
                  sltu         t4, a1, t5
                  sltu         a4, a6, a5
                  or           zero, a1, t4
340:              lui          t5, 34715
                  slti         a4, s10, 419
                  srai         s11, a6, 12
343:              sltu         a2, a3, s5
                  sra          t3, a5, s2
                  beq          t0, a2, 355f
                  xori         s9, s7, -227
                  xor          a4, s8, s9
                  xori         s8, a3, 1473
                  srai         a2, s4, 22
                  sltiu        s11, t3, -1860
                  or           a3, t3, s11
                  andi         s2, t2, 1229
                  addi         t2, s9, -572
                  xori         s5, s2, -514
355:              srai         s5, a2, 7
                  sll          t6, t3, a1
                  lui          s2, 4707
                  xori         t4, a0, 1067
                  sll          s3, t6, a0
                  ori          s8, s5, 1912
                  xori         s4, a5, -293
                  xori         t1, s8, 1282
                  lui          a0, 395428
                  bltu         t0, t2, 377f
                  slli         s2, s9, 25
                  sltu         s4, t4, a1
                  lui          ra, 471459
                  slti         s9, s3, 1047
                  sltu         s11, s7, a6
                  slt          s9, s2, sp
                  nop
                  sltu         t1, a6, s5
                  srl          s4, a4, s3
                  slt          s3, a5, s4
                  add          a2, s3, t5
                  andi         t4, a6, -968
377:              beq          a2, s8, 389f
                  bge          a3, s5, 383f
                  bgeu         s3, a7, 394f
                  sub          zero, gp, s6
                  and          s8, t5, s5
                  andi         s8, a1, 842
383:              bltu         zero, gp, 393f
                  nop
                  sub          t2, s10, t6
                  bltu         t4, a6, 404f
                  sltu         s4, t0, s3
                  sltu         s10, t5, a5
389:              bltu         s4, s4, 403f
                  auipc        t2, 874105
                  bne          a7, t0, 406f
                  beq          ra, s0, 401f
393:              addi         gp, t5, -1860
394:              nop
                  ori          s2, tp, 1190
                  andi         ra, a2, 1436
                  andi         zero, tp, 2036
                  xori         a0, a0, -1868
                  and          s4, t2, a3
                  addi         s4, a3, -351
401:              srai         s4, s7, 25
                  bgeu         a2, sp, 405f
403:              sltiu        s0, ra, 832
404:              lui          a1, 474505
405:              sra          s11, a4, a1
406:              bne          t3, s11, 419f
                  sltu         zero, zero, a1
                  addi         s5, s3, -862
                  xori         a0, a5, -1687
                  add          s7, sp, s2
                  srl          s5, s8, s10
                  srai         s8, t3, 22
                  xor          sp, t4, s9
                  sltu         s10, s7, a4
                  ori          tp, s2, 568
                  sub          a6, a6, s3
                  xori         a6, gp, 312
                  slti         t4, ra, -1669
419:              and          s11, sp, s2
                  sra          a0, s5, t0
                  or           s9, s9, a5
                  xor          t3, s0, t0
                  andi         a6, sp, -873
                  slli         sp, a7, 13
                  slli         s3, zero, 0
                  ori          zero, s5, -271
sub_9_j15:        jal          t5, sub_10 #jump sub_9 -> sub_10
                  bge          a4, tp, 436f
                  slt          zero, zero, zero
                  sll          a0, t0, t0
                  bltu         t3, s10, 428f
                  bne          t1, t6, 439f
                  sll          s5, zero, tp
428:              slli         s11, s0, 25
                  sub          a6, s4, t3
                  srl          s11, t5, t5
                  srai         zero, s2, 24
                  bgeu         s9, a0, 452f
                  bne          t4, s1, 441f
                  slli         t0, t4, 24
                  bgeu         s3, a6, 443f
436:              auipc        s4, 10024
                  add          tp, s1, a5
                  add          t1, a5, a4
439:              add          t4, t4, s4
                  beq          t1, t0, 455f
441:              slti         s10, sp, 386
                  bge          t0, s7, 462f
443:              auipc        s5, 42981
                  srli         t4, zero, 15
                  nop
                  nop
                  beq          tp, t1, 466f
                  and          t2, s2, a0
                  blt          s0, t4, 462f
                  lui          s5, 739247
                  addi         gp, s11, 835
452:              slli         s2, tp, 21
                  blt          sp, t0, 464f
                  blt          s7, s1, 464f
455:              bne          t2, s3, 461f
                  blt          t2, a6, 464f
                  xor          s3, t1, s6
                  bltu         a0, ra, 478f
                  bge          t3, t4, 467f
                  srai         s11, a0, 4
461:              beq          sp, a4, 472f
462:              sltiu        s4, s9, 1190
                  xori         s8, a3, 711
464:              addi         tp, s3, 282
                  blt          a5, t2, 483f
466:              sll          s4, t6, t0
467:              nop
                  slli         a5, t4, 17
                  ori          s11, s9, 1934
                  bgeu         s5, s4, 482f
                  xor          s5, t6, s6
472:              slti         s10, t5, -640
                  bltu         t0, t3, 488f
                  sltiu        tp, tp, -619
                  bltu         s0, s4, 480f
                  bgeu         s3, s3, 490f
                  xori         s9, s11, 403
478:              or           a3, t6, t3
                  srli         s3, s4, 14
480:              srl          tp, a2, tp
                  sltiu        a2, ra, -524
482:              or           s0, s8, s1
483:              srai         a2, a0, 23
                  beq          s11, a6, 498f
                  sltiu        s5, s7, -416
                  slt          t2, s2, sp
                  sub          a2, a1, s5
488:              bltu         t1, t0, 497f
                  xor          t5, a5, s11
490:              srli         t6, a2, 28
                  slt          s2, a6, t4
                  srl          t4, s10, a7
                  add          a3, a2, a6
                  auipc        sp, 656042
                  sub          a0, s3, s3
                  add          s2, t1, s2
497:              lui          t0, 652367
498:              nop
                  xori         a1, t5, -1849
                  nop
                  blt          ra, a1, 513f
                  srli         t4, a6, 26
                  and          t4, s9, gp
                  and          a1, s10, a4
                  xor          s0, a2, t6
                  and          t5, zero, s8
                  bgeu         s10, t4, 514f
                  srl          s10, s9, a6
                  sll          s11, tp, s5
                  bne          a4, s8, 517f
                  slt          a1, t4, a3
                  blt          a4, a2, 525f
513:              ori          s9, s5, -1333
514:              blt          t2, s6, 524f
                  lui          a2, 498906
                  and          s8, a6, a0
517:              add          sp, zero, t3
                  sll          a5, t3, a7
                  sub          s5, s8, t2
                  beq          sp, s3, 523f
                  xori         a3, s11, 577
                  srai         s8, s3, 25
523:              bne          a2, t6, 533f
524:              and          s5, t3, s2
525:              bgeu         s6, s8, 533f
                  la           sp, region_1+1598 #start riscv_load_store_rand_instr_stream_3
                  lbu          zero, -366(sp)
                  lb           ra, -364(sp)
                  lb           s2, -256(sp)
                  sb           s4, -1112(sp)
                  slli         zero, gp, 27
                  srli         t0, s0, 23
                  lbu          gp, -1331(sp)
                  sb           t6, -358(sp)
                  xori         a3, t4, -1759
                  srai         s3, t6, 12
                  lb           a4, -93(sp)
                  slt          ra, a5, s11
                  auipc        a5, 754929
                  sh           s4, -570(sp)
                  xor          zero, t4, a5
                  lb           t0, -1525(sp)
                  sh           s7, -644(sp)
                  slti         ra, a4, -472
                  lbu          s5, -1410(sp)
                  xori         s4, s4, -2037
                  sw           s9, 142(sp)
                  or           s7, t6, a2
                  lbu          s9, -27(sp)
                  and          t4, s1, ra
                  auipc        s0, 168528
                  lw           a2, -586(sp)
                  xor          s9, t0, s8
                  lbu          t6, 283(sp)
                  lbu          ra, -614(sp) #end riscv_load_store_rand_instr_stream_3
                  sltu         s4, a0, t3
                  blt          a1, gp, 533f
                  and          gp, t4, t4
                  beq          a6, s7, 533f
                  sltu         t3, s0, t1
                  add          t5, t0, a4
                  and          t2, a1, t6
533:              nop
                  xor          s9, t5, s11
                  slt          s10, s6, ra
                  andi         s0, s10, -19
                  lui          s7, 611960
                  sltu         t3, t3, a3
                  srl          t2, s9, t5
                  lw           t5, 4(a7)
                  xori         t6, a6, -831
                  and          s2, gp, s3
                  addi         a7, a7, 64
                  addi         ra, s1, -536
                  sra          s11, t5, a7
693:              addi x21, x30, 1
693:              jalr x21, x21, 0
sub_10:           lui          a5, 151388
                  beq          s3, s10, sub_10_stack_p
sub_10_stack_p:   addi         a7, a7, -28
                  andi         a2, a7, -1446
                  sra          t4, s2, gp
                  srl          s5, t3, t6
                  slti         a6, t6, -124
                  auipc        zero, 944921
                  slt          s10, s7, a0
                  and          ra, s10, s5
                  sw           t5, 4(a7)
                  auipc        gp, 751488
                  slti         s7, s4, -911
                  la           s7, region_1+934 #start riscv_load_store_rand_instr_stream_1
                  slti         a5, a7, -1541
                  sb           a2, 965(s7)
                  sb           ra, 290(s7)
                  addi         gp, t0, -352
                  lb           sp, 243(s7)
                  slti         s9, t2, 1471
                  lw           s5, 942(s7)
                  lb           s8, 768(s7)
                  lb           t5, 392(s7)
                  slti         ra, a4, -1126
                  lw           s4, 386(s7)
                  lbu          s3, 886(s7)
                  slli         a4, a2, 15
                  lw           s10, 598(s7)
                  lui          s4, 612538
                  sb           s4, 115(s7)
                  sll          t2, t3, s11
                  lw           t1, -818(s7)
                  sb           a4, -327(s7)
                  slti         ra, a3, -128
                  sb           s1, -273(s7)
                  sb           a6, -145(s7)
                  sb           a6, -73(s7)
                  slli         a2, ra, 17
                  ori          s0, s10, -1812
                  auipc        sp, 162062
                  and          s9, t1, t5
                  lui          a3, 671341
                  lbu          s11, -751(s7)
                  lhu          s3, -40(s7)
                  lhu          a5, -468(s7)
                  srl          t6, s0, t3
                  slt          zero, t5, t0
                  lw           tp, -806(s7)
                  sh           s3, -256(s7)
                  sb           t2, -107(s7)
                  lbu          t6, 865(s7)
                  lb           a3, -67(s7)
                  lbu          s3, 247(s7)
                  srai         s0, s3, 13
                  and          t4, a6, t3
                  auipc        t0, 70635
                  sltiu        t3, tp, 1257
                  slli         tp, a7, 15
                  sb           t1, -499(s7)
                  or           s4, s1, s6
                  sh           t4, 938(s7)
                  sltu         sp, t4, s10
                  sub          s2, a4, s3
                  srli         t0, t2, 1
                  xori         ra, s4, -865
                  sh           tp, -304(s7)
                  andi         a2, t6, -581
                  lb           t3, 737(s7) #end riscv_load_store_rand_instr_stream_1
                  addi         a5, s11, 720
                  bgeu         s4, s11, 9f
                  lui          t2, 669647
                  bne          s3, a0, 6f
                  xori         a4, s1, 341
                  slti         gp, s2, 781
6:                slt          s8, t4, tp
                  or           a0, a0, s11
                  sltu         s7, ra, t0
9:                lui          t2, 960164
                  xori         a5, s10, -2029
                  or           s0, gp, t5
                  sub          t0, a1, a0
                  slti         a3, s8, 724
                  srli         a6, a6, 29
                  auipc        sp, 981386
                  bgeu         a3, ra, 29f
                  sltu         a0, s4, t4
                  bne          s7, s11, 26f
                  xori         sp, s3, 38
                  xor          a3, t3, s4
                  sll          s3, gp, t6
                  srl          a4, s10, s5
                  andi         t3, t2, 1583
                  blt          s3, a6, 28f
                  srli         ra, s6, 13
26:               beq          t5, t3, 30f
                  xor          s8, gp, gp
28:               sra          zero, t6, t0
29:               nop
30:               xor          t2, t1, sp
                  nop
                  bltu         zero, a5, 42f
                  sll          tp, s2, s1
                  slt          s4, a4, t4
                  lui          t1, 686287
                  srli         s5, t3, 19
                  bgeu         s2, zero, 50f
                  bltu         a7, s9, 42f
                  sub          gp, a3, s11
                  xori         s3, ra, 1557
                  srai         gp, a0, 5
42:               sub          s8, a6, t1
                  beq          s0, a2, 48f
                  ori          s7, s5, 1655
                  nop
                  add          s11, a0, s3
                  lui          zero, 680318
48:               srl          a1, a7, s8
                  nop
50:               srai         t4, s7, 1
                  slti         s8, t6, 1879
                  ori          s4, t4, 1357
                  sra          sp, s10, a6
                  lui          t5, 318069
                  slli         a2, s7, 16
                  blt          a2, gp, 69f
                  beq          s3, tp, 63f
                  slti         s11, s11, 1156
                  sltu         a0, s10, sp
                  andi         t0, s8, 1942
                  srl          s3, a4, t1
                  xori         s3, t3, 1225
63:               srli         gp, t0, 17
                  nop
                  nop
                  sltu         t6, a0, s3
                  srli         a6, sp, 2
                  bge          t0, a4, 77f
69:               beq          t2, t4, 82f
                  slli         s3, a0, 20
                  xori         t0, gp, 696
                  xor          t6, sp, s11
                  ori          a3, s6, 1398
                  nop
                  blt          t2, t0, 88f
                  or           s9, a1, tp
77:               beq          s1, s0, 95f
                  beq          zero, a6, 92f
                  srli         s9, a2, 18
                  nop
                  srli         t0, a3, 13
82:               sra          t6, s4, s6
                  blt          a4, s3, 97f
                  slli         s9, t0, 2
                  srl          a1, s1, s9
                  srli         t3, tp, 31
                  nop
88:               add          t3, s4, a5
                  bltu         a1, ra, 102f
                  slti         a0, a5, 370
                  nop
92:               srl          s11, sp, a6
                  sll          a1, a1, a2
                  slt          a0, t6, s11
95:               srli         t1, s3, 1
                  srai         t0, a0, 27
97:               or           a3, s1, a0
                  nop
                  lui          t2, 166952
                  sub          tp, a2, t4
                  la           sp, region_0+97 #start riscv_load_store_rand_instr_stream_0
                  lw           tp, 43(sp)
                  lb           t0, 56(sp)
                  sub          tp, ra, a5
                  sra          s3, a6, a4
                  nop
                  lbu          t0, 62(sp)
                  lb           a5, 0(sp)
                  lw           s2, 15(sp)
                  auipc        a3, 325552
                  srli         tp, t1, 9
                  lbu          s11, 31(sp)
                  sll          s10, s4, t5
                  lbu          a2, -56(sp)
                  sb           s9, 34(sp)
                  sb           t1, 5(sp)
                  lb           ra, -48(sp)
                  slt          t0, a0, t1
                  lw           tp, -45(sp)
                  lhu          t1, -53(sp)
                  auipc        t2, 906344
                  sb           s11, -11(sp)
                  sb           s1, 63(sp)
                  lb           zero, -64(sp)
                  or           s0, a1, s5
                  lbu          s7, -6(sp)
                  lbu          s3, -56(sp)
                  sub          zero, zero, a2
                  lh           s11, 33(sp)
                  lb           s4, 27(sp)
                  sh           s8, 33(sp)
                  lbu          a6, -32(sp)
                  sb           a1, -38(sp)
                  xori         s5, ra, 17
                  lhu          a5, -31(sp)
                  sb           tp, -61(sp)
                  sb           t0, -61(sp)
                  slt          s7, sp, t2
                  lb           s10, -43(sp)
                  lbu          s0, -1(sp) #end riscv_load_store_rand_instr_stream_0
                  slt          s9, tp, gp
102:              xor          gp, s1, a5
                  sll          tp, s10, s11
                  ori          a6, s11, 1674
                  or           gp, t3, a0
                  srli         t6, a1, 28
                  andi         t6, t3, 902
                  andi         t1, s2, 966
                  slt          gp, tp, s0
                  nop
                  sra          t4, t4, s4
                  andi         a6, s8, -504
                  bge          a0, s8, 114f
114:              bltu         s4, a6, 129f
                  nop
                  bge          a5, a0, 135f
                  or           a3, t6, a0
                  sltiu        s9, t1, -1132
                  nop
                  sltu         a4, s4, s4
                  slli         t2, s2, 24
                  srl          zero, s11, tp
                  beq          s10, t2, 127f
                  andi         s0, a7, 331
                  slt          t1, s2, t0
                  slti         s9, s11, -1844
127:              lui          ra, 163017
                  lui          s5, 616710
129:              bgeu         a4, s0, 134f
                  bgeu         a4, t6, 139f
                  lui          t6, 923697
                  or           a1, gp, s3
                  nop
134:              add          s4, s8, zero
135:              bltu         t4, s2, 139f
                  xori         s0, s11, 1979
                  srl          s2, s2, a7
                  sltu         s3, s0, t4
139:              bge          s2, ra, 146f
                  sra          s7, a7, s6
                  beq          t1, s9, 150f
                  bgeu         s0, s11, 151f
                  or           s9, ra, s2
                  nop
                  or           s5, gp, t3
146:              srai         s7, a3, 14
                  srl          t2, t0, s5
                  slt          s0, s2, sp
                  slti         s2, s6, -1127
150:              slti         s4, s8, -162
151:              srli         s7, zero, 4
                  slti         t5, a3, -1686
                  sra          t6, a3, s2
                  auipc        t0, 960715
                  bltu         ra, gp, 169f
                  and          tp, s3, s1
                  bge          a6, a6, 170f
                  sub          ra, s10, s9
                  slli         a0, tp, 5
                  bgeu         t6, a1, 175f
                  add          tp, s7, a6
                  bge          a3, s0, 166f
                  bltu         a4, a2, 171f
                  addi         a1, s6, -1977
                  or           s3, a0, sp
166:              sltiu        a3, s5, -1465
                  srai         t6, t1, 24
                  srl          s10, s8, a2
169:              ori          s10, t0, -1880
170:              bltu         t3, s1, 179f
171:              andi         a0, a3, 1949
                  sra          s11, a4, s6
                  slli         gp, t6, 9
                  auipc        s0, 237654
175:              sltiu        ra, a0, 1436
                  xori         s0, s1, 22
                  or           t5, s6, a6
                  bge          a3, t1, 187f
179:              sltiu        s3, gp, -356
                  sll          a0, s7, s2
                  sra          s5, t0, t2
                  sub          t6, s8, s8
                  beq          t3, a2, 187f
                  slti         t4, t6, 2032
                  srai         s3, t3, 30
                  beq          a2, ra, 199f
187:              bge          a5, t6, 196f
                  nop
                  srl          a6, s11, t5
                  srai         t0, a2, 4
                  or           a6, tp, s8
                  sltu         s0, s8, s4
                  bge          t3, s11, 206f
                  bge          gp, t3, 199f
                  or           s2, sp, s6
196:              andi         a1, a7, -1926
                  beq          t5, a3, 206f
                  bgeu         s8, a0, 205f
199:              or           s2, a3, t4
                  ori          a1, t2, -145
                  or           a3, s4, s6
                  andi         gp, s4, -413
                  sra          s2, a7, s9
                  bne          a3, a5, 212f
205:              bne          t1, ra, 223f
206:              auipc        gp, 842627
                  blt          a0, ra, 208f
208:              andi         t6, t4, -1552
                  srl          t6, t3, zero
                  sra          tp, zero, t1
                  slti         t5, sp, -533
212:              srai         s9, t1, 12
                  xor          t2, s7, s8
                  nop
                  slti         a1, a5, -2039
                  bgeu         s11, t1, 220f
                  beq          s10, t2, 221f
                  xor          a0, a0, a2
                  blt          a5, s11, 232f
220:              slli         ra, gp, 15
221:              sll          s8, t1, a5
                  addi         t1, t0, 197
223:              sltu         a5, a1, sp
                  auipc        s4, 464279
                  srl          t4, a7, a4
                  auipc        tp, 117155
                  lui          s7, 825266
                  srli         a6, ra, 18
                  sra          a0, s6, a6
                  nop
                  beq          s11, s8, 234f
232:              srli         zero, t6, 16
                  lui          a5, 1009289
234:              srl          a3, s2, sp
                  addi         a3, s2, -1333
                  ori          a4, s4, 871
                  blt          s7, a4, 243f
                  srl          s4, a7, t4
                  sub          ra, s1, s4
                  slti         a2, s6, -1209
                  nop
                  slt          s5, a2, a7
243:              bltu         s10, a2, 257f
                  ori          s5, t5, -1287
                  bne          a2, s6, 258f
                  bgeu         s8, tp, 251f
                  srai         a0, zero, 5
                  or           a0, s0, a1
                  bgeu         a1, s9, 259f
                  srli         a3, a6, 6
251:              slti         s10, t5, 1462
                  slli         zero, s1, 27
                  slti         a5, a3, -1652
                  sll          t0, s1, a4
                  or           t4, s8, t6
                  ori          s2, t5, -457
257:              or           tp, s1, ra
258:              ori          t0, a1, 1460
259:              ori          a5, zero, 1376
                  bgeu         s6, s11, 274f
                  sub          s4, zero, ra
                  nop
                  nop
                  srai         a1, a7, 10
                  bltu         a1, sp, 278f
                  and          sp, s10, tp
                  sra          tp, s11, s7
                  srai         s4, s1, 17
                  bge          s4, zero, 283f
                  bltu         s1, a6, 289f
                  addi         s4, a7, 1859
                  sltu         t3, a4, a5
                  beq          a6, zero, 277f
274:              auipc        s7, 347409
                  bgeu         zero, s4, 289f
                  sltiu        s5, a3, -1230
277:              bgeu         a6, s9, 290f
278:              xor          a3, zero, t6
                  sra          tp, t1, a4
                  andi         s7, t5, -1716
                  blt          s8, s11, 285f
                  addi         zero, s1, -456
283:              and          s3, s8, a4
                  bltu         a3, s2, 298f
285:              sll          a5, s3, gp
                  srl          t1, s1, t5
                  sub          t1, sp, t6
                  xori         ra, s7, -384
289:              bne          a7, s10, 293f
290:              and          s8, t5, s0
                  andi         a6, ra, 533
                  and          zero, t0, a4
293:              bgeu         t3, a7, 297f
                  srai         t6, s11, 1
                  slli         zero, a6, 25
                  sub          a0, gp, t4
297:              lui          t0, 782026
298:              auipc        s2, 1034770
                  srai         sp, s2, 5
                  nop
                  nop
                  xori         s3, sp, -1755
                  or           zero, s8, s1
                  sll          s2, s10, tp
                  blt          s1, zero, 320f
                  srli         a0, t1, 5
                  sll          s8, tp, s4
                  bgeu         t4, a0, 312f
                  bgeu         s3, s11, 322f
                  ori          tp, t6, -396
                  bge          s5, s10, 319f
312:              srl          s7, a1, a1
                  sll          a6, a6, a1
                  auipc        a3, 424675
                  lui          s10, 710
                  xor          a3, s0, ra
                  bgeu         sp, s11, 326f
                  sltu         gp, a7, s9
319:              srai         a4, zero, 18
320:              bgeu         a3, s8, 325f
                  xor          s7, a0, a2
322:              srai         sp, s7, 4
                  or           a6, s4, a7
                  sra          a2, tp, a1
325:              beq          a5, s10, 327f
326:              beq          ra, a2, 327f
327:              addi         s9, t6, -573
                  add          s9, a5, tp
                  srai         s7, s8, 24
                  slti         s0, s8, -82
                  lw           t5, 4(a7)
                  slt          t0, t6, a2
                  sra          t6, t6, s11
                  addi         a7, a7, 28
                  xori         s0, gp, -1442
                  auipc        s9, 1037503
445:              addi x29, x30, 1
445:              jalr x29, x29, 0
sub_4:            slti         t1, t2, 677
                  slt          t1, a3, ra
                  bne          zero, ra, sub_4_stack_p
                  srli         s3, s7, 23
sub_4_stack_p:    addi         a7, a7, -52
                  sw           t5, 4(a7)
                  addi         t0, t3, -1154
                  la           a1, sub_5
                  slti         a5, a1, -1742
                  addi         a5, s2, 1382
                  auipc        s8, 792292
                  addi         a0, a5, -1622
                  addi         a1, a1, 357
                  srai         t3, a5, 29
                  nop
                  sll          s7, a1, ra
                  sltu         zero, t5, a5
                  and          t1, a3, a5
                  srl          t6, zero, a0
sub_4_j7:         jalr         t5, a1, -356 #jump sub_4 -> sub_5
                  la           s9, region_0+1735 #start riscv_load_store_rand_instr_stream_3
                  lui          sp, 492722
                  lb           a6, 4(s9)
                  lb           a4, -4(s9)
                  lbu          t1, -14(s9)
                  sh           sp, -11(s9)
                  addi         a2, t0, 1740
                  lbu          s0, -12(s9)
                  slti         ra, zero, 1841
                  sb           s0, 6(s9)
                  lb           a2, -12(s9)
                  add          t1, a3, s5
                  lb           t0, 10(s9)
                  sh           s9, -7(s9)
                  lb           zero, 6(s9)
                  lbu          t1, 12(s9)
                  andi         t0, s11, 1422
                  sh           a7, -15(s9)
                  sw           zero, -15(s9)
                  lh           t5, 3(s9)
                  addi         ra, t6, -1694
                  sh           s2, 1(s9)
                  sh           s6, 13(s9)
                  lb           s5, -11(s9)
                  sltiu        s11, s3, 2045
                  lbu          a1, 8(s9)
                  lbu          t0, -5(s9)
                  addi         t6, s5, 1821
                  lb           a2, -7(s9)
                  and          t1, s9, s1
                  andi         s3, a3, 1140
                  lb           tp, -14(s9)
                  srai         s11, sp, 16
                  lb           s0, 6(s9)
                  and          zero, zero, zero
                  lui          a2, 124688
                  slli         t1, s7, 24
                  sltiu        s10, s6, 551
                  lb           s3, 12(s9)
                  lb           s7, 0(s9) #end riscv_load_store_rand_instr_stream_3
                  la           t4, region_0+1008 #start riscv_load_store_rand_instr_stream_1
                  add          s10, a7, s6
                  lbu          a5, 117(t4)
                  lbu          s8, 75(t4)
                  sh           t4, -18(t4)
                  and          t5, t5, t0
                  sb           s5, 98(t4)
                  addi         t2, gp, -1661
                  srai         a3, t0, 2
                  xori         s2, a4, 1742
                  sll          t3, sp, s5
                  sb           s2, -99(t4)
                  sb           ra, -115(t4)
                  lb           t0, -79(t4)
                  srai         s10, s8, 11
                  sb           t4, -153(t4)
                  lbu          ra, -105(t4)
                  sb           t5, -112(t4)
                  slt          a4, a3, a0
                  lbu          s8, 251(t4)
                  andi         a0, t5, -1324
                  xor          s3, a3, sp
                  lhu          zero, -250(t4)
                  andi         t1, a1, -482
                  andi         a3, s4, -981
                  ori          s8, s11, 1531
                  sub          s3, gp, a1
                  nop
                  sub          a3, a6, t5
                  and          a1, s2, a1
                  srl          ra, s11, s7
                  lh           a4, -208(t4)
                  lbu          a6, -195(t4)
                  ori          tp, zero, -1525
                  lw           t1, -240(t4)
                  slt          a1, s8, s10
                  srl          s5, sp, s6
                  sb           zero, 199(t4)
                  lb           s8, -219(t4)
                  lb           s0, 87(t4)
                  sb           ra, -158(t4)
                  sw           t1, 188(t4)
                  srai         t0, a3, 15
                  lhu          a4, 242(t4)
                  sll          s5, a4, s11
                  sb           s6, -31(t4)
                  sb           s9, 85(t4)
                  lbu          s10, 99(t4)
                  lbu          a3, 12(t4)
                  srli         a5, s6, 15
                  and          a3, s6, s9
                  lh           a4, 162(t4)
                  srl          t3, tp, a2
                  lb           s3, 21(t4)
                  lw           t0, 88(t4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+16 #start riscv_load_store_rand_instr_stream_2
                  sra          tp, s4, sp
                  sb           s5, -2(sp)
                  auipc        t1, 695933
                  xori         ra, s7, -1123
                  lbu          a3, -9(sp)
                  sub          a1, t1, s0
                  add          t1, a0, ra
                  nop
                  lb           a2, 5(sp)
                  or           tp, sp, s3
                  sb           s10, 9(sp)
                  srai         s3, tp, 0
                  add          s8, a3, s5
                  lb           tp, 6(sp)
                  sh           t5, 4(sp)
                  lb           s10, -14(sp)
                  lbu          t1, 7(sp)
                  srl          s8, t3, t6
                  lh           tp, 8(sp)
                  sb           s1, -13(sp)
                  add          gp, s0, t2
                  srli         s5, t2, 14
                  lb           s9, 13(sp)
                  lb           s8, 5(sp)
                  lw           t4, -12(sp)
                  lb           t6, 6(sp)
                  nop
                  srai         t6, t6, 9
                  andi         s0, t4, -710
                  lbu          s7, 1(sp)
                  sb           a1, -2(sp)
                  sb           t0, 11(sp)
                  sb           a7, -3(sp)
                  andi         s9, s10, -1331
                  lb           t4, -11(sp)
                  or           t0, s5, t2
                  lh           s3, 6(sp)
                  addi         ra, a7, -528
                  lb           s0, 15(sp)
                  sh           s11, -2(sp)
                  or           s2, t3, t3
                  lb           a6, 3(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a6, region_1+1286 #start riscv_load_store_rand_instr_stream_0
                  srai         t0, ra, 13
                  lh           a0, 230(a6)
                  sw           gp, -646(a6)
                  lbu          s11, -155(a6)
                  sb           t4, -999(a6)
                  lb           t6, -649(a6)
                  and          s2, s8, s8
                  lbu          ra, -1261(a6)
                  sltiu        a3, s8, -24
                  or           t2, s11, s5
                  auipc        gp, 668961
                  and          t3, sp, s4
                  sra          s9, a4, s7
                  sb           s0, -815(a6)
                  or           zero, sp, t5
                  lbu          a0, 660(a6)
                  lh           s11, -952(a6)
                  lbu          gp, -209(a6)
                  sb           t6, -414(a6)
                  lb           a1, -1102(a6)
                  sltu         a1, s2, t2
                  ori          s10, s5, -1124
                  lhu          a5, -1052(a6)
                  lb           a1, 204(a6)
                  lb           t0, -809(a6)
                  add          s4, a7, t0
                  lb           s9, -981(a6)
                  xor          t6, a1, tp
                  and          s8, gp, t2
                  or           ra, a6, tp
                  lb           s3, 319(a6)
                  lui          s4, 871428
                  lui          sp, 952408
                  lhu          gp, -100(a6)
                  sltiu        s0, s8, -320
                  sh           a5, -24(a6)
                  lb           s7, -561(a6)
                  sh           a5, -554(a6)
                  or           s3, ra, t5
                  lb           tp, -498(a6)
                  srli         a5, a3, 17
                  sb           tp, -901(a6)
                  lbu          t0, -1265(a6) #end riscv_load_store_rand_instr_stream_0
                  sra          t3, ra, a3
                  bgeu         t0, s7, 8f
                  bgeu         s2, t3, 15f
                  xor          s11, sp, gp
                  srli         gp, s1, 20
                  srli         s11, a5, 12
                  sll          ra, a5, t0
                  srai         s10, gp, 17
8:                sltu         zero, a0, s6
                  sltu         a5, a0, s1
                  andi         s10, s5, -1884
                  sltu         t0, a1, sp
                  blt          s3, t5, 20f
                  slli         t2, s5, 10
                  sub          s10, s3, s10
15:               sub          t1, s0, s5
                  xori         zero, sp, 385
                  sll          s10, s4, ra
                  addi         s9, a4, -1994
                  blt          s2, a7, 22f
20:               slt          a1, zero, a4
                  or           s9, s9, gp
22:               srl          t2, ra, a5
                  sra          t3, a5, s3
                  srli         s2, zero, 24
                  srai         t1, s0, 2
                  srli         gp, zero, 7
                  sltiu        s8, s3, -200
                  bgeu         t4, s11, 30f
                  sll          t5, t4, a5
30:               sltu         s11, s3, t3
                  bltu         s9, s9, 37f
                  xori         gp, a1, -857
                  auipc        t4, 279208
                  blt          t1, a0, 41f
                  sll          s9, s1, t1
                  auipc        s8, 899013
37:               bltu         a6, t4, 47f
                  blt          a6, s8, 45f
                  sra          s4, s7, s10
                  beq          gp, a7, 56f
41:               sra          t0, s5, s9
                  blt          a6, a3, 48f
                  slti         s8, t2, -1967
                  sub          a1, gp, gp
45:               xori         t0, t1, 175
                  slt          gp, s9, a0
47:               lui          a4, 991258
48:               bltu         t4, t4, 56f
                  sub          t6, gp, a5
                  beq          t0, a5, 70f
                  slli         s7, tp, 22
                  blt          s8, tp, 70f
                  bne          s5, tp, 63f
                  add          s2, t5, t1
                  bltu         t6, s11, 60f
56:               srli         gp, a0, 7
                  bgeu         zero, t6, 75f
                  slti         a4, gp, 271
                  or           t5, s9, t3
60:               bne          t5, s1, 64f
                  xor          t5, t4, s6
                  andi         s0, a0, 1760
63:               slli         t2, t5, 31
64:               blt          s4, t5, 71f
                  srl          a4, t1, s4
                  srli         gp, s6, 7
                  bne          t2, s11, 85f
                  nop
                  slti         a2, s10, -1678
70:               ori          a1, s3, -1622
71:               auipc        sp, 844166
                  xori         s0, a7, 795
                  sub          s11, gp, tp
                  lui          s8, 365356
75:               blt          sp, a3, 83f
                  sll          tp, t1, t1
                  bltu         t1, t1, 84f
                  or           a5, s10, a0
                  sra          s5, a7, ra
                  blt          gp, a7, 83f
                  slli         a0, s9, 12
                  and          sp, s11, s7
83:               bge          s5, t2, 84f
84:               bne          t3, t1, 88f
85:               sll          t4, t2, s8
                  sub          s7, s7, a4
                  bltu         gp, t1, 92f
88:               nop
                  addi         t1, a7, 1021
                  bge          s1, t5, 103f
                  sra          s5, a4, a0
92:               bgeu         t6, t2, 97f
                  xor          t4, t4, a1
                  srl          s2, zero, s7
                  sltiu        a3, t6, -1270
                  beq          s10, s8, 110f
97:               sltiu        s0, a5, -914
                  slli         s5, s3, 15
                  srl          t3, s6, s8
                  xori         s7, t0, 855
                  sll          s0, a4, gp
                  xori         a0, a6, 1673
103:              nop
                  auipc        a5, 628846
                  slti         t6, s3, 493
                  addi         t5, s11, -1866
                  add          t2, ra, s8
                  addi         tp, a6, 1767
                  bne          t6, t2, 122f
110:              blt          a6, s9, 123f
                  add          s8, a7, s4
                  ori          zero, s6, -1170
                  nop
                  srl          t2, t4, a1
                  blt          s7, gp, 123f
                  slti         s2, sp, 10
                  sra          s9, t0, s7
                  sub          t2, a6, a4
                  sub          s8, t5, s4
                  sub          s11, t4, s11
                  srai         s3, s7, 23
122:              blt          a0, s3, 129f
123:              sltu         s11, s10, tp
                  blt          s5, a5, 132f
                  andi         a1, s10, -208
                  sltu         t3, t5, gp
                  srl          s7, tp, a0
                  slli         t5, tp, 25
129:              beq          a5, s6, 136f
                  slt          a4, s4, a5
                  lui          s11, 253600
132:              sra          a1, sp, a2
                  slti         t3, a0, 1353
                  slli         s0, t6, 5
                  andi         zero, gp, -1351
136:              slti         s4, s2, 2010
                  slti         s8, t1, 575
                  sll          s11, a4, gp
                  nop
                  xori         t2, a2, 381
                  blt          a2, a0, 145f
                  bgeu         s5, t0, 160f
                  bne          t6, t4, 157f
                  andi         s4, a3, -1091
145:              slli         s7, t3, 17
                  addi         t3, a2, -1821
                  addi         t4, a5, 366
                  andi         sp, a1, -1856
                  bltu         t3, s9, 159f
                  bltu         a0, a1, 155f
                  xor          t4, s7, tp
                  bge          s7, t1, 153f
153:              sub          tp, s2, s4
                  bgeu         tp, t2, 161f
155:              slli         t3, zero, 7
                  sltiu        s3, s8, 170
157:              bltu         a6, s8, 170f
                  xor          zero, sp, t1
159:              beq          t0, t3, 165f
160:              and          gp, t1, a7
161:              addi         t4, t1, 309
                  srli         a5, t1, 21
                  bgeu         tp, t3, 171f
                  ori          t6, a4, -88
165:              bltu         a7, a3, 170f
                  addi         t4, a7, 781
                  ori          s11, gp, 975
                  slli         s5, s6, 11
                  sra          zero, a4, gp
170:              slt          ra, a6, a7
171:              add          a1, t3, tp
                  addi         s8, a3, 206
                  sra          a5, s5, t3
                  srl          s11, a7, a3
                  slti         s8, s5, -316
                  bgeu         s2, zero, 183f
                  blt          s2, t0, 197f
                  sltiu        a6, s5, 171
                  sltu         tp, gp, a1
                  xor          t4, s1, s8
                  addi         tp, t5, 1794
                  slli         t6, a5, 30
183:              bgeu         s10, s4, 189f
                  srli         a6, a4, 11
                  srai         t3, a7, 15
                  nop
                  sll          sp, a4, t2
                  bltu         a6, a5, 190f
189:              ori          t6, s4, -1316
190:              nop
                  sub          sp, s6, zero
                  ori          a2, t2, -468
                  or           t0, s3, gp
                  srai         s7, s6, 10
                  addi         ra, tp, -1630
                  sll          a1, s6, t5
197:              sra          s5, s8, a6
                  srli         t0, s3, 29
                  blt          zero, t6, 209f
                  blt          t3, s9, 216f
                  bne          t3, s7, 206f
                  slli         s11, s9, 30
                  nop
                  bne          s0, a1, 207f
                  nop
206:              and          t4, s11, a5
207:              xori         s4, t6, 874
                  xor          zero, s8, s0
209:              slti         s0, t4, -827
                  addi         a3, a6, -816
                  andi         s4, tp, -1422
                  beq          t1, zero, 225f
                  slt          ra, t2, s2
                  slti         a5, s4, -967
                  sra          t4, s5, a4
216:              sll          a4, t1, a5
                  beq          t3, t5, 224f
                  xor          s9, a1, t4
                  ori          t1, t2, -410
                  srl          t3, a6, t5
                  sll          t3, s4, s0
                  slt          t6, ra, a1
                  bgeu         s0, s1, 226f
224:              addi         s8, s0, -985
225:              sltiu        t2, s9, 1480
226:              and          a0, a5, ra
                  srl          ra, tp, a4
                  bge          ra, s9, 246f
                  blt          s9, t5, 233f
                  sll          t4, t6, t4
                  sub          s2, a4, a7
                  add          t1, sp, s3
233:              add          a0, t5, s8
                  sub          a6, s4, a2
                  sub          s9, a3, gp
                  addi         s8, a1, -1944
                  auipc        sp, 874375
                  and          s5, zero, s5
                  sub          s10, zero, s0
                  xor          s7, s3, s0
                  sltu         zero, a4, s4
                  bge          s11, s8, 260f
                  bgeu         a1, tp, 250f
                  sltiu        a4, s10, -1347
                  sub          t2, zero, t6
246:              xor          s2, t3, s0
                  slt          zero, t3, t6
                  srl          s11, s0, s5
                  slli         a4, s9, 15
250:              bge          a3, tp, 263f
                  srl          s10, a1, a2
                  ori          t5, sp, -1166
                  sltiu        s0, a6, 1206
                  beq          gp, t2, 258f
                  sll          a6, s2, zero
                  srli         a2, a3, 5
                  and          t3, s6, a5
258:              bne          a2, t6, 272f
                  srli         s10, sp, 16
260:              sll          t1, s2, a6
                  sltu         s3, t4, s5
                  sra          a5, a7, ra
263:              slli         s7, s4, 10
                  sra          a1, a7, tp
                  lui          s0, 957610
                  srl          s2, s10, s11
                  add          t4, t5, a4
                  slli         s2, a1, 28
                  lui          tp, 1030569
                  sra          t6, s1, s7
                  bltu         t5, s0, 278f
272:              srli         s5, s7, 25
                  sub          a6, s4, a1
                  bltu         t3, a2, 292f
                  nop
                  xori         zero, s1, 772
                  srli         s0, ra, 25
278:              lui          t5, 522518
                  srl          s9, s1, s3
                  srl          a5, t3, t0
                  slt          a6, s9, s11
                  andi         s9, t3, -1733
                  srl          a0, s3, t1
                  and          zero, t6, a5
                  slt          t4, s7, s3
                  bne          s3, t4, 293f
                  lui          t1, 980138
                  srli         a0, s9, 13
                  or           t1, a0, s1
                  slti         s7, s1, 1545
                  nop
292:              blt          s2, t4, 299f
293:              xori         a3, a3, -51
                  sll          s3, s0, s5
                  srli         t5, s4, 18
                  andi         t5, a3, -853
                  slti         tp, s1, 299
                  sltiu        s9, s9, -1035
299:              slli         sp, t0, 5
                  nop
                  sltiu        s7, s10, 1737
                  sltiu        a0, s6, 1612
                  auipc        a2, 62423
                  bgeu         s9, s7, 322f
                  beq          a7, a3, 313f
                  bge          a4, s5, 314f
                  srl          s10, s4, sp
                  bne          s10, s11, 314f
                  bgeu         tp, s11, 313f
                  add          ra, s7, tp
                  bge          s11, sp, 316f
                  sra          s8, a5, zero
313:              nop
314:              and          s0, t6, t0
                  sub          t6, s2, s8
316:              srl          s8, a0, s0
                  bltu         a4, a3, 327f
                  xori         s9, a7, 1839
                  slli         a3, a3, 10
                  srl          gp, s0, a0
                  ori          gp, s7, -1288
322:              sltu         t3, gp, a3
                  sltu         ra, s2, s6
                  xori         a1, s1, 203
                  slt          a0, t6, a3
                  auipc        tp, 1007179
327:              slli         t2, s5, 8
                  srl          t5, s10, s9
                  bne          t3, s5, 334f
                  bne          s1, a7, 336f
                  slt          a5, ra, a4
                  bne          t5, s1, 340f
                  sltu         s10, t3, a0
334:              sltiu        sp, zero, -65
                  srli         sp, a4, 25
336:              beq          s10, gp, 352f
                  sub          t6, s3, a5
                  sltu         s3, s10, t5
                  ori          a4, ra, 83
340:              slti         t0, t4, 323
                  bge          a0, a7, 343f
                  nop
343:              auipc        s3, 310234
                  sra          gp, gp, t5
                  add          s4, ra, s4
                  andi         t2, s10, -47
                  bltu         t4, a0, 354f
                  beq          t5, s6, 366f
                  nop
                  sll          s3, a7, s9
                  xori         s3, s6, -1274
352:              ori          t3, zero, 1212
                  bge          s0, s10, 356f
354:              slli         t4, t1, 18
                  xori         t1, s5, -807
356:              addi         s5, t6, 233
                  bge          s8, a7, 370f
                  andi         a5, t5, -1314
                  sll          t4, s9, s3
                  srai         a5, s6, 4
                  srl          gp, sp, s3
                  andi         ra, a4, 769
                  sltu         t0, s11, s3
                  sltu         s3, ra, a5
                  add          zero, a1, t6
366:              slt          t0, t5, a3
                  or           zero, s4, t4
                  srai         sp, gp, 21
                  xori         sp, s10, -453
370:              bne          tp, a3, 383f
                  auipc        ra, 764487
                  srl          s9, s3, sp
                  sra          s9, zero, t2
                  ori          s9, s1, -269
                  srai         a3, zero, 9
                  sub          s3, a4, tp
                  sltu         t6, s6, t5
                  bne          a4, s1, 398f
                  lui          s2, 687594
                  or           tp, s2, t0
                  and          t1, s4, a1
                  sltiu        a3, tp, 113
383:              nop
                  slli         a1, ra, 15
                  sub          s8, zero, a0
                  slt          a1, a2, a1
                  blt          s4, s8, 390f
                  beq          a6, a6, 398f
                  bgeu         t6, a1, 394f
390:              auipc        a1, 486709
                  add          t1, s0, s0
                  xori         t4, s9, -1016
                  or           a1, a4, ra
394:              sub          ra, s10, t2
                  blt          sp, t1, 396f
396:              beq          s7, a3, 397f
397:              xor          t4, t3, t6
398:              sltiu        sp, a3, -747
                  addi         s7, ra, 767
                  xor          a0, t2, t4
                  blt          s0, a3, 419f
                  add          t5, a4, a6
                  or           a6, s10, a3
                  slli         s0, t1, 2
                  nop
                  srl          a1, s1, s3
                  slli         a4, ra, 3
                  bltu         t4, tp, 415f
                  lui          ra, 278933
                  srai         s3, a5, 15
                  srl          a1, t0, zero
                  or           s11, s3, t4
                  bltu         s1, s9, 420f
                  blt          s1, ra, 419f
415:              xori         a6, a6, -808
                  lui          zero, 630787
                  sltu         t4, s2, t2
                  xori         s4, tp, -1101
419:              slt          a2, s5, s3
420:              nop
                  bne          t3, a5, 429f
                  or           s10, s6, t4
                  bge          s7, a6, 430f
                  blt          s3, s10, 432f
                  blt          ra, s10, 429f
                  ori          t4, a1, 1937
                  nop
                  addi         a4, s4, -989
429:              srli         s2, a4, 14
430:              srai         gp, a0, 31
                  sub          s11, gp, t3
432:              sltiu        ra, t6, 31
                  srl          s9, s9, a1
                  sltiu        zero, t1, 1492
                  and          s5, s1, ra
                  sll          a1, s9, gp
                  nop
                  lui          t6, 6204
                  nop
                  ori          s3, t6, 1265
                  sltiu        ra, s8, 503
                  addi         s11, a1, 1150
                  bne          a2, s2, 446f
                  xor          t1, t4, s9
                  bltu         zero, a0, 448f
446:              lui          s10, 648587
                  srl          t0, t1, a5
448:              bne          s10, a1, 468f
                  ori          s7, a3, 600
                  slt          a4, t0, s6
                  ori          a5, a5, -2010
                  sub          tp, t6, ra
                  sltiu        t6, s4, -1942
                  andi         t1, zero, -547
                  auipc        a2, 980500
                  beq          a1, a5, 474f
                  sltu         t3, s11, a3
                  bge          a3, t6, 471f
                  andi         t5, s11, -379
                  and          t0, a5, zero
                  xori         a5, s5, 1906
                  nop
                  srai         a6, a5, 8
                  blt          a7, a2, 477f
                  sub          a3, s10, t6
                  or           tp, s6, t0
                  srai         t0, a4, 5
468:              sltu         s3, s6, s3
                  bgeu         s0, s4, 473f
                  sltu         s3, s9, s2
471:              bge          s11, t4, 479f
                  auipc        s2, 115348
473:              sra          s4, s0, t1
474:              sltiu        s4, a5, 1126
                  nop
                  addi         s3, t5, -314
477:              xori         a6, a0, -845
                  auipc        a4, 938368
479:              sra          t0, s0, t6
                  xori         s0, a4, -898
                  slti         a4, t1, 822
                  nop
                  beq          s5, ra, 496f
                  srai         s5, gp, 10
                  bne          s6, a3, 490f
                  sltiu        tp, a7, 322
                  srl          a5, tp, t0
                  bge          s3, s2, 494f
                  srl          zero, s5, t5
490:              auipc        t6, 822339
                  nop
                  sra          sp, s9, sp
                  srl          a0, s7, sp
494:              nop
                  and          s11, s8, a3
496:              lui          t2, 637797
                  srl          s5, s9, s3
                  add          s7, t3, s1
                  or           a3, a5, s10
                  andi         s9, gp, 1441
                  slt          ra, a0, tp
                  sll          tp, t0, t1
                  sltu         zero, s9, zero
                  and          s7, s3, s5
                  nop
                  slli         t0, a2, 16
                  xor          s4, a3, t2
                  slti         a2, s10, 1570
                  srai         s3, sp, 28
                  add          a5, s5, t0
                  bne          s8, s11, 516f
                  srli         t2, s1, 3
                  auipc        gp, 17343
                  blt          t0, t0, 520f
                  lui          tp, 309955
516:              sra          s9, s8, s9
                  sll          s4, t2, s8
                  slti         t1, a7, -447
                  sltu         s0, s9, t2
520:              srl          tp, a1, t3
                  sltu         s2, a0, a5
                  and          a4, t4, ra
                  lw           t5, 4(a7)
                  srai         tp, t6, 2
                  srli         zero, t3, 15
                  sltu         t2, t3, s5
                  addi         a7, a7, 52
                  or           ra, s9, ra
731:              addi x25, x30, 0
731:              jalr x25, x25, 0
sub_8:            ori          s0, t5, 1688
                  or           t6, s1, s7
                  addi         a7, a7, -48
                  xor          s9, s2, t4
                  addi         s3, a2, 804
                  sw           t5, 4(a7)
                  addi         a0, s6, -857
                  slli         s4, a2, 31
                  la           t3, region_1+308 #start riscv_load_store_rand_instr_stream_5
                  addi         zero, t2, 1862
                  sub          s8, tp, t2
                  sh           s2, -12(t3)
                  lbu          t5, -15(t3)
                  ori          a1, t6, 672
                  srli         a3, s8, 27
                  nop
                  sh           a2, 10(t3)
                  sb           t0, -5(t3)
                  andi         t2, s8, 652
                  lb           s2, 8(t3)
                  sh           s2, 0(t3)
                  lbu          a1, 12(t3)
                  sub          a0, a5, tp
                  and          s0, a2, t4
                  lui          s8, 557264
                  sb           a7, 13(t3)
                  sra          s8, t2, t3
                  sb           gp, 0(t3)
                  lhu          a5, -6(t3)
                  lbu          a0, -5(t3) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+548 #start riscv_load_store_rand_instr_stream_8
                  sb           a1, 52(sp)
                  lhu          s7, 54(sp)
                  lb           t6, 61(sp)
                  xor          s3, s4, a6
                  lbu          s10, -46(sp)
                  xor          a1, s4, zero
                  sw           s11, -24(sp)
                  sub          a5, t3, s2
                  sh           t2, 12(sp)
                  lb           s5, 28(sp)
                  sb           a6, -19(sp)
                  sb           s0, -25(sp)
                  lhu          a5, -64(sp)
                  slt          gp, s6, a7
                  lb           s4, -22(sp)
                  auipc        t1, 335494
                  sb           a7, -31(sp)
                  lb           t5, 49(sp)
                  ori          a6, a7, 1021
                  sll          t1, tp, ra
                  lbu          a5, 10(sp)
                  lbu          s10, 45(sp)
                  sub          s8, s11, a1
                  lw           s8, -32(sp)
                  srli         gp, s4, 31
                  andi         s10, s2, -1541
                  srl          t1, a0, gp
                  lb           t0, 57(sp)
                  slti         s0, s0, 1984
                  lb           s2, 25(sp)
                  lb           s11, 44(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s8, region_1+102 #start riscv_load_store_rand_instr_stream_4
                  and          s0, t2, t4
                  srl          s10, s5, t3
                  lbu          t5, 32(s8)
                  sb           t2, 175(s8)
                  sb           s2, 124(s8)
                  lb           tp, 175(s8)
                  sh           s11, -102(s8)
                  sltiu        a2, s8, 988
                  sub          a2, a5, gp
                  lbu          a1, 9(s8)
                  lb           gp, 55(s8)
                  lb           s9, 61(s8)
                  lbu          t6, -41(s8)
                  sh           a3, 40(s8)
                  sb           s11, 245(s8)
                  srli         s4, t4, 7
                  or           a3, ra, t6
                  sb           a4, -93(s8)
                  sb           ra, -59(s8)
                  sb           s5, 157(s8)
                  lbu          zero, 55(s8)
                  or           a2, a1, t0
                  slli         a0, t5, 15
                  sb           a4, -65(s8)
                  lbu          s9, -32(s8)
                  lh           ra, 112(s8)
                  sb           s7, 113(s8)
                  sb           a6, 179(s8)
                  lb           gp, -18(s8)
                  sltu         a0, t2, zero
                  xor          s5, t5, s5
                  sra          a1, s4, s8
                  lhu          s10, -54(s8) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1849 #start riscv_load_store_rand_instr_stream_3
                  sh           a1, -181(sp)
                  sw           sp, -129(sp)
                  lb           gp, 11(sp)
                  srli         s11, s7, 11
                  sb           s6, 146(sp)
                  xori         a0, s8, 424
                  sb           s7, -162(sp)
                  sltiu        s0, s5, -430
                  or           a0, t1, s4
                  lb           a5, -119(sp)
                  lbu          a3, -226(sp)
                  ori          s8, s10, -903
                  sb           a7, -194(sp)
                  lbu          a3, -218(sp)
                  sb           gp, -146(sp)
                  or           t5, t3, s7
                  and          t3, s0, s2
                  srl          a5, t1, a7
                  or           a3, s1, s8
                  and          a6, s4, s8
                  and          s2, t3, a3
                  srl          a2, t4, s11
                  sh           s8, 69(sp)
                  andi         gp, a6, 721
                  lb           a4, -68(sp)
                  srai         s0, ra, 16
                  lui          s4, 104033
                  lbu          a4, 72(sp)
                  slli         t0, sp, 13
                  lbu          t6, -236(sp)
                  srli         t1, zero, 20
                  and          a4, a3, tp
                  and          a5, s8, s1
                  sll          s5, s3, a2
                  lhu          gp, 45(sp)
                  auipc        s10, 396850
                  xori         a1, s9, -819
                  ori          t1, a3, -463
                  nop
                  ori          s11, a6, 869
                  sb           s0, 126(sp)
                  xori         s4, t2, 594
                  sb           s10, -206(sp)
                  sltu         t4, s8, s9
                  xor          t0, t2, a6
                  slt          tp, t4, s3
                  slt          a3, a0, ra
                  lbu          t1, -187(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_0+1439 #start riscv_load_store_rand_instr_stream_0
                  lui          a2, 420553
                  addi         a3, a5, -302
                  slli         a3, a2, 18
                  srli         s8, t5, 3
                  sb           s11, 13(a0)
                  ori          t1, s6, 1553
                  slli         t2, s8, 6
                  lbu          t6, 9(a0)
                  sb           t0, -14(a0)
                  lui          t2, 435626
                  lbu          a2, -1(a0)
                  or           a2, s1, a7
                  auipc        s3, 373605
                  lb           t0, 2(a0)
                  sra          gp, s8, a7
                  srli         s4, s1, 16
                  ori          s0, gp, -1588
                  sh           s10, -1(a0)
                  sb           t2, -8(a0)
                  sh           t3, -15(a0)
                  lbu          t2, 5(a0)
                  auipc        s10, 827744
                  lhu          tp, 15(a0)
                  sh           s4, 13(a0)
                  lb           a3, 2(a0)
                  lbu          s9, -14(a0)
                  lbu          s9, -9(a0)
                  srli         a4, s1, 9
                  xor          s11, s6, s8
                  addi         s4, s6, -477
                  lb           s8, -16(a0)
                  sltu         t6, t4, s3
                  sb           a4, 12(a0)
                  and          a1, s3, s0
                  sra          a4, a4, s4
                  sb           t4, -1(a0)
                  srl          a5, s1, t0
                  sb           t6, 12(a0)
                  lbu          s5, 15(a0)
                  sltu         ra, a2, ra
                  lbu          s11, -5(a0)
                  lb           a4, -4(a0)
                  lhu          t3, -5(a0)
                  srli         t5, t6, 3
                  srai         tp, s3, 28
                  sh           s4, 3(a0)
                  lhu          s0, 7(a0)
                  lb           s0, 2(a0)
                  sltu         s11, gp, t4
                  slti         t6, s3, 1903
                  addi         s11, t0, -1284
                  lbu          a1, -8(a0)
                  xor          s9, a2, t2
                  lbu          t2, 9(a0)
                  lhu          a4, -5(a0)
                  ori          s0, gp, 120
                  slt          s2, t3, zero
                  sb           s8, 8(a0)
                  lbu          a6, -16(a0) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+1847 #start riscv_load_store_rand_instr_stream_1
                  lb           s4, 30(t4)
                  nop
                  lb           t5, 24(t4)
                  lw           a3, 9(t4)
                  lh           s11, 13(t4)
                  srl          s7, s11, t0
                  lh           s3, 23(t4)
                  lbu          ra, 4(t4)
                  srli         t3, zero, 0
                  lb           a3, 59(t4)
                  srl          s5, s2, t1
                  srli         t2, ra, 30
                  lh           t2, 9(t4)
                  xori         s11, zero, 1101
                  lb           s0, -46(t4)
                  sb           t2, 27(t4)
                  srli         t6, a0, 23
                  sltiu        a6, s0, -367
                  lhu          t5, -59(t4)
                  sh           t4, -11(t4)
                  ori          a4, a7, 205
                  lh           s5, -47(t4)
                  sll          tp, s10, t5
                  sh           t2, -37(t4)
                  lhu          ra, -35(t4)
                  srli         t3, s2, 21
                  xori         s4, a3, -65
                  srl          s4, s2, s9
                  sltu         s8, a1, s11
                  lb           s11, 16(t4)
                  sb           s2, -14(t4)
                  and          s7, a4, s1
                  sb           s0, -63(t4)
                  slli         t3, s10, 1
                  lbu          t2, -29(t4)
                  sub          s4, s10, s3
                  lui          t6, 200363
                  slli         s5, a4, 22
                  srai         a0, t5, 7
                  sra          s0, s5, t6
                  and          zero, a1, s4
                  lb           s9, 59(t4)
                  or           gp, s0, a6
                  lb           t1, -40(t4)
                  andi         t5, t5, -859
                  sb           t4, 52(t4)
                  slli         t6, tp, 19
                  sb           s2, -34(t4) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1846 #start riscv_load_store_rand_instr_stream_2
                  xor          s5, t0, a1
                  sub          s10, gp, t1
                  nop
                  lhu          a1, -1438(sp)
                  sw           s11, -354(sp)
                  sh           gp, -94(sp)
                  sb           t1, -1485(sp)
                  srl          t6, s10, a5
                  slli         t0, s3, 18
                  sub          a2, s5, tp
                  lbu          t3, -142(sp)
                  sb           tp, 13(sp)
                  slli         t6, s8, 23
                  auipc        t4, 341742
                  add          t5, a3, t6
                  lhu          gp, -180(sp)
                  sb           a6, -1759(sp)
                  sub          zero, t4, zero
                  lbu          a1, 147(sp)
                  sh           s0, 116(sp)
                  slti         s9, a1, 314
                  auipc        a3, 974505
                  sb           tp, -712(sp)
                  lbu          s2, -1521(sp) #end riscv_load_store_rand_instr_stream_2
                  xor          tp, s6, s5
                  beq          ra, s11, 4f
                  add          ra, t2, a0
                  sltiu        t5, s11, 1415
4:                bltu         a7, t3, 10f
                  bgeu         t5, s2, 18f
                  nop
                  sra          a1, s10, s8
                  addi         t6, a7, 431
                  or           a6, s2, zero
10:               bgeu         s11, s10, 12f
                  srai         t0, a5, 3
12:               xori         s9, a1, 1401
                  bgeu         a4, a0, 26f
                  srl          a6, s0, ra
                  sltiu        t3, s3, -1079
                  or           a6, a0, a7
                  srl          t6, a1, a3
18:               bne          tp, a4, 27f
                  sub          t0, s9, a3
                  add          a1, t3, a4
                  bne          s11, t3, 30f
                  or           t1, t4, a7
                  nop
                  bltu         s5, t1, 34f
                  add          a6, s8, ra
26:               xori         a5, a5, 152
27:               nop
                  bne          t1, tp, 43f
                  sltiu        t1, a0, 602
30:               sll          t1, t4, a3
                  nop
                  bltu         t5, s4, 47f
                  nop
34:               sll          s5, a5, s5
                  andi         t5, t6, 774
                  ori          s9, a7, -1889
                  bne          t5, s5, 44f
                  srai         s10, t1, 4
                  ori          a4, s10, 693
                  bgeu         t0, s1, 44f
                  and          t2, a5, s9
                  nop
43:               sub          t1, a0, a2
44:               slli         a0, s6, 4
                  slli         a2, a3, 27
                  sltu         s9, s5, a4
47:               srai         gp, s11, 24
                  xori         zero, s3, -1938
                  sub          s11, tp, s1
                  nop
                  srli         t3, s11, 23
                  srli         t0, a2, 17
                  or           s9, zero, a7
                  srli         sp, s6, 14
                  nop
                  or           t4, s8, t1
                  sll          tp, t0, t2
                  bgeu         a0, tp, 67f
                  bge          s2, t0, 74f
                  andi         a4, sp, 1850
                  slt          gp, tp, s6
                  sltu         sp, s8, s9
                  nop
                  sub          s10, t6, t4
                  sltu         gp, s6, s8
                  andi         a0, s9, 1003
67:               xori         s8, s5, 1655
                  sltu         s2, s5, ra
                  nop
                  sll          a3, a0, s7
                  slli         s10, sp, 8
                  sltiu        a0, t0, 213
                  add          s5, t1, s6
74:               ori          t3, s7, -1866
                  sll          ra, a1, a2
                  srl          t5, t1, gp
                  slli         t2, t5, 18
                  blt          t5, t0, 87f
                  andi         t6, a0, 1821
                  beq          s9, s2, 88f
                  sra          s0, s7, a2
                  ori          t2, s4, 216
                  or           s2, a2, gp
                  sltiu        t6, s2, -1294
                  srai         s11, s4, 3
                  sltiu        s2, a0, -1792
87:               add          t1, t4, s2
88:               beq          a5, t1, 93f
                  lui          a0, 511779
                  srl          a6, ra, t0
                  sra          t0, a7, t1
                  slli         s11, s2, 27
93:               sltu         t0, sp, s8
                  sltiu        ra, ra, -636
                  blt          s6, a4, 101f
                  nop
                  xor          s4, a7, a0
                  slli         a6, s11, 20
                  srl          ra, s1, s7
                  xori         a3, s6, 160
101:              srai         t0, s6, 30
                  bltu         s10, sp, 121f
                  srl          zero, a3, a2
                  bgeu         t6, t3, 113f
                  and          sp, s10, a0
                  sub          a0, a6, s10
                  slli         t3, s2, 1
                  sltu         tp, a4, s10
                  srl          a4, s11, s10
                  slti         a6, t5, 75
                  bne          s7, a5, 115f
                  bgeu         s7, s11, 114f
113:              andi         s11, s10, -1834
114:              addi         sp, s5, -677
115:              sltu         t6, t0, s11
                  bltu         s0, a0, 129f
                  srli         sp, s0, 7
                  xori         t0, s8, -1163
                  sra          a3, a3, a5
                  beq          a7, s7, 126f
121:              slti         a2, s0, 234
                  addi         a1, t0, 493
                  bgeu         a3, s4, 137f
                  or           a0, t4, t6
                  sltiu        s9, t5, 658
126:              sub          sp, zero, gp
                  bge          s0, s10, 141f
                  addi         a4, s4, 937
129:              sub          s3, a2, s0
                  lui          s10, 549308
                  nop
                  bge          t2, zero, 140f
                  bge          tp, s2, 144f
                  bltu         a2, s4, 143f
                  addi         tp, t1, -1758
                  bltu         s8, s9, 144f
137:              blt          t0, t6, 145f
                  andi         s9, s4, -1078
                  beq          a4, a0, 143f
140:              andi         a6, s7, -1304
141:              addi         sp, a0, -1201
                  ori          ra, t0, 1289
143:              bge          t4, t6, 158f
144:              blt          s10, t0, 147f
145:              sll          a3, s5, s6
                  addi         sp, s2, -590
147:              bltu         s5, s10, 162f
                  bgeu         t3, s0, 154f
                  sra          a2, a4, s1
                  bltu         s3, gp, 156f
                  srl          t0, s4, s2
                  or           t1, a7, t5
                  or           ra, s5, ra
154:              andi         s10, tp, -804
                  or           s4, sp, s9
156:              srai         a5, s0, 7
                  slti         a1, s6, 2005
158:              beq          a6, s0, 177f
                  beq          s1, ra, 163f
                  sub          t2, s7, s8
                  beq          s6, s7, 166f
162:              and          s7, t5, t4
163:              xor          s8, sp, s3
                  slli         gp, t0, 28
                  lui          zero, 2645
166:              lui          a4, 858867
                  slti         a4, a2, -582
                  addi         t2, s2, 1107
                  add          t5, s9, a2
                  bge          t1, a3, 184f
                  blt          t6, s6, 179f
                  bgeu         a6, s9, 181f
                  beq          s9, zero, 181f
                  xor          s4, a1, s8
                  srai         t5, s5, 29
                  sll          s3, a4, a5
177:              xor          a2, t0, t6
                  srai         t0, s5, 8
179:              xor          t6, t6, s11
                  sltu         s9, s5, s0
181:              slti         zero, s4, -1355
                  xori         s10, a3, 1033
                  or           a6, t3, sp
184:              nop
                  sub          s10, s1, a4
                  sub          t4, s2, zero
                  sltiu        t4, s5, -623
                  nop
                  addi         t5, s3, 1226
                  srl          s10, s9, a4
                  andi         s3, s9, 1508
                  add          a5, t2, zero
                  sltu         s2, t2, s3
                  bge          s6, a5, 196f
                  sub          t6, a6, t3
196:              and          s5, tp, s0
                  sll          a1, gp, a5
                  beq          s7, s9, 205f
                  beq          s5, zero, 210f
                  or           s11, s6, a2
                  sltu         t1, t0, t1
                  slli         t1, s3, 4
                  sub          s0, s10, a7
                  and          t2, a1, s11
205:              sll          t2, a6, a0
                  beq          a5, gp, 208f
                  srai         a2, s6, 10
208:              blt          a0, t2, 221f
                  slti         s2, a7, 1190
210:              xor          a6, a2, a7
                  bge          s8, t1, 220f
                  xori         zero, s0, 375
                  and          t5, s11, s0
                  beq          a2, s2, 224f
                  slti         a6, sp, -1588
                  sltu         s0, s6, t3
                  auipc        s10, 263922
                  addi         a0, s9, -2026
                  addi         s5, s2, 58
220:              add          t4, a3, t5
221:              beq          s5, tp, 236f
                  nop
                  xor          zero, s8, sp
224:              srl          s3, a6, a6
                  slti         s5, s5, -1946
                  sltiu        t3, gp, 308
                  bgeu         s6, s5, 236f
                  slti         a4, s3, -1383
                  blt          t4, ra, 243f
                  addi         a3, a2, -873
                  auipc        sp, 429361
                  sll          s7, a3, s11
                  slt          s8, t6, t6
                  xor          s11, s3, tp
                  lui          s11, 525013
236:              sub          t1, sp, s7
                  addi         s0, t3, 196
                  bltu         t2, t0, 247f
                  nop
                  bltu         a2, s4, 249f
                  addi         ra, s5, -457
                  bgeu         s5, s11, 251f
243:              ori          t3, s3, 812
                  and          t1, t0, tp
                  slti         s8, s5, -1187
                  sltiu        s10, a4, 1949
247:              srli         a2, t3, 2
                  beq          gp, t3, 261f
249:              xori         s8, a1, 819
                  sltu         s5, sp, a1
251:              sll          gp, s1, s1
                  or           s8, s1, a7
                  beq          s9, a7, 259f
                  slti         a2, s6, -542
                  sltiu        a1, zero, 1059
                  bltu         t5, s6, 269f
                  bge          gp, a0, 272f
                  bne          gp, t4, 260f
259:              xor          gp, a3, a7
260:              add          gp, s7, a2
261:              xori         s5, s7, 640
                  xori         s9, a6, 750
                  slt          t0, s1, s9
                  beq          s6, zero, 283f
                  sll          s3, a7, s1
                  bne          s8, s6, 270f
                  srli         a3, s5, 8
                  xor          t0, a1, sp
269:              bne          a1, t2, 282f
270:              slti         s0, ra, -310
                  or           s7, s9, t4
272:              sll          a5, a6, s5
                  andi         tp, t6, 1920
                  bltu         s11, t2, 285f
                  sll          t0, sp, a4
                  slli         sp, sp, 6
                  ori          a5, zero, -943
                  ori          t2, s4, 382
                  xor          gp, s1, a5
                  andi         t5, sp, 845
                  and          a4, t5, zero
282:              sra          t2, zero, a3
283:              beq          t0, t6, 290f
                  sltiu        t4, a3, 1597
285:              lui          t1, 164593
                  slli         a0, a7, 28
                  sub          a6, a6, t2
                  blt          s10, a0, 297f
                  sra          s3, s7, s5
290:              add          t5, t3, sp
                  ori          s11, s6, -1211
                  srl          t3, t2, s7
                  bne          zero, s10, 298f
                  srai         s5, t3, 29
                  lui          a1, 939349
                  lui          s2, 583487
297:              blt          s4, a6, 311f
298:              srai         s5, a7, 18
                  bltu         gp, gp, 308f
                  addi         a1, s1, -173
                  andi         s9, s2, -1181
                  beq          t6, a2, 306f
                  ori          s7, a2, -1068
                  xor          s9, t5, a7
                  slt          a4, t5, s9
306:              add          a2, sp, t5
                  and          t2, t6, s4
308:              sra          a4, s11, s2
                  lui          t4, 322668
                  sra          zero, a3, ra
311:              bne          a0, a5, 317f
                  bge          t5, a3, 321f
                  bltu         s11, s4, 327f
                  sra          s9, s0, tp
                  andi         t6, a7, -1956
                  beq          sp, t1, 329f
317:              bgeu         a6, zero, 326f
                  nop
                  sll          t1, s1, s5
                  xori         s5, s3, 1961
321:              srai         tp, s9, 23
                  add          sp, tp, s2
                  or           s0, tp, a4
                  and          a0, a7, tp
                  sltiu        a2, a0, -627
326:              slti         a3, s11, -1056
327:              srli         gp, s9, 6
                  bne          a3, s0, 336f
329:              bgeu         t4, a6, 344f
                  nop
                  sra          t5, t2, s9
                  xor          a0, zero, t5
                  or           t6, t2, t3
                  or           s2, t1, t2
                  sll          t4, t5, a3
336:              xor          sp, tp, s0
                  bne          t2, a0, 343f
                  nop
                  beq          t6, t3, 342f
                  ori          a6, tp, -939
                  bne          s7, t3, 349f
342:              addi         a0, t2, 1043
343:              and          t6, s0, s2
344:              beq          a4, s0, 350f
                  srl          a6, s11, t5
                  slli         a5, a4, 23
                  srai         t4, a3, 14
                  xori         s7, s4, 1941
349:              bgeu         a6, s10, 351f
350:              sltu         t3, a3, gp
351:              slt          s7, s1, t2
                  andi         sp, a4, 1477
                  bge          s9, t3, 362f
                  xor          a0, t3, s8
                  ori          s4, s7, 845
                  sll          sp, t5, s1
                  xori         a0, s10, -1948
                  addi         s8, a1, -1322
                  sub          a0, a4, zero
                  bgeu         s9, s3, 373f
                  bge          a4, t1, 376f
362:              xor          t4, t0, a3
                  bltu         gp, t2, 372f
                  slti         t0, s8, 1633
                  or           s4, s11, ra
                  bge          s5, zero, 376f
                  or           a1, t0, t1
                  lui          s2, 176525
                  bge          a7, a4, 377f
                  sltu         a2, ra, s5
                  sltiu        s0, sp, -630
372:              srli         zero, t5, 19
373:              add          t2, t4, t6
                  and          s0, a5, ra
                  beq          tp, s2, 389f
376:              bge          t5, s6, 387f
377:              srl          a5, zero, s1
                  auipc        tp, 743427
                  sltiu        t3, tp, 858
                  beq          t3, t0, 388f
                  nop
                  nop
                  sltiu        t4, s0, -376
                  or           s7, s0, a7
                  auipc        t6, 738514
                  slt          t2, s9, zero
387:              srli         a3, s5, 30
388:              slti         a0, t2, -1624
389:              srli         a4, a6, 19
                  bltu         a1, a4, 409f
                  nop
                  bne          a5, a3, 401f
                  slli         a3, zero, 24
                  sra          tp, t1, t0
                  sub          t1, t6, s0
                  nop
                  beq          t2, t1, 406f
                  nop
                  bne          s5, t2, 408f
                  xor          s10, t4, ra
401:              nop
                  xor          t5, a0, s11
                  ori          t6, s3, 1170
                  bge          sp, t5, 407f
                  srai         s3, t4, 17
406:              srl          s3, t3, a2
407:              bgeu         a6, a4, 420f
408:              srl          a0, t3, s2
409:              sltiu        a3, a4, 675
                  srli         s9, tp, 6
                  or           s4, a3, s0
                  andi         t6, t0, -1244
                  sra          ra, a1, s11
                  srl          t6, s1, s9
                  sltiu        s7, a4, 249
                  srl          s11, t2, a0
                  sltiu        s8, t5, -1298
                  slti         tp, zero, 615
                  srl          t0, a3, a6
420:              andi         a1, sp, 1089
                  slli         zero, a6, 22
                  auipc        t0, 199260
                  bgeu         a3, t6, 438f
                  sltiu        a0, s6, -1133
                  sra          a6, a4, a1
                  blt          s2, a1, 428f
                  bgeu         t0, t4, 442f
428:              sll          t4, t5, s6
                  sltu         t1, a7, t0
                  bge          s10, s2, 436f
                  lui          gp, 402318
                  add          a3, zero, s6
                  bgeu         s4, a1, 440f
                  bgeu         s7, s5, 447f
                  sll          t0, a4, a3
436:              nop
                  xor          gp, t1, tp
438:              slti         s7, s11, 1069
                  ori          a6, s9, -11
440:              sll          gp, s0, a7
                  nop
442:              xor          t1, t0, t5
                  srl          a1, s2, s10
                  sra          s5, s2, a2
                  srli         t3, s6, 4
                  sll          s2, a1, sp
447:              bgeu         a7, s4, 451f
                  srl          a2, a1, s2
                  add          t5, t3, s5
                  slt          s10, s0, s4
451:              blt          tp, s5, 456f
                  add          t0, t6, s6
                  sltiu        s11, t6, 805
                  srli         s4, a4, 4
                  addi         t6, a7, -1916
456:              slli         a6, s6, 6
                  srl          s9, s10, s6
                  slti         t0, t1, 53
                  xori         t5, gp, 8
                  sll          s10, zero, t3
                  sll          a6, t3, s5
                  sltu         ra, sp, s6
                  srl          s7, a6, s4
                  or           t1, s1, t0
                  slt          s7, a5, t1
                  beq          s4, zero, 480f
                  srl          a1, t5, t4
                  xor          a6, s0, s6
                  nop
                  bgeu         t0, s11, 476f
                  sra          s11, a1, s8
                  sub          s10, a2, a6
                  slli         s0, a7, 14
                  sltu         s8, sp, tp
                  or           t2, s8, t4
476:              slt          t3, s1, s10
                  srli         s2, s0, 9
                  bgeu         s9, a5, 486f
                  sll          s2, t0, a2
480:              srli         s3, a5, 31
                  nop
                  slti         zero, s3, -1790
                  sltu         tp, s2, s6
                  nop
                  bgeu         s5, t1, 487f
486:              sll          a3, s6, t1
487:              blt          ra, sp, 491f
                  sltiu        s0, a1, 645
                  slti         s4, t5, 1256
                  bne          a4, gp, 499f
491:              sltu         s11, a4, s9
                  or           a4, s9, sp
                  slti         t3, s8, -1677
                  srai         s4, a2, 4
                  sub          s10, s2, t3
                  srai         a2, t3, 15
                  addi         t4, a5, -987
                  slt          s2, s6, a3
499:              bne          t2, a7, 512f
                  sltiu        a0, a7, -969
                  bgeu         t2, t4, 511f
                  or           a6, s1, s11
                  or           s8, tp, a3
                  blt          a6, a1, 513f
                  beq          gp, t6, 513f
                  sub          s3, s1, s5
                  sub          a0, tp, s6
                  blt          t6, s6, 517f
                  or           s7, s3, s10
                  slti         s0, t3, -294
511:              sltu         a5, t0, t4
512:              add          t5, s1, t6
513:              slli         a6, s5, 19
                  auipc        t6, 466473
                  xor          sp, a6, a1
                  xori         s4, t6, -37
517:              bge          gp, s1, 532f
                  srli         a6, a3, 14
                  nop
                  xori         s8, a0, -1474
                  xor          a0, t1, s0
                  bgeu         t6, a5, 528f
                  bge          s2, t6, 532f
                  beq          s3, a3, 528f
                  auipc        zero, 466662
                  nop
                  andi         s2, t2, -1710
528:              addi         s9, sp, 1312
                  bltu         a6, s7, 537f
                  sltiu        t1, s7, 708
                  ori          s0, a4, -807
532:              or           t3, t4, a2
                  xori         s5, s5, -692
                  add          s9, t0, s2
                  srl          a1, t1, a2
                  and          s10, s7, zero
537:              and          s11, a2, s11
                  sltu         a5, t0, ra
                  slt          a5, s4, s4
                  ori          s9, ra, -1897
                  andi         s2, a3, 1325
                  beq          a1, t5, 548f
                  lui          s0, 732744
                  xor          t0, a7, t1
                  auipc        a6, 903488
                  sra          t2, t6, a0
                  xori         s3, a3, 814
548:              srai         a2, a5, 4
                  sltu         s5, a0, s9
                  nop
                  bgeu         t6, sp, 560f
                  add          t0, zero, s4
                  beq          zero, s8, 555f
                  slti         t3, s1, 1657
555:              srl          zero, t3, a4
                  andi         t4, s4, 135
                  srl          a1, s11, t2
                  and          a2, s5, s5
                  addi         s5, t5, -757
                  la           s3, region_0+167 #start riscv_load_store_rand_instr_stream_6
                  sh           s3, 9(s3)
                  lb           t3, 10(s3)
                  slt          a5, t2, s7
                  slli         s5, s3, 23
                  nop
                  slt          zero, s8, s9
                  ori          a2, a7, 1244
                  slti         s2, t0, -520
                  lbu          a2, 6(s3)
                  lui          a4, 940765
                  sltiu        s10, s1, -1436
                  lbu          a1, 16(s3)
                  srl          tp, sp, s7
                  auipc        s10, 507212
                  sb           zero, -12(s3)
                  sb           a6, 12(s3)
                  xor          a2, s4, a6
                  sb           t0, 2(s3)
                  lb           t6, 14(s3)
                  sw           s5, 9(s3)
                  add          s9, s11, a4
                  sw           a7, -15(s3)
                  lhu          t5, -15(s3)
                  sll          s10, t3, a4
                  srli         a5, zero, 11
                  and          gp, s11, s9
                  lh           t5, 9(s3)
                  xori         s9, tp, -834
                  sh           s9, 7(s3)
                  lui          a1, 205724
                  sb           t5, 3(s3)
                  auipc        a2, 40619
                  and          a0, s7, a6
                  lbu          t5, 0(s3)
                  lb           s0, 16(s3)
                  addi         zero, a6, 1114
                  sh           tp, 1(s3)
                  sltiu        sp, gp, -1777
                  lbu          zero, -12(s3)
                  lb           zero, -14(s3)
                  sb           s4, -4(s3)
                  lb           s0, -14(s3)
                  slt          t0, a6, a4
                  lb           s5, -2(s3)
                  lb           t1, 4(s3)
                  lui          zero, 211843
                  lbu          a1, -10(s3)
                  lb           a3, 10(s3)
                  slli         a1, zero, 13
                  lbu          s0, 4(s3)
                  lbu          s0, 12(s3) #end riscv_load_store_rand_instr_stream_6
560:              blt          sp, a4, 563f
                  srli         ra, a3, 3
                  ori          a2, tp, -1852
563:              srli         s5, t4, 23
                  or           s2, t2, s5
                  bne          s2, t4, 571f
                  bgeu         a6, s10, 575f
                  slt          a5, s1, a4
                  or           s10, a6, s5
                  add          s2, s5, a3
                  blt          ra, t5, 583f
571:              bge          sp, s0, 584f
                  sub          s5, s2, s6
                  sltu         a2, s1, a5
                  srl          t3, a6, gp
575:              sltiu        tp, t4, -1738
                  sra          a4, a5, s8
                  bgeu         t1, a4, 590f
                  andi         t5, s1, 2008
                  slt          t0, t6, s4
                  slli         s5, zero, 30
                  srl          sp, s8, a2
                  sra          s11, ra, t0
583:              andi         t3, t2, -375
584:              sub          t2, t4, s7
                  sll          a6, ra, a4
                  xor          t3, a6, t2
                  auipc        a3, 646377
                  xor          a1, s9, a7
                  or           a3, s3, a6
590:              and          s3, s5, sp
                  sll          t0, t3, t6
                  beq          a3, s4, 594f
                  xori         a3, s1, 1219
594:              sltiu        a0, a2, -963
                  blt          s10, s10, 605f
                  nop
                  xori         a3, t2, -1299
                  srli         t1, s2, 27
                  beq          ra, s11, 613f
                  auipc        t4, 573518
                  blt          a0, t4, 609f
                  bge          a1, s4, 608f
                  srl          s3, a4, a1
                  srl          a1, ra, a1
605:              bltu         s4, s0, 614f
                  sra          s3, s0, t3
                  or           a6, s9, s7
608:              bgeu         s8, a0, 617f
609:              and          gp, s2, t5
                  or           t5, t2, a4
                  nop
                  bne          s2, s10, 617f
613:              lui          t3, 948687
614:              bgeu         s2, a7, 629f
                  sltiu        s7, s4, 56
                  sltu         zero, s5, t5
617:              slt          t5, s4, s7
                  bgeu         t2, sp, 629f
                  addi         s4, s0, 1817
                  addi         s9, t5, -1618
                  xori         zero, s6, 1069
                  srl          s9, a6, t1
                  bltu         s0, a5, 631f
                  xor          s2, s4, a4
                  sub          s2, ra, s0
                  slt          a3, gp, s9
                  and          s5, zero, s6
                  xori         a6, s3, 820
629:              addi         ra, ra, -1612
                  srl          s11, ra, t4
631:              srl          t1, sp, s11
                  bge          s11, t5, 639f
                  bne          t1, a4, 647f
                  andi         a5, s2, 1591
                  bne          s7, t3, 650f
                  srai         t6, s10, 14
                  add          s0, t3, t1
                  sub          ra, t6, ra
639:              xori         zero, s8, 368
                  ori          a3, s1, 563
                  slti         gp, s5, -352
                  bgeu         s1, t0, 661f
                  add          a2, a1, a5
                  bltu         s6, t4, 653f
                  sra          t3, a0, a3
                  or           s9, s4, t0
647:              bgeu         s2, ra, 662f
                  xor          sp, a4, a4
                  srli         a0, zero, 0
650:              bge          a5, a2, 654f
                  slt          t1, t0, s2
                  bne          s4, s6, 658f
653:              and          a6, a7, a4
654:              sll          a5, t2, tp
                  slli         t6, a0, 25
                  slli         s11, t0, 31
                  beq          zero, a5, 665f
658:              and          t0, s1, s7
                  addi         s4, a3, 1642
                  xor          a5, t6, s0
661:              srli         t4, t3, 27
662:              auipc        a2, 3021
                  nop
                  addi         gp, t1, 1161
665:              bne          a7, s7, 672f
                  slti         sp, s7, 187
                  bge          s3, s1, 673f
                  sltiu        t4, s7, 662
                  srl          a5, t4, a2
                  ori          s5, t5, 160
                  bne          s8, a5, 674f
672:              auipc        tp, 367967
673:              srl          a4, ra, t0
674:              bge          t4, t1, 693f
                  sltu         t4, s11, t4
                  srli         a2, s11, 25
                  andi         tp, t5, -1422
                  andi         ra, t3, 762
                  and          t5, gp, gp
                  srl          a6, gp, t6
                  sra          t1, s4, s10
                  bltu         s3, t3, 691f
                  addi         s2, a2, -129
                  or           s2, s6, a7
                  bge          a7, a6, 700f
                  bgeu         a1, a1, 690f
                  and          t3, t6, t6
                  sltiu        a1, t3, 463
                  sltiu        s0, t6, -1439
690:              and          tp, a2, a0
691:              slt          t5, t6, s1
                  slt          t6, a2, ra
693:              srai         s9, zero, 24
                  or           a1, tp, t0
                  la           a1, sub_10
                  sltiu        s2, t2, 991
                  srai         s4, t4, 17
                  ori          s9, s2, -1846
                  addi         a1, a1, 949
                  sltiu        gp, t4, -213
                  bltu         s0, t5, sub_8_j14 #branch to jump instr
                  sltiu        t2, s6, 1576
                  sltu         t4, s3, tp
sub_8_j14:        jalr         t5, a1, -948 #jump sub_8 -> sub_10
                  beq          a1, a3, 708f
                  slli         s2, t6, 2
                  or           t0, t0, s9
                  sra          ra, s3, a1
                  add          s8, t2, a4
700:              add          t4, ra, s4
                  beq          s6, t2, 705f
                  sra          a0, s9, s6
                  ori          gp, a0, 1359
                  sltiu        sp, s5, -283
705:              nop
                  lui          s8, 634231
                  beq          t4, tp, 717f
708:              sltiu        gp, s4, 509
                  slt          a6, sp, zero
                  slli         t3, ra, 27
                  sltu         ra, zero, s2
                  andi         s2, gp, 1437
                  bltu         s6, t3, 721f
                  beq          s10, a3, 716f
                  nop
716:              add          a2, t5, a5
717:              xor          s3, ra, a5
                  or           t3, s2, t0
                  or           s5, t6, s0
                  bltu         ra, t0, 734f
721:              srl          sp, t4, gp
                  srl          s4, s9, a4
                  addi         t5, sp, -1980
                  slli         s2, a6, 10
                  sra          zero, gp, t2
                  srl          s10, t0, sp
                  andi         s9, s0, -1858
                  lui          a2, 848731
                  bne          t0, t6, 734f
                  srli         s5, ra, 8
                  lui          a2, 130622
                  andi         t1, s10, 877
                  slli         t5, tp, 6
734:              auipc        s11, 551995
                  sra          s3, t3, s3
                  slli         a5, s0, 26
                  auipc        s7, 12119
                  sltiu        sp, ra, 367
                  sltiu        t0, a2, 1851
                  addi         s3, t5, 923
                  andi         sp, a7, -688
                  sll          s10, s7, t5
                  or           tp, a7, t1
                  srai         a0, tp, 19
                  sub          s0, s11, t6
                  add          a5, a5, s8
                  srai         tp, a1, 3
                  sltu         a4, a5, s10
                  srl          t5, ra, s10
                  sub          ra, s0, t3
                  bge          s3, s5, 764f
                  xor          a4, ra, t3
                  sub          t0, t1, a4
                  sub          t4, zero, gp
                  bge          a5, s2, 764f
                  slli         s10, t4, 23
                  nop
                  slli         sp, a2, 19
                  sra          t1, a2, s9
                  sltu         s11, t3, s9
                  sll          sp, s11, t5
                  slti         ra, a0, -1259
                  and          a6, a7, s1
764:              and          t3, s6, t1
                  bltu         s7, s5, 771f
                  srai         t1, s5, 8
                  beq          a3, gp, 776f
                  sltiu        s5, t1, -629
                  bne          t0, a2, 777f
                  nop
771:              sll          s8, a0, t4
                  sltu         zero, s10, t2
                  auipc        t3, 749093
                  add          s4, s1, s9
                  bge          s3, a7, 790f
776:              lui          a5, 54386
777:              andi         s4, zero, 1886
                  lui          zero, 952881
                  sub          sp, a7, t2
                  bne          a2, t3, 795f
                  bne          s0, s6, 790f
                  sll          t3, t6, tp
                  srai         tp, a6, 0
                  srai         s9, t5, 10
                  bne          s9, s7, 794f
                  beq          sp, t3, 795f
                  and          a3, a4, gp
                  or           s0, ra, a2
                  sltiu        t2, ra, 71
790:              add          s10, s6, t5
                  bge          t2, t0, 805f
                  lui          s8, 111815
                  bltu         a6, s5, 795f
794:              blt          s2, gp, 807f
795:              add          s0, s5, s1
                  sll          a4, t0, s9
                  sll          a5, s4, t6
                  sltu         s7, a1, a0
                  slt          s5, a4, t4
                  auipc        a6, 961744
                  nop
                  ori          s9, a5, 1740
                  srl          a3, t5, gp
                  sub          a1, gp, t3
805:              xori         s11, zero, -173
                  auipc        s8, 315184
807:              nop
                  slt          t3, a4, a0
                  srai         tp, s2, 4
                  sltiu        a6, s8, -1828
                  sltu         s2, t5, a2
                  auipc        s4, 660694
                  nop
                  blt          a2, t3, 825f
                  ori          ra, t4, 94
                  blt          s0, s10, 818f
                  nop
818:              slt          a0, zero, t6
                  auipc        s0, 71421
                  nop
                  blt          a6, s8, 830f
                  lui          gp, 219629
                  bltu         tp, s3, 832f
                  slti         s10, sp, -756
825:              slli         zero, t1, 22
                  bltu         a3, a6, 837f
                  andi         t3, s0, -1450
                  slt          s11, t3, t4
                  or           s3, t3, gp
830:              xor          a1, s6, gp
                  add          a4, a4, a5
832:              slt          a0, t1, s1
                  srl          tp, tp, s8
                  xor          zero, s7, s7
                  sra          a0, s4, gp
                  srl          s11, t5, t5
837:              xori         zero, a5, -1646
                  auipc        a1, 56339
                  bne          s4, ra, 854f
                  slti         a6, s10, 261
                  srli         a1, s3, 3
                  bne          s7, zero, 851f
                  sltu         s0, a7, t2
                  bltu         s10, s0, 853f
                  bgeu         a1, s5, 860f
                  sltu         s8, s9, zero
                  bltu         s11, s9, 861f
                  slti         s7, a2, 1149
                  sra          s11, s5, s0
                  addi         sp, a3, 336
851:              srai         a2, t4, 17
                  sltu         t5, s5, a1
853:              auipc        sp, 37564
854:              slli         t6, a6, 4
                  nop
                  bne          t0, s6, 863f
                  sltiu        gp, s8, 388
                  bge          s3, s7, 871f
                  sra          a5, s3, t6
860:              xor          t6, t2, s2
861:              sra          a4, a4, s5
                  xori         t5, s10, -259
863:              add          t3, a1, s4
                  and          s2, s10, t2
                  slt          s9, a0, a2
                  or           a6, t5, t5
                  nop
                  bge          s10, tp, 877f
                  add          t2, a4, s0
                  beq          sp, a5, 874f
871:              slli         t5, s6, 25
                  srli         s0, a7, 7
                  bgeu         a3, t3, 881f
874:              or           ra, a7, a3
                  nop
                  or           zero, s5, s6
877:              add          t6, s8, s8
                  add          s11, s1, t1
                  auipc        sp, 3809
                  beq          s10, s0, 893f
881:              srl          ra, t3, gp
                  bge          t1, t1, 885f
                  and          s5, s8, s5
                  lui          t3, 739264
885:              blt          sp, ra, 887f
                  and          a1, t1, s11
887:              sub          ra, zero, ra
                  slt          tp, a2, s2
                  bge          a4, s8, 903f
                  sra          s10, s5, a4
                  slt          a3, s10, t1
                  srai         ra, t5, 0
893:              xori         t2, t4, -1650
                  slli         zero, a0, 22
                  srl          s3, s9, sp
                  srli         s10, s11, 31
                  sltu         a1, s8, s4
                  blt          s6, s4, 906f
                  slli         a0, a7, 21
                  slt          s11, a5, sp
                  and          a4, gp, t3
                  ori          s11, tp, 271
903:              and          gp, t4, t3
                  slti         s5, s6, -1546
                  srli         t5, ra, 22
906:              sub          t3, s4, s11
                  sll          zero, t2, a3
                  addi         s3, s7, -362
                  bltu         a0, s4, 924f
                  bne          s7, a0, 916f
                  auipc        a5, 369336
                  bgeu         t4, t6, 916f
                  sub          t6, a1, gp
                  lui          s2, 709396
                  bgeu         t0, s3, 921f
916:              bltu         a2, a4, 926f
                  blt          s11, t3, 923f
                  xor          t0, s2, t5
                  bge          s7, s7, 932f
                  srli         s11, zero, 16
921:              slti         t0, a4, -343
                  ori          t6, a5, 675
923:              nop
924:              auipc        a3, 906957
                  bgeu         a4, s9, 934f
926:              or           s10, t6, a1
                  sltu         tp, zero, s4
                  add          a0, t2, ra
                  sra          t6, t4, s5
                  bltu         t6, t1, 935f
                  slli         t0, t4, 12
932:              blt          ra, a4, 951f
                  srl          gp, a4, s0
934:              bne          t0, a4, 942f
935:              blt          sp, zero, 954f
                  addi         s4, s5, 211
                  sltiu        t2, s6, -1321
                  sra          a6, s6, s9
                  beq          t3, t2, 942f
                  blt          a3, s8, 953f
                  or           a5, sp, a0
942:              and          t2, s4, a0
                  bge          t2, a7, 952f
                  or           a6, s6, s3
                  sltiu        t5, s9, -28
                  add          gp, tp, zero
                  slli         a5, t4, 15
                  slt          t6, gp, s2
                  xor          zero, t0, a7
                  sub          s9, a5, s2
951:              lui          a5, 602689
952:              srai         t1, zero, 9
953:              lui          zero, 417204
954:              ori          a6, a0, 323
                  addi         s2, t0, -246
                  sll          s10, s6, t1
                  blt          s3, a3, 966f
                  xor          a2, s2, gp
                  andi         t4, s10, 500
                  beq          a2, s8, 966f
                  sltu         s7, a7, s8
                  slt          s4, zero, ra
                  srli         t4, gp, 27
                  slti         t5, s6, -905
                  srai         a4, s4, 16
966:              beq          s0, gp, 974f
                  bltu         s3, tp, 971f
                  addi         gp, s9, -1520
                  xori         a1, s3, 1753
                  add          s8, s8, s6
971:              bgeu         a2, s1, 982f
                  sll          t5, s4, s9
                  bltu         t0, s6, 975f
974:              srli         a2, s0, 28
975:              andi         t5, t4, 1752
                  sll          s2, t1, sp
                  srl          s9, s1, zero
                  bltu         t4, t2, 991f
                  and          s8, a2, t2
                  xori         s3, s7, 907
                  xor          ra, t2, t5
982:              srai         s9, t4, 6
                  srli         tp, tp, 10
                  beq          s4, a4, 993f
                  blt          t6, s8, 1000f
                  sltu         s10, t5, s8
                  beq          s8, t0, 1002f
                  bltu         a1, tp, 995f
                  bltu         a2, s7, 998f
                  xori         t3, s11, 249
991:              bgeu         a1, zero, 1001f
                  srl          zero, s5, t2
993:              slt          zero, a5, t2
                  andi         t3, t1, 1127
995:              beq          tp, s5, 997f
                  srli         a1, s9, 18
997:              bgeu         s2, s9, 1011f
998:              srli         ra, ra, 29
                  auipc        t3, 246463
1000:             ori          t5, s10, 456
1001:             nop
1002:             andi         a4, t0, -809
                  slti         a2, s0, -761
                  srli         ra, tp, 8
                  add          t6, s10, a4
                  sra          ra, s10, t0
                  auipc        zero, 647952
                  beq          t4, t6, 1016f
                  srl          sp, s7, gp
                  add          a3, t4, t4
1011:             srl          s9, a6, s7
                  slt          t6, a4, s8
                  srli         t4, s10, 5
                  slli         s11, ra, 26
                  slt          a0, s2, a5
1016:             sltiu        s8, zero, 718
                  add          t3, t1, a7
                  bltu         a0, s2, 1024f
                  auipc        s11, 417985
                  ori          t1, s11, -124
                  slt          s2, a0, s3
                  blt          s10, sp, 1036f
                  sub          zero, a5, s1
1024:             slli         t4, t1, 2
                  srli         s11, s7, 3
                  slti         s10, s8, -1120
                  sltu         s5, a4, zero
                  sltu         s3, tp, s9
                  bltu         a4, a2, 1034f
                  srai         gp, t5, 30
                  slti         t3, t1, 1410
                  slt          a3, a4, t3
                  slli         a3, t3, 9
1034:             srl          a2, s3, s5
                  sll          a6, t0, a4
                  la           t2, region_1+506 #start riscv_load_store_rand_instr_stream_7
                  lb           t3, -49(t2)
                  add          s9, sp, t5
                  lb           a6, -46(t2)
                  srli         a5, a5, 2
                  lbu          a2, 20(t2)
                  and          s8, tp, s8
                  slti         s5, t0, -804
                  add          a0, sp, gp
                  lb           sp, 23(t2)
                  lbu          s7, 11(t2)
                  sh           a1, -54(t2)
                  sh           s9, 44(t2)
                  lhu          tp, -62(t2)
                  lhu          s3, 36(t2)
                  srl          zero, ra, t6
                  srli         s5, a3, 21
                  lbu          a6, 55(t2)
                  lbu          zero, -23(t2)
                  sra          a5, t4, s11
                  sb           s0, -50(t2)
                  addi         s8, zero, -524
                  srai         a5, s11, 5
                  lhu          s0, 30(t2)
                  lb           a1, -42(t2)
                  or           gp, t5, a5
                  auipc        t1, 954028
                  lbu          a2, 9(t2)
                  sub          t1, s2, s8
                  sb           a6, 58(t2)
                  lw           t6, 10(t2)
                  sb           tp, 5(t2)
                  sb           s0, 12(t2)
                  lbu          t1, -41(t2)
                  srl          ra, t3, s10
                  lb           s11, -23(t2)
                  sh           t6, 48(t2)
                  andi         a4, t0, 153
                  andi         t6, s10, -1590
                  and          s9, a4, s10
                  addi         gp, t1, -819
                  sra          s3, t1, s6
                  lh           ra, 60(t2)
                  lb           s5, 30(t2)
                  sb           t6, -12(t2)
                  lb           a1, -21(t2)
                  srli         s11, s8, 12
                  auipc        s8, 791754
                  sb           tp, -43(t2) #end riscv_load_store_rand_instr_stream_7
1036:             andi         a5, a7, 1754
                  add          s0, s4, t3
                  bgeu         a7, a6, 1044f
                  and          s7, a7, s2
                  or           a3, t2, zero
                  or           sp, s1, t0
                  add          a1, s9, sp
                  andi         a4, tp, 1050
1044:             blt          t5, t6, 1048f
                  bgeu         s4, s3, 1054f
                  andi         s10, t1, -1633
                  sll          s11, t0, a6
1048:             slli         s5, s0, 14
                  lui          a3, 345135
                  xori         s10, a4, 1254
                  bne          a7, a4, 1066f
                  auipc        t6, 99776
                  sub          a6, t3, s3
1054:             ori          t0, s10, -684
                  sltiu        s8, s2, -920
                  sra          ra, s4, a7
                  sltu         t1, s8, s8
                  slt          s3, s2, a3
                  auipc        s9, 581121
                  beq          s1, s10, 1069f
                  ori          gp, zero, -1548
                  slt          t2, s9, s6
                  xor          tp, t6, s8
                  slti         s11, s7, 1799
                  sub          s11, s4, zero
1066:             nop
                  sltu         s9, a3, s6
                  slti         a3, a5, 418
1069:             bne          t0, s8, 1077f
                  sltiu        s9, sp, 2017
                  xori         s2, s4, 1463
                  andi         s7, s10, 481
                  srai         s9, a7, 14
                  sra          s8, a2, sp
                  nop
                  ori          a6, t5, 1653
1077:             ori          s4, s3, -1399
                  sub          s11, s11, t4
                  bgeu         zero, a0, 1092f
                  addi         s11, a7, -1253
                  ori          t0, t3, 1393
                  blt          s0, t6, 1086f
                  bge          sp, s1, 1089f
                  addi         a2, s11, -450
                  srl          t3, s2, t0
1086:             or           t1, t6, s5
                  slt          s10, a4, t2
                  lui          s8, 97726
1089:             lui          s7, 6490
                  xori         t6, tp, 1193
                  beq          s6, t1, 1104f
1092:             slt          s11, s2, s0
                  sltiu        s3, tp, 1760
                  slli         s2, a5, 7
                  bltu         s7, a0, 1104f
                  beq          sp, s8, 1106f
                  andi         sp, t5, -1502
                  bgeu         s9, s7, 1107f
                  add          t2, t2, t1
                  blt          s8, t4, 1109f
                  beq          s4, s6, 1114f
                  slli         zero, s10, 18
                  srl          a4, s0, a5
1104:             or           s3, a3, t5
                  slt          a5, t4, a0
1106:             srli         s10, ra, 2
1107:             slt          s4, t2, s4
                  slt          a6, s0, s5
1109:             nop
                  xori         a6, s7, 912
                  sll          zero, t0, a6
                  add          t4, s8, s11
                  slli         s4, s6, 19
1114:             nop
                  srai         a6, s3, 22
                  xor          a0, a1, a0
                  sll          tp, t1, s7
                  andi         t6, s3, -894
                  sll          a2, s10, t3
                  bgeu         s9, a2, 1129f
                  srl          t3, t0, a6
                  srai         s11, t0, 26
                  sltiu        a3, s11, 1206
                  xori         s2, t6, -1840
                  nop
                  bltu         s11, ra, 1131f
                  sltu         gp, a7, a7
                  or           s3, sp, t4
1129:             bne          s2, s2, 1143f
                  srl          s4, a7, s0
1131:             andi         a0, ra, -1994
                  and          s3, s7, a3
                  blt          s5, tp, 1141f
                  slti         a0, s7, 897
                  slt          a4, t3, tp
                  addi         ra, s9, 649
                  bgeu         sp, gp, 1148f
                  slti         s2, s2, 1557
                  srai         s9, a4, 18
                  ori          a0, t0, -1494
1141:             xor          s2, s11, a0
                  srai         a0, a3, 16
1143:             srli         t5, s4, 18
                  bltu         s3, s6, 1152f
                  blt          s1, s5, 1160f
                  ori          s2, t5, 1335
                  sltiu        tp, a0, -115
1148:             addi         t0, t4, 1487
                  sltu         t3, a2, gp
                  slti         t6, s2, 1275
                  beq          s8, t0, 1153f
1152:             bne          s0, s8, 1160f
1153:             sltu         s8, tp, a1
                  bltu         t6, s8, 1156f
                  and          zero, s5, a3
1156:             beq          t6, s0, 1162f
                  addi         zero, a7, -1905
                  beq          t3, t2, 1173f
                  addi         t2, s7, -1246
1160:             srai         a2, t0, 23
                  lui          t3, 269677
1162:             bne          s6, s7, 1168f
                  sub          zero, zero, a7
                  and          s5, a3, s8
                  ori          t5, s5, 545
                  sub          t1, s2, t3
                  slti         gp, ra, 196
1168:             sltiu        s10, s3, -397
                  bltu         t6, s6, 1176f
                  auipc        a4, 359044
                  bne          t6, s0, 1174f
                  addi         a0, s11, 85
1173:             blt          s8, s0, 1176f
1174:             slli         zero, s2, 8
                  andi         t3, a4, 1244
1176:             slti         t3, ra, -877
                  lw           t5, 4(a7)
                  auipc        tp, 825785
                  and          gp, s0, a6
                  addi         s8, ra, -1074
                  addi         a7, a7, 48
                  slti         s10, s5, 861
                  sltu         a6, t3, t3
1574:             addi x19, x30, 0
1574:             jalr x19, x19, 0
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
.word 0x0ed3bc31, 0xe01669d5, 0xafa691fe, 0x37841bc2, 0xb1f6edc1, 0x8469f88d, 0x6bc3167e, 0xfb25a1fd
.word 0xd15ff34a, 0xddb85d1a, 0x0a77c91e, 0x0e958d33, 0x379c8221, 0xe3c91351, 0x159d8d16, 0x90075375
.word 0xe3fe1b36, 0x2ca91122, 0xe928ab70, 0x92ca7bc4, 0xa2adee1f, 0x6db9353f, 0x0ac2e0fa, 0x17ca495c
.word 0x914c78e2, 0xd603a6c7, 0x9742596a, 0x5a8af57e, 0x41a3e279, 0xfc6457ac, 0x95150c66, 0x8bbf92b5
.word 0x8bcf26f2, 0x0b7dddaf, 0x83ab7a99, 0x03a0b116, 0xead96aec, 0xb21006b6, 0xe8845ab8, 0x0cde494f
.word 0x5a31052e, 0x545d8e97, 0xdab77bbf, 0x50140236, 0xf7316732, 0x8f97af05, 0x9ee46a85, 0xf29d7858
.word 0x163ab3c9, 0xd359809c, 0x051bac54, 0x65791a80, 0x21f15e62, 0x475df7ee, 0x038fede7, 0x981fbc4d
.word 0xc4c50318, 0xd1e6e3f8, 0x2225e36e, 0x24935570, 0x2d245a55, 0x1eb926d3, 0xafd17b80, 0x754ebd04
.word 0x95854b9e, 0x2132c474, 0x5a21a210, 0xd68dba4f, 0x668e1163, 0xe51208cd, 0xf8f1cda5, 0x9b76d8fd
.word 0x168845b8, 0xbdd474a2, 0x99b3072a, 0x48e95de4, 0x5d36aa70, 0x9b6bc20c, 0xfb737b6e, 0xe89f2341
.word 0x27b78212, 0x3346fe1c, 0x23f95d9e, 0x5527250f, 0xd0c07924, 0x968d0cf2, 0xc111f28a, 0xd61767d3
.word 0x6f652c61, 0x85d4b750, 0x28f85860, 0x41b4aae5, 0xe9235ad7, 0xf092b36d, 0xa39611b6, 0x57cf5924
.word 0xf5240bad, 0xb88cc5f6, 0x7787913b, 0x4fd0e2e7, 0x0fbb5137, 0x5995b537, 0x457c8757, 0x599558d7
.word 0xb628a920, 0x430f8a88, 0x79c4da61, 0x0e90782a, 0xcf8b7f69, 0x6233f665, 0x1efac716, 0xa582b2bf
.word 0x9074fb76, 0x3a7d2ae9, 0x5b0380f8, 0x32939b62, 0x0a4a9bce, 0x927137b6, 0xda3dac81, 0x27176d38
.word 0x8a9e2bc8, 0xb0d93bf1, 0x096a6bac, 0x050d5787, 0x2dfa4aa8, 0x4caa87a6, 0xe3a5f68e, 0xc80363a2
.word 0xb2ead6c4, 0x9499afbd, 0x081b0e25, 0x5f5ce460, 0x03b83554, 0x8d23d158, 0x3af1fcd3, 0xcdff02be
.word 0x7d7cbd13, 0xb79c2113, 0x1e17c704, 0xeadf2d3c, 0x1d29dc55, 0x69e3ae58, 0x41b26d7b, 0xa015c958
.word 0xd8751ae4, 0x61ad34e4, 0xf2d66877, 0x5ed988a4, 0x23173f2e, 0x5de51a51, 0xe34a1a7d, 0x1d49b7e2
.word 0x01727fa4, 0xb4c5f6cf, 0x645a5fa9, 0x131d9cc7, 0x724f211b, 0xc79061fb, 0x2b4fca7b, 0x0e163af7
.word 0x0d8a85d7, 0x8dfd40cb, 0x37438e0a, 0x4d2a3f2d, 0x4fa66ee0, 0xb6391f3b, 0xce420fce, 0x28465ecb
.word 0x9a073655, 0xd3b88c31, 0x4a698b38, 0x6a9d3ef9, 0xc6c27e75, 0x226fdb2a, 0xd5e1e230, 0x83db0080
.word 0x21d38203, 0x96d537fa, 0x32694ba5, 0x940aa732, 0x8d923705, 0xe0970cb7, 0x47901a03, 0x3cd75c3d
.word 0x0927de58, 0xf64a43fa, 0x26450800, 0xd0bb1031, 0x9b874ca5, 0x4ed64836, 0xe48bb52a, 0x65833757
.word 0x712f89c6, 0x66e401a5, 0x9bafb476, 0x24c6c4fe, 0xed3f2ca7, 0x8382dd7b, 0xa534cbae, 0xcce559c0
.word 0xd1829ef6, 0x6fc45f73, 0xc0d70cdb, 0x0dde8324, 0x6c15c949, 0xd49c47e1, 0xb474bd1c, 0x0eed6a57
.word 0x7bd7f877, 0x2c4d26b5, 0x32987396, 0xc96fbf8d, 0xe6349660, 0x00b341ad, 0xe051e8ba, 0xb753ec51
.word 0x95e8cbd6, 0x3a28a22f, 0x95b97ec7, 0xfe7c804a, 0xb03ebd30, 0x546b5a28, 0xadc21d0a, 0x5c1df0e1
.word 0xde06a1f6, 0x4ac0456f, 0x8b816dd5, 0x41ee4139, 0x33ea97b4, 0x9168051c, 0x6c52e063, 0xdd2729ec
.word 0xcd178806, 0x0a7dcd22, 0x01be60de, 0x9a97ec88, 0x87c19ee9, 0x532d4cd1, 0x35818962, 0x0e2e48c5
.word 0x36d35c3a, 0x3a1686ce, 0xe3ff5c16, 0x760c45a1, 0x1f3e167c, 0xdce0a769, 0x091bed41, 0x6aefa708
.word 0xd1383eb1, 0x4557264a, 0x3792ccb0, 0xc1bb8929, 0x726ad9b1, 0xf5cf627d, 0x6d091695, 0x052640d1
.word 0x83a1ac42, 0xf52732a5, 0x442a4cda, 0xf4158832, 0x822f2d78, 0xf6d956e9, 0x6c18433f, 0x6e20a280
.word 0xce7487dd, 0x8a445d2f, 0x55081b21, 0x54ad830d, 0x8c2dd7f6, 0x53e9a204, 0x0b91a1b6, 0xe5440bff
.word 0x6daa0f0b, 0xd8a0af10, 0xd78ba95e, 0x310c4cd5, 0x88af6b59, 0x59d74d2b, 0xc3849efc, 0x79f0838f
.word 0xb01a2371, 0xa90c0616, 0x88e02f4b, 0x168b057e, 0x88b1fafd, 0x8dca0794, 0xe3b64589, 0x59edcf77
.word 0x76509948, 0x59ffcee2, 0x33f6f7e2, 0xd381ec9a, 0x9c4e952b, 0xfc63c0af, 0x3df564bc, 0x7472db93
.word 0xa11b0af2, 0xa1fb72e8, 0x1935eceb, 0xd035f341, 0x1c0c28e2, 0x575b7640, 0x8712f156, 0xe3d4a8de
.word 0x60ad0d6a, 0xbef0ab7a, 0x81a5d853, 0x64e399e3, 0xeddff266, 0xc7ca1ef5, 0xa9d8f2c6, 0xe8c3f63b
.word 0xedfcffe1, 0x2b8df7eb, 0xea4cceb4, 0xfec7db64, 0xd562eca5, 0xf97390a0, 0x07c1605d, 0x8907844d
.word 0xf8964fd9, 0x25386c37, 0x63920851, 0xb87affa3, 0x4e945578, 0x8614f316, 0xd5c19b32, 0x54e4a5f8
.word 0xf919754d, 0xcc770328, 0xfd817dad, 0x2ddbc161, 0xca78250e, 0x670c6b88, 0x50ac12ec, 0x4ff4200b
.word 0x11ed97e3, 0x359c59d3, 0xa5c675ec, 0xc1b10e20, 0xc281f2ec, 0x89100733, 0xc4beae08, 0x34f10e9a
.word 0x15db830e, 0x008769d5, 0xd4264244, 0x3e7b8891, 0xf383055a, 0xee58e913, 0x005dd0e7, 0xe736c4fd
.word 0x51784bbc, 0x432792e9, 0xa8b28565, 0xb8fd172a, 0x9a4594b5, 0xdf7c7817, 0x60068f2d, 0xa3cb7bed
.word 0x38e17272, 0x785551c7, 0x64249a95, 0x960b35d8, 0xfaf33cb8, 0x5a974e88, 0x70e40311, 0x931755b1
.word 0x7e30813c, 0x4a05d5f8, 0x5cee1e68, 0x572f829e, 0x22923d6a, 0x972c7402, 0x7ec3318a, 0x8c990f3a
.word 0xab491c53, 0x8ae441f8, 0x0143ca97, 0x87dc8424, 0xed93453a, 0xa5b20682, 0x3238f876, 0x843814c0
.word 0x734dc0a4, 0x4e2ba7f8, 0xa662c884, 0x7477bf5b, 0x711fae89, 0x41cf5d61, 0x2e8d549e, 0xa3bb9854
.word 0x9b47d949, 0x8fc60f7c, 0x8d8a2f5f, 0x9abc802b, 0xd4661e17, 0x92cd751b, 0xaba42457, 0xf927a076
.word 0x8ca86b0e, 0x49a6f2ee, 0xd5454e44, 0xc3d7cf3b, 0x08e2e421, 0xc69436e2, 0x1d41ca82, 0x614798c0
.word 0xc71dc56c, 0x1ef6c455, 0x3e8dedcf, 0x25204c28, 0x09abc53f, 0x89f73c2c, 0xe769c32e, 0x12fa4c37
.word 0x051f11ae, 0x60852b06, 0x4dd40cfa, 0x5dff8c6e, 0x7e947deb, 0x2541ebd5, 0xd4942c47, 0xfe33d727
.word 0x36097293, 0x74b8dc17, 0x4b0230da, 0xad51e781, 0xf6e03db3, 0xddc763d1, 0xf95d3c7f, 0x8c280fc8
.word 0xb09dab39, 0xd461c904, 0x2489f98b, 0xe407daa6, 0x2ff9e4fd, 0xf92299eb, 0x2150909c, 0x07ae8a4b
.word 0x54f6309c, 0x6d65ad10, 0x7763cbae, 0x00ce51e7, 0xf2ac6872, 0x5de45084, 0x2e31592a, 0x56ab059e
.word 0x9b863e44, 0xb931ed05, 0x687e6d7e, 0x8c2d3cca, 0x73f0d767, 0x4babbdeb, 0x5a8b415d, 0x4d795fa7
.word 0x548fbce2, 0x74e786fc, 0x526a959d, 0x688226d4, 0xb32fddef, 0x96a323bf, 0x18b59f94, 0xc442d960
.word 0xc5cf5fc7, 0x12c80e55, 0xfd1c62ca, 0xf74c113e, 0xe5dd0c97, 0x206ceb77, 0xcaf05080, 0x06b73541
.word 0x548401c6, 0x0e3263eb, 0x2693f347, 0x19b4f417, 0x7f3041d1, 0xc6ca39ea, 0x90fc271d, 0x0a7a2182
.word 0x862a27fd, 0x8b52445b, 0x6cd10ec0, 0x8d913407, 0xdd89e9dd, 0x36fea743, 0xa6a46095, 0x42c32978
.word 0x9e2e44c4, 0xefdcfddb, 0x167d2e46, 0x59e7be95, 0x362795e3, 0x7472a990, 0x80c154c2, 0x4d0096d0
.word 0xd609505c, 0xa1eb6d79, 0x658bcd87, 0xcbeb5977
.section .region_1,"aw",@progbits;
region_1:
.word 0xb977a06b, 0xc56b087e, 0x23d3e64c, 0xd3d1ed64, 0x8fe00c55, 0xaedd9f72, 0x91947576, 0xbdc2b98a
.word 0xf01d7222, 0x6cc2d444, 0xddca540f, 0xd52ba159, 0x52c30d25, 0x27e19e14, 0x33a94842, 0xfbba35c3
.word 0xbe9a5bea, 0x6f38e732, 0x8a2046f5, 0xf4ec1b54, 0x8c36d3fb, 0x90323473, 0x73d79a1f, 0xae88e91d
.word 0x9e67619e, 0xcf32a1fc, 0x2ddc23b6, 0x8e00552e, 0x5130ccf0, 0x10381edd, 0x57cc9026, 0xbf789245
.word 0x6c178fd0, 0xc6bec2db, 0xa6336c58, 0x122f6159, 0x9a393437, 0x571f42fc, 0xd8ca05a1, 0xf24cb7f5
.word 0x31be1f5a, 0x05fc7061, 0x41f176a3, 0xa3e6121e, 0xad2c4db3, 0x61cf70ce, 0x887bca82, 0xca25c8c8
.word 0xe77b284e, 0xca47432c, 0xd066373a, 0xd80da035, 0x627651bf, 0x44d03ef1, 0x5873e652, 0x89feec4c
.word 0x95759a77, 0xc996bb0b, 0x1bdd1710, 0x1dc50f3d, 0x66652f9a, 0x4d48bbbc, 0xf6968eb4, 0x9af2e821
.word 0xe2a4ef4d, 0x021ecf52, 0xa344d1ac, 0x0a394bb0, 0xa01717d9, 0x6c0aa61e, 0x9fe6d775, 0x5234552c
.word 0xbff7a8be, 0x04a773b3, 0x3e036eab, 0xf7beca3a, 0x138450bc, 0xc7b69b71, 0xf5a71960, 0xf41269dc
.word 0x54b9751f, 0xf0931971, 0x11cd4de7, 0xda3ef204, 0x2273efc4, 0x23c53294, 0xfe5000c2, 0xa5c9bcd9
.word 0xc45cf080, 0x8215feda, 0x0f1b981b, 0x8566d489, 0x77db3999, 0xfe1eb294, 0x479fc9a4, 0xba96d64b
.word 0xf05f9a07, 0x5b0ece5e, 0x36eafe3e, 0xb9bef26c, 0x17da1804, 0xa4e4d5d7, 0xd95feab0, 0x2daa8c1a
.word 0x8038ee91, 0xa0c1627c, 0x81220a0b, 0xb6cdbbe9, 0xa1b79465, 0x3b098837, 0x771c9c24, 0xdb4d8bd0
.word 0x1e65b46d, 0x5247a96d, 0x32c929c2, 0x69be23bd, 0x2e8da319, 0x73de7ad4, 0xd944374e, 0xe1506040
.word 0xcadc769f, 0x9adbf862, 0xc1f758d5, 0x12902315, 0x03de29cf, 0x7825b3dd, 0xcdd21ad6, 0x59b66a29
.word 0x7957c146, 0xea45fa82, 0xc11a35c4, 0x63112276, 0xb9ae3cb9, 0x90881f82, 0x886246c4, 0x1c441b05
.word 0xc8a4d473, 0x0ba78cae, 0xeba9128b, 0x8229cd85, 0x07b7e52b, 0xdc872486, 0xb8dd791c, 0xb84525da
.word 0x060964a8, 0x0840e54d, 0x3ea703bb, 0xff341a78, 0x810f29e0, 0x93dae241, 0x918566e6, 0x2e2feb25
.word 0xb2350929, 0x5e36a508, 0x8151b077, 0x9732f262, 0xfd82538a, 0x6817adb1, 0x9464a5bf, 0x27e78af3
.word 0x013e9dab, 0x7f9907ea, 0x25ec7d5e, 0xda4c0e3e, 0xf65f3d9d, 0x31ad3153, 0x66209b8d, 0x87ff6ce5
.word 0x58e4c34a, 0xaf649bcd, 0xa1912b3b, 0xacfb79a0, 0x65defffa, 0x197e6e75, 0x23aa1d16, 0x1b3b8d0b
.word 0x804b9cec, 0x717b21e8, 0x2db6fe5e, 0x06c1c8fd, 0xebb12d4e, 0x1c35b657, 0x2c62b76f, 0x8065afcb
.word 0x35b669ea, 0x98b024f8, 0x88ca2990, 0xde19f2b8, 0xcd593277, 0x83bcc137, 0x265886aa, 0xd04a7572
.word 0x2e02be7e, 0xccdddd82, 0x0e50a6a7, 0x6ab24fe3, 0xdcf3956b, 0x7c4baf60, 0xbf73a9b3, 0xb2e93bba
.word 0x30d97b67, 0x2f2040c9, 0x155a8e68, 0x89c09bad, 0xa9f9fb72, 0xf71a2723, 0x69cf821c, 0xd134d1a0
.word 0x79465806, 0x4a6672aa, 0x7eff79b5, 0x4ad50a29, 0x8803762c, 0x25d7d3d0, 0x3aa6adeb, 0xa5a43190
.word 0x1fbdf93e, 0x886854a3, 0xd9db5bb5, 0x5b511a4c, 0x49d59471, 0xbea7f924, 0xa08c8c3e, 0xdb7cd2c4
.word 0x93c3a59e, 0xa07df360, 0xaae6b1e2, 0xcff1a091, 0x0e1ec3ce, 0x097f8f1f, 0x6db7d68d, 0x0d1b4b7e
.word 0xcf4c2158, 0x824572b0, 0xd4cf5121, 0x177df806, 0x9b23e7f4, 0x2e4d0e07, 0x9df38524, 0x16247d44
.word 0x7438e3d9, 0x4fe57650, 0xe0763747, 0x07d38ff5, 0x178d4b02, 0x4918c719, 0x4e99a726, 0x16b8eff1
.word 0xdb204efc, 0x1b8447da, 0x5bdd826e, 0x485d7f57, 0xb9c2049f, 0x1083874d, 0x45dea251, 0xc3cbd99c
.word 0x5a070a6c, 0xc8430ebc, 0xfae8ac22, 0x30753bfb, 0x44e0d7f0, 0x62b0ccf2, 0xb3e166cf, 0xf3646f52
.word 0xe59f58e9, 0x3fa34ec4, 0x49106280, 0x090ae5f6, 0xc1fbc618, 0x5979be77, 0x747197eb, 0xf74fd993
.word 0xb3bca4b1, 0x275fbda0, 0x973ad91f, 0x2633c56c, 0x84a54db0, 0x019c0166, 0x2ae6439c, 0xf8a160b2
.word 0xe4511fdd, 0x690ac269, 0x628bef35, 0xeb357942, 0x6bb09b30, 0xf9fd6207, 0xfc591ea6, 0xce5e1e98
.word 0x9a948a8c, 0x9a4bd5c3, 0xbe028c8e, 0x59ab8d7b, 0x83b7c195, 0xfc1bad2a, 0x5eef897b, 0xfef297f0
.word 0xfca184ab, 0xe8692ebe, 0x1688cfd7, 0x1c8511f6, 0x541f7313, 0xb4b26dc4, 0xa9510d8d, 0x7752c60d
.word 0xc9bdd34b, 0xa2a9ce9c, 0xb4bcb3b8, 0x372a246c, 0x9bb330e2, 0xc865ae73, 0x7e60beb3, 0xdf325e0c
.word 0xdcb83154, 0x08706db1, 0x55982c1b, 0xfa2636b7, 0xd3de0d8a, 0x2acbdcc1, 0xd7108342, 0xe1d8090e
.word 0xd8eab33d, 0xe09b56d4, 0x76f61118, 0xd5ad3a4a, 0x6037128a, 0x7e97daea, 0x5c20575b, 0x17e4a853
.word 0x8f93029e, 0x0cc9db05, 0xc65892e7, 0x917d950b, 0x854bf35a, 0x0597cbb0, 0xbeefd501, 0x388b4126
.word 0xad6c831d, 0xff37c382, 0x92836175, 0x14e438db, 0x09057dcc, 0x571785bf, 0x7c179949, 0x6dee5c6a
.word 0x34914ded, 0xa75c6ac0, 0x31aec98c, 0x38cb6f81, 0x4c3e1720, 0x81532a41, 0x27234183, 0x776e17e7
.word 0xdf50ad0a, 0x65c603b7, 0x7c6cdcec, 0x5edee6fc, 0xc2bb92cc, 0xb1447d67, 0xe27fee22, 0x5c4f899f
.word 0x6aff8bcd, 0xd07ae32c, 0xfe0419bd, 0x1519ed74, 0x2b1a054c, 0x92b5e987, 0x723e03dd, 0x6c7e52df
.word 0x8d72bdf3, 0xe3255751, 0xa986bc84, 0x35a49a5a, 0xbdaf67ea, 0x8804df60, 0x6f539eb7, 0x04ed1e43
.word 0x3d370b54, 0xaa566a8c, 0x7310102d, 0x61e91881, 0x6bf45147, 0x6cb92eab, 0xecbb42b1, 0x64535758
.word 0xe51fc12f, 0x1b5a2e66, 0xb0d956d3, 0xa1dcc93c, 0xc41cb360, 0x4c397f32, 0xfb789ae0, 0xe3da7f54
.word 0x38c6ccf3, 0x4366542e, 0xf47668c9, 0x4721f08e, 0x3b27c068, 0xe50c0cdf, 0xcf2c55c7, 0x1145581b
.word 0x7c855f52, 0xca8a579e, 0x671d1cd6, 0x872c0a66, 0x665c7914, 0x52e1506a, 0x8668b44d, 0x2b934fbe
.word 0x7f040a20, 0x44dd5753, 0x6ba57d87, 0xb7c68a54, 0x88a8b6b0, 0x6dbab713, 0xe45e5188, 0xf69ac904
.word 0xbdcfcf13, 0xea4586db, 0xed569f00, 0x65692764, 0xf10888b7, 0xc354f0b4, 0x13051e07, 0x4ab4febc
.word 0x787806b9, 0x4eea5756, 0x781d866b, 0x86009653, 0xd22fde7d, 0x38a1f64d, 0x408a66b8, 0xdabdaa14
.word 0xba679881, 0x650de95f, 0x0bfe02aa, 0x1cdce6f0, 0x57a6c274, 0x449eee61, 0x257124b2, 0x947d4724
.word 0xd6120c40, 0x7fe52460, 0x9dff8cef, 0x4d2261db, 0xd1c3e582, 0x3b993e15, 0x18211d89, 0x1421144c
.word 0x2a45ad34, 0x6dc17674, 0x1b84b264, 0x429229d8, 0xa1532b36, 0xedb2dccb, 0x7d99c4c0, 0xba091618
.word 0xc58224d3, 0x6206df94, 0xc97e1639, 0x9b4e1770, 0xc307a1fd, 0x26832864, 0x7bede69e, 0x47a0a036
.word 0xe6fdeb39, 0x452405d3, 0xa3af7e76, 0x1a79bacf, 0xf211f1d0, 0x640f7502, 0x9bc8d9bd, 0x0e3cdd3e
.word 0xdcbe615c, 0x85f58130, 0xc7d18225, 0xbf4a377c, 0xd31935ba, 0x62241e74, 0xa54f3935, 0xc4f69337
.word 0x7af13683, 0x179b1d0f, 0x29ba9b2d, 0x1ece776a, 0xffea73a0, 0x77830237, 0x002a55b0, 0xe5b706fa
.word 0x4e0212e3, 0xabf1cea6, 0x119bcfcd, 0xe39f9f15, 0xad763aee, 0x3b2a7cf0, 0xb8612bec, 0x43b04f2f
.word 0xed08176d, 0x4bb03bc9, 0x56f841dc, 0x693eb69f
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x9, x17, zero
                  csrr x15, 0x300 # MSTATUS
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 31
                  bne x15, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x15, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x15, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x15, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x15, x6, ecall_handler
                  li x6, 0x1
                  beq x15, x6, instr_fault_handler
                  li x6, 0x5
                  beq x15, x6, load_fault_handler
                  li x6, 0x7
                  beq x15, x6, store_fault_handler
                  li x6, 0xc
                  beq x15, x6, pt_fault_handler
                  li x6, 0xd
                  beq x15, x6, pt_fault_handler
                  li x6, 0xf
                  beq x15, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x17, x9, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x9, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x9, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x17, x9, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x17, x9, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x17, x9, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
